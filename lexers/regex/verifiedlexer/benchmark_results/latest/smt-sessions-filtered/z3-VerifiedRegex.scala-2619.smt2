; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!140668 () Bool)

(assert start!140668)

(declare-fun b!1505398 () Bool)

(declare-fun b_free!39047 () Bool)

(declare-fun b_next!39751 () Bool)

(assert (=> b!1505398 (= b_free!39047 (not b_next!39751))))

(declare-fun tp!429742 () Bool)

(declare-fun b_and!104737 () Bool)

(assert (=> b!1505398 (= tp!429742 b_and!104737)))

(declare-fun b_free!39049 () Bool)

(declare-fun b_next!39753 () Bool)

(assert (=> b!1505398 (= b_free!39049 (not b_next!39753))))

(declare-fun tp!429721 () Bool)

(declare-fun b_and!104739 () Bool)

(assert (=> b!1505398 (= tp!429721 b_and!104739)))

(declare-fun b!1505428 () Bool)

(declare-fun b_free!39051 () Bool)

(declare-fun b_next!39755 () Bool)

(assert (=> b!1505428 (= b_free!39051 (not b_next!39755))))

(declare-fun tp!429730 () Bool)

(declare-fun b_and!104741 () Bool)

(assert (=> b!1505428 (= tp!429730 b_and!104741)))

(declare-fun b!1505393 () Bool)

(declare-fun b_free!39053 () Bool)

(declare-fun b_next!39757 () Bool)

(assert (=> b!1505393 (= b_free!39053 (not b_next!39757))))

(declare-fun tp!429745 () Bool)

(declare-fun b_and!104743 () Bool)

(assert (=> b!1505393 (= tp!429745 b_and!104743)))

(declare-fun b!1505396 () Bool)

(declare-fun b_free!39055 () Bool)

(declare-fun b_next!39759 () Bool)

(assert (=> b!1505396 (= b_free!39055 (not b_next!39759))))

(declare-fun tp!429743 () Bool)

(declare-fun b_and!104745 () Bool)

(assert (=> b!1505396 (= tp!429743 b_and!104745)))

(declare-fun b!1505391 () Bool)

(declare-fun b_free!39057 () Bool)

(declare-fun b_next!39761 () Bool)

(assert (=> b!1505391 (= b_free!39057 (not b_next!39761))))

(declare-fun tp!429739 () Bool)

(declare-fun b_and!104747 () Bool)

(assert (=> b!1505391 (= tp!429739 b_and!104747)))

(declare-fun b!1505394 () Bool)

(declare-fun b_free!39059 () Bool)

(declare-fun b_next!39763 () Bool)

(assert (=> b!1505394 (= b_free!39059 (not b_next!39763))))

(declare-fun tp!429734 () Bool)

(declare-fun b_and!104749 () Bool)

(assert (=> b!1505394 (= tp!429734 b_and!104749)))

(declare-fun b!1505408 () Bool)

(declare-fun b_free!39061 () Bool)

(declare-fun b_next!39765 () Bool)

(assert (=> b!1505408 (= b_free!39061 (not b_next!39765))))

(declare-fun tp!429724 () Bool)

(declare-fun b_and!104751 () Bool)

(assert (=> b!1505408 (= tp!429724 b_and!104751)))

(declare-fun b!1505390 () Bool)

(declare-fun res!678061 () Bool)

(declare-fun e!962684 () Bool)

(assert (=> b!1505390 (=> (not res!678061) (not e!962684))))

