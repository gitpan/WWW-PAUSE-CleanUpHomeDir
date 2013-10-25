#!/usr/bin/env perl

  use Test::More;
 
   eval { require Test::Kwalitee; Test::Kwalitee->import() };
 
   plan(
       skip_all => $ENV{RELEASE_TESTING} ? 'Not an author releast; skipping' : 'Test::Kwalitee not installed; skipping' 
       
 ) if $@ or !$ENV{RELEASE_TESTING};
