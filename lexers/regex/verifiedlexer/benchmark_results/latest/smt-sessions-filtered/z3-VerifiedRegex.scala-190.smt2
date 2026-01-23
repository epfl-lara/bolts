; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2588 () Bool)

(assert start!2588)

(declare-fun b!43011 () Bool)

(declare-fun b_free!1029 () Bool)

(declare-fun b_next!1029 () Bool)

(assert (=> b!43011 (= b_free!1029 (not b_next!1029))))

(declare-fun tp!29650 () Bool)

(declare-fun b_and!1063 () Bool)

(assert (=> b!43011 (= tp!29650 b_and!1063)))

(declare-fun b!43019 () Bool)

(declare-fun b_free!1031 () Bool)

(declare-fun b_next!1031 () Bool)

(assert (=> b!43019 (= b_free!1031 (not b_next!1031))))

(declare-fun tp!29638 () Bool)

(declare-fun b_and!1065 () Bool)

(assert (=> b!43019 (= tp!29638 b_and!1065)))

(declare-fun b!43017 () Bool)

(declare-fun b_free!1033 () Bool)

(declare-fun b_next!1033 () Bool)

(assert (=> b!43017 (= b_free!1033 (not b_next!1033))))

(declare-fun tp!29641 () Bool)

(declare-fun b_and!1067 () Bool)

(assert (=> b!43017 (= tp!29641 b_and!1067)))

(declare-fun b!42999 () Bool)

(declare-fun b_free!1035 () Bool)

(declare-fun b_next!1035 () Bool)

(assert (=> b!42999 (= b_free!1035 (not b_next!1035))))

(declare-fun tp!29636 () Bool)

(declare-fun b_and!1069 () Bool)

(assert (=> b!42999 (= tp!29636 b_and!1069)))

(declare-fun b!42996 () Bool)

(declare-fun b_free!1037 () Bool)

(declare-fun b_next!1037 () Bool)

(assert (=> b!42996 (= b_free!1037 (not b_next!1037))))

(declare-fun tp!29642 () Bool)

(declare-fun b_and!1071 () Bool)

(assert (=> b!42996 (= tp!29642 b_and!1071)))

(declare-fun b!43000 () Bool)

(declare-fun b_free!1039 () Bool)

(declare-fun b_next!1039 () Bool)

(assert (=> b!43000 (= b_free!1039 (not b_next!1039))))

(declare-fun tp!29651 () Bool)

(declare-fun b_and!1073 () Bool)

(assert (=> b!43000 (= tp!29651 b_and!1073)))

(declare-fun b!42987 () Bool)

(declare-fun e!23303 () Bool)

(declare-fun e!23307 () Bool)

(assert (=> b!42987 (= e!23303 e!23307)))

(declare-fun b!42988 () Bool)

(declare-fun e!23316 () Bool)

(declare-fun e!23311 () Bool)

(assert (=> b!42988 (= e!23316 e!23311)))

(declare-fun res!30106 () Bool)

(assert (=> b!42988 (=> (not res!30106) (not e!23311))))

(declare-datatypes ((List!659 0))(
  ( (Nil!657) (Cons!657 (h!6053 (_ BitVec 16)) (t!16266 List!659)) )
))
(declare-datatypes ((TokenValue!150 0))(
  ( (FloatLiteralValue!300 (text!1495 List!659)) (TokenValueExt!149 (__x!1134 Int)) (Broken!750 (value!7342 List!659)) (Object!151) (End!150) (Def!150) (Underscore!150) (Match!150) (Else!150) (Error!150) (Case!150) (If!150) (Extends!150) (Abstract!150) (Class!150) (Val!150) (DelimiterValue!300 (del!210 List!659)) (KeywordValue!156 (value!7343 List!659)) (CommentValue!300 (value!7344 List!659)) (WhitespaceValue!300 (value!7345 List!659)) (IndentationValue!150 (value!7346 List!659)) (String!1043) (Int32!150) (Broken!751 (value!7347 List!659)) (Boolean!151) (Unit!298) (OperatorValue!153 (op!210 List!659)) (IdentifierValue!300 (value!7348 List!659)) (IdentifierValue!301 (value!7349 List!659)) (WhitespaceValue!301 (value!7350 List!659)) (True!300) (False!300) (Broken!752 (value!7351 List!659)) (Broken!753 (value!7352 List!659)) (True!301) (RightBrace!150) (RightBracket!150) (Colon!150) (Null!150) (Comma!150) (LeftBracket!150) (False!301) (LeftBrace!150) (ImaginaryLiteralValue!150 (text!1496 List!659)) (StringLiteralValue!450 (value!7353 List!659)) (EOFValue!150 (value!7354 List!659)) (IdentValue!150 (value!7355 List!659)) (DelimiterValue!301 (value!7356 List!659)) (DedentValue!150 (value!7357 List!659)) (NewLineValue!150 (value!7358 List!659)) (IntegerValue!450 (value!7359 (_ BitVec 32)) (text!1497 List!659)) (IntegerValue!451 (value!7360 Int) (text!1498 List!659)) (Times!150) (Or!150) (Equal!150) (Minus!150) (Broken!754 (value!7361 List!659)) (And!150) (Div!150) (LessEqual!150) (Mod!150) (Concat!375) (Not!150) (Plus!150) (SpaceValue!150 (value!7362 List!659)) (IntegerValue!452 (value!7363 Int) (text!1499 List!659)) (StringLiteralValue!451 (text!1500 List!659)) (FloatLiteralValue!301 (text!1501 List!659)) (BytesLiteralValue!150 (value!7364 List!659)) (CommentValue!301 (value!7365 List!659)) (StringLiteralValue!452 (value!7366 List!659)) (ErrorTokenValue!150 (msg!211 List!659)) )
))
(declare-datatypes ((Regex!225 0))(
  ( (ElementMatch!225 (c!15955 (_ BitVec 16))) (Concat!376 (regOne!962 Regex!225) (regTwo!962 Regex!225)) (EmptyExpr!225) (Star!225 (reg!554 Regex!225)) (EmptyLang!225) (Union!225 (regOne!963 Regex!225) (regTwo!963 Regex!225)) )
))
(declare-datatypes ((String!1044 0))(
  ( (String!1045 (value!7367 String)) )
))
(declare-datatypes ((IArray!247 0))(
  ( (IArray!248 (innerList!181 List!659)) )
))
(declare-datatypes ((Conc!123 0))(
  ( (Node!123 (left!539 Conc!123) (right!869 Conc!123) (csize!476 Int) (cheight!334 Int)) (Leaf!314 (xs!2702 IArray!247) (csize!477 Int)) (Empty!123) )
))
(declare-datatypes ((BalanceConc!246 0))(
  ( (BalanceConc!247 (c!15956 Conc!123)) )
))
(declare-datatypes ((TokenValueInjection!124 0))(
  ( (TokenValueInjection!125 (toValue!639 Int) (toChars!498 Int)) )
))
(declare-datatypes ((Rule!120 0))(
  ( (Rule!121 (regex!160 Regex!225) (tag!338 String!1044) (isSeparator!160 Bool) (transformation!160 TokenValueInjection!124)) )
))
(declare-datatypes ((Token!86 0))(
  ( (Token!87 (value!7368 TokenValue!150) (rule!636 Rule!120) (size!655 Int) (originalCharacters!214 List!659)) )
))
(declare-datatypes ((List!660 0))(
  ( (Nil!658) (Cons!658 (h!6054 Token!86) (t!16267 List!660)) )
))
(declare-fun lt!4974 () List!660)

(declare-fun lt!4967 () List!660)

(assert (=> b!42988 (= res!30106 (= lt!4974 lt!4967))))

(declare-datatypes ((IArray!249 0))(
  ( (IArray!250 (innerList!182 List!660)) )
))
(declare-datatypes ((Conc!124 0))(
  ( (Node!124 (left!540 Conc!124) (right!870 Conc!124) (csize!478 Int) (cheight!335 Int)) (Leaf!315 (xs!2703 IArray!249) (csize!479 Int)) (Empty!124) )
))
(declare-datatypes ((BalanceConc!248 0))(
  ( (BalanceConc!249 (c!15957 Conc!124)) )
))
(declare-datatypes ((tuple2!776 0))(
  ( (tuple2!777 (_1!542 BalanceConc!248) (_2!542 BalanceConc!246)) )
))
(declare-fun lt!4976 () tuple2!776)

(declare-fun list!172 (BalanceConc!248) List!660)

(assert (=> b!42988 (= lt!4967 (list!172 (_1!542 lt!4976)))))

