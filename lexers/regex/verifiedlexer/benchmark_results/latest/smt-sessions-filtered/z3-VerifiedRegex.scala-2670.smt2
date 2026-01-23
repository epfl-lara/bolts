; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143610 () Bool)

(assert start!143610)

(declare-fun b!1548860 () Bool)

(declare-fun b_free!40931 () Bool)

(declare-fun b_next!41635 () Bool)

(assert (=> b!1548860 (= b_free!40931 (not b_next!41635))))

(declare-fun tp!451906 () Bool)

(declare-fun b_and!108021 () Bool)

(assert (=> b!1548860 (= tp!451906 b_and!108021)))

(declare-fun b!1548858 () Bool)

(declare-fun b_free!40933 () Bool)

(declare-fun b_next!41637 () Bool)

(assert (=> b!1548858 (= b_free!40933 (not b_next!41637))))

(declare-fun tp!451921 () Bool)

(declare-fun b_and!108023 () Bool)

(assert (=> b!1548858 (= tp!451921 b_and!108023)))

(declare-fun b!1548863 () Bool)

(declare-fun b_free!40935 () Bool)

(declare-fun b_next!41639 () Bool)

(assert (=> b!1548863 (= b_free!40935 (not b_next!41639))))

(declare-fun tp!451905 () Bool)

(declare-fun b_and!108025 () Bool)

(assert (=> b!1548863 (= tp!451905 b_and!108025)))

(declare-fun b!1548862 () Bool)

(declare-fun b_free!40937 () Bool)

(declare-fun b_next!41641 () Bool)

(assert (=> b!1548862 (= b_free!40937 (not b_next!41641))))

(declare-fun tp!451915 () Bool)

(declare-fun b_and!108027 () Bool)

(assert (=> b!1548862 (= tp!451915 b_and!108027)))

(declare-fun b_free!40939 () Bool)

(declare-fun b_next!41643 () Bool)

(assert (=> b!1548862 (= b_free!40939 (not b_next!41643))))

(declare-fun tp!451922 () Bool)

(declare-fun b_and!108029 () Bool)

(assert (=> b!1548862 (= tp!451922 b_and!108029)))

(declare-fun b!1548849 () Bool)

(declare-fun b_free!40941 () Bool)

(declare-fun b_next!41645 () Bool)

(assert (=> b!1548849 (= b_free!40941 (not b_next!41645))))

(declare-fun tp!451902 () Bool)

(declare-fun b_and!108031 () Bool)

(assert (=> b!1548849 (= tp!451902 b_and!108031)))

(declare-fun b!1548869 () Bool)

(declare-fun b_free!40943 () Bool)

(declare-fun b_next!41647 () Bool)

(assert (=> b!1548869 (= b_free!40943 (not b_next!41647))))

(declare-fun tp!451904 () Bool)

(declare-fun b_and!108033 () Bool)

(assert (=> b!1548869 (= tp!451904 b_and!108033)))

(declare-fun b!1548873 () Bool)

(declare-fun b_free!40945 () Bool)

(declare-fun b_next!41649 () Bool)

(assert (=> b!1548873 (= b_free!40945 (not b_next!41649))))

(declare-fun tp!451911 () Bool)

(declare-fun b_and!108035 () Bool)

(assert (=> b!1548873 (= tp!451911 b_and!108035)))

(declare-fun b!1548881 () Bool)

(declare-fun e!992851 () Bool)

(assert (=> b!1548881 (= e!992851 true)))

(declare-fun b!1548880 () Bool)

(declare-fun e!992850 () Bool)

(assert (=> b!1548880 (= e!992850 e!992851)))

(declare-fun b!1548856 () Bool)

(assert (=> b!1548856 e!992850))

(assert (= b!1548880 b!1548881))

(assert (= b!1548856 b!1548880))

