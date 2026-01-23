; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65584 () Bool)

(assert start!65584)

(declare-fun b!685438 () Bool)

(declare-fun b_free!19237 () Bool)

(declare-fun b_next!19301 () Bool)

(assert (=> b!685438 (= b_free!19237 (not b_next!19301))))

(declare-fun tp!203340 () Bool)

(declare-fun b_and!63031 () Bool)

(assert (=> b!685438 (= tp!203340 b_and!63031)))

(declare-fun b!685435 () Bool)

(declare-fun b_free!19239 () Bool)

(declare-fun b_next!19303 () Bool)

(assert (=> b!685435 (= b_free!19239 (not b_next!19303))))

(declare-fun tp!203343 () Bool)

(declare-fun b_and!63033 () Bool)

(assert (=> b!685435 (= tp!203343 b_and!63033)))

(declare-fun b!685449 () Bool)

(declare-fun b_free!19241 () Bool)

(declare-fun b_next!19305 () Bool)

(assert (=> b!685449 (= b_free!19241 (not b_next!19305))))

(declare-fun tp!203338 () Bool)

(declare-fun b_and!63035 () Bool)

(assert (=> b!685449 (= tp!203338 b_and!63035)))

(declare-fun b!685427 () Bool)

(declare-fun b_free!19243 () Bool)

(declare-fun b_next!19307 () Bool)

(assert (=> b!685427 (= b_free!19243 (not b_next!19307))))

(declare-fun tp!203331 () Bool)

(declare-fun b_and!63037 () Bool)

(assert (=> b!685427 (= tp!203331 b_and!63037)))

(declare-fun b!685444 () Bool)

(declare-fun b_free!19245 () Bool)

(declare-fun b_next!19309 () Bool)

(assert (=> b!685444 (= b_free!19245 (not b_next!19309))))

(declare-fun tp!203326 () Bool)

(declare-fun b_and!63039 () Bool)

(assert (=> b!685444 (= tp!203326 b_and!63039)))

(declare-fun b!685434 () Bool)

(declare-fun b_free!19247 () Bool)

(declare-fun b_next!19311 () Bool)

(assert (=> b!685434 (= b_free!19247 (not b_next!19311))))

(declare-fun tp!203341 () Bool)

(declare-fun b_and!63041 () Bool)

(assert (=> b!685434 (= tp!203341 b_and!63041)))

(declare-fun b!685433 () Bool)

(declare-fun b_free!19249 () Bool)

(declare-fun b_next!19313 () Bool)

(assert (=> b!685433 (= b_free!19249 (not b_next!19313))))

(declare-fun tp!203329 () Bool)

(declare-fun b_and!63043 () Bool)

(assert (=> b!685433 (= tp!203329 b_and!63043)))

(declare-fun b_free!19251 () Bool)

(declare-fun b_next!19315 () Bool)

(assert (=> b!685433 (= b_free!19251 (not b_next!19315))))

(declare-fun tp!203344 () Bool)

(declare-fun b_and!63045 () Bool)

(assert (=> b!685433 (= tp!203344 b_and!63045)))

(declare-fun b!685425 () Bool)

(declare-fun e!430468 () Bool)

(declare-fun e!430455 () Bool)

(assert (=> b!685425 (= e!430468 e!430455)))

(declare-fun b!685426 () Bool)

(declare-fun e!430456 () Bool)

(declare-fun e!430462 () Bool)

(assert (=> b!685426 (= e!430456 e!430462)))

(declare-fun e!430464 () Bool)

(declare-fun e!430477 () Bool)

(assert (=> b!685427 (= e!430464 (and e!430477 tp!203331))))

(declare-fun b!685428 () Bool)

(declare-fun e!430478 () Bool)

(assert (=> b!685428 (= e!430455 e!430478)))

(declare-fun b!685429 () Bool)

(declare-fun e!430457 () Bool)

(assert (=> b!685429 (= e!430462 e!430457)))

(declare-fun b!685430 () Bool)

