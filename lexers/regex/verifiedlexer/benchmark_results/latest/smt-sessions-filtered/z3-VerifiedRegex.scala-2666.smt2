; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143594 () Bool)

(assert start!143594)

(declare-fun b!1547809 () Bool)

(declare-fun b_free!40803 () Bool)

(declare-fun b_next!41507 () Bool)

(assert (=> b!1547809 (= b_free!40803 (not b_next!41507))))

(declare-fun tp!451276 () Bool)

(declare-fun b_and!107893 () Bool)

(assert (=> b!1547809 (= tp!451276 b_and!107893)))

(declare-fun b!1547831 () Bool)

(declare-fun b_free!40805 () Bool)

(declare-fun b_next!41509 () Bool)

(assert (=> b!1547831 (= b_free!40805 (not b_next!41509))))

(declare-fun tp!451277 () Bool)

(declare-fun b_and!107895 () Bool)

(assert (=> b!1547831 (= tp!451277 b_and!107895)))

(declare-fun b!1547814 () Bool)

(declare-fun b_free!40807 () Bool)

(declare-fun b_next!41511 () Bool)

(assert (=> b!1547814 (= b_free!40807 (not b_next!41511))))

(declare-fun tp!451267 () Bool)

(declare-fun b_and!107897 () Bool)

(assert (=> b!1547814 (= tp!451267 b_and!107897)))

(declare-fun b!1547823 () Bool)

(declare-fun b_free!40809 () Bool)

(declare-fun b_next!41513 () Bool)

(assert (=> b!1547823 (= b_free!40809 (not b_next!41513))))

(declare-fun tp!451259 () Bool)

(declare-fun b_and!107899 () Bool)

(assert (=> b!1547823 (= tp!451259 b_and!107899)))

(declare-fun b_free!40811 () Bool)

(declare-fun b_next!41515 () Bool)

(assert (=> b!1547823 (= b_free!40811 (not b_next!41515))))

(declare-fun tp!451272 () Bool)

(declare-fun b_and!107901 () Bool)

(assert (=> b!1547823 (= tp!451272 b_and!107901)))

(declare-fun b!1547840 () Bool)

(declare-fun b_free!40813 () Bool)

(declare-fun b_next!41517 () Bool)

(assert (=> b!1547840 (= b_free!40813 (not b_next!41517))))

(declare-fun tp!451258 () Bool)

(declare-fun b_and!107903 () Bool)

(assert (=> b!1547840 (= tp!451258 b_and!107903)))

(declare-fun b!1547819 () Bool)

(declare-fun b_free!40815 () Bool)

(declare-fun b_next!41519 () Bool)

(assert (=> b!1547819 (= b_free!40815 (not b_next!41519))))

(declare-fun tp!451270 () Bool)

(declare-fun b_and!107905 () Bool)

(assert (=> b!1547819 (= tp!451270 b_and!107905)))

(declare-fun b!1547821 () Bool)

(declare-fun b_free!40817 () Bool)

(declare-fun b_next!41521 () Bool)

(assert (=> b!1547821 (= b_free!40817 (not b_next!41521))))

(declare-fun tp!451269 () Bool)

(declare-fun b_and!107907 () Bool)

(assert (=> b!1547821 (= tp!451269 b_and!107907)))

(declare-fun b!1547851 () Bool)

(declare-fun e!991915 () Bool)

(assert (=> b!1547851 (= e!991915 true)))

(declare-fun b!1547850 () Bool)

(declare-fun e!991914 () Bool)

(assert (=> b!1547850 (= e!991914 e!991915)))

(declare-fun b!1547811 () Bool)

(assert (=> b!1547811 e!991914))

(assert (= b!1547850 b!1547851))

(assert (= b!1547811 b!1547850))

