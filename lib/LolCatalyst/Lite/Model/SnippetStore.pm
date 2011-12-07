package LolCatalyst::Lite::Model::SnippetStore;

use strict;
use warnings;
use aliased 'LolCatalyst::Lite::SnippetStore';
use aliased 'LolCatalyst::Lite::Translator';

sub COMPONENT {
  SnippetStore->new(translator => Translator->new);
}

1;
