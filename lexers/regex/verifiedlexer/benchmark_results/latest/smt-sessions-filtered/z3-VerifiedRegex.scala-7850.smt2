; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411504 () Bool)

(assert start!411504)

(declare-fun b!4282610 () Bool)

(declare-fun b_free!126715 () Bool)

(declare-fun b_next!127419 () Bool)

(assert (=> b!4282610 (= b_free!126715 (not b_next!127419))))

(declare-fun tp!1309684 () Bool)

(declare-fun b_and!337917 () Bool)

(assert (=> b!4282610 (= tp!1309684 b_and!337917)))

(declare-fun b!4282619 () Bool)

(declare-fun b_free!126717 () Bool)

(declare-fun b_next!127421 () Bool)

(assert (=> b!4282619 (= b_free!126717 (not b_next!127421))))

(declare-fun tp!1309686 () Bool)

(declare-fun b_and!337919 () Bool)

(assert (=> b!4282619 (= tp!1309686 b_and!337919)))

(declare-fun b!4282633 () Bool)

(declare-fun b_free!126719 () Bool)

(declare-fun b_next!127423 () Bool)

(assert (=> b!4282633 (= b_free!126719 (not b_next!127423))))

(declare-fun tp!1309692 () Bool)

(declare-fun b_and!337921 () Bool)

(assert (=> b!4282633 (= tp!1309692 b_and!337921)))

(declare-fun b!4282613 () Bool)

(declare-fun b_free!126721 () Bool)

(declare-fun b_next!127425 () Bool)

(assert (=> b!4282613 (= b_free!126721 (not b_next!127425))))

(declare-fun tp!1309702 () Bool)

(declare-fun b_and!337923 () Bool)

(assert (=> b!4282613 (= tp!1309702 b_and!337923)))

(declare-fun b_free!126723 () Bool)

(declare-fun b_next!127427 () Bool)

(assert (=> b!4282613 (= b_free!126723 (not b_next!127427))))

(declare-fun tp!1309706 () Bool)

(declare-fun b_and!337925 () Bool)

(assert (=> b!4282613 (= tp!1309706 b_and!337925)))

(declare-fun b!4282629 () Bool)

(declare-fun b_free!126725 () Bool)

(declare-fun b_next!127429 () Bool)

(assert (=> b!4282629 (= b_free!126725 (not b_next!127429))))

(declare-fun tp!1309701 () Bool)

(declare-fun b_and!337927 () Bool)

(assert (=> b!4282629 (= tp!1309701 b_and!337927)))

(declare-fun b!4282603 () Bool)

(declare-fun b_free!126727 () Bool)

(declare-fun b_next!127431 () Bool)

(assert (=> b!4282603 (= b_free!126727 (not b_next!127431))))

(declare-fun tp!1309694 () Bool)

(declare-fun b_and!337929 () Bool)

(assert (=> b!4282603 (= tp!1309694 b_and!337929)))

(declare-fun b!4282617 () Bool)

(declare-fun b_free!126729 () Bool)

(declare-fun b_next!127433 () Bool)

(assert (=> b!4282617 (= b_free!126729 (not b_next!127433))))

(declare-fun tp!1309689 () Bool)

(declare-fun b_and!337931 () Bool)

(assert (=> b!4282617 (= tp!1309689 b_and!337931)))

(declare-fun b!4282601 () Bool)

(declare-fun e!2658659 () Bool)

(declare-fun e!2658663 () Bool)

(assert (=> b!4282601 (= e!2658659 e!2658663)))

(declare-fun b!4282602 () Bool)

(declare-fun res!1757601 () Bool)

(declare-fun e!2658657 () Bool)

(assert (=> b!4282602 (=> (not res!1757601) (not e!2658657))))

(declare-datatypes ((C!25996 0))(
  ( (C!25997 (val!15324 Int)) )
))
(declare-datatypes ((List!47538 0))(
  ( (Nil!47414) (Cons!47414 (h!52834 C!25996) (t!354127 List!47538)) )
))
(declare-datatypes ((IArray!28747 0))(
  ( (IArray!28748 (innerList!14431 List!47538)) )
))
(declare-datatypes ((Conc!14343 0))(
  ( (Node!14343 (left!35321 Conc!14343) (right!35651 Conc!14343) (csize!28916 Int) (cheight!14554 Int)) (Leaf!22194 (xs!17649 IArray!28747) (csize!28917 Int)) (Empty!14343) )
))
(declare-datatypes ((BalanceConc!28176 0))(
  ( (BalanceConc!28177 (c!729981 Conc!14343)) )
))
(declare-fun input!1632 () BalanceConc!28176)

(declare-fun totalInput!528 () BalanceConc!28176)

(declare-fun isSuffix!1002 (List!47538 List!47538) Bool)

(declare-fun list!17311 (BalanceConc!28176) List!47538)

(assert (=> b!4282602 (= res!1757601 (isSuffix!1002 (list!17311 input!1632) (list!17311 totalInput!528)))))

(declare-fun e!2658669 () Bool)

