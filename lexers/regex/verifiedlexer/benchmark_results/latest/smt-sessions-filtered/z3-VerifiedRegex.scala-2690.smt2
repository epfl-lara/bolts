; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144752 () Bool)

(assert start!144752)

(declare-fun b!1559739 () Bool)

(declare-fun b_free!41607 () Bool)

(declare-fun b_next!42311 () Bool)

(assert (=> b!1559739 (= b_free!41607 (not b_next!42311))))

(declare-fun tp!458473 () Bool)

(declare-fun b_and!108869 () Bool)

(assert (=> b!1559739 (= tp!458473 b_and!108869)))

(declare-fun b!1559751 () Bool)

(declare-fun b_free!41609 () Bool)

(declare-fun b_next!42313 () Bool)

(assert (=> b!1559751 (= b_free!41609 (not b_next!42313))))

(declare-fun tp!458485 () Bool)

(declare-fun b_and!108871 () Bool)

(assert (=> b!1559751 (= tp!458485 b_and!108871)))

(declare-fun b!1559750 () Bool)

(declare-fun b_free!41611 () Bool)

(declare-fun b_next!42315 () Bool)

(assert (=> b!1559750 (= b_free!41611 (not b_next!42315))))

(declare-fun tp!458469 () Bool)

(declare-fun b_and!108873 () Bool)

(assert (=> b!1559750 (= tp!458469 b_and!108873)))

(declare-fun b!1559749 () Bool)

(declare-fun b_free!41613 () Bool)

(declare-fun b_next!42317 () Bool)

(assert (=> b!1559749 (= b_free!41613 (not b_next!42317))))

(declare-fun tp!458481 () Bool)

(declare-fun b_and!108875 () Bool)

(assert (=> b!1559749 (= tp!458481 b_and!108875)))

(declare-fun b!1559759 () Bool)

(declare-fun b_free!41615 () Bool)

(declare-fun b_next!42319 () Bool)

(assert (=> b!1559759 (= b_free!41615 (not b_next!42319))))

(declare-fun tp!458482 () Bool)

(declare-fun b_and!108877 () Bool)

(assert (=> b!1559759 (= tp!458482 b_and!108877)))

(declare-fun b_free!41617 () Bool)

(declare-fun b_next!42321 () Bool)

(assert (=> b!1559759 (= b_free!41617 (not b_next!42321))))

(declare-fun tp!458478 () Bool)

(declare-fun b_and!108879 () Bool)

(assert (=> b!1559759 (= tp!458478 b_and!108879)))

(declare-fun b!1559770 () Bool)

(declare-fun b_free!41619 () Bool)

(declare-fun b_next!42323 () Bool)

(assert (=> b!1559770 (= b_free!41619 (not b_next!42323))))

(declare-fun tp!458464 () Bool)

(declare-fun b_and!108881 () Bool)

(assert (=> b!1559770 (= tp!458464 b_and!108881)))

(declare-fun b!1559767 () Bool)

(declare-fun b_free!41621 () Bool)

(declare-fun b_next!42325 () Bool)

(assert (=> b!1559767 (= b_free!41621 (not b_next!42325))))

(declare-fun tp!458472 () Bool)

(declare-fun b_and!108883 () Bool)

(assert (=> b!1559767 (= tp!458472 b_and!108883)))

