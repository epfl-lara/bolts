; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143618 () Bool)

(assert start!143618)

(declare-fun b!1549388 () Bool)

(declare-fun b_free!40995 () Bool)

(declare-fun b_next!41699 () Bool)

(assert (=> b!1549388 (= b_free!40995 (not b_next!41699))))

(declare-fun tp!452245 () Bool)

(declare-fun b_and!108085 () Bool)

(assert (=> b!1549388 (= tp!452245 b_and!108085)))

(declare-fun b!1549367 () Bool)

(declare-fun b_free!40997 () Bool)

(declare-fun b_next!41701 () Bool)

(assert (=> b!1549367 (= b_free!40997 (not b_next!41701))))

(declare-fun tp!452233 () Bool)

(declare-fun b_and!108087 () Bool)

(assert (=> b!1549367 (= tp!452233 b_and!108087)))

(declare-fun b!1549393 () Bool)

(declare-fun b_free!40999 () Bool)

(declare-fun b_next!41703 () Bool)

(assert (=> b!1549393 (= b_free!40999 (not b_next!41703))))

(declare-fun tp!452237 () Bool)

(declare-fun b_and!108089 () Bool)

(assert (=> b!1549393 (= tp!452237 b_and!108089)))

(declare-fun b!1549361 () Bool)

(declare-fun b_free!41001 () Bool)

(declare-fun b_next!41705 () Bool)

(assert (=> b!1549361 (= b_free!41001 (not b_next!41705))))

(declare-fun tp!452236 () Bool)

(declare-fun b_and!108091 () Bool)

(assert (=> b!1549361 (= tp!452236 b_and!108091)))

(declare-fun b_free!41003 () Bool)

(declare-fun b_next!41707 () Bool)

(assert (=> b!1549361 (= b_free!41003 (not b_next!41707))))

(declare-fun tp!452248 () Bool)

(declare-fun b_and!108093 () Bool)

(assert (=> b!1549361 (= tp!452248 b_and!108093)))

(declare-fun b!1549356 () Bool)

(declare-fun b_free!41005 () Bool)

(declare-fun b_next!41709 () Bool)

(assert (=> b!1549356 (= b_free!41005 (not b_next!41709))))

(declare-fun tp!452231 () Bool)

(declare-fun b_and!108095 () Bool)

(assert (=> b!1549356 (= tp!452231 b_and!108095)))

(declare-fun b!1549385 () Bool)

(declare-fun b_free!41007 () Bool)

(declare-fun b_next!41711 () Bool)

(assert (=> b!1549385 (= b_free!41007 (not b_next!41711))))

(declare-fun tp!452239 () Bool)

(declare-fun b_and!108097 () Bool)

(assert (=> b!1549385 (= tp!452239 b_and!108097)))

(declare-fun b!1549363 () Bool)

(declare-fun b_free!41009 () Bool)

(declare-fun b_next!41713 () Bool)

(assert (=> b!1549363 (= b_free!41009 (not b_next!41713))))

(declare-fun tp!452250 () Bool)

(declare-fun b_and!108099 () Bool)

(assert (=> b!1549363 (= tp!452250 b_and!108099)))

(declare-fun b!1549405 () Bool)

(declare-fun e!993325 () Bool)

(assert (=> b!1549405 (= e!993325 true)))

(declare-fun b!1549404 () Bool)

(declare-fun e!993324 () Bool)

(assert (=> b!1549404 (= e!993324 e!993325)))

(declare-fun b!1549371 () Bool)

(assert (=> b!1549371 e!993324))

(assert (= b!1549404 b!1549405))

(assert (= b!1549371 b!1549404))

(declare-datatypes ((List!16765 0))(
  ( (Nil!16697) (Cons!16697 (h!22098 (_ BitVec 16)) (t!141168 List!16765)) )
))
(declare-datatypes ((TokenValue!3017 0))(
  ( (FloatLiteralValue!6034 (text!21564 List!16765)) (TokenValueExt!3016 (__x!10976 Int)) (Broken!15085 (value!93040 List!16765)) (Object!3084) (End!3017) (Def!3017) (Underscore!3017) (Match!3017) (Else!3017) (Error!3017) (Case!3017) (If!3017) (Extends!3017) (Abstract!3017) (Class!3017) (Val!3017) (DelimiterValue!6034 (del!3077 List!16765)) (KeywordValue!3023 (value!93041 List!16765)) (CommentValue!6034 (value!93042 List!16765)) (WhitespaceValue!6034 (value!93043 List!16765)) (IndentationValue!3017 (value!93044 List!16765)) (String!19372) (Int32!3017) (Broken!15086 (value!93045 List!16765)) (Boolean!3018) (Unit!25986) (OperatorValue!3020 (op!3077 List!16765)) (IdentifierValue!6034 (value!93046 List!16765)) (IdentifierValue!6035 (value!93047 List!16765)) (WhitespaceValue!6035 (value!93048 List!16765)) (True!6034) (False!6034) (Broken!15087 (value!93049 List!16765)) (Broken!15088 (value!93050 List!16765)) (True!6035) (RightBrace!3017) (RightBracket!3017) (Colon!3017) (Null!3017) (Comma!3017) (LeftBracket!3017) (False!6035) (LeftBrace!3017) (ImaginaryLiteralValue!3017 (text!21565 List!16765)) (StringLiteralValue!9051 (value!93051 List!16765)) (EOFValue!3017 (value!93052 List!16765)) (IdentValue!3017 (value!93053 List!16765)) (DelimiterValue!6035 (value!93054 List!16765)) (DedentValue!3017 (value!93055 List!16765)) (NewLineValue!3017 (value!93056 List!16765)) (IntegerValue!9051 (value!93057 (_ BitVec 32)) (text!21566 List!16765)) (IntegerValue!9052 (value!93058 Int) (text!21567 List!16765)) (Times!3017) (Or!3017) (Equal!3017) (Minus!3017) (Broken!15089 (value!93059 List!16765)) (And!3017) (Div!3017) (LessEqual!3017) (Mod!3017) (Concat!7272) (Not!3017) (Plus!3017) (SpaceValue!3017 (value!93060 List!16765)) (IntegerValue!9053 (value!93061 Int) (text!21568 List!16765)) (StringLiteralValue!9052 (text!21569 List!16765)) (FloatLiteralValue!6035 (text!21570 List!16765)) (BytesLiteralValue!3017 (value!93062 List!16765)) (CommentValue!6035 (value!93063 List!16765)) (StringLiteralValue!9053 (value!93064 List!16765)) (ErrorTokenValue!3017 (msg!3078 List!16765)) )
))
(declare-datatypes ((C!8688 0))(
  ( (C!8689 (val!4916 Int)) )
))
(declare-datatypes ((List!16766 0))(
  ( (Nil!16698) (Cons!16698 (h!22099 C!8688) (t!141169 List!16766)) )
))
(declare-datatypes ((IArray!11095 0))(
  ( (IArray!11096 (innerList!5605 List!16766)) )
))
(declare-datatypes ((Conc!5545 0))(
  ( (Node!5545 (left!13601 Conc!5545) (right!13931 Conc!5545) (csize!11320 Int) (cheight!5756 Int)) (Leaf!8218 (xs!8345 IArray!11095) (csize!11321 Int)) (Empty!5545) )
))
(declare-datatypes ((BalanceConc!11032 0))(
  ( (BalanceConc!11033 (c!252193 Conc!5545)) )
))
(declare-datatypes ((String!19373 0))(
  ( (String!19374 (value!93065 String)) )
))
(declare-datatypes ((Regex!4255 0))(
  ( (ElementMatch!4255 (c!252194 C!8688)) (Concat!7273 (regOne!9022 Regex!4255) (regTwo!9022 Regex!4255)) (EmptyExpr!4255) (Star!4255 (reg!4584 Regex!4255)) (EmptyLang!4255) (Union!4255 (regOne!9023 Regex!4255) (regTwo!9023 Regex!4255)) )
))
(declare-datatypes ((TokenValueInjection!5694 0))(
  ( (TokenValueInjection!5695 (toValue!4290 Int) (toChars!4149 Int)) )
))
(declare-datatypes ((Rule!5654 0))(
  ( (Rule!5655 (regex!2927 Regex!4255) (tag!3191 String!19373) (isSeparator!2927 Bool) (transformation!2927 TokenValueInjection!5694)) )
))
(declare-fun rule!240 () Rule!5654)