(declare-datatypes ((List!16699 0))(
  ( (Nil!16631) (Cons!16631 (h!22032 (_ BitVec 16)) (t!141102 List!16699)) )
))
(declare-datatypes ((TokenValue!3005 0))(
  ( (FloatLiteralValue!6010 (text!21480 List!16699)) (TokenValueExt!3004 (__x!10866 Int)) (Broken!15025 (value!92702 List!16699)) (Object!3072) (End!3005) (Def!3005) (Underscore!3005) (Match!3005) (Else!3005) (Error!3005) (Case!3005) (If!3005) (Extends!3005) (Abstract!3005) (Class!3005) (Val!3005) (DelimiterValue!6010 (del!3065 List!16699)) (KeywordValue!3011 (value!92703 List!16699)) (CommentValue!6010 (value!92704 List!16699)) (WhitespaceValue!6010 (value!92705 List!16699)) (IndentationValue!3005 (value!92706 List!16699)) (String!19312) (Int32!3005) (Broken!15026 (value!92707 List!16699)) (Boolean!3006) (Unit!25958) (OperatorValue!3008 (op!3065 List!16699)) (IdentifierValue!6010 (value!92708 List!16699)) (IdentifierValue!6011 (value!92709 List!16699)) (WhitespaceValue!6011 (value!92710 List!16699)) (True!6010) (False!6010) (Broken!15027 (value!92711 List!16699)) (Broken!15028 (value!92712 List!16699)) (True!6011) (RightBrace!3005) (RightBracket!3005) (Colon!3005) (Null!3005) (Comma!3005) (LeftBracket!3005) (False!6011) (LeftBrace!3005) (ImaginaryLiteralValue!3005 (text!21481 List!16699)) (StringLiteralValue!9015 (value!92713 List!16699)) (EOFValue!3005 (value!92714 List!16699)) (IdentValue!3005 (value!92715 List!16699)) (DelimiterValue!6011 (value!92716 List!16699)) (DedentValue!3005 (value!92717 List!16699)) (NewLineValue!3005 (value!92718 List!16699)) (IntegerValue!9015 (value!92719 (_ BitVec 32)) (text!21482 List!16699)) (IntegerValue!9016 (value!92720 Int) (text!21483 List!16699)) (Times!3005) (Or!3005) (Equal!3005) (Minus!3005) (Broken!15029 (value!92721 List!16699)) (And!3005) (Div!3005) (LessEqual!3005) (Mod!3005) (Concat!7248) (Not!3005) (Plus!3005) (SpaceValue!3005 (value!92722 List!16699)) (IntegerValue!9017 (value!92723 Int) (text!21484 List!16699)) (StringLiteralValue!9016 (text!21485 List!16699)) (FloatLiteralValue!6011 (text!21486 List!16699)) (BytesLiteralValue!3005 (value!92724 List!16699)) (CommentValue!6011 (value!92725 List!16699)) (StringLiteralValue!9017 (value!92726 List!16699)) (ErrorTokenValue!3005 (msg!3066 List!16699)) )
))
(declare-datatypes ((C!8664 0))(
  ( (C!8665 (val!4904 Int)) )
))
(declare-datatypes ((List!16700 0))(
  ( (Nil!16632) (Cons!16632 (h!22033 C!8664) (t!141103 List!16700)) )
))
(declare-datatypes ((IArray!11071 0))(
  ( (IArray!11072 (innerList!5593 List!16700)) )
))
(declare-datatypes ((Conc!5533 0))(
  ( (Node!5533 (left!13559 Conc!5533) (right!13889 Conc!5533) (csize!11296 Int) (cheight!5744 Int)) (Leaf!8200 (xs!8333 IArray!11071) (csize!11297 Int)) (Empty!5533) )
))
(declare-datatypes ((BalanceConc!11008 0))(
  ( (BalanceConc!11009 (c!252157 Conc!5533)) )
))
(declare-datatypes ((Regex!4243 0))(
  ( (ElementMatch!4243 (c!252158 C!8664)) (Concat!7249 (regOne!8998 Regex!4243) (regTwo!8998 Regex!4243)) (EmptyExpr!4243) (Star!4243 (reg!4572 Regex!4243)) (EmptyLang!4243) (Union!4243 (regOne!8999 Regex!4243) (regTwo!8999 Regex!4243)) )
))
(declare-datatypes ((String!19313 0))(
  ( (String!19314 (value!92727 String)) )
))
(declare-datatypes ((TokenValueInjection!5670 0))(
  ( (TokenValueInjection!5671 (toValue!4278 Int) (toChars!4137 Int)) )
))
(declare-datatypes ((Rule!5630 0))(
  ( (Rule!5631 (regex!2915 Regex!4243) (tag!3179 String!19313) (isSeparator!2915 Bool) (transformation!2915 TokenValueInjection!5670)) )
))
(declare-fun rule!240 () Rule!5630)

(declare-fun lambda!65519 () Int)

(declare-fun order!9703 () Int)

(declare-fun order!9705 () Int)

(declare-fun dynLambda!7346 (Int Int) Int)

(declare-fun dynLambda!7347 (Int Int) Int)

(assert (=> b!1547851 (< (dynLambda!7346 order!9703 (toValue!4278 (transformation!2915 rule!240))) (dynLambda!7347 order!9705 lambda!65519))))

(declare-fun order!9707 () Int)

(declare-fun dynLambda!7348 (Int Int) Int)

(assert (=> b!1547851 (< (dynLambda!7348 order!9707 (toChars!4137 (transformation!2915 rule!240))) (dynLambda!7347 order!9705 lambda!65519))))

(declare-fun b!1547804 () Bool)

(declare-fun e!991878 () Bool)

(declare-fun e!991901 () Bool)

(assert (=> b!1547804 (= e!991878 e!991901)))

(declare-fun res!692126 () Bool)

(assert (=> b!1547804 (=> (not res!692126) (not e!991901))))

(declare-fun lt!536032 () List!16700)

(declare-fun totalInput!568 () BalanceConc!11008)

(declare-fun isSuffix!355 (List!16700 List!16700) Bool)

(declare-fun list!6461 (BalanceConc!11008) List!16700)