(declare-datatypes ((Regex!12899 0))(
  ( (ElementMatch!12899 (c!729982 C!25996)) (Concat!21203 (regOne!26310 Regex!12899) (regTwo!26310 Regex!12899)) (EmptyExpr!12899) (Star!12899 (reg!13228 Regex!12899)) (EmptyLang!12899) (Union!12899 (regOne!26311 Regex!12899) (regTwo!26311 Regex!12899)) )
))
(declare-datatypes ((List!47539 0))(
  ( (Nil!47415) (Cons!47415 (h!52835 Regex!12899) (t!354128 List!47539)) )
))
(declare-datatypes ((Context!5578 0))(
  ( (Context!5579 (exprs!3289 List!47539)) )
))
(declare-datatypes ((Hashable!4170 0))(
  ( (HashableExt!4169 (__x!28760 Int)) )
))
(declare-datatypes ((tuple3!5330 0))(
  ( (tuple3!5331 (_1!25511 Regex!12899) (_2!25511 Context!5578) (_3!3135 C!25996)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44752 0))(
  ( (tuple2!44753 (_1!25512 tuple3!5330) (_2!25512 (InoxSet Context!5578))) )
))
(declare-datatypes ((List!47540 0))(
  ( (Nil!47416) (Cons!47416 (h!52836 tuple2!44752) (t!354129 List!47540)) )
))
(declare-datatypes ((array!15276 0))(
  ( (array!15277 (arr!6820 (Array (_ BitVec 32) List!47540)) (size!34748 (_ BitVec 32))) )
))
(declare-datatypes ((array!15278 0))(
  ( (array!15279 (arr!6821 (Array (_ BitVec 32) (_ BitVec 64))) (size!34749 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8508 0))(
  ( (LongMapFixedSize!8509 (defaultEntry!4639 Int) (mask!12673 (_ BitVec 32)) (extraKeys!4503 (_ BitVec 32)) (zeroValue!4513 List!47540) (minValue!4513 List!47540) (_size!8551 (_ BitVec 32)) (_keys!4554 array!15278) (_values!4535 array!15276) (_vacant!4315 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16825 0))(
  ( (Cell!16826 (v!41315 LongMapFixedSize!8508)) )
))
(declare-datatypes ((MutLongMap!4254 0))(
  ( (LongMap!4254 (underlying!8737 Cell!16825)) (MutLongMapExt!4253 (__x!28761 Int)) )
))
(declare-datatypes ((Cell!16827 0))(
  ( (Cell!16828 (v!41316 MutLongMap!4254)) )
))
(declare-datatypes ((MutableMap!4160 0))(
  ( (MutableMapExt!4159 (__x!28762 Int)) (HashMap!4160 (underlying!8738 Cell!16827) (hashF!6202 Hashable!4170) (_size!8552 (_ BitVec 32)) (defaultValue!4331 Int)) )
))
(declare-datatypes ((CacheDown!2838 0))(
  ( (CacheDown!2839 (cache!4300 MutableMap!4160)) )
))
(declare-fun cacheDown!738 () CacheDown!2838)

(declare-fun e!2658677 () Bool)

(declare-fun tp!1309704 () Bool)

(declare-fun tp!1309708 () Bool)

(declare-fun array_inv!4882 (array!15278) Bool)

(declare-fun array_inv!4883 (array!15276) Bool)

(assert (=> b!4282603 (= e!2658677 (and tp!1309694 tp!1309704 tp!1309708 (array_inv!4882 (_keys!4554 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))) (array_inv!4883 (_values!4535 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))) e!2658669))))

(declare-fun mapNonEmpty!19245 () Bool)

(declare-fun mapRes!19247 () Bool)

(declare-fun tp!1309696 () Bool)

(declare-fun tp!1309688 () Bool)

(assert (=> mapNonEmpty!19245 (= mapRes!19247 (and tp!1309696 tp!1309688))))

(declare-datatypes ((tuple2!44754 0))(
  ( (tuple2!44755 (_1!25513 Context!5578) (_2!25513 C!25996)) )
))
(declare-datatypes ((tuple2!44756 0))(
  ( (tuple2!44757 (_1!25514 tuple2!44754) (_2!25514 (InoxSet Context!5578))) )
))
(declare-datatypes ((List!47541 0))(
  ( (Nil!47417) (Cons!47417 (h!52837 tuple2!44756) (t!354130 List!47541)) )
))
(declare-fun mapRest!19246 () (Array (_ BitVec 32) List!47541))

(declare-fun mapKey!19246 () (_ BitVec 32))

(declare-datatypes ((array!15280 0))(
  ( (array!15281 (arr!6822 (Array (_ BitVec 32) List!47541)) (size!34750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8510 0))(
  ( (LongMapFixedSize!8511 (defaultEntry!4640 Int) (mask!12674 (_ BitVec 32)) (extraKeys!4504 (_ BitVec 32)) (zeroValue!4514 List!47541) (minValue!4514 List!47541) (_size!8553 (_ BitVec 32)) (_keys!4555 array!15278) (_values!4536 array!15280) (_vacant!4316 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16829 0))(
  ( (Cell!16830 (v!41317 LongMapFixedSize!8510)) )
))
(declare-datatypes ((MutLongMap!4255 0))(
  ( (LongMap!4255 (underlying!8739 Cell!16829)) (MutLongMapExt!4254 (__x!28763 Int)) )
))
(declare-datatypes ((Cell!16831 0))(
  ( (Cell!16832 (v!41318 MutLongMap!4255)) )
))
(declare-datatypes ((Hashable!4171 0))(
  ( (HashableExt!4170 (__x!28764 Int)) )
))
(declare-datatypes ((MutableMap!4161 0))(
  ( (MutableMapExt!4160 (__x!28765 Int)) (HashMap!4161 (underlying!8740 Cell!16831) (hashF!6203 Hashable!4171) (_size!8554 (_ BitVec 32)) (defaultValue!4332 Int)) )
))
(declare-datatypes ((CacheUp!2716 0))(
  ( (CacheUp!2717 (cache!4301 MutableMap!4161)) )
))
(declare-fun cacheUp!725 () CacheUp!2716)

(declare-fun mapValue!19245 () List!47541)

(assert (=> mapNonEmpty!19245 (= (arr!6822 (_values!4536 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))) (store mapRest!19246 mapKey!19246 mapValue!19245))))

(declare-fun b!4282604 () Bool)

(declare-fun e!2658652 () Bool)

(declare-fun e!2658647 () Bool)

(assert (=> b!4282604 (= e!2658652 e!2658647)))

(declare-fun b!4282605 () Bool)

(declare-fun e!2658651 () Bool)

(declare-fun tp!1309685 () Bool)

(declare-fun inv!62843 (Conc!14343) Bool)

(assert (=> b!4282605 (= e!2658651 (and (inv!62843 (c!729981 input!1632)) tp!1309685))))

(declare-fun b!4282606 () Bool)

(declare-fun e!2658675 () Bool)

(declare-fun e!2658650 () Bool)

(declare-fun lt!1515398 () MutLongMap!4255)

(get-info :version)

(assert (=> b!4282606 (= e!2658675 (and e!2658650 ((_ is LongMap!4255) lt!1515398)))))

(assert (=> b!4282606 (= lt!1515398 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))

(declare-fun e!2658664 () Bool)

(declare-fun e!2658665 () Bool)

(declare-fun e!2658660 () Bool)

(declare-fun b!4282607 () Bool)

(declare-datatypes ((Hashable!4172 0))(
  ( (HashableExt!4171 (__x!28766 Int)) )
))
(declare-datatypes ((tuple2!44758 0))(
  ( (tuple2!44759 (_1!25515 (InoxSet Context!5578)) (_2!25515 Int)) )
))
(declare-datatypes ((tuple2!44760 0))(
  ( (tuple2!44761 (_1!25516 tuple2!44758) (_2!25516 Int)) )
))
(declare-datatypes ((List!47542 0))(
  ( (Nil!47418) (Cons!47418 (h!52838 tuple2!44760) (t!354131 List!47542)) )
))
(declare-datatypes ((array!15282 0))(
  ( (array!15283 (arr!6823 (Array (_ BitVec 32) List!47542)) (size!34751 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8512 0))(
  ( (LongMapFixedSize!8513 (defaultEntry!4641 Int) (mask!12675 (_ BitVec 32)) (extraKeys!4505 (_ BitVec 32)) (zeroValue!4515 List!47542) (minValue!4515 List!47542) (_size!8555 (_ BitVec 32)) (_keys!4556 array!15278) (_values!4537 array!15282) (_vacant!4317 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16833 0))(
  ( (Cell!16834 (v!41319 LongMapFixedSize!8512)) )
))
(declare-datatypes ((MutLongMap!4256 0))(
  ( (LongMap!4256 (underlying!8741 Cell!16833)) (MutLongMapExt!4255 (__x!28767 Int)) )
))
(declare-datatypes ((Cell!16835 0))(
  ( (Cell!16836 (v!41320 MutLongMap!4256)) )
))
(declare-datatypes ((MutableMap!4162 0))(
  ( (MutableMapExt!4161 (__x!28768 Int)) (HashMap!4162 (underlying!8742 Cell!16835) (hashF!6204 Hashable!4172) (_size!8556 (_ BitVec 32)) (defaultValue!4333 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!374 0))(
  ( (CacheFindLongestMatch!375 (cache!4302 MutableMap!4162) (totalInput!4285 BalanceConc!28176)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!374)

(declare-fun inv!62844 (BalanceConc!28176) Bool)

(assert (=> b!4282607 (= e!2658664 (and e!2658660 (inv!62844 (totalInput!4285 cacheFindLongestMatch!156)) e!2658665))))

(declare-fun b!4282608 () Bool)

(assert (=> b!4282608 (= e!2658650 e!2658659)))

(declare-fun mapIsEmpty!19245 () Bool)

(declare-fun mapRes!19245 () Bool)

(assert (=> mapIsEmpty!19245 mapRes!19245))

(declare-fun b!4282609 () Bool)

(declare-datatypes ((List!47543 0))(
  ( (Nil!47419) (Cons!47419 (h!52839 (_ BitVec 16)) (t!354132 List!47543)) )
))
(declare-datatypes ((TokenValue!8304 0))(
  ( (FloatLiteralValue!16608 (text!58573 List!47543)) (TokenValueExt!8303 (__x!28769 Int)) (Broken!41520 (value!250623 List!47543)) (Object!8427) (End!8304) (Def!8304) (Underscore!8304) (Match!8304) (Else!8304) (Error!8304) (Case!8304) (If!8304) (Extends!8304) (Abstract!8304) (Class!8304) (Val!8304) (DelimiterValue!16608 (del!8364 List!47543)) (KeywordValue!8310 (value!250624 List!47543)) (CommentValue!16608 (value!250625 List!47543)) (WhitespaceValue!16608 (value!250626 List!47543)) (IndentationValue!8304 (value!250627 List!47543)) (String!55509) (Int32!8304) (Broken!41521 (value!250628 List!47543)) (Boolean!8305) (Unit!66360) (OperatorValue!8307 (op!8364 List!47543)) (IdentifierValue!16608 (value!250629 List!47543)) (IdentifierValue!16609 (value!250630 List!47543)) (WhitespaceValue!16609 (value!250631 List!47543)) (True!16608) (False!16608) (Broken!41522 (value!250632 List!47543)) (Broken!41523 (value!250633 List!47543)) (True!16609) (RightBrace!8304) (RightBracket!8304) (Colon!8304) (Null!8304) (Comma!8304) (LeftBracket!8304) (False!16609) (LeftBrace!8304) (ImaginaryLiteralValue!8304 (text!58574 List!47543)) (StringLiteralValue!24912 (value!250634 List!47543)) (EOFValue!8304 (value!250635 List!47543)) (IdentValue!8304 (value!250636 List!47543)) (DelimiterValue!16609 (value!250637 List!47543)) (DedentValue!8304 (value!250638 List!47543)) (NewLineValue!8304 (value!250639 List!47543)) (IntegerValue!24912 (value!250640 (_ BitVec 32)) (text!58575 List!47543)) (IntegerValue!24913 (value!250641 Int) (text!58576 List!47543)) (Times!8304) (Or!8304) (Equal!8304) (Minus!8304) (Broken!41524 (value!250642 List!47543)) (And!8304) (Div!8304) (LessEqual!8304) (Mod!8304) (Concat!21204) (Not!8304) (Plus!8304) (SpaceValue!8304 (value!250643 List!47543)) (IntegerValue!24914 (value!250644 Int) (text!58577 List!47543)) (StringLiteralValue!24913 (text!58578 List!47543)) (FloatLiteralValue!16609 (text!58579 List!47543)) (BytesLiteralValue!8304 (value!250645 List!47543)) (CommentValue!16609 (value!250646 List!47543)) (StringLiteralValue!24914 (value!250647 List!47543)) (ErrorTokenValue!8304 (msg!8365 List!47543)) )
))
(declare-datatypes ((String!55510 0))(
  ( (String!55511 (value!250648 String)) )
))
(declare-datatypes ((TokenValueInjection!15916 0))(
  ( (TokenValueInjection!15917 (toValue!10845 Int) (toChars!10704 Int)) )
))
(declare-datatypes ((Rule!15788 0))(
  ( (Rule!15789 (regex!7994 Regex!12899) (tag!8858 String!55510) (isSeparator!7994 Bool) (transformation!7994 TokenValueInjection!15916)) )
))
(declare-fun rule!232 () Rule!15788)

(declare-fun validRegex!5836 (Regex!12899) Bool)

(assert (=> b!4282609 (= e!2658657 (not (validRegex!5836 (regex!7994 rule!232))))))

(declare-fun tp!1309695 () Bool)

(declare-fun e!2658655 () Bool)

(declare-fun tp!1309682 () Bool)

(declare-fun e!2658658 () Bool)

(declare-fun array_inv!4884 (array!15282) Bool)

(assert (=> b!4282610 (= e!2658655 (and tp!1309684 tp!1309682 tp!1309695 (array_inv!4882 (_keys!4556 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))) (array_inv!4884 (_values!4537 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))) e!2658658))))

(declare-fun b!4282611 () Bool)

(declare-fun e!2658654 () Bool)

(declare-fun tp!1309705 () Bool)

(assert (=> b!4282611 (= e!2658654 (and (inv!62843 (c!729981 totalInput!528)) tp!1309705))))

(declare-fun b!4282612 () Bool)

(declare-fun e!2658676 () Bool)

(declare-fun e!2658662 () Bool)

(assert (=> b!4282612 (= e!2658676 e!2658662)))

(declare-fun mapIsEmpty!19246 () Bool)

(assert (=> mapIsEmpty!19246 mapRes!19247))

(declare-fun e!2658666 () Bool)

(assert (=> b!4282613 (= e!2658666 (and tp!1309702 tp!1309706))))

(declare-fun b!4282614 () Bool)

(declare-fun tp!1309693 () Bool)

(declare-fun mapRes!19246 () Bool)

(assert (=> b!4282614 (= e!2658658 (and tp!1309693 mapRes!19246))))

(declare-fun condMapEmpty!19246 () Bool)

(declare-fun mapDefault!19245 () List!47542)

(assert (=> b!4282614 (= condMapEmpty!19246 (= (arr!6823 (_values!4537 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47542)) mapDefault!19245)))))

(declare-fun b!4282615 () Bool)

(declare-fun tp!1309683 () Bool)

(assert (=> b!4282615 (= e!2658669 (and tp!1309683 mapRes!19245))))

(declare-fun condMapEmpty!19245 () Bool)

(declare-fun mapDefault!19247 () List!47540)

(assert (=> b!4282615 (= condMapEmpty!19245 (= (arr!6820 (_values!4535 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47540)) mapDefault!19247)))))

(declare-fun b!4282616 () Bool)

(declare-fun e!2658670 () Bool)

(declare-fun e!2658671 () Bool)

(assert (=> b!4282616 (= e!2658670 e!2658671)))

(declare-fun e!2658667 () Bool)

(declare-fun e!2658648 () Bool)

(assert (=> b!4282617 (= e!2658667 (and e!2658648 tp!1309689))))

(declare-fun b!4282618 () Bool)

(declare-fun tp!1309703 () Bool)

(declare-fun e!2658673 () Bool)

(declare-fun inv!62838 (String!55510) Bool)

(declare-fun inv!62845 (TokenValueInjection!15916) Bool)

(assert (=> b!4282618 (= e!2658673 (and tp!1309703 (inv!62838 (tag!8858 rule!232)) (inv!62845 (transformation!7994 rule!232)) e!2658666))))

(declare-fun mapNonEmpty!19246 () Bool)

(declare-fun tp!1309691 () Bool)

(declare-fun tp!1309687 () Bool)

(assert (=> mapNonEmpty!19246 (= mapRes!19245 (and tp!1309691 tp!1309687))))

(declare-fun mapKey!19247 () (_ BitVec 32))

(declare-fun mapValue!19247 () List!47540)

(declare-fun mapRest!19245 () (Array (_ BitVec 32) List!47540))

(assert (=> mapNonEmpty!19246 (= (arr!6820 (_values!4535 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))) (store mapRest!19245 mapKey!19247 mapValue!19247))))

(declare-fun e!2658649 () Bool)

(assert (=> b!4282619 (= e!2658660 (and e!2658649 tp!1309686))))

(declare-fun b!4282620 () Bool)

(declare-fun lt!1515397 () MutLongMap!4254)

(assert (=> b!4282620 (= e!2658648 (and e!2658676 ((_ is LongMap!4254) lt!1515397)))))

(assert (=> b!4282620 (= lt!1515397 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))

(declare-fun b!4282621 () Bool)

(assert (=> b!4282621 (= e!2658662 e!2658677)))

(declare-fun b!4282622 () Bool)

(declare-fun e!2658674 () Bool)

(assert (=> b!4282622 (= e!2658674 e!2658667)))

(declare-fun b!4282623 () Bool)

(declare-fun res!1757602 () Bool)

(assert (=> b!4282623 (=> (not res!1757602) (not e!2658657))))

(declare-fun valid!3305 (CacheFindLongestMatch!374) Bool)

(assert (=> b!4282623 (= res!1757602 (valid!3305 cacheFindLongestMatch!156))))

(declare-fun b!4282624 () Bool)

(assert (=> b!4282624 (= e!2658647 e!2658655)))

(declare-fun b!4282625 () Bool)

(declare-fun e!2658661 () Bool)

(declare-fun tp!1309700 () Bool)

(assert (=> b!4282625 (= e!2658661 (and tp!1309700 mapRes!19247))))

(declare-fun condMapEmpty!19247 () Bool)

(declare-fun mapDefault!19246 () List!47541)

(assert (=> b!4282625 (= condMapEmpty!19247 (= (arr!6822 (_values!4536 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47541)) mapDefault!19246)))))

(declare-fun b!4282626 () Bool)

(declare-fun res!1757606 () Bool)

(assert (=> b!4282626 (=> (not res!1757606) (not e!2658657))))

(declare-fun valid!3306 (CacheDown!2838) Bool)

(assert (=> b!4282626 (= res!1757606 (valid!3306 cacheDown!738))))

(declare-fun b!4282627 () Bool)

(declare-fun lt!1515399 () MutLongMap!4256)

(assert (=> b!4282627 (= e!2658649 (and e!2658652 ((_ is LongMap!4256) lt!1515399)))))

(assert (=> b!4282627 (= lt!1515399 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))

(declare-fun mapNonEmpty!19247 () Bool)

(declare-fun tp!1309698 () Bool)

(declare-fun tp!1309699 () Bool)

(assert (=> mapNonEmpty!19247 (= mapRes!19246 (and tp!1309698 tp!1309699))))

(declare-fun mapRest!19247 () (Array (_ BitVec 32) List!47542))

(declare-fun mapValue!19246 () List!47542)

(declare-fun mapKey!19245 () (_ BitVec 32))

(assert (=> mapNonEmpty!19247 (= (arr!6823 (_values!4537 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))) (store mapRest!19247 mapKey!19245 mapValue!19246))))

(declare-fun b!4282628 () Bool)

(declare-fun tp!1309697 () Bool)

(assert (=> b!4282628 (= e!2658665 (and (inv!62843 (c!729981 (totalInput!4285 cacheFindLongestMatch!156))) tp!1309697))))

(declare-fun tp!1309707 () Bool)

(declare-fun tp!1309690 () Bool)

(declare-fun array_inv!4885 (array!15280) Bool)

(assert (=> b!4282629 (= e!2658663 (and tp!1309701 tp!1309690 tp!1309707 (array_inv!4882 (_keys!4555 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))) (array_inv!4885 (_values!4536 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))) e!2658661))))

(declare-fun b!4282630 () Bool)

(declare-fun res!1757604 () Bool)

(assert (=> b!4282630 (=> (not res!1757604) (not e!2658657))))

(assert (=> b!4282630 (= res!1757604 (= (totalInput!4285 cacheFindLongestMatch!156) totalInput!528))))

(declare-fun mapIsEmpty!19247 () Bool)

(assert (=> mapIsEmpty!19247 mapRes!19246))

(declare-fun b!4282631 () Bool)

(declare-fun res!1757605 () Bool)

(assert (=> b!4282631 (=> (not res!1757605) (not e!2658657))))

(declare-datatypes ((LexerInterface!7589 0))(
  ( (LexerInterfaceExt!7586 (__x!28770 Int)) (Lexer!7587) )
))
(declare-fun thiss!16356 () LexerInterface!7589)

(declare-fun ruleValid!3612 (LexerInterface!7589 Rule!15788) Bool)

(assert (=> b!4282631 (= res!1757605 (ruleValid!3612 thiss!16356 rule!232))))

(declare-fun res!1757607 () Bool)

(assert (=> start!411504 (=> (not res!1757607) (not e!2658657))))

(assert (=> start!411504 (= res!1757607 ((_ is Lexer!7587) thiss!16356))))

(assert (=> start!411504 e!2658657))

(assert (=> start!411504 true))

(assert (=> start!411504 e!2658673))

(assert (=> start!411504 (and (inv!62844 input!1632) e!2658651)))

(declare-fun inv!62846 (CacheDown!2838) Bool)

(assert (=> start!411504 (and (inv!62846 cacheDown!738) e!2658674)))

(declare-fun inv!62847 (CacheFindLongestMatch!374) Bool)

(assert (=> start!411504 (and (inv!62847 cacheFindLongestMatch!156) e!2658664)))

(assert (=> start!411504 (and (inv!62844 totalInput!528) e!2658654)))

(declare-fun inv!62848 (CacheUp!2716) Bool)

(assert (=> start!411504 (and (inv!62848 cacheUp!725) e!2658670)))

(declare-fun b!4282632 () Bool)

(declare-fun res!1757603 () Bool)

(assert (=> b!4282632 (=> (not res!1757603) (not e!2658657))))

(declare-fun valid!3307 (CacheUp!2716) Bool)

(assert (=> b!4282632 (= res!1757603 (valid!3307 cacheUp!725))))

(assert (=> b!4282633 (= e!2658671 (and e!2658675 tp!1309692))))

(assert (= (and start!411504 res!1757607) b!4282631))

(assert (= (and b!4282631 res!1757605) b!4282632))

(assert (= (and b!4282632 res!1757603) b!4282626))

(assert (= (and b!4282626 res!1757606) b!4282623))

(assert (= (and b!4282623 res!1757602) b!4282602))

(assert (= (and b!4282602 res!1757601) b!4282630))

(assert (= (and b!4282630 res!1757604) b!4282609))

(assert (= b!4282618 b!4282613))

(assert (= start!411504 b!4282618))

(assert (= start!411504 b!4282605))

(assert (= (and b!4282615 condMapEmpty!19245) mapIsEmpty!19245))

(assert (= (and b!4282615 (not condMapEmpty!19245)) mapNonEmpty!19246))

(assert (= b!4282603 b!4282615))

(assert (= b!4282621 b!4282603))

(assert (= b!4282612 b!4282621))

(assert (= (and b!4282620 ((_ is LongMap!4254) (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))) b!4282612))

(assert (= b!4282617 b!4282620))

(assert (= (and b!4282622 ((_ is HashMap!4160) (cache!4300 cacheDown!738))) b!4282617))

(assert (= start!411504 b!4282622))

(assert (= (and b!4282614 condMapEmpty!19246) mapIsEmpty!19247))

(assert (= (and b!4282614 (not condMapEmpty!19246)) mapNonEmpty!19247))

(assert (= b!4282610 b!4282614))

(assert (= b!4282624 b!4282610))

(assert (= b!4282604 b!4282624))

(assert (= (and b!4282627 ((_ is LongMap!4256) (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))) b!4282604))

(assert (= b!4282619 b!4282627))

(assert (= (and b!4282607 ((_ is HashMap!4162) (cache!4302 cacheFindLongestMatch!156))) b!4282619))

(assert (= b!4282607 b!4282628))

(assert (= start!411504 b!4282607))

(assert (= start!411504 b!4282611))

(assert (= (and b!4282625 condMapEmpty!19247) mapIsEmpty!19246))

(assert (= (and b!4282625 (not condMapEmpty!19247)) mapNonEmpty!19245))

(assert (= b!4282629 b!4282625))

(assert (= b!4282601 b!4282629))

(assert (= b!4282608 b!4282601))

(assert (= (and b!4282606 ((_ is LongMap!4255) (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))) b!4282608))

(assert (= b!4282633 b!4282606))

(assert (= (and b!4282616 ((_ is HashMap!4161) (cache!4301 cacheUp!725))) b!4282633))

(assert (= start!411504 b!4282616))

(declare-fun m!4879499 () Bool)

(assert (=> b!4282618 m!4879499))

(declare-fun m!4879501 () Bool)

(assert (=> b!4282618 m!4879501))

(declare-fun m!4879503 () Bool)

(assert (=> b!4282602 m!4879503))

(declare-fun m!4879505 () Bool)

(assert (=> b!4282602 m!4879505))

(assert (=> b!4282602 m!4879503))

(assert (=> b!4282602 m!4879505))

(declare-fun m!4879507 () Bool)

(assert (=> b!4282602 m!4879507))

(declare-fun m!4879509 () Bool)

(assert (=> mapNonEmpty!19246 m!4879509))

(declare-fun m!4879511 () Bool)

(assert (=> b!4282603 m!4879511))

(declare-fun m!4879513 () Bool)

(assert (=> b!4282603 m!4879513))

(declare-fun m!4879515 () Bool)

(assert (=> b!4282607 m!4879515))

(declare-fun m!4879517 () Bool)

(assert (=> b!4282626 m!4879517))

(declare-fun m!4879519 () Bool)

(assert (=> start!411504 m!4879519))

(declare-fun m!4879521 () Bool)

(assert (=> start!411504 m!4879521))

(declare-fun m!4879523 () Bool)

(assert (=> start!411504 m!4879523))

(declare-fun m!4879525 () Bool)

(assert (=> start!411504 m!4879525))

(declare-fun m!4879527 () Bool)

(assert (=> start!411504 m!4879527))

(declare-fun m!4879529 () Bool)

(assert (=> b!4282609 m!4879529))

(declare-fun m!4879531 () Bool)

(assert (=> b!4282610 m!4879531))

(declare-fun m!4879533 () Bool)

(assert (=> b!4282610 m!4879533))

(declare-fun m!4879535 () Bool)

(assert (=> b!4282632 m!4879535))

(declare-fun m!4879537 () Bool)

(assert (=> b!4282629 m!4879537))

(declare-fun m!4879539 () Bool)

(assert (=> b!4282629 m!4879539))

(declare-fun m!4879541 () Bool)

(assert (=> b!4282605 m!4879541))

(declare-fun m!4879543 () Bool)

(assert (=> b!4282623 m!4879543))

(declare-fun m!4879545 () Bool)

(assert (=> b!4282611 m!4879545))

(declare-fun m!4879547 () Bool)

(assert (=> mapNonEmpty!19245 m!4879547))

(declare-fun m!4879549 () Bool)

(assert (=> b!4282631 m!4879549))

(declare-fun m!4879551 () Bool)

(assert (=> b!4282628 m!4879551))

(declare-fun m!4879553 () Bool)

(assert (=> mapNonEmpty!19247 m!4879553))

(check-sat (not b_next!127423) (not b!4282609) (not b_next!127419) (not b!4282632) (not b!4282602) (not b!4282628) b_and!337917 (not b!4282603) (not mapNonEmpty!19246) (not b_next!127431) (not b!4282611) (not start!411504) (not mapNonEmpty!19247) b_and!337925 b_and!337927 (not b_next!127433) (not b!4282623) (not b!4282629) (not b!4282626) (not mapNonEmpty!19245) (not b!4282607) b_and!337921 (not b!4282618) (not b!4282631) (not b!4282615) (not b!4282605) (not b!4282614) b_and!337923 (not b_next!127425) b_and!337929 (not b_next!127429) (not b_next!127421) (not b!4282610) b_and!337931 b_and!337919 (not b!4282625) (not b_next!127427))
(check-sat (not b_next!127423) (not b_next!127419) b_and!337917 b_and!337921 (not b_next!127431) b_and!337931 b_and!337925 b_and!337927 (not b_next!127433) b_and!337923 (not b_next!127425) b_and!337929 (not b_next!127429) (not b_next!127421) b_and!337919 (not b_next!127427))
(get-model)

(declare-fun d!1264943 () Bool)

(declare-fun validCacheMapDown!440 (MutableMap!4160) Bool)

(assert (=> d!1264943 (= (valid!3306 cacheDown!738) (validCacheMapDown!440 (cache!4300 cacheDown!738)))))

(declare-fun bs!602767 () Bool)

(assert (= bs!602767 d!1264943))

(declare-fun m!4879555 () Bool)

(assert (=> bs!602767 m!4879555))

(assert (=> b!4282626 d!1264943))

(declare-fun d!1264945 () Bool)

(declare-fun isBalanced!3873 (Conc!14343) Bool)

(assert (=> d!1264945 (= (inv!62844 (totalInput!4285 cacheFindLongestMatch!156)) (isBalanced!3873 (c!729981 (totalInput!4285 cacheFindLongestMatch!156))))))

(declare-fun bs!602768 () Bool)

(assert (= bs!602768 d!1264945))

(declare-fun m!4879557 () Bool)

(assert (=> bs!602768 m!4879557))

(assert (=> b!4282607 d!1264945))

(declare-fun d!1264947 () Bool)

(declare-fun c!729985 () Bool)

(assert (=> d!1264947 (= c!729985 ((_ is Node!14343) (c!729981 (totalInput!4285 cacheFindLongestMatch!156))))))

(declare-fun e!2658682 () Bool)

(assert (=> d!1264947 (= (inv!62843 (c!729981 (totalInput!4285 cacheFindLongestMatch!156))) e!2658682)))

(declare-fun b!4282640 () Bool)

(declare-fun inv!62849 (Conc!14343) Bool)

(assert (=> b!4282640 (= e!2658682 (inv!62849 (c!729981 (totalInput!4285 cacheFindLongestMatch!156))))))

(declare-fun b!4282641 () Bool)

(declare-fun e!2658683 () Bool)

(assert (=> b!4282641 (= e!2658682 e!2658683)))

(declare-fun res!1757612 () Bool)

(assert (=> b!4282641 (= res!1757612 (not ((_ is Leaf!22194) (c!729981 (totalInput!4285 cacheFindLongestMatch!156)))))))

(assert (=> b!4282641 (=> res!1757612 e!2658683)))

(declare-fun b!4282642 () Bool)

(declare-fun inv!62850 (Conc!14343) Bool)

(assert (=> b!4282642 (= e!2658683 (inv!62850 (c!729981 (totalInput!4285 cacheFindLongestMatch!156))))))

(assert (= (and d!1264947 c!729985) b!4282640))

(assert (= (and d!1264947 (not c!729985)) b!4282641))

(assert (= (and b!4282641 (not res!1757612)) b!4282642))

(declare-fun m!4879559 () Bool)

(assert (=> b!4282640 m!4879559))

(declare-fun m!4879561 () Bool)

(assert (=> b!4282642 m!4879561))

(assert (=> b!4282628 d!1264947))

(declare-fun d!1264949 () Bool)

(assert (=> d!1264949 (= (array_inv!4882 (_keys!4556 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))) (bvsge (size!34749 (_keys!4556 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4282610 d!1264949))

(declare-fun d!1264951 () Bool)

(assert (=> d!1264951 (= (array_inv!4884 (_values!4537 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))) (bvsge (size!34751 (_values!4537 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4282610 d!1264951))

(declare-fun d!1264953 () Bool)

(assert (=> d!1264953 (= (inv!62838 (tag!8858 rule!232)) (= (mod (str.len (value!250648 (tag!8858 rule!232))) 2) 0))))

(assert (=> b!4282618 d!1264953))

(declare-fun d!1264955 () Bool)

(declare-fun res!1757615 () Bool)

(declare-fun e!2658686 () Bool)

(assert (=> d!1264955 (=> (not res!1757615) (not e!2658686))))

(declare-fun semiInverseModEq!3531 (Int Int) Bool)

(assert (=> d!1264955 (= res!1757615 (semiInverseModEq!3531 (toChars!10704 (transformation!7994 rule!232)) (toValue!10845 (transformation!7994 rule!232))))))

(assert (=> d!1264955 (= (inv!62845 (transformation!7994 rule!232)) e!2658686)))

(declare-fun b!4282645 () Bool)

(declare-fun equivClasses!3410 (Int Int) Bool)

(assert (=> b!4282645 (= e!2658686 (equivClasses!3410 (toChars!10704 (transformation!7994 rule!232)) (toValue!10845 (transformation!7994 rule!232))))))

(assert (= (and d!1264955 res!1757615) b!4282645))

(declare-fun m!4879563 () Bool)

(assert (=> d!1264955 m!4879563))

(declare-fun m!4879565 () Bool)

(assert (=> b!4282645 m!4879565))

(assert (=> b!4282618 d!1264955))

(declare-fun b!4282664 () Bool)

(declare-fun e!2658703 () Bool)

(declare-fun e!2658704 () Bool)

(assert (=> b!4282664 (= e!2658703 e!2658704)))

(declare-fun res!1757627 () Bool)

(assert (=> b!4282664 (=> (not res!1757627) (not e!2658704))))

(declare-fun call!294420 () Bool)

(assert (=> b!4282664 (= res!1757627 call!294420)))

(declare-fun c!729990 () Bool)

(declare-fun c!729991 () Bool)

(declare-fun call!294422 () Bool)

(declare-fun bm!294415 () Bool)

(assert (=> bm!294415 (= call!294422 (validRegex!5836 (ite c!729990 (reg!13228 (regex!7994 rule!232)) (ite c!729991 (regOne!26311 (regex!7994 rule!232)) (regOne!26310 (regex!7994 rule!232))))))))

(declare-fun b!4282665 () Bool)

(declare-fun res!1757629 () Bool)

(assert (=> b!4282665 (=> res!1757629 e!2658703)))

(assert (=> b!4282665 (= res!1757629 (not ((_ is Concat!21203) (regex!7994 rule!232))))))

(declare-fun e!2658707 () Bool)

(assert (=> b!4282665 (= e!2658707 e!2658703)))

(declare-fun b!4282666 () Bool)

(declare-fun e!2658706 () Bool)

(declare-fun e!2658701 () Bool)

(assert (=> b!4282666 (= e!2658706 e!2658701)))

(assert (=> b!4282666 (= c!729990 ((_ is Star!12899) (regex!7994 rule!232)))))

(declare-fun bm!294416 () Bool)

(assert (=> bm!294416 (= call!294420 call!294422)))

(declare-fun d!1264957 () Bool)

(declare-fun res!1757626 () Bool)

(assert (=> d!1264957 (=> res!1757626 e!2658706)))

(assert (=> d!1264957 (= res!1757626 ((_ is ElementMatch!12899) (regex!7994 rule!232)))))

(assert (=> d!1264957 (= (validRegex!5836 (regex!7994 rule!232)) e!2658706)))

(declare-fun b!4282667 () Bool)

(declare-fun e!2658702 () Bool)

(declare-fun call!294421 () Bool)

(assert (=> b!4282667 (= e!2658702 call!294421)))

(declare-fun b!4282668 () Bool)

(declare-fun res!1757630 () Bool)

(assert (=> b!4282668 (=> (not res!1757630) (not e!2658702))))

(assert (=> b!4282668 (= res!1757630 call!294420)))

(assert (=> b!4282668 (= e!2658707 e!2658702)))

(declare-fun bm!294417 () Bool)

(assert (=> bm!294417 (= call!294421 (validRegex!5836 (ite c!729991 (regTwo!26311 (regex!7994 rule!232)) (regTwo!26310 (regex!7994 rule!232)))))))

(declare-fun b!4282669 () Bool)

(assert (=> b!4282669 (= e!2658704 call!294421)))

(declare-fun b!4282670 () Bool)

(assert (=> b!4282670 (= e!2658701 e!2658707)))

(assert (=> b!4282670 (= c!729991 ((_ is Union!12899) (regex!7994 rule!232)))))

(declare-fun b!4282671 () Bool)

(declare-fun e!2658705 () Bool)

(assert (=> b!4282671 (= e!2658701 e!2658705)))

(declare-fun res!1757628 () Bool)

(declare-fun nullable!4528 (Regex!12899) Bool)

(assert (=> b!4282671 (= res!1757628 (not (nullable!4528 (reg!13228 (regex!7994 rule!232)))))))

(assert (=> b!4282671 (=> (not res!1757628) (not e!2658705))))

(declare-fun b!4282672 () Bool)

(assert (=> b!4282672 (= e!2658705 call!294422)))

(assert (= (and d!1264957 (not res!1757626)) b!4282666))

(assert (= (and b!4282666 c!729990) b!4282671))

(assert (= (and b!4282666 (not c!729990)) b!4282670))

(assert (= (and b!4282671 res!1757628) b!4282672))

(assert (= (and b!4282670 c!729991) b!4282668))

(assert (= (and b!4282670 (not c!729991)) b!4282665))

(assert (= (and b!4282668 res!1757630) b!4282667))

(assert (= (and b!4282665 (not res!1757629)) b!4282664))

(assert (= (and b!4282664 res!1757627) b!4282669))

(assert (= (or b!4282667 b!4282669) bm!294417))

(assert (= (or b!4282668 b!4282664) bm!294416))

(assert (= (or b!4282672 bm!294416) bm!294415))

(declare-fun m!4879567 () Bool)

(assert (=> bm!294415 m!4879567))

(declare-fun m!4879569 () Bool)

(assert (=> bm!294417 m!4879569))

(declare-fun m!4879571 () Bool)

(assert (=> b!4282671 m!4879571))

(assert (=> b!4282609 d!1264957))

(declare-fun d!1264959 () Bool)

(assert (=> d!1264959 (= (array_inv!4882 (_keys!4555 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))) (bvsge (size!34749 (_keys!4555 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4282629 d!1264959))

(declare-fun d!1264961 () Bool)

(assert (=> d!1264961 (= (array_inv!4885 (_values!4536 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))) (bvsge (size!34750 (_values!4536 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4282629 d!1264961))

(declare-fun d!1264963 () Bool)

(declare-fun e!2658710 () Bool)

(assert (=> d!1264963 e!2658710))

(declare-fun res!1757633 () Bool)

(assert (=> d!1264963 (=> res!1757633 e!2658710)))

(declare-fun lt!1515402 () Bool)

(assert (=> d!1264963 (= res!1757633 (not lt!1515402))))

(declare-fun drop!2182 (List!47538 Int) List!47538)

(declare-fun size!34752 (List!47538) Int)

(assert (=> d!1264963 (= lt!1515402 (= (list!17311 input!1632) (drop!2182 (list!17311 totalInput!528) (- (size!34752 (list!17311 totalInput!528)) (size!34752 (list!17311 input!1632))))))))

(assert (=> d!1264963 (= (isSuffix!1002 (list!17311 input!1632) (list!17311 totalInput!528)) lt!1515402)))

(declare-fun b!4282675 () Bool)

(assert (=> b!4282675 (= e!2658710 (>= (size!34752 (list!17311 totalInput!528)) (size!34752 (list!17311 input!1632))))))

(assert (= (and d!1264963 (not res!1757633)) b!4282675))

(assert (=> d!1264963 m!4879505))

(declare-fun m!4879573 () Bool)

(assert (=> d!1264963 m!4879573))

(assert (=> d!1264963 m!4879503))

(declare-fun m!4879575 () Bool)

(assert (=> d!1264963 m!4879575))

(assert (=> d!1264963 m!4879505))

(declare-fun m!4879577 () Bool)

(assert (=> d!1264963 m!4879577))

(assert (=> b!4282675 m!4879505))

(assert (=> b!4282675 m!4879573))

(assert (=> b!4282675 m!4879503))

(assert (=> b!4282675 m!4879575))

(assert (=> b!4282602 d!1264963))

(declare-fun d!1264965 () Bool)

(declare-fun list!17312 (Conc!14343) List!47538)

(assert (=> d!1264965 (= (list!17311 input!1632) (list!17312 (c!729981 input!1632)))))

(declare-fun bs!602769 () Bool)

(assert (= bs!602769 d!1264965))

(declare-fun m!4879579 () Bool)

(assert (=> bs!602769 m!4879579))

(assert (=> b!4282602 d!1264965))

(declare-fun d!1264967 () Bool)

(assert (=> d!1264967 (= (list!17311 totalInput!528) (list!17312 (c!729981 totalInput!528)))))

(declare-fun bs!602770 () Bool)

(assert (= bs!602770 d!1264967))

(declare-fun m!4879581 () Bool)

(assert (=> bs!602770 m!4879581))

(assert (=> b!4282602 d!1264967))

(declare-fun d!1264969 () Bool)

(declare-fun c!729992 () Bool)

(assert (=> d!1264969 (= c!729992 ((_ is Node!14343) (c!729981 totalInput!528)))))

(declare-fun e!2658711 () Bool)

(assert (=> d!1264969 (= (inv!62843 (c!729981 totalInput!528)) e!2658711)))

(declare-fun b!4282676 () Bool)

(assert (=> b!4282676 (= e!2658711 (inv!62849 (c!729981 totalInput!528)))))

(declare-fun b!4282677 () Bool)

(declare-fun e!2658712 () Bool)

(assert (=> b!4282677 (= e!2658711 e!2658712)))

(declare-fun res!1757634 () Bool)

(assert (=> b!4282677 (= res!1757634 (not ((_ is Leaf!22194) (c!729981 totalInput!528))))))

(assert (=> b!4282677 (=> res!1757634 e!2658712)))

(declare-fun b!4282678 () Bool)

(assert (=> b!4282678 (= e!2658712 (inv!62850 (c!729981 totalInput!528)))))

(assert (= (and d!1264969 c!729992) b!4282676))

(assert (= (and d!1264969 (not c!729992)) b!4282677))

(assert (= (and b!4282677 (not res!1757634)) b!4282678))

(declare-fun m!4879583 () Bool)

(assert (=> b!4282676 m!4879583))

(declare-fun m!4879585 () Bool)

(assert (=> b!4282678 m!4879585))

(assert (=> b!4282611 d!1264969))

(declare-fun d!1264971 () Bool)

(assert (=> d!1264971 (= (array_inv!4882 (_keys!4554 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))) (bvsge (size!34749 (_keys!4554 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4282603 d!1264971))

(declare-fun d!1264973 () Bool)

(assert (=> d!1264973 (= (array_inv!4883 (_values!4535 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))) (bvsge (size!34748 (_values!4535 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4282603 d!1264973))

(declare-fun d!1264975 () Bool)

(declare-fun validCacheMapUp!409 (MutableMap!4161) Bool)

(assert (=> d!1264975 (= (valid!3307 cacheUp!725) (validCacheMapUp!409 (cache!4301 cacheUp!725)))))

(declare-fun bs!602771 () Bool)

(assert (= bs!602771 d!1264975))

(declare-fun m!4879587 () Bool)

(assert (=> bs!602771 m!4879587))

(assert (=> b!4282632 d!1264975))

(declare-fun d!1264977 () Bool)

(declare-fun c!729993 () Bool)

(assert (=> d!1264977 (= c!729993 ((_ is Node!14343) (c!729981 input!1632)))))

(declare-fun e!2658713 () Bool)

(assert (=> d!1264977 (= (inv!62843 (c!729981 input!1632)) e!2658713)))

(declare-fun b!4282679 () Bool)

(assert (=> b!4282679 (= e!2658713 (inv!62849 (c!729981 input!1632)))))

(declare-fun b!4282680 () Bool)

(declare-fun e!2658714 () Bool)

(assert (=> b!4282680 (= e!2658713 e!2658714)))

(declare-fun res!1757635 () Bool)

(assert (=> b!4282680 (= res!1757635 (not ((_ is Leaf!22194) (c!729981 input!1632))))))

(assert (=> b!4282680 (=> res!1757635 e!2658714)))

(declare-fun b!4282681 () Bool)

(assert (=> b!4282681 (= e!2658714 (inv!62850 (c!729981 input!1632)))))

(assert (= (and d!1264977 c!729993) b!4282679))

(assert (= (and d!1264977 (not c!729993)) b!4282680))

(assert (= (and b!4282680 (not res!1757635)) b!4282681))

(declare-fun m!4879589 () Bool)

(assert (=> b!4282679 m!4879589))

(declare-fun m!4879591 () Bool)

(assert (=> b!4282681 m!4879591))

(assert (=> b!4282605 d!1264977))

(declare-fun d!1264979 () Bool)

(declare-fun res!1757640 () Bool)

(declare-fun e!2658717 () Bool)

(assert (=> d!1264979 (=> (not res!1757640) (not e!2658717))))

(assert (=> d!1264979 (= res!1757640 (validRegex!5836 (regex!7994 rule!232)))))

(assert (=> d!1264979 (= (ruleValid!3612 thiss!16356 rule!232) e!2658717)))

(declare-fun b!4282686 () Bool)

(declare-fun res!1757641 () Bool)

(assert (=> b!4282686 (=> (not res!1757641) (not e!2658717))))

(assert (=> b!4282686 (= res!1757641 (not (nullable!4528 (regex!7994 rule!232))))))

(declare-fun b!4282687 () Bool)

(assert (=> b!4282687 (= e!2658717 (not (= (tag!8858 rule!232) (String!55511 ""))))))

(assert (= (and d!1264979 res!1757640) b!4282686))

(assert (= (and b!4282686 res!1757641) b!4282687))

(assert (=> d!1264979 m!4879529))

(declare-fun m!4879593 () Bool)

(assert (=> b!4282686 m!4879593))

(assert (=> b!4282631 d!1264979))

(declare-fun d!1264981 () Bool)

(declare-fun res!1757644 () Bool)

(declare-fun e!2658720 () Bool)

(assert (=> d!1264981 (=> (not res!1757644) (not e!2658720))))

(assert (=> d!1264981 (= res!1757644 ((_ is HashMap!4161) (cache!4301 cacheUp!725)))))

(assert (=> d!1264981 (= (inv!62848 cacheUp!725) e!2658720)))

(declare-fun b!4282690 () Bool)

(assert (=> b!4282690 (= e!2658720 (validCacheMapUp!409 (cache!4301 cacheUp!725)))))

(assert (= (and d!1264981 res!1757644) b!4282690))

(assert (=> b!4282690 m!4879587))

(assert (=> start!411504 d!1264981))

(declare-fun d!1264983 () Bool)

(declare-fun res!1757647 () Bool)

(declare-fun e!2658723 () Bool)

(assert (=> d!1264983 (=> (not res!1757647) (not e!2658723))))

(assert (=> d!1264983 (= res!1757647 ((_ is HashMap!4162) (cache!4302 cacheFindLongestMatch!156)))))

(assert (=> d!1264983 (= (inv!62847 cacheFindLongestMatch!156) e!2658723)))

(declare-fun b!4282693 () Bool)

(declare-fun validCacheMapFindLongestMatch!66 (MutableMap!4162 BalanceConc!28176) Bool)

(assert (=> b!4282693 (= e!2658723 (validCacheMapFindLongestMatch!66 (cache!4302 cacheFindLongestMatch!156) (totalInput!4285 cacheFindLongestMatch!156)))))

(assert (= (and d!1264983 res!1757647) b!4282693))

(declare-fun m!4879595 () Bool)

(assert (=> b!4282693 m!4879595))

(assert (=> start!411504 d!1264983))

(declare-fun d!1264985 () Bool)

(declare-fun res!1757650 () Bool)

(declare-fun e!2658726 () Bool)

(assert (=> d!1264985 (=> (not res!1757650) (not e!2658726))))

(assert (=> d!1264985 (= res!1757650 ((_ is HashMap!4160) (cache!4300 cacheDown!738)))))

(assert (=> d!1264985 (= (inv!62846 cacheDown!738) e!2658726)))

(declare-fun b!4282696 () Bool)

(assert (=> b!4282696 (= e!2658726 (validCacheMapDown!440 (cache!4300 cacheDown!738)))))

(assert (= (and d!1264985 res!1757650) b!4282696))

(assert (=> b!4282696 m!4879555))

(assert (=> start!411504 d!1264985))

(declare-fun d!1264987 () Bool)

(assert (=> d!1264987 (= (inv!62844 totalInput!528) (isBalanced!3873 (c!729981 totalInput!528)))))

(declare-fun bs!602772 () Bool)

(assert (= bs!602772 d!1264987))

(declare-fun m!4879597 () Bool)

(assert (=> bs!602772 m!4879597))

(assert (=> start!411504 d!1264987))

(declare-fun d!1264989 () Bool)

(assert (=> d!1264989 (= (inv!62844 input!1632) (isBalanced!3873 (c!729981 input!1632)))))

(declare-fun bs!602773 () Bool)

(assert (= bs!602773 d!1264989))

(declare-fun m!4879599 () Bool)

(assert (=> bs!602773 m!4879599))

(assert (=> start!411504 d!1264989))

(declare-fun d!1264991 () Bool)

(assert (=> d!1264991 (= (valid!3305 cacheFindLongestMatch!156) (validCacheMapFindLongestMatch!66 (cache!4302 cacheFindLongestMatch!156) (totalInput!4285 cacheFindLongestMatch!156)))))

(declare-fun bs!602774 () Bool)

(assert (= bs!602774 d!1264991))

(assert (=> bs!602774 m!4879595))

(assert (=> b!4282623 d!1264991))

(declare-fun e!2658734 () Bool)

(assert (=> b!4282615 (= tp!1309683 e!2658734)))

(declare-fun b!4282705 () Bool)

(declare-fun e!2658735 () Bool)

(declare-fun tp!1309719 () Bool)

(assert (=> b!4282705 (= e!2658735 tp!1309719)))

(declare-fun b!4282706 () Bool)

(declare-fun e!2658733 () Bool)

(declare-fun tp!1309720 () Bool)

(assert (=> b!4282706 (= e!2658733 tp!1309720)))

(declare-fun setIsEmpty!26012 () Bool)

(declare-fun setRes!26012 () Bool)

(assert (=> setIsEmpty!26012 setRes!26012))

(declare-fun b!4282707 () Bool)

(declare-fun tp!1309722 () Bool)

(declare-fun tp_is_empty!23055 () Bool)

(declare-fun tp!1309721 () Bool)

(declare-fun inv!62851 (Context!5578) Bool)

(assert (=> b!4282707 (= e!2658734 (and tp!1309721 (inv!62851 (_2!25511 (_1!25512 (h!52836 mapDefault!19247)))) e!2658735 tp_is_empty!23055 setRes!26012 tp!1309722))))

(declare-fun condSetEmpty!26012 () Bool)

(assert (=> b!4282707 (= condSetEmpty!26012 (= (_2!25512 (h!52836 mapDefault!19247)) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun setNonEmpty!26012 () Bool)

(declare-fun setElem!26012 () Context!5578)

(declare-fun tp!1309723 () Bool)

(assert (=> setNonEmpty!26012 (= setRes!26012 (and tp!1309723 (inv!62851 setElem!26012) e!2658733))))

(declare-fun setRest!26012 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26012 (= (_2!25512 (h!52836 mapDefault!19247)) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26012 true) setRest!26012))))

(assert (= b!4282707 b!4282705))

(assert (= (and b!4282707 condSetEmpty!26012) setIsEmpty!26012))

(assert (= (and b!4282707 (not condSetEmpty!26012)) setNonEmpty!26012))

(assert (= setNonEmpty!26012 b!4282706))

(assert (= (and b!4282615 ((_ is Cons!47416) mapDefault!19247)) b!4282707))

(declare-fun m!4879601 () Bool)

(assert (=> b!4282707 m!4879601))

(declare-fun m!4879603 () Bool)

(assert (=> setNonEmpty!26012 m!4879603))

(declare-fun setIsEmpty!26015 () Bool)

(declare-fun setRes!26015 () Bool)

(assert (=> setIsEmpty!26015 setRes!26015))

(declare-fun b!4282716 () Bool)

(declare-fun e!2658742 () Bool)

(declare-fun tp!1309733 () Bool)

(assert (=> b!4282716 (= e!2658742 tp!1309733)))

(declare-fun setElem!26015 () Context!5578)

(declare-fun setNonEmpty!26015 () Bool)

(declare-fun tp!1309734 () Bool)

(assert (=> setNonEmpty!26015 (= setRes!26015 (and tp!1309734 (inv!62851 setElem!26015) e!2658742))))

(declare-fun setRest!26015 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26015 (= (_2!25514 (h!52837 mapDefault!19246)) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26015 true) setRest!26015))))

(declare-fun e!2658744 () Bool)

(declare-fun b!4282717 () Bool)

(declare-fun tp!1309735 () Bool)

(declare-fun e!2658743 () Bool)

(assert (=> b!4282717 (= e!2658743 (and (inv!62851 (_1!25513 (_1!25514 (h!52837 mapDefault!19246)))) e!2658744 tp_is_empty!23055 setRes!26015 tp!1309735))))

(declare-fun condSetEmpty!26015 () Bool)

(assert (=> b!4282717 (= condSetEmpty!26015 (= (_2!25514 (h!52837 mapDefault!19246)) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun b!4282718 () Bool)

(declare-fun tp!1309732 () Bool)

(assert (=> b!4282718 (= e!2658744 tp!1309732)))

(assert (=> b!4282625 (= tp!1309700 e!2658743)))

(assert (= b!4282717 b!4282718))

(assert (= (and b!4282717 condSetEmpty!26015) setIsEmpty!26015))

(assert (= (and b!4282717 (not condSetEmpty!26015)) setNonEmpty!26015))

(assert (= setNonEmpty!26015 b!4282716))

(assert (= (and b!4282625 ((_ is Cons!47417) mapDefault!19246)) b!4282717))

(declare-fun m!4879605 () Bool)

(assert (=> setNonEmpty!26015 m!4879605))

(declare-fun m!4879607 () Bool)

(assert (=> b!4282717 m!4879607))

(declare-fun setRes!26021 () Bool)

(declare-fun e!2658759 () Bool)

(declare-fun tp!1309760 () Bool)

(declare-fun mapValue!19250 () List!47540)

(declare-fun e!2658761 () Bool)

(declare-fun tp!1309762 () Bool)

(declare-fun b!4282733 () Bool)

(assert (=> b!4282733 (= e!2658761 (and tp!1309762 (inv!62851 (_2!25511 (_1!25512 (h!52836 mapValue!19250)))) e!2658759 tp_is_empty!23055 setRes!26021 tp!1309760))))

(declare-fun condSetEmpty!26021 () Bool)

(assert (=> b!4282733 (= condSetEmpty!26021 (= (_2!25512 (h!52836 mapValue!19250)) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun b!4282734 () Bool)

(declare-fun e!2658760 () Bool)

(declare-fun tp!1309766 () Bool)

(assert (=> b!4282734 (= e!2658760 tp!1309766)))

(declare-fun b!4282735 () Bool)

(declare-fun e!2658762 () Bool)

(declare-fun tp!1309765 () Bool)

(assert (=> b!4282735 (= e!2658762 tp!1309765)))

(declare-fun condMapEmpty!19250 () Bool)

(declare-fun mapDefault!19250 () List!47540)

(assert (=> mapNonEmpty!19246 (= condMapEmpty!19250 (= mapRest!19245 ((as const (Array (_ BitVec 32) List!47540)) mapDefault!19250)))))

(declare-fun e!2658758 () Bool)

(declare-fun mapRes!19250 () Bool)

(assert (=> mapNonEmpty!19246 (= tp!1309691 (and e!2658758 mapRes!19250))))

(declare-fun setIsEmpty!26020 () Bool)

(declare-fun setRes!26020 () Bool)

(assert (=> setIsEmpty!26020 setRes!26020))

(declare-fun tp!1309759 () Bool)

(declare-fun setElem!26021 () Context!5578)

(declare-fun setNonEmpty!26020 () Bool)

(assert (=> setNonEmpty!26020 (= setRes!26021 (and tp!1309759 (inv!62851 setElem!26021) e!2658762))))

(declare-fun setRest!26020 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26020 (= (_2!25512 (h!52836 mapValue!19250)) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26021 true) setRest!26020))))

(declare-fun setIsEmpty!26021 () Bool)

(assert (=> setIsEmpty!26021 setRes!26021))

(declare-fun b!4282736 () Bool)

(declare-fun e!2658757 () Bool)

(declare-fun tp!1309763 () Bool)

(assert (=> b!4282736 (= e!2658757 tp!1309763)))

(declare-fun mapIsEmpty!19250 () Bool)

(assert (=> mapIsEmpty!19250 mapRes!19250))

(declare-fun mapNonEmpty!19250 () Bool)

(declare-fun tp!1309758 () Bool)

(assert (=> mapNonEmpty!19250 (= mapRes!19250 (and tp!1309758 e!2658761))))

(declare-fun mapRest!19250 () (Array (_ BitVec 32) List!47540))

(declare-fun mapKey!19250 () (_ BitVec 32))

(assert (=> mapNonEmpty!19250 (= mapRest!19245 (store mapRest!19250 mapKey!19250 mapValue!19250))))

(declare-fun setElem!26020 () Context!5578)

(declare-fun tp!1309764 () Bool)

(declare-fun setNonEmpty!26021 () Bool)

(assert (=> setNonEmpty!26021 (= setRes!26020 (and tp!1309764 (inv!62851 setElem!26020) e!2658760))))

(declare-fun setRest!26021 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26021 (= (_2!25512 (h!52836 mapDefault!19250)) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26020 true) setRest!26021))))

(declare-fun b!4282737 () Bool)

(declare-fun tp!1309767 () Bool)

(declare-fun tp!1309761 () Bool)

(assert (=> b!4282737 (= e!2658758 (and tp!1309761 (inv!62851 (_2!25511 (_1!25512 (h!52836 mapDefault!19250)))) e!2658757 tp_is_empty!23055 setRes!26020 tp!1309767))))

(declare-fun condSetEmpty!26020 () Bool)

(assert (=> b!4282737 (= condSetEmpty!26020 (= (_2!25512 (h!52836 mapDefault!19250)) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun b!4282738 () Bool)

(declare-fun tp!1309768 () Bool)

(assert (=> b!4282738 (= e!2658759 tp!1309768)))

(assert (= (and mapNonEmpty!19246 condMapEmpty!19250) mapIsEmpty!19250))

(assert (= (and mapNonEmpty!19246 (not condMapEmpty!19250)) mapNonEmpty!19250))

(assert (= b!4282733 b!4282738))

(assert (= (and b!4282733 condSetEmpty!26021) setIsEmpty!26021))

(assert (= (and b!4282733 (not condSetEmpty!26021)) setNonEmpty!26020))

(assert (= setNonEmpty!26020 b!4282735))

(assert (= (and mapNonEmpty!19250 ((_ is Cons!47416) mapValue!19250)) b!4282733))

(assert (= b!4282737 b!4282736))

(assert (= (and b!4282737 condSetEmpty!26020) setIsEmpty!26020))

(assert (= (and b!4282737 (not condSetEmpty!26020)) setNonEmpty!26021))

(assert (= setNonEmpty!26021 b!4282734))

(assert (= (and mapNonEmpty!19246 ((_ is Cons!47416) mapDefault!19250)) b!4282737))

(declare-fun m!4879609 () Bool)

(assert (=> mapNonEmpty!19250 m!4879609))

(declare-fun m!4879611 () Bool)

(assert (=> b!4282733 m!4879611))

(declare-fun m!4879613 () Bool)

(assert (=> setNonEmpty!26021 m!4879613))

(declare-fun m!4879615 () Bool)

(assert (=> setNonEmpty!26020 m!4879615))

(declare-fun m!4879617 () Bool)

(assert (=> b!4282737 m!4879617))

(declare-fun e!2658764 () Bool)

(assert (=> mapNonEmpty!19246 (= tp!1309687 e!2658764)))

(declare-fun b!4282739 () Bool)

(declare-fun e!2658765 () Bool)

(declare-fun tp!1309769 () Bool)

(assert (=> b!4282739 (= e!2658765 tp!1309769)))

(declare-fun b!4282740 () Bool)

(declare-fun e!2658763 () Bool)

(declare-fun tp!1309770 () Bool)

(assert (=> b!4282740 (= e!2658763 tp!1309770)))

(declare-fun setIsEmpty!26022 () Bool)

(declare-fun setRes!26022 () Bool)

(assert (=> setIsEmpty!26022 setRes!26022))

(declare-fun tp!1309771 () Bool)

(declare-fun tp!1309772 () Bool)

(declare-fun b!4282741 () Bool)

(assert (=> b!4282741 (= e!2658764 (and tp!1309771 (inv!62851 (_2!25511 (_1!25512 (h!52836 mapValue!19247)))) e!2658765 tp_is_empty!23055 setRes!26022 tp!1309772))))

(declare-fun condSetEmpty!26022 () Bool)

(assert (=> b!4282741 (= condSetEmpty!26022 (= (_2!25512 (h!52836 mapValue!19247)) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun setElem!26022 () Context!5578)

(declare-fun setNonEmpty!26022 () Bool)

(declare-fun tp!1309773 () Bool)

(assert (=> setNonEmpty!26022 (= setRes!26022 (and tp!1309773 (inv!62851 setElem!26022) e!2658763))))

(declare-fun setRest!26022 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26022 (= (_2!25512 (h!52836 mapValue!19247)) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26022 true) setRest!26022))))

(assert (= b!4282741 b!4282739))

(assert (= (and b!4282741 condSetEmpty!26022) setIsEmpty!26022))

(assert (= (and b!4282741 (not condSetEmpty!26022)) setNonEmpty!26022))

(assert (= setNonEmpty!26022 b!4282740))

(assert (= (and mapNonEmpty!19246 ((_ is Cons!47416) mapValue!19247)) b!4282741))

(declare-fun m!4879619 () Bool)

(assert (=> b!4282741 m!4879619))

(declare-fun m!4879621 () Bool)

(assert (=> setNonEmpty!26022 m!4879621))

(declare-fun tp!1309782 () Bool)

(declare-fun tp!1309780 () Bool)

(declare-fun b!4282750 () Bool)

(declare-fun e!2658770 () Bool)

(assert (=> b!4282750 (= e!2658770 (and (inv!62843 (left!35321 (c!729981 (totalInput!4285 cacheFindLongestMatch!156)))) tp!1309780 (inv!62843 (right!35651 (c!729981 (totalInput!4285 cacheFindLongestMatch!156)))) tp!1309782))))

(declare-fun b!4282752 () Bool)

(declare-fun e!2658771 () Bool)

(declare-fun tp!1309781 () Bool)

(assert (=> b!4282752 (= e!2658771 tp!1309781)))

(declare-fun b!4282751 () Bool)

(declare-fun inv!62852 (IArray!28747) Bool)

(assert (=> b!4282751 (= e!2658770 (and (inv!62852 (xs!17649 (c!729981 (totalInput!4285 cacheFindLongestMatch!156)))) e!2658771))))

(assert (=> b!4282628 (= tp!1309697 (and (inv!62843 (c!729981 (totalInput!4285 cacheFindLongestMatch!156))) e!2658770))))

(assert (= (and b!4282628 ((_ is Node!14343) (c!729981 (totalInput!4285 cacheFindLongestMatch!156)))) b!4282750))

(assert (= b!4282751 b!4282752))

(assert (= (and b!4282628 ((_ is Leaf!22194) (c!729981 (totalInput!4285 cacheFindLongestMatch!156)))) b!4282751))

(declare-fun m!4879623 () Bool)

(assert (=> b!4282750 m!4879623))

(declare-fun m!4879625 () Bool)

(assert (=> b!4282750 m!4879625))

(declare-fun m!4879627 () Bool)

(assert (=> b!4282751 m!4879627))

(assert (=> b!4282628 m!4879551))

(declare-fun b!4282760 () Bool)

(declare-fun e!2658776 () Bool)

(declare-fun tp!1309789 () Bool)

(assert (=> b!4282760 (= e!2658776 tp!1309789)))

(declare-fun setIsEmpty!26025 () Bool)

(declare-fun setRes!26025 () Bool)

(assert (=> setIsEmpty!26025 setRes!26025))

(declare-fun setNonEmpty!26025 () Bool)

(declare-fun setElem!26025 () Context!5578)

(declare-fun tp!1309791 () Bool)

(assert (=> setNonEmpty!26025 (= setRes!26025 (and tp!1309791 (inv!62851 setElem!26025) e!2658776))))

(declare-fun setRest!26025 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26025 (= (_1!25515 (_1!25516 (h!52838 (zeroValue!4515 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26025 true) setRest!26025))))

(declare-fun e!2658777 () Bool)

(assert (=> b!4282610 (= tp!1309682 e!2658777)))

(declare-fun b!4282759 () Bool)

(declare-fun tp!1309790 () Bool)

(assert (=> b!4282759 (= e!2658777 (and setRes!26025 tp!1309790))))

(declare-fun condSetEmpty!26025 () Bool)

(assert (=> b!4282759 (= condSetEmpty!26025 (= (_1!25515 (_1!25516 (h!52838 (zeroValue!4515 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5578 Bool)) false)))))

(assert (= (and b!4282759 condSetEmpty!26025) setIsEmpty!26025))

(assert (= (and b!4282759 (not condSetEmpty!26025)) setNonEmpty!26025))

(assert (= setNonEmpty!26025 b!4282760))

(assert (= (and b!4282610 ((_ is Cons!47418) (zeroValue!4515 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156)))))))) b!4282759))

(declare-fun m!4879629 () Bool)

(assert (=> setNonEmpty!26025 m!4879629))

(declare-fun b!4282762 () Bool)

(declare-fun e!2658778 () Bool)

(declare-fun tp!1309792 () Bool)

(assert (=> b!4282762 (= e!2658778 tp!1309792)))

(declare-fun setIsEmpty!26026 () Bool)

(declare-fun setRes!26026 () Bool)

(assert (=> setIsEmpty!26026 setRes!26026))

(declare-fun tp!1309794 () Bool)

(declare-fun setNonEmpty!26026 () Bool)

(declare-fun setElem!26026 () Context!5578)

(assert (=> setNonEmpty!26026 (= setRes!26026 (and tp!1309794 (inv!62851 setElem!26026) e!2658778))))

(declare-fun setRest!26026 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26026 (= (_1!25515 (_1!25516 (h!52838 (minValue!4515 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26026 true) setRest!26026))))

(declare-fun e!2658779 () Bool)

(assert (=> b!4282610 (= tp!1309695 e!2658779)))

(declare-fun b!4282761 () Bool)

(declare-fun tp!1309793 () Bool)

(assert (=> b!4282761 (= e!2658779 (and setRes!26026 tp!1309793))))

(declare-fun condSetEmpty!26026 () Bool)

(assert (=> b!4282761 (= condSetEmpty!26026 (= (_1!25515 (_1!25516 (h!52838 (minValue!4515 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5578 Bool)) false)))))

(assert (= (and b!4282761 condSetEmpty!26026) setIsEmpty!26026))

(assert (= (and b!4282761 (not condSetEmpty!26026)) setNonEmpty!26026))

(assert (= setNonEmpty!26026 b!4282762))

(assert (= (and b!4282610 ((_ is Cons!47418) (minValue!4515 (v!41319 (underlying!8741 (v!41320 (underlying!8742 (cache!4302 cacheFindLongestMatch!156)))))))) b!4282761))

(declare-fun m!4879631 () Bool)

(assert (=> setNonEmpty!26026 m!4879631))

(declare-fun e!2658782 () Bool)

(assert (=> b!4282618 (= tp!1309703 e!2658782)))

(declare-fun b!4282774 () Bool)

(declare-fun tp!1309808 () Bool)

(declare-fun tp!1309806 () Bool)

(assert (=> b!4282774 (= e!2658782 (and tp!1309808 tp!1309806))))

(declare-fun b!4282775 () Bool)

(declare-fun tp!1309805 () Bool)

(assert (=> b!4282775 (= e!2658782 tp!1309805)))

(declare-fun b!4282773 () Bool)

(assert (=> b!4282773 (= e!2658782 tp_is_empty!23055)))

(declare-fun b!4282776 () Bool)

(declare-fun tp!1309809 () Bool)

(declare-fun tp!1309807 () Bool)

(assert (=> b!4282776 (= e!2658782 (and tp!1309809 tp!1309807))))

(assert (= (and b!4282618 ((_ is ElementMatch!12899) (regex!7994 rule!232))) b!4282773))

(assert (= (and b!4282618 ((_ is Concat!21203) (regex!7994 rule!232))) b!4282774))

(assert (= (and b!4282618 ((_ is Star!12899) (regex!7994 rule!232))) b!4282775))

(assert (= (and b!4282618 ((_ is Union!12899) (regex!7994 rule!232))) b!4282776))

(declare-fun b!4282787 () Bool)

(declare-fun e!2658791 () Bool)

(declare-fun tp!1309827 () Bool)

(assert (=> b!4282787 (= e!2658791 tp!1309827)))

(declare-fun setIsEmpty!26031 () Bool)

(declare-fun setRes!26032 () Bool)

(assert (=> setIsEmpty!26031 setRes!26032))

(declare-fun setElem!26031 () Context!5578)

(declare-fun tp!1309825 () Bool)

(declare-fun e!2658794 () Bool)

(declare-fun setNonEmpty!26031 () Bool)

(assert (=> setNonEmpty!26031 (= setRes!26032 (and tp!1309825 (inv!62851 setElem!26031) e!2658794))))

(declare-fun mapDefault!19253 () List!47542)

(declare-fun setRest!26031 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26031 (= (_1!25515 (_1!25516 (h!52838 mapDefault!19253))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26031 true) setRest!26031))))

(declare-fun mapNonEmpty!19253 () Bool)

(declare-fun mapRes!19253 () Bool)

(declare-fun tp!1309824 () Bool)

(declare-fun e!2658793 () Bool)

(assert (=> mapNonEmpty!19253 (= mapRes!19253 (and tp!1309824 e!2658793))))

(declare-fun mapRest!19253 () (Array (_ BitVec 32) List!47542))

(declare-fun mapValue!19253 () List!47542)

(declare-fun mapKey!19253 () (_ BitVec 32))

(assert (=> mapNonEmpty!19253 (= mapRest!19247 (store mapRest!19253 mapKey!19253 mapValue!19253))))

(declare-fun mapIsEmpty!19253 () Bool)

(assert (=> mapIsEmpty!19253 mapRes!19253))

(declare-fun setIsEmpty!26032 () Bool)

(declare-fun setRes!26031 () Bool)

(assert (=> setIsEmpty!26032 setRes!26031))

(declare-fun condMapEmpty!19253 () Bool)

(assert (=> mapNonEmpty!19247 (= condMapEmpty!19253 (= mapRest!19247 ((as const (Array (_ BitVec 32) List!47542)) mapDefault!19253)))))

(declare-fun e!2658792 () Bool)

(assert (=> mapNonEmpty!19247 (= tp!1309698 (and e!2658792 mapRes!19253))))

(declare-fun b!4282788 () Bool)

(declare-fun tp!1309829 () Bool)

(assert (=> b!4282788 (= e!2658794 tp!1309829)))

(declare-fun b!4282789 () Bool)

(declare-fun tp!1309828 () Bool)

(assert (=> b!4282789 (= e!2658792 (and setRes!26032 tp!1309828))))

(declare-fun condSetEmpty!26031 () Bool)

(assert (=> b!4282789 (= condSetEmpty!26031 (= (_1!25515 (_1!25516 (h!52838 mapDefault!19253))) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun setElem!26032 () Context!5578)

(declare-fun setNonEmpty!26032 () Bool)

(declare-fun tp!1309826 () Bool)

(assert (=> setNonEmpty!26032 (= setRes!26031 (and tp!1309826 (inv!62851 setElem!26032) e!2658791))))

(declare-fun setRest!26032 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26032 (= (_1!25515 (_1!25516 (h!52838 mapValue!19253))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26032 true) setRest!26032))))

(declare-fun b!4282790 () Bool)

(declare-fun tp!1309830 () Bool)

(assert (=> b!4282790 (= e!2658793 (and setRes!26031 tp!1309830))))

(declare-fun condSetEmpty!26032 () Bool)

(assert (=> b!4282790 (= condSetEmpty!26032 (= (_1!25515 (_1!25516 (h!52838 mapValue!19253))) ((as const (Array Context!5578 Bool)) false)))))

(assert (= (and mapNonEmpty!19247 condMapEmpty!19253) mapIsEmpty!19253))

(assert (= (and mapNonEmpty!19247 (not condMapEmpty!19253)) mapNonEmpty!19253))

(assert (= (and b!4282790 condSetEmpty!26032) setIsEmpty!26032))

(assert (= (and b!4282790 (not condSetEmpty!26032)) setNonEmpty!26032))

(assert (= setNonEmpty!26032 b!4282787))

(assert (= (and mapNonEmpty!19253 ((_ is Cons!47418) mapValue!19253)) b!4282790))

(assert (= (and b!4282789 condSetEmpty!26031) setIsEmpty!26031))

(assert (= (and b!4282789 (not condSetEmpty!26031)) setNonEmpty!26031))

(assert (= setNonEmpty!26031 b!4282788))

(assert (= (and mapNonEmpty!19247 ((_ is Cons!47418) mapDefault!19253)) b!4282789))

(declare-fun m!4879633 () Bool)

(assert (=> setNonEmpty!26031 m!4879633))

(declare-fun m!4879635 () Bool)

(assert (=> mapNonEmpty!19253 m!4879635))

(declare-fun m!4879637 () Bool)

(assert (=> setNonEmpty!26032 m!4879637))

(declare-fun b!4282792 () Bool)

(declare-fun e!2658795 () Bool)

(declare-fun tp!1309831 () Bool)

(assert (=> b!4282792 (= e!2658795 tp!1309831)))

(declare-fun setIsEmpty!26033 () Bool)

(declare-fun setRes!26033 () Bool)

(assert (=> setIsEmpty!26033 setRes!26033))

(declare-fun setElem!26033 () Context!5578)

(declare-fun setNonEmpty!26033 () Bool)

(declare-fun tp!1309833 () Bool)

(assert (=> setNonEmpty!26033 (= setRes!26033 (and tp!1309833 (inv!62851 setElem!26033) e!2658795))))

(declare-fun setRest!26033 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26033 (= (_1!25515 (_1!25516 (h!52838 mapValue!19246))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26033 true) setRest!26033))))

(declare-fun e!2658796 () Bool)

(assert (=> mapNonEmpty!19247 (= tp!1309699 e!2658796)))

(declare-fun b!4282791 () Bool)

(declare-fun tp!1309832 () Bool)

(assert (=> b!4282791 (= e!2658796 (and setRes!26033 tp!1309832))))

(declare-fun condSetEmpty!26033 () Bool)

(assert (=> b!4282791 (= condSetEmpty!26033 (= (_1!25515 (_1!25516 (h!52838 mapValue!19246))) ((as const (Array Context!5578 Bool)) false)))))

(assert (= (and b!4282791 condSetEmpty!26033) setIsEmpty!26033))

(assert (= (and b!4282791 (not condSetEmpty!26033)) setNonEmpty!26033))

(assert (= setNonEmpty!26033 b!4282792))

(assert (= (and mapNonEmpty!19247 ((_ is Cons!47418) mapValue!19246)) b!4282791))

(declare-fun m!4879639 () Bool)

(assert (=> setNonEmpty!26033 m!4879639))

(declare-fun tp!1309856 () Bool)

(declare-fun e!2658813 () Bool)

(declare-fun setNonEmpty!26038 () Bool)

(declare-fun setElem!26039 () Context!5578)

(declare-fun setRes!26038 () Bool)

(assert (=> setNonEmpty!26038 (= setRes!26038 (and tp!1309856 (inv!62851 setElem!26039) e!2658813))))

(declare-fun mapDefault!19256 () List!47541)

(declare-fun setRest!26038 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26038 (= (_2!25514 (h!52837 mapDefault!19256)) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26039 true) setRest!26038))))

(declare-fun setIsEmpty!26038 () Bool)

(declare-fun setRes!26039 () Bool)

(assert (=> setIsEmpty!26038 setRes!26039))

(declare-fun setIsEmpty!26039 () Bool)

(assert (=> setIsEmpty!26039 setRes!26038))

(declare-fun mapIsEmpty!19256 () Bool)

(declare-fun mapRes!19256 () Bool)

(assert (=> mapIsEmpty!19256 mapRes!19256))

(declare-fun b!4282807 () Bool)

(declare-fun e!2658809 () Bool)

(declare-fun tp!1309852 () Bool)

(assert (=> b!4282807 (= e!2658809 tp!1309852)))

(declare-fun tp!1309859 () Bool)

(declare-fun b!4282808 () Bool)

(declare-fun e!2658814 () Bool)

(assert (=> b!4282808 (= e!2658814 (and (inv!62851 (_1!25513 (_1!25514 (h!52837 mapDefault!19256)))) e!2658809 tp_is_empty!23055 setRes!26038 tp!1309859))))

(declare-fun condSetEmpty!26039 () Bool)

(assert (=> b!4282808 (= condSetEmpty!26039 (= (_2!25514 (h!52837 mapDefault!19256)) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun b!4282809 () Bool)

(declare-fun e!2658812 () Bool)

(declare-fun tp!1309854 () Bool)

(assert (=> b!4282809 (= e!2658812 tp!1309854)))

(declare-fun mapNonEmpty!19256 () Bool)

(declare-fun tp!1309853 () Bool)

(declare-fun e!2658811 () Bool)

(assert (=> mapNonEmpty!19256 (= mapRes!19256 (and tp!1309853 e!2658811))))

(declare-fun mapValue!19256 () List!47541)

(declare-fun mapKey!19256 () (_ BitVec 32))

(declare-fun mapRest!19256 () (Array (_ BitVec 32) List!47541))

(assert (=> mapNonEmpty!19256 (= mapRest!19246 (store mapRest!19256 mapKey!19256 mapValue!19256))))

(declare-fun b!4282810 () Bool)

(declare-fun e!2658810 () Bool)

(declare-fun tp!1309855 () Bool)

(assert (=> b!4282810 (= e!2658810 tp!1309855)))

(declare-fun condMapEmpty!19256 () Bool)

(assert (=> mapNonEmpty!19245 (= condMapEmpty!19256 (= mapRest!19246 ((as const (Array (_ BitVec 32) List!47541)) mapDefault!19256)))))

(assert (=> mapNonEmpty!19245 (= tp!1309696 (and e!2658814 mapRes!19256))))

(declare-fun b!4282811 () Bool)

(declare-fun tp!1309857 () Bool)

(assert (=> b!4282811 (= e!2658813 tp!1309857)))

(declare-fun setNonEmpty!26039 () Bool)

(declare-fun setElem!26038 () Context!5578)

(declare-fun tp!1309858 () Bool)

(assert (=> setNonEmpty!26039 (= setRes!26039 (and tp!1309858 (inv!62851 setElem!26038) e!2658810))))

(declare-fun setRest!26039 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26039 (= (_2!25514 (h!52837 mapValue!19256)) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26038 true) setRest!26039))))

(declare-fun tp!1309860 () Bool)

(declare-fun b!4282812 () Bool)

(assert (=> b!4282812 (= e!2658811 (and (inv!62851 (_1!25513 (_1!25514 (h!52837 mapValue!19256)))) e!2658812 tp_is_empty!23055 setRes!26039 tp!1309860))))

(declare-fun condSetEmpty!26038 () Bool)

(assert (=> b!4282812 (= condSetEmpty!26038 (= (_2!25514 (h!52837 mapValue!19256)) ((as const (Array Context!5578 Bool)) false)))))

(assert (= (and mapNonEmpty!19245 condMapEmpty!19256) mapIsEmpty!19256))

(assert (= (and mapNonEmpty!19245 (not condMapEmpty!19256)) mapNonEmpty!19256))

(assert (= b!4282812 b!4282809))

(assert (= (and b!4282812 condSetEmpty!26038) setIsEmpty!26038))

(assert (= (and b!4282812 (not condSetEmpty!26038)) setNonEmpty!26039))

(assert (= setNonEmpty!26039 b!4282810))

(assert (= (and mapNonEmpty!19256 ((_ is Cons!47417) mapValue!19256)) b!4282812))

(assert (= b!4282808 b!4282807))

(assert (= (and b!4282808 condSetEmpty!26039) setIsEmpty!26039))

(assert (= (and b!4282808 (not condSetEmpty!26039)) setNonEmpty!26038))

(assert (= setNonEmpty!26038 b!4282811))

(assert (= (and mapNonEmpty!19245 ((_ is Cons!47417) mapDefault!19256)) b!4282808))

(declare-fun m!4879641 () Bool)

(assert (=> mapNonEmpty!19256 m!4879641))

(declare-fun m!4879643 () Bool)

(assert (=> setNonEmpty!26038 m!4879643))

(declare-fun m!4879645 () Bool)

(assert (=> b!4282808 m!4879645))

(declare-fun m!4879647 () Bool)

(assert (=> setNonEmpty!26039 m!4879647))

(declare-fun m!4879649 () Bool)

(assert (=> b!4282812 m!4879649))

(declare-fun setIsEmpty!26040 () Bool)

(declare-fun setRes!26040 () Bool)

(assert (=> setIsEmpty!26040 setRes!26040))

(declare-fun b!4282813 () Bool)

(declare-fun e!2658815 () Bool)

(declare-fun tp!1309862 () Bool)

(assert (=> b!4282813 (= e!2658815 tp!1309862)))

(declare-fun setNonEmpty!26040 () Bool)

(declare-fun tp!1309863 () Bool)

(declare-fun setElem!26040 () Context!5578)

(assert (=> setNonEmpty!26040 (= setRes!26040 (and tp!1309863 (inv!62851 setElem!26040) e!2658815))))

(declare-fun setRest!26040 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26040 (= (_2!25514 (h!52837 mapValue!19245)) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26040 true) setRest!26040))))

(declare-fun tp!1309864 () Bool)

(declare-fun e!2658817 () Bool)

(declare-fun e!2658816 () Bool)

(declare-fun b!4282814 () Bool)

(assert (=> b!4282814 (= e!2658816 (and (inv!62851 (_1!25513 (_1!25514 (h!52837 mapValue!19245)))) e!2658817 tp_is_empty!23055 setRes!26040 tp!1309864))))

(declare-fun condSetEmpty!26040 () Bool)

(assert (=> b!4282814 (= condSetEmpty!26040 (= (_2!25514 (h!52837 mapValue!19245)) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun b!4282815 () Bool)

(declare-fun tp!1309861 () Bool)

(assert (=> b!4282815 (= e!2658817 tp!1309861)))

(assert (=> mapNonEmpty!19245 (= tp!1309688 e!2658816)))

(assert (= b!4282814 b!4282815))

(assert (= (and b!4282814 condSetEmpty!26040) setIsEmpty!26040))

(assert (= (and b!4282814 (not condSetEmpty!26040)) setNonEmpty!26040))

(assert (= setNonEmpty!26040 b!4282813))

(assert (= (and mapNonEmpty!19245 ((_ is Cons!47417) mapValue!19245)) b!4282814))

(declare-fun m!4879651 () Bool)

(assert (=> setNonEmpty!26040 m!4879651))

(declare-fun m!4879653 () Bool)

(assert (=> b!4282814 m!4879653))

(declare-fun setIsEmpty!26041 () Bool)

(declare-fun setRes!26041 () Bool)

(assert (=> setIsEmpty!26041 setRes!26041))

(declare-fun b!4282816 () Bool)

(declare-fun e!2658818 () Bool)

(declare-fun tp!1309866 () Bool)

(assert (=> b!4282816 (= e!2658818 tp!1309866)))

(declare-fun tp!1309867 () Bool)

(declare-fun setElem!26041 () Context!5578)

(declare-fun setNonEmpty!26041 () Bool)

(assert (=> setNonEmpty!26041 (= setRes!26041 (and tp!1309867 (inv!62851 setElem!26041) e!2658818))))

(declare-fun setRest!26041 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26041 (= (_2!25514 (h!52837 (zeroValue!4514 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26041 true) setRest!26041))))

(declare-fun e!2658819 () Bool)

(declare-fun e!2658820 () Bool)

(declare-fun b!4282817 () Bool)

(declare-fun tp!1309868 () Bool)

(assert (=> b!4282817 (= e!2658819 (and (inv!62851 (_1!25513 (_1!25514 (h!52837 (zeroValue!4514 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725)))))))))) e!2658820 tp_is_empty!23055 setRes!26041 tp!1309868))))

(declare-fun condSetEmpty!26041 () Bool)

(assert (=> b!4282817 (= condSetEmpty!26041 (= (_2!25514 (h!52837 (zeroValue!4514 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725)))))))) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun b!4282818 () Bool)

(declare-fun tp!1309865 () Bool)

(assert (=> b!4282818 (= e!2658820 tp!1309865)))

(assert (=> b!4282629 (= tp!1309690 e!2658819)))

(assert (= b!4282817 b!4282818))

(assert (= (and b!4282817 condSetEmpty!26041) setIsEmpty!26041))

(assert (= (and b!4282817 (not condSetEmpty!26041)) setNonEmpty!26041))

(assert (= setNonEmpty!26041 b!4282816))

(assert (= (and b!4282629 ((_ is Cons!47417) (zeroValue!4514 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725)))))))) b!4282817))

(declare-fun m!4879655 () Bool)

(assert (=> setNonEmpty!26041 m!4879655))

(declare-fun m!4879657 () Bool)

(assert (=> b!4282817 m!4879657))

(declare-fun setIsEmpty!26042 () Bool)

(declare-fun setRes!26042 () Bool)

(assert (=> setIsEmpty!26042 setRes!26042))

(declare-fun b!4282819 () Bool)

(declare-fun e!2658821 () Bool)

(declare-fun tp!1309870 () Bool)

(assert (=> b!4282819 (= e!2658821 tp!1309870)))

(declare-fun setNonEmpty!26042 () Bool)

(declare-fun tp!1309871 () Bool)

(declare-fun setElem!26042 () Context!5578)

(assert (=> setNonEmpty!26042 (= setRes!26042 (and tp!1309871 (inv!62851 setElem!26042) e!2658821))))

(declare-fun setRest!26042 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26042 (= (_2!25514 (h!52837 (minValue!4514 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26042 true) setRest!26042))))

(declare-fun tp!1309872 () Bool)

(declare-fun b!4282820 () Bool)

(declare-fun e!2658823 () Bool)

(declare-fun e!2658822 () Bool)

(assert (=> b!4282820 (= e!2658822 (and (inv!62851 (_1!25513 (_1!25514 (h!52837 (minValue!4514 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725)))))))))) e!2658823 tp_is_empty!23055 setRes!26042 tp!1309872))))

(declare-fun condSetEmpty!26042 () Bool)

(assert (=> b!4282820 (= condSetEmpty!26042 (= (_2!25514 (h!52837 (minValue!4514 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725)))))))) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun b!4282821 () Bool)

(declare-fun tp!1309869 () Bool)

(assert (=> b!4282821 (= e!2658823 tp!1309869)))

(assert (=> b!4282629 (= tp!1309707 e!2658822)))

(assert (= b!4282820 b!4282821))

(assert (= (and b!4282820 condSetEmpty!26042) setIsEmpty!26042))

(assert (= (and b!4282820 (not condSetEmpty!26042)) setNonEmpty!26042))

(assert (= setNonEmpty!26042 b!4282819))

(assert (= (and b!4282629 ((_ is Cons!47417) (minValue!4514 (v!41317 (underlying!8739 (v!41318 (underlying!8740 (cache!4301 cacheUp!725)))))))) b!4282820))

(declare-fun m!4879659 () Bool)

(assert (=> setNonEmpty!26042 m!4879659))

(declare-fun m!4879661 () Bool)

(assert (=> b!4282820 m!4879661))

(declare-fun e!2658824 () Bool)

(declare-fun tp!1309875 () Bool)

(declare-fun tp!1309873 () Bool)

(declare-fun b!4282822 () Bool)

(assert (=> b!4282822 (= e!2658824 (and (inv!62843 (left!35321 (c!729981 totalInput!528))) tp!1309873 (inv!62843 (right!35651 (c!729981 totalInput!528))) tp!1309875))))

(declare-fun b!4282824 () Bool)

(declare-fun e!2658825 () Bool)

(declare-fun tp!1309874 () Bool)

(assert (=> b!4282824 (= e!2658825 tp!1309874)))

(declare-fun b!4282823 () Bool)

(assert (=> b!4282823 (= e!2658824 (and (inv!62852 (xs!17649 (c!729981 totalInput!528))) e!2658825))))

(assert (=> b!4282611 (= tp!1309705 (and (inv!62843 (c!729981 totalInput!528)) e!2658824))))

(assert (= (and b!4282611 ((_ is Node!14343) (c!729981 totalInput!528))) b!4282822))

(assert (= b!4282823 b!4282824))

(assert (= (and b!4282611 ((_ is Leaf!22194) (c!729981 totalInput!528))) b!4282823))

(declare-fun m!4879663 () Bool)

(assert (=> b!4282822 m!4879663))

(declare-fun m!4879665 () Bool)

(assert (=> b!4282822 m!4879665))

(declare-fun m!4879667 () Bool)

(assert (=> b!4282823 m!4879667))

(assert (=> b!4282611 m!4879545))

(declare-fun e!2658827 () Bool)

(assert (=> b!4282603 (= tp!1309704 e!2658827)))

(declare-fun b!4282825 () Bool)

(declare-fun e!2658828 () Bool)

(declare-fun tp!1309876 () Bool)

(assert (=> b!4282825 (= e!2658828 tp!1309876)))

(declare-fun b!4282826 () Bool)

(declare-fun e!2658826 () Bool)

(declare-fun tp!1309877 () Bool)

(assert (=> b!4282826 (= e!2658826 tp!1309877)))

(declare-fun setIsEmpty!26043 () Bool)

(declare-fun setRes!26043 () Bool)

(assert (=> setIsEmpty!26043 setRes!26043))

(declare-fun tp!1309879 () Bool)

(declare-fun tp!1309878 () Bool)

(declare-fun b!4282827 () Bool)

(assert (=> b!4282827 (= e!2658827 (and tp!1309878 (inv!62851 (_2!25511 (_1!25512 (h!52836 (zeroValue!4513 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738)))))))))) e!2658828 tp_is_empty!23055 setRes!26043 tp!1309879))))