(declare-datatypes ((C!8760 0))(
  ( (C!8761 (val!4952 Int)) )
))
(declare-datatypes ((Regex!4291 0))(
  ( (ElementMatch!4291 (c!253080 C!8760)) (Concat!7344 (regOne!9094 Regex!4291) (regTwo!9094 Regex!4291)) (EmptyExpr!4291) (Star!4291 (reg!4620 Regex!4291)) (EmptyLang!4291) (Union!4291 (regOne!9095 Regex!4291) (regTwo!9095 Regex!4291)) )
))
(declare-datatypes ((List!16975 0))(
  ( (Nil!16907) (Cons!16907 (h!22308 Regex!4291) (t!141494 List!16975)) )
))
(declare-datatypes ((Context!1618 0))(
  ( (Context!1619 (exprs!1309 List!16975)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1848 0))(
  ( (tuple3!1849 (_1!9628 (InoxSet Context!1618)) (_2!9628 Int) (_3!1383 Int)) )
))
(declare-datatypes ((tuple2!16490 0))(
  ( (tuple2!16491 (_1!9629 tuple3!1848) (_2!9629 Int)) )
))
(declare-datatypes ((List!16976 0))(
  ( (Nil!16908) (Cons!16908 (h!22309 tuple2!16490) (t!141495 List!16976)) )
))
(declare-datatypes ((array!6310 0))(
  ( (array!6311 (arr!2808 (Array (_ BitVec 32) List!16976)) (size!13716 (_ BitVec 32))) )
))
(declare-datatypes ((array!6312 0))(
  ( (array!6313 (arr!2809 (Array (_ BitVec 32) (_ BitVec 64))) (size!13717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3684 0))(
  ( (LongMapFixedSize!3685 (defaultEntry!2202 Int) (mask!5076 (_ BitVec 32)) (extraKeys!2089 (_ BitVec 32)) (zeroValue!2099 List!16976) (minValue!2099 List!16976) (_size!3765 (_ BitVec 32)) (_keys!2136 array!6312) (_values!2121 array!6310) (_vacant!1903 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7253 0))(
  ( (Cell!7254 (v!23773 LongMapFixedSize!3684)) )
))
(declare-datatypes ((Hashable!1786 0))(
  ( (HashableExt!1785 (__x!11347 Int)) )
))
(declare-datatypes ((List!16977 0))(
  ( (Nil!16909) (Cons!16909 (h!22310 C!8760) (t!141496 List!16977)) )
))
(declare-datatypes ((IArray!11167 0))(
  ( (IArray!11168 (innerList!5641 List!16977)) )
))
(declare-datatypes ((Conc!5581 0))(
  ( (Node!5581 (left!13721 Conc!5581) (right!14051 Conc!5581) (csize!11392 Int) (cheight!5792 Int)) (Leaf!8272 (xs!8381 IArray!11167) (csize!11393 Int)) (Empty!5581) )
))
(declare-datatypes ((BalanceConc!11104 0))(
  ( (BalanceConc!11105 (c!253081 Conc!5581)) )
))
(declare-datatypes ((MutLongMap!1842 0))(
  ( (LongMap!1842 (underlying!3893 Cell!7253)) (MutLongMapExt!1841 (__x!11348 Int)) )
))
(declare-datatypes ((Cell!7255 0))(
  ( (Cell!7256 (v!23774 MutLongMap!1842)) )
))
(declare-datatypes ((MutableMap!1786 0))(
  ( (MutableMapExt!1785 (__x!11349 Int)) (HashMap!1786 (underlying!3894 Cell!7255) (hashF!3705 Hashable!1786) (_size!3766 (_ BitVec 32)) (defaultValue!1946 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!518 0))(
  ( (CacheFurthestNullable!519 (cache!2167 MutableMap!1786) (totalInput!2492 BalanceConc!11104)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!518)

(declare-fun e!1001337 () Bool)

(declare-fun tp!458459 () Bool)

(declare-fun e!1001325 () Bool)

(declare-fun tp!458461 () Bool)

(declare-fun array_inv!2021 (array!6312) Bool)

(declare-fun array_inv!2022 (array!6310) Bool)

(assert (=> b!1559739 (= e!1001337 (and tp!458473 tp!458459 tp!458461 (array_inv!2021 (_keys!2136 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))) (array_inv!2022 (_values!2121 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))) e!1001325))))

(declare-fun b!1559740 () Bool)

(declare-fun res!695694 () Bool)

(declare-fun e!1001315 () Bool)

(assert (=> b!1559740 (=> (not res!695694) (not e!1001315))))

(declare-fun totalInput!568 () BalanceConc!11104)

(declare-datatypes ((tuple2!16492 0))(
  ( (tuple2!16493 (_1!9630 Context!1618) (_2!9630 C!8760)) )
))
(declare-datatypes ((tuple2!16494 0))(
  ( (tuple2!16495 (_1!9631 tuple2!16492) (_2!9631 (InoxSet Context!1618))) )
))
(declare-datatypes ((List!16978 0))(
  ( (Nil!16910) (Cons!16910 (h!22311 tuple2!16494) (t!141497 List!16978)) )
))
(declare-datatypes ((array!6314 0))(
  ( (array!6315 (arr!2810 (Array (_ BitVec 32) List!16978)) (size!13718 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1787 0))(
  ( (HashableExt!1786 (__x!11350 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3686 0))(
  ( (LongMapFixedSize!3687 (defaultEntry!2203 Int) (mask!5077 (_ BitVec 32)) (extraKeys!2090 (_ BitVec 32)) (zeroValue!2100 List!16978) (minValue!2100 List!16978) (_size!3767 (_ BitVec 32)) (_keys!2137 array!6312) (_values!2122 array!6314) (_vacant!1904 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7257 0))(
  ( (Cell!7258 (v!23775 LongMapFixedSize!3686)) )
))
(declare-datatypes ((MutLongMap!1843 0))(
  ( (LongMap!1843 (underlying!3895 Cell!7257)) (MutLongMapExt!1842 (__x!11351 Int)) )
))
(declare-datatypes ((Cell!7259 0))(
  ( (Cell!7260 (v!23776 MutLongMap!1843)) )
))
(declare-datatypes ((MutableMap!1787 0))(
  ( (MutableMapExt!1786 (__x!11352 Int)) (HashMap!1787 (underlying!3896 Cell!7259) (hashF!3706 Hashable!1787) (_size!3768 (_ BitVec 32)) (defaultValue!1947 Int)) )
))
(declare-datatypes ((CacheUp!1088 0))(
  ( (CacheUp!1089 (cache!2168 MutableMap!1787)) )
))
(declare-fun cacheUp!755 () CacheUp!1088)

(declare-fun input!1676 () BalanceConc!11104)

(declare-datatypes ((List!16979 0))(
  ( (Nil!16911) (Cons!16911 (h!22312 (_ BitVec 16)) (t!141498 List!16979)) )
))
(declare-datatypes ((TokenValue!3053 0))(
  ( (FloatLiteralValue!6106 (text!21816 List!16979)) (TokenValueExt!3052 (__x!11353 Int)) (Broken!15265 (value!94055 List!16979)) (Object!3120) (End!3053) (Def!3053) (Underscore!3053) (Match!3053) (Else!3053) (Error!3053) (Case!3053) (If!3053) (Extends!3053) (Abstract!3053) (Class!3053) (Val!3053) (DelimiterValue!6106 (del!3113 List!16979)) (KeywordValue!3059 (value!94056 List!16979)) (CommentValue!6106 (value!94057 List!16979)) (WhitespaceValue!6106 (value!94058 List!16979)) (IndentationValue!3053 (value!94059 List!16979)) (String!19552) (Int32!3053) (Broken!15266 (value!94060 List!16979)) (Boolean!3054) (Unit!26131) (OperatorValue!3056 (op!3113 List!16979)) (IdentifierValue!6106 (value!94061 List!16979)) (IdentifierValue!6107 (value!94062 List!16979)) (WhitespaceValue!6107 (value!94063 List!16979)) (True!6106) (False!6106) (Broken!15267 (value!94064 List!16979)) (Broken!15268 (value!94065 List!16979)) (True!6107) (RightBrace!3053) (RightBracket!3053) (Colon!3053) (Null!3053) (Comma!3053) (LeftBracket!3053) (False!6107) (LeftBrace!3053) (ImaginaryLiteralValue!3053 (text!21817 List!16979)) (StringLiteralValue!9159 (value!94066 List!16979)) (EOFValue!3053 (value!94067 List!16979)) (IdentValue!3053 (value!94068 List!16979)) (DelimiterValue!6107 (value!94069 List!16979)) (DedentValue!3053 (value!94070 List!16979)) (NewLineValue!3053 (value!94071 List!16979)) (IntegerValue!9159 (value!94072 (_ BitVec 32)) (text!21818 List!16979)) (IntegerValue!9160 (value!94073 Int) (text!21819 List!16979)) (Times!3053) (Or!3053) (Equal!3053) (Minus!3053) (Broken!15269 (value!94074 List!16979)) (And!3053) (Div!3053) (LessEqual!3053) (Mod!3053) (Concat!7345) (Not!3053) (Plus!3053) (SpaceValue!3053 (value!94075 List!16979)) (IntegerValue!9161 (value!94076 Int) (text!21820 List!16979)) (StringLiteralValue!9160 (text!21821 List!16979)) (FloatLiteralValue!6107 (text!21822 List!16979)) (BytesLiteralValue!3053 (value!94077 List!16979)) (CommentValue!6107 (value!94078 List!16979)) (StringLiteralValue!9161 (value!94079 List!16979)) (ErrorTokenValue!3053 (msg!3114 List!16979)) )
))
(declare-datatypes ((String!19553 0))(
  ( (String!19554 (value!94080 String)) )
))
(declare-datatypes ((TokenValueInjection!5766 0))(
  ( (TokenValueInjection!5767 (toValue!4341 Int) (toChars!4200 Int)) )
))
(declare-datatypes ((Rule!5726 0))(
  ( (Rule!5727 (regex!2963 Regex!4291) (tag!3227 String!19553) (isSeparator!2963 Bool) (transformation!2963 TokenValueInjection!5766)) )
))
(declare-fun rule!240 () Rule!5726)

(declare-datatypes ((tuple3!1850 0))(
  ( (tuple3!1851 (_1!9632 Regex!4291) (_2!9632 Context!1618) (_3!1384 C!8760)) )
))
(declare-datatypes ((tuple2!16496 0))(
  ( (tuple2!16497 (_1!9633 tuple3!1850) (_2!9633 (InoxSet Context!1618))) )
))
(declare-datatypes ((List!16980 0))(
  ( (Nil!16912) (Cons!16912 (h!22313 tuple2!16496) (t!141499 List!16980)) )
))
(declare-datatypes ((array!6316 0))(
  ( (array!6317 (arr!2811 (Array (_ BitVec 32) List!16980)) (size!13719 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3688 0))(
  ( (LongMapFixedSize!3689 (defaultEntry!2204 Int) (mask!5078 (_ BitVec 32)) (extraKeys!2091 (_ BitVec 32)) (zeroValue!2101 List!16980) (minValue!2101 List!16980) (_size!3769 (_ BitVec 32)) (_keys!2138 array!6312) (_values!2123 array!6316) (_vacant!1905 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7261 0))(
  ( (Cell!7262 (v!23777 LongMapFixedSize!3688)) )
))
(declare-datatypes ((MutLongMap!1844 0))(
  ( (LongMap!1844 (underlying!3897 Cell!7261)) (MutLongMapExt!1843 (__x!11354 Int)) )
))
(declare-datatypes ((Cell!7263 0))(
  ( (Cell!7264 (v!23778 MutLongMap!1844)) )
))
(declare-datatypes ((Hashable!1788 0))(
  ( (HashableExt!1787 (__x!11355 Int)) )
))
(declare-datatypes ((MutableMap!1788 0))(
  ( (MutableMapExt!1787 (__x!11356 Int)) (HashMap!1788 (underlying!3898 Cell!7263) (hashF!3707 Hashable!1788) (_size!3770 (_ BitVec 32)) (defaultValue!1948 Int)) )
))
(declare-datatypes ((CacheDown!1094 0))(
  ( (CacheDown!1095 (cache!2169 MutableMap!1788)) )
))
(declare-fun cacheDown!768 () CacheDown!1094)

(declare-fun isEmpty!10154 (BalanceConc!11104) Bool)

(declare-datatypes ((tuple2!16498 0))(
  ( (tuple2!16499 (_1!9634 BalanceConc!11104) (_2!9634 BalanceConc!11104)) )
))
(declare-datatypes ((tuple4!918 0))(
  ( (tuple4!919 (_1!9635 tuple2!16498) (_2!9635 CacheUp!1088) (_3!1385 CacheDown!1094) (_4!459 CacheFurthestNullable!518)) )
))
(declare-fun findLongestMatchWithZipperSequenceV3Mem!60 (Regex!4291 BalanceConc!11104 BalanceConc!11104 CacheUp!1088 CacheDown!1094 CacheFurthestNullable!518) tuple4!918)

(assert (=> b!1559740 (= res!695694 (not (isEmpty!10154 (_1!9634 (_1!9635 (findLongestMatchWithZipperSequenceV3Mem!60 (regex!2963 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1559741 () Bool)

(declare-fun tp!458467 () Bool)

(declare-fun mapRes!8570 () Bool)

(assert (=> b!1559741 (= e!1001325 (and tp!458467 mapRes!8570))))

(declare-fun condMapEmpty!8568 () Bool)

(declare-fun mapDefault!8568 () List!16976)

(assert (=> b!1559741 (= condMapEmpty!8568 (= (arr!2808 (_values!2121 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16976)) mapDefault!8568)))))

(declare-fun e!1001336 () Bool)

(declare-fun tp!458480 () Bool)

(declare-fun e!1001334 () Bool)

(declare-fun b!1559742 () Bool)

(declare-fun inv!22200 (String!19553) Bool)

(declare-fun inv!22203 (TokenValueInjection!5766) Bool)

(assert (=> b!1559742 (= e!1001336 (and tp!458480 (inv!22200 (tag!3227 rule!240)) (inv!22203 (transformation!2963 rule!240)) e!1001334))))

(declare-fun b!1559743 () Bool)

(declare-fun e!1001341 () Bool)

(declare-fun tp!458471 () Bool)

(declare-fun inv!22204 (Conc!5581) Bool)

(assert (=> b!1559743 (= e!1001341 (and (inv!22204 (c!253081 input!1676)) tp!458471))))

(declare-fun b!1559744 () Bool)

(declare-fun res!695690 () Bool)

(assert (=> b!1559744 (=> (not res!695690) (not e!1001315))))

(declare-fun valid!1477 (CacheFurthestNullable!518) Bool)

(assert (=> b!1559744 (= res!695690 (valid!1477 cacheFurthestNullable!103))))

(declare-fun b!1559745 () Bool)

(declare-fun e!1001314 () Bool)

(declare-fun e!1001339 () Bool)

(declare-fun lt!540260 () MutLongMap!1843)

(get-info :version)

(assert (=> b!1559745 (= e!1001314 (and e!1001339 ((_ is LongMap!1843) lt!540260)))))

(assert (=> b!1559745 (= lt!540260 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))

(declare-fun mapNonEmpty!8568 () Bool)

(declare-fun mapRes!8569 () Bool)

(declare-fun tp!458466 () Bool)

(declare-fun tp!458476 () Bool)

(assert (=> mapNonEmpty!8568 (= mapRes!8569 (and tp!458466 tp!458476))))

(declare-fun mapValue!8569 () List!16980)

(declare-fun mapKey!8568 () (_ BitVec 32))

(declare-fun mapRest!8570 () (Array (_ BitVec 32) List!16980))

(assert (=> mapNonEmpty!8568 (= (arr!2811 (_values!2123 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))) (store mapRest!8570 mapKey!8568 mapValue!8569))))

(declare-fun b!1559746 () Bool)

(declare-fun e!1001327 () Bool)

(declare-fun tp!458470 () Bool)

(assert (=> b!1559746 (= e!1001327 (and tp!458470 mapRes!8569))))

(declare-fun condMapEmpty!8569 () Bool)

(declare-fun mapDefault!8569 () List!16980)

(assert (=> b!1559746 (= condMapEmpty!8569 (= (arr!2811 (_values!2123 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16980)) mapDefault!8569)))))

(declare-fun b!1559748 () Bool)

(declare-fun e!1001322 () Bool)

(declare-fun tp!458484 () Bool)

(assert (=> b!1559748 (= e!1001322 (and (inv!22204 (c!253081 (totalInput!2492 cacheFurthestNullable!103))) tp!458484))))

(declare-fun e!1001330 () Bool)

(declare-fun e!1001323 () Bool)

(assert (=> b!1559749 (= e!1001330 (and e!1001323 tp!458481))))

(declare-fun tp!458479 () Bool)

(declare-fun e!1001326 () Bool)

(declare-fun tp!458468 () Bool)

(declare-fun e!1001343 () Bool)

(declare-fun array_inv!2023 (array!6314) Bool)

(assert (=> b!1559750 (= e!1001326 (and tp!458469 tp!458468 tp!458479 (array_inv!2021 (_keys!2137 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))) (array_inv!2023 (_values!2122 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))) e!1001343))))

(declare-fun mapNonEmpty!8569 () Bool)

(declare-fun tp!458465 () Bool)

(declare-fun tp!458460 () Bool)

(assert (=> mapNonEmpty!8569 (= mapRes!8570 (and tp!458465 tp!458460))))

(declare-fun mapRest!8568 () (Array (_ BitVec 32) List!16976))

(declare-fun mapValue!8568 () List!16976)

(declare-fun mapKey!8570 () (_ BitVec 32))

(assert (=> mapNonEmpty!8569 (= (arr!2808 (_values!2121 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))) (store mapRest!8568 mapKey!8570 mapValue!8568))))

(declare-fun e!1001331 () Bool)

(declare-fun e!1001344 () Bool)

(assert (=> b!1559751 (= e!1001331 (and e!1001344 tp!458485))))

(declare-fun b!1559752 () Bool)

(declare-fun e!1001340 () Bool)

(assert (=> b!1559752 (= e!1001340 e!1001337)))

(declare-fun b!1559753 () Bool)

(declare-fun validRegex!1718 (Regex!4291) Bool)

(assert (=> b!1559753 (= e!1001315 (not (validRegex!1718 (regex!2963 rule!240))))))

(declare-fun b!1559754 () Bool)

(declare-fun e!1001324 () Bool)

(declare-fun e!1001319 () Bool)

(assert (=> b!1559754 (= e!1001324 e!1001319)))

(declare-fun b!1559755 () Bool)

(declare-fun lt!540258 () MutLongMap!1844)

(assert (=> b!1559755 (= e!1001323 (and e!1001324 ((_ is LongMap!1844) lt!540258)))))

(assert (=> b!1559755 (= lt!540258 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))

(declare-fun b!1559756 () Bool)

(declare-fun e!1001329 () Bool)

(assert (=> b!1559756 (= e!1001329 e!1001330)))

(declare-fun b!1559757 () Bool)

(declare-fun res!695689 () Bool)

(assert (=> b!1559757 (=> (not res!695689) (not e!1001315))))

(assert (=> b!1559757 (= res!695689 (= (totalInput!2492 cacheFurthestNullable!103) totalInput!568))))

(declare-fun mapIsEmpty!8568 () Bool)

(assert (=> mapIsEmpty!8568 mapRes!8569))

(declare-fun mapIsEmpty!8569 () Bool)

(assert (=> mapIsEmpty!8569 mapRes!8570))

(declare-fun b!1559758 () Bool)

(declare-fun e!1001321 () Bool)

(assert (=> b!1559758 (= e!1001321 e!1001326)))

(assert (=> b!1559759 (= e!1001334 (and tp!458482 tp!458478))))

(declare-fun b!1559760 () Bool)

(declare-fun res!695693 () Bool)

(assert (=> b!1559760 (=> (not res!695693) (not e!1001315))))

(declare-fun isSuffix!385 (List!16977 List!16977) Bool)

(declare-fun list!6512 (BalanceConc!11104) List!16977)

(assert (=> b!1559760 (= res!695693 (isSuffix!385 (list!6512 input!1676) (list!6512 totalInput!568)))))

(declare-fun b!1559761 () Bool)

(declare-fun e!1001338 () Bool)

(declare-fun inv!22205 (BalanceConc!11104) Bool)

(assert (=> b!1559761 (= e!1001338 (and e!1001331 (inv!22205 (totalInput!2492 cacheFurthestNullable!103)) e!1001322))))

(declare-fun mapNonEmpty!8570 () Bool)

(declare-fun mapRes!8568 () Bool)

(declare-fun tp!458475 () Bool)

(declare-fun tp!458483 () Bool)

(assert (=> mapNonEmpty!8570 (= mapRes!8568 (and tp!458475 tp!458483))))

(declare-fun mapValue!8570 () List!16978)

(declare-fun mapRest!8569 () (Array (_ BitVec 32) List!16978))

(declare-fun mapKey!8569 () (_ BitVec 32))

(assert (=> mapNonEmpty!8570 (= (arr!2810 (_values!2122 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))) (store mapRest!8569 mapKey!8569 mapValue!8570))))

(declare-fun b!1559762 () Bool)

(declare-fun e!1001318 () Bool)

(declare-fun lt!540259 () MutLongMap!1842)

(assert (=> b!1559762 (= e!1001344 (and e!1001318 ((_ is LongMap!1842) lt!540259)))))

(assert (=> b!1559762 (= lt!540259 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))

(declare-fun mapIsEmpty!8570 () Bool)

(assert (=> mapIsEmpty!8570 mapRes!8568))

(declare-fun b!1559763 () Bool)

(declare-fun e!1001328 () Bool)

(declare-fun tp!458463 () Bool)

(assert (=> b!1559763 (= e!1001328 (and (inv!22204 (c!253081 totalInput!568)) tp!458463))))

(declare-fun b!1559764 () Bool)

(declare-fun tp!458462 () Bool)

(assert (=> b!1559764 (= e!1001343 (and tp!458462 mapRes!8568))))

(declare-fun condMapEmpty!8570 () Bool)

(declare-fun mapDefault!8570 () List!16978)

(assert (=> b!1559764 (= condMapEmpty!8570 (= (arr!2810 (_values!2122 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16978)) mapDefault!8570)))))

(declare-fun b!1559765 () Bool)

(declare-fun e!1001335 () Bool)

(assert (=> b!1559765 (= e!1001319 e!1001335)))

(declare-fun b!1559766 () Bool)

(declare-fun res!695696 () Bool)

(assert (=> b!1559766 (=> (not res!695696) (not e!1001315))))

(declare-datatypes ((LexerInterface!2597 0))(
  ( (LexerInterfaceExt!2594 (__x!11357 Int)) (Lexer!2595) )
))
(declare-fun thiss!16438 () LexerInterface!2597)

(declare-fun ruleValid!694 (LexerInterface!2597 Rule!5726) Bool)

(assert (=> b!1559766 (= res!695696 (ruleValid!694 thiss!16438 rule!240))))

(declare-fun b!1559747 () Bool)

(assert (=> b!1559747 (= e!1001339 e!1001321)))

(declare-fun res!695695 () Bool)

(assert (=> start!144752 (=> (not res!695695) (not e!1001315))))

(assert (=> start!144752 (= res!695695 ((_ is Lexer!2595) thiss!16438))))

(assert (=> start!144752 e!1001315))

(assert (=> start!144752 (and (inv!22205 totalInput!568) e!1001328)))

(declare-fun e!1001316 () Bool)

(declare-fun inv!22206 (CacheUp!1088) Bool)

(assert (=> start!144752 (and (inv!22206 cacheUp!755) e!1001316)))

(declare-fun inv!22207 (CacheFurthestNullable!518) Bool)

(assert (=> start!144752 (and (inv!22207 cacheFurthestNullable!103) e!1001338)))

(assert (=> start!144752 (and (inv!22205 input!1676) e!1001341)))

(assert (=> start!144752 e!1001336))

(declare-fun inv!22208 (CacheDown!1094) Bool)

(assert (=> start!144752 (and (inv!22208 cacheDown!768) e!1001329)))

(assert (=> start!144752 true))

(declare-fun e!1001320 () Bool)

(assert (=> b!1559767 (= e!1001320 (and e!1001314 tp!458472))))

(declare-fun b!1559768 () Bool)

(assert (=> b!1559768 (= e!1001316 e!1001320)))

(declare-fun b!1559769 () Bool)

(assert (=> b!1559769 (= e!1001318 e!1001340)))

(declare-fun tp!458474 () Bool)

(declare-fun tp!458477 () Bool)

(declare-fun array_inv!2024 (array!6316) Bool)

(assert (=> b!1559770 (= e!1001335 (and tp!458464 tp!458477 tp!458474 (array_inv!2021 (_keys!2138 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))) (array_inv!2024 (_values!2123 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))) e!1001327))))

(declare-fun b!1559771 () Bool)

(declare-fun res!695692 () Bool)

(assert (=> b!1559771 (=> (not res!695692) (not e!1001315))))

(declare-fun valid!1478 (CacheDown!1094) Bool)

(assert (=> b!1559771 (= res!695692 (valid!1478 cacheDown!768))))

(declare-fun b!1559772 () Bool)

(declare-fun res!695691 () Bool)

(assert (=> b!1559772 (=> (not res!695691) (not e!1001315))))

(declare-fun valid!1479 (CacheUp!1088) Bool)

(assert (=> b!1559772 (= res!695691 (valid!1479 cacheUp!755))))

(assert (= (and start!144752 res!695695) b!1559766))

(assert (= (and b!1559766 res!695696) b!1559772))

(assert (= (and b!1559772 res!695691) b!1559771))

(assert (= (and b!1559771 res!695692) b!1559744))

(assert (= (and b!1559744 res!695690) b!1559760))

(assert (= (and b!1559760 res!695693) b!1559757))

(assert (= (and b!1559757 res!695689) b!1559740))

(assert (= (and b!1559740 res!695694) b!1559753))

(assert (= start!144752 b!1559763))

(assert (= (and b!1559764 condMapEmpty!8570) mapIsEmpty!8570))

(assert (= (and b!1559764 (not condMapEmpty!8570)) mapNonEmpty!8570))

(assert (= b!1559750 b!1559764))

(assert (= b!1559758 b!1559750))

(assert (= b!1559747 b!1559758))

(assert (= (and b!1559745 ((_ is LongMap!1843) (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))) b!1559747))

(assert (= b!1559767 b!1559745))

(assert (= (and b!1559768 ((_ is HashMap!1787) (cache!2168 cacheUp!755))) b!1559767))

(assert (= start!144752 b!1559768))

(assert (= (and b!1559741 condMapEmpty!8568) mapIsEmpty!8569))

(assert (= (and b!1559741 (not condMapEmpty!8568)) mapNonEmpty!8569))

(assert (= b!1559739 b!1559741))

(assert (= b!1559752 b!1559739))

(assert (= b!1559769 b!1559752))

(assert (= (and b!1559762 ((_ is LongMap!1842) (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))) b!1559769))

(assert (= b!1559751 b!1559762))

(assert (= (and b!1559761 ((_ is HashMap!1786) (cache!2167 cacheFurthestNullable!103))) b!1559751))

(assert (= b!1559761 b!1559748))

(assert (= start!144752 b!1559761))

(assert (= start!144752 b!1559743))

(assert (= b!1559742 b!1559759))

(assert (= start!144752 b!1559742))

(assert (= (and b!1559746 condMapEmpty!8569) mapIsEmpty!8568))

(assert (= (and b!1559746 (not condMapEmpty!8569)) mapNonEmpty!8568))

(assert (= b!1559770 b!1559746))

(assert (= b!1559765 b!1559770))

(assert (= b!1559754 b!1559765))

(assert (= (and b!1559755 ((_ is LongMap!1844) (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))) b!1559754))

(assert (= b!1559749 b!1559755))

(assert (= (and b!1559756 ((_ is HashMap!1788) (cache!2169 cacheDown!768))) b!1559749))

(assert (= start!144752 b!1559756))

(declare-fun m!1831524 () Bool)

(assert (=> b!1559748 m!1831524))

(declare-fun m!1831526 () Bool)

(assert (=> b!1559753 m!1831526))

(declare-fun m!1831528 () Bool)

(assert (=> mapNonEmpty!8569 m!1831528))

(declare-fun m!1831530 () Bool)

(assert (=> b!1559760 m!1831530))

(declare-fun m!1831532 () Bool)

(assert (=> b!1559760 m!1831532))

(assert (=> b!1559760 m!1831530))

(assert (=> b!1559760 m!1831532))

(declare-fun m!1831534 () Bool)

(assert (=> b!1559760 m!1831534))

(declare-fun m!1831536 () Bool)

(assert (=> b!1559744 m!1831536))

(declare-fun m!1831538 () Bool)

(assert (=> start!144752 m!1831538))

(declare-fun m!1831540 () Bool)

(assert (=> start!144752 m!1831540))

(declare-fun m!1831542 () Bool)

(assert (=> start!144752 m!1831542))

(declare-fun m!1831544 () Bool)

(assert (=> start!144752 m!1831544))

(declare-fun m!1831546 () Bool)

(assert (=> start!144752 m!1831546))

(declare-fun m!1831548 () Bool)

(assert (=> b!1559772 m!1831548))

(declare-fun m!1831550 () Bool)

(assert (=> b!1559761 m!1831550))

(declare-fun m!1831552 () Bool)

(assert (=> b!1559766 m!1831552))

(declare-fun m!1831554 () Bool)

(assert (=> b!1559742 m!1831554))

(declare-fun m!1831556 () Bool)

(assert (=> b!1559742 m!1831556))

(declare-fun m!1831558 () Bool)

(assert (=> b!1559750 m!1831558))

(declare-fun m!1831560 () Bool)

(assert (=> b!1559750 m!1831560))

(declare-fun m!1831562 () Bool)

(assert (=> b!1559739 m!1831562))

(declare-fun m!1831564 () Bool)

(assert (=> b!1559739 m!1831564))

(declare-fun m!1831566 () Bool)

(assert (=> b!1559770 m!1831566))

(declare-fun m!1831568 () Bool)

(assert (=> b!1559770 m!1831568))

(declare-fun m!1831570 () Bool)

(assert (=> b!1559740 m!1831570))

(declare-fun m!1831572 () Bool)

(assert (=> b!1559740 m!1831572))

(declare-fun m!1831574 () Bool)

(assert (=> b!1559771 m!1831574))

(declare-fun m!1831576 () Bool)

(assert (=> mapNonEmpty!8568 m!1831576))

(declare-fun m!1831578 () Bool)

(assert (=> mapNonEmpty!8570 m!1831578))

(declare-fun m!1831580 () Bool)

(assert (=> b!1559763 m!1831580))

(declare-fun m!1831582 () Bool)

(assert (=> b!1559743 m!1831582))

(check-sat (not mapNonEmpty!8569) (not b!1559763) b_and!108869 (not b!1559742) b_and!108875 b_and!108873 b_and!108883 (not b!1559741) (not b!1559760) (not b_next!42325) (not b_next!42321) (not b!1559746) b_and!108871 (not mapNonEmpty!8568) (not b!1559764) (not b!1559772) b_and!108879 (not b_next!42313) (not b!1559744) (not b_next!42317) (not b!1559739) (not b!1559770) (not b!1559766) (not b!1559761) (not b_next!42311) (not b!1559753) (not b!1559748) (not mapNonEmpty!8570) (not b_next!42319) (not b_next!42315) (not b!1559743) (not b!1559740) (not start!144752) b_and!108881 (not b_next!42323) b_and!108877 (not b!1559771) (not b!1559750))
(check-sat b_and!108871 b_and!108879 (not b_next!42311) (not b_next!42319) b_and!108869 b_and!108875 b_and!108873 (not b_next!42315) b_and!108883 (not b_next!42325) (not b_next!42321) (not b_next!42313) (not b_next!42317) b_and!108881 (not b_next!42323) b_and!108877)
(get-model)

(declare-fun b!1559791 () Bool)

(declare-fun e!1001361 () Bool)

(declare-fun e!1001360 () Bool)

(assert (=> b!1559791 (= e!1001361 e!1001360)))

(declare-fun c!253086 () Bool)

(assert (=> b!1559791 (= c!253086 ((_ is Star!4291) (regex!2963 rule!240)))))

(declare-fun call!102206 () Bool)

(declare-fun bm!102200 () Bool)

(declare-fun c!253087 () Bool)

(assert (=> bm!102200 (= call!102206 (validRegex!1718 (ite c!253086 (reg!4620 (regex!2963 rule!240)) (ite c!253087 (regOne!9095 (regex!2963 rule!240)) (regOne!9094 (regex!2963 rule!240))))))))

(declare-fun b!1559792 () Bool)

(declare-fun e!1001362 () Bool)

(assert (=> b!1559792 (= e!1001362 call!102206)))

(declare-fun b!1559793 () Bool)

(assert (=> b!1559793 (= e!1001360 e!1001362)))

(declare-fun res!695709 () Bool)

(declare-fun nullable!1277 (Regex!4291) Bool)

(assert (=> b!1559793 (= res!695709 (not (nullable!1277 (reg!4620 (regex!2963 rule!240)))))))

(assert (=> b!1559793 (=> (not res!695709) (not e!1001362))))

(declare-fun b!1559794 () Bool)

(declare-fun e!1001365 () Bool)

(declare-fun e!1001364 () Bool)

(assert (=> b!1559794 (= e!1001365 e!1001364)))

(declare-fun res!695713 () Bool)

(assert (=> b!1559794 (=> (not res!695713) (not e!1001364))))

(declare-fun call!102205 () Bool)

(assert (=> b!1559794 (= res!695713 call!102205)))

(declare-fun b!1559795 () Bool)

(declare-fun call!102207 () Bool)

(assert (=> b!1559795 (= e!1001364 call!102207)))

(declare-fun b!1559796 () Bool)

(declare-fun res!695712 () Bool)

(declare-fun e!1001359 () Bool)

(assert (=> b!1559796 (=> (not res!695712) (not e!1001359))))

(assert (=> b!1559796 (= res!695712 call!102205)))

(declare-fun e!1001363 () Bool)

(assert (=> b!1559796 (= e!1001363 e!1001359)))

(declare-fun bm!102201 () Bool)

(assert (=> bm!102201 (= call!102205 call!102206)))

(declare-fun b!1559797 () Bool)

(declare-fun res!695711 () Bool)

(assert (=> b!1559797 (=> res!695711 e!1001365)))

(assert (=> b!1559797 (= res!695711 (not ((_ is Concat!7344) (regex!2963 rule!240))))))

(assert (=> b!1559797 (= e!1001363 e!1001365)))

(declare-fun b!1559798 () Bool)

(assert (=> b!1559798 (= e!1001360 e!1001363)))

(assert (=> b!1559798 (= c!253087 ((_ is Union!4291) (regex!2963 rule!240)))))

(declare-fun bm!102202 () Bool)

(assert (=> bm!102202 (= call!102207 (validRegex!1718 (ite c!253087 (regTwo!9095 (regex!2963 rule!240)) (regTwo!9094 (regex!2963 rule!240)))))))

(declare-fun b!1559799 () Bool)

(assert (=> b!1559799 (= e!1001359 call!102207)))

(declare-fun d!462135 () Bool)

(declare-fun res!695710 () Bool)

(assert (=> d!462135 (=> res!695710 e!1001361)))

(assert (=> d!462135 (= res!695710 ((_ is ElementMatch!4291) (regex!2963 rule!240)))))

(assert (=> d!462135 (= (validRegex!1718 (regex!2963 rule!240)) e!1001361)))

(assert (= (and d!462135 (not res!695710)) b!1559791))

(assert (= (and b!1559791 c!253086) b!1559793))

(assert (= (and b!1559791 (not c!253086)) b!1559798))

(assert (= (and b!1559793 res!695709) b!1559792))

(assert (= (and b!1559798 c!253087) b!1559796))

(assert (= (and b!1559798 (not c!253087)) b!1559797))

(assert (= (and b!1559796 res!695712) b!1559799))

(assert (= (and b!1559797 (not res!695711)) b!1559794))

(assert (= (and b!1559794 res!695713) b!1559795))

(assert (= (or b!1559799 b!1559795) bm!102202))

(assert (= (or b!1559796 b!1559794) bm!102201))

(assert (= (or b!1559792 bm!102201) bm!102200))

(declare-fun m!1831584 () Bool)

(assert (=> bm!102200 m!1831584))

(declare-fun m!1831586 () Bool)

(assert (=> b!1559793 m!1831586))

(declare-fun m!1831588 () Bool)

(assert (=> bm!102202 m!1831588))

(assert (=> b!1559753 d!462135))

(declare-fun d!462137 () Bool)

(declare-fun validCacheMapFurthestNullable!81 (MutableMap!1786 BalanceConc!11104) Bool)

(assert (=> d!462137 (= (valid!1477 cacheFurthestNullable!103) (validCacheMapFurthestNullable!81 (cache!2167 cacheFurthestNullable!103) (totalInput!2492 cacheFurthestNullable!103)))))

(declare-fun bs!388850 () Bool)

(assert (= bs!388850 d!462137))

(declare-fun m!1831590 () Bool)

(assert (=> bs!388850 m!1831590))

(assert (=> b!1559744 d!462137))

(declare-fun d!462139 () Bool)

(assert (=> d!462139 (= (array_inv!2021 (_keys!2138 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))) (bvsge (size!13717 (_keys!2138 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559770 d!462139))

(declare-fun d!462141 () Bool)

(assert (=> d!462141 (= (array_inv!2024 (_values!2123 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))) (bvsge (size!13719 (_values!2123 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559770 d!462141))

(declare-fun d!462143 () Bool)

(declare-fun isBalanced!1650 (Conc!5581) Bool)

(assert (=> d!462143 (= (inv!22205 (totalInput!2492 cacheFurthestNullable!103)) (isBalanced!1650 (c!253081 (totalInput!2492 cacheFurthestNullable!103))))))

(declare-fun bs!388851 () Bool)

(assert (= bs!388851 d!462143))

(declare-fun m!1831592 () Bool)

(assert (=> bs!388851 m!1831592))

(assert (=> b!1559761 d!462143))

(declare-fun d!462145 () Bool)

(declare-fun validCacheMapUp!168 (MutableMap!1787) Bool)

(assert (=> d!462145 (= (valid!1479 cacheUp!755) (validCacheMapUp!168 (cache!2168 cacheUp!755)))))

(declare-fun bs!388852 () Bool)

(assert (= bs!388852 d!462145))

(declare-fun m!1831594 () Bool)

(assert (=> bs!388852 m!1831594))

(assert (=> b!1559772 d!462145))

(declare-fun d!462147 () Bool)

(declare-fun validCacheMapDown!168 (MutableMap!1788) Bool)

(assert (=> d!462147 (= (valid!1478 cacheDown!768) (validCacheMapDown!168 (cache!2169 cacheDown!768)))))

(declare-fun bs!388853 () Bool)

(assert (= bs!388853 d!462147))

(declare-fun m!1831596 () Bool)

(assert (=> bs!388853 m!1831596))

(assert (=> b!1559771 d!462147))

(declare-fun d!462149 () Bool)

(assert (=> d!462149 (= (inv!22200 (tag!3227 rule!240)) (= (mod (str.len (value!94080 (tag!3227 rule!240))) 2) 0))))

(assert (=> b!1559742 d!462149))

(declare-fun d!462151 () Bool)

(declare-fun res!695716 () Bool)

(declare-fun e!1001368 () Bool)

(assert (=> d!462151 (=> (not res!695716) (not e!1001368))))

(declare-fun semiInverseModEq!1122 (Int Int) Bool)

(assert (=> d!462151 (= res!695716 (semiInverseModEq!1122 (toChars!4200 (transformation!2963 rule!240)) (toValue!4341 (transformation!2963 rule!240))))))

(assert (=> d!462151 (= (inv!22203 (transformation!2963 rule!240)) e!1001368)))

(declare-fun b!1559802 () Bool)

(declare-fun equivClasses!1063 (Int Int) Bool)

(assert (=> b!1559802 (= e!1001368 (equivClasses!1063 (toChars!4200 (transformation!2963 rule!240)) (toValue!4341 (transformation!2963 rule!240))))))

(assert (= (and d!462151 res!695716) b!1559802))

(declare-fun m!1831598 () Bool)

(assert (=> d!462151 m!1831598))

(declare-fun m!1831600 () Bool)

(assert (=> b!1559802 m!1831600))

(assert (=> b!1559742 d!462151))

(declare-fun d!462153 () Bool)

(declare-fun c!253090 () Bool)

(assert (=> d!462153 (= c!253090 ((_ is Node!5581) (c!253081 input!1676)))))

(declare-fun e!1001373 () Bool)

(assert (=> d!462153 (= (inv!22204 (c!253081 input!1676)) e!1001373)))

(declare-fun b!1559809 () Bool)

(declare-fun inv!22209 (Conc!5581) Bool)

(assert (=> b!1559809 (= e!1001373 (inv!22209 (c!253081 input!1676)))))

(declare-fun b!1559810 () Bool)

(declare-fun e!1001374 () Bool)

(assert (=> b!1559810 (= e!1001373 e!1001374)))

(declare-fun res!695719 () Bool)

(assert (=> b!1559810 (= res!695719 (not ((_ is Leaf!8272) (c!253081 input!1676))))))

(assert (=> b!1559810 (=> res!695719 e!1001374)))

(declare-fun b!1559811 () Bool)

(declare-fun inv!22210 (Conc!5581) Bool)

(assert (=> b!1559811 (= e!1001374 (inv!22210 (c!253081 input!1676)))))

(assert (= (and d!462153 c!253090) b!1559809))

(assert (= (and d!462153 (not c!253090)) b!1559810))

(assert (= (and b!1559810 (not res!695719)) b!1559811))

(declare-fun m!1831602 () Bool)

(assert (=> b!1559809 m!1831602))

(declare-fun m!1831604 () Bool)

(assert (=> b!1559811 m!1831604))

(assert (=> b!1559743 d!462153))

(declare-fun d!462155 () Bool)

(declare-fun e!1001377 () Bool)

(assert (=> d!462155 e!1001377))

(declare-fun res!695722 () Bool)

(assert (=> d!462155 (=> res!695722 e!1001377)))

(declare-fun lt!540263 () Bool)

(assert (=> d!462155 (= res!695722 (not lt!540263))))

(declare-fun drop!792 (List!16977 Int) List!16977)

(declare-fun size!13720 (List!16977) Int)

(assert (=> d!462155 (= lt!540263 (= (list!6512 input!1676) (drop!792 (list!6512 totalInput!568) (- (size!13720 (list!6512 totalInput!568)) (size!13720 (list!6512 input!1676))))))))

(assert (=> d!462155 (= (isSuffix!385 (list!6512 input!1676) (list!6512 totalInput!568)) lt!540263)))

(declare-fun b!1559814 () Bool)

(assert (=> b!1559814 (= e!1001377 (>= (size!13720 (list!6512 totalInput!568)) (size!13720 (list!6512 input!1676))))))

(assert (= (and d!462155 (not res!695722)) b!1559814))

(assert (=> d!462155 m!1831532))

(declare-fun m!1831606 () Bool)

(assert (=> d!462155 m!1831606))

(assert (=> d!462155 m!1831530))

(declare-fun m!1831608 () Bool)

(assert (=> d!462155 m!1831608))

(assert (=> d!462155 m!1831532))

(declare-fun m!1831610 () Bool)

(assert (=> d!462155 m!1831610))

(assert (=> b!1559814 m!1831532))

(assert (=> b!1559814 m!1831606))

(assert (=> b!1559814 m!1831530))

(assert (=> b!1559814 m!1831608))

(assert (=> b!1559760 d!462155))

(declare-fun d!462157 () Bool)

(declare-fun list!6513 (Conc!5581) List!16977)

(assert (=> d!462157 (= (list!6512 input!1676) (list!6513 (c!253081 input!1676)))))

(declare-fun bs!388854 () Bool)

(assert (= bs!388854 d!462157))

(declare-fun m!1831612 () Bool)

(assert (=> bs!388854 m!1831612))

(assert (=> b!1559760 d!462157))

(declare-fun d!462159 () Bool)

(assert (=> d!462159 (= (list!6512 totalInput!568) (list!6513 (c!253081 totalInput!568)))))

(declare-fun bs!388855 () Bool)

(assert (= bs!388855 d!462159))

(declare-fun m!1831614 () Bool)

(assert (=> bs!388855 m!1831614))

(assert (=> b!1559760 d!462159))

(declare-fun d!462161 () Bool)

(assert (=> d!462161 (= (array_inv!2021 (_keys!2136 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))) (bvsge (size!13717 (_keys!2136 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559739 d!462161))

(declare-fun d!462163 () Bool)

(assert (=> d!462163 (= (array_inv!2022 (_values!2121 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))) (bvsge (size!13716 (_values!2121 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559739 d!462163))

(declare-fun d!462165 () Bool)

(assert (=> d!462165 (= (inv!22205 totalInput!568) (isBalanced!1650 (c!253081 totalInput!568)))))

(declare-fun bs!388856 () Bool)

(assert (= bs!388856 d!462165))

(declare-fun m!1831616 () Bool)

(assert (=> bs!388856 m!1831616))

(assert (=> start!144752 d!462165))

(declare-fun d!462167 () Bool)

(declare-fun res!695725 () Bool)

(declare-fun e!1001380 () Bool)

(assert (=> d!462167 (=> (not res!695725) (not e!1001380))))

(assert (=> d!462167 (= res!695725 ((_ is HashMap!1788) (cache!2169 cacheDown!768)))))

(assert (=> d!462167 (= (inv!22208 cacheDown!768) e!1001380)))

(declare-fun b!1559817 () Bool)

(assert (=> b!1559817 (= e!1001380 (validCacheMapDown!168 (cache!2169 cacheDown!768)))))

(assert (= (and d!462167 res!695725) b!1559817))

(assert (=> b!1559817 m!1831596))

(assert (=> start!144752 d!462167))

(declare-fun d!462169 () Bool)

(declare-fun res!695728 () Bool)

(declare-fun e!1001383 () Bool)

(assert (=> d!462169 (=> (not res!695728) (not e!1001383))))

(assert (=> d!462169 (= res!695728 ((_ is HashMap!1787) (cache!2168 cacheUp!755)))))

(assert (=> d!462169 (= (inv!22206 cacheUp!755) e!1001383)))

(declare-fun b!1559820 () Bool)

(assert (=> b!1559820 (= e!1001383 (validCacheMapUp!168 (cache!2168 cacheUp!755)))))

(assert (= (and d!462169 res!695728) b!1559820))

(assert (=> b!1559820 m!1831594))

(assert (=> start!144752 d!462169))

(declare-fun d!462171 () Bool)

(assert (=> d!462171 (= (inv!22205 input!1676) (isBalanced!1650 (c!253081 input!1676)))))

(declare-fun bs!388857 () Bool)

(assert (= bs!388857 d!462171))

(declare-fun m!1831618 () Bool)

(assert (=> bs!388857 m!1831618))

(assert (=> start!144752 d!462171))

(declare-fun d!462173 () Bool)

(declare-fun res!695731 () Bool)

(declare-fun e!1001386 () Bool)

(assert (=> d!462173 (=> (not res!695731) (not e!1001386))))

(assert (=> d!462173 (= res!695731 ((_ is HashMap!1786) (cache!2167 cacheFurthestNullable!103)))))

(assert (=> d!462173 (= (inv!22207 cacheFurthestNullable!103) e!1001386)))

(declare-fun b!1559823 () Bool)

(assert (=> b!1559823 (= e!1001386 (validCacheMapFurthestNullable!81 (cache!2167 cacheFurthestNullable!103) (totalInput!2492 cacheFurthestNullable!103)))))

(assert (= (and d!462173 res!695731) b!1559823))

(assert (=> b!1559823 m!1831590))

(assert (=> start!144752 d!462173))

(declare-fun d!462175 () Bool)

(declare-fun c!253091 () Bool)

(assert (=> d!462175 (= c!253091 ((_ is Node!5581) (c!253081 (totalInput!2492 cacheFurthestNullable!103))))))

(declare-fun e!1001387 () Bool)

(assert (=> d!462175 (= (inv!22204 (c!253081 (totalInput!2492 cacheFurthestNullable!103))) e!1001387)))

(declare-fun b!1559824 () Bool)

(assert (=> b!1559824 (= e!1001387 (inv!22209 (c!253081 (totalInput!2492 cacheFurthestNullable!103))))))

(declare-fun b!1559825 () Bool)

(declare-fun e!1001388 () Bool)

(assert (=> b!1559825 (= e!1001387 e!1001388)))

(declare-fun res!695732 () Bool)

(assert (=> b!1559825 (= res!695732 (not ((_ is Leaf!8272) (c!253081 (totalInput!2492 cacheFurthestNullable!103)))))))

(assert (=> b!1559825 (=> res!695732 e!1001388)))

(declare-fun b!1559826 () Bool)

(assert (=> b!1559826 (= e!1001388 (inv!22210 (c!253081 (totalInput!2492 cacheFurthestNullable!103))))))

(assert (= (and d!462175 c!253091) b!1559824))

(assert (= (and d!462175 (not c!253091)) b!1559825))

(assert (= (and b!1559825 (not res!695732)) b!1559826))

(declare-fun m!1831620 () Bool)

(assert (=> b!1559824 m!1831620))

(declare-fun m!1831622 () Bool)

(assert (=> b!1559826 m!1831622))

(assert (=> b!1559748 d!462175))

(declare-fun d!462177 () Bool)

(assert (=> d!462177 (= (array_inv!2021 (_keys!2137 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))) (bvsge (size!13717 (_keys!2137 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559750 d!462177))

(declare-fun d!462179 () Bool)

(assert (=> d!462179 (= (array_inv!2023 (_values!2122 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))) (bvsge (size!13718 (_values!2122 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1559750 d!462179))

(declare-fun lt!540266 () Bool)

(declare-fun d!462181 () Bool)

(declare-fun isEmpty!10155 (List!16977) Bool)

(assert (=> d!462181 (= lt!540266 (isEmpty!10155 (list!6512 (_1!9634 (_1!9635 (findLongestMatchWithZipperSequenceV3Mem!60 (regex!2963 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun isEmpty!10156 (Conc!5581) Bool)

(assert (=> d!462181 (= lt!540266 (isEmpty!10156 (c!253081 (_1!9634 (_1!9635 (findLongestMatchWithZipperSequenceV3Mem!60 (regex!2963 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(assert (=> d!462181 (= (isEmpty!10154 (_1!9634 (_1!9635 (findLongestMatchWithZipperSequenceV3Mem!60 (regex!2963 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103)))) lt!540266)))

(declare-fun bs!388858 () Bool)

(assert (= bs!388858 d!462181))

(declare-fun m!1831624 () Bool)

(assert (=> bs!388858 m!1831624))

(assert (=> bs!388858 m!1831624))

(declare-fun m!1831626 () Bool)

(assert (=> bs!388858 m!1831626))

(declare-fun m!1831628 () Bool)

(assert (=> bs!388858 m!1831628))

(assert (=> b!1559740 d!462181))

(declare-fun b!1559838 () Bool)

(declare-fun e!1001391 () Bool)

(declare-fun lt!540269 () tuple4!918)

(assert (=> b!1559838 (= e!1001391 (= (totalInput!2492 (_4!459 lt!540269)) totalInput!568))))

(declare-fun b!1559836 () Bool)

(declare-fun res!695744 () Bool)

(assert (=> b!1559836 (=> (not res!695744) (not e!1001391))))

(assert (=> b!1559836 (= res!695744 (valid!1479 (_2!9635 lt!540269)))))

(declare-fun b!1559837 () Bool)

(declare-fun res!695742 () Bool)

(assert (=> b!1559837 (=> (not res!695742) (not e!1001391))))

(assert (=> b!1559837 (= res!695742 (valid!1477 (_4!459 lt!540269)))))

(declare-fun b!1559835 () Bool)

(declare-fun res!695741 () Bool)

(assert (=> b!1559835 (=> (not res!695741) (not e!1001391))))

(assert (=> b!1559835 (= res!695741 (valid!1478 (_3!1385 lt!540269)))))

(declare-fun d!462183 () Bool)

(assert (=> d!462183 e!1001391))

(declare-fun res!695743 () Bool)

(assert (=> d!462183 (=> (not res!695743) (not e!1001391))))

(declare-datatypes ((tuple2!16500 0))(
  ( (tuple2!16501 (_1!9636 List!16977) (_2!9636 List!16977)) )
))
(declare-fun findLongestMatch!268 (Regex!4291 List!16977) tuple2!16500)

(assert (=> d!462183 (= res!695743 (= (tuple2!16501 (list!6512 (_1!9634 (_1!9635 lt!540269))) (list!6512 (_2!9634 (_1!9635 lt!540269)))) (findLongestMatch!268 (regex!2963 rule!240) (list!6512 input!1676))))))

(declare-fun choose!9309 (Regex!4291 BalanceConc!11104 BalanceConc!11104 CacheUp!1088 CacheDown!1094 CacheFurthestNullable!518) tuple4!918)

(assert (=> d!462183 (= lt!540269 (choose!9309 (regex!2963 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!462183 (validRegex!1718 (regex!2963 rule!240))))

(assert (=> d!462183 (= (findLongestMatchWithZipperSequenceV3Mem!60 (regex!2963 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!540269)))

(assert (= (and d!462183 res!695743) b!1559835))

(assert (= (and b!1559835 res!695741) b!1559836))

(assert (= (and b!1559836 res!695744) b!1559837))

(assert (= (and b!1559837 res!695742) b!1559838))

(declare-fun m!1831630 () Bool)

(assert (=> b!1559836 m!1831630))

(declare-fun m!1831632 () Bool)

(assert (=> b!1559837 m!1831632))

(declare-fun m!1831634 () Bool)

(assert (=> b!1559835 m!1831634))

(declare-fun m!1831636 () Bool)

(assert (=> d!462183 m!1831636))

(declare-fun m!1831638 () Bool)

(assert (=> d!462183 m!1831638))

(assert (=> d!462183 m!1831530))

(assert (=> d!462183 m!1831530))

(declare-fun m!1831640 () Bool)

(assert (=> d!462183 m!1831640))

(declare-fun m!1831642 () Bool)

(assert (=> d!462183 m!1831642))

(assert (=> d!462183 m!1831526))

(assert (=> b!1559740 d!462183))

(declare-fun d!462185 () Bool)

(declare-fun res!695749 () Bool)

(declare-fun e!1001394 () Bool)

(assert (=> d!462185 (=> (not res!695749) (not e!1001394))))

(assert (=> d!462185 (= res!695749 (validRegex!1718 (regex!2963 rule!240)))))

(assert (=> d!462185 (= (ruleValid!694 thiss!16438 rule!240) e!1001394)))

(declare-fun b!1559843 () Bool)

(declare-fun res!695750 () Bool)

(assert (=> b!1559843 (=> (not res!695750) (not e!1001394))))

(assert (=> b!1559843 (= res!695750 (not (nullable!1277 (regex!2963 rule!240))))))

(declare-fun b!1559844 () Bool)

(assert (=> b!1559844 (= e!1001394 (not (= (tag!3227 rule!240) (String!19554 ""))))))

(assert (= (and d!462185 res!695749) b!1559843))

(assert (= (and b!1559843 res!695750) b!1559844))

(assert (=> d!462185 m!1831526))

(declare-fun m!1831644 () Bool)

(assert (=> b!1559843 m!1831644))

(assert (=> b!1559766 d!462185))

(declare-fun d!462187 () Bool)

(declare-fun c!253092 () Bool)

(assert (=> d!462187 (= c!253092 ((_ is Node!5581) (c!253081 totalInput!568)))))

(declare-fun e!1001395 () Bool)

(assert (=> d!462187 (= (inv!22204 (c!253081 totalInput!568)) e!1001395)))

(declare-fun b!1559845 () Bool)

(assert (=> b!1559845 (= e!1001395 (inv!22209 (c!253081 totalInput!568)))))

(declare-fun b!1559846 () Bool)

(declare-fun e!1001396 () Bool)

(assert (=> b!1559846 (= e!1001395 e!1001396)))

(declare-fun res!695751 () Bool)

(assert (=> b!1559846 (= res!695751 (not ((_ is Leaf!8272) (c!253081 totalInput!568))))))

(assert (=> b!1559846 (=> res!695751 e!1001396)))

(declare-fun b!1559847 () Bool)

(assert (=> b!1559847 (= e!1001396 (inv!22210 (c!253081 totalInput!568)))))

(assert (= (and d!462187 c!253092) b!1559845))

(assert (= (and d!462187 (not c!253092)) b!1559846))

(assert (= (and b!1559846 (not res!695751)) b!1559847))

(declare-fun m!1831646 () Bool)

(assert (=> b!1559845 m!1831646))

(declare-fun m!1831648 () Bool)

(assert (=> b!1559847 m!1831648))

(assert (=> b!1559763 d!462187))

(declare-fun e!1001410 () Bool)

(declare-fun mapValue!8573 () List!16978)

(declare-fun tp_is_empty!7081 () Bool)

(declare-fun setRes!11099 () Bool)

(declare-fun tp!458510 () Bool)

(declare-fun e!1001412 () Bool)

(declare-fun b!1559862 () Bool)

(declare-fun inv!22211 (Context!1618) Bool)

(assert (=> b!1559862 (= e!1001412 (and (inv!22211 (_1!9630 (_1!9631 (h!22311 mapValue!8573)))) e!1001410 tp_is_empty!7081 setRes!11099 tp!458510))))

(declare-fun condSetEmpty!11099 () Bool)

(assert (=> b!1559862 (= condSetEmpty!11099 (= (_2!9631 (h!22311 mapValue!8573)) ((as const (Array Context!1618 Bool)) false)))))

(declare-fun b!1559863 () Bool)

(declare-fun e!1001411 () Bool)

(declare-fun tp!458505 () Bool)

(assert (=> b!1559863 (= e!1001411 tp!458505)))

(declare-fun setIsEmpty!11098 () Bool)

(assert (=> setIsEmpty!11098 setRes!11099))

(declare-fun b!1559864 () Bool)

(declare-fun e!1001413 () Bool)

(declare-fun tp!458512 () Bool)

(assert (=> b!1559864 (= e!1001413 tp!458512)))

(declare-fun b!1559865 () Bool)

(declare-fun e!1001409 () Bool)

(declare-fun tp!458508 () Bool)

(assert (=> b!1559865 (= e!1001409 tp!458508)))

(declare-fun setElem!11098 () Context!1618)

(declare-fun setNonEmpty!11098 () Bool)

(declare-fun tp!458507 () Bool)

(assert (=> setNonEmpty!11098 (= setRes!11099 (and tp!458507 (inv!22211 setElem!11098) e!1001413))))

(declare-fun setRest!11098 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11098 (= (_2!9631 (h!22311 mapValue!8573)) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11098 true) setRest!11098))))

(declare-fun setNonEmpty!11099 () Bool)

(declare-fun setElem!11099 () Context!1618)

(declare-fun setRes!11098 () Bool)

(declare-fun tp!458506 () Bool)

(assert (=> setNonEmpty!11099 (= setRes!11098 (and tp!458506 (inv!22211 setElem!11099) e!1001411))))

(declare-fun mapDefault!8573 () List!16978)

(declare-fun setRest!11099 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11099 (= (_2!9631 (h!22311 mapDefault!8573)) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11099 true) setRest!11099))))

(declare-fun b!1559866 () Bool)

(declare-fun tp!458509 () Bool)

(assert (=> b!1559866 (= e!1001410 tp!458509)))

(declare-fun b!1559867 () Bool)

(declare-fun e!1001414 () Bool)

(declare-fun tp!458511 () Bool)

(assert (=> b!1559867 (= e!1001414 (and (inv!22211 (_1!9630 (_1!9631 (h!22311 mapDefault!8573)))) e!1001409 tp_is_empty!7081 setRes!11098 tp!458511))))

(declare-fun condSetEmpty!11098 () Bool)

(assert (=> b!1559867 (= condSetEmpty!11098 (= (_2!9631 (h!22311 mapDefault!8573)) ((as const (Array Context!1618 Bool)) false)))))

(declare-fun mapNonEmpty!8573 () Bool)

(declare-fun mapRes!8573 () Bool)

(declare-fun tp!458504 () Bool)

(assert (=> mapNonEmpty!8573 (= mapRes!8573 (and tp!458504 e!1001412))))

(declare-fun mapKey!8573 () (_ BitVec 32))

(declare-fun mapRest!8573 () (Array (_ BitVec 32) List!16978))

(assert (=> mapNonEmpty!8573 (= mapRest!8569 (store mapRest!8573 mapKey!8573 mapValue!8573))))

(declare-fun mapIsEmpty!8573 () Bool)

(assert (=> mapIsEmpty!8573 mapRes!8573))

(declare-fun setIsEmpty!11099 () Bool)

(assert (=> setIsEmpty!11099 setRes!11098))

(declare-fun condMapEmpty!8573 () Bool)

(assert (=> mapNonEmpty!8570 (= condMapEmpty!8573 (= mapRest!8569 ((as const (Array (_ BitVec 32) List!16978)) mapDefault!8573)))))

(assert (=> mapNonEmpty!8570 (= tp!458475 (and e!1001414 mapRes!8573))))

(assert (= (and mapNonEmpty!8570 condMapEmpty!8573) mapIsEmpty!8573))

(assert (= (and mapNonEmpty!8570 (not condMapEmpty!8573)) mapNonEmpty!8573))

(assert (= b!1559862 b!1559866))

(assert (= (and b!1559862 condSetEmpty!11099) setIsEmpty!11098))

(assert (= (and b!1559862 (not condSetEmpty!11099)) setNonEmpty!11098))

(assert (= setNonEmpty!11098 b!1559864))

(assert (= (and mapNonEmpty!8573 ((_ is Cons!16910) mapValue!8573)) b!1559862))

(assert (= b!1559867 b!1559865))

(assert (= (and b!1559867 condSetEmpty!11098) setIsEmpty!11099))

(assert (= (and b!1559867 (not condSetEmpty!11098)) setNonEmpty!11099))

(assert (= setNonEmpty!11099 b!1559863))

(assert (= (and mapNonEmpty!8570 ((_ is Cons!16910) mapDefault!8573)) b!1559867))

(declare-fun m!1831650 () Bool)

(assert (=> mapNonEmpty!8573 m!1831650))

(declare-fun m!1831652 () Bool)

(assert (=> b!1559867 m!1831652))

(declare-fun m!1831654 () Bool)

(assert (=> setNonEmpty!11099 m!1831654))

(declare-fun m!1831656 () Bool)

(assert (=> setNonEmpty!11098 m!1831656))

(declare-fun m!1831658 () Bool)

(assert (=> b!1559862 m!1831658))

(declare-fun e!1001421 () Bool)

(assert (=> mapNonEmpty!8570 (= tp!458483 e!1001421)))

(declare-fun b!1559876 () Bool)

(declare-fun e!1001423 () Bool)

(declare-fun tp!458524 () Bool)

(assert (=> b!1559876 (= e!1001423 tp!458524)))

(declare-fun b!1559877 () Bool)

(declare-fun e!1001422 () Bool)

(declare-fun tp!458522 () Bool)

(assert (=> b!1559877 (= e!1001422 tp!458522)))

(declare-fun setRes!11102 () Bool)

(declare-fun setElem!11102 () Context!1618)

(declare-fun tp!458523 () Bool)

(declare-fun setNonEmpty!11102 () Bool)

(assert (=> setNonEmpty!11102 (= setRes!11102 (and tp!458523 (inv!22211 setElem!11102) e!1001422))))

(declare-fun setRest!11102 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11102 (= (_2!9631 (h!22311 mapValue!8570)) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11102 true) setRest!11102))))

(declare-fun setIsEmpty!11102 () Bool)

(assert (=> setIsEmpty!11102 setRes!11102))

(declare-fun b!1559878 () Bool)

(declare-fun tp!458521 () Bool)

(assert (=> b!1559878 (= e!1001421 (and (inv!22211 (_1!9630 (_1!9631 (h!22311 mapValue!8570)))) e!1001423 tp_is_empty!7081 setRes!11102 tp!458521))))

(declare-fun condSetEmpty!11102 () Bool)

(assert (=> b!1559878 (= condSetEmpty!11102 (= (_2!9631 (h!22311 mapValue!8570)) ((as const (Array Context!1618 Bool)) false)))))

(assert (= b!1559878 b!1559876))

(assert (= (and b!1559878 condSetEmpty!11102) setIsEmpty!11102))

(assert (= (and b!1559878 (not condSetEmpty!11102)) setNonEmpty!11102))

(assert (= setNonEmpty!11102 b!1559877))

(assert (= (and mapNonEmpty!8570 ((_ is Cons!16910) mapValue!8570)) b!1559878))

(declare-fun m!1831660 () Bool)

(assert (=> setNonEmpty!11102 m!1831660))

(declare-fun m!1831662 () Bool)

(assert (=> b!1559878 m!1831662))

(declare-fun tp!458536 () Bool)

(declare-fun b!1559887 () Bool)

(declare-fun setRes!11105 () Bool)

(declare-fun e!1001432 () Bool)

(declare-fun tp!458537 () Bool)

(declare-fun e!1001431 () Bool)

(assert (=> b!1559887 (= e!1001431 (and tp!458536 (inv!22211 (_2!9632 (_1!9633 (h!22313 (zeroValue!2101 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768)))))))))) e!1001432 tp_is_empty!7081 setRes!11105 tp!458537))))

(declare-fun condSetEmpty!11105 () Bool)

(assert (=> b!1559887 (= condSetEmpty!11105 (= (_2!9633 (h!22313 (zeroValue!2101 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768)))))))) ((as const (Array Context!1618 Bool)) false)))))

(assert (=> b!1559770 (= tp!458477 e!1001431)))

(declare-fun setIsEmpty!11105 () Bool)

(assert (=> setIsEmpty!11105 setRes!11105))

(declare-fun b!1559888 () Bool)

(declare-fun tp!458539 () Bool)

(assert (=> b!1559888 (= e!1001432 tp!458539)))

(declare-fun b!1559889 () Bool)

(declare-fun e!1001430 () Bool)

(declare-fun tp!458535 () Bool)

(assert (=> b!1559889 (= e!1001430 tp!458535)))

(declare-fun tp!458538 () Bool)

(declare-fun setNonEmpty!11105 () Bool)

(declare-fun setElem!11105 () Context!1618)

(assert (=> setNonEmpty!11105 (= setRes!11105 (and tp!458538 (inv!22211 setElem!11105) e!1001430))))

(declare-fun setRest!11105 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11105 (= (_2!9633 (h!22313 (zeroValue!2101 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11105 true) setRest!11105))))

(assert (= b!1559887 b!1559888))

(assert (= (and b!1559887 condSetEmpty!11105) setIsEmpty!11105))

(assert (= (and b!1559887 (not condSetEmpty!11105)) setNonEmpty!11105))

(assert (= setNonEmpty!11105 b!1559889))

(assert (= (and b!1559770 ((_ is Cons!16912) (zeroValue!2101 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768)))))))) b!1559887))

(declare-fun m!1831664 () Bool)

(assert (=> b!1559887 m!1831664))

(declare-fun m!1831666 () Bool)

(assert (=> setNonEmpty!11105 m!1831666))

(declare-fun tp!458542 () Bool)

(declare-fun tp!458541 () Bool)

(declare-fun setRes!11106 () Bool)

(declare-fun e!1001435 () Bool)

(declare-fun b!1559890 () Bool)

(declare-fun e!1001434 () Bool)

(assert (=> b!1559890 (= e!1001434 (and tp!458541 (inv!22211 (_2!9632 (_1!9633 (h!22313 (minValue!2101 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768)))))))))) e!1001435 tp_is_empty!7081 setRes!11106 tp!458542))))

(declare-fun condSetEmpty!11106 () Bool)

(assert (=> b!1559890 (= condSetEmpty!11106 (= (_2!9633 (h!22313 (minValue!2101 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768)))))))) ((as const (Array Context!1618 Bool)) false)))))

(assert (=> b!1559770 (= tp!458474 e!1001434)))

(declare-fun setIsEmpty!11106 () Bool)

(assert (=> setIsEmpty!11106 setRes!11106))

(declare-fun b!1559891 () Bool)

(declare-fun tp!458544 () Bool)

(assert (=> b!1559891 (= e!1001435 tp!458544)))

(declare-fun b!1559892 () Bool)

(declare-fun e!1001433 () Bool)

(declare-fun tp!458540 () Bool)

(assert (=> b!1559892 (= e!1001433 tp!458540)))

(declare-fun setElem!11106 () Context!1618)

(declare-fun setNonEmpty!11106 () Bool)

(declare-fun tp!458543 () Bool)

(assert (=> setNonEmpty!11106 (= setRes!11106 (and tp!458543 (inv!22211 setElem!11106) e!1001433))))

(declare-fun setRest!11106 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11106 (= (_2!9633 (h!22313 (minValue!2101 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11106 true) setRest!11106))))

(assert (= b!1559890 b!1559891))

(assert (= (and b!1559890 condSetEmpty!11106) setIsEmpty!11106))

(assert (= (and b!1559890 (not condSetEmpty!11106)) setNonEmpty!11106))

(assert (= setNonEmpty!11106 b!1559892))

(assert (= (and b!1559770 ((_ is Cons!16912) (minValue!2101 (v!23777 (underlying!3897 (v!23778 (underlying!3898 (cache!2169 cacheDown!768)))))))) b!1559890))

(declare-fun m!1831668 () Bool)

(assert (=> b!1559890 m!1831668))

(declare-fun m!1831670 () Bool)

(assert (=> setNonEmpty!11106 m!1831670))

(declare-fun b!1559907 () Bool)

(declare-fun e!1001450 () Bool)

(declare-fun tp!458577 () Bool)

(assert (=> b!1559907 (= e!1001450 tp!458577)))

(declare-fun b!1559908 () Bool)

(declare-fun e!1001449 () Bool)

(declare-fun tp!458575 () Bool)

(assert (=> b!1559908 (= e!1001449 tp!458575)))

(declare-fun setRes!11112 () Bool)

(declare-fun mapDefault!8576 () List!16980)

(declare-fun e!1001452 () Bool)

(declare-fun b!1559909 () Bool)

(declare-fun tp!458572 () Bool)

(declare-fun tp!458570 () Bool)

(declare-fun e!1001448 () Bool)

(assert (=> b!1559909 (= e!1001452 (and tp!458570 (inv!22211 (_2!9632 (_1!9633 (h!22313 mapDefault!8576)))) e!1001448 tp_is_empty!7081 setRes!11112 tp!458572))))

(declare-fun condSetEmpty!11111 () Bool)

(assert (=> b!1559909 (= condSetEmpty!11111 (= (_2!9633 (h!22313 mapDefault!8576)) ((as const (Array Context!1618 Bool)) false)))))

(declare-fun b!1559910 () Bool)

(declare-fun e!1001453 () Bool)

(declare-fun tp!458573 () Bool)

(assert (=> b!1559910 (= e!1001453 tp!458573)))

(declare-fun setIsEmpty!11111 () Bool)

(declare-fun setRes!11111 () Bool)

(assert (=> setIsEmpty!11111 setRes!11111))

(declare-fun setNonEmpty!11111 () Bool)

(declare-fun tp!458576 () Bool)

(declare-fun setElem!11111 () Context!1618)

(assert (=> setNonEmpty!11111 (= setRes!11111 (and tp!458576 (inv!22211 setElem!11111) e!1001450))))

(declare-fun mapValue!8576 () List!16980)

(declare-fun setRest!11112 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11111 (= (_2!9633 (h!22313 mapValue!8576)) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11111 true) setRest!11112))))

(declare-fun b!1559911 () Bool)

(declare-fun tp!458571 () Bool)

(assert (=> b!1559911 (= e!1001448 tp!458571)))

(declare-fun e!1001451 () Bool)

(declare-fun tp!458567 () Bool)

(declare-fun tp!458574 () Bool)

(declare-fun b!1559912 () Bool)

(assert (=> b!1559912 (= e!1001451 (and tp!458567 (inv!22211 (_2!9632 (_1!9633 (h!22313 mapValue!8576)))) e!1001449 tp_is_empty!7081 setRes!11111 tp!458574))))

(declare-fun condSetEmpty!11112 () Bool)

(assert (=> b!1559912 (= condSetEmpty!11112 (= (_2!9633 (h!22313 mapValue!8576)) ((as const (Array Context!1618 Bool)) false)))))

(declare-fun setNonEmpty!11112 () Bool)

(declare-fun setElem!11112 () Context!1618)

(declare-fun tp!458568 () Bool)

(assert (=> setNonEmpty!11112 (= setRes!11112 (and tp!458568 (inv!22211 setElem!11112) e!1001453))))

(declare-fun setRest!11111 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11112 (= (_2!9633 (h!22313 mapDefault!8576)) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11112 true) setRest!11111))))

(declare-fun mapIsEmpty!8576 () Bool)

(declare-fun mapRes!8576 () Bool)

(assert (=> mapIsEmpty!8576 mapRes!8576))

(declare-fun mapNonEmpty!8576 () Bool)

(declare-fun tp!458569 () Bool)

(assert (=> mapNonEmpty!8576 (= mapRes!8576 (and tp!458569 e!1001451))))

(declare-fun mapKey!8576 () (_ BitVec 32))

(declare-fun mapRest!8576 () (Array (_ BitVec 32) List!16980))

(assert (=> mapNonEmpty!8576 (= mapRest!8570 (store mapRest!8576 mapKey!8576 mapValue!8576))))

(declare-fun setIsEmpty!11112 () Bool)

(assert (=> setIsEmpty!11112 setRes!11112))

(declare-fun condMapEmpty!8576 () Bool)

(assert (=> mapNonEmpty!8568 (= condMapEmpty!8576 (= mapRest!8570 ((as const (Array (_ BitVec 32) List!16980)) mapDefault!8576)))))

(assert (=> mapNonEmpty!8568 (= tp!458466 (and e!1001452 mapRes!8576))))

(assert (= (and mapNonEmpty!8568 condMapEmpty!8576) mapIsEmpty!8576))

(assert (= (and mapNonEmpty!8568 (not condMapEmpty!8576)) mapNonEmpty!8576))

(assert (= b!1559912 b!1559908))

(assert (= (and b!1559912 condSetEmpty!11112) setIsEmpty!11111))

(assert (= (and b!1559912 (not condSetEmpty!11112)) setNonEmpty!11111))

(assert (= setNonEmpty!11111 b!1559907))

(assert (= (and mapNonEmpty!8576 ((_ is Cons!16912) mapValue!8576)) b!1559912))

(assert (= b!1559909 b!1559911))

(assert (= (and b!1559909 condSetEmpty!11111) setIsEmpty!11112))

(assert (= (and b!1559909 (not condSetEmpty!11111)) setNonEmpty!11112))

(assert (= setNonEmpty!11112 b!1559910))

(assert (= (and mapNonEmpty!8568 ((_ is Cons!16912) mapDefault!8576)) b!1559909))

(declare-fun m!1831672 () Bool)

(assert (=> b!1559912 m!1831672))

(declare-fun m!1831674 () Bool)

(assert (=> setNonEmpty!11112 m!1831674))

(declare-fun m!1831676 () Bool)

(assert (=> b!1559909 m!1831676))

(declare-fun m!1831678 () Bool)

(assert (=> mapNonEmpty!8576 m!1831678))

(declare-fun m!1831680 () Bool)

(assert (=> setNonEmpty!11111 m!1831680))

(declare-fun setRes!11113 () Bool)

(declare-fun e!1001455 () Bool)

(declare-fun tp!458579 () Bool)

(declare-fun tp!458580 () Bool)

(declare-fun b!1559913 () Bool)

(declare-fun e!1001456 () Bool)

(assert (=> b!1559913 (= e!1001455 (and tp!458579 (inv!22211 (_2!9632 (_1!9633 (h!22313 mapValue!8569)))) e!1001456 tp_is_empty!7081 setRes!11113 tp!458580))))

(declare-fun condSetEmpty!11113 () Bool)

(assert (=> b!1559913 (= condSetEmpty!11113 (= (_2!9633 (h!22313 mapValue!8569)) ((as const (Array Context!1618 Bool)) false)))))

(assert (=> mapNonEmpty!8568 (= tp!458476 e!1001455)))

(declare-fun setIsEmpty!11113 () Bool)

(assert (=> setIsEmpty!11113 setRes!11113))

(declare-fun b!1559914 () Bool)

(declare-fun tp!458582 () Bool)

(assert (=> b!1559914 (= e!1001456 tp!458582)))

(declare-fun b!1559915 () Bool)

(declare-fun e!1001454 () Bool)

(declare-fun tp!458578 () Bool)

(assert (=> b!1559915 (= e!1001454 tp!458578)))

(declare-fun tp!458581 () Bool)

(declare-fun setElem!11113 () Context!1618)

(declare-fun setNonEmpty!11113 () Bool)

(assert (=> setNonEmpty!11113 (= setRes!11113 (and tp!458581 (inv!22211 setElem!11113) e!1001454))))

(declare-fun setRest!11113 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11113 (= (_2!9633 (h!22313 mapValue!8569)) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11113 true) setRest!11113))))

(assert (= b!1559913 b!1559914))

(assert (= (and b!1559913 condSetEmpty!11113) setIsEmpty!11113))

(assert (= (and b!1559913 (not condSetEmpty!11113)) setNonEmpty!11113))

(assert (= setNonEmpty!11113 b!1559915))

(assert (= (and mapNonEmpty!8568 ((_ is Cons!16912) mapValue!8569)) b!1559913))

(declare-fun m!1831682 () Bool)

(assert (=> b!1559913 m!1831682))

(declare-fun m!1831684 () Bool)

(assert (=> setNonEmpty!11113 m!1831684))

(declare-fun b!1559927 () Bool)

(declare-fun e!1001459 () Bool)

(declare-fun tp!458597 () Bool)

(declare-fun tp!458594 () Bool)

(assert (=> b!1559927 (= e!1001459 (and tp!458597 tp!458594))))

(declare-fun b!1559926 () Bool)

(assert (=> b!1559926 (= e!1001459 tp_is_empty!7081)))

(assert (=> b!1559742 (= tp!458480 e!1001459)))

(declare-fun b!1559928 () Bool)

(declare-fun tp!458596 () Bool)

(assert (=> b!1559928 (= e!1001459 tp!458596)))

(declare-fun b!1559929 () Bool)

(declare-fun tp!458593 () Bool)

(declare-fun tp!458595 () Bool)

(assert (=> b!1559929 (= e!1001459 (and tp!458593 tp!458595))))

(assert (= (and b!1559742 ((_ is ElementMatch!4291) (regex!2963 rule!240))) b!1559926))

(assert (= (and b!1559742 ((_ is Concat!7344) (regex!2963 rule!240))) b!1559927))

(assert (= (and b!1559742 ((_ is Star!4291) (regex!2963 rule!240))) b!1559928))

(assert (= (and b!1559742 ((_ is Union!4291) (regex!2963 rule!240))) b!1559929))

(declare-fun b!1559940 () Bool)

(declare-fun e!1001468 () Bool)

(declare-fun tp!458616 () Bool)

(assert (=> b!1559940 (= e!1001468 tp!458616)))

(declare-fun setIsEmpty!11118 () Bool)

(declare-fun setRes!11118 () Bool)

(assert (=> setIsEmpty!11118 setRes!11118))

(declare-fun mapNonEmpty!8579 () Bool)

(declare-fun mapRes!8579 () Bool)

(declare-fun tp!458612 () Bool)

(declare-fun e!1001470 () Bool)

(assert (=> mapNonEmpty!8579 (= mapRes!8579 (and tp!458612 e!1001470))))

(declare-fun mapRest!8579 () (Array (_ BitVec 32) List!16976))

(declare-fun mapValue!8579 () List!16976)

(declare-fun mapKey!8579 () (_ BitVec 32))

(assert (=> mapNonEmpty!8579 (= mapRest!8568 (store mapRest!8579 mapKey!8579 mapValue!8579))))

(declare-fun b!1559941 () Bool)

(declare-fun e!1001471 () Bool)

(declare-fun tp!458617 () Bool)

(assert (=> b!1559941 (= e!1001471 tp!458617)))

(declare-fun b!1559942 () Bool)

(declare-fun tp!458613 () Bool)

(assert (=> b!1559942 (= e!1001470 (and setRes!11118 tp!458613))))

(declare-fun condSetEmpty!11118 () Bool)

(assert (=> b!1559942 (= condSetEmpty!11118 (= (_1!9628 (_1!9629 (h!22309 mapValue!8579))) ((as const (Array Context!1618 Bool)) false)))))

(declare-fun setIsEmpty!11119 () Bool)

(declare-fun setRes!11119 () Bool)

(assert (=> setIsEmpty!11119 setRes!11119))

(declare-fun setElem!11119 () Context!1618)

(declare-fun setNonEmpty!11119 () Bool)

(declare-fun tp!458614 () Bool)

(assert (=> setNonEmpty!11119 (= setRes!11119 (and tp!458614 (inv!22211 setElem!11119) e!1001468))))

(declare-fun mapDefault!8579 () List!16976)

(declare-fun setRest!11118 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11119 (= (_1!9628 (_1!9629 (h!22309 mapDefault!8579))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11119 true) setRest!11118))))

(declare-fun mapIsEmpty!8579 () Bool)

(assert (=> mapIsEmpty!8579 mapRes!8579))

(declare-fun b!1559943 () Bool)

(declare-fun e!1001469 () Bool)

(declare-fun tp!458618 () Bool)

(assert (=> b!1559943 (= e!1001469 (and setRes!11119 tp!458618))))

(declare-fun condSetEmpty!11119 () Bool)

(assert (=> b!1559943 (= condSetEmpty!11119 (= (_1!9628 (_1!9629 (h!22309 mapDefault!8579))) ((as const (Array Context!1618 Bool)) false)))))

(declare-fun tp!458615 () Bool)

(declare-fun setNonEmpty!11118 () Bool)

(declare-fun setElem!11118 () Context!1618)

(assert (=> setNonEmpty!11118 (= setRes!11118 (and tp!458615 (inv!22211 setElem!11118) e!1001471))))

(declare-fun setRest!11119 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11118 (= (_1!9628 (_1!9629 (h!22309 mapValue!8579))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11118 true) setRest!11119))))

(declare-fun condMapEmpty!8579 () Bool)

(assert (=> mapNonEmpty!8569 (= condMapEmpty!8579 (= mapRest!8568 ((as const (Array (_ BitVec 32) List!16976)) mapDefault!8579)))))

(assert (=> mapNonEmpty!8569 (= tp!458465 (and e!1001469 mapRes!8579))))

(assert (= (and mapNonEmpty!8569 condMapEmpty!8579) mapIsEmpty!8579))

(assert (= (and mapNonEmpty!8569 (not condMapEmpty!8579)) mapNonEmpty!8579))

(assert (= (and b!1559942 condSetEmpty!11118) setIsEmpty!11118))

(assert (= (and b!1559942 (not condSetEmpty!11118)) setNonEmpty!11118))

(assert (= setNonEmpty!11118 b!1559941))

(assert (= (and mapNonEmpty!8579 ((_ is Cons!16908) mapValue!8579)) b!1559942))

(assert (= (and b!1559943 condSetEmpty!11119) setIsEmpty!11119))

(assert (= (and b!1559943 (not condSetEmpty!11119)) setNonEmpty!11119))

(assert (= setNonEmpty!11119 b!1559940))

(assert (= (and mapNonEmpty!8569 ((_ is Cons!16908) mapDefault!8579)) b!1559943))

(declare-fun m!1831686 () Bool)

(assert (=> mapNonEmpty!8579 m!1831686))

(declare-fun m!1831688 () Bool)

(assert (=> setNonEmpty!11119 m!1831688))

(declare-fun m!1831690 () Bool)

(assert (=> setNonEmpty!11118 m!1831690))

(declare-fun b!1559951 () Bool)

(declare-fun e!1001476 () Bool)

(declare-fun tp!458627 () Bool)

(assert (=> b!1559951 (= e!1001476 tp!458627)))

(declare-fun setRes!11122 () Bool)

(declare-fun tp!458625 () Bool)

(declare-fun setNonEmpty!11122 () Bool)

(declare-fun setElem!11122 () Context!1618)

(assert (=> setNonEmpty!11122 (= setRes!11122 (and tp!458625 (inv!22211 setElem!11122) e!1001476))))

(declare-fun setRest!11122 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11122 (= (_1!9628 (_1!9629 (h!22309 mapValue!8568))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11122 true) setRest!11122))))

(declare-fun setIsEmpty!11122 () Bool)

(assert (=> setIsEmpty!11122 setRes!11122))

(declare-fun e!1001477 () Bool)

(assert (=> mapNonEmpty!8569 (= tp!458460 e!1001477)))

(declare-fun b!1559950 () Bool)

(declare-fun tp!458626 () Bool)

(assert (=> b!1559950 (= e!1001477 (and setRes!11122 tp!458626))))

(declare-fun condSetEmpty!11122 () Bool)

(assert (=> b!1559950 (= condSetEmpty!11122 (= (_1!9628 (_1!9629 (h!22309 mapValue!8568))) ((as const (Array Context!1618 Bool)) false)))))

(assert (= (and b!1559950 condSetEmpty!11122) setIsEmpty!11122))

(assert (= (and b!1559950 (not condSetEmpty!11122)) setNonEmpty!11122))

(assert (= setNonEmpty!11122 b!1559951))

(assert (= (and mapNonEmpty!8569 ((_ is Cons!16908) mapValue!8568)) b!1559950))

(declare-fun m!1831692 () Bool)

(assert (=> setNonEmpty!11122 m!1831692))

(declare-fun b!1559953 () Bool)

(declare-fun e!1001478 () Bool)

(declare-fun tp!458630 () Bool)

(assert (=> b!1559953 (= e!1001478 tp!458630)))

(declare-fun setNonEmpty!11123 () Bool)

(declare-fun setElem!11123 () Context!1618)

(declare-fun tp!458628 () Bool)

(declare-fun setRes!11123 () Bool)

(assert (=> setNonEmpty!11123 (= setRes!11123 (and tp!458628 (inv!22211 setElem!11123) e!1001478))))

(declare-fun setRest!11123 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11123 (= (_1!9628 (_1!9629 (h!22309 mapDefault!8568))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11123 true) setRest!11123))))

(declare-fun setIsEmpty!11123 () Bool)

(assert (=> setIsEmpty!11123 setRes!11123))

(declare-fun e!1001479 () Bool)

(assert (=> b!1559741 (= tp!458467 e!1001479)))

(declare-fun b!1559952 () Bool)

(declare-fun tp!458629 () Bool)

(assert (=> b!1559952 (= e!1001479 (and setRes!11123 tp!458629))))

(declare-fun condSetEmpty!11123 () Bool)

(assert (=> b!1559952 (= condSetEmpty!11123 (= (_1!9628 (_1!9629 (h!22309 mapDefault!8568))) ((as const (Array Context!1618 Bool)) false)))))

(assert (= (and b!1559952 condSetEmpty!11123) setIsEmpty!11123))

(assert (= (and b!1559952 (not condSetEmpty!11123)) setNonEmpty!11123))

(assert (= setNonEmpty!11123 b!1559953))

(assert (= (and b!1559741 ((_ is Cons!16908) mapDefault!8568)) b!1559952))

(declare-fun m!1831694 () Bool)

(assert (=> setNonEmpty!11123 m!1831694))

(declare-fun tp!458639 () Bool)

(declare-fun tp!458638 () Bool)

(declare-fun e!1001484 () Bool)

(declare-fun b!1559962 () Bool)

(assert (=> b!1559962 (= e!1001484 (and (inv!22204 (left!13721 (c!253081 input!1676))) tp!458638 (inv!22204 (right!14051 (c!253081 input!1676))) tp!458639))))

(declare-fun b!1559964 () Bool)

(declare-fun e!1001485 () Bool)

(declare-fun tp!458637 () Bool)

(assert (=> b!1559964 (= e!1001485 tp!458637)))

(declare-fun b!1559963 () Bool)

(declare-fun inv!22212 (IArray!11167) Bool)

(assert (=> b!1559963 (= e!1001484 (and (inv!22212 (xs!8381 (c!253081 input!1676))) e!1001485))))

(assert (=> b!1559743 (= tp!458471 (and (inv!22204 (c!253081 input!1676)) e!1001484))))

(assert (= (and b!1559743 ((_ is Node!5581) (c!253081 input!1676))) b!1559962))

(assert (= b!1559963 b!1559964))

(assert (= (and b!1559743 ((_ is Leaf!8272) (c!253081 input!1676))) b!1559963))

(declare-fun m!1831696 () Bool)

(assert (=> b!1559962 m!1831696))

(declare-fun m!1831698 () Bool)

(assert (=> b!1559962 m!1831698))

(declare-fun m!1831700 () Bool)

(assert (=> b!1559963 m!1831700))

(assert (=> b!1559743 m!1831582))

(declare-fun b!1559966 () Bool)

(declare-fun e!1001486 () Bool)

(declare-fun tp!458642 () Bool)

(assert (=> b!1559966 (= e!1001486 tp!458642)))

(declare-fun setRes!11124 () Bool)

(declare-fun setElem!11124 () Context!1618)

(declare-fun setNonEmpty!11124 () Bool)

(declare-fun tp!458640 () Bool)

(assert (=> setNonEmpty!11124 (= setRes!11124 (and tp!458640 (inv!22211 setElem!11124) e!1001486))))

(declare-fun setRest!11124 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11124 (= (_1!9628 (_1!9629 (h!22309 (zeroValue!2099 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11124 true) setRest!11124))))

(declare-fun setIsEmpty!11124 () Bool)

(assert (=> setIsEmpty!11124 setRes!11124))

(declare-fun e!1001487 () Bool)

(assert (=> b!1559739 (= tp!458459 e!1001487)))

(declare-fun b!1559965 () Bool)

(declare-fun tp!458641 () Bool)

(assert (=> b!1559965 (= e!1001487 (and setRes!11124 tp!458641))))

(declare-fun condSetEmpty!11124 () Bool)

(assert (=> b!1559965 (= condSetEmpty!11124 (= (_1!9628 (_1!9629 (h!22309 (zeroValue!2099 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))))) ((as const (Array Context!1618 Bool)) false)))))

(assert (= (and b!1559965 condSetEmpty!11124) setIsEmpty!11124))

(assert (= (and b!1559965 (not condSetEmpty!11124)) setNonEmpty!11124))

(assert (= setNonEmpty!11124 b!1559966))

(assert (= (and b!1559739 ((_ is Cons!16908) (zeroValue!2099 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103)))))))) b!1559965))

(declare-fun m!1831702 () Bool)

(assert (=> setNonEmpty!11124 m!1831702))

(declare-fun b!1559968 () Bool)

(declare-fun e!1001488 () Bool)

(declare-fun tp!458645 () Bool)

(assert (=> b!1559968 (= e!1001488 tp!458645)))

(declare-fun setElem!11125 () Context!1618)

(declare-fun setRes!11125 () Bool)

(declare-fun setNonEmpty!11125 () Bool)

(declare-fun tp!458643 () Bool)

(assert (=> setNonEmpty!11125 (= setRes!11125 (and tp!458643 (inv!22211 setElem!11125) e!1001488))))

(declare-fun setRest!11125 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11125 (= (_1!9628 (_1!9629 (h!22309 (minValue!2099 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11125 true) setRest!11125))))

(declare-fun setIsEmpty!11125 () Bool)

(assert (=> setIsEmpty!11125 setRes!11125))

(declare-fun e!1001489 () Bool)

(assert (=> b!1559739 (= tp!458461 e!1001489)))

(declare-fun b!1559967 () Bool)

(declare-fun tp!458644 () Bool)

(assert (=> b!1559967 (= e!1001489 (and setRes!11125 tp!458644))))

(declare-fun condSetEmpty!11125 () Bool)

(assert (=> b!1559967 (= condSetEmpty!11125 (= (_1!9628 (_1!9629 (h!22309 (minValue!2099 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103))))))))) ((as const (Array Context!1618 Bool)) false)))))

