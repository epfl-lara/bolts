; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2820 () Bool)

(assert start!2820)

(declare-fun b!44376 () Bool)

(declare-fun b_free!1101 () Bool)

(declare-fun b_next!1101 () Bool)

(assert (=> b!44376 (= b_free!1101 (not b_next!1101))))

(declare-fun tp!30403 () Bool)

(declare-fun b_and!1135 () Bool)

(assert (=> b!44376 (= tp!30403 b_and!1135)))

(declare-fun b!44380 () Bool)

(declare-fun b_free!1103 () Bool)

(declare-fun b_next!1103 () Bool)

(assert (=> b!44380 (= b_free!1103 (not b_next!1103))))

(declare-fun tp!30408 () Bool)

(declare-fun b_and!1137 () Bool)

(assert (=> b!44380 (= tp!30408 b_and!1137)))

(declare-fun b!44379 () Bool)

(declare-fun b_free!1105 () Bool)

(declare-fun b_next!1105 () Bool)

(assert (=> b!44379 (= b_free!1105 (not b_next!1105))))

(declare-fun tp!30390 () Bool)

(declare-fun b_and!1139 () Bool)

(assert (=> b!44379 (= tp!30390 b_and!1139)))

(declare-fun b!44384 () Bool)

(declare-fun b_free!1107 () Bool)

(declare-fun b_next!1107 () Bool)

(assert (=> b!44384 (= b_free!1107 (not b_next!1107))))

(declare-fun tp!30395 () Bool)

(declare-fun b_and!1141 () Bool)

(assert (=> b!44384 (= tp!30395 b_and!1141)))

(declare-fun b!44381 () Bool)

(declare-fun b_free!1109 () Bool)

(declare-fun b_next!1109 () Bool)

(assert (=> b!44381 (= b_free!1109 (not b_next!1109))))

(declare-fun tp!30393 () Bool)

(declare-fun b_and!1143 () Bool)

(assert (=> b!44381 (= tp!30393 b_and!1143)))

(declare-fun b!44394 () Bool)

(declare-fun b_free!1111 () Bool)

(declare-fun b_next!1111 () Bool)

(assert (=> b!44394 (= b_free!1111 (not b_next!1111))))

(declare-fun tp!30407 () Bool)

(declare-fun b_and!1145 () Bool)

(assert (=> b!44394 (= tp!30407 b_and!1145)))

(declare-fun b!44418 () Bool)

(declare-fun e!24630 () Bool)

(assert (=> b!44418 (= e!24630 true)))

(declare-fun b!44417 () Bool)

(declare-fun e!24629 () Bool)

(assert (=> b!44417 (= e!24629 e!24630)))

(declare-fun b!44416 () Bool)

(declare-fun e!24628 () Bool)

(assert (=> b!44416 (= e!24628 e!24629)))

(declare-fun b!44400 () Bool)

(assert (=> b!44400 e!24628))

(assert (= b!44417 b!44418))

(assert (= b!44416 b!44417))

(declare-datatypes ((List!699 0))(
  ( (Nil!697) (Cons!697 (h!6093 (_ BitVec 16)) (t!16478 List!699)) )
))
(declare-datatypes ((TokenValue!155 0))(
  ( (FloatLiteralValue!310 (text!1530 List!699)) (TokenValueExt!154 (__x!1191 Int)) (Broken!775 (value!7486 List!699)) (Object!156) (End!155) (Def!155) (Underscore!155) (Match!155) (Else!155) (Error!155) (Case!155) (If!155) (Extends!155) (Abstract!155) (Class!155) (Val!155) (DelimiterValue!310 (del!215 List!699)) (KeywordValue!161 (value!7487 List!699)) (CommentValue!310 (value!7488 List!699)) (WhitespaceValue!310 (value!7489 List!699)) (IndentationValue!155 (value!7490 List!699)) (String!1070) (Int32!155) (Broken!776 (value!7491 List!699)) (Boolean!156) (Unit!321) (OperatorValue!158 (op!215 List!699)) (IdentifierValue!310 (value!7492 List!699)) (IdentifierValue!311 (value!7493 List!699)) (WhitespaceValue!311 (value!7494 List!699)) (True!310) (False!310) (Broken!777 (value!7495 List!699)) (Broken!778 (value!7496 List!699)) (True!311) (RightBrace!155) (RightBracket!155) (Colon!155) (Null!155) (Comma!155) (LeftBracket!155) (False!311) (LeftBrace!155) (ImaginaryLiteralValue!155 (text!1531 List!699)) (StringLiteralValue!465 (value!7497 List!699)) (EOFValue!155 (value!7498 List!699)) (IdentValue!155 (value!7499 List!699)) (DelimiterValue!311 (value!7500 List!699)) (DedentValue!155 (value!7501 List!699)) (NewLineValue!155 (value!7502 List!699)) (IntegerValue!465 (value!7503 (_ BitVec 32)) (text!1532 List!699)) (IntegerValue!466 (value!7504 Int) (text!1533 List!699)) (Times!155) (Or!155) (Equal!155) (Minus!155) (Broken!779 (value!7505 List!699)) (And!155) (Div!155) (LessEqual!155) (Mod!155) (Concat!386) (Not!155) (Plus!155) (SpaceValue!155 (value!7506 List!699)) (IntegerValue!467 (value!7507 Int) (text!1534 List!699)) (StringLiteralValue!466 (text!1535 List!699)) (FloatLiteralValue!311 (text!1536 List!699)) (BytesLiteralValue!155 (value!7508 List!699)) (CommentValue!311 (value!7509 List!699)) (StringLiteralValue!467 (value!7510 List!699)) (ErrorTokenValue!155 (msg!216 List!699)) )
))
(declare-datatypes ((Regex!231 0))(
  ( (ElementMatch!231 (c!16068 (_ BitVec 16))) (Concat!387 (regOne!974 Regex!231) (regTwo!974 Regex!231)) (EmptyExpr!231) (Star!231 (reg!560 Regex!231)) (EmptyLang!231) (Union!231 (regOne!975 Regex!231) (regTwo!975 Regex!231)) )
))
(declare-datatypes ((String!1071 0))(
  ( (String!1072 (value!7511 String)) )
))
(declare-datatypes ((IArray!265 0))(
  ( (IArray!266 (innerList!190 List!699)) )
))
(declare-datatypes ((Conc!132 0))(
  ( (Node!132 (left!559 Conc!132) (right!889 Conc!132) (csize!494 Int) (cheight!343 Int)) (Leaf!326 (xs!2711 IArray!265) (csize!495 Int)) (Empty!132) )
))
(declare-datatypes ((BalanceConc!264 0))(
  ( (BalanceConc!265 (c!16069 Conc!132)) )
))
(declare-datatypes ((TokenValueInjection!134 0))(
  ( (TokenValueInjection!135 (toValue!644 Int) (toChars!503 Int)) )
))
(declare-datatypes ((Rule!130 0))(
  ( (Rule!131 (regex!165 Regex!231) (tag!343 String!1071) (isSeparator!165 Bool) (transformation!165 TokenValueInjection!134)) )
))
(declare-datatypes ((List!700 0))(
  ( (Nil!698) (Cons!698 (h!6094 Rule!130) (t!16479 List!700)) )
))
(declare-fun lt!5606 () List!700)

(get-info :version)

(assert (= (and b!44400 ((_ is Cons!698) lt!5606)) b!44416))

(declare-fun order!139 () Int)

(declare-fun order!141 () Int)

(declare-fun lambda!808 () Int)

(declare-fun dynLambda!89 (Int Int) Int)

(declare-fun dynLambda!90 (Int Int) Int)

(assert (=> b!44418 (< (dynLambda!89 order!139 (toValue!644 (transformation!165 (h!6094 lt!5606)))) (dynLambda!90 order!141 lambda!808))))

(declare-fun order!143 () Int)

(declare-fun dynLambda!91 (Int Int) Int)

(assert (=> b!44418 (< (dynLambda!91 order!143 (toChars!503 (transformation!165 (h!6094 lt!5606)))) (dynLambda!90 order!141 lambda!808))))

(declare-fun b!44372 () Bool)

(declare-fun e!24606 () Bool)

(declare-fun e!24591 () Bool)

(assert (=> b!44372 (= e!24606 e!24591)))

(declare-fun res!30641 () Bool)

(assert (=> b!44372 (=> (not res!30641) (not e!24591))))

(declare-datatypes ((Token!96 0))(
  ( (Token!97 (value!7512 TokenValue!155) (rule!641 Rule!130) (size!692 Int) (originalCharacters!219 List!699)) )
))
(declare-datatypes ((List!701 0))(
  ( (Nil!699) (Cons!699 (h!6095 Token!96) (t!16480 List!701)) )
))
(declare-fun lt!5596 () List!701)

(declare-fun lt!5602 () List!701)

(assert (=> b!44372 (= res!30641 (= lt!5596 lt!5602))))

(declare-datatypes ((IArray!267 0))(
  ( (IArray!268 (innerList!191 List!701)) )
))
(declare-datatypes ((Conc!133 0))(
  ( (Node!133 (left!560 Conc!133) (right!890 Conc!133) (csize!496 Int) (cheight!344 Int)) (Leaf!327 (xs!2712 IArray!267) (csize!497 Int)) (Empty!133) )
))
(declare-datatypes ((BalanceConc!266 0))(
  ( (BalanceConc!267 (c!16070 Conc!133)) )
))
(declare-datatypes ((tuple2!838 0))(
  ( (tuple2!839 (_1!587 BalanceConc!266) (_2!587 BalanceConc!264)) )
))
(declare-fun lt!5597 () tuple2!838)

(declare-fun list!187 (BalanceConc!266) List!701)

(assert (=> b!44372 (= lt!5602 (list!187 (_1!587 lt!5597)))))