(declare-fun condSetEmpty!26043 () Bool)

(assert (=> b!4282827 (= condSetEmpty!26043 (= (_2!25512 (h!52836 (zeroValue!4513 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738)))))))) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun setNonEmpty!26043 () Bool)

(declare-fun tp!1309880 () Bool)

(declare-fun setElem!26043 () Context!5578)

(assert (=> setNonEmpty!26043 (= setRes!26043 (and tp!1309880 (inv!62851 setElem!26043) e!2658826))))

(declare-fun setRest!26043 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26043 (= (_2!25512 (h!52836 (zeroValue!4513 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26043 true) setRest!26043))))

(assert (= b!4282827 b!4282825))

(assert (= (and b!4282827 condSetEmpty!26043) setIsEmpty!26043))

(assert (= (and b!4282827 (not condSetEmpty!26043)) setNonEmpty!26043))

(assert (= setNonEmpty!26043 b!4282826))

(assert (= (and b!4282603 ((_ is Cons!47416) (zeroValue!4513 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738)))))))) b!4282827))

(declare-fun m!4879669 () Bool)

(assert (=> b!4282827 m!4879669))

(declare-fun m!4879671 () Bool)

(assert (=> setNonEmpty!26043 m!4879671))

(declare-fun e!2658830 () Bool)

