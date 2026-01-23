; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139534 () Bool)

(assert start!139534)

(declare-fun b!1484614 () Bool)

(declare-fun b_free!38471 () Bool)

(declare-fun b_next!39175 () Bool)

(assert (=> b!1484614 (= b_free!38471 (not b_next!39175))))

(declare-fun tp!421822 () Bool)

(declare-fun b_and!103189 () Bool)

(assert (=> b!1484614 (= tp!421822 b_and!103189)))

(declare-fun b!1484605 () Bool)

(declare-fun b_free!38473 () Bool)

(declare-fun b_next!39177 () Bool)

(assert (=> b!1484605 (= b_free!38473 (not b_next!39177))))

(declare-fun tp!421826 () Bool)

(declare-fun b_and!103191 () Bool)

(assert (=> b!1484605 (= tp!421826 b_and!103191)))

(declare-fun b_free!38475 () Bool)

(declare-fun b_next!39179 () Bool)

(assert (=> b!1484605 (= b_free!38475 (not b_next!39179))))

(declare-fun tp!421847 () Bool)

(declare-fun b_and!103193 () Bool)

(assert (=> b!1484605 (= tp!421847 b_and!103193)))

(declare-fun b!1484603 () Bool)

(declare-fun b_free!38477 () Bool)

(declare-fun b_next!39181 () Bool)

(assert (=> b!1484603 (= b_free!38477 (not b_next!39181))))

(declare-fun tp!421825 () Bool)

(declare-fun b_and!103195 () Bool)

(assert (=> b!1484603 (= tp!421825 b_and!103195)))

(declare-fun b!1484609 () Bool)

(declare-fun b_free!38479 () Bool)

(declare-fun b_next!39183 () Bool)

(assert (=> b!1484609 (= b_free!38479 (not b_next!39183))))

(declare-fun tp!421820 () Bool)

(declare-fun b_and!103197 () Bool)

(assert (=> b!1484609 (= tp!421820 b_and!103197)))

(declare-fun b!1484620 () Bool)

(declare-fun b_free!38481 () Bool)

(declare-fun b_next!39185 () Bool)

(assert (=> b!1484620 (= b_free!38481 (not b_next!39185))))

(declare-fun tp!421838 () Bool)

(declare-fun b_and!103199 () Bool)

(assert (=> b!1484620 (= tp!421838 b_and!103199)))

(declare-fun b!1484616 () Bool)

(declare-fun b_free!38483 () Bool)

(declare-fun b_next!39187 () Bool)

(assert (=> b!1484616 (= b_free!38483 (not b_next!39187))))

(declare-fun tp!421832 () Bool)

(declare-fun b_and!103201 () Bool)

(assert (=> b!1484616 (= tp!421832 b_and!103201)))

(declare-fun b!1484629 () Bool)

(declare-fun b_free!38485 () Bool)

(declare-fun b_next!39189 () Bool)

(assert (=> b!1484629 (= b_free!38485 (not b_next!39189))))

(declare-fun tp!421821 () Bool)

(declare-fun b_and!103203 () Bool)

(assert (=> b!1484629 (= tp!421821 b_and!103203)))

(declare-fun b!1484592 () Bool)

(declare-fun e!949467 () Bool)

(declare-fun e!949484 () Bool)

(assert (=> b!1484592 (= e!949467 e!949484)))

(declare-fun b!1484593 () Bool)

(declare-fun e!949504 () Bool)

