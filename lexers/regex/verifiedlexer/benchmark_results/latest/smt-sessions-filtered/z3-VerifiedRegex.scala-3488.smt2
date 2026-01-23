; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201372 () Bool)

(assert start!201372)

(declare-fun b!2043582 () Bool)

(declare-fun b_free!57061 () Bool)

(declare-fun b_next!57765 () Bool)

(assert (=> b!2043582 (= b_free!57061 (not b_next!57765))))

(declare-fun tp!607349 () Bool)

(declare-fun b_and!163001 () Bool)

(assert (=> b!2043582 (= tp!607349 b_and!163001)))

(declare-fun b!2043589 () Bool)

(declare-fun b_free!57063 () Bool)

(declare-fun b_next!57767 () Bool)

(assert (=> b!2043589 (= b_free!57063 (not b_next!57767))))

(declare-fun tp!607351 () Bool)

(declare-fun b_and!163003 () Bool)

(assert (=> b!2043589 (= tp!607351 b_and!163003)))

(declare-fun b!2043579 () Bool)

(declare-fun b_free!57065 () Bool)

(declare-fun b_next!57769 () Bool)

(assert (=> b!2043579 (= b_free!57065 (not b_next!57769))))

(declare-fun tp!607354 () Bool)

(declare-fun b_and!163005 () Bool)

(assert (=> b!2043579 (= tp!607354 b_and!163005)))

(declare-fun b_free!57067 () Bool)

(declare-fun b_next!57771 () Bool)

(assert (=> b!2043579 (= b_free!57067 (not b_next!57771))))

(declare-fun tp!607344 () Bool)

(declare-fun b_and!163007 () Bool)

(assert (=> b!2043579 (= tp!607344 b_and!163007)))

(declare-fun b!2043587 () Bool)

(declare-fun b_free!57069 () Bool)

(declare-fun b_next!57773 () Bool)

(assert (=> b!2043587 (= b_free!57069 (not b_next!57773))))

(declare-fun tp!607343 () Bool)

(declare-fun b_and!163009 () Bool)

(assert (=> b!2043587 (= tp!607343 b_and!163009)))

(declare-fun b!2043593 () Bool)

(declare-fun b_free!57071 () Bool)

(declare-fun b_next!57775 () Bool)

(assert (=> b!2043593 (= b_free!57071 (not b_next!57775))))

(declare-fun tp!607356 () Bool)

(declare-fun b_and!163011 () Bool)

(assert (=> b!2043593 (= tp!607356 b_and!163011)))

(declare-fun b!2043575 () Bool)

(declare-fun e!1290679 () Bool)

