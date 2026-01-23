; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3098 () Bool)

(assert start!3098)

(declare-fun b!46413 () Bool)

(declare-fun b_free!1221 () Bool)

(declare-fun b_next!1221 () Bool)

(assert (=> b!46413 (= b_free!1221 (not b_next!1221))))

(declare-fun tp!31530 () Bool)

(declare-fun b_and!1255 () Bool)

(assert (=> b!46413 (= tp!31530 b_and!1255)))

(declare-fun b!46422 () Bool)

(declare-fun b_free!1223 () Bool)

(declare-fun b_next!1223 () Bool)

(assert (=> b!46422 (= b_free!1223 (not b_next!1223))))

(declare-fun tp!31537 () Bool)

(declare-fun b_and!1257 () Bool)

(assert (=> b!46422 (= tp!31537 b_and!1257)))

(declare-fun b!46428 () Bool)

(declare-fun b_free!1225 () Bool)

(declare-fun b_next!1225 () Bool)

(assert (=> b!46428 (= b_free!1225 (not b_next!1225))))

(declare-fun tp!31543 () Bool)

(declare-fun b_and!1259 () Bool)

(assert (=> b!46428 (= tp!31543 b_and!1259)))

(declare-fun b!46399 () Bool)

(declare-fun b_free!1227 () Bool)

(declare-fun b_next!1227 () Bool)

(assert (=> b!46399 (= b_free!1227 (not b_next!1227))))

(declare-fun tp!31528 () Bool)

(declare-fun b_and!1261 () Bool)

(assert (=> b!46399 (= tp!31528 b_and!1261)))

(declare-fun b!46426 () Bool)

(declare-fun b_free!1229 () Bool)

(declare-fun b_next!1229 () Bool)

(assert (=> b!46426 (= b_free!1229 (not b_next!1229))))

(declare-fun tp!31533 () Bool)

(declare-fun b_and!1263 () Bool)

(assert (=> b!46426 (= tp!31533 b_and!1263)))

(declare-fun b!46401 () Bool)

(declare-fun b_free!1231 () Bool)

(declare-fun b_next!1231 () Bool)

(assert (=> b!46401 (= b_free!1231 (not b_next!1231))))

(declare-fun tp!31538 () Bool)

(declare-fun b_and!1265 () Bool)

(assert (=> b!46401 (= tp!31538 b_and!1265)))

(declare-fun b!46447 () Bool)

(declare-fun e!26486 () Bool)

(assert (=> b!46447 (= e!26486 true)))

(declare-fun b!46446 () Bool)

(declare-fun e!26485 () Bool)

(assert (=> b!46446 (= e!26485 e!26486)))

(declare-fun b!46445 () Bool)

(declare-fun e!26484 () Bool)

(assert (=> b!46445 (= e!26484 e!26485)))

(declare-fun b!46423 () Bool)

(assert (=> b!46423 e!26484))

(assert (= b!46446 b!46447))

(assert (= b!46445 b!46446))

(declare-datatypes ((List!773 0))(
  ( (Nil!771) (Cons!771 (h!6167 (_ BitVec 16)) (t!16900 List!773)) )
))
(declare-datatypes ((TokenValue!165 0))(
  ( (FloatLiteralValue!330 (text!1600 List!773)) (TokenValueExt!164 (__x!1297 Int)) (Broken!825 (value!7771 List!773)) (Object!166) (End!165) (Def!165) (Underscore!165) (Match!165) (Else!165) (Error!165) (Case!165) (If!165) (Extends!165) (Abstract!165) (Class!165) (Val!165) (DelimiterValue!330 (del!225 List!773)) (KeywordValue!171 (value!7772 List!773)) (CommentValue!330 (value!7773 List!773)) (WhitespaceValue!330 (value!7774 List!773)) (IndentationValue!165 (value!7775 List!773)) (String!1120) (Int32!165) (Broken!826 (value!7776 List!773)) (Boolean!166) (Unit!353) (OperatorValue!168 (op!225 List!773)) (IdentifierValue!330 (value!7777 List!773)) (IdentifierValue!331 (value!7778 List!773)) (WhitespaceValue!331 (value!7779 List!773)) (True!330) (False!330) (Broken!827 (value!7780 List!773)) (Broken!828 (value!7781 List!773)) (True!331) (RightBrace!165) (RightBracket!165) (Colon!165) (Null!165) (Comma!165) (LeftBracket!165) (False!331) (LeftBrace!165) (ImaginaryLiteralValue!165 (text!1601 List!773)) (StringLiteralValue!495 (value!7782 List!773)) (EOFValue!165 (value!7783 List!773)) (IdentValue!165 (value!7784 List!773)) (DelimiterValue!331 (value!7785 List!773)) (DedentValue!165 (value!7786 List!773)) (NewLineValue!165 (value!7787 List!773)) (IntegerValue!495 (value!7788 (_ BitVec 32)) (text!1602 List!773)) (IntegerValue!496 (value!7789 Int) (text!1603 List!773)) (Times!165) (Or!165) (Equal!165) (Minus!165) (Broken!829 (value!7790 List!773)) (And!165) (Div!165) (LessEqual!165) (Mod!165) (Concat!406) (Not!165) (Plus!165) (SpaceValue!165 (value!7791 List!773)) (IntegerValue!497 (value!7792 Int) (text!1604 List!773)) (StringLiteralValue!496 (text!1605 List!773)) (FloatLiteralValue!331 (text!1606 List!773)) (BytesLiteralValue!165 (value!7793 List!773)) (CommentValue!331 (value!7794 List!773)) (StringLiteralValue!497 (value!7795 List!773)) (ErrorTokenValue!165 (msg!226 List!773)) )
))
(declare-datatypes ((Regex!241 0))(
  ( (ElementMatch!241 (c!16147 (_ BitVec 16))) (Concat!407 (regOne!994 Regex!241) (regTwo!994 Regex!241)) (EmptyExpr!241) (Star!241 (reg!570 Regex!241)) (EmptyLang!241) (Union!241 (regOne!995 Regex!241) (regTwo!995 Regex!241)) )
))
(declare-datatypes ((String!1121 0))(
  ( (String!1122 (value!7796 String)) )
))
(declare-datatypes ((IArray!303 0))(
  ( (IArray!304 (innerList!209 List!773)) )
))
(declare-datatypes ((Conc!151 0))(
  ( (Node!151 (left!603 Conc!151) (right!933 Conc!151) (csize!532 Int) (cheight!362 Int)) (Leaf!350 (xs!2730 IArray!303) (csize!533 Int)) (Empty!151) )
))
(declare-datatypes ((BalanceConc!302 0))(
  ( (BalanceConc!303 (c!16148 Conc!151)) )
))
(declare-datatypes ((TokenValueInjection!154 0))(
  ( (TokenValueInjection!155 (toValue!654 Int) (toChars!513 Int)) )
))
(declare-datatypes ((Rule!150 0))(
  ( (Rule!151 (regex!175 Regex!241) (tag!353 String!1121) (isSeparator!175 Bool) (transformation!175 TokenValueInjection!154)) )
))
(declare-datatypes ((List!774 0))(
  ( (Nil!772) (Cons!772 (h!6168 Rule!150) (t!16901 List!774)) )
))
(declare-fun lt!6205 () List!774)

(get-info :version)

(assert (= (and b!46423 ((_ is Cons!772) lt!6205)) b!46445))

(declare-fun lambda!870 () Int)

(declare-fun order!201 () Int)

(declare-fun order!199 () Int)

(declare-fun dynLambda!124 (Int Int) Int)

(declare-fun dynLambda!125 (Int Int) Int)

(assert (=> b!46447 (< (dynLambda!124 order!199 (toValue!654 (transformation!175 (h!6168 lt!6205)))) (dynLambda!125 order!201 lambda!870))))

(declare-fun order!203 () Int)

(declare-fun dynLambda!126 (Int Int) Int)

(assert (=> b!46447 (< (dynLambda!126 order!203 (toChars!513 (transformation!175 (h!6168 lt!6205)))) (dynLambda!125 order!201 lambda!870))))

(declare-fun b!46396 () Bool)

(declare-fun res!31475 () Bool)

(declare-fun e!26456 () Bool)

(assert (=> b!46396 (=> (not res!31475) (not e!26456))))