(declare-datatypes ((C!8416 0))(
  ( (C!8417 (val!4780 Int)) )
))
(declare-datatypes ((Regex!4119 0))(
  ( (ElementMatch!4119 (c!243251 C!8416)) (Concat!7014 (regOne!8750 Regex!4119) (regTwo!8750 Regex!4119)) (EmptyExpr!4119) (Star!4119 (reg!4448 Regex!4119)) (EmptyLang!4119) (Union!4119 (regOne!8751 Regex!4119) (regTwo!8751 Regex!4119)) )
))
(declare-datatypes ((List!15812 0))(
  ( (Nil!15744) (Cons!15744 (h!21145 Regex!4119) (t!137734 List!15812)) )
))
(declare-datatypes ((Context!1274 0))(
  ( (Context!1275 (exprs!1137 List!15812)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1210 0))(
  ( (tuple3!1211 (_1!8098 (InoxSet Context!1274)) (_2!8098 Int) (_3!896 Int)) )
))
(declare-datatypes ((tuple2!14404 0))(
  ( (tuple2!14405 (_1!8099 tuple3!1210) (_2!8099 Int)) )
))
(declare-datatypes ((List!15813 0))(
  ( (Nil!15745) (Cons!15745 (h!21146 tuple2!14404) (t!137735 List!15813)) )
))
(declare-datatypes ((array!4840 0))(
  ( (array!4841 (arr!2159 (Array (_ BitVec 32) List!15813)) (size!12750 (_ BitVec 32))) )
))
(declare-datatypes ((array!4842 0))(
  ( (array!4843 (arr!2160 (Array (_ BitVec 32) (_ BitVec 64))) (size!12751 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2730 0))(
  ( (LongMapFixedSize!2731 (defaultEntry!1725 Int) (mask!4513 (_ BitVec 32)) (extraKeys!1612 (_ BitVec 32)) (zeroValue!1622 List!15813) (minValue!1622 List!15813) (_size!2811 (_ BitVec 32)) (_keys!1659 array!4842) (_values!1644 array!4840) (_vacant!1426 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5345 0))(
  ( (Cell!5346 (v!22582 LongMapFixedSize!2730)) )
))
(declare-datatypes ((MutLongMap!1365 0))(
  ( (LongMap!1365 (underlying!2939 Cell!5345)) (MutLongMapExt!1364 (__x!9622 Int)) )
))
(declare-datatypes ((Cell!5347 0))(
  ( (Cell!5348 (v!22583 MutLongMap!1365)) )
))
(declare-datatypes ((Hashable!1309 0))(
  ( (HashableExt!1308 (__x!9623 Int)) )
))
(declare-datatypes ((MutableMap!1309 0))(
  ( (MutableMapExt!1308 (__x!9624 Int)) (HashMap!1309 (underlying!2940 Cell!5347) (hashF!3228 Hashable!1309) (_size!2812 (_ BitVec 32)) (defaultValue!1469 Int)) )
))
(declare-datatypes ((List!15814 0))(
  ( (Nil!15746) (Cons!15746 (h!21147 C!8416) (t!137736 List!15814)) )
))
(declare-datatypes ((IArray!10729 0))(
  ( (IArray!10730 (innerList!5422 List!15814)) )
))
(declare-datatypes ((Conc!5362 0))(
  ( (Node!5362 (left!13258 Conc!5362) (right!13588 Conc!5362) (csize!10954 Int) (cheight!5573 Int)) (Leaf!7967 (xs!8119 IArray!10729) (csize!10955 Int)) (Empty!5362) )
))
(declare-datatypes ((BalanceConc!10666 0))(
  ( (BalanceConc!10667 (c!243252 Conc!5362)) )
))
(declare-datatypes ((CacheFurthestNullable!196 0))(
  ( (CacheFurthestNullable!197 (cache!1690 MutableMap!1309) (totalInput!2233 BalanceConc!10666)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!196)

(declare-fun tp!421835 () Bool)

(declare-fun inv!20965 (Conc!5362) Bool)

(assert (=> b!1484593 (= e!949504 (and (inv!20965 (c!243252 (totalInput!2233 cacheFurthestNullable!64))) tp!421835))))

(declare-fun b!1484594 () Bool)

(declare-fun e!949491 () Bool)

(declare-fun treated!70 () BalanceConc!10666)

(declare-fun tp!421845 () Bool)

(assert (=> b!1484594 (= e!949491 (and (inv!20965 (c!243252 treated!70)) tp!421845))))

(declare-fun res!670491 () Bool)

(declare-fun e!949502 () Bool)

(assert (=> start!139534 (=> (not res!670491) (not e!949502))))

(declare-datatypes ((LexerInterface!2461 0))(
  ( (LexerInterfaceExt!2458 (__x!9625 Int)) (Lexer!2459) )
))
(declare-fun thiss!13241 () LexerInterface!2461)

(get-info :version)

(assert (=> start!139534 (= res!670491 ((_ is Lexer!2459) thiss!13241))))

(assert (=> start!139534 e!949502))

(declare-datatypes ((List!15815 0))(
  ( (Nil!15747) (Cons!15747 (h!21148 (_ BitVec 16)) (t!137737 List!15815)) )
))
(declare-datatypes ((TokenValue!2895 0))(
  ( (FloatLiteralValue!5790 (text!20710 List!15815)) (TokenValueExt!2894 (__x!9626 Int)) (Broken!14475 (value!89575 List!15815)) (Object!2962) (End!2895) (Def!2895) (Underscore!2895) (Match!2895) (Else!2895) (Error!2895) (Case!2895) (If!2895) (Extends!2895) (Abstract!2895) (Class!2895) (Val!2895) (DelimiterValue!5790 (del!2955 List!15815)) (KeywordValue!2901 (value!89576 List!15815)) (CommentValue!5790 (value!89577 List!15815)) (WhitespaceValue!5790 (value!89578 List!15815)) (IndentationValue!2895 (value!89579 List!15815)) (String!18734) (Int32!2895) (Broken!14476 (value!89580 List!15815)) (Boolean!2896) (Unit!25611) (OperatorValue!2898 (op!2955 List!15815)) (IdentifierValue!5790 (value!89581 List!15815)) (IdentifierValue!5791 (value!89582 List!15815)) (WhitespaceValue!5791 (value!89583 List!15815)) (True!5790) (False!5790) (Broken!14477 (value!89584 List!15815)) (Broken!14478 (value!89585 List!15815)) (True!5791) (RightBrace!2895) (RightBracket!2895) (Colon!2895) (Null!2895) (Comma!2895) (LeftBracket!2895) (False!5791) (LeftBrace!2895) (ImaginaryLiteralValue!2895 (text!20711 List!15815)) (StringLiteralValue!8685 (value!89586 List!15815)) (EOFValue!2895 (value!89587 List!15815)) (IdentValue!2895 (value!89588 List!15815)) (DelimiterValue!5791 (value!89589 List!15815)) (DedentValue!2895 (value!89590 List!15815)) (NewLineValue!2895 (value!89591 List!15815)) (IntegerValue!8685 (value!89592 (_ BitVec 32)) (text!20712 List!15815)) (IntegerValue!8686 (value!89593 Int) (text!20713 List!15815)) (Times!2895) (Or!2895) (Equal!2895) (Minus!2895) (Broken!14479 (value!89594 List!15815)) (And!2895) (Div!2895) (LessEqual!2895) (Mod!2895) (Concat!7015) (Not!2895) (Plus!2895) (SpaceValue!2895 (value!89595 List!15815)) (IntegerValue!8687 (value!89596 Int) (text!20714 List!15815)) (StringLiteralValue!8686 (text!20715 List!15815)) (FloatLiteralValue!5791 (text!20716 List!15815)) (BytesLiteralValue!2895 (value!89597 List!15815)) (CommentValue!5791 (value!89598 List!15815)) (StringLiteralValue!8687 (value!89599 List!15815)) (ErrorTokenValue!2895 (msg!2956 List!15815)) )
))
(declare-datatypes ((String!18735 0))(
  ( (String!18736 (value!89600 String)) )
))
(declare-datatypes ((TokenValueInjection!5450 0))(
  ( (TokenValueInjection!5451 (toValue!4146 Int) (toChars!4005 Int)) )
))
(declare-datatypes ((Rule!5410 0))(
  ( (Rule!5411 (regex!2805 Regex!4119) (tag!3069 String!18735) (isSeparator!2805 Bool) (transformation!2805 TokenValueInjection!5450)) )
))
(declare-datatypes ((Token!5272 0))(
  ( (Token!5273 (value!89601 TokenValue!2895) (rule!4582 Rule!5410) (size!12752 Int) (originalCharacters!3667 List!15814)) )
))
(declare-datatypes ((List!15816 0))(
  ( (Nil!15748) (Cons!15748 (h!21149 Token!5272) (t!137738 List!15816)) )
))
(declare-datatypes ((IArray!10731 0))(
  ( (IArray!10732 (innerList!5423 List!15816)) )
))
(declare-datatypes ((Conc!5363 0))(
  ( (Node!5363 (left!13259 Conc!5363) (right!13589 Conc!5363) (csize!10956 Int) (cheight!5574 Int)) (Leaf!7968 (xs!8120 IArray!10731) (csize!10957 Int)) (Empty!5363) )
))
(declare-datatypes ((BalanceConc!10668 0))(
  ( (BalanceConc!10669 (c!243253 Conc!5363)) )
))
(declare-fun acc!392 () BalanceConc!10668)

(declare-fun e!949490 () Bool)

(declare-fun inv!20966 (BalanceConc!10668) Bool)

(assert (=> start!139534 (and (inv!20966 acc!392) e!949490)))

(declare-datatypes ((tuple2!14406 0))(
  ( (tuple2!14407 (_1!8100 Context!1274) (_2!8100 C!8416)) )
))
(declare-datatypes ((tuple2!14408 0))(
  ( (tuple2!14409 (_1!8101 tuple2!14406) (_2!8101 (InoxSet Context!1274))) )
))
(declare-datatypes ((List!15817 0))(
  ( (Nil!15749) (Cons!15749 (h!21150 tuple2!14408) (t!137739 List!15817)) )
))
(declare-datatypes ((array!4844 0))(
  ( (array!4845 (arr!2161 (Array (_ BitVec 32) List!15817)) (size!12753 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2732 0))(
  ( (LongMapFixedSize!2733 (defaultEntry!1726 Int) (mask!4514 (_ BitVec 32)) (extraKeys!1613 (_ BitVec 32)) (zeroValue!1623 List!15817) (minValue!1623 List!15817) (_size!2813 (_ BitVec 32)) (_keys!1660 array!4842) (_values!1645 array!4844) (_vacant!1427 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1310 0))(
  ( (HashableExt!1309 (__x!9627 Int)) )
))
(declare-datatypes ((Cell!5349 0))(
  ( (Cell!5350 (v!22584 LongMapFixedSize!2732)) )
))
(declare-datatypes ((MutLongMap!1366 0))(
  ( (LongMap!1366 (underlying!2941 Cell!5349)) (MutLongMapExt!1365 (__x!9628 Int)) )
))
(declare-datatypes ((Cell!5351 0))(
  ( (Cell!5352 (v!22585 MutLongMap!1366)) )
))
(declare-datatypes ((MutableMap!1310 0))(
  ( (MutableMapExt!1309 (__x!9629 Int)) (HashMap!1310 (underlying!2942 Cell!5351) (hashF!3229 Hashable!1310) (_size!2814 (_ BitVec 32)) (defaultValue!1470 Int)) )
))
(declare-datatypes ((CacheUp!772 0))(
  ( (CacheUp!773 (cache!1691 MutableMap!1310)) )
))
(declare-fun cacheUp!616 () CacheUp!772)

(declare-fun e!949475 () Bool)

(declare-fun inv!20967 (CacheUp!772) Bool)

(assert (=> start!139534 (and (inv!20967 cacheUp!616) e!949475)))

(declare-datatypes ((tuple3!1212 0))(
  ( (tuple3!1213 (_1!8102 Regex!4119) (_2!8102 Context!1274) (_3!897 C!8416)) )
))
(declare-datatypes ((tuple2!14410 0))(
  ( (tuple2!14411 (_1!8103 tuple3!1212) (_2!8103 (InoxSet Context!1274))) )
))
(declare-datatypes ((List!15818 0))(
  ( (Nil!15750) (Cons!15750 (h!21151 tuple2!14410) (t!137740 List!15818)) )
))
(declare-datatypes ((array!4846 0))(
  ( (array!4847 (arr!2162 (Array (_ BitVec 32) List!15818)) (size!12754 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2734 0))(
  ( (LongMapFixedSize!2735 (defaultEntry!1727 Int) (mask!4515 (_ BitVec 32)) (extraKeys!1614 (_ BitVec 32)) (zeroValue!1624 List!15818) (minValue!1624 List!15818) (_size!2815 (_ BitVec 32)) (_keys!1661 array!4842) (_values!1646 array!4846) (_vacant!1428 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5353 0))(
  ( (Cell!5354 (v!22586 LongMapFixedSize!2734)) )
))
(declare-datatypes ((MutLongMap!1367 0))(
  ( (LongMap!1367 (underlying!2943 Cell!5353)) (MutLongMapExt!1366 (__x!9630 Int)) )
))
(declare-datatypes ((Cell!5355 0))(
  ( (Cell!5356 (v!22587 MutLongMap!1367)) )
))
(declare-datatypes ((Hashable!1311 0))(
  ( (HashableExt!1310 (__x!9631 Int)) )
))
(declare-datatypes ((MutableMap!1311 0))(
  ( (MutableMapExt!1310 (__x!9632 Int)) (HashMap!1311 (underlying!2944 Cell!5355) (hashF!3230 Hashable!1311) (_size!2816 (_ BitVec 32)) (defaultValue!1471 Int)) )
))
(declare-datatypes ((CacheDown!778 0))(
  ( (CacheDown!779 (cache!1692 MutableMap!1311)) )
))
(declare-fun cacheDown!629 () CacheDown!778)

(declare-fun e!949486 () Bool)

(declare-fun inv!20968 (CacheDown!778) Bool)

(assert (=> start!139534 (and (inv!20968 cacheDown!629) e!949486)))

(declare-fun input!1102 () BalanceConc!10666)

(declare-fun e!949469 () Bool)

(declare-fun inv!20969 (BalanceConc!10666) Bool)

(assert (=> start!139534 (and (inv!20969 input!1102) e!949469)))

(assert (=> start!139534 (and (inv!20969 treated!70) e!949491)))

(assert (=> start!139534 true))

(declare-fun e!949493 () Bool)

(assert (=> start!139534 e!949493))

(declare-fun e!949503 () Bool)

(declare-fun inv!20970 (CacheFurthestNullable!196) Bool)

(assert (=> start!139534 (and (inv!20970 cacheFurthestNullable!64) e!949503)))

(declare-fun totalInput!458 () BalanceConc!10666)

(declare-fun e!949470 () Bool)

(assert (=> start!139534 (and (inv!20969 totalInput!458) e!949470)))

(declare-fun b!1484595 () Bool)

(declare-fun e!949500 () Bool)

(declare-fun e!949472 () Bool)

(assert (=> b!1484595 (= e!949500 e!949472)))

(declare-fun b!1484596 () Bool)

(declare-fun e!949492 () Bool)

(declare-fun e!949479 () Bool)

(assert (=> b!1484596 (= e!949492 e!949479)))

(declare-fun mapNonEmpty!6528 () Bool)

(declare-fun mapRes!6528 () Bool)

(declare-fun tp!421841 () Bool)

(declare-fun tp!421844 () Bool)

(assert (=> mapNonEmpty!6528 (= mapRes!6528 (and tp!421841 tp!421844))))

(declare-fun mapRest!6530 () (Array (_ BitVec 32) List!15813))

(declare-fun mapKey!6530 () (_ BitVec 32))

(declare-fun mapValue!6529 () List!15813)

(assert (=> mapNonEmpty!6528 (= (arr!2159 (_values!1644 (v!22582 (underlying!2939 (v!22583 (underlying!2940 (cache!1690 cacheFurthestNullable!64))))))) (store mapRest!6530 mapKey!6530 mapValue!6529))))

(declare-fun b!1484597 () Bool)

(declare-fun e!949480 () Bool)

(assert (=> b!1484597 (= e!949475 e!949480)))

(declare-fun b!1484598 () Bool)

(declare-fun tp!421828 () Bool)

(declare-fun inv!20971 (Conc!5363) Bool)

(assert (=> b!1484598 (= e!949490 (and (inv!20971 (c!243253 acc!392)) tp!421828))))

(declare-fun b!1484599 () Bool)

(declare-fun res!670485 () Bool)

(declare-fun e!949478 () Bool)

(assert (=> b!1484599 (=> (not res!670485) (not e!949478))))

(assert (=> b!1484599 (= res!670485 (= (totalInput!2233 cacheFurthestNullable!64) totalInput!458))))

(declare-fun mapNonEmpty!6529 () Bool)

(declare-fun mapRes!6529 () Bool)

(declare-fun tp!421823 () Bool)

(declare-fun tp!421834 () Bool)

(assert (=> mapNonEmpty!6529 (= mapRes!6529 (and tp!421823 tp!421834))))

(declare-fun mapKey!6528 () (_ BitVec 32))

(declare-fun mapValue!6530 () List!15818)

(declare-fun mapRest!6528 () (Array (_ BitVec 32) List!15818))

(assert (=> mapNonEmpty!6529 (= (arr!2162 (_values!1646 (v!22586 (underlying!2943 (v!22587 (underlying!2944 (cache!1692 cacheDown!629))))))) (store mapRest!6528 mapKey!6528 mapValue!6530))))

(declare-fun mapIsEmpty!6528 () Bool)

(declare-fun mapRes!6530 () Bool)

(assert (=> mapIsEmpty!6528 mapRes!6530))

(declare-fun b!1484600 () Bool)

(declare-fun res!670486 () Bool)

(assert (=> b!1484600 (=> (not res!670486) (not e!949502))))

(declare-datatypes ((List!15819 0))(
  ( (Nil!15751) (Cons!15751 (h!21152 Rule!5410) (t!137741 List!15819)) )
))
(declare-fun rules!1640 () List!15819)

(declare-fun rulesInvariant!2248 (LexerInterface!2461 List!15819) Bool)

(assert (=> b!1484600 (= res!670486 (rulesInvariant!2248 thiss!13241 rules!1640))))

(declare-fun b!1484601 () Bool)

(declare-fun res!670483 () Bool)

(assert (=> b!1484601 (=> (not res!670483) (not e!949478))))

(declare-fun valid!1073 (CacheFurthestNullable!196) Bool)

(assert (=> b!1484601 (= res!670483 (valid!1073 cacheFurthestNullable!64))))

(declare-fun b!1484602 () Bool)

(declare-fun res!670490 () Bool)

(assert (=> b!1484602 (=> (not res!670490) (not e!949502))))

(declare-fun isEmpty!9839 (List!15819) Bool)

(assert (=> b!1484602 (= res!670490 (not (isEmpty!9839 rules!1640)))))

(declare-fun tp!421839 () Bool)

(declare-fun tp!421836 () Bool)

(declare-fun e!949497 () Bool)

(declare-fun e!949495 () Bool)

(declare-fun array_inv!1569 (array!4842) Bool)

(declare-fun array_inv!1570 (array!4846) Bool)

(assert (=> b!1484603 (= e!949495 (and tp!421825 tp!421839 tp!421836 (array_inv!1569 (_keys!1661 (v!22586 (underlying!2943 (v!22587 (underlying!2944 (cache!1692 cacheDown!629))))))) (array_inv!1570 (_values!1646 (v!22586 (underlying!2943 (v!22587 (underlying!2944 (cache!1692 cacheDown!629))))))) e!949497))))

(declare-fun b!1484604 () Bool)

(declare-fun res!670488 () Bool)

(declare-fun e!949481 () Bool)

(assert (=> b!1484604 (=> (not res!670488) (not e!949481))))

(declare-datatypes ((tuple2!14412 0))(
  ( (tuple2!14413 (_1!8104 BalanceConc!10668) (_2!8104 BalanceConc!10666)) )
))
(declare-fun lt!515569 () tuple2!14412)

(declare-fun isEmpty!9840 (List!15814) Bool)

(declare-fun list!6258 (BalanceConc!10666) List!15814)

(assert (=> b!1484604 (= res!670488 (isEmpty!9840 (list!6258 (_2!8104 lt!515569))))))

(declare-fun mapNonEmpty!6530 () Bool)

(declare-fun tp!421827 () Bool)

(declare-fun tp!421830 () Bool)

(assert (=> mapNonEmpty!6530 (= mapRes!6530 (and tp!421827 tp!421830))))

(declare-fun mapRest!6529 () (Array (_ BitVec 32) List!15817))

(declare-fun mapValue!6528 () List!15817)

(declare-fun mapKey!6529 () (_ BitVec 32))

(assert (=> mapNonEmpty!6530 (= (arr!2161 (_values!1645 (v!22584 (underlying!2941 (v!22585 (underlying!2942 (cache!1691 cacheUp!616))))))) (store mapRest!6529 mapKey!6529 mapValue!6528))))

(declare-fun e!949471 () Bool)

(assert (=> b!1484605 (= e!949471 (and tp!421826 tp!421847))))

(declare-fun b!1484606 () Bool)

(declare-fun e!949474 () Bool)

(assert (=> b!1484606 (= e!949503 (and e!949474 (inv!20969 (totalInput!2233 cacheFurthestNullable!64)) e!949504))))

(declare-fun b!1484607 () Bool)

(declare-fun res!670480 () Bool)

(assert (=> b!1484607 (=> (not res!670480) (not e!949478))))

(declare-fun lt!515566 () tuple2!14412)

(declare-fun lt!515574 () tuple2!14412)

(assert (=> b!1484607 (= res!670480 (= (list!6258 (_2!8104 lt!515566)) (list!6258 (_2!8104 lt!515574))))))

(declare-fun e!949501 () Bool)

(declare-fun tp!421848 () Bool)

(declare-fun b!1484608 () Bool)

(declare-fun inv!20964 (String!18735) Bool)

(declare-fun inv!20972 (TokenValueInjection!5450) Bool)

(assert (=> b!1484608 (= e!949501 (and tp!421848 (inv!20964 (tag!3069 (h!21152 rules!1640))) (inv!20972 (transformation!2805 (h!21152 rules!1640))) e!949471))))

(declare-fun e!949489 () Bool)

(declare-fun e!949476 () Bool)

(assert (=> b!1484609 (= e!949489 (and e!949476 tp!421820))))

(declare-fun b!1484610 () Bool)

(declare-fun e!949482 () Bool)

(declare-fun tp!421840 () Bool)

(assert (=> b!1484610 (= e!949482 (and tp!421840 mapRes!6530))))

(declare-fun condMapEmpty!6528 () Bool)

(declare-fun mapDefault!6529 () List!15817)

(assert (=> b!1484610 (= condMapEmpty!6528 (= (arr!2161 (_values!1645 (v!22584 (underlying!2941 (v!22585 (underlying!2942 (cache!1691 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15817)) mapDefault!6529)))))

(declare-fun b!1484611 () Bool)

(declare-fun tp!421843 () Bool)

(assert (=> b!1484611 (= e!949469 (and (inv!20965 (c!243252 input!1102)) tp!421843))))

(declare-fun b!1484612 () Bool)

(declare-fun e!949468 () Bool)

(assert (=> b!1484612 (= e!949468 true)))

(declare-fun lt!515567 () Bool)

(declare-fun rulesValidInductive!846 (LexerInterface!2461 List!15819) Bool)

(assert (=> b!1484612 (= lt!515567 (rulesValidInductive!846 thiss!13241 rules!1640))))

(declare-fun mapIsEmpty!6529 () Bool)

(assert (=> mapIsEmpty!6529 mapRes!6529))

(declare-fun b!1484613 () Bool)

(declare-fun e!949488 () Bool)

(assert (=> b!1484613 (= e!949488 e!949481)))

(declare-fun res!670492 () Bool)

(assert (=> b!1484613 (=> (not res!670492) (not e!949481))))

(declare-fun list!6259 (BalanceConc!10668) List!15816)

(assert (=> b!1484613 (= res!670492 (= (list!6259 (_1!8104 lt!515569)) (list!6259 acc!392)))))

(declare-fun lexRec!299 (LexerInterface!2461 List!15819 BalanceConc!10666) tuple2!14412)

(assert (=> b!1484613 (= lt!515569 (lexRec!299 thiss!13241 rules!1640 treated!70))))

(declare-fun e!949496 () Bool)

(assert (=> b!1484614 (= e!949474 (and e!949496 tp!421822))))

(declare-fun b!1484615 () Bool)

(assert (=> b!1484615 (= e!949481 e!949478)))

(declare-fun res!670482 () Bool)

(assert (=> b!1484615 (=> (not res!670482) (not e!949478))))

(declare-fun ++!4245 (BalanceConc!10668 BalanceConc!10668) BalanceConc!10668)

(assert (=> b!1484615 (= res!670482 (= (list!6259 (_1!8104 lt!515566)) (list!6259 (++!4245 acc!392 (_1!8104 lt!515574)))))))

(assert (=> b!1484615 (= lt!515574 (lexRec!299 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1484615 (= lt!515566 (lexRec!299 thiss!13241 rules!1640 totalInput!458))))

(declare-fun mapIsEmpty!6530 () Bool)

(assert (=> mapIsEmpty!6530 mapRes!6528))

(declare-fun tp!421846 () Bool)

(declare-fun e!949494 () Bool)

(declare-fun tp!421842 () Bool)

(declare-fun array_inv!1571 (array!4840) Bool)

(assert (=> b!1484616 (= e!949479 (and tp!421832 tp!421846 tp!421842 (array_inv!1569 (_keys!1659 (v!22582 (underlying!2939 (v!22583 (underlying!2940 (cache!1690 cacheFurthestNullable!64))))))) (array_inv!1571 (_values!1644 (v!22582 (underlying!2939 (v!22583 (underlying!2940 (cache!1690 cacheFurthestNullable!64))))))) e!949494))))

(declare-fun b!1484617 () Bool)

(assert (=> b!1484617 (= e!949486 e!949489)))

(declare-fun b!1484618 () Bool)

(declare-fun tp!421849 () Bool)

(assert (=> b!1484618 (= e!949497 (and tp!421849 mapRes!6529))))

(declare-fun condMapEmpty!6530 () Bool)

(declare-fun mapDefault!6528 () List!15818)

(assert (=> b!1484618 (= condMapEmpty!6530 (= (arr!2162 (_values!1646 (v!22586 (underlying!2943 (v!22587 (underlying!2944 (cache!1692 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15818)) mapDefault!6528)))))

(declare-fun b!1484619 () Bool)

(declare-fun tp!421829 () Bool)

(assert (=> b!1484619 (= e!949494 (and tp!421829 mapRes!6528))))

(declare-fun condMapEmpty!6529 () Bool)

(declare-fun mapDefault!6530 () List!15813)

(assert (=> b!1484619 (= condMapEmpty!6529 (= (arr!2159 (_values!1644 (v!22582 (underlying!2939 (v!22583 (underlying!2940 (cache!1690 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15813)) mapDefault!6530)))))

(declare-fun e!949498 () Bool)

(assert (=> b!1484620 (= e!949480 (and e!949498 tp!421838))))

(declare-fun b!1484621 () Bool)

(declare-fun e!949499 () Bool)

(declare-fun lt!515568 () MutLongMap!1366)

(assert (=> b!1484621 (= e!949498 (and e!949499 ((_ is LongMap!1366) lt!515568)))))

(assert (=> b!1484621 (= lt!515568 (v!22585 (underlying!2942 (cache!1691 cacheUp!616))))))

(declare-fun b!1484622 () Bool)

(declare-fun res!670487 () Bool)

(assert (=> b!1484622 (=> (not res!670487) (not e!949478))))

(declare-fun valid!1074 (CacheUp!772) Bool)

(assert (=> b!1484622 (= res!670487 (valid!1074 cacheUp!616))))

(declare-fun b!1484623 () Bool)

(assert (=> b!1484623 (= e!949499 e!949500)))

(declare-fun b!1484624 () Bool)

(declare-fun tp!421833 () Bool)

(assert (=> b!1484624 (= e!949493 (and e!949501 tp!421833))))

(declare-fun b!1484625 () Bool)

(assert (=> b!1484625 (= e!949502 e!949488)))

(declare-fun res!670489 () Bool)

(assert (=> b!1484625 (=> (not res!670489) (not e!949488))))

(declare-fun lt!515570 () List!15814)

(declare-fun lt!515571 () List!15814)

(assert (=> b!1484625 (= res!670489 (= lt!515570 lt!515571))))

(declare-fun lt!515565 () List!15814)

(declare-fun lt!515563 () List!15814)

(declare-fun ++!4246 (List!15814 List!15814) List!15814)

(assert (=> b!1484625 (= lt!515571 (++!4246 lt!515565 lt!515563))))

(assert (=> b!1484625 (= lt!515570 (list!6258 totalInput!458))))

(assert (=> b!1484625 (= lt!515563 (list!6258 input!1102))))

(assert (=> b!1484625 (= lt!515565 (list!6258 treated!70))))

(declare-fun b!1484626 () Bool)

(declare-fun e!949485 () Bool)

(declare-fun lt!515572 () MutLongMap!1365)

(assert (=> b!1484626 (= e!949496 (and e!949485 ((_ is LongMap!1365) lt!515572)))))

(assert (=> b!1484626 (= lt!515572 (v!22583 (underlying!2940 (cache!1690 cacheFurthestNullable!64))))))

(declare-fun b!1484627 () Bool)

(declare-fun lt!515564 () MutLongMap!1367)

(assert (=> b!1484627 (= e!949476 (and e!949467 ((_ is LongMap!1367) lt!515564)))))

(assert (=> b!1484627 (= lt!515564 (v!22587 (underlying!2944 (cache!1692 cacheDown!629))))))

(declare-fun b!1484628 () Bool)

(declare-fun res!670484 () Bool)

(assert (=> b!1484628 (=> (not res!670484) (not e!949478))))

(declare-fun valid!1075 (CacheDown!778) Bool)

(assert (=> b!1484628 (= res!670484 (valid!1075 cacheDown!629))))

(declare-fun tp!421837 () Bool)

(declare-fun tp!421831 () Bool)

(declare-fun array_inv!1572 (array!4844) Bool)

(assert (=> b!1484629 (= e!949472 (and tp!421821 tp!421837 tp!421831 (array_inv!1569 (_keys!1660 (v!22584 (underlying!2941 (v!22585 (underlying!2942 (cache!1691 cacheUp!616))))))) (array_inv!1572 (_values!1645 (v!22584 (underlying!2941 (v!22585 (underlying!2942 (cache!1691 cacheUp!616))))))) e!949482))))

(declare-fun b!1484630 () Bool)

(assert (=> b!1484630 (= e!949485 e!949492)))

(declare-fun b!1484631 () Bool)

(assert (=> b!1484631 (= e!949484 e!949495)))

(declare-fun b!1484632 () Bool)

(assert (=> b!1484632 (= e!949478 (not e!949468))))

(declare-fun res!670481 () Bool)

(assert (=> b!1484632 (=> res!670481 e!949468)))

(declare-fun isSuffix!275 (List!15814 List!15814) Bool)

(assert (=> b!1484632 (= res!670481 (not (isSuffix!275 lt!515563 lt!515570)))))

(assert (=> b!1484632 (isSuffix!275 lt!515563 lt!515571)))

(declare-datatypes ((Unit!25612 0))(
  ( (Unit!25613) )
))
(declare-fun lt!515573 () Unit!25612)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!253 (List!15814 List!15814) Unit!25612)

(assert (=> b!1484632 (= lt!515573 (lemmaConcatTwoListThenFSndIsSuffix!253 lt!515565 lt!515563))))

(declare-fun b!1484633 () Bool)

(declare-fun tp!421824 () Bool)

(assert (=> b!1484633 (= e!949470 (and (inv!20965 (c!243252 totalInput!458)) tp!421824))))

(assert (= (and start!139534 res!670491) b!1484602))

(assert (= (and b!1484602 res!670490) b!1484600))

(assert (= (and b!1484600 res!670486) b!1484625))

(assert (= (and b!1484625 res!670489) b!1484613))

(assert (= (and b!1484613 res!670492) b!1484604))

(assert (= (and b!1484604 res!670488) b!1484615))

(assert (= (and b!1484615 res!670482) b!1484607))

(assert (= (and b!1484607 res!670480) b!1484622))

(assert (= (and b!1484622 res!670487) b!1484628))

(assert (= (and b!1484628 res!670484) b!1484601))

(assert (= (and b!1484601 res!670483) b!1484599))

(assert (= (and b!1484599 res!670485) b!1484632))

(assert (= (and b!1484632 (not res!670481)) b!1484612))

(assert (= start!139534 b!1484598))

(assert (= (and b!1484610 condMapEmpty!6528) mapIsEmpty!6528))

(assert (= (and b!1484610 (not condMapEmpty!6528)) mapNonEmpty!6530))

(assert (= b!1484629 b!1484610))

(assert (= b!1484595 b!1484629))

(assert (= b!1484623 b!1484595))

(assert (= (and b!1484621 ((_ is LongMap!1366) (v!22585 (underlying!2942 (cache!1691 cacheUp!616))))) b!1484623))

(assert (= b!1484620 b!1484621))

(assert (= (and b!1484597 ((_ is HashMap!1310) (cache!1691 cacheUp!616))) b!1484620))

(assert (= start!139534 b!1484597))

(assert (= (and b!1484618 condMapEmpty!6530) mapIsEmpty!6529))

(assert (= (and b!1484618 (not condMapEmpty!6530)) mapNonEmpty!6529))

(assert (= b!1484603 b!1484618))

(assert (= b!1484631 b!1484603))

(assert (= b!1484592 b!1484631))

(assert (= (and b!1484627 ((_ is LongMap!1367) (v!22587 (underlying!2944 (cache!1692 cacheDown!629))))) b!1484592))

(assert (= b!1484609 b!1484627))

(assert (= (and b!1484617 ((_ is HashMap!1311) (cache!1692 cacheDown!629))) b!1484609))

(assert (= start!139534 b!1484617))

(assert (= start!139534 b!1484611))

(assert (= start!139534 b!1484594))

(assert (= b!1484608 b!1484605))

(assert (= b!1484624 b!1484608))

(assert (= (and start!139534 ((_ is Cons!15751) rules!1640)) b!1484624))

(assert (= (and b!1484619 condMapEmpty!6529) mapIsEmpty!6530))

(assert (= (and b!1484619 (not condMapEmpty!6529)) mapNonEmpty!6528))

(assert (= b!1484616 b!1484619))

(assert (= b!1484596 b!1484616))

(assert (= b!1484630 b!1484596))

(assert (= (and b!1484626 ((_ is LongMap!1365) (v!22583 (underlying!2940 (cache!1690 cacheFurthestNullable!64))))) b!1484630))

(assert (= b!1484614 b!1484626))

(assert (= (and b!1484606 ((_ is HashMap!1309) (cache!1690 cacheFurthestNullable!64))) b!1484614))

(assert (= b!1484606 b!1484593))

(assert (= start!139534 b!1484606))

(assert (= start!139534 b!1484633))

(declare-fun m!1731168 () Bool)

(assert (=> b!1484607 m!1731168))

(declare-fun m!1731170 () Bool)

(assert (=> b!1484607 m!1731170))

(declare-fun m!1731172 () Bool)

(assert (=> b!1484601 m!1731172))

(declare-fun m!1731174 () Bool)

(assert (=> b!1484593 m!1731174))

(declare-fun m!1731176 () Bool)

(assert (=> b!1484622 m!1731176))

(declare-fun m!1731178 () Bool)

(assert (=> mapNonEmpty!6529 m!1731178))

(declare-fun m!1731180 () Bool)

(assert (=> b!1484633 m!1731180))

(declare-fun m!1731182 () Bool)

(assert (=> b!1484598 m!1731182))

(declare-fun m!1731184 () Bool)

(assert (=> b!1484606 m!1731184))

(declare-fun m!1731186 () Bool)

(assert (=> b!1484594 m!1731186))

(declare-fun m!1731188 () Bool)

(assert (=> b!1484628 m!1731188))

(declare-fun m!1731190 () Bool)

(assert (=> b!1484611 m!1731190))

(declare-fun m!1731192 () Bool)

(assert (=> b!1484625 m!1731192))

(declare-fun m!1731194 () Bool)

(assert (=> b!1484625 m!1731194))

(declare-fun m!1731196 () Bool)

(assert (=> b!1484625 m!1731196))

(declare-fun m!1731198 () Bool)

(assert (=> b!1484625 m!1731198))

(declare-fun m!1731200 () Bool)

(assert (=> mapNonEmpty!6528 m!1731200))

(declare-fun m!1731202 () Bool)

(assert (=> b!1484632 m!1731202))

(declare-fun m!1731204 () Bool)

(assert (=> b!1484632 m!1731204))

(declare-fun m!1731206 () Bool)

(assert (=> b!1484632 m!1731206))

(declare-fun m!1731208 () Bool)

(assert (=> b!1484613 m!1731208))

(declare-fun m!1731210 () Bool)

(assert (=> b!1484613 m!1731210))

(declare-fun m!1731212 () Bool)

(assert (=> b!1484613 m!1731212))

(declare-fun m!1731214 () Bool)

(assert (=> mapNonEmpty!6530 m!1731214))

(declare-fun m!1731216 () Bool)

(assert (=> b!1484603 m!1731216))

(declare-fun m!1731218 () Bool)

(assert (=> b!1484603 m!1731218))

(declare-fun m!1731220 () Bool)

(assert (=> b!1484629 m!1731220))

(declare-fun m!1731222 () Bool)

(assert (=> b!1484629 m!1731222))

(declare-fun m!1731224 () Bool)

(assert (=> b!1484600 m!1731224))

(declare-fun m!1731226 () Bool)

(assert (=> b!1484616 m!1731226))

(declare-fun m!1731228 () Bool)

(assert (=> b!1484616 m!1731228))

(declare-fun m!1731230 () Bool)

(assert (=> b!1484602 m!1731230))

(declare-fun m!1731232 () Bool)

(assert (=> b!1484612 m!1731232))

(declare-fun m!1731234 () Bool)

(assert (=> b!1484615 m!1731234))

(declare-fun m!1731236 () Bool)

(assert (=> b!1484615 m!1731236))

(declare-fun m!1731238 () Bool)

(assert (=> b!1484615 m!1731238))

(declare-fun m!1731240 () Bool)

(assert (=> b!1484615 m!1731240))

(assert (=> b!1484615 m!1731234))

(declare-fun m!1731242 () Bool)

(assert (=> b!1484615 m!1731242))

(declare-fun m!1731244 () Bool)

(assert (=> b!1484604 m!1731244))

(assert (=> b!1484604 m!1731244))

(declare-fun m!1731246 () Bool)

(assert (=> b!1484604 m!1731246))

(declare-fun m!1731248 () Bool)

(assert (=> start!139534 m!1731248))

(declare-fun m!1731250 () Bool)

(assert (=> start!139534 m!1731250))

(declare-fun m!1731252 () Bool)

(assert (=> start!139534 m!1731252))

(declare-fun m!1731254 () Bool)

(assert (=> start!139534 m!1731254))

(declare-fun m!1731256 () Bool)

(assert (=> start!139534 m!1731256))

(declare-fun m!1731258 () Bool)

(assert (=> start!139534 m!1731258))

(declare-fun m!1731260 () Bool)

(assert (=> start!139534 m!1731260))

(declare-fun m!1731262 () Bool)

(assert (=> b!1484608 m!1731262))

(declare-fun m!1731264 () Bool)

(assert (=> b!1484608 m!1731264))

(check-sat (not b!1484612) (not b!1484615) (not b!1484598) (not b_next!39179) b_and!103201 (not mapNonEmpty!6530) (not b!1484613) b_and!103195 (not b!1484624) (not b!1484593) (not b!1484603) b_and!103193 (not b!1484601) b_and!103189 (not mapNonEmpty!6529) (not b!1484610) (not mapNonEmpty!6528) (not b!1484629) (not b!1484604) (not b!1484628) (not b!1484633) (not b_next!39175) b_and!103197 (not b!1484625) b_and!103203 (not b!1484622) b_and!103199 (not b_next!39189) (not b!1484611) (not b!1484619) (not b!1484616) (not b_next!39181) (not b!1484602) (not b_next!39183) (not b!1484608) (not start!139534) (not b!1484607) (not b_next!39177) (not b!1484594) (not b_next!39187) b_and!103191 (not b!1484606) (not b!1484600) (not b!1484632) (not b_next!39185) (not b!1484618))
(check-sat (not b_next!39179) b_and!103201 b_and!103195 (not b_next!39181) (not b_next!39183) (not b_next!39177) b_and!103193 (not b_next!39187) b_and!103191 b_and!103189 (not b_next!39185) (not b_next!39175) b_and!103197 b_and!103203 (not b_next!39189) b_and!103199)