(declare-datatypes ((List!661 0))(
  ( (Nil!659) (Cons!659 (h!6055 Regex!225) (t!16268 List!661)) )
))
(declare-datatypes ((Context!166 0))(
  ( (Context!167 (exprs!583 List!661)) )
))
(declare-datatypes ((tuple2!778 0))(
  ( (tuple2!779 (_1!543 Context!166) (_2!543 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!214 0))(
  ( (HashableExt!213 (__x!1135 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!780 0))(
  ( (tuple2!781 (_1!544 tuple2!778) (_2!544 (InoxSet Context!166))) )
))
(declare-datatypes ((List!662 0))(
  ( (Nil!660) (Cons!660 (h!6056 tuple2!780) (t!16269 List!662)) )
))
(declare-datatypes ((array!720 0))(
  ( (array!721 (arr!355 (Array (_ BitVec 32) List!662)) (size!656 (_ BitVec 32))) )
))
(declare-datatypes ((array!722 0))(
  ( (array!723 (arr!356 (Array (_ BitVec 32) (_ BitVec 64))) (size!657 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!436 0))(
  ( (LongMapFixedSize!437 (defaultEntry!556 Int) (mask!932 (_ BitVec 32)) (extraKeys!464 (_ BitVec 32)) (zeroValue!474 List!662) (minValue!474 List!662) (_size!568 (_ BitVec 32)) (_keys!509 array!722) (_values!496 array!720) (_vacant!278 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!861 0))(
  ( (Cell!862 (v!12413 LongMapFixedSize!436)) )
))
(declare-datatypes ((MutLongMap!218 0))(
  ( (LongMap!218 (underlying!631 Cell!861)) (MutLongMapExt!217 (__x!1136 Int)) )
))
(declare-datatypes ((Cell!863 0))(
  ( (Cell!864 (v!12414 MutLongMap!218)) )
))
(declare-datatypes ((MutableMap!214 0))(
  ( (MutableMapExt!213 (__x!1137 Int)) (HashMap!214 (underlying!632 Cell!863) (hashF!2082 Hashable!214) (_size!569 (_ BitVec 32)) (defaultValue!363 Int)) )
))
(declare-datatypes ((CacheUp!144 0))(
  ( (CacheUp!145 (cache!699 MutableMap!214)) )
))
(declare-datatypes ((tuple3!246 0))(
  ( (tuple3!247 (_1!545 Regex!225) (_2!545 Context!166) (_3!154 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!782 0))(
  ( (tuple2!783 (_1!546 tuple3!246) (_2!546 (InoxSet Context!166))) )
))
(declare-datatypes ((List!663 0))(
  ( (Nil!661) (Cons!661 (h!6057 tuple2!782) (t!16270 List!663)) )
))
(declare-datatypes ((array!724 0))(
  ( (array!725 (arr!357 (Array (_ BitVec 32) List!663)) (size!658 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!438 0))(
  ( (LongMapFixedSize!439 (defaultEntry!557 Int) (mask!933 (_ BitVec 32)) (extraKeys!465 (_ BitVec 32)) (zeroValue!475 List!663) (minValue!475 List!663) (_size!570 (_ BitVec 32)) (_keys!510 array!722) (_values!497 array!724) (_vacant!279 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!865 0))(
  ( (Cell!866 (v!12415 LongMapFixedSize!438)) )
))
(declare-datatypes ((MutLongMap!219 0))(
  ( (LongMap!219 (underlying!633 Cell!865)) (MutLongMapExt!218 (__x!1138 Int)) )
))
(declare-datatypes ((Cell!867 0))(
  ( (Cell!868 (v!12416 MutLongMap!219)) )
))
(declare-datatypes ((Hashable!215 0))(
  ( (HashableExt!214 (__x!1139 Int)) )
))
(declare-datatypes ((MutableMap!215 0))(
  ( (MutableMapExt!214 (__x!1140 Int)) (HashMap!215 (underlying!634 Cell!867) (hashF!2083 Hashable!215) (_size!571 (_ BitVec 32)) (defaultValue!364 Int)) )
))
(declare-datatypes ((CacheDown!146 0))(
  ( (CacheDown!147 (cache!700 MutableMap!215)) )
))
(declare-datatypes ((tuple3!248 0))(
  ( (tuple3!249 (_1!547 (InoxSet Context!166)) (_2!547 Int) (_3!155 Int)) )
))
(declare-datatypes ((tuple2!784 0))(
  ( (tuple2!785 (_1!548 tuple3!248) (_2!548 Int)) )
))
(declare-datatypes ((List!664 0))(
  ( (Nil!662) (Cons!662 (h!6058 tuple2!784) (t!16271 List!664)) )
))
(declare-datatypes ((array!726 0))(
  ( (array!727 (arr!358 (Array (_ BitVec 32) List!664)) (size!659 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!440 0))(
  ( (LongMapFixedSize!441 (defaultEntry!558 Int) (mask!934 (_ BitVec 32)) (extraKeys!466 (_ BitVec 32)) (zeroValue!476 List!664) (minValue!476 List!664) (_size!572 (_ BitVec 32)) (_keys!511 array!722) (_values!498 array!726) (_vacant!280 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!216 0))(
  ( (HashableExt!215 (__x!1141 Int)) )
))
(declare-datatypes ((Cell!869 0))(
  ( (Cell!870 (v!12417 LongMapFixedSize!440)) )
))
(declare-datatypes ((MutLongMap!220 0))(
  ( (LongMap!220 (underlying!635 Cell!869)) (MutLongMapExt!219 (__x!1142 Int)) )
))
(declare-datatypes ((Cell!871 0))(
  ( (Cell!872 (v!12418 MutLongMap!220)) )
))
(declare-datatypes ((MutableMap!216 0))(
  ( (MutableMapExt!215 (__x!1143 Int)) (HashMap!216 (underlying!636 Cell!871) (hashF!2084 Hashable!216) (_size!573 (_ BitVec 32)) (defaultValue!365 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!94 0))(
  ( (CacheFurthestNullable!95 (cache!701 MutableMap!216) (totalInput!1527 BalanceConc!246)) )
))
(declare-datatypes ((tuple4!62 0))(
  ( (tuple4!63 (_1!549 tuple2!776) (_2!549 CacheUp!144) (_3!156 CacheDown!146) (_4!31 CacheFurthestNullable!94)) )
))
(declare-fun lt!4975 () tuple4!62)

(assert (=> b!42988 (= lt!4974 (list!172 (_1!542 (_1!549 lt!4975))))))

(declare-datatypes ((List!665 0))(
  ( (Nil!663) (Cons!663 (h!6059 Rule!120) (t!16272 List!665)) )
))
(declare-fun lt!4969 () List!665)

(declare-fun input!525 () BalanceConc!246)

(declare-datatypes ((LexerInterface!55 0))(
  ( (LexerInterfaceExt!52 (__x!1144 Int)) (Lexer!53) )
))
(declare-fun lex!29 (LexerInterface!55 List!665 BalanceConc!246) tuple2!776)

(assert (=> b!42988 (= lt!4976 (lex!29 Lexer!53 lt!4969 input!525))))

(declare-datatypes ((Unit!299 0))(
  ( (Unit!300) )
))
(declare-fun lt!4979 () Unit!299)

(declare-fun lemmaInvariant!47 (CacheDown!146) Unit!299)

(assert (=> b!42988 (= lt!4979 (lemmaInvariant!47 (_3!156 lt!4975)))))

(declare-fun lt!4972 () Unit!299)

(declare-fun lemmaInvariant!48 (CacheUp!144) Unit!299)

(assert (=> b!42988 (= lt!4972 (lemmaInvariant!48 (_2!549 lt!4975)))))

(declare-fun cacheDown!333 () CacheDown!146)

(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!94)

(declare-fun cacheUp!320 () CacheUp!144)

(declare-fun lexMem!22 (LexerInterface!55 List!665 BalanceConc!246 CacheUp!144 CacheDown!146 CacheFurthestNullable!94) tuple4!62)

(assert (=> b!42988 (= lt!4975 (lexMem!22 Lexer!53 lt!4969 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!42989 () Bool)

(declare-fun e!23321 () Bool)

(declare-fun e!23314 () Bool)

(assert (=> b!42989 (= e!23321 e!23314)))

(declare-fun res!30098 () Bool)

(assert (=> b!42989 (=> (not res!30098) (not e!23314))))

(declare-fun lt!4970 () BalanceConc!246)

(declare-fun lt!4971 () List!659)

(declare-fun list!173 (BalanceConc!246) List!659)

(assert (=> b!42989 (= res!30098 (= (list!173 lt!4970) lt!4971))))

(declare-fun seqFromList!25 (List!659) BalanceConc!246)

(assert (=> b!42989 (= lt!4970 (seqFromList!25 lt!4971))))

(assert (=> b!42989 (= lt!4971 (list!173 input!525))))

(declare-fun mapIsEmpty!808 () Bool)

(declare-fun mapRes!808 () Bool)

(assert (=> mapIsEmpty!808 mapRes!808))

(declare-fun b!42990 () Bool)

(declare-fun res!30104 () Bool)

(assert (=> b!42990 (=> (not res!30104) (not e!23316))))

(declare-fun rulesInvariant!45 (LexerInterface!55 List!665) Bool)

(assert (=> b!42990 (= res!30104 (rulesInvariant!45 Lexer!53 lt!4969))))

(declare-fun b!42991 () Bool)

(declare-fun e!23292 () Bool)

(declare-fun e!23297 () Bool)

(assert (=> b!42991 (= e!23292 e!23297)))

(declare-fun b!42993 () Bool)

(declare-fun res!30102 () Bool)

(assert (=> b!42993 (=> (not res!30102) (not e!23316))))

(declare-fun valid!201 (CacheFurthestNullable!94) Bool)

(assert (=> b!42993 (= res!30102 (valid!201 cacheFurthestNullable!45))))

(declare-fun b!42994 () Bool)

(declare-fun e!23309 () Bool)

(declare-fun tp!29633 () Bool)

(assert (=> b!42994 (= e!23309 (and tp!29633 mapRes!808))))

(declare-fun condMapEmpty!808 () Bool)

(declare-fun mapDefault!808 () List!663)

(assert (=> b!42994 (= condMapEmpty!808 (= (arr!357 (_values!497 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!663)) mapDefault!808)))))

(declare-fun b!42995 () Bool)

(declare-fun e!23315 () Bool)

(declare-fun tp!29640 () Bool)

(declare-fun mapRes!809 () Bool)

(assert (=> b!42995 (= e!23315 (and tp!29640 mapRes!809))))

(declare-fun condMapEmpty!809 () Bool)

(declare-fun mapDefault!810 () List!664)

(assert (=> b!42995 (= condMapEmpty!809 (= (arr!358 (_values!498 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!664)) mapDefault!810)))))

(declare-fun tp!29634 () Bool)

(declare-fun tp!29630 () Bool)

(declare-fun array_inv!235 (array!722) Bool)

(declare-fun array_inv!236 (array!724) Bool)

(assert (=> b!42996 (= e!23307 (and tp!29642 tp!29634 tp!29630 (array_inv!235 (_keys!510 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))) (array_inv!236 (_values!497 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))) e!23309))))

(declare-fun b!42997 () Bool)

(declare-fun e!23295 () Bool)

(declare-fun e!23306 () Bool)

(declare-fun lt!4973 () MutLongMap!220)

(get-info :version)

(assert (=> b!42997 (= e!23295 (and e!23306 ((_ is LongMap!220) lt!4973)))))

(assert (=> b!42997 (= lt!4973 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))

(declare-fun mapNonEmpty!808 () Bool)

(declare-fun mapRes!810 () Bool)

(declare-fun tp!29652 () Bool)

(declare-fun tp!29647 () Bool)

(assert (=> mapNonEmpty!808 (= mapRes!810 (and tp!29652 tp!29647))))

(declare-fun mapRest!809 () (Array (_ BitVec 32) List!662))

(declare-fun mapKey!809 () (_ BitVec 32))

(declare-fun mapValue!810 () List!662)

(assert (=> mapNonEmpty!808 (= (arr!355 (_values!496 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))) (store mapRest!809 mapKey!809 mapValue!810))))

(declare-fun mapNonEmpty!809 () Bool)

(declare-fun tp!29635 () Bool)

(declare-fun tp!29643 () Bool)

(assert (=> mapNonEmpty!809 (= mapRes!809 (and tp!29635 tp!29643))))

(declare-fun mapRest!808 () (Array (_ BitVec 32) List!664))

(declare-fun mapKey!810 () (_ BitVec 32))

(declare-fun mapValue!808 () List!664)

(assert (=> mapNonEmpty!809 (= (arr!358 (_values!498 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))) (store mapRest!808 mapKey!810 mapValue!808))))

(declare-fun b!42998 () Bool)

(declare-fun e!23298 () Bool)

(assert (=> b!42998 (= e!23298 e!23303)))

(declare-fun e!23310 () Bool)

(assert (=> b!42999 (= e!23310 (and e!23295 tp!29636))))

(declare-fun e!23300 () Bool)

(declare-fun e!23296 () Bool)

(assert (=> b!43000 (= e!23300 (and e!23296 tp!29651))))

(declare-fun mapIsEmpty!809 () Bool)

(assert (=> mapIsEmpty!809 mapRes!809))

(declare-fun b!43001 () Bool)

(declare-fun e!23318 () Bool)

(assert (=> b!43001 (= e!23318 e!23292)))

(declare-fun b!43002 () Bool)

(declare-fun e!23317 () Bool)

(declare-fun tp!29644 () Bool)

(assert (=> b!43002 (= e!23317 (and tp!29644 mapRes!810))))

(declare-fun condMapEmpty!810 () Bool)

(declare-fun mapDefault!809 () List!662)

(assert (=> b!43002 (= condMapEmpty!810 (= (arr!355 (_values!496 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!662)) mapDefault!809)))))

(declare-fun b!43003 () Bool)

(declare-fun e!23305 () Bool)

(assert (=> b!43003 (= e!23314 e!23305)))

(declare-fun res!30107 () Bool)

(assert (=> b!43003 (=> (not res!30107) (not e!23305))))

(declare-fun lt!4977 () tuple2!776)

(assert (=> b!43003 (= res!30107 (= lt!4967 (list!172 (_1!542 lt!4977))))))

(assert (=> b!43003 (= lt!4977 (lex!29 Lexer!53 lt!4969 lt!4970))))

(declare-fun b!43004 () Bool)

(declare-fun res!30105 () Bool)

(assert (=> b!43004 (=> (not res!30105) (not e!23316))))

(assert (=> b!43004 (= res!30105 (= (totalInput!1527 cacheFurthestNullable!45) input!525))))

(declare-fun res!30099 () Bool)

(assert (=> start!2588 (=> (not res!30099) (not e!23316))))

(declare-fun isEmpty!132 (List!665) Bool)

(assert (=> start!2588 (= res!30099 (not (isEmpty!132 lt!4969)))))

(declare-datatypes ((JsonLexer!68 0))(
  ( (JsonLexer!69) )
))
(declare-fun rules!109 (JsonLexer!68) List!665)

(assert (=> start!2588 (= lt!4969 (rules!109 JsonLexer!69))))

(assert (=> start!2588 e!23316))

(declare-fun e!23313 () Bool)

(declare-fun inv!940 (CacheDown!146) Bool)

(assert (=> start!2588 (and (inv!940 cacheDown!333) e!23313)))

(declare-fun e!23299 () Bool)

(declare-fun inv!941 (BalanceConc!246) Bool)

(assert (=> start!2588 (and (inv!941 input!525) e!23299)))

(declare-fun e!23302 () Bool)

(declare-fun inv!942 (CacheFurthestNullable!94) Bool)

(assert (=> start!2588 (and (inv!942 cacheFurthestNullable!45) e!23302)))

(declare-fun e!23304 () Bool)

(declare-fun inv!943 (CacheUp!144) Bool)

(assert (=> start!2588 (and (inv!943 cacheUp!320) e!23304)))

(declare-fun b!42992 () Bool)

(assert (=> b!42992 (= e!23313 e!23300)))

(declare-fun b!43005 () Bool)

(declare-fun e!23291 () Bool)

(declare-fun lt!4966 () MutLongMap!218)

(assert (=> b!43005 (= e!23291 (and e!23318 ((_ is LongMap!218) lt!4966)))))

(assert (=> b!43005 (= lt!4966 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))

(declare-fun b!43006 () Bool)

(declare-fun tp!29631 () Bool)

(declare-fun inv!944 (Conc!123) Bool)

(assert (=> b!43006 (= e!23299 (and (inv!944 (c!15956 input!525)) tp!29631))))

(declare-fun b!43007 () Bool)

(declare-fun e!23319 () Bool)

(assert (=> b!43007 (= e!23306 e!23319)))

(declare-fun b!43008 () Bool)

(declare-fun e!23293 () Bool)

(assert (=> b!43008 (= e!23304 e!23293)))

(declare-fun e!23308 () Bool)

(declare-fun b!43009 () Bool)

(assert (=> b!43009 (= e!23302 (and e!23310 (inv!941 (totalInput!1527 cacheFurthestNullable!45)) e!23308))))

(declare-fun mapNonEmpty!810 () Bool)

(declare-fun tp!29637 () Bool)

(declare-fun tp!29648 () Bool)

(assert (=> mapNonEmpty!810 (= mapRes!808 (and tp!29637 tp!29648))))

(declare-fun mapKey!808 () (_ BitVec 32))

(declare-fun mapValue!809 () List!663)

(declare-fun mapRest!810 () (Array (_ BitVec 32) List!663))

(assert (=> mapNonEmpty!810 (= (arr!357 (_values!497 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))) (store mapRest!810 mapKey!808 mapValue!809))))

(declare-fun b!43010 () Bool)

(declare-fun res!30103 () Bool)

(assert (=> b!43010 (=> (not res!30103) (not e!23316))))

(declare-fun valid!202 (CacheDown!146) Bool)

(assert (=> b!43010 (= res!30103 (valid!202 cacheDown!333))))

(assert (=> b!43011 (= e!23293 (and e!23291 tp!29650))))

(declare-fun b!43012 () Bool)

(declare-fun tp!29639 () Bool)

(assert (=> b!43012 (= e!23308 (and (inv!944 (c!15956 (totalInput!1527 cacheFurthestNullable!45))) tp!29639))))

(declare-fun b!43013 () Bool)

(declare-fun lt!4968 () MutLongMap!219)

(assert (=> b!43013 (= e!23296 (and e!23298 ((_ is LongMap!219) lt!4968)))))

(assert (=> b!43013 (= lt!4968 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))

(declare-fun mapIsEmpty!810 () Bool)

(assert (=> mapIsEmpty!810 mapRes!810))

(declare-fun b!43014 () Bool)

(declare-fun e!23301 () Bool)

(assert (=> b!43014 (= e!23319 e!23301)))

(declare-fun b!43015 () Bool)

(declare-fun lt!4965 () List!659)

(assert (=> b!43015 (= e!23305 (not (= lt!4965 (list!173 (_2!542 lt!4977)))))))

(declare-fun b!43016 () Bool)

(assert (=> b!43016 (= e!23311 e!23321)))

(declare-fun res!30101 () Bool)

(assert (=> b!43016 (=> (not res!30101) (not e!23321))))

(declare-fun lt!4978 () List!659)

(assert (=> b!43016 (= res!30101 (= lt!4978 lt!4965))))

(assert (=> b!43016 (= lt!4965 (list!173 (_2!542 lt!4976)))))

(assert (=> b!43016 (= lt!4978 (list!173 (_2!542 (_1!549 lt!4975))))))

(declare-fun tp!29632 () Bool)

(declare-fun tp!29646 () Bool)

(declare-fun array_inv!237 (array!720) Bool)

(assert (=> b!43017 (= e!23297 (and tp!29641 tp!29646 tp!29632 (array_inv!235 (_keys!509 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))) (array_inv!237 (_values!496 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))) e!23317))))

(declare-fun b!43018 () Bool)

(declare-fun res!30100 () Bool)

(assert (=> b!43018 (=> (not res!30100) (not e!23316))))

(declare-fun valid!203 (CacheUp!144) Bool)

(assert (=> b!43018 (= res!30100 (valid!203 cacheUp!320))))

(declare-fun tp!29649 () Bool)

(declare-fun tp!29645 () Bool)

(declare-fun array_inv!238 (array!726) Bool)

(assert (=> b!43019 (= e!23301 (and tp!29638 tp!29649 tp!29645 (array_inv!235 (_keys!511 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))) (array_inv!238 (_values!498 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))) e!23315))))

(assert (= (and start!2588 res!30099) b!42990))

(assert (= (and b!42990 res!30104) b!43018))

(assert (= (and b!43018 res!30100) b!43010))

(assert (= (and b!43010 res!30103) b!42993))

(assert (= (and b!42993 res!30102) b!43004))

(assert (= (and b!43004 res!30105) b!42988))

(assert (= (and b!42988 res!30106) b!43016))

(assert (= (and b!43016 res!30101) b!42989))

(assert (= (and b!42989 res!30098) b!43003))

(assert (= (and b!43003 res!30107) b!43015))

(assert (= (and b!42994 condMapEmpty!808) mapIsEmpty!808))

(assert (= (and b!42994 (not condMapEmpty!808)) mapNonEmpty!810))

(assert (= b!42996 b!42994))

(assert (= b!42987 b!42996))

(assert (= b!42998 b!42987))

(assert (= (and b!43013 ((_ is LongMap!219) (v!12416 (underlying!634 (cache!700 cacheDown!333))))) b!42998))

(assert (= b!43000 b!43013))

(assert (= (and b!42992 ((_ is HashMap!215) (cache!700 cacheDown!333))) b!43000))

(assert (= start!2588 b!42992))

(assert (= start!2588 b!43006))

(assert (= (and b!42995 condMapEmpty!809) mapIsEmpty!809))

(assert (= (and b!42995 (not condMapEmpty!809)) mapNonEmpty!809))

(assert (= b!43019 b!42995))

(assert (= b!43014 b!43019))

(assert (= b!43007 b!43014))

(assert (= (and b!42997 ((_ is LongMap!220) (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))) b!43007))

(assert (= b!42999 b!42997))

(assert (= (and b!43009 ((_ is HashMap!216) (cache!701 cacheFurthestNullable!45))) b!42999))

(assert (= b!43009 b!43012))

(assert (= start!2588 b!43009))

(assert (= (and b!43002 condMapEmpty!810) mapIsEmpty!810))

(assert (= (and b!43002 (not condMapEmpty!810)) mapNonEmpty!808))

(assert (= b!43017 b!43002))

(assert (= b!42991 b!43017))

(assert (= b!43001 b!42991))

(assert (= (and b!43005 ((_ is LongMap!218) (v!12414 (underlying!632 (cache!699 cacheUp!320))))) b!43001))

(assert (= b!43011 b!43005))

(assert (= (and b!43008 ((_ is HashMap!214) (cache!699 cacheUp!320))) b!43011))

(assert (= start!2588 b!43008))

(declare-fun m!16703 () Bool)

(assert (=> b!43006 m!16703))

(declare-fun m!16705 () Bool)

(assert (=> b!43010 m!16705))

(declare-fun m!16707 () Bool)

(assert (=> b!43018 m!16707))

(declare-fun m!16709 () Bool)

(assert (=> b!42993 m!16709))

(declare-fun m!16711 () Bool)

(assert (=> b!43012 m!16711))

(declare-fun m!16713 () Bool)

(assert (=> mapNonEmpty!808 m!16713))

(declare-fun m!16715 () Bool)

(assert (=> b!43016 m!16715))

(declare-fun m!16717 () Bool)

(assert (=> b!43016 m!16717))

(declare-fun m!16719 () Bool)

(assert (=> b!43003 m!16719))

(declare-fun m!16721 () Bool)

(assert (=> b!43003 m!16721))

(declare-fun m!16723 () Bool)

(assert (=> mapNonEmpty!810 m!16723))

(declare-fun m!16725 () Bool)

(assert (=> b!43019 m!16725))

(declare-fun m!16727 () Bool)

(assert (=> b!43019 m!16727))

(declare-fun m!16729 () Bool)

(assert (=> b!43015 m!16729))

(declare-fun m!16731 () Bool)

(assert (=> b!42990 m!16731))

(declare-fun m!16733 () Bool)

(assert (=> b!42996 m!16733))

(declare-fun m!16735 () Bool)

(assert (=> b!42996 m!16735))

(declare-fun m!16737 () Bool)

(assert (=> b!43017 m!16737))

(declare-fun m!16739 () Bool)

(assert (=> b!43017 m!16739))

(declare-fun m!16741 () Bool)

(assert (=> b!42989 m!16741))

(declare-fun m!16743 () Bool)

(assert (=> b!42989 m!16743))

(declare-fun m!16745 () Bool)

(assert (=> b!42989 m!16745))

(declare-fun m!16747 () Bool)

(assert (=> mapNonEmpty!809 m!16747))

(declare-fun m!16749 () Bool)

(assert (=> b!42988 m!16749))

(declare-fun m!16751 () Bool)

(assert (=> b!42988 m!16751))

(declare-fun m!16753 () Bool)

(assert (=> b!42988 m!16753))

(declare-fun m!16755 () Bool)

(assert (=> b!42988 m!16755))

(declare-fun m!16757 () Bool)

(assert (=> b!42988 m!16757))

(declare-fun m!16759 () Bool)

(assert (=> b!42988 m!16759))

(declare-fun m!16761 () Bool)

(assert (=> start!2588 m!16761))

(declare-fun m!16763 () Bool)

(assert (=> start!2588 m!16763))

(declare-fun m!16765 () Bool)

(assert (=> start!2588 m!16765))

(declare-fun m!16767 () Bool)

(assert (=> start!2588 m!16767))

(declare-fun m!16769 () Bool)

(assert (=> start!2588 m!16769))

(declare-fun m!16771 () Bool)

(assert (=> start!2588 m!16771))

(declare-fun m!16773 () Bool)

(assert (=> b!43009 m!16773))

(check-sat (not b!43010) (not b!42993) (not b_next!1033) (not start!2588) (not b!43017) (not b!42988) b_and!1073 (not b!43012) (not b!42995) (not mapNonEmpty!810) (not b!43003) (not b_next!1035) (not b!43019) (not b!42989) (not b!42994) b_and!1069 (not b!43006) (not b!43018) (not mapNonEmpty!809) (not b_next!1039) (not b_next!1037) b_and!1067 (not b!43015) (not b!42990) (not b!42996) b_and!1071 b_and!1063 (not b!43009) b_and!1065 (not b_next!1029) (not b!43002) (not b!43016) (not b_next!1031) (not mapNonEmpty!808))
(check-sat (not b_next!1035) b_and!1069 (not b_next!1033) (not b_next!1039) b_and!1073 b_and!1071 b_and!1063 (not b_next!1031) (not b_next!1037) b_and!1067 b_and!1065 (not b_next!1029))
(get-model)

(declare-fun d!4655 () Bool)

(declare-fun validCacheMapUp!16 (MutableMap!214) Bool)

(assert (=> d!4655 (= (valid!203 cacheUp!320) (validCacheMapUp!16 (cache!699 cacheUp!320)))))

(declare-fun bs!5639 () Bool)

(assert (= bs!5639 d!4655))

(declare-fun m!16775 () Bool)

(assert (=> bs!5639 m!16775))

(assert (=> b!43018 d!4655))

(declare-fun d!4657 () Bool)

(declare-fun isBalanced!21 (Conc!123) Bool)

(assert (=> d!4657 (= (inv!941 (totalInput!1527 cacheFurthestNullable!45)) (isBalanced!21 (c!15956 (totalInput!1527 cacheFurthestNullable!45))))))

(declare-fun bs!5640 () Bool)

(assert (= bs!5640 d!4657))

(declare-fun m!16777 () Bool)

(assert (=> bs!5640 m!16777))

(assert (=> b!43009 d!4657))

(declare-fun d!4659 () Bool)

(assert (=> d!4659 (= (array_inv!235 (_keys!509 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))) (bvsge (size!657 (_keys!509 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!43017 d!4659))

(declare-fun d!4661 () Bool)

(assert (=> d!4661 (= (array_inv!237 (_values!496 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))) (bvsge (size!656 (_values!496 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!43017 d!4661))

(declare-fun d!4663 () Bool)

(declare-fun res!30110 () Bool)

(declare-fun e!23324 () Bool)

(assert (=> d!4663 (=> (not res!30110) (not e!23324))))

(declare-fun rulesValid!14 (LexerInterface!55 List!665) Bool)

(assert (=> d!4663 (= res!30110 (rulesValid!14 Lexer!53 lt!4969))))

(assert (=> d!4663 (= (rulesInvariant!45 Lexer!53 lt!4969) e!23324)))

(declare-fun b!43022 () Bool)

(declare-datatypes ((List!666 0))(
  ( (Nil!664) (Cons!664 (h!6060 String!1044) (t!16273 List!666)) )
))
(declare-fun noDuplicateTag!14 (LexerInterface!55 List!665 List!666) Bool)

(assert (=> b!43022 (= e!23324 (noDuplicateTag!14 Lexer!53 lt!4969 Nil!664))))

(assert (= (and d!4663 res!30110) b!43022))

(declare-fun m!16779 () Bool)

(assert (=> d!4663 m!16779))

(declare-fun m!16781 () Bool)

(assert (=> b!43022 m!16781))

(assert (=> b!42990 d!4663))

(declare-fun d!4665 () Bool)

(assert (=> d!4665 (= (array_inv!235 (_keys!511 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))) (bvsge (size!657 (_keys!511 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!43019 d!4665))

(declare-fun d!4667 () Bool)

(assert (=> d!4667 (= (array_inv!238 (_values!498 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))) (bvsge (size!659 (_values!498 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!43019 d!4667))

(declare-fun d!4669 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!68) Rule!120)

(declare-fun integerLiteralRule!0 (JsonLexer!68) Rule!120)

(declare-fun floatLiteralRule!0 (JsonLexer!68) Rule!120)

(declare-fun trueRule!0 (JsonLexer!68) Rule!120)

(declare-fun falseRule!0 (JsonLexer!68) Rule!120)

(declare-fun nullRule!0 (JsonLexer!68) Rule!120)

(declare-fun jsonstringRule!0 (JsonLexer!68) Rule!120)

(declare-fun lBraceRule!0 (JsonLexer!68) Rule!120)

(declare-fun rBraceRule!0 (JsonLexer!68) Rule!120)

(declare-fun lBracketRule!0 (JsonLexer!68) Rule!120)

(declare-fun rBracketRule!0 (JsonLexer!68) Rule!120)

(declare-fun colonRule!0 (JsonLexer!68) Rule!120)

(declare-fun commaRule!0 (JsonLexer!68) Rule!120)

(declare-fun eofRule!0 (JsonLexer!68) Rule!120)

(assert (=> d!4669 (= (rules!109 JsonLexer!69) (Cons!663 (whitespaceRule!0 JsonLexer!69) (Cons!663 (integerLiteralRule!0 JsonLexer!69) (Cons!663 (floatLiteralRule!0 JsonLexer!69) (Cons!663 (trueRule!0 JsonLexer!69) (Cons!663 (falseRule!0 JsonLexer!69) (Cons!663 (nullRule!0 JsonLexer!69) (Cons!663 (jsonstringRule!0 JsonLexer!69) (Cons!663 (lBraceRule!0 JsonLexer!69) (Cons!663 (rBraceRule!0 JsonLexer!69) (Cons!663 (lBracketRule!0 JsonLexer!69) (Cons!663 (rBracketRule!0 JsonLexer!69) (Cons!663 (colonRule!0 JsonLexer!69) (Cons!663 (commaRule!0 JsonLexer!69) (Cons!663 (eofRule!0 JsonLexer!69) Nil!663)))))))))))))))))

(declare-fun bs!5641 () Bool)

(assert (= bs!5641 d!4669))

(declare-fun m!16783 () Bool)

(assert (=> bs!5641 m!16783))

(declare-fun m!16785 () Bool)

(assert (=> bs!5641 m!16785))

(declare-fun m!16787 () Bool)

(assert (=> bs!5641 m!16787))

(declare-fun m!16789 () Bool)

(assert (=> bs!5641 m!16789))

(declare-fun m!16791 () Bool)

(assert (=> bs!5641 m!16791))

(declare-fun m!16793 () Bool)

(assert (=> bs!5641 m!16793))

(declare-fun m!16795 () Bool)

(assert (=> bs!5641 m!16795))

(declare-fun m!16797 () Bool)

(assert (=> bs!5641 m!16797))

(declare-fun m!16799 () Bool)

(assert (=> bs!5641 m!16799))

(declare-fun m!16801 () Bool)

(assert (=> bs!5641 m!16801))

(declare-fun m!16803 () Bool)

(assert (=> bs!5641 m!16803))

(declare-fun m!16805 () Bool)

(assert (=> bs!5641 m!16805))

(declare-fun m!16807 () Bool)

(assert (=> bs!5641 m!16807))

(declare-fun m!16809 () Bool)

(assert (=> bs!5641 m!16809))

(assert (=> start!2588 d!4669))

(declare-fun d!4671 () Bool)

(declare-fun res!30113 () Bool)

(declare-fun e!23327 () Bool)

(assert (=> d!4671 (=> (not res!30113) (not e!23327))))

(assert (=> d!4671 (= res!30113 ((_ is HashMap!215) (cache!700 cacheDown!333)))))

(assert (=> d!4671 (= (inv!940 cacheDown!333) e!23327)))

(declare-fun b!43025 () Bool)

(declare-fun validCacheMapDown!18 (MutableMap!215) Bool)

(assert (=> b!43025 (= e!23327 (validCacheMapDown!18 (cache!700 cacheDown!333)))))

(assert (= (and d!4671 res!30113) b!43025))

(declare-fun m!16811 () Bool)

(assert (=> b!43025 m!16811))

(assert (=> start!2588 d!4671))

(declare-fun d!4673 () Bool)

(assert (=> d!4673 (= (inv!941 input!525) (isBalanced!21 (c!15956 input!525)))))

(declare-fun bs!5642 () Bool)

(assert (= bs!5642 d!4673))

(declare-fun m!16813 () Bool)

(assert (=> bs!5642 m!16813))

(assert (=> start!2588 d!4673))

(declare-fun d!4675 () Bool)

(declare-fun res!30116 () Bool)

(declare-fun e!23330 () Bool)

(assert (=> d!4675 (=> (not res!30116) (not e!23330))))

(assert (=> d!4675 (= res!30116 ((_ is HashMap!216) (cache!701 cacheFurthestNullable!45)))))

(assert (=> d!4675 (= (inv!942 cacheFurthestNullable!45) e!23330)))

(declare-fun b!43028 () Bool)

(declare-fun validCacheMapFurthestNullable!10 (MutableMap!216 BalanceConc!246) Bool)

(assert (=> b!43028 (= e!23330 (validCacheMapFurthestNullable!10 (cache!701 cacheFurthestNullable!45) (totalInput!1527 cacheFurthestNullable!45)))))

(assert (= (and d!4675 res!30116) b!43028))

(declare-fun m!16815 () Bool)

(assert (=> b!43028 m!16815))

(assert (=> start!2588 d!4675))

(declare-fun d!4677 () Bool)

(declare-fun res!30119 () Bool)

(declare-fun e!23333 () Bool)

(assert (=> d!4677 (=> (not res!30119) (not e!23333))))

(assert (=> d!4677 (= res!30119 ((_ is HashMap!214) (cache!699 cacheUp!320)))))

(assert (=> d!4677 (= (inv!943 cacheUp!320) e!23333)))

(declare-fun b!43031 () Bool)

(assert (=> b!43031 (= e!23333 (validCacheMapUp!16 (cache!699 cacheUp!320)))))

(assert (= (and d!4677 res!30119) b!43031))

(assert (=> b!43031 m!16775))

(assert (=> start!2588 d!4677))

(declare-fun d!4679 () Bool)

(assert (=> d!4679 (= (isEmpty!132 lt!4969) ((_ is Nil!663) lt!4969))))

(assert (=> start!2588 d!4679))

(declare-fun d!4681 () Bool)

(assert (=> d!4681 (= (valid!201 cacheFurthestNullable!45) (validCacheMapFurthestNullable!10 (cache!701 cacheFurthestNullable!45) (totalInput!1527 cacheFurthestNullable!45)))))

(declare-fun bs!5643 () Bool)

(assert (= bs!5643 d!4681))

(assert (=> bs!5643 m!16815))

(assert (=> b!42993 d!4681))

(declare-fun d!4683 () Bool)

(assert (=> d!4683 (= (valid!202 cacheDown!333) (validCacheMapDown!18 (cache!700 cacheDown!333)))))

(declare-fun bs!5644 () Bool)

(assert (= bs!5644 d!4683))

(assert (=> bs!5644 m!16811))

(assert (=> b!43010 d!4683))

(declare-fun d!4685 () Bool)

(declare-fun c!15960 () Bool)

(assert (=> d!4685 (= c!15960 ((_ is Node!123) (c!15956 (totalInput!1527 cacheFurthestNullable!45))))))

(declare-fun e!23338 () Bool)

(assert (=> d!4685 (= (inv!944 (c!15956 (totalInput!1527 cacheFurthestNullable!45))) e!23338)))

(declare-fun b!43038 () Bool)

(declare-fun inv!945 (Conc!123) Bool)

(assert (=> b!43038 (= e!23338 (inv!945 (c!15956 (totalInput!1527 cacheFurthestNullable!45))))))

(declare-fun b!43039 () Bool)

(declare-fun e!23339 () Bool)

(assert (=> b!43039 (= e!23338 e!23339)))

(declare-fun res!30122 () Bool)

(assert (=> b!43039 (= res!30122 (not ((_ is Leaf!314) (c!15956 (totalInput!1527 cacheFurthestNullable!45)))))))

(assert (=> b!43039 (=> res!30122 e!23339)))

(declare-fun b!43040 () Bool)

(declare-fun inv!946 (Conc!123) Bool)

(assert (=> b!43040 (= e!23339 (inv!946 (c!15956 (totalInput!1527 cacheFurthestNullable!45))))))

(assert (= (and d!4685 c!15960) b!43038))

(assert (= (and d!4685 (not c!15960)) b!43039))

(assert (= (and b!43039 (not res!30122)) b!43040))

(declare-fun m!16817 () Bool)

(assert (=> b!43038 m!16817))

(declare-fun m!16819 () Bool)

(assert (=> b!43040 m!16819))

(assert (=> b!43012 d!4685))

(declare-fun d!4687 () Bool)

(assert (=> d!4687 (= (array_inv!235 (_keys!510 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))) (bvsge (size!657 (_keys!510 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!42996 d!4687))

(declare-fun d!4689 () Bool)

(assert (=> d!4689 (= (array_inv!236 (_values!497 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))) (bvsge (size!658 (_values!497 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!42996 d!4689))

(declare-fun d!4691 () Bool)

(declare-fun list!174 (Conc!124) List!660)

(assert (=> d!4691 (= (list!172 (_1!542 lt!4977)) (list!174 (c!15957 (_1!542 lt!4977))))))

(declare-fun bs!5645 () Bool)

(assert (= bs!5645 d!4691))

(declare-fun m!16821 () Bool)

(assert (=> bs!5645 m!16821))

(assert (=> b!43003 d!4691))

(declare-fun d!4693 () Bool)

(declare-fun e!23346 () Bool)

(assert (=> d!4693 e!23346))

(declare-fun res!30131 () Bool)

(assert (=> d!4693 (=> (not res!30131) (not e!23346))))

(declare-fun e!23347 () Bool)

(assert (=> d!4693 (= res!30131 e!23347)))

(declare-fun c!15963 () Bool)

(declare-fun lt!4982 () tuple2!776)

(declare-fun size!660 (BalanceConc!248) Int)

(assert (=> d!4693 (= c!15963 (> (size!660 (_1!542 lt!4982)) 0))))

(declare-fun lexTailRecV2!8 (LexerInterface!55 List!665 BalanceConc!246 BalanceConc!246 BalanceConc!246 BalanceConc!248) tuple2!776)

(assert (=> d!4693 (= lt!4982 (lexTailRecV2!8 Lexer!53 lt!4969 lt!4970 (BalanceConc!247 Empty!123) lt!4970 (BalanceConc!249 Empty!124)))))

(assert (=> d!4693 (= (lex!29 Lexer!53 lt!4969 lt!4970) lt!4982)))

(declare-fun b!43051 () Bool)

(declare-fun e!23348 () Bool)

(assert (=> b!43051 (= e!23347 e!23348)))

(declare-fun res!30129 () Bool)

(declare-fun size!661 (BalanceConc!246) Int)

(assert (=> b!43051 (= res!30129 (< (size!661 (_2!542 lt!4982)) (size!661 lt!4970)))))

(assert (=> b!43051 (=> (not res!30129) (not e!23348))))

(declare-fun b!43052 () Bool)

(declare-fun res!30130 () Bool)

(assert (=> b!43052 (=> (not res!30130) (not e!23346))))

(declare-datatypes ((tuple2!786 0))(
  ( (tuple2!787 (_1!550 List!660) (_2!550 List!659)) )
))
(declare-fun lexList!11 (LexerInterface!55 List!665 List!659) tuple2!786)

(assert (=> b!43052 (= res!30130 (= (list!172 (_1!542 lt!4982)) (_1!550 (lexList!11 Lexer!53 lt!4969 (list!173 lt!4970)))))))

(declare-fun b!43053 () Bool)

(assert (=> b!43053 (= e!23346 (= (list!173 (_2!542 lt!4982)) (_2!550 (lexList!11 Lexer!53 lt!4969 (list!173 lt!4970)))))))

(declare-fun b!43054 () Bool)

(declare-fun isEmpty!133 (BalanceConc!248) Bool)

(assert (=> b!43054 (= e!23348 (not (isEmpty!133 (_1!542 lt!4982))))))

(declare-fun b!43055 () Bool)

(assert (=> b!43055 (= e!23347 (= (_2!542 lt!4982) lt!4970))))

(assert (= (and d!4693 c!15963) b!43051))

(assert (= (and d!4693 (not c!15963)) b!43055))

(assert (= (and b!43051 res!30129) b!43054))

(assert (= (and d!4693 res!30131) b!43052))

(assert (= (and b!43052 res!30130) b!43053))

(declare-fun m!16823 () Bool)

(assert (=> b!43052 m!16823))

(assert (=> b!43052 m!16741))

(assert (=> b!43052 m!16741))

(declare-fun m!16825 () Bool)

(assert (=> b!43052 m!16825))

(declare-fun m!16827 () Bool)

(assert (=> b!43051 m!16827))

(declare-fun m!16829 () Bool)

(assert (=> b!43051 m!16829))

(declare-fun m!16831 () Bool)

(assert (=> d!4693 m!16831))

(declare-fun m!16833 () Bool)

(assert (=> d!4693 m!16833))

(declare-fun m!16835 () Bool)

(assert (=> b!43053 m!16835))

(assert (=> b!43053 m!16741))

(assert (=> b!43053 m!16741))

(assert (=> b!43053 m!16825))

(declare-fun m!16837 () Bool)

(assert (=> b!43054 m!16837))

(assert (=> b!43003 d!4693))

(declare-fun d!4695 () Bool)

(assert (=> d!4695 (valid!202 (_3!156 lt!4975))))

(declare-fun Unit!301 () Unit!299)

(assert (=> d!4695 (= (lemmaInvariant!47 (_3!156 lt!4975)) Unit!301)))

(declare-fun bs!5646 () Bool)

(assert (= bs!5646 d!4695))

(declare-fun m!16839 () Bool)

(assert (=> bs!5646 m!16839))

(assert (=> b!42988 d!4695))

(declare-fun b!43066 () Bool)

(declare-fun res!30145 () Bool)

(declare-fun e!23351 () Bool)

(assert (=> b!43066 (=> (not res!30145) (not e!23351))))

(declare-fun lt!4987 () tuple4!62)

(assert (=> b!43066 (= res!30145 (valid!201 (_4!31 lt!4987)))))

(declare-fun b!43067 () Bool)

(declare-fun res!30146 () Bool)

(assert (=> b!43067 (=> (not res!30146) (not e!23351))))

(assert (=> b!43067 (= res!30146 (valid!203 (_2!549 lt!4987)))))

(declare-fun b!43069 () Bool)

(assert (=> b!43069 (= e!23351 (= (totalInput!1527 (_4!31 lt!4987)) input!525))))

(declare-fun b!43070 () Bool)

(declare-fun res!30143 () Bool)

(assert (=> b!43070 (=> (not res!30143) (not e!23351))))

(assert (=> b!43070 (= res!30143 (valid!202 (_3!156 lt!4987)))))

(declare-fun b!43068 () Bool)

(declare-fun res!30144 () Bool)

(assert (=> b!43068 (=> (not res!30144) (not e!23351))))

(assert (=> b!43068 (= res!30144 (= (list!173 (_2!542 (_1!549 lt!4987))) (list!173 (_2!542 (lex!29 Lexer!53 lt!4969 input!525)))))))

(declare-fun d!4697 () Bool)

(assert (=> d!4697 e!23351))

(declare-fun res!30142 () Bool)

(assert (=> d!4697 (=> (not res!30142) (not e!23351))))

(assert (=> d!4697 (= res!30142 (= (list!172 (_1!542 (_1!549 lt!4987))) (list!172 (_1!542 (lex!29 Lexer!53 lt!4969 input!525)))))))

(declare-fun lt!4988 () tuple4!62)

(assert (=> d!4697 (= lt!4987 (tuple4!63 (_1!549 lt!4988) (_2!549 lt!4988) (_3!156 lt!4988) (_4!31 lt!4988)))))

(declare-fun lexTailRecV3Mem!8 (LexerInterface!55 List!665 BalanceConc!246 BalanceConc!246 BalanceConc!246 BalanceConc!248 CacheUp!144 CacheDown!146 CacheFurthestNullable!94) tuple4!62)

(assert (=> d!4697 (= lt!4988 (lexTailRecV3Mem!8 Lexer!53 lt!4969 input!525 (BalanceConc!247 Empty!123) input!525 (BalanceConc!249 Empty!124) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4697 (not (isEmpty!132 lt!4969))))

(assert (=> d!4697 (= (lexMem!22 Lexer!53 lt!4969 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!4987)))

(assert (= (and d!4697 res!30142) b!43068))

(assert (= (and b!43068 res!30144) b!43066))

(assert (= (and b!43066 res!30145) b!43067))

(assert (= (and b!43067 res!30146) b!43070))

(assert (= (and b!43070 res!30143) b!43069))

(declare-fun m!16841 () Bool)

(assert (=> b!43070 m!16841))

(declare-fun m!16843 () Bool)

(assert (=> b!43067 m!16843))

(declare-fun m!16845 () Bool)

(assert (=> b!43066 m!16845))

(declare-fun m!16847 () Bool)

(assert (=> b!43068 m!16847))

(assert (=> b!43068 m!16755))

(declare-fun m!16849 () Bool)

(assert (=> b!43068 m!16849))

(declare-fun m!16851 () Bool)

(assert (=> d!4697 m!16851))

(assert (=> d!4697 m!16763))

(declare-fun m!16853 () Bool)

(assert (=> d!4697 m!16853))

(assert (=> d!4697 m!16755))

(declare-fun m!16855 () Bool)

(assert (=> d!4697 m!16855))

(assert (=> b!42988 d!4697))

(declare-fun d!4699 () Bool)

(declare-fun e!23352 () Bool)

(assert (=> d!4699 e!23352))

(declare-fun res!30149 () Bool)

(assert (=> d!4699 (=> (not res!30149) (not e!23352))))

(declare-fun e!23353 () Bool)

(assert (=> d!4699 (= res!30149 e!23353)))

(declare-fun c!15964 () Bool)

(declare-fun lt!4989 () tuple2!776)

(assert (=> d!4699 (= c!15964 (> (size!660 (_1!542 lt!4989)) 0))))

(assert (=> d!4699 (= lt!4989 (lexTailRecV2!8 Lexer!53 lt!4969 input!525 (BalanceConc!247 Empty!123) input!525 (BalanceConc!249 Empty!124)))))

(assert (=> d!4699 (= (lex!29 Lexer!53 lt!4969 input!525) lt!4989)))

(declare-fun b!43071 () Bool)

(declare-fun e!23354 () Bool)

(assert (=> b!43071 (= e!23353 e!23354)))

(declare-fun res!30147 () Bool)

(assert (=> b!43071 (= res!30147 (< (size!661 (_2!542 lt!4989)) (size!661 input!525)))))

(assert (=> b!43071 (=> (not res!30147) (not e!23354))))

(declare-fun b!43072 () Bool)

(declare-fun res!30148 () Bool)

(assert (=> b!43072 (=> (not res!30148) (not e!23352))))

(assert (=> b!43072 (= res!30148 (= (list!172 (_1!542 lt!4989)) (_1!550 (lexList!11 Lexer!53 lt!4969 (list!173 input!525)))))))

(declare-fun b!43073 () Bool)

(assert (=> b!43073 (= e!23352 (= (list!173 (_2!542 lt!4989)) (_2!550 (lexList!11 Lexer!53 lt!4969 (list!173 input!525)))))))

(declare-fun b!43074 () Bool)

(assert (=> b!43074 (= e!23354 (not (isEmpty!133 (_1!542 lt!4989))))))

(declare-fun b!43075 () Bool)

(assert (=> b!43075 (= e!23353 (= (_2!542 lt!4989) input!525))))

(assert (= (and d!4699 c!15964) b!43071))

(assert (= (and d!4699 (not c!15964)) b!43075))

(assert (= (and b!43071 res!30147) b!43074))

(assert (= (and d!4699 res!30149) b!43072))

(assert (= (and b!43072 res!30148) b!43073))

(declare-fun m!16857 () Bool)

(assert (=> b!43072 m!16857))

(assert (=> b!43072 m!16745))

(assert (=> b!43072 m!16745))

(declare-fun m!16859 () Bool)

(assert (=> b!43072 m!16859))

(declare-fun m!16861 () Bool)

(assert (=> b!43071 m!16861))

(declare-fun m!16863 () Bool)

(assert (=> b!43071 m!16863))

(declare-fun m!16865 () Bool)

(assert (=> d!4699 m!16865))

(declare-fun m!16867 () Bool)

(assert (=> d!4699 m!16867))

(declare-fun m!16869 () Bool)

(assert (=> b!43073 m!16869))

(assert (=> b!43073 m!16745))

(assert (=> b!43073 m!16745))

(assert (=> b!43073 m!16859))

(declare-fun m!16871 () Bool)

(assert (=> b!43074 m!16871))

(assert (=> b!42988 d!4699))

(declare-fun d!4701 () Bool)

(assert (=> d!4701 (= (list!172 (_1!542 lt!4976)) (list!174 (c!15957 (_1!542 lt!4976))))))

(declare-fun bs!5647 () Bool)

(assert (= bs!5647 d!4701))

(declare-fun m!16873 () Bool)

(assert (=> bs!5647 m!16873))

(assert (=> b!42988 d!4701))

(declare-fun d!4703 () Bool)

(assert (=> d!4703 (valid!203 (_2!549 lt!4975))))

(declare-fun Unit!302 () Unit!299)

(assert (=> d!4703 (= (lemmaInvariant!48 (_2!549 lt!4975)) Unit!302)))

(declare-fun bs!5648 () Bool)

(assert (= bs!5648 d!4703))

(declare-fun m!16875 () Bool)

(assert (=> bs!5648 m!16875))

(assert (=> b!42988 d!4703))

(declare-fun d!4705 () Bool)

(assert (=> d!4705 (= (list!172 (_1!542 (_1!549 lt!4975))) (list!174 (c!15957 (_1!542 (_1!549 lt!4975)))))))

(declare-fun bs!5649 () Bool)

(assert (= bs!5649 d!4705))

(declare-fun m!16877 () Bool)

(assert (=> bs!5649 m!16877))

(assert (=> b!42988 d!4705))

(declare-fun d!4707 () Bool)

(declare-fun list!175 (Conc!123) List!659)

(assert (=> d!4707 (= (list!173 (_2!542 lt!4977)) (list!175 (c!15956 (_2!542 lt!4977))))))

(declare-fun bs!5650 () Bool)

(assert (= bs!5650 d!4707))

(declare-fun m!16879 () Bool)

(assert (=> bs!5650 m!16879))

(assert (=> b!43015 d!4707))

(declare-fun d!4709 () Bool)

(assert (=> d!4709 (= (list!173 lt!4970) (list!175 (c!15956 lt!4970)))))

(declare-fun bs!5651 () Bool)

(assert (= bs!5651 d!4709))

(declare-fun m!16881 () Bool)

(assert (=> bs!5651 m!16881))

(assert (=> b!42989 d!4709))

(declare-fun d!4711 () Bool)

(declare-fun fromListB!6 (List!659) BalanceConc!246)

(assert (=> d!4711 (= (seqFromList!25 lt!4971) (fromListB!6 lt!4971))))

(declare-fun bs!5652 () Bool)

(assert (= bs!5652 d!4711))

(declare-fun m!16883 () Bool)

(assert (=> bs!5652 m!16883))

(assert (=> b!42989 d!4711))

(declare-fun d!4713 () Bool)

(assert (=> d!4713 (= (list!173 input!525) (list!175 (c!15956 input!525)))))

(declare-fun bs!5653 () Bool)

(assert (= bs!5653 d!4713))

(declare-fun m!16885 () Bool)

(assert (=> bs!5653 m!16885))

(assert (=> b!42989 d!4713))

(declare-fun d!4715 () Bool)

(declare-fun c!15965 () Bool)

(assert (=> d!4715 (= c!15965 ((_ is Node!123) (c!15956 input!525)))))

(declare-fun e!23355 () Bool)

(assert (=> d!4715 (= (inv!944 (c!15956 input!525)) e!23355)))

(declare-fun b!43076 () Bool)

(assert (=> b!43076 (= e!23355 (inv!945 (c!15956 input!525)))))

(declare-fun b!43077 () Bool)

(declare-fun e!23356 () Bool)

(assert (=> b!43077 (= e!23355 e!23356)))

(declare-fun res!30150 () Bool)

(assert (=> b!43077 (= res!30150 (not ((_ is Leaf!314) (c!15956 input!525))))))

(assert (=> b!43077 (=> res!30150 e!23356)))

(declare-fun b!43078 () Bool)

(assert (=> b!43078 (= e!23356 (inv!946 (c!15956 input!525)))))

(assert (= (and d!4715 c!15965) b!43076))

(assert (= (and d!4715 (not c!15965)) b!43077))

(assert (= (and b!43077 (not res!30150)) b!43078))

(declare-fun m!16887 () Bool)

(assert (=> b!43076 m!16887))

(declare-fun m!16889 () Bool)

(assert (=> b!43078 m!16889))

(assert (=> b!43006 d!4715))

(declare-fun d!4717 () Bool)

(assert (=> d!4717 (= (list!173 (_2!542 lt!4976)) (list!175 (c!15956 (_2!542 lt!4976))))))

(declare-fun bs!5654 () Bool)

(assert (= bs!5654 d!4717))

(declare-fun m!16891 () Bool)

(assert (=> bs!5654 m!16891))

(assert (=> b!43016 d!4717))

(declare-fun d!4719 () Bool)

(assert (=> d!4719 (= (list!173 (_2!542 (_1!549 lt!4975))) (list!175 (c!15956 (_2!542 (_1!549 lt!4975)))))))

(declare-fun bs!5655 () Bool)

(assert (= bs!5655 d!4719))

(declare-fun m!16893 () Bool)

(assert (=> bs!5655 m!16893))

(assert (=> b!43016 d!4719))

(declare-fun e!23364 () Bool)

(declare-fun b!43083 () Bool)

(declare-fun setRes!882 () Bool)

(declare-fun tp!29657 () Bool)

(declare-fun inv!947 (Context!166) Bool)

(assert (=> b!43083 (= e!23364 (and (inv!947 (_1!543 (_1!544 (h!6056 (zeroValue!474 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320)))))))))) setRes!882 tp!29657))))

(declare-fun condSetEmpty!882 () Bool)

(assert (=> b!43083 (= condSetEmpty!882 (= (_2!544 (h!6056 (zeroValue!474 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320)))))))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!882 () Bool)

(assert (=> setIsEmpty!882 setRes!882))

(declare-fun setNonEmpty!882 () Bool)

(declare-fun tp!29658 () Bool)

(declare-fun setElem!882 () Context!166)

(assert (=> setNonEmpty!882 (= setRes!882 (and tp!29658 (inv!947 setElem!882)))))

(declare-fun setRest!882 () (InoxSet Context!166))

(assert (=> setNonEmpty!882 (= (_2!544 (h!6056 (zeroValue!474 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!882 true) setRest!882))))

(assert (=> b!43017 (= tp!29646 e!23364)))

(assert (= (and b!43083 condSetEmpty!882) setIsEmpty!882))

(assert (= (and b!43083 (not condSetEmpty!882)) setNonEmpty!882))

(assert (= (and b!43017 ((_ is Cons!660) (zeroValue!474 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320)))))))) b!43083))

(declare-fun m!16895 () Bool)

(assert (=> b!43083 m!16895))

(declare-fun m!16897 () Bool)

(assert (=> setNonEmpty!882 m!16897))

(declare-fun e!23367 () Bool)

(declare-fun setRes!883 () Bool)

(declare-fun tp!29659 () Bool)

(declare-fun b!43084 () Bool)

(assert (=> b!43084 (= e!23367 (and (inv!947 (_1!543 (_1!544 (h!6056 (minValue!474 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320)))))))))) setRes!883 tp!29659))))

(declare-fun condSetEmpty!883 () Bool)

(assert (=> b!43084 (= condSetEmpty!883 (= (_2!544 (h!6056 (minValue!474 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320)))))))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!883 () Bool)

(assert (=> setIsEmpty!883 setRes!883))

(declare-fun setNonEmpty!883 () Bool)

(declare-fun tp!29660 () Bool)

(declare-fun setElem!883 () Context!166)

(assert (=> setNonEmpty!883 (= setRes!883 (and tp!29660 (inv!947 setElem!883)))))

(declare-fun setRest!883 () (InoxSet Context!166))

(assert (=> setNonEmpty!883 (= (_2!544 (h!6056 (minValue!474 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!883 true) setRest!883))))

(assert (=> b!43017 (= tp!29632 e!23367)))

(assert (= (and b!43084 condSetEmpty!883) setIsEmpty!883))

(assert (= (and b!43084 (not condSetEmpty!883)) setNonEmpty!883))

(assert (= (and b!43017 ((_ is Cons!660) (minValue!474 (v!12413 (underlying!631 (v!12414 (underlying!632 (cache!699 cacheUp!320)))))))) b!43084))

(declare-fun m!16899 () Bool)

(assert (=> b!43084 m!16899))

(declare-fun m!16901 () Bool)

(assert (=> setNonEmpty!883 m!16901))

(declare-fun b!43089 () Bool)

(declare-fun e!23373 () Bool)

(declare-fun setRes!886 () Bool)

(declare-fun tp!29665 () Bool)

(assert (=> b!43089 (= e!23373 (and setRes!886 tp!29665))))

(declare-fun condSetEmpty!886 () Bool)

(assert (=> b!43089 (= condSetEmpty!886 (= (_1!547 (_1!548 (h!6058 (zeroValue!476 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!886 () Bool)

(assert (=> setIsEmpty!886 setRes!886))

(declare-fun setNonEmpty!886 () Bool)

(declare-fun tp!29666 () Bool)

(declare-fun setElem!886 () Context!166)

(assert (=> setNonEmpty!886 (= setRes!886 (and tp!29666 (inv!947 setElem!886)))))

(declare-fun setRest!886 () (InoxSet Context!166))

(assert (=> setNonEmpty!886 (= (_1!547 (_1!548 (h!6058 (zeroValue!476 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!886 true) setRest!886))))

(assert (=> b!43019 (= tp!29649 e!23373)))

(assert (= (and b!43089 condSetEmpty!886) setIsEmpty!886))

(assert (= (and b!43089 (not condSetEmpty!886)) setNonEmpty!886))

(assert (= (and b!43019 ((_ is Cons!662) (zeroValue!476 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45)))))))) b!43089))

(declare-fun m!16903 () Bool)

(assert (=> setNonEmpty!886 m!16903))

(declare-fun b!43090 () Bool)

(declare-fun e!23375 () Bool)

(declare-fun setRes!887 () Bool)

(declare-fun tp!29667 () Bool)

(assert (=> b!43090 (= e!23375 (and setRes!887 tp!29667))))

(declare-fun condSetEmpty!887 () Bool)

(assert (=> b!43090 (= condSetEmpty!887 (= (_1!547 (_1!548 (h!6058 (minValue!476 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!887 () Bool)

(assert (=> setIsEmpty!887 setRes!887))

(declare-fun setNonEmpty!887 () Bool)

(declare-fun tp!29668 () Bool)

(declare-fun setElem!887 () Context!166)

(assert (=> setNonEmpty!887 (= setRes!887 (and tp!29668 (inv!947 setElem!887)))))

(declare-fun setRest!887 () (InoxSet Context!166))

(assert (=> setNonEmpty!887 (= (_1!547 (_1!548 (h!6058 (minValue!476 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!887 true) setRest!887))))

(assert (=> b!43019 (= tp!29645 e!23375)))

(assert (= (and b!43090 condSetEmpty!887) setIsEmpty!887))

(assert (= (and b!43090 (not condSetEmpty!887)) setNonEmpty!887))

(assert (= (and b!43019 ((_ is Cons!662) (minValue!476 (v!12417 (underlying!635 (v!12418 (underlying!636 (cache!701 cacheFurthestNullable!45)))))))) b!43090))

(declare-fun m!16905 () Bool)

(assert (=> setNonEmpty!887 m!16905))

(declare-fun mapNonEmpty!813 () Bool)

(declare-fun mapRes!813 () Bool)

(declare-fun tp!29680 () Bool)

(declare-fun e!23392 () Bool)

(assert (=> mapNonEmpty!813 (= mapRes!813 (and tp!29680 e!23392))))

(declare-fun mapKey!813 () (_ BitVec 32))

(declare-fun mapValue!813 () List!663)

(declare-fun mapRest!813 () (Array (_ BitVec 32) List!663))

(assert (=> mapNonEmpty!813 (= mapRest!810 (store mapRest!813 mapKey!813 mapValue!813))))

(declare-fun tp!29681 () Bool)

(declare-fun setRes!893 () Bool)

(declare-fun b!43097 () Bool)

(assert (=> b!43097 (= e!23392 (and (inv!947 (_2!545 (_1!546 (h!6057 mapValue!813)))) setRes!893 tp!29681))))

(declare-fun condSetEmpty!892 () Bool)

(assert (=> b!43097 (= condSetEmpty!892 (= (_2!546 (h!6057 mapValue!813)) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!892 () Bool)

(declare-fun setRes!892 () Bool)

(assert (=> setIsEmpty!892 setRes!892))

(declare-fun b!43098 () Bool)

(declare-fun mapDefault!813 () List!663)

(declare-fun e!23393 () Bool)

(declare-fun tp!29683 () Bool)

(assert (=> b!43098 (= e!23393 (and (inv!947 (_2!545 (_1!546 (h!6057 mapDefault!813)))) setRes!892 tp!29683))))

(declare-fun condSetEmpty!893 () Bool)

(assert (=> b!43098 (= condSetEmpty!893 (= (_2!546 (h!6057 mapDefault!813)) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!893 () Bool)

(assert (=> setIsEmpty!893 setRes!893))

(declare-fun setNonEmpty!892 () Bool)

(declare-fun tp!29679 () Bool)

(declare-fun setElem!893 () Context!166)

(assert (=> setNonEmpty!892 (= setRes!892 (and tp!29679 (inv!947 setElem!893)))))

(declare-fun setRest!892 () (InoxSet Context!166))

(assert (=> setNonEmpty!892 (= (_2!546 (h!6057 mapDefault!813)) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!893 true) setRest!892))))

(declare-fun setNonEmpty!893 () Bool)

(declare-fun tp!29682 () Bool)

(declare-fun setElem!892 () Context!166)

(assert (=> setNonEmpty!893 (= setRes!893 (and tp!29682 (inv!947 setElem!892)))))

(declare-fun setRest!893 () (InoxSet Context!166))

(assert (=> setNonEmpty!893 (= (_2!546 (h!6057 mapValue!813)) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!892 true) setRest!893))))

(declare-fun mapIsEmpty!813 () Bool)

(assert (=> mapIsEmpty!813 mapRes!813))

(declare-fun condMapEmpty!813 () Bool)

(assert (=> mapNonEmpty!810 (= condMapEmpty!813 (= mapRest!810 ((as const (Array (_ BitVec 32) List!663)) mapDefault!813)))))

(assert (=> mapNonEmpty!810 (= tp!29637 (and e!23393 mapRes!813))))

(assert (= (and mapNonEmpty!810 condMapEmpty!813) mapIsEmpty!813))

(assert (= (and mapNonEmpty!810 (not condMapEmpty!813)) mapNonEmpty!813))

(assert (= (and b!43097 condSetEmpty!892) setIsEmpty!893))

(assert (= (and b!43097 (not condSetEmpty!892)) setNonEmpty!893))

(assert (= (and mapNonEmpty!813 ((_ is Cons!661) mapValue!813)) b!43097))

(assert (= (and b!43098 condSetEmpty!893) setIsEmpty!892))

(assert (= (and b!43098 (not condSetEmpty!893)) setNonEmpty!892))

(assert (= (and mapNonEmpty!810 ((_ is Cons!661) mapDefault!813)) b!43098))

(declare-fun m!16907 () Bool)

(assert (=> setNonEmpty!893 m!16907))

(declare-fun m!16909 () Bool)

(assert (=> mapNonEmpty!813 m!16909))

(declare-fun m!16911 () Bool)

(assert (=> b!43097 m!16911))

(declare-fun m!16913 () Bool)

(assert (=> setNonEmpty!892 m!16913))

(declare-fun m!16915 () Bool)

(assert (=> b!43098 m!16915))

(declare-fun setRes!896 () Bool)

(declare-fun e!23403 () Bool)

(declare-fun tp!29689 () Bool)

(declare-fun b!43103 () Bool)

(assert (=> b!43103 (= e!23403 (and (inv!947 (_2!545 (_1!546 (h!6057 mapValue!809)))) setRes!896 tp!29689))))

(declare-fun condSetEmpty!896 () Bool)

(assert (=> b!43103 (= condSetEmpty!896 (= (_2!546 (h!6057 mapValue!809)) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!896 () Bool)

(assert (=> setIsEmpty!896 setRes!896))

(declare-fun setNonEmpty!896 () Bool)

(declare-fun tp!29688 () Bool)

(declare-fun setElem!896 () Context!166)

(assert (=> setNonEmpty!896 (= setRes!896 (and tp!29688 (inv!947 setElem!896)))))

(declare-fun setRest!896 () (InoxSet Context!166))

(assert (=> setNonEmpty!896 (= (_2!546 (h!6057 mapValue!809)) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!896 true) setRest!896))))

(assert (=> mapNonEmpty!810 (= tp!29648 e!23403)))

(assert (= (and b!43103 condSetEmpty!896) setIsEmpty!896))

(assert (= (and b!43103 (not condSetEmpty!896)) setNonEmpty!896))

(assert (= (and mapNonEmpty!810 ((_ is Cons!661) mapValue!809)) b!43103))

(declare-fun m!16917 () Bool)

(assert (=> b!43103 m!16917))

(declare-fun m!16919 () Bool)

(assert (=> setNonEmpty!896 m!16919))

(declare-fun b!43104 () Bool)

(declare-fun e!23404 () Bool)

(declare-fun setRes!897 () Bool)

(declare-fun tp!29690 () Bool)

(assert (=> b!43104 (= e!23404 (and setRes!897 tp!29690))))

(declare-fun condSetEmpty!897 () Bool)

(assert (=> b!43104 (= condSetEmpty!897 (= (_1!547 (_1!548 (h!6058 mapDefault!810))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!897 () Bool)

(assert (=> setIsEmpty!897 setRes!897))

(declare-fun setNonEmpty!897 () Bool)

(declare-fun tp!29691 () Bool)

(declare-fun setElem!897 () Context!166)

(assert (=> setNonEmpty!897 (= setRes!897 (and tp!29691 (inv!947 setElem!897)))))

(declare-fun setRest!897 () (InoxSet Context!166))

(assert (=> setNonEmpty!897 (= (_1!547 (_1!548 (h!6058 mapDefault!810))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!897 true) setRest!897))))

(assert (=> b!42995 (= tp!29640 e!23404)))

(assert (= (and b!43104 condSetEmpty!897) setIsEmpty!897))

(assert (= (and b!43104 (not condSetEmpty!897)) setNonEmpty!897))

(assert (= (and b!42995 ((_ is Cons!662) mapDefault!810)) b!43104))

(declare-fun m!16921 () Bool)

(assert (=> setNonEmpty!897 m!16921))

(declare-fun e!23410 () Bool)

(declare-fun tp!29696 () Bool)

(declare-fun b!43111 () Bool)

(declare-fun tp!29697 () Bool)

(assert (=> b!43111 (= e!23410 (and (inv!944 (left!539 (c!15956 (totalInput!1527 cacheFurthestNullable!45)))) tp!29696 (inv!944 (right!869 (c!15956 (totalInput!1527 cacheFurthestNullable!45)))) tp!29697))))

(declare-fun b!43112 () Bool)

(declare-fun inv!948 (IArray!247) Bool)

(assert (=> b!43112 (= e!23410 (inv!948 (xs!2702 (c!15956 (totalInput!1527 cacheFurthestNullable!45)))))))

(assert (=> b!43012 (= tp!29639 (and (inv!944 (c!15956 (totalInput!1527 cacheFurthestNullable!45))) e!23410))))

(assert (= (and b!43012 ((_ is Node!123) (c!15956 (totalInput!1527 cacheFurthestNullable!45)))) b!43111))

(assert (= (and b!43012 ((_ is Leaf!314) (c!15956 (totalInput!1527 cacheFurthestNullable!45)))) b!43112))

(declare-fun m!16923 () Bool)

(assert (=> b!43111 m!16923))

(declare-fun m!16925 () Bool)

(assert (=> b!43111 m!16925))

(declare-fun m!16927 () Bool)

(assert (=> b!43112 m!16927))

(assert (=> b!43012 m!16711))

(declare-fun setRes!898 () Bool)

(declare-fun e!23413 () Bool)

(declare-fun tp!29698 () Bool)

(declare-fun b!43113 () Bool)

(assert (=> b!43113 (= e!23413 (and (inv!947 (_1!543 (_1!544 (h!6056 mapDefault!809)))) setRes!898 tp!29698))))

(declare-fun condSetEmpty!898 () Bool)

(assert (=> b!43113 (= condSetEmpty!898 (= (_2!544 (h!6056 mapDefault!809)) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!898 () Bool)

(assert (=> setIsEmpty!898 setRes!898))

(declare-fun setNonEmpty!898 () Bool)

(declare-fun tp!29699 () Bool)

(declare-fun setElem!898 () Context!166)

(assert (=> setNonEmpty!898 (= setRes!898 (and tp!29699 (inv!947 setElem!898)))))

(declare-fun setRest!898 () (InoxSet Context!166))

(assert (=> setNonEmpty!898 (= (_2!544 (h!6056 mapDefault!809)) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!898 true) setRest!898))))

(assert (=> b!43002 (= tp!29644 e!23413)))

(assert (= (and b!43113 condSetEmpty!898) setIsEmpty!898))

(assert (= (and b!43113 (not condSetEmpty!898)) setNonEmpty!898))

(assert (= (and b!43002 ((_ is Cons!660) mapDefault!809)) b!43113))

(declare-fun m!16929 () Bool)

(assert (=> b!43113 m!16929))

(declare-fun m!16931 () Bool)

(assert (=> setNonEmpty!898 m!16931))

(declare-fun e!23417 () Bool)

(declare-fun tp!29701 () Bool)

(declare-fun b!43114 () Bool)

(declare-fun setRes!899 () Bool)

(assert (=> b!43114 (= e!23417 (and (inv!947 (_2!545 (_1!546 (h!6057 mapDefault!808)))) setRes!899 tp!29701))))

(declare-fun condSetEmpty!899 () Bool)

(assert (=> b!43114 (= condSetEmpty!899 (= (_2!546 (h!6057 mapDefault!808)) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!899 () Bool)

(assert (=> setIsEmpty!899 setRes!899))

(declare-fun setNonEmpty!899 () Bool)

(declare-fun tp!29700 () Bool)

(declare-fun setElem!899 () Context!166)

(assert (=> setNonEmpty!899 (= setRes!899 (and tp!29700 (inv!947 setElem!899)))))

(declare-fun setRest!899 () (InoxSet Context!166))

(assert (=> setNonEmpty!899 (= (_2!546 (h!6057 mapDefault!808)) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!899 true) setRest!899))))

(assert (=> b!42994 (= tp!29633 e!23417)))

(assert (= (and b!43114 condSetEmpty!899) setIsEmpty!899))

(assert (= (and b!43114 (not condSetEmpty!899)) setNonEmpty!899))

(assert (= (and b!42994 ((_ is Cons!661) mapDefault!808)) b!43114))

(declare-fun m!16933 () Bool)

(assert (=> b!43114 m!16933))

(declare-fun m!16935 () Bool)

(assert (=> setNonEmpty!899 m!16935))

(declare-fun tp!29703 () Bool)

(declare-fun setRes!900 () Bool)

(declare-fun b!43115 () Bool)

(declare-fun e!23420 () Bool)

(assert (=> b!43115 (= e!23420 (and (inv!947 (_2!545 (_1!546 (h!6057 (zeroValue!475 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333)))))))))) setRes!900 tp!29703))))

(declare-fun condSetEmpty!900 () Bool)

(assert (=> b!43115 (= condSetEmpty!900 (= (_2!546 (h!6057 (zeroValue!475 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333)))))))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!900 () Bool)

(assert (=> setIsEmpty!900 setRes!900))

(declare-fun setNonEmpty!900 () Bool)

(declare-fun tp!29702 () Bool)

(declare-fun setElem!900 () Context!166)

(assert (=> setNonEmpty!900 (= setRes!900 (and tp!29702 (inv!947 setElem!900)))))

(declare-fun setRest!900 () (InoxSet Context!166))

(assert (=> setNonEmpty!900 (= (_2!546 (h!6057 (zeroValue!475 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!900 true) setRest!900))))

(assert (=> b!42996 (= tp!29634 e!23420)))

(assert (= (and b!43115 condSetEmpty!900) setIsEmpty!900))

(assert (= (and b!43115 (not condSetEmpty!900)) setNonEmpty!900))

(assert (= (and b!42996 ((_ is Cons!661) (zeroValue!475 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333)))))))) b!43115))

(declare-fun m!16937 () Bool)

(assert (=> b!43115 m!16937))

(declare-fun m!16939 () Bool)

(assert (=> setNonEmpty!900 m!16939))

(declare-fun b!43116 () Bool)

(declare-fun tp!29705 () Bool)

(declare-fun e!23423 () Bool)

(declare-fun setRes!901 () Bool)

(assert (=> b!43116 (= e!23423 (and (inv!947 (_2!545 (_1!546 (h!6057 (minValue!475 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333)))))))))) setRes!901 tp!29705))))

(declare-fun condSetEmpty!901 () Bool)

(assert (=> b!43116 (= condSetEmpty!901 (= (_2!546 (h!6057 (minValue!475 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333)))))))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!901 () Bool)

(assert (=> setIsEmpty!901 setRes!901))

(declare-fun setNonEmpty!901 () Bool)

(declare-fun tp!29704 () Bool)

(declare-fun setElem!901 () Context!166)

(assert (=> setNonEmpty!901 (= setRes!901 (and tp!29704 (inv!947 setElem!901)))))

(declare-fun setRest!901 () (InoxSet Context!166))

(assert (=> setNonEmpty!901 (= (_2!546 (h!6057 (minValue!475 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!901 true) setRest!901))))

(assert (=> b!42996 (= tp!29630 e!23423)))

(assert (= (and b!43116 condSetEmpty!901) setIsEmpty!901))

(assert (= (and b!43116 (not condSetEmpty!901)) setNonEmpty!901))

(assert (= (and b!42996 ((_ is Cons!661) (minValue!475 (v!12415 (underlying!633 (v!12416 (underlying!634 (cache!700 cacheDown!333)))))))) b!43116))

(declare-fun m!16941 () Bool)

(assert (=> b!43116 m!16941))

(declare-fun m!16943 () Bool)

(assert (=> setNonEmpty!901 m!16943))

(declare-fun setIsEmpty!906 () Bool)

(declare-fun setRes!906 () Bool)

(assert (=> setIsEmpty!906 setRes!906))

(declare-fun setIsEmpty!907 () Bool)

(declare-fun setRes!907 () Bool)

(assert (=> setIsEmpty!907 setRes!907))

(declare-fun condMapEmpty!816 () Bool)

(declare-fun mapDefault!816 () List!664)

(assert (=> mapNonEmpty!809 (= condMapEmpty!816 (= mapRest!808 ((as const (Array (_ BitVec 32) List!664)) mapDefault!816)))))

(declare-fun e!23434 () Bool)

(declare-fun mapRes!816 () Bool)

(assert (=> mapNonEmpty!809 (= tp!29635 (and e!23434 mapRes!816))))

(declare-fun mapIsEmpty!816 () Bool)

(assert (=> mapIsEmpty!816 mapRes!816))

(declare-fun b!43123 () Bool)

(declare-fun tp!29717 () Bool)

(assert (=> b!43123 (= e!23434 (and setRes!907 tp!29717))))

(declare-fun condSetEmpty!906 () Bool)

(assert (=> b!43123 (= condSetEmpty!906 (= (_1!547 (_1!548 (h!6058 mapDefault!816))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun mapNonEmpty!816 () Bool)

(declare-fun tp!29720 () Bool)

(declare-fun e!23435 () Bool)

(assert (=> mapNonEmpty!816 (= mapRes!816 (and tp!29720 e!23435))))

(declare-fun mapRest!816 () (Array (_ BitVec 32) List!664))

(declare-fun mapKey!816 () (_ BitVec 32))

(declare-fun mapValue!816 () List!664)

(assert (=> mapNonEmpty!816 (= mapRest!808 (store mapRest!816 mapKey!816 mapValue!816))))

(declare-fun b!43124 () Bool)

(declare-fun tp!29719 () Bool)

(assert (=> b!43124 (= e!23435 (and setRes!906 tp!29719))))

(declare-fun condSetEmpty!907 () Bool)

(assert (=> b!43124 (= condSetEmpty!907 (= (_1!547 (_1!548 (h!6058 mapValue!816))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setNonEmpty!906 () Bool)

(declare-fun tp!29718 () Bool)

(declare-fun setElem!907 () Context!166)

(assert (=> setNonEmpty!906 (= setRes!906 (and tp!29718 (inv!947 setElem!907)))))

(declare-fun setRest!906 () (InoxSet Context!166))

(assert (=> setNonEmpty!906 (= (_1!547 (_1!548 (h!6058 mapValue!816))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!907 true) setRest!906))))

(declare-fun setNonEmpty!907 () Bool)

(declare-fun tp!29716 () Bool)

(declare-fun setElem!906 () Context!166)

(assert (=> setNonEmpty!907 (= setRes!907 (and tp!29716 (inv!947 setElem!906)))))

(declare-fun setRest!907 () (InoxSet Context!166))

(assert (=> setNonEmpty!907 (= (_1!547 (_1!548 (h!6058 mapDefault!816))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!906 true) setRest!907))))

(assert (= (and mapNonEmpty!809 condMapEmpty!816) mapIsEmpty!816))

(assert (= (and mapNonEmpty!809 (not condMapEmpty!816)) mapNonEmpty!816))

(assert (= (and b!43124 condSetEmpty!907) setIsEmpty!906))

(assert (= (and b!43124 (not condSetEmpty!907)) setNonEmpty!906))

(assert (= (and mapNonEmpty!816 ((_ is Cons!662) mapValue!816)) b!43124))

(assert (= (and b!43123 condSetEmpty!906) setIsEmpty!907))

(assert (= (and b!43123 (not condSetEmpty!906)) setNonEmpty!907))

(assert (= (and mapNonEmpty!809 ((_ is Cons!662) mapDefault!816)) b!43123))

(declare-fun m!16945 () Bool)

(assert (=> mapNonEmpty!816 m!16945))

(declare-fun m!16947 () Bool)

(assert (=> setNonEmpty!906 m!16947))

(declare-fun m!16949 () Bool)

(assert (=> setNonEmpty!907 m!16949))

(declare-fun b!43125 () Bool)

(declare-fun e!23436 () Bool)

(declare-fun setRes!908 () Bool)

(declare-fun tp!29721 () Bool)

(assert (=> b!43125 (= e!23436 (and setRes!908 tp!29721))))

(declare-fun condSetEmpty!908 () Bool)

(assert (=> b!43125 (= condSetEmpty!908 (= (_1!547 (_1!548 (h!6058 mapValue!808))) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!908 () Bool)

(assert (=> setIsEmpty!908 setRes!908))

(declare-fun setNonEmpty!908 () Bool)

(declare-fun tp!29722 () Bool)

(declare-fun setElem!908 () Context!166)

(assert (=> setNonEmpty!908 (= setRes!908 (and tp!29722 (inv!947 setElem!908)))))

(declare-fun setRest!908 () (InoxSet Context!166))

(assert (=> setNonEmpty!908 (= (_1!547 (_1!548 (h!6058 mapValue!808))) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!908 true) setRest!908))))

(assert (=> mapNonEmpty!809 (= tp!29643 e!23436)))

(assert (= (and b!43125 condSetEmpty!908) setIsEmpty!908))

(assert (= (and b!43125 (not condSetEmpty!908)) setNonEmpty!908))

(assert (= (and mapNonEmpty!809 ((_ is Cons!662) mapValue!808)) b!43125))

(declare-fun m!16951 () Bool)

(assert (=> setNonEmpty!908 m!16951))

(declare-fun tp!29724 () Bool)

(declare-fun tp!29723 () Bool)

(declare-fun e!23438 () Bool)

(declare-fun b!43126 () Bool)

(assert (=> b!43126 (= e!23438 (and (inv!944 (left!539 (c!15956 input!525))) tp!29723 (inv!944 (right!869 (c!15956 input!525))) tp!29724))))

(declare-fun b!43127 () Bool)

(assert (=> b!43127 (= e!23438 (inv!948 (xs!2702 (c!15956 input!525))))))

(assert (=> b!43006 (= tp!29631 (and (inv!944 (c!15956 input!525)) e!23438))))

(assert (= (and b!43006 ((_ is Node!123) (c!15956 input!525))) b!43126))

(assert (= (and b!43006 ((_ is Leaf!314) (c!15956 input!525))) b!43127))

(declare-fun m!16953 () Bool)

(assert (=> b!43126 m!16953))

(declare-fun m!16955 () Bool)

(assert (=> b!43126 m!16955))

(declare-fun m!16957 () Bool)

(assert (=> b!43127 m!16957))

(assert (=> b!43006 m!16703))

(declare-fun setNonEmpty!913 () Bool)

(declare-fun setRes!914 () Bool)

(declare-fun tp!29737 () Bool)

(declare-fun setElem!914 () Context!166)

(assert (=> setNonEmpty!913 (= setRes!914 (and tp!29737 (inv!947 setElem!914)))))

(declare-fun mapDefault!819 () List!662)

(declare-fun setRest!913 () (InoxSet Context!166))

(assert (=> setNonEmpty!913 (= (_2!544 (h!6056 mapDefault!819)) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!914 true) setRest!913))))

(declare-fun setNonEmpty!914 () Bool)

(declare-fun setRes!913 () Bool)

(declare-fun tp!29739 () Bool)

(declare-fun setElem!913 () Context!166)

(assert (=> setNonEmpty!914 (= setRes!913 (and tp!29739 (inv!947 setElem!913)))))

(declare-fun mapValue!819 () List!662)

(declare-fun setRest!914 () (InoxSet Context!166))

(assert (=> setNonEmpty!914 (= (_2!544 (h!6056 mapValue!819)) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!913 true) setRest!914))))

(declare-fun mapNonEmpty!819 () Bool)

(declare-fun mapRes!819 () Bool)

(declare-fun tp!29735 () Bool)

(declare-fun e!23452 () Bool)

(assert (=> mapNonEmpty!819 (= mapRes!819 (and tp!29735 e!23452))))

(declare-fun mapKey!819 () (_ BitVec 32))

(declare-fun mapRest!819 () (Array (_ BitVec 32) List!662))

(assert (=> mapNonEmpty!819 (= mapRest!809 (store mapRest!819 mapKey!819 mapValue!819))))

(declare-fun setIsEmpty!913 () Bool)

(assert (=> setIsEmpty!913 setRes!914))

(declare-fun tp!29738 () Bool)

(declare-fun b!43134 () Bool)

(assert (=> b!43134 (= e!23452 (and (inv!947 (_1!543 (_1!544 (h!6056 mapValue!819)))) setRes!913 tp!29738))))

(declare-fun condSetEmpty!913 () Bool)

(assert (=> b!43134 (= condSetEmpty!913 (= (_2!544 (h!6056 mapValue!819)) ((as const (Array Context!166 Bool)) false)))))

(declare-fun mapIsEmpty!819 () Bool)

(assert (=> mapIsEmpty!819 mapRes!819))

(declare-fun condMapEmpty!819 () Bool)

(assert (=> mapNonEmpty!808 (= condMapEmpty!819 (= mapRest!809 ((as const (Array (_ BitVec 32) List!662)) mapDefault!819)))))

(declare-fun e!23456 () Bool)

(assert (=> mapNonEmpty!808 (= tp!29652 (and e!23456 mapRes!819))))

(declare-fun setIsEmpty!914 () Bool)

(assert (=> setIsEmpty!914 setRes!913))

(declare-fun b!43135 () Bool)

(declare-fun tp!29736 () Bool)

(assert (=> b!43135 (= e!23456 (and (inv!947 (_1!543 (_1!544 (h!6056 mapDefault!819)))) setRes!914 tp!29736))))

(declare-fun condSetEmpty!914 () Bool)

(assert (=> b!43135 (= condSetEmpty!914 (= (_2!544 (h!6056 mapDefault!819)) ((as const (Array Context!166 Bool)) false)))))

(assert (= (and mapNonEmpty!808 condMapEmpty!819) mapIsEmpty!819))

(assert (= (and mapNonEmpty!808 (not condMapEmpty!819)) mapNonEmpty!819))

(assert (= (and b!43134 condSetEmpty!913) setIsEmpty!914))

(assert (= (and b!43134 (not condSetEmpty!913)) setNonEmpty!914))

(assert (= (and mapNonEmpty!819 ((_ is Cons!660) mapValue!819)) b!43134))

(assert (= (and b!43135 condSetEmpty!914) setIsEmpty!913))

(assert (= (and b!43135 (not condSetEmpty!914)) setNonEmpty!913))

(assert (= (and mapNonEmpty!808 ((_ is Cons!660) mapDefault!819)) b!43135))

(declare-fun m!16959 () Bool)

(assert (=> mapNonEmpty!819 m!16959))

(declare-fun m!16961 () Bool)

(assert (=> setNonEmpty!913 m!16961))

(declare-fun m!16963 () Bool)

(assert (=> b!43135 m!16963))

(declare-fun m!16965 () Bool)

(assert (=> b!43134 m!16965))

(declare-fun m!16967 () Bool)

(assert (=> setNonEmpty!914 m!16967))

(declare-fun e!23459 () Bool)

(declare-fun tp!29740 () Bool)

(declare-fun b!43136 () Bool)

(declare-fun setRes!915 () Bool)

(assert (=> b!43136 (= e!23459 (and (inv!947 (_1!543 (_1!544 (h!6056 mapValue!810)))) setRes!915 tp!29740))))

(declare-fun condSetEmpty!915 () Bool)

(assert (=> b!43136 (= condSetEmpty!915 (= (_2!544 (h!6056 mapValue!810)) ((as const (Array Context!166 Bool)) false)))))

(declare-fun setIsEmpty!915 () Bool)

(assert (=> setIsEmpty!915 setRes!915))

(declare-fun setNonEmpty!915 () Bool)

(declare-fun tp!29741 () Bool)

(declare-fun setElem!915 () Context!166)

(assert (=> setNonEmpty!915 (= setRes!915 (and tp!29741 (inv!947 setElem!915)))))

(declare-fun setRest!915 () (InoxSet Context!166))

(assert (=> setNonEmpty!915 (= (_2!544 (h!6056 mapValue!810)) ((_ map or) (store ((as const (Array Context!166 Bool)) false) setElem!915 true) setRest!915))))

(assert (=> mapNonEmpty!808 (= tp!29647 e!23459)))

(assert (= (and b!43136 condSetEmpty!915) setIsEmpty!915))

(assert (= (and b!43136 (not condSetEmpty!915)) setNonEmpty!915))

(assert (= (and mapNonEmpty!808 ((_ is Cons!660) mapValue!810)) b!43136))

(declare-fun m!16969 () Bool)

(assert (=> b!43136 m!16969))

(declare-fun m!16971 () Bool)

(assert (=> setNonEmpty!915 m!16971))

(check-sat (not b!43084) (not d!4691) (not d!4717) (not b!43115) (not setNonEmpty!883) (not d!4673) (not b_next!1035) (not b!43025) (not b!43135) (not d!4655) (not b!43028) (not b!43070) b_and!1069 (not d!4707) (not b!43113) (not d!4699) (not mapNonEmpty!819) (not b!43098) (not b!43071) (not b!43054) (not b!43111) (not d!4657) (not setNonEmpty!899) (not b!43073) (not b_next!1033) (not b!43136) (not b!43078) (not b!43006) (not setNonEmpty!907) (not b_next!1039) (not setNonEmpty!887) (not setNonEmpty!882) (not b!43051) (not b_next!1037) (not setNonEmpty!896) (not setNonEmpty!898) b_and!1067 (not b!43067) (not d!4701) (not b!43052) (not b!43104) (not d!4693) (not mapNonEmpty!816) (not b!43066) (not b!43076) (not d!4703) (not b!43116) (not b!43090) (not b!43022) (not b!43124) (not b!43134) b_and!1073 (not b!43097) (not setNonEmpty!914) (not b!43040) (not b!43125) (not setNonEmpty!886) (not b!43083) (not d!4709) (not b!43012) (not b!43114) (not setNonEmpty!900) (not d!4705) (not b!43127) (not b!43072) (not b!43074) (not b!43126) b_and!1071 (not d!4719) (not d!4711) (not setNonEmpty!893) (not b!43112) (not setNonEmpty!915) (not d!4683) (not setNonEmpty!908) b_and!1063 (not b!43089) (not d!4695) (not b!43053) (not d!4697) (not b!43068) (not b!43103) (not setNonEmpty!892) (not setNonEmpty!897) (not d!4669) (not d!4663) b_and!1065 (not b_next!1029) (not setNonEmpty!913) (not b!43038) (not setNonEmpty!901) (not d!4681) (not d!4713) (not b!43123) (not mapNonEmpty!813) (not b_next!1031) (not b!43031) (not setNonEmpty!906))
(check-sat (not b_next!1035) b_and!1069 (not b_next!1033) (not b_next!1039) b_and!1073 b_and!1071 b_and!1063 (not b_next!1031) (not b_next!1037) b_and!1067 b_and!1065 (not b_next!1029))