(declare-datatypes ((C!8476 0))(
  ( (C!8477 (val!4810 Int)) )
))
(declare-datatypes ((Regex!4149 0))(
  ( (ElementMatch!4149 (c!246740 C!8476)) (Concat!7073 (regOne!8810 Regex!4149) (regTwo!8810 Regex!4149)) (EmptyExpr!4149) (Star!4149 (reg!4478 Regex!4149)) (EmptyLang!4149) (Union!4149 (regOne!8811 Regex!4149) (regTwo!8811 Regex!4149)) )
))
(declare-datatypes ((List!16052 0))(
  ( (Nil!15984) (Cons!15984 (h!21385 Regex!4149) (t!138985 List!16052)) )
))
(declare-datatypes ((Context!1334 0))(
  ( (Context!1335 (exprs!1167 List!16052)) )
))
(declare-datatypes ((tuple2!14792 0))(
  ( (tuple2!14793 (_1!8382 Context!1334) (_2!8382 C!8476)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14794 0))(
  ( (tuple2!14795 (_1!8383 tuple2!14792) (_2!8383 (InoxSet Context!1334))) )
))
(declare-datatypes ((List!16053 0))(
  ( (Nil!15985) (Cons!15985 (h!21386 tuple2!14794) (t!138986 List!16053)) )
))
(declare-datatypes ((array!5090 0))(
  ( (array!5091 (arr!2272 (Array (_ BitVec 32) (_ BitVec 64))) (size!12925 (_ BitVec 32))) )
))
(declare-datatypes ((array!5092 0))(
  ( (array!5093 (arr!2273 (Array (_ BitVec 32) List!16053)) (size!12926 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2896 0))(
  ( (LongMapFixedSize!2897 (defaultEntry!1808 Int) (mask!4611 (_ BitVec 32)) (extraKeys!1695 (_ BitVec 32)) (zeroValue!1705 List!16053) (minValue!1705 List!16053) (_size!2977 (_ BitVec 32)) (_keys!1742 array!5090) (_values!1727 array!5092) (_vacant!1509 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1392 0))(
  ( (HashableExt!1391 (__x!9926 Int)) )
))
(declare-datatypes ((Cell!5677 0))(
  ( (Cell!5678 (v!22800 LongMapFixedSize!2896)) )
))
(declare-datatypes ((MutLongMap!1448 0))(
  ( (LongMap!1448 (underlying!3105 Cell!5677)) (MutLongMapExt!1447 (__x!9927 Int)) )
))
(declare-datatypes ((Cell!5679 0))(
  ( (Cell!5680 (v!22801 MutLongMap!1448)) )
))
(declare-datatypes ((MutableMap!1392 0))(
  ( (MutableMapExt!1391 (__x!9928 Int)) (HashMap!1392 (underlying!3106 Cell!5679) (hashF!3311 Hashable!1392) (_size!2978 (_ BitVec 32)) (defaultValue!1552 Int)) )
))
(declare-datatypes ((CacheUp!828 0))(
  ( (CacheUp!829 (cache!1773 MutableMap!1392)) )
))
(declare-fun cacheUp!616 () CacheUp!828)

(declare-fun valid!1152 (CacheUp!828) Bool)

(assert (=> b!1505390 (= res!678061 (valid!1152 cacheUp!616))))

(declare-fun e!962651 () Bool)

(declare-fun e!962657 () Bool)

(assert (=> b!1505391 (= e!962651 (and e!962657 tp!429739))))

(declare-fun b!1505392 () Bool)

(declare-fun e!962685 () Bool)

(declare-fun e!962653 () Bool)

(assert (=> b!1505392 (= e!962685 e!962653)))

(declare-fun tp!429737 () Bool)

(declare-fun e!962666 () Bool)

(declare-datatypes ((tuple3!1320 0))(
  ( (tuple3!1321 (_1!8384 (InoxSet Context!1334)) (_2!8384 Int) (_3!986 Int)) )
))
(declare-datatypes ((tuple2!14796 0))(
  ( (tuple2!14797 (_1!8385 tuple3!1320) (_2!8385 Int)) )
))
(declare-datatypes ((List!16054 0))(
  ( (Nil!15986) (Cons!15986 (h!21387 tuple2!14796) (t!138987 List!16054)) )
))
(declare-datatypes ((array!5094 0))(
  ( (array!5095 (arr!2274 (Array (_ BitVec 32) List!16054)) (size!12927 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2898 0))(
  ( (LongMapFixedSize!2899 (defaultEntry!1809 Int) (mask!4612 (_ BitVec 32)) (extraKeys!1696 (_ BitVec 32)) (zeroValue!1706 List!16054) (minValue!1706 List!16054) (_size!2979 (_ BitVec 32)) (_keys!1743 array!5090) (_values!1728 array!5094) (_vacant!1510 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5681 0))(
  ( (Cell!5682 (v!22802 LongMapFixedSize!2898)) )
))
(declare-datatypes ((MutLongMap!1449 0))(
  ( (LongMap!1449 (underlying!3107 Cell!5681)) (MutLongMapExt!1448 (__x!9929 Int)) )
))
(declare-datatypes ((Cell!5683 0))(
  ( (Cell!5684 (v!22803 MutLongMap!1449)) )
))
(declare-datatypes ((Hashable!1393 0))(
  ( (HashableExt!1392 (__x!9930 Int)) )
))
(declare-datatypes ((MutableMap!1393 0))(
  ( (MutableMapExt!1392 (__x!9931 Int)) (HashMap!1393 (underlying!3108 Cell!5683) (hashF!3312 Hashable!1393) (_size!2980 (_ BitVec 32)) (defaultValue!1553 Int)) )
))
(declare-datatypes ((List!16055 0))(
  ( (Nil!15987) (Cons!15987 (h!21388 C!8476) (t!138988 List!16055)) )
))
(declare-datatypes ((IArray!10843 0))(
  ( (IArray!10844 (innerList!5479 List!16055)) )
))
(declare-datatypes ((Conc!5419 0))(
  ( (Node!5419 (left!13336 Conc!5419) (right!13666 Conc!5419) (csize!11068 Int) (cheight!5630 Int)) (Leaf!8039 (xs!8194 IArray!10843) (csize!11069 Int)) (Empty!5419) )
))
(declare-datatypes ((BalanceConc!10780 0))(
  ( (BalanceConc!10781 (c!246741 Conc!5419)) )
))
(declare-datatypes ((CacheFurthestNullable!252 0))(
  ( (CacheFurthestNullable!253 (cache!1774 MutableMap!1393) (totalInput!2279 BalanceConc!10780)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!252)

(declare-fun e!962676 () Bool)

(declare-fun tp!429731 () Bool)

(declare-fun array_inv!1646 (array!5090) Bool)

(declare-fun array_inv!1647 (array!5094) Bool)

(assert (=> b!1505393 (= e!962666 (and tp!429745 tp!429731 tp!429737 (array_inv!1646 (_keys!1743 (v!22802 (underlying!3107 (v!22803 (underlying!3108 (cache!1774 cacheFurthestNullable!64))))))) (array_inv!1647 (_values!1728 (v!22802 (underlying!3107 (v!22803 (underlying!3108 (cache!1774 cacheFurthestNullable!64))))))) e!962676))))

(declare-fun mapNonEmpty!6870 () Bool)

(declare-fun mapRes!6872 () Bool)

(declare-fun tp!429735 () Bool)

(declare-fun tp!429740 () Bool)

(assert (=> mapNonEmpty!6870 (= mapRes!6872 (and tp!429735 tp!429740))))

(declare-fun mapKey!6871 () (_ BitVec 32))

(declare-fun mapRest!6871 () (Array (_ BitVec 32) List!16054))

(declare-fun mapValue!6870 () List!16054)

(assert (=> mapNonEmpty!6870 (= (arr!2274 (_values!1728 (v!22802 (underlying!3107 (v!22803 (underlying!3108 (cache!1774 cacheFurthestNullable!64))))))) (store mapRest!6871 mapKey!6871 mapValue!6870))))

(declare-fun tp!429723 () Bool)

(declare-fun e!962670 () Bool)

(declare-fun tp!429746 () Bool)

(declare-fun array_inv!1648 (array!5092) Bool)

(assert (=> b!1505394 (= e!962653 (and tp!429734 tp!429723 tp!429746 (array_inv!1646 (_keys!1742 (v!22800 (underlying!3105 (v!22801 (underlying!3106 (cache!1773 cacheUp!616))))))) (array_inv!1648 (_values!1727 (v!22800 (underlying!3105 (v!22801 (underlying!3106 (cache!1773 cacheUp!616))))))) e!962670))))

(declare-fun res!678055 () Bool)

(declare-fun e!962683 () Bool)

(assert (=> start!140668 (=> (not res!678055) (not e!962683))))

(declare-datatypes ((LexerInterface!2487 0))(
  ( (LexerInterfaceExt!2484 (__x!9932 Int)) (Lexer!2485) )
))
(declare-fun thiss!13241 () LexerInterface!2487)

(get-info :version)

(assert (=> start!140668 (= res!678055 ((_ is Lexer!2485) thiss!13241))))

(assert (=> start!140668 e!962683))

(declare-datatypes ((List!16056 0))(
  ( (Nil!15988) (Cons!15988 (h!21389 (_ BitVec 16)) (t!138989 List!16056)) )
))
(declare-datatypes ((TokenValue!2924 0))(
  ( (FloatLiteralValue!5848 (text!20913 List!16056)) (TokenValueExt!2923 (__x!9933 Int)) (Broken!14620 (value!90403 List!16056)) (Object!2991) (End!2924) (Def!2924) (Underscore!2924) (Match!2924) (Else!2924) (Error!2924) (Case!2924) (If!2924) (Extends!2924) (Abstract!2924) (Class!2924) (Val!2924) (DelimiterValue!5848 (del!2984 List!16056)) (KeywordValue!2930 (value!90404 List!16056)) (CommentValue!5848 (value!90405 List!16056)) (WhitespaceValue!5848 (value!90406 List!16056)) (IndentationValue!2924 (value!90407 List!16056)) (String!18881) (Int32!2924) (Broken!14621 (value!90408 List!16056)) (Boolean!2925) (Unit!25708) (OperatorValue!2927 (op!2984 List!16056)) (IdentifierValue!5848 (value!90409 List!16056)) (IdentifierValue!5849 (value!90410 List!16056)) (WhitespaceValue!5849 (value!90411 List!16056)) (True!5848) (False!5848) (Broken!14622 (value!90412 List!16056)) (Broken!14623 (value!90413 List!16056)) (True!5849) (RightBrace!2924) (RightBracket!2924) (Colon!2924) (Null!2924) (Comma!2924) (LeftBracket!2924) (False!5849) (LeftBrace!2924) (ImaginaryLiteralValue!2924 (text!20914 List!16056)) (StringLiteralValue!8772 (value!90414 List!16056)) (EOFValue!2924 (value!90415 List!16056)) (IdentValue!2924 (value!90416 List!16056)) (DelimiterValue!5849 (value!90417 List!16056)) (DedentValue!2924 (value!90418 List!16056)) (NewLineValue!2924 (value!90419 List!16056)) (IntegerValue!8772 (value!90420 (_ BitVec 32)) (text!20915 List!16056)) (IntegerValue!8773 (value!90421 Int) (text!20916 List!16056)) (Times!2924) (Or!2924) (Equal!2924) (Minus!2924) (Broken!14624 (value!90422 List!16056)) (And!2924) (Div!2924) (LessEqual!2924) (Mod!2924) (Concat!7074) (Not!2924) (Plus!2924) (SpaceValue!2924 (value!90423 List!16056)) (IntegerValue!8774 (value!90424 Int) (text!20917 List!16056)) (StringLiteralValue!8773 (text!20918 List!16056)) (FloatLiteralValue!5849 (text!20919 List!16056)) (BytesLiteralValue!2924 (value!90425 List!16056)) (CommentValue!5849 (value!90426 List!16056)) (StringLiteralValue!8774 (value!90427 List!16056)) (ErrorTokenValue!2924 (msg!2985 List!16056)) )
))
(declare-datatypes ((String!18882 0))(
  ( (String!18883 (value!90428 String)) )
))
(declare-datatypes ((TokenValueInjection!5508 0))(
  ( (TokenValueInjection!5509 (toValue!4181 Int) (toChars!4040 Int)) )
))
(declare-datatypes ((Rule!5468 0))(
  ( (Rule!5469 (regex!2834 Regex!4149) (tag!3098 String!18882) (isSeparator!2834 Bool) (transformation!2834 TokenValueInjection!5508)) )
))
(declare-datatypes ((Token!5330 0))(
  ( (Token!5331 (value!90429 TokenValue!2924) (rule!4623 Rule!5468) (size!12928 Int) (originalCharacters!3696 List!16055)) )
))
(declare-datatypes ((List!16057 0))(
  ( (Nil!15989) (Cons!15989 (h!21390 Token!5330) (t!138990 List!16057)) )
))
(declare-datatypes ((IArray!10845 0))(
  ( (IArray!10846 (innerList!5480 List!16057)) )
))
(declare-datatypes ((Conc!5420 0))(
  ( (Node!5420 (left!13337 Conc!5420) (right!13667 Conc!5420) (csize!11070 Int) (cheight!5631 Int)) (Leaf!8040 (xs!8195 IArray!10845) (csize!11071 Int)) (Empty!5420) )
))
(declare-datatypes ((BalanceConc!10782 0))(
  ( (BalanceConc!10783 (c!246742 Conc!5420)) )
))
(declare-fun acc!392 () BalanceConc!10782)

(declare-fun e!962650 () Bool)

(declare-fun inv!21207 (BalanceConc!10782) Bool)

(assert (=> start!140668 (and (inv!21207 acc!392) e!962650)))

(declare-fun e!962665 () Bool)

(declare-fun inv!21208 (CacheUp!828) Bool)

(assert (=> start!140668 (and (inv!21208 cacheUp!616) e!962665)))

(declare-datatypes ((tuple3!1322 0))(
  ( (tuple3!1323 (_1!8386 Regex!4149) (_2!8386 Context!1334) (_3!987 C!8476)) )
))
(declare-datatypes ((tuple2!14798 0))(
  ( (tuple2!14799 (_1!8387 tuple3!1322) (_2!8387 (InoxSet Context!1334))) )
))
(declare-datatypes ((List!16058 0))(
  ( (Nil!15990) (Cons!15990 (h!21391 tuple2!14798) (t!138991 List!16058)) )
))
(declare-datatypes ((array!5096 0))(
  ( (array!5097 (arr!2275 (Array (_ BitVec 32) List!16058)) (size!12929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2900 0))(
  ( (LongMapFixedSize!2901 (defaultEntry!1810 Int) (mask!4613 (_ BitVec 32)) (extraKeys!1697 (_ BitVec 32)) (zeroValue!1707 List!16058) (minValue!1707 List!16058) (_size!2981 (_ BitVec 32)) (_keys!1744 array!5090) (_values!1729 array!5096) (_vacant!1511 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5685 0))(
  ( (Cell!5686 (v!22804 LongMapFixedSize!2900)) )
))
(declare-datatypes ((MutLongMap!1450 0))(
  ( (LongMap!1450 (underlying!3109 Cell!5685)) (MutLongMapExt!1449 (__x!9934 Int)) )
))
(declare-datatypes ((Cell!5687 0))(
  ( (Cell!5688 (v!22805 MutLongMap!1450)) )
))
(declare-datatypes ((Hashable!1394 0))(
  ( (HashableExt!1393 (__x!9935 Int)) )
))
(declare-datatypes ((MutableMap!1394 0))(
  ( (MutableMapExt!1393 (__x!9936 Int)) (HashMap!1394 (underlying!3110 Cell!5687) (hashF!3313 Hashable!1394) (_size!2982 (_ BitVec 32)) (defaultValue!1554 Int)) )
))
(declare-datatypes ((CacheDown!832 0))(
  ( (CacheDown!833 (cache!1775 MutableMap!1394)) )
))
(declare-fun cacheDown!629 () CacheDown!832)

(declare-fun e!962673 () Bool)

(declare-fun inv!21209 (CacheDown!832) Bool)

(assert (=> start!140668 (and (inv!21209 cacheDown!629) e!962673)))

(declare-fun input!1102 () BalanceConc!10780)

(declare-fun e!962682 () Bool)

(declare-fun inv!21210 (BalanceConc!10780) Bool)

(assert (=> start!140668 (and (inv!21210 input!1102) e!962682)))

(declare-fun treated!70 () BalanceConc!10780)

(declare-fun e!962664 () Bool)

(assert (=> start!140668 (and (inv!21210 treated!70) e!962664)))

(assert (=> start!140668 true))

(declare-fun e!962674 () Bool)

(assert (=> start!140668 e!962674))

(declare-fun e!962672 () Bool)

(declare-fun inv!21211 (CacheFurthestNullable!252) Bool)

(assert (=> start!140668 (and (inv!21211 cacheFurthestNullable!64) e!962672)))

(declare-fun totalInput!458 () BalanceConc!10780)

(declare-fun e!962668 () Bool)

(assert (=> start!140668 (and (inv!21210 totalInput!458) e!962668)))

(declare-fun b!1505395 () Bool)

(declare-fun e!962661 () Bool)

(declare-fun e!962662 () Bool)

(assert (=> b!1505395 (= e!962661 e!962662)))

(declare-fun e!962656 () Bool)

(declare-fun tp!429719 () Bool)

(declare-fun tp!429741 () Bool)

(declare-fun array_inv!1649 (array!5096) Bool)

(assert (=> b!1505396 (= e!962662 (and tp!429743 tp!429741 tp!429719 (array_inv!1646 (_keys!1744 (v!22804 (underlying!3109 (v!22805 (underlying!3110 (cache!1775 cacheDown!629))))))) (array_inv!1649 (_values!1729 (v!22804 (underlying!3109 (v!22805 (underlying!3110 (cache!1775 cacheDown!629))))))) e!962656))))

(declare-fun b!1505397 () Bool)

(assert (=> b!1505397 (= e!962673 e!962651)))

(declare-fun e!962663 () Bool)

(assert (=> b!1505398 (= e!962663 (and tp!429742 tp!429721))))

(declare-fun b!1505399 () Bool)

(declare-fun tp!429736 () Bool)

(declare-fun mapRes!6870 () Bool)

(assert (=> b!1505399 (= e!962670 (and tp!429736 mapRes!6870))))

(declare-fun condMapEmpty!6870 () Bool)

(declare-fun mapDefault!6871 () List!16053)

(assert (=> b!1505399 (= condMapEmpty!6870 (= (arr!2273 (_values!1727 (v!22800 (underlying!3105 (v!22801 (underlying!3106 (cache!1773 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16053)) mapDefault!6871)))))

(declare-fun b!1505400 () Bool)

(declare-fun res!678065 () Bool)

(assert (=> b!1505400 (=> (not res!678065) (not e!962683))))

(declare-datatypes ((List!16059 0))(
  ( (Nil!15991) (Cons!15991 (h!21392 Rule!5468) (t!138992 List!16059)) )
))
(declare-fun rules!1640 () List!16059)

(declare-fun rulesInvariant!2264 (LexerInterface!2487 List!16059) Bool)

(assert (=> b!1505400 (= res!678065 (rulesInvariant!2264 thiss!13241 rules!1640))))

(declare-fun b!1505401 () Bool)

(declare-fun res!678058 () Bool)

(assert (=> b!1505401 (=> (not res!678058) (not e!962684))))

(declare-fun valid!1153 (CacheDown!832) Bool)

(assert (=> b!1505401 (= res!678058 (valid!1153 cacheDown!629))))

(declare-fun b!1505402 () Bool)

(declare-fun res!678062 () Bool)

(assert (=> b!1505402 (=> (not res!678062) (not e!962684))))

(declare-fun valid!1154 (CacheFurthestNullable!252) Bool)

(assert (=> b!1505402 (= res!678062 (valid!1154 cacheFurthestNullable!64))))

(declare-fun b!1505403 () Bool)

(declare-fun tp!429738 () Bool)

(declare-fun inv!21212 (Conc!5419) Bool)

(assert (=> b!1505403 (= e!962682 (and (inv!21212 (c!246741 input!1102)) tp!429738))))

(declare-fun mapIsEmpty!6870 () Bool)

(declare-fun mapRes!6871 () Bool)

(assert (=> mapIsEmpty!6870 mapRes!6871))

(declare-fun b!1505404 () Bool)

(declare-fun e!962658 () Bool)

(declare-fun tp!429725 () Bool)

(assert (=> b!1505404 (= e!962658 (and (inv!21212 (c!246741 (totalInput!2279 cacheFurthestNullable!64))) tp!429725))))

(declare-fun b!1505405 () Bool)

(declare-fun tp!429722 () Bool)

(assert (=> b!1505405 (= e!962656 (and tp!429722 mapRes!6871))))

(declare-fun condMapEmpty!6871 () Bool)

(declare-fun mapDefault!6870 () List!16058)

(assert (=> b!1505405 (= condMapEmpty!6871 (= (arr!2275 (_values!1729 (v!22804 (underlying!3109 (v!22805 (underlying!3110 (cache!1775 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16058)) mapDefault!6870)))))

(declare-fun b!1505406 () Bool)

(declare-fun e!962677 () Bool)

(declare-fun lt!523376 () MutLongMap!1450)

(assert (=> b!1505406 (= e!962657 (and e!962677 ((_ is LongMap!1450) lt!523376)))))

(assert (=> b!1505406 (= lt!523376 (v!22805 (underlying!3110 (cache!1775 cacheDown!629))))))

(declare-fun b!1505407 () Bool)

(declare-fun e!962686 () Bool)

(assert (=> b!1505407 (= e!962683 e!962686)))

(declare-fun res!678054 () Bool)

(assert (=> b!1505407 (=> (not res!678054) (not e!962686))))

(declare-fun lt!523372 () List!16055)

(declare-fun lt!523369 () List!16055)

(assert (=> b!1505407 (= res!678054 (= lt!523372 lt!523369))))

(declare-fun lt!523370 () List!16055)

(declare-fun lt!523373 () List!16055)

(declare-fun ++!4321 (List!16055 List!16055) List!16055)

(assert (=> b!1505407 (= lt!523369 (++!4321 lt!523370 lt!523373))))

(declare-fun list!6319 (BalanceConc!10780) List!16055)

(assert (=> b!1505407 (= lt!523372 (list!6319 totalInput!458))))

(assert (=> b!1505407 (= lt!523373 (list!6319 input!1102))))

(assert (=> b!1505407 (= lt!523370 (list!6319 treated!70))))

(declare-fun e!962654 () Bool)

(declare-fun e!962679 () Bool)

(assert (=> b!1505408 (= e!962654 (and e!962679 tp!429724))))

(declare-fun b!1505409 () Bool)

(assert (=> b!1505409 (= e!962677 e!962661)))

(declare-fun b!1505410 () Bool)

(declare-fun e!962681 () Bool)

(assert (=> b!1505410 (= e!962681 e!962666)))

(declare-fun tp!429720 () Bool)

(declare-fun e!962660 () Bool)

(declare-fun b!1505411 () Bool)

(declare-fun inv!21200 (String!18882) Bool)

(declare-fun inv!21213 (TokenValueInjection!5508) Bool)

(assert (=> b!1505411 (= e!962660 (and tp!429720 (inv!21200 (tag!3098 (h!21392 rules!1640))) (inv!21213 (transformation!2834 (h!21392 rules!1640))) e!962663))))

(declare-fun e!962669 () Bool)

(declare-fun b!1505412 () Bool)

(assert (=> b!1505412 (= e!962672 (and e!962669 (inv!21210 (totalInput!2279 cacheFurthestNullable!64)) e!962658))))

(declare-fun b!1505413 () Bool)

(declare-fun res!678064 () Bool)

(assert (=> b!1505413 (=> (not res!678064) (not e!962683))))

(declare-fun isEmpty!9903 (List!16059) Bool)

(assert (=> b!1505413 (= res!678064 (not (isEmpty!9903 rules!1640)))))

(declare-fun b!1505414 () Bool)

(declare-fun e!962667 () Bool)

(declare-fun lt!523374 () MutLongMap!1448)

(assert (=> b!1505414 (= e!962679 (and e!962667 ((_ is LongMap!1448) lt!523374)))))

(assert (=> b!1505414 (= lt!523374 (v!22801 (underlying!3106 (cache!1773 cacheUp!616))))))

(declare-fun b!1505415 () Bool)

(declare-fun tp!429733 () Bool)

(assert (=> b!1505415 (= e!962674 (and e!962660 tp!429733))))

(declare-fun b!1505416 () Bool)

(declare-fun tp!429747 () Bool)

(assert (=> b!1505416 (= e!962668 (and (inv!21212 (c!246741 totalInput!458)) tp!429747))))

(declare-fun b!1505417 () Bool)

(declare-fun tp!429728 () Bool)

(assert (=> b!1505417 (= e!962676 (and tp!429728 mapRes!6872))))

(declare-fun condMapEmpty!6872 () Bool)

(declare-fun mapDefault!6872 () List!16054)

(assert (=> b!1505417 (= condMapEmpty!6872 (= (arr!2274 (_values!1728 (v!22802 (underlying!3107 (v!22803 (underlying!3108 (cache!1774 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16054)) mapDefault!6872)))))

(declare-fun b!1505418 () Bool)

(declare-fun e!962671 () Bool)

(declare-fun e!962652 () Bool)

(declare-fun lt!523377 () MutLongMap!1449)

(assert (=> b!1505418 (= e!962671 (and e!962652 ((_ is LongMap!1449) lt!523377)))))

(assert (=> b!1505418 (= lt!523377 (v!22803 (underlying!3108 (cache!1774 cacheFurthestNullable!64))))))

(declare-fun b!1505419 () Bool)

(assert (=> b!1505419 (= e!962652 e!962681)))

(declare-fun b!1505420 () Bool)

(declare-fun res!678057 () Bool)

(declare-fun e!962680 () Bool)

(assert (=> b!1505420 (=> (not res!678057) (not e!962680))))

(declare-datatypes ((tuple2!14800 0))(
  ( (tuple2!14801 (_1!8388 BalanceConc!10782) (_2!8388 BalanceConc!10780)) )
))
(declare-fun lt!523378 () tuple2!14800)

(declare-fun isEmpty!9904 (List!16055) Bool)

(assert (=> b!1505420 (= res!678057 (isEmpty!9904 (list!6319 (_2!8388 lt!523378))))))

(declare-fun b!1505421 () Bool)

(assert (=> b!1505421 (= e!962686 e!962680)))

(declare-fun res!678063 () Bool)

(assert (=> b!1505421 (=> (not res!678063) (not e!962680))))

(declare-fun list!6320 (BalanceConc!10782) List!16057)

(assert (=> b!1505421 (= res!678063 (= (list!6320 (_1!8388 lt!523378)) (list!6320 acc!392)))))

(declare-fun lexRec!322 (LexerInterface!2487 List!16059 BalanceConc!10780) tuple2!14800)

(assert (=> b!1505421 (= lt!523378 (lexRec!322 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1505422 () Bool)

(declare-fun res!678059 () Bool)

(assert (=> b!1505422 (=> (not res!678059) (not e!962684))))

(declare-fun lt!523375 () tuple2!14800)

(declare-fun lt!523368 () tuple2!14800)

(assert (=> b!1505422 (= res!678059 (= (list!6319 (_2!8388 lt!523375)) (list!6319 (_2!8388 lt!523368))))))

(declare-fun b!1505423 () Bool)

(declare-fun tp!429748 () Bool)

(declare-fun inv!21214 (Conc!5420) Bool)

(assert (=> b!1505423 (= e!962650 (and (inv!21214 (c!246742 acc!392)) tp!429748))))

(declare-fun mapNonEmpty!6871 () Bool)

(declare-fun tp!429727 () Bool)

(declare-fun tp!429744 () Bool)

(assert (=> mapNonEmpty!6871 (= mapRes!6870 (and tp!429727 tp!429744))))

(declare-fun mapKey!6872 () (_ BitVec 32))

(declare-fun mapValue!6871 () List!16053)

(declare-fun mapRest!6872 () (Array (_ BitVec 32) List!16053))

(assert (=> mapNonEmpty!6871 (= (arr!2273 (_values!1727 (v!22800 (underlying!3105 (v!22801 (underlying!3106 (cache!1773 cacheUp!616))))))) (store mapRest!6872 mapKey!6872 mapValue!6871))))

(declare-fun b!1505424 () Bool)

(declare-fun tp!429729 () Bool)

(assert (=> b!1505424 (= e!962664 (and (inv!21212 (c!246741 treated!70)) tp!429729))))

(declare-fun b!1505425 () Bool)

(assert (=> b!1505425 (= e!962680 e!962684)))

(declare-fun res!678060 () Bool)

(assert (=> b!1505425 (=> (not res!678060) (not e!962684))))

(declare-fun ++!4322 (BalanceConc!10782 BalanceConc!10782) BalanceConc!10782)

(assert (=> b!1505425 (= res!678060 (= (list!6320 (_1!8388 lt!523375)) (list!6320 (++!4322 acc!392 (_1!8388 lt!523368)))))))

(assert (=> b!1505425 (= lt!523368 (lexRec!322 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1505425 (= lt!523375 (lexRec!322 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1505426 () Bool)

(assert (=> b!1505426 (= e!962667 e!962685)))

(declare-fun mapIsEmpty!6871 () Bool)

(assert (=> mapIsEmpty!6871 mapRes!6872))

(declare-fun b!1505427 () Bool)

(declare-fun res!678056 () Bool)

(assert (=> b!1505427 (=> (not res!678056) (not e!962684))))

(assert (=> b!1505427 (= res!678056 (= (totalInput!2279 cacheFurthestNullable!64) totalInput!458))))

(declare-fun mapNonEmpty!6872 () Bool)

(declare-fun tp!429732 () Bool)

(declare-fun tp!429726 () Bool)

(assert (=> mapNonEmpty!6872 (= mapRes!6871 (and tp!429732 tp!429726))))

(declare-fun mapKey!6870 () (_ BitVec 32))

(declare-fun mapValue!6872 () List!16058)

(declare-fun mapRest!6870 () (Array (_ BitVec 32) List!16058))

(assert (=> mapNonEmpty!6872 (= (arr!2275 (_values!1729 (v!22804 (underlying!3109 (v!22805 (underlying!3110 (cache!1775 cacheDown!629))))))) (store mapRest!6870 mapKey!6870 mapValue!6872))))

(assert (=> b!1505428 (= e!962669 (and e!962671 tp!429730))))

(declare-fun b!1505429 () Bool)

(assert (=> b!1505429 (= e!962665 e!962654)))

(declare-fun mapIsEmpty!6872 () Bool)

(assert (=> mapIsEmpty!6872 mapRes!6870))

(declare-fun b!1505430 () Bool)

(declare-fun isSuffix!294 (List!16055 List!16055) Bool)

(assert (=> b!1505430 (= e!962684 (not (isSuffix!294 lt!523373 lt!523372)))))

(assert (=> b!1505430 (isSuffix!294 lt!523373 lt!523369)))

(declare-datatypes ((Unit!25709 0))(
  ( (Unit!25710) )
))
(declare-fun lt!523371 () Unit!25709)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!272 (List!16055 List!16055) Unit!25709)

(assert (=> b!1505430 (= lt!523371 (lemmaConcatTwoListThenFSndIsSuffix!272 lt!523370 lt!523373))))

(assert (= (and start!140668 res!678055) b!1505413))

(assert (= (and b!1505413 res!678064) b!1505400))

(assert (= (and b!1505400 res!678065) b!1505407))

(assert (= (and b!1505407 res!678054) b!1505421))

(assert (= (and b!1505421 res!678063) b!1505420))

(assert (= (and b!1505420 res!678057) b!1505425))

(assert (= (and b!1505425 res!678060) b!1505422))

(assert (= (and b!1505422 res!678059) b!1505390))

(assert (= (and b!1505390 res!678061) b!1505401))

(assert (= (and b!1505401 res!678058) b!1505402))

(assert (= (and b!1505402 res!678062) b!1505427))

(assert (= (and b!1505427 res!678056) b!1505430))

(assert (= start!140668 b!1505423))

(assert (= (and b!1505399 condMapEmpty!6870) mapIsEmpty!6872))

(assert (= (and b!1505399 (not condMapEmpty!6870)) mapNonEmpty!6871))

(assert (= b!1505394 b!1505399))

(assert (= b!1505392 b!1505394))

(assert (= b!1505426 b!1505392))

(assert (= (and b!1505414 ((_ is LongMap!1448) (v!22801 (underlying!3106 (cache!1773 cacheUp!616))))) b!1505426))

(assert (= b!1505408 b!1505414))

(assert (= (and b!1505429 ((_ is HashMap!1392) (cache!1773 cacheUp!616))) b!1505408))

(assert (= start!140668 b!1505429))

(assert (= (and b!1505405 condMapEmpty!6871) mapIsEmpty!6870))

(assert (= (and b!1505405 (not condMapEmpty!6871)) mapNonEmpty!6872))

(assert (= b!1505396 b!1505405))

(assert (= b!1505395 b!1505396))

(assert (= b!1505409 b!1505395))

(assert (= (and b!1505406 ((_ is LongMap!1450) (v!22805 (underlying!3110 (cache!1775 cacheDown!629))))) b!1505409))

(assert (= b!1505391 b!1505406))

(assert (= (and b!1505397 ((_ is HashMap!1394) (cache!1775 cacheDown!629))) b!1505391))

(assert (= start!140668 b!1505397))

(assert (= start!140668 b!1505403))

(assert (= start!140668 b!1505424))

(assert (= b!1505411 b!1505398))

(assert (= b!1505415 b!1505411))

(assert (= (and start!140668 ((_ is Cons!15991) rules!1640)) b!1505415))

(assert (= (and b!1505417 condMapEmpty!6872) mapIsEmpty!6871))

(assert (= (and b!1505417 (not condMapEmpty!6872)) mapNonEmpty!6870))

(assert (= b!1505393 b!1505417))

(assert (= b!1505410 b!1505393))

(assert (= b!1505419 b!1505410))

(assert (= (and b!1505418 ((_ is LongMap!1449) (v!22803 (underlying!3108 (cache!1774 cacheFurthestNullable!64))))) b!1505419))

(assert (= b!1505428 b!1505418))

(assert (= (and b!1505412 ((_ is HashMap!1393) (cache!1774 cacheFurthestNullable!64))) b!1505428))

(assert (= b!1505412 b!1505404))

(assert (= start!140668 b!1505412))

(assert (= start!140668 b!1505416))

(declare-fun m!1765053 () Bool)

(assert (=> b!1505423 m!1765053))

(declare-fun m!1765055 () Bool)

(assert (=> b!1505394 m!1765055))

(declare-fun m!1765057 () Bool)

(assert (=> b!1505394 m!1765057))

(declare-fun m!1765059 () Bool)

(assert (=> b!1505393 m!1765059))

(declare-fun m!1765061 () Bool)

(assert (=> b!1505393 m!1765061))

(declare-fun m!1765063 () Bool)

(assert (=> mapNonEmpty!6870 m!1765063))

(declare-fun m!1765065 () Bool)

(assert (=> b!1505400 m!1765065))

(declare-fun m!1765067 () Bool)

(assert (=> b!1505412 m!1765067))

(declare-fun m!1765069 () Bool)

(assert (=> start!140668 m!1765069))

(declare-fun m!1765071 () Bool)

(assert (=> start!140668 m!1765071))

(declare-fun m!1765073 () Bool)

(assert (=> start!140668 m!1765073))

(declare-fun m!1765075 () Bool)

(assert (=> start!140668 m!1765075))

(declare-fun m!1765077 () Bool)

(assert (=> start!140668 m!1765077))

(declare-fun m!1765079 () Bool)

(assert (=> start!140668 m!1765079))

(declare-fun m!1765081 () Bool)

(assert (=> start!140668 m!1765081))

(declare-fun m!1765083 () Bool)

(assert (=> b!1505404 m!1765083))

(declare-fun m!1765085 () Bool)

(assert (=> b!1505401 m!1765085))

(declare-fun m!1765087 () Bool)

(assert (=> b!1505396 m!1765087))

(declare-fun m!1765089 () Bool)

(assert (=> b!1505396 m!1765089))

(declare-fun m!1765091 () Bool)

(assert (=> b!1505425 m!1765091))

(assert (=> b!1505425 m!1765091))

(declare-fun m!1765093 () Bool)

(assert (=> b!1505425 m!1765093))

(declare-fun m!1765095 () Bool)

(assert (=> b!1505425 m!1765095))

(declare-fun m!1765097 () Bool)

(assert (=> b!1505425 m!1765097))

(declare-fun m!1765099 () Bool)

(assert (=> b!1505425 m!1765099))

(declare-fun m!1765101 () Bool)

(assert (=> b!1505390 m!1765101))

(declare-fun m!1765103 () Bool)

(assert (=> b!1505407 m!1765103))

(declare-fun m!1765105 () Bool)

(assert (=> b!1505407 m!1765105))

(declare-fun m!1765107 () Bool)

(assert (=> b!1505407 m!1765107))

(declare-fun m!1765109 () Bool)

(assert (=> b!1505407 m!1765109))

(declare-fun m!1765111 () Bool)

(assert (=> b!1505422 m!1765111))

(declare-fun m!1765113 () Bool)

(assert (=> b!1505422 m!1765113))

(declare-fun m!1765115 () Bool)

(assert (=> b!1505403 m!1765115))

(declare-fun m!1765117 () Bool)

(assert (=> b!1505416 m!1765117))

(declare-fun m!1765119 () Bool)

(assert (=> b!1505421 m!1765119))

(declare-fun m!1765121 () Bool)

(assert (=> b!1505421 m!1765121))

(declare-fun m!1765123 () Bool)

(assert (=> b!1505421 m!1765123))

(declare-fun m!1765125 () Bool)

(assert (=> b!1505430 m!1765125))

(declare-fun m!1765127 () Bool)

(assert (=> b!1505430 m!1765127))

(declare-fun m!1765129 () Bool)

(assert (=> b!1505430 m!1765129))

(declare-fun m!1765131 () Bool)

(assert (=> mapNonEmpty!6872 m!1765131))

(declare-fun m!1765133 () Bool)

(assert (=> b!1505420 m!1765133))

(assert (=> b!1505420 m!1765133))

(declare-fun m!1765135 () Bool)

(assert (=> b!1505420 m!1765135))

(declare-fun m!1765137 () Bool)

(assert (=> b!1505402 m!1765137))

(declare-fun m!1765139 () Bool)

(assert (=> b!1505424 m!1765139))

(declare-fun m!1765141 () Bool)

(assert (=> b!1505411 m!1765141))

(declare-fun m!1765143 () Bool)

(assert (=> b!1505411 m!1765143))

(declare-fun m!1765145 () Bool)

(assert (=> b!1505413 m!1765145))

(declare-fun m!1765147 () Bool)

(assert (=> mapNonEmpty!6871 m!1765147))

(check-sat (not b!1505423) (not b_next!39753) (not mapNonEmpty!6870) (not b_next!39765) (not start!140668) (not b!1505412) (not b!1505404) (not b_next!39751) b_and!104739 (not b!1505401) (not b!1505416) (not b_next!39759) b_and!104743 b_and!104747 b_and!104751 (not b!1505411) (not b!1505402) (not mapNonEmpty!6872) (not b!1505417) (not b_next!39755) (not b!1505415) (not b!1505422) b_and!104749 b_and!104737 (not b!1505413) (not b!1505407) (not b_next!39761) (not b!1505394) (not b!1505420) (not b_next!39757) (not b!1505396) (not b!1505400) (not b!1505430) (not b_next!39763) (not b!1505403) (not b!1505425) (not b!1505424) b_and!104745 (not b!1505393) (not b!1505399) (not mapNonEmpty!6871) (not b!1505421) (not b!1505390) b_and!104741 (not b!1505405))
(check-sat (not b_next!39753) (not b_next!39765) (not b_next!39755) (not b_next!39761) (not b_next!39751) (not b_next!39757) b_and!104739 (not b_next!39763) b_and!104745 b_and!104741 (not b_next!39759) b_and!104743 b_and!104747 b_and!104751 b_and!104749 b_and!104737)