(assert (=> b!4282603 (= tp!1309708 e!2658830)))

(declare-fun b!4282828 () Bool)

(declare-fun e!2658831 () Bool)

(declare-fun tp!1309881 () Bool)

(assert (=> b!4282828 (= e!2658831 tp!1309881)))

(declare-fun b!4282829 () Bool)

(declare-fun e!2658829 () Bool)

(declare-fun tp!1309882 () Bool)

(assert (=> b!4282829 (= e!2658829 tp!1309882)))

(declare-fun setIsEmpty!26044 () Bool)

(declare-fun setRes!26044 () Bool)

(assert (=> setIsEmpty!26044 setRes!26044))

(declare-fun tp!1309883 () Bool)

(declare-fun b!4282830 () Bool)

(declare-fun tp!1309884 () Bool)

(assert (=> b!4282830 (= e!2658830 (and tp!1309883 (inv!62851 (_2!25511 (_1!25512 (h!52836 (minValue!4513 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738)))))))))) e!2658831 tp_is_empty!23055 setRes!26044 tp!1309884))))

(declare-fun condSetEmpty!26044 () Bool)

(assert (=> b!4282830 (= condSetEmpty!26044 (= (_2!25512 (h!52836 (minValue!4513 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738)))))))) ((as const (Array Context!5578 Bool)) false)))))