(declare-datatypes ((List!702 0))(
  ( (Nil!700) (Cons!700 (h!6096 Regex!231) (t!16481 List!702)) )
))
(declare-datatypes ((Context!178 0))(
  ( (Context!179 (exprs!589 List!702)) )
))
(declare-datatypes ((tuple2!840 0))(
  ( (tuple2!841 (_1!588 Context!178) (_2!588 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!230 0))(
  ( (HashableExt!229 (__x!1192 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!842 0))(
  ( (tuple2!843 (_1!589 tuple2!840) (_2!589 (InoxSet Context!178))) )
))
(declare-datatypes ((List!703 0))(
  ( (Nil!701) (Cons!701 (h!6097 tuple2!842) (t!16482 List!703)) )
))
(declare-datatypes ((array!776 0))(
  ( (array!777 (arr!377 (Array (_ BitVec 32) List!703)) (size!693 (_ BitVec 32))) )
))
(declare-datatypes ((array!778 0))(
  ( (array!779 (arr!378 (Array (_ BitVec 32) (_ BitVec 64))) (size!694 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!468 0))(
  ( (LongMapFixedSize!469 (defaultEntry!572 Int) (mask!951 (_ BitVec 32)) (extraKeys!480 (_ BitVec 32)) (zeroValue!490 List!703) (minValue!490 List!703) (_size!600 (_ BitVec 32)) (_keys!525 array!778) (_values!512 array!776) (_vacant!294 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!925 0))(
  ( (Cell!926 (v!12447 LongMapFixedSize!468)) )
))
(declare-datatypes ((MutLongMap!234 0))(
  ( (LongMap!234 (underlying!663 Cell!925)) (MutLongMapExt!233 (__x!1193 Int)) )
))
(declare-datatypes ((Cell!927 0))(
  ( (Cell!928 (v!12448 MutLongMap!234)) )
))
(declare-datatypes ((MutableMap!230 0))(
  ( (MutableMapExt!229 (__x!1194 Int)) (HashMap!230 (underlying!664 Cell!927) (hashF!2098 Hashable!230) (_size!601 (_ BitVec 32)) (defaultValue!379 Int)) )
))
(declare-datatypes ((CacheUp!156 0))(
  ( (CacheUp!157 (cache!715 MutableMap!230)) )
))
(declare-datatypes ((tuple3!266 0))(
  ( (tuple3!267 (_1!590 Regex!231) (_2!590 Context!178) (_3!168 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!844 0))(
  ( (tuple2!845 (_1!591 tuple3!266) (_2!591 (InoxSet Context!178))) )
))
(declare-datatypes ((List!704 0))(
  ( (Nil!702) (Cons!702 (h!6098 tuple2!844) (t!16483 List!704)) )
))
(declare-datatypes ((array!780 0))(
  ( (array!781 (arr!379 (Array (_ BitVec 32) List!704)) (size!695 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!470 0))(
  ( (LongMapFixedSize!471 (defaultEntry!573 Int) (mask!952 (_ BitVec 32)) (extraKeys!481 (_ BitVec 32)) (zeroValue!491 List!704) (minValue!491 List!704) (_size!602 (_ BitVec 32)) (_keys!526 array!778) (_values!513 array!780) (_vacant!295 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!929 0))(
  ( (Cell!930 (v!12449 LongMapFixedSize!470)) )
))
(declare-datatypes ((MutLongMap!235 0))(
  ( (LongMap!235 (underlying!665 Cell!929)) (MutLongMapExt!234 (__x!1195 Int)) )
))
(declare-datatypes ((Cell!931 0))(
  ( (Cell!932 (v!12450 MutLongMap!235)) )
))
(declare-datatypes ((Hashable!231 0))(
  ( (HashableExt!230 (__x!1196 Int)) )
))
(declare-datatypes ((MutableMap!231 0))(
  ( (MutableMapExt!230 (__x!1197 Int)) (HashMap!231 (underlying!666 Cell!931) (hashF!2099 Hashable!231) (_size!603 (_ BitVec 32)) (defaultValue!380 Int)) )
))
(declare-datatypes ((CacheDown!156 0))(
  ( (CacheDown!157 (cache!716 MutableMap!231)) )
))
(declare-datatypes ((tuple3!268 0))(
  ( (tuple3!269 (_1!592 (InoxSet Context!178)) (_2!592 Int) (_3!169 Int)) )
))
(declare-datatypes ((tuple2!846 0))(
  ( (tuple2!847 (_1!593 tuple3!268) (_2!593 Int)) )
))
(declare-datatypes ((List!705 0))(
  ( (Nil!703) (Cons!703 (h!6099 tuple2!846) (t!16484 List!705)) )
))
(declare-datatypes ((array!782 0))(
  ( (array!783 (arr!380 (Array (_ BitVec 32) List!705)) (size!696 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!472 0))(
  ( (LongMapFixedSize!473 (defaultEntry!574 Int) (mask!953 (_ BitVec 32)) (extraKeys!482 (_ BitVec 32)) (zeroValue!492 List!705) (minValue!492 List!705) (_size!604 (_ BitVec 32)) (_keys!527 array!778) (_values!514 array!782) (_vacant!296 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!232 0))(
  ( (HashableExt!231 (__x!1198 Int)) )
))
(declare-datatypes ((Cell!933 0))(
  ( (Cell!934 (v!12451 LongMapFixedSize!472)) )
))
(declare-datatypes ((MutLongMap!236 0))(
  ( (LongMap!236 (underlying!667 Cell!933)) (MutLongMapExt!235 (__x!1199 Int)) )
))
(declare-datatypes ((Cell!935 0))(
  ( (Cell!936 (v!12452 MutLongMap!236)) )
))
(declare-datatypes ((MutableMap!232 0))(
  ( (MutableMapExt!231 (__x!1200 Int)) (HashMap!232 (underlying!668 Cell!935) (hashF!2100 Hashable!232) (_size!605 (_ BitVec 32)) (defaultValue!381 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!104 0))(
  ( (CacheFurthestNullable!105 (cache!717 MutableMap!232) (totalInput!1535 BalanceConc!264)) )
))
(declare-datatypes ((tuple4!70 0))(
  ( (tuple4!71 (_1!594 tuple2!838) (_2!594 CacheUp!156) (_3!170 CacheDown!156) (_4!35 CacheFurthestNullable!104)) )
))
(declare-fun lt!5599 () tuple4!70)

(assert (=> b!44372 (= lt!5596 (list!187 (_1!587 (_1!594 lt!5599))))))

(declare-fun input!525 () BalanceConc!264)

(declare-datatypes ((LexerInterface!59 0))(
  ( (LexerInterfaceExt!56 (__x!1201 Int)) (Lexer!57) )
))
(declare-fun lex!36 (LexerInterface!59 List!700 BalanceConc!264) tuple2!838)

(assert (=> b!44372 (= lt!5597 (lex!36 Lexer!57 lt!5606 input!525))))

(declare-datatypes ((Unit!322 0))(
  ( (Unit!323) )
))
(declare-fun lt!5594 () Unit!322)

(declare-fun lemmaInvariant!53 (CacheDown!156) Unit!322)

(assert (=> b!44372 (= lt!5594 (lemmaInvariant!53 (_3!170 lt!5599)))))

(declare-fun lt!5607 () Unit!322)

(declare-fun lemmaInvariant!54 (CacheUp!156) Unit!322)

(assert (=> b!44372 (= lt!5607 (lemmaInvariant!54 (_2!594 lt!5599)))))

(declare-fun cacheDown!333 () CacheDown!156)

(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!104)

(declare-fun cacheUp!320 () CacheUp!156)

(declare-fun lexMem!25 (LexerInterface!59 List!700 BalanceConc!264 CacheUp!156 CacheDown!156 CacheFurthestNullable!104) tuple4!70)

(assert (=> b!44372 (= lt!5599 (lexMem!25 Lexer!57 lt!5606 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun mapNonEmpty!892 () Bool)

(declare-fun mapRes!894 () Bool)

(declare-fun tp!30391 () Bool)

(declare-fun tp!30406 () Bool)

(assert (=> mapNonEmpty!892 (= mapRes!894 (and tp!30391 tp!30406))))

(declare-fun mapValue!892 () List!704)

(declare-fun mapRest!894 () (Array (_ BitVec 32) List!704))

(declare-fun mapKey!893 () (_ BitVec 32))

(assert (=> mapNonEmpty!892 (= (arr!379 (_values!513 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))) (store mapRest!894 mapKey!893 mapValue!892))))

(declare-fun b!44373 () Bool)

(declare-fun e!24616 () Bool)

(declare-fun forall!78 (BalanceConc!266 Int) Bool)

(assert (=> b!44373 (= e!24616 (not (forall!78 (_1!587 (_1!594 lt!5599)) lambda!808)))))

(declare-fun b!44374 () Bool)

(declare-fun res!30633 () Bool)

(assert (=> b!44374 (=> (not res!30633) (not e!24606))))

(declare-fun rulesInvariant!51 (LexerInterface!59 List!700) Bool)

(assert (=> b!44374 (= res!30633 (rulesInvariant!51 Lexer!57 lt!5606))))

(declare-fun b!44375 () Bool)

(declare-fun e!24618 () Bool)

(declare-fun tp!30392 () Bool)

(declare-fun inv!986 (Conc!132) Bool)

(assert (=> b!44375 (= e!24618 (and (inv!986 (c!16069 (totalInput!1535 cacheFurthestNullable!45))) tp!30392))))

(declare-fun e!24602 () Bool)

(declare-fun e!24603 () Bool)

(assert (=> b!44376 (= e!24602 (and e!24603 tp!30403))))

(declare-fun b!44377 () Bool)

(declare-fun e!24621 () Bool)

(declare-fun lt!5601 () MutLongMap!234)

(assert (=> b!44377 (= e!24603 (and e!24621 ((_ is LongMap!234) lt!5601)))))

(assert (=> b!44377 (= lt!5601 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))

(declare-fun b!44378 () Bool)

(declare-fun res!30635 () Bool)

(assert (=> b!44378 (=> (not res!30635) (not e!24616))))

(declare-fun lt!5604 () List!699)

(declare-fun lexThenRulesProduceEachTokenIndividually!15 (LexerInterface!59 List!700 List!699) Bool)

(assert (=> b!44378 (= res!30635 (lexThenRulesProduceEachTokenIndividually!15 Lexer!57 lt!5606 lt!5604))))

(declare-fun e!24594 () Bool)

(declare-fun tp!30412 () Bool)

(declare-fun e!24592 () Bool)

(declare-fun tp!30400 () Bool)

(declare-fun array_inv!253 (array!778) Bool)

(declare-fun array_inv!254 (array!782) Bool)

(assert (=> b!44379 (= e!24592 (and tp!30390 tp!30400 tp!30412 (array_inv!253 (_keys!527 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))) (array_inv!254 (_values!514 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))) e!24594))))

(declare-fun e!24605 () Bool)

(declare-fun e!24601 () Bool)

(assert (=> b!44380 (= e!24605 (and e!24601 tp!30408))))

(declare-fun tp!30394 () Bool)

(declare-fun tp!30397 () Bool)

(declare-fun e!24596 () Bool)

(declare-fun e!24611 () Bool)

(declare-fun array_inv!255 (array!780) Bool)

(assert (=> b!44381 (= e!24596 (and tp!30393 tp!30394 tp!30397 (array_inv!253 (_keys!526 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))) (array_inv!255 (_values!513 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))) e!24611))))

(declare-fun mapNonEmpty!894 () Bool)

(declare-fun mapRes!893 () Bool)

(declare-fun tp!30411 () Bool)

(declare-fun tp!30398 () Bool)

(assert (=> mapNonEmpty!894 (= mapRes!893 (and tp!30411 tp!30398))))

(declare-fun mapValue!894 () List!703)

(declare-fun mapRest!893 () (Array (_ BitVec 32) List!703))

(declare-fun mapKey!892 () (_ BitVec 32))

(assert (=> mapNonEmpty!894 (= (arr!377 (_values!512 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))) (store mapRest!893 mapKey!892 mapValue!894))))

(declare-fun b!44382 () Bool)

(declare-fun e!24614 () Bool)

(declare-fun e!24610 () Bool)

(assert (=> b!44382 (= e!24614 e!24610)))

(declare-fun res!30634 () Bool)

(assert (=> b!44382 (=> (not res!30634) (not e!24610))))

(declare-fun lt!5598 () BalanceConc!264)

(declare-fun list!188 (BalanceConc!264) List!699)

(assert (=> b!44382 (= res!30634 (= (list!188 lt!5598) lt!5604))))

(declare-fun seqFromList!30 (List!699) BalanceConc!264)

(assert (=> b!44382 (= lt!5598 (seqFromList!30 lt!5604))))

(assert (=> b!44382 (= lt!5604 (list!188 input!525))))

(declare-fun b!44383 () Bool)

(declare-fun e!24609 () Bool)

(declare-fun inv!987 (BalanceConc!264) Bool)

(assert (=> b!44383 (= e!24609 (and e!24605 (inv!987 (totalInput!1535 cacheFurthestNullable!45)) e!24618))))

(declare-fun e!24599 () Bool)

(declare-fun e!24617 () Bool)

(assert (=> b!44384 (= e!24599 (and e!24617 tp!30395))))

(declare-fun b!44385 () Bool)

(declare-fun e!24598 () Bool)

(declare-fun tp!30399 () Bool)

(assert (=> b!44385 (= e!24598 (and tp!30399 mapRes!893))))

(declare-fun condMapEmpty!893 () Bool)

(declare-fun mapDefault!893 () List!703)

(assert (=> b!44385 (= condMapEmpty!893 (= (arr!377 (_values!512 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!703)) mapDefault!893)))))

(declare-fun b!44386 () Bool)

(declare-fun res!30632 () Bool)

(assert (=> b!44386 (=> (not res!30632) (not e!24606))))

(assert (=> b!44386 (= res!30632 (= (totalInput!1535 cacheFurthestNullable!45) input!525))))

(declare-fun b!44387 () Bool)

(declare-fun tp!30401 () Bool)

(assert (=> b!44387 (= e!24611 (and tp!30401 mapRes!894))))

(declare-fun condMapEmpty!892 () Bool)

(declare-fun mapDefault!894 () List!704)

(assert (=> b!44387 (= condMapEmpty!892 (= (arr!379 (_values!513 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!704)) mapDefault!894)))))

(declare-fun b!44388 () Bool)

(declare-fun res!30640 () Bool)

(assert (=> b!44388 (=> (not res!30640) (not e!24616))))

(declare-fun lt!5595 () List!699)

(declare-fun lt!5605 () tuple2!838)

(assert (=> b!44388 (= res!30640 (= lt!5595 (list!188 (_2!587 lt!5605))))))

(declare-fun mapIsEmpty!892 () Bool)

(declare-fun mapRes!892 () Bool)

(assert (=> mapIsEmpty!892 mapRes!892))

(declare-fun b!44389 () Bool)

(declare-fun res!30639 () Bool)

(assert (=> b!44389 (=> (not res!30639) (not e!24606))))

(declare-fun valid!213 (CacheFurthestNullable!104) Bool)

(assert (=> b!44389 (= res!30639 (valid!213 cacheFurthestNullable!45))))

(declare-fun b!44390 () Bool)

(declare-fun e!24613 () Bool)

(assert (=> b!44390 (= e!24613 e!24602)))

(declare-fun b!44391 () Bool)

(assert (=> b!44391 (= e!24591 e!24614)))

(declare-fun res!30631 () Bool)

(assert (=> b!44391 (=> (not res!30631) (not e!24614))))

(declare-fun lt!5603 () List!699)

(assert (=> b!44391 (= res!30631 (= lt!5603 lt!5595))))

(assert (=> b!44391 (= lt!5595 (list!188 (_2!587 lt!5597)))))

(assert (=> b!44391 (= lt!5603 (list!188 (_2!587 (_1!594 lt!5599))))))

(declare-fun mapNonEmpty!893 () Bool)

(declare-fun tp!30405 () Bool)

(declare-fun tp!30402 () Bool)

(assert (=> mapNonEmpty!893 (= mapRes!892 (and tp!30405 tp!30402))))

(declare-fun mapKey!894 () (_ BitVec 32))

(declare-fun mapValue!893 () List!705)

(declare-fun mapRest!892 () (Array (_ BitVec 32) List!705))

(assert (=> mapNonEmpty!893 (= (arr!380 (_values!514 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))) (store mapRest!892 mapKey!894 mapValue!893))))

(declare-fun res!30638 () Bool)

(assert (=> start!2820 (=> (not res!30638) (not e!24606))))

(declare-fun isEmpty!144 (List!700) Bool)

(assert (=> start!2820 (= res!30638 (not (isEmpty!144 lt!5606)))))

(declare-datatypes ((JsonLexer!78 0))(
  ( (JsonLexer!79) )
))
(declare-fun rules!109 (JsonLexer!78) List!700)

(assert (=> start!2820 (= lt!5606 (rules!109 JsonLexer!79))))

(assert (=> start!2820 e!24606))

(declare-fun e!24608 () Bool)

(declare-fun inv!988 (CacheDown!156) Bool)

(assert (=> start!2820 (and (inv!988 cacheDown!333) e!24608)))

(declare-fun e!24597 () Bool)

(assert (=> start!2820 (and (inv!987 input!525) e!24597)))

(declare-fun inv!989 (CacheFurthestNullable!104) Bool)

(assert (=> start!2820 (and (inv!989 cacheFurthestNullable!45) e!24609)))

(declare-fun inv!990 (CacheUp!156) Bool)

(assert (=> start!2820 (and (inv!990 cacheUp!320) e!24613)))

(declare-fun b!44392 () Bool)

(declare-fun e!24620 () Bool)

(declare-fun e!24600 () Bool)

(assert (=> b!44392 (= e!24620 e!24600)))

(declare-fun b!44393 () Bool)

(assert (=> b!44393 (= e!24610 e!24616)))

(declare-fun res!30636 () Bool)

(assert (=> b!44393 (=> (not res!30636) (not e!24616))))

(assert (=> b!44393 (= res!30636 (= lt!5602 (list!187 (_1!587 lt!5605))))))

(assert (=> b!44393 (= lt!5605 (lex!36 Lexer!57 lt!5606 lt!5598))))

(declare-fun mapIsEmpty!893 () Bool)

(assert (=> mapIsEmpty!893 mapRes!894))

(declare-fun e!24615 () Bool)

(declare-fun tp!30396 () Bool)

(declare-fun tp!30404 () Bool)

(declare-fun array_inv!256 (array!776) Bool)

(assert (=> b!44394 (= e!24615 (and tp!30407 tp!30404 tp!30396 (array_inv!253 (_keys!525 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))) (array_inv!256 (_values!512 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))) e!24598))))

(declare-fun b!44395 () Bool)

(declare-fun e!24607 () Bool)

(assert (=> b!44395 (= e!24621 e!24607)))

(declare-fun b!44396 () Bool)

(assert (=> b!44396 (= e!24608 e!24599)))

(declare-fun mapIsEmpty!894 () Bool)

(assert (=> mapIsEmpty!894 mapRes!893))

(declare-fun b!44397 () Bool)

(declare-fun res!30643 () Bool)

(assert (=> b!44397 (=> (not res!30643) (not e!24606))))

(declare-fun valid!214 (CacheUp!156) Bool)

(assert (=> b!44397 (= res!30643 (valid!214 cacheUp!320))))

(declare-fun b!44398 () Bool)

(declare-fun tp!30409 () Bool)

(assert (=> b!44398 (= e!24594 (and tp!30409 mapRes!892))))

(declare-fun condMapEmpty!894 () Bool)

(declare-fun mapDefault!892 () List!705)

(assert (=> b!44398 (= condMapEmpty!894 (= (arr!380 (_values!514 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!705)) mapDefault!892)))))

(declare-fun b!44399 () Bool)

(declare-fun res!30637 () Bool)

(assert (=> b!44399 (=> (not res!30637) (not e!24606))))

(declare-fun valid!215 (CacheDown!156) Bool)

(assert (=> b!44399 (= res!30637 (valid!215 cacheDown!333))))

(declare-fun res!30642 () Bool)

(assert (=> b!44400 (=> (not res!30642) (not e!24616))))

(declare-fun forall!79 (List!701 Int) Bool)

(assert (=> b!44400 (= res!30642 (forall!79 lt!5596 lambda!808))))

(declare-fun b!44401 () Bool)

(declare-fun e!24593 () Bool)

(assert (=> b!44401 (= e!24593 e!24596)))

(declare-fun b!44402 () Bool)

(declare-fun e!24595 () Bool)

(declare-fun lt!5593 () MutLongMap!235)

(assert (=> b!44402 (= e!24617 (and e!24595 ((_ is LongMap!235) lt!5593)))))

(assert (=> b!44402 (= lt!5593 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))

(declare-fun b!44403 () Bool)

(assert (=> b!44403 (= e!24595 e!24593)))

(declare-fun b!44404 () Bool)

(declare-fun lt!5600 () MutLongMap!236)

(assert (=> b!44404 (= e!24601 (and e!24620 ((_ is LongMap!236) lt!5600)))))

(assert (=> b!44404 (= lt!5600 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))

(declare-fun b!44405 () Bool)

(assert (=> b!44405 (= e!24607 e!24615)))

(declare-fun b!44406 () Bool)

(declare-fun tp!30410 () Bool)

(assert (=> b!44406 (= e!24597 (and (inv!986 (c!16069 input!525)) tp!30410))))

(declare-fun b!44407 () Bool)

(assert (=> b!44407 (= e!24600 e!24592)))

(assert (= (and start!2820 res!30638) b!44374))

(assert (= (and b!44374 res!30633) b!44397))

(assert (= (and b!44397 res!30643) b!44399))

(assert (= (and b!44399 res!30637) b!44389))

(assert (= (and b!44389 res!30639) b!44386))

(assert (= (and b!44386 res!30632) b!44372))

(assert (= (and b!44372 res!30641) b!44391))

(assert (= (and b!44391 res!30631) b!44382))

(assert (= (and b!44382 res!30634) b!44393))

(assert (= (and b!44393 res!30636) b!44388))

(assert (= (and b!44388 res!30640) b!44378))

(assert (= (and b!44378 res!30635) b!44400))

(assert (= (and b!44400 res!30642) b!44373))

(assert (= (and b!44387 condMapEmpty!892) mapIsEmpty!893))

(assert (= (and b!44387 (not condMapEmpty!892)) mapNonEmpty!892))

(assert (= b!44381 b!44387))

(assert (= b!44401 b!44381))

(assert (= b!44403 b!44401))

(assert (= (and b!44402 ((_ is LongMap!235) (v!12450 (underlying!666 (cache!716 cacheDown!333))))) b!44403))

(assert (= b!44384 b!44402))

(assert (= (and b!44396 ((_ is HashMap!231) (cache!716 cacheDown!333))) b!44384))

(assert (= start!2820 b!44396))

(assert (= start!2820 b!44406))

(assert (= (and b!44398 condMapEmpty!894) mapIsEmpty!892))

(assert (= (and b!44398 (not condMapEmpty!894)) mapNonEmpty!893))

(assert (= b!44379 b!44398))

(assert (= b!44407 b!44379))

(assert (= b!44392 b!44407))

(assert (= (and b!44404 ((_ is LongMap!236) (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))) b!44392))

(assert (= b!44380 b!44404))

(assert (= (and b!44383 ((_ is HashMap!232) (cache!717 cacheFurthestNullable!45))) b!44380))

(assert (= b!44383 b!44375))

(assert (= start!2820 b!44383))

(assert (= (and b!44385 condMapEmpty!893) mapIsEmpty!894))

(assert (= (and b!44385 (not condMapEmpty!893)) mapNonEmpty!894))

(assert (= b!44394 b!44385))

(assert (= b!44405 b!44394))

(assert (= b!44395 b!44405))

(assert (= (and b!44377 ((_ is LongMap!234) (v!12448 (underlying!664 (cache!715 cacheUp!320))))) b!44395))

(assert (= b!44376 b!44377))

(assert (= (and b!44390 ((_ is HashMap!230) (cache!715 cacheUp!320))) b!44376))

(assert (= start!2820 b!44390))

(declare-fun m!18614 () Bool)

(assert (=> b!44389 m!18614))

(declare-fun m!18616 () Bool)

(assert (=> b!44383 m!18616))

(declare-fun m!18618 () Bool)

(assert (=> b!44400 m!18618))

(declare-fun m!18620 () Bool)

(assert (=> b!44382 m!18620))

(declare-fun m!18622 () Bool)

(assert (=> b!44382 m!18622))

(declare-fun m!18624 () Bool)

(assert (=> b!44382 m!18624))

(declare-fun m!18626 () Bool)

(assert (=> b!44399 m!18626))

(declare-fun m!18628 () Bool)

(assert (=> b!44406 m!18628))

(declare-fun m!18630 () Bool)

(assert (=> b!44391 m!18630))

(declare-fun m!18632 () Bool)

(assert (=> b!44391 m!18632))

(declare-fun m!18634 () Bool)

(assert (=> b!44375 m!18634))

(declare-fun m!18636 () Bool)

(assert (=> b!44374 m!18636))

(declare-fun m!18638 () Bool)

(assert (=> b!44397 m!18638))

(declare-fun m!18640 () Bool)

(assert (=> mapNonEmpty!894 m!18640))

(declare-fun m!18642 () Bool)

(assert (=> mapNonEmpty!892 m!18642))

(declare-fun m!18644 () Bool)

(assert (=> b!44381 m!18644))

(declare-fun m!18646 () Bool)

(assert (=> b!44381 m!18646))

(declare-fun m!18648 () Bool)

(assert (=> b!44393 m!18648))

(declare-fun m!18650 () Bool)

(assert (=> b!44393 m!18650))

(declare-fun m!18652 () Bool)

(assert (=> mapNonEmpty!893 m!18652))

(declare-fun m!18654 () Bool)

(assert (=> b!44379 m!18654))

(declare-fun m!18656 () Bool)

(assert (=> b!44379 m!18656))

(declare-fun m!18658 () Bool)

(assert (=> b!44373 m!18658))

(declare-fun m!18660 () Bool)

(assert (=> start!2820 m!18660))

(declare-fun m!18662 () Bool)

(assert (=> start!2820 m!18662))

(declare-fun m!18664 () Bool)

(assert (=> start!2820 m!18664))

(declare-fun m!18666 () Bool)

(assert (=> start!2820 m!18666))

(declare-fun m!18668 () Bool)

(assert (=> start!2820 m!18668))

(declare-fun m!18670 () Bool)

(assert (=> start!2820 m!18670))

(declare-fun m!18672 () Bool)

(assert (=> b!44394 m!18672))

(declare-fun m!18674 () Bool)

(assert (=> b!44394 m!18674))

(declare-fun m!18676 () Bool)

(assert (=> b!44378 m!18676))

(declare-fun m!18678 () Bool)

(assert (=> b!44388 m!18678))

(declare-fun m!18680 () Bool)

(assert (=> b!44372 m!18680))

(declare-fun m!18682 () Bool)

(assert (=> b!44372 m!18682))

(declare-fun m!18684 () Bool)

(assert (=> b!44372 m!18684))

(declare-fun m!18686 () Bool)

(assert (=> b!44372 m!18686))

(declare-fun m!18688 () Bool)

(assert (=> b!44372 m!18688))

(declare-fun m!18690 () Bool)

(assert (=> b!44372 m!18690))

(check-sat (not b_next!1111) (not b!44375) (not b!44379) (not b!44388) (not b!44378) b_and!1137 (not mapNonEmpty!892) b_and!1143 (not b!44373) (not b!44416) (not b!44385) b_and!1135 (not b_next!1101) (not b!44393) (not b_next!1107) (not b!44374) (not b!44387) (not b!44383) (not b!44397) (not b!44382) (not b!44394) (not mapNonEmpty!893) (not b_next!1105) b_and!1141 (not b!44381) b_and!1145 (not mapNonEmpty!894) (not b!44398) (not b!44399) (not b_next!1103) (not b!44406) b_and!1139 (not b!44391) (not b!44372) (not b!44400) (not b!44389) (not b_next!1109) (not start!2820))
(check-sat (not b_next!1111) b_and!1137 b_and!1143 (not b_next!1105) b_and!1135 b_and!1141 (not b_next!1101) b_and!1145 (not b_next!1103) (not b_next!1107) b_and!1139 (not b_next!1109))
(get-model)

(declare-fun d!5082 () Bool)

(declare-fun c!16073 () Bool)

(assert (=> d!5082 (= c!16073 ((_ is Node!132) (c!16069 (totalInput!1535 cacheFurthestNullable!45))))))

(declare-fun e!24635 () Bool)

(assert (=> d!5082 (= (inv!986 (c!16069 (totalInput!1535 cacheFurthestNullable!45))) e!24635)))

(declare-fun b!44425 () Bool)

(declare-fun inv!991 (Conc!132) Bool)

(assert (=> b!44425 (= e!24635 (inv!991 (c!16069 (totalInput!1535 cacheFurthestNullable!45))))))

(declare-fun b!44426 () Bool)

(declare-fun e!24636 () Bool)

(assert (=> b!44426 (= e!24635 e!24636)))

(declare-fun res!30648 () Bool)

(assert (=> b!44426 (= res!30648 (not ((_ is Leaf!326) (c!16069 (totalInput!1535 cacheFurthestNullable!45)))))))

(assert (=> b!44426 (=> res!30648 e!24636)))

(declare-fun b!44427 () Bool)

(declare-fun inv!992 (Conc!132) Bool)

(assert (=> b!44427 (= e!24636 (inv!992 (c!16069 (totalInput!1535 cacheFurthestNullable!45))))))

(assert (= (and d!5082 c!16073) b!44425))

(assert (= (and d!5082 (not c!16073)) b!44426))

(assert (= (and b!44426 (not res!30648)) b!44427))

(declare-fun m!18692 () Bool)

(assert (=> b!44425 m!18692))

(declare-fun m!18694 () Bool)

(assert (=> b!44427 m!18694))

(assert (=> b!44375 d!5082))

(declare-fun d!5084 () Bool)

(declare-fun list!189 (Conc!133) List!701)

(assert (=> d!5084 (= (list!187 (_1!587 lt!5605)) (list!189 (c!16070 (_1!587 lt!5605))))))

(declare-fun bs!6208 () Bool)

(assert (= bs!6208 d!5084))

(declare-fun m!18696 () Bool)

(assert (=> bs!6208 m!18696))

(assert (=> b!44393 d!5084))

(declare-fun b!44438 () Bool)

(declare-fun e!24643 () Bool)

(declare-fun lt!5610 () tuple2!838)

(assert (=> b!44438 (= e!24643 (= (_2!587 lt!5610) lt!5598))))

(declare-fun b!44439 () Bool)

(declare-fun e!24645 () Bool)

(assert (=> b!44439 (= e!24643 e!24645)))

(declare-fun res!30657 () Bool)

(declare-fun size!697 (BalanceConc!264) Int)

(assert (=> b!44439 (= res!30657 (< (size!697 (_2!587 lt!5610)) (size!697 lt!5598)))))

(assert (=> b!44439 (=> (not res!30657) (not e!24645))))

(declare-fun b!44440 () Bool)

(declare-fun e!24644 () Bool)

(declare-datatypes ((tuple2!848 0))(
  ( (tuple2!849 (_1!595 List!701) (_2!595 List!699)) )
))
(declare-fun lexList!14 (LexerInterface!59 List!700 List!699) tuple2!848)

(assert (=> b!44440 (= e!24644 (= (list!188 (_2!587 lt!5610)) (_2!595 (lexList!14 Lexer!57 lt!5606 (list!188 lt!5598)))))))

(declare-fun d!5086 () Bool)

(assert (=> d!5086 e!24644))

(declare-fun res!30655 () Bool)

(assert (=> d!5086 (=> (not res!30655) (not e!24644))))

(assert (=> d!5086 (= res!30655 e!24643)))

(declare-fun c!16076 () Bool)

(declare-fun size!698 (BalanceConc!266) Int)

(assert (=> d!5086 (= c!16076 (> (size!698 (_1!587 lt!5610)) 0))))

(declare-fun lexTailRecV2!11 (LexerInterface!59 List!700 BalanceConc!264 BalanceConc!264 BalanceConc!264 BalanceConc!266) tuple2!838)

(assert (=> d!5086 (= lt!5610 (lexTailRecV2!11 Lexer!57 lt!5606 lt!5598 (BalanceConc!265 Empty!132) lt!5598 (BalanceConc!267 Empty!133)))))

(assert (=> d!5086 (= (lex!36 Lexer!57 lt!5606 lt!5598) lt!5610)))

(declare-fun b!44441 () Bool)

(declare-fun res!30656 () Bool)

(assert (=> b!44441 (=> (not res!30656) (not e!24644))))

(assert (=> b!44441 (= res!30656 (= (list!187 (_1!587 lt!5610)) (_1!595 (lexList!14 Lexer!57 lt!5606 (list!188 lt!5598)))))))

(declare-fun b!44442 () Bool)

(declare-fun isEmpty!145 (BalanceConc!266) Bool)

(assert (=> b!44442 (= e!24645 (not (isEmpty!145 (_1!587 lt!5610))))))

(assert (= (and d!5086 c!16076) b!44439))

(assert (= (and d!5086 (not c!16076)) b!44438))

(assert (= (and b!44439 res!30657) b!44442))

(assert (= (and d!5086 res!30655) b!44441))

(assert (= (and b!44441 res!30656) b!44440))

(declare-fun m!18698 () Bool)

(assert (=> d!5086 m!18698))

(declare-fun m!18700 () Bool)

(assert (=> d!5086 m!18700))

(declare-fun m!18702 () Bool)

(assert (=> b!44439 m!18702))

(declare-fun m!18704 () Bool)

(assert (=> b!44439 m!18704))

(declare-fun m!18706 () Bool)

(assert (=> b!44441 m!18706))

(assert (=> b!44441 m!18620))

(assert (=> b!44441 m!18620))

(declare-fun m!18708 () Bool)

(assert (=> b!44441 m!18708))

(declare-fun m!18710 () Bool)

(assert (=> b!44442 m!18710))

(declare-fun m!18712 () Bool)

(assert (=> b!44440 m!18712))

(assert (=> b!44440 m!18620))

(assert (=> b!44440 m!18620))

(assert (=> b!44440 m!18708))

(assert (=> b!44393 d!5086))

(declare-fun d!5088 () Bool)

(declare-fun isBalanced!24 (Conc!132) Bool)

(assert (=> d!5088 (= (inv!987 (totalInput!1535 cacheFurthestNullable!45)) (isBalanced!24 (c!16069 (totalInput!1535 cacheFurthestNullable!45))))))

(declare-fun bs!6209 () Bool)

(assert (= bs!6209 d!5088))

(declare-fun m!18714 () Bool)

(assert (=> bs!6209 m!18714))

(assert (=> b!44383 d!5088))

(declare-fun d!5090 () Bool)

(declare-fun res!30660 () Bool)

(declare-fun e!24648 () Bool)

(assert (=> d!5090 (=> (not res!30660) (not e!24648))))

(declare-fun rulesValid!17 (LexerInterface!59 List!700) Bool)

(assert (=> d!5090 (= res!30660 (rulesValid!17 Lexer!57 lt!5606))))

(assert (=> d!5090 (= (rulesInvariant!51 Lexer!57 lt!5606) e!24648)))

(declare-fun b!44445 () Bool)

(declare-datatypes ((List!706 0))(
  ( (Nil!704) (Cons!704 (h!6100 String!1071) (t!16485 List!706)) )
))
(declare-fun noDuplicateTag!17 (LexerInterface!59 List!700 List!706) Bool)

(assert (=> b!44445 (= e!24648 (noDuplicateTag!17 Lexer!57 lt!5606 Nil!704))))

(assert (= (and d!5090 res!30660) b!44445))

(declare-fun m!18716 () Bool)

(assert (=> d!5090 m!18716))

(declare-fun m!18718 () Bool)

(assert (=> b!44445 m!18718))

(assert (=> b!44374 d!5090))

(declare-fun d!5092 () Bool)

(declare-fun list!190 (Conc!132) List!699)

(assert (=> d!5092 (= (list!188 lt!5598) (list!190 (c!16069 lt!5598)))))

(declare-fun bs!6210 () Bool)

(assert (= bs!6210 d!5092))

(declare-fun m!18720 () Bool)

(assert (=> bs!6210 m!18720))

(assert (=> b!44382 d!5092))

(declare-fun d!5094 () Bool)

(declare-fun fromListB!10 (List!699) BalanceConc!264)

(assert (=> d!5094 (= (seqFromList!30 lt!5604) (fromListB!10 lt!5604))))

(declare-fun bs!6211 () Bool)

(assert (= bs!6211 d!5094))

(declare-fun m!18722 () Bool)

(assert (=> bs!6211 m!18722))

(assert (=> b!44382 d!5094))

(declare-fun d!5096 () Bool)

(assert (=> d!5096 (= (list!188 input!525) (list!190 (c!16069 input!525)))))

(declare-fun bs!6212 () Bool)

(assert (= bs!6212 d!5096))

(declare-fun m!18724 () Bool)

(assert (=> bs!6212 m!18724))

(assert (=> b!44382 d!5096))

(declare-fun d!5098 () Bool)

(declare-fun res!30665 () Bool)

(declare-fun e!24653 () Bool)

(assert (=> d!5098 (=> res!30665 e!24653)))

(assert (=> d!5098 (= res!30665 ((_ is Nil!699) lt!5596))))

(assert (=> d!5098 (= (forall!79 lt!5596 lambda!808) e!24653)))

(declare-fun b!44450 () Bool)

(declare-fun e!24654 () Bool)

(assert (=> b!44450 (= e!24653 e!24654)))

(declare-fun res!30666 () Bool)

(assert (=> b!44450 (=> (not res!30666) (not e!24654))))

(declare-fun dynLambda!92 (Int Token!96) Bool)

(assert (=> b!44450 (= res!30666 (dynLambda!92 lambda!808 (h!6095 lt!5596)))))

(declare-fun b!44451 () Bool)

(assert (=> b!44451 (= e!24654 (forall!79 (t!16480 lt!5596) lambda!808))))

(assert (= (and d!5098 (not res!30665)) b!44450))

(assert (= (and b!44450 res!30666) b!44451))

(declare-fun b_lambda!249 () Bool)

(assert (=> (not b_lambda!249) (not b!44450)))

(declare-fun m!18726 () Bool)

(assert (=> b!44450 m!18726))

(declare-fun m!18728 () Bool)

(assert (=> b!44451 m!18728))

(assert (=> b!44400 d!5098))

(declare-fun d!5100 () Bool)

(declare-fun lt!5613 () Bool)

(assert (=> d!5100 (= lt!5613 (forall!79 (list!187 (_1!587 (_1!594 lt!5599))) lambda!808))))

(declare-fun forall!80 (Conc!133 Int) Bool)

(assert (=> d!5100 (= lt!5613 (forall!80 (c!16070 (_1!587 (_1!594 lt!5599))) lambda!808))))

(assert (=> d!5100 (= (forall!78 (_1!587 (_1!594 lt!5599)) lambda!808) lt!5613)))

(declare-fun bs!6213 () Bool)

(assert (= bs!6213 d!5100))

(assert (=> bs!6213 m!18690))

(assert (=> bs!6213 m!18690))

(declare-fun m!18730 () Bool)

(assert (=> bs!6213 m!18730))

(declare-fun m!18732 () Bool)

(assert (=> bs!6213 m!18732))

(assert (=> b!44373 d!5100))

(declare-fun d!5102 () Bool)

(assert (=> d!5102 (= (list!188 (_2!587 lt!5597)) (list!190 (c!16069 (_2!587 lt!5597))))))

(declare-fun bs!6214 () Bool)

(assert (= bs!6214 d!5102))

(declare-fun m!18734 () Bool)

(assert (=> bs!6214 m!18734))

(assert (=> b!44391 d!5102))

(declare-fun d!5104 () Bool)

(assert (=> d!5104 (= (list!188 (_2!587 (_1!594 lt!5599))) (list!190 (c!16069 (_2!587 (_1!594 lt!5599)))))))

(declare-fun bs!6215 () Bool)

(assert (= bs!6215 d!5104))

(declare-fun m!18736 () Bool)

(assert (=> bs!6215 m!18736))

(assert (=> b!44391 d!5104))

(declare-fun d!5106 () Bool)

(assert (=> d!5106 (= (array_inv!253 (_keys!525 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))) (bvsge (size!694 (_keys!525 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!44394 d!5106))

(declare-fun d!5108 () Bool)

(assert (=> d!5108 (= (array_inv!256 (_values!512 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))) (bvsge (size!693 (_values!512 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!44394 d!5108))

(declare-fun d!5110 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!78) Rule!130)

(declare-fun integerLiteralRule!0 (JsonLexer!78) Rule!130)

(declare-fun floatLiteralRule!0 (JsonLexer!78) Rule!130)

(declare-fun trueRule!0 (JsonLexer!78) Rule!130)

(declare-fun falseRule!0 (JsonLexer!78) Rule!130)

(declare-fun nullRule!0 (JsonLexer!78) Rule!130)

(declare-fun jsonstringRule!0 (JsonLexer!78) Rule!130)

(declare-fun lBraceRule!0 (JsonLexer!78) Rule!130)

(declare-fun rBraceRule!0 (JsonLexer!78) Rule!130)

(declare-fun lBracketRule!0 (JsonLexer!78) Rule!130)

(declare-fun rBracketRule!0 (JsonLexer!78) Rule!130)

(declare-fun colonRule!0 (JsonLexer!78) Rule!130)

(declare-fun commaRule!0 (JsonLexer!78) Rule!130)

(declare-fun eofRule!0 (JsonLexer!78) Rule!130)

(assert (=> d!5110 (= (rules!109 JsonLexer!79) (Cons!698 (whitespaceRule!0 JsonLexer!79) (Cons!698 (integerLiteralRule!0 JsonLexer!79) (Cons!698 (floatLiteralRule!0 JsonLexer!79) (Cons!698 (trueRule!0 JsonLexer!79) (Cons!698 (falseRule!0 JsonLexer!79) (Cons!698 (nullRule!0 JsonLexer!79) (Cons!698 (jsonstringRule!0 JsonLexer!79) (Cons!698 (lBraceRule!0 JsonLexer!79) (Cons!698 (rBraceRule!0 JsonLexer!79) (Cons!698 (lBracketRule!0 JsonLexer!79) (Cons!698 (rBracketRule!0 JsonLexer!79) (Cons!698 (colonRule!0 JsonLexer!79) (Cons!698 (commaRule!0 JsonLexer!79) (Cons!698 (eofRule!0 JsonLexer!79) Nil!698)))))))))))))))))

(declare-fun bs!6216 () Bool)

(assert (= bs!6216 d!5110))

(declare-fun m!18738 () Bool)

(assert (=> bs!6216 m!18738))

(declare-fun m!18740 () Bool)

(assert (=> bs!6216 m!18740))

(declare-fun m!18742 () Bool)

(assert (=> bs!6216 m!18742))

(declare-fun m!18744 () Bool)

(assert (=> bs!6216 m!18744))

(declare-fun m!18746 () Bool)

(assert (=> bs!6216 m!18746))

(declare-fun m!18748 () Bool)

(assert (=> bs!6216 m!18748))

(declare-fun m!18750 () Bool)

(assert (=> bs!6216 m!18750))

(declare-fun m!18752 () Bool)

(assert (=> bs!6216 m!18752))

(declare-fun m!18754 () Bool)

(assert (=> bs!6216 m!18754))

(declare-fun m!18756 () Bool)

(assert (=> bs!6216 m!18756))

(declare-fun m!18758 () Bool)

(assert (=> bs!6216 m!18758))

(declare-fun m!18760 () Bool)

(assert (=> bs!6216 m!18760))

(declare-fun m!18762 () Bool)

(assert (=> bs!6216 m!18762))

(declare-fun m!18764 () Bool)

(assert (=> bs!6216 m!18764))

(assert (=> start!2820 d!5110))

(declare-fun d!5112 () Bool)

(declare-fun res!30669 () Bool)

(declare-fun e!24657 () Bool)

(assert (=> d!5112 (=> (not res!30669) (not e!24657))))

(assert (=> d!5112 (= res!30669 ((_ is HashMap!231) (cache!716 cacheDown!333)))))

(assert (=> d!5112 (= (inv!988 cacheDown!333) e!24657)))

(declare-fun b!44454 () Bool)

(declare-fun validCacheMapDown!21 (MutableMap!231) Bool)

(assert (=> b!44454 (= e!24657 (validCacheMapDown!21 (cache!716 cacheDown!333)))))

(assert (= (and d!5112 res!30669) b!44454))

(declare-fun m!18766 () Bool)

(assert (=> b!44454 m!18766))

(assert (=> start!2820 d!5112))

(declare-fun d!5114 () Bool)

(assert (=> d!5114 (= (inv!987 input!525) (isBalanced!24 (c!16069 input!525)))))

(declare-fun bs!6217 () Bool)

(assert (= bs!6217 d!5114))

(declare-fun m!18768 () Bool)

(assert (=> bs!6217 m!18768))

(assert (=> start!2820 d!5114))

(declare-fun d!5116 () Bool)

(declare-fun res!30672 () Bool)

(declare-fun e!24660 () Bool)

(assert (=> d!5116 (=> (not res!30672) (not e!24660))))

(assert (=> d!5116 (= res!30672 ((_ is HashMap!232) (cache!717 cacheFurthestNullable!45)))))

(assert (=> d!5116 (= (inv!989 cacheFurthestNullable!45) e!24660)))

(declare-fun b!44457 () Bool)

(declare-fun validCacheMapFurthestNullable!13 (MutableMap!232 BalanceConc!264) Bool)

(assert (=> b!44457 (= e!24660 (validCacheMapFurthestNullable!13 (cache!717 cacheFurthestNullable!45) (totalInput!1535 cacheFurthestNullable!45)))))

(assert (= (and d!5116 res!30672) b!44457))

(declare-fun m!18770 () Bool)

(assert (=> b!44457 m!18770))

(assert (=> start!2820 d!5116))

(declare-fun d!5118 () Bool)

(declare-fun res!30675 () Bool)

(declare-fun e!24663 () Bool)

(assert (=> d!5118 (=> (not res!30675) (not e!24663))))

(assert (=> d!5118 (= res!30675 ((_ is HashMap!230) (cache!715 cacheUp!320)))))

(assert (=> d!5118 (= (inv!990 cacheUp!320) e!24663)))

(declare-fun b!44460 () Bool)

(declare-fun validCacheMapUp!19 (MutableMap!230) Bool)

(assert (=> b!44460 (= e!24663 (validCacheMapUp!19 (cache!715 cacheUp!320)))))

(assert (= (and d!5118 res!30675) b!44460))

(declare-fun m!18772 () Bool)

(assert (=> b!44460 m!18772))

(assert (=> start!2820 d!5118))

(declare-fun d!5120 () Bool)

(assert (=> d!5120 (= (isEmpty!144 lt!5606) ((_ is Nil!698) lt!5606))))

(assert (=> start!2820 d!5120))

(declare-fun d!5122 () Bool)

(assert (=> d!5122 (= (array_inv!253 (_keys!527 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))) (bvsge (size!694 (_keys!527 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!44379 d!5122))

(declare-fun d!5124 () Bool)

(assert (=> d!5124 (= (array_inv!254 (_values!514 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))) (bvsge (size!696 (_values!514 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!44379 d!5124))

(declare-fun d!5126 () Bool)

(assert (=> d!5126 (= (list!188 (_2!587 lt!5605)) (list!190 (c!16069 (_2!587 lt!5605))))))

(declare-fun bs!6218 () Bool)

(assert (= bs!6218 d!5126))

(declare-fun m!18774 () Bool)

(assert (=> bs!6218 m!18774))

(assert (=> b!44388 d!5126))

(declare-fun d!5128 () Bool)

(declare-fun c!16077 () Bool)

(assert (=> d!5128 (= c!16077 ((_ is Node!132) (c!16069 input!525)))))

(declare-fun e!24664 () Bool)

(assert (=> d!5128 (= (inv!986 (c!16069 input!525)) e!24664)))

(declare-fun b!44461 () Bool)

(assert (=> b!44461 (= e!24664 (inv!991 (c!16069 input!525)))))

(declare-fun b!44462 () Bool)

(declare-fun e!24665 () Bool)

(assert (=> b!44462 (= e!24664 e!24665)))

(declare-fun res!30676 () Bool)

(assert (=> b!44462 (= res!30676 (not ((_ is Leaf!326) (c!16069 input!525))))))

(assert (=> b!44462 (=> res!30676 e!24665)))

(declare-fun b!44463 () Bool)

(assert (=> b!44463 (= e!24665 (inv!992 (c!16069 input!525)))))

(assert (= (and d!5128 c!16077) b!44461))

(assert (= (and d!5128 (not c!16077)) b!44462))

(assert (= (and b!44462 (not res!30676)) b!44463))

(declare-fun m!18776 () Bool)

(assert (=> b!44461 m!18776))

(declare-fun m!18778 () Bool)

(assert (=> b!44463 m!18778))

(assert (=> b!44406 d!5128))

(declare-fun b!44474 () Bool)

(declare-fun e!24677 () Bool)

(assert (=> b!44474 (= e!24677 (rulesInvariant!51 Lexer!57 lt!5606))))

(declare-fun b!44475 () Bool)

(declare-fun e!24674 () Bool)

(declare-fun e!24676 () Bool)

(assert (=> b!44475 (= e!24674 e!24676)))

(declare-fun res!30688 () Bool)

(assert (=> b!44475 (=> res!30688 e!24676)))

(assert (=> b!44475 (= res!30688 (isEmpty!144 lt!5606))))

(declare-fun b!44476 () Bool)

(declare-fun e!24675 () Bool)

(declare-fun lt!5627 () tuple2!838)

(declare-fun rulesProduceEachTokenIndividuallyList!15 (LexerInterface!59 List!700 List!701) Bool)

(assert (=> b!44476 (= e!24675 (rulesProduceEachTokenIndividuallyList!15 Lexer!57 lt!5606 (list!187 (_1!587 lt!5627))))))

(declare-fun lt!5625 () Unit!322)

(declare-fun lt!5624 () Unit!322)

(assert (=> b!44476 (= lt!5625 lt!5624)))

(declare-fun lt!5626 () List!701)

(declare-fun rulesProduceEachTokenIndividually!5 (LexerInterface!59 List!700 BalanceConc!266) Bool)

(declare-fun seqFromList!31 (List!701) BalanceConc!266)

(assert (=> b!44476 (rulesProduceEachTokenIndividually!5 Lexer!57 lt!5606 (seqFromList!31 lt!5626))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!5 (LexerInterface!59 List!700 List!699 List!701) Unit!322)

(assert (=> b!44476 (= lt!5624 (lemmaLexThenRulesProducesEachTokenIndividually!5 Lexer!57 lt!5606 lt!5604 lt!5626))))

(assert (=> b!44476 (= lt!5626 (list!187 (_1!587 lt!5627)))))

(assert (=> b!44476 (= lt!5627 (lex!36 Lexer!57 lt!5606 (seqFromList!30 lt!5604)))))

(declare-fun b!44477 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!16 (LexerInterface!59 List!700 List!701) Bool)

(declare-fun lex!37 (LexerInterface!59 List!700 BalanceConc!264) tuple2!838)

(assert (=> b!44477 (= e!24676 (rulesProduceEachTokenIndividuallyList!16 Lexer!57 lt!5606 (list!187 (_1!587 (lex!37 Lexer!57 lt!5606 (seqFromList!30 lt!5604))))))))

(declare-fun b!44478 () Bool)

(declare-fun res!30690 () Bool)

(assert (=> b!44478 (=> res!30690 e!24676)))

(declare-fun rulesInvariant!52 (LexerInterface!59 List!700) Bool)

(assert (=> b!44478 (= res!30690 (not (rulesInvariant!52 Lexer!57 lt!5606)))))

(declare-fun d!5130 () Bool)

(assert (=> d!5130 e!24674))

(declare-fun res!30691 () Bool)

(assert (=> d!5130 (=> (not res!30691) (not e!24674))))

(declare-fun lt!5628 () Bool)

(assert (=> d!5130 (= res!30691 lt!5628)))

(assert (=> d!5130 (= lt!5628 e!24675)))

(declare-fun res!30687 () Bool)

(assert (=> d!5130 (=> res!30687 e!24675)))

(assert (=> d!5130 (= res!30687 (not e!24677))))

(declare-fun res!30689 () Bool)

(assert (=> d!5130 (=> (not res!30689) (not e!24677))))

(assert (=> d!5130 (= res!30689 (not (isEmpty!144 lt!5606)))))

(assert (=> d!5130 (= (lexThenRulesProduceEachTokenIndividually!15 Lexer!57 lt!5606 lt!5604) lt!5628)))

(assert (= (and d!5130 res!30689) b!44474))

(assert (= (and d!5130 (not res!30687)) b!44476))

(assert (= (and d!5130 res!30691) b!44475))

(assert (= (and b!44475 (not res!30688)) b!44478))

(assert (= (and b!44478 (not res!30690)) b!44477))

(assert (=> b!44475 m!18664))

(assert (=> b!44476 m!18622))

(declare-fun m!18780 () Bool)

(assert (=> b!44476 m!18780))

(declare-fun m!18782 () Bool)

(assert (=> b!44476 m!18782))

(assert (=> b!44476 m!18782))

(declare-fun m!18784 () Bool)

(assert (=> b!44476 m!18784))

(assert (=> b!44476 m!18622))

(declare-fun m!18786 () Bool)

(assert (=> b!44476 m!18786))

(declare-fun m!18788 () Bool)

(assert (=> b!44476 m!18788))

(assert (=> b!44476 m!18788))

(declare-fun m!18790 () Bool)

(assert (=> b!44476 m!18790))

(assert (=> d!5130 m!18664))

(assert (=> b!44474 m!18636))

(declare-fun m!18792 () Bool)

(assert (=> b!44478 m!18792))

(assert (=> b!44477 m!18622))

(assert (=> b!44477 m!18622))

(declare-fun m!18794 () Bool)

(assert (=> b!44477 m!18794))

(declare-fun m!18796 () Bool)

(assert (=> b!44477 m!18796))

(assert (=> b!44477 m!18796))

(declare-fun m!18798 () Bool)

(assert (=> b!44477 m!18798))

(assert (=> b!44378 d!5130))

(declare-fun d!5132 () Bool)

(assert (=> d!5132 (= (valid!215 cacheDown!333) (validCacheMapDown!21 (cache!716 cacheDown!333)))))

(declare-fun bs!6219 () Bool)

(assert (= bs!6219 d!5132))

(assert (=> bs!6219 m!18766))

(assert (=> b!44399 d!5132))

(declare-fun d!5134 () Bool)

(assert (=> d!5134 (= (array_inv!253 (_keys!526 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))) (bvsge (size!694 (_keys!526 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!44381 d!5134))

(declare-fun d!5136 () Bool)

(assert (=> d!5136 (= (array_inv!255 (_values!513 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))) (bvsge (size!695 (_values!513 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!44381 d!5136))

(declare-fun d!5138 () Bool)

(assert (=> d!5138 (= (list!187 (_1!587 lt!5597)) (list!189 (c!16070 (_1!587 lt!5597))))))

(declare-fun bs!6220 () Bool)

(assert (= bs!6220 d!5138))

(declare-fun m!18800 () Bool)

(assert (=> bs!6220 m!18800))

(assert (=> b!44372 d!5138))

(declare-fun b!44489 () Bool)

(declare-fun res!30702 () Bool)

(declare-fun e!24680 () Bool)

(assert (=> b!44489 (=> (not res!30702) (not e!24680))))

(declare-fun lt!5633 () tuple4!70)

(assert (=> b!44489 (= res!30702 (valid!213 (_4!35 lt!5633)))))

(declare-fun b!44490 () Bool)

(declare-fun res!30705 () Bool)

(assert (=> b!44490 (=> (not res!30705) (not e!24680))))

(assert (=> b!44490 (= res!30705 (valid!215 (_3!170 lt!5633)))))

(declare-fun d!5140 () Bool)

(assert (=> d!5140 e!24680))

(declare-fun res!30703 () Bool)

(assert (=> d!5140 (=> (not res!30703) (not e!24680))))

(assert (=> d!5140 (= res!30703 (= (list!187 (_1!587 (_1!594 lt!5633))) (list!187 (_1!587 (lex!36 Lexer!57 lt!5606 input!525)))))))

(declare-fun lt!5634 () tuple4!70)

(assert (=> d!5140 (= lt!5633 (tuple4!71 (_1!594 lt!5634) (_2!594 lt!5634) (_3!170 lt!5634) (_4!35 lt!5634)))))

(declare-fun lexTailRecV3Mem!11 (LexerInterface!59 List!700 BalanceConc!264 BalanceConc!264 BalanceConc!264 BalanceConc!266 CacheUp!156 CacheDown!156 CacheFurthestNullable!104) tuple4!70)

(assert (=> d!5140 (= lt!5634 (lexTailRecV3Mem!11 Lexer!57 lt!5606 input!525 (BalanceConc!265 Empty!132) input!525 (BalanceConc!267 Empty!133) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!5140 (not (isEmpty!144 lt!5606))))

(assert (=> d!5140 (= (lexMem!25 Lexer!57 lt!5606 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!5633)))

(declare-fun b!44491 () Bool)

(assert (=> b!44491 (= e!24680 (= (totalInput!1535 (_4!35 lt!5633)) input!525))))

(declare-fun b!44492 () Bool)

(declare-fun res!30704 () Bool)

(assert (=> b!44492 (=> (not res!30704) (not e!24680))))

(assert (=> b!44492 (= res!30704 (= (list!188 (_2!587 (_1!594 lt!5633))) (list!188 (_2!587 (lex!36 Lexer!57 lt!5606 input!525)))))))

(declare-fun b!44493 () Bool)

(declare-fun res!30706 () Bool)

(assert (=> b!44493 (=> (not res!30706) (not e!24680))))

(assert (=> b!44493 (= res!30706 (valid!214 (_2!594 lt!5633)))))

(assert (= (and d!5140 res!30703) b!44492))

(assert (= (and b!44492 res!30704) b!44489))

(assert (= (and b!44489 res!30702) b!44493))

(assert (= (and b!44493 res!30706) b!44490))

(assert (= (and b!44490 res!30705) b!44491))

(declare-fun m!18802 () Bool)

(assert (=> d!5140 m!18802))

(declare-fun m!18804 () Bool)

(assert (=> d!5140 m!18804))

(assert (=> d!5140 m!18664))

(assert (=> d!5140 m!18684))

(declare-fun m!18806 () Bool)

(assert (=> d!5140 m!18806))

(declare-fun m!18808 () Bool)

(assert (=> b!44489 m!18808))

(declare-fun m!18810 () Bool)

(assert (=> b!44492 m!18810))

(assert (=> b!44492 m!18684))

(declare-fun m!18812 () Bool)

(assert (=> b!44492 m!18812))

(declare-fun m!18814 () Bool)

(assert (=> b!44493 m!18814))

(declare-fun m!18816 () Bool)

(assert (=> b!44490 m!18816))

(assert (=> b!44372 d!5140))

(declare-fun d!5142 () Bool)

(assert (=> d!5142 (valid!214 (_2!594 lt!5599))))

(declare-fun Unit!324 () Unit!322)

(assert (=> d!5142 (= (lemmaInvariant!54 (_2!594 lt!5599)) Unit!324)))

(declare-fun bs!6221 () Bool)

(assert (= bs!6221 d!5142))

(declare-fun m!18818 () Bool)

(assert (=> bs!6221 m!18818))

(assert (=> b!44372 d!5142))

(declare-fun b!44494 () Bool)

(declare-fun e!24681 () Bool)

(declare-fun lt!5635 () tuple2!838)

(assert (=> b!44494 (= e!24681 (= (_2!587 lt!5635) input!525))))

(declare-fun b!44495 () Bool)

(declare-fun e!24683 () Bool)

(assert (=> b!44495 (= e!24681 e!24683)))

(declare-fun res!30709 () Bool)

(assert (=> b!44495 (= res!30709 (< (size!697 (_2!587 lt!5635)) (size!697 input!525)))))

(assert (=> b!44495 (=> (not res!30709) (not e!24683))))

(declare-fun b!44496 () Bool)

(declare-fun e!24682 () Bool)

(assert (=> b!44496 (= e!24682 (= (list!188 (_2!587 lt!5635)) (_2!595 (lexList!14 Lexer!57 lt!5606 (list!188 input!525)))))))

(declare-fun d!5144 () Bool)

(assert (=> d!5144 e!24682))

(declare-fun res!30707 () Bool)

(assert (=> d!5144 (=> (not res!30707) (not e!24682))))

(assert (=> d!5144 (= res!30707 e!24681)))

(declare-fun c!16078 () Bool)

(assert (=> d!5144 (= c!16078 (> (size!698 (_1!587 lt!5635)) 0))))

(assert (=> d!5144 (= lt!5635 (lexTailRecV2!11 Lexer!57 lt!5606 input!525 (BalanceConc!265 Empty!132) input!525 (BalanceConc!267 Empty!133)))))

(assert (=> d!5144 (= (lex!36 Lexer!57 lt!5606 input!525) lt!5635)))

(declare-fun b!44497 () Bool)

(declare-fun res!30708 () Bool)

(assert (=> b!44497 (=> (not res!30708) (not e!24682))))

(assert (=> b!44497 (= res!30708 (= (list!187 (_1!587 lt!5635)) (_1!595 (lexList!14 Lexer!57 lt!5606 (list!188 input!525)))))))

(declare-fun b!44498 () Bool)

(assert (=> b!44498 (= e!24683 (not (isEmpty!145 (_1!587 lt!5635))))))

(assert (= (and d!5144 c!16078) b!44495))

(assert (= (and d!5144 (not c!16078)) b!44494))

(assert (= (and b!44495 res!30709) b!44498))

(assert (= (and d!5144 res!30707) b!44497))

(assert (= (and b!44497 res!30708) b!44496))

(declare-fun m!18820 () Bool)

(assert (=> d!5144 m!18820))

(declare-fun m!18822 () Bool)

(assert (=> d!5144 m!18822))

(declare-fun m!18824 () Bool)

(assert (=> b!44495 m!18824))

(declare-fun m!18826 () Bool)

(assert (=> b!44495 m!18826))

(declare-fun m!18828 () Bool)

(assert (=> b!44497 m!18828))

(assert (=> b!44497 m!18624))

(assert (=> b!44497 m!18624))

(declare-fun m!18830 () Bool)

(assert (=> b!44497 m!18830))

(declare-fun m!18832 () Bool)

(assert (=> b!44498 m!18832))

(declare-fun m!18834 () Bool)

(assert (=> b!44496 m!18834))

(assert (=> b!44496 m!18624))

(assert (=> b!44496 m!18624))

(assert (=> b!44496 m!18830))

(assert (=> b!44372 d!5144))

(declare-fun d!5146 () Bool)

(assert (=> d!5146 (valid!215 (_3!170 lt!5599))))

(declare-fun Unit!325 () Unit!322)

(assert (=> d!5146 (= (lemmaInvariant!53 (_3!170 lt!5599)) Unit!325)))

(declare-fun bs!6222 () Bool)

(assert (= bs!6222 d!5146))

(declare-fun m!18836 () Bool)

(assert (=> bs!6222 m!18836))

(assert (=> b!44372 d!5146))

(declare-fun d!5148 () Bool)

(assert (=> d!5148 (= (list!187 (_1!587 (_1!594 lt!5599))) (list!189 (c!16070 (_1!587 (_1!594 lt!5599)))))))

(declare-fun bs!6223 () Bool)

(assert (= bs!6223 d!5148))

(declare-fun m!18838 () Bool)

(assert (=> bs!6223 m!18838))

(assert (=> b!44372 d!5148))

(declare-fun d!5150 () Bool)

(assert (=> d!5150 (= (valid!213 cacheFurthestNullable!45) (validCacheMapFurthestNullable!13 (cache!717 cacheFurthestNullable!45) (totalInput!1535 cacheFurthestNullable!45)))))

(declare-fun bs!6224 () Bool)

(assert (= bs!6224 d!5150))

(assert (=> bs!6224 m!18770))

(assert (=> b!44389 d!5150))

(declare-fun d!5152 () Bool)

(assert (=> d!5152 (= (valid!214 cacheUp!320) (validCacheMapUp!19 (cache!715 cacheUp!320)))))

(declare-fun bs!6225 () Bool)

(assert (= bs!6225 d!5152))

(assert (=> bs!6225 m!18772))

(assert (=> b!44397 d!5152))

(declare-fun e!24688 () Bool)

(declare-fun tp!30418 () Bool)

(declare-fun b!44505 () Bool)

(declare-fun tp!30417 () Bool)

(assert (=> b!44505 (= e!24688 (and (inv!986 (left!559 (c!16069 (totalInput!1535 cacheFurthestNullable!45)))) tp!30417 (inv!986 (right!889 (c!16069 (totalInput!1535 cacheFurthestNullable!45)))) tp!30418))))

(declare-fun b!44506 () Bool)

(declare-fun inv!993 (IArray!265) Bool)

(assert (=> b!44506 (= e!24688 (inv!993 (xs!2711 (c!16069 (totalInput!1535 cacheFurthestNullable!45)))))))

(assert (=> b!44375 (= tp!30392 (and (inv!986 (c!16069 (totalInput!1535 cacheFurthestNullable!45))) e!24688))))

(assert (= (and b!44375 ((_ is Node!132) (c!16069 (totalInput!1535 cacheFurthestNullable!45)))) b!44505))

(assert (= (and b!44375 ((_ is Leaf!326) (c!16069 (totalInput!1535 cacheFurthestNullable!45)))) b!44506))

(declare-fun m!18840 () Bool)

(assert (=> b!44505 m!18840))

(declare-fun m!18842 () Bool)

(assert (=> b!44505 m!18842))

(declare-fun m!18844 () Bool)

(assert (=> b!44506 m!18844))

(assert (=> b!44375 m!18634))

(declare-fun tp!30423 () Bool)

(declare-fun b!44511 () Bool)

(declare-fun setRes!1034 () Bool)

(declare-fun e!24696 () Bool)

(declare-fun inv!994 (Context!178) Bool)

(assert (=> b!44511 (= e!24696 (and (inv!994 (_1!588 (_1!589 (h!6097 (zeroValue!490 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320)))))))))) setRes!1034 tp!30423))))

(declare-fun condSetEmpty!1034 () Bool)

(assert (=> b!44511 (= condSetEmpty!1034 (= (_2!589 (h!6097 (zeroValue!490 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320)))))))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1034 () Bool)

(assert (=> setIsEmpty!1034 setRes!1034))

(declare-fun setNonEmpty!1034 () Bool)

(declare-fun tp!30424 () Bool)

(declare-fun setElem!1034 () Context!178)

(assert (=> setNonEmpty!1034 (= setRes!1034 (and tp!30424 (inv!994 setElem!1034)))))

(declare-fun setRest!1034 () (InoxSet Context!178))

(assert (=> setNonEmpty!1034 (= (_2!589 (h!6097 (zeroValue!490 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1034 true) setRest!1034))))

(assert (=> b!44394 (= tp!30404 e!24696)))

(assert (= (and b!44511 condSetEmpty!1034) setIsEmpty!1034))

(assert (= (and b!44511 (not condSetEmpty!1034)) setNonEmpty!1034))

(assert (= (and b!44394 ((_ is Cons!701) (zeroValue!490 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320)))))))) b!44511))

(declare-fun m!18846 () Bool)

(assert (=> b!44511 m!18846))

(declare-fun m!18848 () Bool)

(assert (=> setNonEmpty!1034 m!18848))

(declare-fun b!44512 () Bool)

(declare-fun setRes!1035 () Bool)

(declare-fun e!24699 () Bool)

(declare-fun tp!30425 () Bool)

(assert (=> b!44512 (= e!24699 (and (inv!994 (_1!588 (_1!589 (h!6097 (minValue!490 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320)))))))))) setRes!1035 tp!30425))))

(declare-fun condSetEmpty!1035 () Bool)

(assert (=> b!44512 (= condSetEmpty!1035 (= (_2!589 (h!6097 (minValue!490 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320)))))))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1035 () Bool)

(assert (=> setIsEmpty!1035 setRes!1035))

(declare-fun setNonEmpty!1035 () Bool)

(declare-fun tp!30426 () Bool)

(declare-fun setElem!1035 () Context!178)

(assert (=> setNonEmpty!1035 (= setRes!1035 (and tp!30426 (inv!994 setElem!1035)))))

(declare-fun setRest!1035 () (InoxSet Context!178))

(assert (=> setNonEmpty!1035 (= (_2!589 (h!6097 (minValue!490 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1035 true) setRest!1035))))

(assert (=> b!44394 (= tp!30396 e!24699)))

(assert (= (and b!44512 condSetEmpty!1035) setIsEmpty!1035))

(assert (= (and b!44512 (not condSetEmpty!1035)) setNonEmpty!1035))

(assert (= (and b!44394 ((_ is Cons!701) (minValue!490 (v!12447 (underlying!663 (v!12448 (underlying!664 (cache!715 cacheUp!320)))))))) b!44512))

(declare-fun m!18850 () Bool)

(assert (=> b!44512 m!18850))

(declare-fun m!18852 () Bool)

(assert (=> setNonEmpty!1035 m!18852))

(declare-fun e!24702 () Bool)

(declare-fun setRes!1036 () Bool)

(declare-fun b!44513 () Bool)

(declare-fun tp!30427 () Bool)

(assert (=> b!44513 (= e!24702 (and (inv!994 (_1!588 (_1!589 (h!6097 mapDefault!893)))) setRes!1036 tp!30427))))

(declare-fun condSetEmpty!1036 () Bool)

(assert (=> b!44513 (= condSetEmpty!1036 (= (_2!589 (h!6097 mapDefault!893)) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1036 () Bool)

(assert (=> setIsEmpty!1036 setRes!1036))

(declare-fun setNonEmpty!1036 () Bool)

(declare-fun tp!30428 () Bool)

(declare-fun setElem!1036 () Context!178)

(assert (=> setNonEmpty!1036 (= setRes!1036 (and tp!30428 (inv!994 setElem!1036)))))

(declare-fun setRest!1036 () (InoxSet Context!178))

(assert (=> setNonEmpty!1036 (= (_2!589 (h!6097 mapDefault!893)) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1036 true) setRest!1036))))

(assert (=> b!44385 (= tp!30399 e!24702)))

(assert (= (and b!44513 condSetEmpty!1036) setIsEmpty!1036))

(assert (= (and b!44513 (not condSetEmpty!1036)) setNonEmpty!1036))

(assert (= (and b!44385 ((_ is Cons!701) mapDefault!893)) b!44513))

(declare-fun m!18854 () Bool)

(assert (=> b!44513 m!18854))

(declare-fun m!18856 () Bool)

(assert (=> setNonEmpty!1036 m!18856))

(declare-fun setIsEmpty!1041 () Bool)

(declare-fun setRes!1041 () Bool)

(assert (=> setIsEmpty!1041 setRes!1041))

(declare-fun b!44520 () Bool)

(declare-fun e!24713 () Bool)

(declare-fun tp!30439 () Bool)

(assert (=> b!44520 (= e!24713 (and setRes!1041 tp!30439))))

(declare-fun condSetEmpty!1042 () Bool)

(declare-fun mapValue!897 () List!705)

(assert (=> b!44520 (= condSetEmpty!1042 (= (_1!592 (_1!593 (h!6099 mapValue!897))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun condMapEmpty!897 () Bool)

(declare-fun mapDefault!897 () List!705)

(assert (=> mapNonEmpty!893 (= condMapEmpty!897 (= mapRest!892 ((as const (Array (_ BitVec 32) List!705)) mapDefault!897)))))

(declare-fun e!24715 () Bool)

(declare-fun mapRes!897 () Bool)

(assert (=> mapNonEmpty!893 (= tp!30405 (and e!24715 mapRes!897))))

(declare-fun setNonEmpty!1041 () Bool)

(declare-fun tp!30442 () Bool)

(declare-fun setElem!1042 () Context!178)

(assert (=> setNonEmpty!1041 (= setRes!1041 (and tp!30442 (inv!994 setElem!1042)))))

(declare-fun setRest!1041 () (InoxSet Context!178))

(assert (=> setNonEmpty!1041 (= (_1!592 (_1!593 (h!6099 mapValue!897))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1042 true) setRest!1041))))

(declare-fun setNonEmpty!1042 () Bool)

(declare-fun setRes!1042 () Bool)

(declare-fun tp!30443 () Bool)

(declare-fun setElem!1041 () Context!178)

(assert (=> setNonEmpty!1042 (= setRes!1042 (and tp!30443 (inv!994 setElem!1041)))))

(declare-fun setRest!1042 () (InoxSet Context!178))

(assert (=> setNonEmpty!1042 (= (_1!592 (_1!593 (h!6099 mapDefault!897))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1041 true) setRest!1042))))

(declare-fun mapNonEmpty!897 () Bool)

(declare-fun tp!30441 () Bool)

(assert (=> mapNonEmpty!897 (= mapRes!897 (and tp!30441 e!24713))))

(declare-fun mapKey!897 () (_ BitVec 32))

(declare-fun mapRest!897 () (Array (_ BitVec 32) List!705))

(assert (=> mapNonEmpty!897 (= mapRest!892 (store mapRest!897 mapKey!897 mapValue!897))))

(declare-fun mapIsEmpty!897 () Bool)

(assert (=> mapIsEmpty!897 mapRes!897))

(declare-fun b!44521 () Bool)

(declare-fun tp!30440 () Bool)

(assert (=> b!44521 (= e!24715 (and setRes!1042 tp!30440))))

(declare-fun condSetEmpty!1041 () Bool)

(assert (=> b!44521 (= condSetEmpty!1041 (= (_1!592 (_1!593 (h!6099 mapDefault!897))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1042 () Bool)

(assert (=> setIsEmpty!1042 setRes!1042))

(assert (= (and mapNonEmpty!893 condMapEmpty!897) mapIsEmpty!897))

(assert (= (and mapNonEmpty!893 (not condMapEmpty!897)) mapNonEmpty!897))

(assert (= (and b!44520 condSetEmpty!1042) setIsEmpty!1041))

(assert (= (and b!44520 (not condSetEmpty!1042)) setNonEmpty!1041))

(assert (= (and mapNonEmpty!897 ((_ is Cons!703) mapValue!897)) b!44520))

(assert (= (and b!44521 condSetEmpty!1041) setIsEmpty!1042))

(assert (= (and b!44521 (not condSetEmpty!1041)) setNonEmpty!1042))

(assert (= (and mapNonEmpty!893 ((_ is Cons!703) mapDefault!897)) b!44521))

(declare-fun m!18858 () Bool)

(assert (=> setNonEmpty!1041 m!18858))

(declare-fun m!18860 () Bool)

(assert (=> setNonEmpty!1042 m!18860))

(declare-fun m!18862 () Bool)

(assert (=> mapNonEmpty!897 m!18862))

(declare-fun b!44526 () Bool)

(declare-fun e!24721 () Bool)

(declare-fun setRes!1045 () Bool)

(declare-fun tp!30449 () Bool)

(assert (=> b!44526 (= e!24721 (and setRes!1045 tp!30449))))

(declare-fun condSetEmpty!1045 () Bool)

(assert (=> b!44526 (= condSetEmpty!1045 (= (_1!592 (_1!593 (h!6099 mapValue!893))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1045 () Bool)

(assert (=> setIsEmpty!1045 setRes!1045))

(declare-fun setNonEmpty!1045 () Bool)

(declare-fun tp!30448 () Bool)

(declare-fun setElem!1045 () Context!178)

(assert (=> setNonEmpty!1045 (= setRes!1045 (and tp!30448 (inv!994 setElem!1045)))))

(declare-fun setRest!1045 () (InoxSet Context!178))

(assert (=> setNonEmpty!1045 (= (_1!592 (_1!593 (h!6099 mapValue!893))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1045 true) setRest!1045))))

(assert (=> mapNonEmpty!893 (= tp!30402 e!24721)))

(assert (= (and b!44526 condSetEmpty!1045) setIsEmpty!1045))

(assert (= (and b!44526 (not condSetEmpty!1045)) setNonEmpty!1045))

(assert (= (and mapNonEmpty!893 ((_ is Cons!703) mapValue!893)) b!44526))

(declare-fun m!18864 () Bool)

(assert (=> setNonEmpty!1045 m!18864))

(declare-fun b!44529 () Bool)

(declare-fun e!24725 () Bool)

(assert (=> b!44529 (= e!24725 true)))

(declare-fun b!44528 () Bool)

(declare-fun e!24724 () Bool)

(assert (=> b!44528 (= e!24724 e!24725)))

(declare-fun b!44527 () Bool)

(declare-fun e!24723 () Bool)

(assert (=> b!44527 (= e!24723 e!24724)))

(assert (=> b!44416 e!24723))

(assert (= b!44528 b!44529))

(assert (= b!44527 b!44528))

(assert (= (and b!44416 ((_ is Cons!698) (t!16479 lt!5606))) b!44527))

(assert (=> b!44529 (< (dynLambda!89 order!139 (toValue!644 (transformation!165 (h!6094 (t!16479 lt!5606))))) (dynLambda!90 order!141 lambda!808))))

(assert (=> b!44529 (< (dynLambda!91 order!143 (toChars!503 (transformation!165 (h!6094 (t!16479 lt!5606))))) (dynLambda!90 order!141 lambda!808))))

(declare-fun b!44530 () Bool)

(declare-fun e!24726 () Bool)

(declare-fun setRes!1046 () Bool)

(declare-fun tp!30451 () Bool)

(assert (=> b!44530 (= e!24726 (and setRes!1046 tp!30451))))

(declare-fun condSetEmpty!1046 () Bool)

(assert (=> b!44530 (= condSetEmpty!1046 (= (_1!592 (_1!593 (h!6099 (zeroValue!492 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1046 () Bool)

(assert (=> setIsEmpty!1046 setRes!1046))

(declare-fun setNonEmpty!1046 () Bool)

(declare-fun tp!30450 () Bool)

(declare-fun setElem!1046 () Context!178)

(assert (=> setNonEmpty!1046 (= setRes!1046 (and tp!30450 (inv!994 setElem!1046)))))

(declare-fun setRest!1046 () (InoxSet Context!178))

(assert (=> setNonEmpty!1046 (= (_1!592 (_1!593 (h!6099 (zeroValue!492 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1046 true) setRest!1046))))

(assert (=> b!44379 (= tp!30400 e!24726)))

(assert (= (and b!44530 condSetEmpty!1046) setIsEmpty!1046))

(assert (= (and b!44530 (not condSetEmpty!1046)) setNonEmpty!1046))

(assert (= (and b!44379 ((_ is Cons!703) (zeroValue!492 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45)))))))) b!44530))

(declare-fun m!18866 () Bool)

(assert (=> setNonEmpty!1046 m!18866))

(declare-fun b!44531 () Bool)

(declare-fun e!24728 () Bool)

(declare-fun setRes!1047 () Bool)

(declare-fun tp!30453 () Bool)

(assert (=> b!44531 (= e!24728 (and setRes!1047 tp!30453))))

(declare-fun condSetEmpty!1047 () Bool)

(assert (=> b!44531 (= condSetEmpty!1047 (= (_1!592 (_1!593 (h!6099 (minValue!492 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1047 () Bool)

(assert (=> setIsEmpty!1047 setRes!1047))

(declare-fun setNonEmpty!1047 () Bool)

(declare-fun tp!30452 () Bool)

(declare-fun setElem!1047 () Context!178)

(assert (=> setNonEmpty!1047 (= setRes!1047 (and tp!30452 (inv!994 setElem!1047)))))

(declare-fun setRest!1047 () (InoxSet Context!178))

(assert (=> setNonEmpty!1047 (= (_1!592 (_1!593 (h!6099 (minValue!492 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1047 true) setRest!1047))))

(assert (=> b!44379 (= tp!30412 e!24728)))

(assert (= (and b!44531 condSetEmpty!1047) setIsEmpty!1047))

(assert (= (and b!44531 (not condSetEmpty!1047)) setNonEmpty!1047))

(assert (= (and b!44379 ((_ is Cons!703) (minValue!492 (v!12451 (underlying!667 (v!12452 (underlying!668 (cache!717 cacheFurthestNullable!45)))))))) b!44531))

(declare-fun m!18868 () Bool)

(assert (=> setNonEmpty!1047 m!18868))

(declare-fun tp!30454 () Bool)

(declare-fun b!44532 () Bool)

(declare-fun e!24730 () Bool)

(declare-fun tp!30455 () Bool)

(assert (=> b!44532 (= e!24730 (and (inv!986 (left!559 (c!16069 input!525))) tp!30454 (inv!986 (right!889 (c!16069 input!525))) tp!30455))))

(declare-fun b!44533 () Bool)

(assert (=> b!44533 (= e!24730 (inv!993 (xs!2711 (c!16069 input!525))))))

(assert (=> b!44406 (= tp!30410 (and (inv!986 (c!16069 input!525)) e!24730))))

(assert (= (and b!44406 ((_ is Node!132) (c!16069 input!525))) b!44532))

(assert (= (and b!44406 ((_ is Leaf!326) (c!16069 input!525))) b!44533))

(declare-fun m!18870 () Bool)

(assert (=> b!44532 m!18870))

(declare-fun m!18872 () Bool)

(assert (=> b!44532 m!18872))

(declare-fun m!18874 () Bool)

(assert (=> b!44533 m!18874))

(assert (=> b!44406 m!18628))

(declare-fun tp!30460 () Bool)

(declare-fun b!44538 () Bool)

(declare-fun e!24739 () Bool)

(declare-fun setRes!1050 () Bool)

(assert (=> b!44538 (= e!24739 (and (inv!994 (_2!590 (_1!591 (h!6098 mapDefault!894)))) setRes!1050 tp!30460))))

(declare-fun condSetEmpty!1050 () Bool)

(assert (=> b!44538 (= condSetEmpty!1050 (= (_2!591 (h!6098 mapDefault!894)) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1050 () Bool)

(assert (=> setIsEmpty!1050 setRes!1050))

(declare-fun setNonEmpty!1050 () Bool)

(declare-fun tp!30461 () Bool)

(declare-fun setElem!1050 () Context!178)

(assert (=> setNonEmpty!1050 (= setRes!1050 (and tp!30461 (inv!994 setElem!1050)))))

(declare-fun setRest!1050 () (InoxSet Context!178))

(assert (=> setNonEmpty!1050 (= (_2!591 (h!6098 mapDefault!894)) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1050 true) setRest!1050))))

(assert (=> b!44387 (= tp!30401 e!24739)))

(assert (= (and b!44538 condSetEmpty!1050) setIsEmpty!1050))

(assert (= (and b!44538 (not condSetEmpty!1050)) setNonEmpty!1050))

(assert (= (and b!44387 ((_ is Cons!702) mapDefault!894)) b!44538))

(declare-fun m!18876 () Bool)

(assert (=> b!44538 m!18876))

(declare-fun m!18878 () Bool)

(assert (=> setNonEmpty!1050 m!18878))

(declare-fun setIsEmpty!1055 () Bool)

(declare-fun setRes!1055 () Bool)

(assert (=> setIsEmpty!1055 setRes!1055))

(declare-fun mapNonEmpty!900 () Bool)

(declare-fun mapRes!900 () Bool)

(declare-fun tp!30472 () Bool)

(declare-fun e!24754 () Bool)

(assert (=> mapNonEmpty!900 (= mapRes!900 (and tp!30472 e!24754))))

(declare-fun mapRest!900 () (Array (_ BitVec 32) List!703))

(declare-fun mapValue!900 () List!703)

(declare-fun mapKey!900 () (_ BitVec 32))

(assert (=> mapNonEmpty!900 (= mapRest!893 (store mapRest!900 mapKey!900 mapValue!900))))

(declare-fun b!44545 () Bool)

(declare-fun setRes!1056 () Bool)

(declare-fun tp!30474 () Bool)

(assert (=> b!44545 (= e!24754 (and (inv!994 (_1!588 (_1!589 (h!6097 mapValue!900)))) setRes!1056 tp!30474))))

(declare-fun condSetEmpty!1056 () Bool)

(assert (=> b!44545 (= condSetEmpty!1056 (= (_2!589 (h!6097 mapValue!900)) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setNonEmpty!1055 () Bool)

(declare-fun tp!30475 () Bool)

(declare-fun setElem!1056 () Context!178)

(assert (=> setNonEmpty!1055 (= setRes!1055 (and tp!30475 (inv!994 setElem!1056)))))

(declare-fun mapDefault!900 () List!703)

(declare-fun setRest!1055 () (InoxSet Context!178))

(assert (=> setNonEmpty!1055 (= (_2!589 (h!6097 mapDefault!900)) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1056 true) setRest!1055))))

(declare-fun mapIsEmpty!900 () Bool)

(assert (=> mapIsEmpty!900 mapRes!900))

(declare-fun b!44546 () Bool)

(declare-fun e!24756 () Bool)

(declare-fun tp!30473 () Bool)

(assert (=> b!44546 (= e!24756 (and (inv!994 (_1!588 (_1!589 (h!6097 mapDefault!900)))) setRes!1055 tp!30473))))

(declare-fun condSetEmpty!1055 () Bool)

(assert (=> b!44546 (= condSetEmpty!1055 (= (_2!589 (h!6097 mapDefault!900)) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setNonEmpty!1056 () Bool)

(declare-fun tp!30476 () Bool)

(declare-fun setElem!1055 () Context!178)

(assert (=> setNonEmpty!1056 (= setRes!1056 (and tp!30476 (inv!994 setElem!1055)))))

(declare-fun setRest!1056 () (InoxSet Context!178))

(assert (=> setNonEmpty!1056 (= (_2!589 (h!6097 mapValue!900)) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1055 true) setRest!1056))))

(declare-fun condMapEmpty!900 () Bool)

(assert (=> mapNonEmpty!894 (= condMapEmpty!900 (= mapRest!893 ((as const (Array (_ BitVec 32) List!703)) mapDefault!900)))))

(assert (=> mapNonEmpty!894 (= tp!30411 (and e!24756 mapRes!900))))

(declare-fun setIsEmpty!1056 () Bool)

(assert (=> setIsEmpty!1056 setRes!1056))

(assert (= (and mapNonEmpty!894 condMapEmpty!900) mapIsEmpty!900))

(assert (= (and mapNonEmpty!894 (not condMapEmpty!900)) mapNonEmpty!900))

(assert (= (and b!44545 condSetEmpty!1056) setIsEmpty!1056))

(assert (= (and b!44545 (not condSetEmpty!1056)) setNonEmpty!1056))

(assert (= (and mapNonEmpty!900 ((_ is Cons!701) mapValue!900)) b!44545))

(assert (= (and b!44546 condSetEmpty!1055) setIsEmpty!1055))

(assert (= (and b!44546 (not condSetEmpty!1055)) setNonEmpty!1055))

(assert (= (and mapNonEmpty!894 ((_ is Cons!701) mapDefault!900)) b!44546))

(declare-fun m!18880 () Bool)

(assert (=> b!44546 m!18880))

(declare-fun m!18882 () Bool)

(assert (=> mapNonEmpty!900 m!18882))

(declare-fun m!18884 () Bool)

(assert (=> b!44545 m!18884))

(declare-fun m!18886 () Bool)

(assert (=> setNonEmpty!1056 m!18886))

(declare-fun m!18888 () Bool)

(assert (=> setNonEmpty!1055 m!18888))

(declare-fun tp!30477 () Bool)

(declare-fun setRes!1057 () Bool)

(declare-fun e!24759 () Bool)

(declare-fun b!44547 () Bool)

(assert (=> b!44547 (= e!24759 (and (inv!994 (_1!588 (_1!589 (h!6097 mapValue!894)))) setRes!1057 tp!30477))))

(declare-fun condSetEmpty!1057 () Bool)

(assert (=> b!44547 (= condSetEmpty!1057 (= (_2!589 (h!6097 mapValue!894)) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1057 () Bool)

(assert (=> setIsEmpty!1057 setRes!1057))

(declare-fun setNonEmpty!1057 () Bool)

(declare-fun tp!30478 () Bool)

(declare-fun setElem!1057 () Context!178)

(assert (=> setNonEmpty!1057 (= setRes!1057 (and tp!30478 (inv!994 setElem!1057)))))

(declare-fun setRest!1057 () (InoxSet Context!178))

(assert (=> setNonEmpty!1057 (= (_2!589 (h!6097 mapValue!894)) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1057 true) setRest!1057))))

(assert (=> mapNonEmpty!894 (= tp!30398 e!24759)))

(assert (= (and b!44547 condSetEmpty!1057) setIsEmpty!1057))

(assert (= (and b!44547 (not condSetEmpty!1057)) setNonEmpty!1057))

(assert (= (and mapNonEmpty!894 ((_ is Cons!701) mapValue!894)) b!44547))

(declare-fun m!18890 () Bool)

(assert (=> b!44547 m!18890))

(declare-fun m!18892 () Bool)

(assert (=> setNonEmpty!1057 m!18892))

(declare-fun setNonEmpty!1062 () Bool)

(declare-fun setRes!1063 () Bool)

(declare-fun tp!30490 () Bool)

(declare-fun setElem!1063 () Context!178)

(assert (=> setNonEmpty!1062 (= setRes!1063 (and tp!30490 (inv!994 setElem!1063)))))

(declare-fun mapDefault!903 () List!704)

(declare-fun setRest!1062 () (InoxSet Context!178))

(assert (=> setNonEmpty!1062 (= (_2!591 (h!6098 mapDefault!903)) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1063 true) setRest!1062))))

(declare-fun condMapEmpty!903 () Bool)

(assert (=> mapNonEmpty!892 (= condMapEmpty!903 (= mapRest!894 ((as const (Array (_ BitVec 32) List!704)) mapDefault!903)))))

(declare-fun e!24778 () Bool)

(declare-fun mapRes!903 () Bool)

(assert (=> mapNonEmpty!892 (= tp!30391 (and e!24778 mapRes!903))))

(declare-fun setNonEmpty!1063 () Bool)

(declare-fun setRes!1062 () Bool)

(declare-fun tp!30493 () Bool)

(declare-fun setElem!1062 () Context!178)

(assert (=> setNonEmpty!1063 (= setRes!1062 (and tp!30493 (inv!994 setElem!1062)))))

(declare-fun mapValue!903 () List!704)

(declare-fun setRest!1063 () (InoxSet Context!178))

(assert (=> setNonEmpty!1063 (= (_2!591 (h!6098 mapValue!903)) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1062 true) setRest!1063))))

(declare-fun setIsEmpty!1062 () Bool)

(assert (=> setIsEmpty!1062 setRes!1062))

(declare-fun tp!30492 () Bool)

(declare-fun b!44554 () Bool)

(assert (=> b!44554 (= e!24778 (and (inv!994 (_2!590 (_1!591 (h!6098 mapDefault!903)))) setRes!1063 tp!30492))))

(declare-fun condSetEmpty!1062 () Bool)

(assert (=> b!44554 (= condSetEmpty!1062 (= (_2!591 (h!6098 mapDefault!903)) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1063 () Bool)

(assert (=> setIsEmpty!1063 setRes!1063))

(declare-fun e!24774 () Bool)

(declare-fun b!44555 () Bool)

(declare-fun tp!30491 () Bool)

(assert (=> b!44555 (= e!24774 (and (inv!994 (_2!590 (_1!591 (h!6098 mapValue!903)))) setRes!1062 tp!30491))))

(declare-fun condSetEmpty!1063 () Bool)

(assert (=> b!44555 (= condSetEmpty!1063 (= (_2!591 (h!6098 mapValue!903)) ((as const (Array Context!178 Bool)) false)))))

(declare-fun mapIsEmpty!903 () Bool)

(assert (=> mapIsEmpty!903 mapRes!903))

(declare-fun mapNonEmpty!903 () Bool)

(declare-fun tp!30489 () Bool)

(assert (=> mapNonEmpty!903 (= mapRes!903 (and tp!30489 e!24774))))

(declare-fun mapKey!903 () (_ BitVec 32))

(declare-fun mapRest!903 () (Array (_ BitVec 32) List!704))

(assert (=> mapNonEmpty!903 (= mapRest!894 (store mapRest!903 mapKey!903 mapValue!903))))

(assert (= (and mapNonEmpty!892 condMapEmpty!903) mapIsEmpty!903))

(assert (= (and mapNonEmpty!892 (not condMapEmpty!903)) mapNonEmpty!903))

(assert (= (and b!44555 condSetEmpty!1063) setIsEmpty!1062))

(assert (= (and b!44555 (not condSetEmpty!1063)) setNonEmpty!1063))

(assert (= (and mapNonEmpty!903 ((_ is Cons!702) mapValue!903)) b!44555))

(assert (= (and b!44554 condSetEmpty!1062) setIsEmpty!1063))

(assert (= (and b!44554 (not condSetEmpty!1062)) setNonEmpty!1062))

(assert (= (and mapNonEmpty!892 ((_ is Cons!702) mapDefault!903)) b!44554))

(declare-fun m!18894 () Bool)

(assert (=> setNonEmpty!1063 m!18894))

(declare-fun m!18896 () Bool)

(assert (=> b!44555 m!18896))

(declare-fun m!18898 () Bool)

(assert (=> mapNonEmpty!903 m!18898))

(declare-fun m!18900 () Bool)

(assert (=> setNonEmpty!1062 m!18900))

(declare-fun m!18902 () Bool)

(assert (=> b!44554 m!18902))

(declare-fun b!44556 () Bool)

(declare-fun e!24781 () Bool)

(declare-fun setRes!1064 () Bool)

(declare-fun tp!30494 () Bool)

(assert (=> b!44556 (= e!24781 (and (inv!994 (_2!590 (_1!591 (h!6098 mapValue!892)))) setRes!1064 tp!30494))))

(declare-fun condSetEmpty!1064 () Bool)

(assert (=> b!44556 (= condSetEmpty!1064 (= (_2!591 (h!6098 mapValue!892)) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1064 () Bool)

(assert (=> setIsEmpty!1064 setRes!1064))

(declare-fun setNonEmpty!1064 () Bool)

(declare-fun tp!30495 () Bool)

(declare-fun setElem!1064 () Context!178)

(assert (=> setNonEmpty!1064 (= setRes!1064 (and tp!30495 (inv!994 setElem!1064)))))

(declare-fun setRest!1064 () (InoxSet Context!178))

(assert (=> setNonEmpty!1064 (= (_2!591 (h!6098 mapValue!892)) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1064 true) setRest!1064))))

(assert (=> mapNonEmpty!892 (= tp!30406 e!24781)))

(assert (= (and b!44556 condSetEmpty!1064) setIsEmpty!1064))

(assert (= (and b!44556 (not condSetEmpty!1064)) setNonEmpty!1064))

(assert (= (and mapNonEmpty!892 ((_ is Cons!702) mapValue!892)) b!44556))

(declare-fun m!18904 () Bool)

(assert (=> b!44556 m!18904))

(declare-fun m!18906 () Bool)

(assert (=> setNonEmpty!1064 m!18906))

(declare-fun b!44557 () Bool)

(declare-fun e!24784 () Bool)

(declare-fun tp!30496 () Bool)

(declare-fun setRes!1065 () Bool)

(assert (=> b!44557 (= e!24784 (and (inv!994 (_2!590 (_1!591 (h!6098 (zeroValue!491 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333)))))))))) setRes!1065 tp!30496))))

(declare-fun condSetEmpty!1065 () Bool)

(assert (=> b!44557 (= condSetEmpty!1065 (= (_2!591 (h!6098 (zeroValue!491 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333)))))))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1065 () Bool)

(assert (=> setIsEmpty!1065 setRes!1065))

(declare-fun setNonEmpty!1065 () Bool)

(declare-fun tp!30497 () Bool)

(declare-fun setElem!1065 () Context!178)

(assert (=> setNonEmpty!1065 (= setRes!1065 (and tp!30497 (inv!994 setElem!1065)))))

(declare-fun setRest!1065 () (InoxSet Context!178))

(assert (=> setNonEmpty!1065 (= (_2!591 (h!6098 (zeroValue!491 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1065 true) setRest!1065))))

(assert (=> b!44381 (= tp!30394 e!24784)))

(assert (= (and b!44557 condSetEmpty!1065) setIsEmpty!1065))

(assert (= (and b!44557 (not condSetEmpty!1065)) setNonEmpty!1065))

(assert (= (and b!44381 ((_ is Cons!702) (zeroValue!491 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333)))))))) b!44557))

(declare-fun m!18908 () Bool)

(assert (=> b!44557 m!18908))

(declare-fun m!18910 () Bool)

(assert (=> setNonEmpty!1065 m!18910))

(declare-fun b!44558 () Bool)

(declare-fun e!24787 () Bool)

(declare-fun tp!30498 () Bool)

(declare-fun setRes!1066 () Bool)

(assert (=> b!44558 (= e!24787 (and (inv!994 (_2!590 (_1!591 (h!6098 (minValue!491 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333)))))))))) setRes!1066 tp!30498))))

(declare-fun condSetEmpty!1066 () Bool)

(assert (=> b!44558 (= condSetEmpty!1066 (= (_2!591 (h!6098 (minValue!491 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333)))))))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1066 () Bool)

(assert (=> setIsEmpty!1066 setRes!1066))

(declare-fun setNonEmpty!1066 () Bool)

(declare-fun tp!30499 () Bool)

(declare-fun setElem!1066 () Context!178)

(assert (=> setNonEmpty!1066 (= setRes!1066 (and tp!30499 (inv!994 setElem!1066)))))

(declare-fun setRest!1066 () (InoxSet Context!178))

(assert (=> setNonEmpty!1066 (= (_2!591 (h!6098 (minValue!491 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1066 true) setRest!1066))))

(assert (=> b!44381 (= tp!30397 e!24787)))

(assert (= (and b!44558 condSetEmpty!1066) setIsEmpty!1066))

(assert (= (and b!44558 (not condSetEmpty!1066)) setNonEmpty!1066))

(assert (= (and b!44381 ((_ is Cons!702) (minValue!491 (v!12449 (underlying!665 (v!12450 (underlying!666 (cache!716 cacheDown!333)))))))) b!44558))

(declare-fun m!18912 () Bool)

(assert (=> b!44558 m!18912))

(declare-fun m!18914 () Bool)

(assert (=> setNonEmpty!1066 m!18914))

(declare-fun b!44559 () Bool)

(declare-fun e!24789 () Bool)

(declare-fun setRes!1067 () Bool)

(declare-fun tp!30501 () Bool)

(assert (=> b!44559 (= e!24789 (and setRes!1067 tp!30501))))

(declare-fun condSetEmpty!1067 () Bool)

(assert (=> b!44559 (= condSetEmpty!1067 (= (_1!592 (_1!593 (h!6099 mapDefault!892))) ((as const (Array Context!178 Bool)) false)))))

(declare-fun setIsEmpty!1067 () Bool)

(assert (=> setIsEmpty!1067 setRes!1067))

(declare-fun setNonEmpty!1067 () Bool)

(declare-fun tp!30500 () Bool)

(declare-fun setElem!1067 () Context!178)

(assert (=> setNonEmpty!1067 (= setRes!1067 (and tp!30500 (inv!994 setElem!1067)))))

(declare-fun setRest!1067 () (InoxSet Context!178))

(assert (=> setNonEmpty!1067 (= (_1!592 (_1!593 (h!6099 mapDefault!892))) ((_ map or) (store ((as const (Array Context!178 Bool)) false) setElem!1067 true) setRest!1067))))

(assert (=> b!44398 (= tp!30409 e!24789)))

(assert (= (and b!44559 condSetEmpty!1067) setIsEmpty!1067))

(assert (= (and b!44559 (not condSetEmpty!1067)) setNonEmpty!1067))

(assert (= (and b!44398 ((_ is Cons!703) mapDefault!892)) b!44559))

(declare-fun m!18916 () Bool)

(assert (=> setNonEmpty!1067 m!18916))

(declare-fun b_lambda!251 () Bool)

(assert (= b_lambda!249 (or b!44400 b_lambda!251)))

(declare-fun bs!6226 () Bool)

(declare-fun d!5154 () Bool)

(assert (= bs!6226 (and d!5154 b!44400)))

(declare-fun rulesProduceIndividualToken!6 (LexerInterface!59 List!700 Token!96) Bool)

(assert (=> bs!6226 (= (dynLambda!92 lambda!808 (h!6095 lt!5596)) (rulesProduceIndividualToken!6 Lexer!57 lt!5606 (h!6095 lt!5596)))))

(declare-fun m!18918 () Bool)

(assert (=> bs!6226 m!18918))

(assert (=> b!44450 d!5154))

(check-sat b_and!1135 b_and!1141 (not b!44554) (not setNonEmpty!1055) (not d!5140) (not b_next!1111) (not b_lambda!251) (not b!44375) (not d!5090) (not b!44461) (not d!5138) (not b!44558) (not b!44545) (not d!5132) (not setNonEmpty!1047) (not setNonEmpty!1066) (not b!44441) (not b!44546) (not b!44439) (not b!44547) (not b!44475) (not b!44490) (not mapNonEmpty!900) (not setNonEmpty!1042) (not b!44493) b_and!1137 (not b!44513) (not b!44526) (not b!44533) (not b!44477) (not b!44496) (not setNonEmpty!1063) (not b!44489) (not b!44498) b_and!1143 (not setNonEmpty!1035) (not b!44512) (not b!44457) (not b!44538) (not setNonEmpty!1050) (not b!44559) (not setNonEmpty!1062) (not d!5142) (not b_next!1105) (not b!44557) (not d!5126) (not b!44521) (not mapNonEmpty!897) (not b!44460) (not b!44505) (not setNonEmpty!1046) (not setNonEmpty!1041) (not d!5088) (not b!44454) (not setNonEmpty!1036) (not setNonEmpty!1045) (not d!5104) (not d!5094) (not d!5148) (not b!44492) (not b_next!1101) (not b!44520) (not b!44495) (not d!5144) (not setNonEmpty!1067) (not setNonEmpty!1056) b_and!1145 (not d!5084) (not b!44476) (not b!44506) (not b!44445) (not b!44511) (not b!44497) (not setNonEmpty!1064) (not d!5086) (not b!44530) (not d!5110) (not setNonEmpty!1034) (not bs!6226) (not b!44425) (not d!5102) (not b!44555) (not b_next!1103) (not b!44406) (not b!44531) (not d!5096) (not b!44463) (not b_next!1107) (not b!44474) (not b!44532) b_and!1139 (not d!5146) (not d!5114) (not mapNonEmpty!903) (not b!44440) (not setNonEmpty!1065) (not setNonEmpty!1057) (not d!5092) (not b!44442) (not d!5150) (not d!5100) (not b!44527) (not b!44556) (not b_next!1109) (not b!44427) (not d!5130) (not b!44451) (not b!44478) (not d!5152))
(check-sat (not b_next!1111) b_and!1137 b_and!1143 (not b_next!1105) b_and!1135 b_and!1141 (not b_next!1101) b_and!1145 (not b_next!1103) (not b_next!1107) b_and!1139 (not b_next!1109))