(assert (= (and b!1559967 condSetEmpty!11125) setIsEmpty!11125))

(assert (= (and b!1559967 (not condSetEmpty!11125)) setNonEmpty!11125))

(assert (= setNonEmpty!11125 b!1559968))

(assert (= (and b!1559739 ((_ is Cons!16908) (minValue!2099 (v!23773 (underlying!3893 (v!23774 (underlying!3894 (cache!2167 cacheFurthestNullable!103)))))))) b!1559967))

(declare-fun m!1831704 () Bool)

(assert (=> setNonEmpty!11125 m!1831704))

(declare-fun tp!458647 () Bool)

(declare-fun e!1001490 () Bool)

(declare-fun b!1559969 () Bool)

(declare-fun tp!458648 () Bool)

(assert (=> b!1559969 (= e!1001490 (and (inv!22204 (left!13721 (c!253081 (totalInput!2492 cacheFurthestNullable!103)))) tp!458647 (inv!22204 (right!14051 (c!253081 (totalInput!2492 cacheFurthestNullable!103)))) tp!458648))))

(declare-fun b!1559971 () Bool)

(declare-fun e!1001491 () Bool)

(declare-fun tp!458646 () Bool)

(assert (=> b!1559971 (= e!1001491 tp!458646)))

(declare-fun b!1559970 () Bool)