(declare-fun setNonEmpty!26044 () Bool)

(declare-fun tp!1309885 () Bool)

(declare-fun setElem!26044 () Context!5578)

(assert (=> setNonEmpty!26044 (= setRes!26044 (and tp!1309885 (inv!62851 setElem!26044) e!2658829))))

(declare-fun setRest!26044 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26044 (= (_2!25512 (h!52836 (minValue!4513 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26044 true) setRest!26044))))

(assert (= b!4282830 b!4282828))

(assert (= (and b!4282830 condSetEmpty!26044) setIsEmpty!26044))

(assert (= (and b!4282830 (not condSetEmpty!26044)) setNonEmpty!26044))

(assert (= setNonEmpty!26044 b!4282829))

(assert (= (and b!4282603 ((_ is Cons!47416) (minValue!4513 (v!41315 (underlying!8737 (v!41316 (underlying!8738 (cache!4300 cacheDown!738)))))))) b!4282830))

(declare-fun m!4879673 () Bool)

(assert (=> b!4282830 m!4879673))

(declare-fun m!4879675 () Bool)

(assert (=> setNonEmpty!26044 m!4879675))

(declare-fun tp!1309888 () Bool)

(declare-fun e!2658832 () Bool)

(declare-fun tp!1309886 () Bool)

