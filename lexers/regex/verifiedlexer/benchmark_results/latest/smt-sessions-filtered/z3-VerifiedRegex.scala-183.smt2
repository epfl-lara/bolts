; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2212 () Bool)

(assert start!2212)

(declare-fun b!40482 () Bool)

(declare-fun b_free!861 () Bool)

(declare-fun b_next!861 () Bool)

(assert (=> b!40482 (= b_free!861 (not b_next!861))))

(declare-fun tp!28065 () Bool)

(declare-fun b_and!895 () Bool)

(assert (=> b!40482 (= tp!28065 b_and!895)))

(declare-fun b!40479 () Bool)

(declare-fun b_free!863 () Bool)

(declare-fun b_next!863 () Bool)

(assert (=> b!40479 (= b_free!863 (not b_next!863))))

(declare-fun tp!28067 () Bool)

(declare-fun b_and!897 () Bool)

(assert (=> b!40479 (= tp!28067 b_and!897)))

(declare-fun b!40468 () Bool)

(declare-fun b_free!865 () Bool)

(declare-fun b_next!865 () Bool)

(assert (=> b!40468 (= b_free!865 (not b_next!865))))

(declare-fun tp!28053 () Bool)

(declare-fun b_and!899 () Bool)

(assert (=> b!40468 (= tp!28053 b_and!899)))

(declare-fun b!40471 () Bool)

(declare-fun b_free!867 () Bool)

(declare-fun b_next!867 () Bool)

(assert (=> b!40471 (= b_free!867 (not b_next!867))))

(declare-fun tp!28059 () Bool)

(declare-fun b_and!901 () Bool)

(assert (=> b!40471 (= tp!28059 b_and!901)))

(declare-fun b!40486 () Bool)

(declare-fun b_free!869 () Bool)

(declare-fun b_next!869 () Bool)

(assert (=> b!40486 (= b_free!869 (not b_next!869))))

(declare-fun tp!28068 () Bool)

(declare-fun b_and!903 () Bool)

(assert (=> b!40486 (= tp!28068 b_and!903)))

(declare-fun b!40461 () Bool)

(declare-fun b_free!871 () Bool)

(declare-fun b_next!871 () Bool)

(assert (=> b!40461 (= b_free!871 (not b_next!871))))

(declare-fun tp!28061 () Bool)

(declare-fun b_and!905 () Bool)

(assert (=> b!40461 (= tp!28061 b_and!905)))

(declare-fun b!40499 () Bool)

(declare-fun e!20933 () Bool)

(assert (=> b!40499 (= e!20933 true)))

(declare-fun b!40498 () Bool)

(declare-fun e!20932 () Bool)

(assert (=> b!40498 (= e!20932 e!20933)))

(declare-fun b!40497 () Bool)

(declare-fun e!20931 () Bool)

(assert (=> b!40497 (= e!20931 e!20932)))

(declare-fun b!40488 () Bool)

(assert (=> b!40488 e!20931))

(assert (= b!40498 b!40499))

(assert (= b!40497 b!40498))

(declare-datatypes ((List!559 0))(
  ( (Nil!557) (Cons!557 (h!5953 (_ BitVec 16)) (t!15869 List!559)) )
))
(declare-datatypes ((TokenValue!137 0))(
  ( (FloatLiteralValue!274 (text!1404 List!559)) (TokenValueExt!136 (__x!986 Int)) (Broken!685 (value!6971 List!559)) (Object!138) (End!137) (Def!137) (Underscore!137) (Match!137) (Else!137) (Error!137) (Case!137) (If!137) (Extends!137) (Abstract!137) (Class!137) (Val!137) (DelimiterValue!274 (del!197 List!559)) (KeywordValue!143 (value!6972 List!559)) (CommentValue!274 (value!6973 List!559)) (WhitespaceValue!274 (value!6974 List!559)) (IndentationValue!137 (value!6975 List!559)) (String!976) (Int32!137) (Broken!686 (value!6976 List!559)) (Boolean!138) (Unit!251) (OperatorValue!140 (op!197 List!559)) (IdentifierValue!274 (value!6977 List!559)) (IdentifierValue!275 (value!6978 List!559)) (WhitespaceValue!275 (value!6979 List!559)) (True!274) (False!274) (Broken!687 (value!6980 List!559)) (Broken!688 (value!6981 List!559)) (True!275) (RightBrace!137) (RightBracket!137) (Colon!137) (Null!137) (Comma!137) (LeftBracket!137) (False!275) (LeftBrace!137) (ImaginaryLiteralValue!137 (text!1405 List!559)) (StringLiteralValue!411 (value!6982 List!559)) (EOFValue!137 (value!6983 List!559)) (IdentValue!137 (value!6984 List!559)) (DelimiterValue!275 (value!6985 List!559)) (DedentValue!137 (value!6986 List!559)) (NewLineValue!137 (value!6987 List!559)) (IntegerValue!411 (value!6988 (_ BitVec 32)) (text!1406 List!559)) (IntegerValue!412 (value!6989 Int) (text!1407 List!559)) (Times!137) (Or!137) (Equal!137) (Minus!137) (Broken!689 (value!6990 List!559)) (And!137) (Div!137) (LessEqual!137) (Mod!137) (Concat!348) (Not!137) (Plus!137) (SpaceValue!137 (value!6991 List!559)) (IntegerValue!413 (value!6992 Int) (text!1408 List!559)) (StringLiteralValue!412 (text!1409 List!559)) (FloatLiteralValue!275 (text!1410 List!559)) (BytesLiteralValue!137 (value!6993 List!559)) (CommentValue!275 (value!6994 List!559)) (StringLiteralValue!413 (value!6995 List!559)) (ErrorTokenValue!137 (msg!198 List!559)) )
))
(declare-datatypes ((Regex!211 0))(
  ( (ElementMatch!211 (c!15806 (_ BitVec 16))) (Concat!349 (regOne!934 Regex!211) (regTwo!934 Regex!211)) (EmptyExpr!211) (Star!211 (reg!540 Regex!211)) (EmptyLang!211) (Union!211 (regOne!935 Regex!211) (regTwo!935 Regex!211)) )
))
(declare-datatypes ((String!977 0))(
  ( (String!978 (value!6996 String)) )
))
(declare-datatypes ((IArray!195 0))(
  ( (IArray!196 (innerList!155 List!559)) )
))
(declare-datatypes ((Conc!97 0))(
  ( (Node!97 (left!496 Conc!97) (right!826 Conc!97) (csize!424 Int) (cheight!308 Int)) (Leaf!281 (xs!2676 IArray!195) (csize!425 Int)) (Empty!97) )
))
(declare-datatypes ((BalanceConc!194 0))(
  ( (BalanceConc!195 (c!15807 Conc!97)) )
))
(declare-datatypes ((TokenValueInjection!98 0))(
  ( (TokenValueInjection!99 (toValue!626 Int) (toChars!485 Int)) )
))
(declare-datatypes ((Rule!94 0))(
  ( (Rule!95 (regex!147 Regex!211) (tag!325 String!977) (isSeparator!147 Bool) (transformation!147 TokenValueInjection!98)) )
))
(declare-datatypes ((List!560 0))(
  ( (Nil!558) (Cons!558 (h!5954 Rule!94) (t!15870 List!560)) )
))
(declare-fun lt!4139 () List!560)