(assert (=> b!1559970 (= e!1001490 (and (inv!22212 (xs!8381 (c!253081 (totalInput!2492 cacheFurthestNullable!103)))) e!1001491))))

(assert (=> b!1559748 (= tp!458484 (and (inv!22204 (c!253081 (totalInput!2492 cacheFurthestNullable!103))) e!1001490))))

(assert (= (and b!1559748 ((_ is Node!5581) (c!253081 (totalInput!2492 cacheFurthestNullable!103)))) b!1559969))

(assert (= b!1559970 b!1559971))

(assert (= (and b!1559748 ((_ is Leaf!8272) (c!253081 (totalInput!2492 cacheFurthestNullable!103)))) b!1559970))

(declare-fun m!1831706 () Bool)

(assert (=> b!1559969 m!1831706))

(declare-fun m!1831708 () Bool)

(assert (=> b!1559969 m!1831708))

(declare-fun m!1831710 () Bool)

(assert (=> b!1559970 m!1831710))

(assert (=> b!1559748 m!1831524))

(declare-fun e!1001492 () Bool)

(assert (=> b!1559750 (= tp!458468 e!1001492)))

(declare-fun b!1559972 () Bool)

(declare-fun e!1001494 () Bool)

(declare-fun tp!458652 () Bool)

