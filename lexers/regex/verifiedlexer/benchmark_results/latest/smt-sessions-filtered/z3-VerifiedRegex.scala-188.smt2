; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2426 () Bool)

(assert start!2426)

(declare-fun b!42118 () Bool)

(declare-fun b_free!981 () Bool)

(declare-fun b_next!981 () Bool)

(assert (=> b!42118 (= b_free!981 (not b_next!981))))

(declare-fun tp!29109 () Bool)

(declare-fun b_and!1015 () Bool)

(assert (=> b!42118 (= tp!29109 b_and!1015)))

(declare-fun b!42138 () Bool)

(declare-fun b_free!983 () Bool)

(declare-fun b_next!983 () Bool)

(assert (=> b!42138 (= b_free!983 (not b_next!983))))

(declare-fun tp!29097 () Bool)

(declare-fun b_and!1017 () Bool)

(assert (=> b!42138 (= tp!29097 b_and!1017)))

(declare-fun b!42127 () Bool)

(declare-fun b_free!985 () Bool)

(declare-fun b_next!985 () Bool)

(assert (=> b!42127 (= b_free!985 (not b_next!985))))

(declare-fun tp!29107 () Bool)

(declare-fun b_and!1019 () Bool)

(assert (=> b!42127 (= tp!29107 b_and!1019)))

(declare-fun b!42110 () Bool)

(declare-fun b_free!987 () Bool)

(declare-fun b_next!987 () Bool)

(assert (=> b!42110 (= b_free!987 (not b_next!987))))

(declare-fun tp!29102 () Bool)

(declare-fun b_and!1021 () Bool)

(assert (=> b!42110 (= tp!29102 b_and!1021)))

(declare-fun b!42131 () Bool)

(declare-fun b_free!989 () Bool)

(declare-fun b_next!989 () Bool)

(assert (=> b!42131 (= b_free!989 (not b_next!989))))

(declare-fun tp!29119 () Bool)

(declare-fun b_and!1023 () Bool)

(assert (=> b!42131 (= tp!29119 b_and!1023)))

(declare-fun b!42124 () Bool)

(declare-fun b_free!991 () Bool)

(declare-fun b_next!991 () Bool)

(assert (=> b!42124 (= b_free!991 (not b_next!991))))

(declare-fun tp!29117 () Bool)

(declare-fun b_and!1025 () Bool)

(assert (=> b!42124 (= tp!29117 b_and!1025)))

(declare-fun b!42109 () Bool)

(declare-fun e!22453 () Bool)

(declare-fun tp!29098 () Bool)

(declare-fun mapRes!753 () Bool)

(assert (=> b!42109 (= e!22453 (and tp!29098 mapRes!753))))

(declare-fun condMapEmpty!751 () Bool)

(declare-datatypes ((Regex!221 0))(
  ( (ElementMatch!221 (c!15875 (_ BitVec 16))) (Concat!367 (regOne!954 Regex!221) (regTwo!954 Regex!221)) (EmptyExpr!221) (Star!221 (reg!550 Regex!221)) (EmptyLang!221) (Union!221 (regOne!955 Regex!221) (regTwo!955 Regex!221)) )
))
(declare-datatypes ((List!629 0))(
  ( (Nil!627) (Cons!627 (h!6023 Regex!221) (t!16173 List!629)) )
))
(declare-datatypes ((Context!158 0))(
  ( (Context!159 (exprs!579 List!629)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!230 0))(
  ( (tuple3!231 (_1!505 (InoxSet Context!158)) (_2!505 Int) (_3!141 Int)) )
))
(declare-datatypes ((tuple2!728 0))(
  ( (tuple2!729 (_1!506 tuple3!230) (_2!506 Int)) )
))
(declare-datatypes ((List!630 0))(
  ( (Nil!628) (Cons!628 (h!6024 tuple2!728) (t!16174 List!630)) )
))
(declare-datatypes ((List!631 0))(
  ( (Nil!629) (Cons!629 (h!6025 (_ BitVec 16)) (t!16175 List!631)) )
))
(declare-datatypes ((IArray!231 0))(
  ( (IArray!232 (innerList!173 List!631)) )
))
(declare-datatypes ((Conc!115 0))(
  ( (Node!115 (left!527 Conc!115) (right!857 Conc!115) (csize!460 Int) (cheight!326 Int)) (Leaf!304 (xs!2694 IArray!231) (csize!461 Int)) (Empty!115) )
))
(declare-datatypes ((BalanceConc!230 0))(
  ( (BalanceConc!231 (c!15876 Conc!115)) )
))
(declare-datatypes ((array!680 0))(
  ( (array!681 (arr!339 (Array (_ BitVec 32) (_ BitVec 64))) (size!627 (_ BitVec 32))) )
))
(declare-datatypes ((array!682 0))(
  ( (array!683 (arr!340 (Array (_ BitVec 32) List!630)) (size!628 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!412 0))(
  ( (LongMapFixedSize!413 (defaultEntry!544 Int) (mask!918 (_ BitVec 32)) (extraKeys!452 (_ BitVec 32)) (zeroValue!462 List!630) (minValue!462 List!630) (_size!544 (_ BitVec 32)) (_keys!497 array!680) (_values!484 array!682) (_vacant!266 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!202 0))(
  ( (HashableExt!201 (__x!1090 Int)) )
))
(declare-datatypes ((Cell!813 0))(
  ( (Cell!814 (v!12387 LongMapFixedSize!412)) )
))
(declare-datatypes ((MutLongMap!206 0))(
  ( (LongMap!206 (underlying!607 Cell!813)) (MutLongMapExt!205 (__x!1091 Int)) )
))
(declare-datatypes ((Cell!815 0))(
  ( (Cell!816 (v!12388 MutLongMap!206)) )
))
(declare-datatypes ((MutableMap!202 0))(
  ( (MutableMapExt!201 (__x!1092 Int)) (HashMap!202 (underlying!608 Cell!815) (hashF!2070 Hashable!202) (_size!545 (_ BitVec 32)) (defaultValue!351 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!86 0))(
  ( (CacheFurthestNullable!87 (cache!687 MutableMap!202) (totalInput!1520 BalanceConc!230)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!86)

(declare-fun mapDefault!751 () List!630)

(assert (=> b!42109 (= condMapEmpty!751 (= (arr!340 (_values!484 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!630)) mapDefault!751)))))

(declare-fun e!22457 () Bool)

(declare-fun e!22452 () Bool)

(assert (=> b!42110 (= e!22457 (and e!22452 tp!29102))))

(declare-fun b!42111 () Bool)

(declare-fun e!22448 () Bool)

(declare-fun input!525 () BalanceConc!230)

(declare-fun tp!29111 () Bool)

(declare-fun inv!914 (Conc!115) Bool)

(assert (=> b!42111 (= e!22448 (and (inv!914 (c!15876 input!525)) tp!29111))))

(declare-fun b!42112 () Bool)

(declare-fun res!29782 () Bool)

(declare-fun e!22468 () Bool)

(assert (=> b!42112 (=> (not res!29782) (not e!22468))))

(assert (=> b!42112 (= res!29782 (= (totalInput!1520 cacheFurthestNullable!45) input!525))))

(declare-fun b!42113 () Bool)

(declare-fun e!22444 () Bool)

(declare-fun lt!4553 () List!631)

(declare-fun list!159 (BalanceConc!230) List!631)

(declare-fun seqFromList!22 (List!631) BalanceConc!230)

(assert (=> b!42113 (= e!22444 (not (= (list!159 (seqFromList!22 lt!4553)) lt!4553)))))

(assert (=> b!42113 (= lt!4553 (list!159 input!525))))

(declare-fun b!42114 () Bool)

(declare-fun res!29776 () Bool)

(assert (=> b!42114 (=> (not res!29776) (not e!22468))))

(declare-datatypes ((tuple3!232 0))(
  ( (tuple3!233 (_1!507 Regex!221) (_2!507 Context!158) (_3!142 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!730 0))(
  ( (tuple2!731 (_1!508 tuple3!232) (_2!508 (InoxSet Context!158))) )
))
(declare-datatypes ((List!632 0))(
  ( (Nil!630) (Cons!630 (h!6026 tuple2!730) (t!16176 List!632)) )
))
(declare-datatypes ((array!684 0))(
  ( (array!685 (arr!341 (Array (_ BitVec 32) List!632)) (size!629 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!414 0))(
  ( (LongMapFixedSize!415 (defaultEntry!545 Int) (mask!919 (_ BitVec 32)) (extraKeys!453 (_ BitVec 32)) (zeroValue!463 List!632) (minValue!463 List!632) (_size!546 (_ BitVec 32)) (_keys!498 array!680) (_values!485 array!684) (_vacant!267 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!817 0))(
  ( (Cell!818 (v!12389 LongMapFixedSize!414)) )
))
(declare-datatypes ((MutLongMap!207 0))(
  ( (LongMap!207 (underlying!609 Cell!817)) (MutLongMapExt!206 (__x!1093 Int)) )
))
(declare-datatypes ((Cell!819 0))(
  ( (Cell!820 (v!12390 MutLongMap!207)) )
))
(declare-datatypes ((Hashable!203 0))(
  ( (HashableExt!202 (__x!1094 Int)) )
))
(declare-datatypes ((MutableMap!203 0))(
  ( (MutableMapExt!202 (__x!1095 Int)) (HashMap!203 (underlying!610 Cell!819) (hashF!2071 Hashable!203) (_size!547 (_ BitVec 32)) (defaultValue!352 Int)) )
))
(declare-datatypes ((CacheDown!138 0))(
  ( (CacheDown!139 (cache!688 MutableMap!203)) )
))
(declare-fun cacheDown!333 () CacheDown!138)

(declare-fun valid!191 (CacheDown!138) Bool)

(assert (=> b!42114 (= res!29776 (valid!191 cacheDown!333))))

(declare-fun mapIsEmpty!751 () Bool)

(declare-fun mapRes!752 () Bool)

(assert (=> mapIsEmpty!751 mapRes!752))

(declare-fun b!42115 () Bool)

(declare-fun res!29778 () Bool)

(assert (=> b!42115 (=> (not res!29778) (not e!22444))))

(declare-datatypes ((tuple2!732 0))(
  ( (tuple2!733 (_1!509 Context!158) (_2!509 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!204 0))(
  ( (HashableExt!203 (__x!1096 Int)) )
))
(declare-datatypes ((tuple2!734 0))(
  ( (tuple2!735 (_1!510 tuple2!732) (_2!510 (InoxSet Context!158))) )
))
(declare-datatypes ((List!633 0))(
  ( (Nil!631) (Cons!631 (h!6027 tuple2!734) (t!16177 List!633)) )
))
(declare-datatypes ((array!686 0))(
  ( (array!687 (arr!342 (Array (_ BitVec 32) List!633)) (size!630 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!416 0))(
  ( (LongMapFixedSize!417 (defaultEntry!546 Int) (mask!920 (_ BitVec 32)) (extraKeys!454 (_ BitVec 32)) (zeroValue!464 List!633) (minValue!464 List!633) (_size!548 (_ BitVec 32)) (_keys!499 array!680) (_values!486 array!686) (_vacant!268 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!821 0))(
  ( (Cell!822 (v!12391 LongMapFixedSize!416)) )
))
(declare-datatypes ((MutLongMap!208 0))(
  ( (LongMap!208 (underlying!611 Cell!821)) (MutLongMapExt!207 (__x!1097 Int)) )
))
(declare-datatypes ((Cell!823 0))(
  ( (Cell!824 (v!12392 MutLongMap!208)) )
))
(declare-datatypes ((MutableMap!204 0))(
  ( (MutableMapExt!203 (__x!1098 Int)) (HashMap!204 (underlying!612 Cell!823) (hashF!2072 Hashable!204) (_size!549 (_ BitVec 32)) (defaultValue!353 Int)) )
))
(declare-datatypes ((CacheUp!136 0))(
  ( (CacheUp!137 (cache!689 MutableMap!204)) )
))
(declare-datatypes ((TokenValue!146 0))(
  ( (FloatLiteralValue!292 (text!1467 List!631)) (TokenValueExt!145 (__x!1099 Int)) (Broken!730 (value!7228 List!631)) (Object!147) (End!146) (Def!146) (Underscore!146) (Match!146) (Else!146) (Error!146) (Case!146) (If!146) (Extends!146) (Abstract!146) (Class!146) (Val!146) (DelimiterValue!292 (del!206 List!631)) (KeywordValue!152 (value!7229 List!631)) (CommentValue!292 (value!7230 List!631)) (WhitespaceValue!292 (value!7231 List!631)) (IndentationValue!146 (value!7232 List!631)) (String!1023) (Int32!146) (Broken!731 (value!7233 List!631)) (Boolean!147) (Unit!280) (OperatorValue!149 (op!206 List!631)) (IdentifierValue!292 (value!7234 List!631)) (IdentifierValue!293 (value!7235 List!631)) (WhitespaceValue!293 (value!7236 List!631)) (True!292) (False!292) (Broken!732 (value!7237 List!631)) (Broken!733 (value!7238 List!631)) (True!293) (RightBrace!146) (RightBracket!146) (Colon!146) (Null!146) (Comma!146) (LeftBracket!146) (False!293) (LeftBrace!146) (ImaginaryLiteralValue!146 (text!1468 List!631)) (StringLiteralValue!438 (value!7239 List!631)) (EOFValue!146 (value!7240 List!631)) (IdentValue!146 (value!7241 List!631)) (DelimiterValue!293 (value!7242 List!631)) (DedentValue!146 (value!7243 List!631)) (NewLineValue!146 (value!7244 List!631)) (IntegerValue!438 (value!7245 (_ BitVec 32)) (text!1469 List!631)) (IntegerValue!439 (value!7246 Int) (text!1470 List!631)) (Times!146) (Or!146) (Equal!146) (Minus!146) (Broken!734 (value!7247 List!631)) (And!146) (Div!146) (LessEqual!146) (Mod!146) (Concat!368) (Not!146) (Plus!146) (SpaceValue!146 (value!7248 List!631)) (IntegerValue!440 (value!7249 Int) (text!1471 List!631)) (StringLiteralValue!439 (text!1472 List!631)) (FloatLiteralValue!293 (text!1473 List!631)) (BytesLiteralValue!146 (value!7250 List!631)) (CommentValue!293 (value!7251 List!631)) (StringLiteralValue!440 (value!7252 List!631)) (ErrorTokenValue!146 (msg!207 List!631)) )
))
(declare-datatypes ((String!1024 0))(
  ( (String!1025 (value!7253 String)) )
))
(declare-datatypes ((TokenValueInjection!116 0))(
  ( (TokenValueInjection!117 (toValue!635 Int) (toChars!494 Int)) )
))
(declare-datatypes ((Rule!112 0))(
  ( (Rule!113 (regex!156 Regex!221) (tag!334 String!1024) (isSeparator!156 Bool) (transformation!156 TokenValueInjection!116)) )
))
(declare-datatypes ((Token!78 0))(
  ( (Token!79 (value!7254 TokenValue!146) (rule!632 Rule!112) (size!631 Int) (originalCharacters!210 List!631)) )
))
(declare-datatypes ((List!634 0))(
  ( (Nil!632) (Cons!632 (h!6028 Token!78) (t!16178 List!634)) )
))
(declare-datatypes ((IArray!233 0))(
  ( (IArray!234 (innerList!174 List!634)) )
))
(declare-datatypes ((Conc!116 0))(
  ( (Node!116 (left!528 Conc!116) (right!858 Conc!116) (csize!462 Int) (cheight!327 Int)) (Leaf!305 (xs!2695 IArray!233) (csize!463 Int)) (Empty!116) )
))
(declare-datatypes ((BalanceConc!232 0))(
  ( (BalanceConc!233 (c!15877 Conc!116)) )
))
(declare-datatypes ((tuple2!736 0))(
  ( (tuple2!737 (_1!511 BalanceConc!232) (_2!511 BalanceConc!230)) )
))
(declare-datatypes ((tuple4!52 0))(
  ( (tuple4!53 (_1!512 tuple2!736) (_2!512 CacheUp!136) (_3!143 CacheDown!138) (_4!26 CacheFurthestNullable!86)) )
))
(declare-fun lt!4551 () tuple4!52)

(declare-fun lt!4550 () tuple2!736)

(assert (=> b!42115 (= res!29778 (= (list!159 (_2!511 (_1!512 lt!4551))) (list!159 (_2!511 lt!4550))))))

(declare-fun b!42116 () Bool)

(declare-fun res!29780 () Bool)

(assert (=> b!42116 (=> (not res!29780) (not e!22468))))

(declare-datatypes ((List!635 0))(
  ( (Nil!633) (Cons!633 (h!6029 Rule!112) (t!16179 List!635)) )
))
(declare-fun lt!4555 () List!635)

(declare-datatypes ((LexerInterface!51 0))(
  ( (LexerInterfaceExt!48 (__x!1100 Int)) (Lexer!49) )
))
(declare-fun rulesInvariant!43 (LexerInterface!51 List!635) Bool)

(assert (=> b!42116 (= res!29780 (rulesInvariant!43 Lexer!49 lt!4555))))

(declare-fun b!42117 () Bool)

(assert (=> b!42117 (= e!22468 e!22444)))

(declare-fun res!29777 () Bool)

(assert (=> b!42117 (=> (not res!29777) (not e!22444))))

(declare-fun list!160 (BalanceConc!232) List!634)

(assert (=> b!42117 (= res!29777 (= (list!160 (_1!511 (_1!512 lt!4551))) (list!160 (_1!511 lt!4550))))))

(declare-fun lex!25 (LexerInterface!51 List!635 BalanceConc!230) tuple2!736)

(assert (=> b!42117 (= lt!4550 (lex!25 Lexer!49 lt!4555 input!525))))

(declare-datatypes ((Unit!281 0))(
  ( (Unit!282) )
))
(declare-fun lt!4556 () Unit!281)

(declare-fun lemmaInvariant!41 (CacheDown!138) Unit!281)

(assert (=> b!42117 (= lt!4556 (lemmaInvariant!41 (_3!143 lt!4551)))))

(declare-fun lt!4552 () Unit!281)

(declare-fun lemmaInvariant!42 (CacheUp!136) Unit!281)

(assert (=> b!42117 (= lt!4552 (lemmaInvariant!42 (_2!512 lt!4551)))))

(declare-fun cacheUp!320 () CacheUp!136)

(declare-fun lexMem!19 (LexerInterface!51 List!635 BalanceConc!230 CacheUp!136 CacheDown!138 CacheFurthestNullable!86) tuple4!52)

(assert (=> b!42117 (= lt!4551 (lexMem!19 Lexer!49 lt!4555 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun tp!29108 () Bool)

(declare-fun e!22465 () Bool)

(declare-fun e!22463 () Bool)

(declare-fun tp!29106 () Bool)

(declare-fun array_inv!223 (array!680) Bool)

(declare-fun array_inv!224 (array!686) Bool)

(assert (=> b!42118 (= e!22465 (and tp!29109 tp!29106 tp!29108 (array_inv!223 (_keys!499 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))) (array_inv!224 (_values!486 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))) e!22463))))

(declare-fun b!42119 () Bool)

(declare-fun e!22470 () Bool)

(declare-fun e!22455 () Bool)

(declare-fun lt!4557 () MutLongMap!207)

(get-info :version)

(assert (=> b!42119 (= e!22470 (and e!22455 ((_ is LongMap!207) lt!4557)))))

(assert (=> b!42119 (= lt!4557 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))

(declare-fun b!42120 () Bool)

(declare-fun e!22445 () Bool)

(assert (=> b!42120 (= e!22445 e!22465)))

(declare-fun b!42121 () Bool)

(declare-fun e!22466 () Bool)

(declare-fun e!22459 () Bool)

(declare-fun e!22462 () Bool)

(declare-fun inv!915 (BalanceConc!230) Bool)

(assert (=> b!42121 (= e!22462 (and e!22459 (inv!915 (totalInput!1520 cacheFurthestNullable!45)) e!22466))))

(declare-fun b!42122 () Bool)

(declare-fun e!22469 () Bool)

(declare-fun tp!29115 () Bool)

(assert (=> b!42122 (= e!22469 (and tp!29115 mapRes!752))))

(declare-fun condMapEmpty!752 () Bool)

(declare-fun mapDefault!752 () List!632)

(assert (=> b!42122 (= condMapEmpty!752 (= (arr!341 (_values!485 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!632)) mapDefault!752)))))

(declare-fun mapNonEmpty!752 () Bool)

(declare-fun tp!29105 () Bool)

(declare-fun tp!29099 () Bool)

(assert (=> mapNonEmpty!752 (= mapRes!752 (and tp!29105 tp!29099))))

(declare-fun mapValue!751 () List!632)

(declare-fun mapRest!751 () (Array (_ BitVec 32) List!632))

(declare-fun mapKey!751 () (_ BitVec 32))

(assert (=> mapNonEmpty!752 (= (arr!341 (_values!485 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))) (store mapRest!751 mapKey!751 mapValue!751))))

(declare-fun b!42123 () Bool)

(declare-fun e!22454 () Bool)

(declare-fun e!22451 () Bool)

(assert (=> b!42123 (= e!22454 e!22451)))

(declare-fun mapIsEmpty!752 () Bool)

(declare-fun mapRes!751 () Bool)

(assert (=> mapIsEmpty!752 mapRes!751))

(declare-fun tp!29104 () Bool)

(declare-fun tp!29100 () Bool)

(declare-fun e!22446 () Bool)

(declare-fun array_inv!225 (array!684) Bool)

(assert (=> b!42124 (= e!22446 (and tp!29117 tp!29100 tp!29104 (array_inv!223 (_keys!498 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))) (array_inv!225 (_values!485 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))) e!22469))))

(declare-fun b!42125 () Bool)

(declare-fun res!29781 () Bool)

(assert (=> b!42125 (=> (not res!29781) (not e!22468))))

(declare-fun valid!192 (CacheFurthestNullable!86) Bool)

(assert (=> b!42125 (= res!29781 (valid!192 cacheFurthestNullable!45))))

(declare-fun b!42126 () Bool)

(declare-fun e!22443 () Bool)

(declare-fun e!22467 () Bool)

(declare-fun lt!4549 () MutLongMap!206)

(assert (=> b!42126 (= e!22443 (and e!22467 ((_ is LongMap!206) lt!4549)))))

(assert (=> b!42126 (= lt!4549 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))

(declare-fun e!22458 () Bool)

(assert (=> b!42127 (= e!22458 (and e!22470 tp!29107))))

(declare-fun b!42128 () Bool)

(declare-fun e!22464 () Bool)

(declare-fun lt!4554 () MutLongMap!208)

(assert (=> b!42128 (= e!22452 (and e!22464 ((_ is LongMap!208) lt!4554)))))

(assert (=> b!42128 (= lt!4554 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))

(declare-fun b!42129 () Bool)

(declare-fun tp!29118 () Bool)

(assert (=> b!42129 (= e!22463 (and tp!29118 mapRes!751))))

(declare-fun condMapEmpty!753 () Bool)

(declare-fun mapDefault!753 () List!633)

(assert (=> b!42129 (= condMapEmpty!753 (= (arr!342 (_values!486 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!633)) mapDefault!753)))))

(declare-fun mapNonEmpty!753 () Bool)

(declare-fun tp!29114 () Bool)

(declare-fun tp!29103 () Bool)

(assert (=> mapNonEmpty!753 (= mapRes!753 (and tp!29114 tp!29103))))

(declare-fun mapRest!753 () (Array (_ BitVec 32) List!630))

(declare-fun mapValue!753 () List!630)

(declare-fun mapKey!753 () (_ BitVec 32))

(assert (=> mapNonEmpty!753 (= (arr!340 (_values!484 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))) (store mapRest!753 mapKey!753 mapValue!753))))

(declare-fun b!42130 () Bool)

(assert (=> b!42130 (= e!22464 e!22445)))

(declare-fun tp!29113 () Bool)

(declare-fun tp!29116 () Bool)

(declare-fun array_inv!226 (array!682) Bool)

(assert (=> b!42131 (= e!22451 (and tp!29119 tp!29116 tp!29113 (array_inv!223 (_keys!497 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))) (array_inv!226 (_values!484 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))) e!22453))))

(declare-fun b!42132 () Bool)

(assert (=> b!42132 (= e!22467 e!22454)))

(declare-fun b!42133 () Bool)

(declare-fun e!22449 () Bool)

(assert (=> b!42133 (= e!22449 e!22457)))

(declare-fun b!42134 () Bool)

(declare-fun e!22456 () Bool)

(assert (=> b!42134 (= e!22456 e!22458)))

(declare-fun b!42135 () Bool)

(declare-fun res!29775 () Bool)

(assert (=> b!42135 (=> (not res!29775) (not e!22468))))

(declare-fun valid!193 (CacheUp!136) Bool)

(assert (=> b!42135 (= res!29775 (valid!193 cacheUp!320))))

(declare-fun b!42136 () Bool)

(declare-fun tp!29112 () Bool)

(assert (=> b!42136 (= e!22466 (and (inv!914 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) tp!29112))))

(declare-fun res!29779 () Bool)

(assert (=> start!2426 (=> (not res!29779) (not e!22468))))

(declare-fun isEmpty!125 (List!635) Bool)

(assert (=> start!2426 (= res!29779 (not (isEmpty!125 lt!4555)))))

(declare-datatypes ((JsonLexer!64 0))(
  ( (JsonLexer!65) )
))
(declare-fun rules!109 (JsonLexer!64) List!635)

(assert (=> start!2426 (= lt!4555 (rules!109 JsonLexer!65))))

(assert (=> start!2426 e!22468))

(declare-fun inv!916 (CacheDown!138) Bool)

(assert (=> start!2426 (and (inv!916 cacheDown!333) e!22456)))

(assert (=> start!2426 (and (inv!915 input!525) e!22448)))

(declare-fun inv!917 (CacheFurthestNullable!86) Bool)

(assert (=> start!2426 (and (inv!917 cacheFurthestNullable!45) e!22462)))

(declare-fun inv!918 (CacheUp!136) Bool)

(assert (=> start!2426 (and (inv!918 cacheUp!320) e!22449)))

(declare-fun mapNonEmpty!751 () Bool)

(declare-fun tp!29101 () Bool)

(declare-fun tp!29110 () Bool)

(assert (=> mapNonEmpty!751 (= mapRes!751 (and tp!29101 tp!29110))))

(declare-fun mapKey!752 () (_ BitVec 32))

(declare-fun mapRest!752 () (Array (_ BitVec 32) List!633))

(declare-fun mapValue!752 () List!633)

(assert (=> mapNonEmpty!751 (= (arr!342 (_values!486 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))) (store mapRest!752 mapKey!752 mapValue!752))))

(declare-fun b!42137 () Bool)

(declare-fun e!22450 () Bool)

(assert (=> b!42137 (= e!22455 e!22450)))

(assert (=> b!42138 (= e!22459 (and e!22443 tp!29097))))

(declare-fun b!42139 () Bool)

(assert (=> b!42139 (= e!22450 e!22446)))

(declare-fun mapIsEmpty!753 () Bool)

(assert (=> mapIsEmpty!753 mapRes!753))

(assert (= (and start!2426 res!29779) b!42116))

(assert (= (and b!42116 res!29780) b!42135))

(assert (= (and b!42135 res!29775) b!42114))

(assert (= (and b!42114 res!29776) b!42125))

(assert (= (and b!42125 res!29781) b!42112))

(assert (= (and b!42112 res!29782) b!42117))

(assert (= (and b!42117 res!29777) b!42115))

(assert (= (and b!42115 res!29778) b!42113))

(assert (= (and b!42122 condMapEmpty!752) mapIsEmpty!751))

(assert (= (and b!42122 (not condMapEmpty!752)) mapNonEmpty!752))

(assert (= b!42124 b!42122))

(assert (= b!42139 b!42124))

(assert (= b!42137 b!42139))

(assert (= (and b!42119 ((_ is LongMap!207) (v!12390 (underlying!610 (cache!688 cacheDown!333))))) b!42137))

(assert (= b!42127 b!42119))

(assert (= (and b!42134 ((_ is HashMap!203) (cache!688 cacheDown!333))) b!42127))

(assert (= start!2426 b!42134))

(assert (= start!2426 b!42111))

(assert (= (and b!42109 condMapEmpty!751) mapIsEmpty!753))

(assert (= (and b!42109 (not condMapEmpty!751)) mapNonEmpty!753))

(assert (= b!42131 b!42109))

(assert (= b!42123 b!42131))

(assert (= b!42132 b!42123))

(assert (= (and b!42126 ((_ is LongMap!206) (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))) b!42132))

(assert (= b!42138 b!42126))

(assert (= (and b!42121 ((_ is HashMap!202) (cache!687 cacheFurthestNullable!45))) b!42138))

(assert (= b!42121 b!42136))

(assert (= start!2426 b!42121))

(assert (= (and b!42129 condMapEmpty!753) mapIsEmpty!752))

(assert (= (and b!42129 (not condMapEmpty!753)) mapNonEmpty!751))

(assert (= b!42118 b!42129))

(assert (= b!42120 b!42118))

(assert (= b!42130 b!42120))

(assert (= (and b!42128 ((_ is LongMap!208) (v!12392 (underlying!612 (cache!689 cacheUp!320))))) b!42130))

(assert (= b!42110 b!42128))

(assert (= (and b!42133 ((_ is HashMap!204) (cache!689 cacheUp!320))) b!42110))

(assert (= start!2426 b!42133))

(declare-fun m!15434 () Bool)

(assert (=> mapNonEmpty!753 m!15434))

(declare-fun m!15436 () Bool)

(assert (=> b!42131 m!15436))

(declare-fun m!15438 () Bool)

(assert (=> b!42131 m!15438))

(declare-fun m!15440 () Bool)

(assert (=> b!42117 m!15440))

(declare-fun m!15442 () Bool)

(assert (=> b!42117 m!15442))

(declare-fun m!15444 () Bool)

(assert (=> b!42117 m!15444))

(declare-fun m!15446 () Bool)

(assert (=> b!42117 m!15446))

(declare-fun m!15448 () Bool)

(assert (=> b!42117 m!15448))

(declare-fun m!15450 () Bool)

(assert (=> b!42117 m!15450))

(declare-fun m!15452 () Bool)

(assert (=> b!42116 m!15452))

(declare-fun m!15454 () Bool)

(assert (=> b!42113 m!15454))

(assert (=> b!42113 m!15454))

(declare-fun m!15456 () Bool)

(assert (=> b!42113 m!15456))

(declare-fun m!15458 () Bool)

(assert (=> b!42113 m!15458))

(declare-fun m!15460 () Bool)

(assert (=> b!42135 m!15460))

(declare-fun m!15462 () Bool)

(assert (=> b!42118 m!15462))

(declare-fun m!15464 () Bool)

(assert (=> b!42118 m!15464))

(declare-fun m!15466 () Bool)

(assert (=> b!42115 m!15466))

(declare-fun m!15468 () Bool)

(assert (=> b!42115 m!15468))

(declare-fun m!15470 () Bool)

(assert (=> b!42125 m!15470))

(declare-fun m!15472 () Bool)

(assert (=> mapNonEmpty!752 m!15472))

(declare-fun m!15474 () Bool)

(assert (=> start!2426 m!15474))

(declare-fun m!15476 () Bool)

(assert (=> start!2426 m!15476))

(declare-fun m!15478 () Bool)

(assert (=> start!2426 m!15478))

(declare-fun m!15480 () Bool)

(assert (=> start!2426 m!15480))

(declare-fun m!15482 () Bool)

(assert (=> start!2426 m!15482))

(declare-fun m!15484 () Bool)

(assert (=> start!2426 m!15484))

(declare-fun m!15486 () Bool)

(assert (=> b!42111 m!15486))

(declare-fun m!15488 () Bool)

(assert (=> b!42114 m!15488))

(declare-fun m!15490 () Bool)

(assert (=> b!42124 m!15490))

(declare-fun m!15492 () Bool)

(assert (=> b!42124 m!15492))

(declare-fun m!15494 () Bool)

(assert (=> mapNonEmpty!751 m!15494))

(declare-fun m!15496 () Bool)

(assert (=> b!42136 m!15496))

(declare-fun m!15498 () Bool)

(assert (=> b!42121 m!15498))

(check-sat (not b!42129) (not b!42121) b_and!1025 (not mapNonEmpty!752) (not b!42113) (not b_next!985) b_and!1019 (not mapNonEmpty!753) (not mapNonEmpty!751) (not b!42135) b_and!1015 (not b!42115) (not b!42125) (not b!42117) (not b!42109) (not b!42122) (not b!42131) (not start!2426) (not b!42124) (not b_next!989) (not b_next!981) (not b!42116) (not b!42111) b_and!1021 (not b!42114) (not b_next!991) (not b!42136) (not b_next!987) (not b_next!983) b_and!1023 b_and!1017 (not b!42118))
(check-sat b_and!1025 (not b_next!985) (not b_next!989) (not b_next!981) b_and!1019 b_and!1021 b_and!1015 b_and!1017 (not b_next!991) (not b_next!987) (not b_next!983) b_and!1023)
(get-model)

(declare-fun b!42150 () Bool)

(declare-fun e!22479 () Bool)

(declare-fun e!22477 () Bool)

(assert (=> b!42150 (= e!22479 e!22477)))

(declare-fun res!29790 () Bool)

(declare-fun lt!4560 () tuple2!736)

(declare-fun size!632 (BalanceConc!230) Int)

(assert (=> b!42150 (= res!29790 (< (size!632 (_2!511 lt!4560)) (size!632 input!525)))))

(assert (=> b!42150 (=> (not res!29790) (not e!22477))))

(declare-fun d!4357 () Bool)

(declare-fun e!22478 () Bool)

(assert (=> d!4357 e!22478))

(declare-fun res!29791 () Bool)

(assert (=> d!4357 (=> (not res!29791) (not e!22478))))

(assert (=> d!4357 (= res!29791 e!22479)))

(declare-fun c!15880 () Bool)

(declare-fun size!633 (BalanceConc!232) Int)

(assert (=> d!4357 (= c!15880 (> (size!633 (_1!511 lt!4560)) 0))))

(declare-fun lexTailRecV2!6 (LexerInterface!51 List!635 BalanceConc!230 BalanceConc!230 BalanceConc!230 BalanceConc!232) tuple2!736)

(assert (=> d!4357 (= lt!4560 (lexTailRecV2!6 Lexer!49 lt!4555 input!525 (BalanceConc!231 Empty!115) input!525 (BalanceConc!233 Empty!116)))))

(assert (=> d!4357 (= (lex!25 Lexer!49 lt!4555 input!525) lt!4560)))

(declare-fun b!42151 () Bool)

(assert (=> b!42151 (= e!22479 (= (_2!511 lt!4560) input!525))))

(declare-fun b!42152 () Bool)

(declare-datatypes ((tuple2!738 0))(
  ( (tuple2!739 (_1!513 List!634) (_2!513 List!631)) )
))
(declare-fun lexList!9 (LexerInterface!51 List!635 List!631) tuple2!738)

(assert (=> b!42152 (= e!22478 (= (list!159 (_2!511 lt!4560)) (_2!513 (lexList!9 Lexer!49 lt!4555 (list!159 input!525)))))))

(declare-fun b!42153 () Bool)

(declare-fun isEmpty!126 (BalanceConc!232) Bool)

(assert (=> b!42153 (= e!22477 (not (isEmpty!126 (_1!511 lt!4560))))))

(declare-fun b!42154 () Bool)

(declare-fun res!29789 () Bool)

(assert (=> b!42154 (=> (not res!29789) (not e!22478))))

(assert (=> b!42154 (= res!29789 (= (list!160 (_1!511 lt!4560)) (_1!513 (lexList!9 Lexer!49 lt!4555 (list!159 input!525)))))))

(assert (= (and d!4357 c!15880) b!42150))

(assert (= (and d!4357 (not c!15880)) b!42151))

(assert (= (and b!42150 res!29790) b!42153))

(assert (= (and d!4357 res!29791) b!42154))

(assert (= (and b!42154 res!29789) b!42152))

(declare-fun m!15500 () Bool)

(assert (=> d!4357 m!15500))

(declare-fun m!15502 () Bool)

(assert (=> d!4357 m!15502))

(declare-fun m!15504 () Bool)

(assert (=> b!42150 m!15504))

(declare-fun m!15506 () Bool)

(assert (=> b!42150 m!15506))

(declare-fun m!15508 () Bool)

(assert (=> b!42153 m!15508))

(declare-fun m!15510 () Bool)

(assert (=> b!42152 m!15510))

(assert (=> b!42152 m!15458))

(assert (=> b!42152 m!15458))

(declare-fun m!15512 () Bool)

(assert (=> b!42152 m!15512))

(declare-fun m!15514 () Bool)

(assert (=> b!42154 m!15514))

(assert (=> b!42154 m!15458))

(assert (=> b!42154 m!15458))

(assert (=> b!42154 m!15512))

(assert (=> b!42117 d!4357))

(declare-fun b!42165 () Bool)

(declare-fun res!29806 () Bool)

(declare-fun e!22482 () Bool)

(assert (=> b!42165 (=> (not res!29806) (not e!22482))))

(declare-fun lt!4565 () tuple4!52)

(assert (=> b!42165 (= res!29806 (valid!191 (_3!143 lt!4565)))))

(declare-fun b!42166 () Bool)

(assert (=> b!42166 (= e!22482 (= (totalInput!1520 (_4!26 lt!4565)) input!525))))

(declare-fun b!42168 () Bool)

(declare-fun res!29803 () Bool)

(assert (=> b!42168 (=> (not res!29803) (not e!22482))))

(assert (=> b!42168 (= res!29803 (= (list!159 (_2!511 (_1!512 lt!4565))) (list!159 (_2!511 (lex!25 Lexer!49 lt!4555 input!525)))))))

(declare-fun b!42169 () Bool)

(declare-fun res!29802 () Bool)

(assert (=> b!42169 (=> (not res!29802) (not e!22482))))

(assert (=> b!42169 (= res!29802 (valid!192 (_4!26 lt!4565)))))

(declare-fun d!4359 () Bool)

(assert (=> d!4359 e!22482))

(declare-fun res!29804 () Bool)

(assert (=> d!4359 (=> (not res!29804) (not e!22482))))

(assert (=> d!4359 (= res!29804 (= (list!160 (_1!511 (_1!512 lt!4565))) (list!160 (_1!511 (lex!25 Lexer!49 lt!4555 input!525)))))))

(declare-fun lt!4566 () tuple4!52)

(assert (=> d!4359 (= lt!4565 (tuple4!53 (_1!512 lt!4566) (_2!512 lt!4566) (_3!143 lt!4566) (_4!26 lt!4566)))))

(declare-fun lexTailRecV3Mem!6 (LexerInterface!51 List!635 BalanceConc!230 BalanceConc!230 BalanceConc!230 BalanceConc!232 CacheUp!136 CacheDown!138 CacheFurthestNullable!86) tuple4!52)

(assert (=> d!4359 (= lt!4566 (lexTailRecV3Mem!6 Lexer!49 lt!4555 input!525 (BalanceConc!231 Empty!115) input!525 (BalanceConc!233 Empty!116) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4359 (not (isEmpty!125 lt!4555))))

(assert (=> d!4359 (= (lexMem!19 Lexer!49 lt!4555 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!4565)))

(declare-fun b!42167 () Bool)

(declare-fun res!29805 () Bool)

(assert (=> b!42167 (=> (not res!29805) (not e!22482))))

(assert (=> b!42167 (= res!29805 (valid!193 (_2!512 lt!4565)))))

(assert (= (and d!4359 res!29804) b!42168))

(assert (= (and b!42168 res!29803) b!42169))

(assert (= (and b!42169 res!29802) b!42167))

(assert (= (and b!42167 res!29805) b!42165))

(assert (= (and b!42165 res!29806) b!42166))

(declare-fun m!15516 () Bool)

(assert (=> b!42167 m!15516))

(declare-fun m!15518 () Bool)

(assert (=> d!4359 m!15518))

(declare-fun m!15520 () Bool)

(assert (=> d!4359 m!15520))

(declare-fun m!15522 () Bool)

(assert (=> d!4359 m!15522))

(assert (=> d!4359 m!15442))

(assert (=> d!4359 m!15476))

(declare-fun m!15524 () Bool)

(assert (=> b!42168 m!15524))

(assert (=> b!42168 m!15442))

(declare-fun m!15526 () Bool)

(assert (=> b!42168 m!15526))

(declare-fun m!15528 () Bool)

(assert (=> b!42165 m!15528))

(declare-fun m!15530 () Bool)

(assert (=> b!42169 m!15530))

(assert (=> b!42117 d!4359))

(declare-fun d!4361 () Bool)

(declare-fun list!161 (Conc!116) List!634)

(assert (=> d!4361 (= (list!160 (_1!511 (_1!512 lt!4551))) (list!161 (c!15877 (_1!511 (_1!512 lt!4551)))))))

(declare-fun bs!5107 () Bool)

(assert (= bs!5107 d!4361))

(declare-fun m!15532 () Bool)

(assert (=> bs!5107 m!15532))

(assert (=> b!42117 d!4361))

(declare-fun d!4363 () Bool)

(assert (=> d!4363 (valid!193 (_2!512 lt!4551))))

(declare-fun Unit!283 () Unit!281)

(assert (=> d!4363 (= (lemmaInvariant!42 (_2!512 lt!4551)) Unit!283)))

(declare-fun bs!5108 () Bool)

(assert (= bs!5108 d!4363))

(declare-fun m!15534 () Bool)

(assert (=> bs!5108 m!15534))

(assert (=> b!42117 d!4363))

(declare-fun d!4365 () Bool)

(assert (=> d!4365 (= (list!160 (_1!511 lt!4550)) (list!161 (c!15877 (_1!511 lt!4550))))))

(declare-fun bs!5109 () Bool)

(assert (= bs!5109 d!4365))

(declare-fun m!15536 () Bool)

(assert (=> bs!5109 m!15536))

(assert (=> b!42117 d!4365))

(declare-fun d!4367 () Bool)

(assert (=> d!4367 (valid!191 (_3!143 lt!4551))))

(declare-fun Unit!284 () Unit!281)

(assert (=> d!4367 (= (lemmaInvariant!41 (_3!143 lt!4551)) Unit!284)))

(declare-fun bs!5110 () Bool)

(assert (= bs!5110 d!4367))

(declare-fun m!15538 () Bool)

(assert (=> bs!5110 m!15538))

(assert (=> b!42117 d!4367))

(declare-fun d!4369 () Bool)

(declare-fun c!15883 () Bool)

(assert (=> d!4369 (= c!15883 ((_ is Node!115) (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))

(declare-fun e!22487 () Bool)

(assert (=> d!4369 (= (inv!914 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) e!22487)))

(declare-fun b!42176 () Bool)

(declare-fun inv!919 (Conc!115) Bool)

(assert (=> b!42176 (= e!22487 (inv!919 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))

(declare-fun b!42177 () Bool)

(declare-fun e!22488 () Bool)

(assert (=> b!42177 (= e!22487 e!22488)))

(declare-fun res!29809 () Bool)

(assert (=> b!42177 (= res!29809 (not ((_ is Leaf!304) (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(assert (=> b!42177 (=> res!29809 e!22488)))

(declare-fun b!42178 () Bool)

(declare-fun inv!920 (Conc!115) Bool)

(assert (=> b!42178 (= e!22488 (inv!920 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))

(assert (= (and d!4369 c!15883) b!42176))

(assert (= (and d!4369 (not c!15883)) b!42177))

(assert (= (and b!42177 (not res!29809)) b!42178))

(declare-fun m!15540 () Bool)

(assert (=> b!42176 m!15540))

(declare-fun m!15542 () Bool)

(assert (=> b!42178 m!15542))

(assert (=> b!42136 d!4369))

(declare-fun d!4371 () Bool)

(assert (=> d!4371 (= (array_inv!223 (_keys!499 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))) (bvsge (size!627 (_keys!499 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!42118 d!4371))

(declare-fun d!4373 () Bool)

(assert (=> d!4373 (= (array_inv!224 (_values!486 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))) (bvsge (size!630 (_values!486 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!42118 d!4373))

(declare-fun d!4375 () Bool)

(declare-fun res!29812 () Bool)

(declare-fun e!22491 () Bool)

(assert (=> d!4375 (=> (not res!29812) (not e!22491))))

(declare-fun rulesValid!12 (LexerInterface!51 List!635) Bool)

(assert (=> d!4375 (= res!29812 (rulesValid!12 Lexer!49 lt!4555))))

(assert (=> d!4375 (= (rulesInvariant!43 Lexer!49 lt!4555) e!22491)))

(declare-fun b!42181 () Bool)

(declare-datatypes ((List!636 0))(
  ( (Nil!634) (Cons!634 (h!6030 String!1024) (t!16180 List!636)) )
))
(declare-fun noDuplicateTag!12 (LexerInterface!51 List!635 List!636) Bool)

(assert (=> b!42181 (= e!22491 (noDuplicateTag!12 Lexer!49 lt!4555 Nil!634))))

(assert (= (and d!4375 res!29812) b!42181))

(declare-fun m!15544 () Bool)

(assert (=> d!4375 m!15544))

(declare-fun m!15546 () Bool)

(assert (=> b!42181 m!15546))

(assert (=> b!42116 d!4375))

(declare-fun d!4377 () Bool)

(declare-fun validCacheMapFurthestNullable!8 (MutableMap!202 BalanceConc!230) Bool)

(assert (=> d!4377 (= (valid!192 cacheFurthestNullable!45) (validCacheMapFurthestNullable!8 (cache!687 cacheFurthestNullable!45) (totalInput!1520 cacheFurthestNullable!45)))))

(declare-fun bs!5111 () Bool)

(assert (= bs!5111 d!4377))

(declare-fun m!15548 () Bool)

(assert (=> bs!5111 m!15548))

(assert (=> b!42125 d!4377))

(declare-fun d!4379 () Bool)

(declare-fun validCacheMapUp!14 (MutableMap!204) Bool)

(assert (=> d!4379 (= (valid!193 cacheUp!320) (validCacheMapUp!14 (cache!689 cacheUp!320)))))

(declare-fun bs!5112 () Bool)

(assert (= bs!5112 d!4379))

(declare-fun m!15550 () Bool)

(assert (=> bs!5112 m!15550))

(assert (=> b!42135 d!4379))

(declare-fun d!4381 () Bool)

(declare-fun list!162 (Conc!115) List!631)

(assert (=> d!4381 (= (list!159 (_2!511 (_1!512 lt!4551))) (list!162 (c!15876 (_2!511 (_1!512 lt!4551)))))))

(declare-fun bs!5113 () Bool)

(assert (= bs!5113 d!4381))

(declare-fun m!15552 () Bool)

(assert (=> bs!5113 m!15552))

(assert (=> b!42115 d!4381))

(declare-fun d!4383 () Bool)

(assert (=> d!4383 (= (list!159 (_2!511 lt!4550)) (list!162 (c!15876 (_2!511 lt!4550))))))

(declare-fun bs!5114 () Bool)

(assert (= bs!5114 d!4383))

(declare-fun m!15554 () Bool)

(assert (=> bs!5114 m!15554))

(assert (=> b!42115 d!4383))

(declare-fun d!4385 () Bool)

(assert (=> d!4385 (= (array_inv!223 (_keys!498 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))) (bvsge (size!627 (_keys!498 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!42124 d!4385))

(declare-fun d!4387 () Bool)

(assert (=> d!4387 (= (array_inv!225 (_values!485 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))) (bvsge (size!629 (_values!485 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!42124 d!4387))

(declare-fun d!4389 () Bool)

(declare-fun validCacheMapDown!16 (MutableMap!203) Bool)

(assert (=> d!4389 (= (valid!191 cacheDown!333) (validCacheMapDown!16 (cache!688 cacheDown!333)))))

(declare-fun bs!5115 () Bool)

(assert (= bs!5115 d!4389))

(declare-fun m!15556 () Bool)

(assert (=> bs!5115 m!15556))

(assert (=> b!42114 d!4389))

(declare-fun d!4391 () Bool)

(assert (=> d!4391 (= (array_inv!223 (_keys!497 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))) (bvsge (size!627 (_keys!497 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!42131 d!4391))

(declare-fun d!4393 () Bool)

(assert (=> d!4393 (= (array_inv!226 (_values!484 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))) (bvsge (size!628 (_values!484 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!42131 d!4393))

(declare-fun d!4395 () Bool)

(declare-fun isBalanced!19 (Conc!115) Bool)

(assert (=> d!4395 (= (inv!915 (totalInput!1520 cacheFurthestNullable!45)) (isBalanced!19 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))

(declare-fun bs!5116 () Bool)

(assert (= bs!5116 d!4395))

(declare-fun m!15558 () Bool)

(assert (=> bs!5116 m!15558))

(assert (=> b!42121 d!4395))

(declare-fun d!4397 () Bool)

(assert (=> d!4397 (= (list!159 (seqFromList!22 lt!4553)) (list!162 (c!15876 (seqFromList!22 lt!4553))))))

(declare-fun bs!5117 () Bool)

(assert (= bs!5117 d!4397))

(declare-fun m!15560 () Bool)

(assert (=> bs!5117 m!15560))

(assert (=> b!42113 d!4397))

(declare-fun d!4399 () Bool)

(declare-fun fromListB!4 (List!631) BalanceConc!230)

(assert (=> d!4399 (= (seqFromList!22 lt!4553) (fromListB!4 lt!4553))))

(declare-fun bs!5118 () Bool)

(assert (= bs!5118 d!4399))

(declare-fun m!15562 () Bool)

(assert (=> bs!5118 m!15562))

(assert (=> b!42113 d!4399))

(declare-fun d!4401 () Bool)

(assert (=> d!4401 (= (list!159 input!525) (list!162 (c!15876 input!525)))))

(declare-fun bs!5119 () Bool)

(assert (= bs!5119 d!4401))

(declare-fun m!15564 () Bool)

(assert (=> bs!5119 m!15564))

(assert (=> b!42113 d!4401))

(declare-fun d!4403 () Bool)

(declare-fun c!15884 () Bool)

(assert (=> d!4403 (= c!15884 ((_ is Node!115) (c!15876 input!525)))))

(declare-fun e!22492 () Bool)

(assert (=> d!4403 (= (inv!914 (c!15876 input!525)) e!22492)))

(declare-fun b!42182 () Bool)

(assert (=> b!42182 (= e!22492 (inv!919 (c!15876 input!525)))))

(declare-fun b!42183 () Bool)

(declare-fun e!22493 () Bool)

(assert (=> b!42183 (= e!22492 e!22493)))

(declare-fun res!29813 () Bool)

(assert (=> b!42183 (= res!29813 (not ((_ is Leaf!304) (c!15876 input!525))))))

(assert (=> b!42183 (=> res!29813 e!22493)))

(declare-fun b!42184 () Bool)

(assert (=> b!42184 (= e!22493 (inv!920 (c!15876 input!525)))))

(assert (= (and d!4403 c!15884) b!42182))

(assert (= (and d!4403 (not c!15884)) b!42183))

(assert (= (and b!42183 (not res!29813)) b!42184))

(declare-fun m!15566 () Bool)

(assert (=> b!42182 m!15566))

(declare-fun m!15568 () Bool)

(assert (=> b!42184 m!15568))

(assert (=> b!42111 d!4403))

(declare-fun d!4405 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!64) Rule!112)

(declare-fun integerLiteralRule!0 (JsonLexer!64) Rule!112)

(declare-fun floatLiteralRule!0 (JsonLexer!64) Rule!112)

(declare-fun trueRule!0 (JsonLexer!64) Rule!112)

(declare-fun falseRule!0 (JsonLexer!64) Rule!112)

(declare-fun nullRule!0 (JsonLexer!64) Rule!112)

(declare-fun jsonstringRule!0 (JsonLexer!64) Rule!112)

(declare-fun lBraceRule!0 (JsonLexer!64) Rule!112)

(declare-fun rBraceRule!0 (JsonLexer!64) Rule!112)

(declare-fun lBracketRule!0 (JsonLexer!64) Rule!112)

(declare-fun rBracketRule!0 (JsonLexer!64) Rule!112)

(declare-fun colonRule!0 (JsonLexer!64) Rule!112)

(declare-fun commaRule!0 (JsonLexer!64) Rule!112)

(declare-fun eofRule!0 (JsonLexer!64) Rule!112)

(assert (=> d!4405 (= (rules!109 JsonLexer!65) (Cons!633 (whitespaceRule!0 JsonLexer!65) (Cons!633 (integerLiteralRule!0 JsonLexer!65) (Cons!633 (floatLiteralRule!0 JsonLexer!65) (Cons!633 (trueRule!0 JsonLexer!65) (Cons!633 (falseRule!0 JsonLexer!65) (Cons!633 (nullRule!0 JsonLexer!65) (Cons!633 (jsonstringRule!0 JsonLexer!65) (Cons!633 (lBraceRule!0 JsonLexer!65) (Cons!633 (rBraceRule!0 JsonLexer!65) (Cons!633 (lBracketRule!0 JsonLexer!65) (Cons!633 (rBracketRule!0 JsonLexer!65) (Cons!633 (colonRule!0 JsonLexer!65) (Cons!633 (commaRule!0 JsonLexer!65) (Cons!633 (eofRule!0 JsonLexer!65) Nil!633)))))))))))))))))

(declare-fun bs!5120 () Bool)

(assert (= bs!5120 d!4405))

(declare-fun m!15570 () Bool)

(assert (=> bs!5120 m!15570))

(declare-fun m!15572 () Bool)

(assert (=> bs!5120 m!15572))

(declare-fun m!15574 () Bool)

(assert (=> bs!5120 m!15574))

(declare-fun m!15576 () Bool)

(assert (=> bs!5120 m!15576))

(declare-fun m!15578 () Bool)

(assert (=> bs!5120 m!15578))

(declare-fun m!15580 () Bool)

(assert (=> bs!5120 m!15580))

(declare-fun m!15582 () Bool)

(assert (=> bs!5120 m!15582))

(declare-fun m!15584 () Bool)

(assert (=> bs!5120 m!15584))

(declare-fun m!15586 () Bool)

(assert (=> bs!5120 m!15586))

(declare-fun m!15588 () Bool)

(assert (=> bs!5120 m!15588))

(declare-fun m!15590 () Bool)

(assert (=> bs!5120 m!15590))

(declare-fun m!15592 () Bool)

(assert (=> bs!5120 m!15592))

(declare-fun m!15594 () Bool)

(assert (=> bs!5120 m!15594))

(declare-fun m!15596 () Bool)

(assert (=> bs!5120 m!15596))

(assert (=> start!2426 d!4405))

(declare-fun d!4407 () Bool)

(declare-fun res!29816 () Bool)

(declare-fun e!22496 () Bool)

(assert (=> d!4407 (=> (not res!29816) (not e!22496))))

(assert (=> d!4407 (= res!29816 ((_ is HashMap!203) (cache!688 cacheDown!333)))))

(assert (=> d!4407 (= (inv!916 cacheDown!333) e!22496)))

(declare-fun b!42187 () Bool)

(assert (=> b!42187 (= e!22496 (validCacheMapDown!16 (cache!688 cacheDown!333)))))

(assert (= (and d!4407 res!29816) b!42187))

(assert (=> b!42187 m!15556))

(assert (=> start!2426 d!4407))

(declare-fun d!4409 () Bool)

(assert (=> d!4409 (= (isEmpty!125 lt!4555) ((_ is Nil!633) lt!4555))))

(assert (=> start!2426 d!4409))

(declare-fun d!4411 () Bool)

(assert (=> d!4411 (= (inv!915 input!525) (isBalanced!19 (c!15876 input!525)))))

(declare-fun bs!5121 () Bool)

(assert (= bs!5121 d!4411))

(declare-fun m!15598 () Bool)

(assert (=> bs!5121 m!15598))

(assert (=> start!2426 d!4411))

(declare-fun d!4413 () Bool)

(declare-fun res!29819 () Bool)

(declare-fun e!22499 () Bool)

(assert (=> d!4413 (=> (not res!29819) (not e!22499))))

(assert (=> d!4413 (= res!29819 ((_ is HashMap!202) (cache!687 cacheFurthestNullable!45)))))

(assert (=> d!4413 (= (inv!917 cacheFurthestNullable!45) e!22499)))

(declare-fun b!42190 () Bool)

(assert (=> b!42190 (= e!22499 (validCacheMapFurthestNullable!8 (cache!687 cacheFurthestNullable!45) (totalInput!1520 cacheFurthestNullable!45)))))

(assert (= (and d!4413 res!29819) b!42190))

(assert (=> b!42190 m!15548))

(assert (=> start!2426 d!4413))

(declare-fun d!4415 () Bool)

(declare-fun res!29822 () Bool)

(declare-fun e!22502 () Bool)

(assert (=> d!4415 (=> (not res!29822) (not e!22502))))

(assert (=> d!4415 (= res!29822 ((_ is HashMap!204) (cache!689 cacheUp!320)))))

(assert (=> d!4415 (= (inv!918 cacheUp!320) e!22502)))

(declare-fun b!42193 () Bool)

(assert (=> b!42193 (= e!22502 (validCacheMapUp!14 (cache!689 cacheUp!320)))))

(assert (= (and d!4415 res!29822) b!42193))

(assert (=> b!42193 m!15550))

(assert (=> start!2426 d!4415))

(declare-fun b!42200 () Bool)

(declare-fun tp!29124 () Bool)

(declare-fun tp!29125 () Bool)

(declare-fun e!22507 () Bool)

(assert (=> b!42200 (= e!22507 (and (inv!914 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) tp!29124 (inv!914 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) tp!29125))))

(declare-fun b!42201 () Bool)

(declare-fun inv!921 (IArray!231) Bool)

(assert (=> b!42201 (= e!22507 (inv!921 (xs!2694 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(assert (=> b!42136 (= tp!29112 (and (inv!914 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) e!22507))))

(assert (= (and b!42136 ((_ is Node!115) (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) b!42200))

(assert (= (and b!42136 ((_ is Leaf!304) (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) b!42201))

(declare-fun m!15600 () Bool)

(assert (=> b!42200 m!15600))

(declare-fun m!15602 () Bool)

(assert (=> b!42200 m!15602))

(declare-fun m!15604 () Bool)

(assert (=> b!42201 m!15604))

(assert (=> b!42136 m!15496))

(declare-fun b!42206 () Bool)

(declare-fun e!22514 () Bool)

(declare-fun setRes!766 () Bool)

(declare-fun tp!29130 () Bool)

(assert (=> b!42206 (= e!22514 (and setRes!766 tp!29130))))

(declare-fun condSetEmpty!766 () Bool)

(assert (=> b!42206 (= condSetEmpty!766 (= (_1!505 (_1!506 (h!6024 mapDefault!751))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!766 () Bool)

(assert (=> setIsEmpty!766 setRes!766))

(declare-fun setNonEmpty!766 () Bool)

(declare-fun tp!29131 () Bool)

(declare-fun setElem!766 () Context!158)

(declare-fun inv!922 (Context!158) Bool)

(assert (=> setNonEmpty!766 (= setRes!766 (and tp!29131 (inv!922 setElem!766)))))

(declare-fun setRest!766 () (InoxSet Context!158))

(assert (=> setNonEmpty!766 (= (_1!505 (_1!506 (h!6024 mapDefault!751))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!766 true) setRest!766))))

(assert (=> b!42109 (= tp!29098 e!22514)))

(assert (= (and b!42206 condSetEmpty!766) setIsEmpty!766))

(assert (= (and b!42206 (not condSetEmpty!766)) setNonEmpty!766))

(assert (= (and b!42109 ((_ is Cons!628) mapDefault!751)) b!42206))

(declare-fun m!15606 () Bool)

(assert (=> setNonEmpty!766 m!15606))

(declare-fun e!22521 () Bool)

(declare-fun tp!29136 () Bool)

(declare-fun b!42211 () Bool)

(declare-fun setRes!769 () Bool)

(assert (=> b!42211 (= e!22521 (and (inv!922 (_1!509 (_1!510 (h!6027 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))))) setRes!769 tp!29136))))

(declare-fun condSetEmpty!769 () Bool)

(assert (=> b!42211 (= condSetEmpty!769 (= (_2!510 (h!6027 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!769 () Bool)

(assert (=> setIsEmpty!769 setRes!769))

(declare-fun setNonEmpty!769 () Bool)

(declare-fun tp!29137 () Bool)

(declare-fun setElem!769 () Context!158)

(assert (=> setNonEmpty!769 (= setRes!769 (and tp!29137 (inv!922 setElem!769)))))

(declare-fun setRest!769 () (InoxSet Context!158))

(assert (=> setNonEmpty!769 (= (_2!510 (h!6027 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!769 true) setRest!769))))

(assert (=> b!42118 (= tp!29106 e!22521)))

(assert (= (and b!42211 condSetEmpty!769) setIsEmpty!769))

(assert (= (and b!42211 (not condSetEmpty!769)) setNonEmpty!769))

(assert (= (and b!42118 ((_ is Cons!631) (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))) b!42211))

(declare-fun m!15608 () Bool)

(assert (=> b!42211 m!15608))

(declare-fun m!15610 () Bool)

(assert (=> setNonEmpty!769 m!15610))

(declare-fun tp!29138 () Bool)

(declare-fun setRes!770 () Bool)

(declare-fun b!42212 () Bool)

(declare-fun e!22524 () Bool)

(assert (=> b!42212 (= e!22524 (and (inv!922 (_1!509 (_1!510 (h!6027 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))))) setRes!770 tp!29138))))

(declare-fun condSetEmpty!770 () Bool)

(assert (=> b!42212 (= condSetEmpty!770 (= (_2!510 (h!6027 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!770 () Bool)

(assert (=> setIsEmpty!770 setRes!770))

(declare-fun setNonEmpty!770 () Bool)

(declare-fun tp!29139 () Bool)

(declare-fun setElem!770 () Context!158)

(assert (=> setNonEmpty!770 (= setRes!770 (and tp!29139 (inv!922 setElem!770)))))

(declare-fun setRest!770 () (InoxSet Context!158))

(assert (=> setNonEmpty!770 (= (_2!510 (h!6027 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!770 true) setRest!770))))

(assert (=> b!42118 (= tp!29108 e!22524)))

(assert (= (and b!42212 condSetEmpty!770) setIsEmpty!770))

(assert (= (and b!42212 (not condSetEmpty!770)) setNonEmpty!770))

(assert (= (and b!42118 ((_ is Cons!631) (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))) b!42212))

(declare-fun m!15612 () Bool)

(assert (=> b!42212 m!15612))

(declare-fun m!15614 () Bool)

(assert (=> setNonEmpty!770 m!15614))

(declare-fun b!42217 () Bool)

(declare-fun tp!29145 () Bool)

(declare-fun setRes!773 () Bool)

(declare-fun e!22533 () Bool)

(assert (=> b!42217 (= e!22533 (and (inv!922 (_2!507 (_1!508 (h!6026 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))))) setRes!773 tp!29145))))

(declare-fun condSetEmpty!773 () Bool)

(assert (=> b!42217 (= condSetEmpty!773 (= (_2!508 (h!6026 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!773 () Bool)

(assert (=> setIsEmpty!773 setRes!773))

(declare-fun setNonEmpty!773 () Bool)

(declare-fun tp!29144 () Bool)

(declare-fun setElem!773 () Context!158)

(assert (=> setNonEmpty!773 (= setRes!773 (and tp!29144 (inv!922 setElem!773)))))

(declare-fun setRest!773 () (InoxSet Context!158))

(assert (=> setNonEmpty!773 (= (_2!508 (h!6026 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!773 true) setRest!773))))

(assert (=> b!42124 (= tp!29100 e!22533)))

(assert (= (and b!42217 condSetEmpty!773) setIsEmpty!773))

(assert (= (and b!42217 (not condSetEmpty!773)) setNonEmpty!773))

(assert (= (and b!42124 ((_ is Cons!630) (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))) b!42217))

(declare-fun m!15616 () Bool)

(assert (=> b!42217 m!15616))

(declare-fun m!15618 () Bool)

(assert (=> setNonEmpty!773 m!15618))

(declare-fun b!42218 () Bool)

(declare-fun tp!29147 () Bool)

(declare-fun e!22536 () Bool)

(declare-fun setRes!774 () Bool)

(assert (=> b!42218 (= e!22536 (and (inv!922 (_2!507 (_1!508 (h!6026 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))))) setRes!774 tp!29147))))

(declare-fun condSetEmpty!774 () Bool)

(assert (=> b!42218 (= condSetEmpty!774 (= (_2!508 (h!6026 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!774 () Bool)

(assert (=> setIsEmpty!774 setRes!774))

(declare-fun setNonEmpty!774 () Bool)

(declare-fun tp!29146 () Bool)

(declare-fun setElem!774 () Context!158)

(assert (=> setNonEmpty!774 (= setRes!774 (and tp!29146 (inv!922 setElem!774)))))

(declare-fun setRest!774 () (InoxSet Context!158))

(assert (=> setNonEmpty!774 (= (_2!508 (h!6026 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!774 true) setRest!774))))

(assert (=> b!42124 (= tp!29104 e!22536)))

(assert (= (and b!42218 condSetEmpty!774) setIsEmpty!774))

(assert (= (and b!42218 (not condSetEmpty!774)) setNonEmpty!774))

(assert (= (and b!42124 ((_ is Cons!630) (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))) b!42218))

(declare-fun m!15620 () Bool)

(assert (=> b!42218 m!15620))

(declare-fun m!15622 () Bool)

(assert (=> setNonEmpty!774 m!15622))

(declare-fun setIsEmpty!779 () Bool)

(declare-fun setRes!779 () Bool)

(assert (=> setIsEmpty!779 setRes!779))

(declare-fun condMapEmpty!756 () Bool)

(declare-fun mapDefault!756 () List!633)

(assert (=> mapNonEmpty!751 (= condMapEmpty!756 (= mapRest!752 ((as const (Array (_ BitVec 32) List!633)) mapDefault!756)))))

(declare-fun e!22552 () Bool)

(declare-fun mapRes!756 () Bool)

(assert (=> mapNonEmpty!751 (= tp!29101 (and e!22552 mapRes!756))))

(declare-fun setIsEmpty!780 () Bool)

(declare-fun setRes!780 () Bool)

(assert (=> setIsEmpty!780 setRes!780))

(declare-fun mapNonEmpty!756 () Bool)

(declare-fun tp!29159 () Bool)

(declare-fun e!22551 () Bool)

(assert (=> mapNonEmpty!756 (= mapRes!756 (and tp!29159 e!22551))))

(declare-fun mapValue!756 () List!633)

(declare-fun mapRest!756 () (Array (_ BitVec 32) List!633))

(declare-fun mapKey!756 () (_ BitVec 32))

(assert (=> mapNonEmpty!756 (= mapRest!752 (store mapRest!756 mapKey!756 mapValue!756))))

(declare-fun setNonEmpty!779 () Bool)

(declare-fun tp!29161 () Bool)

(declare-fun setElem!780 () Context!158)

(assert (=> setNonEmpty!779 (= setRes!779 (and tp!29161 (inv!922 setElem!780)))))

(declare-fun setRest!779 () (InoxSet Context!158))

(assert (=> setNonEmpty!779 (= (_2!510 (h!6027 mapValue!756)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!780 true) setRest!779))))

(declare-fun tp!29162 () Bool)

(declare-fun b!42225 () Bool)

(assert (=> b!42225 (= e!22551 (and (inv!922 (_1!509 (_1!510 (h!6027 mapValue!756)))) setRes!779 tp!29162))))

(declare-fun condSetEmpty!780 () Bool)

(assert (=> b!42225 (= condSetEmpty!780 (= (_2!510 (h!6027 mapValue!756)) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setNonEmpty!780 () Bool)

(declare-fun tp!29158 () Bool)

(declare-fun setElem!779 () Context!158)

(assert (=> setNonEmpty!780 (= setRes!780 (and tp!29158 (inv!922 setElem!779)))))

(declare-fun setRest!780 () (InoxSet Context!158))

(assert (=> setNonEmpty!780 (= (_2!510 (h!6027 mapDefault!756)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!779 true) setRest!780))))

(declare-fun mapIsEmpty!756 () Bool)

(assert (=> mapIsEmpty!756 mapRes!756))

(declare-fun tp!29160 () Bool)

(declare-fun b!42226 () Bool)

(assert (=> b!42226 (= e!22552 (and (inv!922 (_1!509 (_1!510 (h!6027 mapDefault!756)))) setRes!780 tp!29160))))

(declare-fun condSetEmpty!779 () Bool)

(assert (=> b!42226 (= condSetEmpty!779 (= (_2!510 (h!6027 mapDefault!756)) ((as const (Array Context!158 Bool)) false)))))

(assert (= (and mapNonEmpty!751 condMapEmpty!756) mapIsEmpty!756))

(assert (= (and mapNonEmpty!751 (not condMapEmpty!756)) mapNonEmpty!756))

(assert (= (and b!42225 condSetEmpty!780) setIsEmpty!779))

(assert (= (and b!42225 (not condSetEmpty!780)) setNonEmpty!779))

(assert (= (and mapNonEmpty!756 ((_ is Cons!631) mapValue!756)) b!42225))

(assert (= (and b!42226 condSetEmpty!779) setIsEmpty!780))

(assert (= (and b!42226 (not condSetEmpty!779)) setNonEmpty!780))

(assert (= (and mapNonEmpty!751 ((_ is Cons!631) mapDefault!756)) b!42226))

(declare-fun m!15624 () Bool)

(assert (=> b!42225 m!15624))

(declare-fun m!15626 () Bool)

(assert (=> setNonEmpty!780 m!15626))

(declare-fun m!15628 () Bool)

(assert (=> b!42226 m!15628))

(declare-fun m!15630 () Bool)

(assert (=> setNonEmpty!779 m!15630))

(declare-fun m!15632 () Bool)

(assert (=> mapNonEmpty!756 m!15632))

(declare-fun e!22557 () Bool)

(declare-fun tp!29163 () Bool)

(declare-fun b!42227 () Bool)

(declare-fun setRes!781 () Bool)

(assert (=> b!42227 (= e!22557 (and (inv!922 (_1!509 (_1!510 (h!6027 mapValue!752)))) setRes!781 tp!29163))))

(declare-fun condSetEmpty!781 () Bool)

(assert (=> b!42227 (= condSetEmpty!781 (= (_2!510 (h!6027 mapValue!752)) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!781 () Bool)

(assert (=> setIsEmpty!781 setRes!781))

(declare-fun setNonEmpty!781 () Bool)

(declare-fun tp!29164 () Bool)

(declare-fun setElem!781 () Context!158)

(assert (=> setNonEmpty!781 (= setRes!781 (and tp!29164 (inv!922 setElem!781)))))

(declare-fun setRest!781 () (InoxSet Context!158))

(assert (=> setNonEmpty!781 (= (_2!510 (h!6027 mapValue!752)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!781 true) setRest!781))))

(assert (=> mapNonEmpty!751 (= tp!29110 e!22557)))

(assert (= (and b!42227 condSetEmpty!781) setIsEmpty!781))

(assert (= (and b!42227 (not condSetEmpty!781)) setNonEmpty!781))

(assert (= (and mapNonEmpty!751 ((_ is Cons!631) mapValue!752)) b!42227))

(declare-fun m!15634 () Bool)

(assert (=> b!42227 m!15634))

(declare-fun m!15636 () Bool)

(assert (=> setNonEmpty!781 m!15636))

(declare-fun setIsEmpty!786 () Bool)

(declare-fun setRes!787 () Bool)

(assert (=> setIsEmpty!786 setRes!787))

(declare-fun condMapEmpty!759 () Bool)

(declare-fun mapDefault!759 () List!632)

(assert (=> mapNonEmpty!752 (= condMapEmpty!759 (= mapRest!751 ((as const (Array (_ BitVec 32) List!632)) mapDefault!759)))))

(declare-fun e!22572 () Bool)

(declare-fun mapRes!759 () Bool)

(assert (=> mapNonEmpty!752 (= tp!29105 (and e!22572 mapRes!759))))

(declare-fun setIsEmpty!787 () Bool)

(declare-fun setRes!786 () Bool)

(assert (=> setIsEmpty!787 setRes!786))

(declare-fun setNonEmpty!786 () Bool)

(declare-fun tp!29176 () Bool)

(declare-fun setElem!787 () Context!158)

(assert (=> setNonEmpty!786 (= setRes!787 (and tp!29176 (inv!922 setElem!787)))))

(declare-fun setRest!786 () (InoxSet Context!158))

(assert (=> setNonEmpty!786 (= (_2!508 (h!6026 mapDefault!759)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!787 true) setRest!786))))

(declare-fun setNonEmpty!787 () Bool)

(declare-fun tp!29179 () Bool)

(declare-fun setElem!786 () Context!158)

(assert (=> setNonEmpty!787 (= setRes!786 (and tp!29179 (inv!922 setElem!786)))))

(declare-fun mapValue!759 () List!632)

(declare-fun setRest!787 () (InoxSet Context!158))

(assert (=> setNonEmpty!787 (= (_2!508 (h!6026 mapValue!759)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!786 true) setRest!787))))

(declare-fun mapNonEmpty!759 () Bool)

(declare-fun tp!29178 () Bool)

(declare-fun e!22575 () Bool)

(assert (=> mapNonEmpty!759 (= mapRes!759 (and tp!29178 e!22575))))

(declare-fun mapKey!759 () (_ BitVec 32))

(declare-fun mapRest!759 () (Array (_ BitVec 32) List!632))

(assert (=> mapNonEmpty!759 (= mapRest!751 (store mapRest!759 mapKey!759 mapValue!759))))

(declare-fun mapIsEmpty!759 () Bool)

(assert (=> mapIsEmpty!759 mapRes!759))

(declare-fun tp!29177 () Bool)

(declare-fun b!42234 () Bool)

(assert (=> b!42234 (= e!22575 (and (inv!922 (_2!507 (_1!508 (h!6026 mapValue!759)))) setRes!786 tp!29177))))

(declare-fun condSetEmpty!787 () Bool)

(assert (=> b!42234 (= condSetEmpty!787 (= (_2!508 (h!6026 mapValue!759)) ((as const (Array Context!158 Bool)) false)))))

(declare-fun tp!29175 () Bool)

(declare-fun b!42235 () Bool)

(assert (=> b!42235 (= e!22572 (and (inv!922 (_2!507 (_1!508 (h!6026 mapDefault!759)))) setRes!787 tp!29175))))

(declare-fun condSetEmpty!786 () Bool)

(assert (=> b!42235 (= condSetEmpty!786 (= (_2!508 (h!6026 mapDefault!759)) ((as const (Array Context!158 Bool)) false)))))

(assert (= (and mapNonEmpty!752 condMapEmpty!759) mapIsEmpty!759))

(assert (= (and mapNonEmpty!752 (not condMapEmpty!759)) mapNonEmpty!759))

(assert (= (and b!42234 condSetEmpty!787) setIsEmpty!787))

(assert (= (and b!42234 (not condSetEmpty!787)) setNonEmpty!787))

(assert (= (and mapNonEmpty!759 ((_ is Cons!630) mapValue!759)) b!42234))

(assert (= (and b!42235 condSetEmpty!786) setIsEmpty!786))

(assert (= (and b!42235 (not condSetEmpty!786)) setNonEmpty!786))

(assert (= (and mapNonEmpty!752 ((_ is Cons!630) mapDefault!759)) b!42235))

(declare-fun m!15638 () Bool)

(assert (=> setNonEmpty!786 m!15638))

(declare-fun m!15640 () Bool)

(assert (=> setNonEmpty!787 m!15640))

(declare-fun m!15642 () Bool)

(assert (=> b!42235 m!15642))

(declare-fun m!15644 () Bool)

(assert (=> mapNonEmpty!759 m!15644))

(declare-fun m!15646 () Bool)

(assert (=> b!42234 m!15646))

(declare-fun e!22578 () Bool)

(declare-fun setRes!788 () Bool)

(declare-fun b!42236 () Bool)

(declare-fun tp!29181 () Bool)

(assert (=> b!42236 (= e!22578 (and (inv!922 (_2!507 (_1!508 (h!6026 mapValue!751)))) setRes!788 tp!29181))))

(declare-fun condSetEmpty!788 () Bool)

(assert (=> b!42236 (= condSetEmpty!788 (= (_2!508 (h!6026 mapValue!751)) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!788 () Bool)

(assert (=> setIsEmpty!788 setRes!788))

(declare-fun setNonEmpty!788 () Bool)

(declare-fun tp!29180 () Bool)

(declare-fun setElem!788 () Context!158)

(assert (=> setNonEmpty!788 (= setRes!788 (and tp!29180 (inv!922 setElem!788)))))

(declare-fun setRest!788 () (InoxSet Context!158))

(assert (=> setNonEmpty!788 (= (_2!508 (h!6026 mapValue!751)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!788 true) setRest!788))))

(assert (=> mapNonEmpty!752 (= tp!29099 e!22578)))

(assert (= (and b!42236 condSetEmpty!788) setIsEmpty!788))

(assert (= (and b!42236 (not condSetEmpty!788)) setNonEmpty!788))

(assert (= (and mapNonEmpty!752 ((_ is Cons!630) mapValue!751)) b!42236))

(declare-fun m!15648 () Bool)

(assert (=> b!42236 m!15648))

(declare-fun m!15650 () Bool)

(assert (=> setNonEmpty!788 m!15650))

(declare-fun b!42237 () Bool)

(declare-fun e!22582 () Bool)

(declare-fun setRes!789 () Bool)

(declare-fun tp!29182 () Bool)

(assert (=> b!42237 (= e!22582 (and setRes!789 tp!29182))))

(declare-fun condSetEmpty!789 () Bool)

(assert (=> b!42237 (= condSetEmpty!789 (= (_1!505 (_1!506 (h!6024 (zeroValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!789 () Bool)

(assert (=> setIsEmpty!789 setRes!789))

(declare-fun setNonEmpty!789 () Bool)

(declare-fun tp!29183 () Bool)

(declare-fun setElem!789 () Context!158)

(assert (=> setNonEmpty!789 (= setRes!789 (and tp!29183 (inv!922 setElem!789)))))

(declare-fun setRest!789 () (InoxSet Context!158))

(assert (=> setNonEmpty!789 (= (_1!505 (_1!506 (h!6024 (zeroValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!789 true) setRest!789))))

(assert (=> b!42131 (= tp!29116 e!22582)))

(assert (= (and b!42237 condSetEmpty!789) setIsEmpty!789))

(assert (= (and b!42237 (not condSetEmpty!789)) setNonEmpty!789))

(assert (= (and b!42131 ((_ is Cons!628) (zeroValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45)))))))) b!42237))

(declare-fun m!15652 () Bool)

(assert (=> setNonEmpty!789 m!15652))

(declare-fun b!42238 () Bool)

(declare-fun e!22584 () Bool)

(declare-fun setRes!790 () Bool)

(declare-fun tp!29184 () Bool)

(assert (=> b!42238 (= e!22584 (and setRes!790 tp!29184))))

(declare-fun condSetEmpty!790 () Bool)

(assert (=> b!42238 (= condSetEmpty!790 (= (_1!505 (_1!506 (h!6024 (minValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!790 () Bool)

(assert (=> setIsEmpty!790 setRes!790))

(declare-fun setNonEmpty!790 () Bool)

(declare-fun tp!29185 () Bool)

(declare-fun setElem!790 () Context!158)

(assert (=> setNonEmpty!790 (= setRes!790 (and tp!29185 (inv!922 setElem!790)))))

(declare-fun setRest!790 () (InoxSet Context!158))

(assert (=> setNonEmpty!790 (= (_1!505 (_1!506 (h!6024 (minValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!790 true) setRest!790))))

(assert (=> b!42131 (= tp!29113 e!22584)))

(assert (= (and b!42238 condSetEmpty!790) setIsEmpty!790))

(assert (= (and b!42238 (not condSetEmpty!790)) setNonEmpty!790))

(assert (= (and b!42131 ((_ is Cons!628) (minValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45)))))))) b!42238))

(declare-fun m!15654 () Bool)

(assert (=> setNonEmpty!790 m!15654))

(declare-fun b!42245 () Bool)

(declare-fun e!22595 () Bool)

(declare-fun setRes!796 () Bool)

(declare-fun tp!29198 () Bool)

(assert (=> b!42245 (= e!22595 (and setRes!796 tp!29198))))

(declare-fun condSetEmpty!795 () Bool)

(declare-fun mapValue!762 () List!630)

(assert (=> b!42245 (= condSetEmpty!795 (= (_1!505 (_1!506 (h!6024 mapValue!762))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun b!42246 () Bool)

(declare-fun e!22593 () Bool)

(declare-fun setRes!795 () Bool)

(declare-fun tp!29197 () Bool)

(assert (=> b!42246 (= e!22593 (and setRes!795 tp!29197))))

(declare-fun condSetEmpty!796 () Bool)

(declare-fun mapDefault!762 () List!630)

(assert (=> b!42246 (= condSetEmpty!796 (= (_1!505 (_1!506 (h!6024 mapDefault!762))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!795 () Bool)

(assert (=> setIsEmpty!795 setRes!795))

(declare-fun condMapEmpty!762 () Bool)

(assert (=> mapNonEmpty!753 (= condMapEmpty!762 (= mapRest!753 ((as const (Array (_ BitVec 32) List!630)) mapDefault!762)))))

(declare-fun mapRes!762 () Bool)

(assert (=> mapNonEmpty!753 (= tp!29114 (and e!22593 mapRes!762))))

(declare-fun setNonEmpty!795 () Bool)

(declare-fun tp!29196 () Bool)

(declare-fun setElem!795 () Context!158)

(assert (=> setNonEmpty!795 (= setRes!796 (and tp!29196 (inv!922 setElem!795)))))

(declare-fun setRest!795 () (InoxSet Context!158))

(assert (=> setNonEmpty!795 (= (_1!505 (_1!506 (h!6024 mapValue!762))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!795 true) setRest!795))))

(declare-fun mapIsEmpty!762 () Bool)

(assert (=> mapIsEmpty!762 mapRes!762))

(declare-fun setIsEmpty!796 () Bool)

(assert (=> setIsEmpty!796 setRes!796))

(declare-fun setNonEmpty!796 () Bool)

(declare-fun tp!29200 () Bool)

(declare-fun setElem!796 () Context!158)

(assert (=> setNonEmpty!796 (= setRes!795 (and tp!29200 (inv!922 setElem!796)))))

(declare-fun setRest!796 () (InoxSet Context!158))

(assert (=> setNonEmpty!796 (= (_1!505 (_1!506 (h!6024 mapDefault!762))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!796 true) setRest!796))))

(declare-fun mapNonEmpty!762 () Bool)

(declare-fun tp!29199 () Bool)

(assert (=> mapNonEmpty!762 (= mapRes!762 (and tp!29199 e!22595))))

(declare-fun mapKey!762 () (_ BitVec 32))

(declare-fun mapRest!762 () (Array (_ BitVec 32) List!630))

(assert (=> mapNonEmpty!762 (= mapRest!753 (store mapRest!762 mapKey!762 mapValue!762))))

(assert (= (and mapNonEmpty!753 condMapEmpty!762) mapIsEmpty!762))

(assert (= (and mapNonEmpty!753 (not condMapEmpty!762)) mapNonEmpty!762))

(assert (= (and b!42245 condSetEmpty!795) setIsEmpty!796))

(assert (= (and b!42245 (not condSetEmpty!795)) setNonEmpty!795))

(assert (= (and mapNonEmpty!762 ((_ is Cons!628) mapValue!762)) b!42245))

(assert (= (and b!42246 condSetEmpty!796) setIsEmpty!795))

(assert (= (and b!42246 (not condSetEmpty!796)) setNonEmpty!796))

(assert (= (and mapNonEmpty!753 ((_ is Cons!628) mapDefault!762)) b!42246))

(declare-fun m!15656 () Bool)

(assert (=> setNonEmpty!795 m!15656))

(declare-fun m!15658 () Bool)

(assert (=> setNonEmpty!796 m!15658))

(declare-fun m!15660 () Bool)

(assert (=> mapNonEmpty!762 m!15660))

(declare-fun b!42247 () Bool)

(declare-fun e!22598 () Bool)

(declare-fun setRes!797 () Bool)

(declare-fun tp!29201 () Bool)

(assert (=> b!42247 (= e!22598 (and setRes!797 tp!29201))))

(declare-fun condSetEmpty!797 () Bool)

(assert (=> b!42247 (= condSetEmpty!797 (= (_1!505 (_1!506 (h!6024 mapValue!753))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!797 () Bool)

(assert (=> setIsEmpty!797 setRes!797))

(declare-fun setNonEmpty!797 () Bool)

(declare-fun tp!29202 () Bool)

(declare-fun setElem!797 () Context!158)

(assert (=> setNonEmpty!797 (= setRes!797 (and tp!29202 (inv!922 setElem!797)))))

(declare-fun setRest!797 () (InoxSet Context!158))

(assert (=> setNonEmpty!797 (= (_1!505 (_1!506 (h!6024 mapValue!753))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!797 true) setRest!797))))

(assert (=> mapNonEmpty!753 (= tp!29103 e!22598)))

(assert (= (and b!42247 condSetEmpty!797) setIsEmpty!797))

(assert (= (and b!42247 (not condSetEmpty!797)) setNonEmpty!797))

(assert (= (and mapNonEmpty!753 ((_ is Cons!628) mapValue!753)) b!42247))

(declare-fun m!15662 () Bool)

(assert (=> setNonEmpty!797 m!15662))

(declare-fun b!42248 () Bool)

(declare-fun e!22599 () Bool)

(declare-fun tp!29204 () Bool)

(declare-fun setRes!798 () Bool)

(assert (=> b!42248 (= e!22599 (and (inv!922 (_2!507 (_1!508 (h!6026 mapDefault!752)))) setRes!798 tp!29204))))

(declare-fun condSetEmpty!798 () Bool)

(assert (=> b!42248 (= condSetEmpty!798 (= (_2!508 (h!6026 mapDefault!752)) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!798 () Bool)

(assert (=> setIsEmpty!798 setRes!798))

(declare-fun setNonEmpty!798 () Bool)

(declare-fun tp!29203 () Bool)

(declare-fun setElem!798 () Context!158)

(assert (=> setNonEmpty!798 (= setRes!798 (and tp!29203 (inv!922 setElem!798)))))

(declare-fun setRest!798 () (InoxSet Context!158))

(assert (=> setNonEmpty!798 (= (_2!508 (h!6026 mapDefault!752)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!798 true) setRest!798))))

(assert (=> b!42122 (= tp!29115 e!22599)))

(assert (= (and b!42248 condSetEmpty!798) setIsEmpty!798))

(assert (= (and b!42248 (not condSetEmpty!798)) setNonEmpty!798))

(assert (= (and b!42122 ((_ is Cons!630) mapDefault!752)) b!42248))

(declare-fun m!15664 () Bool)

(assert (=> b!42248 m!15664))

(declare-fun m!15666 () Bool)

(assert (=> setNonEmpty!798 m!15666))

(declare-fun tp!29206 () Bool)

(declare-fun b!42249 () Bool)

(declare-fun tp!29205 () Bool)

(declare-fun e!22602 () Bool)

(assert (=> b!42249 (= e!22602 (and (inv!914 (left!527 (c!15876 input!525))) tp!29205 (inv!914 (right!857 (c!15876 input!525))) tp!29206))))

(declare-fun b!42250 () Bool)

(assert (=> b!42250 (= e!22602 (inv!921 (xs!2694 (c!15876 input!525))))))

(assert (=> b!42111 (= tp!29111 (and (inv!914 (c!15876 input!525)) e!22602))))

(assert (= (and b!42111 ((_ is Node!115) (c!15876 input!525))) b!42249))

(assert (= (and b!42111 ((_ is Leaf!304) (c!15876 input!525))) b!42250))

(declare-fun m!15668 () Bool)

(assert (=> b!42249 m!15668))

(declare-fun m!15670 () Bool)

(assert (=> b!42249 m!15670))

(declare-fun m!15672 () Bool)

(assert (=> b!42250 m!15672))

(assert (=> b!42111 m!15486))

(declare-fun setRes!799 () Bool)

(declare-fun e!22604 () Bool)

(declare-fun tp!29207 () Bool)

(declare-fun b!42251 () Bool)

(assert (=> b!42251 (= e!22604 (and (inv!922 (_1!509 (_1!510 (h!6027 mapDefault!753)))) setRes!799 tp!29207))))

(declare-fun condSetEmpty!799 () Bool)

(assert (=> b!42251 (= condSetEmpty!799 (= (_2!510 (h!6027 mapDefault!753)) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!799 () Bool)

(assert (=> setIsEmpty!799 setRes!799))

(declare-fun setNonEmpty!799 () Bool)

(declare-fun tp!29208 () Bool)

(declare-fun setElem!799 () Context!158)

(assert (=> setNonEmpty!799 (= setRes!799 (and tp!29208 (inv!922 setElem!799)))))

(declare-fun setRest!799 () (InoxSet Context!158))

(assert (=> setNonEmpty!799 (= (_2!510 (h!6027 mapDefault!753)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!799 true) setRest!799))))

(assert (=> b!42129 (= tp!29118 e!22604)))

(assert (= (and b!42251 condSetEmpty!799) setIsEmpty!799))

(assert (= (and b!42251 (not condSetEmpty!799)) setNonEmpty!799))

(assert (= (and b!42129 ((_ is Cons!631) mapDefault!753)) b!42251))

(declare-fun m!15674 () Bool)

(assert (=> b!42251 m!15674))

(declare-fun m!15676 () Bool)

(assert (=> setNonEmpty!799 m!15676))

(check-sat (not b!42169) (not setNonEmpty!766) (not b!42184) (not d!4367) (not d!4363) (not d!4411) (not b!42248) (not setNonEmpty!781) (not b!42237) (not setNonEmpty!770) (not d!4389) (not b!42153) (not d!4381) b_and!1025 (not b!42236) (not b!42249) (not b!42168) (not d!4383) (not d!4399) (not b!42201) (not setNonEmpty!788) (not b!42181) (not b!42212) (not mapNonEmpty!759) (not setNonEmpty!796) (not setNonEmpty!795) (not setNonEmpty!779) (not setNonEmpty!769) (not setNonEmpty!790) (not b!42167) (not d!4401) (not b!42152) (not d!4379) (not b_next!985) (not setNonEmpty!797) (not b!42206) (not d!4359) (not d!4375) (not b!42225) (not b!42247) (not b_next!989) (not b!42190) (not setNonEmpty!773) (not b!42150) (not b!42200) (not setNonEmpty!789) (not b!42182) (not b_next!981) b_and!1019 (not b!42234) (not b!42111) (not b!42227) (not setNonEmpty!787) (not d!4357) b_and!1021 (not b_next!991) (not d!4365) (not b!42136) (not b_next!987) (not b!42238) (not b!42187) (not d!4395) (not setNonEmpty!799) (not b!42176) (not b!42165) (not b!42245) (not b!42226) (not d!4361) (not b!42193) (not b!42211) (not setNonEmpty!780) (not b_next!983) b_and!1023 (not d!4405) (not b!42250) (not mapNonEmpty!762) b_and!1015 (not d!4397) (not b!42251) (not b!42235) b_and!1017 (not d!4377) (not b!42218) (not setNonEmpty!786) (not b!42178) (not b!42217) (not setNonEmpty!774) (not b!42246) (not mapNonEmpty!756) (not b!42154) (not setNonEmpty!798))
(check-sat b_and!1025 (not b_next!985) (not b_next!989) (not b_next!981) b_and!1019 b_and!1021 b_and!1015 b_and!1017 (not b_next!991) (not b_next!987) (not b_next!983) b_and!1023)
(get-model)

(declare-fun d!4417 () Bool)

(declare-fun lt!4569 () Int)

(declare-fun size!634 (List!631) Int)

(assert (=> d!4417 (= lt!4569 (size!634 (list!159 (_2!511 lt!4560))))))

(declare-fun size!635 (Conc!115) Int)

(assert (=> d!4417 (= lt!4569 (size!635 (c!15876 (_2!511 lt!4560))))))

(assert (=> d!4417 (= (size!632 (_2!511 lt!4560)) lt!4569)))

(declare-fun bs!5122 () Bool)

(assert (= bs!5122 d!4417))

(assert (=> bs!5122 m!15510))

(assert (=> bs!5122 m!15510))

(declare-fun m!15678 () Bool)

(assert (=> bs!5122 m!15678))

(declare-fun m!15680 () Bool)

(assert (=> bs!5122 m!15680))

(assert (=> b!42150 d!4417))

(declare-fun d!4419 () Bool)

(declare-fun lt!4570 () Int)

(assert (=> d!4419 (= lt!4570 (size!634 (list!159 input!525)))))

(assert (=> d!4419 (= lt!4570 (size!635 (c!15876 input!525)))))

(assert (=> d!4419 (= (size!632 input!525) lt!4570)))

(declare-fun bs!5123 () Bool)

(assert (= bs!5123 d!4419))

(assert (=> bs!5123 m!15458))

(assert (=> bs!5123 m!15458))

(declare-fun m!15682 () Bool)

(assert (=> bs!5123 m!15682))

(declare-fun m!15684 () Bool)

(assert (=> bs!5123 m!15684))

(assert (=> b!42150 d!4419))

(declare-fun d!4421 () Bool)

(declare-fun lambda!699 () Int)

(declare-fun forall!65 (List!629 Int) Bool)

(assert (=> d!4421 (= (inv!922 setElem!780) (forall!65 (exprs!579 setElem!780) lambda!699))))

(declare-fun bs!5124 () Bool)

(assert (= bs!5124 d!4421))

(declare-fun m!15686 () Bool)

(assert (=> bs!5124 m!15686))

(assert (=> setNonEmpty!779 d!4421))

(declare-fun d!4423 () Bool)

(assert (=> d!4423 (= (list!159 (_2!511 lt!4560)) (list!162 (c!15876 (_2!511 lt!4560))))))

(declare-fun bs!5125 () Bool)

(assert (= bs!5125 d!4423))

(declare-fun m!15688 () Bool)

(assert (=> bs!5125 m!15688))

(assert (=> b!42152 d!4423))

(declare-fun b!42262 () Bool)

(declare-fun e!22615 () Bool)

(declare-fun lt!4579 () tuple2!738)

(assert (=> b!42262 (= e!22615 (= (_2!513 lt!4579) (list!159 input!525)))))

(declare-fun b!42263 () Bool)

(declare-fun e!22613 () tuple2!738)

(declare-datatypes ((tuple2!740 0))(
  ( (tuple2!741 (_1!514 Token!78) (_2!514 List!631)) )
))
(declare-datatypes ((Option!52 0))(
  ( (None!51) (Some!51 (v!12393 tuple2!740)) )
))
(declare-fun lt!4578 () Option!52)

(declare-fun lt!4577 () tuple2!738)

(assert (=> b!42263 (= e!22613 (tuple2!739 (Cons!632 (_1!514 (v!12393 lt!4578)) (_1!513 lt!4577)) (_2!513 lt!4577)))))

(assert (=> b!42263 (= lt!4577 (lexList!9 Lexer!49 lt!4555 (_2!514 (v!12393 lt!4578))))))

(declare-fun d!4425 () Bool)

(assert (=> d!4425 e!22615))

(declare-fun c!15890 () Bool)

(declare-fun size!636 (List!634) Int)

(assert (=> d!4425 (= c!15890 (> (size!636 (_1!513 lt!4579)) 0))))

(assert (=> d!4425 (= lt!4579 e!22613)))

(declare-fun c!15889 () Bool)

(assert (=> d!4425 (= c!15889 ((_ is Some!51) lt!4578))))

(declare-fun maxPrefix!4 (LexerInterface!51 List!635 List!631) Option!52)

(assert (=> d!4425 (= lt!4578 (maxPrefix!4 Lexer!49 lt!4555 (list!159 input!525)))))

(assert (=> d!4425 (= (lexList!9 Lexer!49 lt!4555 (list!159 input!525)) lt!4579)))

(declare-fun b!42264 () Bool)

(declare-fun e!22614 () Bool)

(declare-fun isEmpty!127 (List!634) Bool)

(assert (=> b!42264 (= e!22614 (not (isEmpty!127 (_1!513 lt!4579))))))

(declare-fun b!42265 () Bool)

(assert (=> b!42265 (= e!22615 e!22614)))

(declare-fun res!29853 () Bool)

(assert (=> b!42265 (= res!29853 (< (size!634 (_2!513 lt!4579)) (size!634 (list!159 input!525))))))

(assert (=> b!42265 (=> (not res!29853) (not e!22614))))

(declare-fun b!42266 () Bool)

(assert (=> b!42266 (= e!22613 (tuple2!739 Nil!632 (list!159 input!525)))))

(assert (= (and d!4425 c!15889) b!42263))

(assert (= (and d!4425 (not c!15889)) b!42266))

(assert (= (and d!4425 c!15890) b!42265))

(assert (= (and d!4425 (not c!15890)) b!42262))

(assert (= (and b!42265 res!29853) b!42264))

(declare-fun m!15690 () Bool)

(assert (=> b!42263 m!15690))

(declare-fun m!15692 () Bool)

(assert (=> d!4425 m!15692))

(assert (=> d!4425 m!15458))

(declare-fun m!15694 () Bool)

(assert (=> d!4425 m!15694))

(declare-fun m!15696 () Bool)

(assert (=> b!42264 m!15696))

(declare-fun m!15698 () Bool)

(assert (=> b!42265 m!15698))

(assert (=> b!42265 m!15458))

(assert (=> b!42265 m!15682))

(assert (=> b!42152 d!4425))

(assert (=> b!42152 d!4401))

(declare-fun bs!5126 () Bool)

(declare-fun d!4427 () Bool)

(assert (= bs!5126 (and d!4427 d!4421)))

(declare-fun lambda!700 () Int)

(assert (=> bs!5126 (= lambda!700 lambda!699)))

(assert (=> d!4427 (= (inv!922 setElem!787) (forall!65 (exprs!579 setElem!787) lambda!700))))

(declare-fun bs!5127 () Bool)

(assert (= bs!5127 d!4427))

(declare-fun m!15700 () Bool)

(assert (=> bs!5127 m!15700))

(assert (=> setNonEmpty!786 d!4427))

(declare-fun bs!5128 () Bool)

(declare-fun d!4429 () Bool)

(assert (= bs!5128 (and d!4429 d!4421)))

(declare-fun lambda!701 () Int)

(assert (=> bs!5128 (= lambda!701 lambda!699)))

(declare-fun bs!5129 () Bool)

(assert (= bs!5129 (and d!4429 d!4427)))

(assert (=> bs!5129 (= lambda!701 lambda!700)))

(assert (=> d!4429 (= (inv!922 setElem!779) (forall!65 (exprs!579 setElem!779) lambda!701))))

(declare-fun bs!5130 () Bool)

(assert (= bs!5130 d!4429))

(declare-fun m!15702 () Bool)

(assert (=> bs!5130 m!15702))

(assert (=> setNonEmpty!780 d!4429))

(declare-fun bs!5131 () Bool)

(declare-fun d!4431 () Bool)

(assert (= bs!5131 (and d!4431 d!4421)))

(declare-fun lambda!702 () Int)

(assert (=> bs!5131 (= lambda!702 lambda!699)))

(declare-fun bs!5132 () Bool)

(assert (= bs!5132 (and d!4431 d!4427)))

(assert (=> bs!5132 (= lambda!702 lambda!700)))

(declare-fun bs!5133 () Bool)

(assert (= bs!5133 (and d!4431 d!4429)))

(assert (=> bs!5133 (= lambda!702 lambda!701)))

(assert (=> d!4431 (= (inv!922 setElem!774) (forall!65 (exprs!579 setElem!774) lambda!702))))

(declare-fun bs!5134 () Bool)

(assert (= bs!5134 d!4431))

(declare-fun m!15704 () Bool)

(assert (=> bs!5134 m!15704))

(assert (=> setNonEmpty!774 d!4431))

(declare-fun d!4433 () Bool)

(assert (=> d!4433 true))

(declare-fun lt!4582 () Bool)

(declare-fun rulesValidInductive!7 (LexerInterface!51 List!635) Bool)

(assert (=> d!4433 (= lt!4582 (rulesValidInductive!7 Lexer!49 lt!4555))))

(declare-fun lambda!705 () Int)

(declare-fun forall!66 (List!635 Int) Bool)

(assert (=> d!4433 (= lt!4582 (forall!66 lt!4555 lambda!705))))

(assert (=> d!4433 (= (rulesValid!12 Lexer!49 lt!4555) lt!4582)))

(declare-fun bs!5135 () Bool)

(assert (= bs!5135 d!4433))

(declare-fun m!15706 () Bool)

(assert (=> bs!5135 m!15706))

(declare-fun m!15708 () Bool)

(assert (=> bs!5135 m!15708))

(assert (=> d!4375 d!4433))

(declare-fun bs!5136 () Bool)

(declare-fun d!4435 () Bool)

(assert (= bs!5136 (and d!4435 d!4421)))

(declare-fun lambda!706 () Int)

(assert (=> bs!5136 (= lambda!706 lambda!699)))

(declare-fun bs!5137 () Bool)

(assert (= bs!5137 (and d!4435 d!4427)))

(assert (=> bs!5137 (= lambda!706 lambda!700)))

(declare-fun bs!5138 () Bool)

(assert (= bs!5138 (and d!4435 d!4429)))

(assert (=> bs!5138 (= lambda!706 lambda!701)))

(declare-fun bs!5139 () Bool)

(assert (= bs!5139 (and d!4435 d!4431)))

(assert (=> bs!5139 (= lambda!706 lambda!702)))

(assert (=> d!4435 (= (inv!922 setElem!789) (forall!65 (exprs!579 setElem!789) lambda!706))))

(declare-fun bs!5140 () Bool)

(assert (= bs!5140 d!4435))

(declare-fun m!15710 () Bool)

(assert (=> bs!5140 m!15710))

(assert (=> setNonEmpty!789 d!4435))

(declare-fun d!4437 () Bool)

(declare-fun lt!4585 () Int)

(assert (=> d!4437 (= lt!4585 (size!636 (list!160 (_1!511 lt!4560))))))

(declare-fun size!637 (Conc!116) Int)

(assert (=> d!4437 (= lt!4585 (size!637 (c!15877 (_1!511 lt!4560))))))

(assert (=> d!4437 (= (size!633 (_1!511 lt!4560)) lt!4585)))

(declare-fun bs!5141 () Bool)

(assert (= bs!5141 d!4437))

(assert (=> bs!5141 m!15514))

(assert (=> bs!5141 m!15514))

(declare-fun m!15712 () Bool)

(assert (=> bs!5141 m!15712))

(declare-fun m!15714 () Bool)

(assert (=> bs!5141 m!15714))

(assert (=> d!4357 d!4437))

(declare-fun b!42283 () Bool)

(declare-fun e!22626 () tuple2!736)

(assert (=> b!42283 (= e!22626 (tuple2!737 (BalanceConc!233 Empty!116) input!525))))

(declare-fun b!42284 () Bool)

(declare-fun lt!4668 () tuple2!736)

(declare-datatypes ((tuple2!742 0))(
  ( (tuple2!743 (_1!515 Token!78) (_2!515 BalanceConc!230)) )
))
(declare-datatypes ((Option!53 0))(
  ( (None!52) (Some!52 (v!12394 tuple2!742)) )
))
(declare-fun lt!4670 () Option!53)

(declare-fun lexRec!7 (LexerInterface!51 List!635 BalanceConc!230) tuple2!736)

(assert (=> b!42284 (= lt!4668 (lexRec!7 Lexer!49 lt!4555 (_2!515 (v!12394 lt!4670))))))

(declare-fun prepend!11 (BalanceConc!232 Token!78) BalanceConc!232)

(assert (=> b!42284 (= e!22626 (tuple2!737 (prepend!11 (_1!511 lt!4668) (_1!515 (v!12394 lt!4670))) (_2!511 lt!4668)))))

(declare-fun b!42285 () Bool)

(declare-fun e!22624 () tuple2!736)

(assert (=> b!42285 (= e!22624 (tuple2!737 (BalanceConc!233 Empty!116) input!525))))

(declare-fun b!42286 () Bool)

(declare-fun e!22625 () Bool)

(declare-fun lt!4679 () tuple2!736)

(assert (=> b!42286 (= e!22625 (= (list!159 (_2!511 lt!4679)) (list!159 (_2!511 (lexRec!7 Lexer!49 lt!4555 input!525)))))))

(declare-fun b!42287 () Bool)

(declare-fun e!22627 () tuple2!736)

(declare-fun lt!4680 () BalanceConc!230)

(assert (=> b!42287 (= e!22627 (tuple2!737 (BalanceConc!233 Empty!116) lt!4680))))

(declare-fun lt!4655 () Option!53)

(declare-fun lt!4664 () BalanceConc!230)

(declare-fun b!42288 () Bool)

(declare-fun append!6 (BalanceConc!232 Token!78) BalanceConc!232)

(assert (=> b!42288 (= e!22624 (lexTailRecV2!6 Lexer!49 lt!4555 input!525 lt!4664 (_2!515 (v!12394 lt!4655)) (append!6 (BalanceConc!233 Empty!116) (_1!515 (v!12394 lt!4655)))))))

(declare-fun lt!4682 () tuple2!736)

(assert (=> b!42288 (= lt!4682 (lexRec!7 Lexer!49 lt!4555 (_2!515 (v!12394 lt!4655))))))

(declare-fun lt!4657 () List!631)

(assert (=> b!42288 (= lt!4657 (list!159 (BalanceConc!231 Empty!115)))))

(declare-fun lt!4677 () List!631)

(declare-fun charsOf!3 (Token!78) BalanceConc!230)

(assert (=> b!42288 (= lt!4677 (list!159 (charsOf!3 (_1!515 (v!12394 lt!4655)))))))

(declare-fun lt!4683 () List!631)

(assert (=> b!42288 (= lt!4683 (list!159 (_2!515 (v!12394 lt!4655))))))

(declare-fun lt!4667 () Unit!281)

(declare-fun lemmaConcatAssociativity!8 (List!631 List!631 List!631) Unit!281)

(assert (=> b!42288 (= lt!4667 (lemmaConcatAssociativity!8 lt!4657 lt!4677 lt!4683))))

(declare-fun ++!53 (List!631 List!631) List!631)

(assert (=> b!42288 (= (++!53 (++!53 lt!4657 lt!4677) lt!4683) (++!53 lt!4657 (++!53 lt!4677 lt!4683)))))

(declare-fun lt!4660 () Unit!281)

(assert (=> b!42288 (= lt!4660 lt!4667)))

(declare-fun maxPrefixZipperSequence!5 (LexerInterface!51 List!635 BalanceConc!230) Option!53)

(assert (=> b!42288 (= lt!4670 (maxPrefixZipperSequence!5 Lexer!49 lt!4555 input!525))))

(declare-fun c!15897 () Bool)

(assert (=> b!42288 (= c!15897 ((_ is Some!52) lt!4670))))

(assert (=> b!42288 (= (lexRec!7 Lexer!49 lt!4555 input!525) e!22626)))

(declare-fun lt!4674 () Unit!281)

(declare-fun Unit!285 () Unit!281)

(assert (=> b!42288 (= lt!4674 Unit!285)))

(declare-fun lt!4661 () List!634)

(assert (=> b!42288 (= lt!4661 (list!160 (BalanceConc!233 Empty!116)))))

(declare-fun lt!4665 () List!634)

(assert (=> b!42288 (= lt!4665 (Cons!632 (_1!515 (v!12394 lt!4655)) Nil!632))))

(declare-fun lt!4659 () List!634)

(assert (=> b!42288 (= lt!4659 (list!160 (_1!511 lt!4682)))))

(declare-fun lt!4676 () Unit!281)

(declare-fun lemmaConcatAssociativity!9 (List!634 List!634 List!634) Unit!281)

(assert (=> b!42288 (= lt!4676 (lemmaConcatAssociativity!9 lt!4661 lt!4665 lt!4659))))

(declare-fun ++!54 (List!634 List!634) List!634)

(assert (=> b!42288 (= (++!54 (++!54 lt!4661 lt!4665) lt!4659) (++!54 lt!4661 (++!54 lt!4665 lt!4659)))))

(declare-fun lt!4671 () Unit!281)

(assert (=> b!42288 (= lt!4671 lt!4676)))

(declare-fun lt!4673 () List!631)

(assert (=> b!42288 (= lt!4673 (++!53 (list!159 (BalanceConc!231 Empty!115)) (list!159 (charsOf!3 (_1!515 (v!12394 lt!4655))))))))

(declare-fun lt!4687 () List!631)

(assert (=> b!42288 (= lt!4687 (list!159 (_2!515 (v!12394 lt!4655))))))

(declare-fun lt!4662 () List!634)

(assert (=> b!42288 (= lt!4662 (list!160 (append!6 (BalanceConc!233 Empty!116) (_1!515 (v!12394 lt!4655)))))))

(declare-fun lt!4681 () Unit!281)

(declare-fun lemmaLexThenLexPrefix!2 (LexerInterface!51 List!635 List!631 List!631 List!634 List!634 List!631) Unit!281)

(assert (=> b!42288 (= lt!4681 (lemmaLexThenLexPrefix!2 Lexer!49 lt!4555 lt!4673 lt!4687 lt!4662 (list!160 (_1!511 lt!4682)) (list!159 (_2!511 lt!4682))))))

(assert (=> b!42288 (= (lexList!9 Lexer!49 lt!4555 lt!4673) (tuple2!739 lt!4662 Nil!629))))

(declare-fun lt!4684 () Unit!281)

(assert (=> b!42288 (= lt!4684 lt!4681)))

(declare-fun ++!55 (BalanceConc!230 BalanceConc!230) BalanceConc!230)

(assert (=> b!42288 (= lt!4680 (++!55 (BalanceConc!231 Empty!115) (charsOf!3 (_1!515 (v!12394 lt!4655)))))))

(declare-fun lt!4678 () Option!53)

(assert (=> b!42288 (= lt!4678 (maxPrefixZipperSequence!5 Lexer!49 lt!4555 lt!4680))))

(declare-fun c!15899 () Bool)

(assert (=> b!42288 (= c!15899 ((_ is Some!52) lt!4678))))

(assert (=> b!42288 (= (lexRec!7 Lexer!49 lt!4555 (++!55 (BalanceConc!231 Empty!115) (charsOf!3 (_1!515 (v!12394 lt!4655))))) e!22627)))

(declare-fun lt!4675 () Unit!281)

(declare-fun Unit!286 () Unit!281)

(assert (=> b!42288 (= lt!4675 Unit!286)))

(assert (=> b!42288 (= lt!4664 (++!55 (BalanceConc!231 Empty!115) (charsOf!3 (_1!515 (v!12394 lt!4655)))))))

(declare-fun lt!4685 () List!631)

(assert (=> b!42288 (= lt!4685 (list!159 lt!4664))))

(declare-fun lt!4672 () List!631)

(assert (=> b!42288 (= lt!4672 (list!159 (_2!515 (v!12394 lt!4655))))))

(declare-fun lt!4666 () Unit!281)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!2 (List!631 List!631) Unit!281)

(assert (=> b!42288 (= lt!4666 (lemmaConcatTwoListThenFSndIsSuffix!2 lt!4685 lt!4672))))

(declare-fun isSuffix!2 (List!631 List!631) Bool)

(assert (=> b!42288 (isSuffix!2 lt!4672 (++!53 lt!4685 lt!4672))))

(declare-fun lt!4656 () Unit!281)

(assert (=> b!42288 (= lt!4656 lt!4666)))

(declare-fun d!4439 () Bool)

(assert (=> d!4439 e!22625))

(declare-fun res!29856 () Bool)

(assert (=> d!4439 (=> (not res!29856) (not e!22625))))

(assert (=> d!4439 (= res!29856 (= (list!160 (_1!511 lt!4679)) (list!160 (_1!511 (lexRec!7 Lexer!49 lt!4555 input!525)))))))

(assert (=> d!4439 (= lt!4679 e!22624)))

(declare-fun c!15898 () Bool)

(assert (=> d!4439 (= c!15898 ((_ is Some!52) lt!4655))))

(declare-fun maxPrefixZipperSequenceV2!2 (LexerInterface!51 List!635 BalanceConc!230 BalanceConc!230) Option!53)

(assert (=> d!4439 (= lt!4655 (maxPrefixZipperSequenceV2!2 Lexer!49 lt!4555 input!525 input!525))))

(declare-fun lt!4669 () Unit!281)

(declare-fun lt!4658 () Unit!281)

(assert (=> d!4439 (= lt!4669 lt!4658)))

(declare-fun lt!4663 () List!631)

(declare-fun lt!4654 () List!631)

(assert (=> d!4439 (isSuffix!2 lt!4663 (++!53 lt!4654 lt!4663))))

(assert (=> d!4439 (= lt!4658 (lemmaConcatTwoListThenFSndIsSuffix!2 lt!4654 lt!4663))))

(assert (=> d!4439 (= lt!4663 (list!159 input!525))))

(assert (=> d!4439 (= lt!4654 (list!159 (BalanceConc!231 Empty!115)))))

(assert (=> d!4439 (= (lexTailRecV2!6 Lexer!49 lt!4555 input!525 (BalanceConc!231 Empty!115) input!525 (BalanceConc!233 Empty!116)) lt!4679)))

(declare-fun b!42289 () Bool)

(declare-fun lt!4686 () tuple2!736)

(assert (=> b!42289 (= lt!4686 (lexRec!7 Lexer!49 lt!4555 (_2!515 (v!12394 lt!4678))))))

(assert (=> b!42289 (= e!22627 (tuple2!737 (prepend!11 (_1!511 lt!4686) (_1!515 (v!12394 lt!4678))) (_2!511 lt!4686)))))

(assert (= (and d!4439 c!15898) b!42288))

(assert (= (and d!4439 (not c!15898)) b!42285))

(assert (= (and b!42288 c!15897) b!42284))

(assert (= (and b!42288 (not c!15897)) b!42283))

(assert (= (and b!42288 c!15899) b!42289))

(assert (= (and b!42288 (not c!15899)) b!42287))

(assert (= (and d!4439 res!29856) b!42286))

(declare-fun m!15716 () Bool)

(assert (=> b!42286 m!15716))

(declare-fun m!15718 () Bool)

(assert (=> b!42286 m!15718))

(declare-fun m!15720 () Bool)

(assert (=> b!42286 m!15720))

(declare-fun m!15722 () Bool)

(assert (=> b!42288 m!15722))

(declare-fun m!15724 () Bool)

(assert (=> b!42288 m!15724))

(declare-fun m!15726 () Bool)

(assert (=> b!42288 m!15726))

(declare-fun m!15728 () Bool)

(assert (=> b!42288 m!15728))

(declare-fun m!15730 () Bool)

(assert (=> b!42288 m!15730))

(declare-fun m!15732 () Bool)

(assert (=> b!42288 m!15732))

(assert (=> b!42288 m!15724))

(declare-fun m!15734 () Bool)

(assert (=> b!42288 m!15734))

(declare-fun m!15736 () Bool)

(assert (=> b!42288 m!15736))

(declare-fun m!15738 () Bool)

(assert (=> b!42288 m!15738))

(declare-fun m!15740 () Bool)

(assert (=> b!42288 m!15740))

(declare-fun m!15742 () Bool)

(assert (=> b!42288 m!15742))

(assert (=> b!42288 m!15722))

(declare-fun m!15744 () Bool)

(assert (=> b!42288 m!15744))

(assert (=> b!42288 m!15724))

(declare-fun m!15746 () Bool)

(assert (=> b!42288 m!15746))

(declare-fun m!15748 () Bool)

(assert (=> b!42288 m!15748))

(declare-fun m!15750 () Bool)

(assert (=> b!42288 m!15750))

(declare-fun m!15752 () Bool)

(assert (=> b!42288 m!15752))

(declare-fun m!15754 () Bool)

(assert (=> b!42288 m!15754))

(declare-fun m!15756 () Bool)

(assert (=> b!42288 m!15756))

(declare-fun m!15758 () Bool)

(assert (=> b!42288 m!15758))

(declare-fun m!15760 () Bool)

(assert (=> b!42288 m!15760))

(assert (=> b!42288 m!15728))

(assert (=> b!42288 m!15742))

(assert (=> b!42288 m!15734))

(declare-fun m!15762 () Bool)

(assert (=> b!42288 m!15762))

(assert (=> b!42288 m!15746))

(declare-fun m!15764 () Bool)

(assert (=> b!42288 m!15764))

(assert (=> b!42288 m!15736))

(declare-fun m!15766 () Bool)

(assert (=> b!42288 m!15766))

(declare-fun m!15768 () Bool)

(assert (=> b!42288 m!15768))

(assert (=> b!42288 m!15746))

(declare-fun m!15770 () Bool)

(assert (=> b!42288 m!15770))

(declare-fun m!15772 () Bool)

(assert (=> b!42288 m!15772))

(assert (=> b!42288 m!15718))

(assert (=> b!42288 m!15766))

(assert (=> b!42288 m!15726))

(declare-fun m!15774 () Bool)

(assert (=> b!42288 m!15774))

(assert (=> b!42288 m!15754))

(declare-fun m!15776 () Bool)

(assert (=> b!42288 m!15776))

(declare-fun m!15778 () Bool)

(assert (=> b!42288 m!15778))

(assert (=> b!42288 m!15752))

(declare-fun m!15780 () Bool)

(assert (=> b!42288 m!15780))

(assert (=> b!42288 m!15772))

(declare-fun m!15782 () Bool)

(assert (=> b!42288 m!15782))

(declare-fun m!15784 () Bool)

(assert (=> b!42288 m!15784))

(declare-fun m!15786 () Bool)

(assert (=> b!42289 m!15786))

(declare-fun m!15788 () Bool)

(assert (=> b!42289 m!15788))

(assert (=> d!4439 m!15458))

(declare-fun m!15790 () Bool)

(assert (=> d!4439 m!15790))

(declare-fun m!15792 () Bool)

(assert (=> d!4439 m!15792))

(declare-fun m!15794 () Bool)

(assert (=> d!4439 m!15794))

(declare-fun m!15796 () Bool)

(assert (=> d!4439 m!15796))

(declare-fun m!15798 () Bool)

(assert (=> d!4439 m!15798))

(assert (=> d!4439 m!15742))

(assert (=> d!4439 m!15718))

(assert (=> d!4439 m!15796))

(declare-fun m!15800 () Bool)

(assert (=> d!4439 m!15800))

(declare-fun m!15802 () Bool)

(assert (=> b!42284 m!15802))

(declare-fun m!15804 () Bool)

(assert (=> b!42284 m!15804))

(assert (=> d!4357 d!4439))

(declare-fun d!4441 () Bool)

(declare-fun res!29861 () Bool)

(declare-fun e!22630 () Bool)

(assert (=> d!4441 (=> (not res!29861) (not e!22630))))

(declare-fun list!163 (IArray!231) List!631)

(assert (=> d!4441 (= res!29861 (<= (size!634 (list!163 (xs!2694 (c!15876 input!525)))) 512))))

(assert (=> d!4441 (= (inv!920 (c!15876 input!525)) e!22630)))

(declare-fun b!42294 () Bool)

(declare-fun res!29862 () Bool)

(assert (=> b!42294 (=> (not res!29862) (not e!22630))))

(assert (=> b!42294 (= res!29862 (= (csize!461 (c!15876 input!525)) (size!634 (list!163 (xs!2694 (c!15876 input!525))))))))

(declare-fun b!42295 () Bool)

(assert (=> b!42295 (= e!22630 (and (> (csize!461 (c!15876 input!525)) 0) (<= (csize!461 (c!15876 input!525)) 512)))))

(assert (= (and d!4441 res!29861) b!42294))

(assert (= (and b!42294 res!29862) b!42295))

(declare-fun m!15806 () Bool)

(assert (=> d!4441 m!15806))

(assert (=> d!4441 m!15806))

(declare-fun m!15808 () Bool)

(assert (=> d!4441 m!15808))

(assert (=> b!42294 m!15806))

(assert (=> b!42294 m!15806))

(assert (=> b!42294 m!15808))

(assert (=> b!42184 d!4441))

(declare-fun bs!5142 () Bool)

(declare-fun d!4443 () Bool)

(assert (= bs!5142 (and d!4443 d!4427)))

(declare-fun lambda!707 () Int)

(assert (=> bs!5142 (= lambda!707 lambda!700)))

(declare-fun bs!5143 () Bool)

(assert (= bs!5143 (and d!4443 d!4429)))

(assert (=> bs!5143 (= lambda!707 lambda!701)))

(declare-fun bs!5144 () Bool)

(assert (= bs!5144 (and d!4443 d!4435)))

(assert (=> bs!5144 (= lambda!707 lambda!706)))

(declare-fun bs!5145 () Bool)

(assert (= bs!5145 (and d!4443 d!4421)))

(assert (=> bs!5145 (= lambda!707 lambda!699)))

(declare-fun bs!5146 () Bool)

(assert (= bs!5146 (and d!4443 d!4431)))

(assert (=> bs!5146 (= lambda!707 lambda!702)))

(assert (=> d!4443 (= (inv!922 (_2!507 (_1!508 (h!6026 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))))) (forall!65 (exprs!579 (_2!507 (_1!508 (h!6026 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))))) lambda!707))))

(declare-fun bs!5147 () Bool)

(assert (= bs!5147 d!4443))

(declare-fun m!15810 () Bool)

(assert (=> bs!5147 m!15810))

(assert (=> b!42218 d!4443))

(declare-fun b!42301 () Bool)

(assert (=> b!42301 true))

(declare-fun d!4445 () Bool)

(declare-fun res!29867 () Bool)

(declare-fun e!22633 () Bool)

(assert (=> d!4445 (=> (not res!29867) (not e!22633))))

(declare-fun valid!194 (MutableMap!202) Bool)

(assert (=> d!4445 (= res!29867 (valid!194 (cache!687 cacheFurthestNullable!45)))))

(assert (=> d!4445 (= (validCacheMapFurthestNullable!8 (cache!687 cacheFurthestNullable!45) (totalInput!1520 cacheFurthestNullable!45)) e!22633)))

(declare-fun b!42300 () Bool)

(declare-fun res!29868 () Bool)

(assert (=> b!42300 (=> (not res!29868) (not e!22633))))

(declare-fun invariantList!21 (List!630) Bool)

(declare-datatypes ((ListMap!43 0))(
  ( (ListMap!44 (toList!172 List!630)) )
))
(declare-fun map!240 (MutableMap!202) ListMap!43)

(assert (=> b!42300 (= res!29868 (invariantList!21 (toList!172 (map!240 (cache!687 cacheFurthestNullable!45)))))))

(declare-fun lambda!710 () Int)

(declare-fun forall!67 (List!630 Int) Bool)

(assert (=> b!42301 (= e!22633 (forall!67 (toList!172 (map!240 (cache!687 cacheFurthestNullable!45))) lambda!710))))

(assert (= (and d!4445 res!29867) b!42300))

(assert (= (and b!42300 res!29868) b!42301))

(declare-fun m!15813 () Bool)

(assert (=> d!4445 m!15813))

(declare-fun m!15815 () Bool)

(assert (=> b!42300 m!15815))

(declare-fun m!15817 () Bool)

(assert (=> b!42300 m!15817))

(assert (=> b!42301 m!15815))

(declare-fun m!15819 () Bool)

(assert (=> b!42301 m!15819))

(assert (=> d!4377 d!4445))

(declare-fun d!4447 () Bool)

(assert (=> d!4447 (= (list!159 (_2!511 (_1!512 lt!4565))) (list!162 (c!15876 (_2!511 (_1!512 lt!4565)))))))

(declare-fun bs!5148 () Bool)

(assert (= bs!5148 d!4447))

(declare-fun m!15821 () Bool)

(assert (=> bs!5148 m!15821))

(assert (=> b!42168 d!4447))

(declare-fun d!4449 () Bool)

(assert (=> d!4449 (= (list!159 (_2!511 (lex!25 Lexer!49 lt!4555 input!525))) (list!162 (c!15876 (_2!511 (lex!25 Lexer!49 lt!4555 input!525)))))))

(declare-fun bs!5149 () Bool)

(assert (= bs!5149 d!4449))

(declare-fun m!15823 () Bool)

(assert (=> bs!5149 m!15823))

(assert (=> b!42168 d!4449))

(assert (=> b!42168 d!4357))

(declare-fun bs!5150 () Bool)

(declare-fun d!4451 () Bool)

(assert (= bs!5150 (and d!4451 d!4443)))

(declare-fun lambda!711 () Int)

(assert (=> bs!5150 (= lambda!711 lambda!707)))

(declare-fun bs!5151 () Bool)

(assert (= bs!5151 (and d!4451 d!4427)))

(assert (=> bs!5151 (= lambda!711 lambda!700)))

(declare-fun bs!5152 () Bool)

(assert (= bs!5152 (and d!4451 d!4429)))

(assert (=> bs!5152 (= lambda!711 lambda!701)))

(declare-fun bs!5153 () Bool)

(assert (= bs!5153 (and d!4451 d!4435)))

(assert (=> bs!5153 (= lambda!711 lambda!706)))

(declare-fun bs!5154 () Bool)

(assert (= bs!5154 (and d!4451 d!4421)))

(assert (=> bs!5154 (= lambda!711 lambda!699)))

(declare-fun bs!5155 () Bool)

(assert (= bs!5155 (and d!4451 d!4431)))

(assert (=> bs!5155 (= lambda!711 lambda!702)))

(assert (=> d!4451 (= (inv!922 (_2!507 (_1!508 (h!6026 mapDefault!752)))) (forall!65 (exprs!579 (_2!507 (_1!508 (h!6026 mapDefault!752)))) lambda!711))))

(declare-fun bs!5156 () Bool)

(assert (= bs!5156 d!4451))

(declare-fun m!15825 () Bool)

(assert (=> bs!5156 m!15825))

(assert (=> b!42248 d!4451))

(declare-fun bs!5157 () Bool)

(declare-fun d!4453 () Bool)

(assert (= bs!5157 (and d!4453 d!4443)))

(declare-fun lambda!712 () Int)

(assert (=> bs!5157 (= lambda!712 lambda!707)))

(declare-fun bs!5158 () Bool)

(assert (= bs!5158 (and d!4453 d!4427)))

(assert (=> bs!5158 (= lambda!712 lambda!700)))

(declare-fun bs!5159 () Bool)

(assert (= bs!5159 (and d!4453 d!4429)))

(assert (=> bs!5159 (= lambda!712 lambda!701)))

(declare-fun bs!5160 () Bool)

(assert (= bs!5160 (and d!4453 d!4435)))

(assert (=> bs!5160 (= lambda!712 lambda!706)))

(declare-fun bs!5161 () Bool)

(assert (= bs!5161 (and d!4453 d!4451)))

(assert (=> bs!5161 (= lambda!712 lambda!711)))

(declare-fun bs!5162 () Bool)

(assert (= bs!5162 (and d!4453 d!4421)))

(assert (=> bs!5162 (= lambda!712 lambda!699)))

(declare-fun bs!5163 () Bool)

(assert (= bs!5163 (and d!4453 d!4431)))

(assert (=> bs!5163 (= lambda!712 lambda!702)))

(assert (=> d!4453 (= (inv!922 setElem!798) (forall!65 (exprs!579 setElem!798) lambda!712))))

(declare-fun bs!5164 () Bool)

(assert (= bs!5164 d!4453))

(declare-fun m!15827 () Bool)

(assert (=> bs!5164 m!15827))

(assert (=> setNonEmpty!798 d!4453))

(declare-fun b!42312 () Bool)

(declare-fun e!22638 () List!634)

(assert (=> b!42312 (= e!22638 Nil!632)))

(declare-fun b!42315 () Bool)

(declare-fun e!22639 () List!634)

(assert (=> b!42315 (= e!22639 (++!54 (list!161 (left!528 (c!15877 (_1!511 (_1!512 lt!4551))))) (list!161 (right!858 (c!15877 (_1!511 (_1!512 lt!4551)))))))))

(declare-fun b!42313 () Bool)

(assert (=> b!42313 (= e!22638 e!22639)))

(declare-fun c!15905 () Bool)

(assert (=> b!42313 (= c!15905 ((_ is Leaf!305) (c!15877 (_1!511 (_1!512 lt!4551)))))))

(declare-fun b!42314 () Bool)

(declare-fun list!164 (IArray!233) List!634)

(assert (=> b!42314 (= e!22639 (list!164 (xs!2695 (c!15877 (_1!511 (_1!512 lt!4551))))))))

(declare-fun d!4455 () Bool)

(declare-fun c!15904 () Bool)

(assert (=> d!4455 (= c!15904 ((_ is Empty!116) (c!15877 (_1!511 (_1!512 lt!4551)))))))

(assert (=> d!4455 (= (list!161 (c!15877 (_1!511 (_1!512 lt!4551)))) e!22638)))

(assert (= (and d!4455 c!15904) b!42312))

(assert (= (and d!4455 (not c!15904)) b!42313))

(assert (= (and b!42313 c!15905) b!42314))

(assert (= (and b!42313 (not c!15905)) b!42315))

(declare-fun m!15829 () Bool)

(assert (=> b!42315 m!15829))

(declare-fun m!15831 () Bool)

(assert (=> b!42315 m!15831))

(assert (=> b!42315 m!15829))

(assert (=> b!42315 m!15831))

(declare-fun m!15833 () Bool)

(assert (=> b!42315 m!15833))

(declare-fun m!15835 () Bool)

(assert (=> b!42314 m!15835))

(assert (=> d!4361 d!4455))

(declare-fun d!4457 () Bool)

(assert (=> d!4457 (= (valid!191 (_3!143 lt!4551)) (validCacheMapDown!16 (cache!688 (_3!143 lt!4551))))))

(declare-fun bs!5165 () Bool)

(assert (= bs!5165 d!4457))

(declare-fun m!15837 () Bool)

(assert (=> bs!5165 m!15837))

(assert (=> d!4367 d!4457))

(declare-fun d!4459 () Bool)

(declare-fun res!29875 () Bool)

(declare-fun e!22642 () Bool)

(assert (=> d!4459 (=> (not res!29875) (not e!22642))))

(assert (=> d!4459 (= res!29875 (= (csize!460 (c!15876 input!525)) (+ (size!635 (left!527 (c!15876 input!525))) (size!635 (right!857 (c!15876 input!525))))))))

(assert (=> d!4459 (= (inv!919 (c!15876 input!525)) e!22642)))

(declare-fun b!42322 () Bool)

(declare-fun res!29876 () Bool)

(assert (=> b!42322 (=> (not res!29876) (not e!22642))))

(assert (=> b!42322 (= res!29876 (and (not (= (left!527 (c!15876 input!525)) Empty!115)) (not (= (right!857 (c!15876 input!525)) Empty!115))))))

(declare-fun b!42323 () Bool)

(declare-fun res!29877 () Bool)

(assert (=> b!42323 (=> (not res!29877) (not e!22642))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!9 (Conc!115) Int)

(assert (=> b!42323 (= res!29877 (= (cheight!326 (c!15876 input!525)) (+ (max!0 (height!9 (left!527 (c!15876 input!525))) (height!9 (right!857 (c!15876 input!525)))) 1)))))

(declare-fun b!42324 () Bool)

(assert (=> b!42324 (= e!22642 (<= 0 (cheight!326 (c!15876 input!525))))))

(assert (= (and d!4459 res!29875) b!42322))

(assert (= (and b!42322 res!29876) b!42323))

(assert (= (and b!42323 res!29877) b!42324))

(declare-fun m!15839 () Bool)

(assert (=> d!4459 m!15839))

(declare-fun m!15841 () Bool)

(assert (=> d!4459 m!15841))

(declare-fun m!15843 () Bool)

(assert (=> b!42323 m!15843))

(declare-fun m!15845 () Bool)

(assert (=> b!42323 m!15845))

(assert (=> b!42323 m!15843))

(assert (=> b!42323 m!15845))

(declare-fun m!15847 () Bool)

(assert (=> b!42323 m!15847))

(assert (=> b!42182 d!4459))

(assert (=> b!42111 d!4403))

(declare-fun bs!5166 () Bool)

(declare-fun d!4461 () Bool)

(assert (= bs!5166 (and d!4461 d!4443)))

(declare-fun lambda!713 () Int)

(assert (=> bs!5166 (= lambda!713 lambda!707)))

(declare-fun bs!5167 () Bool)

(assert (= bs!5167 (and d!4461 d!4427)))

(assert (=> bs!5167 (= lambda!713 lambda!700)))

(declare-fun bs!5168 () Bool)

(assert (= bs!5168 (and d!4461 d!4429)))

(assert (=> bs!5168 (= lambda!713 lambda!701)))

(declare-fun bs!5169 () Bool)

(assert (= bs!5169 (and d!4461 d!4435)))

(assert (=> bs!5169 (= lambda!713 lambda!706)))

(declare-fun bs!5170 () Bool)

(assert (= bs!5170 (and d!4461 d!4453)))

(assert (=> bs!5170 (= lambda!713 lambda!712)))

(declare-fun bs!5171 () Bool)

(assert (= bs!5171 (and d!4461 d!4451)))

(assert (=> bs!5171 (= lambda!713 lambda!711)))

(declare-fun bs!5172 () Bool)

(assert (= bs!5172 (and d!4461 d!4421)))

(assert (=> bs!5172 (= lambda!713 lambda!699)))

(declare-fun bs!5173 () Bool)

(assert (= bs!5173 (and d!4461 d!4431)))

(assert (=> bs!5173 (= lambda!713 lambda!702)))

(assert (=> d!4461 (= (inv!922 setElem!790) (forall!65 (exprs!579 setElem!790) lambda!713))))

(declare-fun bs!5174 () Bool)

(assert (= bs!5174 d!4461))

(declare-fun m!15849 () Bool)

(assert (=> bs!5174 m!15849))

(assert (=> setNonEmpty!790 d!4461))

(declare-fun b!42337 () Bool)

(declare-fun e!22647 () Bool)

(declare-fun e!22648 () Bool)

(assert (=> b!42337 (= e!22647 e!22648)))

(declare-fun res!29892 () Bool)

(assert (=> b!42337 (=> (not res!29892) (not e!22648))))

(assert (=> b!42337 (= res!29892 (<= (- 1) (- (height!9 (left!527 (c!15876 input!525))) (height!9 (right!857 (c!15876 input!525))))))))

(declare-fun d!4463 () Bool)

(declare-fun res!29894 () Bool)

(assert (=> d!4463 (=> res!29894 e!22647)))

(assert (=> d!4463 (= res!29894 (not ((_ is Node!115) (c!15876 input!525))))))

(assert (=> d!4463 (= (isBalanced!19 (c!15876 input!525)) e!22647)))

(declare-fun b!42338 () Bool)

(declare-fun res!29890 () Bool)

(assert (=> b!42338 (=> (not res!29890) (not e!22648))))

(assert (=> b!42338 (= res!29890 (isBalanced!19 (right!857 (c!15876 input!525))))))

(declare-fun b!42339 () Bool)

(declare-fun res!29891 () Bool)

(assert (=> b!42339 (=> (not res!29891) (not e!22648))))

(assert (=> b!42339 (= res!29891 (isBalanced!19 (left!527 (c!15876 input!525))))))

(declare-fun b!42340 () Bool)

(declare-fun res!29893 () Bool)

(assert (=> b!42340 (=> (not res!29893) (not e!22648))))

(assert (=> b!42340 (= res!29893 (<= (- (height!9 (left!527 (c!15876 input!525))) (height!9 (right!857 (c!15876 input!525)))) 1))))

(declare-fun b!42341 () Bool)

(declare-fun res!29895 () Bool)

(assert (=> b!42341 (=> (not res!29895) (not e!22648))))

(declare-fun isEmpty!128 (Conc!115) Bool)

(assert (=> b!42341 (= res!29895 (not (isEmpty!128 (left!527 (c!15876 input!525)))))))

(declare-fun b!42342 () Bool)

(assert (=> b!42342 (= e!22648 (not (isEmpty!128 (right!857 (c!15876 input!525)))))))

(assert (= (and d!4463 (not res!29894)) b!42337))

(assert (= (and b!42337 res!29892) b!42340))

(assert (= (and b!42340 res!29893) b!42339))

(assert (= (and b!42339 res!29891) b!42338))

(assert (= (and b!42338 res!29890) b!42341))

(assert (= (and b!42341 res!29895) b!42342))

(declare-fun m!15851 () Bool)

(assert (=> b!42338 m!15851))

(declare-fun m!15853 () Bool)

(assert (=> b!42341 m!15853))

(assert (=> b!42340 m!15843))

(assert (=> b!42340 m!15845))

(declare-fun m!15855 () Bool)

(assert (=> b!42339 m!15855))

(declare-fun m!15857 () Bool)

(assert (=> b!42342 m!15857))

(assert (=> b!42337 m!15843))

(assert (=> b!42337 m!15845))

(assert (=> d!4411 d!4463))

(declare-fun d!4465 () Bool)

(declare-fun res!29902 () Bool)

(declare-fun e!22653 () Bool)

(assert (=> d!4465 (=> (not res!29902) (not e!22653))))

(declare-fun valid!195 (MutableMap!203) Bool)

(assert (=> d!4465 (= res!29902 (valid!195 (cache!688 cacheDown!333)))))

(assert (=> d!4465 (= (validCacheMapDown!16 (cache!688 cacheDown!333)) e!22653)))

(declare-fun b!42349 () Bool)

(declare-fun res!29903 () Bool)

(assert (=> b!42349 (=> (not res!29903) (not e!22653))))

(declare-fun invariantList!22 (List!632) Bool)

(declare-datatypes ((ListMap!45 0))(
  ( (ListMap!46 (toList!173 List!632)) )
))
(declare-fun map!241 (MutableMap!203) ListMap!45)

(assert (=> b!42349 (= res!29903 (invariantList!22 (toList!173 (map!241 (cache!688 cacheDown!333)))))))

(declare-fun b!42350 () Bool)

(declare-fun lambda!716 () Int)

(declare-fun forall!68 (List!632 Int) Bool)

(assert (=> b!42350 (= e!22653 (forall!68 (toList!173 (map!241 (cache!688 cacheDown!333))) lambda!716))))

(assert (= (and d!4465 res!29902) b!42349))

(assert (= (and b!42349 res!29903) b!42350))

(declare-fun m!15860 () Bool)

(assert (=> d!4465 m!15860))

(declare-fun m!15862 () Bool)

(assert (=> b!42349 m!15862))

(declare-fun m!15864 () Bool)

(assert (=> b!42349 m!15864))

(assert (=> b!42350 m!15862))

(declare-fun m!15866 () Bool)

(assert (=> b!42350 m!15866))

(assert (=> d!4389 d!4465))

(declare-fun b!42359 () Bool)

(declare-fun e!22658 () List!631)

(assert (=> b!42359 (= e!22658 Nil!629)))

(declare-fun b!42361 () Bool)

(declare-fun e!22659 () List!631)

(assert (=> b!42361 (= e!22659 (list!163 (xs!2694 (c!15876 (seqFromList!22 lt!4553)))))))

(declare-fun b!42360 () Bool)

(assert (=> b!42360 (= e!22658 e!22659)))

(declare-fun c!15911 () Bool)

(assert (=> b!42360 (= c!15911 ((_ is Leaf!304) (c!15876 (seqFromList!22 lt!4553))))))

(declare-fun d!4467 () Bool)

(declare-fun c!15910 () Bool)

(assert (=> d!4467 (= c!15910 ((_ is Empty!115) (c!15876 (seqFromList!22 lt!4553))))))

(assert (=> d!4467 (= (list!162 (c!15876 (seqFromList!22 lt!4553))) e!22658)))

(declare-fun b!42362 () Bool)

(assert (=> b!42362 (= e!22659 (++!53 (list!162 (left!527 (c!15876 (seqFromList!22 lt!4553)))) (list!162 (right!857 (c!15876 (seqFromList!22 lt!4553))))))))

(assert (= (and d!4467 c!15910) b!42359))

(assert (= (and d!4467 (not c!15910)) b!42360))

(assert (= (and b!42360 c!15911) b!42361))

(assert (= (and b!42360 (not c!15911)) b!42362))

(declare-fun m!15868 () Bool)

(assert (=> b!42361 m!15868))

(declare-fun m!15870 () Bool)

(assert (=> b!42362 m!15870))

(declare-fun m!15872 () Bool)

(assert (=> b!42362 m!15872))

(assert (=> b!42362 m!15870))

(assert (=> b!42362 m!15872))

(declare-fun m!15874 () Bool)

(assert (=> b!42362 m!15874))

(assert (=> d!4397 d!4467))

(declare-fun d!4469 () Bool)

(declare-fun res!29908 () Bool)

(declare-fun e!22664 () Bool)

(assert (=> d!4469 (=> res!29908 e!22664)))

(assert (=> d!4469 (= res!29908 ((_ is Nil!633) lt!4555))))

(assert (=> d!4469 (= (noDuplicateTag!12 Lexer!49 lt!4555 Nil!634) e!22664)))

(declare-fun b!42367 () Bool)

(declare-fun e!22665 () Bool)

(assert (=> b!42367 (= e!22664 e!22665)))

(declare-fun res!29909 () Bool)

(assert (=> b!42367 (=> (not res!29909) (not e!22665))))

(declare-fun contains!30 (List!636 String!1024) Bool)

(assert (=> b!42367 (= res!29909 (not (contains!30 Nil!634 (tag!334 (h!6029 lt!4555)))))))

(declare-fun b!42368 () Bool)

(assert (=> b!42368 (= e!22665 (noDuplicateTag!12 Lexer!49 (t!16179 lt!4555) (Cons!634 (tag!334 (h!6029 lt!4555)) Nil!634)))))

(assert (= (and d!4469 (not res!29908)) b!42367))

(assert (= (and b!42367 res!29909) b!42368))

(declare-fun m!15876 () Bool)

(assert (=> b!42367 m!15876))

(declare-fun m!15878 () Bool)

(assert (=> b!42368 m!15878))

(assert (=> b!42181 d!4469))

(assert (=> b!42190 d!4445))

(declare-fun d!4471 () Bool)

(declare-fun c!15912 () Bool)

(assert (=> d!4471 (= c!15912 ((_ is Node!115) (left!527 (c!15876 input!525))))))

(declare-fun e!22666 () Bool)

(assert (=> d!4471 (= (inv!914 (left!527 (c!15876 input!525))) e!22666)))

(declare-fun b!42369 () Bool)

(assert (=> b!42369 (= e!22666 (inv!919 (left!527 (c!15876 input!525))))))

(declare-fun b!42370 () Bool)

(declare-fun e!22667 () Bool)

(assert (=> b!42370 (= e!22666 e!22667)))

(declare-fun res!29910 () Bool)

(assert (=> b!42370 (= res!29910 (not ((_ is Leaf!304) (left!527 (c!15876 input!525)))))))

(assert (=> b!42370 (=> res!29910 e!22667)))

(declare-fun b!42371 () Bool)

(assert (=> b!42371 (= e!22667 (inv!920 (left!527 (c!15876 input!525))))))

(assert (= (and d!4471 c!15912) b!42369))

(assert (= (and d!4471 (not c!15912)) b!42370))

(assert (= (and b!42370 (not res!29910)) b!42371))

(declare-fun m!15880 () Bool)

(assert (=> b!42369 m!15880))

(declare-fun m!15882 () Bool)

(assert (=> b!42371 m!15882))

(assert (=> b!42249 d!4471))

(declare-fun d!4473 () Bool)

(declare-fun c!15913 () Bool)

(assert (=> d!4473 (= c!15913 ((_ is Node!115) (right!857 (c!15876 input!525))))))

(declare-fun e!22668 () Bool)

(assert (=> d!4473 (= (inv!914 (right!857 (c!15876 input!525))) e!22668)))

(declare-fun b!42372 () Bool)

(assert (=> b!42372 (= e!22668 (inv!919 (right!857 (c!15876 input!525))))))

(declare-fun b!42373 () Bool)

(declare-fun e!22669 () Bool)

(assert (=> b!42373 (= e!22668 e!22669)))

(declare-fun res!29911 () Bool)

(assert (=> b!42373 (= res!29911 (not ((_ is Leaf!304) (right!857 (c!15876 input!525)))))))

(assert (=> b!42373 (=> res!29911 e!22669)))

(declare-fun b!42374 () Bool)

(assert (=> b!42374 (= e!22669 (inv!920 (right!857 (c!15876 input!525))))))

(assert (= (and d!4473 c!15913) b!42372))

(assert (= (and d!4473 (not c!15913)) b!42373))

(assert (= (and b!42373 (not res!29911)) b!42374))

(declare-fun m!15884 () Bool)

(assert (=> b!42372 m!15884))

(declare-fun m!15886 () Bool)

(assert (=> b!42374 m!15886))

(assert (=> b!42249 d!4473))

(declare-fun d!4475 () Bool)

(assert (=> d!4475 (= (inv!921 (xs!2694 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) (<= (size!634 (innerList!173 (xs!2694 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) 2147483647))))

(declare-fun bs!5175 () Bool)

(assert (= bs!5175 d!4475))

(declare-fun m!15888 () Bool)

(assert (=> bs!5175 m!15888))

(assert (=> b!42201 d!4475))

(declare-fun b!42375 () Bool)

(declare-fun e!22670 () Bool)

(declare-fun e!22671 () Bool)

(assert (=> b!42375 (= e!22670 e!22671)))

(declare-fun res!29914 () Bool)

(assert (=> b!42375 (=> (not res!29914) (not e!22671))))

(assert (=> b!42375 (= res!29914 (<= (- 1) (- (height!9 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) (height!9 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))))

(declare-fun d!4477 () Bool)

(declare-fun res!29916 () Bool)

(assert (=> d!4477 (=> res!29916 e!22670)))

(assert (=> d!4477 (= res!29916 (not ((_ is Node!115) (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(assert (=> d!4477 (= (isBalanced!19 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) e!22670)))

(declare-fun b!42376 () Bool)

(declare-fun res!29912 () Bool)

(assert (=> b!42376 (=> (not res!29912) (not e!22671))))

(assert (=> b!42376 (= res!29912 (isBalanced!19 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(declare-fun b!42377 () Bool)

(declare-fun res!29913 () Bool)

(assert (=> b!42377 (=> (not res!29913) (not e!22671))))

(assert (=> b!42377 (= res!29913 (isBalanced!19 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(declare-fun b!42378 () Bool)

(declare-fun res!29915 () Bool)

(assert (=> b!42378 (=> (not res!29915) (not e!22671))))

(assert (=> b!42378 (= res!29915 (<= (- (height!9 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) (height!9 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) 1))))

(declare-fun b!42379 () Bool)

(declare-fun res!29917 () Bool)

(assert (=> b!42379 (=> (not res!29917) (not e!22671))))

(assert (=> b!42379 (= res!29917 (not (isEmpty!128 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))))

(declare-fun b!42380 () Bool)

(assert (=> b!42380 (= e!22671 (not (isEmpty!128 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))))

(assert (= (and d!4477 (not res!29916)) b!42375))

(assert (= (and b!42375 res!29914) b!42378))

(assert (= (and b!42378 res!29915) b!42377))

(assert (= (and b!42377 res!29913) b!42376))

(assert (= (and b!42376 res!29912) b!42379))

(assert (= (and b!42379 res!29917) b!42380))

(declare-fun m!15890 () Bool)

(assert (=> b!42376 m!15890))

(declare-fun m!15892 () Bool)

(assert (=> b!42379 m!15892))

(declare-fun m!15894 () Bool)

(assert (=> b!42378 m!15894))

(declare-fun m!15896 () Bool)

(assert (=> b!42378 m!15896))

(declare-fun m!15898 () Bool)

(assert (=> b!42377 m!15898))

(declare-fun m!15900 () Bool)

(assert (=> b!42380 m!15900))

(assert (=> b!42375 m!15894))

(assert (=> b!42375 m!15896))

(assert (=> d!4395 d!4477))

(declare-fun b!42381 () Bool)

(declare-fun e!22672 () List!631)

(assert (=> b!42381 (= e!22672 Nil!629)))

(declare-fun b!42383 () Bool)

(declare-fun e!22673 () List!631)

(assert (=> b!42383 (= e!22673 (list!163 (xs!2694 (c!15876 input!525))))))

(declare-fun b!42382 () Bool)

(assert (=> b!42382 (= e!22672 e!22673)))

(declare-fun c!15915 () Bool)

(assert (=> b!42382 (= c!15915 ((_ is Leaf!304) (c!15876 input!525)))))

(declare-fun d!4479 () Bool)

(declare-fun c!15914 () Bool)

(assert (=> d!4479 (= c!15914 ((_ is Empty!115) (c!15876 input!525)))))

(assert (=> d!4479 (= (list!162 (c!15876 input!525)) e!22672)))

(declare-fun b!42384 () Bool)

(assert (=> b!42384 (= e!22673 (++!53 (list!162 (left!527 (c!15876 input!525))) (list!162 (right!857 (c!15876 input!525)))))))

(assert (= (and d!4479 c!15914) b!42381))

(assert (= (and d!4479 (not c!15914)) b!42382))

(assert (= (and b!42382 c!15915) b!42383))

(assert (= (and b!42382 (not c!15915)) b!42384))

(assert (=> b!42383 m!15806))

(declare-fun m!15902 () Bool)

(assert (=> b!42384 m!15902))

(declare-fun m!15904 () Bool)

(assert (=> b!42384 m!15904))

(assert (=> b!42384 m!15902))

(assert (=> b!42384 m!15904))

(declare-fun m!15906 () Bool)

(assert (=> b!42384 m!15906))

(assert (=> d!4401 d!4479))

(declare-fun bs!5176 () Bool)

(declare-fun d!4481 () Bool)

(assert (= bs!5176 (and d!4481 d!4461)))

(declare-fun lambda!717 () Int)

(assert (=> bs!5176 (= lambda!717 lambda!713)))

(declare-fun bs!5177 () Bool)

(assert (= bs!5177 (and d!4481 d!4443)))

(assert (=> bs!5177 (= lambda!717 lambda!707)))

(declare-fun bs!5178 () Bool)

(assert (= bs!5178 (and d!4481 d!4427)))

(assert (=> bs!5178 (= lambda!717 lambda!700)))

(declare-fun bs!5179 () Bool)

(assert (= bs!5179 (and d!4481 d!4429)))

(assert (=> bs!5179 (= lambda!717 lambda!701)))

(declare-fun bs!5180 () Bool)

(assert (= bs!5180 (and d!4481 d!4435)))

(assert (=> bs!5180 (= lambda!717 lambda!706)))

(declare-fun bs!5181 () Bool)

(assert (= bs!5181 (and d!4481 d!4453)))

(assert (=> bs!5181 (= lambda!717 lambda!712)))

(declare-fun bs!5182 () Bool)

(assert (= bs!5182 (and d!4481 d!4451)))

(assert (=> bs!5182 (= lambda!717 lambda!711)))

(declare-fun bs!5183 () Bool)

(assert (= bs!5183 (and d!4481 d!4421)))

(assert (=> bs!5183 (= lambda!717 lambda!699)))

(declare-fun bs!5184 () Bool)

(assert (= bs!5184 (and d!4481 d!4431)))

(assert (=> bs!5184 (= lambda!717 lambda!702)))

(assert (=> d!4481 (= (inv!922 (_2!507 (_1!508 (h!6026 mapDefault!759)))) (forall!65 (exprs!579 (_2!507 (_1!508 (h!6026 mapDefault!759)))) lambda!717))))

(declare-fun bs!5185 () Bool)

(assert (= bs!5185 d!4481))

(declare-fun m!15908 () Bool)

(assert (=> bs!5185 m!15908))

(assert (=> b!42235 d!4481))

(declare-fun bs!5186 () Bool)

(declare-fun d!4483 () Bool)

(assert (= bs!5186 (and d!4483 d!4461)))

(declare-fun lambda!718 () Int)

(assert (=> bs!5186 (= lambda!718 lambda!713)))

(declare-fun bs!5187 () Bool)

(assert (= bs!5187 (and d!4483 d!4443)))

(assert (=> bs!5187 (= lambda!718 lambda!707)))

(declare-fun bs!5188 () Bool)

(assert (= bs!5188 (and d!4483 d!4427)))

(assert (=> bs!5188 (= lambda!718 lambda!700)))

(declare-fun bs!5189 () Bool)

(assert (= bs!5189 (and d!4483 d!4429)))

(assert (=> bs!5189 (= lambda!718 lambda!701)))

(declare-fun bs!5190 () Bool)

(assert (= bs!5190 (and d!4483 d!4453)))

(assert (=> bs!5190 (= lambda!718 lambda!712)))

(declare-fun bs!5191 () Bool)

(assert (= bs!5191 (and d!4483 d!4451)))

(assert (=> bs!5191 (= lambda!718 lambda!711)))

(declare-fun bs!5192 () Bool)

(assert (= bs!5192 (and d!4483 d!4421)))

(assert (=> bs!5192 (= lambda!718 lambda!699)))

(declare-fun bs!5193 () Bool)

(assert (= bs!5193 (and d!4483 d!4431)))

(assert (=> bs!5193 (= lambda!718 lambda!702)))

(declare-fun bs!5194 () Bool)

(assert (= bs!5194 (and d!4483 d!4435)))

(assert (=> bs!5194 (= lambda!718 lambda!706)))

(declare-fun bs!5195 () Bool)

(assert (= bs!5195 (and d!4483 d!4481)))

(assert (=> bs!5195 (= lambda!718 lambda!717)))

(assert (=> d!4483 (= (inv!922 setElem!773) (forall!65 (exprs!579 setElem!773) lambda!718))))

(declare-fun bs!5196 () Bool)

(assert (= bs!5196 d!4483))

(declare-fun m!15910 () Bool)

(assert (=> bs!5196 m!15910))

(assert (=> setNonEmpty!773 d!4483))

(declare-fun d!4485 () Bool)

(declare-fun res!29918 () Bool)

(declare-fun e!22674 () Bool)

(assert (=> d!4485 (=> (not res!29918) (not e!22674))))

(assert (=> d!4485 (= res!29918 (<= (size!634 (list!163 (xs!2694 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) 512))))

(assert (=> d!4485 (= (inv!920 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) e!22674)))

(declare-fun b!42385 () Bool)

(declare-fun res!29919 () Bool)

(assert (=> b!42385 (=> (not res!29919) (not e!22674))))

(assert (=> b!42385 (= res!29919 (= (csize!461 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) (size!634 (list!163 (xs!2694 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))))

(declare-fun b!42386 () Bool)

(assert (=> b!42386 (= e!22674 (and (> (csize!461 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) 0) (<= (csize!461 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) 512)))))

(assert (= (and d!4485 res!29918) b!42385))

(assert (= (and b!42385 res!29919) b!42386))

(declare-fun m!15912 () Bool)

(assert (=> d!4485 m!15912))

(assert (=> d!4485 m!15912))

(declare-fun m!15914 () Bool)

(assert (=> d!4485 m!15914))

(assert (=> b!42385 m!15912))

(assert (=> b!42385 m!15912))

(assert (=> b!42385 m!15914))

(assert (=> b!42178 d!4485))

(declare-fun bs!5197 () Bool)

(declare-fun d!4487 () Bool)

(assert (= bs!5197 (and d!4487 d!4461)))

(declare-fun lambda!719 () Int)

(assert (=> bs!5197 (= lambda!719 lambda!713)))

(declare-fun bs!5198 () Bool)

(assert (= bs!5198 (and d!4487 d!4427)))

(assert (=> bs!5198 (= lambda!719 lambda!700)))

(declare-fun bs!5199 () Bool)

(assert (= bs!5199 (and d!4487 d!4429)))

(assert (=> bs!5199 (= lambda!719 lambda!701)))

(declare-fun bs!5200 () Bool)

(assert (= bs!5200 (and d!4487 d!4453)))

(assert (=> bs!5200 (= lambda!719 lambda!712)))

(declare-fun bs!5201 () Bool)

(assert (= bs!5201 (and d!4487 d!4451)))

(assert (=> bs!5201 (= lambda!719 lambda!711)))

(declare-fun bs!5202 () Bool)

(assert (= bs!5202 (and d!4487 d!4421)))

(assert (=> bs!5202 (= lambda!719 lambda!699)))

(declare-fun bs!5203 () Bool)

(assert (= bs!5203 (and d!4487 d!4431)))

(assert (=> bs!5203 (= lambda!719 lambda!702)))

(declare-fun bs!5204 () Bool)

(assert (= bs!5204 (and d!4487 d!4483)))

(assert (=> bs!5204 (= lambda!719 lambda!718)))

(declare-fun bs!5205 () Bool)

(assert (= bs!5205 (and d!4487 d!4443)))

(assert (=> bs!5205 (= lambda!719 lambda!707)))

(declare-fun bs!5206 () Bool)

(assert (= bs!5206 (and d!4487 d!4435)))

(assert (=> bs!5206 (= lambda!719 lambda!706)))

(declare-fun bs!5207 () Bool)

(assert (= bs!5207 (and d!4487 d!4481)))

(assert (=> bs!5207 (= lambda!719 lambda!717)))

(assert (=> d!4487 (= (inv!922 setElem!799) (forall!65 (exprs!579 setElem!799) lambda!719))))

(declare-fun bs!5208 () Bool)

(assert (= bs!5208 d!4487))

(declare-fun m!15916 () Bool)

(assert (=> bs!5208 m!15916))

(assert (=> setNonEmpty!799 d!4487))

(declare-fun bs!5209 () Bool)

(declare-fun d!4489 () Bool)

(assert (= bs!5209 (and d!4489 d!4461)))

(declare-fun lambda!720 () Int)

(assert (=> bs!5209 (= lambda!720 lambda!713)))

(declare-fun bs!5210 () Bool)

(assert (= bs!5210 (and d!4489 d!4427)))

(assert (=> bs!5210 (= lambda!720 lambda!700)))

(declare-fun bs!5211 () Bool)

(assert (= bs!5211 (and d!4489 d!4429)))

(assert (=> bs!5211 (= lambda!720 lambda!701)))

(declare-fun bs!5212 () Bool)

(assert (= bs!5212 (and d!4489 d!4453)))

(assert (=> bs!5212 (= lambda!720 lambda!712)))

(declare-fun bs!5213 () Bool)

(assert (= bs!5213 (and d!4489 d!4487)))

(assert (=> bs!5213 (= lambda!720 lambda!719)))

(declare-fun bs!5214 () Bool)

(assert (= bs!5214 (and d!4489 d!4451)))

(assert (=> bs!5214 (= lambda!720 lambda!711)))

(declare-fun bs!5215 () Bool)

(assert (= bs!5215 (and d!4489 d!4421)))

(assert (=> bs!5215 (= lambda!720 lambda!699)))

(declare-fun bs!5216 () Bool)

(assert (= bs!5216 (and d!4489 d!4431)))

(assert (=> bs!5216 (= lambda!720 lambda!702)))

(declare-fun bs!5217 () Bool)

(assert (= bs!5217 (and d!4489 d!4483)))

(assert (=> bs!5217 (= lambda!720 lambda!718)))

(declare-fun bs!5218 () Bool)

(assert (= bs!5218 (and d!4489 d!4443)))

(assert (=> bs!5218 (= lambda!720 lambda!707)))

(declare-fun bs!5219 () Bool)

(assert (= bs!5219 (and d!4489 d!4435)))

(assert (=> bs!5219 (= lambda!720 lambda!706)))

(declare-fun bs!5220 () Bool)

(assert (= bs!5220 (and d!4489 d!4481)))

(assert (=> bs!5220 (= lambda!720 lambda!717)))

(assert (=> d!4489 (= (inv!922 setElem!770) (forall!65 (exprs!579 setElem!770) lambda!720))))

(declare-fun bs!5221 () Bool)

(assert (= bs!5221 d!4489))

(declare-fun m!15918 () Bool)

(assert (=> bs!5221 m!15918))

(assert (=> setNonEmpty!770 d!4489))

(declare-fun d!4491 () Bool)

(declare-fun lt!4690 () Bool)

(assert (=> d!4491 (= lt!4690 (isEmpty!127 (list!160 (_1!511 lt!4560))))))

(declare-fun isEmpty!129 (Conc!116) Bool)

(assert (=> d!4491 (= lt!4690 (isEmpty!129 (c!15877 (_1!511 lt!4560))))))

(assert (=> d!4491 (= (isEmpty!126 (_1!511 lt!4560)) lt!4690)))

(declare-fun bs!5222 () Bool)

(assert (= bs!5222 d!4491))

(assert (=> bs!5222 m!15514))

(assert (=> bs!5222 m!15514))

(declare-fun m!15920 () Bool)

(assert (=> bs!5222 m!15920))

(declare-fun m!15922 () Bool)

(assert (=> bs!5222 m!15922))

(assert (=> b!42153 d!4491))

(declare-fun bs!5223 () Bool)

(declare-fun d!4493 () Bool)

(assert (= bs!5223 (and d!4493 d!4461)))

(declare-fun lambda!721 () Int)

(assert (=> bs!5223 (= lambda!721 lambda!713)))

(declare-fun bs!5224 () Bool)

(assert (= bs!5224 (and d!4493 d!4427)))

(assert (=> bs!5224 (= lambda!721 lambda!700)))

(declare-fun bs!5225 () Bool)

(assert (= bs!5225 (and d!4493 d!4429)))

(assert (=> bs!5225 (= lambda!721 lambda!701)))

(declare-fun bs!5226 () Bool)

(assert (= bs!5226 (and d!4493 d!4453)))

(assert (=> bs!5226 (= lambda!721 lambda!712)))

(declare-fun bs!5227 () Bool)

(assert (= bs!5227 (and d!4493 d!4487)))

(assert (=> bs!5227 (= lambda!721 lambda!719)))

(declare-fun bs!5228 () Bool)

(assert (= bs!5228 (and d!4493 d!4451)))

(assert (=> bs!5228 (= lambda!721 lambda!711)))

(declare-fun bs!5229 () Bool)

(assert (= bs!5229 (and d!4493 d!4421)))

(assert (=> bs!5229 (= lambda!721 lambda!699)))

(declare-fun bs!5230 () Bool)

(assert (= bs!5230 (and d!4493 d!4431)))

(assert (=> bs!5230 (= lambda!721 lambda!702)))

(declare-fun bs!5231 () Bool)

(assert (= bs!5231 (and d!4493 d!4483)))

(assert (=> bs!5231 (= lambda!721 lambda!718)))

(declare-fun bs!5232 () Bool)

(assert (= bs!5232 (and d!4493 d!4443)))

(assert (=> bs!5232 (= lambda!721 lambda!707)))

(declare-fun bs!5233 () Bool)

(assert (= bs!5233 (and d!4493 d!4489)))

(assert (=> bs!5233 (= lambda!721 lambda!720)))

(declare-fun bs!5234 () Bool)

(assert (= bs!5234 (and d!4493 d!4435)))

(assert (=> bs!5234 (= lambda!721 lambda!706)))

(declare-fun bs!5235 () Bool)

(assert (= bs!5235 (and d!4493 d!4481)))

(assert (=> bs!5235 (= lambda!721 lambda!717)))

(assert (=> d!4493 (= (inv!922 setElem!786) (forall!65 (exprs!579 setElem!786) lambda!721))))

(declare-fun bs!5236 () Bool)

(assert (= bs!5236 d!4493))

(declare-fun m!15924 () Bool)

(assert (=> bs!5236 m!15924))

(assert (=> setNonEmpty!787 d!4493))

(declare-fun bs!5237 () Bool)

(declare-fun d!4495 () Bool)

(assert (= bs!5237 (and d!4495 d!4461)))

(declare-fun lambda!722 () Int)

(assert (=> bs!5237 (= lambda!722 lambda!713)))

(declare-fun bs!5238 () Bool)

(assert (= bs!5238 (and d!4495 d!4493)))

(assert (=> bs!5238 (= lambda!722 lambda!721)))

(declare-fun bs!5239 () Bool)

(assert (= bs!5239 (and d!4495 d!4427)))

(assert (=> bs!5239 (= lambda!722 lambda!700)))

(declare-fun bs!5240 () Bool)

(assert (= bs!5240 (and d!4495 d!4429)))

(assert (=> bs!5240 (= lambda!722 lambda!701)))

(declare-fun bs!5241 () Bool)

(assert (= bs!5241 (and d!4495 d!4453)))

(assert (=> bs!5241 (= lambda!722 lambda!712)))

(declare-fun bs!5242 () Bool)

(assert (= bs!5242 (and d!4495 d!4487)))

(assert (=> bs!5242 (= lambda!722 lambda!719)))

(declare-fun bs!5243 () Bool)

(assert (= bs!5243 (and d!4495 d!4451)))

(assert (=> bs!5243 (= lambda!722 lambda!711)))

(declare-fun bs!5244 () Bool)

(assert (= bs!5244 (and d!4495 d!4421)))

(assert (=> bs!5244 (= lambda!722 lambda!699)))

(declare-fun bs!5245 () Bool)

(assert (= bs!5245 (and d!4495 d!4431)))

(assert (=> bs!5245 (= lambda!722 lambda!702)))

(declare-fun bs!5246 () Bool)

(assert (= bs!5246 (and d!4495 d!4483)))

(assert (=> bs!5246 (= lambda!722 lambda!718)))

(declare-fun bs!5247 () Bool)

(assert (= bs!5247 (and d!4495 d!4443)))

(assert (=> bs!5247 (= lambda!722 lambda!707)))

(declare-fun bs!5248 () Bool)

(assert (= bs!5248 (and d!4495 d!4489)))

(assert (=> bs!5248 (= lambda!722 lambda!720)))

(declare-fun bs!5249 () Bool)

(assert (= bs!5249 (and d!4495 d!4435)))

(assert (=> bs!5249 (= lambda!722 lambda!706)))

(declare-fun bs!5250 () Bool)

(assert (= bs!5250 (and d!4495 d!4481)))

(assert (=> bs!5250 (= lambda!722 lambda!717)))

(assert (=> d!4495 (= (inv!922 (_1!509 (_1!510 (h!6027 mapValue!752)))) (forall!65 (exprs!579 (_1!509 (_1!510 (h!6027 mapValue!752)))) lambda!722))))

(declare-fun bs!5251 () Bool)

(assert (= bs!5251 d!4495))

(declare-fun m!15926 () Bool)

(assert (=> bs!5251 m!15926))

(assert (=> b!42227 d!4495))

(declare-fun bs!5252 () Bool)

(declare-fun d!4497 () Bool)

(assert (= bs!5252 (and d!4497 d!4461)))

(declare-fun lambda!723 () Int)

(assert (=> bs!5252 (= lambda!723 lambda!713)))

(declare-fun bs!5253 () Bool)

(assert (= bs!5253 (and d!4497 d!4495)))

(assert (=> bs!5253 (= lambda!723 lambda!722)))

(declare-fun bs!5254 () Bool)

(assert (= bs!5254 (and d!4497 d!4493)))

(assert (=> bs!5254 (= lambda!723 lambda!721)))

(declare-fun bs!5255 () Bool)

(assert (= bs!5255 (and d!4497 d!4427)))

(assert (=> bs!5255 (= lambda!723 lambda!700)))

(declare-fun bs!5256 () Bool)

(assert (= bs!5256 (and d!4497 d!4429)))

(assert (=> bs!5256 (= lambda!723 lambda!701)))

(declare-fun bs!5257 () Bool)

(assert (= bs!5257 (and d!4497 d!4453)))

(assert (=> bs!5257 (= lambda!723 lambda!712)))

(declare-fun bs!5258 () Bool)

(assert (= bs!5258 (and d!4497 d!4487)))

(assert (=> bs!5258 (= lambda!723 lambda!719)))

(declare-fun bs!5259 () Bool)

(assert (= bs!5259 (and d!4497 d!4451)))

(assert (=> bs!5259 (= lambda!723 lambda!711)))

(declare-fun bs!5260 () Bool)

(assert (= bs!5260 (and d!4497 d!4421)))

(assert (=> bs!5260 (= lambda!723 lambda!699)))

(declare-fun bs!5261 () Bool)

(assert (= bs!5261 (and d!4497 d!4431)))

(assert (=> bs!5261 (= lambda!723 lambda!702)))

(declare-fun bs!5262 () Bool)

(assert (= bs!5262 (and d!4497 d!4483)))

(assert (=> bs!5262 (= lambda!723 lambda!718)))

(declare-fun bs!5263 () Bool)

(assert (= bs!5263 (and d!4497 d!4443)))

(assert (=> bs!5263 (= lambda!723 lambda!707)))

(declare-fun bs!5264 () Bool)

(assert (= bs!5264 (and d!4497 d!4489)))

(assert (=> bs!5264 (= lambda!723 lambda!720)))

(declare-fun bs!5265 () Bool)

(assert (= bs!5265 (and d!4497 d!4435)))

(assert (=> bs!5265 (= lambda!723 lambda!706)))

(declare-fun bs!5266 () Bool)

(assert (= bs!5266 (and d!4497 d!4481)))

(assert (=> bs!5266 (= lambda!723 lambda!717)))

(assert (=> d!4497 (= (inv!922 (_2!507 (_1!508 (h!6026 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))))) (forall!65 (exprs!579 (_2!507 (_1!508 (h!6026 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333)))))))))) lambda!723))))

(declare-fun bs!5267 () Bool)

(assert (= bs!5267 d!4497))

(declare-fun m!15928 () Bool)

(assert (=> bs!5267 m!15928))

(assert (=> b!42217 d!4497))

(declare-fun d!4499 () Bool)

(declare-fun res!29920 () Bool)

(declare-fun e!22675 () Bool)

(assert (=> d!4499 (=> (not res!29920) (not e!22675))))

(assert (=> d!4499 (= res!29920 (= (csize!460 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) (+ (size!635 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) (size!635 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))))

(assert (=> d!4499 (= (inv!919 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) e!22675)))

(declare-fun b!42387 () Bool)

(declare-fun res!29921 () Bool)

(assert (=> b!42387 (=> (not res!29921) (not e!22675))))

(assert (=> b!42387 (= res!29921 (and (not (= (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) Empty!115)) (not (= (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) Empty!115))))))

(declare-fun b!42388 () Bool)

(declare-fun res!29922 () Bool)

(assert (=> b!42388 (=> (not res!29922) (not e!22675))))

(assert (=> b!42388 (= res!29922 (= (cheight!326 (c!15876 (totalInput!1520 cacheFurthestNullable!45))) (+ (max!0 (height!9 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) (height!9 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) 1)))))

(declare-fun b!42389 () Bool)

(assert (=> b!42389 (= e!22675 (<= 0 (cheight!326 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(assert (= (and d!4499 res!29920) b!42387))

(assert (= (and b!42387 res!29921) b!42388))

(assert (= (and b!42388 res!29922) b!42389))

(declare-fun m!15930 () Bool)

(assert (=> d!4499 m!15930))

(declare-fun m!15932 () Bool)

(assert (=> d!4499 m!15932))

(assert (=> b!42388 m!15894))

(assert (=> b!42388 m!15896))

(assert (=> b!42388 m!15894))

(assert (=> b!42388 m!15896))

(declare-fun m!15934 () Bool)

(assert (=> b!42388 m!15934))

(assert (=> b!42176 d!4499))

(declare-fun bs!5268 () Bool)

(declare-fun d!4501 () Bool)

(assert (= bs!5268 (and d!4501 d!4461)))

(declare-fun lambda!724 () Int)

(assert (=> bs!5268 (= lambda!724 lambda!713)))

(declare-fun bs!5269 () Bool)

(assert (= bs!5269 (and d!4501 d!4495)))

(assert (=> bs!5269 (= lambda!724 lambda!722)))

(declare-fun bs!5270 () Bool)

(assert (= bs!5270 (and d!4501 d!4493)))

(assert (=> bs!5270 (= lambda!724 lambda!721)))

(declare-fun bs!5271 () Bool)

(assert (= bs!5271 (and d!4501 d!4427)))

(assert (=> bs!5271 (= lambda!724 lambda!700)))

(declare-fun bs!5272 () Bool)

(assert (= bs!5272 (and d!4501 d!4429)))

(assert (=> bs!5272 (= lambda!724 lambda!701)))

(declare-fun bs!5273 () Bool)

(assert (= bs!5273 (and d!4501 d!4497)))

(assert (=> bs!5273 (= lambda!724 lambda!723)))

(declare-fun bs!5274 () Bool)

(assert (= bs!5274 (and d!4501 d!4453)))

(assert (=> bs!5274 (= lambda!724 lambda!712)))

(declare-fun bs!5275 () Bool)

(assert (= bs!5275 (and d!4501 d!4487)))

(assert (=> bs!5275 (= lambda!724 lambda!719)))

(declare-fun bs!5276 () Bool)

(assert (= bs!5276 (and d!4501 d!4451)))

(assert (=> bs!5276 (= lambda!724 lambda!711)))

(declare-fun bs!5277 () Bool)

(assert (= bs!5277 (and d!4501 d!4421)))

(assert (=> bs!5277 (= lambda!724 lambda!699)))

(declare-fun bs!5278 () Bool)

(assert (= bs!5278 (and d!4501 d!4431)))

(assert (=> bs!5278 (= lambda!724 lambda!702)))

(declare-fun bs!5279 () Bool)

(assert (= bs!5279 (and d!4501 d!4483)))

(assert (=> bs!5279 (= lambda!724 lambda!718)))

(declare-fun bs!5280 () Bool)

(assert (= bs!5280 (and d!4501 d!4443)))

(assert (=> bs!5280 (= lambda!724 lambda!707)))

(declare-fun bs!5281 () Bool)

(assert (= bs!5281 (and d!4501 d!4489)))

(assert (=> bs!5281 (= lambda!724 lambda!720)))

(declare-fun bs!5282 () Bool)

(assert (= bs!5282 (and d!4501 d!4435)))

(assert (=> bs!5282 (= lambda!724 lambda!706)))

(declare-fun bs!5283 () Bool)

(assert (= bs!5283 (and d!4501 d!4481)))

(assert (=> bs!5283 (= lambda!724 lambda!717)))

(assert (=> d!4501 (= (inv!922 setElem!795) (forall!65 (exprs!579 setElem!795) lambda!724))))

(declare-fun bs!5284 () Bool)

(assert (= bs!5284 d!4501))

(declare-fun m!15936 () Bool)

(assert (=> bs!5284 m!15936))

(assert (=> setNonEmpty!795 d!4501))

(declare-fun bs!5285 () Bool)

(declare-fun d!4503 () Bool)

(assert (= bs!5285 (and d!4503 d!4461)))

(declare-fun lambda!725 () Int)

(assert (=> bs!5285 (= lambda!725 lambda!713)))

(declare-fun bs!5286 () Bool)

(assert (= bs!5286 (and d!4503 d!4495)))

(assert (=> bs!5286 (= lambda!725 lambda!722)))

(declare-fun bs!5287 () Bool)

(assert (= bs!5287 (and d!4503 d!4493)))

(assert (=> bs!5287 (= lambda!725 lambda!721)))

(declare-fun bs!5288 () Bool)

(assert (= bs!5288 (and d!4503 d!4427)))

(assert (=> bs!5288 (= lambda!725 lambda!700)))

(declare-fun bs!5289 () Bool)

(assert (= bs!5289 (and d!4503 d!4429)))

(assert (=> bs!5289 (= lambda!725 lambda!701)))

(declare-fun bs!5290 () Bool)

(assert (= bs!5290 (and d!4503 d!4497)))

(assert (=> bs!5290 (= lambda!725 lambda!723)))

(declare-fun bs!5291 () Bool)

(assert (= bs!5291 (and d!4503 d!4487)))

(assert (=> bs!5291 (= lambda!725 lambda!719)))

(declare-fun bs!5292 () Bool)

(assert (= bs!5292 (and d!4503 d!4451)))

(assert (=> bs!5292 (= lambda!725 lambda!711)))

(declare-fun bs!5293 () Bool)

(assert (= bs!5293 (and d!4503 d!4421)))

(assert (=> bs!5293 (= lambda!725 lambda!699)))

(declare-fun bs!5294 () Bool)

(assert (= bs!5294 (and d!4503 d!4431)))

(assert (=> bs!5294 (= lambda!725 lambda!702)))

(declare-fun bs!5295 () Bool)

(assert (= bs!5295 (and d!4503 d!4483)))

(assert (=> bs!5295 (= lambda!725 lambda!718)))

(declare-fun bs!5296 () Bool)

(assert (= bs!5296 (and d!4503 d!4443)))

(assert (=> bs!5296 (= lambda!725 lambda!707)))

(declare-fun bs!5297 () Bool)

(assert (= bs!5297 (and d!4503 d!4489)))

(assert (=> bs!5297 (= lambda!725 lambda!720)))

(declare-fun bs!5298 () Bool)

(assert (= bs!5298 (and d!4503 d!4435)))

(assert (=> bs!5298 (= lambda!725 lambda!706)))

(declare-fun bs!5299 () Bool)

(assert (= bs!5299 (and d!4503 d!4481)))

(assert (=> bs!5299 (= lambda!725 lambda!717)))

(declare-fun bs!5300 () Bool)

(assert (= bs!5300 (and d!4503 d!4453)))

(assert (=> bs!5300 (= lambda!725 lambda!712)))

(declare-fun bs!5301 () Bool)

(assert (= bs!5301 (and d!4503 d!4501)))

(assert (=> bs!5301 (= lambda!725 lambda!724)))

(assert (=> d!4503 (= (inv!922 setElem!781) (forall!65 (exprs!579 setElem!781) lambda!725))))

(declare-fun bs!5302 () Bool)

(assert (= bs!5302 d!4503))

(declare-fun m!15938 () Bool)

(assert (=> bs!5302 m!15938))

(assert (=> setNonEmpty!781 d!4503))

(declare-fun bs!5303 () Bool)

(declare-fun d!4505 () Bool)

(assert (= bs!5303 (and d!4505 d!4461)))

(declare-fun lambda!726 () Int)

(assert (=> bs!5303 (= lambda!726 lambda!713)))

(declare-fun bs!5304 () Bool)

(assert (= bs!5304 (and d!4505 d!4503)))

(assert (=> bs!5304 (= lambda!726 lambda!725)))

(declare-fun bs!5305 () Bool)

(assert (= bs!5305 (and d!4505 d!4495)))

(assert (=> bs!5305 (= lambda!726 lambda!722)))

(declare-fun bs!5306 () Bool)

(assert (= bs!5306 (and d!4505 d!4493)))

(assert (=> bs!5306 (= lambda!726 lambda!721)))

(declare-fun bs!5307 () Bool)

(assert (= bs!5307 (and d!4505 d!4427)))

(assert (=> bs!5307 (= lambda!726 lambda!700)))

(declare-fun bs!5308 () Bool)

(assert (= bs!5308 (and d!4505 d!4429)))

(assert (=> bs!5308 (= lambda!726 lambda!701)))

(declare-fun bs!5309 () Bool)

(assert (= bs!5309 (and d!4505 d!4497)))

(assert (=> bs!5309 (= lambda!726 lambda!723)))

(declare-fun bs!5310 () Bool)

(assert (= bs!5310 (and d!4505 d!4487)))

(assert (=> bs!5310 (= lambda!726 lambda!719)))

(declare-fun bs!5311 () Bool)

(assert (= bs!5311 (and d!4505 d!4451)))

(assert (=> bs!5311 (= lambda!726 lambda!711)))

(declare-fun bs!5312 () Bool)

(assert (= bs!5312 (and d!4505 d!4421)))

(assert (=> bs!5312 (= lambda!726 lambda!699)))

(declare-fun bs!5313 () Bool)

(assert (= bs!5313 (and d!4505 d!4431)))

(assert (=> bs!5313 (= lambda!726 lambda!702)))

(declare-fun bs!5314 () Bool)

(assert (= bs!5314 (and d!4505 d!4483)))

(assert (=> bs!5314 (= lambda!726 lambda!718)))

(declare-fun bs!5315 () Bool)

(assert (= bs!5315 (and d!4505 d!4443)))

(assert (=> bs!5315 (= lambda!726 lambda!707)))

(declare-fun bs!5316 () Bool)

(assert (= bs!5316 (and d!4505 d!4489)))

(assert (=> bs!5316 (= lambda!726 lambda!720)))

(declare-fun bs!5317 () Bool)

(assert (= bs!5317 (and d!4505 d!4435)))

(assert (=> bs!5317 (= lambda!726 lambda!706)))

(declare-fun bs!5318 () Bool)

(assert (= bs!5318 (and d!4505 d!4481)))

(assert (=> bs!5318 (= lambda!726 lambda!717)))

(declare-fun bs!5319 () Bool)

(assert (= bs!5319 (and d!4505 d!4453)))

(assert (=> bs!5319 (= lambda!726 lambda!712)))

(declare-fun bs!5320 () Bool)

(assert (= bs!5320 (and d!4505 d!4501)))

(assert (=> bs!5320 (= lambda!726 lambda!724)))

(assert (=> d!4505 (= (inv!922 setElem!797) (forall!65 (exprs!579 setElem!797) lambda!726))))

(declare-fun bs!5321 () Bool)

(assert (= bs!5321 d!4505))

(declare-fun m!15940 () Bool)

(assert (=> bs!5321 m!15940))

(assert (=> setNonEmpty!797 d!4505))

(declare-fun bs!5322 () Bool)

(declare-fun d!4507 () Bool)

(assert (= bs!5322 (and d!4507 d!4461)))

(declare-fun lambda!727 () Int)

(assert (=> bs!5322 (= lambda!727 lambda!713)))

(declare-fun bs!5323 () Bool)

(assert (= bs!5323 (and d!4507 d!4495)))

(assert (=> bs!5323 (= lambda!727 lambda!722)))

(declare-fun bs!5324 () Bool)

(assert (= bs!5324 (and d!4507 d!4493)))

(assert (=> bs!5324 (= lambda!727 lambda!721)))

(declare-fun bs!5325 () Bool)

(assert (= bs!5325 (and d!4507 d!4427)))

(assert (=> bs!5325 (= lambda!727 lambda!700)))

(declare-fun bs!5326 () Bool)

(assert (= bs!5326 (and d!4507 d!4429)))

(assert (=> bs!5326 (= lambda!727 lambda!701)))

(declare-fun bs!5327 () Bool)

(assert (= bs!5327 (and d!4507 d!4497)))

(assert (=> bs!5327 (= lambda!727 lambda!723)))

(declare-fun bs!5328 () Bool)

(assert (= bs!5328 (and d!4507 d!4487)))

(assert (=> bs!5328 (= lambda!727 lambda!719)))

(declare-fun bs!5329 () Bool)

(assert (= bs!5329 (and d!4507 d!4451)))

(assert (=> bs!5329 (= lambda!727 lambda!711)))

(declare-fun bs!5330 () Bool)

(assert (= bs!5330 (and d!4507 d!4421)))

(assert (=> bs!5330 (= lambda!727 lambda!699)))

(declare-fun bs!5331 () Bool)

(assert (= bs!5331 (and d!4507 d!4431)))

(assert (=> bs!5331 (= lambda!727 lambda!702)))

(declare-fun bs!5332 () Bool)

(assert (= bs!5332 (and d!4507 d!4505)))

(assert (=> bs!5332 (= lambda!727 lambda!726)))

(declare-fun bs!5333 () Bool)

(assert (= bs!5333 (and d!4507 d!4503)))

(assert (=> bs!5333 (= lambda!727 lambda!725)))

(declare-fun bs!5334 () Bool)

(assert (= bs!5334 (and d!4507 d!4483)))

(assert (=> bs!5334 (= lambda!727 lambda!718)))

(declare-fun bs!5335 () Bool)

(assert (= bs!5335 (and d!4507 d!4443)))

(assert (=> bs!5335 (= lambda!727 lambda!707)))

(declare-fun bs!5336 () Bool)

(assert (= bs!5336 (and d!4507 d!4489)))

(assert (=> bs!5336 (= lambda!727 lambda!720)))

(declare-fun bs!5337 () Bool)

(assert (= bs!5337 (and d!4507 d!4435)))

(assert (=> bs!5337 (= lambda!727 lambda!706)))

(declare-fun bs!5338 () Bool)

(assert (= bs!5338 (and d!4507 d!4481)))

(assert (=> bs!5338 (= lambda!727 lambda!717)))

(declare-fun bs!5339 () Bool)

(assert (= bs!5339 (and d!4507 d!4453)))

(assert (=> bs!5339 (= lambda!727 lambda!712)))

(declare-fun bs!5340 () Bool)

(assert (= bs!5340 (and d!4507 d!4501)))

(assert (=> bs!5340 (= lambda!727 lambda!724)))

(assert (=> d!4507 (= (inv!922 (_1!509 (_1!510 (h!6027 mapValue!756)))) (forall!65 (exprs!579 (_1!509 (_1!510 (h!6027 mapValue!756)))) lambda!727))))

(declare-fun bs!5341 () Bool)

(assert (= bs!5341 d!4507))

(declare-fun m!15942 () Bool)

(assert (=> bs!5341 m!15942))

(assert (=> b!42225 d!4507))

(assert (=> d!4359 d!4357))

(declare-fun d!4509 () Bool)

(assert (=> d!4509 (= (list!160 (_1!511 (lex!25 Lexer!49 lt!4555 input!525))) (list!161 (c!15877 (_1!511 (lex!25 Lexer!49 lt!4555 input!525)))))))

(declare-fun bs!5342 () Bool)

(assert (= bs!5342 d!4509))

(declare-fun m!15944 () Bool)

(assert (=> bs!5342 m!15944))

(assert (=> d!4359 d!4509))

(assert (=> d!4359 d!4409))

(declare-fun b!42412 () Bool)

(declare-fun res!29934 () Bool)

(declare-fun e!22687 () Bool)

(assert (=> b!42412 (=> (not res!29934) (not e!22687))))

(declare-fun lt!4778 () tuple4!52)

(assert (=> b!42412 (= res!29934 (= (list!159 (_2!511 (_1!512 lt!4778))) (list!159 (_2!511 (lexRec!7 Lexer!49 lt!4555 input!525)))))))

(declare-fun b!42413 () Bool)

(declare-fun e!22686 () tuple4!52)

(declare-fun lt!4795 () tuple4!52)

(assert (=> b!42413 (= e!22686 (tuple4!53 (_1!512 lt!4795) (_2!512 lt!4795) (_3!143 lt!4795) (_4!26 lt!4795)))))

(declare-fun lt!4793 () tuple2!736)

(declare-datatypes ((tuple4!54 0))(
  ( (tuple4!55 (_1!516 Option!53) (_2!516 CacheUp!136) (_3!144 CacheDown!138) (_4!27 CacheFurthestNullable!86)) )
))
(declare-fun lt!4791 () tuple4!54)

(assert (=> b!42413 (= lt!4793 (lexRec!7 Lexer!49 lt!4555 (_2!515 (v!12394 (_1!516 lt!4791)))))))

(declare-fun lt!4763 () List!631)

(assert (=> b!42413 (= lt!4763 (list!159 (BalanceConc!231 Empty!115)))))

(declare-fun lt!4782 () List!631)

(assert (=> b!42413 (= lt!4782 (list!159 (charsOf!3 (_1!515 (v!12394 (_1!516 lt!4791))))))))

(declare-fun lt!4781 () List!631)

(assert (=> b!42413 (= lt!4781 (list!159 (_2!515 (v!12394 (_1!516 lt!4791)))))))

(declare-fun lt!4789 () Unit!281)

(assert (=> b!42413 (= lt!4789 (lemmaConcatAssociativity!8 lt!4763 lt!4782 lt!4781))))

(assert (=> b!42413 (= (++!53 (++!53 lt!4763 lt!4782) lt!4781) (++!53 lt!4763 (++!53 lt!4782 lt!4781)))))

(declare-fun lt!4769 () Unit!281)

(assert (=> b!42413 (= lt!4769 lt!4789)))

(declare-fun lt!4790 () Option!53)

(assert (=> b!42413 (= lt!4790 (maxPrefixZipperSequence!5 Lexer!49 lt!4555 input!525))))

(declare-fun c!15924 () Bool)

(assert (=> b!42413 (= c!15924 ((_ is Some!52) lt!4790))))

(declare-fun e!22684 () tuple2!736)

(assert (=> b!42413 (= (lexRec!7 Lexer!49 lt!4555 input!525) e!22684)))

(declare-fun lt!4773 () Unit!281)

(declare-fun Unit!287 () Unit!281)

(assert (=> b!42413 (= lt!4773 Unit!287)))

(declare-fun lt!4783 () List!634)

(assert (=> b!42413 (= lt!4783 (list!160 (BalanceConc!233 Empty!116)))))

(declare-fun lt!4792 () List!634)

(assert (=> b!42413 (= lt!4792 (Cons!632 (_1!515 (v!12394 (_1!516 lt!4791))) Nil!632))))

(declare-fun lt!4774 () List!634)

(assert (=> b!42413 (= lt!4774 (list!160 (_1!511 lt!4793)))))

(declare-fun lt!4776 () Unit!281)

(assert (=> b!42413 (= lt!4776 (lemmaConcatAssociativity!9 lt!4783 lt!4792 lt!4774))))

(assert (=> b!42413 (= (++!54 (++!54 lt!4783 lt!4792) lt!4774) (++!54 lt!4783 (++!54 lt!4792 lt!4774)))))

(declare-fun lt!4767 () Unit!281)

(assert (=> b!42413 (= lt!4767 lt!4776)))

(declare-fun lt!4766 () List!631)

(assert (=> b!42413 (= lt!4766 (++!53 (list!159 (BalanceConc!231 Empty!115)) (list!159 (charsOf!3 (_1!515 (v!12394 (_1!516 lt!4791)))))))))

(declare-fun lt!4761 () List!631)

(assert (=> b!42413 (= lt!4761 (list!159 (_2!515 (v!12394 (_1!516 lt!4791)))))))

(declare-fun lt!4794 () List!634)

(assert (=> b!42413 (= lt!4794 (list!160 (append!6 (BalanceConc!233 Empty!116) (_1!515 (v!12394 (_1!516 lt!4791))))))))

(declare-fun lt!4780 () Unit!281)

(assert (=> b!42413 (= lt!4780 (lemmaLexThenLexPrefix!2 Lexer!49 lt!4555 lt!4766 lt!4761 lt!4794 (list!160 (_1!511 lt!4793)) (list!159 (_2!511 lt!4793))))))

(assert (=> b!42413 (= (lexList!9 Lexer!49 lt!4555 lt!4766) (tuple2!739 lt!4794 Nil!629))))

(declare-fun lt!4764 () Unit!281)

(assert (=> b!42413 (= lt!4764 lt!4780)))

(declare-fun lt!4788 () BalanceConc!230)

(assert (=> b!42413 (= lt!4788 (++!55 (BalanceConc!231 Empty!115) (charsOf!3 (_1!515 (v!12394 (_1!516 lt!4791))))))))

(declare-fun lt!4768 () Option!53)

(assert (=> b!42413 (= lt!4768 (maxPrefixZipperSequence!5 Lexer!49 lt!4555 lt!4788))))

(declare-fun c!15922 () Bool)

(assert (=> b!42413 (= c!15922 ((_ is Some!52) lt!4768))))

(declare-fun e!22685 () tuple2!736)

(assert (=> b!42413 (= (lexRec!7 Lexer!49 lt!4555 (++!55 (BalanceConc!231 Empty!115) (charsOf!3 (_1!515 (v!12394 (_1!516 lt!4791)))))) e!22685)))

(declare-fun lt!4779 () Unit!281)

(declare-fun Unit!288 () Unit!281)

(assert (=> b!42413 (= lt!4779 Unit!288)))

(declare-fun lt!4772 () BalanceConc!230)

(assert (=> b!42413 (= lt!4772 (++!55 (BalanceConc!231 Empty!115) (charsOf!3 (_1!515 (v!12394 (_1!516 lt!4791))))))))

(declare-fun lt!4785 () List!631)

(assert (=> b!42413 (= lt!4785 (list!159 lt!4772))))

(declare-fun lt!4787 () List!631)

(assert (=> b!42413 (= lt!4787 (list!159 (_2!515 (v!12394 (_1!516 lt!4791)))))))

(declare-fun lt!4762 () Unit!281)

(assert (=> b!42413 (= lt!4762 (lemmaConcatTwoListThenFSndIsSuffix!2 lt!4785 lt!4787))))

(assert (=> b!42413 (isSuffix!2 lt!4787 (++!53 lt!4785 lt!4787))))

(declare-fun lt!4786 () Unit!281)

(assert (=> b!42413 (= lt!4786 lt!4762)))

(assert (=> b!42413 (= lt!4795 (lexTailRecV3Mem!6 Lexer!49 lt!4555 input!525 lt!4772 (_2!515 (v!12394 (_1!516 lt!4791))) (append!6 (BalanceConc!233 Empty!116) (_1!515 (v!12394 (_1!516 lt!4791)))) (_2!516 lt!4791) (_3!144 lt!4791) (_4!27 lt!4791)))))

(declare-fun b!42414 () Bool)

(assert (=> b!42414 (= e!22686 (tuple4!53 (tuple2!737 (BalanceConc!233 Empty!116) input!525) (_2!516 lt!4791) (_3!144 lt!4791) (_4!27 lt!4791)))))

(declare-fun b!42415 () Bool)

(declare-fun lt!4775 () tuple2!736)

(assert (=> b!42415 (= lt!4775 (lexRec!7 Lexer!49 lt!4555 (_2!515 (v!12394 lt!4790))))))

(assert (=> b!42415 (= e!22684 (tuple2!737 (prepend!11 (_1!511 lt!4775) (_1!515 (v!12394 lt!4790))) (_2!511 lt!4775)))))

(declare-fun d!4511 () Bool)

(assert (=> d!4511 e!22687))

(declare-fun res!29937 () Bool)

(assert (=> d!4511 (=> (not res!29937) (not e!22687))))

(assert (=> d!4511 (= res!29937 (= (list!160 (_1!511 (_1!512 lt!4778))) (list!160 (_1!511 (lexRec!7 Lexer!49 lt!4555 input!525)))))))

(assert (=> d!4511 (= lt!4778 e!22686)))

(declare-fun c!15923 () Bool)

(assert (=> d!4511 (= c!15923 ((_ is Some!52) (_1!516 lt!4791)))))

(declare-fun maxPrefixZipperSequenceV3Mem!1 (LexerInterface!51 List!635 BalanceConc!230 BalanceConc!230 CacheUp!136 CacheDown!138 CacheFurthestNullable!86) tuple4!54)

(assert (=> d!4511 (= lt!4791 (maxPrefixZipperSequenceV3Mem!1 Lexer!49 lt!4555 input!525 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun lt!4777 () Unit!281)

(declare-fun lt!4784 () Unit!281)

(assert (=> d!4511 (= lt!4777 lt!4784)))

(declare-fun lt!4765 () List!631)

(declare-fun lt!4770 () List!631)

(assert (=> d!4511 (isSuffix!2 lt!4765 (++!53 lt!4770 lt!4765))))

(assert (=> d!4511 (= lt!4784 (lemmaConcatTwoListThenFSndIsSuffix!2 lt!4770 lt!4765))))

(assert (=> d!4511 (= lt!4765 (list!159 input!525))))

(assert (=> d!4511 (= lt!4770 (list!159 (BalanceConc!231 Empty!115)))))

(assert (=> d!4511 (= (lexTailRecV3Mem!6 Lexer!49 lt!4555 input!525 (BalanceConc!231 Empty!115) input!525 (BalanceConc!233 Empty!116) cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!4778)))

(declare-fun b!42416 () Bool)

(declare-fun res!29936 () Bool)

(assert (=> b!42416 (=> (not res!29936) (not e!22687))))

(assert (=> b!42416 (= res!29936 (valid!193 (_2!512 lt!4778)))))

(declare-fun b!42417 () Bool)

(assert (=> b!42417 (= e!22684 (tuple2!737 (BalanceConc!233 Empty!116) input!525))))

(declare-fun b!42418 () Bool)

(declare-fun lt!4771 () tuple2!736)

(assert (=> b!42418 (= lt!4771 (lexRec!7 Lexer!49 lt!4555 (_2!515 (v!12394 lt!4768))))))

(assert (=> b!42418 (= e!22685 (tuple2!737 (prepend!11 (_1!511 lt!4771) (_1!515 (v!12394 lt!4768))) (_2!511 lt!4771)))))

(declare-fun b!42419 () Bool)

(declare-fun res!29933 () Bool)

(assert (=> b!42419 (=> (not res!29933) (not e!22687))))

(assert (=> b!42419 (= res!29933 (valid!192 (_4!26 lt!4778)))))

(declare-fun b!42420 () Bool)

(declare-fun res!29935 () Bool)

(assert (=> b!42420 (=> (not res!29935) (not e!22687))))

(assert (=> b!42420 (= res!29935 (valid!191 (_3!143 lt!4778)))))

(declare-fun b!42421 () Bool)

(assert (=> b!42421 (= e!22685 (tuple2!737 (BalanceConc!233 Empty!116) lt!4788))))

(declare-fun b!42422 () Bool)

(assert (=> b!42422 (= e!22687 (= (totalInput!1520 (_4!26 lt!4778)) input!525))))

(assert (= (and d!4511 c!15923) b!42413))

(assert (= (and d!4511 (not c!15923)) b!42414))

(assert (= (and b!42413 c!15924) b!42415))

(assert (= (and b!42413 (not c!15924)) b!42417))

(assert (= (and b!42413 c!15922) b!42418))

(assert (= (and b!42413 (not c!15922)) b!42421))

(assert (= (and d!4511 res!29937) b!42412))

(assert (= (and b!42412 res!29934) b!42419))

(assert (= (and b!42419 res!29933) b!42416))

(assert (= (and b!42416 res!29936) b!42420))

(assert (= (and b!42420 res!29935) b!42422))

(declare-fun m!15946 () Bool)

(assert (=> b!42420 m!15946))

(declare-fun m!15948 () Bool)

(assert (=> b!42415 m!15948))

(declare-fun m!15950 () Bool)

(assert (=> b!42415 m!15950))

(declare-fun m!15952 () Bool)

(assert (=> b!42418 m!15952))

(declare-fun m!15954 () Bool)

(assert (=> b!42418 m!15954))

(declare-fun m!15956 () Bool)

(assert (=> b!42416 m!15956))

(declare-fun m!15958 () Bool)

(assert (=> b!42412 m!15958))

(assert (=> b!42412 m!15718))

(assert (=> b!42412 m!15720))

(declare-fun m!15960 () Bool)

(assert (=> b!42419 m!15960))

(declare-fun m!15962 () Bool)

(assert (=> b!42413 m!15962))

(declare-fun m!15964 () Bool)

(assert (=> b!42413 m!15964))

(declare-fun m!15966 () Bool)

(assert (=> b!42413 m!15966))

(declare-fun m!15968 () Bool)

(assert (=> b!42413 m!15968))

(declare-fun m!15970 () Bool)

(assert (=> b!42413 m!15970))

(declare-fun m!15972 () Bool)

(assert (=> b!42413 m!15972))

(declare-fun m!15974 () Bool)

(assert (=> b!42413 m!15974))

(assert (=> b!42413 m!15778))

(assert (=> b!42413 m!15742))

(assert (=> b!42413 m!15972))

(declare-fun m!15976 () Bool)

(assert (=> b!42413 m!15976))

(declare-fun m!15978 () Bool)

(assert (=> b!42413 m!15978))

(declare-fun m!15980 () Bool)

(assert (=> b!42413 m!15980))

(declare-fun m!15982 () Bool)

(assert (=> b!42413 m!15982))

(declare-fun m!15984 () Bool)

(assert (=> b!42413 m!15984))

(declare-fun m!15986 () Bool)

(assert (=> b!42413 m!15986))

(declare-fun m!15988 () Bool)

(assert (=> b!42413 m!15988))

(declare-fun m!15990 () Bool)

(assert (=> b!42413 m!15990))

(declare-fun m!15992 () Bool)

(assert (=> b!42413 m!15992))

(assert (=> b!42413 m!15990))

(declare-fun m!15994 () Bool)

(assert (=> b!42413 m!15994))

(declare-fun m!15996 () Bool)

(assert (=> b!42413 m!15996))

(declare-fun m!15998 () Bool)

(assert (=> b!42413 m!15998))

(assert (=> b!42413 m!15970))

(assert (=> b!42413 m!15718))

(assert (=> b!42413 m!15964))

(declare-fun m!16000 () Bool)

(assert (=> b!42413 m!16000))

(assert (=> b!42413 m!15742))

(assert (=> b!42413 m!15962))

(declare-fun m!16002 () Bool)

(assert (=> b!42413 m!16002))

(assert (=> b!42413 m!15998))

(declare-fun m!16004 () Bool)

(assert (=> b!42413 m!16004))

(assert (=> b!42413 m!15968))

(declare-fun m!16006 () Bool)

(assert (=> b!42413 m!16006))

(declare-fun m!16008 () Bool)

(assert (=> b!42413 m!16008))

(declare-fun m!16010 () Bool)

(assert (=> b!42413 m!16010))

(assert (=> b!42413 m!15980))

(declare-fun m!16012 () Bool)

(assert (=> b!42413 m!16012))

(assert (=> b!42413 m!15970))

(assert (=> b!42413 m!15986))

(assert (=> b!42413 m!16006))

(declare-fun m!16014 () Bool)

(assert (=> b!42413 m!16014))

(assert (=> b!42413 m!15978))

(declare-fun m!16016 () Bool)

(assert (=> b!42413 m!16016))

(assert (=> b!42413 m!15740))

(assert (=> b!42413 m!15964))

(declare-fun m!16018 () Bool)

(assert (=> b!42413 m!16018))

(assert (=> d!4511 m!15718))

(assert (=> d!4511 m!15742))

(declare-fun m!16020 () Bool)

(assert (=> d!4511 m!16020))

(assert (=> d!4511 m!15458))

(assert (=> d!4511 m!15798))

(declare-fun m!16022 () Bool)

(assert (=> d!4511 m!16022))

(assert (=> d!4511 m!16020))

(declare-fun m!16024 () Bool)

(assert (=> d!4511 m!16024))

(declare-fun m!16026 () Bool)

(assert (=> d!4511 m!16026))

(declare-fun m!16028 () Bool)

(assert (=> d!4511 m!16028))

(assert (=> d!4359 d!4511))

(declare-fun d!4513 () Bool)

(assert (=> d!4513 (= (list!160 (_1!511 (_1!512 lt!4565))) (list!161 (c!15877 (_1!511 (_1!512 lt!4565)))))))

(declare-fun bs!5343 () Bool)

(assert (= bs!5343 d!4513))

(declare-fun m!16030 () Bool)

(assert (=> bs!5343 m!16030))

(assert (=> d!4359 d!4513))

(assert (=> b!42136 d!4369))

(declare-fun d!4515 () Bool)

(assert (=> d!4515 (= (valid!192 (_4!26 lt!4565)) (validCacheMapFurthestNullable!8 (cache!687 (_4!26 lt!4565)) (totalInput!1520 (_4!26 lt!4565))))))

(declare-fun bs!5344 () Bool)

(assert (= bs!5344 d!4515))

(declare-fun m!16032 () Bool)

(assert (=> bs!5344 m!16032))

(assert (=> b!42169 d!4515))

(declare-fun b!42423 () Bool)

(declare-fun e!22688 () List!631)

(assert (=> b!42423 (= e!22688 Nil!629)))

(declare-fun b!42425 () Bool)

(declare-fun e!22689 () List!631)

(assert (=> b!42425 (= e!22689 (list!163 (xs!2694 (c!15876 (_2!511 lt!4550)))))))

(declare-fun b!42424 () Bool)

(assert (=> b!42424 (= e!22688 e!22689)))

(declare-fun c!15926 () Bool)

(assert (=> b!42424 (= c!15926 ((_ is Leaf!304) (c!15876 (_2!511 lt!4550))))))

(declare-fun d!4517 () Bool)

(declare-fun c!15925 () Bool)

(assert (=> d!4517 (= c!15925 ((_ is Empty!115) (c!15876 (_2!511 lt!4550))))))

(assert (=> d!4517 (= (list!162 (c!15876 (_2!511 lt!4550))) e!22688)))

(declare-fun b!42426 () Bool)

(assert (=> b!42426 (= e!22689 (++!53 (list!162 (left!527 (c!15876 (_2!511 lt!4550)))) (list!162 (right!857 (c!15876 (_2!511 lt!4550))))))))

(assert (= (and d!4517 c!15925) b!42423))

(assert (= (and d!4517 (not c!15925)) b!42424))

(assert (= (and b!42424 c!15926) b!42425))

(assert (= (and b!42424 (not c!15926)) b!42426))

(declare-fun m!16034 () Bool)

(assert (=> b!42425 m!16034))

(declare-fun m!16036 () Bool)

(assert (=> b!42426 m!16036))

(declare-fun m!16038 () Bool)

(assert (=> b!42426 m!16038))

(assert (=> b!42426 m!16036))

(assert (=> b!42426 m!16038))

(declare-fun m!16040 () Bool)

(assert (=> b!42426 m!16040))

(assert (=> d!4383 d!4517))

(declare-fun bs!5345 () Bool)

(declare-fun d!4519 () Bool)

(assert (= bs!5345 (and d!4519 d!4461)))

(declare-fun lambda!728 () Int)

(assert (=> bs!5345 (= lambda!728 lambda!713)))

(declare-fun bs!5346 () Bool)

(assert (= bs!5346 (and d!4519 d!4495)))

(assert (=> bs!5346 (= lambda!728 lambda!722)))

(declare-fun bs!5347 () Bool)

(assert (= bs!5347 (and d!4519 d!4427)))

(assert (=> bs!5347 (= lambda!728 lambda!700)))

(declare-fun bs!5348 () Bool)

(assert (= bs!5348 (and d!4519 d!4429)))

(assert (=> bs!5348 (= lambda!728 lambda!701)))

(declare-fun bs!5349 () Bool)

(assert (= bs!5349 (and d!4519 d!4497)))

(assert (=> bs!5349 (= lambda!728 lambda!723)))

(declare-fun bs!5350 () Bool)

(assert (= bs!5350 (and d!4519 d!4487)))

(assert (=> bs!5350 (= lambda!728 lambda!719)))

(declare-fun bs!5351 () Bool)

(assert (= bs!5351 (and d!4519 d!4451)))

(assert (=> bs!5351 (= lambda!728 lambda!711)))

(declare-fun bs!5352 () Bool)

(assert (= bs!5352 (and d!4519 d!4421)))

(assert (=> bs!5352 (= lambda!728 lambda!699)))

(declare-fun bs!5353 () Bool)

(assert (= bs!5353 (and d!4519 d!4431)))

(assert (=> bs!5353 (= lambda!728 lambda!702)))

(declare-fun bs!5354 () Bool)

(assert (= bs!5354 (and d!4519 d!4505)))

(assert (=> bs!5354 (= lambda!728 lambda!726)))

(declare-fun bs!5355 () Bool)

(assert (= bs!5355 (and d!4519 d!4503)))

(assert (=> bs!5355 (= lambda!728 lambda!725)))

(declare-fun bs!5356 () Bool)

(assert (= bs!5356 (and d!4519 d!4483)))

(assert (=> bs!5356 (= lambda!728 lambda!718)))

(declare-fun bs!5357 () Bool)

(assert (= bs!5357 (and d!4519 d!4443)))

(assert (=> bs!5357 (= lambda!728 lambda!707)))

(declare-fun bs!5358 () Bool)

(assert (= bs!5358 (and d!4519 d!4493)))

(assert (=> bs!5358 (= lambda!728 lambda!721)))

(declare-fun bs!5359 () Bool)

(assert (= bs!5359 (and d!4519 d!4507)))

(assert (=> bs!5359 (= lambda!728 lambda!727)))

(declare-fun bs!5360 () Bool)

(assert (= bs!5360 (and d!4519 d!4489)))

(assert (=> bs!5360 (= lambda!728 lambda!720)))

(declare-fun bs!5361 () Bool)

(assert (= bs!5361 (and d!4519 d!4435)))

(assert (=> bs!5361 (= lambda!728 lambda!706)))

(declare-fun bs!5362 () Bool)

(assert (= bs!5362 (and d!4519 d!4481)))

(assert (=> bs!5362 (= lambda!728 lambda!717)))

(declare-fun bs!5363 () Bool)

(assert (= bs!5363 (and d!4519 d!4453)))

(assert (=> bs!5363 (= lambda!728 lambda!712)))

(declare-fun bs!5364 () Bool)

(assert (= bs!5364 (and d!4519 d!4501)))

(assert (=> bs!5364 (= lambda!728 lambda!724)))

(assert (=> d!4519 (= (inv!922 (_1!509 (_1!510 (h!6027 mapDefault!753)))) (forall!65 (exprs!579 (_1!509 (_1!510 (h!6027 mapDefault!753)))) lambda!728))))

(declare-fun bs!5365 () Bool)

(assert (= bs!5365 d!4519))

(declare-fun m!16042 () Bool)

(assert (=> bs!5365 m!16042))

(assert (=> b!42251 d!4519))

(declare-fun bs!5366 () Bool)

(declare-fun d!4521 () Bool)

(assert (= bs!5366 (and d!4521 d!4461)))

(declare-fun lambda!729 () Int)

(assert (=> bs!5366 (= lambda!729 lambda!713)))

(declare-fun bs!5367 () Bool)

(assert (= bs!5367 (and d!4521 d!4495)))

(assert (=> bs!5367 (= lambda!729 lambda!722)))

(declare-fun bs!5368 () Bool)

(assert (= bs!5368 (and d!4521 d!4427)))

(assert (=> bs!5368 (= lambda!729 lambda!700)))

(declare-fun bs!5369 () Bool)

(assert (= bs!5369 (and d!4521 d!4429)))

(assert (=> bs!5369 (= lambda!729 lambda!701)))

(declare-fun bs!5370 () Bool)

(assert (= bs!5370 (and d!4521 d!4497)))

(assert (=> bs!5370 (= lambda!729 lambda!723)))

(declare-fun bs!5371 () Bool)

(assert (= bs!5371 (and d!4521 d!4451)))

(assert (=> bs!5371 (= lambda!729 lambda!711)))

(declare-fun bs!5372 () Bool)

(assert (= bs!5372 (and d!4521 d!4421)))

(assert (=> bs!5372 (= lambda!729 lambda!699)))

(declare-fun bs!5373 () Bool)

(assert (= bs!5373 (and d!4521 d!4431)))

(assert (=> bs!5373 (= lambda!729 lambda!702)))

(declare-fun bs!5374 () Bool)

(assert (= bs!5374 (and d!4521 d!4505)))

(assert (=> bs!5374 (= lambda!729 lambda!726)))

(declare-fun bs!5375 () Bool)

(assert (= bs!5375 (and d!4521 d!4503)))

(assert (=> bs!5375 (= lambda!729 lambda!725)))

(declare-fun bs!5376 () Bool)

(assert (= bs!5376 (and d!4521 d!4483)))

(assert (=> bs!5376 (= lambda!729 lambda!718)))

(declare-fun bs!5377 () Bool)

(assert (= bs!5377 (and d!4521 d!4443)))

(assert (=> bs!5377 (= lambda!729 lambda!707)))

(declare-fun bs!5378 () Bool)

(assert (= bs!5378 (and d!4521 d!4493)))

(assert (=> bs!5378 (= lambda!729 lambda!721)))

(declare-fun bs!5379 () Bool)

(assert (= bs!5379 (and d!4521 d!4507)))

(assert (=> bs!5379 (= lambda!729 lambda!727)))

(declare-fun bs!5380 () Bool)

(assert (= bs!5380 (and d!4521 d!4489)))

(assert (=> bs!5380 (= lambda!729 lambda!720)))

(declare-fun bs!5381 () Bool)

(assert (= bs!5381 (and d!4521 d!4435)))

(assert (=> bs!5381 (= lambda!729 lambda!706)))

(declare-fun bs!5382 () Bool)

(assert (= bs!5382 (and d!4521 d!4481)))

(assert (=> bs!5382 (= lambda!729 lambda!717)))

(declare-fun bs!5383 () Bool)

(assert (= bs!5383 (and d!4521 d!4453)))

(assert (=> bs!5383 (= lambda!729 lambda!712)))

(declare-fun bs!5384 () Bool)

(assert (= bs!5384 (and d!4521 d!4501)))

(assert (=> bs!5384 (= lambda!729 lambda!724)))

(declare-fun bs!5385 () Bool)

(assert (= bs!5385 (and d!4521 d!4519)))

(assert (=> bs!5385 (= lambda!729 lambda!728)))

(declare-fun bs!5386 () Bool)

(assert (= bs!5386 (and d!4521 d!4487)))

(assert (=> bs!5386 (= lambda!729 lambda!719)))

(assert (=> d!4521 (= (inv!922 (_1!509 (_1!510 (h!6027 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))))) (forall!65 (exprs!579 (_1!509 (_1!510 (h!6027 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))))) lambda!729))))

(declare-fun bs!5387 () Bool)

(assert (= bs!5387 d!4521))

(declare-fun m!16044 () Bool)

(assert (=> bs!5387 m!16044))

(assert (=> b!42212 d!4521))

(declare-fun d!4523 () Bool)

(assert (=> d!4523 (= (valid!193 (_2!512 lt!4565)) (validCacheMapUp!14 (cache!689 (_2!512 lt!4565))))))

(declare-fun bs!5388 () Bool)

(assert (= bs!5388 d!4523))

(declare-fun m!16046 () Bool)

(assert (=> bs!5388 m!16046))

(assert (=> b!42167 d!4523))

(declare-fun d!4525 () Bool)

(declare-fun e!22692 () Bool)

(assert (=> d!4525 e!22692))

(declare-fun res!29940 () Bool)

(assert (=> d!4525 (=> (not res!29940) (not e!22692))))

(declare-fun lt!4798 () BalanceConc!230)

(assert (=> d!4525 (= res!29940 (= (list!159 lt!4798) lt!4553))))

(declare-fun fromList!4 (List!631) Conc!115)

(assert (=> d!4525 (= lt!4798 (BalanceConc!231 (fromList!4 lt!4553)))))

(assert (=> d!4525 (= (fromListB!4 lt!4553) lt!4798)))

(declare-fun b!42429 () Bool)

(assert (=> b!42429 (= e!22692 (isBalanced!19 (fromList!4 lt!4553)))))

(assert (= (and d!4525 res!29940) b!42429))

(declare-fun m!16048 () Bool)

(assert (=> d!4525 m!16048))

(declare-fun m!16050 () Bool)

(assert (=> d!4525 m!16050))

(assert (=> b!42429 m!16050))

(assert (=> b!42429 m!16050))

(declare-fun m!16052 () Bool)

(assert (=> b!42429 m!16052))

(assert (=> d!4399 d!4525))

(declare-fun d!4527 () Bool)

(assert (=> d!4527 (= (valid!191 (_3!143 lt!4565)) (validCacheMapDown!16 (cache!688 (_3!143 lt!4565))))))

(declare-fun bs!5389 () Bool)

(assert (= bs!5389 d!4527))

(declare-fun m!16054 () Bool)

(assert (=> bs!5389 m!16054))

(assert (=> b!42165 d!4527))

(declare-fun b!42430 () Bool)

(declare-fun e!22693 () List!631)

(assert (=> b!42430 (= e!22693 Nil!629)))

(declare-fun b!42432 () Bool)

(declare-fun e!22694 () List!631)

(assert (=> b!42432 (= e!22694 (list!163 (xs!2694 (c!15876 (_2!511 (_1!512 lt!4551))))))))

(declare-fun b!42431 () Bool)

(assert (=> b!42431 (= e!22693 e!22694)))

(declare-fun c!15929 () Bool)

(assert (=> b!42431 (= c!15929 ((_ is Leaf!304) (c!15876 (_2!511 (_1!512 lt!4551)))))))

(declare-fun d!4529 () Bool)

(declare-fun c!15928 () Bool)

(assert (=> d!4529 (= c!15928 ((_ is Empty!115) (c!15876 (_2!511 (_1!512 lt!4551)))))))

(assert (=> d!4529 (= (list!162 (c!15876 (_2!511 (_1!512 lt!4551)))) e!22693)))

(declare-fun b!42433 () Bool)

(assert (=> b!42433 (= e!22694 (++!53 (list!162 (left!527 (c!15876 (_2!511 (_1!512 lt!4551))))) (list!162 (right!857 (c!15876 (_2!511 (_1!512 lt!4551)))))))))

(assert (= (and d!4529 c!15928) b!42430))

(assert (= (and d!4529 (not c!15928)) b!42431))

(assert (= (and b!42431 c!15929) b!42432))

(assert (= (and b!42431 (not c!15929)) b!42433))

(declare-fun m!16056 () Bool)

(assert (=> b!42432 m!16056))

(declare-fun m!16058 () Bool)

(assert (=> b!42433 m!16058))

(declare-fun m!16060 () Bool)

(assert (=> b!42433 m!16060))

(assert (=> b!42433 m!16058))

(assert (=> b!42433 m!16060))

(declare-fun m!16062 () Bool)

(assert (=> b!42433 m!16062))

(assert (=> d!4381 d!4529))

(declare-fun b!42434 () Bool)

(declare-fun e!22695 () List!634)

(assert (=> b!42434 (= e!22695 Nil!632)))

(declare-fun b!42437 () Bool)

(declare-fun e!22696 () List!634)

(assert (=> b!42437 (= e!22696 (++!54 (list!161 (left!528 (c!15877 (_1!511 lt!4550)))) (list!161 (right!858 (c!15877 (_1!511 lt!4550))))))))

(declare-fun b!42435 () Bool)

(assert (=> b!42435 (= e!22695 e!22696)))

(declare-fun c!15931 () Bool)

(assert (=> b!42435 (= c!15931 ((_ is Leaf!305) (c!15877 (_1!511 lt!4550))))))

(declare-fun b!42436 () Bool)

(assert (=> b!42436 (= e!22696 (list!164 (xs!2695 (c!15877 (_1!511 lt!4550)))))))

(declare-fun d!4531 () Bool)

(declare-fun c!15930 () Bool)

(assert (=> d!4531 (= c!15930 ((_ is Empty!116) (c!15877 (_1!511 lt!4550))))))

(assert (=> d!4531 (= (list!161 (c!15877 (_1!511 lt!4550))) e!22695)))

(assert (= (and d!4531 c!15930) b!42434))

(assert (= (and d!4531 (not c!15930)) b!42435))

(assert (= (and b!42435 c!15931) b!42436))

(assert (= (and b!42435 (not c!15931)) b!42437))

(declare-fun m!16064 () Bool)

(assert (=> b!42437 m!16064))

(declare-fun m!16066 () Bool)

(assert (=> b!42437 m!16066))

(assert (=> b!42437 m!16064))

(assert (=> b!42437 m!16066))

(declare-fun m!16068 () Bool)

(assert (=> b!42437 m!16068))

(declare-fun m!16070 () Bool)

(assert (=> b!42436 m!16070))

(assert (=> d!4365 d!4531))

(declare-fun bs!5390 () Bool)

(declare-fun d!4533 () Bool)

(assert (= bs!5390 (and d!4533 d!4461)))

(declare-fun lambda!730 () Int)

(assert (=> bs!5390 (= lambda!730 lambda!713)))

(declare-fun bs!5391 () Bool)

(assert (= bs!5391 (and d!4533 d!4495)))

(assert (=> bs!5391 (= lambda!730 lambda!722)))

(declare-fun bs!5392 () Bool)

(assert (= bs!5392 (and d!4533 d!4427)))

(assert (=> bs!5392 (= lambda!730 lambda!700)))

(declare-fun bs!5393 () Bool)

(assert (= bs!5393 (and d!4533 d!4429)))

(assert (=> bs!5393 (= lambda!730 lambda!701)))

(declare-fun bs!5394 () Bool)

(assert (= bs!5394 (and d!4533 d!4497)))

(assert (=> bs!5394 (= lambda!730 lambda!723)))

(declare-fun bs!5395 () Bool)

(assert (= bs!5395 (and d!4533 d!4521)))

(assert (=> bs!5395 (= lambda!730 lambda!729)))

(declare-fun bs!5396 () Bool)

(assert (= bs!5396 (and d!4533 d!4451)))

(assert (=> bs!5396 (= lambda!730 lambda!711)))

(declare-fun bs!5397 () Bool)

(assert (= bs!5397 (and d!4533 d!4421)))

(assert (=> bs!5397 (= lambda!730 lambda!699)))

(declare-fun bs!5398 () Bool)

(assert (= bs!5398 (and d!4533 d!4431)))

(assert (=> bs!5398 (= lambda!730 lambda!702)))

(declare-fun bs!5399 () Bool)

(assert (= bs!5399 (and d!4533 d!4505)))

(assert (=> bs!5399 (= lambda!730 lambda!726)))

(declare-fun bs!5400 () Bool)

(assert (= bs!5400 (and d!4533 d!4503)))

(assert (=> bs!5400 (= lambda!730 lambda!725)))

(declare-fun bs!5401 () Bool)

(assert (= bs!5401 (and d!4533 d!4483)))

(assert (=> bs!5401 (= lambda!730 lambda!718)))

(declare-fun bs!5402 () Bool)

(assert (= bs!5402 (and d!4533 d!4443)))

(assert (=> bs!5402 (= lambda!730 lambda!707)))

(declare-fun bs!5403 () Bool)

(assert (= bs!5403 (and d!4533 d!4493)))

(assert (=> bs!5403 (= lambda!730 lambda!721)))

(declare-fun bs!5404 () Bool)

(assert (= bs!5404 (and d!4533 d!4507)))

(assert (=> bs!5404 (= lambda!730 lambda!727)))

(declare-fun bs!5405 () Bool)

(assert (= bs!5405 (and d!4533 d!4489)))

(assert (=> bs!5405 (= lambda!730 lambda!720)))

(declare-fun bs!5406 () Bool)

(assert (= bs!5406 (and d!4533 d!4435)))

(assert (=> bs!5406 (= lambda!730 lambda!706)))

(declare-fun bs!5407 () Bool)

(assert (= bs!5407 (and d!4533 d!4481)))

(assert (=> bs!5407 (= lambda!730 lambda!717)))

(declare-fun bs!5408 () Bool)

(assert (= bs!5408 (and d!4533 d!4453)))

(assert (=> bs!5408 (= lambda!730 lambda!712)))

(declare-fun bs!5409 () Bool)

(assert (= bs!5409 (and d!4533 d!4501)))

(assert (=> bs!5409 (= lambda!730 lambda!724)))

(declare-fun bs!5410 () Bool)

(assert (= bs!5410 (and d!4533 d!4519)))

(assert (=> bs!5410 (= lambda!730 lambda!728)))

(declare-fun bs!5411 () Bool)

(assert (= bs!5411 (and d!4533 d!4487)))

(assert (=> bs!5411 (= lambda!730 lambda!719)))

(assert (=> d!4533 (= (inv!922 setElem!769) (forall!65 (exprs!579 setElem!769) lambda!730))))

(declare-fun bs!5412 () Bool)

(assert (= bs!5412 d!4533))

(declare-fun m!16072 () Bool)

(assert (=> bs!5412 m!16072))

(assert (=> setNonEmpty!769 d!4533))

(declare-fun bs!5413 () Bool)

(declare-fun d!4535 () Bool)

(assert (= bs!5413 (and d!4535 d!4461)))

(declare-fun lambda!731 () Int)

(assert (=> bs!5413 (= lambda!731 lambda!713)))

(declare-fun bs!5414 () Bool)

(assert (= bs!5414 (and d!4535 d!4427)))

(assert (=> bs!5414 (= lambda!731 lambda!700)))

(declare-fun bs!5415 () Bool)

(assert (= bs!5415 (and d!4535 d!4429)))

(assert (=> bs!5415 (= lambda!731 lambda!701)))

(declare-fun bs!5416 () Bool)

(assert (= bs!5416 (and d!4535 d!4497)))

(assert (=> bs!5416 (= lambda!731 lambda!723)))

(declare-fun bs!5417 () Bool)

(assert (= bs!5417 (and d!4535 d!4521)))

(assert (=> bs!5417 (= lambda!731 lambda!729)))

(declare-fun bs!5418 () Bool)

(assert (= bs!5418 (and d!4535 d!4451)))

(assert (=> bs!5418 (= lambda!731 lambda!711)))

(declare-fun bs!5419 () Bool)

(assert (= bs!5419 (and d!4535 d!4421)))

(assert (=> bs!5419 (= lambda!731 lambda!699)))

(declare-fun bs!5420 () Bool)

(assert (= bs!5420 (and d!4535 d!4431)))

(assert (=> bs!5420 (= lambda!731 lambda!702)))

(declare-fun bs!5421 () Bool)

(assert (= bs!5421 (and d!4535 d!4505)))

(assert (=> bs!5421 (= lambda!731 lambda!726)))

(declare-fun bs!5422 () Bool)

(assert (= bs!5422 (and d!4535 d!4503)))

(assert (=> bs!5422 (= lambda!731 lambda!725)))

(declare-fun bs!5423 () Bool)

(assert (= bs!5423 (and d!4535 d!4495)))

(assert (=> bs!5423 (= lambda!731 lambda!722)))

(declare-fun bs!5424 () Bool)

(assert (= bs!5424 (and d!4535 d!4533)))

(assert (=> bs!5424 (= lambda!731 lambda!730)))

(declare-fun bs!5425 () Bool)

(assert (= bs!5425 (and d!4535 d!4483)))

(assert (=> bs!5425 (= lambda!731 lambda!718)))

(declare-fun bs!5426 () Bool)

(assert (= bs!5426 (and d!4535 d!4443)))

(assert (=> bs!5426 (= lambda!731 lambda!707)))

(declare-fun bs!5427 () Bool)

(assert (= bs!5427 (and d!4535 d!4493)))

(assert (=> bs!5427 (= lambda!731 lambda!721)))

(declare-fun bs!5428 () Bool)

(assert (= bs!5428 (and d!4535 d!4507)))

(assert (=> bs!5428 (= lambda!731 lambda!727)))

(declare-fun bs!5429 () Bool)

(assert (= bs!5429 (and d!4535 d!4489)))

(assert (=> bs!5429 (= lambda!731 lambda!720)))

(declare-fun bs!5430 () Bool)

(assert (= bs!5430 (and d!4535 d!4435)))

(assert (=> bs!5430 (= lambda!731 lambda!706)))

(declare-fun bs!5431 () Bool)

(assert (= bs!5431 (and d!4535 d!4481)))

(assert (=> bs!5431 (= lambda!731 lambda!717)))

(declare-fun bs!5432 () Bool)

(assert (= bs!5432 (and d!4535 d!4453)))

(assert (=> bs!5432 (= lambda!731 lambda!712)))

(declare-fun bs!5433 () Bool)

(assert (= bs!5433 (and d!4535 d!4501)))

(assert (=> bs!5433 (= lambda!731 lambda!724)))

(declare-fun bs!5434 () Bool)

(assert (= bs!5434 (and d!4535 d!4519)))

(assert (=> bs!5434 (= lambda!731 lambda!728)))

(declare-fun bs!5435 () Bool)

(assert (= bs!5435 (and d!4535 d!4487)))

(assert (=> bs!5435 (= lambda!731 lambda!719)))

(assert (=> d!4535 (= (inv!922 (_2!507 (_1!508 (h!6026 mapValue!759)))) (forall!65 (exprs!579 (_2!507 (_1!508 (h!6026 mapValue!759)))) lambda!731))))

(declare-fun bs!5436 () Bool)

(assert (= bs!5436 d!4535))

(declare-fun m!16074 () Bool)

(assert (=> bs!5436 m!16074))

(assert (=> b!42234 d!4535))

(declare-fun bs!5437 () Bool)

(declare-fun d!4537 () Bool)

(assert (= bs!5437 (and d!4537 d!4461)))

(declare-fun lambda!732 () Int)

(assert (=> bs!5437 (= lambda!732 lambda!713)))

(declare-fun bs!5438 () Bool)

(assert (= bs!5438 (and d!4537 d!4535)))

(assert (=> bs!5438 (= lambda!732 lambda!731)))

(declare-fun bs!5439 () Bool)

(assert (= bs!5439 (and d!4537 d!4427)))

(assert (=> bs!5439 (= lambda!732 lambda!700)))

(declare-fun bs!5440 () Bool)

(assert (= bs!5440 (and d!4537 d!4429)))

(assert (=> bs!5440 (= lambda!732 lambda!701)))

(declare-fun bs!5441 () Bool)

(assert (= bs!5441 (and d!4537 d!4497)))

(assert (=> bs!5441 (= lambda!732 lambda!723)))

(declare-fun bs!5442 () Bool)

(assert (= bs!5442 (and d!4537 d!4521)))

(assert (=> bs!5442 (= lambda!732 lambda!729)))

(declare-fun bs!5443 () Bool)

(assert (= bs!5443 (and d!4537 d!4451)))

(assert (=> bs!5443 (= lambda!732 lambda!711)))

(declare-fun bs!5444 () Bool)

(assert (= bs!5444 (and d!4537 d!4421)))

(assert (=> bs!5444 (= lambda!732 lambda!699)))

(declare-fun bs!5445 () Bool)

(assert (= bs!5445 (and d!4537 d!4431)))

(assert (=> bs!5445 (= lambda!732 lambda!702)))

(declare-fun bs!5446 () Bool)

(assert (= bs!5446 (and d!4537 d!4505)))

(assert (=> bs!5446 (= lambda!732 lambda!726)))

(declare-fun bs!5447 () Bool)

(assert (= bs!5447 (and d!4537 d!4503)))

(assert (=> bs!5447 (= lambda!732 lambda!725)))

(declare-fun bs!5448 () Bool)

(assert (= bs!5448 (and d!4537 d!4495)))

(assert (=> bs!5448 (= lambda!732 lambda!722)))

(declare-fun bs!5449 () Bool)

(assert (= bs!5449 (and d!4537 d!4533)))

(assert (=> bs!5449 (= lambda!732 lambda!730)))

(declare-fun bs!5450 () Bool)

(assert (= bs!5450 (and d!4537 d!4483)))

(assert (=> bs!5450 (= lambda!732 lambda!718)))

(declare-fun bs!5451 () Bool)

(assert (= bs!5451 (and d!4537 d!4443)))

(assert (=> bs!5451 (= lambda!732 lambda!707)))

(declare-fun bs!5452 () Bool)

(assert (= bs!5452 (and d!4537 d!4493)))

(assert (=> bs!5452 (= lambda!732 lambda!721)))

(declare-fun bs!5453 () Bool)

(assert (= bs!5453 (and d!4537 d!4507)))

(assert (=> bs!5453 (= lambda!732 lambda!727)))

(declare-fun bs!5454 () Bool)

(assert (= bs!5454 (and d!4537 d!4489)))

(assert (=> bs!5454 (= lambda!732 lambda!720)))

(declare-fun bs!5455 () Bool)

(assert (= bs!5455 (and d!4537 d!4435)))

(assert (=> bs!5455 (= lambda!732 lambda!706)))

(declare-fun bs!5456 () Bool)

(assert (= bs!5456 (and d!4537 d!4481)))

(assert (=> bs!5456 (= lambda!732 lambda!717)))

(declare-fun bs!5457 () Bool)

(assert (= bs!5457 (and d!4537 d!4453)))

(assert (=> bs!5457 (= lambda!732 lambda!712)))

(declare-fun bs!5458 () Bool)

(assert (= bs!5458 (and d!4537 d!4501)))

(assert (=> bs!5458 (= lambda!732 lambda!724)))

(declare-fun bs!5459 () Bool)

(assert (= bs!5459 (and d!4537 d!4519)))

(assert (=> bs!5459 (= lambda!732 lambda!728)))

(declare-fun bs!5460 () Bool)

(assert (= bs!5460 (and d!4537 d!4487)))

(assert (=> bs!5460 (= lambda!732 lambda!719)))

(assert (=> d!4537 (= (inv!922 (_2!507 (_1!508 (h!6026 mapValue!751)))) (forall!65 (exprs!579 (_2!507 (_1!508 (h!6026 mapValue!751)))) lambda!732))))

(declare-fun bs!5461 () Bool)

(assert (= bs!5461 d!4537))

(declare-fun m!16076 () Bool)

(assert (=> bs!5461 m!16076))

(assert (=> b!42236 d!4537))

(declare-fun bs!5462 () Bool)

(declare-fun d!4539 () Bool)

(assert (= bs!5462 (and d!4539 d!4461)))

(declare-fun lambda!733 () Int)

(assert (=> bs!5462 (= lambda!733 lambda!713)))

(declare-fun bs!5463 () Bool)

(assert (= bs!5463 (and d!4539 d!4535)))

(assert (=> bs!5463 (= lambda!733 lambda!731)))

(declare-fun bs!5464 () Bool)

(assert (= bs!5464 (and d!4539 d!4427)))

(assert (=> bs!5464 (= lambda!733 lambda!700)))

(declare-fun bs!5465 () Bool)

(assert (= bs!5465 (and d!4539 d!4429)))

(assert (=> bs!5465 (= lambda!733 lambda!701)))

(declare-fun bs!5466 () Bool)

(assert (= bs!5466 (and d!4539 d!4497)))

(assert (=> bs!5466 (= lambda!733 lambda!723)))

(declare-fun bs!5467 () Bool)

(assert (= bs!5467 (and d!4539 d!4521)))

(assert (=> bs!5467 (= lambda!733 lambda!729)))

(declare-fun bs!5468 () Bool)

(assert (= bs!5468 (and d!4539 d!4537)))

(assert (=> bs!5468 (= lambda!733 lambda!732)))

(declare-fun bs!5469 () Bool)

(assert (= bs!5469 (and d!4539 d!4451)))

(assert (=> bs!5469 (= lambda!733 lambda!711)))

(declare-fun bs!5470 () Bool)

(assert (= bs!5470 (and d!4539 d!4421)))

(assert (=> bs!5470 (= lambda!733 lambda!699)))

(declare-fun bs!5471 () Bool)

(assert (= bs!5471 (and d!4539 d!4431)))

(assert (=> bs!5471 (= lambda!733 lambda!702)))

(declare-fun bs!5472 () Bool)

(assert (= bs!5472 (and d!4539 d!4505)))

(assert (=> bs!5472 (= lambda!733 lambda!726)))

(declare-fun bs!5473 () Bool)

(assert (= bs!5473 (and d!4539 d!4503)))

(assert (=> bs!5473 (= lambda!733 lambda!725)))

(declare-fun bs!5474 () Bool)

(assert (= bs!5474 (and d!4539 d!4495)))

(assert (=> bs!5474 (= lambda!733 lambda!722)))

(declare-fun bs!5475 () Bool)

(assert (= bs!5475 (and d!4539 d!4533)))

(assert (=> bs!5475 (= lambda!733 lambda!730)))

(declare-fun bs!5476 () Bool)

(assert (= bs!5476 (and d!4539 d!4483)))

(assert (=> bs!5476 (= lambda!733 lambda!718)))

(declare-fun bs!5477 () Bool)

(assert (= bs!5477 (and d!4539 d!4443)))

(assert (=> bs!5477 (= lambda!733 lambda!707)))

(declare-fun bs!5478 () Bool)

(assert (= bs!5478 (and d!4539 d!4493)))

(assert (=> bs!5478 (= lambda!733 lambda!721)))

(declare-fun bs!5479 () Bool)

(assert (= bs!5479 (and d!4539 d!4507)))

(assert (=> bs!5479 (= lambda!733 lambda!727)))

(declare-fun bs!5480 () Bool)

(assert (= bs!5480 (and d!4539 d!4489)))

(assert (=> bs!5480 (= lambda!733 lambda!720)))

(declare-fun bs!5481 () Bool)

(assert (= bs!5481 (and d!4539 d!4435)))

(assert (=> bs!5481 (= lambda!733 lambda!706)))

(declare-fun bs!5482 () Bool)

(assert (= bs!5482 (and d!4539 d!4481)))

(assert (=> bs!5482 (= lambda!733 lambda!717)))

(declare-fun bs!5483 () Bool)

(assert (= bs!5483 (and d!4539 d!4453)))

(assert (=> bs!5483 (= lambda!733 lambda!712)))

(declare-fun bs!5484 () Bool)

(assert (= bs!5484 (and d!4539 d!4501)))

(assert (=> bs!5484 (= lambda!733 lambda!724)))

(declare-fun bs!5485 () Bool)

(assert (= bs!5485 (and d!4539 d!4519)))

(assert (=> bs!5485 (= lambda!733 lambda!728)))

(declare-fun bs!5486 () Bool)

(assert (= bs!5486 (and d!4539 d!4487)))

(assert (=> bs!5486 (= lambda!733 lambda!719)))

(assert (=> d!4539 (= (inv!922 setElem!796) (forall!65 (exprs!579 setElem!796) lambda!733))))

(declare-fun bs!5487 () Bool)

(assert (= bs!5487 d!4539))

(declare-fun m!16078 () Bool)

(assert (=> bs!5487 m!16078))

(assert (=> setNonEmpty!796 d!4539))

(declare-fun bs!5488 () Bool)

(declare-fun d!4541 () Bool)

(assert (= bs!5488 (and d!4541 d!4461)))

(declare-fun lambda!734 () Int)

(assert (=> bs!5488 (= lambda!734 lambda!713)))

(declare-fun bs!5489 () Bool)

(assert (= bs!5489 (and d!4541 d!4535)))

(assert (=> bs!5489 (= lambda!734 lambda!731)))

(declare-fun bs!5490 () Bool)

(assert (= bs!5490 (and d!4541 d!4427)))

(assert (=> bs!5490 (= lambda!734 lambda!700)))

(declare-fun bs!5491 () Bool)

(assert (= bs!5491 (and d!4541 d!4429)))

(assert (=> bs!5491 (= lambda!734 lambda!701)))

(declare-fun bs!5492 () Bool)

(assert (= bs!5492 (and d!4541 d!4497)))

(assert (=> bs!5492 (= lambda!734 lambda!723)))

(declare-fun bs!5493 () Bool)

(assert (= bs!5493 (and d!4541 d!4521)))

(assert (=> bs!5493 (= lambda!734 lambda!729)))

(declare-fun bs!5494 () Bool)

(assert (= bs!5494 (and d!4541 d!4537)))

(assert (=> bs!5494 (= lambda!734 lambda!732)))

(declare-fun bs!5495 () Bool)

(assert (= bs!5495 (and d!4541 d!4451)))

(assert (=> bs!5495 (= lambda!734 lambda!711)))

(declare-fun bs!5496 () Bool)

(assert (= bs!5496 (and d!4541 d!4421)))

(assert (=> bs!5496 (= lambda!734 lambda!699)))

(declare-fun bs!5497 () Bool)

(assert (= bs!5497 (and d!4541 d!4431)))

(assert (=> bs!5497 (= lambda!734 lambda!702)))

(declare-fun bs!5498 () Bool)

(assert (= bs!5498 (and d!4541 d!4505)))

(assert (=> bs!5498 (= lambda!734 lambda!726)))

(declare-fun bs!5499 () Bool)

(assert (= bs!5499 (and d!4541 d!4503)))

(assert (=> bs!5499 (= lambda!734 lambda!725)))

(declare-fun bs!5500 () Bool)

(assert (= bs!5500 (and d!4541 d!4495)))

(assert (=> bs!5500 (= lambda!734 lambda!722)))

(declare-fun bs!5501 () Bool)

(assert (= bs!5501 (and d!4541 d!4533)))

(assert (=> bs!5501 (= lambda!734 lambda!730)))

(declare-fun bs!5502 () Bool)

(assert (= bs!5502 (and d!4541 d!4483)))

(assert (=> bs!5502 (= lambda!734 lambda!718)))

(declare-fun bs!5503 () Bool)

(assert (= bs!5503 (and d!4541 d!4443)))

(assert (=> bs!5503 (= lambda!734 lambda!707)))

(declare-fun bs!5504 () Bool)

(assert (= bs!5504 (and d!4541 d!4493)))

(assert (=> bs!5504 (= lambda!734 lambda!721)))

(declare-fun bs!5505 () Bool)

(assert (= bs!5505 (and d!4541 d!4507)))

(assert (=> bs!5505 (= lambda!734 lambda!727)))

(declare-fun bs!5506 () Bool)

(assert (= bs!5506 (and d!4541 d!4489)))

(assert (=> bs!5506 (= lambda!734 lambda!720)))

(declare-fun bs!5507 () Bool)

(assert (= bs!5507 (and d!4541 d!4435)))

(assert (=> bs!5507 (= lambda!734 lambda!706)))

(declare-fun bs!5508 () Bool)

(assert (= bs!5508 (and d!4541 d!4539)))

(assert (=> bs!5508 (= lambda!734 lambda!733)))

(declare-fun bs!5509 () Bool)

(assert (= bs!5509 (and d!4541 d!4481)))

(assert (=> bs!5509 (= lambda!734 lambda!717)))

(declare-fun bs!5510 () Bool)

(assert (= bs!5510 (and d!4541 d!4453)))

(assert (=> bs!5510 (= lambda!734 lambda!712)))

(declare-fun bs!5511 () Bool)

(assert (= bs!5511 (and d!4541 d!4501)))

(assert (=> bs!5511 (= lambda!734 lambda!724)))

(declare-fun bs!5512 () Bool)

(assert (= bs!5512 (and d!4541 d!4519)))

(assert (=> bs!5512 (= lambda!734 lambda!728)))

(declare-fun bs!5513 () Bool)

(assert (= bs!5513 (and d!4541 d!4487)))

(assert (=> bs!5513 (= lambda!734 lambda!719)))

(assert (=> d!4541 (= (inv!922 setElem!788) (forall!65 (exprs!579 setElem!788) lambda!734))))

(declare-fun bs!5514 () Bool)

(assert (= bs!5514 d!4541))

(declare-fun m!16080 () Bool)

(assert (=> bs!5514 m!16080))

(assert (=> setNonEmpty!788 d!4541))

(declare-fun bs!5515 () Bool)

(declare-fun d!4543 () Bool)

(assert (= bs!5515 (and d!4543 d!4461)))

(declare-fun lambda!735 () Int)

(assert (=> bs!5515 (= lambda!735 lambda!713)))

(declare-fun bs!5516 () Bool)

(assert (= bs!5516 (and d!4543 d!4535)))

(assert (=> bs!5516 (= lambda!735 lambda!731)))

(declare-fun bs!5517 () Bool)

(assert (= bs!5517 (and d!4543 d!4541)))

(assert (=> bs!5517 (= lambda!735 lambda!734)))

(declare-fun bs!5518 () Bool)

(assert (= bs!5518 (and d!4543 d!4427)))

(assert (=> bs!5518 (= lambda!735 lambda!700)))

(declare-fun bs!5519 () Bool)

(assert (= bs!5519 (and d!4543 d!4429)))

(assert (=> bs!5519 (= lambda!735 lambda!701)))

(declare-fun bs!5520 () Bool)

(assert (= bs!5520 (and d!4543 d!4497)))

(assert (=> bs!5520 (= lambda!735 lambda!723)))

(declare-fun bs!5521 () Bool)

(assert (= bs!5521 (and d!4543 d!4521)))

(assert (=> bs!5521 (= lambda!735 lambda!729)))

(declare-fun bs!5522 () Bool)

(assert (= bs!5522 (and d!4543 d!4537)))

(assert (=> bs!5522 (= lambda!735 lambda!732)))

(declare-fun bs!5523 () Bool)

(assert (= bs!5523 (and d!4543 d!4451)))

(assert (=> bs!5523 (= lambda!735 lambda!711)))

(declare-fun bs!5524 () Bool)

(assert (= bs!5524 (and d!4543 d!4421)))

(assert (=> bs!5524 (= lambda!735 lambda!699)))

(declare-fun bs!5525 () Bool)

(assert (= bs!5525 (and d!4543 d!4431)))

(assert (=> bs!5525 (= lambda!735 lambda!702)))

(declare-fun bs!5526 () Bool)

(assert (= bs!5526 (and d!4543 d!4505)))

(assert (=> bs!5526 (= lambda!735 lambda!726)))

(declare-fun bs!5527 () Bool)

(assert (= bs!5527 (and d!4543 d!4503)))

(assert (=> bs!5527 (= lambda!735 lambda!725)))

(declare-fun bs!5528 () Bool)

(assert (= bs!5528 (and d!4543 d!4495)))

(assert (=> bs!5528 (= lambda!735 lambda!722)))

(declare-fun bs!5529 () Bool)

(assert (= bs!5529 (and d!4543 d!4533)))

(assert (=> bs!5529 (= lambda!735 lambda!730)))

(declare-fun bs!5530 () Bool)

(assert (= bs!5530 (and d!4543 d!4483)))

(assert (=> bs!5530 (= lambda!735 lambda!718)))

(declare-fun bs!5531 () Bool)

(assert (= bs!5531 (and d!4543 d!4443)))

(assert (=> bs!5531 (= lambda!735 lambda!707)))

(declare-fun bs!5532 () Bool)

(assert (= bs!5532 (and d!4543 d!4493)))

(assert (=> bs!5532 (= lambda!735 lambda!721)))

(declare-fun bs!5533 () Bool)

(assert (= bs!5533 (and d!4543 d!4507)))

(assert (=> bs!5533 (= lambda!735 lambda!727)))

(declare-fun bs!5534 () Bool)

(assert (= bs!5534 (and d!4543 d!4489)))

(assert (=> bs!5534 (= lambda!735 lambda!720)))

(declare-fun bs!5535 () Bool)

(assert (= bs!5535 (and d!4543 d!4435)))

(assert (=> bs!5535 (= lambda!735 lambda!706)))

(declare-fun bs!5536 () Bool)

(assert (= bs!5536 (and d!4543 d!4539)))

(assert (=> bs!5536 (= lambda!735 lambda!733)))

(declare-fun bs!5537 () Bool)

(assert (= bs!5537 (and d!4543 d!4481)))

(assert (=> bs!5537 (= lambda!735 lambda!717)))

(declare-fun bs!5538 () Bool)

(assert (= bs!5538 (and d!4543 d!4453)))

(assert (=> bs!5538 (= lambda!735 lambda!712)))

(declare-fun bs!5539 () Bool)

(assert (= bs!5539 (and d!4543 d!4501)))

(assert (=> bs!5539 (= lambda!735 lambda!724)))

(declare-fun bs!5540 () Bool)

(assert (= bs!5540 (and d!4543 d!4519)))

(assert (=> bs!5540 (= lambda!735 lambda!728)))

(declare-fun bs!5541 () Bool)

(assert (= bs!5541 (and d!4543 d!4487)))

(assert (=> bs!5541 (= lambda!735 lambda!719)))

(assert (=> d!4543 (= (inv!922 setElem!766) (forall!65 (exprs!579 setElem!766) lambda!735))))

(declare-fun bs!5542 () Bool)

(assert (= bs!5542 d!4543))

(declare-fun m!16082 () Bool)

(assert (=> bs!5542 m!16082))

(assert (=> setNonEmpty!766 d!4543))

(assert (=> b!42187 d!4465))

(declare-fun d!4545 () Bool)

(declare-fun res!29945 () Bool)

(declare-fun e!22699 () Bool)

(assert (=> d!4545 (=> (not res!29945) (not e!22699))))

(declare-fun valid!196 (MutableMap!204) Bool)

(assert (=> d!4545 (= res!29945 (valid!196 (cache!689 cacheUp!320)))))

(assert (=> d!4545 (= (validCacheMapUp!14 (cache!689 cacheUp!320)) e!22699)))

(declare-fun b!42442 () Bool)

(declare-fun res!29946 () Bool)

(assert (=> b!42442 (=> (not res!29946) (not e!22699))))

(declare-fun invariantList!23 (List!633) Bool)

(declare-datatypes ((ListMap!47 0))(
  ( (ListMap!48 (toList!174 List!633)) )
))
(declare-fun map!242 (MutableMap!204) ListMap!47)

(assert (=> b!42442 (= res!29946 (invariantList!23 (toList!174 (map!242 (cache!689 cacheUp!320)))))))

(declare-fun b!42443 () Bool)

(declare-fun lambda!738 () Int)

(declare-fun forall!69 (List!633 Int) Bool)

(assert (=> b!42443 (= e!22699 (forall!69 (toList!174 (map!242 (cache!689 cacheUp!320))) lambda!738))))

(assert (= (and d!4545 res!29945) b!42442))

(assert (= (and b!42442 res!29946) b!42443))

(declare-fun m!16085 () Bool)

(assert (=> d!4545 m!16085))

(declare-fun m!16087 () Bool)

(assert (=> b!42442 m!16087))

(declare-fun m!16089 () Bool)

(assert (=> b!42442 m!16089))

(assert (=> b!42443 m!16087))

(declare-fun m!16091 () Bool)

(assert (=> b!42443 m!16091))

(assert (=> d!4379 d!4545))

(declare-fun d!4547 () Bool)

(assert (=> d!4547 (= (inv!921 (xs!2694 (c!15876 input!525))) (<= (size!634 (innerList!173 (xs!2694 (c!15876 input!525)))) 2147483647))))

(declare-fun bs!5543 () Bool)

(assert (= bs!5543 d!4547))

(declare-fun m!16093 () Bool)

(assert (=> bs!5543 m!16093))

(assert (=> b!42250 d!4547))

(declare-fun bs!5544 () Bool)

(declare-fun d!4549 () Bool)

(assert (= bs!5544 (and d!4549 d!4461)))

(declare-fun lambda!739 () Int)

(assert (=> bs!5544 (= lambda!739 lambda!713)))

(declare-fun bs!5545 () Bool)

(assert (= bs!5545 (and d!4549 d!4535)))

(assert (=> bs!5545 (= lambda!739 lambda!731)))

(declare-fun bs!5546 () Bool)

(assert (= bs!5546 (and d!4549 d!4541)))

(assert (=> bs!5546 (= lambda!739 lambda!734)))

(declare-fun bs!5547 () Bool)

(assert (= bs!5547 (and d!4549 d!4543)))

(assert (=> bs!5547 (= lambda!739 lambda!735)))

(declare-fun bs!5548 () Bool)

(assert (= bs!5548 (and d!4549 d!4427)))

(assert (=> bs!5548 (= lambda!739 lambda!700)))

(declare-fun bs!5549 () Bool)

(assert (= bs!5549 (and d!4549 d!4429)))

(assert (=> bs!5549 (= lambda!739 lambda!701)))

(declare-fun bs!5550 () Bool)

(assert (= bs!5550 (and d!4549 d!4497)))

(assert (=> bs!5550 (= lambda!739 lambda!723)))

(declare-fun bs!5551 () Bool)

(assert (= bs!5551 (and d!4549 d!4521)))

(assert (=> bs!5551 (= lambda!739 lambda!729)))

(declare-fun bs!5552 () Bool)

(assert (= bs!5552 (and d!4549 d!4537)))

(assert (=> bs!5552 (= lambda!739 lambda!732)))

(declare-fun bs!5553 () Bool)

(assert (= bs!5553 (and d!4549 d!4451)))

(assert (=> bs!5553 (= lambda!739 lambda!711)))

(declare-fun bs!5554 () Bool)

(assert (= bs!5554 (and d!4549 d!4421)))

(assert (=> bs!5554 (= lambda!739 lambda!699)))

(declare-fun bs!5555 () Bool)

(assert (= bs!5555 (and d!4549 d!4431)))

(assert (=> bs!5555 (= lambda!739 lambda!702)))

(declare-fun bs!5556 () Bool)

(assert (= bs!5556 (and d!4549 d!4505)))

(assert (=> bs!5556 (= lambda!739 lambda!726)))

(declare-fun bs!5557 () Bool)

(assert (= bs!5557 (and d!4549 d!4503)))

(assert (=> bs!5557 (= lambda!739 lambda!725)))

(declare-fun bs!5558 () Bool)

(assert (= bs!5558 (and d!4549 d!4495)))

(assert (=> bs!5558 (= lambda!739 lambda!722)))

(declare-fun bs!5559 () Bool)

(assert (= bs!5559 (and d!4549 d!4533)))

(assert (=> bs!5559 (= lambda!739 lambda!730)))

(declare-fun bs!5560 () Bool)

(assert (= bs!5560 (and d!4549 d!4483)))

(assert (=> bs!5560 (= lambda!739 lambda!718)))

(declare-fun bs!5561 () Bool)

(assert (= bs!5561 (and d!4549 d!4443)))

(assert (=> bs!5561 (= lambda!739 lambda!707)))

(declare-fun bs!5562 () Bool)

(assert (= bs!5562 (and d!4549 d!4493)))

(assert (=> bs!5562 (= lambda!739 lambda!721)))

(declare-fun bs!5563 () Bool)

(assert (= bs!5563 (and d!4549 d!4507)))

(assert (=> bs!5563 (= lambda!739 lambda!727)))

(declare-fun bs!5564 () Bool)

(assert (= bs!5564 (and d!4549 d!4489)))

(assert (=> bs!5564 (= lambda!739 lambda!720)))

(declare-fun bs!5565 () Bool)

(assert (= bs!5565 (and d!4549 d!4435)))

(assert (=> bs!5565 (= lambda!739 lambda!706)))

(declare-fun bs!5566 () Bool)

(assert (= bs!5566 (and d!4549 d!4539)))

(assert (=> bs!5566 (= lambda!739 lambda!733)))

(declare-fun bs!5567 () Bool)

(assert (= bs!5567 (and d!4549 d!4481)))

(assert (=> bs!5567 (= lambda!739 lambda!717)))

(declare-fun bs!5568 () Bool)

(assert (= bs!5568 (and d!4549 d!4453)))

(assert (=> bs!5568 (= lambda!739 lambda!712)))

(declare-fun bs!5569 () Bool)

(assert (= bs!5569 (and d!4549 d!4501)))

(assert (=> bs!5569 (= lambda!739 lambda!724)))

(declare-fun bs!5570 () Bool)

(assert (= bs!5570 (and d!4549 d!4519)))

(assert (=> bs!5570 (= lambda!739 lambda!728)))

(declare-fun bs!5571 () Bool)

(assert (= bs!5571 (and d!4549 d!4487)))

(assert (=> bs!5571 (= lambda!739 lambda!719)))

(assert (=> d!4549 (= (inv!922 (_1!509 (_1!510 (h!6027 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))))) (forall!65 (exprs!579 (_1!509 (_1!510 (h!6027 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320)))))))))) lambda!739))))

(declare-fun bs!5572 () Bool)

(assert (= bs!5572 d!4549))

(declare-fun m!16095 () Bool)

(assert (=> bs!5572 m!16095))

(assert (=> b!42211 d!4549))

(assert (=> b!42193 d!4545))

(declare-fun d!4551 () Bool)

(assert (=> d!4551 (= (valid!193 (_2!512 lt!4551)) (validCacheMapUp!14 (cache!689 (_2!512 lt!4551))))))

(declare-fun bs!5573 () Bool)

(assert (= bs!5573 d!4551))

(declare-fun m!16097 () Bool)

(assert (=> bs!5573 m!16097))

(assert (=> d!4363 d!4551))

(declare-fun d!4553 () Bool)

(declare-fun c!15932 () Bool)

(assert (=> d!4553 (= c!15932 ((_ is Node!115) (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(declare-fun e!22700 () Bool)

(assert (=> d!4553 (= (inv!914 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) e!22700)))

(declare-fun b!42444 () Bool)

(assert (=> b!42444 (= e!22700 (inv!919 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(declare-fun b!42445 () Bool)

(declare-fun e!22701 () Bool)

(assert (=> b!42445 (= e!22700 e!22701)))

(declare-fun res!29947 () Bool)

(assert (=> b!42445 (= res!29947 (not ((_ is Leaf!304) (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))))

(assert (=> b!42445 (=> res!29947 e!22701)))

(declare-fun b!42446 () Bool)

(assert (=> b!42446 (= e!22701 (inv!920 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(assert (= (and d!4553 c!15932) b!42444))

(assert (= (and d!4553 (not c!15932)) b!42445))

(assert (= (and b!42445 (not res!29947)) b!42446))

(declare-fun m!16099 () Bool)

(assert (=> b!42444 m!16099))

(declare-fun m!16101 () Bool)

(assert (=> b!42446 m!16101))

(assert (=> b!42200 d!4553))

(declare-fun d!4555 () Bool)

(declare-fun c!15933 () Bool)

(assert (=> d!4555 (= c!15933 ((_ is Node!115) (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(declare-fun e!22702 () Bool)

(assert (=> d!4555 (= (inv!914 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) e!22702)))

(declare-fun b!42447 () Bool)

(assert (=> b!42447 (= e!22702 (inv!919 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(declare-fun b!42448 () Bool)

(declare-fun e!22703 () Bool)

(assert (=> b!42448 (= e!22702 e!22703)))

(declare-fun res!29948 () Bool)

(assert (=> b!42448 (= res!29948 (not ((_ is Leaf!304) (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))))

(assert (=> b!42448 (=> res!29948 e!22703)))

(declare-fun b!42449 () Bool)

(assert (=> b!42449 (= e!22703 (inv!920 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))))))

(assert (= (and d!4555 c!15933) b!42447))

(assert (= (and d!4555 (not c!15933)) b!42448))

(assert (= (and b!42448 (not res!29948)) b!42449))

(declare-fun m!16103 () Bool)

(assert (=> b!42447 m!16103))

(declare-fun m!16105 () Bool)

(assert (=> b!42449 m!16105))

(assert (=> b!42200 d!4555))

(declare-fun d!4557 () Bool)

(assert (=> d!4557 (= (list!160 (_1!511 lt!4560)) (list!161 (c!15877 (_1!511 lt!4560))))))

(declare-fun bs!5574 () Bool)

(assert (= bs!5574 d!4557))

(declare-fun m!16107 () Bool)

(assert (=> bs!5574 m!16107))

(assert (=> b!42154 d!4557))

(assert (=> b!42154 d!4425))

(assert (=> b!42154 d!4401))

(declare-fun bs!5575 () Bool)

(declare-fun d!4559 () Bool)

(assert (= bs!5575 (and d!4559 d!4461)))

(declare-fun lambda!740 () Int)

(assert (=> bs!5575 (= lambda!740 lambda!713)))

(declare-fun bs!5576 () Bool)

(assert (= bs!5576 (and d!4559 d!4535)))

(assert (=> bs!5576 (= lambda!740 lambda!731)))

(declare-fun bs!5577 () Bool)

(assert (= bs!5577 (and d!4559 d!4541)))

(assert (=> bs!5577 (= lambda!740 lambda!734)))

(declare-fun bs!5578 () Bool)

(assert (= bs!5578 (and d!4559 d!4543)))

(assert (=> bs!5578 (= lambda!740 lambda!735)))

(declare-fun bs!5579 () Bool)

(assert (= bs!5579 (and d!4559 d!4427)))

(assert (=> bs!5579 (= lambda!740 lambda!700)))

(declare-fun bs!5580 () Bool)

(assert (= bs!5580 (and d!4559 d!4429)))

(assert (=> bs!5580 (= lambda!740 lambda!701)))

(declare-fun bs!5581 () Bool)

(assert (= bs!5581 (and d!4559 d!4497)))

(assert (=> bs!5581 (= lambda!740 lambda!723)))

(declare-fun bs!5582 () Bool)

(assert (= bs!5582 (and d!4559 d!4521)))

(assert (=> bs!5582 (= lambda!740 lambda!729)))

(declare-fun bs!5583 () Bool)

(assert (= bs!5583 (and d!4559 d!4537)))

(assert (=> bs!5583 (= lambda!740 lambda!732)))

(declare-fun bs!5584 () Bool)

(assert (= bs!5584 (and d!4559 d!4451)))

(assert (=> bs!5584 (= lambda!740 lambda!711)))

(declare-fun bs!5585 () Bool)

(assert (= bs!5585 (and d!4559 d!4549)))

(assert (=> bs!5585 (= lambda!740 lambda!739)))

(declare-fun bs!5586 () Bool)

(assert (= bs!5586 (and d!4559 d!4421)))

(assert (=> bs!5586 (= lambda!740 lambda!699)))

(declare-fun bs!5587 () Bool)

(assert (= bs!5587 (and d!4559 d!4431)))

(assert (=> bs!5587 (= lambda!740 lambda!702)))

(declare-fun bs!5588 () Bool)

(assert (= bs!5588 (and d!4559 d!4505)))

(assert (=> bs!5588 (= lambda!740 lambda!726)))

(declare-fun bs!5589 () Bool)

(assert (= bs!5589 (and d!4559 d!4503)))

(assert (=> bs!5589 (= lambda!740 lambda!725)))

(declare-fun bs!5590 () Bool)

(assert (= bs!5590 (and d!4559 d!4495)))

(assert (=> bs!5590 (= lambda!740 lambda!722)))

(declare-fun bs!5591 () Bool)

(assert (= bs!5591 (and d!4559 d!4533)))

(assert (=> bs!5591 (= lambda!740 lambda!730)))

(declare-fun bs!5592 () Bool)

(assert (= bs!5592 (and d!4559 d!4483)))

(assert (=> bs!5592 (= lambda!740 lambda!718)))

(declare-fun bs!5593 () Bool)

(assert (= bs!5593 (and d!4559 d!4443)))

(assert (=> bs!5593 (= lambda!740 lambda!707)))

(declare-fun bs!5594 () Bool)

(assert (= bs!5594 (and d!4559 d!4493)))

(assert (=> bs!5594 (= lambda!740 lambda!721)))

(declare-fun bs!5595 () Bool)

(assert (= bs!5595 (and d!4559 d!4507)))

(assert (=> bs!5595 (= lambda!740 lambda!727)))

(declare-fun bs!5596 () Bool)

(assert (= bs!5596 (and d!4559 d!4489)))

(assert (=> bs!5596 (= lambda!740 lambda!720)))

(declare-fun bs!5597 () Bool)

(assert (= bs!5597 (and d!4559 d!4435)))

(assert (=> bs!5597 (= lambda!740 lambda!706)))

(declare-fun bs!5598 () Bool)

(assert (= bs!5598 (and d!4559 d!4539)))

(assert (=> bs!5598 (= lambda!740 lambda!733)))

(declare-fun bs!5599 () Bool)

(assert (= bs!5599 (and d!4559 d!4481)))

(assert (=> bs!5599 (= lambda!740 lambda!717)))

(declare-fun bs!5600 () Bool)

(assert (= bs!5600 (and d!4559 d!4453)))

(assert (=> bs!5600 (= lambda!740 lambda!712)))

(declare-fun bs!5601 () Bool)

(assert (= bs!5601 (and d!4559 d!4501)))

(assert (=> bs!5601 (= lambda!740 lambda!724)))

(declare-fun bs!5602 () Bool)

(assert (= bs!5602 (and d!4559 d!4519)))

(assert (=> bs!5602 (= lambda!740 lambda!728)))

(declare-fun bs!5603 () Bool)

(assert (= bs!5603 (and d!4559 d!4487)))

(assert (=> bs!5603 (= lambda!740 lambda!719)))

(assert (=> d!4559 (= (inv!922 (_1!509 (_1!510 (h!6027 mapDefault!756)))) (forall!65 (exprs!579 (_1!509 (_1!510 (h!6027 mapDefault!756)))) lambda!740))))

(declare-fun bs!5604 () Bool)

(assert (= bs!5604 d!4559))

(declare-fun m!16109 () Bool)

(assert (=> bs!5604 m!16109))

(assert (=> b!42226 d!4559))

(declare-fun d!4561 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!64) Regex!221)

(declare-datatypes ((StringLiteralValueInjection!34 0))(
  ( (StringLiteralValueInjection!35) )
))
(declare-fun injection!8 (StringLiteralValueInjection!34) TokenValueInjection!116)

(assert (=> d!4561 (= (jsonstringRule!0 JsonLexer!65) (Rule!113 (jsonStringRe!0 JsonLexer!65) (String!1025 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!35)))))

(declare-fun bs!5605 () Bool)

(assert (= bs!5605 d!4561))

(declare-fun m!16111 () Bool)

(assert (=> bs!5605 m!16111))

(declare-fun m!16113 () Bool)

(assert (=> bs!5605 m!16113))

(assert (=> d!4405 d!4561))

(declare-fun d!4563 () Bool)

(declare-fun falseRe!0 (JsonLexer!64) Regex!221)

(declare-datatypes ((KeywordValueInjection!14 0))(
  ( (KeywordValueInjection!15) )
))
(declare-fun injection!9 (KeywordValueInjection!14) TokenValueInjection!116)

(assert (=> d!4563 (= (falseRule!0 JsonLexer!65) (Rule!113 (falseRe!0 JsonLexer!65) (String!1025 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5606 () Bool)

(assert (= bs!5606 d!4563))

(declare-fun m!16115 () Bool)

(assert (=> bs!5606 m!16115))

(declare-fun m!16117 () Bool)

(assert (=> bs!5606 m!16117))

(assert (=> d!4405 d!4563))

(declare-fun d!4565 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4565 (= (lBracketRule!0 JsonLexer!65) (Rule!113 (lBracketRe!0 JsonLexer!65) (String!1025 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5607 () Bool)

(assert (= bs!5607 d!4565))

(declare-fun m!16119 () Bool)

(assert (=> bs!5607 m!16119))

(assert (=> bs!5607 m!16117))

(assert (=> d!4405 d!4565))

(declare-fun d!4567 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4567 (= (rBracketRule!0 JsonLexer!65) (Rule!113 (rBracketRe!0 JsonLexer!65) (String!1025 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5608 () Bool)

(assert (= bs!5608 d!4567))

(declare-fun m!16121 () Bool)

(assert (=> bs!5608 m!16121))

(assert (=> bs!5608 m!16117))

(assert (=> d!4405 d!4567))

(declare-fun d!4569 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4569 (= (lBraceRule!0 JsonLexer!65) (Rule!113 (lBraceRe!0 JsonLexer!65) (String!1025 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5609 () Bool)

(assert (= bs!5609 d!4569))

(declare-fun m!16123 () Bool)

(assert (=> bs!5609 m!16123))

(assert (=> bs!5609 m!16117))

(assert (=> d!4405 d!4569))

(declare-fun d!4571 () Bool)

(declare-fun nullRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4571 (= (nullRule!0 JsonLexer!65) (Rule!113 (nullRe!0 JsonLexer!65) (String!1025 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5610 () Bool)

(assert (= bs!5610 d!4571))

(declare-fun m!16125 () Bool)

(assert (=> bs!5610 m!16125))

(assert (=> bs!5610 m!16117))

(assert (=> d!4405 d!4571))

(declare-fun d!4573 () Bool)

(declare-fun commaRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4573 (= (commaRule!0 JsonLexer!65) (Rule!113 (commaRe!0 JsonLexer!65) (String!1025 "ccoommmmaa") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5611 () Bool)

(assert (= bs!5611 d!4573))

(declare-fun m!16127 () Bool)

(assert (=> bs!5611 m!16127))

(assert (=> bs!5611 m!16117))

(assert (=> d!4405 d!4573))

(declare-fun d!4575 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4575 (= (rBraceRule!0 JsonLexer!65) (Rule!113 (rBraceRe!0 JsonLexer!65) (String!1025 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5612 () Bool)

(assert (= bs!5612 d!4575))

(declare-fun m!16129 () Bool)

(assert (=> bs!5612 m!16129))

(assert (=> bs!5612 m!16117))

(assert (=> d!4405 d!4575))

(declare-fun d!4577 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!64) Regex!221)

(declare-datatypes ((WhitespaceValueInjection!10 0))(
  ( (WhitespaceValueInjection!11) )
))
(declare-fun injection!7 (WhitespaceValueInjection!10) TokenValueInjection!116)

(assert (=> d!4577 (= (whitespaceRule!0 JsonLexer!65) (Rule!113 (wsCharRe!0 JsonLexer!65) (String!1025 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!11)))))

(declare-fun bs!5613 () Bool)

(assert (= bs!5613 d!4577))

(declare-fun m!16131 () Bool)

(assert (=> bs!5613 m!16131))

(declare-fun m!16133 () Bool)

(assert (=> bs!5613 m!16133))

(assert (=> d!4405 d!4577))

(declare-fun d!4579 () Bool)

(declare-fun eofRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4579 (= (eofRule!0 JsonLexer!65) (Rule!113 (eofRe!0 JsonLexer!65) (String!1025 "eeooff") false (injection!7 WhitespaceValueInjection!11)))))

(declare-fun bs!5614 () Bool)

(assert (= bs!5614 d!4579))

(declare-fun m!16135 () Bool)

(assert (=> bs!5614 m!16135))

(assert (=> bs!5614 m!16133))

(assert (=> d!4405 d!4579))

(declare-fun d!4581 () Bool)

(declare-fun trueRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4581 (= (trueRule!0 JsonLexer!65) (Rule!113 (trueRe!0 JsonLexer!65) (String!1025 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5615 () Bool)

(assert (= bs!5615 d!4581))

(declare-fun m!16137 () Bool)

(assert (=> bs!5615 m!16137))

(assert (=> bs!5615 m!16117))

(assert (=> d!4405 d!4581))

(declare-fun d!4583 () Bool)

(declare-fun colonRe!0 (JsonLexer!64) Regex!221)

(assert (=> d!4583 (= (colonRule!0 JsonLexer!65) (Rule!113 (colonRe!0 JsonLexer!65) (String!1025 "ccoolloonn") false (injection!9 KeywordValueInjection!15)))))

(declare-fun bs!5616 () Bool)

(assert (= bs!5616 d!4583))

(declare-fun m!16139 () Bool)

(assert (=> bs!5616 m!16139))

(assert (=> bs!5616 m!16117))

(assert (=> d!4405 d!4583))

(declare-fun d!4585 () Bool)

(declare-fun intRe!0 (JsonLexer!64) Regex!221)

(declare-datatypes ((IntegerValueInjection!14 0))(
  ( (IntegerValueInjection!15) )
))
(declare-fun injection!5 (IntegerValueInjection!14) TokenValueInjection!116)

(assert (=> d!4585 (= (integerLiteralRule!0 JsonLexer!65) (Rule!113 (intRe!0 JsonLexer!65) (String!1025 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!15)))))

(declare-fun bs!5617 () Bool)

(assert (= bs!5617 d!4585))

(declare-fun m!16141 () Bool)

(assert (=> bs!5617 m!16141))

(declare-fun m!16143 () Bool)

(assert (=> bs!5617 m!16143))

(assert (=> d!4405 d!4585))

(declare-fun d!4587 () Bool)

(declare-fun floatRe!0 (JsonLexer!64) Regex!221)

(declare-datatypes ((FloatLiteralValueInjection!10 0))(
  ( (FloatLiteralValueInjection!11) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!10) TokenValueInjection!116)

(assert (=> d!4587 (= (floatLiteralRule!0 JsonLexer!65) (Rule!113 (floatRe!0 JsonLexer!65) (String!1025 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!11)))))

(declare-fun bs!5618 () Bool)

(assert (= bs!5618 d!4587))

(declare-fun m!16145 () Bool)

(assert (=> bs!5618 m!16145))

(declare-fun m!16147 () Bool)

(assert (=> bs!5618 m!16147))

(assert (=> d!4405 d!4587))

(declare-fun tp!29209 () Bool)

(declare-fun setRes!800 () Bool)

(declare-fun e!22704 () Bool)

(declare-fun b!42450 () Bool)

(assert (=> b!42450 (= e!22704 (and (inv!922 (_1!509 (_1!510 (h!6027 (t!16177 mapValue!756))))) setRes!800 tp!29209))))

(declare-fun condSetEmpty!800 () Bool)

(assert (=> b!42450 (= condSetEmpty!800 (= (_2!510 (h!6027 (t!16177 mapValue!756))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!800 () Bool)

(assert (=> setIsEmpty!800 setRes!800))

(declare-fun setNonEmpty!800 () Bool)

(declare-fun tp!29210 () Bool)

(declare-fun setElem!800 () Context!158)

(assert (=> setNonEmpty!800 (= setRes!800 (and tp!29210 (inv!922 setElem!800)))))

(declare-fun setRest!800 () (InoxSet Context!158))

(assert (=> setNonEmpty!800 (= (_2!510 (h!6027 (t!16177 mapValue!756))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!800 true) setRest!800))))

(assert (=> b!42225 (= tp!29162 e!22704)))

(assert (= (and b!42450 condSetEmpty!800) setIsEmpty!800))

(assert (= (and b!42450 (not condSetEmpty!800)) setNonEmpty!800))

(assert (= (and b!42225 ((_ is Cons!631) (t!16177 mapValue!756))) b!42450))

(declare-fun m!16149 () Bool)

(assert (=> b!42450 m!16149))

(declare-fun m!16151 () Bool)

(assert (=> setNonEmpty!800 m!16151))

(declare-fun b!42471 () Bool)

(declare-fun e!22729 () Bool)

(declare-fun e!22732 () Bool)

(assert (=> b!42471 (= e!22729 e!22732)))

(declare-fun b!42472 () Bool)

(declare-fun e!22731 () Bool)

(declare-fun e!22730 () Bool)

(assert (=> b!42472 (= e!22731 e!22730)))

(declare-fun b!42473 () Bool)

(declare-fun e!22728 () Bool)

(declare-fun lt!4807 () MutLongMap!206)

(assert (=> b!42473 (= e!22728 ((_ is LongMap!206) lt!4807))))

(assert (=> b!42473 (= lt!4807 (v!12388 (underlying!608 (cache!687 (_4!26 (lexMem!19 Lexer!49 lt!4555 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))))))

(declare-fun b!42474 () Bool)

(declare-fun e!22726 () Bool)

(declare-fun lt!4805 () MutLongMap!208)

(assert (=> b!42474 (= e!22726 ((_ is LongMap!208) lt!4805))))

(assert (=> b!42474 (= lt!4805 (v!12392 (underlying!612 (cache!689 (_2!512 (lexMem!19 Lexer!49 lt!4555 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))))))

(declare-fun b!42475 () Bool)

(assert (=> b!42475 (= e!22732 e!22726)))

(declare-fun e!22727 () Bool)

(assert (=> d!4359 (= true (and e!22729 e!22731 e!22727))))

(declare-fun b!42476 () Bool)

(declare-fun e!22725 () Bool)

(assert (=> b!42476 (= e!22730 e!22725)))

(declare-fun b!42477 () Bool)

(declare-fun lt!4806 () MutLongMap!207)

(assert (=> b!42477 (= e!22725 ((_ is LongMap!207) lt!4806))))

(assert (=> b!42477 (= lt!4806 (v!12390 (underlying!610 (cache!688 (_3!143 (lexMem!19 Lexer!49 lt!4555 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))))))

(declare-fun b!42478 () Bool)

(declare-fun e!22733 () Bool)

(assert (=> b!42478 (= e!22733 e!22728)))

(declare-fun b!42479 () Bool)

(assert (=> b!42479 (= e!22727 e!22733)))

(assert (= b!42475 b!42474))

(assert (= (and b!42471 ((_ is HashMap!204) (cache!689 (_2!512 (lexMem!19 Lexer!49 lt!4555 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))) b!42475))

(assert (= d!4359 b!42471))

(assert (= b!42476 b!42477))

(assert (= (and b!42472 ((_ is HashMap!203) (cache!688 (_3!143 (lexMem!19 Lexer!49 lt!4555 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))) b!42476))

(assert (= d!4359 b!42472))

(assert (= b!42478 b!42473))

(assert (= (and b!42479 ((_ is HashMap!202) (cache!687 (_4!26 (lexMem!19 Lexer!49 lt!4555 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))) b!42478))

(assert (= d!4359 b!42479))

(declare-fun condSetEmpty!803 () Bool)

(assert (=> setNonEmpty!779 (= condSetEmpty!803 (= setRest!779 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!803 () Bool)

(assert (=> setNonEmpty!779 (= tp!29161 setRes!803)))

(declare-fun setIsEmpty!803 () Bool)

(assert (=> setIsEmpty!803 setRes!803))

(declare-fun setNonEmpty!803 () Bool)

(declare-fun tp!29213 () Bool)

(declare-fun setElem!803 () Context!158)

(assert (=> setNonEmpty!803 (= setRes!803 (and tp!29213 (inv!922 setElem!803)))))

(declare-fun setRest!803 () (InoxSet Context!158))

(assert (=> setNonEmpty!803 (= setRest!779 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!803 true) setRest!803))))

(assert (= (and setNonEmpty!779 condSetEmpty!803) setIsEmpty!803))

(assert (= (and setNonEmpty!779 (not condSetEmpty!803)) setNonEmpty!803))

(declare-fun m!16153 () Bool)

(assert (=> setNonEmpty!803 m!16153))

(declare-fun b!42482 () Bool)

(declare-fun e!22738 () Bool)

(declare-fun setRes!804 () Bool)

(declare-fun tp!29214 () Bool)

(assert (=> b!42482 (= e!22738 (and setRes!804 tp!29214))))

(declare-fun condSetEmpty!804 () Bool)

(assert (=> b!42482 (= condSetEmpty!804 (= (_1!505 (_1!506 (h!6024 (t!16174 mapValue!753)))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!804 () Bool)

(assert (=> setIsEmpty!804 setRes!804))

(declare-fun setNonEmpty!804 () Bool)

(declare-fun tp!29215 () Bool)

(declare-fun setElem!804 () Context!158)

(assert (=> setNonEmpty!804 (= setRes!804 (and tp!29215 (inv!922 setElem!804)))))

(declare-fun setRest!804 () (InoxSet Context!158))

(assert (=> setNonEmpty!804 (= (_1!505 (_1!506 (h!6024 (t!16174 mapValue!753)))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!804 true) setRest!804))))

(assert (=> b!42247 (= tp!29201 e!22738)))

(assert (= (and b!42482 condSetEmpty!804) setIsEmpty!804))

(assert (= (and b!42482 (not condSetEmpty!804)) setNonEmpty!804))

(assert (= (and b!42247 ((_ is Cons!628) (t!16174 mapValue!753))) b!42482))

(declare-fun m!16155 () Bool)

(assert (=> setNonEmpty!804 m!16155))

(declare-fun condSetEmpty!805 () Bool)

(assert (=> setNonEmpty!786 (= condSetEmpty!805 (= setRest!786 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!805 () Bool)

(assert (=> setNonEmpty!786 (= tp!29176 setRes!805)))

(declare-fun setIsEmpty!805 () Bool)

(assert (=> setIsEmpty!805 setRes!805))

(declare-fun setNonEmpty!805 () Bool)

(declare-fun tp!29216 () Bool)

(declare-fun setElem!805 () Context!158)

(assert (=> setNonEmpty!805 (= setRes!805 (and tp!29216 (inv!922 setElem!805)))))

(declare-fun setRest!805 () (InoxSet Context!158))

(assert (=> setNonEmpty!805 (= setRest!786 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!805 true) setRest!805))))

(assert (= (and setNonEmpty!786 condSetEmpty!805) setIsEmpty!805))

(assert (= (and setNonEmpty!786 (not condSetEmpty!805)) setNonEmpty!805))

(declare-fun m!16157 () Bool)

(assert (=> setNonEmpty!805 m!16157))

(declare-fun condSetEmpty!806 () Bool)

(assert (=> setNonEmpty!780 (= condSetEmpty!806 (= setRest!780 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!806 () Bool)

(assert (=> setNonEmpty!780 (= tp!29158 setRes!806)))

(declare-fun setIsEmpty!806 () Bool)

(assert (=> setIsEmpty!806 setRes!806))

(declare-fun setNonEmpty!806 () Bool)

(declare-fun tp!29217 () Bool)

(declare-fun setElem!806 () Context!158)

(assert (=> setNonEmpty!806 (= setRes!806 (and tp!29217 (inv!922 setElem!806)))))

(declare-fun setRest!806 () (InoxSet Context!158))

(assert (=> setNonEmpty!806 (= setRest!780 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!806 true) setRest!806))))

(assert (= (and setNonEmpty!780 condSetEmpty!806) setIsEmpty!806))

(assert (= (and setNonEmpty!780 (not condSetEmpty!806)) setNonEmpty!806))

(declare-fun m!16159 () Bool)

(assert (=> setNonEmpty!806 m!16159))

(declare-fun b!42483 () Bool)

(declare-fun e!22742 () Bool)

(declare-fun setRes!807 () Bool)

(declare-fun tp!29218 () Bool)

(assert (=> b!42483 (= e!22742 (and setRes!807 tp!29218))))

(declare-fun condSetEmpty!807 () Bool)

(assert (=> b!42483 (= condSetEmpty!807 (= (_1!505 (_1!506 (h!6024 (t!16174 mapValue!762)))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!807 () Bool)

(assert (=> setIsEmpty!807 setRes!807))

(declare-fun setNonEmpty!807 () Bool)

(declare-fun tp!29219 () Bool)

(declare-fun setElem!807 () Context!158)

(assert (=> setNonEmpty!807 (= setRes!807 (and tp!29219 (inv!922 setElem!807)))))

(declare-fun setRest!807 () (InoxSet Context!158))

(assert (=> setNonEmpty!807 (= (_1!505 (_1!506 (h!6024 (t!16174 mapValue!762)))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!807 true) setRest!807))))

(assert (=> b!42245 (= tp!29198 e!22742)))

(assert (= (and b!42483 condSetEmpty!807) setIsEmpty!807))

(assert (= (and b!42483 (not condSetEmpty!807)) setNonEmpty!807))

(assert (= (and b!42245 ((_ is Cons!628) (t!16174 mapValue!762))) b!42483))

(declare-fun m!16161 () Bool)

(assert (=> setNonEmpty!807 m!16161))

(declare-fun b!42484 () Bool)

(declare-fun tp!29220 () Bool)

(declare-fun setRes!808 () Bool)

(declare-fun e!22743 () Bool)

(assert (=> b!42484 (= e!22743 (and (inv!922 (_1!509 (_1!510 (h!6027 (t!16177 mapDefault!753))))) setRes!808 tp!29220))))

(declare-fun condSetEmpty!808 () Bool)

(assert (=> b!42484 (= condSetEmpty!808 (= (_2!510 (h!6027 (t!16177 mapDefault!753))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!808 () Bool)

(assert (=> setIsEmpty!808 setRes!808))

(declare-fun setNonEmpty!808 () Bool)

(declare-fun tp!29221 () Bool)

(declare-fun setElem!808 () Context!158)

(assert (=> setNonEmpty!808 (= setRes!808 (and tp!29221 (inv!922 setElem!808)))))

(declare-fun setRest!808 () (InoxSet Context!158))

(assert (=> setNonEmpty!808 (= (_2!510 (h!6027 (t!16177 mapDefault!753))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!808 true) setRest!808))))

(assert (=> b!42251 (= tp!29207 e!22743)))

(assert (= (and b!42484 condSetEmpty!808) setIsEmpty!808))

(assert (= (and b!42484 (not condSetEmpty!808)) setNonEmpty!808))

(assert (= (and b!42251 ((_ is Cons!631) (t!16177 mapDefault!753))) b!42484))

(declare-fun m!16163 () Bool)

(assert (=> b!42484 m!16163))

(declare-fun m!16165 () Bool)

(assert (=> setNonEmpty!808 m!16165))

(declare-fun condSetEmpty!809 () Bool)

(assert (=> setNonEmpty!774 (= condSetEmpty!809 (= setRest!774 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!809 () Bool)

(assert (=> setNonEmpty!774 (= tp!29146 setRes!809)))

(declare-fun setIsEmpty!809 () Bool)

(assert (=> setIsEmpty!809 setRes!809))

(declare-fun setNonEmpty!809 () Bool)

(declare-fun tp!29222 () Bool)

(declare-fun setElem!809 () Context!158)

(assert (=> setNonEmpty!809 (= setRes!809 (and tp!29222 (inv!922 setElem!809)))))

(declare-fun setRest!809 () (InoxSet Context!158))

(assert (=> setNonEmpty!809 (= setRest!774 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!809 true) setRest!809))))

(assert (= (and setNonEmpty!774 condSetEmpty!809) setIsEmpty!809))

(assert (= (and setNonEmpty!774 (not condSetEmpty!809)) setNonEmpty!809))

(declare-fun m!16167 () Bool)

(assert (=> setNonEmpty!809 m!16167))

(declare-fun setRes!810 () Bool)

(declare-fun e!22747 () Bool)

(declare-fun tp!29223 () Bool)

(declare-fun b!42485 () Bool)

(assert (=> b!42485 (= e!22747 (and (inv!922 (_1!509 (_1!510 (h!6027 (t!16177 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))))))) setRes!810 tp!29223))))

(declare-fun condSetEmpty!810 () Bool)

(assert (=> b!42485 (= condSetEmpty!810 (= (_2!510 (h!6027 (t!16177 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!810 () Bool)

(assert (=> setIsEmpty!810 setRes!810))

(declare-fun setNonEmpty!810 () Bool)

(declare-fun tp!29224 () Bool)

(declare-fun setElem!810 () Context!158)

(assert (=> setNonEmpty!810 (= setRes!810 (and tp!29224 (inv!922 setElem!810)))))

(declare-fun setRest!810 () (InoxSet Context!158))

(assert (=> setNonEmpty!810 (= (_2!510 (h!6027 (t!16177 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!810 true) setRest!810))))

(assert (=> b!42212 (= tp!29138 e!22747)))

(assert (= (and b!42485 condSetEmpty!810) setIsEmpty!810))

(assert (= (and b!42485 (not condSetEmpty!810)) setNonEmpty!810))

(assert (= (and b!42212 ((_ is Cons!631) (t!16177 (minValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))))) b!42485))

(declare-fun m!16169 () Bool)

(assert (=> b!42485 m!16169))

(declare-fun m!16171 () Bool)

(assert (=> setNonEmpty!810 m!16171))

(declare-fun condSetEmpty!811 () Bool)

(assert (=> setNonEmpty!789 (= condSetEmpty!811 (= setRest!789 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!811 () Bool)

(assert (=> setNonEmpty!789 (= tp!29183 setRes!811)))

(declare-fun setIsEmpty!811 () Bool)

(assert (=> setIsEmpty!811 setRes!811))

(declare-fun setNonEmpty!811 () Bool)

(declare-fun tp!29225 () Bool)

(declare-fun setElem!811 () Context!158)

(assert (=> setNonEmpty!811 (= setRes!811 (and tp!29225 (inv!922 setElem!811)))))

(declare-fun setRest!811 () (InoxSet Context!158))

(assert (=> setNonEmpty!811 (= setRest!789 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!811 true) setRest!811))))

(assert (= (and setNonEmpty!789 condSetEmpty!811) setIsEmpty!811))

(assert (= (and setNonEmpty!789 (not condSetEmpty!811)) setNonEmpty!811))

(declare-fun m!16173 () Bool)

(assert (=> setNonEmpty!811 m!16173))

(declare-fun tp!29227 () Bool)

(declare-fun b!42486 () Bool)

(declare-fun setRes!812 () Bool)

(declare-fun e!22751 () Bool)

(assert (=> b!42486 (= e!22751 (and (inv!922 (_2!507 (_1!508 (h!6026 (t!16176 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))))))) setRes!812 tp!29227))))

(declare-fun condSetEmpty!812 () Bool)

(assert (=> b!42486 (= condSetEmpty!812 (= (_2!508 (h!6026 (t!16176 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!812 () Bool)

(assert (=> setIsEmpty!812 setRes!812))

(declare-fun setNonEmpty!812 () Bool)

(declare-fun tp!29226 () Bool)

(declare-fun setElem!812 () Context!158)

(assert (=> setNonEmpty!812 (= setRes!812 (and tp!29226 (inv!922 setElem!812)))))

(declare-fun setRest!812 () (InoxSet Context!158))

(assert (=> setNonEmpty!812 (= (_2!508 (h!6026 (t!16176 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!812 true) setRest!812))))

(assert (=> b!42218 (= tp!29147 e!22751)))

(assert (= (and b!42486 condSetEmpty!812) setIsEmpty!812))

(assert (= (and b!42486 (not condSetEmpty!812)) setNonEmpty!812))

(assert (= (and b!42218 ((_ is Cons!630) (t!16176 (minValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))))) b!42486))

(declare-fun m!16175 () Bool)

(assert (=> b!42486 m!16175))

(declare-fun m!16177 () Bool)

(assert (=> setNonEmpty!812 m!16177))

(declare-fun b!42487 () Bool)

(declare-fun e!22755 () Bool)

(declare-fun setRes!813 () Bool)

(declare-fun tp!29228 () Bool)

(assert (=> b!42487 (= e!22755 (and setRes!813 tp!29228))))

(declare-fun condSetEmpty!813 () Bool)

(assert (=> b!42487 (= condSetEmpty!813 (= (_1!505 (_1!506 (h!6024 (t!16174 (zeroValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45)))))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!813 () Bool)

(assert (=> setIsEmpty!813 setRes!813))

(declare-fun setNonEmpty!813 () Bool)

(declare-fun tp!29229 () Bool)

(declare-fun setElem!813 () Context!158)

(assert (=> setNonEmpty!813 (= setRes!813 (and tp!29229 (inv!922 setElem!813)))))

(declare-fun setRest!813 () (InoxSet Context!158))

(assert (=> setNonEmpty!813 (= (_1!505 (_1!506 (h!6024 (t!16174 (zeroValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45)))))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!813 true) setRest!813))))

(assert (=> b!42237 (= tp!29182 e!22755)))

(assert (= (and b!42487 condSetEmpty!813) setIsEmpty!813))

(assert (= (and b!42487 (not condSetEmpty!813)) setNonEmpty!813))

(assert (= (and b!42237 ((_ is Cons!628) (t!16174 (zeroValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))))) b!42487))

(declare-fun m!16179 () Bool)

(assert (=> setNonEmpty!813 m!16179))

(declare-fun setIsEmpty!814 () Bool)

(declare-fun setRes!814 () Bool)

(assert (=> setIsEmpty!814 setRes!814))

(declare-fun condMapEmpty!763 () Bool)

(declare-fun mapDefault!763 () List!633)

(assert (=> mapNonEmpty!756 (= condMapEmpty!763 (= mapRest!756 ((as const (Array (_ BitVec 32) List!633)) mapDefault!763)))))

(declare-fun e!22757 () Bool)

(declare-fun mapRes!763 () Bool)

(assert (=> mapNonEmpty!756 (= tp!29159 (and e!22757 mapRes!763))))

(declare-fun setIsEmpty!815 () Bool)

(declare-fun setRes!815 () Bool)

(assert (=> setIsEmpty!815 setRes!815))

(declare-fun mapNonEmpty!763 () Bool)

(declare-fun tp!29231 () Bool)

(declare-fun e!22756 () Bool)

(assert (=> mapNonEmpty!763 (= mapRes!763 (and tp!29231 e!22756))))

(declare-fun mapRest!763 () (Array (_ BitVec 32) List!633))

(declare-fun mapValue!763 () List!633)

(declare-fun mapKey!763 () (_ BitVec 32))

(assert (=> mapNonEmpty!763 (= mapRest!756 (store mapRest!763 mapKey!763 mapValue!763))))

(declare-fun setNonEmpty!814 () Bool)

(declare-fun tp!29233 () Bool)

(declare-fun setElem!815 () Context!158)

(assert (=> setNonEmpty!814 (= setRes!814 (and tp!29233 (inv!922 setElem!815)))))

(declare-fun setRest!814 () (InoxSet Context!158))

(assert (=> setNonEmpty!814 (= (_2!510 (h!6027 mapValue!763)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!815 true) setRest!814))))

(declare-fun tp!29234 () Bool)

(declare-fun b!42488 () Bool)

(assert (=> b!42488 (= e!22756 (and (inv!922 (_1!509 (_1!510 (h!6027 mapValue!763)))) setRes!814 tp!29234))))

(declare-fun condSetEmpty!815 () Bool)

(assert (=> b!42488 (= condSetEmpty!815 (= (_2!510 (h!6027 mapValue!763)) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setNonEmpty!815 () Bool)

(declare-fun tp!29230 () Bool)

(declare-fun setElem!814 () Context!158)

(assert (=> setNonEmpty!815 (= setRes!815 (and tp!29230 (inv!922 setElem!814)))))

(declare-fun setRest!815 () (InoxSet Context!158))

(assert (=> setNonEmpty!815 (= (_2!510 (h!6027 mapDefault!763)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!814 true) setRest!815))))

(declare-fun mapIsEmpty!763 () Bool)

(assert (=> mapIsEmpty!763 mapRes!763))

(declare-fun b!42489 () Bool)

(declare-fun tp!29232 () Bool)

(assert (=> b!42489 (= e!22757 (and (inv!922 (_1!509 (_1!510 (h!6027 mapDefault!763)))) setRes!815 tp!29232))))

(declare-fun condSetEmpty!814 () Bool)

(assert (=> b!42489 (= condSetEmpty!814 (= (_2!510 (h!6027 mapDefault!763)) ((as const (Array Context!158 Bool)) false)))))

(assert (= (and mapNonEmpty!756 condMapEmpty!763) mapIsEmpty!763))

(assert (= (and mapNonEmpty!756 (not condMapEmpty!763)) mapNonEmpty!763))

(assert (= (and b!42488 condSetEmpty!815) setIsEmpty!814))

(assert (= (and b!42488 (not condSetEmpty!815)) setNonEmpty!814))

(assert (= (and mapNonEmpty!763 ((_ is Cons!631) mapValue!763)) b!42488))

(assert (= (and b!42489 condSetEmpty!814) setIsEmpty!815))

(assert (= (and b!42489 (not condSetEmpty!814)) setNonEmpty!815))

(assert (= (and mapNonEmpty!756 ((_ is Cons!631) mapDefault!763)) b!42489))

(declare-fun m!16181 () Bool)

(assert (=> b!42488 m!16181))

(declare-fun m!16183 () Bool)

(assert (=> setNonEmpty!815 m!16183))

(declare-fun m!16185 () Bool)

(assert (=> b!42489 m!16185))

(declare-fun m!16187 () Bool)

(assert (=> setNonEmpty!814 m!16187))

(declare-fun m!16189 () Bool)

(assert (=> mapNonEmpty!763 m!16189))

(declare-fun e!22762 () Bool)

(declare-fun setRes!816 () Bool)

(declare-fun tp!29236 () Bool)

(declare-fun b!42490 () Bool)

(assert (=> b!42490 (= e!22762 (and (inv!922 (_2!507 (_1!508 (h!6026 (t!16176 mapDefault!752))))) setRes!816 tp!29236))))

(declare-fun condSetEmpty!816 () Bool)

(assert (=> b!42490 (= condSetEmpty!816 (= (_2!508 (h!6026 (t!16176 mapDefault!752))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!816 () Bool)

(assert (=> setIsEmpty!816 setRes!816))

(declare-fun setNonEmpty!816 () Bool)

(declare-fun tp!29235 () Bool)

(declare-fun setElem!816 () Context!158)

(assert (=> setNonEmpty!816 (= setRes!816 (and tp!29235 (inv!922 setElem!816)))))

(declare-fun setRest!816 () (InoxSet Context!158))

(assert (=> setNonEmpty!816 (= (_2!508 (h!6026 (t!16176 mapDefault!752))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!816 true) setRest!816))))

(assert (=> b!42248 (= tp!29204 e!22762)))

(assert (= (and b!42490 condSetEmpty!816) setIsEmpty!816))

(assert (= (and b!42490 (not condSetEmpty!816)) setNonEmpty!816))

(assert (= (and b!42248 ((_ is Cons!630) (t!16176 mapDefault!752))) b!42490))

(declare-fun m!16191 () Bool)

(assert (=> b!42490 m!16191))

(declare-fun m!16193 () Bool)

(assert (=> setNonEmpty!816 m!16193))

(declare-fun condSetEmpty!817 () Bool)

(assert (=> setNonEmpty!798 (= condSetEmpty!817 (= setRest!798 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!817 () Bool)

(assert (=> setNonEmpty!798 (= tp!29203 setRes!817)))

(declare-fun setIsEmpty!817 () Bool)

(assert (=> setIsEmpty!817 setRes!817))

(declare-fun setNonEmpty!817 () Bool)

(declare-fun tp!29237 () Bool)

(declare-fun setElem!817 () Context!158)

(assert (=> setNonEmpty!817 (= setRes!817 (and tp!29237 (inv!922 setElem!817)))))

(declare-fun setRest!817 () (InoxSet Context!158))

(assert (=> setNonEmpty!817 (= setRest!798 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!817 true) setRest!817))))

(assert (= (and setNonEmpty!798 condSetEmpty!817) setIsEmpty!817))

(assert (= (and setNonEmpty!798 (not condSetEmpty!817)) setNonEmpty!817))

(declare-fun m!16195 () Bool)

(assert (=> setNonEmpty!817 m!16195))

(declare-fun condSetEmpty!818 () Bool)

(assert (=> setNonEmpty!790 (= condSetEmpty!818 (= setRest!790 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!818 () Bool)

(assert (=> setNonEmpty!790 (= tp!29185 setRes!818)))

(declare-fun setIsEmpty!818 () Bool)

(assert (=> setIsEmpty!818 setRes!818))

(declare-fun setNonEmpty!818 () Bool)

(declare-fun tp!29238 () Bool)

(declare-fun setElem!818 () Context!158)

(assert (=> setNonEmpty!818 (= setRes!818 (and tp!29238 (inv!922 setElem!818)))))

(declare-fun setRest!818 () (InoxSet Context!158))

(assert (=> setNonEmpty!818 (= setRest!790 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!818 true) setRest!818))))

(assert (= (and setNonEmpty!790 condSetEmpty!818) setIsEmpty!818))

(assert (= (and setNonEmpty!790 (not condSetEmpty!818)) setNonEmpty!818))

(declare-fun m!16197 () Bool)

(assert (=> setNonEmpty!818 m!16197))

(declare-fun b!42491 () Bool)

(declare-fun e!22768 () Bool)

(declare-fun setRes!819 () Bool)

(declare-fun tp!29239 () Bool)

(assert (=> b!42491 (= e!22768 (and setRes!819 tp!29239))))

(declare-fun condSetEmpty!819 () Bool)

(assert (=> b!42491 (= condSetEmpty!819 (= (_1!505 (_1!506 (h!6024 (t!16174 (minValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45)))))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!819 () Bool)

(assert (=> setIsEmpty!819 setRes!819))

(declare-fun setNonEmpty!819 () Bool)

(declare-fun tp!29240 () Bool)

(declare-fun setElem!819 () Context!158)

(assert (=> setNonEmpty!819 (= setRes!819 (and tp!29240 (inv!922 setElem!819)))))

(declare-fun setRest!819 () (InoxSet Context!158))

(assert (=> setNonEmpty!819 (= (_1!505 (_1!506 (h!6024 (t!16174 (minValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45)))))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!819 true) setRest!819))))

(assert (=> b!42238 (= tp!29184 e!22768)))

(assert (= (and b!42491 condSetEmpty!819) setIsEmpty!819))

(assert (= (and b!42491 (not condSetEmpty!819)) setNonEmpty!819))

(assert (= (and b!42238 ((_ is Cons!628) (t!16174 (minValue!462 (v!12387 (underlying!607 (v!12388 (underlying!608 (cache!687 cacheFurthestNullable!45))))))))) b!42491))

(declare-fun m!16199 () Bool)

(assert (=> setNonEmpty!819 m!16199))

(declare-fun condSetEmpty!820 () Bool)

(assert (=> setNonEmpty!769 (= condSetEmpty!820 (= setRest!769 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!820 () Bool)

(assert (=> setNonEmpty!769 (= tp!29137 setRes!820)))

(declare-fun setIsEmpty!820 () Bool)

(assert (=> setIsEmpty!820 setRes!820))

(declare-fun setNonEmpty!820 () Bool)

(declare-fun tp!29241 () Bool)

(declare-fun setElem!820 () Context!158)

(assert (=> setNonEmpty!820 (= setRes!820 (and tp!29241 (inv!922 setElem!820)))))

(declare-fun setRest!820 () (InoxSet Context!158))

(assert (=> setNonEmpty!820 (= setRest!769 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!820 true) setRest!820))))

(assert (= (and setNonEmpty!769 condSetEmpty!820) setIsEmpty!820))

(assert (= (and setNonEmpty!769 (not condSetEmpty!820)) setNonEmpty!820))

(declare-fun m!16201 () Bool)

(assert (=> setNonEmpty!820 m!16201))

(declare-fun b!42492 () Bool)

(declare-fun e!22772 () Bool)

(declare-fun setRes!822 () Bool)

(declare-fun tp!29244 () Bool)

(assert (=> b!42492 (= e!22772 (and setRes!822 tp!29244))))

(declare-fun condSetEmpty!821 () Bool)

(declare-fun mapValue!764 () List!630)

(assert (=> b!42492 (= condSetEmpty!821 (= (_1!505 (_1!506 (h!6024 mapValue!764))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun b!42493 () Bool)

(declare-fun e!22770 () Bool)

(declare-fun setRes!821 () Bool)

(declare-fun tp!29243 () Bool)

(assert (=> b!42493 (= e!22770 (and setRes!821 tp!29243))))

(declare-fun condSetEmpty!822 () Bool)

(declare-fun mapDefault!764 () List!630)

(assert (=> b!42493 (= condSetEmpty!822 (= (_1!505 (_1!506 (h!6024 mapDefault!764))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!821 () Bool)

(assert (=> setIsEmpty!821 setRes!821))

(declare-fun condMapEmpty!764 () Bool)

(assert (=> mapNonEmpty!762 (= condMapEmpty!764 (= mapRest!762 ((as const (Array (_ BitVec 32) List!630)) mapDefault!764)))))

(declare-fun mapRes!764 () Bool)

(assert (=> mapNonEmpty!762 (= tp!29199 (and e!22770 mapRes!764))))

(declare-fun setNonEmpty!821 () Bool)

(declare-fun tp!29242 () Bool)

(declare-fun setElem!821 () Context!158)

(assert (=> setNonEmpty!821 (= setRes!822 (and tp!29242 (inv!922 setElem!821)))))

(declare-fun setRest!821 () (InoxSet Context!158))

(assert (=> setNonEmpty!821 (= (_1!505 (_1!506 (h!6024 mapValue!764))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!821 true) setRest!821))))

(declare-fun mapIsEmpty!764 () Bool)

(assert (=> mapIsEmpty!764 mapRes!764))

(declare-fun setIsEmpty!822 () Bool)

(assert (=> setIsEmpty!822 setRes!822))

(declare-fun setNonEmpty!822 () Bool)

(declare-fun tp!29246 () Bool)

(declare-fun setElem!822 () Context!158)

(assert (=> setNonEmpty!822 (= setRes!821 (and tp!29246 (inv!922 setElem!822)))))

(declare-fun setRest!822 () (InoxSet Context!158))

(assert (=> setNonEmpty!822 (= (_1!505 (_1!506 (h!6024 mapDefault!764))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!822 true) setRest!822))))

(declare-fun mapNonEmpty!764 () Bool)

(declare-fun tp!29245 () Bool)

(assert (=> mapNonEmpty!764 (= mapRes!764 (and tp!29245 e!22772))))

(declare-fun mapRest!764 () (Array (_ BitVec 32) List!630))

(declare-fun mapKey!764 () (_ BitVec 32))

(assert (=> mapNonEmpty!764 (= mapRest!762 (store mapRest!764 mapKey!764 mapValue!764))))

(assert (= (and mapNonEmpty!762 condMapEmpty!764) mapIsEmpty!764))

(assert (= (and mapNonEmpty!762 (not condMapEmpty!764)) mapNonEmpty!764))

(assert (= (and b!42492 condSetEmpty!821) setIsEmpty!822))

(assert (= (and b!42492 (not condSetEmpty!821)) setNonEmpty!821))

(assert (= (and mapNonEmpty!764 ((_ is Cons!628) mapValue!764)) b!42492))

(assert (= (and b!42493 condSetEmpty!822) setIsEmpty!821))

(assert (= (and b!42493 (not condSetEmpty!822)) setNonEmpty!822))

(assert (= (and mapNonEmpty!762 ((_ is Cons!628) mapDefault!764)) b!42493))

(declare-fun m!16203 () Bool)

(assert (=> setNonEmpty!821 m!16203))

(declare-fun m!16205 () Bool)

(assert (=> setNonEmpty!822 m!16205))

(declare-fun m!16207 () Bool)

(assert (=> mapNonEmpty!764 m!16207))

(declare-fun tp!29247 () Bool)

(declare-fun b!42494 () Bool)

(declare-fun tp!29248 () Bool)

(declare-fun e!22774 () Bool)

(assert (=> b!42494 (= e!22774 (and (inv!914 (left!527 (left!527 (c!15876 input!525)))) tp!29247 (inv!914 (right!857 (left!527 (c!15876 input!525)))) tp!29248))))

(declare-fun b!42495 () Bool)

(assert (=> b!42495 (= e!22774 (inv!921 (xs!2694 (left!527 (c!15876 input!525)))))))

(assert (=> b!42249 (= tp!29205 (and (inv!914 (left!527 (c!15876 input!525))) e!22774))))

(assert (= (and b!42249 ((_ is Node!115) (left!527 (c!15876 input!525)))) b!42494))

(assert (= (and b!42249 ((_ is Leaf!304) (left!527 (c!15876 input!525)))) b!42495))

(declare-fun m!16209 () Bool)

(assert (=> b!42494 m!16209))

(declare-fun m!16211 () Bool)

(assert (=> b!42494 m!16211))

(declare-fun m!16213 () Bool)

(assert (=> b!42495 m!16213))

(assert (=> b!42249 m!15668))

(declare-fun e!22776 () Bool)

(declare-fun b!42496 () Bool)

(declare-fun tp!29250 () Bool)

(declare-fun tp!29249 () Bool)

(assert (=> b!42496 (= e!22776 (and (inv!914 (left!527 (right!857 (c!15876 input!525)))) tp!29249 (inv!914 (right!857 (right!857 (c!15876 input!525)))) tp!29250))))

(declare-fun b!42497 () Bool)

(assert (=> b!42497 (= e!22776 (inv!921 (xs!2694 (right!857 (c!15876 input!525)))))))

(assert (=> b!42249 (= tp!29206 (and (inv!914 (right!857 (c!15876 input!525))) e!22776))))

(assert (= (and b!42249 ((_ is Node!115) (right!857 (c!15876 input!525)))) b!42496))

(assert (= (and b!42249 ((_ is Leaf!304) (right!857 (c!15876 input!525)))) b!42497))

(declare-fun m!16215 () Bool)

(assert (=> b!42496 m!16215))

(declare-fun m!16217 () Bool)

(assert (=> b!42496 m!16217))

(declare-fun m!16219 () Bool)

(assert (=> b!42497 m!16219))

(assert (=> b!42249 m!15670))

(declare-fun tp!29252 () Bool)

(declare-fun setRes!823 () Bool)

(declare-fun b!42498 () Bool)

(declare-fun e!22778 () Bool)

(assert (=> b!42498 (= e!22778 (and (inv!922 (_2!507 (_1!508 (h!6026 (t!16176 mapValue!759))))) setRes!823 tp!29252))))

(declare-fun condSetEmpty!823 () Bool)

(assert (=> b!42498 (= condSetEmpty!823 (= (_2!508 (h!6026 (t!16176 mapValue!759))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!823 () Bool)

(assert (=> setIsEmpty!823 setRes!823))

(declare-fun setNonEmpty!823 () Bool)

(declare-fun tp!29251 () Bool)

(declare-fun setElem!823 () Context!158)

(assert (=> setNonEmpty!823 (= setRes!823 (and tp!29251 (inv!922 setElem!823)))))

(declare-fun setRest!823 () (InoxSet Context!158))

(assert (=> setNonEmpty!823 (= (_2!508 (h!6026 (t!16176 mapValue!759))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!823 true) setRest!823))))

(assert (=> b!42234 (= tp!29177 e!22778)))

(assert (= (and b!42498 condSetEmpty!823) setIsEmpty!823))

(assert (= (and b!42498 (not condSetEmpty!823)) setNonEmpty!823))

(assert (= (and b!42234 ((_ is Cons!630) (t!16176 mapValue!759))) b!42498))

(declare-fun m!16221 () Bool)

(assert (=> b!42498 m!16221))

(declare-fun m!16223 () Bool)

(assert (=> setNonEmpty!823 m!16223))

(declare-fun tp!29254 () Bool)

(declare-fun setRes!824 () Bool)

(declare-fun e!22781 () Bool)

(declare-fun b!42499 () Bool)

(assert (=> b!42499 (= e!22781 (and (inv!922 (_2!507 (_1!508 (h!6026 (t!16176 mapValue!751))))) setRes!824 tp!29254))))

(declare-fun condSetEmpty!824 () Bool)

(assert (=> b!42499 (= condSetEmpty!824 (= (_2!508 (h!6026 (t!16176 mapValue!751))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!824 () Bool)

(assert (=> setIsEmpty!824 setRes!824))

(declare-fun setNonEmpty!824 () Bool)

(declare-fun tp!29253 () Bool)

(declare-fun setElem!824 () Context!158)

(assert (=> setNonEmpty!824 (= setRes!824 (and tp!29253 (inv!922 setElem!824)))))

(declare-fun setRest!824 () (InoxSet Context!158))

(assert (=> setNonEmpty!824 (= (_2!508 (h!6026 (t!16176 mapValue!751))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!824 true) setRest!824))))

(assert (=> b!42236 (= tp!29181 e!22781)))

(assert (= (and b!42499 condSetEmpty!824) setIsEmpty!824))

(assert (= (and b!42499 (not condSetEmpty!824)) setNonEmpty!824))

(assert (= (and b!42236 ((_ is Cons!630) (t!16176 mapValue!751))) b!42499))

(declare-fun m!16225 () Bool)

(assert (=> b!42499 m!16225))

(declare-fun m!16227 () Bool)

(assert (=> setNonEmpty!824 m!16227))

(declare-fun b!42500 () Bool)

(declare-fun e!22785 () Bool)

(declare-fun setRes!825 () Bool)

(declare-fun tp!29255 () Bool)

(assert (=> b!42500 (= e!22785 (and setRes!825 tp!29255))))

(declare-fun condSetEmpty!825 () Bool)

(assert (=> b!42500 (= condSetEmpty!825 (= (_1!505 (_1!506 (h!6024 (t!16174 mapDefault!751)))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!825 () Bool)

(assert (=> setIsEmpty!825 setRes!825))

(declare-fun setNonEmpty!825 () Bool)

(declare-fun tp!29256 () Bool)

(declare-fun setElem!825 () Context!158)

(assert (=> setNonEmpty!825 (= setRes!825 (and tp!29256 (inv!922 setElem!825)))))

(declare-fun setRest!825 () (InoxSet Context!158))

(assert (=> setNonEmpty!825 (= (_1!505 (_1!506 (h!6024 (t!16174 mapDefault!751)))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!825 true) setRest!825))))

(assert (=> b!42206 (= tp!29130 e!22785)))

(assert (= (and b!42500 condSetEmpty!825) setIsEmpty!825))

(assert (= (and b!42500 (not condSetEmpty!825)) setNonEmpty!825))

(assert (= (and b!42206 ((_ is Cons!628) (t!16174 mapDefault!751))) b!42500))

(declare-fun m!16229 () Bool)

(assert (=> setNonEmpty!825 m!16229))

(declare-fun condSetEmpty!826 () Bool)

(assert (=> setNonEmpty!796 (= condSetEmpty!826 (= setRest!796 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!826 () Bool)

(assert (=> setNonEmpty!796 (= tp!29200 setRes!826)))

(declare-fun setIsEmpty!826 () Bool)

(assert (=> setIsEmpty!826 setRes!826))

(declare-fun setNonEmpty!826 () Bool)

(declare-fun tp!29257 () Bool)

(declare-fun setElem!826 () Context!158)

(assert (=> setNonEmpty!826 (= setRes!826 (and tp!29257 (inv!922 setElem!826)))))

(declare-fun setRest!826 () (InoxSet Context!158))

(assert (=> setNonEmpty!826 (= setRest!796 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!826 true) setRest!826))))

(assert (= (and setNonEmpty!796 condSetEmpty!826) setIsEmpty!826))

(assert (= (and setNonEmpty!796 (not condSetEmpty!826)) setNonEmpty!826))

(declare-fun m!16231 () Bool)

(assert (=> setNonEmpty!826 m!16231))

(declare-fun condSetEmpty!827 () Bool)

(assert (=> setNonEmpty!788 (= condSetEmpty!827 (= setRest!788 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!827 () Bool)

(assert (=> setNonEmpty!788 (= tp!29180 setRes!827)))

(declare-fun setIsEmpty!827 () Bool)

(assert (=> setIsEmpty!827 setRes!827))

(declare-fun setNonEmpty!827 () Bool)

(declare-fun tp!29258 () Bool)

(declare-fun setElem!827 () Context!158)

(assert (=> setNonEmpty!827 (= setRes!827 (and tp!29258 (inv!922 setElem!827)))))

(declare-fun setRest!827 () (InoxSet Context!158))

(assert (=> setNonEmpty!827 (= setRest!788 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!827 true) setRest!827))))

(assert (= (and setNonEmpty!788 condSetEmpty!827) setIsEmpty!827))

(assert (= (and setNonEmpty!788 (not condSetEmpty!827)) setNonEmpty!827))

(declare-fun m!16233 () Bool)

(assert (=> setNonEmpty!827 m!16233))

(declare-fun condSetEmpty!828 () Bool)

(assert (=> setNonEmpty!766 (= condSetEmpty!828 (= setRest!766 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!828 () Bool)

(assert (=> setNonEmpty!766 (= tp!29131 setRes!828)))

(declare-fun setIsEmpty!828 () Bool)

(assert (=> setIsEmpty!828 setRes!828))

(declare-fun setNonEmpty!828 () Bool)

(declare-fun tp!29259 () Bool)

(declare-fun setElem!828 () Context!158)

(assert (=> setNonEmpty!828 (= setRes!828 (and tp!29259 (inv!922 setElem!828)))))

(declare-fun setRest!828 () (InoxSet Context!158))

(assert (=> setNonEmpty!828 (= setRest!766 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!828 true) setRest!828))))

(assert (= (and setNonEmpty!766 condSetEmpty!828) setIsEmpty!828))

(assert (= (and setNonEmpty!766 (not condSetEmpty!828)) setNonEmpty!828))

(declare-fun m!16235 () Bool)

(assert (=> setNonEmpty!828 m!16235))

(declare-fun b!42501 () Bool)

(declare-fun tp!29261 () Bool)

(declare-fun setRes!829 () Bool)

(declare-fun e!22789 () Bool)

(assert (=> b!42501 (= e!22789 (and (inv!922 (_2!507 (_1!508 (h!6026 (t!16176 mapDefault!759))))) setRes!829 tp!29261))))

(declare-fun condSetEmpty!829 () Bool)

(assert (=> b!42501 (= condSetEmpty!829 (= (_2!508 (h!6026 (t!16176 mapDefault!759))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!829 () Bool)

(assert (=> setIsEmpty!829 setRes!829))

(declare-fun setNonEmpty!829 () Bool)

(declare-fun tp!29260 () Bool)

(declare-fun setElem!829 () Context!158)

(assert (=> setNonEmpty!829 (= setRes!829 (and tp!29260 (inv!922 setElem!829)))))

(declare-fun setRest!829 () (InoxSet Context!158))

(assert (=> setNonEmpty!829 (= (_2!508 (h!6026 (t!16176 mapDefault!759))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!829 true) setRest!829))))

(assert (=> b!42235 (= tp!29175 e!22789)))

(assert (= (and b!42501 condSetEmpty!829) setIsEmpty!829))

(assert (= (and b!42501 (not condSetEmpty!829)) setNonEmpty!829))

(assert (= (and b!42235 ((_ is Cons!630) (t!16176 mapDefault!759))) b!42501))

(declare-fun m!16237 () Bool)

(assert (=> b!42501 m!16237))

(declare-fun m!16239 () Bool)

(assert (=> setNonEmpty!829 m!16239))

(declare-fun condSetEmpty!830 () Bool)

(assert (=> setNonEmpty!773 (= condSetEmpty!830 (= setRest!773 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!830 () Bool)

(assert (=> setNonEmpty!773 (= tp!29144 setRes!830)))

(declare-fun setIsEmpty!830 () Bool)

(assert (=> setIsEmpty!830 setRes!830))

(declare-fun setNonEmpty!830 () Bool)

(declare-fun tp!29262 () Bool)

(declare-fun setElem!830 () Context!158)

(assert (=> setNonEmpty!830 (= setRes!830 (and tp!29262 (inv!922 setElem!830)))))

(declare-fun setRest!830 () (InoxSet Context!158))

(assert (=> setNonEmpty!830 (= setRest!773 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!830 true) setRest!830))))

(assert (= (and setNonEmpty!773 condSetEmpty!830) setIsEmpty!830))

(assert (= (and setNonEmpty!773 (not condSetEmpty!830)) setNonEmpty!830))

(declare-fun m!16241 () Bool)

(assert (=> setNonEmpty!830 m!16241))

(declare-fun e!22793 () Bool)

(declare-fun b!42502 () Bool)

(declare-fun tp!29263 () Bool)

(declare-fun setRes!831 () Bool)

(assert (=> b!42502 (= e!22793 (and (inv!922 (_1!509 (_1!510 (h!6027 (t!16177 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))))))) setRes!831 tp!29263))))

(declare-fun condSetEmpty!831 () Bool)

(assert (=> b!42502 (= condSetEmpty!831 (= (_2!510 (h!6027 (t!16177 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!831 () Bool)

(assert (=> setIsEmpty!831 setRes!831))

(declare-fun setNonEmpty!831 () Bool)

(declare-fun tp!29264 () Bool)

(declare-fun setElem!831 () Context!158)

(assert (=> setNonEmpty!831 (= setRes!831 (and tp!29264 (inv!922 setElem!831)))))

(declare-fun setRest!831 () (InoxSet Context!158))

(assert (=> setNonEmpty!831 (= (_2!510 (h!6027 (t!16177 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!831 true) setRest!831))))

(assert (=> b!42211 (= tp!29136 e!22793)))

(assert (= (and b!42502 condSetEmpty!831) setIsEmpty!831))

(assert (= (and b!42502 (not condSetEmpty!831)) setNonEmpty!831))

(assert (= (and b!42211 ((_ is Cons!631) (t!16177 (zeroValue!464 (v!12391 (underlying!611 (v!12392 (underlying!612 (cache!689 cacheUp!320))))))))) b!42502))

(declare-fun m!16243 () Bool)

(assert (=> b!42502 m!16243))

(declare-fun m!16245 () Bool)

(assert (=> setNonEmpty!831 m!16245))

(declare-fun condSetEmpty!832 () Bool)

(assert (=> setNonEmpty!799 (= condSetEmpty!832 (= setRest!799 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!832 () Bool)

(assert (=> setNonEmpty!799 (= tp!29208 setRes!832)))

(declare-fun setIsEmpty!832 () Bool)

(assert (=> setIsEmpty!832 setRes!832))

(declare-fun setNonEmpty!832 () Bool)

(declare-fun tp!29265 () Bool)

(declare-fun setElem!832 () Context!158)

(assert (=> setNonEmpty!832 (= setRes!832 (and tp!29265 (inv!922 setElem!832)))))

(declare-fun setRest!832 () (InoxSet Context!158))

(assert (=> setNonEmpty!832 (= setRest!799 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!832 true) setRest!832))))

(assert (= (and setNonEmpty!799 condSetEmpty!832) setIsEmpty!832))

(assert (= (and setNonEmpty!799 (not condSetEmpty!832)) setNonEmpty!832))

(declare-fun m!16247 () Bool)

(assert (=> setNonEmpty!832 m!16247))

(declare-fun condSetEmpty!833 () Bool)

(assert (=> setNonEmpty!770 (= condSetEmpty!833 (= setRest!770 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!833 () Bool)

(assert (=> setNonEmpty!770 (= tp!29139 setRes!833)))

(declare-fun setIsEmpty!833 () Bool)

(assert (=> setIsEmpty!833 setRes!833))

(declare-fun setNonEmpty!833 () Bool)

(declare-fun tp!29266 () Bool)

(declare-fun setElem!833 () Context!158)

(assert (=> setNonEmpty!833 (= setRes!833 (and tp!29266 (inv!922 setElem!833)))))

(declare-fun setRest!833 () (InoxSet Context!158))

(assert (=> setNonEmpty!833 (= setRest!770 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!833 true) setRest!833))))

(assert (= (and setNonEmpty!770 condSetEmpty!833) setIsEmpty!833))

(assert (= (and setNonEmpty!770 (not condSetEmpty!833)) setNonEmpty!833))

(declare-fun m!16249 () Bool)

(assert (=> setNonEmpty!833 m!16249))

(declare-fun condSetEmpty!834 () Bool)

(assert (=> setNonEmpty!787 (= condSetEmpty!834 (= setRest!787 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!834 () Bool)

(assert (=> setNonEmpty!787 (= tp!29179 setRes!834)))

(declare-fun setIsEmpty!834 () Bool)

(assert (=> setIsEmpty!834 setRes!834))

(declare-fun setNonEmpty!834 () Bool)

(declare-fun tp!29267 () Bool)

(declare-fun setElem!834 () Context!158)

(assert (=> setNonEmpty!834 (= setRes!834 (and tp!29267 (inv!922 setElem!834)))))

(declare-fun setRest!834 () (InoxSet Context!158))

(assert (=> setNonEmpty!834 (= setRest!787 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!834 true) setRest!834))))

(assert (= (and setNonEmpty!787 condSetEmpty!834) setIsEmpty!834))

(assert (= (and setNonEmpty!787 (not condSetEmpty!834)) setNonEmpty!834))

(declare-fun m!16251 () Bool)

(assert (=> setNonEmpty!834 m!16251))

(declare-fun b!42503 () Bool)

(declare-fun e!22800 () Bool)

(declare-fun setRes!835 () Bool)

(declare-fun tp!29268 () Bool)

(assert (=> b!42503 (= e!22800 (and setRes!835 tp!29268))))

(declare-fun condSetEmpty!835 () Bool)

(assert (=> b!42503 (= condSetEmpty!835 (= (_1!505 (_1!506 (h!6024 (t!16174 mapDefault!762)))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!835 () Bool)

(assert (=> setIsEmpty!835 setRes!835))

(declare-fun setNonEmpty!835 () Bool)

(declare-fun tp!29269 () Bool)

(declare-fun setElem!835 () Context!158)

(assert (=> setNonEmpty!835 (= setRes!835 (and tp!29269 (inv!922 setElem!835)))))

(declare-fun setRest!835 () (InoxSet Context!158))

(assert (=> setNonEmpty!835 (= (_1!505 (_1!506 (h!6024 (t!16174 mapDefault!762)))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!835 true) setRest!835))))

(assert (=> b!42246 (= tp!29197 e!22800)))

(assert (= (and b!42503 condSetEmpty!835) setIsEmpty!835))

(assert (= (and b!42503 (not condSetEmpty!835)) setNonEmpty!835))

(assert (= (and b!42246 ((_ is Cons!628) (t!16174 mapDefault!762))) b!42503))

(declare-fun m!16253 () Bool)

(assert (=> setNonEmpty!835 m!16253))

(declare-fun e!22801 () Bool)

(declare-fun setRes!836 () Bool)

(declare-fun b!42504 () Bool)

(declare-fun tp!29270 () Bool)

(assert (=> b!42504 (= e!22801 (and (inv!922 (_1!509 (_1!510 (h!6027 (t!16177 mapValue!752))))) setRes!836 tp!29270))))

(declare-fun condSetEmpty!836 () Bool)

(assert (=> b!42504 (= condSetEmpty!836 (= (_2!510 (h!6027 (t!16177 mapValue!752))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!836 () Bool)

(assert (=> setIsEmpty!836 setRes!836))

(declare-fun setNonEmpty!836 () Bool)

(declare-fun tp!29271 () Bool)

(declare-fun setElem!836 () Context!158)

(assert (=> setNonEmpty!836 (= setRes!836 (and tp!29271 (inv!922 setElem!836)))))

(declare-fun setRest!836 () (InoxSet Context!158))

(assert (=> setNonEmpty!836 (= (_2!510 (h!6027 (t!16177 mapValue!752))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!836 true) setRest!836))))

(assert (=> b!42227 (= tp!29163 e!22801)))

(assert (= (and b!42504 condSetEmpty!836) setIsEmpty!836))

(assert (= (and b!42504 (not condSetEmpty!836)) setNonEmpty!836))

(assert (= (and b!42227 ((_ is Cons!631) (t!16177 mapValue!752))) b!42504))

(declare-fun m!16255 () Bool)

(assert (=> b!42504 m!16255))

(declare-fun m!16257 () Bool)

(assert (=> setNonEmpty!836 m!16257))

(declare-fun tp!29273 () Bool)

(declare-fun b!42505 () Bool)

(declare-fun setRes!837 () Bool)

(declare-fun e!22804 () Bool)

(assert (=> b!42505 (= e!22804 (and (inv!922 (_2!507 (_1!508 (h!6026 (t!16176 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))))))) setRes!837 tp!29273))))

(declare-fun condSetEmpty!837 () Bool)

(assert (=> b!42505 (= condSetEmpty!837 (= (_2!508 (h!6026 (t!16176 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!837 () Bool)

(assert (=> setIsEmpty!837 setRes!837))

(declare-fun setNonEmpty!837 () Bool)

(declare-fun tp!29272 () Bool)

(declare-fun setElem!837 () Context!158)

(assert (=> setNonEmpty!837 (= setRes!837 (and tp!29272 (inv!922 setElem!837)))))

(declare-fun setRest!837 () (InoxSet Context!158))

(assert (=> setNonEmpty!837 (= (_2!508 (h!6026 (t!16176 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!837 true) setRest!837))))

(assert (=> b!42217 (= tp!29145 e!22804)))

(assert (= (and b!42505 condSetEmpty!837) setIsEmpty!837))

(assert (= (and b!42505 (not condSetEmpty!837)) setNonEmpty!837))

(assert (= (and b!42217 ((_ is Cons!630) (t!16176 (zeroValue!463 (v!12389 (underlying!609 (v!12390 (underlying!610 (cache!688 cacheDown!333))))))))) b!42505))

(declare-fun m!16259 () Bool)

(assert (=> b!42505 m!16259))

(declare-fun m!16261 () Bool)

(assert (=> setNonEmpty!837 m!16261))

(declare-fun condSetEmpty!838 () Bool)

(assert (=> setNonEmpty!795 (= condSetEmpty!838 (= setRest!795 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!838 () Bool)

(assert (=> setNonEmpty!795 (= tp!29196 setRes!838)))

(declare-fun setIsEmpty!838 () Bool)

(assert (=> setIsEmpty!838 setRes!838))

(declare-fun setNonEmpty!838 () Bool)

(declare-fun tp!29274 () Bool)

(declare-fun setElem!838 () Context!158)

(assert (=> setNonEmpty!838 (= setRes!838 (and tp!29274 (inv!922 setElem!838)))))

(declare-fun setRest!838 () (InoxSet Context!158))

(assert (=> setNonEmpty!838 (= setRest!795 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!838 true) setRest!838))))

(assert (= (and setNonEmpty!795 condSetEmpty!838) setIsEmpty!838))

(assert (= (and setNonEmpty!795 (not condSetEmpty!838)) setNonEmpty!838))

(declare-fun m!16263 () Bool)

(assert (=> setNonEmpty!838 m!16263))

(declare-fun condSetEmpty!839 () Bool)

(assert (=> setNonEmpty!781 (= condSetEmpty!839 (= setRest!781 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!839 () Bool)

(assert (=> setNonEmpty!781 (= tp!29164 setRes!839)))

(declare-fun setIsEmpty!839 () Bool)

(assert (=> setIsEmpty!839 setRes!839))

(declare-fun setNonEmpty!839 () Bool)

(declare-fun tp!29275 () Bool)

(declare-fun setElem!839 () Context!158)

(assert (=> setNonEmpty!839 (= setRes!839 (and tp!29275 (inv!922 setElem!839)))))

(declare-fun setRest!839 () (InoxSet Context!158))

(assert (=> setNonEmpty!839 (= setRest!781 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!839 true) setRest!839))))

(assert (= (and setNonEmpty!781 condSetEmpty!839) setIsEmpty!839))

(assert (= (and setNonEmpty!781 (not condSetEmpty!839)) setNonEmpty!839))

(declare-fun m!16265 () Bool)

(assert (=> setNonEmpty!839 m!16265))

(declare-fun condSetEmpty!840 () Bool)

(assert (=> setNonEmpty!797 (= condSetEmpty!840 (= setRest!797 ((as const (Array Context!158 Bool)) false)))))

(declare-fun setRes!840 () Bool)

(assert (=> setNonEmpty!797 (= tp!29202 setRes!840)))

(declare-fun setIsEmpty!840 () Bool)

(assert (=> setIsEmpty!840 setRes!840))

(declare-fun setNonEmpty!840 () Bool)

(declare-fun tp!29276 () Bool)

(declare-fun setElem!840 () Context!158)

(assert (=> setNonEmpty!840 (= setRes!840 (and tp!29276 (inv!922 setElem!840)))))

(declare-fun setRest!840 () (InoxSet Context!158))

(assert (=> setNonEmpty!840 (= setRest!797 ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!840 true) setRest!840))))

(assert (= (and setNonEmpty!797 condSetEmpty!840) setIsEmpty!840))

(assert (= (and setNonEmpty!797 (not condSetEmpty!840)) setNonEmpty!840))

(declare-fun m!16267 () Bool)

(assert (=> setNonEmpty!840 m!16267))

(declare-fun tp!29277 () Bool)

(declare-fun e!22810 () Bool)

(declare-fun b!42506 () Bool)

(declare-fun tp!29278 () Bool)

(assert (=> b!42506 (= e!22810 (and (inv!914 (left!527 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) tp!29277 (inv!914 (right!857 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) tp!29278))))

(declare-fun b!42507 () Bool)

(assert (=> b!42507 (= e!22810 (inv!921 (xs!2694 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))))

(assert (=> b!42200 (= tp!29124 (and (inv!914 (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) e!22810))))

(assert (= (and b!42200 ((_ is Node!115) (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) b!42506))

(assert (= (and b!42200 ((_ is Leaf!304) (left!527 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) b!42507))

(declare-fun m!16269 () Bool)

(assert (=> b!42506 m!16269))

(declare-fun m!16271 () Bool)

(assert (=> b!42506 m!16271))

(declare-fun m!16273 () Bool)

(assert (=> b!42507 m!16273))

(assert (=> b!42200 m!15600))

(declare-fun tp!29280 () Bool)

(declare-fun b!42508 () Bool)

(declare-fun e!22812 () Bool)

(declare-fun tp!29279 () Bool)

(assert (=> b!42508 (= e!22812 (and (inv!914 (left!527 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) tp!29279 (inv!914 (right!857 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) tp!29280))))

(declare-fun b!42509 () Bool)

(assert (=> b!42509 (= e!22812 (inv!921 (xs!2694 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))))))

(assert (=> b!42200 (= tp!29125 (and (inv!914 (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45)))) e!22812))))

(assert (= (and b!42200 ((_ is Node!115) (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) b!42508))

(assert (= (and b!42200 ((_ is Leaf!304) (right!857 (c!15876 (totalInput!1520 cacheFurthestNullable!45))))) b!42509))

(declare-fun m!16275 () Bool)

(assert (=> b!42508 m!16275))

(declare-fun m!16277 () Bool)

(assert (=> b!42508 m!16277))

(declare-fun m!16279 () Bool)

(assert (=> b!42509 m!16279))

(assert (=> b!42200 m!15602))

(declare-fun setIsEmpty!841 () Bool)

(declare-fun setRes!842 () Bool)

(assert (=> setIsEmpty!841 setRes!842))

(declare-fun condMapEmpty!765 () Bool)

(declare-fun mapDefault!765 () List!632)

(assert (=> mapNonEmpty!759 (= condMapEmpty!765 (= mapRest!759 ((as const (Array (_ BitVec 32) List!632)) mapDefault!765)))))

(declare-fun e!22814 () Bool)

(declare-fun mapRes!765 () Bool)

(assert (=> mapNonEmpty!759 (= tp!29178 (and e!22814 mapRes!765))))

(declare-fun setIsEmpty!842 () Bool)

(declare-fun setRes!841 () Bool)

(assert (=> setIsEmpty!842 setRes!841))

(declare-fun setNonEmpty!841 () Bool)

(declare-fun tp!29282 () Bool)

(declare-fun setElem!842 () Context!158)

(assert (=> setNonEmpty!841 (= setRes!842 (and tp!29282 (inv!922 setElem!842)))))

(declare-fun setRest!841 () (InoxSet Context!158))

(assert (=> setNonEmpty!841 (= (_2!508 (h!6026 mapDefault!765)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!842 true) setRest!841))))

(declare-fun setNonEmpty!842 () Bool)

(declare-fun tp!29285 () Bool)

(declare-fun setElem!841 () Context!158)

(assert (=> setNonEmpty!842 (= setRes!841 (and tp!29285 (inv!922 setElem!841)))))

(declare-fun mapValue!765 () List!632)

(declare-fun setRest!842 () (InoxSet Context!158))

(assert (=> setNonEmpty!842 (= (_2!508 (h!6026 mapValue!765)) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!841 true) setRest!842))))

(declare-fun mapNonEmpty!765 () Bool)

(declare-fun tp!29284 () Bool)

(declare-fun e!22817 () Bool)

(assert (=> mapNonEmpty!765 (= mapRes!765 (and tp!29284 e!22817))))

(declare-fun mapRest!765 () (Array (_ BitVec 32) List!632))

(declare-fun mapKey!765 () (_ BitVec 32))

(assert (=> mapNonEmpty!765 (= mapRest!759 (store mapRest!765 mapKey!765 mapValue!765))))

(declare-fun mapIsEmpty!765 () Bool)

(assert (=> mapIsEmpty!765 mapRes!765))

(declare-fun tp!29283 () Bool)

(declare-fun b!42510 () Bool)

(assert (=> b!42510 (= e!22817 (and (inv!922 (_2!507 (_1!508 (h!6026 mapValue!765)))) setRes!841 tp!29283))))

(declare-fun condSetEmpty!842 () Bool)

(assert (=> b!42510 (= condSetEmpty!842 (= (_2!508 (h!6026 mapValue!765)) ((as const (Array Context!158 Bool)) false)))))

(declare-fun tp!29281 () Bool)

(declare-fun b!42511 () Bool)

(assert (=> b!42511 (= e!22814 (and (inv!922 (_2!507 (_1!508 (h!6026 mapDefault!765)))) setRes!842 tp!29281))))

(declare-fun condSetEmpty!841 () Bool)

(assert (=> b!42511 (= condSetEmpty!841 (= (_2!508 (h!6026 mapDefault!765)) ((as const (Array Context!158 Bool)) false)))))

(assert (= (and mapNonEmpty!759 condMapEmpty!765) mapIsEmpty!765))

(assert (= (and mapNonEmpty!759 (not condMapEmpty!765)) mapNonEmpty!765))

(assert (= (and b!42510 condSetEmpty!842) setIsEmpty!842))

(assert (= (and b!42510 (not condSetEmpty!842)) setNonEmpty!842))

(assert (= (and mapNonEmpty!765 ((_ is Cons!630) mapValue!765)) b!42510))

(assert (= (and b!42511 condSetEmpty!841) setIsEmpty!841))

(assert (= (and b!42511 (not condSetEmpty!841)) setNonEmpty!841))

(assert (= (and mapNonEmpty!759 ((_ is Cons!630) mapDefault!765)) b!42511))

(declare-fun m!16281 () Bool)

(assert (=> setNonEmpty!841 m!16281))

(declare-fun m!16283 () Bool)

(assert (=> setNonEmpty!842 m!16283))

(declare-fun m!16285 () Bool)

(assert (=> b!42511 m!16285))

(declare-fun m!16287 () Bool)

(assert (=> mapNonEmpty!765 m!16287))

(declare-fun m!16289 () Bool)

(assert (=> b!42510 m!16289))

(declare-fun e!22820 () Bool)

(declare-fun b!42512 () Bool)

(declare-fun setRes!843 () Bool)

(declare-fun tp!29286 () Bool)

(assert (=> b!42512 (= e!22820 (and (inv!922 (_1!509 (_1!510 (h!6027 (t!16177 mapDefault!756))))) setRes!843 tp!29286))))

(declare-fun condSetEmpty!843 () Bool)

(assert (=> b!42512 (= condSetEmpty!843 (= (_2!510 (h!6027 (t!16177 mapDefault!756))) ((as const (Array Context!158 Bool)) false)))))

(declare-fun setIsEmpty!843 () Bool)

(assert (=> setIsEmpty!843 setRes!843))

(declare-fun setNonEmpty!843 () Bool)

(declare-fun tp!29287 () Bool)

(declare-fun setElem!843 () Context!158)

(assert (=> setNonEmpty!843 (= setRes!843 (and tp!29287 (inv!922 setElem!843)))))

(declare-fun setRest!843 () (InoxSet Context!158))

(assert (=> setNonEmpty!843 (= (_2!510 (h!6027 (t!16177 mapDefault!756))) ((_ map or) (store ((as const (Array Context!158 Bool)) false) setElem!843 true) setRest!843))))

(assert (=> b!42226 (= tp!29160 e!22820)))

(assert (= (and b!42512 condSetEmpty!843) setIsEmpty!843))

(assert (= (and b!42512 (not condSetEmpty!843)) setNonEmpty!843))

(assert (= (and b!42226 ((_ is Cons!631) (t!16177 mapDefault!756))) b!42512))

(declare-fun m!16291 () Bool)

(assert (=> b!42512 m!16291))

(declare-fun m!16293 () Bool)

(assert (=> setNonEmpty!843 m!16293))

(check-sat (not d!4427) (not b!42420) (not setNonEmpty!839) (not d!4489) (not setNonEmpty!834) (not b!42437) (not d!4577) (not b!42300) (not d!4551) (not b!42301) (not b!42314) (not d!4481) (not b!42368) (not b!42505) (not b!42487) b_and!1025 (not setNonEmpty!814) (not d!4443) (not d!4453) (not b!42249) (not b!42491) (not b!42384) (not setNonEmpty!833) (not setNonEmpty!840) (not b!42375) (not setNonEmpty!811) (not d!4543) (not b!42506) (not mapNonEmpty!763) (not d!4571) (not b!42499) (not b!42412) (not b!42377) (not setNonEmpty!818) (not b!42494) (not b!42429) (not setNonEmpty!804) (not b!42380) (not b!42419) (not d!4541) (not setNonEmpty!831) (not d!4537) (not setNonEmpty!800) (not b!42497) (not b!42263) (not d!4495) (not b!42444) (not d!4527) (not b!42371) (not d!4423) (not setNonEmpty!838) (not b!42362) (not setNonEmpty!808) (not setNonEmpty!806) (not setNonEmpty!828) (not d!4503) (not b!42483) (not b!42338) (not b!42449) (not d!4439) (not setNonEmpty!822) (not setNonEmpty!819) (not b!42426) (not d!4523) (not d!4567) (not d!4447) (not d!4539) (not b!42446) (not setNonEmpty!809) (not d!4441) (not b!42489) (not d!4533) (not b!42361) (not b!42508) (not b!42486) (not b!42367) (not d!4569) (not b!42372) (not b!42443) (not d!4451) (not b_next!985) (not b!42510) (not b!42509) (not d!4557) (not d!4429) (not d!4421) (not mapNonEmpty!764) (not b!42413) (not b_next!989) (not b!42378) (not d!4545) (not d!4511) (not d!4491) (not setNonEmpty!836) (not d!4431) (not b!42337) (not d!4483) (not b!42500) (not setNonEmpty!805) (not b!42492) (not b!42374) (not setNonEmpty!807) (not b!42200) (not d!4425) (not d!4507) (not d!4521) (not d!4583) (not d!4565) (not d!4501) (not b_next!981) (not d!4459) (not b!42288) (not b!42342) (not b!42507) b_and!1019 (not b!42286) (not b!42482) (not d!4433) (not b!42498) (not b!42323) (not b!42511) (not d!4461) (not d!4417) b_and!1021 (not d!4499) (not setNonEmpty!821) (not b_next!991) (not setNonEmpty!825) (not b!42340) (not d!4585) (not b!42383) (not d!4509) (not b!42493) (not b!42502) (not b!42436) (not b!42284) (not b!42349) (not b_next!987) (not setNonEmpty!813) (not b!42415) (not b!42425) (not d!4535) (not b!42484) (not b!42496) (not b!42418) (not d!4587) (not b!42503) (not b!42450) (not b!42432) (not b!42442) (not setNonEmpty!829) (not setNonEmpty!842) (not setNonEmpty!803) (not b!42265) (not setNonEmpty!837) (not setNonEmpty!816) (not b!42385) (not setNonEmpty!830) (not b!42504) (not setNonEmpty!820) (not d!4579) (not d!4505) (not d!4575) (not b!42350) (not setNonEmpty!810) (not setNonEmpty!827) (not d!4519) (not setNonEmpty!823) (not b!42264) (not d!4515) (not b!42369) (not b_next!983) b_and!1023 (not setNonEmpty!841) (not b!42289) (not d!4547) (not setNonEmpty!817) (not d!4485) (not setNonEmpty!832) (not b!42339) (not b!42495) (not d!4465) (not b!42341) (not d!4559) (not setNonEmpty!843) (not d!4449) b_and!1015 (not b!42485) (not d!4435) (not d!4419) (not b!42388) (not b!42376) (not d!4525) (not setNonEmpty!826) (not setNonEmpty!835) b_and!1017 (not mapNonEmpty!765) (not b!42294) (not d!4445) (not setNonEmpty!815) (not d!4493) (not d!4563) (not setNonEmpty!824) (not d!4437) (not b!42501) (not b!42512) (not b!42488) (not b!42490) (not d!4561) (not d!4549) (not setNonEmpty!812) (not b!42416) (not d!4581) (not d!4513) (not b!42379) (not d!4487) (not d!4497) (not b!42315) (not d!4475) (not b!42447) (not d!4457) (not b!42433) (not d!4573))
(check-sat b_and!1025 (not b_next!985) (not b_next!989) (not b_next!981) b_and!1019 b_and!1021 b_and!1015 b_and!1017 (not b_next!991) (not b_next!987) (not b_next!983) b_and!1023)