(get-info :version)

(assert (= (and b!40488 ((_ is Cons!558) lt!4139)) b!40497))

(declare-fun lambda!665 () Int)

(declare-fun order!91 () Int)

(declare-fun order!93 () Int)

(declare-fun dynLambda!62 (Int Int) Int)

(declare-fun dynLambda!63 (Int Int) Int)

(assert (=> b!40499 (< (dynLambda!62 order!91 (toValue!626 (transformation!147 (h!5954 lt!4139)))) (dynLambda!63 order!93 lambda!665))))

(declare-fun order!95 () Int)

(declare-fun dynLambda!64 (Int Int) Int)

(assert (=> b!40499 (< (dynLambda!64 order!95 (toChars!485 (transformation!147 (h!5954 lt!4139)))) (dynLambda!63 order!93 lambda!665))))

(declare-fun b!40449 () Bool)

(declare-fun e!20900 () Bool)

(declare-fun e!20920 () Bool)

(assert (=> b!40449 (= e!20900 e!20920)))

(declare-fun res!29173 () Bool)

(assert (=> b!40449 (=> (not res!29173) (not e!20920))))

(declare-datatypes ((Token!62 0))(
  ( (Token!63 (value!6997 TokenValue!137) (rule!624 Rule!94) (size!572 Int) (originalCharacters!202 List!559)) )
))
(declare-datatypes ((List!561 0))(
  ( (Nil!559) (Cons!559 (h!5955 Token!62) (t!15871 List!561)) )
))
(declare-fun lt!4133 () List!561)

(declare-datatypes ((IArray!197 0))(
  ( (IArray!198 (innerList!156 List!561)) )
))
(declare-datatypes ((Conc!98 0))(
  ( (Node!98 (left!497 Conc!98) (right!827 Conc!98) (csize!426 Int) (cheight!309 Int)) (Leaf!282 (xs!2677 IArray!197) (csize!427 Int)) (Empty!98) )
))
(declare-datatypes ((BalanceConc!196 0))(
  ( (BalanceConc!197 (c!15808 Conc!98)) )
))
(declare-datatypes ((tuple2!628 0))(
  ( (tuple2!629 (_1!428 BalanceConc!196) (_2!428 BalanceConc!194)) )
))
(declare-fun lt!4141 () tuple2!628)

(declare-fun list!138 (BalanceConc!196) List!561)

(assert (=> b!40449 (= res!29173 (= lt!4133 (list!138 (_1!428 lt!4141))))))

(declare-fun lt!4140 () BalanceConc!194)

(declare-datatypes ((LexerInterface!43 0))(
  ( (LexerInterfaceExt!40 (__x!987 Int)) (Lexer!41) )
))
(declare-fun lex!17 (LexerInterface!43 List!560 BalanceConc!194) tuple2!628)

(assert (=> b!40449 (= lt!4141 (lex!17 Lexer!41 lt!4139 lt!4140))))

(declare-fun res!29185 () Bool)

(declare-fun e!20924 () Bool)

(assert (=> start!2212 (=> (not res!29185) (not e!20924))))

(declare-fun isEmpty!112 (List!560) Bool)

(assert (=> start!2212 (= res!29185 (not (isEmpty!112 lt!4139)))))