(assert (=> b!1559972 (= e!1001494 tp!458652)))

(declare-fun b!1559973 () Bool)

(declare-fun e!1001493 () Bool)

(declare-fun tp!458650 () Bool)

(assert (=> b!1559973 (= e!1001493 tp!458650)))

(declare-fun tp!458651 () Bool)

(declare-fun setRes!11126 () Bool)

(declare-fun setElem!11126 () Context!1618)

(declare-fun setNonEmpty!11126 () Bool)

(assert (=> setNonEmpty!11126 (= setRes!11126 (and tp!458651 (inv!22211 setElem!11126) e!1001493))))

(declare-fun setRest!11126 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11126 (= (_2!9631 (h!22311 (zeroValue!2100 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11126 true) setRest!11126))))

(declare-fun setIsEmpty!11126 () Bool)

(assert (=> setIsEmpty!11126 setRes!11126))

(declare-fun tp!458649 () Bool)

(declare-fun b!1559974 () Bool)

(assert (=> b!1559974 (= e!1001492 (and (inv!22211 (_1!9630 (_1!9631 (h!22311 (zeroValue!2100 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755)))))))))) e!1001494 tp_is_empty!7081 setRes!11126 tp!458649))))

(declare-fun condSetEmpty!11126 () Bool)

(assert (=> b!1559974 (= condSetEmpty!11126 (= (_2!9631 (h!22311 (zeroValue!2100 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755)))))))) ((as const (Array Context!1618 Bool)) false)))))

