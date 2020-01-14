const command = 'bash xanthia/scripts/message';
const refreshFrequency = false; // ms

const render = ({ output }) => <div class='screen'><div class='xanthiamessage'>{`${output}`}</div></div>;

export { command, refreshFrequency, render };