(declare-datatypes ((C!4232 0))(
  ( (C!4233 (val!2346 Int)) )
))
(declare-datatypes ((Regex!1815 0))(
  ( (ElementMatch!1815 (c!121194 C!4232)) (Concat!3338 (regOne!4142 Regex!1815) (regTwo!4142 Regex!1815)) (EmptyExpr!1815) (Star!1815 (reg!2144 Regex!1815)) (EmptyLang!1815) (Union!1815 (regOne!4143 Regex!1815) (regTwo!4143 Regex!1815)) )
))
(declare-datatypes ((List!7334 0))(
  ( (Nil!7320) (Cons!7320 (h!12721 Regex!1815) (t!87130 List!7334)) )
))
(declare-datatypes ((Context!450 0))(
  ( (Context!451 (exprs!725 List!7334)) )
))
(declare-datatypes ((tuple2!7644 0))(
  ( (tuple2!7645 (_1!4212 Context!450) (_2!4212 C!4232)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7646 0))(
  ( (tuple2!7647 (_1!4213 tuple2!7644) (_2!4213 (InoxSet Context!450))) )
))
(declare-datatypes ((List!7335 0))(
  ( (Nil!7321) (Cons!7321 (h!12722 tuple2!7646) (t!87131 List!7335)) )
))
(declare-datatypes ((array!2715 0))(
  ( (array!2716 (arr!1229 (Array (_ BitVec 32) (_ BitVec 64))) (size!6013 (_ BitVec 32))) )
))
(declare-datatypes ((array!2717 0))(
  ( (array!2718 (arr!1230 (Array (_ BitVec 32) List!7335)) (size!6014 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1432 0))(
  ( (LongMapFixedSize!1433 (defaultEntry!1072 Int) (mask!2508 (_ BitVec 32)) (extraKeys!963 (_ BitVec 32)) (zeroValue!973 List!7335) (minValue!973 List!7335) (_size!1541 (_ BitVec 32)) (_keys!1010 array!2715) (_values!995 array!2717) (_vacant!777 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2805 0))(
  ( (Cell!2806 (v!17539 LongMapFixedSize!1432)) )
))
(declare-datatypes ((MutLongMap!716 0))(
  ( (LongMap!716 (underlying!1615 Cell!2805)) (MutLongMapExt!715 (__x!5192 Int)) )
))
(declare-fun lt!283817 () MutLongMap!716)

(get-info :version)

(assert (=> b!685430 (= e!430477 (and e!430456 ((_ is LongMap!716) lt!283817)))))

(declare-datatypes ((Cell!2807 0))(
  ( (Cell!2808 (v!17540 MutLongMap!716)) )
))
(declare-datatypes ((Hashable!688 0))(
  ( (HashableExt!687 (__x!5193 Int)) )
))
(declare-datatypes ((MutableMap!688 0))(
  ( (MutableMapExt!687 (__x!5194 Int)) (HashMap!688 (underlying!1616 Cell!2807) (hashF!2596 Hashable!688) (_size!1542 (_ BitVec 32)) (defaultValue!839 Int)) )
))
(declare-datatypes ((CacheUp!346 0))(
  ( (CacheUp!347 (cache!1075 MutableMap!688)) )
))
(declare-fun cacheUp!457 () CacheUp!346)

(assert (=> b!685430 (= lt!283817 (v!17540 (underlying!1616 (cache!1075 cacheUp!457))))))

(declare-fun mapIsEmpty!2855 () Bool)

(declare-fun mapRes!2855 () Bool)

(assert (=> mapIsEmpty!2855 mapRes!2855))

(declare-fun b!685431 () Bool)

(declare-fun e!430453 () Bool)

(declare-fun e!430458 () Bool)

(assert (=> b!685431 (= e!430453 e!430458)))

(declare-fun tp!203335 () Bool)

(declare-fun b!685432 () Bool)

(declare-fun e!430465 () Bool)

(declare-datatypes ((String!9334 0))(
  ( (String!9335 (value!47796 String)) )
))
(declare-datatypes ((List!7336 0))(
  ( (Nil!7322) (Cons!7322 (h!12723 (_ BitVec 16)) (t!87132 List!7336)) )
))
(declare-datatypes ((TokenValue!1523 0))(
  ( (FloatLiteralValue!3046 (text!11106 List!7336)) (TokenValueExt!1522 (__x!5195 Int)) (Broken!7615 (value!47797 List!7336)) (Object!1536) (End!1523) (Def!1523) (Underscore!1523) (Match!1523) (Else!1523) (Error!1523) (Case!1523) (If!1523) (Extends!1523) (Abstract!1523) (Class!1523) (Val!1523) (DelimiterValue!3046 (del!1583 List!7336)) (KeywordValue!1529 (value!47798 List!7336)) (CommentValue!3046 (value!47799 List!7336)) (WhitespaceValue!3046 (value!47800 List!7336)) (IndentationValue!1523 (value!47801 List!7336)) (String!9336) (Int32!1523) (Broken!7616 (value!47802 List!7336)) (Boolean!1524) (Unit!12611) (OperatorValue!1526 (op!1583 List!7336)) (IdentifierValue!3046 (value!47803 List!7336)) (IdentifierValue!3047 (value!47804 List!7336)) (WhitespaceValue!3047 (value!47805 List!7336)) (True!3046) (False!3046) (Broken!7617 (value!47806 List!7336)) (Broken!7618 (value!47807 List!7336)) (True!3047) (RightBrace!1523) (RightBracket!1523) (Colon!1523) (Null!1523) (Comma!1523) (LeftBracket!1523) (False!3047) (LeftBrace!1523) (ImaginaryLiteralValue!1523 (text!11107 List!7336)) (StringLiteralValue!4569 (value!47808 List!7336)) (EOFValue!1523 (value!47809 List!7336)) (IdentValue!1523 (value!47810 List!7336)) (DelimiterValue!3047 (value!47811 List!7336)) (DedentValue!1523 (value!47812 List!7336)) (NewLineValue!1523 (value!47813 List!7336)) (IntegerValue!4569 (value!47814 (_ BitVec 32)) (text!11108 List!7336)) (IntegerValue!4570 (value!47815 Int) (text!11109 List!7336)) (Times!1523) (Or!1523) (Equal!1523) (Minus!1523) (Broken!7619 (value!47816 List!7336)) (And!1523) (Div!1523) (LessEqual!1523) (Mod!1523) (Concat!3339) (Not!1523) (Plus!1523) (SpaceValue!1523 (value!47817 List!7336)) (IntegerValue!4571 (value!47818 Int) (text!11110 List!7336)) (StringLiteralValue!4570 (text!11111 List!7336)) (FloatLiteralValue!3047 (text!11112 List!7336)) (BytesLiteralValue!1523 (value!47819 List!7336)) (CommentValue!3047 (value!47820 List!7336)) (StringLiteralValue!4571 (value!47821 List!7336)) (ErrorTokenValue!1523 (msg!1584 List!7336)) )
))
(declare-datatypes ((List!7337 0))(
  ( (Nil!7323) (Cons!7323 (h!12724 C!4232) (t!87133 List!7337)) )
))
(declare-datatypes ((IArray!5213 0))(
  ( (IArray!5214 (innerList!2664 List!7337)) )
))
(declare-datatypes ((Conc!2606 0))(
  ( (Node!2606 (left!5936 Conc!2606) (right!6266 Conc!2606) (csize!5442 Int) (cheight!2817 Int)) (Leaf!3867 (xs!5255 IArray!5213) (csize!5443 Int)) (Empty!2606) )
))
(declare-datatypes ((BalanceConc!5224 0))(
  ( (BalanceConc!5225 (c!121195 Conc!2606)) )
))
(declare-datatypes ((TokenValueInjection!2782 0))(
  ( (TokenValueInjection!2783 (toValue!2431 Int) (toChars!2290 Int)) )
))
(declare-datatypes ((Rule!2758 0))(
  ( (Rule!2759 (regex!1479 Regex!1815) (tag!1741 String!9334) (isSeparator!1479 Bool) (transformation!1479 TokenValueInjection!2782)) )
))
(declare-datatypes ((List!7338 0))(
  ( (Nil!7324) (Cons!7324 (h!12725 Rule!2758) (t!87134 List!7338)) )
))
(declare-fun rules!1357 () List!7338)

(declare-fun e!430473 () Bool)

(declare-fun inv!9422 (String!9334) Bool)

(declare-fun inv!9424 (TokenValueInjection!2782) Bool)

(assert (=> b!685432 (= e!430473 (and tp!203335 (inv!9422 (tag!1741 (h!12725 rules!1357))) (inv!9424 (transformation!1479 (h!12725 rules!1357))) e!430465))))

(assert (=> b!685433 (= e!430465 (and tp!203329 tp!203344))))

(declare-fun e!430470 () Bool)

(declare-fun e!430469 () Bool)

(assert (=> b!685434 (= e!430470 (and e!430469 tp!203341))))

(declare-fun tp!203323 () Bool)

(declare-fun e!430472 () Bool)

(declare-fun tp!203333 () Bool)

(declare-fun array_inv!894 (array!2715) Bool)

(declare-fun array_inv!895 (array!2717) Bool)

(assert (=> b!685435 (= e!430457 (and tp!203343 tp!203333 tp!203323 (array_inv!894 (_keys!1010 (v!17539 (underlying!1615 (v!17540 (underlying!1616 (cache!1075 cacheUp!457))))))) (array_inv!895 (_values!995 (v!17539 (underlying!1615 (v!17540 (underlying!1616 (cache!1075 cacheUp!457))))))) e!430472))))

(declare-fun b!685436 () Bool)

(declare-fun e!430481 () Bool)

(assert (=> b!685436 (= e!430458 e!430481)))

(declare-fun b!685437 () Bool)

(declare-fun res!312048 () Bool)

(declare-fun e!430463 () Bool)

(assert (=> b!685437 (=> (not res!312048) (not e!430463))))

(declare-fun isEmpty!4830 (List!7338) Bool)

(assert (=> b!685437 (= res!312048 (not (isEmpty!4830 rules!1357)))))

(declare-fun tp!203337 () Bool)

(declare-datatypes ((tuple3!678 0))(
  ( (tuple3!679 (_1!4214 Regex!1815) (_2!4214 Context!450) (_3!390 C!4232)) )
))
(declare-datatypes ((tuple2!7648 0))(
  ( (tuple2!7649 (_1!4215 tuple3!678) (_2!4215 (InoxSet Context!450))) )
))
(declare-datatypes ((List!7339 0))(
  ( (Nil!7325) (Cons!7325 (h!12726 tuple2!7648) (t!87135 List!7339)) )
))
(declare-datatypes ((array!2719 0))(
  ( (array!2720 (arr!1231 (Array (_ BitVec 32) List!7339)) (size!6015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1434 0))(
  ( (LongMapFixedSize!1435 (defaultEntry!1073 Int) (mask!2509 (_ BitVec 32)) (extraKeys!964 (_ BitVec 32)) (zeroValue!974 List!7339) (minValue!974 List!7339) (_size!1543 (_ BitVec 32)) (_keys!1011 array!2715) (_values!996 array!2719) (_vacant!778 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2809 0))(
  ( (Cell!2810 (v!17541 LongMapFixedSize!1434)) )
))
(declare-datatypes ((MutLongMap!717 0))(
  ( (LongMap!717 (underlying!1617 Cell!2809)) (MutLongMapExt!716 (__x!5196 Int)) )
))
(declare-datatypes ((Cell!2811 0))(
  ( (Cell!2812 (v!17542 MutLongMap!717)) )
))
(declare-datatypes ((Hashable!689 0))(
  ( (HashableExt!688 (__x!5197 Int)) )
))
(declare-datatypes ((MutableMap!689 0))(
  ( (MutableMapExt!688 (__x!5198 Int)) (HashMap!689 (underlying!1618 Cell!2811) (hashF!2597 Hashable!689) (_size!1544 (_ BitVec 32)) (defaultValue!840 Int)) )
))
(declare-datatypes ((CacheDown!350 0))(
  ( (CacheDown!351 (cache!1076 MutableMap!689)) )
))
(declare-fun cacheDown!470 () CacheDown!350)

(declare-fun e!430460 () Bool)

(declare-fun tp!203347 () Bool)

(declare-fun array_inv!896 (array!2719) Bool)

(assert (=> b!685438 (= e!430481 (and tp!203340 tp!203347 tp!203337 (array_inv!894 (_keys!1011 (v!17541 (underlying!1617 (v!17542 (underlying!1618 (cache!1076 cacheDown!470))))))) (array_inv!896 (_values!996 (v!17541 (underlying!1617 (v!17542 (underlying!1618 (cache!1076 cacheDown!470))))))) e!430460))))

(declare-fun mapNonEmpty!2855 () Bool)

(declare-fun mapRes!2857 () Bool)

(declare-fun tp!203334 () Bool)

(declare-fun tp!203336 () Bool)

(assert (=> mapNonEmpty!2855 (= mapRes!2857 (and tp!203334 tp!203336))))

(declare-fun mapRest!2856 () (Array (_ BitVec 32) List!7339))

(declare-fun mapValue!2857 () List!7339)

(declare-fun mapKey!2856 () (_ BitVec 32))

(assert (=> mapNonEmpty!2855 (= (arr!1231 (_values!996 (v!17541 (underlying!1617 (v!17542 (underlying!1618 (cache!1076 cacheDown!470))))))) (store mapRest!2856 mapKey!2856 mapValue!2857))))

(declare-fun b!685439 () Bool)

(declare-fun res!312051 () Bool)

(assert (=> b!685439 (=> (not res!312051) (not e!430463))))

(declare-datatypes ((LexerInterface!1294 0))(
  ( (LexerInterfaceExt!1291 (__x!5199 Int)) (Lexer!1292) )
))
(declare-fun thiss!12183 () LexerInterface!1294)

(declare-fun rulesInvariant!1229 (LexerInterface!1294 List!7338) Bool)

(assert (=> b!685439 (= res!312051 (rulesInvariant!1229 thiss!12183 rules!1357))))

(declare-fun b!685440 () Bool)

(declare-fun e!430474 () Bool)

(declare-datatypes ((tuple2!7650 0))(
  ( (tuple2!7651 (_1!4216 (InoxSet Context!450)) (_2!4216 Int)) )
))
(declare-datatypes ((tuple2!7652 0))(
  ( (tuple2!7653 (_1!4217 tuple2!7650) (_2!4217 Int)) )
))
(declare-datatypes ((List!7340 0))(
  ( (Nil!7326) (Cons!7326 (h!12727 tuple2!7652) (t!87136 List!7340)) )
))
(declare-datatypes ((array!2721 0))(
  ( (array!2722 (arr!1232 (Array (_ BitVec 32) List!7340)) (size!6016 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1436 0))(
  ( (LongMapFixedSize!1437 (defaultEntry!1074 Int) (mask!2510 (_ BitVec 32)) (extraKeys!965 (_ BitVec 32)) (zeroValue!975 List!7340) (minValue!975 List!7340) (_size!1545 (_ BitVec 32)) (_keys!1012 array!2715) (_values!997 array!2721) (_vacant!779 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2813 0))(
  ( (Cell!2814 (v!17543 LongMapFixedSize!1436)) )
))
(declare-datatypes ((MutLongMap!718 0))(
  ( (LongMap!718 (underlying!1619 Cell!2813)) (MutLongMapExt!717 (__x!5200 Int)) )
))
(declare-fun lt!283818 () MutLongMap!718)

(assert (=> b!685440 (= e!430474 (and e!430468 ((_ is LongMap!718) lt!283818)))))

(declare-datatypes ((Hashable!690 0))(
  ( (HashableExt!689 (__x!5201 Int)) )
))
(declare-datatypes ((Cell!2815 0))(
  ( (Cell!2816 (v!17544 MutLongMap!718)) )
))
(declare-datatypes ((MutableMap!690 0))(
  ( (MutableMapExt!689 (__x!5202 Int)) (HashMap!690 (underlying!1620 Cell!2815) (hashF!2598 Hashable!690) (_size!1546 (_ BitVec 32)) (defaultValue!841 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!6 0))(
  ( (CacheFindLongestMatch!7 (cache!1077 MutableMap!690) (totalInput!1778 BalanceConc!5224)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!6)

(assert (=> b!685440 (= lt!283818 (v!17544 (underlying!1620 (cache!1077 cacheFindLongestMatch!59))))))

(declare-fun mapNonEmpty!2856 () Bool)

(declare-fun tp!203345 () Bool)

(declare-fun tp!203325 () Bool)

(assert (=> mapNonEmpty!2856 (= mapRes!2855 (and tp!203345 tp!203325))))

(declare-fun mapValue!2856 () List!7340)

(declare-fun mapRest!2855 () (Array (_ BitVec 32) List!7340))

(declare-fun mapKey!2857 () (_ BitVec 32))

(assert (=> mapNonEmpty!2856 (= (arr!1232 (_values!997 (v!17543 (underlying!1619 (v!17544 (underlying!1620 (cache!1077 cacheFindLongestMatch!59))))))) (store mapRest!2855 mapKey!2857 mapValue!2856))))

(declare-fun mapNonEmpty!2857 () Bool)

(declare-fun mapRes!2856 () Bool)

(declare-fun tp!203342 () Bool)

(declare-fun tp!203339 () Bool)

(assert (=> mapNonEmpty!2857 (= mapRes!2856 (and tp!203342 tp!203339))))

(declare-fun mapKey!2855 () (_ BitVec 32))

(declare-fun mapRest!2857 () (Array (_ BitVec 32) List!7335))

(declare-fun mapValue!2855 () List!7335)

(assert (=> mapNonEmpty!2857 (= (arr!1230 (_values!995 (v!17539 (underlying!1615 (v!17540 (underlying!1616 (cache!1075 cacheUp!457))))))) (store mapRest!2857 mapKey!2855 mapValue!2855))))

(declare-fun b!685441 () Bool)

(declare-fun e!430482 () Bool)

(assert (=> b!685441 (= e!430482 e!430464)))

(declare-fun mapIsEmpty!2856 () Bool)

(assert (=> mapIsEmpty!2856 mapRes!2856))

(declare-fun e!430461 () Bool)

(declare-fun b!685442 () Bool)

(declare-fun e!430467 () Bool)

(declare-fun e!430476 () Bool)

(declare-fun inv!9425 (BalanceConc!5224) Bool)

(assert (=> b!685442 (= e!430467 (and e!430461 (inv!9425 (totalInput!1778 cacheFindLongestMatch!59)) e!430476))))

(declare-fun b!685443 () Bool)

(declare-fun res!312052 () Bool)

(assert (=> b!685443 (=> (not res!312052) (not e!430463))))

(declare-fun valid!600 (CacheUp!346) Bool)

(assert (=> b!685443 (= res!312052 (valid!600 cacheUp!457))))

(declare-fun tp!203327 () Bool)

(declare-fun tp!203328 () Bool)

(declare-fun e!430475 () Bool)

(declare-fun array_inv!897 (array!2721) Bool)

(assert (=> b!685444 (= e!430478 (and tp!203326 tp!203327 tp!203328 (array_inv!894 (_keys!1012 (v!17543 (underlying!1619 (v!17544 (underlying!1620 (cache!1077 cacheFindLongestMatch!59))))))) (array_inv!897 (_values!997 (v!17543 (underlying!1619 (v!17544 (underlying!1620 (cache!1077 cacheFindLongestMatch!59))))))) e!430475))))

(declare-fun b!685445 () Bool)

(declare-fun res!312049 () Bool)

(assert (=> b!685445 (=> (not res!312049) (not e!430463))))

(declare-fun valid!601 (CacheDown!350) Bool)

(assert (=> b!685445 (= res!312049 (valid!601 cacheDown!470))))

(declare-fun b!685446 () Bool)

(declare-fun e!430466 () Bool)

(assert (=> b!685446 (= e!430466 e!430470)))

(declare-fun b!685447 () Bool)

(declare-fun tp!203330 () Bool)

(assert (=> b!685447 (= e!430475 (and tp!203330 mapRes!2855))))

(declare-fun condMapEmpty!2855 () Bool)

(declare-fun mapDefault!2856 () List!7340)

(assert (=> b!685447 (= condMapEmpty!2855 (= (arr!1232 (_values!997 (v!17543 (underlying!1619 (v!17544 (underlying!1620 (cache!1077 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7340)) mapDefault!2856)))))

(declare-fun res!312050 () Bool)

(assert (=> start!65584 (=> (not res!312050) (not e!430463))))

(assert (=> start!65584 (= res!312050 ((_ is Lexer!1292) thiss!12183))))

(assert (=> start!65584 e!430463))

(declare-fun inv!9426 (CacheFindLongestMatch!6) Bool)

(assert (=> start!65584 (and (inv!9426 cacheFindLongestMatch!59) e!430467)))

(declare-fun inv!9427 (CacheUp!346) Bool)

(assert (=> start!65584 (and (inv!9427 cacheUp!457) e!430482)))

(declare-fun inv!9428 (CacheDown!350) Bool)

(assert (=> start!65584 (and (inv!9428 cacheDown!470) e!430466)))

(assert (=> start!65584 true))

(declare-fun e!430459 () Bool)

(assert (=> start!65584 e!430459))

(declare-fun b!685448 () Bool)

(assert (=> b!685448 (= e!430463 false)))

(declare-fun lt!283819 () Bool)

(declare-fun valid!602 (CacheFindLongestMatch!6) Bool)

(assert (=> b!685448 (= lt!283819 (valid!602 cacheFindLongestMatch!59))))

(assert (=> b!685449 (= e!430461 (and e!430474 tp!203338))))

(declare-fun b!685450 () Bool)

(declare-fun tp!203332 () Bool)

(assert (=> b!685450 (= e!430460 (and tp!203332 mapRes!2857))))

(declare-fun condMapEmpty!2856 () Bool)

(declare-fun mapDefault!2855 () List!7339)

(assert (=> b!685450 (= condMapEmpty!2856 (= (arr!1231 (_values!996 (v!17541 (underlying!1617 (v!17542 (underlying!1618 (cache!1076 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7339)) mapDefault!2855)))))

(declare-fun b!685451 () Bool)

(declare-fun lt!283820 () MutLongMap!717)

(assert (=> b!685451 (= e!430469 (and e!430453 ((_ is LongMap!717) lt!283820)))))

(assert (=> b!685451 (= lt!283820 (v!17542 (underlying!1618 (cache!1076 cacheDown!470))))))

(declare-fun mapIsEmpty!2857 () Bool)

(assert (=> mapIsEmpty!2857 mapRes!2857))

(declare-fun b!685452 () Bool)

(declare-fun tp!203324 () Bool)

(assert (=> b!685452 (= e!430459 (and e!430473 tp!203324))))

(declare-fun b!685453 () Bool)

(declare-fun tp!203346 () Bool)

(declare-fun inv!9429 (Conc!2606) Bool)

(assert (=> b!685453 (= e!430476 (and (inv!9429 (c!121195 (totalInput!1778 cacheFindLongestMatch!59))) tp!203346))))

(declare-fun b!685454 () Bool)

(declare-fun tp!203348 () Bool)

(assert (=> b!685454 (= e!430472 (and tp!203348 mapRes!2856))))

(declare-fun condMapEmpty!2857 () Bool)

(declare-fun mapDefault!2857 () List!7335)

(assert (=> b!685454 (= condMapEmpty!2857 (= (arr!1230 (_values!995 (v!17539 (underlying!1615 (v!17540 (underlying!1616 (cache!1075 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7335)) mapDefault!2857)))))

(assert (= (and start!65584 res!312050) b!685437))

(assert (= (and b!685437 res!312048) b!685439))

(assert (= (and b!685439 res!312051) b!685443))

(assert (= (and b!685443 res!312052) b!685445))

(assert (= (and b!685445 res!312049) b!685448))

(assert (= (and b!685447 condMapEmpty!2855) mapIsEmpty!2855))

(assert (= (and b!685447 (not condMapEmpty!2855)) mapNonEmpty!2856))

(assert (= b!685444 b!685447))

(assert (= b!685428 b!685444))

(assert (= b!685425 b!685428))

(assert (= (and b!685440 ((_ is LongMap!718) (v!17544 (underlying!1620 (cache!1077 cacheFindLongestMatch!59))))) b!685425))

(assert (= b!685449 b!685440))

(assert (= (and b!685442 ((_ is HashMap!690) (cache!1077 cacheFindLongestMatch!59))) b!685449))

(assert (= b!685442 b!685453))

(assert (= start!65584 b!685442))

(assert (= (and b!685454 condMapEmpty!2857) mapIsEmpty!2856))

(assert (= (and b!685454 (not condMapEmpty!2857)) mapNonEmpty!2857))

(assert (= b!685435 b!685454))

(assert (= b!685429 b!685435))

(assert (= b!685426 b!685429))

(assert (= (and b!685430 ((_ is LongMap!716) (v!17540 (underlying!1616 (cache!1075 cacheUp!457))))) b!685426))

(assert (= b!685427 b!685430))

(assert (= (and b!685441 ((_ is HashMap!688) (cache!1075 cacheUp!457))) b!685427))

(assert (= start!65584 b!685441))

(assert (= (and b!685450 condMapEmpty!2856) mapIsEmpty!2857))

(assert (= (and b!685450 (not condMapEmpty!2856)) mapNonEmpty!2855))

(assert (= b!685438 b!685450))

(assert (= b!685436 b!685438))

(assert (= b!685431 b!685436))

(assert (= (and b!685451 ((_ is LongMap!717) (v!17542 (underlying!1618 (cache!1076 cacheDown!470))))) b!685431))

(assert (= b!685434 b!685451))

(assert (= (and b!685446 ((_ is HashMap!689) (cache!1076 cacheDown!470))) b!685434))

(assert (= start!65584 b!685446))

(assert (= b!685432 b!685433))

(assert (= b!685452 b!685432))

(assert (= (and start!65584 ((_ is Cons!7324) rules!1357)) b!685452))

(declare-fun m!942211 () Bool)

(assert (=> mapNonEmpty!2857 m!942211))

(declare-fun m!942213 () Bool)

(assert (=> b!685442 m!942213))

(declare-fun m!942215 () Bool)

(assert (=> mapNonEmpty!2856 m!942215))

(declare-fun m!942217 () Bool)

(assert (=> b!685439 m!942217))

(declare-fun m!942219 () Bool)

(assert (=> b!685438 m!942219))

(declare-fun m!942221 () Bool)

(assert (=> b!685438 m!942221))

(declare-fun m!942223 () Bool)

(assert (=> mapNonEmpty!2855 m!942223))

(declare-fun m!942225 () Bool)

(assert (=> b!685443 m!942225))

(declare-fun m!942227 () Bool)

(assert (=> b!685435 m!942227))

(declare-fun m!942229 () Bool)

(assert (=> b!685435 m!942229))

(declare-fun m!942231 () Bool)

(assert (=> b!685453 m!942231))

(declare-fun m!942233 () Bool)

(assert (=> b!685432 m!942233))

(declare-fun m!942235 () Bool)

(assert (=> b!685432 m!942235))

(declare-fun m!942237 () Bool)

(assert (=> b!685444 m!942237))

(declare-fun m!942239 () Bool)

(assert (=> b!685444 m!942239))

(declare-fun m!942241 () Bool)

(assert (=> b!685437 m!942241))

(declare-fun m!942243 () Bool)

(assert (=> b!685448 m!942243))

(declare-fun m!942245 () Bool)

(assert (=> start!65584 m!942245))

(declare-fun m!942247 () Bool)

(assert (=> start!65584 m!942247))

(declare-fun m!942249 () Bool)

(assert (=> start!65584 m!942249))

(declare-fun m!942251 () Bool)

(assert (=> b!685445 m!942251))

(check-sat b_and!63039 (not b!685452) b_and!63033 b_and!63031 (not mapNonEmpty!2855) (not b!685435) (not b!685438) (not b_next!19305) b_and!63035 (not b!685454) b_and!63041 b_and!63045 (not b!685450) (not b_next!19311) b_and!63037 (not b!685448) (not b!685432) (not b!685447) (not b_next!19307) (not b_next!19301) (not b!685437) (not b!685453) (not b!685444) (not b_next!19303) (not b!685439) b_and!63043 (not b!685442) (not b_next!19315) (not start!65584) (not b!685445) (not mapNonEmpty!2857) (not b_next!19309) (not b!685443) (not mapNonEmpty!2856) (not b_next!19313))
(check-sat b_and!63039 b_and!63033 b_and!63037 (not b_next!19307) (not b_next!19301) b_and!63031 (not b_next!19303) (not b_next!19305) b_and!63035 b_and!63041 b_and!63045 (not b_next!19311) b_and!63043 (not b_next!19315) (not b_next!19309) (not b_next!19313))