(declare-datatypes ((List!22480 0))(
  ( (Nil!22396) (Cons!22396 (h!27797 (_ BitVec 16)) (t!191594 List!22480)) )
))
(declare-datatypes ((TokenValue!4151 0))(
  ( (FloatLiteralValue!8302 (text!29502 List!22480)) (TokenValueExt!4150 (__x!13896 Int)) (Broken!20755 (value!126055 List!22480)) (Object!4234) (End!4151) (Def!4151) (Underscore!4151) (Match!4151) (Else!4151) (Error!4151) (Case!4151) (If!4151) (Extends!4151) (Abstract!4151) (Class!4151) (Val!4151) (DelimiterValue!8302 (del!4211 List!22480)) (KeywordValue!4157 (value!126056 List!22480)) (CommentValue!8302 (value!126057 List!22480)) (WhitespaceValue!8302 (value!126058 List!22480)) (IndentationValue!4151 (value!126059 List!22480)) (String!25946) (Int32!4151) (Broken!20756 (value!126060 List!22480)) (Boolean!4152) (Unit!37020) (OperatorValue!4154 (op!4211 List!22480)) (IdentifierValue!8302 (value!126061 List!22480)) (IdentifierValue!8303 (value!126062 List!22480)) (WhitespaceValue!8303 (value!126063 List!22480)) (True!8302) (False!8302) (Broken!20757 (value!126064 List!22480)) (Broken!20758 (value!126065 List!22480)) (True!8303) (RightBrace!4151) (RightBracket!4151) (Colon!4151) (Null!4151) (Comma!4151) (LeftBracket!4151) (False!8303) (LeftBrace!4151) (ImaginaryLiteralValue!4151 (text!29503 List!22480)) (StringLiteralValue!12453 (value!126066 List!22480)) (EOFValue!4151 (value!126067 List!22480)) (IdentValue!4151 (value!126068 List!22480)) (DelimiterValue!8303 (value!126069 List!22480)) (DedentValue!4151 (value!126070 List!22480)) (NewLineValue!4151 (value!126071 List!22480)) (IntegerValue!12453 (value!126072 (_ BitVec 32)) (text!29504 List!22480)) (IntegerValue!12454 (value!126073 Int) (text!29505 List!22480)) (Times!4151) (Or!4151) (Equal!4151) (Minus!4151) (Broken!20759 (value!126074 List!22480)) (And!4151) (Div!4151) (LessEqual!4151) (Mod!4151) (Concat!9594) (Not!4151) (Plus!4151) (SpaceValue!4151 (value!126075 List!22480)) (IntegerValue!12455 (value!126076 Int) (text!29506 List!22480)) (StringLiteralValue!12454 (text!29507 List!22480)) (FloatLiteralValue!8303 (text!29508 List!22480)) (BytesLiteralValue!4151 (value!126077 List!22480)) (CommentValue!8303 (value!126078 List!22480)) (StringLiteralValue!12455 (value!126079 List!22480)) (ErrorTokenValue!4151 (msg!4212 List!22480)) )
))
(declare-datatypes ((C!11032 0))(
  ( (C!11033 (val!6502 Int)) )
))
(declare-datatypes ((List!22481 0))(
  ( (Nil!22397) (Cons!22397 (h!27798 C!11032) (t!191595 List!22481)) )
))
(declare-datatypes ((IArray!15017 0))(
  ( (IArray!15018 (innerList!7566 List!22481)) )
))
(declare-datatypes ((Regex!5443 0))(
  ( (ElementMatch!5443 (c!330948 C!11032)) (Concat!9595 (regOne!11398 Regex!5443) (regTwo!11398 Regex!5443)) (EmptyExpr!5443) (Star!5443 (reg!5772 Regex!5443)) (EmptyLang!5443) (Union!5443 (regOne!11399 Regex!5443) (regTwo!11399 Regex!5443)) )
))
(declare-datatypes ((String!25947 0))(
  ( (String!25948 (value!126080 String)) )
))
(declare-datatypes ((Conc!7506 0))(
  ( (Node!7506 (left!17796 Conc!7506) (right!18126 Conc!7506) (csize!15242 Int) (cheight!7717 Int)) (Leaf!10995 (xs!10414 IArray!15017) (csize!15243 Int)) (Empty!7506) )
))
(declare-datatypes ((BalanceConc!14774 0))(
  ( (BalanceConc!14775 (c!330949 Conc!7506)) )
))
(declare-datatypes ((TokenValueInjection!7886 0))(
  ( (TokenValueInjection!7887 (toValue!5698 Int) (toChars!5557 Int)) )
))
(declare-datatypes ((Rule!7830 0))(
  ( (Rule!7831 (regex!4015 Regex!5443) (tag!4505 String!25947) (isSeparator!4015 Bool) (transformation!4015 TokenValueInjection!7886)) )
))
(declare-datatypes ((Token!7580 0))(
  ( (Token!7581 (value!126081 TokenValue!4151) (rule!6251 Rule!7830) (size!17516 Int) (originalCharacters!4821 List!22481)) )
))
(declare-datatypes ((List!22482 0))(
  ( (Nil!22398) (Cons!22398 (h!27799 Token!7580) (t!191596 List!22482)) )
))
(declare-datatypes ((IArray!15019 0))(
  ( (IArray!15020 (innerList!7567 List!22482)) )
))
(declare-datatypes ((Conc!7507 0))(
  ( (Node!7507 (left!17797 Conc!7507) (right!18127 Conc!7507) (csize!15244 Int) (cheight!7718 Int)) (Leaf!10996 (xs!10415 IArray!15019) (csize!15245 Int)) (Empty!7507) )
))
(declare-datatypes ((BalanceConc!14776 0))(
  ( (BalanceConc!14777 (c!330950 Conc!7507)) )
))
(declare-fun acc!382 () BalanceConc!14776)

(declare-fun tp!607352 () Bool)

(declare-fun inv!29747 (Conc!7507) Bool)

(assert (=> b!2043575 (= e!1290679 (and (inv!29747 (c!330950 acc!382)) tp!607352))))

(declare-fun b!2043576 () Bool)

(declare-fun e!1290686 () Bool)

(declare-fun e!1290694 () Bool)

(assert (=> b!2043576 (= e!1290686 e!1290694)))

(declare-fun res!895461 () Bool)

(assert (=> b!2043576 (=> (not res!895461) (not e!1290694))))

(declare-fun lt!766351 () List!22481)

(declare-fun lt!766357 () List!22481)

(assert (=> b!2043576 (= res!895461 (= lt!766351 lt!766357))))

(declare-fun lt!766350 () List!22481)

(declare-fun lt!766358 () List!22481)

(declare-fun ++!6083 (List!22481 List!22481) List!22481)

(assert (=> b!2043576 (= lt!766357 (++!6083 lt!766350 lt!766358))))

(declare-fun totalInput!418 () BalanceConc!14774)

(declare-fun list!9180 (BalanceConc!14774) List!22481)

(assert (=> b!2043576 (= lt!766351 (list!9180 totalInput!418))))