(declare-fun order!9777 () Int)

(declare-fun order!9775 () Int)

(declare-fun lambda!65603 () Int)

(declare-fun dynLambda!7382 (Int Int) Int)

(declare-fun dynLambda!7383 (Int Int) Int)

(assert (=> b!1549405 (< (dynLambda!7382 order!9775 (toValue!4290 (transformation!2927 rule!240))) (dynLambda!7383 order!9777 lambda!65603))))

(declare-fun order!9779 () Int)

(declare-fun dynLambda!7384 (Int Int) Int)

(assert (=> b!1549405 (< (dynLambda!7384 order!9779 (toChars!4149 (transformation!2927 rule!240))) (dynLambda!7383 order!9777 lambda!65603))))

(declare-fun e!993316 () Bool)

(declare-fun e!993314 () Bool)

(assert (=> b!1549356 (= e!993316 (and e!993314 tp!452231))))

(declare-fun b!1549357 () Bool)

(declare-fun e!993298 () Bool)

(declare-fun e!993306 () Bool)

(assert (=> b!1549357 (= e!993298 e!993306)))

(declare-fun b!1549358 () Bool)

(declare-fun res!692654 () Bool)

(declare-fun e!993302 () Bool)

(assert (=> b!1549358 (=> res!692654 e!993302)))

(declare-datatypes ((Token!5450 0))(
  ( (Token!5451 (value!93066 TokenValue!3017) (rule!4715 Rule!5654) (size!13499 Int) (originalCharacters!3756 List!16766)) )
))
(declare-datatypes ((tuple2!16020 0))(
  ( (tuple2!16021 (_1!9296 Token!5450) (_2!9296 BalanceConc!11032)) )
))
(declare-datatypes ((Option!3013 0))(
  ( (None!3012) (Some!3012 (v!23523 tuple2!16020)) )
))
(declare-fun lt!536714 () Option!3013)

(declare-datatypes ((tuple2!16022 0))(
  ( (tuple2!16023 (_1!9297 Token!5450) (_2!9297 List!16766)) )
))
(declare-fun lt!536728 () tuple2!16022)

(declare-fun get!4830 (Option!3013) tuple2!16020)

(assert (=> b!1549358 (= res!692654 (not (= (_1!9296 (get!4830 lt!536714)) (_1!9297 lt!536728))))))

(declare-fun b!1549359 () Bool)

(declare-fun e!993282 () Bool)

(declare-fun e!993292 () Bool)

(assert (=> b!1549359 (= e!993282 e!993292)))

(declare-fun b!1549360 () Bool)

(declare-fun e!993305 () Bool)

(declare-fun e!993307 () Bool)

(assert (=> b!1549360 (= e!993305 (not e!993307))))

(declare-fun res!692651 () Bool)

(assert (=> b!1549360 (=> res!692651 e!993307)))

(declare-fun semiInverseModEq!1103 (Int Int) Bool)

(assert (=> b!1549360 (= res!692651 (not (semiInverseModEq!1103 (toChars!4149 (transformation!2927 rule!240)) (toValue!4290 (transformation!2927 rule!240)))))))

(declare-datatypes ((Unit!25987 0))(
  ( (Unit!25988) )
))
(declare-fun lt!536715 () Unit!25987)

(declare-fun lemmaInv!413 (TokenValueInjection!5694) Unit!25987)

(assert (=> b!1549360 (= lt!536715 (lemmaInv!413 (transformation!2927 rule!240)))))

(declare-fun e!993283 () Bool)

(assert (=> b!1549360 e!993283))

(declare-fun res!692647 () Bool)

(assert (=> b!1549360 (=> res!692647 e!993283)))

(declare-datatypes ((tuple2!16024 0))(
  ( (tuple2!16025 (_1!9298 List!16766) (_2!9298 List!16766)) )
))
(declare-fun lt!536725 () tuple2!16024)

(declare-fun isEmpty!10074 (List!16766) Bool)

(assert (=> b!1549360 (= res!692647 (isEmpty!10074 (_1!9298 lt!536725)))))

(declare-fun lt!536723 () List!16766)

(declare-fun findLongestMatchInner!319 (Regex!4255 List!16766 Int List!16766 List!16766 Int) tuple2!16024)