(declare-datatypes ((List!775 0))(
  ( (Nil!773) (Cons!773 (h!6169 Regex!241) (t!16902 List!775)) )
))
(declare-datatypes ((Context!198 0))(
  ( (Context!199 (exprs!599 List!775)) )
))
(declare-datatypes ((tuple2!944 0))(
  ( (tuple2!945 (_1!667 Context!198) (_2!667 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!259 0))(
  ( (HashableExt!258 (__x!1298 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!946 0))(
  ( (tuple2!947 (_1!668 tuple2!944) (_2!668 (InoxSet Context!198))) )
))
(declare-datatypes ((List!776 0))(
  ( (Nil!774) (Cons!774 (h!6170 tuple2!946) (t!16903 List!776)) )
))
(declare-datatypes ((array!874 0))(
  ( (array!875 (arr!416 (Array (_ BitVec 32) List!776)) (size!751 (_ BitVec 32))) )
))
(declare-datatypes ((array!876 0))(
  ( (array!877 (arr!417 (Array (_ BitVec 32) (_ BitVec 64))) (size!752 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!526 0))(
  ( (LongMapFixedSize!527 (defaultEntry!601 Int) (mask!985 (_ BitVec 32)) (extraKeys!509 (_ BitVec 32)) (zeroValue!519 List!776) (minValue!519 List!776) (_size!658 (_ BitVec 32)) (_keys!554 array!876) (_values!541 array!874) (_vacant!323 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1041 0))(
  ( (Cell!1042 (v!12505 LongMapFixedSize!526)) )
))
(declare-datatypes ((MutLongMap!263 0))(
  ( (LongMap!263 (underlying!721 Cell!1041)) (MutLongMapExt!262 (__x!1299 Int)) )
))
(declare-datatypes ((Cell!1043 0))(
  ( (Cell!1044 (v!12506 MutLongMap!263)) )
))
(declare-datatypes ((MutableMap!259 0))(
  ( (MutableMapExt!258 (__x!1300 Int)) (HashMap!259 (underlying!722 Cell!1043) (hashF!2127 Hashable!259) (_size!659 (_ BitVec 32)) (defaultValue!408 Int)) )
))
(declare-datatypes ((CacheUp!176 0))(
  ( (CacheUp!177 (cache!744 MutableMap!259)) )
))
(declare-datatypes ((Token!116 0))(
  ( (Token!117 (value!7797 TokenValue!165) (rule!651 Rule!150) (size!753 Int) (originalCharacters!229 List!773)) )
))
(declare-datatypes ((List!777 0))(
  ( (Nil!775) (Cons!775 (h!6171 Token!116) (t!16904 List!777)) )
))
(declare-datatypes ((IArray!305 0))(
  ( (IArray!306 (innerList!210 List!777)) )
))
(declare-datatypes ((Conc!152 0))(
  ( (Node!152 (left!604 Conc!152) (right!934 Conc!152) (csize!534 Int) (cheight!363 Int)) (Leaf!351 (xs!2731 IArray!305) (csize!535 Int)) (Empty!152) )
))
(declare-datatypes ((BalanceConc!304 0))(
  ( (BalanceConc!305 (c!16149 Conc!152)) )
))
(declare-datatypes ((tuple2!948 0))(
  ( (tuple2!949 (_1!669 BalanceConc!304) (_2!669 BalanceConc!302)) )
))
(declare-datatypes ((tuple3!304 0))(
  ( (tuple3!305 (_1!670 Regex!241) (_2!670 Context!198) (_3!195 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!950 0))(
  ( (tuple2!951 (_1!671 tuple3!304) (_2!671 (InoxSet Context!198))) )
))
(declare-datatypes ((List!778 0))(
  ( (Nil!776) (Cons!776 (h!6172 tuple2!950) (t!16905 List!778)) )
))
(declare-datatypes ((array!878 0))(
  ( (array!879 (arr!418 (Array (_ BitVec 32) List!778)) (size!754 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!528 0))(
  ( (LongMapFixedSize!529 (defaultEntry!602 Int) (mask!986 (_ BitVec 32)) (extraKeys!510 (_ BitVec 32)) (zeroValue!520 List!778) (minValue!520 List!778) (_size!660 (_ BitVec 32)) (_keys!555 array!876) (_values!542 array!878) (_vacant!324 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1045 0))(
  ( (Cell!1046 (v!12507 LongMapFixedSize!528)) )
))
(declare-datatypes ((MutLongMap!264 0))(
  ( (LongMap!264 (underlying!723 Cell!1045)) (MutLongMapExt!263 (__x!1301 Int)) )
))
(declare-datatypes ((Cell!1047 0))(
  ( (Cell!1048 (v!12508 MutLongMap!264)) )
))
(declare-datatypes ((Hashable!260 0))(
  ( (HashableExt!259 (__x!1302 Int)) )
))
(declare-datatypes ((MutableMap!260 0))(
  ( (MutableMapExt!259 (__x!1303 Int)) (HashMap!260 (underlying!724 Cell!1047) (hashF!2128 Hashable!260) (_size!661 (_ BitVec 32)) (defaultValue!409 Int)) )
))
(declare-datatypes ((CacheDown!174 0))(
  ( (CacheDown!175 (cache!745 MutableMap!260)) )
))
(declare-datatypes ((tuple3!306 0))(
  ( (tuple3!307 (_1!672 (InoxSet Context!198)) (_2!672 Int) (_3!196 Int)) )
))
(declare-datatypes ((tuple2!952 0))(
  ( (tuple2!953 (_1!673 tuple3!306) (_2!673 Int)) )
))
(declare-datatypes ((List!779 0))(
  ( (Nil!777) (Cons!777 (h!6173 tuple2!952) (t!16906 List!779)) )
))
(declare-datatypes ((array!880 0))(
  ( (array!881 (arr!419 (Array (_ BitVec 32) List!779)) (size!755 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!530 0))(
  ( (LongMapFixedSize!531 (defaultEntry!603 Int) (mask!987 (_ BitVec 32)) (extraKeys!511 (_ BitVec 32)) (zeroValue!521 List!779) (minValue!521 List!779) (_size!662 (_ BitVec 32)) (_keys!556 array!876) (_values!543 array!880) (_vacant!325 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!261 0))(
  ( (HashableExt!260 (__x!1304 Int)) )
))
(declare-datatypes ((Cell!1049 0))(
  ( (Cell!1050 (v!12509 LongMapFixedSize!530)) )
))
(declare-datatypes ((MutLongMap!265 0))(
  ( (LongMap!265 (underlying!725 Cell!1049)) (MutLongMapExt!264 (__x!1305 Int)) )
))
(declare-datatypes ((Cell!1051 0))(
  ( (Cell!1052 (v!12510 MutLongMap!265)) )
))
(declare-datatypes ((MutableMap!261 0))(
  ( (MutableMapExt!260 (__x!1306 Int)) (HashMap!261 (underlying!726 Cell!1051) (hashF!2129 Hashable!261) (_size!663 (_ BitVec 32)) (defaultValue!410 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!124 0))(
  ( (CacheFurthestNullable!125 (cache!746 MutableMap!261) (totalInput!1545 BalanceConc!302)) )
))
(declare-datatypes ((tuple4!86 0))(
  ( (tuple4!87 (_1!674 tuple2!948) (_2!674 CacheUp!176) (_3!197 CacheDown!174) (_4!43 CacheFurthestNullable!124)) )
))
(declare-fun lt!6202 () tuple4!86)

(declare-fun valid!234 (CacheFurthestNullable!124) Bool)

(assert (=> b!46396 (= res!31475 (valid!234 (_4!43 lt!6202)))))

(declare-fun b!46397 () Bool)

(declare-fun res!31460 () Bool)

(assert (=> b!46397 (=> (not res!31460) (not e!26456))))

(declare-fun valid!235 (CacheUp!176) Bool)

(assert (=> b!46397 (= res!31460 (valid!235 (_2!674 lt!6202)))))

(declare-fun b!46398 () Bool)

(declare-fun e!26461 () Bool)

(declare-fun e!26452 () Bool)

(assert (=> b!46398 (= e!26461 e!26452)))

(declare-fun e!26472 () Bool)

(declare-fun tp!31526 () Bool)

(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!124)

(declare-fun e!26465 () Bool)

(declare-fun tp!31541 () Bool)

(declare-fun array_inv!279 (array!876) Bool)

(declare-fun array_inv!280 (array!880) Bool)

(assert (=> b!46399 (= e!26465 (and tp!31528 tp!31526 tp!31541 (array_inv!279 (_keys!556 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))) (array_inv!280 (_values!543 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))) e!26472))))

(declare-fun b!46400 () Bool)

(declare-fun res!31465 () Bool)

(declare-fun e!26447 () Bool)

(assert (=> b!46400 (=> (not res!31465) (not e!26447))))

(declare-datatypes ((LexerInterface!68 0))(
  ( (LexerInterfaceExt!65 (__x!1307 Int)) (Lexer!66) )
))
(declare-fun rulesInvariant!62 (LexerInterface!68 List!774) Bool)

(assert (=> b!46400 (= res!31465 (rulesInvariant!62 Lexer!66 lt!6205))))

(declare-fun b!46402 () Bool)

(declare-fun res!31468 () Bool)

(assert (=> b!46402 (=> (not res!31468) (not e!26447))))

(declare-fun cacheUp!320 () CacheUp!176)

(assert (=> b!46402 (= res!31468 (valid!235 cacheUp!320))))

(declare-fun b!46403 () Bool)

(declare-fun e!26453 () Bool)

(declare-fun e!26476 () Bool)

(declare-fun lt!6198 () MutLongMap!265)

(assert (=> b!46403 (= e!26453 (and e!26476 ((_ is LongMap!265) lt!6198)))))

(assert (=> b!46403 (= lt!6198 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))

(declare-fun mapNonEmpty!1027 () Bool)

(declare-fun mapRes!1027 () Bool)

(declare-fun tp!31547 () Bool)

(declare-fun tp!31531 () Bool)

(assert (=> mapNonEmpty!1027 (= mapRes!1027 (and tp!31547 tp!31531))))

(declare-fun mapRest!1028 () (Array (_ BitVec 32) List!778))

(declare-fun mapKey!1028 () (_ BitVec 32))

(declare-fun mapValue!1029 () List!778)

(declare-fun cacheDown!333 () CacheDown!174)

(assert (=> mapNonEmpty!1027 (= (arr!418 (_values!542 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))) (store mapRest!1028 mapKey!1028 mapValue!1029))))

(declare-fun b!46404 () Bool)

(declare-fun e!26463 () Bool)

(declare-fun e!26457 () Bool)

(assert (=> b!46404 (= e!26463 e!26457)))

(declare-fun mapIsEmpty!1027 () Bool)

(declare-fun mapRes!1029 () Bool)

(assert (=> mapIsEmpty!1027 mapRes!1029))

(declare-fun b!46405 () Bool)

(declare-fun e!26467 () Bool)

(assert (=> b!46405 (= e!26457 e!26467)))

(declare-fun b!46406 () Bool)

(declare-fun e!26449 () Bool)

(declare-fun e!26475 () Bool)

(assert (=> b!46406 (= e!26449 e!26475)))

(declare-fun res!31476 () Bool)

(assert (=> b!46406 (=> (not res!31476) (not e!26475))))

(declare-fun lt!6204 () BalanceConc!302)

(declare-fun lt!6196 () List!773)

(declare-fun list!211 (BalanceConc!302) List!773)

(assert (=> b!46406 (= res!31476 (= (list!211 lt!6204) lt!6196))))

(declare-fun seqFromList!40 (List!773) BalanceConc!302)

(assert (=> b!46406 (= lt!6204 (seqFromList!40 lt!6196))))

(declare-fun input!525 () BalanceConc!302)

(assert (=> b!46406 (= lt!6196 (list!211 input!525))))

(declare-fun mapNonEmpty!1028 () Bool)

(declare-fun tp!31535 () Bool)

(declare-fun tp!31529 () Bool)

(assert (=> mapNonEmpty!1028 (= mapRes!1029 (and tp!31535 tp!31529))))

(declare-fun mapRest!1027 () (Array (_ BitVec 32) List!779))

(declare-fun mapValue!1028 () List!779)

(declare-fun mapKey!1027 () (_ BitVec 32))

(assert (=> mapNonEmpty!1028 (= (arr!419 (_values!543 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))) (store mapRest!1027 mapKey!1027 mapValue!1028))))

(declare-fun res!31466 () Bool)

(assert (=> start!3098 (=> (not res!31466) (not e!26447))))

(declare-fun isEmpty!154 (List!774) Bool)

(assert (=> start!3098 (= res!31466 (not (isEmpty!154 lt!6205)))))

(declare-datatypes ((JsonLexer!88 0))(
  ( (JsonLexer!89) )
))
(declare-fun rules!109 (JsonLexer!88) List!774)

(assert (=> start!3098 (= lt!6205 (rules!109 JsonLexer!89))))

(assert (=> start!3098 e!26447))

(declare-fun e!26464 () Bool)

(declare-fun inv!1052 (CacheDown!174) Bool)

(assert (=> start!3098 (and (inv!1052 cacheDown!333) e!26464)))

(declare-fun e!26474 () Bool)

(declare-fun inv!1053 (BalanceConc!302) Bool)

(assert (=> start!3098 (and (inv!1053 input!525) e!26474)))

(declare-fun e!26450 () Bool)

(declare-fun inv!1054 (CacheFurthestNullable!124) Bool)

(assert (=> start!3098 (and (inv!1054 cacheFurthestNullable!45) e!26450)))

(declare-fun e!26451 () Bool)

(declare-fun inv!1055 (CacheUp!176) Bool)

(assert (=> start!3098 (and (inv!1055 cacheUp!320) e!26451)))

(declare-fun tp!31544 () Bool)

(declare-fun e!26462 () Bool)

(declare-fun tp!31540 () Bool)

(declare-fun array_inv!281 (array!874) Bool)

(assert (=> b!46401 (= e!26467 (and tp!31538 tp!31544 tp!31540 (array_inv!279 (_keys!554 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))) (array_inv!281 (_values!541 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))) e!26462))))

(declare-fun b!46407 () Bool)

(declare-fun e!26473 () Bool)

(assert (=> b!46407 (= e!26476 e!26473)))

(declare-fun b!46408 () Bool)

(declare-fun e!26460 () Bool)

(declare-fun lt!6201 () MutLongMap!263)

(assert (=> b!46408 (= e!26460 (and e!26463 ((_ is LongMap!263) lt!6201)))))

(assert (=> b!46408 (= lt!6201 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))

(declare-fun mapIsEmpty!1028 () Bool)

(declare-fun mapRes!1028 () Bool)

(assert (=> mapIsEmpty!1028 mapRes!1028))

(declare-fun b!46409 () Bool)

(declare-fun tp!31539 () Bool)

(assert (=> b!46409 (= e!26462 (and tp!31539 mapRes!1028))))

(declare-fun condMapEmpty!1028 () Bool)

(declare-fun mapDefault!1029 () List!776)

(assert (=> b!46409 (= condMapEmpty!1028 (= (arr!416 (_values!541 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!776)) mapDefault!1029)))))

(declare-fun b!46410 () Bool)

(declare-fun e!26454 () Bool)

(declare-fun tp!31545 () Bool)

(declare-fun inv!1056 (Conc!151) Bool)

(assert (=> b!46410 (= e!26454 (and (inv!1056 (c!16148 (totalInput!1545 cacheFurthestNullable!45))) tp!31545))))

(declare-fun b!46411 () Bool)

(declare-fun e!26469 () Bool)

(assert (=> b!46411 (= e!26469 e!26449)))

(declare-fun res!31471 () Bool)

(assert (=> b!46411 (=> (not res!31471) (not e!26449))))

(declare-fun lt!6209 () List!773)

(declare-fun lt!6203 () List!773)

(assert (=> b!46411 (= res!31471 (= lt!6209 lt!6203))))

(declare-fun lt!6206 () tuple2!948)

(assert (=> b!46411 (= lt!6203 (list!211 (_2!669 lt!6206)))))

(assert (=> b!46411 (= lt!6209 (list!211 (_2!669 (_1!674 lt!6202))))))

(declare-fun b!46412 () Bool)

(assert (=> b!46412 (= e!26473 e!26465)))

(declare-fun e!26455 () Bool)

(assert (=> b!46413 (= e!26455 (and e!26453 tp!31530))))

(declare-fun b!46414 () Bool)

(declare-fun tp!31527 () Bool)

(assert (=> b!46414 (= e!26474 (and (inv!1056 (c!16148 input!525)) tp!31527))))

(declare-fun b!46415 () Bool)

(declare-fun e!26466 () Bool)

(assert (=> b!46415 (= e!26466 e!26461)))

(declare-fun b!46416 () Bool)

(declare-fun res!31463 () Bool)

(assert (=> b!46416 (=> (not res!31463) (not e!26456))))

(declare-fun forall!95 (BalanceConc!304 Int) Bool)

(assert (=> b!46416 (= res!31463 (forall!95 (_1!669 (_1!674 lt!6202)) lambda!870))))

(declare-fun b!46417 () Bool)

(declare-fun e!26471 () Bool)

(assert (=> b!46417 (= e!26451 e!26471)))

(declare-fun mapIsEmpty!1029 () Bool)

(assert (=> mapIsEmpty!1029 mapRes!1027))

(declare-fun b!46418 () Bool)

(declare-fun e!26470 () Bool)

(declare-fun tp!31532 () Bool)

(assert (=> b!46418 (= e!26470 (and tp!31532 mapRes!1027))))

(declare-fun condMapEmpty!1027 () Bool)

(declare-fun mapDefault!1027 () List!778)

(assert (=> b!46418 (= condMapEmpty!1027 (= (arr!418 (_values!542 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!778)) mapDefault!1027)))))

(declare-fun b!46419 () Bool)

(assert (=> b!46419 (= e!26456 (not (= (totalInput!1545 (_4!43 lt!6202)) input!525)))))

(declare-fun b!46420 () Bool)

(declare-fun res!31474 () Bool)

(assert (=> b!46420 (=> (not res!31474) (not e!26447))))

(assert (=> b!46420 (= res!31474 (= (totalInput!1545 cacheFurthestNullable!45) input!525))))

(declare-fun b!46421 () Bool)

(declare-fun res!31472 () Bool)

(assert (=> b!46421 (=> (not res!31472) (not e!26447))))

(declare-fun valid!236 (CacheDown!174) Bool)

(assert (=> b!46421 (= res!31472 (valid!236 cacheDown!333))))

(assert (=> b!46422 (= e!26471 (and e!26460 tp!31537))))

(declare-fun res!31462 () Bool)

(assert (=> b!46423 (=> (not res!31462) (not e!26456))))

(declare-fun lt!6197 () List!777)

(declare-fun forall!96 (List!777 Int) Bool)

(assert (=> b!46423 (= res!31462 (forall!96 lt!6197 lambda!870))))

(declare-fun b!46424 () Bool)

(declare-fun res!31473 () Bool)

(assert (=> b!46424 (=> (not res!31473) (not e!26447))))

(assert (=> b!46424 (= res!31473 (valid!234 cacheFurthestNullable!45))))

(declare-fun b!46425 () Bool)

(declare-fun res!31469 () Bool)

(assert (=> b!46425 (=> (not res!31469) (not e!26456))))

(declare-fun rulesProduceEachTokenIndividuallyList!25 (LexerInterface!68 List!774 List!777) Bool)

(assert (=> b!46425 (= res!31469 (rulesProduceEachTokenIndividuallyList!25 Lexer!66 lt!6205 lt!6197))))

(declare-fun tp!31546 () Bool)

(declare-fun tp!31536 () Bool)

(declare-fun array_inv!282 (array!878) Bool)

(assert (=> b!46426 (= e!26452 (and tp!31533 tp!31536 tp!31546 (array_inv!279 (_keys!555 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))) (array_inv!282 (_values!542 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))) e!26470))))

(declare-fun b!46427 () Bool)

(declare-fun res!31467 () Bool)

(assert (=> b!46427 (=> (not res!31467) (not e!26456))))

(declare-fun lexThenRulesProduceEachTokenIndividually!21 (LexerInterface!68 List!774 List!773) Bool)

(assert (=> b!46427 (= res!31467 (lexThenRulesProduceEachTokenIndividually!21 Lexer!66 lt!6205 lt!6196))))

(declare-fun e!26458 () Bool)

(declare-fun e!26459 () Bool)

(assert (=> b!46428 (= e!26458 (and e!26459 tp!31543))))

(declare-fun b!46429 () Bool)

(assert (=> b!46429 (= e!26450 (and e!26455 (inv!1053 (totalInput!1545 cacheFurthestNullable!45)) e!26454))))

(declare-fun b!46430 () Bool)

(declare-fun res!31470 () Bool)

(assert (=> b!46430 (=> (not res!31470) (not e!26456))))

(declare-fun lt!6195 () tuple2!948)

(assert (=> b!46430 (= res!31470 (= lt!6203 (list!211 (_2!669 lt!6195))))))

(declare-fun b!46431 () Bool)

(declare-fun tp!31542 () Bool)

(assert (=> b!46431 (= e!26472 (and tp!31542 mapRes!1029))))

(declare-fun condMapEmpty!1029 () Bool)

(declare-fun mapDefault!1028 () List!779)

(assert (=> b!46431 (= condMapEmpty!1029 (= (arr!419 (_values!543 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!779)) mapDefault!1028)))))

(declare-fun b!46432 () Bool)

(declare-fun res!31461 () Bool)

(assert (=> b!46432 (=> (not res!31461) (not e!26456))))

(assert (=> b!46432 (= res!31461 (valid!236 (_3!197 lt!6202)))))

(declare-fun b!46433 () Bool)

(assert (=> b!46433 (= e!26475 e!26456)))

(declare-fun res!31477 () Bool)

(assert (=> b!46433 (=> (not res!31477) (not e!26456))))

(declare-fun lt!6199 () List!777)

(declare-fun list!212 (BalanceConc!304) List!777)

(assert (=> b!46433 (= res!31477 (= lt!6199 (list!212 (_1!669 lt!6195))))))

(declare-fun lex!48 (LexerInterface!68 List!774 BalanceConc!302) tuple2!948)

(assert (=> b!46433 (= lt!6195 (lex!48 Lexer!66 lt!6205 lt!6204))))

(declare-fun b!46434 () Bool)

(assert (=> b!46434 (= e!26447 e!26469)))

(declare-fun res!31464 () Bool)

(assert (=> b!46434 (=> (not res!31464) (not e!26469))))

(assert (=> b!46434 (= res!31464 (= lt!6197 lt!6199))))

(assert (=> b!46434 (= lt!6199 (list!212 (_1!669 lt!6206)))))

(assert (=> b!46434 (= lt!6197 (list!212 (_1!669 (_1!674 lt!6202))))))

(assert (=> b!46434 (= lt!6206 (lex!48 Lexer!66 lt!6205 input!525))))

(declare-datatypes ((Unit!354 0))(
  ( (Unit!355) )
))
(declare-fun lt!6207 () Unit!354)

(declare-fun lemmaInvariant!65 (CacheDown!174) Unit!354)

(assert (=> b!46434 (= lt!6207 (lemmaInvariant!65 (_3!197 lt!6202)))))

(declare-fun lt!6200 () Unit!354)

(declare-fun lemmaInvariant!66 (CacheUp!176) Unit!354)

(assert (=> b!46434 (= lt!6200 (lemmaInvariant!66 (_2!674 lt!6202)))))

(declare-fun lexMem!31 (LexerInterface!68 List!774 BalanceConc!302 CacheUp!176 CacheDown!174 CacheFurthestNullable!124) tuple4!86)

(assert (=> b!46434 (= lt!6202 (lexMem!31 Lexer!66 lt!6205 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!46435 () Bool)

(assert (=> b!46435 (= e!26464 e!26458)))

(declare-fun mapNonEmpty!1029 () Bool)

(declare-fun tp!31525 () Bool)

(declare-fun tp!31534 () Bool)

(assert (=> mapNonEmpty!1029 (= mapRes!1028 (and tp!31525 tp!31534))))

(declare-fun mapKey!1029 () (_ BitVec 32))

(declare-fun mapRest!1029 () (Array (_ BitVec 32) List!776))

(declare-fun mapValue!1027 () List!776)

(assert (=> mapNonEmpty!1029 (= (arr!416 (_values!541 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))) (store mapRest!1029 mapKey!1029 mapValue!1027))))

(declare-fun b!46436 () Bool)

(declare-fun lt!6208 () MutLongMap!264)

(assert (=> b!46436 (= e!26459 (and e!26466 ((_ is LongMap!264) lt!6208)))))

(assert (=> b!46436 (= lt!6208 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))

(assert (= (and start!3098 res!31466) b!46400))

(assert (= (and b!46400 res!31465) b!46402))

(assert (= (and b!46402 res!31468) b!46421))

(assert (= (and b!46421 res!31472) b!46424))

(assert (= (and b!46424 res!31473) b!46420))

(assert (= (and b!46420 res!31474) b!46434))

(assert (= (and b!46434 res!31464) b!46411))

(assert (= (and b!46411 res!31471) b!46406))

(assert (= (and b!46406 res!31476) b!46433))

(assert (= (and b!46433 res!31477) b!46430))

(assert (= (and b!46430 res!31470) b!46427))

(assert (= (and b!46427 res!31467) b!46423))

(assert (= (and b!46423 res!31462) b!46416))

(assert (= (and b!46416 res!31463) b!46425))

(assert (= (and b!46425 res!31469) b!46397))

(assert (= (and b!46397 res!31460) b!46432))

(assert (= (and b!46432 res!31461) b!46396))

(assert (= (and b!46396 res!31475) b!46419))

(assert (= (and b!46418 condMapEmpty!1027) mapIsEmpty!1029))

(assert (= (and b!46418 (not condMapEmpty!1027)) mapNonEmpty!1027))

(assert (= b!46426 b!46418))

(assert (= b!46398 b!46426))

(assert (= b!46415 b!46398))

(assert (= (and b!46436 ((_ is LongMap!264) (v!12508 (underlying!724 (cache!745 cacheDown!333))))) b!46415))

(assert (= b!46428 b!46436))

(assert (= (and b!46435 ((_ is HashMap!260) (cache!745 cacheDown!333))) b!46428))

(assert (= start!3098 b!46435))

(assert (= start!3098 b!46414))

(assert (= (and b!46431 condMapEmpty!1029) mapIsEmpty!1027))

(assert (= (and b!46431 (not condMapEmpty!1029)) mapNonEmpty!1028))

(assert (= b!46399 b!46431))

(assert (= b!46412 b!46399))

(assert (= b!46407 b!46412))

(assert (= (and b!46403 ((_ is LongMap!265) (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))) b!46407))

(assert (= b!46413 b!46403))

(assert (= (and b!46429 ((_ is HashMap!261) (cache!746 cacheFurthestNullable!45))) b!46413))

(assert (= b!46429 b!46410))

(assert (= start!3098 b!46429))

(assert (= (and b!46409 condMapEmpty!1028) mapIsEmpty!1028))

(assert (= (and b!46409 (not condMapEmpty!1028)) mapNonEmpty!1029))

(assert (= b!46401 b!46409))

(assert (= b!46405 b!46401))

(assert (= b!46404 b!46405))

(assert (= (and b!46408 ((_ is LongMap!263) (v!12506 (underlying!722 (cache!744 cacheUp!320))))) b!46404))

(assert (= b!46422 b!46408))

(assert (= (and b!46417 ((_ is HashMap!259) (cache!744 cacheUp!320))) b!46422))

(assert (= start!3098 b!46417))

(declare-fun m!20600 () Bool)

(assert (=> mapNonEmpty!1029 m!20600))

(declare-fun m!20602 () Bool)

(assert (=> b!46399 m!20602))

(declare-fun m!20604 () Bool)

(assert (=> b!46399 m!20604))

(declare-fun m!20606 () Bool)

(assert (=> b!46411 m!20606))

(declare-fun m!20608 () Bool)

(assert (=> b!46411 m!20608))

(declare-fun m!20610 () Bool)

(assert (=> b!46421 m!20610))

(declare-fun m!20612 () Bool)

(assert (=> b!46426 m!20612))

(declare-fun m!20614 () Bool)

(assert (=> b!46426 m!20614))

(declare-fun m!20616 () Bool)

(assert (=> b!46425 m!20616))

(declare-fun m!20618 () Bool)

(assert (=> b!46429 m!20618))

(declare-fun m!20620 () Bool)

(assert (=> b!46401 m!20620))

(declare-fun m!20622 () Bool)

(assert (=> b!46401 m!20622))

(declare-fun m!20624 () Bool)

(assert (=> b!46410 m!20624))

(declare-fun m!20626 () Bool)

(assert (=> b!46433 m!20626))

(declare-fun m!20628 () Bool)

(assert (=> b!46433 m!20628))

(declare-fun m!20630 () Bool)

(assert (=> b!46430 m!20630))

(declare-fun m!20632 () Bool)

(assert (=> b!46416 m!20632))

(declare-fun m!20634 () Bool)

(assert (=> b!46402 m!20634))

(declare-fun m!20636 () Bool)

(assert (=> b!46432 m!20636))

(declare-fun m!20638 () Bool)

(assert (=> b!46396 m!20638))

(declare-fun m!20640 () Bool)

(assert (=> b!46434 m!20640))

(declare-fun m!20642 () Bool)

(assert (=> b!46434 m!20642))

(declare-fun m!20644 () Bool)

(assert (=> b!46434 m!20644))

(declare-fun m!20646 () Bool)

(assert (=> b!46434 m!20646))

(declare-fun m!20648 () Bool)

(assert (=> b!46434 m!20648))

(declare-fun m!20650 () Bool)

(assert (=> b!46434 m!20650))

(declare-fun m!20652 () Bool)

(assert (=> b!46424 m!20652))

(declare-fun m!20654 () Bool)

(assert (=> b!46427 m!20654))

(declare-fun m!20656 () Bool)

(assert (=> b!46400 m!20656))

(declare-fun m!20658 () Bool)

(assert (=> b!46397 m!20658))

(declare-fun m!20660 () Bool)

(assert (=> b!46423 m!20660))

(declare-fun m!20662 () Bool)

(assert (=> mapNonEmpty!1028 m!20662))

(declare-fun m!20664 () Bool)

(assert (=> b!46406 m!20664))

(declare-fun m!20666 () Bool)

(assert (=> b!46406 m!20666))

(declare-fun m!20668 () Bool)

(assert (=> b!46406 m!20668))

(declare-fun m!20670 () Bool)

(assert (=> b!46414 m!20670))

(declare-fun m!20672 () Bool)

(assert (=> start!3098 m!20672))

(declare-fun m!20674 () Bool)

(assert (=> start!3098 m!20674))

(declare-fun m!20676 () Bool)

(assert (=> start!3098 m!20676))

(declare-fun m!20678 () Bool)

(assert (=> start!3098 m!20678))

(declare-fun m!20680 () Bool)

(assert (=> start!3098 m!20680))

(declare-fun m!20682 () Bool)

(assert (=> start!3098 m!20682))

(declare-fun m!20684 () Bool)

(assert (=> mapNonEmpty!1027 m!20684))

(check-sat (not b!46401) b_and!1263 (not b!46425) (not b!46406) (not b_next!1229) (not b!46418) (not b!46402) (not b!46414) (not b!46409) (not b!46396) (not mapNonEmpty!1028) (not b!46432) (not start!3098) (not b!46433) (not b!46421) (not b_next!1231) (not b_next!1227) (not b!46416) (not b!46431) (not mapNonEmpty!1029) (not b!46399) (not b!46397) (not b!46426) (not b!46411) (not b_next!1221) (not b!46429) b_and!1261 (not b!46430) (not b!46427) (not mapNonEmpty!1027) (not b!46410) b_and!1255 (not b!46424) b_and!1259 (not b!46445) b_and!1257 b_and!1265 (not b!46400) (not b_next!1225) (not b!46423) (not b_next!1223) (not b!46434))
(check-sat b_and!1263 (not b_next!1231) (not b_next!1227) (not b_next!1229) b_and!1255 b_and!1265 (not b_next!1225) (not b_next!1223) (not b_next!1221) b_and!1261 b_and!1259 b_and!1257)
(get-model)

(declare-fun d!5477 () Bool)

(declare-fun res!31482 () Bool)

(declare-fun e!26489 () Bool)

(assert (=> d!5477 (=> (not res!31482) (not e!26489))))

(declare-fun rulesValid!22 (LexerInterface!68 List!774) Bool)

(assert (=> d!5477 (= res!31482 (rulesValid!22 Lexer!66 lt!6205))))

(assert (=> d!5477 (= (rulesInvariant!62 Lexer!66 lt!6205) e!26489)))

(declare-fun b!46450 () Bool)

(declare-datatypes ((List!780 0))(
  ( (Nil!778) (Cons!778 (h!6174 String!1121) (t!16909 List!780)) )
))
(declare-fun noDuplicateTag!22 (LexerInterface!68 List!774 List!780) Bool)

(assert (=> b!46450 (= e!26489 (noDuplicateTag!22 Lexer!66 lt!6205 Nil!778))))

(assert (= (and d!5477 res!31482) b!46450))

(declare-fun m!20686 () Bool)

(assert (=> d!5477 m!20686))

(declare-fun m!20688 () Bool)

(assert (=> b!46450 m!20688))

(assert (=> b!46400 d!5477))

(declare-fun b!46461 () Bool)

(declare-fun e!26500 () Bool)

(declare-fun lt!6223 () tuple2!948)

(assert (=> b!46461 (= e!26500 (rulesProduceEachTokenIndividuallyList!25 Lexer!66 lt!6205 (list!212 (_1!669 lt!6223))))))

(declare-fun lt!6221 () Unit!354)

(declare-fun lt!6222 () Unit!354)

(assert (=> b!46461 (= lt!6221 lt!6222)))

(declare-fun lt!6220 () List!777)

(declare-fun rulesProduceEachTokenIndividually!10 (LexerInterface!68 List!774 BalanceConc!304) Bool)

(declare-fun seqFromList!41 (List!777) BalanceConc!304)

(assert (=> b!46461 (rulesProduceEachTokenIndividually!10 Lexer!66 lt!6205 (seqFromList!41 lt!6220))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!10 (LexerInterface!68 List!774 List!773 List!777) Unit!354)

(assert (=> b!46461 (= lt!6222 (lemmaLexThenRulesProducesEachTokenIndividually!10 Lexer!66 lt!6205 lt!6196 lt!6220))))

(assert (=> b!46461 (= lt!6220 (list!212 (_1!669 lt!6223)))))

(assert (=> b!46461 (= lt!6223 (lex!48 Lexer!66 lt!6205 (seqFromList!40 lt!6196)))))

(declare-fun b!46462 () Bool)

(declare-fun e!26498 () Bool)

(declare-fun e!26499 () Bool)

(assert (=> b!46462 (= e!26498 e!26499)))

(declare-fun res!31494 () Bool)

(assert (=> b!46462 (=> res!31494 e!26499)))

(assert (=> b!46462 (= res!31494 (isEmpty!154 lt!6205))))

(declare-fun b!46463 () Bool)

(declare-fun res!31493 () Bool)

(assert (=> b!46463 (=> res!31493 e!26499)))

(declare-fun rulesInvariant!63 (LexerInterface!68 List!774) Bool)

(assert (=> b!46463 (= res!31493 (not (rulesInvariant!63 Lexer!66 lt!6205)))))

(declare-fun d!5479 () Bool)

(assert (=> d!5479 e!26498))

(declare-fun res!31495 () Bool)

(assert (=> d!5479 (=> (not res!31495) (not e!26498))))

(declare-fun lt!6224 () Bool)

(assert (=> d!5479 (= res!31495 lt!6224)))

(assert (=> d!5479 (= lt!6224 e!26500)))

(declare-fun res!31496 () Bool)

(assert (=> d!5479 (=> res!31496 e!26500)))

(declare-fun e!26501 () Bool)

(assert (=> d!5479 (= res!31496 (not e!26501))))

(declare-fun res!31497 () Bool)

(assert (=> d!5479 (=> (not res!31497) (not e!26501))))

(assert (=> d!5479 (= res!31497 (not (isEmpty!154 lt!6205)))))

(assert (=> d!5479 (= (lexThenRulesProduceEachTokenIndividually!21 Lexer!66 lt!6205 lt!6196) lt!6224)))

(declare-fun b!46464 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!26 (LexerInterface!68 List!774 List!777) Bool)

(declare-fun lex!49 (LexerInterface!68 List!774 BalanceConc!302) tuple2!948)

(assert (=> b!46464 (= e!26499 (rulesProduceEachTokenIndividuallyList!26 Lexer!66 lt!6205 (list!212 (_1!669 (lex!49 Lexer!66 lt!6205 (seqFromList!40 lt!6196))))))))

(declare-fun b!46465 () Bool)

(assert (=> b!46465 (= e!26501 (rulesInvariant!62 Lexer!66 lt!6205))))

(assert (= (and d!5479 res!31497) b!46465))

(assert (= (and d!5479 (not res!31496)) b!46461))

(assert (= (and d!5479 res!31495) b!46462))

(assert (= (and b!46462 (not res!31494)) b!46463))

(assert (= (and b!46463 (not res!31493)) b!46464))

(assert (=> b!46462 m!20674))

(declare-fun m!20690 () Bool)

(assert (=> b!46463 m!20690))

(assert (=> b!46464 m!20666))

(assert (=> b!46464 m!20666))

(declare-fun m!20692 () Bool)

(assert (=> b!46464 m!20692))

(declare-fun m!20694 () Bool)

(assert (=> b!46464 m!20694))

(assert (=> b!46464 m!20694))

(declare-fun m!20696 () Bool)

(assert (=> b!46464 m!20696))

(assert (=> b!46465 m!20656))

(assert (=> b!46461 m!20666))

(declare-fun m!20698 () Bool)

(assert (=> b!46461 m!20698))

(declare-fun m!20700 () Bool)

(assert (=> b!46461 m!20700))

(assert (=> b!46461 m!20666))

(declare-fun m!20702 () Bool)

(assert (=> b!46461 m!20702))

(assert (=> b!46461 m!20700))

(declare-fun m!20704 () Bool)

(assert (=> b!46461 m!20704))

(declare-fun m!20706 () Bool)

(assert (=> b!46461 m!20706))

(declare-fun m!20708 () Bool)

(assert (=> b!46461 m!20708))

(assert (=> b!46461 m!20706))

(assert (=> d!5479 m!20674))

(assert (=> b!46427 d!5479))

(declare-fun d!5481 () Bool)

(assert (=> d!5481 (= (array_inv!279 (_keys!555 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))) (bvsge (size!752 (_keys!555 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!46426 d!5481))

(declare-fun d!5483 () Bool)

(assert (=> d!5483 (= (array_inv!282 (_values!542 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))) (bvsge (size!754 (_values!542 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!46426 d!5483))

(declare-fun d!5485 () Bool)

(assert (=> d!5485 (= (array_inv!279 (_keys!556 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))) (bvsge (size!752 (_keys!556 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!46399 d!5485))

(declare-fun d!5487 () Bool)

(assert (=> d!5487 (= (array_inv!280 (_values!543 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))) (bvsge (size!755 (_values!543 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!46399 d!5487))

(declare-fun d!5489 () Bool)

(declare-fun lt!6227 () Bool)

(assert (=> d!5489 (= lt!6227 (forall!96 (list!212 (_1!669 (_1!674 lt!6202))) lambda!870))))

(declare-fun forall!97 (Conc!152 Int) Bool)

(assert (=> d!5489 (= lt!6227 (forall!97 (c!16149 (_1!669 (_1!674 lt!6202))) lambda!870))))

(assert (=> d!5489 (= (forall!95 (_1!669 (_1!674 lt!6202)) lambda!870) lt!6227)))

(declare-fun bs!6323 () Bool)

(assert (= bs!6323 d!5489))

(assert (=> bs!6323 m!20642))

(assert (=> bs!6323 m!20642))

(declare-fun m!20710 () Bool)

(assert (=> bs!6323 m!20710))

(declare-fun m!20712 () Bool)

(assert (=> bs!6323 m!20712))

(assert (=> b!46416 d!5489))

(declare-fun d!5491 () Bool)

(declare-fun list!213 (Conc!151) List!773)

(assert (=> d!5491 (= (list!211 (_2!669 lt!6195)) (list!213 (c!16148 (_2!669 lt!6195))))))

(declare-fun bs!6324 () Bool)

(assert (= bs!6324 d!5491))

(declare-fun m!20714 () Bool)

(assert (=> bs!6324 m!20714))

(assert (=> b!46430 d!5491))

(declare-fun d!5493 () Bool)

(declare-fun c!16152 () Bool)

(assert (=> d!5493 (= c!16152 ((_ is Node!151) (c!16148 (totalInput!1545 cacheFurthestNullable!45))))))

(declare-fun e!26506 () Bool)

(assert (=> d!5493 (= (inv!1056 (c!16148 (totalInput!1545 cacheFurthestNullable!45))) e!26506)))

(declare-fun b!46472 () Bool)

(declare-fun inv!1057 (Conc!151) Bool)

(assert (=> b!46472 (= e!26506 (inv!1057 (c!16148 (totalInput!1545 cacheFurthestNullable!45))))))

(declare-fun b!46473 () Bool)

(declare-fun e!26507 () Bool)

(assert (=> b!46473 (= e!26506 e!26507)))

(declare-fun res!31500 () Bool)

(assert (=> b!46473 (= res!31500 (not ((_ is Leaf!350) (c!16148 (totalInput!1545 cacheFurthestNullable!45)))))))

(assert (=> b!46473 (=> res!31500 e!26507)))

(declare-fun b!46474 () Bool)

(declare-fun inv!1058 (Conc!151) Bool)

(assert (=> b!46474 (= e!26507 (inv!1058 (c!16148 (totalInput!1545 cacheFurthestNullable!45))))))

(assert (= (and d!5493 c!16152) b!46472))

(assert (= (and d!5493 (not c!16152)) b!46473))

(assert (= (and b!46473 (not res!31500)) b!46474))

(declare-fun m!20716 () Bool)

(assert (=> b!46472 m!20716))

(declare-fun m!20718 () Bool)

(assert (=> b!46474 m!20718))

(assert (=> b!46410 d!5493))

(declare-fun d!5495 () Bool)

(declare-fun isBalanced!29 (Conc!151) Bool)

(assert (=> d!5495 (= (inv!1053 (totalInput!1545 cacheFurthestNullable!45)) (isBalanced!29 (c!16148 (totalInput!1545 cacheFurthestNullable!45))))))

(declare-fun bs!6325 () Bool)

(assert (= bs!6325 d!5495))

(declare-fun m!20720 () Bool)

(assert (=> bs!6325 m!20720))

(assert (=> b!46429 d!5495))

(declare-fun d!5497 () Bool)

(declare-fun validCacheMapUp!24 (MutableMap!259) Bool)

(assert (=> d!5497 (= (valid!235 cacheUp!320) (validCacheMapUp!24 (cache!744 cacheUp!320)))))

(declare-fun bs!6326 () Bool)

(assert (= bs!6326 d!5497))

(declare-fun m!20722 () Bool)

(assert (=> bs!6326 m!20722))

(assert (=> b!46402 d!5497))

(declare-fun d!5499 () Bool)

(assert (=> d!5499 (= (array_inv!279 (_keys!554 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))) (bvsge (size!752 (_keys!554 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!46401 d!5499))

(declare-fun d!5501 () Bool)

(assert (=> d!5501 (= (array_inv!281 (_values!541 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))) (bvsge (size!751 (_values!541 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!46401 d!5501))

(declare-fun d!5503 () Bool)

(declare-fun list!214 (Conc!152) List!777)

(assert (=> d!5503 (= (list!212 (_1!669 lt!6195)) (list!214 (c!16149 (_1!669 lt!6195))))))

(declare-fun bs!6327 () Bool)

(assert (= bs!6327 d!5503))

(declare-fun m!20724 () Bool)

(assert (=> bs!6327 m!20724))

(assert (=> b!46433 d!5503))

(declare-fun b!46485 () Bool)

(declare-fun e!26515 () Bool)

(declare-fun e!26516 () Bool)

(assert (=> b!46485 (= e!26515 e!26516)))

(declare-fun res!31508 () Bool)

(declare-fun lt!6230 () tuple2!948)

(declare-fun size!756 (BalanceConc!302) Int)

(assert (=> b!46485 (= res!31508 (< (size!756 (_2!669 lt!6230)) (size!756 lt!6204)))))

(assert (=> b!46485 (=> (not res!31508) (not e!26516))))

(declare-fun d!5505 () Bool)

(declare-fun e!26514 () Bool)

(assert (=> d!5505 e!26514))

(declare-fun res!31507 () Bool)

(assert (=> d!5505 (=> (not res!31507) (not e!26514))))

(assert (=> d!5505 (= res!31507 e!26515)))

(declare-fun c!16155 () Bool)

(declare-fun size!757 (BalanceConc!304) Int)

(assert (=> d!5505 (= c!16155 (> (size!757 (_1!669 lt!6230)) 0))))

(declare-fun lexTailRecV2!16 (LexerInterface!68 List!774 BalanceConc!302 BalanceConc!302 BalanceConc!302 BalanceConc!304) tuple2!948)

(assert (=> d!5505 (= lt!6230 (lexTailRecV2!16 Lexer!66 lt!6205 lt!6204 (BalanceConc!303 Empty!151) lt!6204 (BalanceConc!305 Empty!152)))))

(assert (=> d!5505 (= (lex!48 Lexer!66 lt!6205 lt!6204) lt!6230)))

(declare-fun b!46486 () Bool)

(declare-fun res!31509 () Bool)

(assert (=> b!46486 (=> (not res!31509) (not e!26514))))

(declare-datatypes ((tuple2!954 0))(
  ( (tuple2!955 (_1!675 List!777) (_2!675 List!773)) )
))
(declare-fun lexList!19 (LexerInterface!68 List!774 List!773) tuple2!954)

(assert (=> b!46486 (= res!31509 (= (list!212 (_1!669 lt!6230)) (_1!675 (lexList!19 Lexer!66 lt!6205 (list!211 lt!6204)))))))

(declare-fun b!46487 () Bool)

(assert (=> b!46487 (= e!26514 (= (list!211 (_2!669 lt!6230)) (_2!675 (lexList!19 Lexer!66 lt!6205 (list!211 lt!6204)))))))

(declare-fun b!46488 () Bool)

(assert (=> b!46488 (= e!26515 (= (_2!669 lt!6230) lt!6204))))

(declare-fun b!46489 () Bool)

(declare-fun isEmpty!155 (BalanceConc!304) Bool)

(assert (=> b!46489 (= e!26516 (not (isEmpty!155 (_1!669 lt!6230))))))

(assert (= (and d!5505 c!16155) b!46485))

(assert (= (and d!5505 (not c!16155)) b!46488))

(assert (= (and b!46485 res!31508) b!46489))

(assert (= (and d!5505 res!31507) b!46486))

(assert (= (and b!46486 res!31509) b!46487))

(declare-fun m!20726 () Bool)

(assert (=> b!46485 m!20726))

(declare-fun m!20728 () Bool)

(assert (=> b!46485 m!20728))

(declare-fun m!20730 () Bool)

(assert (=> b!46486 m!20730))

(assert (=> b!46486 m!20664))

(assert (=> b!46486 m!20664))

(declare-fun m!20732 () Bool)

(assert (=> b!46486 m!20732))

(declare-fun m!20734 () Bool)

(assert (=> b!46487 m!20734))

(assert (=> b!46487 m!20664))

(assert (=> b!46487 m!20664))

(assert (=> b!46487 m!20732))

(declare-fun m!20736 () Bool)

(assert (=> d!5505 m!20736))

(declare-fun m!20738 () Bool)

(assert (=> d!5505 m!20738))

(declare-fun m!20740 () Bool)

(assert (=> b!46489 m!20740))

(assert (=> b!46433 d!5505))

(declare-fun d!5507 () Bool)

(declare-fun validCacheMapDown!26 (MutableMap!260) Bool)

(assert (=> d!5507 (= (valid!236 (_3!197 lt!6202)) (validCacheMapDown!26 (cache!745 (_3!197 lt!6202))))))

(declare-fun bs!6328 () Bool)

(assert (= bs!6328 d!5507))

(declare-fun m!20742 () Bool)

(assert (=> bs!6328 m!20742))

(assert (=> b!46432 d!5507))

(declare-fun d!5509 () Bool)

(assert (=> d!5509 (= (list!211 (_2!669 lt!6206)) (list!213 (c!16148 (_2!669 lt!6206))))))

(declare-fun bs!6329 () Bool)

(assert (= bs!6329 d!5509))

(declare-fun m!20744 () Bool)

(assert (=> bs!6329 m!20744))

(assert (=> b!46411 d!5509))

(declare-fun d!5511 () Bool)

(assert (=> d!5511 (= (list!211 (_2!669 (_1!674 lt!6202))) (list!213 (c!16148 (_2!669 (_1!674 lt!6202)))))))

(declare-fun bs!6330 () Bool)

(assert (= bs!6330 d!5511))

(declare-fun m!20746 () Bool)

(assert (=> bs!6330 m!20746))

(assert (=> b!46411 d!5511))

(declare-fun d!5513 () Bool)

(assert (=> d!5513 (= (valid!236 cacheDown!333) (validCacheMapDown!26 (cache!745 cacheDown!333)))))

(declare-fun bs!6331 () Bool)

(assert (= bs!6331 d!5513))

(declare-fun m!20748 () Bool)

(assert (=> bs!6331 m!20748))

(assert (=> b!46421 d!5513))

(declare-fun d!5515 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!88) Rule!150)

(declare-fun integerLiteralRule!0 (JsonLexer!88) Rule!150)

(declare-fun floatLiteralRule!0 (JsonLexer!88) Rule!150)

(declare-fun trueRule!0 (JsonLexer!88) Rule!150)

(declare-fun falseRule!0 (JsonLexer!88) Rule!150)

(declare-fun nullRule!0 (JsonLexer!88) Rule!150)

(declare-fun jsonstringRule!0 (JsonLexer!88) Rule!150)

(declare-fun lBraceRule!0 (JsonLexer!88) Rule!150)

(declare-fun rBraceRule!0 (JsonLexer!88) Rule!150)

(declare-fun lBracketRule!0 (JsonLexer!88) Rule!150)

(declare-fun rBracketRule!0 (JsonLexer!88) Rule!150)

(declare-fun colonRule!0 (JsonLexer!88) Rule!150)

(declare-fun commaRule!0 (JsonLexer!88) Rule!150)

(declare-fun eofRule!0 (JsonLexer!88) Rule!150)

(assert (=> d!5515 (= (rules!109 JsonLexer!89) (Cons!772 (whitespaceRule!0 JsonLexer!89) (Cons!772 (integerLiteralRule!0 JsonLexer!89) (Cons!772 (floatLiteralRule!0 JsonLexer!89) (Cons!772 (trueRule!0 JsonLexer!89) (Cons!772 (falseRule!0 JsonLexer!89) (Cons!772 (nullRule!0 JsonLexer!89) (Cons!772 (jsonstringRule!0 JsonLexer!89) (Cons!772 (lBraceRule!0 JsonLexer!89) (Cons!772 (rBraceRule!0 JsonLexer!89) (Cons!772 (lBracketRule!0 JsonLexer!89) (Cons!772 (rBracketRule!0 JsonLexer!89) (Cons!772 (colonRule!0 JsonLexer!89) (Cons!772 (commaRule!0 JsonLexer!89) (Cons!772 (eofRule!0 JsonLexer!89) Nil!772)))))))))))))))))

(declare-fun bs!6332 () Bool)

(assert (= bs!6332 d!5515))

(declare-fun m!20750 () Bool)

(assert (=> bs!6332 m!20750))

(declare-fun m!20752 () Bool)

(assert (=> bs!6332 m!20752))

(declare-fun m!20754 () Bool)

(assert (=> bs!6332 m!20754))

(declare-fun m!20756 () Bool)

(assert (=> bs!6332 m!20756))

(declare-fun m!20758 () Bool)

(assert (=> bs!6332 m!20758))

(declare-fun m!20760 () Bool)

(assert (=> bs!6332 m!20760))

(declare-fun m!20762 () Bool)

(assert (=> bs!6332 m!20762))

(declare-fun m!20764 () Bool)

(assert (=> bs!6332 m!20764))

(declare-fun m!20766 () Bool)

(assert (=> bs!6332 m!20766))

(declare-fun m!20768 () Bool)

(assert (=> bs!6332 m!20768))

(declare-fun m!20770 () Bool)

(assert (=> bs!6332 m!20770))

(declare-fun m!20772 () Bool)

(assert (=> bs!6332 m!20772))

(declare-fun m!20774 () Bool)

(assert (=> bs!6332 m!20774))

(declare-fun m!20776 () Bool)

(assert (=> bs!6332 m!20776))

(assert (=> start!3098 d!5515))

(declare-fun d!5517 () Bool)

(declare-fun res!31512 () Bool)

(declare-fun e!26519 () Bool)

(assert (=> d!5517 (=> (not res!31512) (not e!26519))))

(assert (=> d!5517 (= res!31512 ((_ is HashMap!260) (cache!745 cacheDown!333)))))

(assert (=> d!5517 (= (inv!1052 cacheDown!333) e!26519)))

(declare-fun b!46492 () Bool)

(assert (=> b!46492 (= e!26519 (validCacheMapDown!26 (cache!745 cacheDown!333)))))

(assert (= (and d!5517 res!31512) b!46492))

(assert (=> b!46492 m!20748))

(assert (=> start!3098 d!5517))

(declare-fun d!5519 () Bool)

(assert (=> d!5519 (= (inv!1053 input!525) (isBalanced!29 (c!16148 input!525)))))

(declare-fun bs!6333 () Bool)

(assert (= bs!6333 d!5519))

(declare-fun m!20778 () Bool)

(assert (=> bs!6333 m!20778))

(assert (=> start!3098 d!5519))

(declare-fun d!5521 () Bool)

(assert (=> d!5521 (= (isEmpty!154 lt!6205) ((_ is Nil!772) lt!6205))))

(assert (=> start!3098 d!5521))

(declare-fun d!5523 () Bool)

(declare-fun res!31515 () Bool)

(declare-fun e!26522 () Bool)

(assert (=> d!5523 (=> (not res!31515) (not e!26522))))

(assert (=> d!5523 (= res!31515 ((_ is HashMap!261) (cache!746 cacheFurthestNullable!45)))))

(assert (=> d!5523 (= (inv!1054 cacheFurthestNullable!45) e!26522)))

(declare-fun b!46495 () Bool)

(declare-fun validCacheMapFurthestNullable!18 (MutableMap!261 BalanceConc!302) Bool)

(assert (=> b!46495 (= e!26522 (validCacheMapFurthestNullable!18 (cache!746 cacheFurthestNullable!45) (totalInput!1545 cacheFurthestNullable!45)))))

(assert (= (and d!5523 res!31515) b!46495))

(declare-fun m!20780 () Bool)

(assert (=> b!46495 m!20780))

(assert (=> start!3098 d!5523))

(declare-fun d!5525 () Bool)

(declare-fun res!31518 () Bool)

(declare-fun e!26525 () Bool)

(assert (=> d!5525 (=> (not res!31518) (not e!26525))))

(assert (=> d!5525 (= res!31518 ((_ is HashMap!259) (cache!744 cacheUp!320)))))

(assert (=> d!5525 (= (inv!1055 cacheUp!320) e!26525)))

(declare-fun b!46498 () Bool)

(assert (=> b!46498 (= e!26525 (validCacheMapUp!24 (cache!744 cacheUp!320)))))

(assert (= (and d!5525 res!31518) b!46498))

(assert (=> b!46498 m!20722))

(assert (=> start!3098 d!5525))

(declare-fun bs!6334 () Bool)

(declare-fun d!5527 () Bool)

(assert (= bs!6334 (and d!5527 b!46423)))

(declare-fun lambda!873 () Int)

(assert (=> bs!6334 (= lambda!873 lambda!870)))

(declare-fun b!46507 () Bool)

(declare-fun e!26534 () Bool)

(assert (=> b!46507 (= e!26534 true)))

(declare-fun b!46506 () Bool)

(declare-fun e!26533 () Bool)

(assert (=> b!46506 (= e!26533 e!26534)))

(declare-fun b!46505 () Bool)

(declare-fun e!26532 () Bool)

(assert (=> b!46505 (= e!26532 e!26533)))

(assert (=> d!5527 e!26532))

(assert (= b!46506 b!46507))

(assert (= b!46505 b!46506))

(assert (= (and d!5527 ((_ is Cons!772) lt!6205)) b!46505))

(assert (=> b!46507 (< (dynLambda!124 order!199 (toValue!654 (transformation!175 (h!6168 lt!6205)))) (dynLambda!125 order!201 lambda!873))))

(assert (=> b!46507 (< (dynLambda!126 order!203 (toChars!513 (transformation!175 (h!6168 lt!6205)))) (dynLambda!125 order!201 lambda!873))))

(assert (=> d!5527 true))

(declare-fun lt!6233 () Bool)

(assert (=> d!5527 (= lt!6233 (forall!96 lt!6197 lambda!873))))

(declare-fun e!26531 () Bool)

(assert (=> d!5527 (= lt!6233 e!26531)))

(declare-fun res!31524 () Bool)

(assert (=> d!5527 (=> res!31524 e!26531)))

(assert (=> d!5527 (= res!31524 (not ((_ is Cons!775) lt!6197)))))

(assert (=> d!5527 (not (isEmpty!154 lt!6205))))

(assert (=> d!5527 (= (rulesProduceEachTokenIndividuallyList!25 Lexer!66 lt!6205 lt!6197) lt!6233)))

(declare-fun b!46503 () Bool)

(declare-fun e!26530 () Bool)

(assert (=> b!46503 (= e!26531 e!26530)))

(declare-fun res!31523 () Bool)

(assert (=> b!46503 (=> (not res!31523) (not e!26530))))

(declare-fun rulesProduceIndividualToken!11 (LexerInterface!68 List!774 Token!116) Bool)

(assert (=> b!46503 (= res!31523 (rulesProduceIndividualToken!11 Lexer!66 lt!6205 (h!6171 lt!6197)))))

(declare-fun b!46504 () Bool)

(assert (=> b!46504 (= e!26530 (rulesProduceEachTokenIndividuallyList!25 Lexer!66 lt!6205 (t!16904 lt!6197)))))

(assert (= (and d!5527 (not res!31524)) b!46503))

(assert (= (and b!46503 res!31523) b!46504))

(declare-fun m!20782 () Bool)

(assert (=> d!5527 m!20782))

(assert (=> d!5527 m!20674))

(declare-fun m!20784 () Bool)

(assert (=> b!46503 m!20784))

(declare-fun m!20786 () Bool)

(assert (=> b!46504 m!20786))

(assert (=> b!46425 d!5527))

(declare-fun d!5529 () Bool)

(assert (=> d!5529 (= (valid!234 cacheFurthestNullable!45) (validCacheMapFurthestNullable!18 (cache!746 cacheFurthestNullable!45) (totalInput!1545 cacheFurthestNullable!45)))))

(declare-fun bs!6335 () Bool)

(assert (= bs!6335 d!5529))

(assert (=> bs!6335 m!20780))

(assert (=> b!46424 d!5529))

(declare-fun d!5531 () Bool)

(assert (=> d!5531 (= (valid!235 (_2!674 lt!6202)) (validCacheMapUp!24 (cache!744 (_2!674 lt!6202))))))

(declare-fun bs!6336 () Bool)

(assert (= bs!6336 d!5531))

(declare-fun m!20788 () Bool)

(assert (=> bs!6336 m!20788))

(assert (=> b!46397 d!5531))

(declare-fun d!5533 () Bool)

(assert (=> d!5533 (= (list!211 lt!6204) (list!213 (c!16148 lt!6204)))))

(declare-fun bs!6337 () Bool)

(assert (= bs!6337 d!5533))

(declare-fun m!20790 () Bool)

(assert (=> bs!6337 m!20790))

(assert (=> b!46406 d!5533))

(declare-fun d!5535 () Bool)

(declare-fun fromListB!15 (List!773) BalanceConc!302)

(assert (=> d!5535 (= (seqFromList!40 lt!6196) (fromListB!15 lt!6196))))

(declare-fun bs!6338 () Bool)

(assert (= bs!6338 d!5535))

(declare-fun m!20792 () Bool)

(assert (=> bs!6338 m!20792))

(assert (=> b!46406 d!5535))

(declare-fun d!5537 () Bool)

(assert (=> d!5537 (= (list!211 input!525) (list!213 (c!16148 input!525)))))

(declare-fun bs!6339 () Bool)

(assert (= bs!6339 d!5537))

(declare-fun m!20794 () Bool)

(assert (=> bs!6339 m!20794))

(assert (=> b!46406 d!5537))

(declare-fun b!46520 () Bool)

(declare-fun res!31535 () Bool)

(declare-fun e!26537 () Bool)

(assert (=> b!46520 (=> (not res!31535) (not e!26537))))

(declare-fun lt!6238 () tuple4!86)

(assert (=> b!46520 (= res!31535 (valid!236 (_3!197 lt!6238)))))

(declare-fun b!46521 () Bool)

(declare-fun res!31538 () Bool)

(assert (=> b!46521 (=> (not res!31538) (not e!26537))))

(assert (=> b!46521 (= res!31538 (valid!234 (_4!43 lt!6238)))))

(declare-fun b!46522 () Bool)

(declare-fun res!31539 () Bool)

(assert (=> b!46522 (=> (not res!31539) (not e!26537))))

(assert (=> b!46522 (= res!31539 (valid!235 (_2!674 lt!6238)))))

(declare-fun d!5539 () Bool)

(assert (=> d!5539 e!26537))

(declare-fun res!31537 () Bool)

(assert (=> d!5539 (=> (not res!31537) (not e!26537))))

(assert (=> d!5539 (= res!31537 (= (list!212 (_1!669 (_1!674 lt!6238))) (list!212 (_1!669 (lex!48 Lexer!66 lt!6205 input!525)))))))

(declare-fun lt!6239 () tuple4!86)

(assert (=> d!5539 (= lt!6238 (tuple4!87 (_1!674 lt!6239) (_2!674 lt!6239) (_3!197 lt!6239) (_4!43 lt!6239)))))

(declare-fun lexTailRecV3Mem!16 (LexerInterface!68 List!774 BalanceConc!302 BalanceConc!302 BalanceConc!302 BalanceConc!304 CacheUp!176 CacheDown!174 CacheFurthestNullable!124) tuple4!86)

(assert (=> d!5539 (= lt!6239 (lexTailRecV3Mem!16 Lexer!66 lt!6205 input!525 (BalanceConc!303 Empty!151) input!525 (BalanceConc!305 Empty!152) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!5539 (not (isEmpty!154 lt!6205))))

(assert (=> d!5539 (= (lexMem!31 Lexer!66 lt!6205 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!6238)))

(declare-fun b!46523 () Bool)

(assert (=> b!46523 (= e!26537 (= (totalInput!1545 (_4!43 lt!6238)) input!525))))

(declare-fun b!46524 () Bool)

(declare-fun res!31536 () Bool)

(assert (=> b!46524 (=> (not res!31536) (not e!26537))))

(assert (=> b!46524 (= res!31536 (= (list!211 (_2!669 (_1!674 lt!6238))) (list!211 (_2!669 (lex!48 Lexer!66 lt!6205 input!525)))))))

(assert (= (and d!5539 res!31537) b!46524))

(assert (= (and b!46524 res!31536) b!46521))

(assert (= (and b!46521 res!31538) b!46522))

(assert (= (and b!46522 res!31539) b!46520))

(assert (= (and b!46520 res!31535) b!46523))

(declare-fun m!20796 () Bool)

(assert (=> b!46521 m!20796))

(assert (=> d!5539 m!20646))

(declare-fun m!20798 () Bool)

(assert (=> d!5539 m!20798))

(declare-fun m!20800 () Bool)

(assert (=> d!5539 m!20800))

(declare-fun m!20802 () Bool)

(assert (=> d!5539 m!20802))

(assert (=> d!5539 m!20674))

(declare-fun m!20804 () Bool)

(assert (=> b!46520 m!20804))

(declare-fun m!20806 () Bool)

(assert (=> b!46522 m!20806))

(declare-fun m!20808 () Bool)

(assert (=> b!46524 m!20808))

(assert (=> b!46524 m!20646))

(declare-fun m!20810 () Bool)

(assert (=> b!46524 m!20810))

(assert (=> b!46434 d!5539))

(declare-fun d!5541 () Bool)

(assert (=> d!5541 (valid!235 (_2!674 lt!6202))))

(declare-fun Unit!356 () Unit!354)

(assert (=> d!5541 (= (lemmaInvariant!66 (_2!674 lt!6202)) Unit!356)))

(declare-fun bs!6340 () Bool)

(assert (= bs!6340 d!5541))

(assert (=> bs!6340 m!20658))

(assert (=> b!46434 d!5541))

(declare-fun d!5543 () Bool)

(assert (=> d!5543 (valid!236 (_3!197 lt!6202))))

(declare-fun Unit!357 () Unit!354)

(assert (=> d!5543 (= (lemmaInvariant!65 (_3!197 lt!6202)) Unit!357)))

(declare-fun bs!6341 () Bool)

(assert (= bs!6341 d!5543))

(assert (=> bs!6341 m!20636))

(assert (=> b!46434 d!5543))

(declare-fun d!5545 () Bool)

(assert (=> d!5545 (= (list!212 (_1!669 (_1!674 lt!6202))) (list!214 (c!16149 (_1!669 (_1!674 lt!6202)))))))

(declare-fun bs!6342 () Bool)

(assert (= bs!6342 d!5545))

(declare-fun m!20812 () Bool)

(assert (=> bs!6342 m!20812))

(assert (=> b!46434 d!5545))

(declare-fun d!5547 () Bool)

(assert (=> d!5547 (= (list!212 (_1!669 lt!6206)) (list!214 (c!16149 (_1!669 lt!6206))))))

(declare-fun bs!6343 () Bool)

(assert (= bs!6343 d!5547))

(declare-fun m!20814 () Bool)

(assert (=> bs!6343 m!20814))

(assert (=> b!46434 d!5547))

(declare-fun b!46525 () Bool)

(declare-fun e!26539 () Bool)

(declare-fun e!26540 () Bool)

(assert (=> b!46525 (= e!26539 e!26540)))

(declare-fun res!31541 () Bool)

(declare-fun lt!6240 () tuple2!948)

(assert (=> b!46525 (= res!31541 (< (size!756 (_2!669 lt!6240)) (size!756 input!525)))))

(assert (=> b!46525 (=> (not res!31541) (not e!26540))))

(declare-fun d!5549 () Bool)

(declare-fun e!26538 () Bool)

(assert (=> d!5549 e!26538))

(declare-fun res!31540 () Bool)

(assert (=> d!5549 (=> (not res!31540) (not e!26538))))

(assert (=> d!5549 (= res!31540 e!26539)))

(declare-fun c!16156 () Bool)

(assert (=> d!5549 (= c!16156 (> (size!757 (_1!669 lt!6240)) 0))))

(assert (=> d!5549 (= lt!6240 (lexTailRecV2!16 Lexer!66 lt!6205 input!525 (BalanceConc!303 Empty!151) input!525 (BalanceConc!305 Empty!152)))))

(assert (=> d!5549 (= (lex!48 Lexer!66 lt!6205 input!525) lt!6240)))

(declare-fun b!46526 () Bool)

(declare-fun res!31542 () Bool)

(assert (=> b!46526 (=> (not res!31542) (not e!26538))))

(assert (=> b!46526 (= res!31542 (= (list!212 (_1!669 lt!6240)) (_1!675 (lexList!19 Lexer!66 lt!6205 (list!211 input!525)))))))

(declare-fun b!46527 () Bool)

(assert (=> b!46527 (= e!26538 (= (list!211 (_2!669 lt!6240)) (_2!675 (lexList!19 Lexer!66 lt!6205 (list!211 input!525)))))))

(declare-fun b!46528 () Bool)

(assert (=> b!46528 (= e!26539 (= (_2!669 lt!6240) input!525))))

(declare-fun b!46529 () Bool)

(assert (=> b!46529 (= e!26540 (not (isEmpty!155 (_1!669 lt!6240))))))

(assert (= (and d!5549 c!16156) b!46525))

(assert (= (and d!5549 (not c!16156)) b!46528))

(assert (= (and b!46525 res!31541) b!46529))

(assert (= (and d!5549 res!31540) b!46526))

(assert (= (and b!46526 res!31542) b!46527))

(declare-fun m!20816 () Bool)

(assert (=> b!46525 m!20816))

(declare-fun m!20818 () Bool)

(assert (=> b!46525 m!20818))

(declare-fun m!20820 () Bool)

(assert (=> b!46526 m!20820))

(assert (=> b!46526 m!20668))

(assert (=> b!46526 m!20668))

(declare-fun m!20822 () Bool)

(assert (=> b!46526 m!20822))

(declare-fun m!20824 () Bool)

(assert (=> b!46527 m!20824))

(assert (=> b!46527 m!20668))

(assert (=> b!46527 m!20668))

(assert (=> b!46527 m!20822))

(declare-fun m!20826 () Bool)

(assert (=> d!5549 m!20826))

(declare-fun m!20828 () Bool)

(assert (=> d!5549 m!20828))

(declare-fun m!20830 () Bool)

(assert (=> b!46529 m!20830))

(assert (=> b!46434 d!5549))

(declare-fun d!5551 () Bool)

(declare-fun c!16157 () Bool)

(assert (=> d!5551 (= c!16157 ((_ is Node!151) (c!16148 input!525)))))

(declare-fun e!26541 () Bool)

(assert (=> d!5551 (= (inv!1056 (c!16148 input!525)) e!26541)))

(declare-fun b!46530 () Bool)

(assert (=> b!46530 (= e!26541 (inv!1057 (c!16148 input!525)))))

(declare-fun b!46531 () Bool)

(declare-fun e!26542 () Bool)

(assert (=> b!46531 (= e!26541 e!26542)))

(declare-fun res!31543 () Bool)

(assert (=> b!46531 (= res!31543 (not ((_ is Leaf!350) (c!16148 input!525))))))

(assert (=> b!46531 (=> res!31543 e!26542)))

(declare-fun b!46532 () Bool)

(assert (=> b!46532 (= e!26542 (inv!1058 (c!16148 input!525)))))

(assert (= (and d!5551 c!16157) b!46530))

(assert (= (and d!5551 (not c!16157)) b!46531))

(assert (= (and b!46531 (not res!31543)) b!46532))

(declare-fun m!20832 () Bool)

(assert (=> b!46530 m!20832))

(declare-fun m!20834 () Bool)

(assert (=> b!46532 m!20834))

(assert (=> b!46414 d!5551))

(declare-fun d!5553 () Bool)

(assert (=> d!5553 (= (valid!234 (_4!43 lt!6202)) (validCacheMapFurthestNullable!18 (cache!746 (_4!43 lt!6202)) (totalInput!1545 (_4!43 lt!6202))))))

(declare-fun bs!6344 () Bool)

(assert (= bs!6344 d!5553))

(declare-fun m!20836 () Bool)

(assert (=> bs!6344 m!20836))

(assert (=> b!46396 d!5553))

(declare-fun d!5555 () Bool)

(declare-fun res!31548 () Bool)

(declare-fun e!26547 () Bool)

(assert (=> d!5555 (=> res!31548 e!26547)))

(assert (=> d!5555 (= res!31548 ((_ is Nil!775) lt!6197))))

(assert (=> d!5555 (= (forall!96 lt!6197 lambda!870) e!26547)))

(declare-fun b!46537 () Bool)

(declare-fun e!26548 () Bool)

(assert (=> b!46537 (= e!26547 e!26548)))

(declare-fun res!31549 () Bool)

(assert (=> b!46537 (=> (not res!31549) (not e!26548))))

(declare-fun dynLambda!127 (Int Token!116) Bool)

(assert (=> b!46537 (= res!31549 (dynLambda!127 lambda!870 (h!6171 lt!6197)))))

(declare-fun b!46538 () Bool)

(assert (=> b!46538 (= e!26548 (forall!96 (t!16904 lt!6197) lambda!870))))

(assert (= (and d!5555 (not res!31548)) b!46537))

(assert (= (and b!46537 res!31549) b!46538))

(declare-fun b_lambda!269 () Bool)

(assert (=> (not b_lambda!269) (not b!46537)))

(declare-fun m!20838 () Bool)

(assert (=> b!46537 m!20838))

(declare-fun m!20840 () Bool)

(assert (=> b!46538 m!20840))

(assert (=> b!46423 d!5555))

(declare-fun b!46541 () Bool)

(declare-fun e!26551 () Bool)

(assert (=> b!46541 (= e!26551 true)))

(declare-fun b!46540 () Bool)

(declare-fun e!26550 () Bool)

(assert (=> b!46540 (= e!26550 e!26551)))

(declare-fun b!46539 () Bool)

(declare-fun e!26549 () Bool)

(assert (=> b!46539 (= e!26549 e!26550)))

(assert (=> b!46445 e!26549))

(assert (= b!46540 b!46541))

(assert (= b!46539 b!46540))

(assert (= (and b!46445 ((_ is Cons!772) (t!16901 lt!6205))) b!46539))

(assert (=> b!46541 (< (dynLambda!124 order!199 (toValue!654 (transformation!175 (h!6168 (t!16901 lt!6205))))) (dynLambda!125 order!201 lambda!870))))

(assert (=> b!46541 (< (dynLambda!126 order!203 (toChars!513 (transformation!175 (h!6168 (t!16901 lt!6205))))) (dynLambda!125 order!201 lambda!870))))

(declare-fun tp!31552 () Bool)

(declare-fun e!26559 () Bool)

(declare-fun b!46546 () Bool)

(declare-fun setRes!1214 () Bool)

(declare-fun inv!1059 (Context!198) Bool)

(assert (=> b!46546 (= e!26559 (and (inv!1059 (_2!670 (_1!671 (h!6172 (zeroValue!520 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333)))))))))) setRes!1214 tp!31552))))

(declare-fun condSetEmpty!1214 () Bool)

(assert (=> b!46546 (= condSetEmpty!1214 (= (_2!671 (h!6172 (zeroValue!520 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333)))))))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1214 () Bool)

(assert (=> setIsEmpty!1214 setRes!1214))

(declare-fun setNonEmpty!1214 () Bool)

(declare-fun tp!31553 () Bool)

(declare-fun setElem!1214 () Context!198)

(assert (=> setNonEmpty!1214 (= setRes!1214 (and tp!31553 (inv!1059 setElem!1214)))))

(declare-fun setRest!1214 () (InoxSet Context!198))

(assert (=> setNonEmpty!1214 (= (_2!671 (h!6172 (zeroValue!520 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1214 true) setRest!1214))))

(assert (=> b!46426 (= tp!31536 e!26559)))

(assert (= (and b!46546 condSetEmpty!1214) setIsEmpty!1214))

(assert (= (and b!46546 (not condSetEmpty!1214)) setNonEmpty!1214))

(assert (= (and b!46426 ((_ is Cons!776) (zeroValue!520 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333)))))))) b!46546))

(declare-fun m!20842 () Bool)

(assert (=> b!46546 m!20842))

(declare-fun m!20844 () Bool)

(assert (=> setNonEmpty!1214 m!20844))

(declare-fun tp!31554 () Bool)

(declare-fun b!46547 () Bool)

(declare-fun e!26562 () Bool)

(declare-fun setRes!1215 () Bool)

(assert (=> b!46547 (= e!26562 (and (inv!1059 (_2!670 (_1!671 (h!6172 (minValue!520 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333)))))))))) setRes!1215 tp!31554))))

(declare-fun condSetEmpty!1215 () Bool)

(assert (=> b!46547 (= condSetEmpty!1215 (= (_2!671 (h!6172 (minValue!520 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333)))))))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1215 () Bool)

(assert (=> setIsEmpty!1215 setRes!1215))

(declare-fun setNonEmpty!1215 () Bool)

(declare-fun tp!31555 () Bool)

(declare-fun setElem!1215 () Context!198)

(assert (=> setNonEmpty!1215 (= setRes!1215 (and tp!31555 (inv!1059 setElem!1215)))))

(declare-fun setRest!1215 () (InoxSet Context!198))

(assert (=> setNonEmpty!1215 (= (_2!671 (h!6172 (minValue!520 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1215 true) setRest!1215))))

(assert (=> b!46426 (= tp!31546 e!26562)))

(assert (= (and b!46547 condSetEmpty!1215) setIsEmpty!1215))

(assert (= (and b!46547 (not condSetEmpty!1215)) setNonEmpty!1215))

(assert (= (and b!46426 ((_ is Cons!776) (minValue!520 (v!12507 (underlying!723 (v!12508 (underlying!724 (cache!745 cacheDown!333)))))))) b!46547))

(declare-fun m!20846 () Bool)

(assert (=> b!46547 m!20846))

(declare-fun m!20848 () Bool)

(assert (=> setNonEmpty!1215 m!20848))

(declare-fun b!46552 () Bool)

(declare-fun e!26568 () Bool)

(declare-fun setRes!1218 () Bool)

(declare-fun tp!31560 () Bool)

(assert (=> b!46552 (= e!26568 (and setRes!1218 tp!31560))))

(declare-fun condSetEmpty!1218 () Bool)

(assert (=> b!46552 (= condSetEmpty!1218 (= (_1!672 (_1!673 (h!6173 (zeroValue!521 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1218 () Bool)

(assert (=> setIsEmpty!1218 setRes!1218))

(declare-fun setNonEmpty!1218 () Bool)

(declare-fun tp!31561 () Bool)

(declare-fun setElem!1218 () Context!198)

(assert (=> setNonEmpty!1218 (= setRes!1218 (and tp!31561 (inv!1059 setElem!1218)))))

(declare-fun setRest!1218 () (InoxSet Context!198))

(assert (=> setNonEmpty!1218 (= (_1!672 (_1!673 (h!6173 (zeroValue!521 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1218 true) setRest!1218))))

(assert (=> b!46399 (= tp!31526 e!26568)))

(assert (= (and b!46552 condSetEmpty!1218) setIsEmpty!1218))

(assert (= (and b!46552 (not condSetEmpty!1218)) setNonEmpty!1218))

(assert (= (and b!46399 ((_ is Cons!777) (zeroValue!521 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45)))))))) b!46552))

(declare-fun m!20850 () Bool)

(assert (=> setNonEmpty!1218 m!20850))

(declare-fun b!46553 () Bool)

(declare-fun e!26570 () Bool)

(declare-fun setRes!1219 () Bool)

(declare-fun tp!31562 () Bool)

(assert (=> b!46553 (= e!26570 (and setRes!1219 tp!31562))))

(declare-fun condSetEmpty!1219 () Bool)

(assert (=> b!46553 (= condSetEmpty!1219 (= (_1!672 (_1!673 (h!6173 (minValue!521 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1219 () Bool)

(assert (=> setIsEmpty!1219 setRes!1219))

(declare-fun setNonEmpty!1219 () Bool)

(declare-fun tp!31563 () Bool)

(declare-fun setElem!1219 () Context!198)

(assert (=> setNonEmpty!1219 (= setRes!1219 (and tp!31563 (inv!1059 setElem!1219)))))

(declare-fun setRest!1219 () (InoxSet Context!198))

(assert (=> setNonEmpty!1219 (= (_1!672 (_1!673 (h!6173 (minValue!521 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1219 true) setRest!1219))))

(assert (=> b!46399 (= tp!31541 e!26570)))

(assert (= (and b!46553 condSetEmpty!1219) setIsEmpty!1219))

(assert (= (and b!46553 (not condSetEmpty!1219)) setNonEmpty!1219))

(assert (= (and b!46399 ((_ is Cons!777) (minValue!521 (v!12509 (underlying!725 (v!12510 (underlying!726 (cache!746 cacheFurthestNullable!45)))))))) b!46553))

(declare-fun m!20852 () Bool)

(assert (=> setNonEmpty!1219 m!20852))

(declare-fun mapDefault!1032 () List!776)

(declare-fun setRes!1224 () Bool)

(declare-fun e!26586 () Bool)

(declare-fun tp!31578 () Bool)

(declare-fun b!46560 () Bool)

(assert (=> b!46560 (= e!26586 (and (inv!1059 (_1!667 (_1!668 (h!6170 mapDefault!1032)))) setRes!1224 tp!31578))))

(declare-fun condSetEmpty!1224 () Bool)

(assert (=> b!46560 (= condSetEmpty!1224 (= (_2!668 (h!6170 mapDefault!1032)) ((as const (Array Context!198 Bool)) false)))))

(declare-fun mapValue!1032 () List!776)

(declare-fun e!26588 () Bool)

(declare-fun tp!31575 () Bool)

(declare-fun b!46561 () Bool)

(declare-fun setRes!1225 () Bool)

(assert (=> b!46561 (= e!26588 (and (inv!1059 (_1!667 (_1!668 (h!6170 mapValue!1032)))) setRes!1225 tp!31575))))

(declare-fun condSetEmpty!1225 () Bool)

(assert (=> b!46561 (= condSetEmpty!1225 (= (_2!668 (h!6170 mapValue!1032)) ((as const (Array Context!198 Bool)) false)))))

(declare-fun condMapEmpty!1032 () Bool)

(assert (=> mapNonEmpty!1029 (= condMapEmpty!1032 (= mapRest!1029 ((as const (Array (_ BitVec 32) List!776)) mapDefault!1032)))))

(declare-fun mapRes!1032 () Bool)

(assert (=> mapNonEmpty!1029 (= tp!31525 (and e!26586 mapRes!1032))))

(declare-fun setNonEmpty!1224 () Bool)

(declare-fun tp!31574 () Bool)

(declare-fun setElem!1224 () Context!198)

(assert (=> setNonEmpty!1224 (= setRes!1224 (and tp!31574 (inv!1059 setElem!1224)))))

(declare-fun setRest!1225 () (InoxSet Context!198))

(assert (=> setNonEmpty!1224 (= (_2!668 (h!6170 mapDefault!1032)) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1224 true) setRest!1225))))

(declare-fun setIsEmpty!1224 () Bool)

(assert (=> setIsEmpty!1224 setRes!1225))

(declare-fun setIsEmpty!1225 () Bool)

(assert (=> setIsEmpty!1225 setRes!1224))

(declare-fun mapNonEmpty!1032 () Bool)

(declare-fun tp!31576 () Bool)

(assert (=> mapNonEmpty!1032 (= mapRes!1032 (and tp!31576 e!26588))))

(declare-fun mapRest!1032 () (Array (_ BitVec 32) List!776))

(declare-fun mapKey!1032 () (_ BitVec 32))

(assert (=> mapNonEmpty!1032 (= mapRest!1029 (store mapRest!1032 mapKey!1032 mapValue!1032))))

(declare-fun mapIsEmpty!1032 () Bool)

(assert (=> mapIsEmpty!1032 mapRes!1032))

(declare-fun setNonEmpty!1225 () Bool)

(declare-fun tp!31577 () Bool)

(declare-fun setElem!1225 () Context!198)

(assert (=> setNonEmpty!1225 (= setRes!1225 (and tp!31577 (inv!1059 setElem!1225)))))

(declare-fun setRest!1224 () (InoxSet Context!198))

(assert (=> setNonEmpty!1225 (= (_2!668 (h!6170 mapValue!1032)) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1225 true) setRest!1224))))

(assert (= (and mapNonEmpty!1029 condMapEmpty!1032) mapIsEmpty!1032))

(assert (= (and mapNonEmpty!1029 (not condMapEmpty!1032)) mapNonEmpty!1032))

(assert (= (and b!46561 condSetEmpty!1225) setIsEmpty!1224))

(assert (= (and b!46561 (not condSetEmpty!1225)) setNonEmpty!1225))

(assert (= (and mapNonEmpty!1032 ((_ is Cons!774) mapValue!1032)) b!46561))

(assert (= (and b!46560 condSetEmpty!1224) setIsEmpty!1225))

(assert (= (and b!46560 (not condSetEmpty!1224)) setNonEmpty!1224))

(assert (= (and mapNonEmpty!1029 ((_ is Cons!774) mapDefault!1032)) b!46560))

(declare-fun m!20854 () Bool)

(assert (=> setNonEmpty!1225 m!20854))

(declare-fun m!20856 () Bool)

(assert (=> b!46560 m!20856))

(declare-fun m!20858 () Bool)

(assert (=> setNonEmpty!1224 m!20858))

(declare-fun m!20860 () Bool)

(assert (=> mapNonEmpty!1032 m!20860))

(declare-fun m!20862 () Bool)

(assert (=> b!46561 m!20862))

(declare-fun tp!31584 () Bool)

(declare-fun e!26596 () Bool)

(declare-fun setRes!1228 () Bool)

(declare-fun b!46566 () Bool)

(assert (=> b!46566 (= e!26596 (and (inv!1059 (_1!667 (_1!668 (h!6170 mapValue!1027)))) setRes!1228 tp!31584))))

(declare-fun condSetEmpty!1228 () Bool)

(assert (=> b!46566 (= condSetEmpty!1228 (= (_2!668 (h!6170 mapValue!1027)) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1228 () Bool)

(assert (=> setIsEmpty!1228 setRes!1228))

(declare-fun setNonEmpty!1228 () Bool)

(declare-fun tp!31583 () Bool)

(declare-fun setElem!1228 () Context!198)

(assert (=> setNonEmpty!1228 (= setRes!1228 (and tp!31583 (inv!1059 setElem!1228)))))

(declare-fun setRest!1228 () (InoxSet Context!198))

(assert (=> setNonEmpty!1228 (= (_2!668 (h!6170 mapValue!1027)) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1228 true) setRest!1228))))

(assert (=> mapNonEmpty!1029 (= tp!31534 e!26596)))

(assert (= (and b!46566 condSetEmpty!1228) setIsEmpty!1228))

(assert (= (and b!46566 (not condSetEmpty!1228)) setNonEmpty!1228))

(assert (= (and mapNonEmpty!1029 ((_ is Cons!774) mapValue!1027)) b!46566))

(declare-fun m!20864 () Bool)

(assert (=> b!46566 m!20864))

(declare-fun m!20866 () Bool)

(assert (=> setNonEmpty!1228 m!20866))

(declare-fun mapIsEmpty!1035 () Bool)

(declare-fun mapRes!1035 () Bool)

(assert (=> mapIsEmpty!1035 mapRes!1035))

(declare-fun setIsEmpty!1233 () Bool)

(declare-fun setRes!1234 () Bool)

(assert (=> setIsEmpty!1233 setRes!1234))

(declare-fun mapNonEmpty!1035 () Bool)

(declare-fun tp!31595 () Bool)

(declare-fun e!26609 () Bool)

(assert (=> mapNonEmpty!1035 (= mapRes!1035 (and tp!31595 e!26609))))

(declare-fun mapValue!1035 () List!779)

(declare-fun mapRest!1035 () (Array (_ BitVec 32) List!779))

(declare-fun mapKey!1035 () (_ BitVec 32))

(assert (=> mapNonEmpty!1035 (= mapRest!1027 (store mapRest!1035 mapKey!1035 mapValue!1035))))

(declare-fun setNonEmpty!1233 () Bool)

(declare-fun tp!31599 () Bool)

(declare-fun setElem!1233 () Context!198)

(assert (=> setNonEmpty!1233 (= setRes!1234 (and tp!31599 (inv!1059 setElem!1233)))))

(declare-fun setRest!1234 () (InoxSet Context!198))

(assert (=> setNonEmpty!1233 (= (_1!672 (_1!673 (h!6173 mapValue!1035))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1233 true) setRest!1234))))

(declare-fun condMapEmpty!1035 () Bool)

(declare-fun mapDefault!1035 () List!779)

(assert (=> mapNonEmpty!1028 (= condMapEmpty!1035 (= mapRest!1027 ((as const (Array (_ BitVec 32) List!779)) mapDefault!1035)))))

(declare-fun e!26608 () Bool)

(assert (=> mapNonEmpty!1028 (= tp!31535 (and e!26608 mapRes!1035))))

(declare-fun setIsEmpty!1234 () Bool)

(declare-fun setRes!1233 () Bool)

(assert (=> setIsEmpty!1234 setRes!1233))

(declare-fun setNonEmpty!1234 () Bool)

(declare-fun tp!31596 () Bool)

(declare-fun setElem!1234 () Context!198)

(assert (=> setNonEmpty!1234 (= setRes!1233 (and tp!31596 (inv!1059 setElem!1234)))))

(declare-fun setRest!1233 () (InoxSet Context!198))

(assert (=> setNonEmpty!1234 (= (_1!672 (_1!673 (h!6173 mapDefault!1035))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1234 true) setRest!1233))))

(declare-fun b!46573 () Bool)

(declare-fun tp!31598 () Bool)

(assert (=> b!46573 (= e!26609 (and setRes!1234 tp!31598))))

(declare-fun condSetEmpty!1234 () Bool)

(assert (=> b!46573 (= condSetEmpty!1234 (= (_1!672 (_1!673 (h!6173 mapValue!1035))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun b!46574 () Bool)

(declare-fun tp!31597 () Bool)

(assert (=> b!46574 (= e!26608 (and setRes!1233 tp!31597))))

(declare-fun condSetEmpty!1233 () Bool)

(assert (=> b!46574 (= condSetEmpty!1233 (= (_1!672 (_1!673 (h!6173 mapDefault!1035))) ((as const (Array Context!198 Bool)) false)))))

(assert (= (and mapNonEmpty!1028 condMapEmpty!1035) mapIsEmpty!1035))

(assert (= (and mapNonEmpty!1028 (not condMapEmpty!1035)) mapNonEmpty!1035))

(assert (= (and b!46573 condSetEmpty!1234) setIsEmpty!1233))

(assert (= (and b!46573 (not condSetEmpty!1234)) setNonEmpty!1233))

(assert (= (and mapNonEmpty!1035 ((_ is Cons!777) mapValue!1035)) b!46573))

(assert (= (and b!46574 condSetEmpty!1233) setIsEmpty!1234))

(assert (= (and b!46574 (not condSetEmpty!1233)) setNonEmpty!1234))

(assert (= (and mapNonEmpty!1028 ((_ is Cons!777) mapDefault!1035)) b!46574))

(declare-fun m!20868 () Bool)

(assert (=> mapNonEmpty!1035 m!20868))

(declare-fun m!20870 () Bool)

(assert (=> setNonEmpty!1233 m!20870))

(declare-fun m!20872 () Bool)

(assert (=> setNonEmpty!1234 m!20872))

(declare-fun b!46575 () Bool)

(declare-fun e!26611 () Bool)

(declare-fun setRes!1235 () Bool)

(declare-fun tp!31600 () Bool)

(assert (=> b!46575 (= e!26611 (and setRes!1235 tp!31600))))

(declare-fun condSetEmpty!1235 () Bool)

(assert (=> b!46575 (= condSetEmpty!1235 (= (_1!672 (_1!673 (h!6173 mapValue!1028))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1235 () Bool)

(assert (=> setIsEmpty!1235 setRes!1235))

(declare-fun setNonEmpty!1235 () Bool)

(declare-fun tp!31601 () Bool)

(declare-fun setElem!1235 () Context!198)

(assert (=> setNonEmpty!1235 (= setRes!1235 (and tp!31601 (inv!1059 setElem!1235)))))

(declare-fun setRest!1235 () (InoxSet Context!198))

(assert (=> setNonEmpty!1235 (= (_1!672 (_1!673 (h!6173 mapValue!1028))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1235 true) setRest!1235))))

(assert (=> mapNonEmpty!1028 (= tp!31529 e!26611)))

(assert (= (and b!46575 condSetEmpty!1235) setIsEmpty!1235))

(assert (= (and b!46575 (not condSetEmpty!1235)) setNonEmpty!1235))

(assert (= (and mapNonEmpty!1028 ((_ is Cons!777) mapValue!1028)) b!46575))

(declare-fun m!20874 () Bool)

(assert (=> setNonEmpty!1235 m!20874))

(declare-fun tp!31606 () Bool)

(declare-fun e!26617 () Bool)

(declare-fun b!46582 () Bool)

(declare-fun tp!31607 () Bool)

(assert (=> b!46582 (= e!26617 (and (inv!1056 (left!603 (c!16148 (totalInput!1545 cacheFurthestNullable!45)))) tp!31606 (inv!1056 (right!933 (c!16148 (totalInput!1545 cacheFurthestNullable!45)))) tp!31607))))

(declare-fun b!46583 () Bool)

(declare-fun inv!1060 (IArray!303) Bool)

(assert (=> b!46583 (= e!26617 (inv!1060 (xs!2730 (c!16148 (totalInput!1545 cacheFurthestNullable!45)))))))

(assert (=> b!46410 (= tp!31545 (and (inv!1056 (c!16148 (totalInput!1545 cacheFurthestNullable!45))) e!26617))))

(assert (= (and b!46410 ((_ is Node!151) (c!16148 (totalInput!1545 cacheFurthestNullable!45)))) b!46582))

(assert (= (and b!46410 ((_ is Leaf!350) (c!16148 (totalInput!1545 cacheFurthestNullable!45)))) b!46583))

(declare-fun m!20876 () Bool)

(assert (=> b!46582 m!20876))

(declare-fun m!20878 () Bool)

(assert (=> b!46582 m!20878))

(declare-fun m!20880 () Bool)

(assert (=> b!46583 m!20880))

(assert (=> b!46410 m!20624))

(declare-fun setRes!1236 () Bool)

(declare-fun b!46584 () Bool)

(declare-fun tp!31609 () Bool)

(declare-fun e!26619 () Bool)

(assert (=> b!46584 (= e!26619 (and (inv!1059 (_1!667 (_1!668 (h!6170 mapDefault!1029)))) setRes!1236 tp!31609))))

(declare-fun condSetEmpty!1236 () Bool)

(assert (=> b!46584 (= condSetEmpty!1236 (= (_2!668 (h!6170 mapDefault!1029)) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1236 () Bool)

(assert (=> setIsEmpty!1236 setRes!1236))

(declare-fun setNonEmpty!1236 () Bool)

(declare-fun tp!31608 () Bool)

(declare-fun setElem!1236 () Context!198)

(assert (=> setNonEmpty!1236 (= setRes!1236 (and tp!31608 (inv!1059 setElem!1236)))))

(declare-fun setRest!1236 () (InoxSet Context!198))

(assert (=> setNonEmpty!1236 (= (_2!668 (h!6170 mapDefault!1029)) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1236 true) setRest!1236))))

(assert (=> b!46409 (= tp!31539 e!26619)))

(assert (= (and b!46584 condSetEmpty!1236) setIsEmpty!1236))

(assert (= (and b!46584 (not condSetEmpty!1236)) setNonEmpty!1236))

(assert (= (and b!46409 ((_ is Cons!774) mapDefault!1029)) b!46584))

(declare-fun m!20882 () Bool)

(assert (=> b!46584 m!20882))

(declare-fun m!20884 () Bool)

(assert (=> setNonEmpty!1236 m!20884))

(declare-fun e!26623 () Bool)

(declare-fun tp!31610 () Bool)

(declare-fun b!46585 () Bool)

(declare-fun setRes!1237 () Bool)

(assert (=> b!46585 (= e!26623 (and (inv!1059 (_2!670 (_1!671 (h!6172 mapDefault!1027)))) setRes!1237 tp!31610))))

(declare-fun condSetEmpty!1237 () Bool)

(assert (=> b!46585 (= condSetEmpty!1237 (= (_2!671 (h!6172 mapDefault!1027)) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1237 () Bool)

(assert (=> setIsEmpty!1237 setRes!1237))

(declare-fun setNonEmpty!1237 () Bool)

(declare-fun tp!31611 () Bool)

(declare-fun setElem!1237 () Context!198)

(assert (=> setNonEmpty!1237 (= setRes!1237 (and tp!31611 (inv!1059 setElem!1237)))))

(declare-fun setRest!1237 () (InoxSet Context!198))

(assert (=> setNonEmpty!1237 (= (_2!671 (h!6172 mapDefault!1027)) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1237 true) setRest!1237))))

(assert (=> b!46418 (= tp!31532 e!26623)))

(assert (= (and b!46585 condSetEmpty!1237) setIsEmpty!1237))

(assert (= (and b!46585 (not condSetEmpty!1237)) setNonEmpty!1237))

(assert (= (and b!46418 ((_ is Cons!776) mapDefault!1027)) b!46585))

(declare-fun m!20886 () Bool)

(assert (=> b!46585 m!20886))

(declare-fun m!20888 () Bool)

(assert (=> setNonEmpty!1237 m!20888))

(declare-fun tp!31613 () Bool)

(declare-fun setRes!1238 () Bool)

(declare-fun e!26625 () Bool)

(declare-fun b!46586 () Bool)

(assert (=> b!46586 (= e!26625 (and (inv!1059 (_1!667 (_1!668 (h!6170 (zeroValue!519 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320)))))))))) setRes!1238 tp!31613))))

(declare-fun condSetEmpty!1238 () Bool)

(assert (=> b!46586 (= condSetEmpty!1238 (= (_2!668 (h!6170 (zeroValue!519 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320)))))))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1238 () Bool)

(assert (=> setIsEmpty!1238 setRes!1238))

(declare-fun setNonEmpty!1238 () Bool)

(declare-fun tp!31612 () Bool)

(declare-fun setElem!1238 () Context!198)

(assert (=> setNonEmpty!1238 (= setRes!1238 (and tp!31612 (inv!1059 setElem!1238)))))

(declare-fun setRest!1238 () (InoxSet Context!198))

(assert (=> setNonEmpty!1238 (= (_2!668 (h!6170 (zeroValue!519 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1238 true) setRest!1238))))

(assert (=> b!46401 (= tp!31544 e!26625)))

(assert (= (and b!46586 condSetEmpty!1238) setIsEmpty!1238))

(assert (= (and b!46586 (not condSetEmpty!1238)) setNonEmpty!1238))

(assert (= (and b!46401 ((_ is Cons!774) (zeroValue!519 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320)))))))) b!46586))

(declare-fun m!20890 () Bool)

(assert (=> b!46586 m!20890))

(declare-fun m!20892 () Bool)

(assert (=> setNonEmpty!1238 m!20892))

(declare-fun e!26628 () Bool)

(declare-fun tp!31615 () Bool)

(declare-fun b!46587 () Bool)

(declare-fun setRes!1239 () Bool)

(assert (=> b!46587 (= e!26628 (and (inv!1059 (_1!667 (_1!668 (h!6170 (minValue!519 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320)))))))))) setRes!1239 tp!31615))))

(declare-fun condSetEmpty!1239 () Bool)

(assert (=> b!46587 (= condSetEmpty!1239 (= (_2!668 (h!6170 (minValue!519 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320)))))))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1239 () Bool)

(assert (=> setIsEmpty!1239 setRes!1239))

(declare-fun setNonEmpty!1239 () Bool)

(declare-fun tp!31614 () Bool)

(declare-fun setElem!1239 () Context!198)

(assert (=> setNonEmpty!1239 (= setRes!1239 (and tp!31614 (inv!1059 setElem!1239)))))

(declare-fun setRest!1239 () (InoxSet Context!198))

(assert (=> setNonEmpty!1239 (= (_2!668 (h!6170 (minValue!519 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1239 true) setRest!1239))))

(assert (=> b!46401 (= tp!31540 e!26628)))

(assert (= (and b!46587 condSetEmpty!1239) setIsEmpty!1239))

(assert (= (and b!46587 (not condSetEmpty!1239)) setNonEmpty!1239))

(assert (= (and b!46401 ((_ is Cons!774) (minValue!519 (v!12505 (underlying!721 (v!12506 (underlying!722 (cache!744 cacheUp!320)))))))) b!46587))

(declare-fun m!20894 () Bool)

(assert (=> b!46587 m!20894))

(declare-fun m!20896 () Bool)

(assert (=> setNonEmpty!1239 m!20896))

(declare-fun b!46588 () Bool)

(declare-fun e!26631 () Bool)

(declare-fun setRes!1240 () Bool)

(declare-fun tp!31616 () Bool)

(assert (=> b!46588 (= e!26631 (and setRes!1240 tp!31616))))

(declare-fun condSetEmpty!1240 () Bool)

(assert (=> b!46588 (= condSetEmpty!1240 (= (_1!672 (_1!673 (h!6173 mapDefault!1028))) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1240 () Bool)

(assert (=> setIsEmpty!1240 setRes!1240))

(declare-fun setNonEmpty!1240 () Bool)

(declare-fun tp!31617 () Bool)

(declare-fun setElem!1240 () Context!198)

(assert (=> setNonEmpty!1240 (= setRes!1240 (and tp!31617 (inv!1059 setElem!1240)))))

(declare-fun setRest!1240 () (InoxSet Context!198))

(assert (=> setNonEmpty!1240 (= (_1!672 (_1!673 (h!6173 mapDefault!1028))) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1240 true) setRest!1240))))

(assert (=> b!46431 (= tp!31542 e!26631)))

(assert (= (and b!46588 condSetEmpty!1240) setIsEmpty!1240))

(assert (= (and b!46588 (not condSetEmpty!1240)) setNonEmpty!1240))

(assert (= (and b!46431 ((_ is Cons!777) mapDefault!1028)) b!46588))

(declare-fun m!20898 () Bool)

(assert (=> setNonEmpty!1240 m!20898))

(declare-fun condMapEmpty!1038 () Bool)

(declare-fun mapDefault!1038 () List!778)

(assert (=> mapNonEmpty!1027 (= condMapEmpty!1038 (= mapRest!1028 ((as const (Array (_ BitVec 32) List!778)) mapDefault!1038)))))

(declare-fun e!26646 () Bool)

(declare-fun mapRes!1038 () Bool)

(assert (=> mapNonEmpty!1027 (= tp!31547 (and e!26646 mapRes!1038))))

(declare-fun setIsEmpty!1245 () Bool)

(declare-fun setRes!1246 () Bool)

(assert (=> setIsEmpty!1245 setRes!1246))

(declare-fun setRes!1245 () Bool)

(declare-fun e!26650 () Bool)

(declare-fun b!46595 () Bool)

(declare-fun tp!31628 () Bool)

(declare-fun mapValue!1038 () List!778)

(assert (=> b!46595 (= e!26650 (and (inv!1059 (_2!670 (_1!671 (h!6172 mapValue!1038)))) setRes!1245 tp!31628))))

(declare-fun condSetEmpty!1246 () Bool)

(assert (=> b!46595 (= condSetEmpty!1246 (= (_2!671 (h!6172 mapValue!1038)) ((as const (Array Context!198 Bool)) false)))))

(declare-fun mapNonEmpty!1038 () Bool)

(declare-fun tp!31629 () Bool)

(assert (=> mapNonEmpty!1038 (= mapRes!1038 (and tp!31629 e!26650))))

(declare-fun mapKey!1038 () (_ BitVec 32))

(declare-fun mapRest!1038 () (Array (_ BitVec 32) List!778))

(assert (=> mapNonEmpty!1038 (= mapRest!1028 (store mapRest!1038 mapKey!1038 mapValue!1038))))

(declare-fun tp!31630 () Bool)

(declare-fun b!46596 () Bool)

(assert (=> b!46596 (= e!26646 (and (inv!1059 (_2!670 (_1!671 (h!6172 mapDefault!1038)))) setRes!1246 tp!31630))))

(declare-fun condSetEmpty!1245 () Bool)

(assert (=> b!46596 (= condSetEmpty!1245 (= (_2!671 (h!6172 mapDefault!1038)) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setNonEmpty!1245 () Bool)

(declare-fun tp!31631 () Bool)

(declare-fun setElem!1246 () Context!198)

(assert (=> setNonEmpty!1245 (= setRes!1246 (and tp!31631 (inv!1059 setElem!1246)))))

(declare-fun setRest!1246 () (InoxSet Context!198))

(assert (=> setNonEmpty!1245 (= (_2!671 (h!6172 mapDefault!1038)) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1246 true) setRest!1246))))

(declare-fun setIsEmpty!1246 () Bool)

(assert (=> setIsEmpty!1246 setRes!1245))

(declare-fun setNonEmpty!1246 () Bool)

(declare-fun tp!31632 () Bool)

(declare-fun setElem!1245 () Context!198)

(assert (=> setNonEmpty!1246 (= setRes!1245 (and tp!31632 (inv!1059 setElem!1245)))))

(declare-fun setRest!1245 () (InoxSet Context!198))

(assert (=> setNonEmpty!1246 (= (_2!671 (h!6172 mapValue!1038)) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1245 true) setRest!1245))))

(declare-fun mapIsEmpty!1038 () Bool)

(assert (=> mapIsEmpty!1038 mapRes!1038))

(assert (= (and mapNonEmpty!1027 condMapEmpty!1038) mapIsEmpty!1038))

(assert (= (and mapNonEmpty!1027 (not condMapEmpty!1038)) mapNonEmpty!1038))

(assert (= (and b!46595 condSetEmpty!1246) setIsEmpty!1246))

(assert (= (and b!46595 (not condSetEmpty!1246)) setNonEmpty!1246))

(assert (= (and mapNonEmpty!1038 ((_ is Cons!776) mapValue!1038)) b!46595))

(assert (= (and b!46596 condSetEmpty!1245) setIsEmpty!1245))

(assert (= (and b!46596 (not condSetEmpty!1245)) setNonEmpty!1245))

(assert (= (and mapNonEmpty!1027 ((_ is Cons!776) mapDefault!1038)) b!46596))

(declare-fun m!20900 () Bool)

(assert (=> b!46596 m!20900))

(declare-fun m!20902 () Bool)

(assert (=> setNonEmpty!1245 m!20902))

(declare-fun m!20904 () Bool)

(assert (=> mapNonEmpty!1038 m!20904))

(declare-fun m!20906 () Bool)

(assert (=> setNonEmpty!1246 m!20906))

(declare-fun m!20908 () Bool)

(assert (=> b!46595 m!20908))

(declare-fun setRes!1247 () Bool)

(declare-fun e!26652 () Bool)

(declare-fun b!46597 () Bool)

(declare-fun tp!31633 () Bool)

(assert (=> b!46597 (= e!26652 (and (inv!1059 (_2!670 (_1!671 (h!6172 mapValue!1029)))) setRes!1247 tp!31633))))

(declare-fun condSetEmpty!1247 () Bool)

(assert (=> b!46597 (= condSetEmpty!1247 (= (_2!671 (h!6172 mapValue!1029)) ((as const (Array Context!198 Bool)) false)))))

(declare-fun setIsEmpty!1247 () Bool)

(assert (=> setIsEmpty!1247 setRes!1247))

(declare-fun setNonEmpty!1247 () Bool)

(declare-fun tp!31634 () Bool)

(declare-fun setElem!1247 () Context!198)

(assert (=> setNonEmpty!1247 (= setRes!1247 (and tp!31634 (inv!1059 setElem!1247)))))

(declare-fun setRest!1247 () (InoxSet Context!198))

(assert (=> setNonEmpty!1247 (= (_2!671 (h!6172 mapValue!1029)) ((_ map or) (store ((as const (Array Context!198 Bool)) false) setElem!1247 true) setRest!1247))))

(assert (=> mapNonEmpty!1027 (= tp!31531 e!26652)))

(assert (= (and b!46597 condSetEmpty!1247) setIsEmpty!1247))

(assert (= (and b!46597 (not condSetEmpty!1247)) setNonEmpty!1247))

(assert (= (and mapNonEmpty!1027 ((_ is Cons!776) mapValue!1029)) b!46597))

(declare-fun m!20910 () Bool)

(assert (=> b!46597 m!20910))

(declare-fun m!20912 () Bool)

(assert (=> setNonEmpty!1247 m!20912))

(declare-fun b!46598 () Bool)

(declare-fun tp!31636 () Bool)

(declare-fun e!26654 () Bool)

(declare-fun tp!31635 () Bool)

(assert (=> b!46598 (= e!26654 (and (inv!1056 (left!603 (c!16148 input!525))) tp!31635 (inv!1056 (right!933 (c!16148 input!525))) tp!31636))))

(declare-fun b!46599 () Bool)

(assert (=> b!46599 (= e!26654 (inv!1060 (xs!2730 (c!16148 input!525))))))

(assert (=> b!46414 (= tp!31527 (and (inv!1056 (c!16148 input!525)) e!26654))))

(assert (= (and b!46414 ((_ is Node!151) (c!16148 input!525))) b!46598))

(assert (= (and b!46414 ((_ is Leaf!350) (c!16148 input!525))) b!46599))

(declare-fun m!20914 () Bool)

(assert (=> b!46598 m!20914))

(declare-fun m!20916 () Bool)

(assert (=> b!46598 m!20916))

(declare-fun m!20918 () Bool)

(assert (=> b!46599 m!20918))

(assert (=> b!46414 m!20670))

(declare-fun b_lambda!271 () Bool)

(assert (= b_lambda!269 (or b!46423 b_lambda!271)))

(declare-fun bs!6345 () Bool)

(declare-fun d!5557 () Bool)

(assert (= bs!6345 (and d!5557 b!46423)))

(assert (=> bs!6345 (= (dynLambda!127 lambda!870 (h!6171 lt!6197)) (rulesProduceIndividualToken!11 Lexer!66 lt!6205 (h!6171 lt!6197)))))

(assert (=> bs!6345 m!20784))

(assert (=> b!46537 d!5557))

(check-sat (not d!5541) (not d!5553) (not b!46522) (not b!46574) (not setNonEmpty!1239) (not d!5527) (not d!5545) (not b!46527) (not d!5489) b_and!1263 (not setNonEmpty!1219) (not b_next!1231) (not setNonEmpty!1233) (not b_lambda!271) (not b!46489) (not b!46586) (not b_next!1227) (not d!5477) (not b!46598) (not d!5537) (not b!46529) (not setNonEmpty!1218) (not b!46547) (not b!46465) (not b!46560) (not b!46450) (not d!5529) (not d!5539) (not d!5503) (not b_next!1229) (not setNonEmpty!1247) (not b!46486) (not b!46495) (not d!5509) (not setNonEmpty!1215) (not b!46521) (not b!46587) (not b!46472) (not b_next!1221) (not setNonEmpty!1246) (not setNonEmpty!1237) (not setNonEmpty!1235) (not b!46474) b_and!1261 (not setNonEmpty!1225) (not setNonEmpty!1245) (not b!46597) (not b!46561) (not b!46583) (not b!46463) (not b!46462) (not d!5543) (not setNonEmpty!1228) (not b!46566) (not b!46414) (not d!5511) (not b!46538) b_and!1255 (not b!46410) (not d!5479) (not d!5507) (not d!5495) (not b!46464) b_and!1259 (not b!46588) (not b!46575) (not mapNonEmpty!1035) b_and!1257 b_and!1265 (not b!46504) (not b!46530) (not d!5535) (not setNonEmpty!1238) (not b!46582) (not b!46505) (not b!46487) (not b!46498) (not b!46492) (not d!5533) (not d!5515) (not b!46599) (not b!46520) (not d!5497) (not d!5531) (not mapNonEmpty!1032) (not setNonEmpty!1234) (not d!5505) (not b!46461) (not setNonEmpty!1236) (not b!46573) (not mapNonEmpty!1038) (not b!46525) (not d!5547) (not b!46485) (not setNonEmpty!1224) (not bs!6345) (not b_next!1225) (not b!46524) (not b!46553) (not b!46552) (not b!46596) (not b!46595) (not d!5519) (not b!46585) (not b!46503) (not b!46532) (not setNonEmpty!1214) (not setNonEmpty!1240) (not b!46539) (not b!46546) (not b_next!1223) (not b!46584) (not d!5549) (not d!5491) (not d!5513) (not b!46526))
(check-sat b_and!1263 (not b_next!1231) (not b_next!1227) (not b_next!1229) b_and!1255 b_and!1265 (not b_next!1225) (not b_next!1223) (not b_next!1221) b_and!1261 b_and!1259 b_and!1257)