(assert (=> b!1547804 (= res!692126 (isSuffix!355 lt!536032 (list!6461 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11008)

(assert (=> b!1547804 (= lt!536032 (list!6461 input!1676))))

(declare-fun b!1547805 () Bool)

(declare-fun e!991893 () Bool)

(declare-fun lt!536022 () Bool)

(assert (=> b!1547805 (= e!991893 lt!536022)))

(declare-fun b!1547806 () Bool)

(declare-fun e!991882 () Bool)

(declare-fun e!991888 () Bool)

(assert (=> b!1547806 (= e!991882 e!991888)))

(declare-fun b!1547807 () Bool)

(declare-fun e!991895 () Bool)

(declare-fun tp!451255 () Bool)

(declare-fun mapRes!7992 () Bool)

(assert (=> b!1547807 (= e!991895 (and tp!451255 mapRes!7992))))

(declare-fun condMapEmpty!7992 () Bool)

(declare-datatypes ((List!16701 0))(
  ( (Nil!16633) (Cons!16633 (h!22034 Regex!4243) (t!141104 List!16701)) )
))
(declare-datatypes ((Context!1522 0))(
  ( (Context!1523 (exprs!1261 List!16701)) )
))
(declare-datatypes ((tuple3!1672 0))(
  ( (tuple3!1673 (_1!9194 Regex!4243) (_2!9194 Context!1522) (_3!1257 C!8664)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15874 0))(
  ( (tuple2!15875 (_1!9195 tuple3!1672) (_2!9195 (InoxSet Context!1522))) )
))
(declare-datatypes ((List!16702 0))(
  ( (Nil!16634) (Cons!16634 (h!22035 tuple2!15874) (t!141105 List!16702)) )
))
(declare-datatypes ((array!5902 0))(
  ( (array!5903 (arr!2628 (Array (_ BitVec 32) (_ BitVec 64))) (size!13435 (_ BitVec 32))) )
))
(declare-datatypes ((array!5904 0))(
  ( (array!5905 (arr!2629 (Array (_ BitVec 32) List!16702)) (size!13436 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3420 0))(
  ( (LongMapFixedSize!3421 (defaultEntry!2070 Int) (mask!4920 (_ BitVec 32)) (extraKeys!1957 (_ BitVec 32)) (zeroValue!1967 List!16702) (minValue!1967 List!16702) (_size!3501 (_ BitVec 32)) (_keys!2004 array!5902) (_values!1989 array!5904) (_vacant!1771 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6725 0))(
  ( (Cell!6726 (v!23447 LongMapFixedSize!3420)) )
))
(declare-datatypes ((MutLongMap!1710 0))(
  ( (LongMap!1710 (underlying!3629 Cell!6725)) (MutLongMapExt!1709 (__x!10867 Int)) )
))
(declare-datatypes ((Cell!6727 0))(
  ( (Cell!6728 (v!23448 MutLongMap!1710)) )
))
(declare-datatypes ((Hashable!1654 0))(
  ( (HashableExt!1653 (__x!10868 Int)) )
))
(declare-datatypes ((MutableMap!1654 0))(
  ( (MutableMapExt!1653 (__x!10869 Int)) (HashMap!1654 (underlying!3630 Cell!6727) (hashF!3573 Hashable!1654) (_size!3502 (_ BitVec 32)) (defaultValue!1814 Int)) )
))
(declare-datatypes ((CacheDown!1008 0))(
  ( (CacheDown!1009 (cache!2035 MutableMap!1654)) )
))
(declare-fun cacheDown!768 () CacheDown!1008)

(declare-fun mapDefault!7992 () List!16702)

(assert (=> b!1547807 (= condMapEmpty!7992 (= (arr!2629 (_values!1989 (v!23447 (underlying!3629 (v!23448 (underlying!3630 (cache!2035 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16702)) mapDefault!7992)))))

(declare-fun b!1547808 () Bool)

(declare-fun e!991876 () Bool)

(declare-fun tp!451265 () Bool)

(declare-fun inv!21897 (Conc!5533) Bool)

(assert (=> b!1547808 (= e!991876 (and (inv!21897 (c!252157 input!1676)) tp!451265))))

(declare-fun mapNonEmpty!7992 () Bool)

(declare-fun mapRes!7994 () Bool)

(declare-fun tp!451252 () Bool)

(declare-fun tp!451275 () Bool)

(assert (=> mapNonEmpty!7992 (= mapRes!7994 (and tp!451252 tp!451275))))

(declare-datatypes ((tuple2!15876 0))(
  ( (tuple2!15877 (_1!9196 Context!1522) (_2!9196 C!8664)) )
))
(declare-datatypes ((tuple2!15878 0))(
  ( (tuple2!15879 (_1!9197 tuple2!15876) (_2!9197 (InoxSet Context!1522))) )
))
(declare-datatypes ((List!16703 0))(
  ( (Nil!16635) (Cons!16635 (h!22036 tuple2!15878) (t!141106 List!16703)) )
))
(declare-datatypes ((array!5906 0))(
  ( (array!5907 (arr!2630 (Array (_ BitVec 32) List!16703)) (size!13437 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1655 0))(
  ( (HashableExt!1654 (__x!10870 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3422 0))(
  ( (LongMapFixedSize!3423 (defaultEntry!2071 Int) (mask!4921 (_ BitVec 32)) (extraKeys!1958 (_ BitVec 32)) (zeroValue!1968 List!16703) (minValue!1968 List!16703) (_size!3503 (_ BitVec 32)) (_keys!2005 array!5902) (_values!1990 array!5906) (_vacant!1772 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6729 0))(
  ( (Cell!6730 (v!23449 LongMapFixedSize!3422)) )
))
(declare-datatypes ((MutLongMap!1711 0))(
  ( (LongMap!1711 (underlying!3631 Cell!6729)) (MutLongMapExt!1710 (__x!10871 Int)) )
))
(declare-datatypes ((Cell!6731 0))(
  ( (Cell!6732 (v!23450 MutLongMap!1711)) )
))
(declare-datatypes ((MutableMap!1655 0))(
  ( (MutableMapExt!1654 (__x!10872 Int)) (HashMap!1655 (underlying!3632 Cell!6731) (hashF!3574 Hashable!1655) (_size!3504 (_ BitVec 32)) (defaultValue!1815 Int)) )
))
(declare-datatypes ((CacheUp!1000 0))(
  ( (CacheUp!1001 (cache!2036 MutableMap!1655)) )
))
(declare-fun cacheUp!755 () CacheUp!1000)

(declare-fun mapRest!7993 () (Array (_ BitVec 32) List!16703))

(declare-fun mapValue!7994 () List!16703)

(declare-fun mapKey!7992 () (_ BitVec 32))

(assert (=> mapNonEmpty!7992 (= (arr!2630 (_values!1990 (v!23449 (underlying!3631 (v!23450 (underlying!3632 (cache!2036 cacheUp!755))))))) (store mapRest!7993 mapKey!7992 mapValue!7994))))

(declare-fun e!991879 () Bool)

(declare-fun e!991894 () Bool)

(assert (=> b!1547809 (= e!991879 (and e!991894 tp!451276))))

(declare-fun b!1547810 () Bool)

(declare-fun e!991899 () Bool)

(assert (=> b!1547810 (= e!991899 e!991879)))

(declare-fun res!692128 () Bool)

(declare-fun e!991907 () Bool)

(assert (=> b!1547811 (=> res!692128 e!991907)))

(declare-fun Forall!593 (Int) Bool)

(assert (=> b!1547811 (= res!692128 (not (Forall!593 lambda!65519)))))

(declare-fun b!1547812 () Bool)

(declare-fun e!991909 () Bool)

(declare-fun e!991889 () Bool)

(assert (=> b!1547812 (= e!991909 e!991889)))

(declare-fun b!1547813 () Bool)

(declare-fun e!991891 () Bool)

(declare-fun e!991890 () Bool)

(declare-fun lt!536021 () MutLongMap!1710)

(get-info :version)

(assert (=> b!1547813 (= e!991891 (and e!991890 ((_ is LongMap!1710) lt!536021)))))

(assert (=> b!1547813 (= lt!536021 (v!23448 (underlying!3630 (cache!2035 cacheDown!768))))))

(declare-fun e!991881 () Bool)

(declare-fun e!991884 () Bool)

(assert (=> b!1547814 (= e!991881 (and e!991884 tp!451267))))

(declare-fun b!1547815 () Bool)

(declare-fun e!991886 () Bool)

(declare-datatypes ((tuple3!1674 0))(
  ( (tuple3!1675 (_1!9198 (InoxSet Context!1522)) (_2!9198 Int) (_3!1258 Int)) )
))
(declare-datatypes ((tuple2!15880 0))(
  ( (tuple2!15881 (_1!9199 tuple3!1674) (_2!9199 Int)) )
))
(declare-datatypes ((List!16704 0))(
  ( (Nil!16636) (Cons!16636 (h!22037 tuple2!15880) (t!141107 List!16704)) )
))
(declare-datatypes ((array!5908 0))(
  ( (array!5909 (arr!2631 (Array (_ BitVec 32) List!16704)) (size!13438 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3424 0))(
  ( (LongMapFixedSize!3425 (defaultEntry!2072 Int) (mask!4922 (_ BitVec 32)) (extraKeys!1959 (_ BitVec 32)) (zeroValue!1969 List!16704) (minValue!1969 List!16704) (_size!3505 (_ BitVec 32)) (_keys!2006 array!5902) (_values!1991 array!5908) (_vacant!1773 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6733 0))(
  ( (Cell!6734 (v!23451 LongMapFixedSize!3424)) )
))
(declare-datatypes ((Hashable!1656 0))(
  ( (HashableExt!1655 (__x!10873 Int)) )
))
(declare-datatypes ((MutLongMap!1712 0))(
  ( (LongMap!1712 (underlying!3633 Cell!6733)) (MutLongMapExt!1711 (__x!10874 Int)) )
))
(declare-datatypes ((Cell!6735 0))(
  ( (Cell!6736 (v!23452 MutLongMap!1712)) )
))
(declare-datatypes ((MutableMap!1656 0))(
  ( (MutableMapExt!1655 (__x!10875 Int)) (HashMap!1656 (underlying!3634 Cell!6735) (hashF!3575 Hashable!1656) (_size!3506 (_ BitVec 32)) (defaultValue!1816 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!428 0))(
  ( (CacheFurthestNullable!429 (cache!2037 MutableMap!1656) (totalInput!2417 BalanceConc!11008)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!428)

(declare-fun tp!451266 () Bool)

(assert (=> b!1547815 (= e!991886 (and (inv!21897 (c!252157 (totalInput!2417 cacheFurthestNullable!103))) tp!451266))))

(declare-fun b!1547816 () Bool)

(declare-fun e!991898 () Bool)

(declare-fun tp!451278 () Bool)

(declare-fun mapRes!7993 () Bool)

(assert (=> b!1547816 (= e!991898 (and tp!451278 mapRes!7993))))

(declare-fun condMapEmpty!7994 () Bool)

(declare-fun mapDefault!7993 () List!16704)

(assert (=> b!1547816 (= condMapEmpty!7994 (= (arr!2631 (_values!1991 (v!23451 (underlying!3633 (v!23452 (underlying!3634 (cache!2037 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16704)) mapDefault!7993)))))

(declare-fun mapIsEmpty!7992 () Bool)

(assert (=> mapIsEmpty!7992 mapRes!7992))

(declare-fun b!1547817 () Bool)

(declare-fun res!692130 () Bool)

(declare-fun e!991906 () Bool)

(assert (=> b!1547817 (=> res!692130 e!991906)))

(declare-fun lt!536024 () BalanceConc!11008)

(declare-fun lt!536035 () List!16700)

(assert (=> b!1547817 (= res!692130 (not (= (list!6461 lt!536024) lt!536035)))))

(declare-fun b!1547818 () Bool)

(assert (=> b!1547818 (= e!991906 e!991893)))

(declare-fun res!692125 () Bool)

(assert (=> b!1547818 (=> res!692125 e!991893)))

(declare-fun lt!536023 () TokenValue!3005)

(declare-fun apply!4091 (TokenValueInjection!5670 BalanceConc!11008) TokenValue!3005)

(assert (=> b!1547818 (= res!692125 (not (= (apply!4091 (transformation!2915 rule!240) lt!536024) lt!536023)))))

(declare-datatypes ((tuple2!15882 0))(
  ( (tuple2!15883 (_1!9200 BalanceConc!11008) (_2!9200 BalanceConc!11008)) )
))
(declare-datatypes ((tuple4!842 0))(
  ( (tuple4!843 (_1!9201 tuple2!15882) (_2!9201 CacheUp!1000) (_3!1259 CacheDown!1008) (_4!421 CacheFurthestNullable!428)) )
))
(declare-fun lt!536028 () tuple4!842)

(declare-datatypes ((Unit!25959 0))(
  ( (Unit!25960) )
))
(declare-fun lt!536020 () Unit!25959)

(declare-fun lemmaEqSameImage!137 (TokenValueInjection!5670 BalanceConc!11008 BalanceConc!11008) Unit!25959)

(assert (=> b!1547818 (= lt!536020 (lemmaEqSameImage!137 (transformation!2915 rule!240) (_1!9200 (_1!9201 lt!536028)) lt!536024))))

(assert (=> b!1547819 (= e!991889 (and e!991891 tp!451270))))

(declare-fun b!1547820 () Bool)

(declare-fun e!991892 () Bool)

(assert (=> b!1547820 (= e!991901 e!991892)))

(declare-fun res!692133 () Bool)

(assert (=> b!1547820 (=> (not res!692133) (not e!991892))))

(declare-fun isEmpty!10060 (BalanceConc!11008) Bool)

(assert (=> b!1547820 (= res!692133 (not (isEmpty!10060 (_1!9200 (_1!9201 lt!536028)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!27 (Regex!4243 BalanceConc!11008 BalanceConc!11008 CacheUp!1000 CacheDown!1008 CacheFurthestNullable!428) tuple4!842)

(assert (=> b!1547820 (= lt!536028 (findLongestMatchWithZipperSequenceV3Mem!27 (regex!2915 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun tp!451260 () Bool)

(declare-fun tp!451273 () Bool)

(declare-fun array_inv!1890 (array!5902) Bool)

(declare-fun array_inv!1891 (array!5908) Bool)

(assert (=> b!1547821 (= e!991888 (and tp!451269 tp!451273 tp!451260 (array_inv!1890 (_keys!2006 (v!23451 (underlying!3633 (v!23452 (underlying!3634 (cache!2037 cacheFurthestNullable!103))))))) (array_inv!1891 (_values!1991 (v!23451 (underlying!3633 (v!23452 (underlying!3634 (cache!2037 cacheFurthestNullable!103))))))) e!991898))))

(declare-fun b!1547822 () Bool)

(declare-fun res!692136 () Bool)

(assert (=> b!1547822 (=> (not res!692136) (not e!991878))))

(declare-datatypes ((LexerInterface!2560 0))(
  ( (LexerInterfaceExt!2557 (__x!10876 Int)) (Lexer!2558) )
))
(declare-fun thiss!16438 () LexerInterface!2560)

(declare-fun ruleValid!664 (LexerInterface!2560 Rule!5630) Bool)

(assert (=> b!1547822 (= res!692136 (ruleValid!664 thiss!16438 rule!240))))

(declare-fun mapNonEmpty!7993 () Bool)

(declare-fun tp!451253 () Bool)

(declare-fun tp!451274 () Bool)

(assert (=> mapNonEmpty!7993 (= mapRes!7992 (and tp!451253 tp!451274))))

(declare-fun mapValue!7992 () List!16702)

(declare-fun mapKey!7993 () (_ BitVec 32))

(declare-fun mapRest!7992 () (Array (_ BitVec 32) List!16702))

(assert (=> mapNonEmpty!7993 (= (arr!2629 (_values!1989 (v!23447 (underlying!3629 (v!23448 (underlying!3630 (cache!2035 cacheDown!768))))))) (store mapRest!7992 mapKey!7993 mapValue!7992))))

(declare-fun e!991887 () Bool)

(assert (=> b!1547823 (= e!991887 (and tp!451259 tp!451272))))

(declare-fun b!1547824 () Bool)

(declare-fun e!991902 () Bool)

(assert (=> b!1547824 (= e!991890 e!991902)))

(declare-fun b!1547825 () Bool)

(declare-fun e!991900 () Bool)

(declare-fun tp!451262 () Bool)

(assert (=> b!1547825 (= e!991900 (and (inv!21897 (c!252157 totalInput!568)) tp!451262))))

(declare-fun mapNonEmpty!7994 () Bool)

(declare-fun tp!451256 () Bool)

(declare-fun tp!451254 () Bool)

(assert (=> mapNonEmpty!7994 (= mapRes!7993 (and tp!451256 tp!451254))))

(declare-fun mapKey!7994 () (_ BitVec 32))

(declare-fun mapValue!7993 () List!16704)

(declare-fun mapRest!7994 () (Array (_ BitVec 32) List!16704))

(assert (=> mapNonEmpty!7994 (= (arr!2631 (_values!1991 (v!23451 (underlying!3633 (v!23452 (underlying!3634 (cache!2037 cacheFurthestNullable!103))))))) (store mapRest!7994 mapKey!7994 mapValue!7993))))

(declare-fun mapIsEmpty!7993 () Bool)

(assert (=> mapIsEmpty!7993 mapRes!7994))

(declare-fun b!1547826 () Bool)

(declare-fun e!991896 () Bool)

(assert (=> b!1547826 (= e!991896 e!991882)))

(declare-fun b!1547827 () Bool)

(declare-fun e!991877 () Bool)

(declare-fun lt!536026 () MutLongMap!1711)

(assert (=> b!1547827 (= e!991894 (and e!991877 ((_ is LongMap!1711) lt!536026)))))

(assert (=> b!1547827 (= lt!536026 (v!23450 (underlying!3632 (cache!2036 cacheUp!755))))))

(declare-fun mapIsEmpty!7994 () Bool)

(assert (=> mapIsEmpty!7994 mapRes!7993))

(declare-fun b!1547828 () Bool)

(declare-fun e!991883 () Bool)

(assert (=> b!1547828 (= e!991902 e!991883)))

(declare-fun b!1547829 () Bool)

(declare-fun lt!536025 () MutLongMap!1712)

(assert (=> b!1547829 (= e!991884 (and e!991896 ((_ is LongMap!1712) lt!536025)))))

(assert (=> b!1547829 (= lt!536025 (v!23452 (underlying!3634 (cache!2037 cacheFurthestNullable!103))))))

(declare-fun res!692135 () Bool)

(assert (=> start!143594 (=> (not res!692135) (not e!991878))))

(assert (=> start!143594 (= res!692135 ((_ is Lexer!2558) thiss!16438))))

(assert (=> start!143594 e!991878))

(declare-fun inv!21898 (BalanceConc!11008) Bool)

(assert (=> start!143594 (and (inv!21898 totalInput!568) e!991900)))

(declare-fun inv!21899 (CacheUp!1000) Bool)

(assert (=> start!143594 (and (inv!21899 cacheUp!755) e!991899)))

(declare-fun e!991875 () Bool)

(declare-fun inv!21900 (CacheFurthestNullable!428) Bool)

(assert (=> start!143594 (and (inv!21900 cacheFurthestNullable!103) e!991875)))

(assert (=> start!143594 (and (inv!21898 input!1676) e!991876)))

(declare-fun e!991897 () Bool)

(assert (=> start!143594 e!991897))

(declare-fun inv!21901 (CacheDown!1008) Bool)

(assert (=> start!143594 (and (inv!21901 cacheDown!768) e!991909)))

(assert (=> start!143594 true))

(declare-fun b!1547830 () Bool)

(declare-fun e!991904 () Bool)

(declare-fun tp!451261 () Bool)

(assert (=> b!1547830 (= e!991904 (and tp!451261 mapRes!7994))))

(declare-fun condMapEmpty!7993 () Bool)

(declare-fun mapDefault!7994 () List!16703)

(assert (=> b!1547830 (= condMapEmpty!7993 (= (arr!2630 (_values!1990 (v!23449 (underlying!3631 (v!23450 (underlying!3632 (cache!2036 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16703)) mapDefault!7994)))))

(declare-fun tp!451268 () Bool)

(declare-fun tp!451271 () Bool)

(declare-fun array_inv!1892 (array!5904) Bool)

(assert (=> b!1547831 (= e!991883 (and tp!451277 tp!451271 tp!451268 (array_inv!1890 (_keys!2004 (v!23447 (underlying!3629 (v!23448 (underlying!3630 (cache!2035 cacheDown!768))))))) (array_inv!1892 (_values!1989 (v!23447 (underlying!3629 (v!23448 (underlying!3630 (cache!2035 cacheDown!768))))))) e!991895))))

(declare-fun b!1547832 () Bool)

(declare-fun e!991903 () Bool)

(declare-datatypes ((tuple2!15884 0))(
  ( (tuple2!15885 (_1!9202 List!16700) (_2!9202 List!16700)) )
))
(declare-fun lt!536031 () tuple2!15884)

(declare-fun matchR!1857 (Regex!4243 List!16700) Bool)

(assert (=> b!1547832 (= e!991903 (matchR!1857 (regex!2915 rule!240) (_1!9202 lt!536031)))))

(declare-fun b!1547833 () Bool)

(assert (=> b!1547833 (= e!991907 e!991906)))

(declare-fun res!692131 () Bool)

(assert (=> b!1547833 (=> res!692131 e!991906)))

(declare-fun lt!536030 () Bool)

(assert (=> b!1547833 (= res!692131 (or (not (= lt!536030 lt!536022)) (not lt!536030)))))

(declare-datatypes ((Token!5434 0))(
  ( (Token!5435 (value!92728 TokenValue!3005) (rule!4707 Rule!5630) (size!13439 Int) (originalCharacters!3748 List!16700)) )
))
(declare-datatypes ((tuple2!15886 0))(
  ( (tuple2!15887 (_1!9203 Token!5434) (_2!9203 List!16700)) )
))
(declare-datatypes ((Option!2997 0))(
  ( (None!2996) (Some!2996 (v!23453 tuple2!15886)) )
))
(declare-fun isDefined!2403 (Option!2997) Bool)

(declare-fun maxPrefixOneRule!684 (LexerInterface!2560 Rule!5630 List!16700) Option!2997)

(assert (=> b!1547833 (= lt!536022 (isDefined!2403 (maxPrefixOneRule!684 thiss!16438 rule!240 lt!536032)))))

(declare-datatypes ((tuple2!15888 0))(
  ( (tuple2!15889 (_1!9204 Token!5434) (_2!9204 BalanceConc!11008)) )
))
(declare-datatypes ((Option!2998 0))(
  ( (None!2997) (Some!2997 (v!23454 tuple2!15888)) )
))
(declare-fun isDefined!2404 (Option!2998) Bool)

(declare-fun size!13440 (BalanceConc!11008) Int)

(assert (=> b!1547833 (= lt!536030 (isDefined!2404 (Some!2997 (tuple2!15889 (Token!5435 lt!536023 rule!240 (size!13440 (_1!9200 (_1!9201 lt!536028))) lt!536035) (_2!9200 (_1!9201 lt!536028))))))))

(assert (=> b!1547833 (= lt!536023 (apply!4091 (transformation!2915 rule!240) (_1!9200 (_1!9201 lt!536028))))))

(declare-fun lt!536029 () Unit!25959)

(declare-fun ForallOf!192 (Int BalanceConc!11008) Unit!25959)

(assert (=> b!1547833 (= lt!536029 (ForallOf!192 lambda!65519 lt!536024))))

(declare-fun seqFromList!1755 (List!16700) BalanceConc!11008)

(assert (=> b!1547833 (= lt!536024 (seqFromList!1755 lt!536035))))

(assert (=> b!1547833 (= lt!536035 (list!6461 (_1!9200 (_1!9201 lt!536028))))))

(declare-fun lt!536034 () Unit!25959)

(assert (=> b!1547833 (= lt!536034 (ForallOf!192 lambda!65519 (_1!9200 (_1!9201 lt!536028))))))

(declare-fun tp!451264 () Bool)

(declare-fun b!1547834 () Bool)

(declare-fun inv!21892 (String!19313) Bool)

(declare-fun inv!21902 (TokenValueInjection!5670) Bool)

(assert (=> b!1547834 (= e!991897 (and tp!451264 (inv!21892 (tag!3179 rule!240)) (inv!21902 (transformation!2915 rule!240)) e!991887))))

(declare-fun b!1547835 () Bool)

(declare-fun res!692134 () Bool)

(assert (=> b!1547835 (=> (not res!692134) (not e!991901))))

(assert (=> b!1547835 (= res!692134 (= (totalInput!2417 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1547836 () Bool)

(declare-fun e!991873 () Bool)

(declare-fun e!991885 () Bool)

(assert (=> b!1547836 (= e!991873 e!991885)))

(declare-fun b!1547837 () Bool)

(declare-fun res!692132 () Bool)

(assert (=> b!1547837 (=> (not res!692132) (not e!991878))))

(declare-fun valid!1378 (CacheFurthestNullable!428) Bool)

(assert (=> b!1547837 (= res!692132 (valid!1378 cacheFurthestNullable!103))))

(declare-fun b!1547838 () Bool)

(assert (=> b!1547838 (= e!991877 e!991873)))

(declare-fun b!1547839 () Bool)

(assert (=> b!1547839 (= e!991875 (and e!991881 (inv!21898 (totalInput!2417 cacheFurthestNullable!103)) e!991886))))

(declare-fun tp!451263 () Bool)

(declare-fun tp!451257 () Bool)

(declare-fun array_inv!1893 (array!5906) Bool)

(assert (=> b!1547840 (= e!991885 (and tp!451258 tp!451263 tp!451257 (array_inv!1890 (_keys!2005 (v!23449 (underlying!3631 (v!23450 (underlying!3632 (cache!2036 cacheUp!755))))))) (array_inv!1893 (_values!1990 (v!23449 (underlying!3631 (v!23450 (underlying!3632 (cache!2036 cacheUp!755))))))) e!991904))))

(declare-fun b!1547841 () Bool)

(assert (=> b!1547841 (= e!991892 (not e!991907))))

(declare-fun res!692124 () Bool)

(assert (=> b!1547841 (=> res!692124 e!991907)))

(declare-fun semiInverseModEq!1097 (Int Int) Bool)

(assert (=> b!1547841 (= res!692124 (not (semiInverseModEq!1097 (toChars!4137 (transformation!2915 rule!240)) (toValue!4278 (transformation!2915 rule!240)))))))

(declare-fun lt!536027 () Unit!25959)

(declare-fun lemmaInv!407 (TokenValueInjection!5670) Unit!25959)

(assert (=> b!1547841 (= lt!536027 (lemmaInv!407 (transformation!2915 rule!240)))))

(assert (=> b!1547841 e!991903))

(declare-fun res!692129 () Bool)

(assert (=> b!1547841 (=> res!692129 e!991903)))

(declare-fun isEmpty!10061 (List!16700) Bool)

(assert (=> b!1547841 (= res!692129 (isEmpty!10061 (_1!9202 lt!536031)))))

(declare-fun findLongestMatchInner!313 (Regex!4243 List!16700 Int List!16700 List!16700 Int) tuple2!15884)

(declare-fun size!13441 (List!16700) Int)

(assert (=> b!1547841 (= lt!536031 (findLongestMatchInner!313 (regex!2915 rule!240) Nil!16632 (size!13441 Nil!16632) lt!536032 lt!536032 (size!13441 lt!536032)))))

(declare-fun lt!536033 () Unit!25959)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!297 (Regex!4243 List!16700) Unit!25959)

(assert (=> b!1547841 (= lt!536033 (longestMatchIsAcceptedByMatchOrIsEmpty!297 (regex!2915 rule!240) lt!536032))))

(declare-fun b!1547842 () Bool)

(declare-fun res!692127 () Bool)

(assert (=> b!1547842 (=> (not res!692127) (not e!991878))))

(declare-fun valid!1379 (CacheDown!1008) Bool)

(assert (=> b!1547842 (= res!692127 (valid!1379 cacheDown!768))))

(declare-fun b!1547843 () Bool)

(declare-fun res!692137 () Bool)

(assert (=> b!1547843 (=> (not res!692137) (not e!991878))))

(declare-fun valid!1380 (CacheUp!1000) Bool)

(assert (=> b!1547843 (= res!692137 (valid!1380 cacheUp!755))))

(assert (= (and start!143594 res!692135) b!1547822))

(assert (= (and b!1547822 res!692136) b!1547843))

(assert (= (and b!1547843 res!692137) b!1547842))

(assert (= (and b!1547842 res!692127) b!1547837))

(assert (= (and b!1547837 res!692132) b!1547804))

(assert (= (and b!1547804 res!692126) b!1547835))

(assert (= (and b!1547835 res!692134) b!1547820))

(assert (= (and b!1547820 res!692133) b!1547841))

(assert (= (and b!1547841 (not res!692129)) b!1547832))

(assert (= (and b!1547841 (not res!692124)) b!1547811))

(assert (= (and b!1547811 (not res!692128)) b!1547833))

(assert (= (and b!1547833 (not res!692131)) b!1547817))

(assert (= (and b!1547817 (not res!692130)) b!1547818))

(assert (= (and b!1547818 (not res!692125)) b!1547805))

(assert (= start!143594 b!1547825))

(assert (= (and b!1547830 condMapEmpty!7993) mapIsEmpty!7993))

(assert (= (and b!1547830 (not condMapEmpty!7993)) mapNonEmpty!7992))

(assert (= b!1547840 b!1547830))

(assert (= b!1547836 b!1547840))

(assert (= b!1547838 b!1547836))

(assert (= (and b!1547827 ((_ is LongMap!1711) (v!23450 (underlying!3632 (cache!2036 cacheUp!755))))) b!1547838))

(assert (= b!1547809 b!1547827))

(assert (= (and b!1547810 ((_ is HashMap!1655) (cache!2036 cacheUp!755))) b!1547809))

(assert (= start!143594 b!1547810))

(assert (= (and b!1547816 condMapEmpty!7994) mapIsEmpty!7994))

(assert (= (and b!1547816 (not condMapEmpty!7994)) mapNonEmpty!7994))

(assert (= b!1547821 b!1547816))

(assert (= b!1547806 b!1547821))

(assert (= b!1547826 b!1547806))

(assert (= (and b!1547829 ((_ is LongMap!1712) (v!23452 (underlying!3634 (cache!2037 cacheFurthestNullable!103))))) b!1547826))

(assert (= b!1547814 b!1547829))

(assert (= (and b!1547839 ((_ is HashMap!1656) (cache!2037 cacheFurthestNullable!103))) b!1547814))

(assert (= b!1547839 b!1547815))

(assert (= start!143594 b!1547839))

(assert (= start!143594 b!1547808))

(assert (= b!1547834 b!1547823))

(assert (= start!143594 b!1547834))

(assert (= (and b!1547807 condMapEmpty!7992) mapIsEmpty!7992))

(assert (= (and b!1547807 (not condMapEmpty!7992)) mapNonEmpty!7993))

(assert (= b!1547831 b!1547807))

(assert (= b!1547828 b!1547831))

(assert (= b!1547824 b!1547828))

(assert (= (and b!1547813 ((_ is LongMap!1710) (v!23448 (underlying!3630 (cache!2035 cacheDown!768))))) b!1547824))

(assert (= b!1547819 b!1547813))

(assert (= (and b!1547812 ((_ is HashMap!1654) (cache!2035 cacheDown!768))) b!1547819))

(assert (= start!143594 b!1547812))

(declare-fun m!1821105 () Bool)

(assert (=> b!1547821 m!1821105))

(declare-fun m!1821107 () Bool)

(assert (=> b!1547821 m!1821107))

(declare-fun m!1821109 () Bool)

(assert (=> b!1547820 m!1821109))

(declare-fun m!1821111 () Bool)

(assert (=> b!1547820 m!1821111))

(declare-fun m!1821113 () Bool)

(assert (=> b!1547834 m!1821113))

(declare-fun m!1821115 () Bool)

(assert (=> b!1547834 m!1821115))

(declare-fun m!1821117 () Bool)

(assert (=> b!1547837 m!1821117))

(declare-fun m!1821119 () Bool)

(assert (=> b!1547817 m!1821119))

(declare-fun m!1821121 () Bool)

(assert (=> b!1547822 m!1821121))

(declare-fun m!1821123 () Bool)

(assert (=> b!1547811 m!1821123))

(declare-fun m!1821125 () Bool)

(assert (=> b!1547843 m!1821125))

(declare-fun m!1821127 () Bool)

(assert (=> b!1547833 m!1821127))

(declare-fun m!1821129 () Bool)

(assert (=> b!1547833 m!1821129))

(declare-fun m!1821131 () Bool)

(assert (=> b!1547833 m!1821131))

(declare-fun m!1821133 () Bool)

(assert (=> b!1547833 m!1821133))

(declare-fun m!1821135 () Bool)

(assert (=> b!1547833 m!1821135))

(declare-fun m!1821137 () Bool)

(assert (=> b!1547833 m!1821137))

(declare-fun m!1821139 () Bool)

(assert (=> b!1547833 m!1821139))

(declare-fun m!1821141 () Bool)

(assert (=> b!1547833 m!1821141))

(declare-fun m!1821143 () Bool)

(assert (=> b!1547833 m!1821143))

(assert (=> b!1547833 m!1821131))

(declare-fun m!1821145 () Bool)

(assert (=> b!1547808 m!1821145))

(declare-fun m!1821147 () Bool)

(assert (=> b!1547818 m!1821147))

(declare-fun m!1821149 () Bool)

(assert (=> b!1547818 m!1821149))

(declare-fun m!1821151 () Bool)

(assert (=> b!1547839 m!1821151))

(declare-fun m!1821153 () Bool)

(assert (=> start!143594 m!1821153))

(declare-fun m!1821155 () Bool)

(assert (=> start!143594 m!1821155))

(declare-fun m!1821157 () Bool)

(assert (=> start!143594 m!1821157))

(declare-fun m!1821159 () Bool)

(assert (=> start!143594 m!1821159))

(declare-fun m!1821161 () Bool)

(assert (=> start!143594 m!1821161))

(declare-fun m!1821163 () Bool)

(assert (=> b!1547804 m!1821163))

(assert (=> b!1547804 m!1821163))

(declare-fun m!1821165 () Bool)

(assert (=> b!1547804 m!1821165))

(declare-fun m!1821167 () Bool)

(assert (=> b!1547804 m!1821167))

(declare-fun m!1821169 () Bool)

(assert (=> b!1547842 m!1821169))

(declare-fun m!1821171 () Bool)

(assert (=> b!1547841 m!1821171))

(declare-fun m!1821173 () Bool)

(assert (=> b!1547841 m!1821173))

(declare-fun m!1821175 () Bool)

(assert (=> b!1547841 m!1821175))

(declare-fun m!1821177 () Bool)

(assert (=> b!1547841 m!1821177))

(declare-fun m!1821179 () Bool)

(assert (=> b!1547841 m!1821179))

(declare-fun m!1821181 () Bool)

(assert (=> b!1547841 m!1821181))

(assert (=> b!1547841 m!1821181))

(assert (=> b!1547841 m!1821177))

(declare-fun m!1821183 () Bool)

(assert (=> b!1547841 m!1821183))

(declare-fun m!1821185 () Bool)

(assert (=> b!1547825 m!1821185))

(declare-fun m!1821187 () Bool)

(assert (=> b!1547831 m!1821187))

(declare-fun m!1821189 () Bool)

(assert (=> b!1547831 m!1821189))

(declare-fun m!1821191 () Bool)

(assert (=> mapNonEmpty!7993 m!1821191))

(declare-fun m!1821193 () Bool)

(assert (=> b!1547840 m!1821193))

(declare-fun m!1821195 () Bool)

(assert (=> b!1547840 m!1821195))

(declare-fun m!1821197 () Bool)

(assert (=> b!1547815 m!1821197))

(declare-fun m!1821199 () Bool)

(assert (=> mapNonEmpty!7992 m!1821199))

(declare-fun m!1821201 () Bool)

(assert (=> mapNonEmpty!7994 m!1821201))

(declare-fun m!1821203 () Bool)

(assert (=> b!1547832 m!1821203))

(check-sat (not mapNonEmpty!7994) (not b!1547842) b_and!107901 (not b!1547839) (not b!1547832) b_and!107899 (not b_next!41521) (not start!143594) (not b!1547830) (not b!1547843) (not b!1547820) (not b!1547804) (not b!1547816) (not mapNonEmpty!7992) b_and!107903 (not b_next!41519) (not b!1547833) (not b_next!41515) (not b!1547807) (not b!1547821) b_and!107893 (not b!1547811) (not b_next!41509) (not b_next!41511) (not b!1547818) (not b_next!41517) (not b_next!41513) b_and!107907 (not b!1547840) (not b!1547815) (not b!1547822) (not b!1547808) (not b!1547841) b_and!107897 (not b!1547837) (not b!1547817) (not b_next!41507) (not b!1547825) (not mapNonEmpty!7993) b_and!107905 b_and!107895 (not b!1547834) (not b!1547831))
(check-sat (not b_next!41515) b_and!107901 b_and!107893 b_and!107899 (not b_next!41521) b_and!107907 b_and!107897 (not b_next!41507) b_and!107903 (not b_next!41519) (not b_next!41509) (not b_next!41511) (not b_next!41517) (not b_next!41513) b_and!107905 b_and!107895)
