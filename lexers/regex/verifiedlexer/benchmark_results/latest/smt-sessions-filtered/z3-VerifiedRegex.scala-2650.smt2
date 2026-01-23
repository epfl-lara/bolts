; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143046 () Bool)

(assert start!143046)

(declare-fun b!1540023 () Bool)

(declare-fun b_free!40247 () Bool)

(declare-fun b_next!40951 () Bool)

(assert (=> b!1540023 (= b_free!40247 (not b_next!40951))))

(declare-fun tp!445954 () Bool)

(declare-fun b_and!107125 () Bool)

(assert (=> b!1540023 (= tp!445954 b_and!107125)))

(declare-fun b!1539998 () Bool)

(declare-fun b_free!40249 () Bool)

(declare-fun b_next!40953 () Bool)

(assert (=> b!1539998 (= b_free!40249 (not b_next!40953))))

(declare-fun tp!445975 () Bool)

(declare-fun b_and!107127 () Bool)

(assert (=> b!1539998 (= tp!445975 b_and!107127)))

(declare-fun b!1540004 () Bool)

(declare-fun b_free!40251 () Bool)

(declare-fun b_next!40955 () Bool)

(assert (=> b!1540004 (= b_free!40251 (not b_next!40955))))

(declare-fun tp!445973 () Bool)

(declare-fun b_and!107129 () Bool)

(assert (=> b!1540004 (= tp!445973 b_and!107129)))

(declare-fun b_free!40253 () Bool)

(declare-fun b_next!40957 () Bool)

(assert (=> b!1540004 (= b_free!40253 (not b_next!40957))))

(declare-fun tp!445969 () Bool)

(declare-fun b_and!107131 () Bool)

(assert (=> b!1540004 (= tp!445969 b_and!107131)))

(declare-fun b!1540034 () Bool)

(declare-fun b_free!40255 () Bool)

(declare-fun b_next!40959 () Bool)

(assert (=> b!1540034 (= b_free!40255 (not b_next!40959))))

(declare-fun tp!445976 () Bool)

(declare-fun b_and!107133 () Bool)

(assert (=> b!1540034 (= tp!445976 b_and!107133)))

(declare-fun b!1540012 () Bool)

(declare-fun b_free!40257 () Bool)

(declare-fun b_next!40961 () Bool)

(assert (=> b!1540012 (= b_free!40257 (not b_next!40961))))

(declare-fun tp!445961 () Bool)

(declare-fun b_and!107135 () Bool)

(assert (=> b!1540012 (= tp!445961 b_and!107135)))

(declare-fun b!1540005 () Bool)

(declare-fun b_free!40259 () Bool)

(declare-fun b_next!40963 () Bool)

(assert (=> b!1540005 (= b_free!40259 (not b_next!40963))))

(declare-fun tp!445966 () Bool)

(declare-fun b_and!107137 () Bool)

(assert (=> b!1540005 (= tp!445966 b_and!107137)))

(declare-fun b!1540018 () Bool)

(declare-fun b_free!40261 () Bool)

(declare-fun b_next!40965 () Bool)

(assert (=> b!1540018 (= b_free!40261 (not b_next!40965))))

(declare-fun tp!445963 () Bool)

(declare-fun b_and!107139 () Bool)

(assert (=> b!1540018 (= tp!445963 b_and!107139)))

(declare-fun e!985771 () Bool)

(declare-fun b!1539993 () Bool)

(declare-fun e!985767 () Bool)

(declare-fun e!985768 () Bool)

