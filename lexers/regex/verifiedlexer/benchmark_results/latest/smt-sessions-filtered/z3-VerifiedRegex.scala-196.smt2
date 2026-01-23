; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2986 () Bool)

(assert start!2986)

(declare-fun b!45583 () Bool)

(declare-fun b_free!1173 () Bool)

(declare-fun b_next!1173 () Bool)

(assert (=> b!45583 (= b_free!1173 (not b_next!1173))))

(declare-fun tp!31072 () Bool)

(declare-fun b_and!1207 () Bool)

(assert (=> b!45583 (= tp!31072 b_and!1207)))

(declare-fun b!45574 () Bool)

(declare-fun b_free!1175 () Bool)

(declare-fun b_next!1175 () Bool)

(assert (=> b!45574 (= b_free!1175 (not b_next!1175))))

(declare-fun tp!31087 () Bool)

(declare-fun b_and!1209 () Bool)

(assert (=> b!45574 (= tp!31087 b_and!1209)))

(declare-fun b!45576 () Bool)

(declare-fun b_free!1177 () Bool)

(declare-fun b_next!1177 () Bool)

(assert (=> b!45576 (= b_free!1177 (not b_next!1177))))

(declare-fun tp!31081 () Bool)

(declare-fun b_and!1211 () Bool)

(assert (=> b!45576 (= tp!31081 b_and!1211)))

(declare-fun b!45572 () Bool)

(declare-fun b_free!1179 () Bool)

(declare-fun b_next!1179 () Bool)

(assert (=> b!45572 (= b_free!1179 (not b_next!1179))))

(declare-fun tp!31088 () Bool)

(declare-fun b_and!1213 () Bool)

(assert (=> b!45572 (= tp!31088 b_and!1213)))

(declare-fun b!45581 () Bool)

(declare-fun b_free!1181 () Bool)

(declare-fun b_next!1181 () Bool)

(assert (=> b!45581 (= b_free!1181 (not b_next!1181))))

(declare-fun tp!31074 () Bool)

(declare-fun b_and!1215 () Bool)

(assert (=> b!45581 (= tp!31074 b_and!1215)))

(declare-fun b!45591 () Bool)

(declare-fun b_free!1183 () Bool)

(declare-fun b_next!1183 () Bool)

(assert (=> b!45591 (= b_free!1183 (not b_next!1183))))

(declare-fun tp!31091 () Bool)

(declare-fun b_and!1217 () Bool)

(assert (=> b!45591 (= tp!31091 b_and!1217)))

(declare-fun b!45613 () Bool)

(declare-fun e!25740 () Bool)

(assert (=> b!45613 (= e!25740 true)))

(declare-fun b!45612 () Bool)

(declare-fun e!25739 () Bool)

(assert (=> b!45612 (= e!25739 e!25740)))

(declare-fun b!45611 () Bool)

(declare-fun e!25738 () Bool)

(assert (=> b!45611 (= e!25738 e!25739)))

(declare-fun b!45593 () Bool)

(assert (=> b!45593 e!25738))

(assert (= b!45612 b!45613))

(assert (= b!45611 b!45612))

(declare-datatypes ((List!743 0))(
  ( (Nil!741) (Cons!741 (h!6137 (_ BitVec 16)) (t!16730 List!743)) )
))
(declare-datatypes ((TokenValue!161 0))(
  ( (FloatLiteralValue!322 (text!1572 List!743)) (TokenValueExt!160 (__x!1254 Int)) (Broken!805 (value!7657 List!743)) (Object!162) (End!161) (Def!161) (Underscore!161) (Match!161) (Else!161) (Error!161) (Case!161) (If!161) (Extends!161) (Abstract!161) (Class!161) (Val!161) (DelimiterValue!322 (del!221 List!743)) (KeywordValue!167 (value!7658 List!743)) (CommentValue!322 (value!7659 List!743)) (WhitespaceValue!322 (value!7660 List!743)) (IndentationValue!161 (value!7661 List!743)) (String!1100) (Int32!161) (Broken!806 (value!7662 List!743)) (Boolean!162) (Unit!341) (OperatorValue!164 (op!221 List!743)) (IdentifierValue!322 (value!7663 List!743)) (IdentifierValue!323 (value!7664 List!743)) (WhitespaceValue!323 (value!7665 List!743)) (True!322) (False!322) (Broken!807 (value!7666 List!743)) (Broken!808 (value!7667 List!743)) (True!323) (RightBrace!161) (RightBracket!161) (Colon!161) (Null!161) (Comma!161) (LeftBracket!161) (False!323) (LeftBrace!161) (ImaginaryLiteralValue!161 (text!1573 List!743)) (StringLiteralValue!483 (value!7668 List!743)) (EOFValue!161 (value!7669 List!743)) (IdentValue!161 (value!7670 List!743)) (DelimiterValue!323 (value!7671 List!743)) (DedentValue!161 (value!7672 List!743)) (NewLineValue!161 (value!7673 List!743)) (IntegerValue!483 (value!7674 (_ BitVec 32)) (text!1574 List!743)) (IntegerValue!484 (value!7675 Int) (text!1575 List!743)) (Times!161) (Or!161) (Equal!161) (Minus!161) (Broken!809 (value!7676 List!743)) (And!161) (Div!161) (LessEqual!161) (Mod!161) (Concat!398) (Not!161) (Plus!161) (SpaceValue!161 (value!7677 List!743)) (IntegerValue!485 (value!7678 Int) (text!1576 List!743)) (StringLiteralValue!484 (text!1577 List!743)) (FloatLiteralValue!323 (text!1578 List!743)) (BytesLiteralValue!161 (value!7679 List!743)) (CommentValue!323 (value!7680 List!743)) (StringLiteralValue!485 (value!7681 List!743)) (ErrorTokenValue!161 (msg!222 List!743)) )
))
(declare-datatypes ((Regex!237 0))(
  ( (ElementMatch!237 (c!16116 (_ BitVec 16))) (Concat!399 (regOne!986 Regex!237) (regTwo!986 Regex!237)) (EmptyExpr!237) (Star!237 (reg!566 Regex!237)) (EmptyLang!237) (Union!237 (regOne!987 Regex!237) (regTwo!987 Regex!237)) )
))
(declare-datatypes ((String!1101 0))(
  ( (String!1102 (value!7682 String)) )
))
(declare-datatypes ((IArray!289 0))(
  ( (IArray!290 (innerList!202 List!743)) )
))
(declare-datatypes ((Conc!144 0))(
  ( (Node!144 (left!586 Conc!144) (right!916 Conc!144) (csize!518 Int) (cheight!355 Int)) (Leaf!341 (xs!2723 IArray!289) (csize!519 Int)) (Empty!144) )
))
(declare-datatypes ((BalanceConc!288 0))(
  ( (BalanceConc!289 (c!16117 Conc!144)) )
))
(declare-datatypes ((TokenValueInjection!146 0))(
  ( (TokenValueInjection!147 (toValue!650 Int) (toChars!509 Int)) )
))
(declare-datatypes ((Rule!142 0))(
  ( (Rule!143 (regex!171 Regex!237) (tag!349 String!1101) (isSeparator!171 Bool) (transformation!171 TokenValueInjection!146)) )
))
(declare-datatypes ((List!744 0))(
  ( (Nil!742) (Cons!742 (h!6138 Rule!142) (t!16731 List!744)) )
))
(declare-fun lt!5955 () List!744)

(get-info :version)

(assert (= (and b!45593 ((_ is Cons!742) lt!5955)) b!45611))

(declare-fun order!175 () Int)

(declare-fun order!177 () Int)

(declare-fun lambda!844 () Int)

(declare-fun dynLambda!110 (Int Int) Int)

(declare-fun dynLambda!111 (Int Int) Int)

(assert (=> b!45613 (< (dynLambda!110 order!175 (toValue!650 (transformation!171 (h!6138 lt!5955)))) (dynLambda!111 order!177 lambda!844))))

(declare-fun order!179 () Int)

(declare-fun dynLambda!112 (Int Int) Int)

(assert (=> b!45613 (< (dynLambda!112 order!179 (toChars!509 (transformation!171 (h!6138 lt!5955)))) (dynLambda!111 order!177 lambda!844))))

(declare-fun b!45564 () Bool)

(declare-fun e!25721 () Bool)

(declare-fun e!25709 () Bool)

(assert (=> b!45564 (= e!25721 e!25709)))

(declare-fun b!45565 () Bool)

(declare-fun e!25722 () Bool)

(declare-fun e!25713 () Bool)