(assert (= b!1559974 b!1559972))

(assert (= (and b!1559974 condSetEmpty!11126) setIsEmpty!11126))

(assert (= (and b!1559974 (not condSetEmpty!11126)) setNonEmpty!11126))

(assert (= setNonEmpty!11126 b!1559973))

(assert (= (and b!1559750 ((_ is Cons!16910) (zeroValue!2100 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755)))))))) b!1559974))

(declare-fun m!1831712 () Bool)

(assert (=> setNonEmpty!11126 m!1831712))

(declare-fun m!1831714 () Bool)

(assert (=> b!1559974 m!1831714))

(declare-fun e!1001495 () Bool)

(assert (=> b!1559750 (= tp!458479 e!1001495)))

(declare-fun b!1559975 () Bool)

(declare-fun e!1001497 () Bool)

(declare-fun tp!458656 () Bool)

(assert (=> b!1559975 (= e!1001497 tp!458656)))

(declare-fun b!1559976 () Bool)

(declare-fun e!1001496 () Bool)

(declare-fun tp!458654 () Bool)

(assert (=> b!1559976 (= e!1001496 tp!458654)))

(declare-fun setRes!11127 () Bool)

(declare-fun setNonEmpty!11127 () Bool)

(declare-fun setElem!11127 () Context!1618)