(declare-fun size!13500 (List!16766) Int)

(assert (=> b!1549360 (= lt!536725 (findLongestMatchInner!319 (regex!2927 rule!240) Nil!16698 (size!13500 Nil!16698) lt!536723 lt!536723 (size!13500 lt!536723)))))

(declare-fun lt!536729 () Unit!25987)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!303 (Regex!4255 List!16766) Unit!25987)

(assert (=> b!1549360 (= lt!536729 (longestMatchIsAcceptedByMatchOrIsEmpty!303 (regex!2927 rule!240) lt!536723))))

(declare-fun e!993293 () Bool)

(assert (=> b!1549361 (= e!993293 (and tp!452236 tp!452248))))

(declare-fun e!993315 () Bool)

(declare-fun b!1549362 () Bool)

(declare-fun tp!452246 () Bool)

(declare-fun inv!21955 (String!19373) Bool)

(declare-fun inv!21956 (TokenValueInjection!5694) Bool)

(assert (=> b!1549362 (= e!993315 (and tp!452246 (inv!21955 (tag!3191 rule!240)) (inv!21956 (transformation!2927 rule!240)) e!993293))))

(declare-fun e!993285 () Bool)

(assert (=> b!1549363 (= e!993292 (and e!993285 tp!452250))))

(declare-fun b!1549364 () Bool)

(declare-fun e!993287 () Bool)

(declare-fun tp!452232 () Bool)

(declare-fun mapRes!8102 () Bool)

(assert (=> b!1549364 (= e!993287 (and tp!452232 mapRes!8102))))

(declare-fun condMapEmpty!8100 () Bool)

