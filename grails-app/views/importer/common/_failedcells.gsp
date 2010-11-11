<%
	/**
	 * Failed cells template
	 *
	 * @author Tjeerd Abma
	 * @since 20101103
	 * @package importer
	 *
	 * Revision information:
	 * $Rev$
	 * $Author$
	 * $Date$
	 */
%>
<g:if env="production">
<script type="text/javascript" src="${resource(dir: 'js', file: 'ontology-chooser.min.js')}"></script>
</g:if><g:else>
<script type="text/javascript" src="${resource(dir: 'js', file: 'ontology-chooser.js')}"></script>
</g:else>

<script type="text/javascript">
$(document).ready(function() {
		// initialize the ontology chooser
    	new OntologyChooser().init();
});
</script>

<table>
  <tr>
    <th>Column</th><th>Row</th><th>Unknown ontology found</th><th>Corrected ontology</th>
  </tr>
<g:form name="failedcellsform" action="saveCorrectedCells">
	<g:each var="item" in="${failedcells}"> <!-- [recordhash, importrecord] -->
          <g:each var="cell" in="${item.value.importcells}">
            <tr>
              <td>${cell.mappingcolumn.name}</td>
              <td>-</td>
              <td>${cell}</td>
              <td>
                  <input type="text" name="cell.index.${cell.getIdentifier()}" rel="ontology-all-name"/>
                  <!-- <input type="hidden" name="cell.index.${cell}-concept_id"/>
                  <input type="hidden" name="cell.index.${cell}-ontology_id"/>
                  <input type="hidden" name="cell.index.${cell}-full_id"/> -->
              </td>
            </tr>            
          </g:each>
        </g:each>
  <tr>
    <td colspan="4">
      	<input type="submit" value="Next">
    </td>
  </tr>

</g:form>

</table>