(declare-fun tp!458655 () Bool)

(assert (=> setNonEmpty!11127 (= setRes!11127 (and tp!458655 (inv!22211 setElem!11127) e!1001496))))

(declare-fun setRest!11127 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11127 (= (_2!9631 (h!22311 (minValue!2100 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11127 true) setRest!11127))))

(declare-fun setIsEmpty!11127 () Bool)

(assert (=> setIsEmpty!11127 setRes!11127))

(declare-fun tp!458653 () Bool)

(declare-fun b!1559977 () Bool)

(assert (=> b!1559977 (= e!1001495 (and (inv!22211 (_1!9630 (_1!9631 (h!22311 (minValue!2100 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755)))))))))) e!1001497 tp_is_empty!7081 setRes!11127 tp!458653))))

(declare-fun condSetEmpty!11127 () Bool)

(assert (=> b!1559977 (= condSetEmpty!11127 (= (_2!9631 (h!22311 (minValue!2100 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755)))))))) ((as const (Array Context!1618 Bool)) false)))))

(assert (= b!1559977 b!1559975))

(assert (= (and b!1559977 condSetEmpty!11127) setIsEmpty!11127))

(assert (= (and b!1559977 (not condSetEmpty!11127)) setNonEmpty!11127))

(assert (= setNonEmpty!11127 b!1559976))

