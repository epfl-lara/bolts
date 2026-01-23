; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66020 () Bool)

(assert start!66020)

(declare-fun b!689998 () Bool)

(declare-fun b_free!19433 () Bool)

(declare-fun b_next!19497 () Bool)

(assert (=> b!689998 (= b_free!19433 (not b_next!19497))))

(declare-fun tp!206952 () Bool)

(declare-fun b_and!63227 () Bool)

(assert (=> b!689998 (= tp!206952 b_and!63227)))

(declare-fun b!689996 () Bool)

(declare-fun b_free!19435 () Bool)

(declare-fun b_next!19499 () Bool)

(assert (=> b!689996 (= b_free!19435 (not b_next!19499))))

(declare-fun tp!206965 () Bool)

(declare-fun b_and!63229 () Bool)

(assert (=> b!689996 (= tp!206965 b_and!63229)))

(declare-fun b!689992 () Bool)

(declare-fun b_free!19437 () Bool)

(declare-fun b_next!19501 () Bool)

(assert (=> b!689992 (= b_free!19437 (not b_next!19501))))

(declare-fun tp!206963 () Bool)

(declare-fun b_and!63231 () Bool)

(assert (=> b!689992 (= tp!206963 b_and!63231)))

(declare-fun b!689983 () Bool)

(declare-fun b_free!19439 () Bool)

(declare-fun b_next!19503 () Bool)

(assert (=> b!689983 (= b_free!19439 (not b_next!19503))))

(declare-fun tp!206962 () Bool)

(declare-fun b_and!63233 () Bool)

(assert (=> b!689983 (= tp!206962 b_and!63233)))

(declare-fun b!690006 () Bool)

(declare-fun b_free!19441 () Bool)

(declare-fun b_next!19505 () Bool)

(assert (=> b!690006 (= b_free!19441 (not b_next!19505))))

(declare-fun tp!206948 () Bool)

(declare-fun b_and!63235 () Bool)

(assert (=> b!690006 (= tp!206948 b_and!63235)))

(declare-fun b_free!19443 () Bool)

(declare-fun b_next!19507 () Bool)

(assert (=> b!690006 (= b_free!19443 (not b_next!19507))))

(declare-fun tp!206954 () Bool)

(declare-fun b_and!63237 () Bool)

(assert (=> b!690006 (= tp!206954 b_and!63237)))

(declare-fun b!689997 () Bool)

(declare-fun b_free!19445 () Bool)

(declare-fun b_next!19509 () Bool)

(assert (=> b!689997 (= b_free!19445 (not b_next!19509))))

(declare-fun tp!206966 () Bool)

(declare-fun b_and!63239 () Bool)

(assert (=> b!689997 (= tp!206966 b_and!63239)))

(declare-fun b!690000 () Bool)

(declare-fun b_free!19447 () Bool)

(declare-fun b_next!19511 () Bool)

(assert (=> b!690000 (= b_free!19447 (not b_next!19511))))

(declare-fun tp!206946 () Bool)

(declare-fun b_and!63241 () Bool)

(assert (=> b!690000 (= tp!206946 b_and!63241)))

(declare-fun b!689979 () Bool)

(declare-fun res!313222 () Bool)

(declare-fun e!433727 () Bool)

(assert (=> b!689979 (=> (not res!313222) (not e!433727))))

(declare-datatypes ((LexerInterface!1302 0))(
  ( (LexerInterfaceExt!1299 (__x!5289 Int)) (Lexer!1300) )
))
(declare-fun thiss!12183 () LexerInterface!1302)