(declare-fun b!4282831 () Bool)

(assert (=> b!4282831 (= e!2658832 (and (inv!62843 (left!35321 (c!729981 input!1632))) tp!1309886 (inv!62843 (right!35651 (c!729981 input!1632))) tp!1309888))))

(declare-fun b!4282833 () Bool)

(declare-fun e!2658833 () Bool)

(declare-fun tp!1309887 () Bool)

(assert (=> b!4282833 (= e!2658833 tp!1309887)))

(declare-fun b!4282832 () Bool)

(assert (=> b!4282832 (= e!2658832 (and (inv!62852 (xs!17649 (c!729981 input!1632))) e!2658833))))

(assert (=> b!4282605 (= tp!1309685 (and (inv!62843 (c!729981 input!1632)) e!2658832))))

(assert (= (and b!4282605 ((_ is Node!14343) (c!729981 input!1632))) b!4282831))

(assert (= b!4282832 b!4282833))

(assert (= (and b!4282605 ((_ is Leaf!22194) (c!729981 input!1632))) b!4282832))

(declare-fun m!4879677 () Bool)

(assert (=> b!4282831 m!4879677))

(declare-fun m!4879679 () Bool)

(assert (=> b!4282831 m!4879679))

(declare-fun m!4879681 () Bool)