(assert (= (and b!1559750 ((_ is Cons!16910) (minValue!2100 (v!23775 (underlying!3895 (v!23776 (underlying!3896 (cache!2168 cacheUp!755)))))))) b!1559977))

(declare-fun m!1831716 () Bool)

(assert (=> setNonEmpty!11127 m!1831716))

(declare-fun m!1831718 () Bool)

(assert (=> b!1559977 m!1831718))

(declare-fun tp!458658 () Bool)

(declare-fun setRes!11128 () Bool)

(declare-fun tp!458659 () Bool)

(declare-fun e!1001499 () Bool)

(declare-fun e!1001500 () Bool)

(declare-fun b!1559978 () Bool)

(assert (=> b!1559978 (= e!1001499 (and tp!458658 (inv!22211 (_2!9632 (_1!9633 (h!22313 mapDefault!8569)))) e!1001500 tp_is_empty!7081 setRes!11128 tp!458659))))

(declare-fun condSetEmpty!11128 () Bool)

(assert (=> b!1559978 (= condSetEmpty!11128 (= (_2!9633 (h!22313 mapDefault!8569)) ((as const (Array Context!1618 Bool)) false)))))

(assert (=> b!1559746 (= tp!458470 e!1001499)))

(declare-fun setIsEmpty!11128 () Bool)

(assert (=> setIsEmpty!11128 setRes!11128))

(declare-fun b!1559979 () Bool)

(declare-fun tp!458661 () Bool)

(assert (=> b!1559979 (= e!1001500 tp!458661)))

(declare-fun b!1559980 () Bool)

(declare-fun e!1001498 () Bool)

(declare-fun tp!458657 () Bool)

(assert (=> b!1559980 (= e!1001498 tp!458657)))

(declare-fun tp!458660 () Bool)

(declare-fun setElem!11128 () Context!1618)

(declare-fun setNonEmpty!11128 () Bool)

(assert (=> setNonEmpty!11128 (= setRes!11128 (and tp!458660 (inv!22211 setElem!11128) e!1001498))))

(declare-fun setRest!11128 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11128 (= (_2!9633 (h!22313 mapDefault!8569)) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11128 true) setRest!11128))))

(assert (= b!1559978 b!1559979))

(assert (= (and b!1559978 condSetEmpty!11128) setIsEmpty!11128))

(assert (= (and b!1559978 (not condSetEmpty!11128)) setNonEmpty!11128))

(assert (= setNonEmpty!11128 b!1559980))

(assert (= (and b!1559746 ((_ is Cons!16912) mapDefault!8569)) b!1559978))

(declare-fun m!1831720 () Bool)

(assert (=> b!1559978 m!1831720))

(declare-fun m!1831722 () Bool)

(assert (=> setNonEmpty!11128 m!1831722))

(declare-fun e!1001501 () Bool)

(assert (=> b!1559764 (= tp!458462 e!1001501)))

(declare-fun b!1559981 () Bool)

(declare-fun e!1001503 () Bool)

(declare-fun tp!458665 () Bool)

(assert (=> b!1559981 (= e!1001503 tp!458665)))

(declare-fun b!1559982 () Bool)

(declare-fun e!1001502 () Bool)

(declare-fun tp!458663 () Bool)

(assert (=> b!1559982 (= e!1001502 tp!458663)))

(declare-fun setRes!11129 () Bool)

(declare-fun tp!458664 () Bool)

(declare-fun setNonEmpty!11129 () Bool)

(declare-fun setElem!11129 () Context!1618)

(assert (=> setNonEmpty!11129 (= setRes!11129 (and tp!458664 (inv!22211 setElem!11129) e!1001502))))

(declare-fun setRest!11129 () (InoxSet Context!1618))

(assert (=> setNonEmpty!11129 (= (_2!9631 (h!22311 mapDefault!8570)) ((_ map or) (store ((as const (Array Context!1618 Bool)) false) setElem!11129 true) setRest!11129))))

(declare-fun setIsEmpty!11129 () Bool)

(assert (=> setIsEmpty!11129 setRes!11129))

(declare-fun tp!458662 () Bool)

(declare-fun b!1559983 () Bool)

(assert (=> b!1559983 (= e!1001501 (and (inv!22211 (_1!9630 (_1!9631 (h!22311 mapDefault!8570)))) e!1001503 tp_is_empty!7081 setRes!11129 tp!458662))))

(declare-fun condSetEmpty!11129 () Bool)

(assert (=> b!1559983 (= condSetEmpty!11129 (= (_2!9631 (h!22311 mapDefault!8570)) ((as const (Array Context!1618 Bool)) false)))))

(assert (= b!1559983 b!1559981))

(assert (= (and b!1559983 condSetEmpty!11129) setIsEmpty!11129))

(assert (= (and b!1559983 (not condSetEmpty!11129)) setNonEmpty!11129))

(assert (= setNonEmpty!11129 b!1559982))

(assert (= (and b!1559764 ((_ is Cons!16910) mapDefault!8570)) b!1559983))

(declare-fun m!1831724 () Bool)

(assert (=> setNonEmpty!11129 m!1831724))

(declare-fun m!1831726 () Bool)

(assert (=> b!1559983 m!1831726))

(declare-fun e!1001504 () Bool)

(declare-fun tp!458667 () Bool)

(declare-fun b!1559984 () Bool)

(declare-fun tp!458668 () Bool)

(assert (=> b!1559984 (= e!1001504 (and (inv!22204 (left!13721 (c!253081 totalInput!568))) tp!458667 (inv!22204 (right!14051 (c!253081 totalInput!568))) tp!458668))))

(declare-fun b!1559986 () Bool)

(declare-fun e!1001505 () Bool)

(declare-fun tp!458666 () Bool)

(assert (=> b!1559986 (= e!1001505 tp!458666)))

(declare-fun b!1559985 () Bool)

(assert (=> b!1559985 (= e!1001504 (and (inv!22212 (xs!8381 (c!253081 totalInput!568))) e!1001505))))

(assert (=> b!1559763 (= tp!458463 (and (inv!22204 (c!253081 totalInput!568)) e!1001504))))

(assert (= (and b!1559763 ((_ is Node!5581) (c!253081 totalInput!568))) b!1559984))

(assert (= b!1559985 b!1559986))

(assert (= (and b!1559763 ((_ is Leaf!8272) (c!253081 totalInput!568))) b!1559985))

(declare-fun m!1831728 () Bool)

(assert (=> b!1559984 m!1831728))

(declare-fun m!1831730 () Bool)

(assert (=> b!1559984 m!1831730))

(declare-fun m!1831732 () Bool)

(assert (=> b!1559985 m!1831732))

(assert (=> b!1559763 m!1831580))

(check-sat (not b!1559908) (not b!1559966) (not b!1559963) (not b_next!42325) (not b!1559878) (not b_next!42321) (not b!1559969) (not b!1559864) (not setNonEmpty!11123) (not setNonEmpty!11113) b_and!108871 (not setNonEmpty!11125) (not b!1559951) (not b!1559974) (not b!1559982) (not b!1559964) (not setNonEmpty!11119) (not setNonEmpty!11099) (not b!1559913) (not b!1559907) (not b!1559889) (not b!1559962) (not b!1559826) b_and!108879 (not b!1559890) (not b!1559876) (not b!1559972) (not b!1559817) (not b!1559968) (not d!462151) tp_is_empty!7081 (not b!1559967) (not b_next!42313) (not b_next!42317) (not setNonEmpty!11098) (not b!1559891) (not setNonEmpty!11118) (not setNonEmpty!11128) (not b!1559978) (not setNonEmpty!11105) (not d!462185) (not mapNonEmpty!8576) (not b!1559809) (not b!1559985) (not b!1559763) (not b!1559980) (not b!1559984) (not b_next!42311) (not b!1559887) (not setNonEmpty!11122) (not b!1559909) (not b!1559748) (not b_next!42319) (not b!1559981) (not b!1559927) (not setNonEmpty!11127) (not d!462143) (not d!462147) (not b!1559975) b_and!108869 (not d!462137) (not b!1559863) (not b!1559811) (not b!1559888) (not b!1559911) b_and!108875 (not b!1559823) (not b!1559952) (not b!1559843) (not setNonEmpty!11106) (not b!1559976) (not b!1559914) (not b!1559970) (not setNonEmpty!11129) (not b!1559845) (not d!462181) (not b!1559836) (not b!1559814) (not setNonEmpty!11111) b_and!108873 (not b!1559943) (not b!1559910) (not b!1559950) (not d!462171) (not b_next!42315) (not b!1559743) (not b!1559986) (not b!1559862) (not b!1559820) (not b!1559835) (not b!1559892) (not d!462155) (not b!1559837) (not setNonEmpty!11126) b_and!108883 (not mapNonEmpty!8579) (not b!1559867) (not b!1559979) (not b!1559942) (not b!1559983) (not b!1559928) (not b!1559940) (not b!1559877) (not d!462157) (not b!1559847) (not setNonEmpty!11102) (not d!462159) (not mapNonEmpty!8573) (not b!1559941) (not b!1559973) (not b!1559965) (not b!1559793) (not bm!102202) (not b!1559953) (not bm!102200) (not b!1559977) (not d!462165) (not b!1559915) (not b_next!42323) b_and!108877 b_and!108881 (not setNonEmpty!11124) (not d!462145) (not b!1559912) (not setNonEmpty!11112) (not b!1559824) (not b!1559865) (not b!1559971) (not b!1559802) (not b!1559866) (not d!462183) (not b!1559929))
(check-sat b_and!108871 b_and!108879 (not b_next!42311) (not b_next!42319) b_and!108869 b_and!108875 b_and!108873 (not b_next!42315) b_and!108883 (not b_next!42325) (not b_next!42321) (not b_next!42313) (not b_next!42317) b_and!108881 (not b_next!42323) b_and!108877)