(declare-datatypes ((C!4252 0))(
  ( (C!4253 (val!2356 Int)) )
))
(declare-datatypes ((Regex!1825 0))(
  ( (ElementMatch!1825 (c!121523 C!4252)) (Concat!3356 (regOne!4162 Regex!1825) (regTwo!4162 Regex!1825)) (EmptyExpr!1825) (Star!1825 (reg!2154 Regex!1825)) (EmptyLang!1825) (Union!1825 (regOne!4163 Regex!1825) (regTwo!4163 Regex!1825)) )
))
(declare-datatypes ((String!9378 0))(
  ( (String!9379 (value!48022 String)) )
))
(declare-datatypes ((List!7406 0))(
  ( (Nil!7392) (Cons!7392 (h!12793 (_ BitVec 16)) (t!87222 List!7406)) )
))
(declare-datatypes ((TokenValue!1531 0))(
  ( (FloatLiteralValue!3062 (text!11162 List!7406)) (TokenValueExt!1530 (__x!5290 Int)) (Broken!7655 (value!48023 List!7406)) (Object!1544) (End!1531) (Def!1531) (Underscore!1531) (Match!1531) (Else!1531) (Error!1531) (Case!1531) (If!1531) (Extends!1531) (Abstract!1531) (Class!1531) (Val!1531) (DelimiterValue!3062 (del!1591 List!7406)) (KeywordValue!1537 (value!48024 List!7406)) (CommentValue!3062 (value!48025 List!7406)) (WhitespaceValue!3062 (value!48026 List!7406)) (IndentationValue!1531 (value!48027 List!7406)) (String!9380) (Int32!1531) (Broken!7656 (value!48028 List!7406)) (Boolean!1532) (Unit!12625) (OperatorValue!1534 (op!1591 List!7406)) (IdentifierValue!3062 (value!48029 List!7406)) (IdentifierValue!3063 (value!48030 List!7406)) (WhitespaceValue!3063 (value!48031 List!7406)) (True!3062) (False!3062) (Broken!7657 (value!48032 List!7406)) (Broken!7658 (value!48033 List!7406)) (True!3063) (RightBrace!1531) (RightBracket!1531) (Colon!1531) (Null!1531) (Comma!1531) (LeftBracket!1531) (False!3063) (LeftBrace!1531) (ImaginaryLiteralValue!1531 (text!11163 List!7406)) (StringLiteralValue!4593 (value!48034 List!7406)) (EOFValue!1531 (value!48035 List!7406)) (IdentValue!1531 (value!48036 List!7406)) (DelimiterValue!3063 (value!48037 List!7406)) (DedentValue!1531 (value!48038 List!7406)) (NewLineValue!1531 (value!48039 List!7406)) (IntegerValue!4593 (value!48040 (_ BitVec 32)) (text!11164 List!7406)) (IntegerValue!4594 (value!48041 Int) (text!11165 List!7406)) (Times!1531) (Or!1531) (Equal!1531) (Minus!1531) (Broken!7659 (value!48042 List!7406)) (And!1531) (Div!1531) (LessEqual!1531) (Mod!1531) (Concat!3357) (Not!1531) (Plus!1531) (SpaceValue!1531 (value!48043 List!7406)) (IntegerValue!4595 (value!48044 Int) (text!11166 List!7406)) (StringLiteralValue!4594 (text!11167 List!7406)) (FloatLiteralValue!3063 (text!11168 List!7406)) (BytesLiteralValue!1531 (value!48045 List!7406)) (CommentValue!3063 (value!48046 List!7406)) (StringLiteralValue!4595 (value!48047 List!7406)) (ErrorTokenValue!1531 (msg!1592 List!7406)) )
))
(declare-datatypes ((List!7407 0))(
  ( (Nil!7393) (Cons!7393 (h!12794 C!4252) (t!87223 List!7407)) )
))
(declare-datatypes ((IArray!5237 0))(
  ( (IArray!5238 (innerList!2676 List!7407)) )
))
(declare-datatypes ((Conc!2618 0))(
  ( (Node!2618 (left!5961 Conc!2618) (right!6291 Conc!2618) (csize!5466 Int) (cheight!2829 Int)) (Leaf!3884 (xs!5269 IArray!5237) (csize!5467 Int)) (Empty!2618) )
))
(declare-datatypes ((BalanceConc!5248 0))(
  ( (BalanceConc!5249 (c!121524 Conc!2618)) )
))
(declare-datatypes ((TokenValueInjection!2798 0))(
  ( (TokenValueInjection!2799 (toValue!2447 Int) (toChars!2306 Int)) )
))
(declare-datatypes ((Rule!2774 0))(
  ( (Rule!2775 (regex!1487 Regex!1825) (tag!1749 String!9378) (isSeparator!1487 Bool) (transformation!1487 TokenValueInjection!2798)) )
))
(declare-datatypes ((List!7408 0))(
  ( (Nil!7394) (Cons!7394 (h!12795 Rule!2774) (t!87224 List!7408)) )
))
(declare-fun rules!1357 () List!7408)

(declare-fun rulesInvariant!1236 (LexerInterface!1302 List!7408) Bool)

(assert (=> b!689979 (= res!313222 (rulesInvariant!1236 thiss!12183 rules!1357))))

(declare-fun b!689980 () Bool)

(declare-fun e!433720 () Bool)

(declare-fun input!756 () BalanceConc!5248)

(declare-fun tp!206968 () Bool)

(declare-fun inv!9497 (Conc!2618) Bool)

(assert (=> b!689980 (= e!433720 (and (inv!9497 (c!121524 input!756)) tp!206968))))

(declare-fun b!689981 () Bool)

(declare-fun res!313230 () Bool)

(assert (=> b!689981 (=> (not res!313230) (not e!433727))))