(declare-datatypes ((List!745 0))(
  ( (Nil!743) (Cons!743 (h!6139 Regex!237) (t!16732 List!745)) )
))
(declare-datatypes ((Context!190 0))(
  ( (Context!191 (exprs!595 List!745)) )
))
(declare-datatypes ((tuple2!902 0))(
  ( (tuple2!903 (_1!635 Context!190) (_2!635 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!904 0))(
  ( (tuple2!905 (_1!636 tuple2!902) (_2!636 (InoxSet Context!190))) )
))
(declare-datatypes ((List!746 0))(
  ( (Nil!744) (Cons!744 (h!6140 tuple2!904) (t!16733 List!746)) )
))
(declare-datatypes ((array!834 0))(
  ( (array!835 (arr!400 (Array (_ BitVec 32) List!746)) (size!727 (_ BitVec 32))) )
))
(declare-datatypes ((array!836 0))(
  ( (array!837 (arr!401 (Array (_ BitVec 32) (_ BitVec 64))) (size!728 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!502 0))(
  ( (LongMapFixedSize!503 (defaultEntry!589 Int) (mask!971 (_ BitVec 32)) (extraKeys!497 (_ BitVec 32)) (zeroValue!507 List!746) (minValue!507 List!746) (_size!634 (_ BitVec 32)) (_keys!542 array!836) (_values!529 array!834) (_vacant!311 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!993 0))(
  ( (Cell!994 (v!12481 LongMapFixedSize!502)) )
))
(declare-datatypes ((MutLongMap!251 0))(
  ( (LongMap!251 (underlying!697 Cell!993)) (MutLongMapExt!250 (__x!1255 Int)) )
))
(declare-fun lt!5957 () MutLongMap!251)

(assert (=> b!45565 (= e!25722 (and e!25713 ((_ is LongMap!251) lt!5957)))))

(declare-datatypes ((Hashable!247 0))(
  ( (HashableExt!246 (__x!1256 Int)) )
))
(declare-datatypes ((Cell!995 0))(
  ( (Cell!996 (v!12482 MutLongMap!251)) )
))
(declare-datatypes ((MutableMap!247 0))(
  ( (MutableMapExt!246 (__x!1257 Int)) (HashMap!247 (underlying!698 Cell!995) (hashF!2115 Hashable!247) (_size!635 (_ BitVec 32)) (defaultValue!396 Int)) )
))
(declare-datatypes ((CacheUp!168 0))(
  ( (CacheUp!169 (cache!732 MutableMap!247)) )
))
(declare-fun cacheUp!320 () CacheUp!168)

(assert (=> b!45565 (= lt!5957 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))

(declare-fun mapIsEmpty!973 () Bool)

(declare-fun mapRes!975 () Bool)

(assert (=> mapIsEmpty!973 mapRes!975))

(declare-fun b!45566 () Bool)

(declare-fun e!25716 () Bool)

(declare-fun e!25714 () Bool)

(assert (=> b!45566 (= e!25716 e!25714)))

(declare-fun b!45568 () Bool)

(declare-fun e!25711 () Bool)

(assert (=> b!45568 (= e!25713 e!25711)))

(declare-fun b!45569 () Bool)

(declare-fun e!25728 () Bool)

(declare-fun e!25723 () Bool)

(assert (=> b!45569 (= e!25728 e!25723)))

(declare-fun res!31110 () Bool)

(assert (=> b!45569 (=> (not res!31110) (not e!25723))))

(declare-fun lt!5964 () BalanceConc!288)

(declare-fun lt!5967 () List!743)

(declare-fun list!203 (BalanceConc!288) List!743)

(assert (=> b!45569 (= res!31110 (= (list!203 lt!5964) lt!5967))))

(declare-fun seqFromList!36 (List!743) BalanceConc!288)

(assert (=> b!45569 (= lt!5964 (seqFromList!36 lt!5967))))

(declare-fun input!525 () BalanceConc!288)

(assert (=> b!45569 (= lt!5967 (list!203 input!525))))

(declare-fun b!45570 () Bool)

(declare-fun e!25731 () Bool)

(assert (=> b!45570 (= e!25714 e!25731)))

(declare-fun b!45571 () Bool)

(declare-fun res!31123 () Bool)

(declare-fun e!25724 () Bool)

(assert (=> b!45571 (=> (not res!31123) (not e!25724))))

(declare-datatypes ((tuple3!288 0))(
  ( (tuple3!289 (_1!637 (InoxSet Context!190)) (_2!637 Int) (_3!184 Int)) )
))
(declare-datatypes ((tuple2!906 0))(
  ( (tuple2!907 (_1!638 tuple3!288) (_2!638 Int)) )
))
(declare-datatypes ((List!747 0))(
  ( (Nil!745) (Cons!745 (h!6141 tuple2!906) (t!16734 List!747)) )
))
(declare-datatypes ((array!838 0))(
  ( (array!839 (arr!402 (Array (_ BitVec 32) List!747)) (size!729 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!504 0))(
  ( (LongMapFixedSize!505 (defaultEntry!590 Int) (mask!972 (_ BitVec 32)) (extraKeys!498 (_ BitVec 32)) (zeroValue!508 List!747) (minValue!508 List!747) (_size!636 (_ BitVec 32)) (_keys!543 array!836) (_values!530 array!838) (_vacant!312 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!248 0))(
  ( (HashableExt!247 (__x!1258 Int)) )
))
(declare-datatypes ((Cell!997 0))(
  ( (Cell!998 (v!12483 LongMapFixedSize!504)) )
))
(declare-datatypes ((MutLongMap!252 0))(
  ( (LongMap!252 (underlying!699 Cell!997)) (MutLongMapExt!251 (__x!1259 Int)) )
))
(declare-datatypes ((Cell!999 0))(
  ( (Cell!1000 (v!12484 MutLongMap!252)) )
))
(declare-datatypes ((MutableMap!248 0))(
  ( (MutableMapExt!247 (__x!1260 Int)) (HashMap!248 (underlying!700 Cell!999) (hashF!2116 Hashable!248) (_size!637 (_ BitVec 32)) (defaultValue!397 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!116 0))(
  ( (CacheFurthestNullable!117 (cache!733 MutableMap!248) (totalInput!1541 BalanceConc!288)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!116)

(declare-fun valid!227 (CacheFurthestNullable!116) Bool)

(assert (=> b!45571 (= res!31123 (valid!227 cacheFurthestNullable!45))))

(declare-fun e!25725 () Bool)

(declare-fun tp!31082 () Bool)

(declare-fun tp!31092 () Bool)

(declare-fun e!25718 () Bool)

(declare-fun array_inv!267 (array!836) Bool)

(declare-fun array_inv!268 (array!834) Bool)

(assert (=> b!45572 (= e!25718 (and tp!31088 tp!31092 tp!31082 (array_inv!267 (_keys!542 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))) (array_inv!268 (_values!529 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))) e!25725))))

(declare-fun b!45573 () Bool)

(declare-fun e!25702 () Bool)

(declare-fun tp!31093 () Bool)

(declare-fun mapRes!973 () Bool)

(assert (=> b!45573 (= e!25702 (and tp!31093 mapRes!973))))

(declare-fun condMapEmpty!973 () Bool)

(declare-datatypes ((tuple3!290 0))(
  ( (tuple3!291 (_1!639 Regex!237) (_2!639 Context!190) (_3!185 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!908 0))(
  ( (tuple2!909 (_1!640 tuple3!290) (_2!640 (InoxSet Context!190))) )
))
(declare-datatypes ((List!748 0))(
  ( (Nil!746) (Cons!746 (h!6142 tuple2!908) (t!16735 List!748)) )
))
(declare-datatypes ((array!840 0))(
  ( (array!841 (arr!403 (Array (_ BitVec 32) List!748)) (size!730 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!506 0))(
  ( (LongMapFixedSize!507 (defaultEntry!591 Int) (mask!973 (_ BitVec 32)) (extraKeys!499 (_ BitVec 32)) (zeroValue!509 List!748) (minValue!509 List!748) (_size!638 (_ BitVec 32)) (_keys!544 array!836) (_values!531 array!840) (_vacant!313 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1001 0))(
  ( (Cell!1002 (v!12485 LongMapFixedSize!506)) )
))
(declare-datatypes ((MutLongMap!253 0))(
  ( (LongMap!253 (underlying!701 Cell!1001)) (MutLongMapExt!252 (__x!1261 Int)) )
))
(declare-datatypes ((Cell!1003 0))(
  ( (Cell!1004 (v!12486 MutLongMap!253)) )
))
(declare-datatypes ((Hashable!249 0))(
  ( (HashableExt!248 (__x!1262 Int)) )
))
(declare-datatypes ((MutableMap!249 0))(
  ( (MutableMapExt!248 (__x!1263 Int)) (HashMap!249 (underlying!702 Cell!1003) (hashF!2117 Hashable!249) (_size!639 (_ BitVec 32)) (defaultValue!398 Int)) )
))
(declare-datatypes ((CacheDown!166 0))(
  ( (CacheDown!167 (cache!734 MutableMap!249)) )
))
(declare-fun cacheDown!333 () CacheDown!166)

(declare-fun mapDefault!975 () List!748)

(assert (=> b!45573 (= condMapEmpty!973 (= (arr!403 (_values!531 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!748)) mapDefault!975)))))

(declare-fun e!25726 () Bool)

(declare-fun e!25704 () Bool)

(assert (=> b!45574 (= e!25726 (and e!25704 tp!31087))))

(declare-fun mapNonEmpty!973 () Bool)

(declare-fun mapRes!974 () Bool)

(declare-fun tp!31077 () Bool)

(declare-fun tp!31076 () Bool)

(assert (=> mapNonEmpty!973 (= mapRes!974 (and tp!31077 tp!31076))))

(declare-fun mapValue!973 () List!746)

(declare-fun mapRest!973 () (Array (_ BitVec 32) List!746))

(declare-fun mapKey!973 () (_ BitVec 32))

(assert (=> mapNonEmpty!973 (= (arr!400 (_values!529 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))) (store mapRest!973 mapKey!973 mapValue!973))))

(declare-fun b!45575 () Bool)

(declare-fun tp!31075 () Bool)

(assert (=> b!45575 (= e!25725 (and tp!31075 mapRes!974))))

(declare-fun condMapEmpty!974 () Bool)

(declare-fun mapDefault!974 () List!746)

(assert (=> b!45575 (= condMapEmpty!974 (= (arr!400 (_values!529 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!746)) mapDefault!974)))))

(declare-fun e!25710 () Bool)

(declare-fun e!25708 () Bool)

(assert (=> b!45576 (= e!25710 (and e!25708 tp!31081))))

(declare-fun b!45577 () Bool)

(declare-fun lt!5954 () MutLongMap!253)

(assert (=> b!45577 (= e!25704 (and e!25716 ((_ is LongMap!253) lt!5954)))))

(assert (=> b!45577 (= lt!5954 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))

(declare-fun b!45578 () Bool)

(declare-fun e!25712 () Bool)

(declare-fun tp!31090 () Bool)

(declare-fun inv!1026 (Conc!144) Bool)

(assert (=> b!45578 (= e!25712 (and (inv!1026 (c!16117 input!525)) tp!31090))))

(declare-fun b!45579 () Bool)

(declare-fun res!31112 () Bool)

(declare-fun e!25720 () Bool)

(assert (=> b!45579 (=> (not res!31112) (not e!25720))))

(declare-fun lt!5956 () List!743)

(declare-datatypes ((Token!108 0))(
  ( (Token!109 (value!7683 TokenValue!161) (rule!647 Rule!142) (size!731 Int) (originalCharacters!225 List!743)) )
))
(declare-datatypes ((List!749 0))(
  ( (Nil!747) (Cons!747 (h!6143 Token!108) (t!16736 List!749)) )
))
(declare-datatypes ((IArray!291 0))(
  ( (IArray!292 (innerList!203 List!749)) )
))
(declare-datatypes ((Conc!145 0))(
  ( (Node!145 (left!587 Conc!145) (right!917 Conc!145) (csize!520 Int) (cheight!356 Int)) (Leaf!342 (xs!2724 IArray!291) (csize!521 Int)) (Empty!145) )
))
(declare-datatypes ((BalanceConc!290 0))(
  ( (BalanceConc!291 (c!16118 Conc!145)) )
))
(declare-datatypes ((tuple2!910 0))(
  ( (tuple2!911 (_1!641 BalanceConc!290) (_2!641 BalanceConc!288)) )
))
(declare-fun lt!5959 () tuple2!910)

(assert (=> b!45579 (= res!31112 (= lt!5956 (list!203 (_2!641 lt!5959))))))

(declare-fun b!45580 () Bool)

(declare-fun e!25705 () Bool)

(declare-fun tp!31071 () Bool)

(assert (=> b!45580 (= e!25705 (and (inv!1026 (c!16117 (totalInput!1541 cacheFurthestNullable!45))) tp!31071))))

(declare-fun tp!31080 () Bool)

(declare-fun e!25730 () Bool)

(declare-fun tp!31086 () Bool)

(declare-fun e!25717 () Bool)

(declare-fun array_inv!269 (array!838) Bool)

(assert (=> b!45581 (= e!25730 (and tp!31074 tp!31080 tp!31086 (array_inv!267 (_keys!543 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))) (array_inv!269 (_values!530 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))) e!25717))))

(declare-fun b!45582 () Bool)

(declare-datatypes ((tuple4!80 0))(
  ( (tuple4!81 (_1!642 tuple2!910) (_2!642 CacheUp!168) (_3!186 CacheDown!166) (_4!40 CacheFurthestNullable!116)) )
))
(declare-fun lt!5963 () tuple4!80)

(declare-fun valid!228 (CacheDown!166) Bool)

(assert (=> b!45582 (= e!25720 (not (valid!228 (_3!186 lt!5963))))))

(assert (=> b!45583 (= e!25709 (and e!25722 tp!31072))))

(declare-fun b!45584 () Bool)

(declare-fun e!25707 () Bool)

(assert (=> b!45584 (= e!25707 e!25728)))

(declare-fun res!31119 () Bool)

(assert (=> b!45584 (=> (not res!31119) (not e!25728))))

(declare-fun lt!5958 () List!743)

(assert (=> b!45584 (= res!31119 (= lt!5958 lt!5956))))

(declare-fun lt!5953 () tuple2!910)

(assert (=> b!45584 (= lt!5956 (list!203 (_2!641 lt!5953)))))

(assert (=> b!45584 (= lt!5958 (list!203 (_2!641 (_1!642 lt!5963))))))

(declare-fun b!45585 () Bool)

(declare-fun res!31115 () Bool)

(assert (=> b!45585 (=> (not res!31115) (not e!25724))))

(declare-fun valid!229 (CacheUp!168) Bool)

(assert (=> b!45585 (= res!31115 (valid!229 cacheUp!320))))

(declare-fun b!45586 () Bool)

(declare-fun tp!31083 () Bool)

(assert (=> b!45586 (= e!25717 (and tp!31083 mapRes!975))))

(declare-fun condMapEmpty!975 () Bool)

(declare-fun mapDefault!973 () List!747)

(assert (=> b!45586 (= condMapEmpty!975 (= (arr!402 (_values!530 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!747)) mapDefault!973)))))

(declare-fun mapIsEmpty!974 () Bool)

(assert (=> mapIsEmpty!974 mapRes!974))

(declare-fun b!45587 () Bool)

(declare-fun res!31111 () Bool)

(assert (=> b!45587 (=> (not res!31111) (not e!25720))))

(declare-fun lt!5962 () List!749)

(declare-datatypes ((LexerInterface!65 0))(
  ( (LexerInterfaceExt!62 (__x!1264 Int)) (Lexer!63) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!21 (LexerInterface!65 List!744 List!749) Bool)

(assert (=> b!45587 (= res!31111 (rulesProduceEachTokenIndividuallyList!21 Lexer!63 lt!5955 lt!5962))))

(declare-fun mapNonEmpty!974 () Bool)

(declare-fun tp!31085 () Bool)

(declare-fun tp!31079 () Bool)

(assert (=> mapNonEmpty!974 (= mapRes!973 (and tp!31085 tp!31079))))

(declare-fun mapValue!975 () List!748)

(declare-fun mapKey!974 () (_ BitVec 32))

(declare-fun mapRest!975 () (Array (_ BitVec 32) List!748))

(assert (=> mapNonEmpty!974 (= (arr!403 (_values!531 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))) (store mapRest!975 mapKey!974 mapValue!975))))

(declare-fun b!45588 () Bool)

(declare-fun res!31122 () Bool)

(assert (=> b!45588 (=> (not res!31122) (not e!25720))))

(declare-fun lexThenRulesProduceEachTokenIndividually!18 (LexerInterface!65 List!744 List!743) Bool)

(assert (=> b!45588 (= res!31122 (lexThenRulesProduceEachTokenIndividually!18 Lexer!63 lt!5955 lt!5967))))

(declare-fun b!45589 () Bool)

(declare-fun res!31108 () Bool)

(assert (=> b!45589 (=> (not res!31108) (not e!25724))))

(assert (=> b!45589 (= res!31108 (= (totalInput!1541 cacheFurthestNullable!45) input!525))))

(declare-fun res!31118 () Bool)

(assert (=> start!2986 (=> (not res!31118) (not e!25724))))

(declare-fun isEmpty!150 (List!744) Bool)

(assert (=> start!2986 (= res!31118 (not (isEmpty!150 lt!5955)))))

(declare-datatypes ((JsonLexer!84 0))(
  ( (JsonLexer!85) )
))
(declare-fun rules!109 (JsonLexer!84) List!744)

(assert (=> start!2986 (= lt!5955 (rules!109 JsonLexer!85))))

(assert (=> start!2986 e!25724))

(declare-fun e!25715 () Bool)

(declare-fun inv!1027 (CacheDown!166) Bool)

(assert (=> start!2986 (and (inv!1027 cacheDown!333) e!25715)))

(declare-fun inv!1028 (BalanceConc!288) Bool)

(assert (=> start!2986 (and (inv!1028 input!525) e!25712)))

(declare-fun e!25701 () Bool)

(declare-fun inv!1029 (CacheFurthestNullable!116) Bool)

(assert (=> start!2986 (and (inv!1029 cacheFurthestNullable!45) e!25701)))

(declare-fun inv!1030 (CacheUp!168) Bool)

(assert (=> start!2986 (and (inv!1030 cacheUp!320) e!25721)))

(declare-fun b!45567 () Bool)

(declare-fun res!31120 () Bool)

(assert (=> b!45567 (=> (not res!31120) (not e!25720))))

(assert (=> b!45567 (= res!31120 (valid!229 (_2!642 lt!5963)))))

(declare-fun b!45590 () Bool)

(assert (=> b!45590 (= e!25711 e!25718)))

(declare-fun tp!31078 () Bool)

(declare-fun tp!31089 () Bool)

(declare-fun array_inv!270 (array!840) Bool)

(assert (=> b!45591 (= e!25731 (and tp!31091 tp!31089 tp!31078 (array_inv!267 (_keys!544 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))) (array_inv!270 (_values!531 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))) e!25702))))

(declare-fun b!45592 () Bool)

(assert (=> b!45592 (= e!25701 (and e!25710 (inv!1028 (totalInput!1541 cacheFurthestNullable!45)) e!25705))))

(declare-fun res!31117 () Bool)

(assert (=> b!45593 (=> (not res!31117) (not e!25720))))

(declare-fun forall!88 (List!749 Int) Bool)

(assert (=> b!45593 (= res!31117 (forall!88 lt!5962 lambda!844))))

(declare-fun b!45594 () Bool)

(declare-fun res!31121 () Bool)

(assert (=> b!45594 (=> (not res!31121) (not e!25720))))

(declare-fun forall!89 (BalanceConc!290 Int) Bool)

(assert (=> b!45594 (= res!31121 (forall!89 (_1!641 (_1!642 lt!5963)) lambda!844))))

(declare-fun b!45595 () Bool)

(declare-fun e!25703 () Bool)

(declare-fun lt!5960 () MutLongMap!252)

(assert (=> b!45595 (= e!25708 (and e!25703 ((_ is LongMap!252) lt!5960)))))

(assert (=> b!45595 (= lt!5960 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))

(declare-fun b!45596 () Bool)

(assert (=> b!45596 (= e!25715 e!25726)))

(declare-fun b!45597 () Bool)

(assert (=> b!45597 (= e!25724 e!25707)))

(declare-fun res!31109 () Bool)

(assert (=> b!45597 (=> (not res!31109) (not e!25707))))

(declare-fun lt!5966 () List!749)

(assert (=> b!45597 (= res!31109 (= lt!5962 lt!5966))))

(declare-fun list!204 (BalanceConc!290) List!749)

(assert (=> b!45597 (= lt!5966 (list!204 (_1!641 lt!5953)))))

(assert (=> b!45597 (= lt!5962 (list!204 (_1!641 (_1!642 lt!5963))))))

(declare-fun lex!44 (LexerInterface!65 List!744 BalanceConc!288) tuple2!910)

(assert (=> b!45597 (= lt!5953 (lex!44 Lexer!63 lt!5955 input!525))))

(declare-datatypes ((Unit!342 0))(
  ( (Unit!343) )
))
(declare-fun lt!5961 () Unit!342)

(declare-fun lemmaInvariant!61 (CacheDown!166) Unit!342)

(assert (=> b!45597 (= lt!5961 (lemmaInvariant!61 (_3!186 lt!5963)))))

(declare-fun lt!5965 () Unit!342)

(declare-fun lemmaInvariant!62 (CacheUp!168) Unit!342)

(assert (=> b!45597 (= lt!5965 (lemmaInvariant!62 (_2!642 lt!5963)))))

(declare-fun lexMem!29 (LexerInterface!65 List!744 BalanceConc!288 CacheUp!168 CacheDown!166 CacheFurthestNullable!116) tuple4!80)

(assert (=> b!45597 (= lt!5963 (lexMem!29 Lexer!63 lt!5955 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!45598 () Bool)

(declare-fun e!25729 () Bool)

(assert (=> b!45598 (= e!25729 e!25730)))

(declare-fun b!45599 () Bool)

(declare-fun res!31113 () Bool)

(assert (=> b!45599 (=> (not res!31113) (not e!25724))))

(assert (=> b!45599 (= res!31113 (valid!228 cacheDown!333))))

(declare-fun b!45600 () Bool)

(declare-fun res!31114 () Bool)

(assert (=> b!45600 (=> (not res!31114) (not e!25724))))

(declare-fun rulesInvariant!58 (LexerInterface!65 List!744) Bool)

(assert (=> b!45600 (= res!31114 (rulesInvariant!58 Lexer!63 lt!5955))))

(declare-fun mapIsEmpty!975 () Bool)

(assert (=> mapIsEmpty!975 mapRes!973))

(declare-fun b!45601 () Bool)

(assert (=> b!45601 (= e!25703 e!25729)))

(declare-fun b!45602 () Bool)

(assert (=> b!45602 (= e!25723 e!25720)))

(declare-fun res!31116 () Bool)

(assert (=> b!45602 (=> (not res!31116) (not e!25720))))

(assert (=> b!45602 (= res!31116 (= lt!5966 (list!204 (_1!641 lt!5959))))))

(assert (=> b!45602 (= lt!5959 (lex!44 Lexer!63 lt!5955 lt!5964))))

(declare-fun mapNonEmpty!975 () Bool)

(declare-fun tp!31073 () Bool)

(declare-fun tp!31084 () Bool)

(assert (=> mapNonEmpty!975 (= mapRes!975 (and tp!31073 tp!31084))))

(declare-fun mapValue!974 () List!747)

(declare-fun mapKey!975 () (_ BitVec 32))

(declare-fun mapRest!974 () (Array (_ BitVec 32) List!747))

(assert (=> mapNonEmpty!975 (= (arr!402 (_values!530 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))) (store mapRest!974 mapKey!975 mapValue!974))))

(assert (= (and start!2986 res!31118) b!45600))

(assert (= (and b!45600 res!31114) b!45585))

(assert (= (and b!45585 res!31115) b!45599))

(assert (= (and b!45599 res!31113) b!45571))

(assert (= (and b!45571 res!31123) b!45589))

(assert (= (and b!45589 res!31108) b!45597))

(assert (= (and b!45597 res!31109) b!45584))

(assert (= (and b!45584 res!31119) b!45569))

(assert (= (and b!45569 res!31110) b!45602))

(assert (= (and b!45602 res!31116) b!45579))

(assert (= (and b!45579 res!31112) b!45588))

(assert (= (and b!45588 res!31122) b!45593))

(assert (= (and b!45593 res!31117) b!45594))

(assert (= (and b!45594 res!31121) b!45587))

(assert (= (and b!45587 res!31111) b!45567))

(assert (= (and b!45567 res!31120) b!45582))

(assert (= (and b!45573 condMapEmpty!973) mapIsEmpty!975))

(assert (= (and b!45573 (not condMapEmpty!973)) mapNonEmpty!974))

(assert (= b!45591 b!45573))

(assert (= b!45570 b!45591))

(assert (= b!45566 b!45570))

(assert (= (and b!45577 ((_ is LongMap!253) (v!12486 (underlying!702 (cache!734 cacheDown!333))))) b!45566))

(assert (= b!45574 b!45577))

(assert (= (and b!45596 ((_ is HashMap!249) (cache!734 cacheDown!333))) b!45574))

(assert (= start!2986 b!45596))

(assert (= start!2986 b!45578))

(assert (= (and b!45586 condMapEmpty!975) mapIsEmpty!973))

(assert (= (and b!45586 (not condMapEmpty!975)) mapNonEmpty!975))

(assert (= b!45581 b!45586))

(assert (= b!45598 b!45581))

(assert (= b!45601 b!45598))

(assert (= (and b!45595 ((_ is LongMap!252) (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))) b!45601))

(assert (= b!45576 b!45595))

(assert (= (and b!45592 ((_ is HashMap!248) (cache!733 cacheFurthestNullable!45))) b!45576))

(assert (= b!45592 b!45580))

(assert (= start!2986 b!45592))

(assert (= (and b!45575 condMapEmpty!974) mapIsEmpty!974))

(assert (= (and b!45575 (not condMapEmpty!974)) mapNonEmpty!973))

(assert (= b!45572 b!45575))

(assert (= b!45590 b!45572))

(assert (= b!45568 b!45590))

(assert (= (and b!45565 ((_ is LongMap!251) (v!12482 (underlying!698 (cache!732 cacheUp!320))))) b!45568))

(assert (= b!45583 b!45565))

(assert (= (and b!45564 ((_ is HashMap!247) (cache!732 cacheUp!320))) b!45583))

(assert (= start!2986 b!45564))

(declare-fun m!19792 () Bool)

(assert (=> b!45579 m!19792))

(declare-fun m!19794 () Bool)

(assert (=> b!45582 m!19794))

(declare-fun m!19796 () Bool)

(assert (=> b!45597 m!19796))

(declare-fun m!19798 () Bool)

(assert (=> b!45597 m!19798))

(declare-fun m!19800 () Bool)

(assert (=> b!45597 m!19800))

(declare-fun m!19802 () Bool)

(assert (=> b!45597 m!19802))

(declare-fun m!19804 () Bool)

(assert (=> b!45597 m!19804))

(declare-fun m!19806 () Bool)

(assert (=> b!45597 m!19806))

(declare-fun m!19808 () Bool)

(assert (=> start!2986 m!19808))

(declare-fun m!19810 () Bool)

(assert (=> start!2986 m!19810))

(declare-fun m!19812 () Bool)

(assert (=> start!2986 m!19812))

(declare-fun m!19814 () Bool)

(assert (=> start!2986 m!19814))

(declare-fun m!19816 () Bool)

(assert (=> start!2986 m!19816))

(declare-fun m!19818 () Bool)

(assert (=> start!2986 m!19818))

(declare-fun m!19820 () Bool)

(assert (=> b!45600 m!19820))

(declare-fun m!19822 () Bool)

(assert (=> b!45594 m!19822))

(declare-fun m!19824 () Bool)

(assert (=> b!45584 m!19824))

(declare-fun m!19826 () Bool)

(assert (=> b!45584 m!19826))

(declare-fun m!19828 () Bool)

(assert (=> b!45580 m!19828))

(declare-fun m!19830 () Bool)

(assert (=> b!45587 m!19830))

(declare-fun m!19832 () Bool)

(assert (=> b!45593 m!19832))

(declare-fun m!19834 () Bool)

(assert (=> b!45591 m!19834))

(declare-fun m!19836 () Bool)

(assert (=> b!45591 m!19836))

(declare-fun m!19838 () Bool)

(assert (=> b!45567 m!19838))

(declare-fun m!19840 () Bool)

(assert (=> b!45599 m!19840))

(declare-fun m!19842 () Bool)

(assert (=> mapNonEmpty!974 m!19842))

(declare-fun m!19844 () Bool)

(assert (=> b!45592 m!19844))

(declare-fun m!19846 () Bool)

(assert (=> b!45588 m!19846))

(declare-fun m!19848 () Bool)

(assert (=> b!45569 m!19848))

(declare-fun m!19850 () Bool)

(assert (=> b!45569 m!19850))

(declare-fun m!19852 () Bool)

(assert (=> b!45569 m!19852))

(declare-fun m!19854 () Bool)

(assert (=> mapNonEmpty!973 m!19854))

(declare-fun m!19856 () Bool)

(assert (=> b!45571 m!19856))

(declare-fun m!19858 () Bool)

(assert (=> b!45578 m!19858))

(declare-fun m!19860 () Bool)

(assert (=> b!45581 m!19860))

(declare-fun m!19862 () Bool)

(assert (=> b!45581 m!19862))

(declare-fun m!19864 () Bool)

(assert (=> b!45572 m!19864))

(declare-fun m!19866 () Bool)

(assert (=> b!45572 m!19866))

(declare-fun m!19868 () Bool)

(assert (=> b!45585 m!19868))

(declare-fun m!19870 () Bool)

(assert (=> mapNonEmpty!975 m!19870))

(declare-fun m!19872 () Bool)

(assert (=> b!45602 m!19872))

(declare-fun m!19874 () Bool)

(assert (=> b!45602 m!19874))

(check-sat (not mapNonEmpty!974) (not b!45587) (not b_next!1177) (not b!45575) (not b_next!1179) (not b_next!1181) (not b!45594) (not b!45572) (not b!45578) (not b!45579) b_and!1213 (not b_next!1175) (not b!45586) (not b!45571) b_and!1211 (not start!2986) (not b!45569) (not b_next!1183) (not b!45593) (not b!45588) (not b!45582) (not b!45592) b_and!1215 (not b!45567) b_and!1217 (not b!45597) (not b_next!1173) (not b!45584) (not b!45611) (not b!45591) (not b!45573) b_and!1209 (not b!45602) b_and!1207 (not mapNonEmpty!973) (not b!45580) (not b!45581) (not b!45600) (not b!45585) (not b!45599) (not mapNonEmpty!975))
(check-sat b_and!1211 (not b_next!1183) b_and!1215 b_and!1217 (not b_next!1173) (not b_next!1177) (not b_next!1179) (not b_next!1181) b_and!1213 (not b_next!1175) b_and!1209 b_and!1207)
(get-model)

(declare-fun bs!6274 () Bool)

(declare-fun d!5313 () Bool)

(assert (= bs!6274 (and d!5313 b!45593)))

(declare-fun lambda!847 () Int)

(assert (=> bs!6274 (= lambda!847 lambda!844)))

(declare-fun b!45622 () Bool)

(declare-fun e!25749 () Bool)

(assert (=> b!45622 (= e!25749 true)))

(declare-fun b!45621 () Bool)

(declare-fun e!25748 () Bool)

(assert (=> b!45621 (= e!25748 e!25749)))

(declare-fun b!45620 () Bool)

(declare-fun e!25747 () Bool)

(assert (=> b!45620 (= e!25747 e!25748)))

(assert (=> d!5313 e!25747))

(assert (= b!45621 b!45622))

(assert (= b!45620 b!45621))

(assert (= (and d!5313 ((_ is Cons!742) lt!5955)) b!45620))

(assert (=> b!45622 (< (dynLambda!110 order!175 (toValue!650 (transformation!171 (h!6138 lt!5955)))) (dynLambda!111 order!177 lambda!847))))

(assert (=> b!45622 (< (dynLambda!112 order!179 (toChars!509 (transformation!171 (h!6138 lt!5955)))) (dynLambda!111 order!177 lambda!847))))

(assert (=> d!5313 true))

(declare-fun lt!5970 () Bool)

(assert (=> d!5313 (= lt!5970 (forall!88 lt!5962 lambda!847))))

(declare-fun e!25746 () Bool)

(assert (=> d!5313 (= lt!5970 e!25746)))

(declare-fun res!31131 () Bool)

(assert (=> d!5313 (=> res!31131 e!25746)))

(assert (=> d!5313 (= res!31131 (not ((_ is Cons!747) lt!5962)))))

(assert (=> d!5313 (not (isEmpty!150 lt!5955))))

(assert (=> d!5313 (= (rulesProduceEachTokenIndividuallyList!21 Lexer!63 lt!5955 lt!5962) lt!5970)))

(declare-fun b!45618 () Bool)

(declare-fun e!25745 () Bool)

(assert (=> b!45618 (= e!25746 e!25745)))

(declare-fun res!31130 () Bool)

(assert (=> b!45618 (=> (not res!31130) (not e!25745))))

(declare-fun rulesProduceIndividualToken!9 (LexerInterface!65 List!744 Token!108) Bool)

(assert (=> b!45618 (= res!31130 (rulesProduceIndividualToken!9 Lexer!63 lt!5955 (h!6143 lt!5962)))))

(declare-fun b!45619 () Bool)

(assert (=> b!45619 (= e!25745 (rulesProduceEachTokenIndividuallyList!21 Lexer!63 lt!5955 (t!16736 lt!5962)))))

(assert (= (and d!5313 (not res!31131)) b!45618))

(assert (= (and b!45618 res!31130) b!45619))

(declare-fun m!19876 () Bool)

(assert (=> d!5313 m!19876))

(assert (=> d!5313 m!19810))

(declare-fun m!19878 () Bool)

(assert (=> b!45618 m!19878))

(declare-fun m!19880 () Bool)

(assert (=> b!45619 m!19880))

(assert (=> b!45587 d!5313))

(declare-fun d!5315 () Bool)

(declare-fun c!16121 () Bool)

(assert (=> d!5315 (= c!16121 ((_ is Node!144) (c!16117 input!525)))))

(declare-fun e!25754 () Bool)

(assert (=> d!5315 (= (inv!1026 (c!16117 input!525)) e!25754)))

(declare-fun b!45631 () Bool)

(declare-fun inv!1031 (Conc!144) Bool)

(assert (=> b!45631 (= e!25754 (inv!1031 (c!16117 input!525)))))

(declare-fun b!45632 () Bool)

(declare-fun e!25755 () Bool)

(assert (=> b!45632 (= e!25754 e!25755)))

(declare-fun res!31134 () Bool)

(assert (=> b!45632 (= res!31134 (not ((_ is Leaf!341) (c!16117 input!525))))))

(assert (=> b!45632 (=> res!31134 e!25755)))

(declare-fun b!45633 () Bool)

(declare-fun inv!1032 (Conc!144) Bool)

(assert (=> b!45633 (= e!25755 (inv!1032 (c!16117 input!525)))))

(assert (= (and d!5315 c!16121) b!45631))

(assert (= (and d!5315 (not c!16121)) b!45632))

(assert (= (and b!45632 (not res!31134)) b!45633))

(declare-fun m!19882 () Bool)

(assert (=> b!45631 m!19882))

(declare-fun m!19884 () Bool)

(assert (=> b!45633 m!19884))

(assert (=> b!45578 d!5315))

(declare-fun b!45644 () Bool)

(declare-fun e!25763 () Bool)

(declare-fun e!25762 () Bool)

(assert (=> b!45644 (= e!25763 e!25762)))

(declare-fun res!31143 () Bool)

(declare-fun lt!5973 () tuple2!910)

(declare-fun size!732 (BalanceConc!288) Int)

(assert (=> b!45644 (= res!31143 (< (size!732 (_2!641 lt!5973)) (size!732 input!525)))))

(assert (=> b!45644 (=> (not res!31143) (not e!25762))))

(declare-fun b!45645 () Bool)

(assert (=> b!45645 (= e!25763 (= (_2!641 lt!5973) input!525))))

(declare-fun d!5317 () Bool)

(declare-fun e!25764 () Bool)

(assert (=> d!5317 e!25764))

(declare-fun res!31142 () Bool)

(assert (=> d!5317 (=> (not res!31142) (not e!25764))))

(assert (=> d!5317 (= res!31142 e!25763)))

(declare-fun c!16124 () Bool)

(declare-fun size!733 (BalanceConc!290) Int)

(assert (=> d!5317 (= c!16124 (> (size!733 (_1!641 lt!5973)) 0))))

(declare-fun lexTailRecV2!14 (LexerInterface!65 List!744 BalanceConc!288 BalanceConc!288 BalanceConc!288 BalanceConc!290) tuple2!910)

(assert (=> d!5317 (= lt!5973 (lexTailRecV2!14 Lexer!63 lt!5955 input!525 (BalanceConc!289 Empty!144) input!525 (BalanceConc!291 Empty!145)))))

(assert (=> d!5317 (= (lex!44 Lexer!63 lt!5955 input!525) lt!5973)))

(declare-fun b!45646 () Bool)

(declare-fun isEmpty!151 (BalanceConc!290) Bool)

(assert (=> b!45646 (= e!25762 (not (isEmpty!151 (_1!641 lt!5973))))))

(declare-fun b!45647 () Bool)

(declare-fun res!31141 () Bool)

(assert (=> b!45647 (=> (not res!31141) (not e!25764))))

(declare-datatypes ((tuple2!912 0))(
  ( (tuple2!913 (_1!643 List!749) (_2!643 List!743)) )
))
(declare-fun lexList!17 (LexerInterface!65 List!744 List!743) tuple2!912)

(assert (=> b!45647 (= res!31141 (= (list!204 (_1!641 lt!5973)) (_1!643 (lexList!17 Lexer!63 lt!5955 (list!203 input!525)))))))

(declare-fun b!45648 () Bool)

(assert (=> b!45648 (= e!25764 (= (list!203 (_2!641 lt!5973)) (_2!643 (lexList!17 Lexer!63 lt!5955 (list!203 input!525)))))))

(assert (= (and d!5317 c!16124) b!45644))

(assert (= (and d!5317 (not c!16124)) b!45645))

(assert (= (and b!45644 res!31143) b!45646))

(assert (= (and d!5317 res!31142) b!45647))

(assert (= (and b!45647 res!31141) b!45648))

(declare-fun m!19886 () Bool)

(assert (=> b!45647 m!19886))

(assert (=> b!45647 m!19852))

(assert (=> b!45647 m!19852))

(declare-fun m!19888 () Bool)

(assert (=> b!45647 m!19888))

(declare-fun m!19890 () Bool)

(assert (=> b!45644 m!19890))

(declare-fun m!19892 () Bool)

(assert (=> b!45644 m!19892))

(declare-fun m!19894 () Bool)

(assert (=> b!45648 m!19894))

(assert (=> b!45648 m!19852))

(assert (=> b!45648 m!19852))

(assert (=> b!45648 m!19888))

(declare-fun m!19896 () Bool)

(assert (=> d!5317 m!19896))

(declare-fun m!19898 () Bool)

(assert (=> d!5317 m!19898))

(declare-fun m!19900 () Bool)

(assert (=> b!45646 m!19900))

(assert (=> b!45597 d!5317))

(declare-fun b!45659 () Bool)

(declare-fun res!31156 () Bool)

(declare-fun e!25767 () Bool)

(assert (=> b!45659 (=> (not res!31156) (not e!25767))))

(declare-fun lt!5979 () tuple4!80)

(assert (=> b!45659 (= res!31156 (valid!229 (_2!642 lt!5979)))))

(declare-fun b!45660 () Bool)

(declare-fun res!31154 () Bool)

(assert (=> b!45660 (=> (not res!31154) (not e!25767))))

(assert (=> b!45660 (= res!31154 (= (list!203 (_2!641 (_1!642 lt!5979))) (list!203 (_2!641 (lex!44 Lexer!63 lt!5955 input!525)))))))

(declare-fun d!5319 () Bool)

(assert (=> d!5319 e!25767))

(declare-fun res!31158 () Bool)

(assert (=> d!5319 (=> (not res!31158) (not e!25767))))

(assert (=> d!5319 (= res!31158 (= (list!204 (_1!641 (_1!642 lt!5979))) (list!204 (_1!641 (lex!44 Lexer!63 lt!5955 input!525)))))))

(declare-fun lt!5978 () tuple4!80)

(assert (=> d!5319 (= lt!5979 (tuple4!81 (_1!642 lt!5978) (_2!642 lt!5978) (_3!186 lt!5978) (_4!40 lt!5978)))))

(declare-fun lexTailRecV3Mem!14 (LexerInterface!65 List!744 BalanceConc!288 BalanceConc!288 BalanceConc!288 BalanceConc!290 CacheUp!168 CacheDown!166 CacheFurthestNullable!116) tuple4!80)

(assert (=> d!5319 (= lt!5978 (lexTailRecV3Mem!14 Lexer!63 lt!5955 input!525 (BalanceConc!289 Empty!144) input!525 (BalanceConc!291 Empty!145) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!5319 (not (isEmpty!150 lt!5955))))

(assert (=> d!5319 (= (lexMem!29 Lexer!63 lt!5955 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!5979)))

(declare-fun b!45661 () Bool)

(assert (=> b!45661 (= e!25767 (= (totalInput!1541 (_4!40 lt!5979)) input!525))))

(declare-fun b!45662 () Bool)

(declare-fun res!31157 () Bool)

(assert (=> b!45662 (=> (not res!31157) (not e!25767))))

(assert (=> b!45662 (= res!31157 (valid!228 (_3!186 lt!5979)))))

(declare-fun b!45663 () Bool)

(declare-fun res!31155 () Bool)

(assert (=> b!45663 (=> (not res!31155) (not e!25767))))

(assert (=> b!45663 (= res!31155 (valid!227 (_4!40 lt!5979)))))

(assert (= (and d!5319 res!31158) b!45660))

(assert (= (and b!45660 res!31154) b!45663))

(assert (= (and b!45663 res!31155) b!45659))

(assert (= (and b!45659 res!31156) b!45662))

(assert (= (and b!45662 res!31157) b!45661))

(declare-fun m!19902 () Bool)

(assert (=> b!45663 m!19902))

(declare-fun m!19904 () Bool)

(assert (=> b!45662 m!19904))

(declare-fun m!19906 () Bool)

(assert (=> b!45660 m!19906))

(assert (=> b!45660 m!19806))

(declare-fun m!19908 () Bool)

(assert (=> b!45660 m!19908))

(declare-fun m!19910 () Bool)

(assert (=> d!5319 m!19910))

(assert (=> d!5319 m!19806))

(declare-fun m!19912 () Bool)

(assert (=> d!5319 m!19912))

(assert (=> d!5319 m!19810))

(declare-fun m!19914 () Bool)

(assert (=> d!5319 m!19914))

(declare-fun m!19916 () Bool)

(assert (=> b!45659 m!19916))

(assert (=> b!45597 d!5319))

(declare-fun d!5321 () Bool)

(assert (=> d!5321 (valid!228 (_3!186 lt!5963))))

(declare-fun Unit!344 () Unit!342)

(assert (=> d!5321 (= (lemmaInvariant!61 (_3!186 lt!5963)) Unit!344)))

(declare-fun bs!6275 () Bool)

(assert (= bs!6275 d!5321))

(assert (=> bs!6275 m!19794))

(assert (=> b!45597 d!5321))

(declare-fun d!5323 () Bool)

(declare-fun list!205 (Conc!145) List!749)

(assert (=> d!5323 (= (list!204 (_1!641 lt!5953)) (list!205 (c!16118 (_1!641 lt!5953))))))

(declare-fun bs!6276 () Bool)

(assert (= bs!6276 d!5323))

(declare-fun m!19918 () Bool)

(assert (=> bs!6276 m!19918))

(assert (=> b!45597 d!5323))

(declare-fun d!5325 () Bool)

(assert (=> d!5325 (= (list!204 (_1!641 (_1!642 lt!5963))) (list!205 (c!16118 (_1!641 (_1!642 lt!5963)))))))

(declare-fun bs!6277 () Bool)

(assert (= bs!6277 d!5325))

(declare-fun m!19920 () Bool)

(assert (=> bs!6277 m!19920))

(assert (=> b!45597 d!5325))

(declare-fun d!5327 () Bool)

(assert (=> d!5327 (valid!229 (_2!642 lt!5963))))

(declare-fun Unit!345 () Unit!342)

(assert (=> d!5327 (= (lemmaInvariant!62 (_2!642 lt!5963)) Unit!345)))

(declare-fun bs!6278 () Bool)

(assert (= bs!6278 d!5327))

(assert (=> bs!6278 m!19838))

(assert (=> b!45597 d!5327))

(declare-fun d!5329 () Bool)

(declare-fun validCacheMapUp!22 (MutableMap!247) Bool)

(assert (=> d!5329 (= (valid!229 (_2!642 lt!5963)) (validCacheMapUp!22 (cache!732 (_2!642 lt!5963))))))

(declare-fun bs!6279 () Bool)

(assert (= bs!6279 d!5329))

(declare-fun m!19922 () Bool)

(assert (=> bs!6279 m!19922))

(assert (=> b!45567 d!5329))

(declare-fun d!5331 () Bool)

(declare-fun lt!5982 () Bool)

(assert (=> d!5331 (= lt!5982 (forall!88 (list!204 (_1!641 (_1!642 lt!5963))) lambda!844))))

(declare-fun forall!90 (Conc!145 Int) Bool)

(assert (=> d!5331 (= lt!5982 (forall!90 (c!16118 (_1!641 (_1!642 lt!5963))) lambda!844))))

(assert (=> d!5331 (= (forall!89 (_1!641 (_1!642 lt!5963)) lambda!844) lt!5982)))

(declare-fun bs!6280 () Bool)

(assert (= bs!6280 d!5331))

(assert (=> bs!6280 m!19800))

(assert (=> bs!6280 m!19800))

(declare-fun m!19924 () Bool)

(assert (=> bs!6280 m!19924))

(declare-fun m!19926 () Bool)

(assert (=> bs!6280 m!19926))

(assert (=> b!45594 d!5331))

(declare-fun d!5333 () Bool)

(assert (=> d!5333 (= (valid!229 cacheUp!320) (validCacheMapUp!22 (cache!732 cacheUp!320)))))

(declare-fun bs!6281 () Bool)

(assert (= bs!6281 d!5333))

(declare-fun m!19928 () Bool)

(assert (=> bs!6281 m!19928))

(assert (=> b!45585 d!5333))

(declare-fun d!5335 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!84) Rule!142)

(declare-fun integerLiteralRule!0 (JsonLexer!84) Rule!142)

(declare-fun floatLiteralRule!0 (JsonLexer!84) Rule!142)

(declare-fun trueRule!0 (JsonLexer!84) Rule!142)

(declare-fun falseRule!0 (JsonLexer!84) Rule!142)

(declare-fun nullRule!0 (JsonLexer!84) Rule!142)

(declare-fun jsonstringRule!0 (JsonLexer!84) Rule!142)

(declare-fun lBraceRule!0 (JsonLexer!84) Rule!142)

(declare-fun rBraceRule!0 (JsonLexer!84) Rule!142)

(declare-fun lBracketRule!0 (JsonLexer!84) Rule!142)

(declare-fun rBracketRule!0 (JsonLexer!84) Rule!142)

(declare-fun colonRule!0 (JsonLexer!84) Rule!142)

(declare-fun commaRule!0 (JsonLexer!84) Rule!142)

(declare-fun eofRule!0 (JsonLexer!84) Rule!142)

(assert (=> d!5335 (= (rules!109 JsonLexer!85) (Cons!742 (whitespaceRule!0 JsonLexer!85) (Cons!742 (integerLiteralRule!0 JsonLexer!85) (Cons!742 (floatLiteralRule!0 JsonLexer!85) (Cons!742 (trueRule!0 JsonLexer!85) (Cons!742 (falseRule!0 JsonLexer!85) (Cons!742 (nullRule!0 JsonLexer!85) (Cons!742 (jsonstringRule!0 JsonLexer!85) (Cons!742 (lBraceRule!0 JsonLexer!85) (Cons!742 (rBraceRule!0 JsonLexer!85) (Cons!742 (lBracketRule!0 JsonLexer!85) (Cons!742 (rBracketRule!0 JsonLexer!85) (Cons!742 (colonRule!0 JsonLexer!85) (Cons!742 (commaRule!0 JsonLexer!85) (Cons!742 (eofRule!0 JsonLexer!85) Nil!742)))))))))))))))))

(declare-fun bs!6282 () Bool)

(assert (= bs!6282 d!5335))

(declare-fun m!19930 () Bool)

(assert (=> bs!6282 m!19930))

(declare-fun m!19932 () Bool)

(assert (=> bs!6282 m!19932))

(declare-fun m!19934 () Bool)

(assert (=> bs!6282 m!19934))

(declare-fun m!19936 () Bool)

(assert (=> bs!6282 m!19936))

(declare-fun m!19938 () Bool)

(assert (=> bs!6282 m!19938))

(declare-fun m!19940 () Bool)

(assert (=> bs!6282 m!19940))

(declare-fun m!19942 () Bool)

(assert (=> bs!6282 m!19942))

(declare-fun m!19944 () Bool)

(assert (=> bs!6282 m!19944))

(declare-fun m!19946 () Bool)

(assert (=> bs!6282 m!19946))

(declare-fun m!19948 () Bool)

(assert (=> bs!6282 m!19948))

(declare-fun m!19950 () Bool)

(assert (=> bs!6282 m!19950))

(declare-fun m!19952 () Bool)

(assert (=> bs!6282 m!19952))

(declare-fun m!19954 () Bool)

(assert (=> bs!6282 m!19954))

(declare-fun m!19956 () Bool)

(assert (=> bs!6282 m!19956))

(assert (=> start!2986 d!5335))

(declare-fun d!5337 () Bool)

(declare-fun res!31161 () Bool)

(declare-fun e!25770 () Bool)

(assert (=> d!5337 (=> (not res!31161) (not e!25770))))

(assert (=> d!5337 (= res!31161 ((_ is HashMap!249) (cache!734 cacheDown!333)))))

(assert (=> d!5337 (= (inv!1027 cacheDown!333) e!25770)))

(declare-fun b!45666 () Bool)

(declare-fun validCacheMapDown!24 (MutableMap!249) Bool)

(assert (=> b!45666 (= e!25770 (validCacheMapDown!24 (cache!734 cacheDown!333)))))

(assert (= (and d!5337 res!31161) b!45666))

(declare-fun m!19958 () Bool)

(assert (=> b!45666 m!19958))

(assert (=> start!2986 d!5337))

(declare-fun d!5339 () Bool)

(assert (=> d!5339 (= (isEmpty!150 lt!5955) ((_ is Nil!742) lt!5955))))

(assert (=> start!2986 d!5339))

(declare-fun d!5341 () Bool)

(declare-fun isBalanced!27 (Conc!144) Bool)

(assert (=> d!5341 (= (inv!1028 input!525) (isBalanced!27 (c!16117 input!525)))))

(declare-fun bs!6283 () Bool)

(assert (= bs!6283 d!5341))

(declare-fun m!19960 () Bool)

(assert (=> bs!6283 m!19960))

(assert (=> start!2986 d!5341))

(declare-fun d!5343 () Bool)

(declare-fun res!31164 () Bool)

(declare-fun e!25773 () Bool)

(assert (=> d!5343 (=> (not res!31164) (not e!25773))))

(assert (=> d!5343 (= res!31164 ((_ is HashMap!248) (cache!733 cacheFurthestNullable!45)))))

(assert (=> d!5343 (= (inv!1029 cacheFurthestNullable!45) e!25773)))

(declare-fun b!45669 () Bool)

(declare-fun validCacheMapFurthestNullable!16 (MutableMap!248 BalanceConc!288) Bool)

(assert (=> b!45669 (= e!25773 (validCacheMapFurthestNullable!16 (cache!733 cacheFurthestNullable!45) (totalInput!1541 cacheFurthestNullable!45)))))

(assert (= (and d!5343 res!31164) b!45669))

(declare-fun m!19962 () Bool)

(assert (=> b!45669 m!19962))

(assert (=> start!2986 d!5343))

(declare-fun d!5345 () Bool)

(declare-fun res!31167 () Bool)

(declare-fun e!25776 () Bool)

(assert (=> d!5345 (=> (not res!31167) (not e!25776))))

(assert (=> d!5345 (= res!31167 ((_ is HashMap!247) (cache!732 cacheUp!320)))))

(assert (=> d!5345 (= (inv!1030 cacheUp!320) e!25776)))

(declare-fun b!45672 () Bool)

(assert (=> b!45672 (= e!25776 (validCacheMapUp!22 (cache!732 cacheUp!320)))))

(assert (= (and d!5345 res!31167) b!45672))

(assert (=> b!45672 m!19928))

(assert (=> start!2986 d!5345))

(declare-fun d!5347 () Bool)

(declare-fun list!206 (Conc!144) List!743)

(assert (=> d!5347 (= (list!203 (_2!641 lt!5953)) (list!206 (c!16117 (_2!641 lt!5953))))))

(declare-fun bs!6284 () Bool)

(assert (= bs!6284 d!5347))

(declare-fun m!19964 () Bool)

(assert (=> bs!6284 m!19964))

(assert (=> b!45584 d!5347))

(declare-fun d!5349 () Bool)

(assert (=> d!5349 (= (list!203 (_2!641 (_1!642 lt!5963))) (list!206 (c!16117 (_2!641 (_1!642 lt!5963)))))))

(declare-fun bs!6285 () Bool)

(assert (= bs!6285 d!5349))

(declare-fun m!19966 () Bool)

(assert (=> bs!6285 m!19966))

(assert (=> b!45584 d!5349))

(declare-fun d!5351 () Bool)

(assert (=> d!5351 (= (list!204 (_1!641 lt!5959)) (list!205 (c!16118 (_1!641 lt!5959))))))

(declare-fun bs!6286 () Bool)

(assert (= bs!6286 d!5351))

(declare-fun m!19968 () Bool)

(assert (=> bs!6286 m!19968))

(assert (=> b!45602 d!5351))

(declare-fun b!45673 () Bool)

(declare-fun e!25778 () Bool)

(declare-fun e!25777 () Bool)

(assert (=> b!45673 (= e!25778 e!25777)))

(declare-fun res!31170 () Bool)

(declare-fun lt!5983 () tuple2!910)

(assert (=> b!45673 (= res!31170 (< (size!732 (_2!641 lt!5983)) (size!732 lt!5964)))))

(assert (=> b!45673 (=> (not res!31170) (not e!25777))))

(declare-fun b!45674 () Bool)

(assert (=> b!45674 (= e!25778 (= (_2!641 lt!5983) lt!5964))))

(declare-fun d!5353 () Bool)

(declare-fun e!25779 () Bool)

(assert (=> d!5353 e!25779))

(declare-fun res!31169 () Bool)

(assert (=> d!5353 (=> (not res!31169) (not e!25779))))

(assert (=> d!5353 (= res!31169 e!25778)))

(declare-fun c!16125 () Bool)

(assert (=> d!5353 (= c!16125 (> (size!733 (_1!641 lt!5983)) 0))))

(assert (=> d!5353 (= lt!5983 (lexTailRecV2!14 Lexer!63 lt!5955 lt!5964 (BalanceConc!289 Empty!144) lt!5964 (BalanceConc!291 Empty!145)))))

(assert (=> d!5353 (= (lex!44 Lexer!63 lt!5955 lt!5964) lt!5983)))

(declare-fun b!45675 () Bool)

(assert (=> b!45675 (= e!25777 (not (isEmpty!151 (_1!641 lt!5983))))))

(declare-fun b!45676 () Bool)

(declare-fun res!31168 () Bool)

(assert (=> b!45676 (=> (not res!31168) (not e!25779))))

(assert (=> b!45676 (= res!31168 (= (list!204 (_1!641 lt!5983)) (_1!643 (lexList!17 Lexer!63 lt!5955 (list!203 lt!5964)))))))

(declare-fun b!45677 () Bool)

(assert (=> b!45677 (= e!25779 (= (list!203 (_2!641 lt!5983)) (_2!643 (lexList!17 Lexer!63 lt!5955 (list!203 lt!5964)))))))

(assert (= (and d!5353 c!16125) b!45673))

(assert (= (and d!5353 (not c!16125)) b!45674))

(assert (= (and b!45673 res!31170) b!45675))

(assert (= (and d!5353 res!31169) b!45676))

(assert (= (and b!45676 res!31168) b!45677))

(declare-fun m!19970 () Bool)

(assert (=> b!45676 m!19970))

(assert (=> b!45676 m!19848))

(assert (=> b!45676 m!19848))

(declare-fun m!19972 () Bool)

(assert (=> b!45676 m!19972))

(declare-fun m!19974 () Bool)

(assert (=> b!45673 m!19974))

(declare-fun m!19976 () Bool)

(assert (=> b!45673 m!19976))

(declare-fun m!19978 () Bool)

(assert (=> b!45677 m!19978))

(assert (=> b!45677 m!19848))

(assert (=> b!45677 m!19848))

(assert (=> b!45677 m!19972))

(declare-fun m!19980 () Bool)

(assert (=> d!5353 m!19980))

(declare-fun m!19982 () Bool)

(assert (=> d!5353 m!19982))

(declare-fun m!19984 () Bool)

(assert (=> b!45675 m!19984))

(assert (=> b!45602 d!5353))

(declare-fun d!5355 () Bool)

(declare-fun res!31175 () Bool)

(declare-fun e!25784 () Bool)

(assert (=> d!5355 (=> res!31175 e!25784)))

(assert (=> d!5355 (= res!31175 ((_ is Nil!747) lt!5962))))

(assert (=> d!5355 (= (forall!88 lt!5962 lambda!844) e!25784)))

(declare-fun b!45682 () Bool)

(declare-fun e!25785 () Bool)

(assert (=> b!45682 (= e!25784 e!25785)))

(declare-fun res!31176 () Bool)

(assert (=> b!45682 (=> (not res!31176) (not e!25785))))

(declare-fun dynLambda!113 (Int Token!108) Bool)

(assert (=> b!45682 (= res!31176 (dynLambda!113 lambda!844 (h!6143 lt!5962)))))

(declare-fun b!45683 () Bool)

(assert (=> b!45683 (= e!25785 (forall!88 (t!16736 lt!5962) lambda!844))))

(assert (= (and d!5355 (not res!31175)) b!45682))

(assert (= (and b!45682 res!31176) b!45683))

(declare-fun b_lambda!261 () Bool)

(assert (=> (not b_lambda!261) (not b!45682)))

(declare-fun m!19986 () Bool)

(assert (=> b!45682 m!19986))

(declare-fun m!19988 () Bool)

(assert (=> b!45683 m!19988))

(assert (=> b!45593 d!5355))

(declare-fun d!5357 () Bool)

(assert (=> d!5357 (= (array_inv!267 (_keys!544 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))) (bvsge (size!728 (_keys!544 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!45591 d!5357))

(declare-fun d!5359 () Bool)

(assert (=> d!5359 (= (array_inv!270 (_values!531 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))) (bvsge (size!730 (_values!531 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!45591 d!5359))

(declare-fun d!5361 () Bool)

(assert (=> d!5361 (= (inv!1028 (totalInput!1541 cacheFurthestNullable!45)) (isBalanced!27 (c!16117 (totalInput!1541 cacheFurthestNullable!45))))))

(declare-fun bs!6287 () Bool)

(assert (= bs!6287 d!5361))

(declare-fun m!19990 () Bool)

(assert (=> bs!6287 m!19990))

(assert (=> b!45592 d!5361))

(declare-fun d!5363 () Bool)

(assert (=> d!5363 (= (array_inv!267 (_keys!543 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))) (bvsge (size!728 (_keys!543 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!45581 d!5363))

(declare-fun d!5365 () Bool)

(assert (=> d!5365 (= (array_inv!269 (_values!530 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))) (bvsge (size!729 (_values!530 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!45581 d!5365))

(declare-fun d!5367 () Bool)

(assert (=> d!5367 (= (valid!228 (_3!186 lt!5963)) (validCacheMapDown!24 (cache!734 (_3!186 lt!5963))))))

(declare-fun bs!6288 () Bool)

(assert (= bs!6288 d!5367))

(declare-fun m!19992 () Bool)

(assert (=> bs!6288 m!19992))

(assert (=> b!45582 d!5367))

(declare-fun d!5369 () Bool)

(assert (=> d!5369 (= (array_inv!267 (_keys!542 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))) (bvsge (size!728 (_keys!542 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!45572 d!5369))

(declare-fun d!5371 () Bool)

(assert (=> d!5371 (= (array_inv!268 (_values!529 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))) (bvsge (size!727 (_values!529 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!45572 d!5371))

(declare-fun d!5373 () Bool)

(declare-fun c!16126 () Bool)

(assert (=> d!5373 (= c!16126 ((_ is Node!144) (c!16117 (totalInput!1541 cacheFurthestNullable!45))))))

(declare-fun e!25786 () Bool)

(assert (=> d!5373 (= (inv!1026 (c!16117 (totalInput!1541 cacheFurthestNullable!45))) e!25786)))

(declare-fun b!45684 () Bool)

(assert (=> b!45684 (= e!25786 (inv!1031 (c!16117 (totalInput!1541 cacheFurthestNullable!45))))))

(declare-fun b!45685 () Bool)

(declare-fun e!25787 () Bool)

(assert (=> b!45685 (= e!25786 e!25787)))

(declare-fun res!31177 () Bool)

(assert (=> b!45685 (= res!31177 (not ((_ is Leaf!341) (c!16117 (totalInput!1541 cacheFurthestNullable!45)))))))

(assert (=> b!45685 (=> res!31177 e!25787)))

(declare-fun b!45686 () Bool)

(assert (=> b!45686 (= e!25787 (inv!1032 (c!16117 (totalInput!1541 cacheFurthestNullable!45))))))

(assert (= (and d!5373 c!16126) b!45684))

(assert (= (and d!5373 (not c!16126)) b!45685))

(assert (= (and b!45685 (not res!31177)) b!45686))

(declare-fun m!19994 () Bool)

(assert (=> b!45684 m!19994))

(declare-fun m!19996 () Bool)

(assert (=> b!45686 m!19996))

(assert (=> b!45580 d!5373))

(declare-fun d!5375 () Bool)

(assert (=> d!5375 (= (valid!228 cacheDown!333) (validCacheMapDown!24 (cache!734 cacheDown!333)))))

(declare-fun bs!6289 () Bool)

(assert (= bs!6289 d!5375))

(assert (=> bs!6289 m!19958))

(assert (=> b!45599 d!5375))

(declare-fun d!5377 () Bool)

(declare-fun res!31180 () Bool)

(declare-fun e!25790 () Bool)

(assert (=> d!5377 (=> (not res!31180) (not e!25790))))

(declare-fun rulesValid!20 (LexerInterface!65 List!744) Bool)

(assert (=> d!5377 (= res!31180 (rulesValid!20 Lexer!63 lt!5955))))

(assert (=> d!5377 (= (rulesInvariant!58 Lexer!63 lt!5955) e!25790)))

(declare-fun b!45689 () Bool)

(declare-datatypes ((List!750 0))(
  ( (Nil!748) (Cons!748 (h!6144 String!1101) (t!16739 List!750)) )
))
(declare-fun noDuplicateTag!20 (LexerInterface!65 List!744 List!750) Bool)

(assert (=> b!45689 (= e!25790 (noDuplicateTag!20 Lexer!63 lt!5955 Nil!748))))

(assert (= (and d!5377 res!31180) b!45689))

(declare-fun m!19998 () Bool)

(assert (=> d!5377 m!19998))

(declare-fun m!20000 () Bool)

(assert (=> b!45689 m!20000))

(assert (=> b!45600 d!5377))

(declare-fun d!5379 () Bool)

(assert (=> d!5379 (= (valid!227 cacheFurthestNullable!45) (validCacheMapFurthestNullable!16 (cache!733 cacheFurthestNullable!45) (totalInput!1541 cacheFurthestNullable!45)))))

(declare-fun bs!6290 () Bool)

(assert (= bs!6290 d!5379))

(assert (=> bs!6290 m!19962))

(assert (=> b!45571 d!5379))

(declare-fun d!5381 () Bool)

(assert (=> d!5381 (= (list!203 lt!5964) (list!206 (c!16117 lt!5964)))))

(declare-fun bs!6291 () Bool)

(assert (= bs!6291 d!5381))

(declare-fun m!20002 () Bool)

(assert (=> bs!6291 m!20002))

(assert (=> b!45569 d!5381))

(declare-fun d!5383 () Bool)

(declare-fun fromListB!13 (List!743) BalanceConc!288)

(assert (=> d!5383 (= (seqFromList!36 lt!5967) (fromListB!13 lt!5967))))

(declare-fun bs!6292 () Bool)

(assert (= bs!6292 d!5383))

(declare-fun m!20004 () Bool)

(assert (=> bs!6292 m!20004))

(assert (=> b!45569 d!5383))

(declare-fun d!5385 () Bool)

(assert (=> d!5385 (= (list!203 input!525) (list!206 (c!16117 input!525)))))

(declare-fun bs!6293 () Bool)

(assert (= bs!6293 d!5385))

(declare-fun m!20006 () Bool)

(assert (=> bs!6293 m!20006))

(assert (=> b!45569 d!5385))

(declare-fun b!45700 () Bool)

(declare-fun e!25800 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!22 (LexerInterface!65 List!744 List!749) Bool)

(declare-fun lex!45 (LexerInterface!65 List!744 BalanceConc!288) tuple2!910)

(assert (=> b!45700 (= e!25800 (rulesProduceEachTokenIndividuallyList!22 Lexer!63 lt!5955 (list!204 (_1!641 (lex!45 Lexer!63 lt!5955 (seqFromList!36 lt!5967))))))))

(declare-fun b!45701 () Bool)

(declare-fun res!31194 () Bool)

(assert (=> b!45701 (=> res!31194 e!25800)))

(declare-fun rulesInvariant!59 (LexerInterface!65 List!744) Bool)

(assert (=> b!45701 (= res!31194 (not (rulesInvariant!59 Lexer!63 lt!5955)))))

(declare-fun b!45702 () Bool)

(declare-fun e!25799 () Bool)

(assert (=> b!45702 (= e!25799 e!25800)))

(declare-fun res!31193 () Bool)

(assert (=> b!45702 (=> res!31193 e!25800)))

(assert (=> b!45702 (= res!31193 (isEmpty!150 lt!5955))))

(declare-fun d!5387 () Bool)

(assert (=> d!5387 e!25799))

(declare-fun res!31192 () Bool)

(assert (=> d!5387 (=> (not res!31192) (not e!25799))))

(declare-fun lt!5995 () Bool)

(assert (=> d!5387 (= res!31192 lt!5995)))

(declare-fun e!25801 () Bool)

(assert (=> d!5387 (= lt!5995 e!25801)))

(declare-fun res!31195 () Bool)

(assert (=> d!5387 (=> res!31195 e!25801)))

(declare-fun e!25802 () Bool)

(assert (=> d!5387 (= res!31195 (not e!25802))))

(declare-fun res!31191 () Bool)

(assert (=> d!5387 (=> (not res!31191) (not e!25802))))

(assert (=> d!5387 (= res!31191 (not (isEmpty!150 lt!5955)))))

(assert (=> d!5387 (= (lexThenRulesProduceEachTokenIndividually!18 Lexer!63 lt!5955 lt!5967) lt!5995)))

(declare-fun b!45703 () Bool)

(declare-fun lt!5998 () tuple2!910)

(assert (=> b!45703 (= e!25801 (rulesProduceEachTokenIndividuallyList!21 Lexer!63 lt!5955 (list!204 (_1!641 lt!5998))))))

(declare-fun lt!5996 () Unit!342)

(declare-fun lt!5994 () Unit!342)

(assert (=> b!45703 (= lt!5996 lt!5994)))

(declare-fun lt!5997 () List!749)

(declare-fun rulesProduceEachTokenIndividually!8 (LexerInterface!65 List!744 BalanceConc!290) Bool)

(declare-fun seqFromList!37 (List!749) BalanceConc!290)

(assert (=> b!45703 (rulesProduceEachTokenIndividually!8 Lexer!63 lt!5955 (seqFromList!37 lt!5997))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!8 (LexerInterface!65 List!744 List!743 List!749) Unit!342)

(assert (=> b!45703 (= lt!5994 (lemmaLexThenRulesProducesEachTokenIndividually!8 Lexer!63 lt!5955 lt!5967 lt!5997))))

(assert (=> b!45703 (= lt!5997 (list!204 (_1!641 lt!5998)))))

(assert (=> b!45703 (= lt!5998 (lex!44 Lexer!63 lt!5955 (seqFromList!36 lt!5967)))))

(declare-fun b!45704 () Bool)

(assert (=> b!45704 (= e!25802 (rulesInvariant!58 Lexer!63 lt!5955))))

(assert (= (and d!5387 res!31191) b!45704))

(assert (= (and d!5387 (not res!31195)) b!45703))

(assert (= (and d!5387 res!31192) b!45702))

(assert (= (and b!45702 (not res!31193)) b!45701))

(assert (= (and b!45701 (not res!31194)) b!45700))

(assert (=> b!45702 m!19810))

(assert (=> b!45704 m!19820))

(declare-fun m!20008 () Bool)

(assert (=> b!45701 m!20008))

(declare-fun m!20010 () Bool)

(assert (=> b!45703 m!20010))

(declare-fun m!20012 () Bool)

(assert (=> b!45703 m!20012))

(declare-fun m!20014 () Bool)

(assert (=> b!45703 m!20014))

(assert (=> b!45703 m!20010))

(declare-fun m!20016 () Bool)

(assert (=> b!45703 m!20016))

(assert (=> b!45703 m!19850))

(declare-fun m!20018 () Bool)

(assert (=> b!45703 m!20018))

(assert (=> b!45703 m!20016))

(declare-fun m!20020 () Bool)

(assert (=> b!45703 m!20020))

(assert (=> b!45703 m!19850))

(assert (=> b!45700 m!19850))

(assert (=> b!45700 m!19850))

(declare-fun m!20022 () Bool)

(assert (=> b!45700 m!20022))

(declare-fun m!20024 () Bool)

(assert (=> b!45700 m!20024))

(assert (=> b!45700 m!20024))

(declare-fun m!20026 () Bool)

(assert (=> b!45700 m!20026))

(assert (=> d!5387 m!19810))

(assert (=> b!45588 d!5387))

(declare-fun d!5389 () Bool)

(assert (=> d!5389 (= (list!203 (_2!641 lt!5959)) (list!206 (c!16117 (_2!641 lt!5959))))))

(declare-fun bs!6294 () Bool)

(assert (= bs!6294 d!5389))

(declare-fun m!20028 () Bool)

(assert (=> bs!6294 m!20028))

(assert (=> b!45579 d!5389))

(declare-fun tp!31099 () Bool)

(declare-fun b!45711 () Bool)

(declare-fun tp!31098 () Bool)

(declare-fun e!25807 () Bool)

(assert (=> b!45711 (= e!25807 (and (inv!1026 (left!586 (c!16117 input!525))) tp!31098 (inv!1026 (right!916 (c!16117 input!525))) tp!31099))))

(declare-fun b!45712 () Bool)

(declare-fun inv!1033 (IArray!289) Bool)

(assert (=> b!45712 (= e!25807 (inv!1033 (xs!2723 (c!16117 input!525))))))

(assert (=> b!45578 (= tp!31090 (and (inv!1026 (c!16117 input!525)) e!25807))))

(assert (= (and b!45578 ((_ is Node!144) (c!16117 input!525))) b!45711))

(assert (= (and b!45578 ((_ is Leaf!341) (c!16117 input!525))) b!45712))

(declare-fun m!20030 () Bool)

(assert (=> b!45711 m!20030))

(declare-fun m!20032 () Bool)

(assert (=> b!45711 m!20032))

(declare-fun m!20034 () Bool)

(assert (=> b!45712 m!20034))

(assert (=> b!45578 m!19858))

(declare-fun b!45715 () Bool)

(declare-fun e!25811 () Bool)

(assert (=> b!45715 (= e!25811 true)))

(declare-fun b!45714 () Bool)

(declare-fun e!25810 () Bool)

(assert (=> b!45714 (= e!25810 e!25811)))

(declare-fun b!45713 () Bool)

(declare-fun e!25809 () Bool)

(assert (=> b!45713 (= e!25809 e!25810)))

(assert (=> b!45611 e!25809))

(assert (= b!45714 b!45715))

(assert (= b!45713 b!45714))

(assert (= (and b!45611 ((_ is Cons!742) (t!16731 lt!5955))) b!45713))

(assert (=> b!45715 (< (dynLambda!110 order!175 (toValue!650 (transformation!171 (h!6138 (t!16731 lt!5955))))) (dynLambda!111 order!177 lambda!844))))

(assert (=> b!45715 (< (dynLambda!112 order!179 (toChars!509 (transformation!171 (h!6138 (t!16731 lt!5955))))) (dynLambda!111 order!177 lambda!844))))

(declare-fun b!45720 () Bool)

(declare-fun e!25817 () Bool)

(declare-fun setRes!1142 () Bool)

(declare-fun tp!31104 () Bool)

(assert (=> b!45720 (= e!25817 (and setRes!1142 tp!31104))))

(declare-fun condSetEmpty!1142 () Bool)

(assert (=> b!45720 (= condSetEmpty!1142 (= (_1!637 (_1!638 (h!6141 mapDefault!973))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1142 () Bool)

(assert (=> setIsEmpty!1142 setRes!1142))

(declare-fun setNonEmpty!1142 () Bool)

(declare-fun tp!31105 () Bool)

(declare-fun setElem!1142 () Context!190)

(declare-fun inv!1034 (Context!190) Bool)

(assert (=> setNonEmpty!1142 (= setRes!1142 (and tp!31105 (inv!1034 setElem!1142)))))

(declare-fun setRest!1142 () (InoxSet Context!190))

(assert (=> setNonEmpty!1142 (= (_1!637 (_1!638 (h!6141 mapDefault!973))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1142 true) setRest!1142))))

(assert (=> b!45586 (= tp!31083 e!25817)))

(assert (= (and b!45720 condSetEmpty!1142) setIsEmpty!1142))

(assert (= (and b!45720 (not condSetEmpty!1142)) setNonEmpty!1142))

(assert (= (and b!45586 ((_ is Cons!745) mapDefault!973)) b!45720))

(declare-fun m!20036 () Bool)

(assert (=> setNonEmpty!1142 m!20036))

(declare-fun tp!31111 () Bool)

(declare-fun setRes!1145 () Bool)

(declare-fun e!25824 () Bool)

(declare-fun b!45725 () Bool)

(assert (=> b!45725 (= e!25824 (and (inv!1034 (_1!635 (_1!636 (h!6140 mapDefault!974)))) setRes!1145 tp!31111))))

(declare-fun condSetEmpty!1145 () Bool)

(assert (=> b!45725 (= condSetEmpty!1145 (= (_2!636 (h!6140 mapDefault!974)) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1145 () Bool)

(assert (=> setIsEmpty!1145 setRes!1145))

(declare-fun setNonEmpty!1145 () Bool)

(declare-fun tp!31110 () Bool)

(declare-fun setElem!1145 () Context!190)

(assert (=> setNonEmpty!1145 (= setRes!1145 (and tp!31110 (inv!1034 setElem!1145)))))

(declare-fun setRest!1145 () (InoxSet Context!190))

(assert (=> setNonEmpty!1145 (= (_2!636 (h!6140 mapDefault!974)) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1145 true) setRest!1145))))

(assert (=> b!45575 (= tp!31075 e!25824)))

(assert (= (and b!45725 condSetEmpty!1145) setIsEmpty!1145))

(assert (= (and b!45725 (not condSetEmpty!1145)) setNonEmpty!1145))

(assert (= (and b!45575 ((_ is Cons!744) mapDefault!974)) b!45725))

(declare-fun m!20038 () Bool)

(assert (=> b!45725 m!20038))

(declare-fun m!20040 () Bool)

(assert (=> setNonEmpty!1145 m!20040))

(declare-fun mapIsEmpty!978 () Bool)

(declare-fun mapRes!978 () Bool)

(assert (=> mapIsEmpty!978 mapRes!978))

(declare-fun setNonEmpty!1150 () Bool)

(declare-fun setRes!1151 () Bool)

(declare-fun tp!31126 () Bool)

(declare-fun setElem!1150 () Context!190)

(assert (=> setNonEmpty!1150 (= setRes!1151 (and tp!31126 (inv!1034 setElem!1150)))))

(declare-fun mapValue!978 () List!747)

(declare-fun setRest!1151 () (InoxSet Context!190))

(assert (=> setNonEmpty!1150 (= (_1!637 (_1!638 (h!6141 mapValue!978))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1150 true) setRest!1151))))

(declare-fun mapNonEmpty!978 () Bool)

(declare-fun tp!31122 () Bool)

(declare-fun e!25836 () Bool)

(assert (=> mapNonEmpty!978 (= mapRes!978 (and tp!31122 e!25836))))

(declare-fun mapRest!978 () (Array (_ BitVec 32) List!747))

(declare-fun mapKey!978 () (_ BitVec 32))

(assert (=> mapNonEmpty!978 (= mapRest!974 (store mapRest!978 mapKey!978 mapValue!978))))

(declare-fun setIsEmpty!1150 () Bool)

(assert (=> setIsEmpty!1150 setRes!1151))

(declare-fun setIsEmpty!1151 () Bool)

(declare-fun setRes!1150 () Bool)

(assert (=> setIsEmpty!1151 setRes!1150))

(declare-fun b!45732 () Bool)

(declare-fun tp!31123 () Bool)

(assert (=> b!45732 (= e!25836 (and setRes!1151 tp!31123))))

(declare-fun condSetEmpty!1151 () Bool)

(assert (=> b!45732 (= condSetEmpty!1151 (= (_1!637 (_1!638 (h!6141 mapValue!978))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setNonEmpty!1151 () Bool)

(declare-fun tp!31124 () Bool)

(declare-fun setElem!1151 () Context!190)

(assert (=> setNonEmpty!1151 (= setRes!1150 (and tp!31124 (inv!1034 setElem!1151)))))

(declare-fun mapDefault!978 () List!747)

(declare-fun setRest!1150 () (InoxSet Context!190))

(assert (=> setNonEmpty!1151 (= (_1!637 (_1!638 (h!6141 mapDefault!978))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1151 true) setRest!1150))))

(declare-fun b!45733 () Bool)

(declare-fun e!25837 () Bool)

(declare-fun tp!31125 () Bool)

(assert (=> b!45733 (= e!25837 (and setRes!1150 tp!31125))))

(declare-fun condSetEmpty!1150 () Bool)

(assert (=> b!45733 (= condSetEmpty!1150 (= (_1!637 (_1!638 (h!6141 mapDefault!978))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun condMapEmpty!978 () Bool)

(assert (=> mapNonEmpty!975 (= condMapEmpty!978 (= mapRest!974 ((as const (Array (_ BitVec 32) List!747)) mapDefault!978)))))

(assert (=> mapNonEmpty!975 (= tp!31073 (and e!25837 mapRes!978))))

(assert (= (and mapNonEmpty!975 condMapEmpty!978) mapIsEmpty!978))

(assert (= (and mapNonEmpty!975 (not condMapEmpty!978)) mapNonEmpty!978))

(assert (= (and b!45732 condSetEmpty!1151) setIsEmpty!1150))

(assert (= (and b!45732 (not condSetEmpty!1151)) setNonEmpty!1150))

(assert (= (and mapNonEmpty!978 ((_ is Cons!745) mapValue!978)) b!45732))

(assert (= (and b!45733 condSetEmpty!1150) setIsEmpty!1151))

(assert (= (and b!45733 (not condSetEmpty!1150)) setNonEmpty!1151))

(assert (= (and mapNonEmpty!975 ((_ is Cons!745) mapDefault!978)) b!45733))

(declare-fun m!20042 () Bool)

(assert (=> setNonEmpty!1150 m!20042))

(declare-fun m!20044 () Bool)

(assert (=> mapNonEmpty!978 m!20044))

(declare-fun m!20046 () Bool)

(assert (=> setNonEmpty!1151 m!20046))

(declare-fun b!45734 () Bool)

(declare-fun e!25840 () Bool)

(declare-fun setRes!1152 () Bool)

(declare-fun tp!31127 () Bool)

(assert (=> b!45734 (= e!25840 (and setRes!1152 tp!31127))))

(declare-fun condSetEmpty!1152 () Bool)

(assert (=> b!45734 (= condSetEmpty!1152 (= (_1!637 (_1!638 (h!6141 mapValue!974))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1152 () Bool)

(assert (=> setIsEmpty!1152 setRes!1152))

(declare-fun setNonEmpty!1152 () Bool)

(declare-fun tp!31128 () Bool)

(declare-fun setElem!1152 () Context!190)

(assert (=> setNonEmpty!1152 (= setRes!1152 (and tp!31128 (inv!1034 setElem!1152)))))

(declare-fun setRest!1152 () (InoxSet Context!190))

(assert (=> setNonEmpty!1152 (= (_1!637 (_1!638 (h!6141 mapValue!974))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1152 true) setRest!1152))))

(assert (=> mapNonEmpty!975 (= tp!31084 e!25840)))

(assert (= (and b!45734 condSetEmpty!1152) setIsEmpty!1152))

(assert (= (and b!45734 (not condSetEmpty!1152)) setNonEmpty!1152))

(assert (= (and mapNonEmpty!975 ((_ is Cons!745) mapValue!974)) b!45734))

(declare-fun m!20048 () Bool)

(assert (=> setNonEmpty!1152 m!20048))

(declare-fun condMapEmpty!981 () Bool)

(declare-fun mapDefault!981 () List!746)

(assert (=> mapNonEmpty!973 (= condMapEmpty!981 (= mapRest!973 ((as const (Array (_ BitVec 32) List!746)) mapDefault!981)))))

(declare-fun e!25857 () Bool)

(declare-fun mapRes!981 () Bool)

(assert (=> mapNonEmpty!973 (= tp!31077 (and e!25857 mapRes!981))))

(declare-fun setRes!1158 () Bool)

(declare-fun b!45741 () Bool)

(declare-fun tp!31142 () Bool)

(assert (=> b!45741 (= e!25857 (and (inv!1034 (_1!635 (_1!636 (h!6140 mapDefault!981)))) setRes!1158 tp!31142))))

(declare-fun condSetEmpty!1157 () Bool)

(assert (=> b!45741 (= condSetEmpty!1157 (= (_2!636 (h!6140 mapDefault!981)) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1157 () Bool)

(declare-fun setRes!1157 () Bool)

(assert (=> setIsEmpty!1157 setRes!1157))

(declare-fun mapNonEmpty!981 () Bool)

(declare-fun tp!31141 () Bool)

(declare-fun e!25853 () Bool)

(assert (=> mapNonEmpty!981 (= mapRes!981 (and tp!31141 e!25853))))

(declare-fun mapRest!981 () (Array (_ BitVec 32) List!746))

(declare-fun mapValue!981 () List!746)

(declare-fun mapKey!981 () (_ BitVec 32))

(assert (=> mapNonEmpty!981 (= mapRest!973 (store mapRest!981 mapKey!981 mapValue!981))))

(declare-fun setNonEmpty!1157 () Bool)

(declare-fun tp!31139 () Bool)

(declare-fun setElem!1157 () Context!190)

(assert (=> setNonEmpty!1157 (= setRes!1157 (and tp!31139 (inv!1034 setElem!1157)))))

(declare-fun setRest!1158 () (InoxSet Context!190))

(assert (=> setNonEmpty!1157 (= (_2!636 (h!6140 mapValue!981)) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1157 true) setRest!1158))))

(declare-fun setIsEmpty!1158 () Bool)

(assert (=> setIsEmpty!1158 setRes!1158))

(declare-fun setNonEmpty!1158 () Bool)

(declare-fun tp!31143 () Bool)

(declare-fun setElem!1158 () Context!190)

(assert (=> setNonEmpty!1158 (= setRes!1158 (and tp!31143 (inv!1034 setElem!1158)))))

(declare-fun setRest!1157 () (InoxSet Context!190))

(assert (=> setNonEmpty!1158 (= (_2!636 (h!6140 mapDefault!981)) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1158 true) setRest!1157))))

(declare-fun tp!31140 () Bool)

(declare-fun b!45742 () Bool)

(assert (=> b!45742 (= e!25853 (and (inv!1034 (_1!635 (_1!636 (h!6140 mapValue!981)))) setRes!1157 tp!31140))))

(declare-fun condSetEmpty!1158 () Bool)

(assert (=> b!45742 (= condSetEmpty!1158 (= (_2!636 (h!6140 mapValue!981)) ((as const (Array Context!190 Bool)) false)))))

(declare-fun mapIsEmpty!981 () Bool)

(assert (=> mapIsEmpty!981 mapRes!981))

(assert (= (and mapNonEmpty!973 condMapEmpty!981) mapIsEmpty!981))

(assert (= (and mapNonEmpty!973 (not condMapEmpty!981)) mapNonEmpty!981))

(assert (= (and b!45742 condSetEmpty!1158) setIsEmpty!1157))

(assert (= (and b!45742 (not condSetEmpty!1158)) setNonEmpty!1157))

(assert (= (and mapNonEmpty!981 ((_ is Cons!744) mapValue!981)) b!45742))

(assert (= (and b!45741 condSetEmpty!1157) setIsEmpty!1158))

(assert (= (and b!45741 (not condSetEmpty!1157)) setNonEmpty!1158))

(assert (= (and mapNonEmpty!973 ((_ is Cons!744) mapDefault!981)) b!45741))

(declare-fun m!20050 () Bool)

(assert (=> setNonEmpty!1158 m!20050))

(declare-fun m!20052 () Bool)

(assert (=> mapNonEmpty!981 m!20052))

(declare-fun m!20054 () Bool)

(assert (=> setNonEmpty!1157 m!20054))

(declare-fun m!20056 () Bool)

(assert (=> b!45741 m!20056))

(declare-fun m!20058 () Bool)

(assert (=> b!45742 m!20058))

(declare-fun setRes!1159 () Bool)

(declare-fun tp!31145 () Bool)

(declare-fun b!45743 () Bool)

(declare-fun e!25859 () Bool)

(assert (=> b!45743 (= e!25859 (and (inv!1034 (_1!635 (_1!636 (h!6140 mapValue!973)))) setRes!1159 tp!31145))))

(declare-fun condSetEmpty!1159 () Bool)

(assert (=> b!45743 (= condSetEmpty!1159 (= (_2!636 (h!6140 mapValue!973)) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1159 () Bool)

(assert (=> setIsEmpty!1159 setRes!1159))

(declare-fun setNonEmpty!1159 () Bool)

(declare-fun tp!31144 () Bool)

(declare-fun setElem!1159 () Context!190)

(assert (=> setNonEmpty!1159 (= setRes!1159 (and tp!31144 (inv!1034 setElem!1159)))))

(declare-fun setRest!1159 () (InoxSet Context!190))

(assert (=> setNonEmpty!1159 (= (_2!636 (h!6140 mapValue!973)) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1159 true) setRest!1159))))

(assert (=> mapNonEmpty!973 (= tp!31076 e!25859)))

(assert (= (and b!45743 condSetEmpty!1159) setIsEmpty!1159))

(assert (= (and b!45743 (not condSetEmpty!1159)) setNonEmpty!1159))

(assert (= (and mapNonEmpty!973 ((_ is Cons!744) mapValue!973)) b!45743))

(declare-fun m!20060 () Bool)

(assert (=> b!45743 m!20060))

(declare-fun m!20062 () Bool)

(assert (=> setNonEmpty!1159 m!20062))

(declare-fun tp!31151 () Bool)

(declare-fun b!45748 () Bool)

(declare-fun e!25869 () Bool)

(declare-fun setRes!1162 () Bool)

(assert (=> b!45748 (= e!25869 (and (inv!1034 (_2!639 (_1!640 (h!6142 mapDefault!975)))) setRes!1162 tp!31151))))

(declare-fun condSetEmpty!1162 () Bool)

(assert (=> b!45748 (= condSetEmpty!1162 (= (_2!640 (h!6142 mapDefault!975)) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1162 () Bool)

(assert (=> setIsEmpty!1162 setRes!1162))

(declare-fun setNonEmpty!1162 () Bool)

(declare-fun tp!31150 () Bool)

(declare-fun setElem!1162 () Context!190)

(assert (=> setNonEmpty!1162 (= setRes!1162 (and tp!31150 (inv!1034 setElem!1162)))))

(declare-fun setRest!1162 () (InoxSet Context!190))

(assert (=> setNonEmpty!1162 (= (_2!640 (h!6142 mapDefault!975)) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1162 true) setRest!1162))))

(assert (=> b!45573 (= tp!31093 e!25869)))

(assert (= (and b!45748 condSetEmpty!1162) setIsEmpty!1162))

(assert (= (and b!45748 (not condSetEmpty!1162)) setNonEmpty!1162))

(assert (= (and b!45573 ((_ is Cons!746) mapDefault!975)) b!45748))

(declare-fun m!20064 () Bool)

(assert (=> b!45748 m!20064))

(declare-fun m!20066 () Bool)

(assert (=> setNonEmpty!1162 m!20066))

(declare-fun tp!31153 () Bool)

(declare-fun setRes!1163 () Bool)

(declare-fun b!45749 () Bool)

(declare-fun e!25872 () Bool)

(assert (=> b!45749 (= e!25872 (and (inv!1034 (_2!639 (_1!640 (h!6142 (zeroValue!509 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333)))))))))) setRes!1163 tp!31153))))

(declare-fun condSetEmpty!1163 () Bool)

(assert (=> b!45749 (= condSetEmpty!1163 (= (_2!640 (h!6142 (zeroValue!509 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333)))))))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1163 () Bool)

(assert (=> setIsEmpty!1163 setRes!1163))

(declare-fun setNonEmpty!1163 () Bool)

(declare-fun tp!31152 () Bool)

(declare-fun setElem!1163 () Context!190)

(assert (=> setNonEmpty!1163 (= setRes!1163 (and tp!31152 (inv!1034 setElem!1163)))))

(declare-fun setRest!1163 () (InoxSet Context!190))

(assert (=> setNonEmpty!1163 (= (_2!640 (h!6142 (zeroValue!509 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1163 true) setRest!1163))))

(assert (=> b!45591 (= tp!31089 e!25872)))

(assert (= (and b!45749 condSetEmpty!1163) setIsEmpty!1163))

(assert (= (and b!45749 (not condSetEmpty!1163)) setNonEmpty!1163))

(assert (= (and b!45591 ((_ is Cons!746) (zeroValue!509 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333)))))))) b!45749))

(declare-fun m!20068 () Bool)

(assert (=> b!45749 m!20068))

(declare-fun m!20070 () Bool)

(assert (=> setNonEmpty!1163 m!20070))

(declare-fun tp!31155 () Bool)

(declare-fun b!45750 () Bool)

(declare-fun setRes!1164 () Bool)

(declare-fun e!25875 () Bool)

(assert (=> b!45750 (= e!25875 (and (inv!1034 (_2!639 (_1!640 (h!6142 (minValue!509 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333)))))))))) setRes!1164 tp!31155))))

(declare-fun condSetEmpty!1164 () Bool)

(assert (=> b!45750 (= condSetEmpty!1164 (= (_2!640 (h!6142 (minValue!509 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333)))))))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1164 () Bool)

(assert (=> setIsEmpty!1164 setRes!1164))

(declare-fun setNonEmpty!1164 () Bool)

(declare-fun tp!31154 () Bool)

(declare-fun setElem!1164 () Context!190)

(assert (=> setNonEmpty!1164 (= setRes!1164 (and tp!31154 (inv!1034 setElem!1164)))))

(declare-fun setRest!1164 () (InoxSet Context!190))

(assert (=> setNonEmpty!1164 (= (_2!640 (h!6142 (minValue!509 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1164 true) setRest!1164))))

(assert (=> b!45591 (= tp!31078 e!25875)))

(assert (= (and b!45750 condSetEmpty!1164) setIsEmpty!1164))

(assert (= (and b!45750 (not condSetEmpty!1164)) setNonEmpty!1164))

(assert (= (and b!45591 ((_ is Cons!746) (minValue!509 (v!12485 (underlying!701 (v!12486 (underlying!702 (cache!734 cacheDown!333)))))))) b!45750))

(declare-fun m!20072 () Bool)

(assert (=> b!45750 m!20072))

(declare-fun m!20074 () Bool)

(assert (=> setNonEmpty!1164 m!20074))

(declare-fun b!45751 () Bool)

(declare-fun e!25878 () Bool)

(declare-fun setRes!1165 () Bool)

(declare-fun tp!31156 () Bool)

(assert (=> b!45751 (= e!25878 (and setRes!1165 tp!31156))))

(declare-fun condSetEmpty!1165 () Bool)

(assert (=> b!45751 (= condSetEmpty!1165 (= (_1!637 (_1!638 (h!6141 (zeroValue!508 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1165 () Bool)

(assert (=> setIsEmpty!1165 setRes!1165))

(declare-fun setNonEmpty!1165 () Bool)

(declare-fun tp!31157 () Bool)

(declare-fun setElem!1165 () Context!190)

(assert (=> setNonEmpty!1165 (= setRes!1165 (and tp!31157 (inv!1034 setElem!1165)))))

(declare-fun setRest!1165 () (InoxSet Context!190))

(assert (=> setNonEmpty!1165 (= (_1!637 (_1!638 (h!6141 (zeroValue!508 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1165 true) setRest!1165))))

(assert (=> b!45581 (= tp!31080 e!25878)))

(assert (= (and b!45751 condSetEmpty!1165) setIsEmpty!1165))

(assert (= (and b!45751 (not condSetEmpty!1165)) setNonEmpty!1165))

(assert (= (and b!45581 ((_ is Cons!745) (zeroValue!508 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45)))))))) b!45751))

(declare-fun m!20076 () Bool)

(assert (=> setNonEmpty!1165 m!20076))

(declare-fun b!45752 () Bool)

(declare-fun e!25880 () Bool)

(declare-fun setRes!1166 () Bool)

(declare-fun tp!31158 () Bool)

(assert (=> b!45752 (= e!25880 (and setRes!1166 tp!31158))))

(declare-fun condSetEmpty!1166 () Bool)

(assert (=> b!45752 (= condSetEmpty!1166 (= (_1!637 (_1!638 (h!6141 (minValue!508 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1166 () Bool)

(assert (=> setIsEmpty!1166 setRes!1166))

(declare-fun setNonEmpty!1166 () Bool)

(declare-fun tp!31159 () Bool)

(declare-fun setElem!1166 () Context!190)

(assert (=> setNonEmpty!1166 (= setRes!1166 (and tp!31159 (inv!1034 setElem!1166)))))

(declare-fun setRest!1166 () (InoxSet Context!190))

(assert (=> setNonEmpty!1166 (= (_1!637 (_1!638 (h!6141 (minValue!508 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1166 true) setRest!1166))))

(assert (=> b!45581 (= tp!31086 e!25880)))

(assert (= (and b!45752 condSetEmpty!1166) setIsEmpty!1166))

(assert (= (and b!45752 (not condSetEmpty!1166)) setNonEmpty!1166))

(assert (= (and b!45581 ((_ is Cons!745) (minValue!508 (v!12483 (underlying!699 (v!12484 (underlying!700 (cache!733 cacheFurthestNullable!45)))))))) b!45752))

(declare-fun m!20078 () Bool)

(assert (=> setNonEmpty!1166 m!20078))

(declare-fun e!25881 () Bool)

(declare-fun tp!31161 () Bool)

(declare-fun setRes!1167 () Bool)

(declare-fun b!45753 () Bool)

(assert (=> b!45753 (= e!25881 (and (inv!1034 (_1!635 (_1!636 (h!6140 (zeroValue!507 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320)))))))))) setRes!1167 tp!31161))))

(declare-fun condSetEmpty!1167 () Bool)

(assert (=> b!45753 (= condSetEmpty!1167 (= (_2!636 (h!6140 (zeroValue!507 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320)))))))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1167 () Bool)

(assert (=> setIsEmpty!1167 setRes!1167))

(declare-fun setNonEmpty!1167 () Bool)

(declare-fun tp!31160 () Bool)

(declare-fun setElem!1167 () Context!190)

(assert (=> setNonEmpty!1167 (= setRes!1167 (and tp!31160 (inv!1034 setElem!1167)))))

(declare-fun setRest!1167 () (InoxSet Context!190))

(assert (=> setNonEmpty!1167 (= (_2!636 (h!6140 (zeroValue!507 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1167 true) setRest!1167))))

(assert (=> b!45572 (= tp!31092 e!25881)))

(assert (= (and b!45753 condSetEmpty!1167) setIsEmpty!1167))

(assert (= (and b!45753 (not condSetEmpty!1167)) setNonEmpty!1167))

(assert (= (and b!45572 ((_ is Cons!744) (zeroValue!507 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320)))))))) b!45753))

(declare-fun m!20080 () Bool)

(assert (=> b!45753 m!20080))

(declare-fun m!20082 () Bool)

(assert (=> setNonEmpty!1167 m!20082))

(declare-fun tp!31163 () Bool)

(declare-fun setRes!1168 () Bool)

(declare-fun e!25884 () Bool)

(declare-fun b!45754 () Bool)

(assert (=> b!45754 (= e!25884 (and (inv!1034 (_1!635 (_1!636 (h!6140 (minValue!507 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320)))))))))) setRes!1168 tp!31163))))

(declare-fun condSetEmpty!1168 () Bool)

(assert (=> b!45754 (= condSetEmpty!1168 (= (_2!636 (h!6140 (minValue!507 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320)))))))) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1168 () Bool)

(assert (=> setIsEmpty!1168 setRes!1168))

(declare-fun setNonEmpty!1168 () Bool)

(declare-fun tp!31162 () Bool)

(declare-fun setElem!1168 () Context!190)

(assert (=> setNonEmpty!1168 (= setRes!1168 (and tp!31162 (inv!1034 setElem!1168)))))

(declare-fun setRest!1168 () (InoxSet Context!190))

(assert (=> setNonEmpty!1168 (= (_2!636 (h!6140 (minValue!507 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1168 true) setRest!1168))))

(assert (=> b!45572 (= tp!31082 e!25884)))

(assert (= (and b!45754 condSetEmpty!1168) setIsEmpty!1168))

(assert (= (and b!45754 (not condSetEmpty!1168)) setNonEmpty!1168))

(assert (= (and b!45572 ((_ is Cons!744) (minValue!507 (v!12481 (underlying!697 (v!12482 (underlying!698 (cache!732 cacheUp!320)))))))) b!45754))

(declare-fun m!20084 () Bool)

(assert (=> b!45754 m!20084))

(declare-fun m!20086 () Bool)

(assert (=> setNonEmpty!1168 m!20086))

(declare-fun b!45755 () Bool)

(declare-fun e!25887 () Bool)

(declare-fun tp!31164 () Bool)

(declare-fun tp!31165 () Bool)

(assert (=> b!45755 (= e!25887 (and (inv!1026 (left!586 (c!16117 (totalInput!1541 cacheFurthestNullable!45)))) tp!31164 (inv!1026 (right!916 (c!16117 (totalInput!1541 cacheFurthestNullable!45)))) tp!31165))))

(declare-fun b!45756 () Bool)

(assert (=> b!45756 (= e!25887 (inv!1033 (xs!2723 (c!16117 (totalInput!1541 cacheFurthestNullable!45)))))))

(assert (=> b!45580 (= tp!31071 (and (inv!1026 (c!16117 (totalInput!1541 cacheFurthestNullable!45))) e!25887))))

(assert (= (and b!45580 ((_ is Node!144) (c!16117 (totalInput!1541 cacheFurthestNullable!45)))) b!45755))

(assert (= (and b!45580 ((_ is Leaf!341) (c!16117 (totalInput!1541 cacheFurthestNullable!45)))) b!45756))

(declare-fun m!20088 () Bool)

(assert (=> b!45755 m!20088))

(declare-fun m!20090 () Bool)

(assert (=> b!45755 m!20090))

(declare-fun m!20092 () Bool)

(assert (=> b!45756 m!20092))

(assert (=> b!45580 m!19828))

(declare-fun setNonEmpty!1173 () Bool)

(declare-fun setRes!1174 () Bool)

(declare-fun tp!31176 () Bool)

(declare-fun setElem!1173 () Context!190)

(assert (=> setNonEmpty!1173 (= setRes!1174 (and tp!31176 (inv!1034 setElem!1173)))))

(declare-fun mapValue!984 () List!748)

(declare-fun setRest!1174 () (InoxSet Context!190))

(assert (=> setNonEmpty!1173 (= (_2!640 (h!6142 mapValue!984)) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1173 true) setRest!1174))))

(declare-fun b!45763 () Bool)

(declare-fun tp!31178 () Bool)

(declare-fun mapDefault!984 () List!748)

(declare-fun e!25905 () Bool)

(declare-fun setRes!1173 () Bool)

(assert (=> b!45763 (= e!25905 (and (inv!1034 (_2!639 (_1!640 (h!6142 mapDefault!984)))) setRes!1173 tp!31178))))

(declare-fun condSetEmpty!1173 () Bool)

(assert (=> b!45763 (= condSetEmpty!1173 (= (_2!640 (h!6142 mapDefault!984)) ((as const (Array Context!190 Bool)) false)))))

(declare-fun mapIsEmpty!984 () Bool)

(declare-fun mapRes!984 () Bool)

(assert (=> mapIsEmpty!984 mapRes!984))

(declare-fun condMapEmpty!984 () Bool)

(assert (=> mapNonEmpty!974 (= condMapEmpty!984 (= mapRest!975 ((as const (Array (_ BitVec 32) List!748)) mapDefault!984)))))

(assert (=> mapNonEmpty!974 (= tp!31085 (and e!25905 mapRes!984))))

(declare-fun setNonEmpty!1174 () Bool)

(declare-fun tp!31179 () Bool)

(declare-fun setElem!1174 () Context!190)

(assert (=> setNonEmpty!1174 (= setRes!1173 (and tp!31179 (inv!1034 setElem!1174)))))

(declare-fun setRest!1173 () (InoxSet Context!190))

(assert (=> setNonEmpty!1174 (= (_2!640 (h!6142 mapDefault!984)) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1174 true) setRest!1173))))

(declare-fun mapNonEmpty!984 () Bool)

(declare-fun tp!31180 () Bool)

(declare-fun e!25904 () Bool)

(assert (=> mapNonEmpty!984 (= mapRes!984 (and tp!31180 e!25904))))

(declare-fun mapRest!984 () (Array (_ BitVec 32) List!748))

(declare-fun mapKey!984 () (_ BitVec 32))

(assert (=> mapNonEmpty!984 (= mapRest!975 (store mapRest!984 mapKey!984 mapValue!984))))

(declare-fun setIsEmpty!1173 () Bool)

(assert (=> setIsEmpty!1173 setRes!1173))

(declare-fun b!45764 () Bool)

(declare-fun tp!31177 () Bool)

(assert (=> b!45764 (= e!25904 (and (inv!1034 (_2!639 (_1!640 (h!6142 mapValue!984)))) setRes!1174 tp!31177))))

(declare-fun condSetEmpty!1174 () Bool)

(assert (=> b!45764 (= condSetEmpty!1174 (= (_2!640 (h!6142 mapValue!984)) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1174 () Bool)

(assert (=> setIsEmpty!1174 setRes!1174))

(assert (= (and mapNonEmpty!974 condMapEmpty!984) mapIsEmpty!984))

(assert (= (and mapNonEmpty!974 (not condMapEmpty!984)) mapNonEmpty!984))

(assert (= (and b!45764 condSetEmpty!1174) setIsEmpty!1174))

(assert (= (and b!45764 (not condSetEmpty!1174)) setNonEmpty!1173))

(assert (= (and mapNonEmpty!984 ((_ is Cons!746) mapValue!984)) b!45764))

(assert (= (and b!45763 condSetEmpty!1173) setIsEmpty!1173))

(assert (= (and b!45763 (not condSetEmpty!1173)) setNonEmpty!1174))

(assert (= (and mapNonEmpty!974 ((_ is Cons!746) mapDefault!984)) b!45763))

(declare-fun m!20094 () Bool)

(assert (=> setNonEmpty!1174 m!20094))

(declare-fun m!20096 () Bool)

(assert (=> b!45763 m!20096))

(declare-fun m!20098 () Bool)

(assert (=> mapNonEmpty!984 m!20098))

(declare-fun m!20100 () Bool)

(assert (=> setNonEmpty!1173 m!20100))

(declare-fun m!20102 () Bool)

(assert (=> b!45764 m!20102))

(declare-fun setRes!1175 () Bool)

(declare-fun tp!31182 () Bool)

(declare-fun b!45765 () Bool)

(declare-fun e!25908 () Bool)

(assert (=> b!45765 (= e!25908 (and (inv!1034 (_2!639 (_1!640 (h!6142 mapValue!975)))) setRes!1175 tp!31182))))

(declare-fun condSetEmpty!1175 () Bool)

(assert (=> b!45765 (= condSetEmpty!1175 (= (_2!640 (h!6142 mapValue!975)) ((as const (Array Context!190 Bool)) false)))))

(declare-fun setIsEmpty!1175 () Bool)

(assert (=> setIsEmpty!1175 setRes!1175))

(declare-fun setNonEmpty!1175 () Bool)

(declare-fun tp!31181 () Bool)

(declare-fun setElem!1175 () Context!190)

(assert (=> setNonEmpty!1175 (= setRes!1175 (and tp!31181 (inv!1034 setElem!1175)))))

(declare-fun setRest!1175 () (InoxSet Context!190))

(assert (=> setNonEmpty!1175 (= (_2!640 (h!6142 mapValue!975)) ((_ map or) (store ((as const (Array Context!190 Bool)) false) setElem!1175 true) setRest!1175))))

(assert (=> mapNonEmpty!974 (= tp!31079 e!25908)))

(assert (= (and b!45765 condSetEmpty!1175) setIsEmpty!1175))

(assert (= (and b!45765 (not condSetEmpty!1175)) setNonEmpty!1175))

(assert (= (and mapNonEmpty!974 ((_ is Cons!746) mapValue!975)) b!45765))

(declare-fun m!20104 () Bool)

(assert (=> b!45765 m!20104))

(declare-fun m!20106 () Bool)

(assert (=> setNonEmpty!1175 m!20106))

(declare-fun b_lambda!263 () Bool)

(assert (= b_lambda!261 (or b!45593 b_lambda!263)))

(declare-fun bs!6295 () Bool)

(declare-fun d!5391 () Bool)

(assert (= bs!6295 (and d!5391 b!45593)))

(assert (=> bs!6295 (= (dynLambda!113 lambda!844 (h!6143 lt!5962)) (rulesProduceIndividualToken!9 Lexer!63 lt!5955 (h!6143 lt!5962)))))

(assert (=> bs!6295 m!19878))

(assert (=> b!45682 d!5391))

(check-sat (not b_next!1181) (not d!5327) (not b!45631) (not b!45756) (not d!5321) (not b!45673) (not b!45704) b_and!1211 (not b!45751) (not b_next!1183) (not b!45675) (not b!45684) (not d!5375) (not b!45677) (not setNonEmpty!1152) (not b!45620) (not setNonEmpty!1150) (not setNonEmpty!1157) (not b!45646) (not b!45644) b_and!1215 (not setNonEmpty!1175) (not b!45763) (not b!45725) (not b!45702) (not setNonEmpty!1173) (not d!5317) b_and!1217 (not setNonEmpty!1151) (not b!45712) (not mapNonEmpty!981) (not d!5367) (not setNonEmpty!1165) (not mapNonEmpty!984) (not d!5335) (not b_next!1173) (not d!5313) (not b!45633) (not b!45753) (not b!45713) (not d!5351) (not b!45689) (not setNonEmpty!1142) (not b!45676) (not setNonEmpty!1167) (not b!45701) (not b!45720) (not b_lambda!263) (not b!45742) (not b!45748) (not setNonEmpty!1168) (not b_next!1177) (not d!5389) (not setNonEmpty!1163) (not b!45750) (not b!45669) (not b!45734) b_and!1207 (not b!45662) b_and!1209 (not b!45672) (not bs!6295) (not b!45580) (not d!5325) (not b!45732) (not d!5331) (not b!45700) (not b!45648) (not b!45660) (not b_next!1179) (not d!5381) (not b!45666) (not b!45752) (not b!45659) (not b!45686) (not b!45618) (not d!5319) (not d!5387) (not b!45765) (not setNonEmpty!1162) (not d!5347) (not d!5349) (not d!5333) (not d!5329) (not d!5323) (not b!45578) (not b!45743) (not setNonEmpty!1166) (not d!5379) (not b!45755) (not d!5361) (not d!5385) (not d!5341) (not b!45711) b_and!1213 (not setNonEmpty!1145) (not b!45619) (not d!5377) (not b!45749) (not b!45733) (not b!45683) (not setNonEmpty!1158) (not b_next!1175) (not setNonEmpty!1164) (not setNonEmpty!1159) (not b!45703) (not d!5353) (not b!45754) (not b!45663) (not d!5383) (not setNonEmpty!1174) (not mapNonEmpty!978) (not b!45647) (not b!45741) (not b!45764))
(check-sat b_and!1211 (not b_next!1183) b_and!1215 b_and!1217 (not b_next!1173) (not b_next!1177) (not b_next!1179) (not b_next!1181) b_and!1213 (not b_next!1175) b_and!1209 b_and!1207)
