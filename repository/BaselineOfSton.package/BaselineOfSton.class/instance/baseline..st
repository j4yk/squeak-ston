baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				package: 'STON-Core';
				package: 'STON-Tests';
				package: 'STON-Text support';
				group: 'Core' with: #('STON-Core');
				group: 'default' with: #('STON-Core' 'STON-Text support') ].
	spec
		for: #pharo
		do: [ spec blessing: #baseline.
			spec
				package: 'STON-Pharo-Extensions' with: [ spec requires: #('STON-Core' 'STON-Tests') ] ].
	spec for: #'squeak' do: [
		spec
			package: 'STON-Core'
				with: [ spec includes: #('STON-Squeak-Core') ];
			package: 'STON-Squeak-Core'
				with: [ spec requires: #('STON-Core') ] ].