(declare-datatypes ((Hashable!715 0))(
  ( (HashableExt!714 (__x!5291 Int)) )
))
(declare-datatypes ((List!7409 0))(
  ( (Nil!7395) (Cons!7395 (h!12796 Regex!1825) (t!87225 List!7409)) )
))
(declare-datatypes ((Context!470 0))(
  ( (Context!471 (exprs!735 List!7409)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7768 0))(
  ( (tuple2!7769 (_1!4283 (InoxSet Context!470)) (_2!4283 Int)) )
))
(declare-datatypes ((array!2805 0))(
  ( (array!2806 (arr!1266 (Array (_ BitVec 32) (_ BitVec 64))) (size!6073 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!7770 0))(
  ( (tuple2!7771 (_1!4284 tuple2!7768) (_2!4284 Int)) )
))
(declare-datatypes ((List!7410 0))(
  ( (Nil!7396) (Cons!7396 (h!12797 tuple2!7770) (t!87226 List!7410)) )
))
(declare-datatypes ((array!2807 0))(
  ( (array!2808 (arr!1267 (Array (_ BitVec 32) List!7410)) (size!6074 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1486 0))(
  ( (LongMapFixedSize!1487 (defaultEntry!1099 Int) (mask!2540 (_ BitVec 32)) (extraKeys!990 (_ BitVec 32)) (zeroValue!1000 List!7410) (minValue!1000 List!7410) (_size!1595 (_ BitVec 32)) (_keys!1037 array!2805) (_values!1022 array!2807) (_vacant!804 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2913 0))(
  ( (Cell!2914 (v!17604 LongMapFixedSize!1486)) )
))
(declare-datatypes ((MutLongMap!743 0))(
  ( (LongMap!743 (underlying!1669 Cell!2913)) (MutLongMapExt!742 (__x!5292 Int)) )
))
(declare-datatypes ((Cell!2915 0))(
  ( (Cell!2916 (v!17605 MutLongMap!743)) )
))
(declare-datatypes ((MutableMap!715 0))(
  ( (MutableMapExt!714 (__x!5293 Int)) (HashMap!715 (underlying!1670 Cell!2915) (hashF!2623 Hashable!715) (_size!1596 (_ BitVec 32)) (defaultValue!866 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!24 0))(
  ( (CacheFindLongestMatch!25 (cache!1102 MutableMap!715) (totalInput!1791 BalanceConc!5248)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!24)

(assert (=> b!689981 (= res!313230 (= (totalInput!1791 cacheFindLongestMatch!59) input!756))))

(declare-fun b!689982 () Bool)

(declare-fun e!433707 () Bool)

(declare-fun e!433709 () Bool)

(declare-datatypes ((tuple3!696 0))(
  ( (tuple3!697 (_1!4285 Regex!1825) (_2!4285 Context!470) (_3!399 C!4252)) )
))
(declare-datatypes ((tuple2!7772 0))(
  ( (tuple2!7773 (_1!4286 tuple3!696) (_2!4286 (InoxSet Context!470))) )
))
(declare-datatypes ((List!7411 0))(
  ( (Nil!7397) (Cons!7397 (h!12798 tuple2!7772) (t!87227 List!7411)) )
))
(declare-datatypes ((array!2809 0))(
  ( (array!2810 (arr!1268 (Array (_ BitVec 32) List!7411)) (size!6075 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1488 0))(
  ( (LongMapFixedSize!1489 (defaultEntry!1100 Int) (mask!2541 (_ BitVec 32)) (extraKeys!991 (_ BitVec 32)) (zeroValue!1001 List!7411) (minValue!1001 List!7411) (_size!1597 (_ BitVec 32)) (_keys!1038 array!2805) (_values!1023 array!2809) (_vacant!805 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2917 0))(
  ( (Cell!2918 (v!17606 LongMapFixedSize!1488)) )
))
(declare-datatypes ((MutLongMap!744 0))(
  ( (LongMap!744 (underlying!1671 Cell!2917)) (MutLongMapExt!743 (__x!5294 Int)) )
))
(declare-fun lt!284406 () MutLongMap!744)

(get-info :version)

(assert (=> b!689982 (= e!433707 (and e!433709 ((_ is LongMap!744) lt!284406)))))

(declare-datatypes ((Cell!2919 0))(
  ( (Cell!2920 (v!17607 MutLongMap!744)) )
))
(declare-datatypes ((Hashable!716 0))(
  ( (HashableExt!715 (__x!5295 Int)) )
))
(declare-datatypes ((MutableMap!716 0))(
  ( (MutableMapExt!715 (__x!5296 Int)) (HashMap!716 (underlying!1672 Cell!2919) (hashF!2624 Hashable!716) (_size!1598 (_ BitVec 32)) (defaultValue!867 Int)) )
))
(declare-datatypes ((CacheDown!368 0))(
  ( (CacheDown!369 (cache!1103 MutableMap!716)) )
))
(declare-fun cacheDown!470 () CacheDown!368)

(assert (=> b!689982 (= lt!284406 (v!17607 (underlying!1672 (cache!1103 cacheDown!470))))))

(declare-fun e!433726 () Bool)

(assert (=> b!689983 (= e!433726 (and e!433707 tp!206962))))

(declare-fun b!689984 () Bool)

(declare-fun e!433712 () Bool)

(declare-fun e!433738 () Bool)

(assert (=> b!689984 (= e!433712 e!433738)))

(declare-fun res!313225 () Bool)

(assert (=> b!689984 (=> (not res!313225) (not e!433738))))

(declare-datatypes ((Token!2684 0))(
  ( (Token!2685 (value!48048 TokenValue!1531) (rule!2531 Rule!2774) (size!6076 Int) (originalCharacters!1767 List!7407)) )
))
(declare-datatypes ((List!7412 0))(
  ( (Nil!7398) (Cons!7398 (h!12799 Token!2684) (t!87228 List!7412)) )
))
(declare-datatypes ((IArray!5239 0))(
  ( (IArray!5240 (innerList!2677 List!7412)) )
))
(declare-datatypes ((Conc!2619 0))(
  ( (Node!2619 (left!5962 Conc!2619) (right!6292 Conc!2619) (csize!5468 Int) (cheight!2830 Int)) (Leaf!3885 (xs!5270 IArray!5239) (csize!5469 Int)) (Empty!2619) )
))
(declare-datatypes ((BalanceConc!5250 0))(
  ( (BalanceConc!5251 (c!121525 Conc!2619)) )
))
(declare-datatypes ((tuple2!7774 0))(
  ( (tuple2!7775 (_1!4287 BalanceConc!5250) (_2!4287 BalanceConc!5248)) )
))
(declare-fun lt!284410 () tuple2!7774)

(declare-fun list!3120 (BalanceConc!5250) List!7412)

(assert (=> b!689984 (= res!313225 (= (list!3120 (_1!4287 lt!284410)) (list!3120 (BalanceConc!5251 Empty!2619))))))

(declare-fun lexRec!153 (LexerInterface!1302 List!7408 BalanceConc!5248) tuple2!7774)

(assert (=> b!689984 (= lt!284410 (lexRec!153 thiss!12183 rules!1357 (BalanceConc!5249 Empty!2618)))))

(declare-fun b!689985 () Bool)

(declare-fun res!313228 () Bool)

(assert (=> b!689985 (=> (not res!313228) (not e!433727))))

(declare-datatypes ((tuple2!7776 0))(
  ( (tuple2!7777 (_1!4288 Context!470) (_2!4288 C!4252)) )
))
(declare-datatypes ((tuple2!7778 0))(
  ( (tuple2!7779 (_1!4289 tuple2!7776) (_2!4289 (InoxSet Context!470))) )
))
(declare-datatypes ((List!7413 0))(
  ( (Nil!7399) (Cons!7399 (h!12800 tuple2!7778) (t!87229 List!7413)) )
))
(declare-datatypes ((array!2811 0))(
  ( (array!2812 (arr!1269 (Array (_ BitVec 32) List!7413)) (size!6077 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1490 0))(
  ( (LongMapFixedSize!1491 (defaultEntry!1101 Int) (mask!2542 (_ BitVec 32)) (extraKeys!992 (_ BitVec 32)) (zeroValue!1002 List!7413) (minValue!1002 List!7413) (_size!1599 (_ BitVec 32)) (_keys!1039 array!2805) (_values!1024 array!2811) (_vacant!806 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2921 0))(
  ( (Cell!2922 (v!17608 LongMapFixedSize!1490)) )
))
(declare-datatypes ((MutLongMap!745 0))(
  ( (LongMap!745 (underlying!1673 Cell!2921)) (MutLongMapExt!744 (__x!5297 Int)) )
))
(declare-datatypes ((Cell!2923 0))(
  ( (Cell!2924 (v!17609 MutLongMap!745)) )
))
(declare-datatypes ((Hashable!717 0))(
  ( (HashableExt!716 (__x!5298 Int)) )
))
(declare-datatypes ((MutableMap!717 0))(
  ( (MutableMapExt!716 (__x!5299 Int)) (HashMap!717 (underlying!1674 Cell!2923) (hashF!2625 Hashable!717) (_size!1600 (_ BitVec 32)) (defaultValue!868 Int)) )
))
(declare-datatypes ((CacheUp!364 0))(
  ( (CacheUp!365 (cache!1104 MutableMap!717)) )
))
(declare-fun cacheUp!457 () CacheUp!364)

(declare-fun valid!633 (CacheUp!364) Bool)

(assert (=> b!689985 (= res!313228 (valid!633 cacheUp!457))))

(declare-fun b!689986 () Bool)

(assert (=> b!689986 (= e!433727 e!433712)))

(declare-fun res!313221 () Bool)

(assert (=> b!689986 (=> (not res!313221) (not e!433712))))

(declare-fun lt!284403 () List!7407)

(declare-fun lt!284405 () List!7407)

(declare-fun ++!1941 (List!7407 List!7407) List!7407)

(assert (=> b!689986 (= res!313221 (= lt!284403 (++!1941 lt!284405 lt!284403)))))

(declare-fun list!3121 (BalanceConc!5248) List!7407)

(assert (=> b!689986 (= lt!284403 (list!3121 input!756))))

(assert (=> b!689986 (= lt!284405 (list!3121 (BalanceConc!5249 Empty!2618)))))

(declare-fun b!689987 () Bool)

(declare-fun e!433735 () Bool)

(assert (=> b!689987 (= e!433709 e!433735)))

(declare-fun b!689988 () Bool)

(declare-fun e!433731 () Bool)

(declare-fun e!433734 () Bool)

(declare-fun lt!284407 () MutLongMap!743)

(assert (=> b!689988 (= e!433731 (and e!433734 ((_ is LongMap!743) lt!284407)))))

(assert (=> b!689988 (= lt!284407 (v!17605 (underlying!1670 (cache!1102 cacheFindLongestMatch!59))))))

(declare-fun mapNonEmpty!2996 () Bool)

(declare-fun mapRes!2997 () Bool)

(declare-fun tp!206950 () Bool)

(declare-fun tp!206958 () Bool)

(assert (=> mapNonEmpty!2996 (= mapRes!2997 (and tp!206950 tp!206958))))

(declare-fun mapKey!2996 () (_ BitVec 32))

(declare-fun mapRest!2997 () (Array (_ BitVec 32) List!7413))

(declare-fun mapValue!2998 () List!7413)

(assert (=> mapNonEmpty!2996 (= (arr!1269 (_values!1024 (v!17608 (underlying!1673 (v!17609 (underlying!1674 (cache!1104 cacheUp!457))))))) (store mapRest!2997 mapKey!2996 mapValue!2998))))

(declare-fun b!689989 () Bool)

(declare-fun res!313224 () Bool)

(assert (=> b!689989 (=> (not res!313224) (not e!433727))))

(declare-fun valid!634 (CacheDown!368) Bool)

(assert (=> b!689989 (= res!313224 (valid!634 cacheDown!470))))

(declare-fun b!689990 () Bool)

(declare-fun e!433725 () Bool)

(assert (=> b!689990 (= e!433725 e!433726)))

(declare-fun b!689991 () Bool)

(declare-fun e!433739 () Bool)

(assert (=> b!689991 (= e!433734 e!433739)))

(declare-fun tp!206960 () Bool)

(declare-fun e!433708 () Bool)

(declare-fun e!433729 () Bool)

(declare-fun tp!206970 () Bool)

(declare-fun array_inv!924 (array!2805) Bool)

(declare-fun array_inv!925 (array!2811) Bool)

(assert (=> b!689992 (= e!433708 (and tp!206963 tp!206970 tp!206960 (array_inv!924 (_keys!1039 (v!17608 (underlying!1673 (v!17609 (underlying!1674 (cache!1104 cacheUp!457))))))) (array_inv!925 (_values!1024 (v!17608 (underlying!1673 (v!17609 (underlying!1674 (cache!1104 cacheUp!457))))))) e!433729))))

(declare-fun b!689993 () Bool)

(declare-fun e!433733 () Bool)

(declare-fun e!433722 () Bool)

(declare-fun tp!206964 () Bool)

(assert (=> b!689993 (= e!433733 (and e!433722 tp!206964))))

(declare-fun res!313227 () Bool)

(assert (=> start!66020 (=> (not res!313227) (not e!433727))))

(assert (=> start!66020 (= res!313227 ((_ is Lexer!1300) thiss!12183))))

(assert (=> start!66020 e!433727))

(declare-fun e!433714 () Bool)

(declare-fun inv!9498 (CacheFindLongestMatch!24) Bool)

(assert (=> start!66020 (and (inv!9498 cacheFindLongestMatch!59) e!433714)))

(declare-fun inv!9499 (BalanceConc!5248) Bool)

(assert (=> start!66020 (and (inv!9499 input!756) e!433720)))

(declare-fun e!433724 () Bool)

(declare-fun inv!9500 (CacheUp!364) Bool)

(assert (=> start!66020 (and (inv!9500 cacheUp!457) e!433724)))

(declare-fun inv!9501 (CacheDown!368) Bool)

(assert (=> start!66020 (and (inv!9501 cacheDown!470) e!433725)))

(assert (=> start!66020 true))

(assert (=> start!66020 e!433733))

(declare-fun tp!206945 () Bool)

(declare-fun e!433718 () Bool)

(declare-fun b!689994 () Bool)

(declare-fun inv!9496 (String!9378) Bool)

(declare-fun inv!9502 (TokenValueInjection!2798) Bool)

(assert (=> b!689994 (= e!433722 (and tp!206945 (inv!9496 (tag!1749 (h!12795 rules!1357))) (inv!9502 (transformation!1487 (h!12795 rules!1357))) e!433718))))

(declare-fun b!689995 () Bool)

(declare-fun e!433721 () Bool)

(declare-fun e!433732 () Bool)

(assert (=> b!689995 (= e!433714 (and e!433721 (inv!9499 (totalInput!1791 cacheFindLongestMatch!59)) e!433732))))

(declare-fun mapNonEmpty!2997 () Bool)

(declare-fun mapRes!2996 () Bool)

(declare-fun tp!206956 () Bool)

(declare-fun tp!206947 () Bool)

(assert (=> mapNonEmpty!2997 (= mapRes!2996 (and tp!206956 tp!206947))))

(declare-fun mapRest!2998 () (Array (_ BitVec 32) List!7410))

(declare-fun mapKey!2997 () (_ BitVec 32))

(declare-fun mapValue!2997 () List!7410)

(assert (=> mapNonEmpty!2997 (= (arr!1267 (_values!1022 (v!17604 (underlying!1669 (v!17605 (underlying!1670 (cache!1102 cacheFindLongestMatch!59))))))) (store mapRest!2998 mapKey!2997 mapValue!2997))))

(declare-fun e!433736 () Bool)

(declare-fun e!433730 () Bool)

(assert (=> b!689996 (= e!433736 (and e!433730 tp!206965))))

(declare-fun e!433717 () Bool)

(declare-fun tp!206969 () Bool)

(declare-fun tp!206951 () Bool)

(declare-fun e!433713 () Bool)

(declare-fun array_inv!926 (array!2809) Bool)

(assert (=> b!689997 (= e!433717 (and tp!206966 tp!206951 tp!206969 (array_inv!924 (_keys!1038 (v!17606 (underlying!1671 (v!17607 (underlying!1672 (cache!1103 cacheDown!470))))))) (array_inv!926 (_values!1023 (v!17606 (underlying!1671 (v!17607 (underlying!1672 (cache!1103 cacheDown!470))))))) e!433713))))

(declare-fun mapIsEmpty!2996 () Bool)

(assert (=> mapIsEmpty!2996 mapRes!2996))

(assert (=> b!689998 (= e!433721 (and e!433731 tp!206952))))

(declare-fun mapIsEmpty!2997 () Bool)

(assert (=> mapIsEmpty!2997 mapRes!2997))

(declare-fun b!689999 () Bool)

(assert (=> b!689999 (= e!433735 e!433717)))

(declare-fun e!433706 () Bool)

(declare-fun tp!206959 () Bool)

(declare-fun e!433711 () Bool)

(declare-fun tp!206957 () Bool)

(declare-fun array_inv!927 (array!2807) Bool)

(assert (=> b!690000 (= e!433706 (and tp!206946 tp!206959 tp!206957 (array_inv!924 (_keys!1037 (v!17604 (underlying!1669 (v!17605 (underlying!1670 (cache!1102 cacheFindLongestMatch!59))))))) (array_inv!927 (_values!1022 (v!17604 (underlying!1669 (v!17605 (underlying!1670 (cache!1102 cacheFindLongestMatch!59))))))) e!433711))))

(declare-fun b!690001 () Bool)

(declare-fun res!313229 () Bool)

(assert (=> b!690001 (=> (not res!313229) (not e!433738))))

(declare-fun isEmpty!4856 (List!7407) Bool)

(assert (=> b!690001 (= res!313229 (isEmpty!4856 (list!3121 (_2!4287 lt!284410))))))

(declare-fun b!690002 () Bool)

(declare-fun tp!206953 () Bool)

(assert (=> b!690002 (= e!433711 (and tp!206953 mapRes!2996))))

(declare-fun condMapEmpty!2998 () Bool)

(declare-fun mapDefault!2997 () List!7410)

(assert (=> b!690002 (= condMapEmpty!2998 (= (arr!1267 (_values!1022 (v!17604 (underlying!1669 (v!17605 (underlying!1670 (cache!1102 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7410)) mapDefault!2997)))))

(declare-fun b!690003 () Bool)

(declare-fun e!433716 () Bool)

(declare-fun e!433715 () Bool)

(assert (=> b!690003 (= e!433716 e!433715)))

(declare-fun b!690004 () Bool)

(declare-fun tp!206944 () Bool)

(assert (=> b!690004 (= e!433732 (and (inv!9497 (c!121524 (totalInput!1791 cacheFindLongestMatch!59))) tp!206944))))

(declare-fun mapNonEmpty!2998 () Bool)

(declare-fun mapRes!2998 () Bool)

(declare-fun tp!206967 () Bool)

(declare-fun tp!206961 () Bool)

(assert (=> mapNonEmpty!2998 (= mapRes!2998 (and tp!206967 tp!206961))))

(declare-fun mapValue!2996 () List!7411)

(declare-fun mapRest!2996 () (Array (_ BitVec 32) List!7411))

(declare-fun mapKey!2998 () (_ BitVec 32))

(assert (=> mapNonEmpty!2998 (= (arr!1268 (_values!1023 (v!17606 (underlying!1671 (v!17607 (underlying!1672 (cache!1103 cacheDown!470))))))) (store mapRest!2996 mapKey!2998 mapValue!2996))))

(declare-fun b!690005 () Bool)

(assert (=> b!690005 (= e!433739 e!433706)))

(assert (=> b!690006 (= e!433718 (and tp!206948 tp!206954))))

(declare-fun b!690007 () Bool)

(declare-fun res!313226 () Bool)

(assert (=> b!690007 (=> (not res!313226) (not e!433727))))

(declare-fun isEmpty!4857 (List!7408) Bool)

(assert (=> b!690007 (= res!313226 (not (isEmpty!4857 rules!1357)))))

(declare-fun mapIsEmpty!2998 () Bool)

(assert (=> mapIsEmpty!2998 mapRes!2998))

(declare-fun b!690008 () Bool)

(assert (=> b!690008 (= e!433715 e!433708)))

(declare-fun b!690009 () Bool)

(declare-fun e!433719 () Bool)

(assert (=> b!690009 (= e!433719 false)))

(declare-fun lt!284409 () List!7407)

(declare-fun lt!284404 () tuple2!7774)

(assert (=> b!690009 (= lt!284409 (list!3121 (_2!4287 lt!284404)))))

(declare-fun b!690010 () Bool)

(declare-fun lt!284408 () MutLongMap!745)

(assert (=> b!690010 (= e!433730 (and e!433716 ((_ is LongMap!745) lt!284408)))))

(assert (=> b!690010 (= lt!284408 (v!17609 (underlying!1674 (cache!1104 cacheUp!457))))))

(declare-fun b!690011 () Bool)

(declare-fun res!313223 () Bool)

(assert (=> b!690011 (=> (not res!313223) (not e!433727))))

(declare-fun valid!635 (CacheFindLongestMatch!24) Bool)

(assert (=> b!690011 (= res!313223 (valid!635 cacheFindLongestMatch!59))))

(declare-fun b!690012 () Bool)

(declare-fun tp!206949 () Bool)

(assert (=> b!690012 (= e!433713 (and tp!206949 mapRes!2998))))

(declare-fun condMapEmpty!2997 () Bool)

(declare-fun mapDefault!2998 () List!7411)

(assert (=> b!690012 (= condMapEmpty!2997 (= (arr!1268 (_values!1023 (v!17606 (underlying!1671 (v!17607 (underlying!1672 (cache!1103 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7411)) mapDefault!2998)))))

(declare-fun b!690013 () Bool)

(assert (=> b!690013 (= e!433738 e!433719)))

(declare-fun res!313220 () Bool)

(assert (=> b!690013 (=> (not res!313220) (not e!433719))))

(declare-fun ++!1942 (BalanceConc!5250 BalanceConc!5250) BalanceConc!5250)

(assert (=> b!690013 (= res!313220 (= (list!3120 (_1!4287 lt!284404)) (list!3120 (++!1942 (BalanceConc!5251 Empty!2619) (_1!4287 lt!284404)))))))

(assert (=> b!690013 (= lt!284404 (lexRec!153 thiss!12183 rules!1357 input!756))))

(declare-fun b!690014 () Bool)

(declare-fun tp!206955 () Bool)

(assert (=> b!690014 (= e!433729 (and tp!206955 mapRes!2997))))

(declare-fun condMapEmpty!2996 () Bool)

(declare-fun mapDefault!2996 () List!7413)

(assert (=> b!690014 (= condMapEmpty!2996 (= (arr!1269 (_values!1024 (v!17608 (underlying!1673 (v!17609 (underlying!1674 (cache!1104 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7413)) mapDefault!2996)))))

(declare-fun b!690015 () Bool)

(assert (=> b!690015 (= e!433724 e!433736)))

(assert (= (and start!66020 res!313227) b!690007))

(assert (= (and b!690007 res!313226) b!689979))

(assert (= (and b!689979 res!313222) b!689985))

(assert (= (and b!689985 res!313228) b!689989))

(assert (= (and b!689989 res!313224) b!690011))

(assert (= (and b!690011 res!313223) b!689981))

(assert (= (and b!689981 res!313230) b!689986))

(assert (= (and b!689986 res!313221) b!689984))

(assert (= (and b!689984 res!313225) b!690001))

(assert (= (and b!690001 res!313229) b!690013))

(assert (= (and b!690013 res!313220) b!690009))

(assert (= (and b!690002 condMapEmpty!2998) mapIsEmpty!2996))

(assert (= (and b!690002 (not condMapEmpty!2998)) mapNonEmpty!2997))

(assert (= b!690000 b!690002))

(assert (= b!690005 b!690000))

(assert (= b!689991 b!690005))

(assert (= (and b!689988 ((_ is LongMap!743) (v!17605 (underlying!1670 (cache!1102 cacheFindLongestMatch!59))))) b!689991))

(assert (= b!689998 b!689988))

(assert (= (and b!689995 ((_ is HashMap!715) (cache!1102 cacheFindLongestMatch!59))) b!689998))

(assert (= b!689995 b!690004))

(assert (= start!66020 b!689995))

(assert (= start!66020 b!689980))

(assert (= (and b!690014 condMapEmpty!2996) mapIsEmpty!2997))

(assert (= (and b!690014 (not condMapEmpty!2996)) mapNonEmpty!2996))

(assert (= b!689992 b!690014))

(assert (= b!690008 b!689992))

(assert (= b!690003 b!690008))

(assert (= (and b!690010 ((_ is LongMap!745) (v!17609 (underlying!1674 (cache!1104 cacheUp!457))))) b!690003))

(assert (= b!689996 b!690010))

(assert (= (and b!690015 ((_ is HashMap!717) (cache!1104 cacheUp!457))) b!689996))

(assert (= start!66020 b!690015))

(assert (= (and b!690012 condMapEmpty!2997) mapIsEmpty!2998))

(assert (= (and b!690012 (not condMapEmpty!2997)) mapNonEmpty!2998))

(assert (= b!689997 b!690012))

(assert (= b!689999 b!689997))

(assert (= b!689987 b!689999))

(assert (= (and b!689982 ((_ is LongMap!744) (v!17607 (underlying!1672 (cache!1103 cacheDown!470))))) b!689987))

(assert (= b!689983 b!689982))

(assert (= (and b!689990 ((_ is HashMap!716) (cache!1103 cacheDown!470))) b!689983))

(assert (= start!66020 b!689990))

(assert (= b!689994 b!690006))

(assert (= b!689993 b!689994))

(assert (= (and start!66020 ((_ is Cons!7394) rules!1357)) b!689993))

(declare-fun m!946481 () Bool)

(assert (=> b!689994 m!946481))

(declare-fun m!946483 () Bool)

(assert (=> b!689994 m!946483))

(declare-fun m!946485 () Bool)

(assert (=> b!689985 m!946485))

(declare-fun m!946487 () Bool)

(assert (=> b!690000 m!946487))

(declare-fun m!946489 () Bool)

(assert (=> b!690000 m!946489))

(declare-fun m!946491 () Bool)

(assert (=> b!690004 m!946491))

(declare-fun m!946493 () Bool)

(assert (=> b!689980 m!946493))

(declare-fun m!946495 () Bool)

(assert (=> b!689984 m!946495))

(declare-fun m!946497 () Bool)

(assert (=> b!689984 m!946497))

(declare-fun m!946499 () Bool)

(assert (=> b!689984 m!946499))

(declare-fun m!946501 () Bool)

(assert (=> b!689986 m!946501))

(declare-fun m!946503 () Bool)

(assert (=> b!689986 m!946503))

(declare-fun m!946505 () Bool)

(assert (=> b!689986 m!946505))

(declare-fun m!946507 () Bool)

(assert (=> b!689995 m!946507))

(declare-fun m!946509 () Bool)

(assert (=> start!66020 m!946509))

(declare-fun m!946511 () Bool)

(assert (=> start!66020 m!946511))

(declare-fun m!946513 () Bool)

(assert (=> start!66020 m!946513))

(declare-fun m!946515 () Bool)

(assert (=> start!66020 m!946515))

(declare-fun m!946517 () Bool)

(assert (=> mapNonEmpty!2998 m!946517))

(declare-fun m!946519 () Bool)

(assert (=> b!689997 m!946519))

(declare-fun m!946521 () Bool)

(assert (=> b!689997 m!946521))

(declare-fun m!946523 () Bool)

(assert (=> b!689989 m!946523))

(declare-fun m!946525 () Bool)

(assert (=> b!690011 m!946525))

(declare-fun m!946527 () Bool)

(assert (=> b!689979 m!946527))

(declare-fun m!946529 () Bool)

(assert (=> mapNonEmpty!2996 m!946529))

(declare-fun m!946531 () Bool)

(assert (=> b!690007 m!946531))

(declare-fun m!946533 () Bool)

(assert (=> b!689992 m!946533))

(declare-fun m!946535 () Bool)

(assert (=> b!689992 m!946535))

(declare-fun m!946537 () Bool)

(assert (=> b!690013 m!946537))

(declare-fun m!946539 () Bool)

(assert (=> b!690013 m!946539))

(assert (=> b!690013 m!946539))

(declare-fun m!946541 () Bool)

(assert (=> b!690013 m!946541))

(declare-fun m!946543 () Bool)

(assert (=> b!690013 m!946543))

(declare-fun m!946545 () Bool)

(assert (=> b!690009 m!946545))

(declare-fun m!946547 () Bool)

(assert (=> mapNonEmpty!2997 m!946547))

(declare-fun m!946549 () Bool)

(assert (=> b!690001 m!946549))

(assert (=> b!690001 m!946549))

(declare-fun m!946551 () Bool)

(assert (=> b!690001 m!946551))

(check-sat (not b_next!19511) (not b!689997) (not b_next!19509) (not b!690004) (not b!689984) (not b!690002) (not b!689989) (not b_next!19507) (not b!689980) (not b!690014) (not b_next!19499) (not start!66020) b_and!63239 (not b!690012) b_and!63231 b_and!63237 (not b!690013) (not b!690007) (not mapNonEmpty!2996) (not b!690009) (not b!690000) (not b!689979) b_and!63233 b_and!63235 (not b_next!19503) b_and!63227 (not b!689994) (not mapNonEmpty!2997) b_and!63229 (not b!690011) (not b!689993) (not b!690001) (not mapNonEmpty!2998) (not b!689985) (not b_next!19505) (not b_next!19501) (not b!689995) (not b_next!19497) (not b!689992) b_and!63241 (not b!689986))
(check-sat (not b_next!19511) (not b_next!19509) b_and!63227 (not b_next!19507) b_and!63229 (not b_next!19499) (not b_next!19505) b_and!63239 (not b_next!19501) b_and!63231 (not b_next!19497) b_and!63237 b_and!63241 b_and!63233 b_and!63235 (not b_next!19503))