(assert (=> b!4282832 m!4879681))

(assert (=> b!4282605 m!4879541))

(declare-fun b!4282835 () Bool)

(declare-fun e!2658834 () Bool)

(declare-fun tp!1309889 () Bool)

(assert (=> b!4282835 (= e!2658834 tp!1309889)))

(declare-fun setIsEmpty!26045 () Bool)

(declare-fun setRes!26045 () Bool)

(assert (=> setIsEmpty!26045 setRes!26045))

(declare-fun tp!1309891 () Bool)

(declare-fun setElem!26045 () Context!5578)

(declare-fun setNonEmpty!26045 () Bool)

(assert (=> setNonEmpty!26045 (= setRes!26045 (and tp!1309891 (inv!62851 setElem!26045) e!2658834))))

(declare-fun setRest!26045 () (InoxSet Context!5578))

(assert (=> setNonEmpty!26045 (= (_1!25515 (_1!25516 (h!52838 mapDefault!19245))) ((_ map or) (store ((as const (Array Context!5578 Bool)) false) setElem!26045 true) setRest!26045))))

(declare-fun e!2658835 () Bool)

(assert (=> b!4282614 (= tp!1309693 e!2658835)))

(declare-fun b!4282834 () Bool)

(declare-fun tp!1309890 () Bool)

