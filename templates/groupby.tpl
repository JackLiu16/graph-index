%setdefault('data', None)
%import config
% if data:
    % for metrics in data:
        % target = '&'.join('target=' + m for m in metrics)
<div class = 'graph-row'>
    <table class = 'graph'>
        <tr>
            <td>
                <img class = 'day' src = '{{config.graphite_url}}/render/?width=600&height=400&{{target}}&title=day' />
            </td>
            <td>
                <img class = 'week' src = '{{config.graphite_url}}/render/?width=600&height=400&{{target}}&from=-7d&title=a merged graph - week' />
            </td>
        </tr>
    </table>
</div>
    % end
% end