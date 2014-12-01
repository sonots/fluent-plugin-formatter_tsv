# fluent-plugin-formatter_tsv

[![Build Status](https://secure.travis-ci.org/sonots/fluent-plugin-formatter_tsv.png?branch=master)](http://travis-ci.org/sonots/fluent-plugin-formatter_tsv)

Fluentd TSV formatter plugin

## Install

Use RubyGems:

```
gem install fluent-plugin-formatter_tsv
```

## Configuration Example

`out_file` and `out_s3` plugin supports formatter plugin.

```apache
<match raw.**>
  type file
  path /tmp/tsv_test
  format tsv
</match>
```

## Parameters

- **include_time_key** (Boolean, Optional, defaults to false) If true, the time field (as specified by the time_key parameter) is kept in the record.
- **time_key** (String, xOptional, defaults to “time”) The field name for the time key.
- **time_format** (String. Optional) By default, the output format is iso8601 (e.g. “2008-02-01T21:41:49”). One can specify their own format with this parameter.
- **include_tag_key** (Boolean. Optional, defaults to false) If true, the tag field (as specified by the tag_key parameter) is kept in the record.
- **tag_key** (String, Optional, defaults to “tag”) The field name for the tag key.
- **localtime** (Boolean. Optional, defaults to true) If true, use local time. Otherwise, UTC is used. This parameter is overwritten by the utc parameter.
- **timezone** (String. Optional. v0.10.56 and above) By setting this parameter, one can parse the time value in the specified timezone. The following formats are accepted:

    1. [+–]HH:MM (e.g. “+09:00”)
    1. [+–]HHMM (e.g. “+0900”)
    1. [+–]HH (e.g. “+09”)
    1. Region/Zone (e.g. “Asia/Tokyo”)
    1. Region/Zone/Zone (e.g. “America/Argentina/Buenos_Aires”)

    The timezone set in this parameter takes precedence over localtime, e.g., if localtime is set to true but timezone is set to +0000, UTC would be used.

## ChangeLog

See [CHANGELOG.md](CHANGELOG.md) for details.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new [Pull Request](../../pull/new/master)

## Copyright

Copyright (c) 2014 Naotoshi Seo. See [LICENSE](LICENSE) for details.