(assert (=> b!4282834 (= e!2658835 (and setRes!26045 tp!1309890))))

(declare-fun condSetEmpty!26045 () Bool)

(assert (=> b!4282834 (= condSetEmpty!26045 (= (_1!25515 (_1!25516 (h!52838 mapDefault!19245))) ((as const (Array Context!5578 Bool)) false)))))

(assert (= (and b!4282834 condSetEmpty!26045) setIsEmpty!26045))

(assert (= (and b!4282834 (not condSetEmpty!26045)) setNonEmpty!26045))

(assert (= setNonEmpty!26045 b!4282835))

(assert (= (and b!4282614 ((_ is Cons!47418) mapDefault!19245)) b!4282834))

(declare-fun m!4879683 () Bool)

(assert (=> setNonEmpty!26045 m!4879683))

(check-sat (not b!4282739) (not setNonEmpty!26015) (not b_next!127423) (not setNonEmpty!26022) (not b!4282759) (not b!4282829) (not b!4282831) (not b!4282774) (not b!4282790) (not b!4282809) tp_is_empty!23055 (not setNonEmpty!26042) (not d!1264963) (not b!4282761) (not b!4282816) (not b!4282828) b_and!337927 (not b_next!127433) b_and!337925 (not b!4282750) (not b!4282751) (not b!4282830) (not bm!294417) (not b!4282716) (not b!4282821) (not d!1264975) (not b!4282690) (not b_next!127419) (not b!4282741) (not b!4282826) (not b!4282645) (not b!4282815) (not b!4282738) (not d!1264989) (not b!4282834) (not setNonEmpty!26043) (not b!4282775) (not b!4282807) (not b!4282776) (not b!4282811) (not b!4282678) (not setNonEmpty!26033) (not d!1264987) (not b!4282696) (not b!4282824) (not b!4282733) (not b!4282787) (not b!4282737) (not b!4282788) (not b!4282832) (not setNonEmpty!26032) (not b!4282705) (not b!4282640) (not mapNonEmpty!19256) (not bm!294415) (not b!4282833) (not b!4282820) (not b!4282628) (not b!4282760) (not setNonEmpty!26039) (not setNonEmpty!26031) (not setNonEmpty!26026) (not setNonEmpty!26040) (not b!4282736) (not b!4282717) (not b!4282818) b_and!337917 (not setNonEmpty!26025) (not b!4282808) b_and!337921 (not d!1264965) (not setNonEmpty!26041) (not b!4282706) (not setNonEmpty!26045) (not d!1264991) (not mapNonEmpty!19253) (not b!4282791) (not b!4282792) (not b!4282718) (not b!4282605) (not b!4282679) (not b!4282762) (not d!1264979) (not b!4282675) (not setNonEmpty!26044) (not b!4282817) (not b!4282735) (not b!4282835) (not setNonEmpty!26021) (not d!1264943) (not b_next!127425) (not b!4282827) (not b!4282812) b_and!337923 (not d!1264967) (not b_next!127431) (not b!4282752) (not b!4282734) (not b!4282740) (not b!4282819) (not b!4282707) b_and!337929 (not b_next!127429) (not b_next!127421) (not setNonEmpty!26012) (not d!1264955) (not b!4282611) (not b!4282825) (not setNonEmpty!26020) b_and!337931 (not b!4282686) (not b!4282810) (not b!4282693) (not b!4282642) (not b!4282814) (not setNonEmpty!26038) (not b!4282823) (not b!4282676) (not b!4282789) (not b!4282681) (not b!4282813) (not mapNonEmpty!19250) b_and!337919 (not b!4282671) (not b!4282822) (not b_next!127427) (not d!1264945))
(check-sat (not b_next!127423) (not b_next!127419) b_and!337917 b_and!337921 (not b_next!127431) b_and!337931 b_and!337925 b_and!337927 (not b_next!127433) b_and!337923 (not b_next!127425) b_and!337929 (not b_next!127429) (not b_next!127421) b_and!337919 (not b_next!127427))