(declare-datatypes ((List!16743 0))(
  ( (Nil!16675) (Cons!16675 (h!22076 (_ BitVec 16)) (t!141146 List!16743)) )
))
(declare-datatypes ((TokenValue!3013 0))(
  ( (FloatLiteralValue!6026 (text!21536 List!16743)) (TokenValueExt!3012 (__x!10939 Int)) (Broken!15065 (value!92927 List!16743)) (Object!3080) (End!3013) (Def!3013) (Underscore!3013) (Match!3013) (Else!3013) (Error!3013) (Case!3013) (If!3013) (Extends!3013) (Abstract!3013) (Class!3013) (Val!3013) (DelimiterValue!6026 (del!3073 List!16743)) (KeywordValue!3019 (value!92928 List!16743)) (CommentValue!6026 (value!92929 List!16743)) (WhitespaceValue!6026 (value!92930 List!16743)) (IndentationValue!3013 (value!92931 List!16743)) (String!19352) (Int32!3013) (Broken!15066 (value!92932 List!16743)) (Boolean!3014) (Unit!25976) (OperatorValue!3016 (op!3073 List!16743)) (IdentifierValue!6026 (value!92933 List!16743)) (IdentifierValue!6027 (value!92934 List!16743)) (WhitespaceValue!6027 (value!92935 List!16743)) (True!6026) (False!6026) (Broken!15067 (value!92936 List!16743)) (Broken!15068 (value!92937 List!16743)) (True!6027) (RightBrace!3013) (RightBracket!3013) (Colon!3013) (Null!3013) (Comma!3013) (LeftBracket!3013) (False!6027) (LeftBrace!3013) (ImaginaryLiteralValue!3013 (text!21537 List!16743)) (StringLiteralValue!9039 (value!92938 List!16743)) (EOFValue!3013 (value!92939 List!16743)) (IdentValue!3013 (value!92940 List!16743)) (DelimiterValue!6027 (value!92941 List!16743)) (DedentValue!3013 (value!92942 List!16743)) (NewLineValue!3013 (value!92943 List!16743)) (IntegerValue!9039 (value!92944 (_ BitVec 32)) (text!21538 List!16743)) (IntegerValue!9040 (value!92945 Int) (text!21539 List!16743)) (Times!3013) (Or!3013) (Equal!3013) (Minus!3013) (Broken!15069 (value!92946 List!16743)) (And!3013) (Div!3013) (LessEqual!3013) (Mod!3013) (Concat!7264) (Not!3013) (Plus!3013) (SpaceValue!3013 (value!92947 List!16743)) (IntegerValue!9041 (value!92948 Int) (text!21540 List!16743)) (StringLiteralValue!9040 (text!21541 List!16743)) (FloatLiteralValue!6027 (text!21542 List!16743)) (BytesLiteralValue!3013 (value!92949 List!16743)) (CommentValue!6027 (value!92950 List!16743)) (StringLiteralValue!9041 (value!92951 List!16743)) (ErrorTokenValue!3013 (msg!3074 List!16743)) )
))
(declare-datatypes ((C!8680 0))(
  ( (C!8681 (val!4912 Int)) )
))
(declare-datatypes ((List!16744 0))(
  ( (Nil!16676) (Cons!16676 (h!22077 C!8680) (t!141147 List!16744)) )
))
(declare-datatypes ((IArray!11087 0))(
  ( (IArray!11088 (innerList!5601 List!16744)) )
))
(declare-datatypes ((Conc!5541 0))(
  ( (Node!5541 (left!13587 Conc!5541) (right!13917 Conc!5541) (csize!11312 Int) (cheight!5752 Int)) (Leaf!8212 (xs!8341 IArray!11087) (csize!11313 Int)) (Empty!5541) )
))
(declare-datatypes ((BalanceConc!11024 0))(
  ( (BalanceConc!11025 (c!252181 Conc!5541)) )
))
(declare-datatypes ((Regex!4251 0))(
  ( (ElementMatch!4251 (c!252182 C!8680)) (Concat!7265 (regOne!9014 Regex!4251) (regTwo!9014 Regex!4251)) (EmptyExpr!4251) (Star!4251 (reg!4580 Regex!4251)) (EmptyLang!4251) (Union!4251 (regOne!9015 Regex!4251) (regTwo!9015 Regex!4251)) )
))
(declare-datatypes ((String!19353 0))(
  ( (String!19354 (value!92952 String)) )
))
(declare-datatypes ((TokenValueInjection!5686 0))(
  ( (TokenValueInjection!5687 (toValue!4286 Int) (toChars!4145 Int)) )
))
(declare-datatypes ((Rule!5646 0))(
  ( (Rule!5647 (regex!2923 Regex!4251) (tag!3187 String!19353) (isSeparator!2923 Bool) (transformation!2923 TokenValueInjection!5686)) )
))
(declare-fun rule!240 () Rule!5646)

(declare-fun lambda!65575 () Int)

(declare-fun order!9751 () Int)

(declare-fun order!9753 () Int)

(declare-fun dynLambda!7370 (Int Int) Int)

(declare-fun dynLambda!7371 (Int Int) Int)

(assert (=> b!1548881 (< (dynLambda!7370 order!9751 (toValue!4286 (transformation!2923 rule!240))) (dynLambda!7371 order!9753 lambda!65575))))

(declare-fun order!9755 () Int)

(declare-fun dynLambda!7372 (Int Int) Int)

(assert (=> b!1548881 (< (dynLambda!7372 order!9755 (toChars!4145 (transformation!2923 rule!240))) (dynLambda!7371 order!9753 lambda!65575))))

(declare-fun b!1548834 () Bool)

(declare-fun res!692469 () Bool)

(declare-fun e!992816 () Bool)

(assert (=> b!1548834 (=> (not res!692469) (not e!992816))))