(declare-datatypes ((JsonLexer!48 0))(
  ( (JsonLexer!49) )
))
(declare-fun rules!109 (JsonLexer!48) List!560)

(assert (=> start!2212 (= lt!4139 (rules!109 JsonLexer!49))))

(assert (=> start!2212 e!20924))

(declare-datatypes ((List!562 0))(
  ( (Nil!560) (Cons!560 (h!5956 Regex!211) (t!15872 List!562)) )
))
(declare-datatypes ((Context!138 0))(
  ( (Context!139 (exprs!569 List!562)) )
))
(declare-datatypes ((tuple3!190 0))(
  ( (tuple3!191 (_1!429 Regex!211) (_2!429 Context!138) (_3!114 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!630 0))(
  ( (tuple2!631 (_1!430 tuple3!190) (_2!430 (InoxSet Context!138))) )
))
(declare-datatypes ((List!563 0))(
  ( (Nil!561) (Cons!561 (h!5957 tuple2!630) (t!15873 List!563)) )
))
(declare-datatypes ((array!586 0))(
  ( (array!587 (arr!300 (Array (_ BitVec 32) List!563)) (size!573 (_ BitVec 32))) )
))
(declare-datatypes ((array!588 0))(
  ( (array!589 (arr!301 (Array (_ BitVec 32) (_ BitVec 64))) (size!574 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!354 0))(
  ( (LongMapFixedSize!355 (defaultEntry!515 Int) (mask!884 (_ BitVec 32)) (extraKeys!423 (_ BitVec 32)) (zeroValue!433 List!563) (minValue!433 List!563) (_size!486 (_ BitVec 32)) (_keys!468 array!588) (_values!455 array!586) (_vacant!237 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!697 0))(
  ( (Cell!698 (v!12327 LongMapFixedSize!354)) )
))
(declare-datatypes ((MutLongMap!177 0))(
  ( (LongMap!177 (underlying!549 Cell!697)) (MutLongMapExt!176 (__x!988 Int)) )
))
(declare-datatypes ((Cell!699 0))(
  ( (Cell!700 (v!12328 MutLongMap!177)) )
))
(declare-datatypes ((Hashable!173 0))(
  ( (HashableExt!172 (__x!989 Int)) )
))
(declare-datatypes ((MutableMap!173 0))(
  ( (MutableMapExt!172 (__x!990 Int)) (HashMap!173 (underlying!550 Cell!699) (hashF!2041 Hashable!173) (_size!487 (_ BitVec 32)) (defaultValue!322 Int)) )
))
(declare-datatypes ((CacheDown!118 0))(
  ( (CacheDown!119 (cache!658 MutableMap!173)) )
))
(declare-fun cacheDown!333 () CacheDown!118)

(declare-fun e!20918 () Bool)

(declare-fun inv!842 (CacheDown!118) Bool)

(assert (=> start!2212 (and (inv!842 cacheDown!333) e!20918)))

(declare-fun input!525 () BalanceConc!194)

(declare-fun e!20922 () Bool)

(declare-fun inv!843 (BalanceConc!194) Bool)

(assert (=> start!2212 (and (inv!843 input!525) e!20922)))

(declare-datatypes ((tuple3!192 0))(
  ( (tuple3!193 (_1!431 (InoxSet Context!138)) (_2!431 Int) (_3!115 Int)) )
))
(declare-datatypes ((tuple2!632 0))(
  ( (tuple2!633 (_1!432 tuple3!192) (_2!432 Int)) )
))
(declare-datatypes ((List!564 0))(
  ( (Nil!562) (Cons!562 (h!5958 tuple2!632) (t!15874 List!564)) )
))
(declare-datatypes ((array!590 0))(
  ( (array!591 (arr!302 (Array (_ BitVec 32) List!564)) (size!575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!356 0))(
  ( (LongMapFixedSize!357 (defaultEntry!516 Int) (mask!885 (_ BitVec 32)) (extraKeys!424 (_ BitVec 32)) (zeroValue!434 List!564) (minValue!434 List!564) (_size!488 (_ BitVec 32)) (_keys!469 array!588) (_values!456 array!590) (_vacant!238 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!174 0))(
  ( (HashableExt!173 (__x!991 Int)) )
))
(declare-datatypes ((Cell!701 0))(
  ( (Cell!702 (v!12329 LongMapFixedSize!356)) )
))
(declare-datatypes ((MutLongMap!178 0))(
  ( (LongMap!178 (underlying!551 Cell!701)) (MutLongMapExt!177 (__x!992 Int)) )
))
(declare-datatypes ((Cell!703 0))(
  ( (Cell!704 (v!12330 MutLongMap!178)) )
))
(declare-datatypes ((MutableMap!174 0))(
  ( (MutableMapExt!173 (__x!993 Int)) (HashMap!174 (underlying!552 Cell!703) (hashF!2042 Hashable!174) (_size!489 (_ BitVec 32)) (defaultValue!323 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!66 0))(
  ( (CacheFurthestNullable!67 (cache!659 MutableMap!174) (totalInput!1510 BalanceConc!194)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!66)

(declare-fun e!20895 () Bool)

(declare-fun inv!844 (CacheFurthestNullable!66) Bool)

(assert (=> start!2212 (and (inv!844 cacheFurthestNullable!45) e!20895)))

(declare-datatypes ((Hashable!175 0))(
  ( (HashableExt!174 (__x!994 Int)) )
))
(declare-datatypes ((tuple2!634 0))(
  ( (tuple2!635 (_1!433 Context!138) (_2!433 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!636 0))(
  ( (tuple2!637 (_1!434 tuple2!634) (_2!434 (InoxSet Context!138))) )
))
(declare-datatypes ((List!565 0))(
  ( (Nil!563) (Cons!563 (h!5959 tuple2!636) (t!15875 List!565)) )
))
(declare-datatypes ((array!592 0))(
  ( (array!593 (arr!303 (Array (_ BitVec 32) List!565)) (size!576 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!358 0))(
  ( (LongMapFixedSize!359 (defaultEntry!517 Int) (mask!886 (_ BitVec 32)) (extraKeys!425 (_ BitVec 32)) (zeroValue!435 List!565) (minValue!435 List!565) (_size!490 (_ BitVec 32)) (_keys!470 array!588) (_values!457 array!592) (_vacant!239 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!705 0))(
  ( (Cell!706 (v!12331 LongMapFixedSize!358)) )
))
(declare-datatypes ((MutLongMap!179 0))(
  ( (LongMap!179 (underlying!553 Cell!705)) (MutLongMapExt!178 (__x!995 Int)) )
))
(declare-datatypes ((Cell!707 0))(
  ( (Cell!708 (v!12332 MutLongMap!179)) )
))
(declare-datatypes ((MutableMap!175 0))(
  ( (MutableMapExt!174 (__x!996 Int)) (HashMap!175 (underlying!554 Cell!707) (hashF!2043 Hashable!175) (_size!491 (_ BitVec 32)) (defaultValue!324 Int)) )
))
(declare-datatypes ((CacheUp!118 0))(
  ( (CacheUp!119 (cache!660 MutableMap!175)) )
))
(declare-fun cacheUp!320 () CacheUp!118)

(declare-fun e!20917 () Bool)

(declare-fun inv!845 (CacheUp!118) Bool)

(assert (=> start!2212 (and (inv!845 cacheUp!320) e!20917)))

(declare-fun b!40450 () Bool)

(declare-fun e!20907 () Bool)

(declare-fun e!20914 () Bool)

(assert (=> b!40450 (= e!20907 e!20914)))

(declare-fun b!40451 () Bool)

(declare-fun res!29174 () Bool)

(assert (=> b!40451 (=> (not res!29174) (not e!20920))))

(declare-fun lt!4126 () List!559)

(declare-fun lexThenRulesProduceEachTokenIndividually!9 (LexerInterface!43 List!560 List!559) Bool)

(assert (=> b!40451 (= res!29174 (lexThenRulesProduceEachTokenIndividually!9 Lexer!41 lt!4139 lt!4126))))

(declare-fun b!40452 () Bool)

(declare-fun e!20899 () Bool)

(assert (=> b!40452 (= e!20914 e!20899)))

(declare-fun b!40453 () Bool)

(declare-fun e!20916 () Bool)

(declare-fun e!20894 () Bool)

(assert (=> b!40453 (= e!20916 e!20894)))

(declare-fun b!40454 () Bool)

(declare-fun e!20913 () Bool)

(declare-fun e!20923 () Bool)

(assert (=> b!40454 (= e!20913 e!20923)))

(declare-fun res!29186 () Bool)

(assert (=> b!40454 (=> (not res!29186) (not e!20923))))

(declare-fun lt!4127 () List!559)

(declare-fun lt!4128 () List!559)

(assert (=> b!40454 (= res!29186 (= lt!4127 lt!4128))))

(declare-fun lt!4129 () tuple2!628)

(declare-fun list!139 (BalanceConc!194) List!559)

(assert (=> b!40454 (= lt!4128 (list!139 (_2!428 lt!4129)))))

(declare-datatypes ((tuple4!38 0))(
  ( (tuple4!39 (_1!435 tuple2!628) (_2!435 CacheUp!118) (_3!116 CacheDown!118) (_4!19 CacheFurthestNullable!66)) )
))
(declare-fun lt!4132 () tuple4!38)

(assert (=> b!40454 (= lt!4127 (list!139 (_2!428 (_1!435 lt!4132))))))

(declare-fun b!40455 () Bool)

(declare-fun e!20896 () Bool)

(declare-fun tp!28069 () Bool)

(declare-fun mapRes!626 () Bool)

(assert (=> b!40455 (= e!20896 (and tp!28069 mapRes!626))))

(declare-fun condMapEmpty!626 () Bool)

(declare-fun mapDefault!627 () List!565)

(assert (=> b!40455 (= condMapEmpty!626 (= (arr!303 (_values!457 (v!12331 (underlying!553 (v!12332 (underlying!554 (cache!660 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!565)) mapDefault!627)))))

(declare-fun b!40456 () Bool)

(assert (=> b!40456 (= e!20920 false)))

(declare-fun lt!4131 () Bool)

(declare-fun valid!171 (CacheFurthestNullable!66) Bool)

(assert (=> b!40456 (= lt!4131 (valid!171 (_4!19 lt!4132)))))

(declare-fun mapNonEmpty!625 () Bool)

(declare-fun tp!28070 () Bool)

(declare-fun tp!28054 () Bool)

(assert (=> mapNonEmpty!625 (= mapRes!626 (and tp!28070 tp!28054))))

(declare-fun mapRest!627 () (Array (_ BitVec 32) List!565))

(declare-fun mapValue!625 () List!565)

(declare-fun mapKey!625 () (_ BitVec 32))

(assert (=> mapNonEmpty!625 (= (arr!303 (_values!457 (v!12331 (underlying!553 (v!12332 (underlying!554 (cache!660 cacheUp!320))))))) (store mapRest!627 mapKey!625 mapValue!625))))

(declare-fun b!40457 () Bool)

(declare-fun res!29184 () Bool)

(assert (=> b!40457 (=> (not res!29184) (not e!20924))))

(declare-fun rulesInvariant!34 (LexerInterface!43 List!560) Bool)

(assert (=> b!40457 (= res!29184 (rulesInvariant!34 Lexer!41 lt!4139))))

(declare-fun mapIsEmpty!625 () Bool)

(declare-fun mapRes!625 () Bool)

(assert (=> mapIsEmpty!625 mapRes!625))

(declare-fun mapIsEmpty!626 () Bool)

(assert (=> mapIsEmpty!626 mapRes!626))

(declare-fun b!40458 () Bool)

(declare-fun e!20915 () Bool)

(declare-fun tp!28060 () Bool)

(declare-fun mapRes!627 () Bool)

(assert (=> b!40458 (= e!20915 (and tp!28060 mapRes!627))))

(declare-fun condMapEmpty!627 () Bool)

(declare-fun mapDefault!626 () List!563)

(assert (=> b!40458 (= condMapEmpty!627 (= (arr!300 (_values!455 (v!12327 (underlying!549 (v!12328 (underlying!550 (cache!658 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!563)) mapDefault!626)))))

(declare-fun b!40459 () Bool)

(declare-fun e!20908 () Bool)

(declare-fun e!20904 () Bool)

(assert (=> b!40459 (= e!20908 e!20904)))

(declare-fun b!40460 () Bool)

(declare-fun res!29183 () Bool)

(assert (=> b!40460 (=> (not res!29183) (not e!20924))))

(declare-fun valid!172 (CacheUp!118) Bool)

(assert (=> b!40460 (= res!29183 (valid!172 cacheUp!320))))

(declare-fun e!20898 () Bool)

(declare-fun e!20912 () Bool)

(assert (=> b!40461 (= e!20898 (and e!20912 tp!28061))))

(declare-fun b!40462 () Bool)

(assert (=> b!40462 (= e!20923 e!20900)))

(declare-fun res!29178 () Bool)

(assert (=> b!40462 (=> (not res!29178) (not e!20900))))

(assert (=> b!40462 (= res!29178 (= (list!139 lt!4140) lt!4126))))

(declare-fun seqFromList!16 (List!559) BalanceConc!194)

(assert (=> b!40462 (= lt!4140 (seqFromList!16 lt!4126))))

(assert (=> b!40462 (= lt!4126 (list!139 input!525))))

(declare-fun b!40463 () Bool)

(declare-fun e!20903 () Bool)

(declare-fun e!20910 () Bool)

(declare-fun lt!4135 () MutLongMap!177)

(assert (=> b!40463 (= e!20903 (and e!20910 ((_ is LongMap!177) lt!4135)))))

(assert (=> b!40463 (= lt!4135 (v!12328 (underlying!550 (cache!658 cacheDown!333))))))

(declare-fun b!40464 () Bool)

(declare-fun e!20911 () Bool)

(declare-fun tp!28071 () Bool)

(declare-fun inv!846 (Conc!97) Bool)

(assert (=> b!40464 (= e!20911 (and (inv!846 (c!15807 (totalInput!1510 cacheFurthestNullable!45))) tp!28071))))

(declare-fun b!40465 () Bool)

(declare-fun res!29188 () Bool)

(assert (=> b!40465 (=> (not res!29188) (not e!20924))))

(assert (=> b!40465 (= res!29188 (= (totalInput!1510 cacheFurthestNullable!45) input!525))))

(declare-fun b!40466 () Bool)

(declare-fun res!29176 () Bool)

(assert (=> b!40466 (=> (not res!29176) (not e!20920))))

(declare-fun forall!56 (BalanceConc!196 Int) Bool)

(assert (=> b!40466 (= res!29176 (forall!56 (_1!428 (_1!435 lt!4132)) lambda!665))))

(declare-fun b!40467 () Bool)

(declare-fun lt!4137 () MutLongMap!178)

(assert (=> b!40467 (= e!20912 (and e!20907 ((_ is LongMap!178) lt!4137)))))

(assert (=> b!40467 (= lt!4137 (v!12330 (underlying!552 (cache!659 cacheFurthestNullable!45))))))

(declare-fun tp!28056 () Bool)

(declare-fun tp!28066 () Bool)

(declare-fun e!20909 () Bool)

(declare-fun array_inv!193 (array!588) Bool)

(declare-fun array_inv!194 (array!590) Bool)

(assert (=> b!40468 (= e!20899 (and tp!28053 tp!28066 tp!28056 (array_inv!193 (_keys!469 (v!12329 (underlying!551 (v!12330 (underlying!552 (cache!659 cacheFurthestNullable!45))))))) (array_inv!194 (_values!456 (v!12329 (underlying!551 (v!12330 (underlying!552 (cache!659 cacheFurthestNullable!45))))))) e!20909))))

(declare-fun mapNonEmpty!626 () Bool)

(declare-fun tp!28072 () Bool)

(declare-fun tp!28073 () Bool)

(assert (=> mapNonEmpty!626 (= mapRes!627 (and tp!28072 tp!28073))))

(declare-fun mapRest!626 () (Array (_ BitVec 32) List!563))

(declare-fun mapValue!626 () List!563)

(declare-fun mapKey!626 () (_ BitVec 32))

(assert (=> mapNonEmpty!626 (= (arr!300 (_values!455 (v!12327 (underlying!549 (v!12328 (underlying!550 (cache!658 cacheDown!333))))))) (store mapRest!626 mapKey!626 mapValue!626))))

(declare-fun b!40469 () Bool)

(assert (=> b!40469 (= e!20910 e!20916)))

(declare-fun b!40470 () Bool)

(assert (=> b!40470 (= e!20924 e!20913)))

(declare-fun res!29187 () Bool)

(assert (=> b!40470 (=> (not res!29187) (not e!20913))))

(declare-fun lt!4138 () List!561)

(assert (=> b!40470 (= res!29187 (= lt!4138 lt!4133))))

(assert (=> b!40470 (= lt!4133 (list!138 (_1!428 lt!4129)))))

(assert (=> b!40470 (= lt!4138 (list!138 (_1!428 (_1!435 lt!4132))))))

(assert (=> b!40470 (= lt!4129 (lex!17 Lexer!41 lt!4139 input!525))))

(declare-datatypes ((Unit!252 0))(
  ( (Unit!253) )
))
(declare-fun lt!4134 () Unit!252)

(declare-fun lemmaInvariant!29 (CacheDown!118) Unit!252)

(assert (=> b!40470 (= lt!4134 (lemmaInvariant!29 (_3!116 lt!4132)))))

(declare-fun lt!4130 () Unit!252)

(declare-fun lemmaInvariant!30 (CacheUp!118) Unit!252)

(assert (=> b!40470 (= lt!4130 (lemmaInvariant!30 (_2!435 lt!4132)))))

(declare-fun lexMem!13 (LexerInterface!43 List!560 BalanceConc!194 CacheUp!118 CacheDown!118 CacheFurthestNullable!66) tuple4!38)

(assert (=> b!40470 (= lt!4132 (lexMem!13 Lexer!41 lt!4139 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun e!20906 () Bool)

(declare-fun e!20897 () Bool)

(assert (=> b!40471 (= e!20906 (and e!20897 tp!28059))))

(declare-fun b!40472 () Bool)

(declare-fun tp!28052 () Bool)

(assert (=> b!40472 (= e!20922 (and (inv!846 (c!15807 input!525)) tp!28052))))

(declare-fun b!40473 () Bool)

(declare-fun res!29179 () Bool)

(assert (=> b!40473 (=> (not res!29179) (not e!20920))))

(assert (=> b!40473 (= res!29179 (valid!172 (_2!435 lt!4132)))))

(declare-fun b!40474 () Bool)

(assert (=> b!40474 (= e!20917 e!20906)))

(declare-fun b!40475 () Bool)

(declare-fun e!20902 () Bool)

(assert (=> b!40475 (= e!20918 e!20902)))

(declare-fun b!40476 () Bool)

(declare-fun lt!4136 () MutLongMap!179)

(assert (=> b!40476 (= e!20897 (and e!20908 ((_ is LongMap!179) lt!4136)))))

(assert (=> b!40476 (= lt!4136 (v!12332 (underlying!554 (cache!660 cacheUp!320))))))

(declare-fun b!40477 () Bool)

(declare-fun res!29180 () Bool)

(assert (=> b!40477 (=> (not res!29180) (not e!20924))))

(declare-fun valid!173 (CacheDown!118) Bool)

(assert (=> b!40477 (= res!29180 (valid!173 cacheDown!333))))

(declare-fun b!40478 () Bool)

(declare-fun e!20919 () Bool)

(assert (=> b!40478 (= e!20904 e!20919)))

(declare-fun tp!28055 () Bool)

(declare-fun tp!28062 () Bool)

(declare-fun array_inv!195 (array!592) Bool)

(assert (=> b!40479 (= e!20919 (and tp!28067 tp!28062 tp!28055 (array_inv!193 (_keys!470 (v!12331 (underlying!553 (v!12332 (underlying!554 (cache!660 cacheUp!320))))))) (array_inv!195 (_values!457 (v!12331 (underlying!553 (v!12332 (underlying!554 (cache!660 cacheUp!320))))))) e!20896))))

(declare-fun b!40480 () Bool)

(declare-fun res!29189 () Bool)

(assert (=> b!40480 (=> (not res!29189) (not e!20920))))

(declare-fun rulesProduceEachTokenIndividuallyList!5 (LexerInterface!43 List!560 List!561) Bool)

(assert (=> b!40480 (= res!29189 (rulesProduceEachTokenIndividuallyList!5 Lexer!41 lt!4139 lt!4138))))

(declare-fun b!40481 () Bool)

(assert (=> b!40481 (= e!20895 (and e!20898 (inv!843 (totalInput!1510 cacheFurthestNullable!45)) e!20911))))

(assert (=> b!40482 (= e!20902 (and e!20903 tp!28065))))

(declare-fun b!40483 () Bool)

(declare-fun res!29175 () Bool)

(assert (=> b!40483 (=> (not res!29175) (not e!20920))))

(assert (=> b!40483 (= res!29175 (valid!173 (_3!116 lt!4132)))))

(declare-fun b!40484 () Bool)

(declare-fun res!29181 () Bool)

(assert (=> b!40484 (=> (not res!29181) (not e!20924))))

(assert (=> b!40484 (= res!29181 (valid!171 cacheFurthestNullable!45))))

(declare-fun b!40485 () Bool)

(declare-fun tp!28051 () Bool)

(assert (=> b!40485 (= e!20909 (and tp!28051 mapRes!625))))

(declare-fun condMapEmpty!625 () Bool)

(declare-fun mapDefault!625 () List!564)

(assert (=> b!40485 (= condMapEmpty!625 (= (arr!302 (_values!456 (v!12329 (underlying!551 (v!12330 (underlying!552 (cache!659 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!564)) mapDefault!625)))))

(declare-fun mapNonEmpty!627 () Bool)

(declare-fun tp!28058 () Bool)

(declare-fun tp!28064 () Bool)

(assert (=> mapNonEmpty!627 (= mapRes!625 (and tp!28058 tp!28064))))

(declare-fun mapRest!625 () (Array (_ BitVec 32) List!564))

(declare-fun mapValue!627 () List!564)

(declare-fun mapKey!627 () (_ BitVec 32))

(assert (=> mapNonEmpty!627 (= (arr!302 (_values!456 (v!12329 (underlying!551 (v!12330 (underlying!552 (cache!659 cacheFurthestNullable!45))))))) (store mapRest!625 mapKey!627 mapValue!627))))

(declare-fun mapIsEmpty!627 () Bool)

(assert (=> mapIsEmpty!627 mapRes!627))

(declare-fun tp!28057 () Bool)

(declare-fun tp!28063 () Bool)

(declare-fun array_inv!196 (array!586) Bool)

(assert (=> b!40486 (= e!20894 (and tp!28068 tp!28063 tp!28057 (array_inv!193 (_keys!468 (v!12327 (underlying!549 (v!12328 (underlying!550 (cache!658 cacheDown!333))))))) (array_inv!196 (_values!455 (v!12327 (underlying!549 (v!12328 (underlying!550 (cache!658 cacheDown!333))))))) e!20915))))

(declare-fun b!40487 () Bool)

(declare-fun res!29182 () Bool)

(assert (=> b!40487 (=> (not res!29182) (not e!20920))))

(assert (=> b!40487 (= res!29182 (= lt!4128 (list!139 (_2!428 lt!4141))))))

(declare-fun res!29177 () Bool)

(assert (=> b!40488 (=> (not res!29177) (not e!20920))))

(declare-fun forall!57 (List!561 Int) Bool)

(assert (=> b!40488 (= res!29177 (forall!57 lt!4138 lambda!665))))

(assert (= (and start!2212 res!29185) b!40457))

(assert (= (and b!40457 res!29184) b!40460))

(assert (= (and b!40460 res!29183) b!40477))

(assert (= (and b!40477 res!29180) b!40484))

(assert (= (and b!40484 res!29181) b!40465))

(assert (= (and b!40465 res!29188) b!40470))

(assert (= (and b!40470 res!29187) b!40454))

(assert (= (and b!40454 res!29186) b!40462))

(assert (= (and b!40462 res!29178) b!40449))

(assert (= (and b!40449 res!29173) b!40487))

(assert (= (and b!40487 res!29182) b!40451))

(assert (= (and b!40451 res!29174) b!40488))

(assert (= (and b!40488 res!29177) b!40466))

(assert (= (and b!40466 res!29176) b!40480))

(assert (= (and b!40480 res!29189) b!40473))

(assert (= (and b!40473 res!29179) b!40483))

(assert (= (and b!40483 res!29175) b!40456))

(assert (= (and b!40458 condMapEmpty!627) mapIsEmpty!627))

(assert (= (and b!40458 (not condMapEmpty!627)) mapNonEmpty!626))

(assert (= b!40486 b!40458))

(assert (= b!40453 b!40486))

(assert (= b!40469 b!40453))

(assert (= (and b!40463 ((_ is LongMap!177) (v!12328 (underlying!550 (cache!658 cacheDown!333))))) b!40469))

(assert (= b!40482 b!40463))

(assert (= (and b!40475 ((_ is HashMap!173) (cache!658 cacheDown!333))) b!40482))

(assert (= start!2212 b!40475))

(assert (= start!2212 b!40472))

(assert (= (and b!40485 condMapEmpty!625) mapIsEmpty!625))

(assert (= (and b!40485 (not condMapEmpty!625)) mapNonEmpty!627))

(assert (= b!40468 b!40485))

(assert (= b!40452 b!40468))

(assert (= b!40450 b!40452))

(assert (= (and b!40467 ((_ is LongMap!178) (v!12330 (underlying!552 (cache!659 cacheFurthestNullable!45))))) b!40450))

(assert (= b!40461 b!40467))

(assert (= (and b!40481 ((_ is HashMap!174) (cache!659 cacheFurthestNullable!45))) b!40461))

(assert (= b!40481 b!40464))

(assert (= start!2212 b!40481))

(assert (= (and b!40455 condMapEmpty!626) mapIsEmpty!626))

(assert (= (and b!40455 (not condMapEmpty!626)) mapNonEmpty!625))

(assert (= b!40479 b!40455))

(assert (= b!40478 b!40479))

(assert (= b!40459 b!40478))

(assert (= (and b!40476 ((_ is LongMap!179) (v!12332 (underlying!554 (cache!660 cacheUp!320))))) b!40459))

(assert (= b!40471 b!40476))

(assert (= (and b!40474 ((_ is HashMap!175) (cache!660 cacheUp!320))) b!40471))

(assert (= start!2212 b!40474))

(declare-fun m!13868 () Bool)

(assert (=> b!40484 m!13868))

(declare-fun m!13870 () Bool)

(assert (=> b!40486 m!13870))

(declare-fun m!13872 () Bool)

(assert (=> b!40486 m!13872))

(declare-fun m!13874 () Bool)

(assert (=> b!40464 m!13874))

(declare-fun m!13876 () Bool)

(assert (=> b!40481 m!13876))

(declare-fun m!13878 () Bool)

(assert (=> b!40480 m!13878))

(declare-fun m!13880 () Bool)

(assert (=> start!2212 m!13880))

(declare-fun m!13882 () Bool)

(assert (=> start!2212 m!13882))

(declare-fun m!13884 () Bool)

(assert (=> start!2212 m!13884))

(declare-fun m!13886 () Bool)

(assert (=> start!2212 m!13886))

(declare-fun m!13888 () Bool)

(assert (=> start!2212 m!13888))

(declare-fun m!13890 () Bool)

(assert (=> start!2212 m!13890))

(declare-fun m!13892 () Bool)

(assert (=> b!40483 m!13892))

(declare-fun m!13894 () Bool)

(assert (=> b!40472 m!13894))

(declare-fun m!13896 () Bool)

(assert (=> b!40468 m!13896))

(declare-fun m!13898 () Bool)

(assert (=> b!40468 m!13898))

(declare-fun m!13900 () Bool)

(assert (=> b!40456 m!13900))

(declare-fun m!13902 () Bool)

(assert (=> b!40462 m!13902))

(declare-fun m!13904 () Bool)

(assert (=> b!40462 m!13904))

(declare-fun m!13906 () Bool)

(assert (=> b!40462 m!13906))

(declare-fun m!13908 () Bool)

(assert (=> b!40473 m!13908))

(declare-fun m!13910 () Bool)

(assert (=> mapNonEmpty!625 m!13910))

(declare-fun m!13912 () Bool)

(assert (=> b!40466 m!13912))

(declare-fun m!13914 () Bool)

(assert (=> b!40451 m!13914))

(declare-fun m!13916 () Bool)

(assert (=> b!40457 m!13916))

(declare-fun m!13918 () Bool)

(assert (=> b!40477 m!13918))

(declare-fun m!13920 () Bool)

(assert (=> b!40479 m!13920))

(declare-fun m!13922 () Bool)

(assert (=> b!40479 m!13922))

(declare-fun m!13924 () Bool)

(assert (=> b!40487 m!13924))

(declare-fun m!13926 () Bool)

(assert (=> mapNonEmpty!626 m!13926))

(declare-fun m!13928 () Bool)

(assert (=> b!40488 m!13928))

(declare-fun m!13930 () Bool)

(assert (=> b!40454 m!13930))

(declare-fun m!13932 () Bool)

(assert (=> b!40454 m!13932))

(declare-fun m!13934 () Bool)

(assert (=> b!40460 m!13934))

(declare-fun m!13936 () Bool)

(assert (=> b!40449 m!13936))

(declare-fun m!13938 () Bool)

(assert (=> b!40449 m!13938))

(declare-fun m!13940 () Bool)

(assert (=> mapNonEmpty!627 m!13940))

(declare-fun m!13942 () Bool)

(assert (=> b!40470 m!13942))

(declare-fun m!13944 () Bool)

(assert (=> b!40470 m!13944))

(declare-fun m!13946 () Bool)

(assert (=> b!40470 m!13946))

(declare-fun m!13948 () Bool)

(assert (=> b!40470 m!13948))

(declare-fun m!13950 () Bool)

(assert (=> b!40470 m!13950))

(declare-fun m!13952 () Bool)

(assert (=> b!40470 m!13952))

(check-sat (not b!40487) (not b!40460) (not b!40451) (not b_next!867) (not b!40484) (not b!40458) (not b!40470) (not b!40466) (not start!2212) (not b!40454) (not b_next!861) b_and!905 (not b!40462) (not b_next!869) (not b_next!863) (not b!40488) (not b!40480) (not b!40455) (not b!40481) (not b!40485) (not b!40497) b_and!901 (not b_next!865) (not mapNonEmpty!626) b_and!903 (not b!40473) (not b!40456) (not b!40483) (not b!40468) (not mapNonEmpty!625) b_and!895 b_and!897 (not b!40479) (not b!40464) (not b!40457) b_and!899 (not b!40449) (not mapNonEmpty!627) (not b!40486) (not b!40472) (not b_next!871) (not b!40477))
(check-sat (not b_next!867) (not b_next!863) b_and!901 b_and!895 b_and!897 b_and!899 (not b_next!871) (not b_next!861) b_and!905 (not b_next!869) (not b_next!865) b_and!903)