(declare-datatypes ((C!8600 0))(
  ( (C!8601 (val!4872 Int)) )
))
(declare-datatypes ((Regex!4211 0))(
  ( (ElementMatch!4211 (c!251687 C!8600)) (Concat!7188 (regOne!8934 Regex!4211) (regTwo!8934 Regex!4211)) (EmptyExpr!4211) (Star!4211 (reg!4540 Regex!4211)) (EmptyLang!4211) (Union!4211 (regOne!8935 Regex!4211) (regTwo!8935 Regex!4211)) )
))
(declare-datatypes ((List!16506 0))(
  ( (Nil!16438) (Cons!16438 (h!21839 Regex!4211) (t!140712 List!16506)) )
))
(declare-datatypes ((Context!1458 0))(
  ( (Context!1459 (exprs!1229 List!16506)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1554 0))(
  ( (tuple3!1555 (_1!8940 (InoxSet Context!1458)) (_2!8940 Int) (_3!1171 Int)) )
))
(declare-datatypes ((tuple2!15538 0))(
  ( (tuple2!15539 (_1!8941 tuple3!1554) (_2!8941 Int)) )
))
(declare-datatypes ((List!16507 0))(
  ( (Nil!16439) (Cons!16439 (h!21840 tuple2!15538) (t!140713 List!16507)) )
))
(declare-datatypes ((List!16508 0))(
  ( (Nil!16440) (Cons!16440 (h!21841 C!8600) (t!140714 List!16508)) )
))
(declare-datatypes ((IArray!11013 0))(
  ( (IArray!11014 (innerList!5564 List!16508)) )
))
(declare-datatypes ((array!5634 0))(
  ( (array!5635 (arr!2508 (Array (_ BitVec 32) (_ BitVec 64))) (size!13278 (_ BitVec 32))) )
))
(declare-datatypes ((array!5636 0))(
  ( (array!5637 (arr!2509 (Array (_ BitVec 32) List!16507)) (size!13279 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3244 0))(
  ( (LongMapFixedSize!3245 (defaultEntry!1982 Int) (mask!4816 (_ BitVec 32)) (extraKeys!1869 (_ BitVec 32)) (zeroValue!1879 List!16507) (minValue!1879 List!16507) (_size!3325 (_ BitVec 32)) (_keys!1916 array!5634) (_values!1901 array!5636) (_vacant!1683 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1566 0))(
  ( (HashableExt!1565 (__x!10551 Int)) )
))
(declare-datatypes ((Cell!6373 0))(
  ( (Cell!6374 (v!23250 LongMapFixedSize!3244)) )
))
(declare-datatypes ((MutLongMap!1622 0))(
  ( (LongMap!1622 (underlying!3453 Cell!6373)) (MutLongMapExt!1621 (__x!10552 Int)) )
))
(declare-datatypes ((Cell!6375 0))(
  ( (Cell!6376 (v!23251 MutLongMap!1622)) )
))
(declare-datatypes ((MutableMap!1566 0))(
  ( (MutableMapExt!1565 (__x!10553 Int)) (HashMap!1566 (underlying!3454 Cell!6375) (hashF!3485 Hashable!1566) (_size!3326 (_ BitVec 32)) (defaultValue!1726 Int)) )
))
(declare-datatypes ((Conc!5504 0))(
  ( (Node!5504 (left!13478 Conc!5504) (right!13808 Conc!5504) (csize!11238 Int) (cheight!5715 Int)) (Leaf!8155 (xs!8304 IArray!11013) (csize!11239 Int)) (Empty!5504) )
))
(declare-datatypes ((BalanceConc!10950 0))(
  ( (BalanceConc!10951 (c!251688 Conc!5504)) )
))
(declare-datatypes ((CacheFurthestNullable!370 0))(
  ( (CacheFurthestNullable!371 (cache!1947 MutableMap!1566) (totalInput!2377 BalanceConc!10950)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!370)

(declare-fun inv!21694 (BalanceConc!10950) Bool)

(assert (=> b!1539993 (= e!985768 (and e!985771 (inv!21694 (totalInput!2377 cacheFurthestNullable!81)) e!985767))))

(declare-fun b!1539994 () Bool)

(declare-fun e!985756 () Bool)

(declare-datatypes ((List!16509 0))(
  ( (Nil!16441) (Cons!16441 (h!21842 (_ BitVec 16)) (t!140715 List!16509)) )
))
(declare-datatypes ((TokenValue!2977 0))(
  ( (FloatLiteralValue!5954 (text!21284 List!16509)) (TokenValueExt!2976 (__x!10554 Int)) (Broken!14885 (value!91915 List!16509)) (Object!3044) (End!2977) (Def!2977) (Underscore!2977) (Match!2977) (Else!2977) (Error!2977) (Case!2977) (If!2977) (Extends!2977) (Abstract!2977) (Class!2977) (Val!2977) (DelimiterValue!5954 (del!3037 List!16509)) (KeywordValue!2983 (value!91916 List!16509)) (CommentValue!5954 (value!91917 List!16509)) (WhitespaceValue!5954 (value!91918 List!16509)) (IndentationValue!2977 (value!91919 List!16509)) (String!19164) (Int32!2977) (Broken!14886 (value!91920 List!16509)) (Boolean!2978) (Unit!25881) (OperatorValue!2980 (op!3037 List!16509)) (IdentifierValue!5954 (value!91921 List!16509)) (IdentifierValue!5955 (value!91922 List!16509)) (WhitespaceValue!5955 (value!91923 List!16509)) (True!5954) (False!5954) (Broken!14887 (value!91924 List!16509)) (Broken!14888 (value!91925 List!16509)) (True!5955) (RightBrace!2977) (RightBracket!2977) (Colon!2977) (Null!2977) (Comma!2977) (LeftBracket!2977) (False!5955) (LeftBrace!2977) (ImaginaryLiteralValue!2977 (text!21285 List!16509)) (StringLiteralValue!8931 (value!91926 List!16509)) (EOFValue!2977 (value!91927 List!16509)) (IdentValue!2977 (value!91928 List!16509)) (DelimiterValue!5955 (value!91929 List!16509)) (DedentValue!2977 (value!91930 List!16509)) (NewLineValue!2977 (value!91931 List!16509)) (IntegerValue!8931 (value!91932 (_ BitVec 32)) (text!21286 List!16509)) (IntegerValue!8932 (value!91933 Int) (text!21287 List!16509)) (Times!2977) (Or!2977) (Equal!2977) (Minus!2977) (Broken!14889 (value!91934 List!16509)) (And!2977) (Div!2977) (LessEqual!2977) (Mod!2977) (Concat!7189) (Not!2977) (Plus!2977) (SpaceValue!2977 (value!91935 List!16509)) (IntegerValue!8933 (value!91936 Int) (text!21288 List!16509)) (StringLiteralValue!8932 (text!21289 List!16509)) (FloatLiteralValue!5955 (text!21290 List!16509)) (BytesLiteralValue!2977 (value!91937 List!16509)) (CommentValue!5955 (value!91938 List!16509)) (StringLiteralValue!8933 (value!91939 List!16509)) (ErrorTokenValue!2977 (msg!3038 List!16509)) )
))
(declare-datatypes ((String!19165 0))(
  ( (String!19166 (value!91940 String)) )
))
(declare-datatypes ((TokenValueInjection!5614 0))(
  ( (TokenValueInjection!5615 (toValue!4248 Int) (toChars!4107 Int)) )
))
(declare-datatypes ((Rule!5574 0))(
  ( (Rule!5575 (regex!2887 Regex!4211) (tag!3151 String!19165) (isSeparator!2887 Bool) (transformation!2887 TokenValueInjection!5614)) )
))
(declare-datatypes ((Token!5412 0))(
  ( (Token!5413 (value!91941 TokenValue!2977) (rule!4690 Rule!5574) (size!13280 Int) (originalCharacters!3737 List!16508)) )
))
(declare-datatypes ((tuple2!15540 0))(
  ( (tuple2!15541 (_1!8942 Token!5412) (_2!8942 BalanceConc!10950)) )
))
(declare-fun lt!534118 () tuple2!15540)

(declare-datatypes ((tuple2!15542 0))(
  ( (tuple2!15543 (_1!8943 Token!5412) (_2!8943 List!16508)) )
))
(declare-fun lt!534129 () tuple2!15542)

(declare-fun list!6429 (BalanceConc!10950) List!16508)

(assert (=> b!1539994 (= e!985756 (not (= (list!6429 (_2!8942 lt!534118)) (_2!8943 lt!534129))))))

(declare-fun mapNonEmpty!7626 () Bool)

(declare-fun mapRes!7628 () Bool)

(declare-fun tp!445971 () Bool)

(declare-fun tp!445952 () Bool)

(assert (=> mapNonEmpty!7626 (= mapRes!7628 (and tp!445971 tp!445952))))

(declare-fun mapRest!7626 () (Array (_ BitVec 32) List!16507))

(declare-fun mapKey!7626 () (_ BitVec 32))

(declare-fun mapValue!7626 () List!16507)

(assert (=> mapNonEmpty!7626 (= (arr!2509 (_values!1901 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))) (store mapRest!7626 mapKey!7626 mapValue!7626))))

(declare-fun b!1539995 () Bool)

(declare-fun res!689802 () Bool)

(declare-fun e!985778 () Bool)

(assert (=> b!1539995 (=> (not res!689802) (not e!985778))))

(declare-fun valid!1312 (CacheFurthestNullable!370) Bool)

(assert (=> b!1539995 (= res!689802 (valid!1312 cacheFurthestNullable!81))))

(declare-fun b!1539996 () Bool)

(declare-fun res!689810 () Bool)

(assert (=> b!1539996 (=> (not res!689810) (not e!985778))))

(declare-fun totalInput!496 () BalanceConc!10950)

(assert (=> b!1539996 (= res!689810 (= (totalInput!2377 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1539997 () Bool)

(declare-fun res!689801 () Bool)

(assert (=> b!1539997 (=> (not res!689801) (not e!985778))))

(declare-datatypes ((tuple2!15544 0))(
  ( (tuple2!15545 (_1!8944 Context!1458) (_2!8944 C!8600)) )
))
(declare-datatypes ((tuple2!15546 0))(
  ( (tuple2!15547 (_1!8945 tuple2!15544) (_2!8945 (InoxSet Context!1458))) )
))
(declare-datatypes ((List!16510 0))(
  ( (Nil!16442) (Cons!16442 (h!21843 tuple2!15546) (t!140716 List!16510)) )
))
(declare-datatypes ((array!5638 0))(
  ( (array!5639 (arr!2510 (Array (_ BitVec 32) List!16510)) (size!13281 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3246 0))(
  ( (LongMapFixedSize!3247 (defaultEntry!1983 Int) (mask!4817 (_ BitVec 32)) (extraKeys!1870 (_ BitVec 32)) (zeroValue!1880 List!16510) (minValue!1880 List!16510) (_size!3327 (_ BitVec 32)) (_keys!1917 array!5634) (_values!1902 array!5638) (_vacant!1684 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6377 0))(
  ( (Cell!6378 (v!23252 LongMapFixedSize!3246)) )
))
(declare-datatypes ((MutLongMap!1623 0))(
  ( (LongMap!1623 (underlying!3455 Cell!6377)) (MutLongMapExt!1622 (__x!10555 Int)) )
))
(declare-datatypes ((Cell!6379 0))(
  ( (Cell!6380 (v!23253 MutLongMap!1623)) )
))
(declare-datatypes ((Hashable!1567 0))(
  ( (HashableExt!1566 (__x!10556 Int)) )
))
(declare-datatypes ((MutableMap!1567 0))(
  ( (MutableMapExt!1566 (__x!10557 Int)) (HashMap!1567 (underlying!3456 Cell!6379) (hashF!3486 Hashable!1567) (_size!3328 (_ BitVec 32)) (defaultValue!1727 Int)) )
))
(declare-datatypes ((CacheUp!942 0))(
  ( (CacheUp!943 (cache!1948 MutableMap!1567)) )
))
(declare-fun cacheUp!695 () CacheUp!942)

(declare-fun valid!1313 (CacheUp!942) Bool)

(assert (=> b!1539997 (= res!689801 (valid!1313 cacheUp!695))))

(declare-fun tp!445967 () Bool)

(declare-fun e!985779 () Bool)

(declare-fun e!985784 () Bool)

(declare-fun tp!445972 () Bool)

(declare-fun array_inv!1803 (array!5634) Bool)

(declare-fun array_inv!1804 (array!5636) Bool)

(assert (=> b!1539998 (= e!985779 (and tp!445975 tp!445972 tp!445967 (array_inv!1803 (_keys!1916 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))) (array_inv!1804 (_values!1901 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))) e!985784))))

(declare-fun b!1539999 () Bool)

(declare-fun e!985777 () Bool)

(declare-fun e!985775 () Bool)

(declare-fun lt!534120 () MutLongMap!1623)

(get-info :version)

(assert (=> b!1539999 (= e!985777 (and e!985775 ((_ is LongMap!1623) lt!534120)))))

(assert (=> b!1539999 (= lt!534120 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))

(declare-fun b!1540000 () Bool)

(declare-datatypes ((List!16511 0))(
  ( (Nil!16443) (Cons!16443 (h!21844 Rule!5574) (t!140717 List!16511)) )
))
(declare-fun rulesArg!359 () List!16511)

(declare-fun tp!445979 () Bool)

(declare-fun e!985764 () Bool)

(declare-fun e!985763 () Bool)

(declare-fun inv!21691 (String!19165) Bool)

(declare-fun inv!21695 (TokenValueInjection!5614) Bool)

(assert (=> b!1540000 (= e!985763 (and tp!445979 (inv!21691 (tag!3151 (h!21844 rulesArg!359))) (inv!21695 (transformation!2887 (h!21844 rulesArg!359))) e!985764))))

(declare-fun b!1540001 () Bool)

(declare-fun res!689803 () Bool)

(declare-fun e!985765 () Bool)

(assert (=> b!1540001 (=> res!689803 e!985765)))

(declare-fun lt!534131 () Bool)

(assert (=> b!1540001 (= res!689803 lt!534131)))

(declare-fun b!1540002 () Bool)

(declare-fun tp!445959 () Bool)

(declare-fun inv!21696 (Conc!5504) Bool)

(assert (=> b!1540002 (= e!985767 (and (inv!21696 (c!251688 (totalInput!2377 cacheFurthestNullable!81))) tp!445959))))

(declare-fun b!1540003 () Bool)

(declare-fun e!985781 () Bool)

(assert (=> b!1540003 (= e!985775 e!985781)))

(assert (=> b!1540004 (= e!985764 (and tp!445973 tp!445969))))

(declare-fun e!985783 () Bool)

(assert (=> b!1540005 (= e!985771 (and e!985783 tp!445966))))

(declare-fun b!1540006 () Bool)

(declare-fun res!689806 () Bool)

(declare-fun e!985770 () Bool)

(assert (=> b!1540006 (=> (not res!689806) (not e!985770))))

(declare-fun isEmpty!10022 (List!16511) Bool)

(assert (=> b!1540006 (= res!689806 (not (isEmpty!10022 rulesArg!359)))))

(declare-fun b!1540007 () Bool)

(declare-fun res!689812 () Bool)

(assert (=> b!1540007 (=> (not res!689812) (not e!985770))))

(declare-datatypes ((LexerInterface!2537 0))(
  ( (LexerInterfaceExt!2534 (__x!10558 Int)) (Lexer!2535) )
))
(declare-fun thiss!15733 () LexerInterface!2537)

(declare-fun rulesValidInductive!887 (LexerInterface!2537 List!16511) Bool)

(assert (=> b!1540007 (= res!689812 (rulesValidInductive!887 thiss!15733 rulesArg!359))))

(declare-fun mapIsEmpty!7626 () Bool)

(assert (=> mapIsEmpty!7626 mapRes!7628))

(declare-fun b!1540008 () Bool)

(declare-datatypes ((Option!2977 0))(
  ( (None!2976) (Some!2976 (v!23254 tuple2!15540)) )
))
(declare-datatypes ((tuple3!1556 0))(
  ( (tuple3!1557 (_1!8946 Regex!4211) (_2!8946 Context!1458) (_3!1172 C!8600)) )
))
(declare-datatypes ((tuple2!15548 0))(
  ( (tuple2!15549 (_1!8947 tuple3!1556) (_2!8947 (InoxSet Context!1458))) )
))
(declare-datatypes ((List!16512 0))(
  ( (Nil!16444) (Cons!16444 (h!21845 tuple2!15548) (t!140718 List!16512)) )
))
(declare-datatypes ((array!5640 0))(
  ( (array!5641 (arr!2511 (Array (_ BitVec 32) List!16512)) (size!13282 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3248 0))(
  ( (LongMapFixedSize!3249 (defaultEntry!1984 Int) (mask!4818 (_ BitVec 32)) (extraKeys!1871 (_ BitVec 32)) (zeroValue!1881 List!16512) (minValue!1881 List!16512) (_size!3329 (_ BitVec 32)) (_keys!1918 array!5634) (_values!1903 array!5640) (_vacant!1685 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6381 0))(
  ( (Cell!6382 (v!23255 LongMapFixedSize!3248)) )
))
(declare-datatypes ((MutLongMap!1624 0))(
  ( (LongMap!1624 (underlying!3457 Cell!6381)) (MutLongMapExt!1623 (__x!10559 Int)) )
))
(declare-datatypes ((Cell!6383 0))(
  ( (Cell!6384 (v!23256 MutLongMap!1624)) )
))
(declare-datatypes ((Hashable!1568 0))(
  ( (HashableExt!1567 (__x!10560 Int)) )
))
(declare-datatypes ((MutableMap!1568 0))(
  ( (MutableMapExt!1567 (__x!10561 Int)) (HashMap!1568 (underlying!3458 Cell!6383) (hashF!3487 Hashable!1568) (_size!3330 (_ BitVec 32)) (defaultValue!1728 Int)) )
))
(declare-datatypes ((CacheDown!948 0))(
  ( (CacheDown!949 (cache!1949 MutableMap!1568)) )
))
(declare-datatypes ((tuple4!788 0))(
  ( (tuple4!789 (_1!8948 Option!2977) (_2!8948 CacheUp!942) (_3!1173 CacheFurthestNullable!370) (_4!394 CacheDown!948)) )
))
(declare-fun e!985762 () tuple4!788)

(declare-datatypes ((tuple4!790 0))(
  ( (tuple4!791 (_1!8949 Option!2977) (_2!8949 CacheUp!942) (_3!1174 CacheDown!948) (_4!395 CacheFurthestNullable!370)) )
))
(declare-fun lt!534132 () tuple4!790)

(assert (=> b!1540008 (= e!985762 (tuple4!789 (_1!8949 lt!534132) (_2!8949 lt!534132) (_4!395 lt!534132) (_3!1174 lt!534132)))))

(declare-fun call!101588 () tuple4!790)

(assert (=> b!1540008 (= lt!534132 call!101588)))

(declare-fun b!1540009 () Bool)

(declare-fun e!985776 () Bool)

(declare-fun lt!534124 () MutLongMap!1622)

(assert (=> b!1540009 (= e!985783 (and e!985776 ((_ is LongMap!1622) lt!534124)))))

(assert (=> b!1540009 (= lt!534124 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))

(declare-fun mapIsEmpty!7627 () Bool)

(declare-fun mapRes!7627 () Bool)

(assert (=> mapIsEmpty!7627 mapRes!7627))

(declare-fun b!1540010 () Bool)

(declare-fun e!985758 () Bool)

(declare-fun tp!445964 () Bool)

(assert (=> b!1540010 (= e!985758 (and tp!445964 mapRes!7627))))

(declare-fun condMapEmpty!7626 () Bool)

(declare-fun mapDefault!7627 () List!16510)

(assert (=> b!1540010 (= condMapEmpty!7626 (= (arr!2510 (_values!1902 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16510)) mapDefault!7627)))))

(declare-fun b!1540011 () Bool)

(declare-fun e!985759 () Bool)

(declare-fun e!985749 () Bool)

(assert (=> b!1540011 (= e!985759 e!985749)))

(declare-fun tp!445953 () Bool)

(declare-fun e!985751 () Bool)

(declare-fun tp!445962 () Bool)

(declare-fun array_inv!1805 (array!5638) Bool)

(assert (=> b!1540012 (= e!985751 (and tp!445961 tp!445962 tp!445953 (array_inv!1803 (_keys!1917 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))) (array_inv!1805 (_values!1902 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))) e!985758))))

(declare-fun b!1540013 () Bool)

(declare-fun res!689804 () Bool)

(assert (=> b!1540013 (=> (not res!689804) (not e!985778))))

(declare-fun cacheDown!708 () CacheDown!948)

(declare-fun valid!1314 (CacheDown!948) Bool)

(assert (=> b!1540013 (= res!689804 (valid!1314 cacheDown!708))))

(declare-fun b!1540014 () Bool)

(declare-fun e!985773 () Bool)

(declare-fun e!985772 () Bool)

(assert (=> b!1540014 (= e!985773 e!985772)))

(declare-fun b!1540015 () Bool)

(assert (=> b!1540015 (= e!985781 e!985751)))

(declare-fun b!1540016 () Bool)

(declare-fun e!985774 () Bool)

(assert (=> b!1540016 (= e!985774 e!985779)))

(declare-fun mapIsEmpty!7628 () Bool)

(declare-fun mapRes!7626 () Bool)

(assert (=> mapIsEmpty!7628 mapRes!7626))

(declare-fun b!1540017 () Bool)

(declare-fun e!985761 () Bool)

(declare-fun tp!445970 () Bool)

(assert (=> b!1540017 (= e!985761 (and e!985763 tp!445970))))

(declare-fun res!689807 () Bool)

(assert (=> start!143046 (=> (not res!689807) (not e!985770))))

(assert (=> start!143046 (= res!689807 ((_ is Lexer!2535) thiss!15733))))

(assert (=> start!143046 e!985770))

(declare-fun e!985785 () Bool)

(declare-fun inv!21697 (CacheUp!942) Bool)

(assert (=> start!143046 (and (inv!21697 cacheUp!695) e!985785)))

(declare-fun input!1460 () BalanceConc!10950)

(declare-fun e!985780 () Bool)

(assert (=> start!143046 (and (inv!21694 input!1460) e!985780)))

(declare-fun inv!21698 (CacheDown!948) Bool)

(assert (=> start!143046 (and (inv!21698 cacheDown!708) e!985773)))

(assert (=> start!143046 true))

(declare-fun e!985754 () Bool)

(assert (=> start!143046 (and (inv!21694 totalInput!496) e!985754)))

(assert (=> start!143046 e!985761))

(declare-fun inv!21699 (CacheFurthestNullable!370) Bool)

(assert (=> start!143046 (and (inv!21699 cacheFurthestNullable!81) e!985768)))

(declare-fun e!985766 () Bool)

(declare-fun e!985782 () Bool)

(declare-fun tp!445960 () Bool)

(declare-fun tp!445965 () Bool)

(declare-fun array_inv!1806 (array!5640) Bool)

(assert (=> b!1540018 (= e!985782 (and tp!445963 tp!445960 tp!445965 (array_inv!1803 (_keys!1918 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))) (array_inv!1806 (_values!1903 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))) e!985766))))

(declare-fun mapNonEmpty!7627 () Bool)

(declare-fun tp!445957 () Bool)

(declare-fun tp!445974 () Bool)

(assert (=> mapNonEmpty!7627 (= mapRes!7626 (and tp!445957 tp!445974))))

(declare-fun mapValue!7628 () List!16512)

(declare-fun mapKey!7627 () (_ BitVec 32))

(declare-fun mapRest!7628 () (Array (_ BitVec 32) List!16512))

(assert (=> mapNonEmpty!7627 (= (arr!2511 (_values!1903 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))) (store mapRest!7628 mapKey!7627 mapValue!7628))))

(declare-fun b!1540019 () Bool)

(declare-fun tp!445968 () Bool)

(assert (=> b!1540019 (= e!985766 (and tp!445968 mapRes!7626))))

(declare-fun condMapEmpty!7628 () Bool)

(declare-fun mapDefault!7628 () List!16512)

(assert (=> b!1540019 (= condMapEmpty!7628 (= (arr!2511 (_values!1903 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16512)) mapDefault!7628)))))

(declare-fun b!1540020 () Bool)

(assert (=> b!1540020 (= e!985770 e!985778)))

(declare-fun res!689805 () Bool)

(assert (=> b!1540020 (=> (not res!689805) (not e!985778))))

(declare-fun lt!534121 () List!16508)

(declare-fun isSuffix!333 (List!16508 List!16508) Bool)

(assert (=> b!1540020 (= res!689805 (isSuffix!333 lt!534121 (list!6429 totalInput!496)))))

(assert (=> b!1540020 (= lt!534121 (list!6429 input!1460))))

(declare-fun b!1540021 () Bool)

(declare-fun e!985760 () Bool)

(assert (=> b!1540021 (= e!985760 e!985756)))

(declare-fun res!689808 () Bool)

(assert (=> b!1540021 (=> res!689808 e!985756)))

(assert (=> b!1540021 (= res!689808 (not (= (_1!8942 lt!534118) (_1!8943 lt!534129))))))

(declare-datatypes ((Option!2978 0))(
  ( (None!2977) (Some!2977 (v!23257 tuple2!15542)) )
))
(declare-fun lt!534127 () Option!2978)

(declare-fun get!4792 (Option!2978) tuple2!15542)

(assert (=> b!1540021 (= lt!534129 (get!4792 lt!534127))))

(declare-fun lt!534119 () tuple4!788)

(declare-fun get!4793 (Option!2977) tuple2!15540)

(assert (=> b!1540021 (= lt!534118 (get!4793 (_1!8948 lt!534119)))))

(declare-fun b!1540022 () Bool)

(assert (=> b!1540022 (= e!985776 e!985774)))

(declare-fun e!985755 () Bool)

(assert (=> b!1540023 (= e!985772 (and e!985755 tp!445954))))

(declare-fun bm!101583 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!33 (LexerInterface!2537 Rule!5574 BalanceConc!10950 BalanceConc!10950 CacheUp!942 CacheDown!948 CacheFurthestNullable!370) tuple4!790)

(assert (=> bm!101583 (= call!101588 (maxPrefixOneRuleZipperSequenceV3Mem!33 thiss!15733 (h!21844 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1540024 () Bool)

(declare-fun lt!534130 () MutLongMap!1624)

(assert (=> b!1540024 (= e!985755 (and e!985759 ((_ is LongMap!1624) lt!534130)))))

(assert (=> b!1540024 (= lt!534130 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))

(declare-fun b!1540025 () Bool)

(declare-fun e!985753 () Bool)

(assert (=> b!1540025 (= e!985785 e!985753)))

(declare-fun b!1540026 () Bool)

(declare-fun tp!445958 () Bool)

(assert (=> b!1540026 (= e!985780 (and (inv!21696 (c!251688 input!1460)) tp!445958))))

(declare-fun b!1540027 () Bool)

(declare-fun tp!445977 () Bool)

(assert (=> b!1540027 (= e!985784 (and tp!445977 mapRes!7628))))

(declare-fun condMapEmpty!7627 () Bool)

(declare-fun mapDefault!7626 () List!16507)

(assert (=> b!1540027 (= condMapEmpty!7627 (= (arr!2509 (_values!1901 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16507)) mapDefault!7626)))))

(declare-fun b!1540028 () Bool)

(declare-fun isDefined!2387 (Option!2978) Bool)

(declare-fun maxPrefix!1217 (LexerInterface!2537 List!16511 List!16508) Option!2978)

(assert (=> b!1540028 (= e!985765 (isDefined!2387 (maxPrefix!1217 thiss!15733 rulesArg!359 lt!534121)))))

(declare-fun b!1540029 () Bool)

(assert (=> b!1540029 (= e!985749 e!985782)))

(declare-fun b!1540030 () Bool)

(declare-fun e!985757 () Bool)

(assert (=> b!1540030 (= e!985778 (not e!985757))))

(declare-fun res!689811 () Bool)

(assert (=> b!1540030 (=> res!689811 e!985757)))

(declare-fun lt!534125 () Bool)

(assert (=> b!1540030 (= res!689811 (not (= lt!534125 (isDefined!2387 lt!534127))))))

(declare-fun isDefined!2388 (Option!2977) Bool)

(assert (=> b!1540030 (= lt!534125 (isDefined!2388 (_1!8948 lt!534119)))))

(declare-fun maxPrefixZipper!273 (LexerInterface!2537 List!16511 List!16508) Option!2978)

(assert (=> b!1540030 (= lt!534127 (maxPrefixZipper!273 thiss!15733 rulesArg!359 lt!534121))))

(assert (=> b!1540030 (= lt!534119 e!985762)))

(declare-fun c!251686 () Bool)

(assert (=> b!1540030 (= c!251686 (and ((_ is Cons!16443) rulesArg!359) ((_ is Nil!16443) (t!140717 rulesArg!359))))))

(declare-fun isPrefix!1247 (List!16508 List!16508) Bool)

(assert (=> b!1540030 (isPrefix!1247 lt!534121 lt!534121)))

(declare-datatypes ((Unit!25882 0))(
  ( (Unit!25883) )
))
(declare-fun lt!534126 () Unit!25882)

(declare-fun lemmaIsPrefixRefl!877 (List!16508 List!16508) Unit!25882)

(assert (=> b!1540030 (= lt!534126 (lemmaIsPrefixRefl!877 lt!534121 lt!534121))))

(declare-fun b!1540031 () Bool)

(declare-fun tp!445978 () Bool)

(assert (=> b!1540031 (= e!985754 (and (inv!21696 (c!251688 totalInput!496)) tp!445978))))

(declare-fun b!1540032 () Bool)

(declare-datatypes ((tuple2!15550 0))(
  ( (tuple2!15551 (_1!8950 Option!2977) (_2!8950 Option!2977)) )
))
(declare-fun lt!534122 () tuple2!15550)

(declare-fun lt!534128 () tuple4!790)

(assert (=> b!1540032 (= e!985762 (tuple4!789 (ite (and ((_ is None!2976) (_1!8950 lt!534122)) ((_ is None!2976) (_2!8950 lt!534122))) None!2976 (ite ((_ is None!2976) (_2!8950 lt!534122)) (_1!8950 lt!534122) (ite ((_ is None!2976) (_1!8950 lt!534122)) (_2!8950 lt!534122) (ite (>= (size!13280 (_1!8942 (v!23254 (_1!8950 lt!534122)))) (size!13280 (_1!8942 (v!23254 (_2!8950 lt!534122))))) (_1!8950 lt!534122) (_2!8950 lt!534122))))) (_2!8949 lt!534128) (_4!395 lt!534128) (_3!1174 lt!534128)))))

(declare-fun lt!534123 () tuple4!790)

(assert (=> b!1540032 (= lt!534123 call!101588)))

(declare-fun maxPrefixZipperSequenceV3Mem!43 (LexerInterface!2537 List!16511 BalanceConc!10950 BalanceConc!10950 CacheUp!942 CacheDown!948 CacheFurthestNullable!370) tuple4!790)

(assert (=> b!1540032 (= lt!534128 (maxPrefixZipperSequenceV3Mem!43 thiss!15733 (t!140717 rulesArg!359) input!1460 totalInput!496 (_2!8949 lt!534123) (_3!1174 lt!534123) (_4!395 lt!534123)))))

(assert (=> b!1540032 (= lt!534122 (tuple2!15551 (_1!8949 lt!534123) (_1!8949 lt!534128)))))

(declare-fun mapNonEmpty!7628 () Bool)

(declare-fun tp!445956 () Bool)

(declare-fun tp!445955 () Bool)

(assert (=> mapNonEmpty!7628 (= mapRes!7627 (and tp!445956 tp!445955))))

(declare-fun mapRest!7627 () (Array (_ BitVec 32) List!16510))

(declare-fun mapKey!7628 () (_ BitVec 32))

(declare-fun mapValue!7627 () List!16510)

(assert (=> mapNonEmpty!7628 (= (arr!2510 (_values!1902 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))) (store mapRest!7627 mapKey!7628 mapValue!7627))))

(declare-fun b!1540033 () Bool)

(assert (=> b!1540033 (= e!985757 e!985765)))

(declare-fun res!689809 () Bool)

(assert (=> b!1540033 (=> res!689809 e!985765)))

(assert (=> b!1540033 (= res!689809 e!985760)))

(declare-fun res!689800 () Bool)

(assert (=> b!1540033 (=> (not res!689800) (not e!985760))))

(assert (=> b!1540033 (= res!689800 (not lt!534131))))

(assert (=> b!1540033 (= lt!534131 (not lt!534125))))

(assert (=> b!1540034 (= e!985753 (and e!985777 tp!445976))))

(assert (= (and start!143046 res!689807) b!1540007))

(assert (= (and b!1540007 res!689812) b!1540006))

(assert (= (and b!1540006 res!689806) b!1540020))

(assert (= (and b!1540020 res!689805) b!1539997))

(assert (= (and b!1539997 res!689801) b!1540013))

(assert (= (and b!1540013 res!689804) b!1539995))

(assert (= (and b!1539995 res!689802) b!1539996))

(assert (= (and b!1539996 res!689810) b!1540030))

(assert (= (and b!1540030 c!251686) b!1540008))

(assert (= (and b!1540030 (not c!251686)) b!1540032))

(assert (= (or b!1540008 b!1540032) bm!101583))

(assert (= (and b!1540030 (not res!689811)) b!1540033))

(assert (= (and b!1540033 res!689800) b!1540021))

(assert (= (and b!1540021 (not res!689808)) b!1539994))

(assert (= (and b!1540033 (not res!689809)) b!1540001))

(assert (= (and b!1540001 (not res!689803)) b!1540028))

(assert (= (and b!1540010 condMapEmpty!7626) mapIsEmpty!7627))

(assert (= (and b!1540010 (not condMapEmpty!7626)) mapNonEmpty!7628))

(assert (= b!1540012 b!1540010))

(assert (= b!1540015 b!1540012))

(assert (= b!1540003 b!1540015))

(assert (= (and b!1539999 ((_ is LongMap!1623) (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))) b!1540003))

(assert (= b!1540034 b!1539999))

(assert (= (and b!1540025 ((_ is HashMap!1567) (cache!1948 cacheUp!695))) b!1540034))

(assert (= start!143046 b!1540025))

(assert (= start!143046 b!1540026))

(assert (= (and b!1540019 condMapEmpty!7628) mapIsEmpty!7628))

(assert (= (and b!1540019 (not condMapEmpty!7628)) mapNonEmpty!7627))

(assert (= b!1540018 b!1540019))

(assert (= b!1540029 b!1540018))

(assert (= b!1540011 b!1540029))

(assert (= (and b!1540024 ((_ is LongMap!1624) (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))) b!1540011))

(assert (= b!1540023 b!1540024))

(assert (= (and b!1540014 ((_ is HashMap!1568) (cache!1949 cacheDown!708))) b!1540023))

(assert (= start!143046 b!1540014))

(assert (= start!143046 b!1540031))

(assert (= b!1540000 b!1540004))

(assert (= b!1540017 b!1540000))

(assert (= (and start!143046 ((_ is Cons!16443) rulesArg!359)) b!1540017))

(assert (= (and b!1540027 condMapEmpty!7627) mapIsEmpty!7626))

(assert (= (and b!1540027 (not condMapEmpty!7627)) mapNonEmpty!7626))

(assert (= b!1539998 b!1540027))

(assert (= b!1540016 b!1539998))

(assert (= b!1540022 b!1540016))

(assert (= (and b!1540009 ((_ is LongMap!1622) (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))) b!1540022))

(assert (= b!1540005 b!1540009))

(assert (= (and b!1539993 ((_ is HashMap!1566) (cache!1947 cacheFurthestNullable!81))) b!1540005))

(assert (= b!1539993 b!1540002))

(assert (= start!143046 b!1539993))

(declare-fun m!1814038 () Bool)

(assert (=> b!1540028 m!1814038))

(assert (=> b!1540028 m!1814038))

(declare-fun m!1814040 () Bool)

(assert (=> b!1540028 m!1814040))

(declare-fun m!1814042 () Bool)

(assert (=> b!1539994 m!1814042))

(declare-fun m!1814044 () Bool)

(assert (=> mapNonEmpty!7626 m!1814044))

(declare-fun m!1814046 () Bool)

(assert (=> b!1540030 m!1814046))

(declare-fun m!1814048 () Bool)

(assert (=> b!1540030 m!1814048))

(declare-fun m!1814050 () Bool)

(assert (=> b!1540030 m!1814050))

(declare-fun m!1814052 () Bool)

(assert (=> b!1540030 m!1814052))

(declare-fun m!1814054 () Bool)

(assert (=> b!1540030 m!1814054))

(declare-fun m!1814056 () Bool)

(assert (=> b!1540018 m!1814056))

(declare-fun m!1814058 () Bool)

(assert (=> b!1540018 m!1814058))

(declare-fun m!1814060 () Bool)

(assert (=> b!1540007 m!1814060))

(declare-fun m!1814062 () Bool)

(assert (=> b!1540021 m!1814062))

(declare-fun m!1814064 () Bool)

(assert (=> b!1540021 m!1814064))

(declare-fun m!1814066 () Bool)

(assert (=> mapNonEmpty!7628 m!1814066))

(declare-fun m!1814068 () Bool)

(assert (=> mapNonEmpty!7627 m!1814068))

(declare-fun m!1814070 () Bool)

(assert (=> b!1540000 m!1814070))

(declare-fun m!1814072 () Bool)

(assert (=> b!1540000 m!1814072))

(declare-fun m!1814074 () Bool)

(assert (=> b!1540020 m!1814074))

(assert (=> b!1540020 m!1814074))

(declare-fun m!1814076 () Bool)

(assert (=> b!1540020 m!1814076))

(declare-fun m!1814078 () Bool)

(assert (=> b!1540020 m!1814078))

(declare-fun m!1814080 () Bool)

(assert (=> b!1540032 m!1814080))

(declare-fun m!1814082 () Bool)

(assert (=> b!1540026 m!1814082))

(declare-fun m!1814084 () Bool)

(assert (=> b!1540002 m!1814084))

(declare-fun m!1814086 () Bool)

(assert (=> b!1539997 m!1814086))

(declare-fun m!1814088 () Bool)

(assert (=> b!1540013 m!1814088))

(declare-fun m!1814090 () Bool)

(assert (=> b!1539998 m!1814090))

(declare-fun m!1814092 () Bool)

(assert (=> b!1539998 m!1814092))

(declare-fun m!1814094 () Bool)

(assert (=> b!1539993 m!1814094))

(declare-fun m!1814096 () Bool)

(assert (=> b!1540012 m!1814096))

(declare-fun m!1814098 () Bool)

(assert (=> b!1540012 m!1814098))

(declare-fun m!1814100 () Bool)

(assert (=> start!143046 m!1814100))

(declare-fun m!1814102 () Bool)

(assert (=> start!143046 m!1814102))

(declare-fun m!1814104 () Bool)

(assert (=> start!143046 m!1814104))

(declare-fun m!1814106 () Bool)

(assert (=> start!143046 m!1814106))

(declare-fun m!1814108 () Bool)

(assert (=> start!143046 m!1814108))

(declare-fun m!1814110 () Bool)

(assert (=> bm!101583 m!1814110))

(declare-fun m!1814112 () Bool)

(assert (=> b!1540006 m!1814112))

(declare-fun m!1814114 () Bool)

(assert (=> b!1540031 m!1814114))

(declare-fun m!1814116 () Bool)

(assert (=> b!1539995 m!1814116))

(check-sat (not b!1540019) b_and!107127 (not b!1540027) (not bm!101583) (not b!1540012) (not b!1540021) (not b_next!40957) b_and!107129 (not b!1540020) (not start!143046) (not b!1540010) (not b_next!40963) b_and!107135 (not mapNonEmpty!7627) (not b!1540007) (not b!1539994) (not b!1540006) b_and!107133 (not b!1539997) (not mapNonEmpty!7628) (not b_next!40951) (not mapNonEmpty!7626) (not b!1540002) (not b!1539993) (not b!1540031) (not b!1540017) (not b!1539998) (not b_next!40959) b_and!107139 b_and!107137 (not b_next!40953) b_and!107131 (not b!1539995) b_and!107125 (not b_next!40965) (not b_next!40955) (not b!1540032) (not b!1540028) (not b!1540000) (not b!1540030) (not b!1540013) (not b_next!40961) (not b!1540018) (not b!1540026))
(check-sat (not b_next!40963) b_and!107135 b_and!107133 (not b_next!40951) b_and!107127 b_and!107125 (not b_next!40957) (not b_next!40961) b_and!107129 (not b_next!40959) b_and!107139 b_and!107137 (not b_next!40953) b_and!107131 (not b_next!40965) (not b_next!40955))
(get-model)

(declare-fun d!458491 () Bool)

(declare-fun e!985788 () Bool)

(assert (=> d!458491 e!985788))

(declare-fun res!689823 () Bool)

(assert (=> d!458491 (=> res!689823 e!985788)))

(declare-fun lt!534135 () Bool)

(assert (=> d!458491 (= res!689823 (not lt!534135))))

(declare-fun drop!773 (List!16508 Int) List!16508)

(declare-fun size!13283 (List!16508) Int)

(assert (=> d!458491 (= lt!534135 (= lt!534121 (drop!773 (list!6429 totalInput!496) (- (size!13283 (list!6429 totalInput!496)) (size!13283 lt!534121)))))))

(assert (=> d!458491 (= (isSuffix!333 lt!534121 (list!6429 totalInput!496)) lt!534135)))

(declare-fun b!1540037 () Bool)

(assert (=> b!1540037 (= e!985788 (>= (size!13283 (list!6429 totalInput!496)) (size!13283 lt!534121)))))

(assert (= (and d!458491 (not res!689823)) b!1540037))

(assert (=> d!458491 m!1814074))

(declare-fun m!1814118 () Bool)

(assert (=> d!458491 m!1814118))

(declare-fun m!1814120 () Bool)

(assert (=> d!458491 m!1814120))

(assert (=> d!458491 m!1814074))

(declare-fun m!1814122 () Bool)

(assert (=> d!458491 m!1814122))

(assert (=> b!1540037 m!1814074))

(assert (=> b!1540037 m!1814118))

(assert (=> b!1540037 m!1814120))

(assert (=> b!1540020 d!458491))

(declare-fun d!458493 () Bool)

(declare-fun list!6430 (Conc!5504) List!16508)

(assert (=> d!458493 (= (list!6429 totalInput!496) (list!6430 (c!251688 totalInput!496)))))

(declare-fun bs!382804 () Bool)

(assert (= bs!382804 d!458493))

(declare-fun m!1814124 () Bool)

(assert (=> bs!382804 m!1814124))

(assert (=> b!1540020 d!458493))

(declare-fun d!458495 () Bool)

(assert (=> d!458495 (= (list!6429 input!1460) (list!6430 (c!251688 input!1460)))))

(declare-fun bs!382805 () Bool)

(assert (= bs!382805 d!458495))

(declare-fun m!1814126 () Bool)

(assert (=> bs!382805 m!1814126))

(assert (=> b!1540020 d!458495))

(declare-fun d!458497 () Bool)

(declare-fun isBalanced!1631 (Conc!5504) Bool)

(assert (=> d!458497 (= (inv!21694 (totalInput!2377 cacheFurthestNullable!81)) (isBalanced!1631 (c!251688 (totalInput!2377 cacheFurthestNullable!81))))))

(declare-fun bs!382806 () Bool)

(assert (= bs!382806 d!458497))

(declare-fun m!1814128 () Bool)

(assert (=> bs!382806 m!1814128))

(assert (=> b!1539993 d!458497))

(declare-fun d!458499 () Bool)

(assert (=> d!458499 (isPrefix!1247 lt!534121 lt!534121)))

(declare-fun lt!534138 () Unit!25882)

(declare-fun choose!9226 (List!16508 List!16508) Unit!25882)

(assert (=> d!458499 (= lt!534138 (choose!9226 lt!534121 lt!534121))))

(assert (=> d!458499 (= (lemmaIsPrefixRefl!877 lt!534121 lt!534121) lt!534138)))

(declare-fun bs!382807 () Bool)

(assert (= bs!382807 d!458499))

(assert (=> bs!382807 m!1814052))

(declare-fun m!1814130 () Bool)

(assert (=> bs!382807 m!1814130))

(assert (=> b!1540030 d!458499))

(declare-fun b!1540049 () Bool)

(declare-fun e!985795 () Bool)

(assert (=> b!1540049 (= e!985795 (>= (size!13283 lt!534121) (size!13283 lt!534121)))))

(declare-fun b!1540048 () Bool)

(declare-fun e!985796 () Bool)

(declare-fun tail!2198 (List!16508) List!16508)

(assert (=> b!1540048 (= e!985796 (isPrefix!1247 (tail!2198 lt!534121) (tail!2198 lt!534121)))))

(declare-fun b!1540047 () Bool)

(declare-fun res!689833 () Bool)

(assert (=> b!1540047 (=> (not res!689833) (not e!985796))))

(declare-fun head!3103 (List!16508) C!8600)

(assert (=> b!1540047 (= res!689833 (= (head!3103 lt!534121) (head!3103 lt!534121)))))

(declare-fun b!1540046 () Bool)

(declare-fun e!985797 () Bool)

(assert (=> b!1540046 (= e!985797 e!985796)))

(declare-fun res!689832 () Bool)

(assert (=> b!1540046 (=> (not res!689832) (not e!985796))))

(assert (=> b!1540046 (= res!689832 (not ((_ is Nil!16440) lt!534121)))))

(declare-fun d!458501 () Bool)

(assert (=> d!458501 e!985795))

(declare-fun res!689834 () Bool)

(assert (=> d!458501 (=> res!689834 e!985795)))

(declare-fun lt!534141 () Bool)

(assert (=> d!458501 (= res!689834 (not lt!534141))))

(assert (=> d!458501 (= lt!534141 e!985797)))

(declare-fun res!689835 () Bool)

(assert (=> d!458501 (=> res!689835 e!985797)))

(assert (=> d!458501 (= res!689835 ((_ is Nil!16440) lt!534121))))

(assert (=> d!458501 (= (isPrefix!1247 lt!534121 lt!534121) lt!534141)))

(assert (= (and d!458501 (not res!689835)) b!1540046))

(assert (= (and b!1540046 res!689832) b!1540047))

(assert (= (and b!1540047 res!689833) b!1540048))

(assert (= (and d!458501 (not res!689834)) b!1540049))

(assert (=> b!1540049 m!1814120))

(assert (=> b!1540049 m!1814120))

(declare-fun m!1814132 () Bool)

(assert (=> b!1540048 m!1814132))

(assert (=> b!1540048 m!1814132))

(assert (=> b!1540048 m!1814132))

(assert (=> b!1540048 m!1814132))

(declare-fun m!1814134 () Bool)

(assert (=> b!1540048 m!1814134))

(declare-fun m!1814136 () Bool)

(assert (=> b!1540047 m!1814136))

(assert (=> b!1540047 m!1814136))

(assert (=> b!1540030 d!458501))

(declare-fun d!458503 () Bool)

(declare-fun isEmpty!10023 (Option!2977) Bool)

(assert (=> d!458503 (= (isDefined!2388 (_1!8948 lt!534119)) (not (isEmpty!10023 (_1!8948 lt!534119))))))

(declare-fun bs!382808 () Bool)

(assert (= bs!382808 d!458503))

(declare-fun m!1814138 () Bool)

(assert (=> bs!382808 m!1814138))

(assert (=> b!1540030 d!458503))

(declare-fun d!458505 () Bool)

(declare-fun isEmpty!10024 (Option!2978) Bool)

(assert (=> d!458505 (= (isDefined!2387 lt!534127) (not (isEmpty!10024 lt!534127)))))

(declare-fun bs!382809 () Bool)

(assert (= bs!382809 d!458505))

(declare-fun m!1814140 () Bool)

(assert (=> bs!382809 m!1814140))

(assert (=> b!1540030 d!458505))

(declare-fun lt!534156 () Option!2978)

(declare-fun d!458507 () Bool)

(assert (=> d!458507 (= lt!534156 (maxPrefix!1217 thiss!15733 rulesArg!359 lt!534121))))

(declare-fun e!985800 () Option!2978)

(assert (=> d!458507 (= lt!534156 e!985800)))

(declare-fun c!251691 () Bool)

(assert (=> d!458507 (= c!251691 (and ((_ is Cons!16443) rulesArg!359) ((_ is Nil!16443) (t!140717 rulesArg!359))))))

(declare-fun lt!534155 () Unit!25882)

(declare-fun lt!534153 () Unit!25882)

(assert (=> d!458507 (= lt!534155 lt!534153)))

(assert (=> d!458507 (isPrefix!1247 lt!534121 lt!534121)))

(assert (=> d!458507 (= lt!534153 (lemmaIsPrefixRefl!877 lt!534121 lt!534121))))

(assert (=> d!458507 (rulesValidInductive!887 thiss!15733 rulesArg!359)))

(assert (=> d!458507 (= (maxPrefixZipper!273 thiss!15733 rulesArg!359 lt!534121) lt!534156)))

(declare-fun call!101591 () Option!2978)

(declare-fun bm!101586 () Bool)

(declare-fun maxPrefixOneRuleZipper!102 (LexerInterface!2537 Rule!5574 List!16508) Option!2978)

(assert (=> bm!101586 (= call!101591 (maxPrefixOneRuleZipper!102 thiss!15733 (h!21844 rulesArg!359) lt!534121))))

(declare-fun b!1540054 () Bool)

(assert (=> b!1540054 (= e!985800 call!101591)))

(declare-fun b!1540055 () Bool)

(declare-fun lt!534154 () Option!2978)

(declare-fun lt!534152 () Option!2978)

(assert (=> b!1540055 (= e!985800 (ite (and ((_ is None!2977) lt!534154) ((_ is None!2977) lt!534152)) None!2977 (ite ((_ is None!2977) lt!534152) lt!534154 (ite ((_ is None!2977) lt!534154) lt!534152 (ite (>= (size!13280 (_1!8943 (v!23257 lt!534154))) (size!13280 (_1!8943 (v!23257 lt!534152)))) lt!534154 lt!534152)))))))

(assert (=> b!1540055 (= lt!534154 call!101591)))

(assert (=> b!1540055 (= lt!534152 (maxPrefixZipper!273 thiss!15733 (t!140717 rulesArg!359) lt!534121))))

(assert (= (and d!458507 c!251691) b!1540054))

(assert (= (and d!458507 (not c!251691)) b!1540055))

(assert (= (or b!1540054 b!1540055) bm!101586))

(assert (=> d!458507 m!1814038))

(assert (=> d!458507 m!1814052))

(assert (=> d!458507 m!1814046))

(assert (=> d!458507 m!1814060))

(declare-fun m!1814142 () Bool)

(assert (=> bm!101586 m!1814142))

(declare-fun m!1814144 () Bool)

(assert (=> b!1540055 m!1814144))

(assert (=> b!1540030 d!458507))

(declare-fun d!458509 () Bool)

(declare-fun c!251694 () Bool)

(assert (=> d!458509 (= c!251694 ((_ is Node!5504) (c!251688 (totalInput!2377 cacheFurthestNullable!81))))))

(declare-fun e!985805 () Bool)

(assert (=> d!458509 (= (inv!21696 (c!251688 (totalInput!2377 cacheFurthestNullable!81))) e!985805)))

(declare-fun b!1540062 () Bool)

(declare-fun inv!21700 (Conc!5504) Bool)

(assert (=> b!1540062 (= e!985805 (inv!21700 (c!251688 (totalInput!2377 cacheFurthestNullable!81))))))

(declare-fun b!1540063 () Bool)

(declare-fun e!985806 () Bool)

(assert (=> b!1540063 (= e!985805 e!985806)))

(declare-fun res!689838 () Bool)

(assert (=> b!1540063 (= res!689838 (not ((_ is Leaf!8155) (c!251688 (totalInput!2377 cacheFurthestNullable!81)))))))

(assert (=> b!1540063 (=> res!689838 e!985806)))

(declare-fun b!1540064 () Bool)

(declare-fun inv!21701 (Conc!5504) Bool)

(assert (=> b!1540064 (= e!985806 (inv!21701 (c!251688 (totalInput!2377 cacheFurthestNullable!81))))))

(assert (= (and d!458509 c!251694) b!1540062))

(assert (= (and d!458509 (not c!251694)) b!1540063))

(assert (= (and b!1540063 (not res!689838)) b!1540064))

(declare-fun m!1814146 () Bool)

(assert (=> b!1540062 m!1814146))

(declare-fun m!1814148 () Bool)

(assert (=> b!1540064 m!1814148))

(assert (=> b!1540002 d!458509))

(declare-fun d!458511 () Bool)

(declare-fun c!251695 () Bool)

(assert (=> d!458511 (= c!251695 ((_ is Node!5504) (c!251688 totalInput!496)))))

(declare-fun e!985807 () Bool)

(assert (=> d!458511 (= (inv!21696 (c!251688 totalInput!496)) e!985807)))

(declare-fun b!1540065 () Bool)

(assert (=> b!1540065 (= e!985807 (inv!21700 (c!251688 totalInput!496)))))

(declare-fun b!1540066 () Bool)

(declare-fun e!985808 () Bool)

(assert (=> b!1540066 (= e!985807 e!985808)))

(declare-fun res!689839 () Bool)

(assert (=> b!1540066 (= res!689839 (not ((_ is Leaf!8155) (c!251688 totalInput!496))))))

(assert (=> b!1540066 (=> res!689839 e!985808)))

(declare-fun b!1540067 () Bool)

(assert (=> b!1540067 (= e!985808 (inv!21701 (c!251688 totalInput!496)))))

(assert (= (and d!458511 c!251695) b!1540065))

(assert (= (and d!458511 (not c!251695)) b!1540066))

(assert (= (and b!1540066 (not res!689839)) b!1540067))

(declare-fun m!1814150 () Bool)

(assert (=> b!1540065 m!1814150))

(declare-fun m!1814152 () Bool)

(assert (=> b!1540067 m!1814152))

(assert (=> b!1540031 d!458511))

(declare-fun d!458513 () Bool)

(declare-fun validCacheMapDown!149 (MutableMap!1568) Bool)

(assert (=> d!458513 (= (valid!1314 cacheDown!708) (validCacheMapDown!149 (cache!1949 cacheDown!708)))))

(declare-fun bs!382810 () Bool)

(assert (= bs!382810 d!458513))

(declare-fun m!1814154 () Bool)

(assert (=> bs!382810 m!1814154))

(assert (=> b!1540013 d!458513))

(declare-fun d!458515 () Bool)

(assert (=> d!458515 (= (array_inv!1803 (_keys!1917 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))) (bvsge (size!13278 (_keys!1917 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540012 d!458515))

(declare-fun d!458517 () Bool)

(assert (=> d!458517 (= (array_inv!1805 (_values!1902 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))) (bvsge (size!13281 (_values!1902 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540012 d!458517))

(declare-fun d!458519 () Bool)

(assert (=> d!458519 (= (get!4792 lt!534127) (v!23257 lt!534127))))

(assert (=> b!1540021 d!458519))

(declare-fun d!458521 () Bool)

(assert (=> d!458521 (= (get!4793 (_1!8948 lt!534119)) (v!23254 (_1!8948 lt!534119)))))

(assert (=> b!1540021 d!458521))

(declare-fun d!458523 () Bool)

(assert (=> d!458523 (= (list!6429 (_2!8942 lt!534118)) (list!6430 (c!251688 (_2!8942 lt!534118))))))

(declare-fun bs!382811 () Bool)

(assert (= bs!382811 d!458523))

(declare-fun m!1814156 () Bool)

(assert (=> bs!382811 m!1814156))

(assert (=> b!1539994 d!458523))

(declare-fun d!458525 () Bool)

(assert (=> d!458525 (= (inv!21691 (tag!3151 (h!21844 rulesArg!359))) (= (mod (str.len (value!91940 (tag!3151 (h!21844 rulesArg!359)))) 2) 0))))

(assert (=> b!1540000 d!458525))

(declare-fun d!458527 () Bool)

(declare-fun res!689842 () Bool)

(declare-fun e!985811 () Bool)

(assert (=> d!458527 (=> (not res!689842) (not e!985811))))

(declare-fun semiInverseModEq!1085 (Int Int) Bool)

(assert (=> d!458527 (= res!689842 (semiInverseModEq!1085 (toChars!4107 (transformation!2887 (h!21844 rulesArg!359))) (toValue!4248 (transformation!2887 (h!21844 rulesArg!359)))))))

(assert (=> d!458527 (= (inv!21695 (transformation!2887 (h!21844 rulesArg!359))) e!985811)))

(declare-fun b!1540070 () Bool)

(declare-fun equivClasses!1044 (Int Int) Bool)

(assert (=> b!1540070 (= e!985811 (equivClasses!1044 (toChars!4107 (transformation!2887 (h!21844 rulesArg!359))) (toValue!4248 (transformation!2887 (h!21844 rulesArg!359)))))))

(assert (= (and d!458527 res!689842) b!1540070))

(declare-fun m!1814158 () Bool)

(assert (=> d!458527 m!1814158))

(declare-fun m!1814160 () Bool)

(assert (=> b!1540070 m!1814160))

(assert (=> b!1540000 d!458527))

(declare-fun d!458529 () Bool)

(assert (=> d!458529 (= (array_inv!1803 (_keys!1918 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))) (bvsge (size!13278 (_keys!1918 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540018 d!458529))

(declare-fun d!458531 () Bool)

(assert (=> d!458531 (= (array_inv!1806 (_values!1903 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))) (bvsge (size!13282 (_values!1903 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540018 d!458531))

(declare-fun d!458533 () Bool)

(assert (=> d!458533 (= (isDefined!2387 (maxPrefix!1217 thiss!15733 rulesArg!359 lt!534121)) (not (isEmpty!10024 (maxPrefix!1217 thiss!15733 rulesArg!359 lt!534121))))))

(declare-fun bs!382812 () Bool)

(assert (= bs!382812 d!458533))

(assert (=> bs!382812 m!1814038))

(declare-fun m!1814162 () Bool)

(assert (=> bs!382812 m!1814162))

(assert (=> b!1540028 d!458533))

(declare-fun b!1540089 () Bool)

(declare-fun e!985819 () Bool)

(declare-fun e!985818 () Bool)

(assert (=> b!1540089 (= e!985819 e!985818)))

(declare-fun res!689858 () Bool)

(assert (=> b!1540089 (=> (not res!689858) (not e!985818))))

(declare-fun lt!534170 () Option!2978)

(assert (=> b!1540089 (= res!689858 (isDefined!2387 lt!534170))))

(declare-fun d!458535 () Bool)

(assert (=> d!458535 e!985819))

(declare-fun res!689857 () Bool)

(assert (=> d!458535 (=> res!689857 e!985819)))

(assert (=> d!458535 (= res!689857 (isEmpty!10024 lt!534170))))

(declare-fun e!985820 () Option!2978)

(assert (=> d!458535 (= lt!534170 e!985820)))

(declare-fun c!251698 () Bool)

(assert (=> d!458535 (= c!251698 (and ((_ is Cons!16443) rulesArg!359) ((_ is Nil!16443) (t!140717 rulesArg!359))))))

(declare-fun lt!534171 () Unit!25882)

(declare-fun lt!534168 () Unit!25882)

(assert (=> d!458535 (= lt!534171 lt!534168)))

(assert (=> d!458535 (isPrefix!1247 lt!534121 lt!534121)))

(assert (=> d!458535 (= lt!534168 (lemmaIsPrefixRefl!877 lt!534121 lt!534121))))

(assert (=> d!458535 (rulesValidInductive!887 thiss!15733 rulesArg!359)))

(assert (=> d!458535 (= (maxPrefix!1217 thiss!15733 rulesArg!359 lt!534121) lt!534170)))

(declare-fun b!1540090 () Bool)

(declare-fun res!689859 () Bool)

(assert (=> b!1540090 (=> (not res!689859) (not e!985818))))

(declare-fun charsOf!1640 (Token!5412) BalanceConc!10950)

(assert (=> b!1540090 (= res!689859 (= (list!6429 (charsOf!1640 (_1!8943 (get!4792 lt!534170)))) (originalCharacters!3737 (_1!8943 (get!4792 lt!534170)))))))

(declare-fun b!1540091 () Bool)

(declare-fun lt!534169 () Option!2978)

(declare-fun lt!534167 () Option!2978)

(assert (=> b!1540091 (= e!985820 (ite (and ((_ is None!2977) lt!534169) ((_ is None!2977) lt!534167)) None!2977 (ite ((_ is None!2977) lt!534167) lt!534169 (ite ((_ is None!2977) lt!534169) lt!534167 (ite (>= (size!13280 (_1!8943 (v!23257 lt!534169))) (size!13280 (_1!8943 (v!23257 lt!534167)))) lt!534169 lt!534167)))))))

(declare-fun call!101594 () Option!2978)

(assert (=> b!1540091 (= lt!534169 call!101594)))

(assert (=> b!1540091 (= lt!534167 (maxPrefix!1217 thiss!15733 (t!140717 rulesArg!359) lt!534121))))

(declare-fun b!1540092 () Bool)

(declare-fun res!689862 () Bool)

(assert (=> b!1540092 (=> (not res!689862) (not e!985818))))

(declare-fun apply!4082 (TokenValueInjection!5614 BalanceConc!10950) TokenValue!2977)

(declare-fun seqFromList!1744 (List!16508) BalanceConc!10950)

(assert (=> b!1540092 (= res!689862 (= (value!91941 (_1!8943 (get!4792 lt!534170))) (apply!4082 (transformation!2887 (rule!4690 (_1!8943 (get!4792 lt!534170)))) (seqFromList!1744 (originalCharacters!3737 (_1!8943 (get!4792 lt!534170)))))))))

(declare-fun b!1540093 () Bool)

(declare-fun res!689863 () Bool)

(assert (=> b!1540093 (=> (not res!689863) (not e!985818))))

(assert (=> b!1540093 (= res!689863 (< (size!13283 (_2!8943 (get!4792 lt!534170))) (size!13283 lt!534121)))))

(declare-fun bm!101589 () Bool)

(declare-fun maxPrefixOneRule!677 (LexerInterface!2537 Rule!5574 List!16508) Option!2978)

(assert (=> bm!101589 (= call!101594 (maxPrefixOneRule!677 thiss!15733 (h!21844 rulesArg!359) lt!534121))))

(declare-fun b!1540094 () Bool)

(assert (=> b!1540094 (= e!985820 call!101594)))

(declare-fun b!1540095 () Bool)

(declare-fun res!689860 () Bool)

(assert (=> b!1540095 (=> (not res!689860) (not e!985818))))

(declare-fun ++!4406 (List!16508 List!16508) List!16508)

(assert (=> b!1540095 (= res!689860 (= (++!4406 (list!6429 (charsOf!1640 (_1!8943 (get!4792 lt!534170)))) (_2!8943 (get!4792 lt!534170))) lt!534121))))

(declare-fun b!1540096 () Bool)

(declare-fun contains!2980 (List!16511 Rule!5574) Bool)

(assert (=> b!1540096 (= e!985818 (contains!2980 rulesArg!359 (rule!4690 (_1!8943 (get!4792 lt!534170)))))))

(declare-fun b!1540097 () Bool)

(declare-fun res!689861 () Bool)

(assert (=> b!1540097 (=> (not res!689861) (not e!985818))))

(declare-fun matchR!1847 (Regex!4211 List!16508) Bool)

(assert (=> b!1540097 (= res!689861 (matchR!1847 (regex!2887 (rule!4690 (_1!8943 (get!4792 lt!534170)))) (list!6429 (charsOf!1640 (_1!8943 (get!4792 lt!534170))))))))

(assert (= (and d!458535 c!251698) b!1540094))

(assert (= (and d!458535 (not c!251698)) b!1540091))

(assert (= (or b!1540094 b!1540091) bm!101589))

(assert (= (and d!458535 (not res!689857)) b!1540089))

(assert (= (and b!1540089 res!689858) b!1540090))

(assert (= (and b!1540090 res!689859) b!1540093))

(assert (= (and b!1540093 res!689863) b!1540095))

(assert (= (and b!1540095 res!689860) b!1540092))

(assert (= (and b!1540092 res!689862) b!1540097))

(assert (= (and b!1540097 res!689861) b!1540096))

(declare-fun m!1814164 () Bool)

(assert (=> d!458535 m!1814164))

(assert (=> d!458535 m!1814052))

(assert (=> d!458535 m!1814046))

(assert (=> d!458535 m!1814060))

(declare-fun m!1814166 () Bool)

(assert (=> b!1540092 m!1814166))

(declare-fun m!1814168 () Bool)

(assert (=> b!1540092 m!1814168))

(assert (=> b!1540092 m!1814168))

(declare-fun m!1814170 () Bool)

(assert (=> b!1540092 m!1814170))

(declare-fun m!1814172 () Bool)

(assert (=> b!1540089 m!1814172))

(assert (=> b!1540096 m!1814166))

(declare-fun m!1814174 () Bool)

(assert (=> b!1540096 m!1814174))

(assert (=> b!1540095 m!1814166))

(declare-fun m!1814176 () Bool)

(assert (=> b!1540095 m!1814176))

(assert (=> b!1540095 m!1814176))

(declare-fun m!1814178 () Bool)

(assert (=> b!1540095 m!1814178))

(assert (=> b!1540095 m!1814178))

(declare-fun m!1814180 () Bool)

(assert (=> b!1540095 m!1814180))

(assert (=> b!1540090 m!1814166))

(assert (=> b!1540090 m!1814176))

(assert (=> b!1540090 m!1814176))

(assert (=> b!1540090 m!1814178))

(declare-fun m!1814182 () Bool)

(assert (=> b!1540091 m!1814182))

(assert (=> b!1540093 m!1814166))

(declare-fun m!1814184 () Bool)

(assert (=> b!1540093 m!1814184))

(assert (=> b!1540093 m!1814120))

(declare-fun m!1814186 () Bool)

(assert (=> bm!101589 m!1814186))

(assert (=> b!1540097 m!1814166))

(assert (=> b!1540097 m!1814176))

(assert (=> b!1540097 m!1814176))

(assert (=> b!1540097 m!1814178))

(assert (=> b!1540097 m!1814178))

(declare-fun m!1814188 () Bool)

(assert (=> b!1540097 m!1814188))

(assert (=> b!1540028 d!458535))

(declare-fun d!458537 () Bool)

(declare-fun validCacheMapUp!149 (MutableMap!1567) Bool)

(assert (=> d!458537 (= (valid!1313 cacheUp!695) (validCacheMapUp!149 (cache!1948 cacheUp!695)))))

(declare-fun bs!382813 () Bool)

(assert (= bs!382813 d!458537))

(declare-fun m!1814190 () Bool)

(assert (=> bs!382813 m!1814190))

(assert (=> b!1539997 d!458537))

(declare-fun d!458539 () Bool)

(declare-fun c!251699 () Bool)

(assert (=> d!458539 (= c!251699 ((_ is Node!5504) (c!251688 input!1460)))))

(declare-fun e!985821 () Bool)

(assert (=> d!458539 (= (inv!21696 (c!251688 input!1460)) e!985821)))

(declare-fun b!1540098 () Bool)

(assert (=> b!1540098 (= e!985821 (inv!21700 (c!251688 input!1460)))))

(declare-fun b!1540099 () Bool)

(declare-fun e!985822 () Bool)

(assert (=> b!1540099 (= e!985821 e!985822)))

(declare-fun res!689864 () Bool)

(assert (=> b!1540099 (= res!689864 (not ((_ is Leaf!8155) (c!251688 input!1460))))))

(assert (=> b!1540099 (=> res!689864 e!985822)))

(declare-fun b!1540100 () Bool)

(assert (=> b!1540100 (= e!985822 (inv!21701 (c!251688 input!1460)))))

(assert (= (and d!458539 c!251699) b!1540098))

(assert (= (and d!458539 (not c!251699)) b!1540099))

(assert (= (and b!1540099 (not res!689864)) b!1540100))

(declare-fun m!1814192 () Bool)

(assert (=> b!1540098 m!1814192))

(declare-fun m!1814194 () Bool)

(assert (=> b!1540100 m!1814194))

(assert (=> b!1540026 d!458539))

(declare-fun d!458541 () Bool)

(assert (=> d!458541 (= (array_inv!1803 (_keys!1916 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))) (bvsge (size!13278 (_keys!1916 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1539998 d!458541))

(declare-fun d!458543 () Bool)

(assert (=> d!458543 (= (array_inv!1804 (_values!1901 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))) (bvsge (size!13279 (_values!1901 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1539998 d!458543))

(declare-fun d!458545 () Bool)

(declare-fun res!689867 () Bool)

(declare-fun e!985825 () Bool)

(assert (=> d!458545 (=> (not res!689867) (not e!985825))))

(assert (=> d!458545 (= res!689867 ((_ is HashMap!1568) (cache!1949 cacheDown!708)))))

(assert (=> d!458545 (= (inv!21698 cacheDown!708) e!985825)))

(declare-fun b!1540103 () Bool)

(assert (=> b!1540103 (= e!985825 (validCacheMapDown!149 (cache!1949 cacheDown!708)))))

(assert (= (and d!458545 res!689867) b!1540103))

(assert (=> b!1540103 m!1814154))

(assert (=> start!143046 d!458545))

(declare-fun d!458547 () Bool)

(assert (=> d!458547 (= (inv!21694 input!1460) (isBalanced!1631 (c!251688 input!1460)))))

(declare-fun bs!382814 () Bool)

(assert (= bs!382814 d!458547))

(declare-fun m!1814196 () Bool)

(assert (=> bs!382814 m!1814196))

(assert (=> start!143046 d!458547))

(declare-fun d!458549 () Bool)

(declare-fun res!689870 () Bool)

(declare-fun e!985828 () Bool)

(assert (=> d!458549 (=> (not res!689870) (not e!985828))))

(assert (=> d!458549 (= res!689870 ((_ is HashMap!1567) (cache!1948 cacheUp!695)))))

(assert (=> d!458549 (= (inv!21697 cacheUp!695) e!985828)))

(declare-fun b!1540106 () Bool)

(assert (=> b!1540106 (= e!985828 (validCacheMapUp!149 (cache!1948 cacheUp!695)))))

(assert (= (and d!458549 res!689870) b!1540106))

(assert (=> b!1540106 m!1814190))

(assert (=> start!143046 d!458549))

(declare-fun d!458551 () Bool)

(assert (=> d!458551 (= (inv!21694 totalInput!496) (isBalanced!1631 (c!251688 totalInput!496)))))

(declare-fun bs!382815 () Bool)

(assert (= bs!382815 d!458551))

(declare-fun m!1814198 () Bool)

(assert (=> bs!382815 m!1814198))

(assert (=> start!143046 d!458551))

(declare-fun d!458553 () Bool)

(declare-fun res!689873 () Bool)

(declare-fun e!985831 () Bool)

(assert (=> d!458553 (=> (not res!689873) (not e!985831))))

(assert (=> d!458553 (= res!689873 ((_ is HashMap!1566) (cache!1947 cacheFurthestNullable!81)))))

(assert (=> d!458553 (= (inv!21699 cacheFurthestNullable!81) e!985831)))

(declare-fun b!1540109 () Bool)

(declare-fun validCacheMapFurthestNullable!62 (MutableMap!1566 BalanceConc!10950) Bool)

(assert (=> b!1540109 (= e!985831 (validCacheMapFurthestNullable!62 (cache!1947 cacheFurthestNullable!81) (totalInput!2377 cacheFurthestNullable!81)))))

(assert (= (and d!458553 res!689873) b!1540109))

(declare-fun m!1814200 () Bool)

(assert (=> b!1540109 m!1814200))

(assert (=> start!143046 d!458553))

(declare-fun d!458555 () Bool)

(assert (=> d!458555 (= (valid!1312 cacheFurthestNullable!81) (validCacheMapFurthestNullable!62 (cache!1947 cacheFurthestNullable!81) (totalInput!2377 cacheFurthestNullable!81)))))

(declare-fun bs!382816 () Bool)

(assert (= bs!382816 d!458555))

(assert (=> bs!382816 m!1814200))

(assert (=> b!1539995 d!458555))

(declare-fun e!985847 () Bool)

(declare-fun lt!534198 () tuple4!790)

(declare-fun b!1540134 () Bool)

(assert (=> b!1540134 (= e!985847 (= (list!6429 (_2!8942 (get!4793 (_1!8949 lt!534198)))) (_2!8943 (get!4792 (maxPrefix!1217 thiss!15733 (t!140717 rulesArg!359) (list!6429 input!1460))))))))

(declare-fun b!1540135 () Bool)

(declare-fun res!689899 () Bool)

(declare-fun e!985844 () Bool)

(assert (=> b!1540135 (=> (not res!689899) (not e!985844))))

(assert (=> b!1540135 (= res!689899 (valid!1314 (_3!1174 lt!534198)))))

(declare-fun b!1540136 () Bool)

(declare-fun e!985849 () Bool)

(assert (=> b!1540136 (= e!985849 e!985847)))

(declare-fun res!689900 () Bool)

(assert (=> b!1540136 (=> (not res!689900) (not e!985847))))

(assert (=> b!1540136 (= res!689900 (= (_1!8942 (get!4793 (_1!8949 lt!534198))) (_1!8943 (get!4792 (maxPrefix!1217 thiss!15733 (t!140717 rulesArg!359) (list!6429 input!1460))))))))

(declare-fun b!1540137 () Bool)

(assert (=> b!1540137 (= e!985844 (= (totalInput!2377 (_4!395 lt!534198)) totalInput!496))))

(declare-fun b!1540138 () Bool)

(declare-fun e!985845 () Bool)

(declare-fun e!985846 () Bool)

(assert (=> b!1540138 (= e!985845 e!985846)))

(declare-fun res!689901 () Bool)

(assert (=> b!1540138 (=> (not res!689901) (not e!985846))))

(assert (=> b!1540138 (= res!689901 (= (_1!8942 (get!4793 (_1!8949 lt!534198))) (_1!8943 (get!4792 (maxPrefixZipper!273 thiss!15733 (t!140717 rulesArg!359) (list!6429 input!1460))))))))

(declare-fun b!1540139 () Bool)

(declare-fun res!689895 () Bool)

(assert (=> b!1540139 (=> (not res!689895) (not e!985844))))

(assert (=> b!1540139 (= res!689895 e!985845)))

(declare-fun res!689898 () Bool)

(assert (=> b!1540139 (=> res!689898 e!985845)))

(assert (=> b!1540139 (= res!689898 (not (isDefined!2388 (_1!8949 lt!534198))))))

(declare-fun b!1540140 () Bool)

(declare-fun res!689902 () Bool)

(assert (=> b!1540140 (=> (not res!689902) (not e!985844))))

(assert (=> b!1540140 (= res!689902 (valid!1313 (_2!8949 lt!534198)))))

(declare-fun b!1540141 () Bool)

(assert (=> b!1540141 (= e!985846 (= (list!6429 (_2!8942 (get!4793 (_1!8949 lt!534198)))) (_2!8943 (get!4792 (maxPrefixZipper!273 thiss!15733 (t!140717 rulesArg!359) (list!6429 input!1460))))))))

(declare-fun b!1540142 () Bool)

(declare-fun res!689894 () Bool)

(assert (=> b!1540142 (=> (not res!689894) (not e!985844))))

(assert (=> b!1540142 (= res!689894 e!985849)))

(declare-fun res!689903 () Bool)

(assert (=> b!1540142 (=> res!689903 e!985849)))

(assert (=> b!1540142 (= res!689903 (not (isDefined!2388 (_1!8949 lt!534198))))))

(declare-fun d!458557 () Bool)

(assert (=> d!458557 e!985844))

(declare-fun res!689897 () Bool)

(assert (=> d!458557 (=> (not res!689897) (not e!985844))))

(assert (=> d!458557 (= res!689897 (= (isDefined!2388 (_1!8949 lt!534198)) (isDefined!2387 (maxPrefixZipper!273 thiss!15733 (t!140717 rulesArg!359) (list!6429 input!1460)))))))

(declare-fun lt!534197 () tuple4!788)

(assert (=> d!458557 (= lt!534198 (tuple4!791 (_1!8948 lt!534197) (_2!8948 lt!534197) (_4!394 lt!534197) (_3!1173 lt!534197)))))

(declare-fun e!985848 () tuple4!788)

(assert (=> d!458557 (= lt!534197 e!985848)))

(declare-fun c!251702 () Bool)

(assert (=> d!458557 (= c!251702 (and ((_ is Cons!16443) (t!140717 rulesArg!359)) ((_ is Nil!16443) (t!140717 (t!140717 rulesArg!359)))))))

(declare-fun lt!534190 () Unit!25882)

(declare-fun lt!534193 () Unit!25882)

(assert (=> d!458557 (= lt!534190 lt!534193)))

(declare-fun lt!534191 () List!16508)

(declare-fun lt!534192 () List!16508)

(assert (=> d!458557 (isPrefix!1247 lt!534191 lt!534192)))

(assert (=> d!458557 (= lt!534193 (lemmaIsPrefixRefl!877 lt!534191 lt!534192))))

(assert (=> d!458557 (= lt!534192 (list!6429 input!1460))))

(assert (=> d!458557 (= lt!534191 (list!6429 input!1460))))

(assert (=> d!458557 (rulesValidInductive!887 thiss!15733 (t!140717 rulesArg!359))))

(assert (=> d!458557 (= (maxPrefixZipperSequenceV3Mem!43 thiss!15733 (t!140717 rulesArg!359) input!1460 totalInput!496 (_2!8949 lt!534123) (_3!1174 lt!534123) (_4!395 lt!534123)) lt!534198)))

(declare-fun b!1540143 () Bool)

(declare-fun lt!534196 () tuple4!790)

(assert (=> b!1540143 (= e!985848 (tuple4!789 (_1!8949 lt!534196) (_2!8949 lt!534196) (_4!395 lt!534196) (_3!1174 lt!534196)))))

(declare-fun call!101597 () tuple4!790)

(assert (=> b!1540143 (= lt!534196 call!101597)))

(declare-fun b!1540144 () Bool)

(declare-fun lt!534194 () tuple4!790)

(declare-fun lt!534195 () tuple4!790)

(assert (=> b!1540144 (= e!985848 (tuple4!789 (ite (and ((_ is None!2976) (_1!8949 lt!534194)) ((_ is None!2976) (_1!8949 lt!534195))) None!2976 (ite ((_ is None!2976) (_1!8949 lt!534195)) (_1!8949 lt!534194) (ite ((_ is None!2976) (_1!8949 lt!534194)) (_1!8949 lt!534195) (ite (>= (size!13280 (_1!8942 (v!23254 (_1!8949 lt!534194)))) (size!13280 (_1!8942 (v!23254 (_1!8949 lt!534195))))) (_1!8949 lt!534194) (_1!8949 lt!534195))))) (_2!8949 lt!534195) (_4!395 lt!534195) (_3!1174 lt!534195)))))

(assert (=> b!1540144 (= lt!534194 call!101597)))

(assert (=> b!1540144 (= lt!534195 (maxPrefixZipperSequenceV3Mem!43 thiss!15733 (t!140717 (t!140717 rulesArg!359)) input!1460 totalInput!496 (_2!8949 lt!534194) (_3!1174 lt!534194) (_4!395 lt!534194)))))

(declare-fun b!1540145 () Bool)

(declare-fun res!689896 () Bool)

(assert (=> b!1540145 (=> (not res!689896) (not e!985844))))

(assert (=> b!1540145 (= res!689896 (valid!1312 (_4!395 lt!534198)))))

(declare-fun bm!101592 () Bool)

(assert (=> bm!101592 (= call!101597 (maxPrefixOneRuleZipperSequenceV3Mem!33 thiss!15733 (h!21844 (t!140717 rulesArg!359)) input!1460 totalInput!496 (_2!8949 lt!534123) (_3!1174 lt!534123) (_4!395 lt!534123)))))

(assert (= (and d!458557 c!251702) b!1540143))

(assert (= (and d!458557 (not c!251702)) b!1540144))

(assert (= (or b!1540143 b!1540144) bm!101592))

(assert (= (and d!458557 res!689897) b!1540139))

(assert (= (and b!1540139 (not res!689898)) b!1540138))

(assert (= (and b!1540138 res!689901) b!1540141))

(assert (= (and b!1540139 res!689895) b!1540142))

(assert (= (and b!1540142 (not res!689903)) b!1540136))

(assert (= (and b!1540136 res!689900) b!1540134))

(assert (= (and b!1540142 res!689894) b!1540140))

(assert (= (and b!1540140 res!689902) b!1540135))

(assert (= (and b!1540135 res!689899) b!1540145))

(assert (= (and b!1540145 res!689896) b!1540137))

(declare-fun m!1814202 () Bool)

(assert (=> b!1540141 m!1814202))

(declare-fun m!1814204 () Bool)

(assert (=> b!1540141 m!1814204))

(declare-fun m!1814206 () Bool)

(assert (=> b!1540141 m!1814206))

(declare-fun m!1814208 () Bool)

(assert (=> b!1540141 m!1814208))

(assert (=> b!1540141 m!1814078))

(assert (=> b!1540141 m!1814204))

(assert (=> b!1540141 m!1814078))

(declare-fun m!1814210 () Bool)

(assert (=> b!1540135 m!1814210))

(declare-fun m!1814212 () Bool)

(assert (=> b!1540144 m!1814212))

(declare-fun m!1814214 () Bool)

(assert (=> b!1540140 m!1814214))

(declare-fun m!1814216 () Bool)

(assert (=> b!1540139 m!1814216))

(assert (=> b!1540142 m!1814216))

(declare-fun m!1814218 () Bool)

(assert (=> bm!101592 m!1814218))

(assert (=> b!1540136 m!1814202))

(assert (=> b!1540136 m!1814078))

(assert (=> b!1540136 m!1814078))

(declare-fun m!1814220 () Bool)

(assert (=> b!1540136 m!1814220))

(assert (=> b!1540136 m!1814220))

(declare-fun m!1814222 () Bool)

(assert (=> b!1540136 m!1814222))

(declare-fun m!1814224 () Bool)

(assert (=> b!1540145 m!1814224))

(assert (=> b!1540134 m!1814078))

(assert (=> b!1540134 m!1814220))

(assert (=> b!1540134 m!1814202))

(assert (=> b!1540134 m!1814208))

(assert (=> b!1540134 m!1814220))

(assert (=> b!1540134 m!1814222))

(assert (=> b!1540134 m!1814078))

(declare-fun m!1814226 () Bool)

(assert (=> d!458557 m!1814226))

(assert (=> d!458557 m!1814216))

(assert (=> d!458557 m!1814204))

(declare-fun m!1814228 () Bool)

(assert (=> d!458557 m!1814228))

(assert (=> d!458557 m!1814078))

(declare-fun m!1814230 () Bool)

(assert (=> d!458557 m!1814230))

(assert (=> d!458557 m!1814078))

(assert (=> d!458557 m!1814204))

(declare-fun m!1814232 () Bool)

(assert (=> d!458557 m!1814232))

(assert (=> b!1540138 m!1814202))

(assert (=> b!1540138 m!1814078))

(assert (=> b!1540138 m!1814078))

(assert (=> b!1540138 m!1814204))

(assert (=> b!1540138 m!1814204))

(assert (=> b!1540138 m!1814206))

(assert (=> b!1540032 d!458557))

(declare-fun b!1540183 () Bool)

(declare-fun e!985870 () Bool)

(assert (=> b!1540183 (= e!985870 true)))

(declare-fun b!1540182 () Bool)

(declare-fun e!985869 () Bool)

(assert (=> b!1540182 (= e!985869 e!985870)))

(declare-fun b!1540173 () Bool)

(assert (=> b!1540173 e!985869))

(assert (= b!1540182 b!1540183))

(assert (= b!1540173 b!1540182))

(declare-fun lambda!65265 () Int)

(declare-fun order!9611 () Int)

(declare-fun order!9613 () Int)

(declare-fun dynLambda!7291 (Int Int) Int)

(declare-fun dynLambda!7292 (Int Int) Int)

(assert (=> b!1540183 (< (dynLambda!7291 order!9611 (toValue!4248 (transformation!2887 (h!21844 rulesArg!359)))) (dynLambda!7292 order!9613 lambda!65265))))

(declare-fun order!9615 () Int)

(declare-fun dynLambda!7293 (Int Int) Int)

(assert (=> b!1540183 (< (dynLambda!7293 order!9615 (toChars!4107 (transformation!2887 (h!21844 rulesArg!359)))) (dynLambda!7292 order!9613 lambda!65265))))

(declare-fun b!1540166 () Bool)

(declare-fun e!985864 () Option!2977)

(assert (=> b!1540166 (= e!985864 None!2976)))

(declare-fun b!1540167 () Bool)

(declare-fun e!985861 () Bool)

(declare-fun lt!534225 () tuple4!790)

(assert (=> b!1540167 (= e!985861 (= (totalInput!2377 (_4!395 lt!534225)) totalInput!496))))

(declare-fun b!1540168 () Bool)

(declare-fun res!689920 () Bool)

(assert (=> b!1540168 (=> (not res!689920) (not e!985861))))

(assert (=> b!1540168 (= res!689920 (valid!1312 (_4!395 lt!534225)))))

(declare-fun e!985863 () Bool)

(declare-fun b!1540169 () Bool)

(assert (=> b!1540169 (= e!985863 (= (list!6429 (_2!8942 (get!4793 (_1!8949 lt!534225)))) (_2!8943 (get!4792 (maxPrefixOneRule!677 thiss!15733 (h!21844 rulesArg!359) (list!6429 input!1460))))))))

(declare-fun b!1540170 () Bool)

(declare-fun e!985862 () Bool)

(declare-fun lt!534226 () List!16508)

(declare-datatypes ((tuple2!15552 0))(
  ( (tuple2!15553 (_1!8951 List!16508) (_2!8951 List!16508)) )
))
(declare-fun findLongestMatchInner!304 (Regex!4211 List!16508 Int List!16508 List!16508 Int) tuple2!15552)

(assert (=> b!1540170 (= e!985862 (matchR!1847 (regex!2887 (h!21844 rulesArg!359)) (_1!8951 (findLongestMatchInner!304 (regex!2887 (h!21844 rulesArg!359)) Nil!16440 (size!13283 Nil!16440) lt!534226 lt!534226 (size!13283 lt!534226)))))))

(declare-fun b!1540171 () Bool)

(declare-fun res!689924 () Bool)

(assert (=> b!1540171 (=> (not res!689924) (not e!985861))))

(assert (=> b!1540171 (= res!689924 (valid!1314 (_3!1174 lt!534225)))))

(declare-fun b!1540172 () Bool)

(declare-fun res!689925 () Bool)

(assert (=> b!1540172 (=> (not res!689925) (not e!985861))))

(declare-fun e!985860 () Bool)

(assert (=> b!1540172 (= res!689925 e!985860)))

(declare-fun res!689921 () Bool)

(assert (=> b!1540172 (=> res!689921 e!985860)))

(assert (=> b!1540172 (= res!689921 (not (isDefined!2388 (_1!8949 lt!534225))))))

(declare-datatypes ((tuple2!15554 0))(
  ( (tuple2!15555 (_1!8952 BalanceConc!10950) (_2!8952 BalanceConc!10950)) )
))
(declare-datatypes ((tuple4!792 0))(
  ( (tuple4!793 (_1!8953 tuple2!15554) (_2!8953 CacheUp!942) (_3!1175 CacheDown!948) (_4!396 CacheFurthestNullable!370)) )
))
(declare-fun lt!534220 () tuple4!792)

(declare-fun size!13284 (BalanceConc!10950) Int)

(assert (=> b!1540173 (= e!985864 (Some!2976 (tuple2!15541 (Token!5413 (apply!4082 (transformation!2887 (h!21844 rulesArg!359)) (_1!8952 (_1!8953 lt!534220))) (h!21844 rulesArg!359) (size!13284 (_1!8952 (_1!8953 lt!534220))) (list!6429 (_1!8952 (_1!8953 lt!534220)))) (_2!8952 (_1!8953 lt!534220)))))))

(assert (=> b!1540173 (= lt!534226 (list!6429 input!1460))))

(declare-fun lt!534224 () Unit!25882)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!288 (Regex!4211 List!16508) Unit!25882)

(assert (=> b!1540173 (= lt!534224 (longestMatchIsAcceptedByMatchOrIsEmpty!288 (regex!2887 (h!21844 rulesArg!359)) lt!534226))))

(declare-fun res!689927 () Bool)

(declare-fun isEmpty!10025 (List!16508) Bool)

(assert (=> b!1540173 (= res!689927 (isEmpty!10025 (_1!8951 (findLongestMatchInner!304 (regex!2887 (h!21844 rulesArg!359)) Nil!16440 (size!13283 Nil!16440) lt!534226 lt!534226 (size!13283 lt!534226)))))))

(assert (=> b!1540173 (=> res!689927 e!985862)))

(assert (=> b!1540173 e!985862))

(declare-fun lt!534227 () Unit!25882)

(assert (=> b!1540173 (= lt!534227 lt!534224)))

(declare-fun lt!534221 () Unit!25882)

(declare-fun lemmaInv!398 (TokenValueInjection!5614) Unit!25882)

(assert (=> b!1540173 (= lt!534221 (lemmaInv!398 (transformation!2887 (h!21844 rulesArg!359))))))

(declare-fun lt!534222 () Unit!25882)

(declare-fun ForallOf!181 (Int BalanceConc!10950) Unit!25882)

(assert (=> b!1540173 (= lt!534222 (ForallOf!181 lambda!65265 (_1!8952 (_1!8953 lt!534220))))))

(declare-fun lt!534219 () Unit!25882)

(assert (=> b!1540173 (= lt!534219 (ForallOf!181 lambda!65265 (seqFromList!1744 (list!6429 (_1!8952 (_1!8953 lt!534220))))))))

(declare-fun lt!534228 () Option!2977)

(assert (=> b!1540173 (= lt!534228 (Some!2976 (tuple2!15541 (Token!5413 (apply!4082 (transformation!2887 (h!21844 rulesArg!359)) (_1!8952 (_1!8953 lt!534220))) (h!21844 rulesArg!359) (size!13284 (_1!8952 (_1!8953 lt!534220))) (list!6429 (_1!8952 (_1!8953 lt!534220)))) (_2!8952 (_1!8953 lt!534220)))))))

(declare-fun lt!534223 () Unit!25882)

(declare-fun lemmaEqSameImage!131 (TokenValueInjection!5614 BalanceConc!10950 BalanceConc!10950) Unit!25882)

(assert (=> b!1540173 (= lt!534223 (lemmaEqSameImage!131 (transformation!2887 (h!21844 rulesArg!359)) (_1!8952 (_1!8953 lt!534220)) (seqFromList!1744 (list!6429 (_1!8952 (_1!8953 lt!534220))))))))

(declare-fun d!458559 () Bool)

(assert (=> d!458559 e!985861))

(declare-fun res!689923 () Bool)

(assert (=> d!458559 (=> (not res!689923) (not e!985861))))

(assert (=> d!458559 (= res!689923 (= (isDefined!2388 (_1!8949 lt!534225)) (isDefined!2387 (maxPrefixOneRule!677 thiss!15733 (h!21844 rulesArg!359) (list!6429 input!1460)))))))

(assert (=> d!458559 (= lt!534225 (tuple4!791 e!985864 (_2!8953 lt!534220) (_3!1175 lt!534220) (_4!396 lt!534220)))))

(declare-fun c!251705 () Bool)

(declare-fun isEmpty!10026 (BalanceConc!10950) Bool)

(assert (=> d!458559 (= c!251705 (isEmpty!10026 (_1!8952 (_1!8953 lt!534220))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!14 (Regex!4211 BalanceConc!10950 BalanceConc!10950 CacheUp!942 CacheDown!948 CacheFurthestNullable!370) tuple4!792)

(assert (=> d!458559 (= lt!534220 (findLongestMatchWithZipperSequenceV3Mem!14 (regex!2887 (h!21844 rulesArg!359)) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun ruleValid!649 (LexerInterface!2537 Rule!5574) Bool)

(assert (=> d!458559 (ruleValid!649 thiss!15733 (h!21844 rulesArg!359))))

(assert (=> d!458559 (= (maxPrefixOneRuleZipperSequenceV3Mem!33 thiss!15733 (h!21844 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81) lt!534225)))

(declare-fun b!1540174 () Bool)

(assert (=> b!1540174 (= e!985860 e!985863)))

(declare-fun res!689922 () Bool)

(assert (=> b!1540174 (=> (not res!689922) (not e!985863))))

(assert (=> b!1540174 (= res!689922 (= (_1!8942 (get!4793 (_1!8949 lt!534225))) (_1!8943 (get!4792 (maxPrefixOneRule!677 thiss!15733 (h!21844 rulesArg!359) (list!6429 input!1460))))))))

(declare-fun b!1540175 () Bool)

(declare-fun res!689926 () Bool)

(assert (=> b!1540175 (=> (not res!689926) (not e!985861))))

(assert (=> b!1540175 (= res!689926 (valid!1313 (_2!8949 lt!534225)))))

(assert (= (and d!458559 c!251705) b!1540166))

(assert (= (and d!458559 (not c!251705)) b!1540173))

(assert (= (and b!1540173 (not res!689927)) b!1540170))

(assert (= (and d!458559 res!689923) b!1540172))

(assert (= (and b!1540172 (not res!689921)) b!1540174))

(assert (= (and b!1540174 res!689922) b!1540169))

(assert (= (and b!1540172 res!689925) b!1540175))

(assert (= (and b!1540175 res!689926) b!1540171))

(assert (= (and b!1540171 res!689924) b!1540168))

(assert (= (and b!1540168 res!689920) b!1540167))

(declare-fun m!1814234 () Bool)

(assert (=> b!1540174 m!1814234))

(assert (=> b!1540174 m!1814078))

(assert (=> b!1540174 m!1814078))

(declare-fun m!1814236 () Bool)

(assert (=> b!1540174 m!1814236))

(assert (=> b!1540174 m!1814236))

(declare-fun m!1814238 () Bool)

(assert (=> b!1540174 m!1814238))

(declare-fun m!1814240 () Bool)

(assert (=> b!1540171 m!1814240))

(declare-fun m!1814242 () Bool)

(assert (=> d!458559 m!1814242))

(declare-fun m!1814244 () Bool)

(assert (=> d!458559 m!1814244))

(assert (=> d!458559 m!1814078))

(assert (=> d!458559 m!1814236))

(declare-fun m!1814246 () Bool)

(assert (=> d!458559 m!1814246))

(assert (=> d!458559 m!1814236))

(declare-fun m!1814248 () Bool)

(assert (=> d!458559 m!1814248))

(assert (=> d!458559 m!1814078))

(declare-fun m!1814250 () Bool)

(assert (=> d!458559 m!1814250))

(assert (=> b!1540172 m!1814246))

(declare-fun m!1814252 () Bool)

(assert (=> b!1540175 m!1814252))

(declare-fun m!1814254 () Bool)

(assert (=> b!1540168 m!1814254))

(declare-fun m!1814256 () Bool)

(assert (=> b!1540173 m!1814256))

(declare-fun m!1814258 () Bool)

(assert (=> b!1540173 m!1814258))

(declare-fun m!1814260 () Bool)

(assert (=> b!1540173 m!1814260))

(declare-fun m!1814262 () Bool)

(assert (=> b!1540173 m!1814262))

(declare-fun m!1814264 () Bool)

(assert (=> b!1540173 m!1814264))

(assert (=> b!1540173 m!1814078))

(declare-fun m!1814266 () Bool)

(assert (=> b!1540173 m!1814266))

(assert (=> b!1540173 m!1814262))

(declare-fun m!1814268 () Bool)

(assert (=> b!1540173 m!1814268))

(declare-fun m!1814270 () Bool)

(assert (=> b!1540173 m!1814270))

(declare-fun m!1814272 () Bool)

(assert (=> b!1540173 m!1814272))

(assert (=> b!1540173 m!1814256))

(declare-fun m!1814274 () Bool)

(assert (=> b!1540173 m!1814274))

(declare-fun m!1814276 () Bool)

(assert (=> b!1540173 m!1814276))

(assert (=> b!1540173 m!1814274))

(assert (=> b!1540173 m!1814262))

(assert (=> b!1540173 m!1814258))

(declare-fun m!1814278 () Bool)

(assert (=> b!1540173 m!1814278))

(declare-fun m!1814280 () Bool)

(assert (=> b!1540173 m!1814280))

(assert (=> b!1540169 m!1814234))

(assert (=> b!1540169 m!1814236))

(assert (=> b!1540169 m!1814238))

(assert (=> b!1540169 m!1814078))

(declare-fun m!1814282 () Bool)

(assert (=> b!1540169 m!1814282))

(assert (=> b!1540169 m!1814078))

(assert (=> b!1540169 m!1814236))

(assert (=> b!1540170 m!1814256))

(assert (=> b!1540170 m!1814258))

(assert (=> b!1540170 m!1814256))

(assert (=> b!1540170 m!1814258))

(assert (=> b!1540170 m!1814260))

(declare-fun m!1814284 () Bool)

(assert (=> b!1540170 m!1814284))

(assert (=> bm!101583 d!458559))

(declare-fun d!458561 () Bool)

(assert (=> d!458561 true))

(declare-fun lt!534231 () Bool)

(declare-fun lambda!65268 () Int)

(declare-fun forall!3904 (List!16511 Int) Bool)

(assert (=> d!458561 (= lt!534231 (forall!3904 rulesArg!359 lambda!65268))))

(declare-fun e!985875 () Bool)

(assert (=> d!458561 (= lt!534231 e!985875)))

(declare-fun res!689932 () Bool)

(assert (=> d!458561 (=> res!689932 e!985875)))

(assert (=> d!458561 (= res!689932 (not ((_ is Cons!16443) rulesArg!359)))))

(assert (=> d!458561 (= (rulesValidInductive!887 thiss!15733 rulesArg!359) lt!534231)))

(declare-fun b!1540188 () Bool)

(declare-fun e!985876 () Bool)

(assert (=> b!1540188 (= e!985875 e!985876)))

(declare-fun res!689933 () Bool)

(assert (=> b!1540188 (=> (not res!689933) (not e!985876))))

(assert (=> b!1540188 (= res!689933 (ruleValid!649 thiss!15733 (h!21844 rulesArg!359)))))

(declare-fun b!1540189 () Bool)

(assert (=> b!1540189 (= e!985876 (rulesValidInductive!887 thiss!15733 (t!140717 rulesArg!359)))))

(assert (= (and d!458561 (not res!689932)) b!1540188))

(assert (= (and b!1540188 res!689933) b!1540189))

(declare-fun m!1814286 () Bool)

(assert (=> d!458561 m!1814286))

(assert (=> b!1540188 m!1814244))

(assert (=> b!1540189 m!1814232))

(assert (=> b!1540007 d!458561))

(declare-fun d!458563 () Bool)

(assert (=> d!458563 (= (isEmpty!10022 rulesArg!359) ((_ is Nil!16443) rulesArg!359))))

(assert (=> b!1540006 d!458563))

(declare-fun tp!445986 () Bool)

(declare-fun tp!445988 () Bool)

(declare-fun e!985882 () Bool)

(declare-fun b!1540200 () Bool)

(assert (=> b!1540200 (= e!985882 (and (inv!21696 (left!13478 (c!251688 (totalInput!2377 cacheFurthestNullable!81)))) tp!445986 (inv!21696 (right!13808 (c!251688 (totalInput!2377 cacheFurthestNullable!81)))) tp!445988))))

(declare-fun b!1540202 () Bool)

(declare-fun e!985881 () Bool)

(declare-fun tp!445987 () Bool)

(assert (=> b!1540202 (= e!985881 tp!445987)))

(declare-fun b!1540201 () Bool)

(declare-fun inv!21702 (IArray!11013) Bool)

(assert (=> b!1540201 (= e!985882 (and (inv!21702 (xs!8304 (c!251688 (totalInput!2377 cacheFurthestNullable!81)))) e!985881))))

(assert (=> b!1540002 (= tp!445959 (and (inv!21696 (c!251688 (totalInput!2377 cacheFurthestNullable!81))) e!985882))))

(assert (= (and b!1540002 ((_ is Node!5504) (c!251688 (totalInput!2377 cacheFurthestNullable!81)))) b!1540200))

(assert (= b!1540201 b!1540202))

(assert (= (and b!1540002 ((_ is Leaf!8155) (c!251688 (totalInput!2377 cacheFurthestNullable!81)))) b!1540201))

(declare-fun m!1814288 () Bool)

(assert (=> b!1540200 m!1814288))

(declare-fun m!1814290 () Bool)

(assert (=> b!1540200 m!1814290))

(declare-fun m!1814292 () Bool)

(assert (=> b!1540201 m!1814292))

(assert (=> b!1540002 m!1814084))

(declare-fun e!985884 () Bool)

(declare-fun b!1540203 () Bool)

(declare-fun tp!445991 () Bool)

(declare-fun tp!445989 () Bool)

(assert (=> b!1540203 (= e!985884 (and (inv!21696 (left!13478 (c!251688 totalInput!496))) tp!445989 (inv!21696 (right!13808 (c!251688 totalInput!496))) tp!445991))))

(declare-fun b!1540205 () Bool)

(declare-fun e!985883 () Bool)

(declare-fun tp!445990 () Bool)

(assert (=> b!1540205 (= e!985883 tp!445990)))

(declare-fun b!1540204 () Bool)

(assert (=> b!1540204 (= e!985884 (and (inv!21702 (xs!8304 (c!251688 totalInput!496))) e!985883))))

(assert (=> b!1540031 (= tp!445978 (and (inv!21696 (c!251688 totalInput!496)) e!985884))))

(assert (= (and b!1540031 ((_ is Node!5504) (c!251688 totalInput!496))) b!1540203))

(assert (= b!1540204 b!1540205))

(assert (= (and b!1540031 ((_ is Leaf!8155) (c!251688 totalInput!496))) b!1540204))

(declare-fun m!1814294 () Bool)

(assert (=> b!1540203 m!1814294))

(declare-fun m!1814296 () Bool)

(assert (=> b!1540203 m!1814296))

(declare-fun m!1814298 () Bool)

(assert (=> b!1540204 m!1814298))

(assert (=> b!1540031 m!1814114))

(declare-fun b!1540214 () Bool)

(declare-fun e!985891 () Bool)

(declare-fun tp!446001 () Bool)

(assert (=> b!1540214 (= e!985891 tp!446001)))

(declare-fun tp_is_empty!7043 () Bool)

(declare-fun tp!446003 () Bool)

(declare-fun setRes!10164 () Bool)

(declare-fun b!1540215 () Bool)

(declare-fun e!985892 () Bool)

(declare-fun inv!21703 (Context!1458) Bool)

(assert (=> b!1540215 (= e!985892 (and (inv!21703 (_1!8944 (_1!8945 (h!21843 (zeroValue!1880 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695)))))))))) e!985891 tp_is_empty!7043 setRes!10164 tp!446003))))

(declare-fun condSetEmpty!10164 () Bool)

(assert (=> b!1540215 (= condSetEmpty!10164 (= (_2!8945 (h!21843 (zeroValue!1880 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695)))))))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setIsEmpty!10164 () Bool)

(assert (=> setIsEmpty!10164 setRes!10164))

(assert (=> b!1540012 (= tp!445962 e!985892)))

(declare-fun b!1540216 () Bool)

(declare-fun e!985893 () Bool)

(declare-fun tp!446002 () Bool)

(assert (=> b!1540216 (= e!985893 tp!446002)))

(declare-fun tp!446000 () Bool)

(declare-fun setElem!10164 () Context!1458)

(declare-fun setNonEmpty!10164 () Bool)

(assert (=> setNonEmpty!10164 (= setRes!10164 (and tp!446000 (inv!21703 setElem!10164) e!985893))))

(declare-fun setRest!10164 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10164 (= (_2!8945 (h!21843 (zeroValue!1880 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10164 true) setRest!10164))))

(assert (= b!1540215 b!1540214))

(assert (= (and b!1540215 condSetEmpty!10164) setIsEmpty!10164))

(assert (= (and b!1540215 (not condSetEmpty!10164)) setNonEmpty!10164))

(assert (= setNonEmpty!10164 b!1540216))

(assert (= (and b!1540012 ((_ is Cons!16442) (zeroValue!1880 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695)))))))) b!1540215))

(declare-fun m!1814300 () Bool)

(assert (=> b!1540215 m!1814300))

(declare-fun m!1814302 () Bool)

(assert (=> setNonEmpty!10164 m!1814302))

(declare-fun b!1540217 () Bool)

(declare-fun e!985894 () Bool)

(declare-fun tp!446005 () Bool)

(assert (=> b!1540217 (= e!985894 tp!446005)))

(declare-fun setRes!10165 () Bool)

(declare-fun b!1540218 () Bool)

(declare-fun tp!446007 () Bool)

(declare-fun e!985895 () Bool)

(assert (=> b!1540218 (= e!985895 (and (inv!21703 (_1!8944 (_1!8945 (h!21843 (minValue!1880 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695)))))))))) e!985894 tp_is_empty!7043 setRes!10165 tp!446007))))

(declare-fun condSetEmpty!10165 () Bool)

(assert (=> b!1540218 (= condSetEmpty!10165 (= (_2!8945 (h!21843 (minValue!1880 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695)))))))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setIsEmpty!10165 () Bool)

(assert (=> setIsEmpty!10165 setRes!10165))

(assert (=> b!1540012 (= tp!445953 e!985895)))

(declare-fun b!1540219 () Bool)

(declare-fun e!985896 () Bool)

(declare-fun tp!446006 () Bool)

(assert (=> b!1540219 (= e!985896 tp!446006)))

(declare-fun tp!446004 () Bool)

(declare-fun setNonEmpty!10165 () Bool)

(declare-fun setElem!10165 () Context!1458)

(assert (=> setNonEmpty!10165 (= setRes!10165 (and tp!446004 (inv!21703 setElem!10165) e!985896))))

(declare-fun setRest!10165 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10165 (= (_2!8945 (h!21843 (minValue!1880 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10165 true) setRest!10165))))

(assert (= b!1540218 b!1540217))

(assert (= (and b!1540218 condSetEmpty!10165) setIsEmpty!10165))

(assert (= (and b!1540218 (not condSetEmpty!10165)) setNonEmpty!10165))

(assert (= setNonEmpty!10165 b!1540219))

(assert (= (and b!1540012 ((_ is Cons!16442) (minValue!1880 (v!23252 (underlying!3455 (v!23253 (underlying!3456 (cache!1948 cacheUp!695)))))))) b!1540218))

(declare-fun m!1814304 () Bool)

(assert (=> b!1540218 m!1814304))

(declare-fun m!1814306 () Bool)

(assert (=> setNonEmpty!10165 m!1814306))

(declare-fun b!1540227 () Bool)

(declare-fun e!985902 () Bool)

(declare-fun tp!446015 () Bool)

(assert (=> b!1540227 (= e!985902 tp!446015)))

(declare-fun e!985901 () Bool)

(assert (=> b!1540027 (= tp!445977 e!985901)))

(declare-fun setIsEmpty!10168 () Bool)

(declare-fun setRes!10168 () Bool)

(assert (=> setIsEmpty!10168 setRes!10168))

(declare-fun b!1540226 () Bool)

(declare-fun tp!446016 () Bool)

(assert (=> b!1540226 (= e!985901 (and setRes!10168 tp!446016))))

(declare-fun condSetEmpty!10168 () Bool)

(assert (=> b!1540226 (= condSetEmpty!10168 (= (_1!8940 (_1!8941 (h!21840 mapDefault!7626))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun tp!446014 () Bool)

(declare-fun setElem!10168 () Context!1458)

(declare-fun setNonEmpty!10168 () Bool)

(assert (=> setNonEmpty!10168 (= setRes!10168 (and tp!446014 (inv!21703 setElem!10168) e!985902))))

(declare-fun setRest!10168 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10168 (= (_1!8940 (_1!8941 (h!21840 mapDefault!7626))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10168 true) setRest!10168))))

(assert (= (and b!1540226 condSetEmpty!10168) setIsEmpty!10168))

(assert (= (and b!1540226 (not condSetEmpty!10168)) setNonEmpty!10168))

(assert (= setNonEmpty!10168 b!1540227))

(assert (= (and b!1540027 ((_ is Cons!16439) mapDefault!7626)) b!1540226))

(declare-fun m!1814308 () Bool)

(assert (=> setNonEmpty!10168 m!1814308))

(declare-fun b!1540238 () Bool)

(declare-fun e!985905 () Bool)

(assert (=> b!1540238 (= e!985905 tp_is_empty!7043)))

(declare-fun b!1540239 () Bool)

(declare-fun tp!446028 () Bool)

(declare-fun tp!446030 () Bool)

(assert (=> b!1540239 (= e!985905 (and tp!446028 tp!446030))))

(declare-fun b!1540240 () Bool)

(declare-fun tp!446029 () Bool)

(assert (=> b!1540240 (= e!985905 tp!446029)))

(declare-fun b!1540241 () Bool)

(declare-fun tp!446031 () Bool)

(declare-fun tp!446027 () Bool)

(assert (=> b!1540241 (= e!985905 (and tp!446031 tp!446027))))

(assert (=> b!1540000 (= tp!445979 e!985905)))

(assert (= (and b!1540000 ((_ is ElementMatch!4211) (regex!2887 (h!21844 rulesArg!359)))) b!1540238))

(assert (= (and b!1540000 ((_ is Concat!7188) (regex!2887 (h!21844 rulesArg!359)))) b!1540239))

(assert (= (and b!1540000 ((_ is Star!4211) (regex!2887 (h!21844 rulesArg!359)))) b!1540240))

(assert (= (and b!1540000 ((_ is Union!4211) (regex!2887 (h!21844 rulesArg!359)))) b!1540241))

(declare-fun e!985912 () Bool)

(declare-fun setRes!10171 () Bool)

(declare-fun e!985913 () Bool)

(declare-fun b!1540250 () Bool)

(declare-fun tp!446042 () Bool)

(declare-fun tp!446046 () Bool)

(assert (=> b!1540250 (= e!985912 (and tp!446042 (inv!21703 (_2!8946 (_1!8947 (h!21845 (zeroValue!1881 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708)))))))))) e!985913 tp_is_empty!7043 setRes!10171 tp!446046))))

(declare-fun condSetEmpty!10171 () Bool)

(assert (=> b!1540250 (= condSetEmpty!10171 (= (_2!8947 (h!21845 (zeroValue!1881 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708)))))))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setIsEmpty!10171 () Bool)

(assert (=> setIsEmpty!10171 setRes!10171))

(declare-fun b!1540251 () Bool)

(declare-fun e!985914 () Bool)

(declare-fun tp!446045 () Bool)

(assert (=> b!1540251 (= e!985914 tp!446045)))

(declare-fun setElem!10171 () Context!1458)

(declare-fun tp!446043 () Bool)

(declare-fun setNonEmpty!10171 () Bool)

(assert (=> setNonEmpty!10171 (= setRes!10171 (and tp!446043 (inv!21703 setElem!10171) e!985914))))

(declare-fun setRest!10171 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10171 (= (_2!8947 (h!21845 (zeroValue!1881 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10171 true) setRest!10171))))

(assert (=> b!1540018 (= tp!445960 e!985912)))

(declare-fun b!1540252 () Bool)

(declare-fun tp!446044 () Bool)

(assert (=> b!1540252 (= e!985913 tp!446044)))

(assert (= b!1540250 b!1540252))

(assert (= (and b!1540250 condSetEmpty!10171) setIsEmpty!10171))

(assert (= (and b!1540250 (not condSetEmpty!10171)) setNonEmpty!10171))

(assert (= setNonEmpty!10171 b!1540251))

(assert (= (and b!1540018 ((_ is Cons!16444) (zeroValue!1881 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708)))))))) b!1540250))

(declare-fun m!1814310 () Bool)

(assert (=> b!1540250 m!1814310))

(declare-fun m!1814312 () Bool)

(assert (=> setNonEmpty!10171 m!1814312))

(declare-fun tp!446051 () Bool)

(declare-fun e!985916 () Bool)

(declare-fun e!985915 () Bool)

(declare-fun b!1540253 () Bool)

(declare-fun tp!446047 () Bool)

(declare-fun setRes!10172 () Bool)

(assert (=> b!1540253 (= e!985915 (and tp!446047 (inv!21703 (_2!8946 (_1!8947 (h!21845 (minValue!1881 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708)))))))))) e!985916 tp_is_empty!7043 setRes!10172 tp!446051))))

(declare-fun condSetEmpty!10172 () Bool)

(assert (=> b!1540253 (= condSetEmpty!10172 (= (_2!8947 (h!21845 (minValue!1881 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708)))))))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setIsEmpty!10172 () Bool)

(assert (=> setIsEmpty!10172 setRes!10172))

(declare-fun b!1540254 () Bool)

(declare-fun e!985917 () Bool)

(declare-fun tp!446050 () Bool)

(assert (=> b!1540254 (= e!985917 tp!446050)))

(declare-fun tp!446048 () Bool)

(declare-fun setNonEmpty!10172 () Bool)

(declare-fun setElem!10172 () Context!1458)

(assert (=> setNonEmpty!10172 (= setRes!10172 (and tp!446048 (inv!21703 setElem!10172) e!985917))))

(declare-fun setRest!10172 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10172 (= (_2!8947 (h!21845 (minValue!1881 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10172 true) setRest!10172))))

(assert (=> b!1540018 (= tp!445965 e!985915)))

(declare-fun b!1540255 () Bool)

(declare-fun tp!446049 () Bool)

(assert (=> b!1540255 (= e!985916 tp!446049)))

(assert (= b!1540253 b!1540255))

(assert (= (and b!1540253 condSetEmpty!10172) setIsEmpty!10172))

(assert (= (and b!1540253 (not condSetEmpty!10172)) setNonEmpty!10172))

(assert (= setNonEmpty!10172 b!1540254))

(assert (= (and b!1540018 ((_ is Cons!16444) (minValue!1881 (v!23255 (underlying!3457 (v!23256 (underlying!3458 (cache!1949 cacheDown!708)))))))) b!1540253))

(declare-fun m!1814314 () Bool)

(assert (=> b!1540253 m!1814314))

(declare-fun m!1814316 () Bool)

(assert (=> setNonEmpty!10172 m!1814316))

(declare-fun b!1540256 () Bool)

(declare-fun e!985918 () Bool)

(declare-fun tp!446053 () Bool)

(assert (=> b!1540256 (= e!985918 tp!446053)))

(declare-fun e!985919 () Bool)

(declare-fun setRes!10173 () Bool)

(declare-fun tp!446055 () Bool)

(declare-fun b!1540257 () Bool)

(assert (=> b!1540257 (= e!985919 (and (inv!21703 (_1!8944 (_1!8945 (h!21843 mapDefault!7627)))) e!985918 tp_is_empty!7043 setRes!10173 tp!446055))))

(declare-fun condSetEmpty!10173 () Bool)

(assert (=> b!1540257 (= condSetEmpty!10173 (= (_2!8945 (h!21843 mapDefault!7627)) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setIsEmpty!10173 () Bool)

(assert (=> setIsEmpty!10173 setRes!10173))

(assert (=> b!1540010 (= tp!445964 e!985919)))

(declare-fun b!1540258 () Bool)

(declare-fun e!985920 () Bool)

(declare-fun tp!446054 () Bool)

(assert (=> b!1540258 (= e!985920 tp!446054)))

(declare-fun setElem!10173 () Context!1458)

(declare-fun tp!446052 () Bool)

(declare-fun setNonEmpty!10173 () Bool)

(assert (=> setNonEmpty!10173 (= setRes!10173 (and tp!446052 (inv!21703 setElem!10173) e!985920))))

(declare-fun setRest!10173 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10173 (= (_2!8945 (h!21843 mapDefault!7627)) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10173 true) setRest!10173))))

(assert (= b!1540257 b!1540256))

(assert (= (and b!1540257 condSetEmpty!10173) setIsEmpty!10173))

(assert (= (and b!1540257 (not condSetEmpty!10173)) setNonEmpty!10173))

(assert (= setNonEmpty!10173 b!1540258))

(assert (= (and b!1540010 ((_ is Cons!16442) mapDefault!7627)) b!1540257))

(declare-fun m!1814318 () Bool)

(assert (=> b!1540257 m!1814318))

(declare-fun m!1814320 () Bool)

(assert (=> setNonEmpty!10173 m!1814320))

(declare-fun b!1540259 () Bool)

(declare-fun setRes!10174 () Bool)

(declare-fun tp!446056 () Bool)

(declare-fun e!985922 () Bool)

(declare-fun tp!446060 () Bool)

(declare-fun e!985921 () Bool)

(assert (=> b!1540259 (= e!985921 (and tp!446056 (inv!21703 (_2!8946 (_1!8947 (h!21845 mapDefault!7628)))) e!985922 tp_is_empty!7043 setRes!10174 tp!446060))))

(declare-fun condSetEmpty!10174 () Bool)

(assert (=> b!1540259 (= condSetEmpty!10174 (= (_2!8947 (h!21845 mapDefault!7628)) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setIsEmpty!10174 () Bool)

(assert (=> setIsEmpty!10174 setRes!10174))

(declare-fun b!1540260 () Bool)

(declare-fun e!985923 () Bool)

(declare-fun tp!446059 () Bool)

(assert (=> b!1540260 (= e!985923 tp!446059)))

(declare-fun setElem!10174 () Context!1458)

(declare-fun tp!446057 () Bool)

(declare-fun setNonEmpty!10174 () Bool)

(assert (=> setNonEmpty!10174 (= setRes!10174 (and tp!446057 (inv!21703 setElem!10174) e!985923))))

(declare-fun setRest!10174 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10174 (= (_2!8947 (h!21845 mapDefault!7628)) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10174 true) setRest!10174))))

(assert (=> b!1540019 (= tp!445968 e!985921)))

(declare-fun b!1540261 () Bool)

(declare-fun tp!446058 () Bool)

(assert (=> b!1540261 (= e!985922 tp!446058)))

(assert (= b!1540259 b!1540261))

(assert (= (and b!1540259 condSetEmpty!10174) setIsEmpty!10174))

(assert (= (and b!1540259 (not condSetEmpty!10174)) setNonEmpty!10174))

(assert (= setNonEmpty!10174 b!1540260))

(assert (= (and b!1540019 ((_ is Cons!16444) mapDefault!7628)) b!1540259))

(declare-fun m!1814322 () Bool)

(assert (=> b!1540259 m!1814322))

(declare-fun m!1814324 () Bool)

(assert (=> setNonEmpty!10174 m!1814324))

(declare-fun e!985936 () Bool)

(declare-fun setNonEmpty!10179 () Bool)

(declare-fun setElem!10180 () Context!1458)

(declare-fun tp!446092 () Bool)

(declare-fun setRes!10180 () Bool)

(assert (=> setNonEmpty!10179 (= setRes!10180 (and tp!446092 (inv!21703 setElem!10180) e!985936))))

(declare-fun mapValue!7631 () List!16512)

(declare-fun setRest!10180 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10179 (= (_2!8947 (h!21845 mapValue!7631)) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10180 true) setRest!10180))))

(declare-fun b!1540276 () Bool)

(declare-fun e!985937 () Bool)

(declare-fun tp!446087 () Bool)

(assert (=> b!1540276 (= e!985937 tp!446087)))

(declare-fun setNonEmpty!10180 () Bool)

(declare-fun tp!446093 () Bool)

(declare-fun setRes!10179 () Bool)

(declare-fun setElem!10179 () Context!1458)

(assert (=> setNonEmpty!10180 (= setRes!10179 (and tp!446093 (inv!21703 setElem!10179) e!985937))))

(declare-fun mapDefault!7631 () List!16512)

(declare-fun setRest!10179 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10180 (= (_2!8947 (h!21845 mapDefault!7631)) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10179 true) setRest!10179))))

(declare-fun b!1540277 () Bool)

(declare-fun e!985940 () Bool)

(declare-fun tp!446088 () Bool)

(assert (=> b!1540277 (= e!985940 tp!446088)))

(declare-fun mapIsEmpty!7631 () Bool)

(declare-fun mapRes!7631 () Bool)

(assert (=> mapIsEmpty!7631 mapRes!7631))

(declare-fun condMapEmpty!7631 () Bool)

(assert (=> mapNonEmpty!7627 (= condMapEmpty!7631 (= mapRest!7628 ((as const (Array (_ BitVec 32) List!16512)) mapDefault!7631)))))

(declare-fun e!985939 () Bool)

(assert (=> mapNonEmpty!7627 (= tp!445957 (and e!985939 mapRes!7631))))

(declare-fun b!1540278 () Bool)

(declare-fun tp!446083 () Bool)

(assert (=> b!1540278 (= e!985936 tp!446083)))

(declare-fun setIsEmpty!10179 () Bool)

(assert (=> setIsEmpty!10179 setRes!10180))

(declare-fun b!1540279 () Bool)

(declare-fun tp!446085 () Bool)

(declare-fun e!985938 () Bool)

(declare-fun tp!446084 () Bool)

(assert (=> b!1540279 (= e!985939 (and tp!446085 (inv!21703 (_2!8946 (_1!8947 (h!21845 mapDefault!7631)))) e!985938 tp_is_empty!7043 setRes!10179 tp!446084))))

(declare-fun condSetEmpty!10179 () Bool)

(assert (=> b!1540279 (= condSetEmpty!10179 (= (_2!8947 (h!21845 mapDefault!7631)) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun mapNonEmpty!7631 () Bool)

(declare-fun tp!446086 () Bool)

(declare-fun e!985941 () Bool)

(assert (=> mapNonEmpty!7631 (= mapRes!7631 (and tp!446086 e!985941))))

(declare-fun mapKey!7631 () (_ BitVec 32))

(declare-fun mapRest!7631 () (Array (_ BitVec 32) List!16512))

(assert (=> mapNonEmpty!7631 (= mapRest!7628 (store mapRest!7631 mapKey!7631 mapValue!7631))))

(declare-fun setIsEmpty!10180 () Bool)

(assert (=> setIsEmpty!10180 setRes!10179))

(declare-fun tp!446089 () Bool)

(declare-fun b!1540280 () Bool)

(declare-fun tp!446091 () Bool)

(assert (=> b!1540280 (= e!985941 (and tp!446091 (inv!21703 (_2!8946 (_1!8947 (h!21845 mapValue!7631)))) e!985940 tp_is_empty!7043 setRes!10180 tp!446089))))

(declare-fun condSetEmpty!10180 () Bool)

(assert (=> b!1540280 (= condSetEmpty!10180 (= (_2!8947 (h!21845 mapValue!7631)) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun b!1540281 () Bool)

(declare-fun tp!446090 () Bool)

(assert (=> b!1540281 (= e!985938 tp!446090)))

(assert (= (and mapNonEmpty!7627 condMapEmpty!7631) mapIsEmpty!7631))

(assert (= (and mapNonEmpty!7627 (not condMapEmpty!7631)) mapNonEmpty!7631))

(assert (= b!1540280 b!1540277))

(assert (= (and b!1540280 condSetEmpty!10180) setIsEmpty!10179))

(assert (= (and b!1540280 (not condSetEmpty!10180)) setNonEmpty!10179))

(assert (= setNonEmpty!10179 b!1540278))

(assert (= (and mapNonEmpty!7631 ((_ is Cons!16444) mapValue!7631)) b!1540280))

(assert (= b!1540279 b!1540281))

(assert (= (and b!1540279 condSetEmpty!10179) setIsEmpty!10180))

(assert (= (and b!1540279 (not condSetEmpty!10179)) setNonEmpty!10180))

(assert (= setNonEmpty!10180 b!1540276))

(assert (= (and mapNonEmpty!7627 ((_ is Cons!16444) mapDefault!7631)) b!1540279))

(declare-fun m!1814326 () Bool)

(assert (=> mapNonEmpty!7631 m!1814326))

(declare-fun m!1814328 () Bool)

(assert (=> setNonEmpty!10180 m!1814328))

(declare-fun m!1814330 () Bool)

(assert (=> setNonEmpty!10179 m!1814330))

(declare-fun m!1814332 () Bool)

(assert (=> b!1540280 m!1814332))

(declare-fun m!1814334 () Bool)

(assert (=> b!1540279 m!1814334))

(declare-fun e!985942 () Bool)

(declare-fun b!1540282 () Bool)

(declare-fun tp!446098 () Bool)

(declare-fun setRes!10181 () Bool)

(declare-fun e!985943 () Bool)

(declare-fun tp!446094 () Bool)

(assert (=> b!1540282 (= e!985942 (and tp!446094 (inv!21703 (_2!8946 (_1!8947 (h!21845 mapValue!7628)))) e!985943 tp_is_empty!7043 setRes!10181 tp!446098))))

(declare-fun condSetEmpty!10181 () Bool)

(assert (=> b!1540282 (= condSetEmpty!10181 (= (_2!8947 (h!21845 mapValue!7628)) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setIsEmpty!10181 () Bool)

(assert (=> setIsEmpty!10181 setRes!10181))

(declare-fun b!1540283 () Bool)

(declare-fun e!985944 () Bool)

(declare-fun tp!446097 () Bool)

(assert (=> b!1540283 (= e!985944 tp!446097)))

(declare-fun tp!446095 () Bool)

(declare-fun setElem!10181 () Context!1458)

(declare-fun setNonEmpty!10181 () Bool)

(assert (=> setNonEmpty!10181 (= setRes!10181 (and tp!446095 (inv!21703 setElem!10181) e!985944))))

(declare-fun setRest!10181 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10181 (= (_2!8947 (h!21845 mapValue!7628)) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10181 true) setRest!10181))))

(assert (=> mapNonEmpty!7627 (= tp!445974 e!985942)))

(declare-fun b!1540284 () Bool)

(declare-fun tp!446096 () Bool)

(assert (=> b!1540284 (= e!985943 tp!446096)))

(assert (= b!1540282 b!1540284))

(assert (= (and b!1540282 condSetEmpty!10181) setIsEmpty!10181))

(assert (= (and b!1540282 (not condSetEmpty!10181)) setNonEmpty!10181))

(assert (= setNonEmpty!10181 b!1540283))

(assert (= (and mapNonEmpty!7627 ((_ is Cons!16444) mapValue!7628)) b!1540282))

(declare-fun m!1814336 () Bool)

(assert (=> b!1540282 m!1814336))

(declare-fun m!1814338 () Bool)

(assert (=> setNonEmpty!10181 m!1814338))

(declare-fun b!1540295 () Bool)

(declare-fun b_free!40263 () Bool)

(declare-fun b_next!40967 () Bool)

(assert (=> b!1540295 (= b_free!40263 (not b_next!40967))))

(declare-fun tp!446110 () Bool)

(declare-fun b_and!107141 () Bool)

(assert (=> b!1540295 (= tp!446110 b_and!107141)))

(declare-fun b_free!40265 () Bool)

(declare-fun b_next!40969 () Bool)

(assert (=> b!1540295 (= b_free!40265 (not b_next!40969))))

(declare-fun tp!446109 () Bool)

(declare-fun b_and!107143 () Bool)

(assert (=> b!1540295 (= tp!446109 b_and!107143)))

(declare-fun e!985954 () Bool)

(assert (=> b!1540295 (= e!985954 (and tp!446110 tp!446109))))

(declare-fun e!985953 () Bool)

(declare-fun b!1540294 () Bool)

(declare-fun tp!446107 () Bool)

(assert (=> b!1540294 (= e!985953 (and tp!446107 (inv!21691 (tag!3151 (h!21844 (t!140717 rulesArg!359)))) (inv!21695 (transformation!2887 (h!21844 (t!140717 rulesArg!359)))) e!985954))))

(declare-fun b!1540293 () Bool)

(declare-fun e!985955 () Bool)

(declare-fun tp!446108 () Bool)

(assert (=> b!1540293 (= e!985955 (and e!985953 tp!446108))))

(assert (=> b!1540017 (= tp!445970 e!985955)))

(assert (= b!1540294 b!1540295))

(assert (= b!1540293 b!1540294))

(assert (= (and b!1540017 ((_ is Cons!16443) (t!140717 rulesArg!359))) b!1540293))

(declare-fun m!1814340 () Bool)

(assert (=> b!1540294 m!1814340))

(declare-fun m!1814342 () Bool)

(assert (=> b!1540294 m!1814342))

(declare-fun tp!446111 () Bool)

(declare-fun b!1540296 () Bool)

(declare-fun tp!446113 () Bool)

(declare-fun e!985958 () Bool)

(assert (=> b!1540296 (= e!985958 (and (inv!21696 (left!13478 (c!251688 input!1460))) tp!446111 (inv!21696 (right!13808 (c!251688 input!1460))) tp!446113))))

(declare-fun b!1540298 () Bool)

(declare-fun e!985957 () Bool)

(declare-fun tp!446112 () Bool)

(assert (=> b!1540298 (= e!985957 tp!446112)))

(declare-fun b!1540297 () Bool)

(assert (=> b!1540297 (= e!985958 (and (inv!21702 (xs!8304 (c!251688 input!1460))) e!985957))))

(assert (=> b!1540026 (= tp!445958 (and (inv!21696 (c!251688 input!1460)) e!985958))))

(assert (= (and b!1540026 ((_ is Node!5504) (c!251688 input!1460))) b!1540296))

(assert (= b!1540297 b!1540298))

(assert (= (and b!1540026 ((_ is Leaf!8155) (c!251688 input!1460))) b!1540297))

(declare-fun m!1814344 () Bool)

(assert (=> b!1540296 m!1814344))

(declare-fun m!1814346 () Bool)

(assert (=> b!1540296 m!1814346))

(declare-fun m!1814348 () Bool)

(assert (=> b!1540297 m!1814348))

(assert (=> b!1540026 m!1814082))

(declare-fun b!1540300 () Bool)

(declare-fun e!985960 () Bool)

(declare-fun tp!446115 () Bool)

(assert (=> b!1540300 (= e!985960 tp!446115)))

(declare-fun e!985959 () Bool)

(assert (=> b!1539998 (= tp!445972 e!985959)))

(declare-fun setIsEmpty!10182 () Bool)

(declare-fun setRes!10182 () Bool)

(assert (=> setIsEmpty!10182 setRes!10182))

(declare-fun b!1540299 () Bool)

(declare-fun tp!446116 () Bool)

(assert (=> b!1540299 (= e!985959 (and setRes!10182 tp!446116))))

(declare-fun condSetEmpty!10182 () Bool)

(assert (=> b!1540299 (= condSetEmpty!10182 (= (_1!8940 (_1!8941 (h!21840 (zeroValue!1879 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun tp!446114 () Bool)

(declare-fun setElem!10182 () Context!1458)

(declare-fun setNonEmpty!10182 () Bool)

(assert (=> setNonEmpty!10182 (= setRes!10182 (and tp!446114 (inv!21703 setElem!10182) e!985960))))

(declare-fun setRest!10182 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10182 (= (_1!8940 (_1!8941 (h!21840 (zeroValue!1879 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10182 true) setRest!10182))))

(assert (= (and b!1540299 condSetEmpty!10182) setIsEmpty!10182))

(assert (= (and b!1540299 (not condSetEmpty!10182)) setNonEmpty!10182))

(assert (= setNonEmpty!10182 b!1540300))

(assert (= (and b!1539998 ((_ is Cons!16439) (zeroValue!1879 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81)))))))) b!1540299))

(declare-fun m!1814350 () Bool)

(assert (=> setNonEmpty!10182 m!1814350))

(declare-fun b!1540302 () Bool)

(declare-fun e!985962 () Bool)

(declare-fun tp!446118 () Bool)

(assert (=> b!1540302 (= e!985962 tp!446118)))

(declare-fun e!985961 () Bool)

(assert (=> b!1539998 (= tp!445967 e!985961)))

(declare-fun setIsEmpty!10183 () Bool)

(declare-fun setRes!10183 () Bool)

(assert (=> setIsEmpty!10183 setRes!10183))

(declare-fun b!1540301 () Bool)

(declare-fun tp!446119 () Bool)

(assert (=> b!1540301 (= e!985961 (and setRes!10183 tp!446119))))

(declare-fun condSetEmpty!10183 () Bool)

(assert (=> b!1540301 (= condSetEmpty!10183 (= (_1!8940 (_1!8941 (h!21840 (minValue!1879 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setNonEmpty!10183 () Bool)

(declare-fun tp!446117 () Bool)

(declare-fun setElem!10183 () Context!1458)

(assert (=> setNonEmpty!10183 (= setRes!10183 (and tp!446117 (inv!21703 setElem!10183) e!985962))))

(declare-fun setRest!10183 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10183 (= (_1!8940 (_1!8941 (h!21840 (minValue!1879 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10183 true) setRest!10183))))

(assert (= (and b!1540301 condSetEmpty!10183) setIsEmpty!10183))

(assert (= (and b!1540301 (not condSetEmpty!10183)) setNonEmpty!10183))

(assert (= setNonEmpty!10183 b!1540302))

(assert (= (and b!1539998 ((_ is Cons!16439) (minValue!1879 (v!23250 (underlying!3453 (v!23251 (underlying!3454 (cache!1947 cacheFurthestNullable!81)))))))) b!1540301))

(declare-fun m!1814352 () Bool)

(assert (=> setNonEmpty!10183 m!1814352))

(declare-fun b!1540313 () Bool)

(declare-fun e!985972 () Bool)

(declare-fun tp!446137 () Bool)

(assert (=> b!1540313 (= e!985972 tp!446137)))

(declare-fun setElem!10188 () Context!1458)

(declare-fun tp!446138 () Bool)

(declare-fun e!985974 () Bool)

(declare-fun setRes!10189 () Bool)

(declare-fun setNonEmpty!10188 () Bool)

(assert (=> setNonEmpty!10188 (= setRes!10189 (and tp!446138 (inv!21703 setElem!10188) e!985974))))

(declare-fun mapDefault!7634 () List!16507)

(declare-fun setRest!10189 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10188 (= (_1!8940 (_1!8941 (h!21840 mapDefault!7634))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10188 true) setRest!10189))))

(declare-fun setIsEmpty!10188 () Bool)

(assert (=> setIsEmpty!10188 setRes!10189))

(declare-fun setIsEmpty!10189 () Bool)

(declare-fun setRes!10188 () Bool)

(assert (=> setIsEmpty!10189 setRes!10188))

(declare-fun condMapEmpty!7634 () Bool)

(assert (=> mapNonEmpty!7626 (= condMapEmpty!7634 (= mapRest!7626 ((as const (Array (_ BitVec 32) List!16507)) mapDefault!7634)))))

(declare-fun e!985973 () Bool)

(declare-fun mapRes!7634 () Bool)

(assert (=> mapNonEmpty!7626 (= tp!445971 (and e!985973 mapRes!7634))))

(declare-fun b!1540314 () Bool)

(declare-fun e!985971 () Bool)

(declare-fun tp!446135 () Bool)

(assert (=> b!1540314 (= e!985971 (and setRes!10188 tp!446135))))

(declare-fun condSetEmpty!10189 () Bool)

(declare-fun mapValue!7634 () List!16507)

(assert (=> b!1540314 (= condSetEmpty!10189 (= (_1!8940 (_1!8941 (h!21840 mapValue!7634))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun b!1540315 () Bool)

(declare-fun tp!446140 () Bool)

(assert (=> b!1540315 (= e!985974 tp!446140)))

(declare-fun b!1540316 () Bool)

(declare-fun tp!446136 () Bool)

(assert (=> b!1540316 (= e!985973 (and setRes!10189 tp!446136))))

(declare-fun condSetEmpty!10188 () Bool)

(assert (=> b!1540316 (= condSetEmpty!10188 (= (_1!8940 (_1!8941 (h!21840 mapDefault!7634))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun mapNonEmpty!7634 () Bool)

(declare-fun tp!446134 () Bool)

(assert (=> mapNonEmpty!7634 (= mapRes!7634 (and tp!446134 e!985971))))

(declare-fun mapRest!7634 () (Array (_ BitVec 32) List!16507))

(declare-fun mapKey!7634 () (_ BitVec 32))

(assert (=> mapNonEmpty!7634 (= mapRest!7626 (store mapRest!7634 mapKey!7634 mapValue!7634))))

(declare-fun setNonEmpty!10189 () Bool)

(declare-fun setElem!10189 () Context!1458)

(declare-fun tp!446139 () Bool)

(assert (=> setNonEmpty!10189 (= setRes!10188 (and tp!446139 (inv!21703 setElem!10189) e!985972))))

(declare-fun setRest!10188 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10189 (= (_1!8940 (_1!8941 (h!21840 mapValue!7634))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10189 true) setRest!10188))))

(declare-fun mapIsEmpty!7634 () Bool)

(assert (=> mapIsEmpty!7634 mapRes!7634))

(assert (= (and mapNonEmpty!7626 condMapEmpty!7634) mapIsEmpty!7634))

(assert (= (and mapNonEmpty!7626 (not condMapEmpty!7634)) mapNonEmpty!7634))

(assert (= (and b!1540314 condSetEmpty!10189) setIsEmpty!10189))

(assert (= (and b!1540314 (not condSetEmpty!10189)) setNonEmpty!10189))

(assert (= setNonEmpty!10189 b!1540313))

(assert (= (and mapNonEmpty!7634 ((_ is Cons!16439) mapValue!7634)) b!1540314))

(assert (= (and b!1540316 condSetEmpty!10188) setIsEmpty!10188))

(assert (= (and b!1540316 (not condSetEmpty!10188)) setNonEmpty!10188))

(assert (= setNonEmpty!10188 b!1540315))

(assert (= (and mapNonEmpty!7626 ((_ is Cons!16439) mapDefault!7634)) b!1540316))

(declare-fun m!1814354 () Bool)

(assert (=> setNonEmpty!10188 m!1814354))

(declare-fun m!1814356 () Bool)

(assert (=> mapNonEmpty!7634 m!1814356))

(declare-fun m!1814358 () Bool)

(assert (=> setNonEmpty!10189 m!1814358))

(declare-fun b!1540318 () Bool)

(declare-fun e!985976 () Bool)

(declare-fun tp!446142 () Bool)

(assert (=> b!1540318 (= e!985976 tp!446142)))

(declare-fun e!985975 () Bool)

(assert (=> mapNonEmpty!7626 (= tp!445952 e!985975)))

(declare-fun setIsEmpty!10190 () Bool)

(declare-fun setRes!10190 () Bool)

(assert (=> setIsEmpty!10190 setRes!10190))

(declare-fun b!1540317 () Bool)

(declare-fun tp!446143 () Bool)

(assert (=> b!1540317 (= e!985975 (and setRes!10190 tp!446143))))

(declare-fun condSetEmpty!10190 () Bool)

(assert (=> b!1540317 (= condSetEmpty!10190 (= (_1!8940 (_1!8941 (h!21840 mapValue!7626))) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setNonEmpty!10190 () Bool)

(declare-fun setElem!10190 () Context!1458)

(declare-fun tp!446141 () Bool)

(assert (=> setNonEmpty!10190 (= setRes!10190 (and tp!446141 (inv!21703 setElem!10190) e!985976))))

(declare-fun setRest!10190 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10190 (= (_1!8940 (_1!8941 (h!21840 mapValue!7626))) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10190 true) setRest!10190))))

(assert (= (and b!1540317 condSetEmpty!10190) setIsEmpty!10190))

(assert (= (and b!1540317 (not condSetEmpty!10190)) setNonEmpty!10190))

(assert (= setNonEmpty!10190 b!1540318))

(assert (= (and mapNonEmpty!7626 ((_ is Cons!16439) mapValue!7626)) b!1540317))

(declare-fun m!1814360 () Bool)

(assert (=> setNonEmpty!10190 m!1814360))

(declare-fun setIsEmpty!10195 () Bool)

(declare-fun setRes!10196 () Bool)

(assert (=> setIsEmpty!10195 setRes!10196))

(declare-fun tp!446170 () Bool)

(declare-fun setNonEmpty!10195 () Bool)

(declare-fun e!985990 () Bool)

(declare-fun setElem!10195 () Context!1458)

(assert (=> setNonEmpty!10195 (= setRes!10196 (and tp!446170 (inv!21703 setElem!10195) e!985990))))

(declare-fun mapDefault!7637 () List!16510)

(declare-fun setRest!10195 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10195 (= (_2!8945 (h!21843 mapDefault!7637)) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10195 true) setRest!10195))))

(declare-fun condMapEmpty!7637 () Bool)

(assert (=> mapNonEmpty!7628 (= condMapEmpty!7637 (= mapRest!7627 ((as const (Array (_ BitVec 32) List!16510)) mapDefault!7637)))))

(declare-fun e!985989 () Bool)

(declare-fun mapRes!7637 () Bool)

(assert (=> mapNonEmpty!7628 (= tp!445956 (and e!985989 mapRes!7637))))

(declare-fun tp!446163 () Bool)

(declare-fun e!985991 () Bool)

(declare-fun e!985993 () Bool)

(declare-fun setRes!10195 () Bool)

(declare-fun mapValue!7637 () List!16510)

(declare-fun b!1540333 () Bool)

(assert (=> b!1540333 (= e!985993 (and (inv!21703 (_1!8944 (_1!8945 (h!21843 mapValue!7637)))) e!985991 tp_is_empty!7043 setRes!10195 tp!446163))))

(declare-fun condSetEmpty!10196 () Bool)

(assert (=> b!1540333 (= condSetEmpty!10196 (= (_2!8945 (h!21843 mapValue!7637)) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun b!1540334 () Bool)

(declare-fun tp!446168 () Bool)

(assert (=> b!1540334 (= e!985990 tp!446168)))

(declare-fun b!1540335 () Bool)

(declare-fun tp!446164 () Bool)

(assert (=> b!1540335 (= e!985991 tp!446164)))

(declare-fun mapNonEmpty!7637 () Bool)

(declare-fun tp!446167 () Bool)

(assert (=> mapNonEmpty!7637 (= mapRes!7637 (and tp!446167 e!985993))))

(declare-fun mapRest!7637 () (Array (_ BitVec 32) List!16510))

(declare-fun mapKey!7637 () (_ BitVec 32))

(assert (=> mapNonEmpty!7637 (= mapRest!7627 (store mapRest!7637 mapKey!7637 mapValue!7637))))

(declare-fun b!1540336 () Bool)

(declare-fun tp!446162 () Bool)

(declare-fun e!985992 () Bool)

(assert (=> b!1540336 (= e!985989 (and (inv!21703 (_1!8944 (_1!8945 (h!21843 mapDefault!7637)))) e!985992 tp_is_empty!7043 setRes!10196 tp!446162))))

(declare-fun condSetEmpty!10195 () Bool)

(assert (=> b!1540336 (= condSetEmpty!10195 (= (_2!8945 (h!21843 mapDefault!7637)) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun tp!446165 () Bool)

(declare-fun setNonEmpty!10196 () Bool)

(declare-fun setElem!10196 () Context!1458)

(declare-fun e!985994 () Bool)

(assert (=> setNonEmpty!10196 (= setRes!10195 (and tp!446165 (inv!21703 setElem!10196) e!985994))))

(declare-fun setRest!10196 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10196 (= (_2!8945 (h!21843 mapValue!7637)) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10196 true) setRest!10196))))

(declare-fun mapIsEmpty!7637 () Bool)

(assert (=> mapIsEmpty!7637 mapRes!7637))

(declare-fun setIsEmpty!10196 () Bool)

(assert (=> setIsEmpty!10196 setRes!10195))

(declare-fun b!1540337 () Bool)

(declare-fun tp!446169 () Bool)

(assert (=> b!1540337 (= e!985992 tp!446169)))

(declare-fun b!1540338 () Bool)

(declare-fun tp!446166 () Bool)

(assert (=> b!1540338 (= e!985994 tp!446166)))

(assert (= (and mapNonEmpty!7628 condMapEmpty!7637) mapIsEmpty!7637))

(assert (= (and mapNonEmpty!7628 (not condMapEmpty!7637)) mapNonEmpty!7637))

(assert (= b!1540333 b!1540335))

(assert (= (and b!1540333 condSetEmpty!10196) setIsEmpty!10196))

(assert (= (and b!1540333 (not condSetEmpty!10196)) setNonEmpty!10196))

(assert (= setNonEmpty!10196 b!1540338))

(assert (= (and mapNonEmpty!7637 ((_ is Cons!16442) mapValue!7637)) b!1540333))

(assert (= b!1540336 b!1540337))

(assert (= (and b!1540336 condSetEmpty!10195) setIsEmpty!10195))

(assert (= (and b!1540336 (not condSetEmpty!10195)) setNonEmpty!10195))

(assert (= setNonEmpty!10195 b!1540334))

(assert (= (and mapNonEmpty!7628 ((_ is Cons!16442) mapDefault!7637)) b!1540336))

(declare-fun m!1814362 () Bool)

(assert (=> b!1540336 m!1814362))

(declare-fun m!1814364 () Bool)

(assert (=> setNonEmpty!10196 m!1814364))

(declare-fun m!1814366 () Bool)

(assert (=> mapNonEmpty!7637 m!1814366))

(declare-fun m!1814368 () Bool)

(assert (=> setNonEmpty!10195 m!1814368))

(declare-fun m!1814370 () Bool)

(assert (=> b!1540333 m!1814370))

(declare-fun b!1540339 () Bool)

(declare-fun e!985995 () Bool)

(declare-fun tp!446172 () Bool)

(assert (=> b!1540339 (= e!985995 tp!446172)))

(declare-fun tp!446174 () Bool)

(declare-fun setRes!10197 () Bool)

(declare-fun b!1540340 () Bool)

(declare-fun e!985996 () Bool)

(assert (=> b!1540340 (= e!985996 (and (inv!21703 (_1!8944 (_1!8945 (h!21843 mapValue!7627)))) e!985995 tp_is_empty!7043 setRes!10197 tp!446174))))

(declare-fun condSetEmpty!10197 () Bool)

(assert (=> b!1540340 (= condSetEmpty!10197 (= (_2!8945 (h!21843 mapValue!7627)) ((as const (Array Context!1458 Bool)) false)))))

(declare-fun setIsEmpty!10197 () Bool)

(assert (=> setIsEmpty!10197 setRes!10197))

(assert (=> mapNonEmpty!7628 (= tp!445955 e!985996)))

(declare-fun b!1540341 () Bool)

(declare-fun e!985997 () Bool)

(declare-fun tp!446173 () Bool)

(assert (=> b!1540341 (= e!985997 tp!446173)))

(declare-fun setNonEmpty!10197 () Bool)

(declare-fun setElem!10197 () Context!1458)

(declare-fun tp!446171 () Bool)

(assert (=> setNonEmpty!10197 (= setRes!10197 (and tp!446171 (inv!21703 setElem!10197) e!985997))))

(declare-fun setRest!10197 () (InoxSet Context!1458))

(assert (=> setNonEmpty!10197 (= (_2!8945 (h!21843 mapValue!7627)) ((_ map or) (store ((as const (Array Context!1458 Bool)) false) setElem!10197 true) setRest!10197))))

(assert (= b!1540340 b!1540339))

(assert (= (and b!1540340 condSetEmpty!10197) setIsEmpty!10197))

(assert (= (and b!1540340 (not condSetEmpty!10197)) setNonEmpty!10197))

(assert (= setNonEmpty!10197 b!1540341))

(assert (= (and mapNonEmpty!7628 ((_ is Cons!16442) mapValue!7627)) b!1540340))

(declare-fun m!1814372 () Bool)

(assert (=> b!1540340 m!1814372))

(declare-fun m!1814374 () Bool)

(assert (=> setNonEmpty!10197 m!1814374))

(check-sat (not b_next!40957) (not b!1540144) (not b!1540140) (not b!1540189) (not setNonEmpty!10165) (not setNonEmpty!10183) (not mapNonEmpty!7634) tp_is_empty!7043 (not b_next!40963) (not setNonEmpty!10196) (not b!1540135) (not d!458557) (not b!1540062) b_and!107135 (not b!1540049) (not b!1540142) (not setNonEmpty!10171) (not b!1540256) (not b!1540252) (not d!458535) (not b!1540205) (not d!458555) (not b!1540202) (not b!1540219) b_and!107133 (not b!1540173) (not b!1540239) (not b!1540106) (not b!1540139) (not b!1540283) (not b!1540240) (not b_next!40951) (not d!458513) (not b!1540298) (not bm!101589) (not b!1540301) (not b!1540255) (not b!1540138) (not b!1540037) (not b!1540092) (not b!1540280) (not b!1540091) (not b!1540002) (not b!1540109) (not d!458537) (not b!1540031) (not setNonEmpty!10179) (not b!1540281) (not b!1540297) (not b!1540217) (not setNonEmpty!10188) (not b!1540300) (not setNonEmpty!10173) (not setNonEmpty!10190) (not b!1540098) (not setNonEmpty!10189) (not d!458551) (not setNonEmpty!10197) (not b!1540169) (not b!1540317) (not setNonEmpty!10164) (not b!1540218) (not b_next!40959) (not b!1540241) b_and!107139 (not b!1540215) b_and!107141 (not b!1540174) (not b!1540047) (not b!1540338) (not b!1540095) (not b!1540318) (not b!1540097) (not d!458507) (not setNonEmpty!10181) (not b!1540170) (not b!1540336) (not b!1540214) (not b_next!40967) (not b!1540333) (not b!1540055) b_and!107127 (not bm!101586) (not d!458523) (not d!458497) (not b!1540302) (not b!1540337) (not mapNonEmpty!7637) (not b!1540048) (not b!1540141) (not b!1540103) b_and!107137 (not b_next!40953) b_and!107131 (not b!1540299) (not b!1540093) (not b!1540136) (not b!1540293) (not b!1540278) (not b!1540227) (not b!1540188) (not d!458561) (not b!1540201) (not setNonEmpty!10195) b_and!107125 (not b!1540254) (not b_next!40965) (not b_next!40955) (not mapNonEmpty!7631) (not setNonEmpty!10182) (not b!1540276) (not b!1540090) (not b!1540216) (not b!1540096) (not b!1540257) (not b!1540065) (not b!1540070) (not b_next!40969) (not b!1540340) (not b!1540200) (not b!1540251) (not setNonEmpty!10174) (not b!1540100) (not b!1540261) (not d!458491) (not d!458503) (not b!1540089) (not b!1540259) (not b!1540316) (not b!1540064) (not d!458505) (not d!458533) (not setNonEmpty!10172) (not b!1540341) (not b!1540296) (not d!458495) b_and!107143 (not b!1540258) (not b!1540260) (not b!1540134) (not b!1540172) (not b!1540282) (not d!458547) (not b!1540335) (not b!1540253) (not b!1540339) (not b!1540203) (not b!1540168) (not b!1540315) (not b_next!40961) (not d!458527) (not b!1540175) (not b!1540279) b_and!107129 (not b!1540334) (not b!1540313) (not b!1540145) (not b!1540226) (not b!1540026) (not b!1540294) (not b!1540204) (not setNonEmpty!10180) (not b!1540314) (not b!1540250) (not bm!101592) (not d!458493) (not b!1540067) (not d!458499) (not setNonEmpty!10168) (not b!1540171) (not b!1540277) (not b!1540284) (not d!458559))
(check-sat (not b_next!40963) b_and!107135 b_and!107133 (not b_next!40951) (not b_next!40967) b_and!107127 b_and!107125 (not b_next!40969) b_and!107143 (not b_next!40957) (not b_next!40961) b_and!107129 (not b_next!40959) b_and!107139 b_and!107141 b_and!107137 (not b_next!40953) b_and!107131 (not b_next!40965) (not b_next!40955))