(declare-datatypes ((List!16767 0))(
  ( (Nil!16699) (Cons!16699 (h!22100 Regex!4255) (t!141170 List!16767)) )
))
(declare-datatypes ((Context!1546 0))(
  ( (Context!1547 (exprs!1273 List!16767)) )
))
(declare-datatypes ((tuple3!1712 0))(
  ( (tuple3!1713 (_1!9299 Regex!4255) (_2!9299 Context!1546) (_3!1286 C!8688)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16026 0))(
  ( (tuple2!16027 (_1!9300 tuple3!1712) (_2!9300 (InoxSet Context!1546))) )
))
(declare-datatypes ((List!16768 0))(
  ( (Nil!16700) (Cons!16700 (h!22101 tuple2!16026) (t!141171 List!16768)) )
))
(declare-datatypes ((array!5986 0))(
  ( (array!5987 (arr!2670 (Array (_ BitVec 32) (_ BitVec 64))) (size!13501 (_ BitVec 32))) )
))
(declare-datatypes ((array!5988 0))(
  ( (array!5989 (arr!2671 (Array (_ BitVec 32) List!16768)) (size!13502 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3480 0))(
  ( (LongMapFixedSize!3481 (defaultEntry!2100 Int) (mask!4956 (_ BitVec 32)) (extraKeys!1987 (_ BitVec 32)) (zeroValue!1997 List!16768) (minValue!1997 List!16768) (_size!3561 (_ BitVec 32)) (_keys!2034 array!5986) (_values!2019 array!5988) (_vacant!1801 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6845 0))(
  ( (Cell!6846 (v!23524 LongMapFixedSize!3480)) )
))
(declare-datatypes ((MutLongMap!1740 0))(
  ( (LongMap!1740 (underlying!3689 Cell!6845)) (MutLongMapExt!1739 (__x!10977 Int)) )
))
(declare-datatypes ((Cell!6847 0))(
  ( (Cell!6848 (v!23525 MutLongMap!1740)) )
))
(declare-datatypes ((Hashable!1684 0))(
  ( (HashableExt!1683 (__x!10978 Int)) )
))
(declare-datatypes ((MutableMap!1684 0))(
  ( (MutableMapExt!1683 (__x!10979 Int)) (HashMap!1684 (underlying!3690 Cell!6847) (hashF!3603 Hashable!1684) (_size!3562 (_ BitVec 32)) (defaultValue!1844 Int)) )
))
(declare-datatypes ((CacheDown!1028 0))(
  ( (CacheDown!1029 (cache!2065 MutableMap!1684)) )
))
(declare-fun cacheDown!768 () CacheDown!1028)

(declare-fun mapDefault!8102 () List!16768)

(assert (=> b!1549364 (= condMapEmpty!8100 (= (arr!2671 (_values!2019 (v!23524 (underlying!3689 (v!23525 (underlying!3690 (cache!2065 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16768)) mapDefault!8102)))))

(declare-fun b!1549365 () Bool)

(declare-fun lt!536722 () Bool)

(assert (=> b!1549365 (= e!993302 lt!536722)))

(declare-fun b!1549366 () Bool)

(declare-fun matchR!1865 (Regex!4255 List!16766) Bool)

(assert (=> b!1549366 (= e!993283 (matchR!1865 (regex!2927 rule!240) (_1!9298 lt!536725)))))

(declare-fun res!692645 () Bool)

(declare-fun e!993299 () Bool)

(assert (=> start!143618 (=> (not res!692645) (not e!993299))))

(declare-datatypes ((LexerInterface!2568 0))(
  ( (LexerInterfaceExt!2565 (__x!10980 Int)) (Lexer!2566) )
))
(declare-fun thiss!16438 () LexerInterface!2568)

(get-info :version)

(assert (=> start!143618 (= res!692645 ((_ is Lexer!2566) thiss!16438))))

(assert (=> start!143618 e!993299))

(declare-fun totalInput!568 () BalanceConc!11032)

(declare-fun e!993291 () Bool)

(declare-fun inv!21957 (BalanceConc!11032) Bool)

(assert (=> start!143618 (and (inv!21957 totalInput!568) e!993291)))

(declare-datatypes ((tuple2!16028 0))(
  ( (tuple2!16029 (_1!9301 Context!1546) (_2!9301 C!8688)) )
))
(declare-datatypes ((tuple2!16030 0))(
  ( (tuple2!16031 (_1!9302 tuple2!16028) (_2!9302 (InoxSet Context!1546))) )
))
(declare-datatypes ((List!16769 0))(
  ( (Nil!16701) (Cons!16701 (h!22102 tuple2!16030) (t!141172 List!16769)) )
))
(declare-datatypes ((array!5990 0))(
  ( (array!5991 (arr!2672 (Array (_ BitVec 32) List!16769)) (size!13503 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1685 0))(
  ( (HashableExt!1684 (__x!10981 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3482 0))(
  ( (LongMapFixedSize!3483 (defaultEntry!2101 Int) (mask!4957 (_ BitVec 32)) (extraKeys!1988 (_ BitVec 32)) (zeroValue!1998 List!16769) (minValue!1998 List!16769) (_size!3563 (_ BitVec 32)) (_keys!2035 array!5986) (_values!2020 array!5990) (_vacant!1802 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6849 0))(
  ( (Cell!6850 (v!23526 LongMapFixedSize!3482)) )
))
(declare-datatypes ((MutLongMap!1741 0))(
  ( (LongMap!1741 (underlying!3691 Cell!6849)) (MutLongMapExt!1740 (__x!10982 Int)) )
))
(declare-datatypes ((Cell!6851 0))(
  ( (Cell!6852 (v!23527 MutLongMap!1741)) )
))
(declare-datatypes ((MutableMap!1685 0))(
  ( (MutableMapExt!1684 (__x!10983 Int)) (HashMap!1685 (underlying!3692 Cell!6851) (hashF!3604 Hashable!1685) (_size!3564 (_ BitVec 32)) (defaultValue!1845 Int)) )
))
(declare-datatypes ((CacheUp!1020 0))(
  ( (CacheUp!1021 (cache!2066 MutableMap!1685)) )
))
(declare-fun cacheUp!755 () CacheUp!1020)

(declare-fun e!993284 () Bool)

(declare-fun inv!21958 (CacheUp!1020) Bool)

(assert (=> start!143618 (and (inv!21958 cacheUp!755) e!993284)))

(declare-datatypes ((tuple3!1714 0))(
  ( (tuple3!1715 (_1!9303 (InoxSet Context!1546)) (_2!9303 Int) (_3!1287 Int)) )
))
(declare-datatypes ((tuple2!16032 0))(
  ( (tuple2!16033 (_1!9304 tuple3!1714) (_2!9304 Int)) )
))
(declare-datatypes ((List!16770 0))(
  ( (Nil!16702) (Cons!16702 (h!22103 tuple2!16032) (t!141173 List!16770)) )
))
(declare-datatypes ((array!5992 0))(
  ( (array!5993 (arr!2673 (Array (_ BitVec 32) List!16770)) (size!13504 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3484 0))(
  ( (LongMapFixedSize!3485 (defaultEntry!2102 Int) (mask!4958 (_ BitVec 32)) (extraKeys!1989 (_ BitVec 32)) (zeroValue!1999 List!16770) (minValue!1999 List!16770) (_size!3565 (_ BitVec 32)) (_keys!2036 array!5986) (_values!2021 array!5992) (_vacant!1803 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6853 0))(
  ( (Cell!6854 (v!23528 LongMapFixedSize!3484)) )
))
(declare-datatypes ((Hashable!1686 0))(
  ( (HashableExt!1685 (__x!10984 Int)) )
))
(declare-datatypes ((MutLongMap!1742 0))(
  ( (LongMap!1742 (underlying!3693 Cell!6853)) (MutLongMapExt!1741 (__x!10985 Int)) )
))
(declare-datatypes ((Cell!6855 0))(
  ( (Cell!6856 (v!23529 MutLongMap!1742)) )
))
(declare-datatypes ((MutableMap!1686 0))(
  ( (MutableMapExt!1685 (__x!10986 Int)) (HashMap!1686 (underlying!3694 Cell!6855) (hashF!3605 Hashable!1686) (_size!3566 (_ BitVec 32)) (defaultValue!1846 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!448 0))(
  ( (CacheFurthestNullable!449 (cache!2067 MutableMap!1686) (totalInput!2427 BalanceConc!11032)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!448)

(declare-fun e!993309 () Bool)

(declare-fun inv!21959 (CacheFurthestNullable!448) Bool)

(assert (=> start!143618 (and (inv!21959 cacheFurthestNullable!103) e!993309)))

(declare-fun input!1676 () BalanceConc!11032)

(declare-fun e!993318 () Bool)

(assert (=> start!143618 (and (inv!21957 input!1676) e!993318)))

(assert (=> start!143618 e!993315))

(declare-fun inv!21960 (CacheDown!1028) Bool)

(assert (=> start!143618 (and (inv!21960 cacheDown!768) e!993282)))

(assert (=> start!143618 true))

(declare-fun e!993319 () Bool)

(declare-fun tp!452229 () Bool)

(declare-fun tp!452241 () Bool)

(declare-fun e!993311 () Bool)

(declare-fun array_inv!1918 (array!5986) Bool)

(declare-fun array_inv!1919 (array!5990) Bool)

(assert (=> b!1549367 (= e!993311 (and tp!452233 tp!452229 tp!452241 (array_inv!1918 (_keys!2035 (v!23526 (underlying!3691 (v!23527 (underlying!3692 (cache!2066 cacheUp!755))))))) (array_inv!1919 (_values!2020 (v!23526 (underlying!3691 (v!23527 (underlying!3692 (cache!2066 cacheUp!755))))))) e!993319))))

(declare-fun b!1549368 () Bool)

(declare-fun e!993310 () Bool)

(declare-fun lt!536727 () MutLongMap!1740)

(assert (=> b!1549368 (= e!993285 (and e!993310 ((_ is LongMap!1740) lt!536727)))))

(assert (=> b!1549368 (= lt!536727 (v!23525 (underlying!3690 (cache!2065 cacheDown!768))))))

(declare-fun b!1549369 () Bool)

(declare-fun res!692646 () Bool)

(assert (=> b!1549369 (=> (not res!692646) (not e!993299))))

(declare-fun valid!1400 (CacheFurthestNullable!448) Bool)

(assert (=> b!1549369 (= res!692646 (valid!1400 cacheFurthestNullable!103))))

(declare-fun b!1549370 () Bool)

(declare-fun e!993297 () Bool)

(assert (=> b!1549370 (= e!993299 e!993297)))

(declare-fun res!692648 () Bool)

(assert (=> b!1549370 (=> (not res!692648) (not e!993297))))

(declare-fun isSuffix!362 (List!16766 List!16766) Bool)

(declare-fun list!6470 (BalanceConc!11032) List!16766)

(assert (=> b!1549370 (= res!692648 (isSuffix!362 lt!536723 (list!6470 totalInput!568)))))

(assert (=> b!1549370 (= lt!536723 (list!6470 input!1676))))

(declare-fun res!692657 () Bool)

(assert (=> b!1549371 (=> res!692657 e!993307)))

(declare-fun Forall!599 (Int) Bool)

(assert (=> b!1549371 (= res!692657 (not (Forall!599 lambda!65603)))))

(declare-fun mapNonEmpty!8100 () Bool)

(declare-fun mapRes!8100 () Bool)

(declare-fun tp!452228 () Bool)

(declare-fun tp!452240 () Bool)

(assert (=> mapNonEmpty!8100 (= mapRes!8100 (and tp!452228 tp!452240))))

(declare-fun mapKey!8100 () (_ BitVec 32))

(declare-fun mapRest!8100 () (Array (_ BitVec 32) List!16769))

(declare-fun mapValue!8102 () List!16769)

(assert (=> mapNonEmpty!8100 (= (arr!2672 (_values!2020 (v!23526 (underlying!3691 (v!23527 (underlying!3692 (cache!2066 cacheUp!755))))))) (store mapRest!8100 mapKey!8100 mapValue!8102))))

(declare-fun b!1549372 () Bool)

(declare-fun e!993303 () Bool)

(assert (=> b!1549372 (= e!993303 e!993311)))

(declare-fun b!1549373 () Bool)

(declare-fun tp!452226 () Bool)

(declare-fun inv!21961 (Conc!5545) Bool)

(assert (=> b!1549373 (= e!993318 (and (inv!21961 (c!252193 input!1676)) tp!452226))))

(declare-fun b!1549374 () Bool)

(declare-fun e!993313 () Bool)

(declare-fun e!993294 () Bool)

(declare-fun lt!536719 () MutLongMap!1741)

(assert (=> b!1549374 (= e!993313 (and e!993294 ((_ is LongMap!1741) lt!536719)))))

(assert (=> b!1549374 (= lt!536719 (v!23527 (underlying!3692 (cache!2066 cacheUp!755))))))

(declare-fun b!1549375 () Bool)

(declare-fun res!692655 () Bool)

(assert (=> b!1549375 (=> (not res!692655) (not e!993299))))

(declare-fun ruleValid!671 (LexerInterface!2568 Rule!5654) Bool)

(assert (=> b!1549375 (= res!692655 (ruleValid!671 thiss!16438 rule!240))))

(declare-fun b!1549376 () Bool)

(declare-fun e!993295 () Bool)

(assert (=> b!1549376 (= e!993310 e!993295)))

(declare-fun mapIsEmpty!8100 () Bool)

(assert (=> mapIsEmpty!8100 mapRes!8102))

(declare-fun b!1549377 () Bool)

(declare-fun res!692653 () Bool)

(assert (=> b!1549377 (=> (not res!692653) (not e!993299))))

(declare-fun valid!1401 (CacheDown!1028) Bool)

(assert (=> b!1549377 (= res!692653 (valid!1401 cacheDown!768))))

(declare-fun e!993301 () Bool)

(declare-fun b!1549378 () Bool)

(assert (=> b!1549378 (= e!993309 (and e!993316 (inv!21957 (totalInput!2427 cacheFurthestNullable!103)) e!993301))))

(declare-fun b!1549379 () Bool)

(declare-fun e!993286 () Bool)

(assert (=> b!1549379 (= e!993307 e!993286)))

(declare-fun res!692644 () Bool)

(assert (=> b!1549379 (=> res!692644 e!993286)))

(declare-fun lt!536730 () Bool)

(assert (=> b!1549379 (= res!692644 (or (not (= lt!536730 lt!536722)) (not lt!536730)))))

(declare-datatypes ((Option!3014 0))(
  ( (None!3013) (Some!3013 (v!23530 tuple2!16022)) )
))
(declare-fun lt!536721 () Option!3014)

(declare-fun isDefined!2419 (Option!3014) Bool)

(assert (=> b!1549379 (= lt!536722 (isDefined!2419 lt!536721))))

(declare-fun isDefined!2420 (Option!3013) Bool)

(assert (=> b!1549379 (= lt!536730 (isDefined!2420 lt!536714))))

(declare-fun maxPrefixOneRule!692 (LexerInterface!2568 Rule!5654 List!16766) Option!3014)

(assert (=> b!1549379 (= lt!536721 (maxPrefixOneRule!692 thiss!16438 rule!240 lt!536723))))

(declare-fun lt!536717 () Token!5450)

(declare-datatypes ((tuple2!16034 0))(
  ( (tuple2!16035 (_1!9305 BalanceConc!11032) (_2!9305 BalanceConc!11032)) )
))
(declare-datatypes ((tuple4!860 0))(
  ( (tuple4!861 (_1!9306 tuple2!16034) (_2!9306 CacheUp!1020) (_3!1288 CacheDown!1028) (_4!430 CacheFurthestNullable!448)) )
))
(declare-fun lt!536712 () tuple4!860)

(assert (=> b!1549379 (= lt!536714 (Some!3012 (tuple2!16021 lt!536717 (_2!9305 (_1!9306 lt!536712)))))))

(declare-fun lt!536718 () Int)

(declare-fun lt!536711 () List!16766)

(declare-fun lt!536716 () TokenValue!3017)

(assert (=> b!1549379 (= lt!536717 (Token!5451 lt!536716 rule!240 lt!536718 lt!536711))))

(declare-fun size!13505 (BalanceConc!11032) Int)

(assert (=> b!1549379 (= lt!536718 (size!13505 (_1!9305 (_1!9306 lt!536712))))))

(declare-fun apply!4099 (TokenValueInjection!5694 BalanceConc!11032) TokenValue!3017)

(assert (=> b!1549379 (= lt!536716 (apply!4099 (transformation!2927 rule!240) (_1!9305 (_1!9306 lt!536712))))))

(declare-fun lt!536731 () Unit!25987)

(declare-fun lt!536724 () BalanceConc!11032)

(declare-fun ForallOf!200 (Int BalanceConc!11032) Unit!25987)

(assert (=> b!1549379 (= lt!536731 (ForallOf!200 lambda!65603 lt!536724))))

(declare-fun seqFromList!1763 (List!16766) BalanceConc!11032)

(assert (=> b!1549379 (= lt!536724 (seqFromList!1763 lt!536711))))

(assert (=> b!1549379 (= lt!536711 (list!6470 (_1!9305 (_1!9306 lt!536712))))))

(declare-fun lt!536726 () Unit!25987)

(assert (=> b!1549379 (= lt!536726 (ForallOf!200 lambda!65603 (_1!9305 (_1!9306 lt!536712))))))

(declare-fun b!1549380 () Bool)

(assert (=> b!1549380 (= e!993294 e!993303)))

(declare-fun mapNonEmpty!8101 () Bool)

(declare-fun mapRes!8101 () Bool)

(declare-fun tp!452235 () Bool)

(declare-fun tp!452225 () Bool)

(assert (=> mapNonEmpty!8101 (= mapRes!8101 (and tp!452235 tp!452225))))

(declare-fun mapValue!8100 () List!16770)

(declare-fun mapRest!8101 () (Array (_ BitVec 32) List!16770))

(declare-fun mapKey!8101 () (_ BitVec 32))

(assert (=> mapNonEmpty!8101 (= (arr!2673 (_values!2021 (v!23528 (underlying!3693 (v!23529 (underlying!3694 (cache!2067 cacheFurthestNullable!103))))))) (store mapRest!8101 mapKey!8101 mapValue!8100))))

(declare-fun mapIsEmpty!8101 () Bool)

(assert (=> mapIsEmpty!8101 mapRes!8100))

(declare-fun b!1549381 () Bool)

(declare-fun e!993312 () Bool)

(assert (=> b!1549381 (= e!993295 e!993312)))

(declare-fun b!1549382 () Bool)

(declare-fun res!692656 () Bool)

(assert (=> b!1549382 (=> (not res!692656) (not e!993297))))

(assert (=> b!1549382 (= res!692656 (= (totalInput!2427 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1549383 () Bool)

(declare-fun e!993290 () Bool)

(assert (=> b!1549383 (= e!993306 e!993290)))

(declare-fun b!1549384 () Bool)

(declare-fun res!692658 () Bool)

(assert (=> b!1549384 (=> res!692658 e!993286)))

(assert (=> b!1549384 (= res!692658 (not (= (list!6470 lt!536724) lt!536711)))))

(declare-fun mapNonEmpty!8102 () Bool)

(declare-fun tp!452224 () Bool)

(declare-fun tp!452249 () Bool)

(assert (=> mapNonEmpty!8102 (= mapRes!8102 (and tp!452224 tp!452249))))

(declare-fun mapValue!8101 () List!16768)

(declare-fun mapKey!8102 () (_ BitVec 32))

(declare-fun mapRest!8102 () (Array (_ BitVec 32) List!16768))

(assert (=> mapNonEmpty!8102 (= (arr!2671 (_values!2019 (v!23524 (underlying!3689 (v!23525 (underlying!3690 (cache!2065 cacheDown!768))))))) (store mapRest!8102 mapKey!8102 mapValue!8101))))

(declare-fun tp!452238 () Bool)

(declare-fun e!993300 () Bool)

(declare-fun tp!452247 () Bool)

(declare-fun array_inv!1920 (array!5992) Bool)

(assert (=> b!1549385 (= e!993290 (and tp!452239 tp!452238 tp!452247 (array_inv!1918 (_keys!2036 (v!23528 (underlying!3693 (v!23529 (underlying!3694 (cache!2067 cacheFurthestNullable!103))))))) (array_inv!1920 (_values!2021 (v!23528 (underlying!3693 (v!23529 (underlying!3694 (cache!2067 cacheFurthestNullable!103))))))) e!993300))))

(declare-fun b!1549386 () Bool)

(declare-fun tp!452234 () Bool)

(assert (=> b!1549386 (= e!993301 (and (inv!21961 (c!252193 (totalInput!2427 cacheFurthestNullable!103))) tp!452234))))

(declare-fun b!1549387 () Bool)

(declare-fun tp!452242 () Bool)

(assert (=> b!1549387 (= e!993291 (and (inv!21961 (c!252193 totalInput!568)) tp!452242))))

(declare-fun e!993289 () Bool)

(assert (=> b!1549388 (= e!993289 (and e!993313 tp!452245))))

(declare-fun b!1549389 () Bool)

(assert (=> b!1549389 (= e!993284 e!993289)))

(declare-fun mapIsEmpty!8102 () Bool)

(assert (=> mapIsEmpty!8102 mapRes!8101))

(declare-fun b!1549390 () Bool)

(declare-fun tp!452243 () Bool)

(assert (=> b!1549390 (= e!993300 (and tp!452243 mapRes!8101))))

(declare-fun condMapEmpty!8101 () Bool)

(declare-fun mapDefault!8100 () List!16770)

(assert (=> b!1549390 (= condMapEmpty!8101 (= (arr!2673 (_values!2021 (v!23528 (underlying!3693 (v!23529 (underlying!3694 (cache!2067 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16770)) mapDefault!8100)))))

(declare-fun b!1549391 () Bool)

(declare-fun res!692650 () Bool)

(assert (=> b!1549391 (=> (not res!692650) (not e!993299))))

(declare-fun valid!1402 (CacheUp!1020) Bool)

(assert (=> b!1549391 (= res!692650 (valid!1402 cacheUp!755))))

(declare-fun b!1549392 () Bool)

(declare-fun lt!536713 () MutLongMap!1742)

(assert (=> b!1549392 (= e!993314 (and e!993298 ((_ is LongMap!1742) lt!536713)))))

(assert (=> b!1549392 (= lt!536713 (v!23529 (underlying!3694 (cache!2067 cacheFurthestNullable!103))))))

(declare-fun tp!452244 () Bool)

(declare-fun tp!452230 () Bool)

(declare-fun array_inv!1921 (array!5988) Bool)

(assert (=> b!1549393 (= e!993312 (and tp!452237 tp!452230 tp!452244 (array_inv!1918 (_keys!2034 (v!23524 (underlying!3689 (v!23525 (underlying!3690 (cache!2065 cacheDown!768))))))) (array_inv!1921 (_values!2019 (v!23524 (underlying!3689 (v!23525 (underlying!3690 (cache!2065 cacheDown!768))))))) e!993287))))

(declare-fun b!1549394 () Bool)

(assert (=> b!1549394 (= e!993297 e!993305)))

(declare-fun res!692659 () Bool)

(assert (=> b!1549394 (=> (not res!692659) (not e!993305))))

(declare-fun isEmpty!10075 (BalanceConc!11032) Bool)

(assert (=> b!1549394 (= res!692659 (not (isEmpty!10075 (_1!9305 (_1!9306 lt!536712)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!35 (Regex!4255 BalanceConc!11032 BalanceConc!11032 CacheUp!1020 CacheDown!1028 CacheFurthestNullable!448) tuple4!860)

(assert (=> b!1549394 (= lt!536712 (findLongestMatchWithZipperSequenceV3Mem!35 (regex!2927 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1549395 () Bool)

(declare-fun e!993317 () Bool)

(assert (=> b!1549395 (= e!993317 e!993302)))

(declare-fun res!692649 () Bool)

(assert (=> b!1549395 (=> res!692649 e!993302)))

(assert (=> b!1549395 (= res!692649 (or (not (= (value!93066 (_1!9297 lt!536728)) lt!536716)) (not (= (rule!4715 (_1!9297 lt!536728)) rule!240)) (not (= (size!13499 (_1!9297 lt!536728)) lt!536718)) (not (= (originalCharacters!3756 (_1!9297 lt!536728)) lt!536711)) (not (= lt!536717 (_1!9297 lt!536728)))))))

(declare-fun get!4831 (Option!3014) tuple2!16022)

(assert (=> b!1549395 (= lt!536728 (get!4831 lt!536721))))

(declare-fun b!1549396 () Bool)

(assert (=> b!1549396 (= e!993286 e!993317)))

(declare-fun res!692652 () Bool)

(assert (=> b!1549396 (=> res!692652 e!993317)))

(assert (=> b!1549396 (= res!692652 (not (= (apply!4099 (transformation!2927 rule!240) lt!536724) lt!536716)))))

(declare-fun lt!536720 () Unit!25987)

(declare-fun lemmaEqSameImage!143 (TokenValueInjection!5694 BalanceConc!11032 BalanceConc!11032) Unit!25987)

(assert (=> b!1549396 (= lt!536720 (lemmaEqSameImage!143 (transformation!2927 rule!240) (_1!9305 (_1!9306 lt!536712)) lt!536724))))

(declare-fun b!1549397 () Bool)

(declare-fun tp!452227 () Bool)

(assert (=> b!1549397 (= e!993319 (and tp!452227 mapRes!8100))))

(declare-fun condMapEmpty!8102 () Bool)

(declare-fun mapDefault!8101 () List!16769)

(assert (=> b!1549397 (= condMapEmpty!8102 (= (arr!2672 (_values!2020 (v!23526 (underlying!3691 (v!23527 (underlying!3692 (cache!2066 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16769)) mapDefault!8101)))))

(assert (= (and start!143618 res!692645) b!1549375))

(assert (= (and b!1549375 res!692655) b!1549391))

(assert (= (and b!1549391 res!692650) b!1549377))

(assert (= (and b!1549377 res!692653) b!1549369))

(assert (= (and b!1549369 res!692646) b!1549370))

(assert (= (and b!1549370 res!692648) b!1549382))

(assert (= (and b!1549382 res!692656) b!1549394))

(assert (= (and b!1549394 res!692659) b!1549360))

(assert (= (and b!1549360 (not res!692647)) b!1549366))

(assert (= (and b!1549360 (not res!692651)) b!1549371))

(assert (= (and b!1549371 (not res!692657)) b!1549379))

(assert (= (and b!1549379 (not res!692644)) b!1549384))

(assert (= (and b!1549384 (not res!692658)) b!1549396))

(assert (= (and b!1549396 (not res!692652)) b!1549395))

(assert (= (and b!1549395 (not res!692649)) b!1549358))

(assert (= (and b!1549358 (not res!692654)) b!1549365))

(assert (= start!143618 b!1549387))

(assert (= (and b!1549397 condMapEmpty!8102) mapIsEmpty!8101))

(assert (= (and b!1549397 (not condMapEmpty!8102)) mapNonEmpty!8100))

(assert (= b!1549367 b!1549397))

(assert (= b!1549372 b!1549367))

(assert (= b!1549380 b!1549372))

(assert (= (and b!1549374 ((_ is LongMap!1741) (v!23527 (underlying!3692 (cache!2066 cacheUp!755))))) b!1549380))

(assert (= b!1549388 b!1549374))

(assert (= (and b!1549389 ((_ is HashMap!1685) (cache!2066 cacheUp!755))) b!1549388))

(assert (= start!143618 b!1549389))

(assert (= (and b!1549390 condMapEmpty!8101) mapIsEmpty!8102))

(assert (= (and b!1549390 (not condMapEmpty!8101)) mapNonEmpty!8101))

(assert (= b!1549385 b!1549390))

(assert (= b!1549383 b!1549385))

(assert (= b!1549357 b!1549383))

(assert (= (and b!1549392 ((_ is LongMap!1742) (v!23529 (underlying!3694 (cache!2067 cacheFurthestNullable!103))))) b!1549357))

(assert (= b!1549356 b!1549392))

(assert (= (and b!1549378 ((_ is HashMap!1686) (cache!2067 cacheFurthestNullable!103))) b!1549356))

(assert (= b!1549378 b!1549386))

(assert (= start!143618 b!1549378))

(assert (= start!143618 b!1549373))

(assert (= b!1549362 b!1549361))

(assert (= start!143618 b!1549362))

(assert (= (and b!1549364 condMapEmpty!8100) mapIsEmpty!8100))

(assert (= (and b!1549364 (not condMapEmpty!8100)) mapNonEmpty!8102))

(assert (= b!1549393 b!1549364))

(assert (= b!1549381 b!1549393))

(assert (= b!1549376 b!1549381))

(assert (= (and b!1549368 ((_ is LongMap!1740) (v!23525 (underlying!3690 (cache!2065 cacheDown!768))))) b!1549376))

(assert (= b!1549363 b!1549368))

(assert (= (and b!1549359 ((_ is HashMap!1684) (cache!2065 cacheDown!768))) b!1549363))

(assert (= start!143618 b!1549359))

(declare-fun m!1822329 () Bool)

(assert (=> b!1549369 m!1822329))

(declare-fun m!1822331 () Bool)

(assert (=> b!1549378 m!1822331))

(declare-fun m!1822333 () Bool)

(assert (=> b!1549386 m!1822333))

(declare-fun m!1822335 () Bool)

(assert (=> b!1549371 m!1822335))

(declare-fun m!1822337 () Bool)

(assert (=> b!1549362 m!1822337))

(declare-fun m!1822339 () Bool)

(assert (=> b!1549362 m!1822339))

(declare-fun m!1822341 () Bool)

(assert (=> b!1549366 m!1822341))

(declare-fun m!1822343 () Bool)

(assert (=> b!1549394 m!1822343))

(declare-fun m!1822345 () Bool)

(assert (=> b!1549394 m!1822345))

(declare-fun m!1822347 () Bool)

(assert (=> b!1549395 m!1822347))

(declare-fun m!1822349 () Bool)

(assert (=> b!1549387 m!1822349))

(declare-fun m!1822351 () Bool)

(assert (=> b!1549384 m!1822351))

(declare-fun m!1822353 () Bool)

(assert (=> b!1549385 m!1822353))

(declare-fun m!1822355 () Bool)

(assert (=> b!1549385 m!1822355))

(declare-fun m!1822357 () Bool)

(assert (=> b!1549370 m!1822357))

(assert (=> b!1549370 m!1822357))

(declare-fun m!1822359 () Bool)

(assert (=> b!1549370 m!1822359))

(declare-fun m!1822361 () Bool)

(assert (=> b!1549370 m!1822361))

(declare-fun m!1822363 () Bool)

(assert (=> b!1549377 m!1822363))

(declare-fun m!1822365 () Bool)

(assert (=> b!1549375 m!1822365))

(declare-fun m!1822367 () Bool)

(assert (=> mapNonEmpty!8101 m!1822367))

(declare-fun m!1822369 () Bool)

(assert (=> mapNonEmpty!8100 m!1822369))

(declare-fun m!1822371 () Bool)

(assert (=> start!143618 m!1822371))

(declare-fun m!1822373 () Bool)

(assert (=> start!143618 m!1822373))

(declare-fun m!1822375 () Bool)

(assert (=> start!143618 m!1822375))

(declare-fun m!1822377 () Bool)

(assert (=> start!143618 m!1822377))

(declare-fun m!1822379 () Bool)

(assert (=> start!143618 m!1822379))

(declare-fun m!1822381 () Bool)

(assert (=> mapNonEmpty!8102 m!1822381))

(declare-fun m!1822383 () Bool)

(assert (=> b!1549358 m!1822383))

(declare-fun m!1822385 () Bool)

(assert (=> b!1549379 m!1822385))

(declare-fun m!1822387 () Bool)

(assert (=> b!1549379 m!1822387))

(declare-fun m!1822389 () Bool)

(assert (=> b!1549379 m!1822389))

(declare-fun m!1822391 () Bool)

(assert (=> b!1549379 m!1822391))

(declare-fun m!1822393 () Bool)

(assert (=> b!1549379 m!1822393))

(declare-fun m!1822395 () Bool)

(assert (=> b!1549379 m!1822395))

(declare-fun m!1822397 () Bool)

(assert (=> b!1549379 m!1822397))

(declare-fun m!1822399 () Bool)

(assert (=> b!1549379 m!1822399))

(declare-fun m!1822401 () Bool)

(assert (=> b!1549379 m!1822401))

(declare-fun m!1822403 () Bool)

(assert (=> b!1549396 m!1822403))

(declare-fun m!1822405 () Bool)

(assert (=> b!1549396 m!1822405))

(declare-fun m!1822407 () Bool)

(assert (=> b!1549393 m!1822407))

(declare-fun m!1822409 () Bool)

(assert (=> b!1549393 m!1822409))

(declare-fun m!1822411 () Bool)

(assert (=> b!1549391 m!1822411))

(declare-fun m!1822413 () Bool)

(assert (=> b!1549360 m!1822413))

(declare-fun m!1822415 () Bool)

(assert (=> b!1549360 m!1822415))

(assert (=> b!1549360 m!1822413))

(declare-fun m!1822417 () Bool)

(assert (=> b!1549360 m!1822417))

(declare-fun m!1822419 () Bool)

(assert (=> b!1549360 m!1822419))

(declare-fun m!1822421 () Bool)

(assert (=> b!1549360 m!1822421))

(assert (=> b!1549360 m!1822415))

(declare-fun m!1822423 () Bool)

(assert (=> b!1549360 m!1822423))

(declare-fun m!1822425 () Bool)

(assert (=> b!1549360 m!1822425))

(declare-fun m!1822427 () Bool)

(assert (=> b!1549367 m!1822427))

(declare-fun m!1822429 () Bool)

(assert (=> b!1549367 m!1822429))

(declare-fun m!1822431 () Bool)

(assert (=> b!1549373 m!1822431))

(check-sat b_and!108089 (not b!1549390) (not b!1549366) (not b!1549396) (not b_next!41705) (not b!1549387) b_and!108095 (not b!1549394) (not b!1549362) (not b!1549384) (not b!1549386) (not mapNonEmpty!8101) (not b_next!41709) (not b!1549367) b_and!108087 (not b!1549397) (not b!1549358) (not b!1549395) (not b!1549371) (not b!1549391) b_and!108091 (not b_next!41707) b_and!108097 (not b_next!41703) (not b!1549364) b_and!108093 (not b!1549378) (not start!143618) (not b_next!41701) (not b_next!41713) b_and!108085 (not mapNonEmpty!8102) (not mapNonEmpty!8100) (not b!1549385) (not b_next!41711) (not b_next!41699) (not b!1549393) (not b!1549373) (not b!1549369) (not b!1549370) (not b!1549379) (not b!1549377) b_and!108099 (not b!1549360) (not b!1549375))
(check-sat (not b_next!41709) b_and!108089 b_and!108087 (not b_next!41705) b_and!108095 (not b_next!41711) (not b_next!41699) b_and!108099 b_and!108091 (not b_next!41707) b_and!108097 (not b_next!41703) b_and!108093 (not b_next!41701) (not b_next!41713) b_and!108085)