(declare-datatypes ((List!16745 0))(
  ( (Nil!16677) (Cons!16677 (h!22078 Regex!4251) (t!141148 List!16745)) )
))
(declare-datatypes ((Context!1538 0))(
  ( (Context!1539 (exprs!1269 List!16745)) )
))
(declare-datatypes ((tuple3!1700 0))(
  ( (tuple3!1701 (_1!9262 Regex!4251) (_2!9262 Context!1538) (_3!1277 C!8680)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15970 0))(
  ( (tuple2!15971 (_1!9263 tuple3!1700) (_2!9263 (InoxSet Context!1538))) )
))
(declare-datatypes ((List!16746 0))(
  ( (Nil!16678) (Cons!16678 (h!22079 tuple2!15970) (t!141149 List!16746)) )
))
(declare-datatypes ((array!5958 0))(
  ( (array!5959 (arr!2656 (Array (_ BitVec 32) (_ BitVec 64))) (size!13477 (_ BitVec 32))) )
))
(declare-datatypes ((array!5960 0))(
  ( (array!5961 (arr!2657 (Array (_ BitVec 32) List!16746)) (size!13478 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3460 0))(
  ( (LongMapFixedSize!3461 (defaultEntry!2090 Int) (mask!4944 (_ BitVec 32)) (extraKeys!1977 (_ BitVec 32)) (zeroValue!1987 List!16746) (minValue!1987 List!16746) (_size!3541 (_ BitVec 32)) (_keys!2024 array!5958) (_values!2009 array!5960) (_vacant!1791 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6805 0))(
  ( (Cell!6806 (v!23497 LongMapFixedSize!3460)) )
))
(declare-datatypes ((MutLongMap!1730 0))(
  ( (LongMap!1730 (underlying!3669 Cell!6805)) (MutLongMapExt!1729 (__x!10940 Int)) )
))
(declare-datatypes ((Cell!6807 0))(
  ( (Cell!6808 (v!23498 MutLongMap!1730)) )
))
(declare-datatypes ((Hashable!1674 0))(
  ( (HashableExt!1673 (__x!10941 Int)) )
))
(declare-datatypes ((MutableMap!1674 0))(
  ( (MutableMapExt!1673 (__x!10942 Int)) (HashMap!1674 (underlying!3670 Cell!6807) (hashF!3593 Hashable!1674) (_size!3542 (_ BitVec 32)) (defaultValue!1834 Int)) )
))
(declare-datatypes ((CacheDown!1022 0))(
  ( (CacheDown!1023 (cache!2055 MutableMap!1674)) )
))
(declare-fun cacheDown!768 () CacheDown!1022)

(declare-fun valid!1393 (CacheDown!1022) Bool)

(assert (=> b!1548834 (= res!692469 (valid!1393 cacheDown!768))))

(declare-fun b!1548835 () Bool)

(declare-fun e!992823 () Bool)

(declare-datatypes ((tuple2!15972 0))(
  ( (tuple2!15973 (_1!9264 List!16744) (_2!9264 List!16744)) )
))
(declare-fun lt!536481 () tuple2!15972)

(declare-fun matchR!1863 (Regex!4251 List!16744) Bool)

(assert (=> b!1548835 (= e!992823 (matchR!1863 (regex!2923 rule!240) (_1!9264 lt!536481)))))

(declare-fun mapIsEmpty!8064 () Bool)

(declare-fun mapRes!8066 () Bool)

(assert (=> mapIsEmpty!8064 mapRes!8066))

(declare-fun b!1548836 () Bool)

(declare-fun res!692470 () Bool)

(assert (=> b!1548836 (=> (not res!692470) (not e!992816))))

(declare-datatypes ((tuple3!1702 0))(
  ( (tuple3!1703 (_1!9265 (InoxSet Context!1538)) (_2!9265 Int) (_3!1278 Int)) )
))
(declare-datatypes ((tuple2!15974 0))(
  ( (tuple2!15975 (_1!9266 tuple3!1702) (_2!9266 Int)) )
))
(declare-datatypes ((List!16747 0))(
  ( (Nil!16679) (Cons!16679 (h!22080 tuple2!15974) (t!141150 List!16747)) )
))
(declare-datatypes ((array!5962 0))(
  ( (array!5963 (arr!2658 (Array (_ BitVec 32) List!16747)) (size!13479 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3462 0))(
  ( (LongMapFixedSize!3463 (defaultEntry!2091 Int) (mask!4945 (_ BitVec 32)) (extraKeys!1978 (_ BitVec 32)) (zeroValue!1988 List!16747) (minValue!1988 List!16747) (_size!3543 (_ BitVec 32)) (_keys!2025 array!5958) (_values!2010 array!5962) (_vacant!1792 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6809 0))(
  ( (Cell!6810 (v!23499 LongMapFixedSize!3462)) )
))
(declare-datatypes ((Hashable!1675 0))(
  ( (HashableExt!1674 (__x!10943 Int)) )
))
(declare-datatypes ((MutLongMap!1731 0))(
  ( (LongMap!1731 (underlying!3671 Cell!6809)) (MutLongMapExt!1730 (__x!10944 Int)) )
))
(declare-datatypes ((Cell!6811 0))(
  ( (Cell!6812 (v!23500 MutLongMap!1731)) )
))
(declare-datatypes ((MutableMap!1675 0))(
  ( (MutableMapExt!1674 (__x!10945 Int)) (HashMap!1675 (underlying!3672 Cell!6811) (hashF!3594 Hashable!1675) (_size!3544 (_ BitVec 32)) (defaultValue!1835 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!442 0))(
  ( (CacheFurthestNullable!443 (cache!2056 MutableMap!1675) (totalInput!2424 BalanceConc!11024)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!442)

(declare-fun valid!1394 (CacheFurthestNullable!442) Bool)

(assert (=> b!1548836 (= res!692470 (valid!1394 cacheFurthestNullable!103))))

(declare-fun mapNonEmpty!8064 () Bool)

(declare-fun tp!451912 () Bool)

(declare-fun tp!451919 () Bool)

(assert (=> mapNonEmpty!8064 (= mapRes!8066 (and tp!451912 tp!451919))))

(declare-fun mapValue!8064 () List!16747)

(declare-fun mapRest!8066 () (Array (_ BitVec 32) List!16747))

(declare-fun mapKey!8066 () (_ BitVec 32))

(assert (=> mapNonEmpty!8064 (= (arr!2658 (_values!2010 (v!23499 (underlying!3671 (v!23500 (underlying!3672 (cache!2056 cacheFurthestNullable!103))))))) (store mapRest!8066 mapKey!8066 mapValue!8064))))

(declare-fun mapIsEmpty!8065 () Bool)

(declare-fun mapRes!8064 () Bool)

(assert (=> mapIsEmpty!8065 mapRes!8064))

(declare-fun b!1548837 () Bool)

(declare-fun e!992842 () Bool)

(declare-fun tp!451918 () Bool)

(declare-fun inv!21936 (Conc!5541) Bool)

(assert (=> b!1548837 (= e!992842 (and (inv!21936 (c!252181 (totalInput!2424 cacheFurthestNullable!103))) tp!451918))))

(declare-fun b!1548838 () Bool)

(declare-fun e!992826 () Bool)

(declare-fun e!992837 () Bool)

(assert (=> b!1548838 (= e!992826 e!992837)))

(declare-fun res!692476 () Bool)

(assert (=> b!1548838 (=> res!692476 e!992837)))

(declare-fun lt!536469 () TokenValue!3013)

(declare-fun lt!536485 () BalanceConc!11024)

(declare-fun apply!4096 (TokenValueInjection!5686 BalanceConc!11024) TokenValue!3013)

(assert (=> b!1548838 (= res!692476 (not (= (apply!4096 (transformation!2923 rule!240) lt!536485) lt!536469)))))

(declare-datatypes ((Unit!25977 0))(
  ( (Unit!25978) )
))
(declare-fun lt!536471 () Unit!25977)

(declare-datatypes ((tuple2!15976 0))(
  ( (tuple2!15977 (_1!9267 Context!1538) (_2!9267 C!8680)) )
))
(declare-datatypes ((tuple2!15978 0))(
  ( (tuple2!15979 (_1!9268 tuple2!15976) (_2!9268 (InoxSet Context!1538))) )
))
(declare-datatypes ((List!16748 0))(
  ( (Nil!16680) (Cons!16680 (h!22081 tuple2!15978) (t!141151 List!16748)) )
))
(declare-datatypes ((array!5964 0))(
  ( (array!5965 (arr!2659 (Array (_ BitVec 32) List!16748)) (size!13480 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3464 0))(
  ( (LongMapFixedSize!3465 (defaultEntry!2092 Int) (mask!4946 (_ BitVec 32)) (extraKeys!1979 (_ BitVec 32)) (zeroValue!1989 List!16748) (minValue!1989 List!16748) (_size!3545 (_ BitVec 32)) (_keys!2026 array!5958) (_values!2011 array!5964) (_vacant!1793 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6813 0))(
  ( (Cell!6814 (v!23501 LongMapFixedSize!3464)) )
))
(declare-datatypes ((MutLongMap!1732 0))(
  ( (LongMap!1732 (underlying!3673 Cell!6813)) (MutLongMapExt!1731 (__x!10946 Int)) )
))
(declare-datatypes ((Cell!6815 0))(
  ( (Cell!6816 (v!23502 MutLongMap!1732)) )
))
(declare-datatypes ((Hashable!1676 0))(
  ( (HashableExt!1675 (__x!10947 Int)) )
))
(declare-datatypes ((MutableMap!1676 0))(
  ( (MutableMapExt!1675 (__x!10948 Int)) (HashMap!1676 (underlying!3674 Cell!6815) (hashF!3595 Hashable!1676) (_size!3546 (_ BitVec 32)) (defaultValue!1836 Int)) )
))
(declare-datatypes ((CacheUp!1012 0))(
  ( (CacheUp!1013 (cache!2057 MutableMap!1676)) )
))
(declare-datatypes ((tuple2!15980 0))(
  ( (tuple2!15981 (_1!9269 BalanceConc!11024) (_2!9269 BalanceConc!11024)) )
))
(declare-datatypes ((tuple4!854 0))(
  ( (tuple4!855 (_1!9270 tuple2!15980) (_2!9270 CacheUp!1012) (_3!1279 CacheDown!1022) (_4!427 CacheFurthestNullable!442)) )
))
(declare-fun lt!536476 () tuple4!854)

(declare-fun lemmaEqSameImage!141 (TokenValueInjection!5686 BalanceConc!11024 BalanceConc!11024) Unit!25977)

(assert (=> b!1548838 (= lt!536471 (lemmaEqSameImage!141 (transformation!2923 rule!240) (_1!9269 (_1!9270 lt!536476)) lt!536485))))

(declare-fun mapNonEmpty!8065 () Bool)

(declare-fun mapRes!8065 () Bool)

(declare-fun tp!451916 () Bool)

(declare-fun tp!451914 () Bool)

(assert (=> mapNonEmpty!8065 (= mapRes!8065 (and tp!451916 tp!451914))))

(declare-fun mapValue!8066 () List!16746)

(declare-fun mapRest!8064 () (Array (_ BitVec 32) List!16746))

(declare-fun mapKey!8064 () (_ BitVec 32))

(assert (=> mapNonEmpty!8065 (= (arr!2657 (_values!2009 (v!23497 (underlying!3669 (v!23498 (underlying!3670 (cache!2055 cacheDown!768))))))) (store mapRest!8064 mapKey!8064 mapValue!8066))))

(declare-fun b!1548839 () Bool)

(declare-fun e!992814 () Bool)

(declare-fun e!992818 () Bool)

(assert (=> b!1548839 (= e!992814 e!992818)))

(declare-fun b!1548840 () Bool)

(declare-fun e!992815 () Bool)

(declare-fun e!992817 () Bool)

(assert (=> b!1548840 (= e!992815 e!992817)))

(declare-fun b!1548841 () Bool)

(declare-fun e!992820 () Bool)

(assert (=> b!1548841 (= e!992816 e!992820)))

(declare-fun res!692474 () Bool)

(assert (=> b!1548841 (=> (not res!692474) (not e!992820))))

(declare-fun lt!536484 () List!16744)

(declare-fun totalInput!568 () BalanceConc!11024)

(declare-fun isSuffix!359 (List!16744 List!16744) Bool)

(declare-fun list!6466 (BalanceConc!11024) List!16744)

(assert (=> b!1548841 (= res!692474 (isSuffix!359 lt!536484 (list!6466 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11024)

(assert (=> b!1548841 (= lt!536484 (list!6466 input!1676))))

(declare-fun b!1548842 () Bool)

(declare-fun e!992838 () Bool)

(declare-fun lt!536470 () MutLongMap!1730)

(get-info :version)

(assert (=> b!1548842 (= e!992838 (and e!992814 ((_ is LongMap!1730) lt!536470)))))

(assert (=> b!1548842 (= lt!536470 (v!23498 (underlying!3670 (cache!2055 cacheDown!768))))))

(declare-fun b!1548843 () Bool)

(declare-fun e!992825 () Bool)

(declare-fun e!992834 () Bool)

(declare-fun inv!21937 (BalanceConc!11024) Bool)

(assert (=> b!1548843 (= e!992834 (and e!992825 (inv!21937 (totalInput!2424 cacheFurthestNullable!103)) e!992842))))

(declare-fun b!1548844 () Bool)

(declare-fun e!992836 () Bool)

(declare-fun tp!451913 () Bool)

(assert (=> b!1548844 (= e!992836 (and (inv!21936 (c!252181 input!1676)) tp!451913))))

(declare-fun e!992841 () Bool)

(declare-fun b!1548845 () Bool)

(declare-fun tp!451901 () Bool)

(declare-fun e!992827 () Bool)

(declare-fun inv!21935 (String!19353) Bool)

(declare-fun inv!21938 (TokenValueInjection!5686) Bool)

(assert (=> b!1548845 (= e!992827 (and tp!451901 (inv!21935 (tag!3187 rule!240)) (inv!21938 (transformation!2923 rule!240)) e!992841))))

(declare-fun b!1548846 () Bool)

(declare-fun e!992822 () Bool)

(declare-fun tp!451908 () Bool)

(assert (=> b!1548846 (= e!992822 (and tp!451908 mapRes!8064))))

(declare-fun condMapEmpty!8065 () Bool)

(declare-fun cacheUp!755 () CacheUp!1012)

(declare-fun mapDefault!8064 () List!16748)

(assert (=> b!1548846 (= condMapEmpty!8065 (= (arr!2659 (_values!2011 (v!23501 (underlying!3673 (v!23502 (underlying!3674 (cache!2057 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16748)) mapDefault!8064)))))

(declare-fun b!1548847 () Bool)

(declare-fun res!692467 () Bool)

(assert (=> b!1548847 (=> (not res!692467) (not e!992820))))

(assert (=> b!1548847 (= res!692467 (= (totalInput!2424 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1548848 () Bool)

(declare-fun e!992833 () Bool)

(declare-fun e!992811 () Bool)

(assert (=> b!1548848 (= e!992833 e!992811)))

(declare-fun e!992839 () Bool)

(assert (=> b!1548849 (= e!992825 (and e!992839 tp!451902))))

(declare-fun b!1548850 () Bool)

(declare-fun e!992809 () Bool)

(assert (=> b!1548850 (= e!992809 e!992815)))

(declare-fun b!1548851 () Bool)

(declare-fun e!992844 () Bool)

(declare-fun e!992831 () Bool)

(assert (=> b!1548851 (= e!992844 e!992831)))

(declare-fun lt!536473 () Bool)

(declare-datatypes ((Token!5444 0))(
  ( (Token!5445 (value!92953 TokenValue!3013) (rule!4712 Rule!5646) (size!13481 Int) (originalCharacters!3753 List!16744)) )
))
(declare-datatypes ((tuple2!15982 0))(
  ( (tuple2!15983 (_1!9271 Token!5444) (_2!9271 List!16744)) )
))
(declare-fun lt!536480 () tuple2!15982)

(declare-fun lt!536467 () List!16744)

(declare-fun b!1548852 () Bool)

(declare-fun lt!536468 () Int)

(assert (=> b!1548852 (= e!992837 (or (not (= (value!92953 (_1!9271 lt!536480)) lt!536469)) (not (= (rule!4712 (_1!9271 lt!536480)) rule!240)) (not (= (size!13481 (_1!9271 lt!536480)) lt!536468)) (not (= (originalCharacters!3753 (_1!9271 lt!536480)) lt!536467)) lt!536473))))

(declare-datatypes ((Option!3007 0))(
  ( (None!3006) (Some!3006 (v!23503 tuple2!15982)) )
))
(declare-fun lt!536483 () Option!3007)

(declare-fun get!4826 (Option!3007) tuple2!15982)

(assert (=> b!1548852 (= lt!536480 (get!4826 lt!536483))))

(declare-fun b!1548853 () Bool)

(declare-fun e!992824 () Bool)

(declare-fun lt!536478 () MutLongMap!1731)

(assert (=> b!1548853 (= e!992839 (and e!992824 ((_ is LongMap!1731) lt!536478)))))

(assert (=> b!1548853 (= lt!536478 (v!23500 (underlying!3672 (cache!2056 cacheFurthestNullable!103))))))

(declare-fun b!1548854 () Bool)

(declare-fun e!992821 () Bool)

(declare-fun tp!451910 () Bool)

(assert (=> b!1548854 (= e!992821 (and tp!451910 mapRes!8065))))

(declare-fun condMapEmpty!8066 () Bool)

(declare-fun mapDefault!8065 () List!16746)

(assert (=> b!1548854 (= condMapEmpty!8066 (= (arr!2657 (_values!2009 (v!23497 (underlying!3669 (v!23498 (underlying!3670 (cache!2055 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16746)) mapDefault!8065)))))

(declare-fun b!1548855 () Bool)

(declare-fun e!992835 () Bool)

(declare-fun tp!451920 () Bool)

(assert (=> b!1548855 (= e!992835 (and tp!451920 mapRes!8066))))

(declare-fun condMapEmpty!8064 () Bool)

(declare-fun mapDefault!8066 () List!16747)

(assert (=> b!1548855 (= condMapEmpty!8064 (= (arr!2658 (_values!2010 (v!23499 (underlying!3671 (v!23500 (underlying!3672 (cache!2056 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16747)) mapDefault!8066)))))

(declare-fun res!692466 () Bool)

(declare-fun e!992828 () Bool)

(assert (=> b!1548856 (=> res!692466 e!992828)))

(declare-fun Forall!597 (Int) Bool)

(assert (=> b!1548856 (= res!692466 (not (Forall!597 lambda!65575)))))

(declare-fun b!1548857 () Bool)

(assert (=> b!1548857 (= e!992828 e!992826)))

(declare-fun res!692478 () Bool)

(assert (=> b!1548857 (=> res!692478 e!992826)))

(declare-fun lt!536477 () Bool)

(assert (=> b!1548857 (= res!692478 (or (not (= lt!536477 lt!536473)) (not lt!536477)))))

(declare-fun isDefined!2413 (Option!3007) Bool)

(assert (=> b!1548857 (= lt!536473 (isDefined!2413 lt!536483))))

(declare-datatypes ((tuple2!15984 0))(
  ( (tuple2!15985 (_1!9272 Token!5444) (_2!9272 BalanceConc!11024)) )
))
(declare-datatypes ((Option!3008 0))(
  ( (None!3007) (Some!3007 (v!23504 tuple2!15984)) )
))
(declare-fun isDefined!2414 (Option!3008) Bool)

(assert (=> b!1548857 (= lt!536477 (isDefined!2414 (Some!3007 (tuple2!15985 (Token!5445 lt!536469 rule!240 lt!536468 lt!536467) (_2!9269 (_1!9270 lt!536476))))))))

(declare-datatypes ((LexerInterface!2565 0))(
  ( (LexerInterfaceExt!2562 (__x!10949 Int)) (Lexer!2563) )
))
(declare-fun thiss!16438 () LexerInterface!2565)

(declare-fun maxPrefixOneRule!689 (LexerInterface!2565 Rule!5646 List!16744) Option!3007)

(assert (=> b!1548857 (= lt!536483 (maxPrefixOneRule!689 thiss!16438 rule!240 lt!536484))))

(declare-fun size!13482 (BalanceConc!11024) Int)

(assert (=> b!1548857 (= lt!536468 (size!13482 (_1!9269 (_1!9270 lt!536476))))))

(assert (=> b!1548857 (= lt!536469 (apply!4096 (transformation!2923 rule!240) (_1!9269 (_1!9270 lt!536476))))))

(declare-fun lt!536472 () Unit!25977)

(declare-fun ForallOf!197 (Int BalanceConc!11024) Unit!25977)

(assert (=> b!1548857 (= lt!536472 (ForallOf!197 lambda!65575 lt!536485))))

(declare-fun seqFromList!1760 (List!16744) BalanceConc!11024)

(assert (=> b!1548857 (= lt!536485 (seqFromList!1760 lt!536467))))

(assert (=> b!1548857 (= lt!536467 (list!6466 (_1!9269 (_1!9270 lt!536476))))))

(declare-fun lt!536479 () Unit!25977)

(assert (=> b!1548857 (= lt!536479 (ForallOf!197 lambda!65575 (_1!9269 (_1!9270 lt!536476))))))

(declare-fun tp!451909 () Bool)

(declare-fun e!992813 () Bool)

(declare-fun tp!451907 () Bool)

(declare-fun array_inv!1910 (array!5958) Bool)

(declare-fun array_inv!1911 (array!5960) Bool)

(assert (=> b!1548858 (= e!992813 (and tp!451921 tp!451909 tp!451907 (array_inv!1910 (_keys!2024 (v!23497 (underlying!3669 (v!23498 (underlying!3670 (cache!2055 cacheDown!768))))))) (array_inv!1911 (_values!2009 (v!23497 (underlying!3669 (v!23498 (underlying!3670 (cache!2055 cacheDown!768))))))) e!992821))))

(declare-fun b!1548859 () Bool)

(declare-fun e!992832 () Bool)

(assert (=> b!1548859 (= e!992832 (not e!992828))))

(declare-fun res!692477 () Bool)

(assert (=> b!1548859 (=> res!692477 e!992828)))

(declare-fun semiInverseModEq!1101 (Int Int) Bool)

(assert (=> b!1548859 (= res!692477 (not (semiInverseModEq!1101 (toChars!4145 (transformation!2923 rule!240)) (toValue!4286 (transformation!2923 rule!240)))))))

(declare-fun lt!536475 () Unit!25977)

(declare-fun lemmaInv!411 (TokenValueInjection!5686) Unit!25977)

(assert (=> b!1548859 (= lt!536475 (lemmaInv!411 (transformation!2923 rule!240)))))

(assert (=> b!1548859 e!992823))

(declare-fun res!692475 () Bool)

(assert (=> b!1548859 (=> res!692475 e!992823)))

(declare-fun isEmpty!10070 (List!16744) Bool)

(assert (=> b!1548859 (= res!692475 (isEmpty!10070 (_1!9264 lt!536481)))))

(declare-fun findLongestMatchInner!317 (Regex!4251 List!16744 Int List!16744 List!16744 Int) tuple2!15972)

(declare-fun size!13483 (List!16744) Int)

(assert (=> b!1548859 (= lt!536481 (findLongestMatchInner!317 (regex!2923 rule!240) Nil!16676 (size!13483 Nil!16676) lt!536484 lt!536484 (size!13483 lt!536484)))))

(declare-fun lt!536482 () Unit!25977)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!301 (Regex!4251 List!16744) Unit!25977)

(assert (=> b!1548859 (= lt!536482 (longestMatchIsAcceptedByMatchOrIsEmpty!301 (regex!2923 rule!240) lt!536484))))

(declare-fun e!992845 () Bool)

(assert (=> b!1548860 (= e!992811 (and e!992845 tp!451906))))

(declare-fun b!1548861 () Bool)

(declare-fun res!692471 () Bool)

(assert (=> b!1548861 (=> (not res!692471) (not e!992816))))

(declare-fun ruleValid!669 (LexerInterface!2565 Rule!5646) Bool)

(assert (=> b!1548861 (= res!692471 (ruleValid!669 thiss!16438 rule!240))))

(assert (=> b!1548862 (= e!992841 (and tp!451915 tp!451922))))

(declare-fun tp!451924 () Bool)

(declare-fun tp!451917 () Bool)

(declare-fun array_inv!1912 (array!5962) Bool)

(assert (=> b!1548863 (= e!992831 (and tp!451905 tp!451917 tp!451924 (array_inv!1910 (_keys!2025 (v!23499 (underlying!3671 (v!23500 (underlying!3672 (cache!2056 cacheFurthestNullable!103))))))) (array_inv!1912 (_values!2010 (v!23499 (underlying!3671 (v!23500 (underlying!3672 (cache!2056 cacheFurthestNullable!103))))))) e!992835))))

(declare-fun mapNonEmpty!8066 () Bool)

(declare-fun tp!451900 () Bool)

(declare-fun tp!451926 () Bool)

(assert (=> mapNonEmpty!8066 (= mapRes!8064 (and tp!451900 tp!451926))))

(declare-fun mapKey!8065 () (_ BitVec 32))

(declare-fun mapValue!8065 () List!16748)

(declare-fun mapRest!8065 () (Array (_ BitVec 32) List!16748))

(assert (=> mapNonEmpty!8066 (= (arr!2659 (_values!2011 (v!23501 (underlying!3673 (v!23502 (underlying!3674 (cache!2057 cacheUp!755))))))) (store mapRest!8065 mapKey!8065 mapValue!8065))))

(declare-fun res!692472 () Bool)

(assert (=> start!143610 (=> (not res!692472) (not e!992816))))

(assert (=> start!143610 (= res!692472 ((_ is Lexer!2563) thiss!16438))))

(assert (=> start!143610 e!992816))

(declare-fun e!992810 () Bool)

(assert (=> start!143610 (and (inv!21937 totalInput!568) e!992810)))

(declare-fun inv!21939 (CacheUp!1012) Bool)

(assert (=> start!143610 (and (inv!21939 cacheUp!755) e!992833)))

(declare-fun inv!21940 (CacheFurthestNullable!442) Bool)

(assert (=> start!143610 (and (inv!21940 cacheFurthestNullable!103) e!992834)))

(assert (=> start!143610 (and (inv!21937 input!1676) e!992836)))

(assert (=> start!143610 e!992827))

(declare-fun e!992819 () Bool)

(declare-fun inv!21941 (CacheDown!1022) Bool)

(assert (=> start!143610 (and (inv!21941 cacheDown!768) e!992819)))

(assert (=> start!143610 true))

(declare-fun b!1548864 () Bool)

(assert (=> b!1548864 (= e!992818 e!992813)))

(declare-fun b!1548865 () Bool)

(declare-fun res!692479 () Bool)

(assert (=> b!1548865 (=> (not res!692479) (not e!992816))))

(declare-fun valid!1395 (CacheUp!1012) Bool)

(assert (=> b!1548865 (= res!692479 (valid!1395 cacheUp!755))))

(declare-fun b!1548866 () Bool)

(declare-fun lt!536474 () MutLongMap!1732)

(assert (=> b!1548866 (= e!992845 (and e!992809 ((_ is LongMap!1732) lt!536474)))))

(assert (=> b!1548866 (= lt!536474 (v!23502 (underlying!3674 (cache!2057 cacheUp!755))))))

(declare-fun b!1548867 () Bool)

(declare-fun e!992840 () Bool)

(assert (=> b!1548867 (= e!992819 e!992840)))

(declare-fun b!1548868 () Bool)

(assert (=> b!1548868 (= e!992824 e!992844)))

(declare-fun mapIsEmpty!8066 () Bool)

(assert (=> mapIsEmpty!8066 mapRes!8065))

(declare-fun tp!451925 () Bool)

(declare-fun tp!451903 () Bool)

(declare-fun array_inv!1913 (array!5964) Bool)

(assert (=> b!1548869 (= e!992817 (and tp!451904 tp!451903 tp!451925 (array_inv!1910 (_keys!2026 (v!23501 (underlying!3673 (v!23502 (underlying!3674 (cache!2057 cacheUp!755))))))) (array_inv!1913 (_values!2011 (v!23501 (underlying!3673 (v!23502 (underlying!3674 (cache!2057 cacheUp!755))))))) e!992822))))

(declare-fun b!1548870 () Bool)

(declare-fun tp!451923 () Bool)

(assert (=> b!1548870 (= e!992810 (and (inv!21936 (c!252181 totalInput!568)) tp!451923))))

(declare-fun b!1548871 () Bool)

(declare-fun res!692473 () Bool)

(assert (=> b!1548871 (=> res!692473 e!992826)))

(assert (=> b!1548871 (= res!692473 (not (= (list!6466 lt!536485) lt!536467)))))

(declare-fun b!1548872 () Bool)

(assert (=> b!1548872 (= e!992820 e!992832)))

(declare-fun res!692468 () Bool)

(assert (=> b!1548872 (=> (not res!692468) (not e!992832))))

(declare-fun isEmpty!10071 (BalanceConc!11024) Bool)

(assert (=> b!1548872 (= res!692468 (not (isEmpty!10071 (_1!9269 (_1!9270 lt!536476)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!33 (Regex!4251 BalanceConc!11024 BalanceConc!11024 CacheUp!1012 CacheDown!1022 CacheFurthestNullable!442) tuple4!854)

(assert (=> b!1548872 (= lt!536476 (findLongestMatchWithZipperSequenceV3Mem!33 (regex!2923 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> b!1548873 (= e!992840 (and e!992838 tp!451911))))

(assert (= (and start!143610 res!692472) b!1548861))

(assert (= (and b!1548861 res!692471) b!1548865))

(assert (= (and b!1548865 res!692479) b!1548834))

(assert (= (and b!1548834 res!692469) b!1548836))

(assert (= (and b!1548836 res!692470) b!1548841))

(assert (= (and b!1548841 res!692474) b!1548847))

(assert (= (and b!1548847 res!692467) b!1548872))

(assert (= (and b!1548872 res!692468) b!1548859))

(assert (= (and b!1548859 (not res!692475)) b!1548835))

(assert (= (and b!1548859 (not res!692477)) b!1548856))

(assert (= (and b!1548856 (not res!692466)) b!1548857))

(assert (= (and b!1548857 (not res!692478)) b!1548871))

(assert (= (and b!1548871 (not res!692473)) b!1548838))

(assert (= (and b!1548838 (not res!692476)) b!1548852))

(assert (= start!143610 b!1548870))

(assert (= (and b!1548846 condMapEmpty!8065) mapIsEmpty!8065))

(assert (= (and b!1548846 (not condMapEmpty!8065)) mapNonEmpty!8066))

(assert (= b!1548869 b!1548846))

(assert (= b!1548840 b!1548869))

(assert (= b!1548850 b!1548840))

(assert (= (and b!1548866 ((_ is LongMap!1732) (v!23502 (underlying!3674 (cache!2057 cacheUp!755))))) b!1548850))

(assert (= b!1548860 b!1548866))

(assert (= (and b!1548848 ((_ is HashMap!1676) (cache!2057 cacheUp!755))) b!1548860))

(assert (= start!143610 b!1548848))

(assert (= (and b!1548855 condMapEmpty!8064) mapIsEmpty!8064))

(assert (= (and b!1548855 (not condMapEmpty!8064)) mapNonEmpty!8064))

(assert (= b!1548863 b!1548855))

(assert (= b!1548851 b!1548863))

(assert (= b!1548868 b!1548851))

(assert (= (and b!1548853 ((_ is LongMap!1731) (v!23500 (underlying!3672 (cache!2056 cacheFurthestNullable!103))))) b!1548868))

(assert (= b!1548849 b!1548853))

(assert (= (and b!1548843 ((_ is HashMap!1675) (cache!2056 cacheFurthestNullable!103))) b!1548849))

(assert (= b!1548843 b!1548837))

(assert (= start!143610 b!1548843))

(assert (= start!143610 b!1548844))

(assert (= b!1548845 b!1548862))

(assert (= start!143610 b!1548845))

(assert (= (and b!1548854 condMapEmpty!8066) mapIsEmpty!8066))

(assert (= (and b!1548854 (not condMapEmpty!8066)) mapNonEmpty!8065))

(assert (= b!1548858 b!1548854))

(assert (= b!1548864 b!1548858))

(assert (= b!1548839 b!1548864))

(assert (= (and b!1548842 ((_ is LongMap!1730) (v!23498 (underlying!3670 (cache!2055 cacheDown!768))))) b!1548839))

(assert (= b!1548873 b!1548842))

(assert (= (and b!1548867 ((_ is HashMap!1674) (cache!2055 cacheDown!768))) b!1548873))

(assert (= start!143610 b!1548867))

(declare-fun m!1821919 () Bool)

(assert (=> b!1548865 m!1821919))

(declare-fun m!1821921 () Bool)

(assert (=> b!1548844 m!1821921))

(declare-fun m!1821923 () Bool)

(assert (=> b!1548871 m!1821923))

(declare-fun m!1821925 () Bool)

(assert (=> b!1548834 m!1821925))

(declare-fun m!1821927 () Bool)

(assert (=> mapNonEmpty!8064 m!1821927))

(declare-fun m!1821929 () Bool)

(assert (=> b!1548838 m!1821929))

(declare-fun m!1821931 () Bool)

(assert (=> b!1548838 m!1821931))

(declare-fun m!1821933 () Bool)

(assert (=> start!143610 m!1821933))

(declare-fun m!1821935 () Bool)

(assert (=> start!143610 m!1821935))

(declare-fun m!1821937 () Bool)

(assert (=> start!143610 m!1821937))

(declare-fun m!1821939 () Bool)

(assert (=> start!143610 m!1821939))

(declare-fun m!1821941 () Bool)

(assert (=> start!143610 m!1821941))

(declare-fun m!1821943 () Bool)

(assert (=> b!1548836 m!1821943))

(declare-fun m!1821945 () Bool)

(assert (=> b!1548837 m!1821945))

(declare-fun m!1821947 () Bool)

(assert (=> b!1548845 m!1821947))

(declare-fun m!1821949 () Bool)

(assert (=> b!1548845 m!1821949))

(declare-fun m!1821951 () Bool)

(assert (=> b!1548841 m!1821951))

(assert (=> b!1548841 m!1821951))

(declare-fun m!1821953 () Bool)

(assert (=> b!1548841 m!1821953))

(declare-fun m!1821955 () Bool)

(assert (=> b!1548841 m!1821955))

(declare-fun m!1821957 () Bool)

(assert (=> b!1548869 m!1821957))

(declare-fun m!1821959 () Bool)

(assert (=> b!1548869 m!1821959))

(declare-fun m!1821961 () Bool)

(assert (=> b!1548872 m!1821961))

(declare-fun m!1821963 () Bool)

(assert (=> b!1548872 m!1821963))

(declare-fun m!1821965 () Bool)

(assert (=> b!1548856 m!1821965))

(declare-fun m!1821967 () Bool)

(assert (=> b!1548861 m!1821967))

(declare-fun m!1821969 () Bool)

(assert (=> b!1548859 m!1821969))

(declare-fun m!1821971 () Bool)

(assert (=> b!1548859 m!1821971))

(declare-fun m!1821973 () Bool)

(assert (=> b!1548859 m!1821973))

(declare-fun m!1821975 () Bool)

(assert (=> b!1548859 m!1821975))

(declare-fun m!1821977 () Bool)

(assert (=> b!1548859 m!1821977))

(assert (=> b!1548859 m!1821975))

(declare-fun m!1821979 () Bool)

(assert (=> b!1548859 m!1821979))

(assert (=> b!1548859 m!1821977))

(declare-fun m!1821981 () Bool)

(assert (=> b!1548859 m!1821981))

(declare-fun m!1821983 () Bool)

(assert (=> b!1548857 m!1821983))

(declare-fun m!1821985 () Bool)

(assert (=> b!1548857 m!1821985))

(declare-fun m!1821987 () Bool)

(assert (=> b!1548857 m!1821987))

(declare-fun m!1821989 () Bool)

(assert (=> b!1548857 m!1821989))

(declare-fun m!1821991 () Bool)

(assert (=> b!1548857 m!1821991))

(declare-fun m!1821993 () Bool)

(assert (=> b!1548857 m!1821993))

(declare-fun m!1821995 () Bool)

(assert (=> b!1548857 m!1821995))

(declare-fun m!1821997 () Bool)

(assert (=> b!1548857 m!1821997))

(declare-fun m!1821999 () Bool)

(assert (=> b!1548857 m!1821999))

(declare-fun m!1822001 () Bool)

(assert (=> b!1548870 m!1822001))

(declare-fun m!1822003 () Bool)

(assert (=> b!1548852 m!1822003))

(declare-fun m!1822005 () Bool)

(assert (=> b!1548835 m!1822005))

(declare-fun m!1822007 () Bool)

(assert (=> b!1548843 m!1822007))

(declare-fun m!1822009 () Bool)

(assert (=> mapNonEmpty!8066 m!1822009))

(declare-fun m!1822011 () Bool)

(assert (=> b!1548858 m!1822011))

(declare-fun m!1822013 () Bool)

(assert (=> b!1548858 m!1822013))

(declare-fun m!1822015 () Bool)

(assert (=> b!1548863 m!1822015))

(declare-fun m!1822017 () Bool)

(assert (=> b!1548863 m!1822017))

(declare-fun m!1822019 () Bool)

(assert (=> mapNonEmpty!8065 m!1822019))

(check-sat (not b!1548846) (not b!1548872) (not b_next!41639) (not mapNonEmpty!8065) (not b!1548871) (not b!1548865) b_and!108031 b_and!108033 b_and!108035 (not b!1548858) (not b!1548852) (not b!1548836) (not mapNonEmpty!8066) b_and!108021 b_and!108023 (not b_next!41643) (not b!1548841) (not b!1548870) (not b!1548869) (not b!1548863) (not b!1548861) (not b_next!41647) (not b!1548845) (not b!1548835) (not b_next!41637) (not b_next!41641) b_and!108029 (not mapNonEmpty!8064) b_and!108027 (not b_next!41649) (not start!143610) (not b!1548855) (not b!1548843) (not b_next!41645) (not b!1548838) b_and!108025 (not b_next!41635) (not b!1548854) (not b!1548844) (not b!1548857) (not b!1548837) (not b!1548856) (not b!1548859) (not b!1548834))
(check-sat (not b_next!41639) (not b_next!41647) (not b_next!41637) b_and!108031 b_and!108033 b_and!108035 b_and!108021 b_and!108023 (not b_next!41643) (not b_next!41641) b_and!108029 b_and!108027 (not b_next!41649) (not b_next!41645) b_and!108025 (not b_next!41635))