(declare-fun input!986 () BalanceConc!14774)

(assert (=> b!2043576 (= lt!766358 (list!9180 input!986))))

(declare-fun treated!60 () BalanceConc!14774)

(assert (=> b!2043576 (= lt!766350 (list!9180 treated!60))))

(declare-fun b!2043577 () Bool)

(declare-fun res!895466 () Bool)

(declare-fun e!1290687 () Bool)

(assert (=> b!2043577 (=> (not res!895466) (not e!1290687))))

(declare-datatypes ((List!22483 0))(
  ( (Nil!22399) (Cons!22399 (h!27800 Regex!5443) (t!191597 List!22483)) )
))
(declare-datatypes ((Context!2026 0))(
  ( (Context!2027 (exprs!1513 List!22483)) )
))
(declare-datatypes ((Hashable!1916 0))(
  ( (HashableExt!1915 (__x!13897 Int)) )
))
(declare-datatypes ((tuple3!2060 0))(
  ( (tuple3!2061 (_1!12039 Regex!5443) (_2!12039 Context!2026) (_3!1494 C!11032)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21090 0))(
  ( (tuple2!21091 (_1!12040 tuple3!2060) (_2!12040 (InoxSet Context!2026))) )
))
(declare-datatypes ((List!22484 0))(
  ( (Nil!22400) (Cons!22400 (h!27801 tuple2!21090) (t!191598 List!22484)) )
))
(declare-datatypes ((array!6902 0))(
  ( (array!6903 (arr!3066 (Array (_ BitVec 32) (_ BitVec 64))) (size!17517 (_ BitVec 32))) )
))
(declare-datatypes ((array!6904 0))(
  ( (array!6905 (arr!3067 (Array (_ BitVec 32) List!22484)) (size!17518 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4004 0))(
  ( (LongMapFixedSize!4005 (defaultEntry!2367 Int) (mask!6039 (_ BitVec 32)) (extraKeys!2250 (_ BitVec 32)) (zeroValue!2260 List!22484) (minValue!2260 List!22484) (_size!4055 (_ BitVec 32)) (_keys!2299 array!6902) (_values!2282 array!6904) (_vacant!2063 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7833 0))(
  ( (Cell!7834 (v!27102 LongMapFixedSize!4004)) )
))
(declare-datatypes ((MutLongMap!2002 0))(
  ( (LongMap!2002 (underlying!4199 Cell!7833)) (MutLongMapExt!2001 (__x!13898 Int)) )
))
(declare-datatypes ((Cell!7835 0))(
  ( (Cell!7836 (v!27103 MutLongMap!2002)) )
))
(declare-datatypes ((MutableMap!1916 0))(
  ( (MutableMapExt!1915 (__x!13899 Int)) (HashMap!1916 (underlying!4200 Cell!7835) (hashF!3839 Hashable!1916) (_size!4056 (_ BitVec 32)) (defaultValue!2078 Int)) )
))
(declare-datatypes ((CacheDown!1214 0))(
  ( (CacheDown!1215 (cache!2297 MutableMap!1916)) )
))
(declare-fun cacheDown!575 () CacheDown!1214)

(declare-fun valid!1597 (CacheDown!1214) Bool)

(assert (=> b!2043577 (= res!895466 (valid!1597 cacheDown!575))))

(declare-fun e!1290683 () Bool)

(assert (=> b!2043579 (= e!1290683 (and tp!607354 tp!607344))))

(declare-fun b!2043580 () Bool)

(declare-fun e!1290698 () Bool)

(declare-fun e!1290689 () Bool)

(assert (=> b!2043580 (= e!1290698 e!1290689)))

(declare-fun b!2043581 () Bool)

(declare-fun e!1290675 () Bool)

(declare-fun e!1290684 () Bool)

(assert (=> b!2043581 (= e!1290675 e!1290684)))

(declare-fun e!1290677 () Bool)

(declare-fun e!1290676 () Bool)

(assert (=> b!2043582 (= e!1290677 (and e!1290676 tp!607349))))

(declare-fun b!2043583 () Bool)

(declare-fun e!1290690 () Bool)

(declare-fun e!1290697 () Bool)

(assert (=> b!2043583 (= e!1290690 e!1290697)))

(declare-fun res!895469 () Bool)

(assert (=> b!2043583 (=> res!895469 e!1290697)))

(declare-datatypes ((tuple2!21092 0))(
  ( (tuple2!21093 (_1!12041 Context!2026) (_2!12041 C!11032)) )
))
(declare-datatypes ((tuple2!21094 0))(
  ( (tuple2!21095 (_1!12042 tuple2!21092) (_2!12042 (InoxSet Context!2026))) )
))
(declare-datatypes ((List!22485 0))(
  ( (Nil!22401) (Cons!22401 (h!27802 tuple2!21094) (t!191599 List!22485)) )
))
(declare-datatypes ((array!6906 0))(
  ( (array!6907 (arr!3068 (Array (_ BitVec 32) List!22485)) (size!17519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4006 0))(
  ( (LongMapFixedSize!4007 (defaultEntry!2368 Int) (mask!6040 (_ BitVec 32)) (extraKeys!2251 (_ BitVec 32)) (zeroValue!2261 List!22485) (minValue!2261 List!22485) (_size!4057 (_ BitVec 32)) (_keys!2300 array!6902) (_values!2283 array!6906) (_vacant!2064 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7837 0))(
  ( (Cell!7838 (v!27104 LongMapFixedSize!4006)) )
))
(declare-datatypes ((MutLongMap!2003 0))(
  ( (LongMap!2003 (underlying!4201 Cell!7837)) (MutLongMapExt!2002 (__x!13900 Int)) )
))
(declare-datatypes ((Hashable!1917 0))(
  ( (HashableExt!1916 (__x!13901 Int)) )
))
(declare-datatypes ((Cell!7839 0))(
  ( (Cell!7840 (v!27105 MutLongMap!2003)) )
))
(declare-datatypes ((MutableMap!1917 0))(
  ( (MutableMapExt!1916 (__x!13902 Int)) (HashMap!1917 (underlying!4202 Cell!7839) (hashF!3840 Hashable!1917) (_size!4058 (_ BitVec 32)) (defaultValue!2079 Int)) )
))
(declare-datatypes ((CacheUp!1212 0))(
  ( (CacheUp!1213 (cache!2298 MutableMap!1917)) )
))
(declare-datatypes ((tuple2!21096 0))(
  ( (tuple2!21097 (_1!12043 Token!7580) (_2!12043 BalanceConc!14774)) )
))
(declare-datatypes ((Option!4697 0))(
  ( (None!4696) (Some!4696 (v!27106 tuple2!21096)) )
))
(declare-datatypes ((tuple3!2062 0))(
  ( (tuple3!2063 (_1!12044 Option!4697) (_2!12044 CacheUp!1212) (_3!1495 CacheDown!1214)) )
))
(declare-fun lt!766356 () tuple3!2062)

(get-info :version)

(assert (=> b!2043583 (= res!895469 (not ((_ is Some!4696) (_1!12044 lt!766356))))))

(declare-datatypes ((LexerInterface!3628 0))(
  ( (LexerInterfaceExt!3625 (__x!13903 Int)) (Lexer!3626) )
))
(declare-fun thiss!12889 () LexerInterface!3628)

(declare-fun cacheUp!562 () CacheUp!1212)

(declare-datatypes ((List!22486 0))(
  ( (Nil!22402) (Cons!22402 (h!27803 Rule!7830) (t!191600 List!22486)) )
))
(declare-fun rules!1563 () List!22486)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!8 (LexerInterface!3628 List!22486 BalanceConc!14774 BalanceConc!14774 CacheUp!1212 CacheDown!1214) tuple3!2062)

(assert (=> b!2043583 (= lt!766356 (maxPrefixZipperSequenceV2MemOnlyDeriv!8 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2043584 () Bool)

(assert (=> b!2043584 (= e!1290697 true)))

(declare-fun lt!766361 () tuple3!2062)

(assert (=> b!2043584 (= lt!766361 (maxPrefixZipperSequenceV2MemOnlyDeriv!8 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12044 lt!766356) (_3!1495 lt!766356)))))

(declare-datatypes ((tuple2!21098 0))(
  ( (tuple2!21099 (_1!12045 BalanceConc!14776) (_2!12045 BalanceConc!14774)) )
))
(declare-fun lt!766354 () tuple2!21098)

(declare-fun lexRec!433 (LexerInterface!3628 List!22486 BalanceConc!14774) tuple2!21098)

(assert (=> b!2043584 (= lt!766354 (lexRec!433 thiss!12889 rules!1563 (_2!12043 (v!27106 (_1!12044 lt!766356)))))))

(declare-fun b!2043585 () Bool)

(declare-fun e!1290682 () Bool)

(declare-fun e!1290695 () Bool)

(assert (=> b!2043585 (= e!1290682 e!1290695)))

(declare-fun mapIsEmpty!9240 () Bool)

(declare-fun mapRes!9240 () Bool)

(assert (=> mapIsEmpty!9240 mapRes!9240))

(declare-fun mapNonEmpty!9240 () Bool)

(declare-fun tp!607340 () Bool)

(declare-fun tp!607347 () Bool)

(assert (=> mapNonEmpty!9240 (= mapRes!9240 (and tp!607340 tp!607347))))

(declare-fun mapValue!9241 () List!22485)

(declare-fun mapKey!9241 () (_ BitVec 32))

(declare-fun mapRest!9241 () (Array (_ BitVec 32) List!22485))

(assert (=> mapNonEmpty!9240 (= (arr!3068 (_values!2283 (v!27104 (underlying!4201 (v!27105 (underlying!4202 (cache!2298 cacheUp!562))))))) (store mapRest!9241 mapKey!9241 mapValue!9241))))

(declare-fun b!2043586 () Bool)

(declare-fun res!895463 () Bool)

(assert (=> b!2043586 (=> (not res!895463) (not e!1290687))))

(declare-fun valid!1598 (CacheUp!1212) Bool)

(assert (=> b!2043586 (= res!895463 (valid!1598 cacheUp!562))))

(declare-fun tp!607342 () Bool)

(declare-fun e!1290692 () Bool)

(declare-fun tp!607341 () Bool)

(declare-fun array_inv!2201 (array!6902) Bool)

(declare-fun array_inv!2202 (array!6906) Bool)

(assert (=> b!2043587 (= e!1290689 (and tp!607343 tp!607342 tp!607341 (array_inv!2201 (_keys!2300 (v!27104 (underlying!4201 (v!27105 (underlying!4202 (cache!2298 cacheUp!562))))))) (array_inv!2202 (_values!2283 (v!27104 (underlying!4201 (v!27105 (underlying!4202 (cache!2298 cacheUp!562))))))) e!1290692))))

(declare-fun b!2043588 () Bool)

(declare-fun tp!607346 () Bool)

(assert (=> b!2043588 (= e!1290692 (and tp!607346 mapRes!9240))))

(declare-fun condMapEmpty!9240 () Bool)

(declare-fun mapDefault!9240 () List!22485)

(assert (=> b!2043588 (= condMapEmpty!9240 (= (arr!3068 (_values!2283 (v!27104 (underlying!4201 (v!27105 (underlying!4202 (cache!2298 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22485)) mapDefault!9240)))))

(declare-fun e!1290681 () Bool)

(assert (=> b!2043589 (= e!1290684 (and e!1290681 tp!607351))))

(declare-fun b!2043590 () Bool)

(declare-fun e!1290680 () Bool)

(declare-fun tp!607337 () Bool)

(declare-fun inv!29748 (Conc!7506) Bool)

(assert (=> b!2043590 (= e!1290680 (and (inv!29748 (c!330949 totalInput!418)) tp!607337))))

(declare-fun b!2043591 () Bool)

(declare-fun e!1290669 () Bool)

(declare-fun e!1290688 () Bool)

(declare-fun tp!607339 () Bool)

(assert (=> b!2043591 (= e!1290669 (and e!1290688 tp!607339))))

(declare-fun b!2043592 () Bool)

(declare-fun e!1290691 () Bool)

(assert (=> b!2043592 (= e!1290691 e!1290687)))

(declare-fun res!895459 () Bool)

(assert (=> b!2043592 (=> (not res!895459) (not e!1290687))))

(declare-fun lt!766352 () tuple2!21098)

(declare-fun lt!766359 () tuple2!21098)

(declare-fun list!9181 (BalanceConc!14776) List!22482)

(declare-fun ++!6084 (BalanceConc!14776 BalanceConc!14776) BalanceConc!14776)

(assert (=> b!2043592 (= res!895459 (= (list!9181 (_1!12045 lt!766359)) (list!9181 (++!6084 acc!382 (_1!12045 lt!766352)))))))

(assert (=> b!2043592 (= lt!766352 (lexRec!433 thiss!12889 rules!1563 input!986))))

(assert (=> b!2043592 (= lt!766359 (lexRec!433 thiss!12889 rules!1563 totalInput!418))))

(declare-fun tp!607348 () Bool)

(declare-fun tp!607355 () Bool)

(declare-fun e!1290672 () Bool)

(declare-fun array_inv!2203 (array!6904) Bool)

(assert (=> b!2043593 (= e!1290695 (and tp!607356 tp!607355 tp!607348 (array_inv!2201 (_keys!2299 (v!27102 (underlying!4199 (v!27103 (underlying!4200 (cache!2297 cacheDown!575))))))) (array_inv!2203 (_values!2282 (v!27102 (underlying!4199 (v!27103 (underlying!4200 (cache!2297 cacheDown!575))))))) e!1290672))))

(declare-fun b!2043578 () Bool)

(assert (=> b!2043578 (= e!1290694 e!1290691)))

(declare-fun res!895465 () Bool)

(assert (=> b!2043578 (=> (not res!895465) (not e!1290691))))

(declare-fun lt!766360 () tuple2!21098)

(assert (=> b!2043578 (= res!895465 (= (list!9181 (_1!12045 lt!766360)) (list!9181 acc!382)))))

(assert (=> b!2043578 (= lt!766360 (lexRec!433 thiss!12889 rules!1563 treated!60))))

(declare-fun res!895467 () Bool)

(assert (=> start!201372 (=> (not res!895467) (not e!1290686))))

(assert (=> start!201372 (= res!895467 ((_ is Lexer!3626) thiss!12889))))

(assert (=> start!201372 e!1290686))

(declare-fun inv!29749 (CacheDown!1214) Bool)

(assert (=> start!201372 (and (inv!29749 cacheDown!575) e!1290675)))

(assert (=> start!201372 true))

(declare-fun e!1290693 () Bool)

(declare-fun inv!29750 (CacheUp!1212) Bool)

(assert (=> start!201372 (and (inv!29750 cacheUp!562) e!1290693)))

(assert (=> start!201372 e!1290669))

(declare-fun inv!29751 (BalanceConc!14774) Bool)

(assert (=> start!201372 (and (inv!29751 totalInput!418) e!1290680)))

(declare-fun e!1290673 () Bool)

(assert (=> start!201372 (and (inv!29751 treated!60) e!1290673)))

(declare-fun e!1290674 () Bool)

(assert (=> start!201372 (and (inv!29751 input!986) e!1290674)))

(declare-fun inv!29752 (BalanceConc!14776) Bool)

(assert (=> start!201372 (and (inv!29752 acc!382) e!1290679)))

(declare-fun b!2043594 () Bool)

(declare-fun e!1290678 () Bool)

(assert (=> b!2043594 (= e!1290678 e!1290682)))

(declare-fun b!2043595 () Bool)

(declare-fun e!1290696 () Bool)

(assert (=> b!2043595 (= e!1290696 e!1290698)))

(declare-fun b!2043596 () Bool)

(assert (=> b!2043596 (= e!1290693 e!1290677)))

(declare-fun b!2043597 () Bool)

(declare-fun res!895464 () Bool)

(assert (=> b!2043597 (=> (not res!895464) (not e!1290691))))

(declare-fun isEmpty!13968 (List!22481) Bool)

(assert (=> b!2043597 (= res!895464 (isEmpty!13968 (list!9180 (_2!12045 lt!766360))))))

(declare-fun b!2043598 () Bool)

(declare-fun res!895462 () Bool)

(assert (=> b!2043598 (=> (not res!895462) (not e!1290686))))

(declare-fun rulesInvariant!3230 (LexerInterface!3628 List!22486) Bool)

(assert (=> b!2043598 (= res!895462 (rulesInvariant!3230 thiss!12889 rules!1563))))

(declare-fun b!2043599 () Bool)

(declare-fun lt!766353 () MutLongMap!2003)

(assert (=> b!2043599 (= e!1290676 (and e!1290696 ((_ is LongMap!2003) lt!766353)))))

(assert (=> b!2043599 (= lt!766353 (v!27105 (underlying!4202 (cache!2298 cacheUp!562))))))

(declare-fun b!2043600 () Bool)

(declare-fun tp!607350 () Bool)

(declare-fun mapRes!9241 () Bool)

(assert (=> b!2043600 (= e!1290672 (and tp!607350 mapRes!9241))))

(declare-fun condMapEmpty!9241 () Bool)

(declare-fun mapDefault!9241 () List!22484)

(assert (=> b!2043600 (= condMapEmpty!9241 (= (arr!3067 (_values!2282 (v!27102 (underlying!4199 (v!27103 (underlying!4200 (cache!2297 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22484)) mapDefault!9241)))))

(declare-fun b!2043601 () Bool)

(declare-fun res!895458 () Bool)

(assert (=> b!2043601 (=> (not res!895458) (not e!1290687))))

(assert (=> b!2043601 (= res!895458 (= (list!9180 (_2!12045 lt!766359)) (list!9180 (_2!12045 lt!766352))))))

(declare-fun b!2043602 () Bool)

(declare-fun tp!607345 () Bool)

(assert (=> b!2043602 (= e!1290674 (and (inv!29748 (c!330949 input!986)) tp!607345))))

(declare-fun b!2043603 () Bool)

(declare-fun tp!607353 () Bool)

(declare-fun inv!29740 (String!25947) Bool)

(declare-fun inv!29753 (TokenValueInjection!7886) Bool)

(assert (=> b!2043603 (= e!1290688 (and tp!607353 (inv!29740 (tag!4505 (h!27803 rules!1563))) (inv!29753 (transformation!4015 (h!27803 rules!1563))) e!1290683))))

(declare-fun mapNonEmpty!9241 () Bool)

(declare-fun tp!607338 () Bool)

(declare-fun tp!607336 () Bool)

(assert (=> mapNonEmpty!9241 (= mapRes!9241 (and tp!607338 tp!607336))))

(declare-fun mapKey!9240 () (_ BitVec 32))

(declare-fun mapValue!9240 () List!22484)

(declare-fun mapRest!9240 () (Array (_ BitVec 32) List!22484))

(assert (=> mapNonEmpty!9241 (= (arr!3067 (_values!2282 (v!27102 (underlying!4199 (v!27103 (underlying!4200 (cache!2297 cacheDown!575))))))) (store mapRest!9240 mapKey!9240 mapValue!9240))))

(declare-fun b!2043604 () Bool)

(assert (=> b!2043604 (= e!1290687 (not e!1290690))))

(declare-fun res!895468 () Bool)

(assert (=> b!2043604 (=> res!895468 e!1290690)))

(declare-fun isSuffix!475 (List!22481 List!22481) Bool)

(assert (=> b!2043604 (= res!895468 (not (isSuffix!475 lt!766358 lt!766351)))))

(assert (=> b!2043604 (isSuffix!475 lt!766358 lt!766357)))

(declare-datatypes ((Unit!37021 0))(
  ( (Unit!37022) )
))
(declare-fun lt!766349 () Unit!37021)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!376 (List!22481 List!22481) Unit!37021)

(assert (=> b!2043604 (= lt!766349 (lemmaConcatTwoListThenFSndIsSuffix!376 lt!766350 lt!766358))))

(declare-fun b!2043605 () Bool)

(declare-fun lt!766355 () MutLongMap!2002)

(assert (=> b!2043605 (= e!1290681 (and e!1290678 ((_ is LongMap!2002) lt!766355)))))

(assert (=> b!2043605 (= lt!766355 (v!27103 (underlying!4200 (cache!2297 cacheDown!575))))))

(declare-fun b!2043606 () Bool)

(declare-fun tp!607357 () Bool)

(assert (=> b!2043606 (= e!1290673 (and (inv!29748 (c!330949 treated!60)) tp!607357))))

(declare-fun b!2043607 () Bool)

(declare-fun res!895460 () Bool)

(assert (=> b!2043607 (=> (not res!895460) (not e!1290686))))

(declare-fun isEmpty!13969 (List!22486) Bool)

(assert (=> b!2043607 (= res!895460 (not (isEmpty!13969 rules!1563)))))

(declare-fun mapIsEmpty!9241 () Bool)

(assert (=> mapIsEmpty!9241 mapRes!9241))

(assert (= (and start!201372 res!895467) b!2043607))

(assert (= (and b!2043607 res!895460) b!2043598))

(assert (= (and b!2043598 res!895462) b!2043576))

(assert (= (and b!2043576 res!895461) b!2043578))

(assert (= (and b!2043578 res!895465) b!2043597))

(assert (= (and b!2043597 res!895464) b!2043592))

(assert (= (and b!2043592 res!895459) b!2043601))

(assert (= (and b!2043601 res!895458) b!2043586))

(assert (= (and b!2043586 res!895463) b!2043577))

(assert (= (and b!2043577 res!895466) b!2043604))

(assert (= (and b!2043604 (not res!895468)) b!2043583))

(assert (= (and b!2043583 (not res!895469)) b!2043584))

(assert (= (and b!2043600 condMapEmpty!9241) mapIsEmpty!9241))

(assert (= (and b!2043600 (not condMapEmpty!9241)) mapNonEmpty!9241))

(assert (= b!2043593 b!2043600))

(assert (= b!2043585 b!2043593))

(assert (= b!2043594 b!2043585))

(assert (= (and b!2043605 ((_ is LongMap!2002) (v!27103 (underlying!4200 (cache!2297 cacheDown!575))))) b!2043594))

(assert (= b!2043589 b!2043605))

(assert (= (and b!2043581 ((_ is HashMap!1916) (cache!2297 cacheDown!575))) b!2043589))

(assert (= start!201372 b!2043581))

(assert (= (and b!2043588 condMapEmpty!9240) mapIsEmpty!9240))

(assert (= (and b!2043588 (not condMapEmpty!9240)) mapNonEmpty!9240))

(assert (= b!2043587 b!2043588))

(assert (= b!2043580 b!2043587))

(assert (= b!2043595 b!2043580))

(assert (= (and b!2043599 ((_ is LongMap!2003) (v!27105 (underlying!4202 (cache!2298 cacheUp!562))))) b!2043595))

(assert (= b!2043582 b!2043599))

(assert (= (and b!2043596 ((_ is HashMap!1917) (cache!2298 cacheUp!562))) b!2043582))

(assert (= start!201372 b!2043596))

(assert (= b!2043603 b!2043579))

(assert (= b!2043591 b!2043603))

(assert (= (and start!201372 ((_ is Cons!22402) rules!1563)) b!2043591))

(assert (= start!201372 b!2043590))

(assert (= start!201372 b!2043606))

(assert (= start!201372 b!2043602))

(assert (= start!201372 b!2043575))

(declare-fun m!2487551 () Bool)

(assert (=> b!2043578 m!2487551))

(declare-fun m!2487553 () Bool)

(assert (=> b!2043578 m!2487553))

(declare-fun m!2487555 () Bool)

(assert (=> b!2043578 m!2487555))

(declare-fun m!2487557 () Bool)

(assert (=> b!2043598 m!2487557))

(declare-fun m!2487559 () Bool)

(assert (=> b!2043604 m!2487559))

(declare-fun m!2487561 () Bool)

(assert (=> b!2043604 m!2487561))

(declare-fun m!2487563 () Bool)

(assert (=> b!2043604 m!2487563))

(declare-fun m!2487565 () Bool)

(assert (=> b!2043584 m!2487565))

(declare-fun m!2487567 () Bool)

(assert (=> b!2043584 m!2487567))

(declare-fun m!2487569 () Bool)

(assert (=> b!2043601 m!2487569))

(declare-fun m!2487571 () Bool)

(assert (=> b!2043601 m!2487571))

(declare-fun m!2487573 () Bool)

(assert (=> b!2043597 m!2487573))

(assert (=> b!2043597 m!2487573))

(declare-fun m!2487575 () Bool)

(assert (=> b!2043597 m!2487575))

(declare-fun m!2487577 () Bool)

(assert (=> b!2043586 m!2487577))

(declare-fun m!2487579 () Bool)

(assert (=> b!2043593 m!2487579))

(declare-fun m!2487581 () Bool)

(assert (=> b!2043593 m!2487581))

(declare-fun m!2487583 () Bool)

(assert (=> b!2043577 m!2487583))

(declare-fun m!2487585 () Bool)

(assert (=> b!2043590 m!2487585))

(declare-fun m!2487587 () Bool)

(assert (=> mapNonEmpty!9240 m!2487587))

(declare-fun m!2487589 () Bool)

(assert (=> start!201372 m!2487589))

(declare-fun m!2487591 () Bool)

(assert (=> start!201372 m!2487591))

(declare-fun m!2487593 () Bool)

(assert (=> start!201372 m!2487593))

(declare-fun m!2487595 () Bool)

(assert (=> start!201372 m!2487595))

(declare-fun m!2487597 () Bool)

(assert (=> start!201372 m!2487597))

(declare-fun m!2487599 () Bool)

(assert (=> start!201372 m!2487599))

(declare-fun m!2487601 () Bool)

(assert (=> mapNonEmpty!9241 m!2487601))

(declare-fun m!2487603 () Bool)

(assert (=> b!2043602 m!2487603))

(declare-fun m!2487605 () Bool)

(assert (=> b!2043576 m!2487605))

(declare-fun m!2487607 () Bool)

(assert (=> b!2043576 m!2487607))

(declare-fun m!2487609 () Bool)

(assert (=> b!2043576 m!2487609))

(declare-fun m!2487611 () Bool)

(assert (=> b!2043576 m!2487611))

(declare-fun m!2487613 () Bool)

(assert (=> b!2043603 m!2487613))

(declare-fun m!2487615 () Bool)

(assert (=> b!2043603 m!2487615))

(declare-fun m!2487617 () Bool)

(assert (=> b!2043606 m!2487617))

(declare-fun m!2487619 () Bool)

(assert (=> b!2043575 m!2487619))

(declare-fun m!2487621 () Bool)

(assert (=> b!2043607 m!2487621))

(declare-fun m!2487623 () Bool)

(assert (=> b!2043587 m!2487623))

(declare-fun m!2487625 () Bool)

(assert (=> b!2043587 m!2487625))

(declare-fun m!2487627 () Bool)

(assert (=> b!2043592 m!2487627))

(declare-fun m!2487629 () Bool)

(assert (=> b!2043592 m!2487629))

(declare-fun m!2487631 () Bool)

(assert (=> b!2043592 m!2487631))

(declare-fun m!2487633 () Bool)

(assert (=> b!2043592 m!2487633))

(assert (=> b!2043592 m!2487627))

(declare-fun m!2487635 () Bool)

(assert (=> b!2043592 m!2487635))

(declare-fun m!2487637 () Bool)

(assert (=> b!2043583 m!2487637))

(check-sat (not b!2043583) (not b_next!57767) (not b!2043593) (not b!2043578) (not b_next!57771) b_and!163009 (not b_next!57773) (not start!201372) (not b!2043604) (not b!2043587) b_and!163007 (not b!2043597) (not b!2043575) (not b!2043586) (not b!2043602) (not b!2043577) b_and!163005 b_and!163001 (not b!2043603) (not b!2043588) (not b!2043584) (not b!2043600) (not b!2043607) (not b!2043592) (not b_next!57769) (not b!2043606) (not mapNonEmpty!9241) (not b!2043590) (not b_next!57775) b_and!163003 b_and!163011 (not b!2043591) (not b_next!57765) (not mapNonEmpty!9240) (not b!2043598) (not b!2043576) (not b!2043601))
(check-sat b_and!163007 (not b_next!57767) (not b_next!57771) (not b_next!57769) b_and!163009 (not b_next!57773) (not b_next!57765) b_and!163005 b_and!163001 (not b_next!57775) b_and!163003 b_and!163011)
