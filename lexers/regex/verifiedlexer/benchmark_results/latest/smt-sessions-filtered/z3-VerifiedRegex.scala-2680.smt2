; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143906 () Bool)

(assert start!143906)

(declare-fun b!1552842 () Bool)

(declare-fun b_free!41263 () Bool)

(declare-fun b_next!41967 () Bool)

(assert (=> b!1552842 (= b_free!41263 (not b_next!41967))))

(declare-fun tp!454449 () Bool)

(declare-fun b_and!108373 () Bool)

(assert (=> b!1552842 (= tp!454449 b_and!108373)))

(declare-fun b!1552850 () Bool)

(declare-fun b_free!41265 () Bool)

(declare-fun b_next!41969 () Bool)

(assert (=> b!1552850 (= b_free!41265 (not b_next!41969))))

(declare-fun tp!454443 () Bool)

(declare-fun b_and!108375 () Bool)

(assert (=> b!1552850 (= tp!454443 b_and!108375)))

(declare-fun b_free!41267 () Bool)

(declare-fun b_next!41971 () Bool)

(assert (=> b!1552850 (= b_free!41267 (not b_next!41971))))

(declare-fun tp!454438 () Bool)

(declare-fun b_and!108377 () Bool)

(assert (=> b!1552850 (= tp!454438 b_and!108377)))

(declare-fun b!1552831 () Bool)

(declare-fun b_free!41269 () Bool)

(declare-fun b_next!41973 () Bool)

(assert (=> b!1552831 (= b_free!41269 (not b_next!41973))))

(declare-fun tp!454457 () Bool)

(declare-fun b_and!108379 () Bool)

(assert (=> b!1552831 (= tp!454457 b_and!108379)))

(declare-fun b!1552834 () Bool)

(declare-fun b_free!41271 () Bool)

(declare-fun b_next!41975 () Bool)

(assert (=> b!1552834 (= b_free!41271 (not b_next!41975))))

(declare-fun tp!454436 () Bool)

(declare-fun b_and!108381 () Bool)

(assert (=> b!1552834 (= tp!454436 b_and!108381)))

(declare-fun b!1552848 () Bool)

(declare-fun b_free!41273 () Bool)

(declare-fun b_next!41977 () Bool)

(assert (=> b!1552848 (= b_free!41273 (not b_next!41977))))

(declare-fun tp!454454 () Bool)

(declare-fun b_and!108383 () Bool)

(assert (=> b!1552848 (= tp!454454 b_and!108383)))

(declare-fun b!1552832 () Bool)

(declare-fun b_free!41275 () Bool)

(declare-fun b_next!41979 () Bool)

(assert (=> b!1552832 (= b_free!41275 (not b_next!41979))))

(declare-fun tp!454460 () Bool)

(declare-fun b_and!108385 () Bool)

(assert (=> b!1552832 (= tp!454460 b_and!108385)))

(declare-fun b!1552819 () Bool)

(declare-fun b_free!41277 () Bool)

(declare-fun b_next!41981 () Bool)

(assert (=> b!1552819 (= b_free!41277 (not b_next!41981))))

(declare-fun tp!454442 () Bool)

(declare-fun b_and!108387 () Bool)

(assert (=> b!1552819 (= tp!454442 b_and!108387)))

(declare-fun b!1552861 () Bool)

(declare-fun e!996134 () Bool)

(assert (=> b!1552861 (= e!996134 true)))

(declare-fun b!1552860 () Bool)

(declare-fun e!996133 () Bool)

(assert (=> b!1552860 (= e!996133 e!996134)))

(declare-fun b!1552846 () Bool)

(assert (=> b!1552846 e!996133))

(assert (= b!1552860 b!1552861))

(assert (= b!1552846 b!1552860))

(declare-fun order!9869 () Int)

(declare-datatypes ((List!16858 0))(
  ( (Nil!16790) (Cons!16790 (h!22191 (_ BitVec 16)) (t!141281 List!16858)) )
))
(declare-datatypes ((TokenValue!3033 0))(
  ( (FloatLiteralValue!6066 (text!21676 List!16858)) (TokenValueExt!3032 (__x!11141 Int)) (Broken!15165 (value!93489 List!16858)) (Object!3100) (End!3033) (Def!3033) (Underscore!3033) (Match!3033) (Else!3033) (Error!3033) (Case!3033) (If!3033) (Extends!3033) (Abstract!3033) (Class!3033) (Val!3033) (DelimiterValue!6066 (del!3093 List!16858)) (KeywordValue!3039 (value!93490 List!16858)) (CommentValue!6066 (value!93491 List!16858)) (WhitespaceValue!6066 (value!93492 List!16858)) (IndentationValue!3033 (value!93493 List!16858)) (String!19452) (Int32!3033) (Broken!15166 (value!93494 List!16858)) (Boolean!3034) (Unit!26039) (OperatorValue!3036 (op!3093 List!16858)) (IdentifierValue!6066 (value!93495 List!16858)) (IdentifierValue!6067 (value!93496 List!16858)) (WhitespaceValue!6067 (value!93497 List!16858)) (True!6066) (False!6066) (Broken!15167 (value!93498 List!16858)) (Broken!15168 (value!93499 List!16858)) (True!6067) (RightBrace!3033) (RightBracket!3033) (Colon!3033) (Null!3033) (Comma!3033) (LeftBracket!3033) (False!6067) (LeftBrace!3033) (ImaginaryLiteralValue!3033 (text!21677 List!16858)) (StringLiteralValue!9099 (value!93500 List!16858)) (EOFValue!3033 (value!93501 List!16858)) (IdentValue!3033 (value!93502 List!16858)) (DelimiterValue!6067 (value!93503 List!16858)) (DedentValue!3033 (value!93504 List!16858)) (NewLineValue!3033 (value!93505 List!16858)) (IntegerValue!9099 (value!93506 (_ BitVec 32)) (text!21678 List!16858)) (IntegerValue!9100 (value!93507 Int) (text!21679 List!16858)) (Times!3033) (Or!3033) (Equal!3033) (Minus!3033) (Broken!15169 (value!93508 List!16858)) (And!3033) (Div!3033) (LessEqual!3033) (Mod!3033) (Concat!7304) (Not!3033) (Plus!3033) (SpaceValue!3033 (value!93509 List!16858)) (IntegerValue!9101 (value!93510 Int) (text!21680 List!16858)) (StringLiteralValue!9100 (text!21681 List!16858)) (FloatLiteralValue!6067 (text!21682 List!16858)) (BytesLiteralValue!3033 (value!93511 List!16858)) (CommentValue!6067 (value!93512 List!16858)) (StringLiteralValue!9101 (value!93513 List!16858)) (ErrorTokenValue!3033 (msg!3094 List!16858)) )
))
(declare-datatypes ((String!19453 0))(
  ( (String!19454 (value!93514 String)) )
))
(declare-datatypes ((C!8720 0))(
  ( (C!8721 (val!4932 Int)) )
))
(declare-datatypes ((List!16859 0))(
  ( (Nil!16791) (Cons!16791 (h!22192 C!8720) (t!141282 List!16859)) )
))
(declare-datatypes ((IArray!11127 0))(
  ( (IArray!11128 (innerList!5621 List!16859)) )
))
(declare-datatypes ((Conc!5561 0))(
  ( (Node!5561 (left!13655 Conc!5561) (right!13985 Conc!5561) (csize!11352 Int) (cheight!5772 Int)) (Leaf!8242 (xs!8361 IArray!11127) (csize!11353 Int)) (Empty!5561) )
))
(declare-datatypes ((BalanceConc!11064 0))(
  ( (BalanceConc!11065 (c!252471 Conc!5561)) )
))
(declare-datatypes ((Regex!4271 0))(
  ( (ElementMatch!4271 (c!252472 C!8720)) (Concat!7305 (regOne!9054 Regex!4271) (regTwo!9054 Regex!4271)) (EmptyExpr!4271) (Star!4271 (reg!4600 Regex!4271)) (EmptyLang!4271) (Union!4271 (regOne!9055 Regex!4271) (regTwo!9055 Regex!4271)) )
))
(declare-datatypes ((TokenValueInjection!5726 0))(
  ( (TokenValueInjection!5727 (toValue!4310 Int) (toChars!4169 Int)) )
))
(declare-datatypes ((Rule!5686 0))(
  ( (Rule!5687 (regex!2943 Regex!4271) (tag!3207 String!19453) (isSeparator!2943 Bool) (transformation!2943 TokenValueInjection!5726)) )
))
(declare-fun rule!240 () Rule!5686)

(declare-fun lambda!65733 () Int)

(declare-fun order!9867 () Int)

(declare-fun dynLambda!7431 (Int Int) Int)

(declare-fun dynLambda!7432 (Int Int) Int)

(assert (=> b!1552861 (< (dynLambda!7431 order!9867 (toValue!4310 (transformation!2943 rule!240))) (dynLambda!7432 order!9869 lambda!65733))))

(declare-fun order!9871 () Int)

(declare-fun dynLambda!7433 (Int Int) Int)

(assert (=> b!1552861 (< (dynLambda!7433 order!9871 (toChars!4169 (transformation!2943 rule!240))) (dynLambda!7432 order!9869 lambda!65733))))

(declare-fun b!1552816 () Bool)

(declare-fun e!996095 () Bool)

(declare-fun e!996122 () Bool)

(assert (=> b!1552816 (= e!996095 e!996122)))

(declare-fun b!1552817 () Bool)

(declare-fun e!996097 () Bool)

(declare-fun tp!454451 () Bool)

(declare-fun mapRes!8284 () Bool)

(assert (=> b!1552817 (= e!996097 (and tp!454451 mapRes!8284))))

(declare-fun condMapEmpty!8285 () Bool)

(declare-datatypes ((List!16860 0))(
  ( (Nil!16792) (Cons!16792 (h!22193 Regex!4271) (t!141283 List!16860)) )
))
(declare-datatypes ((Context!1578 0))(
  ( (Context!1579 (exprs!1289 List!16860)) )
))
(declare-datatypes ((tuple2!16224 0))(
  ( (tuple2!16225 (_1!9440 Context!1578) (_2!9440 C!8720)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16226 0))(
  ( (tuple2!16227 (_1!9441 tuple2!16224) (_2!9441 (InoxSet Context!1578))) )
))
(declare-datatypes ((List!16861 0))(
  ( (Nil!16793) (Cons!16793 (h!22194 tuple2!16226) (t!141284 List!16861)) )
))
(declare-datatypes ((array!6120 0))(
  ( (array!6121 (arr!2731 (Array (_ BitVec 32) List!16861)) (size!13588 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1729 0))(
  ( (HashableExt!1728 (__x!11142 Int)) )
))
(declare-datatypes ((array!6122 0))(
  ( (array!6123 (arr!2732 (Array (_ BitVec 32) (_ BitVec 64))) (size!13589 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3570 0))(
  ( (LongMapFixedSize!3571 (defaultEntry!2145 Int) (mask!5009 (_ BitVec 32)) (extraKeys!2032 (_ BitVec 32)) (zeroValue!2042 List!16861) (minValue!2042 List!16861) (_size!3651 (_ BitVec 32)) (_keys!2079 array!6122) (_values!2064 array!6120) (_vacant!1846 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7025 0))(
  ( (Cell!7026 (v!23630 LongMapFixedSize!3570)) )
))
(declare-datatypes ((MutLongMap!1785 0))(
  ( (LongMap!1785 (underlying!3779 Cell!7025)) (MutLongMapExt!1784 (__x!11143 Int)) )
))
(declare-datatypes ((Cell!7027 0))(
  ( (Cell!7028 (v!23631 MutLongMap!1785)) )
))
(declare-datatypes ((MutableMap!1729 0))(
  ( (MutableMapExt!1728 (__x!11144 Int)) (HashMap!1729 (underlying!3780 Cell!7027) (hashF!3648 Hashable!1729) (_size!3652 (_ BitVec 32)) (defaultValue!1889 Int)) )
))
(declare-datatypes ((CacheUp!1052 0))(
  ( (CacheUp!1053 (cache!2110 MutableMap!1729)) )
))
(declare-fun cacheUp!755 () CacheUp!1052)

(declare-fun mapDefault!8284 () List!16861)

(assert (=> b!1552817 (= condMapEmpty!8285 (= (arr!2731 (_values!2064 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16861)) mapDefault!8284)))))

(declare-fun res!693559 () Bool)

(declare-fun e!996125 () Bool)

(assert (=> start!143906 (=> (not res!693559) (not e!996125))))

(declare-datatypes ((LexerInterface!2582 0))(
  ( (LexerInterfaceExt!2579 (__x!11145 Int)) (Lexer!2580) )
))
(declare-fun thiss!16438 () LexerInterface!2582)

(get-info :version)

(assert (=> start!143906 (= res!693559 ((_ is Lexer!2580) thiss!16438))))

(assert (=> start!143906 e!996125))

(declare-fun totalInput!568 () BalanceConc!11064)

(declare-fun e!996112 () Bool)

(declare-fun inv!22060 (BalanceConc!11064) Bool)

(assert (=> start!143906 (and (inv!22060 totalInput!568) e!996112)))

(declare-fun inv!22061 (CacheUp!1052) Bool)

(assert (=> start!143906 (and (inv!22061 cacheUp!755) e!996095)))

(declare-datatypes ((tuple3!1770 0))(
  ( (tuple3!1771 (_1!9442 (InoxSet Context!1578)) (_2!9442 Int) (_3!1328 Int)) )
))
(declare-datatypes ((tuple2!16228 0))(
  ( (tuple2!16229 (_1!9443 tuple3!1770) (_2!9443 Int)) )
))
(declare-datatypes ((List!16862 0))(
  ( (Nil!16794) (Cons!16794 (h!22195 tuple2!16228) (t!141285 List!16862)) )
))
(declare-datatypes ((array!6124 0))(
  ( (array!6125 (arr!2733 (Array (_ BitVec 32) List!16862)) (size!13590 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3572 0))(
  ( (LongMapFixedSize!3573 (defaultEntry!2146 Int) (mask!5010 (_ BitVec 32)) (extraKeys!2033 (_ BitVec 32)) (zeroValue!2043 List!16862) (minValue!2043 List!16862) (_size!3653 (_ BitVec 32)) (_keys!2080 array!6122) (_values!2065 array!6124) (_vacant!1847 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7029 0))(
  ( (Cell!7030 (v!23632 LongMapFixedSize!3572)) )
))
(declare-datatypes ((Hashable!1730 0))(
  ( (HashableExt!1729 (__x!11146 Int)) )
))
(declare-datatypes ((MutLongMap!1786 0))(
  ( (LongMap!1786 (underlying!3781 Cell!7029)) (MutLongMapExt!1785 (__x!11147 Int)) )
))
(declare-datatypes ((Cell!7031 0))(
  ( (Cell!7032 (v!23633 MutLongMap!1786)) )
))
(declare-datatypes ((MutableMap!1730 0))(
  ( (MutableMapExt!1729 (__x!11148 Int)) (HashMap!1730 (underlying!3782 Cell!7031) (hashF!3649 Hashable!1730) (_size!3654 (_ BitVec 32)) (defaultValue!1890 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!478 0))(
  ( (CacheFurthestNullable!479 (cache!2111 MutableMap!1730) (totalInput!2450 BalanceConc!11064)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!478)

(declare-fun e!996094 () Bool)

(declare-fun inv!22062 (CacheFurthestNullable!478) Bool)

(assert (=> start!143906 (and (inv!22062 cacheFurthestNullable!103) e!996094)))

(declare-fun input!1676 () BalanceConc!11064)

(declare-fun e!996117 () Bool)

(assert (=> start!143906 (and (inv!22060 input!1676) e!996117)))

(declare-fun e!996115 () Bool)

(assert (=> start!143906 e!996115))

(declare-datatypes ((tuple3!1772 0))(
  ( (tuple3!1773 (_1!9444 Regex!4271) (_2!9444 Context!1578) (_3!1329 C!8720)) )
))
(declare-datatypes ((tuple2!16230 0))(
  ( (tuple2!16231 (_1!9445 tuple3!1772) (_2!9445 (InoxSet Context!1578))) )
))
(declare-datatypes ((List!16863 0))(
  ( (Nil!16795) (Cons!16795 (h!22196 tuple2!16230) (t!141286 List!16863)) )
))
(declare-datatypes ((array!6126 0))(
  ( (array!6127 (arr!2734 (Array (_ BitVec 32) List!16863)) (size!13591 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3574 0))(
  ( (LongMapFixedSize!3575 (defaultEntry!2147 Int) (mask!5011 (_ BitVec 32)) (extraKeys!2034 (_ BitVec 32)) (zeroValue!2044 List!16863) (minValue!2044 List!16863) (_size!3655 (_ BitVec 32)) (_keys!2081 array!6122) (_values!2066 array!6126) (_vacant!1848 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7033 0))(
  ( (Cell!7034 (v!23634 LongMapFixedSize!3574)) )
))
(declare-datatypes ((MutLongMap!1787 0))(
  ( (LongMap!1787 (underlying!3783 Cell!7033)) (MutLongMapExt!1786 (__x!11149 Int)) )
))
(declare-datatypes ((Cell!7035 0))(
  ( (Cell!7036 (v!23635 MutLongMap!1787)) )
))
(declare-datatypes ((Hashable!1731 0))(
  ( (HashableExt!1730 (__x!11150 Int)) )
))
(declare-datatypes ((MutableMap!1731 0))(
  ( (MutableMapExt!1730 (__x!11151 Int)) (HashMap!1731 (underlying!3784 Cell!7035) (hashF!3650 Hashable!1731) (_size!3656 (_ BitVec 32)) (defaultValue!1891 Int)) )
))
(declare-datatypes ((CacheDown!1056 0))(
  ( (CacheDown!1057 (cache!2112 MutableMap!1731)) )
))
(declare-fun cacheDown!768 () CacheDown!1056)

(declare-fun e!996106 () Bool)

(declare-fun inv!22063 (CacheDown!1056) Bool)

(assert (=> start!143906 (and (inv!22063 cacheDown!768) e!996106)))

(assert (=> start!143906 true))

(declare-fun b!1552818 () Bool)

(declare-fun e!996119 () Bool)

(declare-fun tp!454435 () Bool)

(declare-fun mapRes!8283 () Bool)

(assert (=> b!1552818 (= e!996119 (and tp!454435 mapRes!8283))))

(declare-fun condMapEmpty!8283 () Bool)

(declare-fun mapDefault!8283 () List!16862)

(assert (=> b!1552818 (= condMapEmpty!8283 (= (arr!2733 (_values!2065 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16862)) mapDefault!8283)))))

(declare-fun e!996096 () Bool)

(declare-fun e!996118 () Bool)

(assert (=> b!1552819 (= e!996096 (and e!996118 tp!454442))))

(declare-fun mapIsEmpty!8283 () Bool)

(declare-fun mapRes!8285 () Bool)

(assert (=> mapIsEmpty!8283 mapRes!8285))

(declare-fun b!1552820 () Bool)

(declare-fun tp!454459 () Bool)

(declare-fun inv!22064 (Conc!5561) Bool)

(assert (=> b!1552820 (= e!996112 (and (inv!22064 (c!252471 totalInput!568)) tp!454459))))

(declare-fun b!1552821 () Bool)

(declare-fun e!996111 () Bool)

(declare-fun tp!454450 () Bool)

(assert (=> b!1552821 (= e!996111 (and tp!454450 mapRes!8285))))

(declare-fun condMapEmpty!8284 () Bool)

(declare-fun mapDefault!8285 () List!16863)

(assert (=> b!1552821 (= condMapEmpty!8284 (= (arr!2734 (_values!2066 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16863)) mapDefault!8285)))))

(declare-fun b!1552822 () Bool)

(declare-fun e!996124 () Bool)

(declare-fun e!996099 () Bool)

(assert (=> b!1552822 (= e!996124 e!996099)))

(declare-fun b!1552823 () Bool)

(declare-fun e!996126 () Bool)

(assert (=> b!1552823 (= e!996125 e!996126)))

(declare-fun res!693553 () Bool)

(assert (=> b!1552823 (=> (not res!693553) (not e!996126))))

(declare-fun lt!537846 () List!16859)

(declare-fun isSuffix!372 (List!16859 List!16859) Bool)

(declare-fun list!6486 (BalanceConc!11064) List!16859)

(assert (=> b!1552823 (= res!693553 (isSuffix!372 lt!537846 (list!6486 totalInput!568)))))

(assert (=> b!1552823 (= lt!537846 (list!6486 input!1676))))

(declare-fun b!1552824 () Bool)

(declare-fun e!996108 () Bool)

(declare-fun e!996121 () Bool)

(assert (=> b!1552824 (= e!996108 e!996121)))

(declare-fun b!1552825 () Bool)

(declare-fun res!693558 () Bool)

(assert (=> b!1552825 (=> (not res!693558) (not e!996125))))

(declare-fun valid!1432 (CacheDown!1056) Bool)

(assert (=> b!1552825 (= res!693558 (valid!1432 cacheDown!768))))

(declare-fun b!1552826 () Bool)

(declare-fun e!996105 () Bool)

(declare-fun tp!454448 () Bool)

(assert (=> b!1552826 (= e!996105 (and (inv!22064 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) tp!454448))))

(declare-fun b!1552827 () Bool)

(declare-fun e!996116 () Bool)

(declare-fun e!996114 () Bool)

(assert (=> b!1552827 (= e!996116 e!996114)))

(declare-fun res!693550 () Bool)

(assert (=> b!1552827 (=> res!693550 e!996114)))

(declare-fun lt!537845 () Bool)

(declare-datatypes ((Token!5468 0))(
  ( (Token!5469 (value!93515 TokenValue!3033) (rule!4725 Rule!5686) (size!13592 Int) (originalCharacters!3765 List!16859)) )
))
(declare-datatypes ((tuple2!16232 0))(
  ( (tuple2!16233 (_1!9446 Token!5468) (_2!9446 List!16859)) )
))
(declare-datatypes ((Option!3030 0))(
  ( (None!3029) (Some!3029 (v!23636 tuple2!16232)) )
))
(declare-fun isDefined!2433 (Option!3030) Bool)

(declare-fun maxPrefixOneRule!700 (LexerInterface!2582 Rule!5686 List!16859) Option!3030)

(assert (=> b!1552827 (= res!693550 (not (= lt!537845 (isDefined!2433 (maxPrefixOneRule!700 thiss!16438 rule!240 lt!537846)))))))

(declare-datatypes ((tuple2!16234 0))(
  ( (tuple2!16235 (_1!9447 BalanceConc!11064) (_2!9447 BalanceConc!11064)) )
))
(declare-datatypes ((tuple4!886 0))(
  ( (tuple4!887 (_1!9448 tuple2!16234) (_2!9448 CacheUp!1052) (_3!1330 CacheDown!1056) (_4!443 CacheFurthestNullable!478)) )
))
(declare-fun lt!537838 () tuple4!886)

(declare-fun lt!537839 () List!16859)

(declare-datatypes ((tuple2!16236 0))(
  ( (tuple2!16237 (_1!9449 Token!5468) (_2!9449 BalanceConc!11064)) )
))
(declare-datatypes ((Option!3031 0))(
  ( (None!3030) (Some!3030 (v!23637 tuple2!16236)) )
))
(declare-fun isDefined!2434 (Option!3031) Bool)

(declare-fun apply!4107 (TokenValueInjection!5726 BalanceConc!11064) TokenValue!3033)

(declare-fun size!13593 (BalanceConc!11064) Int)

(assert (=> b!1552827 (= lt!537845 (isDefined!2434 (Some!3030 (tuple2!16237 (Token!5469 (apply!4107 (transformation!2943 rule!240) (_1!9447 (_1!9448 lt!537838))) rule!240 (size!13593 (_1!9447 (_1!9448 lt!537838))) lt!537839) (_2!9447 (_1!9448 lt!537838))))))))

(declare-datatypes ((Unit!26040 0))(
  ( (Unit!26041) )
))
(declare-fun lt!537842 () Unit!26040)

(declare-fun ForallOf!208 (Int BalanceConc!11064) Unit!26040)

(declare-fun seqFromList!1771 (List!16859) BalanceConc!11064)

(assert (=> b!1552827 (= lt!537842 (ForallOf!208 lambda!65733 (seqFromList!1771 lt!537839)))))

(assert (=> b!1552827 (= lt!537839 (list!6486 (_1!9447 (_1!9448 lt!537838))))))

(declare-fun lt!537836 () Unit!26040)

(assert (=> b!1552827 (= lt!537836 (ForallOf!208 lambda!65733 (_1!9447 (_1!9448 lt!537838))))))

(declare-fun b!1552828 () Bool)

(declare-fun e!996101 () Bool)

(assert (=> b!1552828 (= e!996126 e!996101)))

(declare-fun res!693556 () Bool)

(assert (=> b!1552828 (=> (not res!693556) (not e!996101))))

(declare-fun isEmpty!10100 (BalanceConc!11064) Bool)

(assert (=> b!1552828 (= res!693556 (not (isEmpty!10100 (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!46 (Regex!4271 BalanceConc!11064 BalanceConc!11064 CacheUp!1052 CacheDown!1056 CacheFurthestNullable!478) tuple4!886)

(assert (=> b!1552828 (= lt!537838 (findLongestMatchWithZipperSequenceV3Mem!46 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1552829 () Bool)

(declare-fun e!996127 () Bool)

(declare-fun lt!537840 () MutLongMap!1786)

(assert (=> b!1552829 (= e!996118 (and e!996127 ((_ is LongMap!1786) lt!537840)))))

(assert (=> b!1552829 (= lt!537840 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))

(declare-fun b!1552830 () Bool)

(declare-fun res!693551 () Bool)

(assert (=> b!1552830 (=> (not res!693551) (not e!996125))))

(declare-fun ruleValid!681 (LexerInterface!2582 Rule!5686) Bool)

(assert (=> b!1552830 (= res!693551 (ruleValid!681 thiss!16438 rule!240))))

(declare-fun e!996113 () Bool)

(declare-fun tp!454452 () Bool)

(declare-fun tp!454445 () Bool)

(declare-fun array_inv!1966 (array!6122) Bool)

(declare-fun array_inv!1967 (array!6120) Bool)

(assert (=> b!1552831 (= e!996113 (and tp!454457 tp!454445 tp!454452 (array_inv!1966 (_keys!2079 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))) (array_inv!1967 (_values!2064 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))) e!996097))))

(declare-fun e!996098 () Bool)

(declare-fun e!996093 () Bool)

(assert (=> b!1552832 (= e!996098 (and e!996093 tp!454460))))

(declare-fun mapIsEmpty!8284 () Bool)

(assert (=> mapIsEmpty!8284 mapRes!8284))

(declare-fun mapNonEmpty!8283 () Bool)

(declare-fun tp!454447 () Bool)

(declare-fun tp!454455 () Bool)

(assert (=> mapNonEmpty!8283 (= mapRes!8285 (and tp!454447 tp!454455))))

(declare-fun mapKey!8284 () (_ BitVec 32))

(declare-fun mapRest!8285 () (Array (_ BitVec 32) List!16863))

(declare-fun mapValue!8283 () List!16863)

(assert (=> mapNonEmpty!8283 (= (arr!2734 (_values!2066 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))) (store mapRest!8285 mapKey!8284 mapValue!8283))))

(declare-fun b!1552833 () Bool)

(declare-fun e!996102 () Bool)

(assert (=> b!1552833 (= e!996127 e!996102)))

(declare-fun e!996110 () Bool)

(assert (=> b!1552834 (= e!996122 (and e!996110 tp!454436))))

(declare-fun b!1552835 () Bool)

(declare-fun res!693552 () Bool)

(assert (=> b!1552835 (=> (not res!693552) (not e!996125))))

(declare-fun valid!1433 (CacheFurthestNullable!478) Bool)

(assert (=> b!1552835 (= res!693552 (valid!1433 cacheFurthestNullable!103))))

(declare-fun b!1552836 () Bool)

(assert (=> b!1552836 (= e!996114 lt!537845)))

(declare-fun b!1552837 () Bool)

(assert (=> b!1552837 (= e!996106 e!996098)))

(declare-fun b!1552838 () Bool)

(declare-fun e!996128 () Bool)

(assert (=> b!1552838 (= e!996102 e!996128)))

(declare-fun mapNonEmpty!8284 () Bool)

(declare-fun tp!454440 () Bool)

(declare-fun tp!454434 () Bool)

(assert (=> mapNonEmpty!8284 (= mapRes!8283 (and tp!454440 tp!454434))))

(declare-fun mapRest!8283 () (Array (_ BitVec 32) List!16862))

(declare-fun mapKey!8283 () (_ BitVec 32))

(declare-fun mapValue!8284 () List!16862)

(assert (=> mapNonEmpty!8284 (= (arr!2733 (_values!2065 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))) (store mapRest!8283 mapKey!8283 mapValue!8284))))

(declare-fun e!996120 () Bool)

(declare-fun tp!454453 () Bool)

(declare-fun b!1552839 () Bool)

(declare-fun inv!22057 (String!19453) Bool)

(declare-fun inv!22065 (TokenValueInjection!5726) Bool)

(assert (=> b!1552839 (= e!996115 (and tp!454453 (inv!22057 (tag!3207 rule!240)) (inv!22065 (transformation!2943 rule!240)) e!996120))))

(declare-fun b!1552840 () Bool)

(assert (=> b!1552840 (= e!996099 e!996113)))

(declare-fun b!1552841 () Bool)

(assert (=> b!1552841 (= e!996101 (not e!996116))))

(declare-fun res!693557 () Bool)

(assert (=> b!1552841 (=> res!693557 e!996116)))

(declare-fun semiInverseModEq!1109 (Int Int) Bool)

(assert (=> b!1552841 (= res!693557 (not (semiInverseModEq!1109 (toChars!4169 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240)))))))

(declare-fun lt!537843 () Unit!26040)

(declare-fun lemmaInv!423 (TokenValueInjection!5726) Unit!26040)

(assert (=> b!1552841 (= lt!537843 (lemmaInv!423 (transformation!2943 rule!240)))))

(declare-fun e!996109 () Bool)

(assert (=> b!1552841 e!996109))

(declare-fun res!693555 () Bool)

(assert (=> b!1552841 (=> res!693555 e!996109)))

(declare-datatypes ((tuple2!16238 0))(
  ( (tuple2!16239 (_1!9450 List!16859) (_2!9450 List!16859)) )
))
(declare-fun lt!537835 () tuple2!16238)

(declare-fun isEmpty!10101 (List!16859) Bool)

(assert (=> b!1552841 (= res!693555 (isEmpty!10101 (_1!9450 lt!537835)))))

(declare-fun findLongestMatchInner!329 (Regex!4271 List!16859 Int List!16859 List!16859 Int) tuple2!16238)

(declare-fun size!13594 (List!16859) Int)

(assert (=> b!1552841 (= lt!537835 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))

(declare-fun lt!537841 () Unit!26040)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!313 (Regex!4271 List!16859) Unit!26040)

(assert (=> b!1552841 (= lt!537841 (longestMatchIsAcceptedByMatchOrIsEmpty!313 (regex!2943 rule!240) lt!537846))))

(declare-fun tp!454458 () Bool)

(declare-fun tp!454446 () Bool)

(declare-fun array_inv!1968 (array!6124) Bool)

(assert (=> b!1552842 (= e!996128 (and tp!454449 tp!454458 tp!454446 (array_inv!1966 (_keys!2080 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))) (array_inv!1968 (_values!2065 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))) e!996119))))

(declare-fun b!1552843 () Bool)

(assert (=> b!1552843 (= e!996094 (and e!996096 (inv!22060 (totalInput!2450 cacheFurthestNullable!103)) e!996105))))

(declare-fun b!1552844 () Bool)

(declare-fun lt!537844 () MutLongMap!1785)

(assert (=> b!1552844 (= e!996110 (and e!996124 ((_ is LongMap!1785) lt!537844)))))

(assert (=> b!1552844 (= lt!537844 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))

(declare-fun mapIsEmpty!8285 () Bool)

(assert (=> mapIsEmpty!8285 mapRes!8283))

(declare-fun b!1552845 () Bool)

(declare-fun res!693549 () Bool)

(assert (=> b!1552845 (=> (not res!693549) (not e!996125))))

(declare-fun valid!1434 (CacheUp!1052) Bool)

(assert (=> b!1552845 (= res!693549 (valid!1434 cacheUp!755))))

(declare-fun res!693548 () Bool)

(assert (=> b!1552846 (=> res!693548 e!996116)))

(declare-fun Forall!604 (Int) Bool)

(assert (=> b!1552846 (= res!693548 (not (Forall!604 lambda!65733)))))

(declare-fun b!1552847 () Bool)

(declare-fun matchR!1876 (Regex!4271 List!16859) Bool)

(assert (=> b!1552847 (= e!996109 (matchR!1876 (regex!2943 rule!240) (_1!9450 lt!537835)))))

(declare-fun e!996123 () Bool)

(declare-fun tp!454439 () Bool)

(declare-fun tp!454437 () Bool)

(declare-fun array_inv!1969 (array!6126) Bool)

(assert (=> b!1552848 (= e!996123 (and tp!454454 tp!454437 tp!454439 (array_inv!1966 (_keys!2081 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))) (array_inv!1969 (_values!2066 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))) e!996111))))

(declare-fun b!1552849 () Bool)

(declare-fun lt!537837 () MutLongMap!1787)

(assert (=> b!1552849 (= e!996093 (and e!996108 ((_ is LongMap!1787) lt!537837)))))

(assert (=> b!1552849 (= lt!537837 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))

(assert (=> b!1552850 (= e!996120 (and tp!454443 tp!454438))))

(declare-fun mapNonEmpty!8285 () Bool)

(declare-fun tp!454441 () Bool)

(declare-fun tp!454456 () Bool)

(assert (=> mapNonEmpty!8285 (= mapRes!8284 (and tp!454441 tp!454456))))

(declare-fun mapRest!8284 () (Array (_ BitVec 32) List!16861))

(declare-fun mapValue!8285 () List!16861)

(declare-fun mapKey!8285 () (_ BitVec 32))

(assert (=> mapNonEmpty!8285 (= (arr!2731 (_values!2064 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))) (store mapRest!8284 mapKey!8285 mapValue!8285))))

(declare-fun b!1552851 () Bool)

(declare-fun tp!454444 () Bool)

(assert (=> b!1552851 (= e!996117 (and (inv!22064 (c!252471 input!1676)) tp!454444))))

(declare-fun b!1552852 () Bool)

(declare-fun res!693554 () Bool)

(assert (=> b!1552852 (=> (not res!693554) (not e!996126))))

(assert (=> b!1552852 (= res!693554 (= (totalInput!2450 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1552853 () Bool)

(assert (=> b!1552853 (= e!996121 e!996123)))

(assert (= (and start!143906 res!693559) b!1552830))

(assert (= (and b!1552830 res!693551) b!1552845))

(assert (= (and b!1552845 res!693549) b!1552825))

(assert (= (and b!1552825 res!693558) b!1552835))

(assert (= (and b!1552835 res!693552) b!1552823))

(assert (= (and b!1552823 res!693553) b!1552852))

(assert (= (and b!1552852 res!693554) b!1552828))

(assert (= (and b!1552828 res!693556) b!1552841))

(assert (= (and b!1552841 (not res!693555)) b!1552847))

(assert (= (and b!1552841 (not res!693557)) b!1552846))

(assert (= (and b!1552846 (not res!693548)) b!1552827))

(assert (= (and b!1552827 (not res!693550)) b!1552836))

(assert (= start!143906 b!1552820))

(assert (= (and b!1552817 condMapEmpty!8285) mapIsEmpty!8284))

(assert (= (and b!1552817 (not condMapEmpty!8285)) mapNonEmpty!8285))

(assert (= b!1552831 b!1552817))

(assert (= b!1552840 b!1552831))

(assert (= b!1552822 b!1552840))

(assert (= (and b!1552844 ((_ is LongMap!1785) (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))) b!1552822))

(assert (= b!1552834 b!1552844))

(assert (= (and b!1552816 ((_ is HashMap!1729) (cache!2110 cacheUp!755))) b!1552834))

(assert (= start!143906 b!1552816))

(assert (= (and b!1552818 condMapEmpty!8283) mapIsEmpty!8285))

(assert (= (and b!1552818 (not condMapEmpty!8283)) mapNonEmpty!8284))

(assert (= b!1552842 b!1552818))

(assert (= b!1552838 b!1552842))

(assert (= b!1552833 b!1552838))

(assert (= (and b!1552829 ((_ is LongMap!1786) (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))) b!1552833))

(assert (= b!1552819 b!1552829))

(assert (= (and b!1552843 ((_ is HashMap!1730) (cache!2111 cacheFurthestNullable!103))) b!1552819))

(assert (= b!1552843 b!1552826))

(assert (= start!143906 b!1552843))

(assert (= start!143906 b!1552851))

(assert (= b!1552839 b!1552850))

(assert (= start!143906 b!1552839))

(assert (= (and b!1552821 condMapEmpty!8284) mapIsEmpty!8283))

(assert (= (and b!1552821 (not condMapEmpty!8284)) mapNonEmpty!8283))

(assert (= b!1552848 b!1552821))

(assert (= b!1552853 b!1552848))

(assert (= b!1552824 b!1552853))

(assert (= (and b!1552849 ((_ is LongMap!1787) (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))) b!1552824))

(assert (= b!1552832 b!1552849))

(assert (= (and b!1552837 ((_ is HashMap!1731) (cache!2112 cacheDown!768))) b!1552832))

(assert (= start!143906 b!1552837))

(declare-fun m!1825268 () Bool)

(assert (=> b!1552835 m!1825268))

(declare-fun m!1825270 () Bool)

(assert (=> mapNonEmpty!8283 m!1825270))

(declare-fun m!1825272 () Bool)

(assert (=> b!1552830 m!1825272))

(declare-fun m!1825274 () Bool)

(assert (=> b!1552842 m!1825274))

(declare-fun m!1825276 () Bool)

(assert (=> b!1552842 m!1825276))

(declare-fun m!1825278 () Bool)

(assert (=> b!1552827 m!1825278))

(declare-fun m!1825280 () Bool)

(assert (=> b!1552827 m!1825280))

(declare-fun m!1825282 () Bool)

(assert (=> b!1552827 m!1825282))

(declare-fun m!1825284 () Bool)

(assert (=> b!1552827 m!1825284))

(assert (=> b!1552827 m!1825278))

(declare-fun m!1825286 () Bool)

(assert (=> b!1552827 m!1825286))

(declare-fun m!1825288 () Bool)

(assert (=> b!1552827 m!1825288))

(declare-fun m!1825290 () Bool)

(assert (=> b!1552827 m!1825290))

(assert (=> b!1552827 m!1825282))

(declare-fun m!1825292 () Bool)

(assert (=> b!1552827 m!1825292))

(declare-fun m!1825294 () Bool)

(assert (=> b!1552827 m!1825294))

(declare-fun m!1825296 () Bool)

(assert (=> b!1552828 m!1825296))

(declare-fun m!1825298 () Bool)

(assert (=> b!1552828 m!1825298))

(declare-fun m!1825300 () Bool)

(assert (=> b!1552851 m!1825300))

(declare-fun m!1825302 () Bool)

(assert (=> mapNonEmpty!8284 m!1825302))

(declare-fun m!1825304 () Bool)

(assert (=> b!1552843 m!1825304))

(declare-fun m!1825306 () Bool)

(assert (=> b!1552826 m!1825306))

(declare-fun m!1825308 () Bool)

(assert (=> mapNonEmpty!8285 m!1825308))

(declare-fun m!1825310 () Bool)

(assert (=> b!1552848 m!1825310))

(declare-fun m!1825312 () Bool)

(assert (=> b!1552848 m!1825312))

(declare-fun m!1825314 () Bool)

(assert (=> b!1552846 m!1825314))

(declare-fun m!1825316 () Bool)

(assert (=> b!1552839 m!1825316))

(declare-fun m!1825318 () Bool)

(assert (=> b!1552839 m!1825318))

(declare-fun m!1825320 () Bool)

(assert (=> b!1552845 m!1825320))

(declare-fun m!1825322 () Bool)

(assert (=> b!1552847 m!1825322))

(declare-fun m!1825324 () Bool)

(assert (=> b!1552831 m!1825324))

(declare-fun m!1825326 () Bool)

(assert (=> b!1552831 m!1825326))

(declare-fun m!1825328 () Bool)

(assert (=> b!1552825 m!1825328))

(declare-fun m!1825330 () Bool)

(assert (=> b!1552841 m!1825330))

(declare-fun m!1825332 () Bool)

(assert (=> b!1552841 m!1825332))

(declare-fun m!1825334 () Bool)

(assert (=> b!1552841 m!1825334))

(declare-fun m!1825336 () Bool)

(assert (=> b!1552841 m!1825336))

(declare-fun m!1825338 () Bool)

(assert (=> b!1552841 m!1825338))

(assert (=> b!1552841 m!1825338))

(assert (=> b!1552841 m!1825330))

(declare-fun m!1825340 () Bool)

(assert (=> b!1552841 m!1825340))

(declare-fun m!1825342 () Bool)

(assert (=> b!1552841 m!1825342))

(declare-fun m!1825344 () Bool)

(assert (=> b!1552820 m!1825344))

(declare-fun m!1825346 () Bool)

(assert (=> b!1552823 m!1825346))

(assert (=> b!1552823 m!1825346))

(declare-fun m!1825348 () Bool)

(assert (=> b!1552823 m!1825348))

(declare-fun m!1825350 () Bool)

(assert (=> b!1552823 m!1825350))

(declare-fun m!1825352 () Bool)

(assert (=> start!143906 m!1825352))

(declare-fun m!1825354 () Bool)

(assert (=> start!143906 m!1825354))

(declare-fun m!1825356 () Bool)

(assert (=> start!143906 m!1825356))

(declare-fun m!1825358 () Bool)

(assert (=> start!143906 m!1825358))

(declare-fun m!1825360 () Bool)

(assert (=> start!143906 m!1825360))

(check-sat (not b!1552818) (not b!1552821) b_and!108377 (not b!1552841) (not b_next!41973) (not b!1552831) (not b_next!41969) (not b!1552845) b_and!108385 b_and!108373 b_and!108381 (not b_next!41967) (not b!1552825) (not b!1552839) b_and!108383 (not b!1552823) (not b!1552817) (not b!1552827) (not b_next!41981) (not start!143906) (not b!1552848) (not b!1552820) (not b!1552851) (not b!1552835) (not b!1552846) (not b!1552828) (not mapNonEmpty!8283) b_and!108375 (not b_next!41971) (not b!1552847) (not b!1552843) b_and!108379 b_and!108387 (not b_next!41979) (not b!1552830) (not b!1552842) (not mapNonEmpty!8285) (not b_next!41975) (not b!1552826) (not b_next!41977) (not mapNonEmpty!8284))
(check-sat (not b_next!41967) b_and!108383 (not b_next!41981) b_and!108377 (not b_next!41973) b_and!108379 (not b_next!41969) b_and!108385 (not b_next!41975) (not b_next!41977) b_and!108373 b_and!108381 b_and!108375 (not b_next!41971) b_and!108387 (not b_next!41979))
(get-model)

(declare-fun d!460683 () Bool)

(assert (=> d!460683 (= (inv!22057 (tag!3207 rule!240)) (= (mod (str.len (value!93514 (tag!3207 rule!240))) 2) 0))))

(assert (=> b!1552839 d!460683))

(declare-fun d!460685 () Bool)

(declare-fun res!693564 () Bool)

(declare-fun e!996137 () Bool)

(assert (=> d!460685 (=> (not res!693564) (not e!996137))))

(assert (=> d!460685 (= res!693564 (semiInverseModEq!1109 (toChars!4169 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))))))

(assert (=> d!460685 (= (inv!22065 (transformation!2943 rule!240)) e!996137)))

(declare-fun b!1552864 () Bool)

(declare-fun equivClasses!1054 (Int Int) Bool)

(assert (=> b!1552864 (= e!996137 (equivClasses!1054 (toChars!4169 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))))))

(assert (= (and d!460685 res!693564) b!1552864))

(assert (=> d!460685 m!1825332))

(declare-fun m!1825362 () Bool)

(assert (=> b!1552864 m!1825362))

(assert (=> b!1552839 d!460685))

(declare-fun d!460687 () Bool)

(assert (=> d!460687 (= (isEmpty!10101 (_1!9450 lt!537835)) ((_ is Nil!16791) (_1!9450 lt!537835)))))

(assert (=> b!1552841 d!460687))

(declare-fun bm!101889 () Bool)

(declare-fun call!101895 () Bool)

(declare-fun isPrefix!1258 (List!16859 List!16859) Bool)

(assert (=> bm!101889 (= call!101895 (isPrefix!1258 lt!537846 lt!537846))))

(declare-fun b!1552893 () Bool)

(declare-fun e!996155 () Unit!26040)

(declare-fun Unit!26042 () Unit!26040)

(assert (=> b!1552893 (= e!996155 Unit!26042)))

(declare-fun lt!537927 () Unit!26040)

(declare-fun call!101897 () Unit!26040)

(assert (=> b!1552893 (= lt!537927 call!101897)))

(assert (=> b!1552893 call!101895))

(declare-fun lt!537916 () Unit!26040)

(assert (=> b!1552893 (= lt!537916 lt!537927)))

(declare-fun lt!537904 () Unit!26040)

(declare-fun call!101900 () Unit!26040)

(assert (=> b!1552893 (= lt!537904 call!101900)))

(assert (=> b!1552893 (= lt!537846 Nil!16791)))

(declare-fun lt!537915 () Unit!26040)

(assert (=> b!1552893 (= lt!537915 lt!537904)))

(assert (=> b!1552893 false))

(declare-fun b!1552894 () Bool)

(declare-fun e!996157 () tuple2!16238)

(declare-fun e!996156 () tuple2!16238)

(assert (=> b!1552894 (= e!996157 e!996156)))

(declare-fun c!252488 () Bool)

(assert (=> b!1552894 (= c!252488 (= (size!13594 Nil!16791) (size!13594 lt!537846)))))

(declare-fun b!1552895 () Bool)

(declare-fun e!996158 () tuple2!16238)

(declare-fun e!996160 () tuple2!16238)

(assert (=> b!1552895 (= e!996158 e!996160)))

(declare-fun lt!537926 () tuple2!16238)

(declare-fun call!101899 () tuple2!16238)

(assert (=> b!1552895 (= lt!537926 call!101899)))

(declare-fun c!252486 () Bool)

(assert (=> b!1552895 (= c!252486 (isEmpty!10101 (_1!9450 lt!537926)))))

(declare-fun b!1552896 () Bool)

(declare-fun e!996154 () tuple2!16238)

(assert (=> b!1552896 (= e!996154 (tuple2!16239 Nil!16791 Nil!16791))))

(declare-fun b!1552897 () Bool)

(declare-fun e!996159 () Bool)

(declare-fun lt!537928 () tuple2!16238)

(assert (=> b!1552897 (= e!996159 (>= (size!13594 (_1!9450 lt!537928)) (size!13594 Nil!16791)))))

(declare-fun bm!101890 () Bool)

(declare-fun call!101896 () List!16859)

(declare-fun tail!2206 (List!16859) List!16859)

(assert (=> bm!101890 (= call!101896 (tail!2206 lt!537846))))

(declare-fun b!1552898 () Bool)

(assert (=> b!1552898 (= e!996160 lt!537926)))

(declare-fun b!1552899 () Bool)

(declare-fun e!996161 () Bool)

(assert (=> b!1552899 (= e!996161 e!996159)))

(declare-fun res!693570 () Bool)

(assert (=> b!1552899 (=> res!693570 e!996159)))

(assert (=> b!1552899 (= res!693570 (isEmpty!10101 (_1!9450 lt!537928)))))

(declare-fun b!1552900 () Bool)

(assert (=> b!1552900 (= e!996160 (tuple2!16239 Nil!16791 lt!537846))))

(declare-fun b!1552901 () Bool)

(assert (=> b!1552901 (= e!996158 call!101899)))

(declare-fun b!1552902 () Bool)

(declare-fun c!252485 () Bool)

(declare-fun call!101901 () Bool)

(assert (=> b!1552902 (= c!252485 call!101901)))

(declare-fun lt!537913 () Unit!26040)

(declare-fun lt!537919 () Unit!26040)

(assert (=> b!1552902 (= lt!537913 lt!537919)))

(declare-fun lt!537911 () C!8720)

(declare-fun lt!537929 () List!16859)

(declare-fun ++!4412 (List!16859 List!16859) List!16859)

(assert (=> b!1552902 (= (++!4412 (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791)) lt!537929) lt!537846)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!437 (List!16859 C!8720 List!16859 List!16859) Unit!26040)

(assert (=> b!1552902 (= lt!537919 (lemmaMoveElementToOtherListKeepsConcatEq!437 Nil!16791 lt!537911 lt!537929 lt!537846))))

(assert (=> b!1552902 (= lt!537929 (tail!2206 lt!537846))))

(declare-fun head!3111 (List!16859) C!8720)

(assert (=> b!1552902 (= lt!537911 (head!3111 lt!537846))))

(declare-fun lt!537925 () Unit!26040)

(declare-fun lt!537917 () Unit!26040)

(assert (=> b!1552902 (= lt!537925 lt!537917)))

(declare-fun getSuffix!668 (List!16859 List!16859) List!16859)

(assert (=> b!1552902 (isPrefix!1258 (++!4412 Nil!16791 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791)) lt!537846)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!111 (List!16859 List!16859) Unit!26040)

(assert (=> b!1552902 (= lt!537917 (lemmaAddHeadSuffixToPrefixStillPrefix!111 Nil!16791 lt!537846))))

(declare-fun lt!537907 () Unit!26040)

(declare-fun lt!537930 () Unit!26040)

(assert (=> b!1552902 (= lt!537907 lt!537930)))

(assert (=> b!1552902 (= lt!537930 (lemmaAddHeadSuffixToPrefixStillPrefix!111 Nil!16791 lt!537846))))

(declare-fun lt!537903 () List!16859)

(assert (=> b!1552902 (= lt!537903 (++!4412 Nil!16791 (Cons!16791 (head!3111 lt!537846) Nil!16791)))))

(declare-fun lt!537905 () Unit!26040)

(assert (=> b!1552902 (= lt!537905 e!996155)))

(declare-fun c!252489 () Bool)

(assert (=> b!1552902 (= c!252489 (= (size!13594 Nil!16791) (size!13594 lt!537846)))))

(declare-fun lt!537918 () Unit!26040)

(declare-fun lt!537912 () Unit!26040)

(assert (=> b!1552902 (= lt!537918 lt!537912)))

(assert (=> b!1552902 (<= (size!13594 Nil!16791) (size!13594 lt!537846))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!112 (List!16859 List!16859) Unit!26040)

(assert (=> b!1552902 (= lt!537912 (lemmaIsPrefixThenSmallerEqSize!112 Nil!16791 lt!537846))))

(assert (=> b!1552902 (= e!996156 e!996158)))

(declare-fun bm!101891 () Bool)

(declare-fun call!101898 () C!8720)

(assert (=> bm!101891 (= call!101898 (head!3111 lt!537846))))

(declare-fun b!1552903 () Bool)

(declare-fun Unit!26043 () Unit!26040)

(assert (=> b!1552903 (= e!996155 Unit!26043)))

(declare-fun bm!101892 () Bool)

(declare-fun call!101894 () Regex!4271)

(declare-fun derivativeStep!1020 (Regex!4271 C!8720) Regex!4271)

(assert (=> bm!101892 (= call!101894 (derivativeStep!1020 (regex!2943 rule!240) call!101898))))

(declare-fun bm!101893 () Bool)

(declare-fun nullable!1268 (Regex!4271) Bool)

(assert (=> bm!101893 (= call!101901 (nullable!1268 (regex!2943 rule!240)))))

(declare-fun b!1552904 () Bool)

(assert (=> b!1552904 (= e!996154 (tuple2!16239 Nil!16791 lt!537846))))

(declare-fun bm!101894 () Bool)

(assert (=> bm!101894 (= call!101899 (findLongestMatchInner!329 call!101894 lt!537903 (+ (size!13594 Nil!16791) 1) call!101896 lt!537846 (size!13594 lt!537846)))))

(declare-fun bm!101895 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!122 (List!16859 List!16859 List!16859) Unit!26040)

(assert (=> bm!101895 (= call!101900 (lemmaIsPrefixSameLengthThenSameList!122 lt!537846 Nil!16791 lt!537846))))

(declare-fun b!1552905 () Bool)

(assert (=> b!1552905 (= e!996157 (tuple2!16239 Nil!16791 lt!537846))))

(declare-fun d!460689 () Bool)

(assert (=> d!460689 e!996161))

(declare-fun res!693569 () Bool)

(assert (=> d!460689 (=> (not res!693569) (not e!996161))))

(assert (=> d!460689 (= res!693569 (= (++!4412 (_1!9450 lt!537928) (_2!9450 lt!537928)) lt!537846))))

(assert (=> d!460689 (= lt!537928 e!996157)))

(declare-fun c!252490 () Bool)

(declare-fun lostCause!386 (Regex!4271) Bool)

(assert (=> d!460689 (= c!252490 (lostCause!386 (regex!2943 rule!240)))))

(declare-fun lt!537914 () Unit!26040)

(declare-fun Unit!26044 () Unit!26040)

(assert (=> d!460689 (= lt!537914 Unit!26044)))

(assert (=> d!460689 (= (getSuffix!668 lt!537846 Nil!16791) lt!537846)))

(declare-fun lt!537908 () Unit!26040)

(declare-fun lt!537924 () Unit!26040)

(assert (=> d!460689 (= lt!537908 lt!537924)))

(declare-fun lt!537906 () List!16859)

(assert (=> d!460689 (= lt!537846 lt!537906)))

(declare-fun lemmaSamePrefixThenSameSuffix!620 (List!16859 List!16859 List!16859 List!16859 List!16859) Unit!26040)

(assert (=> d!460689 (= lt!537924 (lemmaSamePrefixThenSameSuffix!620 Nil!16791 lt!537846 Nil!16791 lt!537906 lt!537846))))

(assert (=> d!460689 (= lt!537906 (getSuffix!668 lt!537846 Nil!16791))))

(declare-fun lt!537921 () Unit!26040)

(declare-fun lt!537920 () Unit!26040)

(assert (=> d!460689 (= lt!537921 lt!537920)))

(assert (=> d!460689 (isPrefix!1258 Nil!16791 (++!4412 Nil!16791 lt!537846))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!783 (List!16859 List!16859) Unit!26040)

(assert (=> d!460689 (= lt!537920 (lemmaConcatTwoListThenFirstIsPrefix!783 Nil!16791 lt!537846))))

(declare-fun validRegex!1709 (Regex!4271) Bool)

(assert (=> d!460689 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460689 (= (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)) lt!537928)))

(declare-fun bm!101896 () Bool)

(declare-fun lemmaIsPrefixRefl!888 (List!16859 List!16859) Unit!26040)

(assert (=> bm!101896 (= call!101897 (lemmaIsPrefixRefl!888 lt!537846 lt!537846))))

(declare-fun b!1552906 () Bool)

(declare-fun c!252487 () Bool)

(assert (=> b!1552906 (= c!252487 call!101901)))

(declare-fun lt!537910 () Unit!26040)

(declare-fun lt!537922 () Unit!26040)

(assert (=> b!1552906 (= lt!537910 lt!537922)))

(assert (=> b!1552906 (= lt!537846 Nil!16791)))

(assert (=> b!1552906 (= lt!537922 call!101900)))

(declare-fun lt!537923 () Unit!26040)

(declare-fun lt!537909 () Unit!26040)

(assert (=> b!1552906 (= lt!537923 lt!537909)))

(assert (=> b!1552906 call!101895))

(assert (=> b!1552906 (= lt!537909 call!101897)))

(assert (=> b!1552906 (= e!996156 e!996154)))

(assert (= (and d!460689 c!252490) b!1552905))

(assert (= (and d!460689 (not c!252490)) b!1552894))

(assert (= (and b!1552894 c!252488) b!1552906))

(assert (= (and b!1552894 (not c!252488)) b!1552902))

(assert (= (and b!1552906 c!252487) b!1552896))

(assert (= (and b!1552906 (not c!252487)) b!1552904))

(assert (= (and b!1552902 c!252489) b!1552893))

(assert (= (and b!1552902 (not c!252489)) b!1552903))

(assert (= (and b!1552902 c!252485) b!1552895))

(assert (= (and b!1552902 (not c!252485)) b!1552901))

(assert (= (and b!1552895 c!252486) b!1552900))

(assert (= (and b!1552895 (not c!252486)) b!1552898))

(assert (= (or b!1552895 b!1552901) bm!101890))

(assert (= (or b!1552895 b!1552901) bm!101891))

(assert (= (or b!1552895 b!1552901) bm!101892))

(assert (= (or b!1552895 b!1552901) bm!101894))

(assert (= (or b!1552906 b!1552893) bm!101895))

(assert (= (or b!1552906 b!1552893) bm!101896))

(assert (= (or b!1552906 b!1552902) bm!101893))

(assert (= (or b!1552906 b!1552893) bm!101889))

(assert (= (and d!460689 res!693569) b!1552899))

(assert (= (and b!1552899 (not res!693570)) b!1552897))

(declare-fun m!1825364 () Bool)

(assert (=> bm!101896 m!1825364))

(declare-fun m!1825366 () Bool)

(assert (=> bm!101895 m!1825366))

(declare-fun m!1825368 () Bool)

(assert (=> d!460689 m!1825368))

(declare-fun m!1825370 () Bool)

(assert (=> d!460689 m!1825370))

(declare-fun m!1825372 () Bool)

(assert (=> d!460689 m!1825372))

(assert (=> d!460689 m!1825368))

(declare-fun m!1825374 () Bool)

(assert (=> d!460689 m!1825374))

(declare-fun m!1825376 () Bool)

(assert (=> d!460689 m!1825376))

(declare-fun m!1825378 () Bool)

(assert (=> d!460689 m!1825378))

(declare-fun m!1825380 () Bool)

(assert (=> d!460689 m!1825380))

(declare-fun m!1825382 () Bool)

(assert (=> d!460689 m!1825382))

(assert (=> bm!101894 m!1825330))

(declare-fun m!1825384 () Bool)

(assert (=> bm!101894 m!1825384))

(declare-fun m!1825386 () Bool)

(assert (=> bm!101893 m!1825386))

(declare-fun m!1825388 () Bool)

(assert (=> b!1552897 m!1825388))

(assert (=> b!1552897 m!1825338))

(declare-fun m!1825390 () Bool)

(assert (=> bm!101889 m!1825390))

(declare-fun m!1825392 () Bool)

(assert (=> b!1552895 m!1825392))

(declare-fun m!1825394 () Bool)

(assert (=> b!1552899 m!1825394))

(declare-fun m!1825396 () Bool)

(assert (=> bm!101890 m!1825396))

(declare-fun m!1825398 () Bool)

(assert (=> bm!101892 m!1825398))

(declare-fun m!1825400 () Bool)

(assert (=> bm!101891 m!1825400))

(assert (=> b!1552902 m!1825330))

(declare-fun m!1825402 () Bool)

(assert (=> b!1552902 m!1825402))

(assert (=> b!1552902 m!1825400))

(declare-fun m!1825404 () Bool)

(assert (=> b!1552902 m!1825404))

(declare-fun m!1825406 () Bool)

(assert (=> b!1552902 m!1825406))

(declare-fun m!1825408 () Bool)

(assert (=> b!1552902 m!1825408))

(declare-fun m!1825410 () Bool)

(assert (=> b!1552902 m!1825410))

(assert (=> b!1552902 m!1825376))

(assert (=> b!1552902 m!1825396))

(assert (=> b!1552902 m!1825376))

(declare-fun m!1825412 () Bool)

(assert (=> b!1552902 m!1825412))

(declare-fun m!1825414 () Bool)

(assert (=> b!1552902 m!1825414))

(assert (=> b!1552902 m!1825408))

(assert (=> b!1552902 m!1825338))

(assert (=> b!1552902 m!1825404))

(declare-fun m!1825416 () Bool)

(assert (=> b!1552902 m!1825416))

(declare-fun m!1825418 () Bool)

(assert (=> b!1552902 m!1825418))

(assert (=> b!1552841 d!460689))

(declare-fun bs!387631 () Bool)

(declare-fun d!460691 () Bool)

(assert (= bs!387631 (and d!460691 b!1552846)))

(declare-fun lambda!65736 () Int)

(assert (=> bs!387631 (= lambda!65736 lambda!65733)))

(assert (=> d!460691 true))

(assert (=> d!460691 (< (dynLambda!7433 order!9871 (toChars!4169 (transformation!2943 rule!240))) (dynLambda!7432 order!9869 lambda!65736))))

(assert (=> d!460691 true))

(assert (=> d!460691 (< (dynLambda!7431 order!9867 (toValue!4310 (transformation!2943 rule!240))) (dynLambda!7432 order!9869 lambda!65736))))

(assert (=> d!460691 (= (semiInverseModEq!1109 (toChars!4169 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))) (Forall!604 lambda!65736))))

(declare-fun bs!387632 () Bool)

(assert (= bs!387632 d!460691))

(declare-fun m!1825420 () Bool)

(assert (=> bs!387632 m!1825420))

(assert (=> b!1552841 d!460691))

(declare-fun d!460693 () Bool)

(declare-fun lt!537933 () Int)

(assert (=> d!460693 (>= lt!537933 0)))

(declare-fun e!996164 () Int)

(assert (=> d!460693 (= lt!537933 e!996164)))

(declare-fun c!252493 () Bool)

(assert (=> d!460693 (= c!252493 ((_ is Nil!16791) lt!537846))))

(assert (=> d!460693 (= (size!13594 lt!537846) lt!537933)))

(declare-fun b!1552915 () Bool)

(assert (=> b!1552915 (= e!996164 0)))

(declare-fun b!1552916 () Bool)

(assert (=> b!1552916 (= e!996164 (+ 1 (size!13594 (t!141282 lt!537846))))))

(assert (= (and d!460693 c!252493) b!1552915))

(assert (= (and d!460693 (not c!252493)) b!1552916))

(declare-fun m!1825422 () Bool)

(assert (=> b!1552916 m!1825422))

(assert (=> b!1552841 d!460693))

(declare-fun d!460695 () Bool)

(declare-fun e!996167 () Bool)

(assert (=> d!460695 e!996167))

(declare-fun res!693573 () Bool)

(assert (=> d!460695 (=> (not res!693573) (not e!996167))))

(assert (=> d!460695 (= res!693573 (semiInverseModEq!1109 (toChars!4169 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))))))

(declare-fun Unit!26045 () Unit!26040)

(assert (=> d!460695 (= (lemmaInv!423 (transformation!2943 rule!240)) Unit!26045)))

(declare-fun b!1552919 () Bool)

(assert (=> b!1552919 (= e!996167 (equivClasses!1054 (toChars!4169 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))))))

(assert (= (and d!460695 res!693573) b!1552919))

(assert (=> d!460695 m!1825332))

(assert (=> b!1552919 m!1825362))

(assert (=> b!1552841 d!460695))

(declare-fun d!460697 () Bool)

(declare-fun e!996170 () Bool)

(assert (=> d!460697 e!996170))

(declare-fun res!693576 () Bool)

(assert (=> d!460697 (=> res!693576 e!996170)))

(assert (=> d!460697 (= res!693576 (isEmpty!10101 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(declare-fun lt!537936 () Unit!26040)

(declare-fun choose!9259 (Regex!4271 List!16859) Unit!26040)

(assert (=> d!460697 (= lt!537936 (choose!9259 (regex!2943 rule!240) lt!537846))))

(assert (=> d!460697 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460697 (= (longestMatchIsAcceptedByMatchOrIsEmpty!313 (regex!2943 rule!240) lt!537846) lt!537936)))

(declare-fun b!1552922 () Bool)

(assert (=> b!1552922 (= e!996170 (matchR!1876 (regex!2943 rule!240) (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(assert (= (and d!460697 (not res!693576)) b!1552922))

(declare-fun m!1825424 () Bool)

(assert (=> d!460697 m!1825424))

(assert (=> d!460697 m!1825330))

(assert (=> d!460697 m!1825338))

(declare-fun m!1825426 () Bool)

(assert (=> d!460697 m!1825426))

(assert (=> d!460697 m!1825338))

(assert (=> d!460697 m!1825330))

(assert (=> d!460697 m!1825340))

(assert (=> d!460697 m!1825378))

(assert (=> b!1552922 m!1825338))

(assert (=> b!1552922 m!1825330))

(assert (=> b!1552922 m!1825338))

(assert (=> b!1552922 m!1825330))

(assert (=> b!1552922 m!1825340))

(declare-fun m!1825428 () Bool)

(assert (=> b!1552922 m!1825428))

(assert (=> b!1552841 d!460697))

(declare-fun d!460699 () Bool)

(declare-fun lt!537937 () Int)

(assert (=> d!460699 (>= lt!537937 0)))

(declare-fun e!996171 () Int)

(assert (=> d!460699 (= lt!537937 e!996171)))

(declare-fun c!252494 () Bool)

(assert (=> d!460699 (= c!252494 ((_ is Nil!16791) Nil!16791))))

(assert (=> d!460699 (= (size!13594 Nil!16791) lt!537937)))

(declare-fun b!1552923 () Bool)

(assert (=> b!1552923 (= e!996171 0)))

(declare-fun b!1552924 () Bool)

(assert (=> b!1552924 (= e!996171 (+ 1 (size!13594 (t!141282 Nil!16791))))))

(assert (= (and d!460699 c!252494) b!1552923))

(assert (= (and d!460699 (not c!252494)) b!1552924))

(declare-fun m!1825430 () Bool)

(assert (=> b!1552924 m!1825430))

(assert (=> b!1552841 d!460699))

(declare-fun d!460701 () Bool)

(declare-fun e!996174 () Bool)

(assert (=> d!460701 e!996174))

(declare-fun res!693579 () Bool)

(assert (=> d!460701 (=> res!693579 e!996174)))

(declare-fun lt!537940 () Bool)

(assert (=> d!460701 (= res!693579 (not lt!537940))))

(declare-fun drop!783 (List!16859 Int) List!16859)

(assert (=> d!460701 (= lt!537940 (= lt!537846 (drop!783 (list!6486 totalInput!568) (- (size!13594 (list!6486 totalInput!568)) (size!13594 lt!537846)))))))

(assert (=> d!460701 (= (isSuffix!372 lt!537846 (list!6486 totalInput!568)) lt!537940)))

(declare-fun b!1552927 () Bool)

(assert (=> b!1552927 (= e!996174 (>= (size!13594 (list!6486 totalInput!568)) (size!13594 lt!537846)))))

(assert (= (and d!460701 (not res!693579)) b!1552927))

(assert (=> d!460701 m!1825346))

(declare-fun m!1825432 () Bool)

(assert (=> d!460701 m!1825432))

(assert (=> d!460701 m!1825330))

(assert (=> d!460701 m!1825346))

(declare-fun m!1825434 () Bool)

(assert (=> d!460701 m!1825434))

(assert (=> b!1552927 m!1825346))

(assert (=> b!1552927 m!1825432))

(assert (=> b!1552927 m!1825330))

(assert (=> b!1552823 d!460701))

(declare-fun d!460703 () Bool)

(declare-fun list!6487 (Conc!5561) List!16859)

(assert (=> d!460703 (= (list!6486 totalInput!568) (list!6487 (c!252471 totalInput!568)))))

(declare-fun bs!387633 () Bool)

(assert (= bs!387633 d!460703))

(declare-fun m!1825436 () Bool)

(assert (=> bs!387633 m!1825436))

(assert (=> b!1552823 d!460703))

(declare-fun d!460705 () Bool)

(assert (=> d!460705 (= (list!6486 input!1676) (list!6487 (c!252471 input!1676)))))

(declare-fun bs!387634 () Bool)

(assert (= bs!387634 d!460705))

(declare-fun m!1825438 () Bool)

(assert (=> bs!387634 m!1825438))

(assert (=> b!1552823 d!460705))

(declare-fun b!1552957 () Bool)

(declare-fun e!996194 () Bool)

(declare-fun e!996193 () Bool)

(assert (=> b!1552957 (= e!996194 e!996193)))

(declare-fun res!693601 () Bool)

(assert (=> b!1552957 (=> res!693601 e!996193)))

(declare-fun call!101904 () Bool)

(assert (=> b!1552957 (= res!693601 call!101904)))

(declare-fun b!1552958 () Bool)

(declare-fun e!996189 () Bool)

(assert (=> b!1552958 (= e!996189 (matchR!1876 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835))) (tail!2206 (_1!9450 lt!537835))))))

(declare-fun b!1552959 () Bool)

(declare-fun res!693596 () Bool)

(declare-fun e!996195 () Bool)

(assert (=> b!1552959 (=> (not res!693596) (not e!996195))))

(assert (=> b!1552959 (= res!693596 (not call!101904))))

(declare-fun b!1552960 () Bool)

(declare-fun e!996192 () Bool)

(declare-fun e!996190 () Bool)

(assert (=> b!1552960 (= e!996192 e!996190)))

(declare-fun c!252502 () Bool)

(assert (=> b!1552960 (= c!252502 ((_ is EmptyLang!4271) (regex!2943 rule!240)))))

(declare-fun b!1552961 () Bool)

(assert (=> b!1552961 (= e!996195 (= (head!3111 (_1!9450 lt!537835)) (c!252472 (regex!2943 rule!240))))))

(declare-fun b!1552962 () Bool)

(declare-fun res!693603 () Bool)

(assert (=> b!1552962 (=> (not res!693603) (not e!996195))))

(assert (=> b!1552962 (= res!693603 (isEmpty!10101 (tail!2206 (_1!9450 lt!537835))))))

(declare-fun b!1552963 () Bool)

(declare-fun lt!537943 () Bool)

(assert (=> b!1552963 (= e!996192 (= lt!537943 call!101904))))

(declare-fun bm!101899 () Bool)

(assert (=> bm!101899 (= call!101904 (isEmpty!10101 (_1!9450 lt!537835)))))

(declare-fun d!460707 () Bool)

(assert (=> d!460707 e!996192))

(declare-fun c!252503 () Bool)

(assert (=> d!460707 (= c!252503 ((_ is EmptyExpr!4271) (regex!2943 rule!240)))))

(assert (=> d!460707 (= lt!537943 e!996189)))

(declare-fun c!252501 () Bool)

(assert (=> d!460707 (= c!252501 (isEmpty!10101 (_1!9450 lt!537835)))))

(assert (=> d!460707 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460707 (= (matchR!1876 (regex!2943 rule!240) (_1!9450 lt!537835)) lt!537943)))

(declare-fun b!1552956 () Bool)

(declare-fun res!693597 () Bool)

(assert (=> b!1552956 (=> res!693597 e!996193)))

(assert (=> b!1552956 (= res!693597 (not (isEmpty!10101 (tail!2206 (_1!9450 lt!537835)))))))

(declare-fun b!1552964 () Bool)

(declare-fun res!693598 () Bool)

(declare-fun e!996191 () Bool)

(assert (=> b!1552964 (=> res!693598 e!996191)))

(assert (=> b!1552964 (= res!693598 e!996195)))

(declare-fun res!693599 () Bool)

(assert (=> b!1552964 (=> (not res!693599) (not e!996195))))

(assert (=> b!1552964 (= res!693599 lt!537943)))

(declare-fun b!1552965 () Bool)

(assert (=> b!1552965 (= e!996190 (not lt!537943))))

(declare-fun b!1552966 () Bool)

(assert (=> b!1552966 (= e!996189 (nullable!1268 (regex!2943 rule!240)))))

(declare-fun b!1552967 () Bool)

(declare-fun res!693602 () Bool)

(assert (=> b!1552967 (=> res!693602 e!996191)))

(assert (=> b!1552967 (= res!693602 (not ((_ is ElementMatch!4271) (regex!2943 rule!240))))))

(assert (=> b!1552967 (= e!996190 e!996191)))

(declare-fun b!1552968 () Bool)

(assert (=> b!1552968 (= e!996191 e!996194)))

(declare-fun res!693600 () Bool)

(assert (=> b!1552968 (=> (not res!693600) (not e!996194))))

(assert (=> b!1552968 (= res!693600 (not lt!537943))))

(declare-fun b!1552969 () Bool)

(assert (=> b!1552969 (= e!996193 (not (= (head!3111 (_1!9450 lt!537835)) (c!252472 (regex!2943 rule!240)))))))

(assert (= (and d!460707 c!252501) b!1552966))

(assert (= (and d!460707 (not c!252501)) b!1552958))

(assert (= (and d!460707 c!252503) b!1552963))

(assert (= (and d!460707 (not c!252503)) b!1552960))

(assert (= (and b!1552960 c!252502) b!1552965))

(assert (= (and b!1552960 (not c!252502)) b!1552967))

(assert (= (and b!1552967 (not res!693602)) b!1552964))

(assert (= (and b!1552964 res!693599) b!1552959))

(assert (= (and b!1552959 res!693596) b!1552962))

(assert (= (and b!1552962 res!693603) b!1552961))

(assert (= (and b!1552964 (not res!693598)) b!1552968))

(assert (= (and b!1552968 res!693600) b!1552957))

(assert (= (and b!1552957 (not res!693601)) b!1552956))

(assert (= (and b!1552956 (not res!693597)) b!1552969))

(assert (= (or b!1552963 b!1552957 b!1552959) bm!101899))

(assert (=> bm!101899 m!1825336))

(assert (=> d!460707 m!1825336))

(assert (=> d!460707 m!1825378))

(declare-fun m!1825440 () Bool)

(assert (=> b!1552956 m!1825440))

(assert (=> b!1552956 m!1825440))

(declare-fun m!1825442 () Bool)

(assert (=> b!1552956 m!1825442))

(declare-fun m!1825444 () Bool)

(assert (=> b!1552969 m!1825444))

(assert (=> b!1552962 m!1825440))

(assert (=> b!1552962 m!1825440))

(assert (=> b!1552962 m!1825442))

(assert (=> b!1552961 m!1825444))

(assert (=> b!1552958 m!1825444))

(assert (=> b!1552958 m!1825444))

(declare-fun m!1825446 () Bool)

(assert (=> b!1552958 m!1825446))

(assert (=> b!1552958 m!1825440))

(assert (=> b!1552958 m!1825446))

(assert (=> b!1552958 m!1825440))

(declare-fun m!1825448 () Bool)

(assert (=> b!1552958 m!1825448))

(assert (=> b!1552966 m!1825386))

(assert (=> b!1552847 d!460707))

(declare-fun d!460709 () Bool)

(declare-fun choose!9260 (Int) Bool)

(assert (=> d!460709 (= (Forall!604 lambda!65733) (choose!9260 lambda!65733))))

(declare-fun bs!387635 () Bool)

(assert (= bs!387635 d!460709))

(declare-fun m!1825450 () Bool)

(assert (=> bs!387635 m!1825450))

(assert (=> b!1552846 d!460709))

(declare-fun d!460711 () Bool)

(declare-fun c!252506 () Bool)

(assert (=> d!460711 (= c!252506 ((_ is Node!5561) (c!252471 totalInput!568)))))

(declare-fun e!996200 () Bool)

(assert (=> d!460711 (= (inv!22064 (c!252471 totalInput!568)) e!996200)))

(declare-fun b!1552976 () Bool)

(declare-fun inv!22066 (Conc!5561) Bool)

(assert (=> b!1552976 (= e!996200 (inv!22066 (c!252471 totalInput!568)))))

(declare-fun b!1552977 () Bool)

(declare-fun e!996201 () Bool)

(assert (=> b!1552977 (= e!996200 e!996201)))

(declare-fun res!693606 () Bool)

(assert (=> b!1552977 (= res!693606 (not ((_ is Leaf!8242) (c!252471 totalInput!568))))))

(assert (=> b!1552977 (=> res!693606 e!996201)))

(declare-fun b!1552978 () Bool)

(declare-fun inv!22067 (Conc!5561) Bool)

(assert (=> b!1552978 (= e!996201 (inv!22067 (c!252471 totalInput!568)))))

(assert (= (and d!460711 c!252506) b!1552976))

(assert (= (and d!460711 (not c!252506)) b!1552977))

(assert (= (and b!1552977 (not res!693606)) b!1552978))

(declare-fun m!1825452 () Bool)

(assert (=> b!1552976 m!1825452))

(declare-fun m!1825454 () Bool)

(assert (=> b!1552978 m!1825454))

(assert (=> b!1552820 d!460711))

(declare-fun d!460713 () Bool)

(assert (=> d!460713 (= (array_inv!1966 (_keys!2081 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))) (bvsge (size!13589 (_keys!2081 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1552848 d!460713))

(declare-fun d!460715 () Bool)

(assert (=> d!460715 (= (array_inv!1969 (_values!2066 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))) (bvsge (size!13591 (_values!2066 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1552848 d!460715))

(declare-fun d!460717 () Bool)

(assert (=> d!460717 (= (array_inv!1966 (_keys!2079 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))) (bvsge (size!13589 (_keys!2079 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1552831 d!460717))

(declare-fun d!460719 () Bool)

(assert (=> d!460719 (= (array_inv!1967 (_values!2064 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))) (bvsge (size!13588 (_values!2064 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1552831 d!460719))

(declare-fun d!460721 () Bool)

(declare-fun res!693611 () Bool)

(declare-fun e!996204 () Bool)

(assert (=> d!460721 (=> (not res!693611) (not e!996204))))

(assert (=> d!460721 (= res!693611 (validRegex!1709 (regex!2943 rule!240)))))

(assert (=> d!460721 (= (ruleValid!681 thiss!16438 rule!240) e!996204)))

(declare-fun b!1552983 () Bool)

(declare-fun res!693612 () Bool)

(assert (=> b!1552983 (=> (not res!693612) (not e!996204))))

(assert (=> b!1552983 (= res!693612 (not (nullable!1268 (regex!2943 rule!240))))))

(declare-fun b!1552984 () Bool)

(assert (=> b!1552984 (= e!996204 (not (= (tag!3207 rule!240) (String!19454 ""))))))

(assert (= (and d!460721 res!693611) b!1552983))

(assert (= (and b!1552983 res!693612) b!1552984))

(assert (=> d!460721 m!1825378))

(assert (=> b!1552983 m!1825386))

(assert (=> b!1552830 d!460721))

(declare-fun b!1553003 () Bool)

(declare-fun res!693633 () Bool)

(declare-fun e!996216 () Bool)

(assert (=> b!1553003 (=> (not res!693633) (not e!996216))))

(declare-fun lt!537954 () Option!3030)

(declare-fun get!4843 (Option!3030) tuple2!16232)

(assert (=> b!1553003 (= res!693633 (= (rule!4725 (_1!9446 (get!4843 lt!537954))) rule!240))))

(declare-fun b!1553004 () Bool)

(declare-fun res!693630 () Bool)

(assert (=> b!1553004 (=> (not res!693630) (not e!996216))))

(declare-fun charsOf!1644 (Token!5468) BalanceConc!11064)

(assert (=> b!1553004 (= res!693630 (= (++!4412 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954)))) (_2!9446 (get!4843 lt!537954))) lt!537846))))

(declare-fun b!1553005 () Bool)

(declare-fun e!996214 () Option!3030)

(assert (=> b!1553005 (= e!996214 None!3029)))

(declare-fun b!1553006 () Bool)

(declare-fun res!693627 () Bool)

(assert (=> b!1553006 (=> (not res!693627) (not e!996216))))

(assert (=> b!1553006 (= res!693627 (= (value!93515 (_1!9446 (get!4843 lt!537954))) (apply!4107 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954)))) (seqFromList!1771 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954)))))))))

(declare-fun b!1553007 () Bool)

(assert (=> b!1553007 (= e!996216 (= (size!13592 (_1!9446 (get!4843 lt!537954))) (size!13594 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954))))))))

(declare-fun b!1553008 () Bool)

(declare-fun res!693632 () Bool)

(assert (=> b!1553008 (=> (not res!693632) (not e!996216))))

(assert (=> b!1553008 (= res!693632 (< (size!13594 (_2!9446 (get!4843 lt!537954))) (size!13594 lt!537846)))))

(declare-fun b!1553009 () Bool)

(declare-fun lt!537955 () tuple2!16238)

(assert (=> b!1553009 (= e!996214 (Some!3029 (tuple2!16233 (Token!5469 (apply!4107 (transformation!2943 rule!240) (seqFromList!1771 (_1!9450 lt!537955))) rule!240 (size!13593 (seqFromList!1771 (_1!9450 lt!537955))) (_1!9450 lt!537955)) (_2!9450 lt!537955))))))

(declare-fun lt!537957 () Unit!26040)

(assert (=> b!1553009 (= lt!537957 (longestMatchIsAcceptedByMatchOrIsEmpty!313 (regex!2943 rule!240) lt!537846))))

(declare-fun res!693631 () Bool)

(assert (=> b!1553009 (= res!693631 (isEmpty!10101 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(declare-fun e!996213 () Bool)

(assert (=> b!1553009 (=> res!693631 e!996213)))

(assert (=> b!1553009 e!996213))

(declare-fun lt!537958 () Unit!26040)

(assert (=> b!1553009 (= lt!537958 lt!537957)))

(declare-fun lt!537956 () Unit!26040)

(declare-fun lemmaSemiInverse!363 (TokenValueInjection!5726 BalanceConc!11064) Unit!26040)

(assert (=> b!1553009 (= lt!537956 (lemmaSemiInverse!363 (transformation!2943 rule!240) (seqFromList!1771 (_1!9450 lt!537955))))))

(declare-fun b!1553010 () Bool)

(declare-fun e!996215 () Bool)

(assert (=> b!1553010 (= e!996215 e!996216)))

(declare-fun res!693629 () Bool)

(assert (=> b!1553010 (=> (not res!693629) (not e!996216))))

(assert (=> b!1553010 (= res!693629 (matchR!1876 (regex!2943 rule!240) (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))))))

(declare-fun d!460723 () Bool)

(assert (=> d!460723 e!996215))

(declare-fun res!693628 () Bool)

(assert (=> d!460723 (=> res!693628 e!996215)))

(declare-fun isEmpty!10102 (Option!3030) Bool)

(assert (=> d!460723 (= res!693628 (isEmpty!10102 lt!537954))))

(assert (=> d!460723 (= lt!537954 e!996214)))

(declare-fun c!252509 () Bool)

(assert (=> d!460723 (= c!252509 (isEmpty!10101 (_1!9450 lt!537955)))))

(declare-fun findLongestMatch!259 (Regex!4271 List!16859) tuple2!16238)

(assert (=> d!460723 (= lt!537955 (findLongestMatch!259 (regex!2943 rule!240) lt!537846))))

(assert (=> d!460723 (ruleValid!681 thiss!16438 rule!240)))

(assert (=> d!460723 (= (maxPrefixOneRule!700 thiss!16438 rule!240 lt!537846) lt!537954)))

(declare-fun b!1553011 () Bool)

(assert (=> b!1553011 (= e!996213 (matchR!1876 (regex!2943 rule!240) (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(assert (= (and d!460723 c!252509) b!1553005))

(assert (= (and d!460723 (not c!252509)) b!1553009))

(assert (= (and b!1553009 (not res!693631)) b!1553011))

(assert (= (and d!460723 (not res!693628)) b!1553010))

(assert (= (and b!1553010 res!693629) b!1553004))

(assert (= (and b!1553004 res!693630) b!1553008))

(assert (= (and b!1553008 res!693632) b!1553003))

(assert (= (and b!1553003 res!693633) b!1553006))

(assert (= (and b!1553006 res!693627) b!1553007))

(declare-fun m!1825456 () Bool)

(assert (=> d!460723 m!1825456))

(declare-fun m!1825458 () Bool)

(assert (=> d!460723 m!1825458))

(declare-fun m!1825460 () Bool)

(assert (=> d!460723 m!1825460))

(assert (=> d!460723 m!1825272))

(declare-fun m!1825462 () Bool)

(assert (=> b!1553003 m!1825462))

(assert (=> b!1553006 m!1825462))

(declare-fun m!1825464 () Bool)

(assert (=> b!1553006 m!1825464))

(assert (=> b!1553006 m!1825464))

(declare-fun m!1825466 () Bool)

(assert (=> b!1553006 m!1825466))

(assert (=> b!1553004 m!1825462))

(declare-fun m!1825468 () Bool)

(assert (=> b!1553004 m!1825468))

(assert (=> b!1553004 m!1825468))

(declare-fun m!1825470 () Bool)

(assert (=> b!1553004 m!1825470))

(assert (=> b!1553004 m!1825470))

(declare-fun m!1825472 () Bool)

(assert (=> b!1553004 m!1825472))

(assert (=> b!1553010 m!1825462))

(assert (=> b!1553010 m!1825468))

(assert (=> b!1553010 m!1825468))

(assert (=> b!1553010 m!1825470))

(assert (=> b!1553010 m!1825470))

(declare-fun m!1825474 () Bool)

(assert (=> b!1553010 m!1825474))

(assert (=> b!1553007 m!1825462))

(declare-fun m!1825476 () Bool)

(assert (=> b!1553007 m!1825476))

(assert (=> b!1553009 m!1825330))

(assert (=> b!1553009 m!1825424))

(declare-fun m!1825478 () Bool)

(assert (=> b!1553009 m!1825478))

(declare-fun m!1825480 () Bool)

(assert (=> b!1553009 m!1825480))

(assert (=> b!1553009 m!1825338))

(assert (=> b!1553009 m!1825330))

(assert (=> b!1553009 m!1825340))

(assert (=> b!1553009 m!1825338))

(assert (=> b!1553009 m!1825478))

(declare-fun m!1825482 () Bool)

(assert (=> b!1553009 m!1825482))

(assert (=> b!1553009 m!1825478))

(declare-fun m!1825484 () Bool)

(assert (=> b!1553009 m!1825484))

(assert (=> b!1553009 m!1825478))

(assert (=> b!1553009 m!1825334))

(assert (=> b!1553008 m!1825462))

(declare-fun m!1825486 () Bool)

(assert (=> b!1553008 m!1825486))

(assert (=> b!1553008 m!1825330))

(assert (=> b!1553011 m!1825338))

(assert (=> b!1553011 m!1825330))

(assert (=> b!1553011 m!1825338))

(assert (=> b!1553011 m!1825330))

(assert (=> b!1553011 m!1825340))

(assert (=> b!1553011 m!1825428))

(assert (=> b!1552827 d!460723))

(declare-fun d!460725 () Bool)

(declare-fun lt!537961 () Int)

(assert (=> d!460725 (= lt!537961 (size!13594 (list!6486 (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun size!13595 (Conc!5561) Int)

(assert (=> d!460725 (= lt!537961 (size!13595 (c!252471 (_1!9447 (_1!9448 lt!537838)))))))

(assert (=> d!460725 (= (size!13593 (_1!9447 (_1!9448 lt!537838))) lt!537961)))

(declare-fun bs!387636 () Bool)

(assert (= bs!387636 d!460725))

(assert (=> bs!387636 m!1825288))

(assert (=> bs!387636 m!1825288))

(declare-fun m!1825488 () Bool)

(assert (=> bs!387636 m!1825488))

(declare-fun m!1825490 () Bool)

(assert (=> bs!387636 m!1825490))

(assert (=> b!1552827 d!460725))

(declare-fun d!460727 () Bool)

(declare-fun dynLambda!7434 (Int BalanceConc!11064) Bool)

(assert (=> d!460727 (dynLambda!7434 lambda!65733 (_1!9447 (_1!9448 lt!537838)))))

(declare-fun lt!537964 () Unit!26040)

(declare-fun choose!9261 (Int BalanceConc!11064) Unit!26040)

(assert (=> d!460727 (= lt!537964 (choose!9261 lambda!65733 (_1!9447 (_1!9448 lt!537838))))))

(assert (=> d!460727 (Forall!604 lambda!65733)))

(assert (=> d!460727 (= (ForallOf!208 lambda!65733 (_1!9447 (_1!9448 lt!537838))) lt!537964)))

(declare-fun b_lambda!48719 () Bool)

(assert (=> (not b_lambda!48719) (not d!460727)))

(declare-fun bs!387637 () Bool)

(assert (= bs!387637 d!460727))

(declare-fun m!1825492 () Bool)

(assert (=> bs!387637 m!1825492))

(declare-fun m!1825494 () Bool)

(assert (=> bs!387637 m!1825494))

(assert (=> bs!387637 m!1825314))

(assert (=> b!1552827 d!460727))

(declare-fun d!460729 () Bool)

(declare-fun fromListB!759 (List!16859) BalanceConc!11064)

(assert (=> d!460729 (= (seqFromList!1771 lt!537839) (fromListB!759 lt!537839))))

(declare-fun bs!387638 () Bool)

(assert (= bs!387638 d!460729))

(declare-fun m!1825496 () Bool)

(assert (=> bs!387638 m!1825496))

(assert (=> b!1552827 d!460729))

(declare-fun d!460731 () Bool)

(declare-fun isEmpty!10103 (Option!3031) Bool)

(assert (=> d!460731 (= (isDefined!2434 (Some!3030 (tuple2!16237 (Token!5469 (apply!4107 (transformation!2943 rule!240) (_1!9447 (_1!9448 lt!537838))) rule!240 (size!13593 (_1!9447 (_1!9448 lt!537838))) lt!537839) (_2!9447 (_1!9448 lt!537838))))) (not (isEmpty!10103 (Some!3030 (tuple2!16237 (Token!5469 (apply!4107 (transformation!2943 rule!240) (_1!9447 (_1!9448 lt!537838))) rule!240 (size!13593 (_1!9447 (_1!9448 lt!537838))) lt!537839) (_2!9447 (_1!9448 lt!537838)))))))))

(declare-fun bs!387639 () Bool)

(assert (= bs!387639 d!460731))

(declare-fun m!1825498 () Bool)

(assert (=> bs!387639 m!1825498))

(assert (=> b!1552827 d!460731))

(declare-fun d!460733 () Bool)

(declare-fun dynLambda!7435 (Int BalanceConc!11064) TokenValue!3033)

(assert (=> d!460733 (= (apply!4107 (transformation!2943 rule!240) (_1!9447 (_1!9448 lt!537838))) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))))

(declare-fun b_lambda!48721 () Bool)

(assert (=> (not b_lambda!48721) (not d!460733)))

(declare-fun t!141288 () Bool)

(declare-fun tb!87281 () Bool)

(assert (=> (and b!1552850 (= (toValue!4310 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))) t!141288) tb!87281))

(declare-fun result!105320 () Bool)

(declare-fun inv!21 (TokenValue!3033) Bool)

(assert (=> tb!87281 (= result!105320 (inv!21 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun m!1825500 () Bool)

(assert (=> tb!87281 m!1825500))

(assert (=> d!460733 t!141288))

(declare-fun b_and!108389 () Bool)

(assert (= b_and!108375 (and (=> t!141288 result!105320) b_and!108389)))

(declare-fun m!1825502 () Bool)

(assert (=> d!460733 m!1825502))

(assert (=> b!1552827 d!460733))

(declare-fun d!460735 () Bool)

(assert (=> d!460735 (= (list!6486 (_1!9447 (_1!9448 lt!537838))) (list!6487 (c!252471 (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun bs!387640 () Bool)

(assert (= bs!387640 d!460735))

(declare-fun m!1825504 () Bool)

(assert (=> bs!387640 m!1825504))

(assert (=> b!1552827 d!460735))

(declare-fun d!460737 () Bool)

(assert (=> d!460737 (= (isDefined!2433 (maxPrefixOneRule!700 thiss!16438 rule!240 lt!537846)) (not (isEmpty!10102 (maxPrefixOneRule!700 thiss!16438 rule!240 lt!537846))))))

(declare-fun bs!387641 () Bool)

(assert (= bs!387641 d!460737))

(assert (=> bs!387641 m!1825282))

(declare-fun m!1825506 () Bool)

(assert (=> bs!387641 m!1825506))

(assert (=> b!1552827 d!460737))

(declare-fun d!460739 () Bool)

(assert (=> d!460739 (dynLambda!7434 lambda!65733 (seqFromList!1771 lt!537839))))

(declare-fun lt!537965 () Unit!26040)

(assert (=> d!460739 (= lt!537965 (choose!9261 lambda!65733 (seqFromList!1771 lt!537839)))))

(assert (=> d!460739 (Forall!604 lambda!65733)))

(assert (=> d!460739 (= (ForallOf!208 lambda!65733 (seqFromList!1771 lt!537839)) lt!537965)))

(declare-fun b_lambda!48723 () Bool)

(assert (=> (not b_lambda!48723) (not d!460739)))

(declare-fun bs!387642 () Bool)

(assert (= bs!387642 d!460739))

(assert (=> bs!387642 m!1825278))

(declare-fun m!1825508 () Bool)

(assert (=> bs!387642 m!1825508))

(assert (=> bs!387642 m!1825278))

(declare-fun m!1825510 () Bool)

(assert (=> bs!387642 m!1825510))

(assert (=> bs!387642 m!1825314))

(assert (=> b!1552827 d!460739))

(declare-fun d!460741 () Bool)

(declare-fun c!252510 () Bool)

(assert (=> d!460741 (= c!252510 ((_ is Node!5561) (c!252471 (totalInput!2450 cacheFurthestNullable!103))))))

(declare-fun e!996220 () Bool)

(assert (=> d!460741 (= (inv!22064 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) e!996220)))

(declare-fun b!1553014 () Bool)

(assert (=> b!1553014 (= e!996220 (inv!22066 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))))

(declare-fun b!1553015 () Bool)

(declare-fun e!996221 () Bool)

(assert (=> b!1553015 (= e!996220 e!996221)))

(declare-fun res!693634 () Bool)

(assert (=> b!1553015 (= res!693634 (not ((_ is Leaf!8242) (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(assert (=> b!1553015 (=> res!693634 e!996221)))

(declare-fun b!1553016 () Bool)

(assert (=> b!1553016 (= e!996221 (inv!22067 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))))

(assert (= (and d!460741 c!252510) b!1553014))

(assert (= (and d!460741 (not c!252510)) b!1553015))

(assert (= (and b!1553015 (not res!693634)) b!1553016))

(declare-fun m!1825512 () Bool)

(assert (=> b!1553014 m!1825512))

(declare-fun m!1825514 () Bool)

(assert (=> b!1553016 m!1825514))

(assert (=> b!1552826 d!460741))

(declare-fun d!460743 () Bool)

(declare-fun validCacheMapFurthestNullable!72 (MutableMap!1730 BalanceConc!11064) Bool)

(assert (=> d!460743 (= (valid!1433 cacheFurthestNullable!103) (validCacheMapFurthestNullable!72 (cache!2111 cacheFurthestNullable!103) (totalInput!2450 cacheFurthestNullable!103)))))

(declare-fun bs!387643 () Bool)

(assert (= bs!387643 d!460743))

(declare-fun m!1825516 () Bool)

(assert (=> bs!387643 m!1825516))

(assert (=> b!1552835 d!460743))

(declare-fun d!460745 () Bool)

(declare-fun lt!537968 () Bool)

(assert (=> d!460745 (= lt!537968 (isEmpty!10101 (list!6486 (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun isEmpty!10104 (Conc!5561) Bool)

(assert (=> d!460745 (= lt!537968 (isEmpty!10104 (c!252471 (_1!9447 (_1!9448 lt!537838)))))))

(assert (=> d!460745 (= (isEmpty!10100 (_1!9447 (_1!9448 lt!537838))) lt!537968)))

(declare-fun bs!387644 () Bool)

(assert (= bs!387644 d!460745))

(assert (=> bs!387644 m!1825288))

(assert (=> bs!387644 m!1825288))

(declare-fun m!1825518 () Bool)

(assert (=> bs!387644 m!1825518))

(declare-fun m!1825520 () Bool)

(assert (=> bs!387644 m!1825520))

(assert (=> b!1552828 d!460745))

(declare-fun b!1553028 () Bool)

(declare-fun e!996224 () Bool)

(declare-fun lt!537971 () tuple4!886)

(assert (=> b!1553028 (= e!996224 (= (totalInput!2450 (_4!443 lt!537971)) totalInput!568))))

(declare-fun b!1553027 () Bool)

(declare-fun res!693645 () Bool)

(assert (=> b!1553027 (=> (not res!693645) (not e!996224))))

(assert (=> b!1553027 (= res!693645 (valid!1433 (_4!443 lt!537971)))))

(declare-fun b!1553025 () Bool)

(declare-fun res!693646 () Bool)

(assert (=> b!1553025 (=> (not res!693646) (not e!996224))))

(assert (=> b!1553025 (= res!693646 (valid!1432 (_3!1330 lt!537971)))))

(declare-fun b!1553026 () Bool)

(declare-fun res!693643 () Bool)

(assert (=> b!1553026 (=> (not res!693643) (not e!996224))))

(assert (=> b!1553026 (= res!693643 (valid!1434 (_2!9448 lt!537971)))))

(declare-fun d!460747 () Bool)

(assert (=> d!460747 e!996224))

(declare-fun res!693644 () Bool)

(assert (=> d!460747 (=> (not res!693644) (not e!996224))))

(assert (=> d!460747 (= res!693644 (= (tuple2!16239 (list!6486 (_1!9447 (_1!9448 lt!537971))) (list!6486 (_2!9447 (_1!9448 lt!537971)))) (findLongestMatch!259 (regex!2943 rule!240) (list!6486 input!1676))))))

(declare-fun choose!9262 (Regex!4271 BalanceConc!11064 BalanceConc!11064 CacheUp!1052 CacheDown!1056 CacheFurthestNullable!478) tuple4!886)

(assert (=> d!460747 (= lt!537971 (choose!9262 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!460747 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460747 (= (findLongestMatchWithZipperSequenceV3Mem!46 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!537971)))

(assert (= (and d!460747 res!693644) b!1553025))

(assert (= (and b!1553025 res!693646) b!1553026))

(assert (= (and b!1553026 res!693643) b!1553027))

(assert (= (and b!1553027 res!693645) b!1553028))

(declare-fun m!1825522 () Bool)

(assert (=> b!1553027 m!1825522))

(declare-fun m!1825524 () Bool)

(assert (=> b!1553025 m!1825524))

(declare-fun m!1825526 () Bool)

(assert (=> b!1553026 m!1825526))

(declare-fun m!1825528 () Bool)

(assert (=> d!460747 m!1825528))

(assert (=> d!460747 m!1825378))

(declare-fun m!1825530 () Bool)

(assert (=> d!460747 m!1825530))

(assert (=> d!460747 m!1825350))

(declare-fun m!1825532 () Bool)

(assert (=> d!460747 m!1825532))

(assert (=> d!460747 m!1825350))

(declare-fun m!1825534 () Bool)

(assert (=> d!460747 m!1825534))

(assert (=> b!1552828 d!460747))

(declare-fun d!460749 () Bool)

(declare-fun validCacheMapUp!159 (MutableMap!1729) Bool)

(assert (=> d!460749 (= (valid!1434 cacheUp!755) (validCacheMapUp!159 (cache!2110 cacheUp!755)))))

(declare-fun bs!387645 () Bool)

(assert (= bs!387645 d!460749))

(declare-fun m!1825536 () Bool)

(assert (=> bs!387645 m!1825536))

(assert (=> b!1552845 d!460749))

(declare-fun d!460751 () Bool)

(declare-fun c!252511 () Bool)

(assert (=> d!460751 (= c!252511 ((_ is Node!5561) (c!252471 input!1676)))))

(declare-fun e!996225 () Bool)

(assert (=> d!460751 (= (inv!22064 (c!252471 input!1676)) e!996225)))

(declare-fun b!1553029 () Bool)

(assert (=> b!1553029 (= e!996225 (inv!22066 (c!252471 input!1676)))))

(declare-fun b!1553030 () Bool)

(declare-fun e!996226 () Bool)

(assert (=> b!1553030 (= e!996225 e!996226)))

(declare-fun res!693647 () Bool)

(assert (=> b!1553030 (= res!693647 (not ((_ is Leaf!8242) (c!252471 input!1676))))))

(assert (=> b!1553030 (=> res!693647 e!996226)))

(declare-fun b!1553031 () Bool)

(assert (=> b!1553031 (= e!996226 (inv!22067 (c!252471 input!1676)))))

(assert (= (and d!460751 c!252511) b!1553029))

(assert (= (and d!460751 (not c!252511)) b!1553030))

(assert (= (and b!1553030 (not res!693647)) b!1553031))

(declare-fun m!1825538 () Bool)

(assert (=> b!1553029 m!1825538))

(declare-fun m!1825540 () Bool)

(assert (=> b!1553031 m!1825540))

(assert (=> b!1552851 d!460751))

(declare-fun d!460753 () Bool)

(assert (=> d!460753 (= (array_inv!1966 (_keys!2080 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))) (bvsge (size!13589 (_keys!2080 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1552842 d!460753))

(declare-fun d!460755 () Bool)

(assert (=> d!460755 (= (array_inv!1968 (_values!2065 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))) (bvsge (size!13590 (_values!2065 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1552842 d!460755))

(declare-fun d!460757 () Bool)

(declare-fun isBalanced!1641 (Conc!5561) Bool)

(assert (=> d!460757 (= (inv!22060 totalInput!568) (isBalanced!1641 (c!252471 totalInput!568)))))

(declare-fun bs!387646 () Bool)

(assert (= bs!387646 d!460757))

(declare-fun m!1825542 () Bool)

(assert (=> bs!387646 m!1825542))

(assert (=> start!143906 d!460757))

(declare-fun d!460759 () Bool)

(declare-fun res!693650 () Bool)

(declare-fun e!996229 () Bool)

(assert (=> d!460759 (=> (not res!693650) (not e!996229))))

(assert (=> d!460759 (= res!693650 ((_ is HashMap!1731) (cache!2112 cacheDown!768)))))

(assert (=> d!460759 (= (inv!22063 cacheDown!768) e!996229)))

(declare-fun b!1553034 () Bool)

(declare-fun validCacheMapDown!159 (MutableMap!1731) Bool)

(assert (=> b!1553034 (= e!996229 (validCacheMapDown!159 (cache!2112 cacheDown!768)))))

(assert (= (and d!460759 res!693650) b!1553034))

(declare-fun m!1825544 () Bool)

(assert (=> b!1553034 m!1825544))

(assert (=> start!143906 d!460759))

(declare-fun d!460761 () Bool)

(declare-fun res!693653 () Bool)

(declare-fun e!996232 () Bool)

(assert (=> d!460761 (=> (not res!693653) (not e!996232))))

(assert (=> d!460761 (= res!693653 ((_ is HashMap!1729) (cache!2110 cacheUp!755)))))

(assert (=> d!460761 (= (inv!22061 cacheUp!755) e!996232)))

(declare-fun b!1553037 () Bool)

(assert (=> b!1553037 (= e!996232 (validCacheMapUp!159 (cache!2110 cacheUp!755)))))

(assert (= (and d!460761 res!693653) b!1553037))

(assert (=> b!1553037 m!1825536))

(assert (=> start!143906 d!460761))

(declare-fun d!460763 () Bool)

(assert (=> d!460763 (= (inv!22060 input!1676) (isBalanced!1641 (c!252471 input!1676)))))

(declare-fun bs!387647 () Bool)

(assert (= bs!387647 d!460763))

(declare-fun m!1825546 () Bool)

(assert (=> bs!387647 m!1825546))

(assert (=> start!143906 d!460763))

(declare-fun d!460765 () Bool)

(declare-fun res!693656 () Bool)

(declare-fun e!996235 () Bool)

(assert (=> d!460765 (=> (not res!693656) (not e!996235))))

(assert (=> d!460765 (= res!693656 ((_ is HashMap!1730) (cache!2111 cacheFurthestNullable!103)))))

(assert (=> d!460765 (= (inv!22062 cacheFurthestNullable!103) e!996235)))

(declare-fun b!1553040 () Bool)

(assert (=> b!1553040 (= e!996235 (validCacheMapFurthestNullable!72 (cache!2111 cacheFurthestNullable!103) (totalInput!2450 cacheFurthestNullable!103)))))

(assert (= (and d!460765 res!693656) b!1553040))

(assert (=> b!1553040 m!1825516))

(assert (=> start!143906 d!460765))

(declare-fun d!460767 () Bool)

(assert (=> d!460767 (= (inv!22060 (totalInput!2450 cacheFurthestNullable!103)) (isBalanced!1641 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))))

(declare-fun bs!387648 () Bool)

(assert (= bs!387648 d!460767))

(declare-fun m!1825548 () Bool)

(assert (=> bs!387648 m!1825548))

(assert (=> b!1552843 d!460767))

(declare-fun d!460769 () Bool)

(assert (=> d!460769 (= (valid!1432 cacheDown!768) (validCacheMapDown!159 (cache!2112 cacheDown!768)))))

(declare-fun bs!387649 () Bool)

(assert (= bs!387649 d!460769))

(assert (=> bs!387649 m!1825544))

(assert (=> b!1552825 d!460769))

(declare-fun b!1553054 () Bool)

(declare-fun e!996238 () Bool)

(declare-fun tp!454474 () Bool)

(declare-fun tp!454473 () Bool)

(assert (=> b!1553054 (= e!996238 (and tp!454474 tp!454473))))

(assert (=> b!1552839 (= tp!454453 e!996238)))

(declare-fun b!1553052 () Bool)

(declare-fun tp!454475 () Bool)

(declare-fun tp!454472 () Bool)

(assert (=> b!1553052 (= e!996238 (and tp!454475 tp!454472))))

(declare-fun b!1553053 () Bool)

(declare-fun tp!454471 () Bool)

(assert (=> b!1553053 (= e!996238 tp!454471)))

(declare-fun b!1553051 () Bool)

(declare-fun tp_is_empty!7063 () Bool)

(assert (=> b!1553051 (= e!996238 tp_is_empty!7063)))

(assert (= (and b!1552839 ((_ is ElementMatch!4271) (regex!2943 rule!240))) b!1553051))

(assert (= (and b!1552839 ((_ is Concat!7305) (regex!2943 rule!240))) b!1553052))

(assert (= (and b!1552839 ((_ is Star!4271) (regex!2943 rule!240))) b!1553053))

(assert (= (and b!1552839 ((_ is Union!4271) (regex!2943 rule!240))) b!1553054))

(declare-fun setNonEmpty!10684 () Bool)

(declare-fun e!996245 () Bool)

(declare-fun tp!454486 () Bool)

(declare-fun setRes!10684 () Bool)

(declare-fun setElem!10684 () Context!1578)

(declare-fun inv!22068 (Context!1578) Bool)

(assert (=> setNonEmpty!10684 (= setRes!10684 (and tp!454486 (inv!22068 setElem!10684) e!996245))))

(declare-fun setRest!10684 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10684 (= (_2!9445 (h!22196 mapDefault!8285)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10684 true) setRest!10684))))

(declare-fun b!1553063 () Bool)

(declare-fun e!996246 () Bool)

(declare-fun tp!454487 () Bool)

(assert (=> b!1553063 (= e!996246 tp!454487)))

(declare-fun setIsEmpty!10684 () Bool)

(assert (=> setIsEmpty!10684 setRes!10684))

(declare-fun b!1553064 () Bool)

(declare-fun tp!454489 () Bool)

(assert (=> b!1553064 (= e!996245 tp!454489)))

(declare-fun e!996247 () Bool)

(assert (=> b!1552821 (= tp!454450 e!996247)))

(declare-fun b!1553065 () Bool)

(declare-fun tp!454488 () Bool)

(declare-fun tp!454490 () Bool)

(assert (=> b!1553065 (= e!996247 (and tp!454488 (inv!22068 (_2!9444 (_1!9445 (h!22196 mapDefault!8285)))) e!996246 tp_is_empty!7063 setRes!10684 tp!454490))))

(declare-fun condSetEmpty!10684 () Bool)

(assert (=> b!1553065 (= condSetEmpty!10684 (= (_2!9445 (h!22196 mapDefault!8285)) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553065 b!1553063))

(assert (= (and b!1553065 condSetEmpty!10684) setIsEmpty!10684))

(assert (= (and b!1553065 (not condSetEmpty!10684)) setNonEmpty!10684))

(assert (= setNonEmpty!10684 b!1553064))

(assert (= (and b!1552821 ((_ is Cons!16795) mapDefault!8285)) b!1553065))

(declare-fun m!1825550 () Bool)

(assert (=> setNonEmpty!10684 m!1825550))

(declare-fun m!1825552 () Bool)

(assert (=> b!1553065 m!1825552))

(declare-fun mapIsEmpty!8288 () Bool)

(declare-fun mapRes!8288 () Bool)

(assert (=> mapIsEmpty!8288 mapRes!8288))

(declare-fun b!1553080 () Bool)

(declare-fun e!996263 () Bool)

(declare-fun tp!454517 () Bool)

(assert (=> b!1553080 (= e!996263 tp!454517)))

(declare-fun mapNonEmpty!8288 () Bool)

(declare-fun tp!454515 () Bool)

(declare-fun e!996261 () Bool)

(assert (=> mapNonEmpty!8288 (= mapRes!8288 (and tp!454515 e!996261))))

(declare-fun mapValue!8288 () List!16861)

(declare-fun mapKey!8288 () (_ BitVec 32))

(declare-fun mapRest!8288 () (Array (_ BitVec 32) List!16861))

(assert (=> mapNonEmpty!8288 (= mapRest!8284 (store mapRest!8288 mapKey!8288 mapValue!8288))))

(declare-fun condMapEmpty!8288 () Bool)

(declare-fun mapDefault!8288 () List!16861)

(assert (=> mapNonEmpty!8285 (= condMapEmpty!8288 (= mapRest!8284 ((as const (Array (_ BitVec 32) List!16861)) mapDefault!8288)))))

(declare-fun e!996264 () Bool)

(assert (=> mapNonEmpty!8285 (= tp!454441 (and e!996264 mapRes!8288))))

(declare-fun b!1553081 () Bool)

(declare-fun e!996262 () Bool)

(declare-fun tp!454513 () Bool)

(assert (=> b!1553081 (= e!996262 tp!454513)))

(declare-fun tp!454514 () Bool)

(declare-fun setNonEmpty!10689 () Bool)

(declare-fun setElem!10690 () Context!1578)

(declare-fun setRes!10690 () Bool)

(assert (=> setNonEmpty!10689 (= setRes!10690 (and tp!454514 (inv!22068 setElem!10690) e!996263))))

(declare-fun setRest!10689 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10689 (= (_2!9441 (h!22194 mapValue!8288)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10690 true) setRest!10689))))

(declare-fun setNonEmpty!10690 () Bool)

(declare-fun tp!454512 () Bool)

(declare-fun setRes!10689 () Bool)

(declare-fun e!996260 () Bool)

(declare-fun setElem!10689 () Context!1578)

(assert (=> setNonEmpty!10690 (= setRes!10689 (and tp!454512 (inv!22068 setElem!10689) e!996260))))

(declare-fun setRest!10690 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10690 (= (_2!9441 (h!22194 mapDefault!8288)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10689 true) setRest!10690))))

(declare-fun e!996265 () Bool)

(declare-fun tp!454510 () Bool)

(declare-fun b!1553082 () Bool)

(assert (=> b!1553082 (= e!996264 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 mapDefault!8288)))) e!996265 tp_is_empty!7063 setRes!10689 tp!454510))))

(declare-fun condSetEmpty!10689 () Bool)

(assert (=> b!1553082 (= condSetEmpty!10689 (= (_2!9441 (h!22194 mapDefault!8288)) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun b!1553083 () Bool)

(declare-fun tp!454511 () Bool)

(assert (=> b!1553083 (= e!996261 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 mapValue!8288)))) e!996262 tp_is_empty!7063 setRes!10690 tp!454511))))

(declare-fun condSetEmpty!10690 () Bool)

(assert (=> b!1553083 (= condSetEmpty!10690 (= (_2!9441 (h!22194 mapValue!8288)) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun b!1553084 () Bool)

(declare-fun tp!454516 () Bool)

(assert (=> b!1553084 (= e!996260 tp!454516)))

(declare-fun setIsEmpty!10689 () Bool)

(assert (=> setIsEmpty!10689 setRes!10690))

(declare-fun b!1553085 () Bool)

(declare-fun tp!454509 () Bool)

(assert (=> b!1553085 (= e!996265 tp!454509)))

(declare-fun setIsEmpty!10690 () Bool)

(assert (=> setIsEmpty!10690 setRes!10689))

(assert (= (and mapNonEmpty!8285 condMapEmpty!8288) mapIsEmpty!8288))

(assert (= (and mapNonEmpty!8285 (not condMapEmpty!8288)) mapNonEmpty!8288))

(assert (= b!1553083 b!1553081))

(assert (= (and b!1553083 condSetEmpty!10690) setIsEmpty!10689))

(assert (= (and b!1553083 (not condSetEmpty!10690)) setNonEmpty!10689))

(assert (= setNonEmpty!10689 b!1553080))

(assert (= (and mapNonEmpty!8288 ((_ is Cons!16793) mapValue!8288)) b!1553083))

(assert (= b!1553082 b!1553085))

(assert (= (and b!1553082 condSetEmpty!10689) setIsEmpty!10690))

(assert (= (and b!1553082 (not condSetEmpty!10689)) setNonEmpty!10690))

(assert (= setNonEmpty!10690 b!1553084))

(assert (= (and mapNonEmpty!8285 ((_ is Cons!16793) mapDefault!8288)) b!1553082))

(declare-fun m!1825554 () Bool)

(assert (=> b!1553082 m!1825554))

(declare-fun m!1825556 () Bool)

(assert (=> b!1553083 m!1825556))

(declare-fun m!1825558 () Bool)

(assert (=> mapNonEmpty!8288 m!1825558))

(declare-fun m!1825560 () Bool)

(assert (=> setNonEmpty!10689 m!1825560))

(declare-fun m!1825562 () Bool)

(assert (=> setNonEmpty!10690 m!1825562))

(declare-fun setIsEmpty!10693 () Bool)

(declare-fun setRes!10693 () Bool)

(assert (=> setIsEmpty!10693 setRes!10693))

(declare-fun setElem!10693 () Context!1578)

(declare-fun setNonEmpty!10693 () Bool)

(declare-fun tp!454529 () Bool)

(declare-fun e!996274 () Bool)

(assert (=> setNonEmpty!10693 (= setRes!10693 (and tp!454529 (inv!22068 setElem!10693) e!996274))))

(declare-fun setRest!10693 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10693 (= (_2!9441 (h!22194 mapValue!8285)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10693 true) setRest!10693))))

(declare-fun b!1553094 () Bool)

(declare-fun tp!454526 () Bool)

(assert (=> b!1553094 (= e!996274 tp!454526)))

(declare-fun e!996273 () Bool)

(assert (=> mapNonEmpty!8285 (= tp!454456 e!996273)))

(declare-fun b!1553095 () Bool)

(declare-fun e!996272 () Bool)

(declare-fun tp!454528 () Bool)

(assert (=> b!1553095 (= e!996272 tp!454528)))

(declare-fun b!1553096 () Bool)

(declare-fun tp!454527 () Bool)

(assert (=> b!1553096 (= e!996273 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 mapValue!8285)))) e!996272 tp_is_empty!7063 setRes!10693 tp!454527))))

(declare-fun condSetEmpty!10693 () Bool)

(assert (=> b!1553096 (= condSetEmpty!10693 (= (_2!9441 (h!22194 mapValue!8285)) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553096 b!1553095))

(assert (= (and b!1553096 condSetEmpty!10693) setIsEmpty!10693))

(assert (= (and b!1553096 (not condSetEmpty!10693)) setNonEmpty!10693))

(assert (= setNonEmpty!10693 b!1553094))

(assert (= (and mapNonEmpty!8285 ((_ is Cons!16793) mapValue!8285)) b!1553096))

(declare-fun m!1825564 () Bool)

(assert (=> setNonEmpty!10693 m!1825564))

(declare-fun m!1825566 () Bool)

(assert (=> b!1553096 m!1825566))

(declare-fun tp!454536 () Bool)

(declare-fun e!996279 () Bool)

(declare-fun tp!454537 () Bool)

(declare-fun b!1553105 () Bool)

(assert (=> b!1553105 (= e!996279 (and (inv!22064 (left!13655 (c!252471 totalInput!568))) tp!454536 (inv!22064 (right!13985 (c!252471 totalInput!568))) tp!454537))))

(declare-fun b!1553107 () Bool)

(declare-fun e!996280 () Bool)

(declare-fun tp!454538 () Bool)

(assert (=> b!1553107 (= e!996280 tp!454538)))

(declare-fun b!1553106 () Bool)

(declare-fun inv!22069 (IArray!11127) Bool)

(assert (=> b!1553106 (= e!996279 (and (inv!22069 (xs!8361 (c!252471 totalInput!568))) e!996280))))

(assert (=> b!1552820 (= tp!454459 (and (inv!22064 (c!252471 totalInput!568)) e!996279))))

(assert (= (and b!1552820 ((_ is Node!5561) (c!252471 totalInput!568))) b!1553105))

(assert (= b!1553106 b!1553107))

(assert (= (and b!1552820 ((_ is Leaf!8242) (c!252471 totalInput!568))) b!1553106))

(declare-fun m!1825568 () Bool)

(assert (=> b!1553105 m!1825568))

(declare-fun m!1825570 () Bool)

(assert (=> b!1553105 m!1825570))

(declare-fun m!1825572 () Bool)

(assert (=> b!1553106 m!1825572))

(assert (=> b!1552820 m!1825344))

(declare-fun setNonEmpty!10694 () Bool)

(declare-fun setElem!10694 () Context!1578)

(declare-fun setRes!10694 () Bool)

(declare-fun e!996281 () Bool)

(declare-fun tp!454539 () Bool)

(assert (=> setNonEmpty!10694 (= setRes!10694 (and tp!454539 (inv!22068 setElem!10694) e!996281))))

(declare-fun setRest!10694 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10694 (= (_2!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10694 true) setRest!10694))))

(declare-fun b!1553108 () Bool)

(declare-fun e!996282 () Bool)

(declare-fun tp!454540 () Bool)

(assert (=> b!1553108 (= e!996282 tp!454540)))

(declare-fun setIsEmpty!10694 () Bool)

(assert (=> setIsEmpty!10694 setRes!10694))

(declare-fun b!1553109 () Bool)

(declare-fun tp!454542 () Bool)

(assert (=> b!1553109 (= e!996281 tp!454542)))

(declare-fun e!996283 () Bool)

(assert (=> b!1552848 (= tp!454437 e!996283)))

(declare-fun tp!454543 () Bool)

(declare-fun tp!454541 () Bool)

(declare-fun b!1553110 () Bool)

(assert (=> b!1553110 (= e!996283 (and tp!454541 (inv!22068 (_2!9444 (_1!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))))) e!996282 tp_is_empty!7063 setRes!10694 tp!454543))))

(declare-fun condSetEmpty!10694 () Bool)

(assert (=> b!1553110 (= condSetEmpty!10694 (= (_2!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553110 b!1553108))

(assert (= (and b!1553110 condSetEmpty!10694) setIsEmpty!10694))

(assert (= (and b!1553110 (not condSetEmpty!10694)) setNonEmpty!10694))

(assert (= setNonEmpty!10694 b!1553109))

(assert (= (and b!1552848 ((_ is Cons!16795) (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))) b!1553110))

(declare-fun m!1825574 () Bool)

(assert (=> setNonEmpty!10694 m!1825574))

(declare-fun m!1825576 () Bool)

(assert (=> b!1553110 m!1825576))

(declare-fun setRes!10695 () Bool)

(declare-fun setElem!10695 () Context!1578)

(declare-fun tp!454544 () Bool)

(declare-fun e!996284 () Bool)

(declare-fun setNonEmpty!10695 () Bool)

(assert (=> setNonEmpty!10695 (= setRes!10695 (and tp!454544 (inv!22068 setElem!10695) e!996284))))

(declare-fun setRest!10695 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10695 (= (_2!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10695 true) setRest!10695))))

(declare-fun b!1553111 () Bool)

(declare-fun e!996285 () Bool)

(declare-fun tp!454545 () Bool)

(assert (=> b!1553111 (= e!996285 tp!454545)))

(declare-fun setIsEmpty!10695 () Bool)

(assert (=> setIsEmpty!10695 setRes!10695))

(declare-fun b!1553112 () Bool)

(declare-fun tp!454547 () Bool)

(assert (=> b!1553112 (= e!996284 tp!454547)))

(declare-fun e!996286 () Bool)

(assert (=> b!1552848 (= tp!454439 e!996286)))

(declare-fun tp!454546 () Bool)

(declare-fun b!1553113 () Bool)

(declare-fun tp!454548 () Bool)

(assert (=> b!1553113 (= e!996286 (and tp!454546 (inv!22068 (_2!9444 (_1!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))))) e!996285 tp_is_empty!7063 setRes!10695 tp!454548))))

(declare-fun condSetEmpty!10695 () Bool)

(assert (=> b!1553113 (= condSetEmpty!10695 (= (_2!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553113 b!1553111))

(assert (= (and b!1553113 condSetEmpty!10695) setIsEmpty!10695))

(assert (= (and b!1553113 (not condSetEmpty!10695)) setNonEmpty!10695))

(assert (= setNonEmpty!10695 b!1553112))

(assert (= (and b!1552848 ((_ is Cons!16795) (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))) b!1553113))

(declare-fun m!1825578 () Bool)

(assert (=> setNonEmpty!10695 m!1825578))

(declare-fun m!1825580 () Bool)

(assert (=> b!1553113 m!1825580))

(declare-fun setIsEmpty!10696 () Bool)

(declare-fun setRes!10696 () Bool)

(assert (=> setIsEmpty!10696 setRes!10696))

(declare-fun tp!454552 () Bool)

(declare-fun e!996289 () Bool)

(declare-fun setElem!10696 () Context!1578)

(declare-fun setNonEmpty!10696 () Bool)

(assert (=> setNonEmpty!10696 (= setRes!10696 (and tp!454552 (inv!22068 setElem!10696) e!996289))))

(declare-fun setRest!10696 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10696 (= (_2!9441 (h!22194 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10696 true) setRest!10696))))

(declare-fun b!1553114 () Bool)

(declare-fun tp!454549 () Bool)

(assert (=> b!1553114 (= e!996289 tp!454549)))

(declare-fun e!996288 () Bool)

(assert (=> b!1552831 (= tp!454445 e!996288)))

(declare-fun b!1553115 () Bool)

(declare-fun e!996287 () Bool)

(declare-fun tp!454551 () Bool)

(assert (=> b!1553115 (= e!996287 tp!454551)))

(declare-fun b!1553116 () Bool)

(declare-fun tp!454550 () Bool)

(assert (=> b!1553116 (= e!996288 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))))) e!996287 tp_is_empty!7063 setRes!10696 tp!454550))))

(declare-fun condSetEmpty!10696 () Bool)

(assert (=> b!1553116 (= condSetEmpty!10696 (= (_2!9441 (h!22194 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553116 b!1553115))

(assert (= (and b!1553116 condSetEmpty!10696) setIsEmpty!10696))

(assert (= (and b!1553116 (not condSetEmpty!10696)) setNonEmpty!10696))

(assert (= setNonEmpty!10696 b!1553114))

(assert (= (and b!1552831 ((_ is Cons!16793) (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))) b!1553116))

(declare-fun m!1825582 () Bool)

(assert (=> setNonEmpty!10696 m!1825582))

(declare-fun m!1825584 () Bool)

(assert (=> b!1553116 m!1825584))

(declare-fun setIsEmpty!10697 () Bool)

(declare-fun setRes!10697 () Bool)

(assert (=> setIsEmpty!10697 setRes!10697))

(declare-fun tp!454556 () Bool)

(declare-fun setNonEmpty!10697 () Bool)

(declare-fun e!996292 () Bool)

(declare-fun setElem!10697 () Context!1578)

(assert (=> setNonEmpty!10697 (= setRes!10697 (and tp!454556 (inv!22068 setElem!10697) e!996292))))

(declare-fun setRest!10697 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10697 (= (_2!9441 (h!22194 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10697 true) setRest!10697))))

(declare-fun b!1553117 () Bool)

(declare-fun tp!454553 () Bool)

(assert (=> b!1553117 (= e!996292 tp!454553)))

(declare-fun e!996291 () Bool)

(assert (=> b!1552831 (= tp!454452 e!996291)))

(declare-fun b!1553118 () Bool)

(declare-fun e!996290 () Bool)

(declare-fun tp!454555 () Bool)

(assert (=> b!1553118 (= e!996290 tp!454555)))

(declare-fun tp!454554 () Bool)

(declare-fun b!1553119 () Bool)

(assert (=> b!1553119 (= e!996291 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))))) e!996290 tp_is_empty!7063 setRes!10697 tp!454554))))

(declare-fun condSetEmpty!10697 () Bool)

(assert (=> b!1553119 (= condSetEmpty!10697 (= (_2!9441 (h!22194 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553119 b!1553118))

(assert (= (and b!1553119 condSetEmpty!10697) setIsEmpty!10697))

(assert (= (and b!1553119 (not condSetEmpty!10697)) setNonEmpty!10697))

(assert (= setNonEmpty!10697 b!1553117))

(assert (= (and b!1552831 ((_ is Cons!16793) (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))) b!1553119))

(declare-fun m!1825586 () Bool)

(assert (=> setNonEmpty!10697 m!1825586))

(declare-fun m!1825588 () Bool)

(assert (=> b!1553119 m!1825588))

(declare-fun mapIsEmpty!8291 () Bool)

(declare-fun mapRes!8291 () Bool)

(assert (=> mapIsEmpty!8291 mapRes!8291))

(declare-fun setRes!10703 () Bool)

(declare-fun e!996303 () Bool)

(declare-fun tp!454576 () Bool)

(declare-fun setElem!10703 () Context!1578)

(declare-fun setNonEmpty!10702 () Bool)

(assert (=> setNonEmpty!10702 (= setRes!10703 (and tp!454576 (inv!22068 setElem!10703) e!996303))))

(declare-fun mapValue!8291 () List!16862)

(declare-fun setRest!10702 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10702 (= (_1!9442 (_1!9443 (h!22195 mapValue!8291))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10703 true) setRest!10702))))

(declare-fun b!1553131 () Bool)

(declare-fun e!996302 () Bool)

(declare-fun tp!454574 () Bool)

(assert (=> b!1553131 (= e!996302 tp!454574)))

(declare-fun setElem!10702 () Context!1578)

(declare-fun setNonEmpty!10703 () Bool)

(declare-fun setRes!10702 () Bool)

(declare-fun tp!454575 () Bool)

(assert (=> setNonEmpty!10703 (= setRes!10702 (and tp!454575 (inv!22068 setElem!10702) e!996302))))

(declare-fun mapDefault!8291 () List!16862)

(declare-fun setRest!10703 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10703 (= (_1!9442 (_1!9443 (h!22195 mapDefault!8291))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10702 true) setRest!10703))))

(declare-fun setIsEmpty!10702 () Bool)

(assert (=> setIsEmpty!10702 setRes!10702))

(declare-fun condMapEmpty!8291 () Bool)

(assert (=> mapNonEmpty!8284 (= condMapEmpty!8291 (= mapRest!8283 ((as const (Array (_ BitVec 32) List!16862)) mapDefault!8291)))))

(declare-fun e!996301 () Bool)

(assert (=> mapNonEmpty!8284 (= tp!454440 (and e!996301 mapRes!8291))))

(declare-fun b!1553130 () Bool)

(declare-fun tp!454571 () Bool)

(assert (=> b!1553130 (= e!996301 (and setRes!10702 tp!454571))))

(declare-fun condSetEmpty!10703 () Bool)

(assert (=> b!1553130 (= condSetEmpty!10703 (= (_1!9442 (_1!9443 (h!22195 mapDefault!8291))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10703 () Bool)

(assert (=> setIsEmpty!10703 setRes!10703))

(declare-fun b!1553132 () Bool)

(declare-fun tp!454577 () Bool)

(assert (=> b!1553132 (= e!996303 tp!454577)))

(declare-fun mapNonEmpty!8291 () Bool)

(declare-fun tp!454573 () Bool)

(declare-fun e!996304 () Bool)

(assert (=> mapNonEmpty!8291 (= mapRes!8291 (and tp!454573 e!996304))))

(declare-fun mapKey!8291 () (_ BitVec 32))

(declare-fun mapRest!8291 () (Array (_ BitVec 32) List!16862))

(assert (=> mapNonEmpty!8291 (= mapRest!8283 (store mapRest!8291 mapKey!8291 mapValue!8291))))

(declare-fun b!1553133 () Bool)

(declare-fun tp!454572 () Bool)

(assert (=> b!1553133 (= e!996304 (and setRes!10703 tp!454572))))

(declare-fun condSetEmpty!10702 () Bool)

(assert (=> b!1553133 (= condSetEmpty!10702 (= (_1!9442 (_1!9443 (h!22195 mapValue!8291))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= (and mapNonEmpty!8284 condMapEmpty!8291) mapIsEmpty!8291))

(assert (= (and mapNonEmpty!8284 (not condMapEmpty!8291)) mapNonEmpty!8291))

(assert (= (and b!1553133 condSetEmpty!10702) setIsEmpty!10703))

(assert (= (and b!1553133 (not condSetEmpty!10702)) setNonEmpty!10702))

(assert (= setNonEmpty!10702 b!1553132))

(assert (= (and mapNonEmpty!8291 ((_ is Cons!16794) mapValue!8291)) b!1553133))

(assert (= (and b!1553130 condSetEmpty!10703) setIsEmpty!10702))

(assert (= (and b!1553130 (not condSetEmpty!10703)) setNonEmpty!10703))

(assert (= setNonEmpty!10703 b!1553131))

(assert (= (and mapNonEmpty!8284 ((_ is Cons!16794) mapDefault!8291)) b!1553130))

(declare-fun m!1825590 () Bool)

(assert (=> setNonEmpty!10702 m!1825590))

(declare-fun m!1825592 () Bool)

(assert (=> setNonEmpty!10703 m!1825592))

(declare-fun m!1825594 () Bool)

(assert (=> mapNonEmpty!8291 m!1825594))

(declare-fun b!1553140 () Bool)

(declare-fun e!996310 () Bool)

(declare-fun setRes!10706 () Bool)

(declare-fun tp!454585 () Bool)

(assert (=> b!1553140 (= e!996310 (and setRes!10706 tp!454585))))

(declare-fun condSetEmpty!10706 () Bool)

(assert (=> b!1553140 (= condSetEmpty!10706 (= (_1!9442 (_1!9443 (h!22195 mapValue!8284))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10706 () Bool)

(assert (=> setIsEmpty!10706 setRes!10706))

(declare-fun tp!454586 () Bool)

(declare-fun setElem!10706 () Context!1578)

(declare-fun e!996309 () Bool)

(declare-fun setNonEmpty!10706 () Bool)

(assert (=> setNonEmpty!10706 (= setRes!10706 (and tp!454586 (inv!22068 setElem!10706) e!996309))))

(declare-fun setRest!10706 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10706 (= (_1!9442 (_1!9443 (h!22195 mapValue!8284))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10706 true) setRest!10706))))

(declare-fun b!1553141 () Bool)

(declare-fun tp!454584 () Bool)

(assert (=> b!1553141 (= e!996309 tp!454584)))

(assert (=> mapNonEmpty!8284 (= tp!454434 e!996310)))

(assert (= (and b!1553140 condSetEmpty!10706) setIsEmpty!10706))

(assert (= (and b!1553140 (not condSetEmpty!10706)) setNonEmpty!10706))

(assert (= setNonEmpty!10706 b!1553141))

(assert (= (and mapNonEmpty!8284 ((_ is Cons!16794) mapValue!8284)) b!1553140))

(declare-fun m!1825596 () Bool)

(assert (=> setNonEmpty!10706 m!1825596))

(declare-fun setIsEmpty!10707 () Bool)

(declare-fun setRes!10707 () Bool)

(assert (=> setIsEmpty!10707 setRes!10707))

(declare-fun setElem!10707 () Context!1578)

(declare-fun e!996313 () Bool)

(declare-fun setNonEmpty!10707 () Bool)

(declare-fun tp!454590 () Bool)

(assert (=> setNonEmpty!10707 (= setRes!10707 (and tp!454590 (inv!22068 setElem!10707) e!996313))))

(declare-fun setRest!10707 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10707 (= (_2!9441 (h!22194 mapDefault!8284)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10707 true) setRest!10707))))

(declare-fun b!1553142 () Bool)

(declare-fun tp!454587 () Bool)

(assert (=> b!1553142 (= e!996313 tp!454587)))

(declare-fun e!996312 () Bool)

(assert (=> b!1552817 (= tp!454451 e!996312)))

(declare-fun b!1553143 () Bool)

(declare-fun e!996311 () Bool)

(declare-fun tp!454589 () Bool)

(assert (=> b!1553143 (= e!996311 tp!454589)))

(declare-fun b!1553144 () Bool)

(declare-fun tp!454588 () Bool)

(assert (=> b!1553144 (= e!996312 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 mapDefault!8284)))) e!996311 tp_is_empty!7063 setRes!10707 tp!454588))))

(declare-fun condSetEmpty!10707 () Bool)

(assert (=> b!1553144 (= condSetEmpty!10707 (= (_2!9441 (h!22194 mapDefault!8284)) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553144 b!1553143))

(assert (= (and b!1553144 condSetEmpty!10707) setIsEmpty!10707))

(assert (= (and b!1553144 (not condSetEmpty!10707)) setNonEmpty!10707))

(assert (= setNonEmpty!10707 b!1553142))

(assert (= (and b!1552817 ((_ is Cons!16793) mapDefault!8284)) b!1553144))

(declare-fun m!1825598 () Bool)

(assert (=> setNonEmpty!10707 m!1825598))

(declare-fun m!1825600 () Bool)

(assert (=> b!1553144 m!1825600))

(declare-fun tp!454591 () Bool)

(declare-fun tp!454592 () Bool)

(declare-fun b!1553145 () Bool)

(declare-fun e!996314 () Bool)

(assert (=> b!1553145 (= e!996314 (and (inv!22064 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) tp!454591 (inv!22064 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) tp!454592))))

(declare-fun b!1553147 () Bool)

(declare-fun e!996315 () Bool)

(declare-fun tp!454593 () Bool)

(assert (=> b!1553147 (= e!996315 tp!454593)))

(declare-fun b!1553146 () Bool)

(assert (=> b!1553146 (= e!996314 (and (inv!22069 (xs!8361 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) e!996315))))

(assert (=> b!1552826 (= tp!454448 (and (inv!22064 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) e!996314))))

(assert (= (and b!1552826 ((_ is Node!5561) (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) b!1553145))

(assert (= b!1553146 b!1553147))

(assert (= (and b!1552826 ((_ is Leaf!8242) (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) b!1553146))

(declare-fun m!1825602 () Bool)

(assert (=> b!1553145 m!1825602))

(declare-fun m!1825604 () Bool)

(assert (=> b!1553145 m!1825604))

(declare-fun m!1825606 () Bool)

(assert (=> b!1553146 m!1825606))

(assert (=> b!1552826 m!1825306))

(declare-fun b!1553148 () Bool)

(declare-fun e!996317 () Bool)

(declare-fun setRes!10708 () Bool)

(declare-fun tp!454595 () Bool)

(assert (=> b!1553148 (= e!996317 (and setRes!10708 tp!454595))))

(declare-fun condSetEmpty!10708 () Bool)

(assert (=> b!1553148 (= condSetEmpty!10708 (= (_1!9442 (_1!9443 (h!22195 mapDefault!8283))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10708 () Bool)

(assert (=> setIsEmpty!10708 setRes!10708))

(declare-fun tp!454596 () Bool)

(declare-fun setNonEmpty!10708 () Bool)

(declare-fun e!996316 () Bool)

(declare-fun setElem!10708 () Context!1578)

(assert (=> setNonEmpty!10708 (= setRes!10708 (and tp!454596 (inv!22068 setElem!10708) e!996316))))

(declare-fun setRest!10708 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10708 (= (_1!9442 (_1!9443 (h!22195 mapDefault!8283))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10708 true) setRest!10708))))

(declare-fun b!1553149 () Bool)

(declare-fun tp!454594 () Bool)

(assert (=> b!1553149 (= e!996316 tp!454594)))

(assert (=> b!1552818 (= tp!454435 e!996317)))

(assert (= (and b!1553148 condSetEmpty!10708) setIsEmpty!10708))

(assert (= (and b!1553148 (not condSetEmpty!10708)) setNonEmpty!10708))

(assert (= setNonEmpty!10708 b!1553149))

(assert (= (and b!1552818 ((_ is Cons!16794) mapDefault!8283)) b!1553148))

(declare-fun m!1825608 () Bool)

(assert (=> setNonEmpty!10708 m!1825608))

(declare-fun b!1553150 () Bool)

(declare-fun tp!454598 () Bool)

(declare-fun e!996318 () Bool)

(declare-fun tp!454597 () Bool)

(assert (=> b!1553150 (= e!996318 (and (inv!22064 (left!13655 (c!252471 input!1676))) tp!454597 (inv!22064 (right!13985 (c!252471 input!1676))) tp!454598))))

(declare-fun b!1553152 () Bool)

(declare-fun e!996319 () Bool)

(declare-fun tp!454599 () Bool)

(assert (=> b!1553152 (= e!996319 tp!454599)))

(declare-fun b!1553151 () Bool)

(assert (=> b!1553151 (= e!996318 (and (inv!22069 (xs!8361 (c!252471 input!1676))) e!996319))))

(assert (=> b!1552851 (= tp!454444 (and (inv!22064 (c!252471 input!1676)) e!996318))))

(assert (= (and b!1552851 ((_ is Node!5561) (c!252471 input!1676))) b!1553150))

(assert (= b!1553151 b!1553152))

(assert (= (and b!1552851 ((_ is Leaf!8242) (c!252471 input!1676))) b!1553151))

(declare-fun m!1825610 () Bool)

(assert (=> b!1553150 m!1825610))

(declare-fun m!1825612 () Bool)

(assert (=> b!1553150 m!1825612))

(declare-fun m!1825614 () Bool)

(assert (=> b!1553151 m!1825614))

(assert (=> b!1552851 m!1825300))

(declare-fun tp!454627 () Bool)

(declare-fun e!996337 () Bool)

(declare-fun setRes!10714 () Bool)

(declare-fun setElem!10714 () Context!1578)

(declare-fun setNonEmpty!10713 () Bool)

(assert (=> setNonEmpty!10713 (= setRes!10714 (and tp!454627 (inv!22068 setElem!10714) e!996337))))

(declare-fun mapDefault!8294 () List!16863)

(declare-fun setRest!10714 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10713 (= (_2!9445 (h!22196 mapDefault!8294)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10714 true) setRest!10714))))

(declare-fun b!1553167 () Bool)

(declare-fun tp!454632 () Bool)

(assert (=> b!1553167 (= e!996337 tp!454632)))

(declare-fun b!1553168 () Bool)

(declare-fun e!996332 () Bool)

(declare-fun tp!454624 () Bool)

(assert (=> b!1553168 (= e!996332 tp!454624)))

(declare-fun b!1553169 () Bool)

(declare-fun e!996333 () Bool)

(declare-fun tp!454628 () Bool)

(assert (=> b!1553169 (= e!996333 tp!454628)))

(declare-fun setIsEmpty!10713 () Bool)

(assert (=> setIsEmpty!10713 setRes!10714))

(declare-fun condMapEmpty!8294 () Bool)

(assert (=> mapNonEmpty!8283 (= condMapEmpty!8294 (= mapRest!8285 ((as const (Array (_ BitVec 32) List!16863)) mapDefault!8294)))))

(declare-fun e!996336 () Bool)

(declare-fun mapRes!8294 () Bool)

(assert (=> mapNonEmpty!8283 (= tp!454447 (and e!996336 mapRes!8294))))

(declare-fun setRes!10713 () Bool)

(declare-fun e!996335 () Bool)

(declare-fun setNonEmpty!10714 () Bool)

(declare-fun setElem!10713 () Context!1578)

(declare-fun tp!454622 () Bool)

(assert (=> setNonEmpty!10714 (= setRes!10713 (and tp!454622 (inv!22068 setElem!10713) e!996335))))

(declare-fun mapValue!8294 () List!16863)

(declare-fun setRest!10713 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10714 (= (_2!9445 (h!22196 mapValue!8294)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10713 true) setRest!10713))))

(declare-fun setIsEmpty!10714 () Bool)

(assert (=> setIsEmpty!10714 setRes!10713))

(declare-fun mapNonEmpty!8294 () Bool)

(declare-fun tp!454623 () Bool)

(declare-fun e!996334 () Bool)

(assert (=> mapNonEmpty!8294 (= mapRes!8294 (and tp!454623 e!996334))))

(declare-fun mapRest!8294 () (Array (_ BitVec 32) List!16863))

(declare-fun mapKey!8294 () (_ BitVec 32))

(assert (=> mapNonEmpty!8294 (= mapRest!8285 (store mapRest!8294 mapKey!8294 mapValue!8294))))

(declare-fun b!1553170 () Bool)

(declare-fun tp!454631 () Bool)

(assert (=> b!1553170 (= e!996335 tp!454631)))

(declare-fun mapIsEmpty!8294 () Bool)

(assert (=> mapIsEmpty!8294 mapRes!8294))

(declare-fun tp!454630 () Bool)

(declare-fun tp!454626 () Bool)

(declare-fun b!1553171 () Bool)

(assert (=> b!1553171 (= e!996334 (and tp!454630 (inv!22068 (_2!9444 (_1!9445 (h!22196 mapValue!8294)))) e!996332 tp_is_empty!7063 setRes!10713 tp!454626))))

(declare-fun condSetEmpty!10714 () Bool)

(assert (=> b!1553171 (= condSetEmpty!10714 (= (_2!9445 (h!22196 mapValue!8294)) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun tp!454629 () Bool)

(declare-fun b!1553172 () Bool)

(declare-fun tp!454625 () Bool)

(assert (=> b!1553172 (= e!996336 (and tp!454625 (inv!22068 (_2!9444 (_1!9445 (h!22196 mapDefault!8294)))) e!996333 tp_is_empty!7063 setRes!10714 tp!454629))))

(declare-fun condSetEmpty!10713 () Bool)

(assert (=> b!1553172 (= condSetEmpty!10713 (= (_2!9445 (h!22196 mapDefault!8294)) ((as const (Array Context!1578 Bool)) false)))))

(assert (= (and mapNonEmpty!8283 condMapEmpty!8294) mapIsEmpty!8294))

(assert (= (and mapNonEmpty!8283 (not condMapEmpty!8294)) mapNonEmpty!8294))

(assert (= b!1553171 b!1553168))

(assert (= (and b!1553171 condSetEmpty!10714) setIsEmpty!10714))

(assert (= (and b!1553171 (not condSetEmpty!10714)) setNonEmpty!10714))

(assert (= setNonEmpty!10714 b!1553170))

(assert (= (and mapNonEmpty!8294 ((_ is Cons!16795) mapValue!8294)) b!1553171))

(assert (= b!1553172 b!1553169))

(assert (= (and b!1553172 condSetEmpty!10713) setIsEmpty!10713))

(assert (= (and b!1553172 (not condSetEmpty!10713)) setNonEmpty!10713))

(assert (= setNonEmpty!10713 b!1553167))

(assert (= (and mapNonEmpty!8283 ((_ is Cons!16795) mapDefault!8294)) b!1553172))

(declare-fun m!1825616 () Bool)

(assert (=> b!1553171 m!1825616))

(declare-fun m!1825618 () Bool)

(assert (=> mapNonEmpty!8294 m!1825618))

(declare-fun m!1825620 () Bool)

(assert (=> setNonEmpty!10714 m!1825620))

(declare-fun m!1825622 () Bool)

(assert (=> setNonEmpty!10713 m!1825622))

(declare-fun m!1825624 () Bool)

(assert (=> b!1553172 m!1825624))

(declare-fun tp!454633 () Bool)

(declare-fun setRes!10715 () Bool)

(declare-fun e!996338 () Bool)

(declare-fun setNonEmpty!10715 () Bool)

(declare-fun setElem!10715 () Context!1578)

(assert (=> setNonEmpty!10715 (= setRes!10715 (and tp!454633 (inv!22068 setElem!10715) e!996338))))

(declare-fun setRest!10715 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10715 (= (_2!9445 (h!22196 mapValue!8283)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10715 true) setRest!10715))))

(declare-fun b!1553173 () Bool)

(declare-fun e!996339 () Bool)

(declare-fun tp!454634 () Bool)

(assert (=> b!1553173 (= e!996339 tp!454634)))

(declare-fun setIsEmpty!10715 () Bool)

(assert (=> setIsEmpty!10715 setRes!10715))

(declare-fun b!1553174 () Bool)

(declare-fun tp!454636 () Bool)

(assert (=> b!1553174 (= e!996338 tp!454636)))

(declare-fun e!996340 () Bool)

(assert (=> mapNonEmpty!8283 (= tp!454455 e!996340)))

(declare-fun tp!454637 () Bool)

(declare-fun tp!454635 () Bool)

(declare-fun b!1553175 () Bool)

(assert (=> b!1553175 (= e!996340 (and tp!454635 (inv!22068 (_2!9444 (_1!9445 (h!22196 mapValue!8283)))) e!996339 tp_is_empty!7063 setRes!10715 tp!454637))))

(declare-fun condSetEmpty!10715 () Bool)

(assert (=> b!1553175 (= condSetEmpty!10715 (= (_2!9445 (h!22196 mapValue!8283)) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553175 b!1553173))

(assert (= (and b!1553175 condSetEmpty!10715) setIsEmpty!10715))

(assert (= (and b!1553175 (not condSetEmpty!10715)) setNonEmpty!10715))

(assert (= setNonEmpty!10715 b!1553174))

(assert (= (and mapNonEmpty!8283 ((_ is Cons!16795) mapValue!8283)) b!1553175))

(declare-fun m!1825626 () Bool)

(assert (=> setNonEmpty!10715 m!1825626))

(declare-fun m!1825628 () Bool)

(assert (=> b!1553175 m!1825628))

(declare-fun b!1553176 () Bool)

(declare-fun e!996342 () Bool)

(declare-fun setRes!10716 () Bool)

(declare-fun tp!454639 () Bool)

(assert (=> b!1553176 (= e!996342 (and setRes!10716 tp!454639))))

(declare-fun condSetEmpty!10716 () Bool)

(assert (=> b!1553176 (= condSetEmpty!10716 (= (_1!9442 (_1!9443 (h!22195 (zeroValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10716 () Bool)

(assert (=> setIsEmpty!10716 setRes!10716))

(declare-fun setNonEmpty!10716 () Bool)

(declare-fun setElem!10716 () Context!1578)

(declare-fun e!996341 () Bool)

(declare-fun tp!454640 () Bool)

(assert (=> setNonEmpty!10716 (= setRes!10716 (and tp!454640 (inv!22068 setElem!10716) e!996341))))

(declare-fun setRest!10716 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10716 (= (_1!9442 (_1!9443 (h!22195 (zeroValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10716 true) setRest!10716))))

(declare-fun b!1553177 () Bool)

(declare-fun tp!454638 () Bool)

(assert (=> b!1553177 (= e!996341 tp!454638)))

(assert (=> b!1552842 (= tp!454458 e!996342)))

(assert (= (and b!1553176 condSetEmpty!10716) setIsEmpty!10716))

(assert (= (and b!1553176 (not condSetEmpty!10716)) setNonEmpty!10716))

(assert (= setNonEmpty!10716 b!1553177))

(assert (= (and b!1552842 ((_ is Cons!16794) (zeroValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103)))))))) b!1553176))

(declare-fun m!1825630 () Bool)

(assert (=> setNonEmpty!10716 m!1825630))

(declare-fun b!1553178 () Bool)

(declare-fun e!996344 () Bool)

(declare-fun setRes!10717 () Bool)

(declare-fun tp!454642 () Bool)

(assert (=> b!1553178 (= e!996344 (and setRes!10717 tp!454642))))

(declare-fun condSetEmpty!10717 () Bool)

(assert (=> b!1553178 (= condSetEmpty!10717 (= (_1!9442 (_1!9443 (h!22195 (minValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10717 () Bool)

(assert (=> setIsEmpty!10717 setRes!10717))

(declare-fun e!996343 () Bool)

(declare-fun setNonEmpty!10717 () Bool)

(declare-fun setElem!10717 () Context!1578)

(declare-fun tp!454643 () Bool)

(assert (=> setNonEmpty!10717 (= setRes!10717 (and tp!454643 (inv!22068 setElem!10717) e!996343))))

(declare-fun setRest!10717 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10717 (= (_1!9442 (_1!9443 (h!22195 (minValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10717 true) setRest!10717))))

(declare-fun b!1553179 () Bool)

(declare-fun tp!454641 () Bool)

(assert (=> b!1553179 (= e!996343 tp!454641)))

(assert (=> b!1552842 (= tp!454446 e!996344)))

(assert (= (and b!1553178 condSetEmpty!10717) setIsEmpty!10717))

(assert (= (and b!1553178 (not condSetEmpty!10717)) setNonEmpty!10717))

(assert (= setNonEmpty!10717 b!1553179))

(assert (= (and b!1552842 ((_ is Cons!16794) (minValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103)))))))) b!1553178))

(declare-fun m!1825632 () Bool)

(assert (=> setNonEmpty!10717 m!1825632))

(declare-fun b_lambda!48725 () Bool)

(assert (= b_lambda!48721 (or (and b!1552850 b_free!41265) b_lambda!48725)))

(declare-fun b_lambda!48727 () Bool)

(assert (= b_lambda!48719 (or b!1552846 b_lambda!48727)))

(declare-fun bs!387650 () Bool)

(declare-fun d!460771 () Bool)

(assert (= bs!387650 (and d!460771 b!1552846)))

(declare-fun dynLambda!7436 (Int TokenValue!3033) BalanceConc!11064)

(assert (=> bs!387650 (= (dynLambda!7434 lambda!65733 (_1!9447 (_1!9448 lt!537838))) (= (list!6486 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))) (list!6486 (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun b_lambda!48731 () Bool)

(assert (=> (not b_lambda!48731) (not bs!387650)))

(declare-fun t!141290 () Bool)

(declare-fun tb!87283 () Bool)

(assert (=> (and b!1552850 (= (toChars!4169 (transformation!2943 rule!240)) (toChars!4169 (transformation!2943 rule!240))) t!141290) tb!87283))

(declare-fun e!996347 () Bool)

(declare-fun tp!454646 () Bool)

(declare-fun b!1553184 () Bool)

(assert (=> b!1553184 (= e!996347 (and (inv!22064 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))) tp!454646))))

(declare-fun result!105340 () Bool)

(assert (=> tb!87283 (= result!105340 (and (inv!22060 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))) e!996347))))

(assert (= tb!87283 b!1553184))

(declare-fun m!1825634 () Bool)

(assert (=> b!1553184 m!1825634))

(declare-fun m!1825636 () Bool)

(assert (=> tb!87283 m!1825636))

(assert (=> bs!387650 t!141290))

(declare-fun b_and!108391 () Bool)

(assert (= b_and!108377 (and (=> t!141290 result!105340) b_and!108391)))

(declare-fun b_lambda!48733 () Bool)

(assert (=> (not b_lambda!48733) (not bs!387650)))

(assert (=> bs!387650 t!141288))

(declare-fun b_and!108393 () Bool)

(assert (= b_and!108389 (and (=> t!141288 result!105320) b_and!108393)))

(assert (=> bs!387650 m!1825502))

(declare-fun m!1825638 () Bool)

(assert (=> bs!387650 m!1825638))

(assert (=> bs!387650 m!1825502))

(assert (=> bs!387650 m!1825288))

(assert (=> bs!387650 m!1825638))

(declare-fun m!1825640 () Bool)

(assert (=> bs!387650 m!1825640))

(assert (=> d!460727 d!460771))

(declare-fun b_lambda!48729 () Bool)

(assert (= b_lambda!48723 (or b!1552846 b_lambda!48729)))

(declare-fun bs!387651 () Bool)

(declare-fun d!460773 () Bool)

(assert (= bs!387651 (and d!460773 b!1552846)))

(assert (=> bs!387651 (= (dynLambda!7434 lambda!65733 (seqFromList!1771 lt!537839)) (= (list!6486 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))) (list!6486 (seqFromList!1771 lt!537839))))))

(declare-fun b_lambda!48735 () Bool)

(assert (=> (not b_lambda!48735) (not bs!387651)))

(declare-fun t!141292 () Bool)

(declare-fun tb!87285 () Bool)

(assert (=> (and b!1552850 (= (toChars!4169 (transformation!2943 rule!240)) (toChars!4169 (transformation!2943 rule!240))) t!141292) tb!87285))

(declare-fun e!996348 () Bool)

(declare-fun tp!454647 () Bool)

(declare-fun b!1553185 () Bool)

(assert (=> b!1553185 (= e!996348 (and (inv!22064 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))) tp!454647))))

(declare-fun result!105344 () Bool)

(assert (=> tb!87285 (= result!105344 (and (inv!22060 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))) e!996348))))

(assert (= tb!87285 b!1553185))

(declare-fun m!1825642 () Bool)

(assert (=> b!1553185 m!1825642))

(declare-fun m!1825644 () Bool)

(assert (=> tb!87285 m!1825644))

(assert (=> bs!387651 t!141292))

(declare-fun b_and!108395 () Bool)

(assert (= b_and!108391 (and (=> t!141292 result!105344) b_and!108395)))

(declare-fun b_lambda!48737 () Bool)

(assert (=> (not b_lambda!48737) (not bs!387651)))

(declare-fun t!141294 () Bool)

(declare-fun tb!87287 () Bool)

(assert (=> (and b!1552850 (= (toValue!4310 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))) t!141294) tb!87287))

(declare-fun result!105346 () Bool)

(assert (=> tb!87287 (= result!105346 (inv!21 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))

(declare-fun m!1825646 () Bool)

(assert (=> tb!87287 m!1825646))

(assert (=> bs!387651 t!141294))

(declare-fun b_and!108397 () Bool)

(assert (= b_and!108393 (and (=> t!141294 result!105346) b_and!108397)))

(declare-fun m!1825648 () Bool)

(assert (=> bs!387651 m!1825648))

(declare-fun m!1825650 () Bool)

(assert (=> bs!387651 m!1825650))

(assert (=> bs!387651 m!1825278))

(assert (=> bs!387651 m!1825648))

(assert (=> bs!387651 m!1825278))

(declare-fun m!1825652 () Bool)

(assert (=> bs!387651 m!1825652))

(assert (=> bs!387651 m!1825650))

(declare-fun m!1825654 () Bool)

(assert (=> bs!387651 m!1825654))

(assert (=> d!460739 d!460773))

(check-sat (not bm!101889) (not b_lambda!48727) (not b!1553007) tp_is_empty!7063 (not b!1553179) (not b!1553151) b_and!108397 b_and!108373 (not d!460721) (not b!1553063) (not setNonEmpty!10708) b_and!108381 (not d!460737) b_and!108395 (not b_lambda!48731) (not b!1552902) (not b!1553117) (not b!1553149) (not b!1553095) (not b!1553053) (not b!1553115) (not d!460731) (not b!1553025) (not d!460685) (not d!460739) (not b!1553170) (not bs!387651) (not b!1553131) (not b!1553112) (not setNonEmpty!10716) (not d!460743) (not b_next!41967) (not b!1553011) (not tb!87281) (not b!1553027) (not bm!101890) b_and!108383 (not b!1553150) (not b!1553178) (not bm!101891) (not d!460763) (not b!1553082) (not b!1553009) (not b!1553026) (not b_next!41981) (not setNonEmpty!10694) (not b!1553105) (not b_lambda!48725) (not b!1553132) (not bm!101899) (not b!1553006) (not b!1553168) (not bs!387650) (not setNonEmpty!10689) (not b!1552966) (not b!1553040) (not b_lambda!48733) (not b!1553084) (not setNonEmpty!10695) (not b!1553003) (not b!1553016) (not b!1552962) (not b!1552961) (not b!1553167) (not tb!87283) (not tb!87287) (not b!1552897) (not d!460747) (not b!1552820) (not b!1552851) (not tb!87285) (not b!1553107) (not d!460695) (not setNonEmpty!10696) (not setNonEmpty!10697) (not b!1553081) (not b!1553064) (not b!1553173) (not bm!101895) (not b!1553148) (not b!1553029) (not setNonEmpty!10702) (not d!460735) (not b!1553152) (not d!460745) (not b!1553008) (not b!1553106) (not b!1553169) (not setNonEmpty!10713) (not setNonEmpty!10684) (not b!1552927) (not b!1553113) (not b!1553144) (not b!1552864) (not setNonEmpty!10693) (not b_next!41973) (not setNonEmpty!10715) (not setNonEmpty!10714) (not b!1553184) (not b!1553014) (not b!1552983) (not b!1553119) (not b!1553010) (not b!1553176) (not setNonEmpty!10706) (not b!1553174) (not b_next!41971) (not b!1552922) (not b_lambda!48729) (not b!1552956) (not b!1553111) (not d!460697) (not bm!101896) (not b_lambda!48737) (not b!1553147) (not b!1553110) (not b!1553172) (not b!1553177) (not b!1553065) (not b!1553146) (not d!460769) (not b!1553114) (not d!460705) (not d!460691) (not d!460757) (not b_lambda!48735) (not b!1553140) (not b!1553171) (not d!460749) b_and!108379 (not d!460703) (not b!1553052) (not b!1553054) (not setNonEmpty!10717) (not d!460709) (not b!1553175) (not b!1553037) (not b!1552958) (not bm!101892) (not d!460727) (not b!1553142) (not mapNonEmpty!8294) (not b!1553118) (not bm!101894) (not b_next!41969) (not setNonEmpty!10690) b_and!108387 (not d!460689) (not b_next!41979) (not d!460725) (not b!1553034) (not b!1553116) (not b!1552899) (not d!460701) (not b!1552916) (not b!1553083) (not setNonEmpty!10703) (not b!1553185) (not b!1553130) (not b!1552976) (not mapNonEmpty!8291) (not b!1553133) b_and!108385 (not d!460729) (not bm!101893) (not b!1553096) (not d!460723) (not b!1553145) (not b!1553085) (not b!1552969) (not b!1553109) (not b!1553143) (not b!1552826) (not b!1552919) (not b!1553108) (not b!1552895) (not b!1553141) (not b!1552924) (not d!460767) (not b!1552978) (not b!1553031) (not mapNonEmpty!8288) (not b_next!41975) (not setNonEmpty!10707) (not b_next!41977) (not b!1553094) (not b!1553080) (not b!1553004) (not d!460707))
(check-sat b_and!108395 (not b_next!41967) b_and!108383 (not b_next!41981) (not b_next!41973) (not b_next!41971) b_and!108379 (not b_next!41969) b_and!108385 (not b_next!41975) (not b_next!41977) b_and!108397 b_and!108373 b_and!108381 b_and!108387 (not b_next!41979))
(get-model)

(declare-fun b_lambda!48739 () Bool)

(assert (= b_lambda!48733 (or (and b!1552850 b_free!41265) b_lambda!48739)))

(declare-fun b_lambda!48741 () Bool)

(assert (= b_lambda!48735 (or (and b!1552850 b_free!41267) b_lambda!48741)))

(declare-fun b_lambda!48743 () Bool)

(assert (= b_lambda!48731 (or (and b!1552850 b_free!41267) b_lambda!48743)))

(declare-fun b_lambda!48745 () Bool)

(assert (= b_lambda!48737 (or (and b!1552850 b_free!41265) b_lambda!48745)))

(check-sat (not b_lambda!48727) (not b!1553007) tp_is_empty!7063 (not b!1553179) (not b!1553151) b_and!108397 b_and!108373 (not d!460721) (not b!1553063) (not setNonEmpty!10708) b_and!108381 (not d!460737) b_and!108395 (not b!1552902) (not b!1553117) (not b!1553149) (not b!1553095) (not b!1553053) (not b!1553115) (not d!460731) (not b!1553025) (not d!460685) (not d!460739) (not b!1553170) (not bs!387651) (not b!1553131) (not b!1553112) (not setNonEmpty!10716) (not d!460743) (not b_next!41967) (not b!1553011) (not tb!87281) (not b!1553027) (not bm!101890) b_and!108383 (not b!1553150) (not b!1553178) (not bm!101891) (not d!460763) (not b!1553082) (not b_lambda!48743) (not b_lambda!48745) (not b!1553009) (not b!1553026) (not b_next!41981) (not setNonEmpty!10694) (not b!1553105) (not b_lambda!48725) (not b!1553132) (not bm!101899) (not b!1553006) (not b!1553168) (not bs!387650) (not setNonEmpty!10689) (not b!1552966) (not b!1553040) (not b!1553084) (not setNonEmpty!10695) (not b!1553003) (not b!1553016) (not b!1552962) (not b!1552961) (not b!1553167) (not tb!87283) (not tb!87287) (not b!1552897) (not d!460747) (not b!1552820) (not b!1552851) (not tb!87285) (not b!1553107) (not d!460695) (not setNonEmpty!10696) (not setNonEmpty!10697) (not b!1553081) (not b!1553064) (not b!1553173) (not bm!101895) (not b!1553148) (not b!1553029) (not setNonEmpty!10702) (not d!460735) (not b!1553152) (not d!460745) (not b!1553008) (not b!1553106) (not b!1553169) (not setNonEmpty!10713) (not setNonEmpty!10684) (not b!1552927) (not b!1553113) (not b!1553144) (not b!1552864) (not setNonEmpty!10693) (not b_next!41973) (not b_lambda!48739) (not setNonEmpty!10715) (not setNonEmpty!10714) (not b!1553184) (not b!1553014) (not b!1552983) (not b!1553119) (not b!1553010) (not b!1553176) (not setNonEmpty!10706) (not b!1553174) (not b_next!41971) (not b!1552922) (not b_lambda!48729) (not b!1552956) (not b!1553111) (not d!460697) (not bm!101896) (not b!1553147) (not b!1553110) (not b!1553172) (not b!1553177) (not b!1553065) (not b!1553146) (not d!460769) (not b!1553114) (not d!460705) (not d!460691) (not d!460757) (not b!1553140) (not b!1553171) (not d!460749) b_and!108379 (not d!460703) (not b!1553052) (not b!1553054) (not setNonEmpty!10717) (not d!460709) (not b!1553175) (not b!1553037) (not b!1552958) (not bm!101892) (not d!460727) (not b!1553142) (not mapNonEmpty!8294) (not b!1553118) (not bm!101894) (not b_next!41969) (not setNonEmpty!10690) b_and!108387 (not d!460689) (not b_next!41979) (not d!460725) (not b!1553034) (not b!1553116) (not b!1552899) (not d!460701) (not b!1552916) (not b!1553083) (not setNonEmpty!10703) (not b!1553185) (not b!1553130) (not b!1552976) (not mapNonEmpty!8291) (not b_lambda!48741) (not bm!101889) (not b!1553133) b_and!108385 (not d!460729) (not bm!101893) (not b!1553096) (not d!460723) (not b!1553145) (not b!1553085) (not b!1552969) (not b!1553109) (not b!1553143) (not b!1552826) (not b!1552919) (not b!1553108) (not b!1552895) (not b!1553141) (not b!1552924) (not d!460767) (not b!1552978) (not b!1553031) (not mapNonEmpty!8288) (not b_next!41975) (not setNonEmpty!10707) (not b_next!41977) (not b!1553094) (not b!1553080) (not b!1553004) (not d!460707))
(check-sat b_and!108395 (not b_next!41967) b_and!108383 (not b_next!41981) (not b_next!41973) (not b_next!41971) b_and!108379 (not b_next!41969) b_and!108385 (not b_next!41975) (not b_next!41977) b_and!108397 b_and!108373 b_and!108381 b_and!108387 (not b_next!41979))
(get-model)

(declare-fun d!460775 () Bool)

(assert (=> d!460775 (= (tail!2206 lt!537846) (t!141282 lt!537846))))

(assert (=> bm!101890 d!460775))

(declare-fun d!460777 () Bool)

(assert (=> d!460777 (dynLambda!7434 lambda!65733 (_1!9447 (_1!9448 lt!537838)))))

(assert (=> d!460777 true))

(declare-fun _$1!9955 () Unit!26040)

(assert (=> d!460777 (= (choose!9261 lambda!65733 (_1!9447 (_1!9448 lt!537838))) _$1!9955)))

(declare-fun b_lambda!48747 () Bool)

(assert (=> (not b_lambda!48747) (not d!460777)))

(declare-fun bs!387652 () Bool)

(assert (= bs!387652 d!460777))

(assert (=> bs!387652 m!1825492))

(assert (=> d!460727 d!460777))

(assert (=> d!460727 d!460709))

(declare-fun d!460779 () Bool)

(declare-fun c!252516 () Bool)

(assert (=> d!460779 (= c!252516 ((_ is Empty!5561) (c!252471 totalInput!568)))))

(declare-fun e!996354 () List!16859)

(assert (=> d!460779 (= (list!6487 (c!252471 totalInput!568)) e!996354)))

(declare-fun b!1553194 () Bool)

(assert (=> b!1553194 (= e!996354 Nil!16791)))

(declare-fun b!1553197 () Bool)

(declare-fun e!996355 () List!16859)

(assert (=> b!1553197 (= e!996355 (++!4412 (list!6487 (left!13655 (c!252471 totalInput!568))) (list!6487 (right!13985 (c!252471 totalInput!568)))))))

(declare-fun b!1553196 () Bool)

(declare-fun list!6488 (IArray!11127) List!16859)

(assert (=> b!1553196 (= e!996355 (list!6488 (xs!8361 (c!252471 totalInput!568))))))

(declare-fun b!1553195 () Bool)

(assert (=> b!1553195 (= e!996354 e!996355)))

(declare-fun c!252517 () Bool)

(assert (=> b!1553195 (= c!252517 ((_ is Leaf!8242) (c!252471 totalInput!568)))))

(assert (= (and d!460779 c!252516) b!1553194))

(assert (= (and d!460779 (not c!252516)) b!1553195))

(assert (= (and b!1553195 c!252517) b!1553196))

(assert (= (and b!1553195 (not c!252517)) b!1553197))

(declare-fun m!1825656 () Bool)

(assert (=> b!1553197 m!1825656))

(declare-fun m!1825658 () Bool)

(assert (=> b!1553197 m!1825658))

(assert (=> b!1553197 m!1825656))

(assert (=> b!1553197 m!1825658))

(declare-fun m!1825660 () Bool)

(assert (=> b!1553197 m!1825660))

(declare-fun m!1825662 () Bool)

(assert (=> b!1553196 m!1825662))

(assert (=> d!460703 d!460779))

(declare-fun d!460781 () Bool)

(declare-fun c!252518 () Bool)

(assert (=> d!460781 (= c!252518 ((_ is Node!5561) (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))))

(declare-fun e!996356 () Bool)

(assert (=> d!460781 (= (inv!22064 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))) e!996356)))

(declare-fun b!1553198 () Bool)

(assert (=> b!1553198 (= e!996356 (inv!22066 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))))

(declare-fun b!1553199 () Bool)

(declare-fun e!996357 () Bool)

(assert (=> b!1553199 (= e!996356 e!996357)))

(declare-fun res!693657 () Bool)

(assert (=> b!1553199 (= res!693657 (not ((_ is Leaf!8242) (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))))))))

(assert (=> b!1553199 (=> res!693657 e!996357)))

(declare-fun b!1553200 () Bool)

(assert (=> b!1553200 (= e!996357 (inv!22067 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))))

(assert (= (and d!460781 c!252518) b!1553198))

(assert (= (and d!460781 (not c!252518)) b!1553199))

(assert (= (and b!1553199 (not res!693657)) b!1553200))

(declare-fun m!1825664 () Bool)

(assert (=> b!1553198 m!1825664))

(declare-fun m!1825666 () Bool)

(assert (=> b!1553200 m!1825666))

(assert (=> b!1553185 d!460781))

(declare-fun d!460783 () Bool)

(declare-fun res!693670 () Bool)

(declare-fun e!996378 () Bool)

(assert (=> d!460783 (=> res!693670 e!996378)))

(assert (=> d!460783 (= res!693670 ((_ is ElementMatch!4271) (regex!2943 rule!240)))))

(assert (=> d!460783 (= (validRegex!1709 (regex!2943 rule!240)) e!996378)))

(declare-fun bm!101906 () Bool)

(declare-fun call!101913 () Bool)

(declare-fun call!101911 () Bool)

(assert (=> bm!101906 (= call!101913 call!101911)))

(declare-fun bm!101907 () Bool)

(declare-fun call!101912 () Bool)

(declare-fun c!252523 () Bool)

(assert (=> bm!101907 (= call!101912 (validRegex!1709 (ite c!252523 (regTwo!9055 (regex!2943 rule!240)) (regTwo!9054 (regex!2943 rule!240)))))))

(declare-fun b!1553219 () Bool)

(declare-fun e!996375 () Bool)

(declare-fun e!996376 () Bool)

(assert (=> b!1553219 (= e!996375 e!996376)))

(declare-fun res!693669 () Bool)

(assert (=> b!1553219 (= res!693669 (not (nullable!1268 (reg!4600 (regex!2943 rule!240)))))))

(assert (=> b!1553219 (=> (not res!693669) (not e!996376))))

(declare-fun b!1553220 () Bool)

(declare-fun res!693668 () Bool)

(declare-fun e!996372 () Bool)

(assert (=> b!1553220 (=> (not res!693668) (not e!996372))))

(assert (=> b!1553220 (= res!693668 call!101913)))

(declare-fun e!996377 () Bool)

(assert (=> b!1553220 (= e!996377 e!996372)))

(declare-fun b!1553221 () Bool)

(declare-fun e!996374 () Bool)

(assert (=> b!1553221 (= e!996374 call!101912)))

(declare-fun b!1553222 () Bool)

(declare-fun e!996373 () Bool)

(assert (=> b!1553222 (= e!996373 e!996374)))

(declare-fun res!693671 () Bool)

(assert (=> b!1553222 (=> (not res!693671) (not e!996374))))

(assert (=> b!1553222 (= res!693671 call!101913)))

(declare-fun b!1553223 () Bool)

(assert (=> b!1553223 (= e!996378 e!996375)))

(declare-fun c!252524 () Bool)

(assert (=> b!1553223 (= c!252524 ((_ is Star!4271) (regex!2943 rule!240)))))

(declare-fun b!1553224 () Bool)

(assert (=> b!1553224 (= e!996375 e!996377)))

(assert (=> b!1553224 (= c!252523 ((_ is Union!4271) (regex!2943 rule!240)))))

(declare-fun b!1553225 () Bool)

(declare-fun res!693672 () Bool)

(assert (=> b!1553225 (=> res!693672 e!996373)))

(assert (=> b!1553225 (= res!693672 (not ((_ is Concat!7305) (regex!2943 rule!240))))))

(assert (=> b!1553225 (= e!996377 e!996373)))

(declare-fun bm!101908 () Bool)

(assert (=> bm!101908 (= call!101911 (validRegex!1709 (ite c!252524 (reg!4600 (regex!2943 rule!240)) (ite c!252523 (regOne!9055 (regex!2943 rule!240)) (regOne!9054 (regex!2943 rule!240))))))))

(declare-fun b!1553226 () Bool)

(assert (=> b!1553226 (= e!996376 call!101911)))

(declare-fun b!1553227 () Bool)

(assert (=> b!1553227 (= e!996372 call!101912)))

(assert (= (and d!460783 (not res!693670)) b!1553223))

(assert (= (and b!1553223 c!252524) b!1553219))

(assert (= (and b!1553223 (not c!252524)) b!1553224))

(assert (= (and b!1553219 res!693669) b!1553226))

(assert (= (and b!1553224 c!252523) b!1553220))

(assert (= (and b!1553224 (not c!252523)) b!1553225))

(assert (= (and b!1553220 res!693668) b!1553227))

(assert (= (and b!1553225 (not res!693672)) b!1553222))

(assert (= (and b!1553222 res!693671) b!1553221))

(assert (= (or b!1553227 b!1553221) bm!101907))

(assert (= (or b!1553220 b!1553222) bm!101906))

(assert (= (or b!1553226 bm!101906) bm!101908))

(declare-fun m!1825668 () Bool)

(assert (=> bm!101907 m!1825668))

(declare-fun m!1825670 () Bool)

(assert (=> b!1553219 m!1825670))

(declare-fun m!1825672 () Bool)

(assert (=> bm!101908 m!1825672))

(assert (=> d!460721 d!460783))

(declare-fun d!460785 () Bool)

(assert (=> d!460785 (= (isEmpty!10101 (list!6486 (_1!9447 (_1!9448 lt!537838)))) ((_ is Nil!16791) (list!6486 (_1!9447 (_1!9448 lt!537838)))))))

(assert (=> d!460745 d!460785))

(assert (=> d!460745 d!460735))

(declare-fun d!460787 () Bool)

(declare-fun lt!537974 () Bool)

(assert (=> d!460787 (= lt!537974 (isEmpty!10101 (list!6487 (c!252471 (_1!9447 (_1!9448 lt!537838))))))))

(assert (=> d!460787 (= lt!537974 (= (size!13595 (c!252471 (_1!9447 (_1!9448 lt!537838)))) 0))))

(assert (=> d!460787 (= (isEmpty!10104 (c!252471 (_1!9447 (_1!9448 lt!537838)))) lt!537974)))

(declare-fun bs!387653 () Bool)

(assert (= bs!387653 d!460787))

(assert (=> bs!387653 m!1825504))

(assert (=> bs!387653 m!1825504))

(declare-fun m!1825674 () Bool)

(assert (=> bs!387653 m!1825674))

(assert (=> bs!387653 m!1825490))

(assert (=> d!460745 d!460787))

(declare-fun d!460789 () Bool)

(assert (=> d!460789 (= (isEmpty!10102 lt!537954) (not ((_ is Some!3029) lt!537954)))))

(assert (=> d!460723 d!460789))

(declare-fun d!460791 () Bool)

(assert (=> d!460791 (= (isEmpty!10101 (_1!9450 lt!537955)) ((_ is Nil!16791) (_1!9450 lt!537955)))))

(assert (=> d!460723 d!460791))

(declare-fun d!460793 () Bool)

(declare-fun lt!537991 () tuple2!16238)

(assert (=> d!460793 (= (++!4412 (_1!9450 lt!537991) (_2!9450 lt!537991)) lt!537846)))

(declare-fun sizeTr!50 (List!16859 Int) Int)

(assert (=> d!460793 (= lt!537991 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 0 lt!537846 lt!537846 (sizeTr!50 lt!537846 0)))))

(declare-fun lt!537997 () Unit!26040)

(declare-fun lt!537992 () Unit!26040)

(assert (=> d!460793 (= lt!537997 lt!537992)))

(declare-fun lt!537998 () List!16859)

(declare-fun lt!537994 () Int)

(assert (=> d!460793 (= (sizeTr!50 lt!537998 lt!537994) (+ (size!13594 lt!537998) lt!537994))))

(declare-fun lemmaSizeTrEqualsSize!50 (List!16859 Int) Unit!26040)

(assert (=> d!460793 (= lt!537992 (lemmaSizeTrEqualsSize!50 lt!537998 lt!537994))))

(assert (=> d!460793 (= lt!537994 0)))

(assert (=> d!460793 (= lt!537998 Nil!16791)))

(declare-fun lt!537996 () Unit!26040)

(declare-fun lt!537993 () Unit!26040)

(assert (=> d!460793 (= lt!537996 lt!537993)))

(declare-fun lt!537995 () Int)

(assert (=> d!460793 (= (sizeTr!50 lt!537846 lt!537995) (+ (size!13594 lt!537846) lt!537995))))

(assert (=> d!460793 (= lt!537993 (lemmaSizeTrEqualsSize!50 lt!537846 lt!537995))))

(assert (=> d!460793 (= lt!537995 0)))

(assert (=> d!460793 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460793 (= (findLongestMatch!259 (regex!2943 rule!240) lt!537846) lt!537991)))

(declare-fun bs!387654 () Bool)

(assert (= bs!387654 d!460793))

(declare-fun m!1825676 () Bool)

(assert (=> bs!387654 m!1825676))

(declare-fun m!1825678 () Bool)

(assert (=> bs!387654 m!1825678))

(assert (=> bs!387654 m!1825378))

(declare-fun m!1825680 () Bool)

(assert (=> bs!387654 m!1825680))

(assert (=> bs!387654 m!1825330))

(declare-fun m!1825682 () Bool)

(assert (=> bs!387654 m!1825682))

(declare-fun m!1825684 () Bool)

(assert (=> bs!387654 m!1825684))

(assert (=> bs!387654 m!1825684))

(declare-fun m!1825686 () Bool)

(assert (=> bs!387654 m!1825686))

(declare-fun m!1825688 () Bool)

(assert (=> bs!387654 m!1825688))

(declare-fun m!1825690 () Bool)

(assert (=> bs!387654 m!1825690))

(assert (=> d!460723 d!460793))

(assert (=> d!460723 d!460721))

(declare-fun b!1553238 () Bool)

(declare-fun e!996386 () Bool)

(declare-fun inv!16 (TokenValue!3033) Bool)

(assert (=> b!1553238 (= e!996386 (inv!16 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun b!1553239 () Bool)

(declare-fun e!996387 () Bool)

(declare-fun inv!17 (TokenValue!3033) Bool)

(assert (=> b!1553239 (= e!996387 (inv!17 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun b!1553240 () Bool)

(declare-fun res!693675 () Bool)

(declare-fun e!996385 () Bool)

(assert (=> b!1553240 (=> res!693675 e!996385)))

(assert (=> b!1553240 (= res!693675 (not ((_ is IntegerValue!9101) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))))))

(assert (=> b!1553240 (= e!996387 e!996385)))

(declare-fun d!460795 () Bool)

(declare-fun c!252530 () Bool)

(assert (=> d!460795 (= c!252530 ((_ is IntegerValue!9099) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))

(assert (=> d!460795 (= (inv!21 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))) e!996386)))

(declare-fun b!1553241 () Bool)

(declare-fun inv!15 (TokenValue!3033) Bool)

(assert (=> b!1553241 (= e!996385 (inv!15 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun b!1553242 () Bool)

(assert (=> b!1553242 (= e!996386 e!996387)))

(declare-fun c!252529 () Bool)

(assert (=> b!1553242 (= c!252529 ((_ is IntegerValue!9100) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))

(assert (= (and d!460795 c!252530) b!1553238))

(assert (= (and d!460795 (not c!252530)) b!1553242))

(assert (= (and b!1553242 c!252529) b!1553239))

(assert (= (and b!1553242 (not c!252529)) b!1553240))

(assert (= (and b!1553240 (not res!693675)) b!1553241))

(declare-fun m!1825692 () Bool)

(assert (=> b!1553238 m!1825692))

(declare-fun m!1825694 () Bool)

(assert (=> b!1553239 m!1825694))

(declare-fun m!1825696 () Bool)

(assert (=> b!1553241 m!1825696))

(assert (=> tb!87281 d!460795))

(declare-fun d!460797 () Bool)

(declare-fun res!693682 () Bool)

(declare-fun e!996390 () Bool)

(assert (=> d!460797 (=> (not res!693682) (not e!996390))))

(assert (=> d!460797 (= res!693682 (= (csize!11352 (c!252471 totalInput!568)) (+ (size!13595 (left!13655 (c!252471 totalInput!568))) (size!13595 (right!13985 (c!252471 totalInput!568))))))))

(assert (=> d!460797 (= (inv!22066 (c!252471 totalInput!568)) e!996390)))

(declare-fun b!1553249 () Bool)

(declare-fun res!693683 () Bool)

(assert (=> b!1553249 (=> (not res!693683) (not e!996390))))

(assert (=> b!1553249 (= res!693683 (and (not (= (left!13655 (c!252471 totalInput!568)) Empty!5561)) (not (= (right!13985 (c!252471 totalInput!568)) Empty!5561))))))

(declare-fun b!1553250 () Bool)

(declare-fun res!693684 () Bool)

(assert (=> b!1553250 (=> (not res!693684) (not e!996390))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!828 (Conc!5561) Int)

(assert (=> b!1553250 (= res!693684 (= (cheight!5772 (c!252471 totalInput!568)) (+ (max!0 (height!828 (left!13655 (c!252471 totalInput!568))) (height!828 (right!13985 (c!252471 totalInput!568)))) 1)))))

(declare-fun b!1553251 () Bool)

(assert (=> b!1553251 (= e!996390 (<= 0 (cheight!5772 (c!252471 totalInput!568))))))

(assert (= (and d!460797 res!693682) b!1553249))

(assert (= (and b!1553249 res!693683) b!1553250))

(assert (= (and b!1553250 res!693684) b!1553251))

(declare-fun m!1825698 () Bool)

(assert (=> d!460797 m!1825698))

(declare-fun m!1825700 () Bool)

(assert (=> d!460797 m!1825700))

(declare-fun m!1825702 () Bool)

(assert (=> b!1553250 m!1825702))

(declare-fun m!1825704 () Bool)

(assert (=> b!1553250 m!1825704))

(assert (=> b!1553250 m!1825702))

(assert (=> b!1553250 m!1825704))

(declare-fun m!1825706 () Bool)

(assert (=> b!1553250 m!1825706))

(assert (=> b!1552976 d!460797))

(assert (=> b!1552826 d!460741))

(declare-fun d!460799 () Bool)

(assert (=> d!460799 (= (head!3111 (_1!9450 lt!537835)) (h!22192 (_1!9450 lt!537835)))))

(assert (=> b!1552969 d!460799))

(declare-fun d!460801 () Bool)

(declare-fun res!693689 () Bool)

(declare-fun e!996393 () Bool)

(assert (=> d!460801 (=> (not res!693689) (not e!996393))))

(declare-fun valid!1435 (MutableMap!1729) Bool)

(assert (=> d!460801 (= res!693689 (valid!1435 (cache!2110 cacheUp!755)))))

(assert (=> d!460801 (= (validCacheMapUp!159 (cache!2110 cacheUp!755)) e!996393)))

(declare-fun b!1553256 () Bool)

(declare-fun res!693690 () Bool)

(assert (=> b!1553256 (=> (not res!693690) (not e!996393))))

(declare-fun invariantList!244 (List!16861) Bool)

(declare-datatypes ((ListMap!537 0))(
  ( (ListMap!538 (toList!853 List!16861)) )
))
(declare-fun map!3517 (MutableMap!1729) ListMap!537)

(assert (=> b!1553256 (= res!693690 (invariantList!244 (toList!853 (map!3517 (cache!2110 cacheUp!755)))))))

(declare-fun b!1553257 () Bool)

(declare-fun lambda!65739 () Int)

(declare-fun forall!3921 (List!16861 Int) Bool)

(assert (=> b!1553257 (= e!996393 (forall!3921 (toList!853 (map!3517 (cache!2110 cacheUp!755))) lambda!65739))))

(assert (= (and d!460801 res!693689) b!1553256))

(assert (= (and b!1553256 res!693690) b!1553257))

(declare-fun m!1825709 () Bool)

(assert (=> d!460801 m!1825709))

(declare-fun m!1825711 () Bool)

(assert (=> b!1553256 m!1825711))

(declare-fun m!1825713 () Bool)

(assert (=> b!1553256 m!1825713))

(assert (=> b!1553257 m!1825711))

(declare-fun m!1825715 () Bool)

(assert (=> b!1553257 m!1825715))

(assert (=> b!1553037 d!460801))

(assert (=> d!460707 d!460687))

(assert (=> d!460707 d!460783))

(declare-fun d!460803 () Bool)

(declare-fun lt!537999 () Int)

(assert (=> d!460803 (>= lt!537999 0)))

(declare-fun e!996394 () Int)

(assert (=> d!460803 (= lt!537999 e!996394)))

(declare-fun c!252531 () Bool)

(assert (=> d!460803 (= c!252531 ((_ is Nil!16791) (_2!9446 (get!4843 lt!537954))))))

(assert (=> d!460803 (= (size!13594 (_2!9446 (get!4843 lt!537954))) lt!537999)))

(declare-fun b!1553258 () Bool)

(assert (=> b!1553258 (= e!996394 0)))

(declare-fun b!1553259 () Bool)

(assert (=> b!1553259 (= e!996394 (+ 1 (size!13594 (t!141282 (_2!9446 (get!4843 lt!537954))))))))

(assert (= (and d!460803 c!252531) b!1553258))

(assert (= (and d!460803 (not c!252531)) b!1553259))

(declare-fun m!1825717 () Bool)

(assert (=> b!1553259 m!1825717))

(assert (=> b!1553008 d!460803))

(declare-fun d!460805 () Bool)

(assert (=> d!460805 (= (get!4843 lt!537954) (v!23636 lt!537954))))

(assert (=> b!1553008 d!460805))

(assert (=> b!1553008 d!460693))

(declare-fun d!460807 () Bool)

(declare-fun c!252532 () Bool)

(assert (=> d!460807 (= c!252532 ((_ is Node!5561) (left!13655 (c!252471 input!1676))))))

(declare-fun e!996395 () Bool)

(assert (=> d!460807 (= (inv!22064 (left!13655 (c!252471 input!1676))) e!996395)))

(declare-fun b!1553260 () Bool)

(assert (=> b!1553260 (= e!996395 (inv!22066 (left!13655 (c!252471 input!1676))))))

(declare-fun b!1553261 () Bool)

(declare-fun e!996396 () Bool)

(assert (=> b!1553261 (= e!996395 e!996396)))

(declare-fun res!693691 () Bool)

(assert (=> b!1553261 (= res!693691 (not ((_ is Leaf!8242) (left!13655 (c!252471 input!1676)))))))

(assert (=> b!1553261 (=> res!693691 e!996396)))

(declare-fun b!1553262 () Bool)

(assert (=> b!1553262 (= e!996396 (inv!22067 (left!13655 (c!252471 input!1676))))))

(assert (= (and d!460807 c!252532) b!1553260))

(assert (= (and d!460807 (not c!252532)) b!1553261))

(assert (= (and b!1553261 (not res!693691)) b!1553262))

(declare-fun m!1825719 () Bool)

(assert (=> b!1553260 m!1825719))

(declare-fun m!1825721 () Bool)

(assert (=> b!1553262 m!1825721))

(assert (=> b!1553150 d!460807))

(declare-fun d!460809 () Bool)

(declare-fun c!252533 () Bool)

(assert (=> d!460809 (= c!252533 ((_ is Node!5561) (right!13985 (c!252471 input!1676))))))

(declare-fun e!996397 () Bool)

(assert (=> d!460809 (= (inv!22064 (right!13985 (c!252471 input!1676))) e!996397)))

(declare-fun b!1553263 () Bool)

(assert (=> b!1553263 (= e!996397 (inv!22066 (right!13985 (c!252471 input!1676))))))

(declare-fun b!1553264 () Bool)

(declare-fun e!996398 () Bool)

(assert (=> b!1553264 (= e!996397 e!996398)))

(declare-fun res!693692 () Bool)

(assert (=> b!1553264 (= res!693692 (not ((_ is Leaf!8242) (right!13985 (c!252471 input!1676)))))))

(assert (=> b!1553264 (=> res!693692 e!996398)))

(declare-fun b!1553265 () Bool)

(assert (=> b!1553265 (= e!996398 (inv!22067 (right!13985 (c!252471 input!1676))))))

(assert (= (and d!460809 c!252533) b!1553263))

(assert (= (and d!460809 (not c!252533)) b!1553264))

(assert (= (and b!1553264 (not res!693692)) b!1553265))

(declare-fun m!1825723 () Bool)

(assert (=> b!1553263 m!1825723))

(declare-fun m!1825725 () Bool)

(assert (=> b!1553265 m!1825725))

(assert (=> b!1553150 d!460809))

(declare-fun d!460811 () Bool)

(declare-fun lambda!65742 () Int)

(declare-fun forall!3922 (List!16860 Int) Bool)

(assert (=> d!460811 (= (inv!22068 setElem!10707) (forall!3922 (exprs!1289 setElem!10707) lambda!65742))))

(declare-fun bs!387655 () Bool)

(assert (= bs!387655 d!460811))

(declare-fun m!1825727 () Bool)

(assert (=> bs!387655 m!1825727))

(assert (=> setNonEmpty!10707 d!460811))

(declare-fun b!1553271 () Bool)

(assert (=> b!1553271 true))

(declare-fun d!460813 () Bool)

(declare-fun res!693697 () Bool)

(declare-fun e!996401 () Bool)

(assert (=> d!460813 (=> (not res!693697) (not e!996401))))

(declare-fun valid!1436 (MutableMap!1730) Bool)

(assert (=> d!460813 (= res!693697 (valid!1436 (cache!2111 cacheFurthestNullable!103)))))

(assert (=> d!460813 (= (validCacheMapFurthestNullable!72 (cache!2111 cacheFurthestNullable!103) (totalInput!2450 cacheFurthestNullable!103)) e!996401)))

(declare-fun b!1553270 () Bool)

(declare-fun res!693698 () Bool)

(assert (=> b!1553270 (=> (not res!693698) (not e!996401))))

(declare-fun invariantList!245 (List!16862) Bool)

(declare-datatypes ((ListMap!539 0))(
  ( (ListMap!540 (toList!854 List!16862)) )
))
(declare-fun map!3518 (MutableMap!1730) ListMap!539)

(assert (=> b!1553270 (= res!693698 (invariantList!245 (toList!854 (map!3518 (cache!2111 cacheFurthestNullable!103)))))))

(declare-fun lambda!65745 () Int)

(declare-fun forall!3923 (List!16862 Int) Bool)

(assert (=> b!1553271 (= e!996401 (forall!3923 (toList!854 (map!3518 (cache!2111 cacheFurthestNullable!103))) lambda!65745))))

(assert (= (and d!460813 res!693697) b!1553270))

(assert (= (and b!1553270 res!693698) b!1553271))

(declare-fun m!1825730 () Bool)

(assert (=> d!460813 m!1825730))

(declare-fun m!1825732 () Bool)

(assert (=> b!1553270 m!1825732))

(declare-fun m!1825734 () Bool)

(assert (=> b!1553270 m!1825734))

(assert (=> b!1553271 m!1825732))

(declare-fun m!1825736 () Bool)

(assert (=> b!1553271 m!1825736))

(assert (=> d!460743 d!460813))

(declare-fun d!460815 () Bool)

(declare-fun lt!538000 () tuple2!16238)

(assert (=> d!460815 (= (++!4412 (_1!9450 lt!538000) (_2!9450 lt!538000)) (list!6486 input!1676))))

(assert (=> d!460815 (= lt!538000 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 0 (list!6486 input!1676) (list!6486 input!1676) (sizeTr!50 (list!6486 input!1676) 0)))))

(declare-fun lt!538006 () Unit!26040)

(declare-fun lt!538001 () Unit!26040)

(assert (=> d!460815 (= lt!538006 lt!538001)))

(declare-fun lt!538007 () List!16859)

(declare-fun lt!538003 () Int)

(assert (=> d!460815 (= (sizeTr!50 lt!538007 lt!538003) (+ (size!13594 lt!538007) lt!538003))))

(assert (=> d!460815 (= lt!538001 (lemmaSizeTrEqualsSize!50 lt!538007 lt!538003))))

(assert (=> d!460815 (= lt!538003 0)))

(assert (=> d!460815 (= lt!538007 Nil!16791)))

(declare-fun lt!538005 () Unit!26040)

(declare-fun lt!538002 () Unit!26040)

(assert (=> d!460815 (= lt!538005 lt!538002)))

(declare-fun lt!538004 () Int)

(assert (=> d!460815 (= (sizeTr!50 (list!6486 input!1676) lt!538004) (+ (size!13594 (list!6486 input!1676)) lt!538004))))

(assert (=> d!460815 (= lt!538002 (lemmaSizeTrEqualsSize!50 (list!6486 input!1676) lt!538004))))

(assert (=> d!460815 (= lt!538004 0)))

(assert (=> d!460815 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460815 (= (findLongestMatch!259 (regex!2943 rule!240) (list!6486 input!1676)) lt!538000)))

(declare-fun bs!387656 () Bool)

(assert (= bs!387656 d!460815))

(declare-fun m!1825738 () Bool)

(assert (=> bs!387656 m!1825738))

(declare-fun m!1825740 () Bool)

(assert (=> bs!387656 m!1825740))

(assert (=> bs!387656 m!1825378))

(declare-fun m!1825742 () Bool)

(assert (=> bs!387656 m!1825742))

(assert (=> bs!387656 m!1825350))

(declare-fun m!1825744 () Bool)

(assert (=> bs!387656 m!1825744))

(assert (=> bs!387656 m!1825350))

(declare-fun m!1825746 () Bool)

(assert (=> bs!387656 m!1825746))

(assert (=> bs!387656 m!1825350))

(declare-fun m!1825748 () Bool)

(assert (=> bs!387656 m!1825748))

(assert (=> bs!387656 m!1825350))

(assert (=> bs!387656 m!1825350))

(assert (=> bs!387656 m!1825748))

(declare-fun m!1825750 () Bool)

(assert (=> bs!387656 m!1825750))

(assert (=> bs!387656 m!1825350))

(declare-fun m!1825752 () Bool)

(assert (=> bs!387656 m!1825752))

(declare-fun m!1825754 () Bool)

(assert (=> bs!387656 m!1825754))

(assert (=> d!460747 d!460815))

(declare-fun b!1553356 () Bool)

(declare-fun b_free!41279 () Bool)

(declare-fun b_next!41983 () Bool)

(assert (=> b!1553356 (= b_free!41279 (not b_next!41983))))

(declare-fun tp!454701 () Bool)

(declare-fun b_and!108399 () Bool)

(assert (=> b!1553356 (= tp!454701 b_and!108399)))

(declare-fun b!1553345 () Bool)

(declare-fun b_free!41281 () Bool)

(declare-fun b_next!41985 () Bool)

(assert (=> b!1553345 (= b_free!41281 (not b_next!41985))))

(declare-fun tp!454713 () Bool)

(declare-fun b_and!108401 () Bool)

(assert (=> b!1553345 (= tp!454713 b_and!108401)))

(declare-fun b!1553339 () Bool)

(declare-fun b_free!41283 () Bool)

(declare-fun b_next!41987 () Bool)

(assert (=> b!1553339 (= b_free!41283 (not b_next!41987))))

(declare-fun tp!454698 () Bool)

(declare-fun b_and!108403 () Bool)

(assert (=> b!1553339 (= tp!454698 b_and!108403)))

(declare-fun b!1553355 () Bool)

(declare-fun b_free!41285 () Bool)

(declare-fun b_next!41989 () Bool)

(assert (=> b!1553355 (= b_free!41285 (not b_next!41989))))

(declare-fun tp!454700 () Bool)

(declare-fun b_and!108405 () Bool)

(assert (=> b!1553355 (= tp!454700 b_and!108405)))

(declare-fun b!1553349 () Bool)

(declare-fun b_free!41287 () Bool)

(declare-fun b_next!41991 () Bool)

(assert (=> b!1553349 (= b_free!41287 (not b_next!41991))))

(declare-fun tp!454710 () Bool)

(declare-fun b_and!108407 () Bool)

(assert (=> b!1553349 (= tp!454710 b_and!108407)))

(declare-fun b!1553353 () Bool)

(declare-fun b_free!41289 () Bool)

(declare-fun b_next!41993 () Bool)

(assert (=> b!1553353 (= b_free!41289 (not b_next!41993))))

(declare-fun tp!454704 () Bool)

(declare-fun b_and!108409 () Bool)

(assert (=> b!1553353 (= tp!454704 b_and!108409)))

(declare-fun b!1553330 () Bool)

(declare-fun e!996474 () Bool)

(declare-fun e!996479 () Bool)

(assert (=> b!1553330 (= e!996474 e!996479)))

(declare-fun mapIsEmpty!8301 () Bool)

(declare-fun mapRes!8301 () Bool)

(assert (=> mapIsEmpty!8301 mapRes!8301))

(declare-fun b!1553331 () Bool)

(declare-fun e!996478 () Bool)

(declare-fun tp!454715 () Bool)

(declare-fun mapRes!8303 () Bool)

(assert (=> b!1553331 (= e!996478 (and tp!454715 mapRes!8303))))

(declare-fun condMapEmpty!8303 () Bool)

(declare-fun res!693709 () tuple4!886)

(declare-fun mapDefault!8302 () List!16863)

(assert (=> b!1553331 (= condMapEmpty!8303 (= (arr!2734 (_values!2066 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 (_3!1330 res!693709)))))))) ((as const (Array (_ BitVec 32) List!16863)) mapDefault!8302)))))

(declare-fun b!1553332 () Bool)

(declare-fun e!996469 () Bool)

(assert (=> b!1553332 (= e!996469 e!996474)))

(declare-fun b!1553333 () Bool)

(declare-fun e!996463 () Bool)

(declare-fun tp!454703 () Bool)

(assert (=> b!1553333 (= e!996463 (and (inv!22064 (c!252471 (_1!9447 (_1!9448 res!693709)))) tp!454703))))

(declare-fun b!1553334 () Bool)

(declare-fun e!996482 () Bool)

(declare-fun e!996481 () Bool)

(assert (=> b!1553334 (= e!996482 e!996481)))

(declare-fun b!1553335 () Bool)

(declare-fun res!693710 () Bool)

(declare-fun e!996484 () Bool)

(assert (=> b!1553335 (=> (not res!693710) (not e!996484))))

(assert (=> b!1553335 (= res!693710 (valid!1434 (_2!9448 res!693709)))))

(declare-fun b!1553337 () Bool)

(declare-fun res!693712 () Bool)

(assert (=> b!1553337 (=> (not res!693712) (not e!996484))))

(assert (=> b!1553337 (= res!693712 (valid!1432 (_3!1330 res!693709)))))

(declare-fun b!1553338 () Bool)

(declare-fun e!996459 () Bool)

(declare-fun e!996483 () Bool)

(assert (=> b!1553338 (= e!996459 e!996483)))

(declare-fun e!996473 () Bool)

(assert (=> b!1553339 (= e!996481 (and e!996473 tp!454698))))

(declare-fun b!1553340 () Bool)

(declare-fun e!996460 () Bool)

(declare-fun e!996485 () Bool)

(assert (=> b!1553340 (= e!996460 e!996485)))

(declare-fun mapNonEmpty!8301 () Bool)

(declare-fun mapRes!8302 () Bool)

(declare-fun tp!454716 () Bool)

(declare-fun tp!454702 () Bool)

(assert (=> mapNonEmpty!8301 (= mapRes!8302 (and tp!454716 tp!454702))))

(declare-fun mapKey!8301 () (_ BitVec 32))

(declare-fun mapRest!8303 () (Array (_ BitVec 32) List!16861))

(declare-fun mapValue!8301 () List!16861)

(assert (=> mapNonEmpty!8301 (= (arr!2731 (_values!2064 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 (_2!9448 res!693709)))))))) (store mapRest!8303 mapKey!8301 mapValue!8301))))

(declare-fun b!1553341 () Bool)

(declare-fun e!996466 () Bool)

(declare-fun lt!538014 () MutLongMap!1786)

(assert (=> b!1553341 (= e!996466 (and e!996469 ((_ is LongMap!1786) lt!538014)))))

(assert (=> b!1553341 (= lt!538014 (v!23633 (underlying!3782 (cache!2111 (_4!443 res!693709)))))))

(declare-fun mapIsEmpty!8302 () Bool)

(assert (=> mapIsEmpty!8302 mapRes!8303))

(declare-fun b!1553342 () Bool)

(declare-fun e!996475 () Bool)

(assert (=> b!1553342 (= e!996475 e!996459)))

(declare-fun b!1553343 () Bool)

(declare-fun res!693711 () Bool)

(assert (=> b!1553343 (=> (not res!693711) (not e!996484))))

(assert (=> b!1553343 (= res!693711 (valid!1433 (_4!443 res!693709)))))

(declare-fun e!996464 () Bool)

(declare-fun e!996476 () Bool)

(declare-fun e!996471 () Bool)

(declare-fun b!1553344 () Bool)

(assert (=> b!1553344 (= e!996471 (and e!996476 (inv!22060 (totalInput!2450 (_4!443 res!693709))) e!996464))))

(declare-fun mapIsEmpty!8303 () Bool)

(assert (=> mapIsEmpty!8303 mapRes!8302))

(declare-fun tp!454706 () Bool)

(declare-fun tp!454699 () Bool)

(declare-fun e!996480 () Bool)

(assert (=> b!1553345 (= e!996485 (and tp!454713 tp!454706 tp!454699 (array_inv!1966 (_keys!2079 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 (_2!9448 res!693709)))))))) (array_inv!1967 (_values!2064 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 (_2!9448 res!693709)))))))) e!996480))))

(declare-fun b!1553346 () Bool)

(declare-fun tp!454717 () Bool)

(assert (=> b!1553346 (= e!996480 (and tp!454717 mapRes!8302))))

(declare-fun condMapEmpty!8301 () Bool)

(declare-fun mapDefault!8303 () List!16861)

(assert (=> b!1553346 (= condMapEmpty!8301 (= (arr!2731 (_values!2064 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 (_2!9448 res!693709)))))))) ((as const (Array (_ BitVec 32) List!16861)) mapDefault!8303)))))

(declare-fun mapNonEmpty!8302 () Bool)

(declare-fun tp!454718 () Bool)

(declare-fun tp!454697 () Bool)

(assert (=> mapNonEmpty!8302 (= mapRes!8301 (and tp!454718 tp!454697))))

(declare-fun mapRest!8301 () (Array (_ BitVec 32) List!16862))

(declare-fun mapKey!8302 () (_ BitVec 32))

(declare-fun mapValue!8303 () List!16862)

(assert (=> mapNonEmpty!8302 (= (arr!2733 (_values!2065 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 (_4!443 res!693709)))))))) (store mapRest!8301 mapKey!8302 mapValue!8303))))

(declare-fun mapNonEmpty!8303 () Bool)

(declare-fun tp!454719 () Bool)

(declare-fun tp!454705 () Bool)

(assert (=> mapNonEmpty!8303 (= mapRes!8303 (and tp!454719 tp!454705))))

(declare-fun mapRest!8302 () (Array (_ BitVec 32) List!16863))

(declare-fun mapKey!8303 () (_ BitVec 32))

(declare-fun mapValue!8302 () List!16863)

(assert (=> mapNonEmpty!8303 (= (arr!2734 (_values!2066 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 (_3!1330 res!693709)))))))) (store mapRest!8302 mapKey!8303 mapValue!8302))))

(declare-fun b!1553347 () Bool)

(declare-fun e!996467 () Bool)

(declare-fun e!996472 () Bool)

(assert (=> b!1553347 (= e!996467 e!996472)))

(declare-fun b!1553348 () Bool)

(declare-fun e!996461 () Bool)

(declare-fun tp!454712 () Bool)

(assert (=> b!1553348 (= e!996461 (and (inv!22064 (c!252471 (_2!9447 (_1!9448 res!693709)))) tp!454712))))

(assert (=> b!1553349 (= e!996476 (and e!996466 tp!454710))))

(declare-fun b!1553350 () Bool)

(declare-fun lt!538015 () MutLongMap!1787)

(assert (=> b!1553350 (= e!996473 (and e!996475 ((_ is LongMap!1787) lt!538015)))))

(assert (=> b!1553350 (= lt!538015 (v!23635 (underlying!3784 (cache!2112 (_3!1330 res!693709)))))))

(declare-fun b!1553351 () Bool)

(assert (=> b!1553351 (= e!996484 (= (totalInput!2450 (_4!443 res!693709)) totalInput!568))))

(declare-fun b!1553352 () Bool)

(declare-fun tp!454708 () Bool)

(assert (=> b!1553352 (= e!996464 (and (inv!22064 (c!252471 (totalInput!2450 (_4!443 res!693709)))) tp!454708))))

(declare-fun e!996470 () Bool)

(assert (=> b!1553353 (= e!996472 (and e!996470 tp!454704))))

(declare-fun b!1553354 () Bool)

(declare-fun e!996477 () Bool)

(assert (=> b!1553354 (= e!996477 e!996460)))

(declare-fun tp!454714 () Bool)

(declare-fun tp!454711 () Bool)

(assert (=> b!1553355 (= e!996483 (and tp!454700 tp!454714 tp!454711 (array_inv!1966 (_keys!2081 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 (_3!1330 res!693709)))))))) (array_inv!1969 (_values!2066 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 (_3!1330 res!693709)))))))) e!996478))))

(declare-fun tp!454696 () Bool)

(declare-fun e!996462 () Bool)

(declare-fun tp!454707 () Bool)

(assert (=> b!1553356 (= e!996479 (and tp!454701 tp!454707 tp!454696 (array_inv!1966 (_keys!2080 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 (_4!443 res!693709)))))))) (array_inv!1968 (_values!2065 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 (_4!443 res!693709)))))))) e!996462))))

(declare-fun b!1553357 () Bool)

(declare-fun tp!454709 () Bool)

(assert (=> b!1553357 (= e!996462 (and tp!454709 mapRes!8301))))

(declare-fun condMapEmpty!8302 () Bool)

(declare-fun mapDefault!8301 () List!16862)

(assert (=> b!1553357 (= condMapEmpty!8302 (= (arr!2733 (_values!2065 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 (_4!443 res!693709)))))))) ((as const (Array (_ BitVec 32) List!16862)) mapDefault!8301)))))

(declare-fun d!460817 () Bool)

(assert (=> d!460817 e!996484))

(declare-fun res!693713 () Bool)

(assert (=> d!460817 (=> (not res!693713) (not e!996484))))

(assert (=> d!460817 (= res!693713 (= (tuple2!16239 (list!6486 (_1!9447 (_1!9448 res!693709))) (list!6486 (_2!9447 (_1!9448 res!693709)))) (findLongestMatch!259 (regex!2943 rule!240) (list!6486 input!1676))))))

(assert (=> d!460817 (and (inv!22060 (_1!9447 (_1!9448 res!693709))) e!996463 (inv!22060 (_2!9447 (_1!9448 res!693709))) e!996461 (inv!22061 (_2!9448 res!693709)) e!996467 (inv!22063 (_3!1330 res!693709)) e!996482 (inv!22062 (_4!443 res!693709)) e!996471)))

(assert (=> d!460817 (= (choose!9262 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) res!693709)))

(declare-fun b!1553336 () Bool)

(declare-fun lt!538016 () MutLongMap!1785)

(assert (=> b!1553336 (= e!996470 (and e!996477 ((_ is LongMap!1785) lt!538016)))))

(assert (=> b!1553336 (= lt!538016 (v!23631 (underlying!3780 (cache!2110 (_2!9448 res!693709)))))))

(assert (= d!460817 b!1553333))

(assert (= d!460817 b!1553348))

(assert (= (and b!1553346 condMapEmpty!8301) mapIsEmpty!8303))

(assert (= (and b!1553346 (not condMapEmpty!8301)) mapNonEmpty!8301))

(assert (= b!1553345 b!1553346))

(assert (= b!1553340 b!1553345))

(assert (= b!1553354 b!1553340))

(assert (= (and b!1553336 ((_ is LongMap!1785) (v!23631 (underlying!3780 (cache!2110 (_2!9448 res!693709)))))) b!1553354))

(assert (= b!1553353 b!1553336))

(assert (= (and b!1553347 ((_ is HashMap!1729) (cache!2110 (_2!9448 res!693709)))) b!1553353))

(assert (= d!460817 b!1553347))

(assert (= (and b!1553331 condMapEmpty!8303) mapIsEmpty!8302))

(assert (= (and b!1553331 (not condMapEmpty!8303)) mapNonEmpty!8303))

(assert (= b!1553355 b!1553331))

(assert (= b!1553338 b!1553355))

(assert (= b!1553342 b!1553338))

(assert (= (and b!1553350 ((_ is LongMap!1787) (v!23635 (underlying!3784 (cache!2112 (_3!1330 res!693709)))))) b!1553342))

(assert (= b!1553339 b!1553350))

(assert (= (and b!1553334 ((_ is HashMap!1731) (cache!2112 (_3!1330 res!693709)))) b!1553339))

(assert (= d!460817 b!1553334))

(assert (= (and b!1553357 condMapEmpty!8302) mapIsEmpty!8301))

(assert (= (and b!1553357 (not condMapEmpty!8302)) mapNonEmpty!8302))

(assert (= b!1553356 b!1553357))

(assert (= b!1553330 b!1553356))

(assert (= b!1553332 b!1553330))

(assert (= (and b!1553341 ((_ is LongMap!1786) (v!23633 (underlying!3782 (cache!2111 (_4!443 res!693709)))))) b!1553332))

(assert (= b!1553349 b!1553341))

(assert (= (and b!1553344 ((_ is HashMap!1730) (cache!2111 (_4!443 res!693709)))) b!1553349))

(assert (= b!1553344 b!1553352))

(assert (= d!460817 b!1553344))

(assert (= (and d!460817 res!693713) b!1553337))

(assert (= (and b!1553337 res!693712) b!1553335))

(assert (= (and b!1553335 res!693710) b!1553343))

(assert (= (and b!1553343 res!693711) b!1553351))

(declare-fun m!1825756 () Bool)

(assert (=> d!460817 m!1825756))

(declare-fun m!1825758 () Bool)

(assert (=> d!460817 m!1825758))

(assert (=> d!460817 m!1825350))

(assert (=> d!460817 m!1825534))

(declare-fun m!1825760 () Bool)

(assert (=> d!460817 m!1825760))

(declare-fun m!1825762 () Bool)

(assert (=> d!460817 m!1825762))

(assert (=> d!460817 m!1825350))

(declare-fun m!1825764 () Bool)

(assert (=> d!460817 m!1825764))

(declare-fun m!1825766 () Bool)

(assert (=> d!460817 m!1825766))

(declare-fun m!1825768 () Bool)

(assert (=> d!460817 m!1825768))

(declare-fun m!1825770 () Bool)

(assert (=> b!1553352 m!1825770))

(declare-fun m!1825772 () Bool)

(assert (=> b!1553343 m!1825772))

(declare-fun m!1825774 () Bool)

(assert (=> b!1553345 m!1825774))

(declare-fun m!1825776 () Bool)

(assert (=> b!1553345 m!1825776))

(declare-fun m!1825778 () Bool)

(assert (=> b!1553355 m!1825778))

(declare-fun m!1825780 () Bool)

(assert (=> b!1553355 m!1825780))

(declare-fun m!1825782 () Bool)

(assert (=> b!1553344 m!1825782))

(declare-fun m!1825784 () Bool)

(assert (=> mapNonEmpty!8302 m!1825784))

(declare-fun m!1825786 () Bool)

(assert (=> mapNonEmpty!8301 m!1825786))

(declare-fun m!1825788 () Bool)

(assert (=> b!1553356 m!1825788))

(declare-fun m!1825790 () Bool)

(assert (=> b!1553356 m!1825790))

(declare-fun m!1825792 () Bool)

(assert (=> mapNonEmpty!8303 m!1825792))

(declare-fun m!1825794 () Bool)

(assert (=> b!1553348 m!1825794))

(declare-fun m!1825796 () Bool)

(assert (=> b!1553337 m!1825796))

(declare-fun m!1825798 () Bool)

(assert (=> b!1553335 m!1825798))

(declare-fun m!1825800 () Bool)

(assert (=> b!1553333 m!1825800))

(assert (=> d!460747 d!460817))

(declare-fun d!460819 () Bool)

(assert (=> d!460819 (= (list!6486 (_1!9447 (_1!9448 lt!537971))) (list!6487 (c!252471 (_1!9447 (_1!9448 lt!537971)))))))

(declare-fun bs!387657 () Bool)

(assert (= bs!387657 d!460819))

(declare-fun m!1825802 () Bool)

(assert (=> bs!387657 m!1825802))

(assert (=> d!460747 d!460819))

(declare-fun d!460821 () Bool)

(assert (=> d!460821 (= (list!6486 (_2!9447 (_1!9448 lt!537971))) (list!6487 (c!252471 (_2!9447 (_1!9448 lt!537971)))))))

(declare-fun bs!387658 () Bool)

(assert (= bs!387658 d!460821))

(declare-fun m!1825804 () Bool)

(assert (=> bs!387658 m!1825804))

(assert (=> d!460747 d!460821))

(assert (=> d!460747 d!460705))

(assert (=> d!460747 d!460783))

(declare-fun bs!387659 () Bool)

(declare-fun d!460823 () Bool)

(assert (= bs!387659 (and d!460823 d!460811)))

(declare-fun lambda!65746 () Int)

(assert (=> bs!387659 (= lambda!65746 lambda!65742)))

(assert (=> d!460823 (= (inv!22068 setElem!10693) (forall!3922 (exprs!1289 setElem!10693) lambda!65746))))

(declare-fun bs!387660 () Bool)

(assert (= bs!387660 d!460823))

(declare-fun m!1825806 () Bool)

(assert (=> bs!387660 m!1825806))

(assert (=> setNonEmpty!10693 d!460823))

(declare-fun b!1553370 () Bool)

(declare-fun e!996490 () Bool)

(declare-fun e!996491 () Bool)

(assert (=> b!1553370 (= e!996490 e!996491)))

(declare-fun res!693731 () Bool)

(assert (=> b!1553370 (=> (not res!693731) (not e!996491))))

(assert (=> b!1553370 (= res!693731 (<= (- 1) (- (height!828 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) (height!828 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))))

(declare-fun d!460825 () Bool)

(declare-fun res!693730 () Bool)

(assert (=> d!460825 (=> res!693730 e!996490)))

(assert (=> d!460825 (= res!693730 (not ((_ is Node!5561) (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(assert (=> d!460825 (= (isBalanced!1641 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) e!996490)))

(declare-fun b!1553371 () Bool)

(assert (=> b!1553371 (= e!996491 (not (isEmpty!10104 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))))))

(declare-fun b!1553372 () Bool)

(declare-fun res!693728 () Bool)

(assert (=> b!1553372 (=> (not res!693728) (not e!996491))))

(assert (=> b!1553372 (= res!693728 (isBalanced!1641 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(declare-fun b!1553373 () Bool)

(declare-fun res!693729 () Bool)

(assert (=> b!1553373 (=> (not res!693729) (not e!996491))))

(assert (=> b!1553373 (= res!693729 (not (isEmpty!10104 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))))))

(declare-fun b!1553374 () Bool)

(declare-fun res!693727 () Bool)

(assert (=> b!1553374 (=> (not res!693727) (not e!996491))))

(assert (=> b!1553374 (= res!693727 (isBalanced!1641 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(declare-fun b!1553375 () Bool)

(declare-fun res!693726 () Bool)

(assert (=> b!1553375 (=> (not res!693726) (not e!996491))))

(assert (=> b!1553375 (= res!693726 (<= (- (height!828 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) (height!828 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) 1))))

(assert (= (and d!460825 (not res!693730)) b!1553370))

(assert (= (and b!1553370 res!693731) b!1553375))

(assert (= (and b!1553375 res!693726) b!1553372))

(assert (= (and b!1553372 res!693728) b!1553374))

(assert (= (and b!1553374 res!693727) b!1553373))

(assert (= (and b!1553373 res!693729) b!1553371))

(declare-fun m!1825808 () Bool)

(assert (=> b!1553375 m!1825808))

(declare-fun m!1825810 () Bool)

(assert (=> b!1553375 m!1825810))

(declare-fun m!1825812 () Bool)

(assert (=> b!1553373 m!1825812))

(declare-fun m!1825814 () Bool)

(assert (=> b!1553374 m!1825814))

(assert (=> b!1553370 m!1825808))

(assert (=> b!1553370 m!1825810))

(declare-fun m!1825816 () Bool)

(assert (=> b!1553372 m!1825816))

(declare-fun m!1825818 () Bool)

(assert (=> b!1553371 m!1825818))

(assert (=> d!460767 d!460825))

(declare-fun bs!387661 () Bool)

(declare-fun d!460827 () Bool)

(assert (= bs!387661 (and d!460827 d!460811)))

(declare-fun lambda!65747 () Int)

(assert (=> bs!387661 (= lambda!65747 lambda!65742)))

(declare-fun bs!387662 () Bool)

(assert (= bs!387662 (and d!460827 d!460823)))

(assert (=> bs!387662 (= lambda!65747 lambda!65746)))

(assert (=> d!460827 (= (inv!22068 setElem!10702) (forall!3922 (exprs!1289 setElem!10702) lambda!65747))))

(declare-fun bs!387663 () Bool)

(assert (= bs!387663 d!460827))

(declare-fun m!1825820 () Bool)

(assert (=> bs!387663 m!1825820))

(assert (=> setNonEmpty!10703 d!460827))

(declare-fun bs!387664 () Bool)

(declare-fun d!460829 () Bool)

(assert (= bs!387664 (and d!460829 d!460811)))

(declare-fun lambda!65748 () Int)

(assert (=> bs!387664 (= lambda!65748 lambda!65742)))

(declare-fun bs!387665 () Bool)

(assert (= bs!387665 (and d!460829 d!460823)))

(assert (=> bs!387665 (= lambda!65748 lambda!65746)))

(declare-fun bs!387666 () Bool)

(assert (= bs!387666 (and d!460829 d!460827)))

(assert (=> bs!387666 (= lambda!65748 lambda!65747)))

(assert (=> d!460829 (= (inv!22068 (_2!9444 (_1!9445 (h!22196 mapDefault!8294)))) (forall!3922 (exprs!1289 (_2!9444 (_1!9445 (h!22196 mapDefault!8294)))) lambda!65748))))

(declare-fun bs!387667 () Bool)

(assert (= bs!387667 d!460829))

(declare-fun m!1825822 () Bool)

(assert (=> bs!387667 m!1825822))

(assert (=> b!1553172 d!460829))

(declare-fun d!460831 () Bool)

(assert (=> d!460831 (= (isEmpty!10101 (tail!2206 (_1!9450 lt!537835))) ((_ is Nil!16791) (tail!2206 (_1!9450 lt!537835))))))

(assert (=> b!1552962 d!460831))

(declare-fun d!460833 () Bool)

(assert (=> d!460833 (= (tail!2206 (_1!9450 lt!537835)) (t!141282 (_1!9450 lt!537835)))))

(assert (=> b!1552962 d!460833))

(declare-fun bs!387668 () Bool)

(declare-fun d!460835 () Bool)

(assert (= bs!387668 (and d!460835 d!460811)))

(declare-fun lambda!65749 () Int)

(assert (=> bs!387668 (= lambda!65749 lambda!65742)))

(declare-fun bs!387669 () Bool)

(assert (= bs!387669 (and d!460835 d!460823)))

(assert (=> bs!387669 (= lambda!65749 lambda!65746)))

(declare-fun bs!387670 () Bool)

(assert (= bs!387670 (and d!460835 d!460827)))

(assert (=> bs!387670 (= lambda!65749 lambda!65747)))

(declare-fun bs!387671 () Bool)

(assert (= bs!387671 (and d!460835 d!460829)))

(assert (=> bs!387671 (= lambda!65749 lambda!65748)))

(assert (=> d!460835 (= (inv!22068 setElem!10689) (forall!3922 (exprs!1289 setElem!10689) lambda!65749))))

(declare-fun bs!387672 () Bool)

(assert (= bs!387672 d!460835))

(declare-fun m!1825824 () Bool)

(assert (=> bs!387672 m!1825824))

(assert (=> setNonEmpty!10690 d!460835))

(declare-fun d!460837 () Bool)

(declare-fun nullableFct!297 (Regex!4271) Bool)

(assert (=> d!460837 (= (nullable!1268 (regex!2943 rule!240)) (nullableFct!297 (regex!2943 rule!240)))))

(declare-fun bs!387673 () Bool)

(assert (= bs!387673 d!460837))

(declare-fun m!1825826 () Bool)

(assert (=> bs!387673 m!1825826))

(assert (=> bm!101893 d!460837))

(declare-fun b!1553385 () Bool)

(declare-fun e!996497 () List!16859)

(assert (=> b!1553385 (= e!996497 (Cons!16791 (h!22192 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))) (++!4412 (t!141282 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))) (_2!9446 (get!4843 lt!537954)))))))

(declare-fun b!1553384 () Bool)

(assert (=> b!1553384 (= e!996497 (_2!9446 (get!4843 lt!537954)))))

(declare-fun b!1553387 () Bool)

(declare-fun e!996496 () Bool)

(declare-fun lt!538019 () List!16859)

(assert (=> b!1553387 (= e!996496 (or (not (= (_2!9446 (get!4843 lt!537954)) Nil!16791)) (= lt!538019 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954)))))))))

(declare-fun d!460839 () Bool)

(assert (=> d!460839 e!996496))

(declare-fun res!693737 () Bool)

(assert (=> d!460839 (=> (not res!693737) (not e!996496))))

(declare-fun content!2341 (List!16859) (InoxSet C!8720))

(assert (=> d!460839 (= res!693737 (= (content!2341 lt!538019) ((_ map or) (content!2341 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))) (content!2341 (_2!9446 (get!4843 lt!537954))))))))

(assert (=> d!460839 (= lt!538019 e!996497)))

(declare-fun c!252536 () Bool)

(assert (=> d!460839 (= c!252536 ((_ is Nil!16791) (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))))))

(assert (=> d!460839 (= (++!4412 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954)))) (_2!9446 (get!4843 lt!537954))) lt!538019)))

(declare-fun b!1553386 () Bool)

(declare-fun res!693736 () Bool)

(assert (=> b!1553386 (=> (not res!693736) (not e!996496))))

(assert (=> b!1553386 (= res!693736 (= (size!13594 lt!538019) (+ (size!13594 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))) (size!13594 (_2!9446 (get!4843 lt!537954))))))))

(assert (= (and d!460839 c!252536) b!1553384))

(assert (= (and d!460839 (not c!252536)) b!1553385))

(assert (= (and d!460839 res!693737) b!1553386))

(assert (= (and b!1553386 res!693736) b!1553387))

(declare-fun m!1825828 () Bool)

(assert (=> b!1553385 m!1825828))

(declare-fun m!1825830 () Bool)

(assert (=> d!460839 m!1825830))

(assert (=> d!460839 m!1825470))

(declare-fun m!1825832 () Bool)

(assert (=> d!460839 m!1825832))

(declare-fun m!1825834 () Bool)

(assert (=> d!460839 m!1825834))

(declare-fun m!1825836 () Bool)

(assert (=> b!1553386 m!1825836))

(assert (=> b!1553386 m!1825470))

(declare-fun m!1825838 () Bool)

(assert (=> b!1553386 m!1825838))

(assert (=> b!1553386 m!1825486))

(assert (=> b!1553004 d!460839))

(declare-fun d!460841 () Bool)

(assert (=> d!460841 (= (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954)))) (list!6487 (c!252471 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))))))

(declare-fun bs!387674 () Bool)

(assert (= bs!387674 d!460841))

(declare-fun m!1825840 () Bool)

(assert (=> bs!387674 m!1825840))

(assert (=> b!1553004 d!460841))

(declare-fun d!460843 () Bool)

(declare-fun lt!538022 () BalanceConc!11064)

(assert (=> d!460843 (= (list!6486 lt!538022) (originalCharacters!3765 (_1!9446 (get!4843 lt!537954))))))

(assert (=> d!460843 (= lt!538022 (dynLambda!7436 (toChars!4169 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954))))) (value!93515 (_1!9446 (get!4843 lt!537954)))))))

(assert (=> d!460843 (= (charsOf!1644 (_1!9446 (get!4843 lt!537954))) lt!538022)))

(declare-fun b_lambda!48749 () Bool)

(assert (=> (not b_lambda!48749) (not d!460843)))

(declare-fun t!141299 () Bool)

(declare-fun tb!87289 () Bool)

(assert (=> (and b!1552850 (= (toChars!4169 (transformation!2943 rule!240)) (toChars!4169 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954)))))) t!141299) tb!87289))

(declare-fun b!1553388 () Bool)

(declare-fun e!996498 () Bool)

(declare-fun tp!454720 () Bool)

(assert (=> b!1553388 (= e!996498 (and (inv!22064 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954))))) (value!93515 (_1!9446 (get!4843 lt!537954)))))) tp!454720))))

(declare-fun result!105348 () Bool)

(assert (=> tb!87289 (= result!105348 (and (inv!22060 (dynLambda!7436 (toChars!4169 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954))))) (value!93515 (_1!9446 (get!4843 lt!537954))))) e!996498))))

(assert (= tb!87289 b!1553388))

(declare-fun m!1825842 () Bool)

(assert (=> b!1553388 m!1825842))

(declare-fun m!1825844 () Bool)

(assert (=> tb!87289 m!1825844))

(assert (=> d!460843 t!141299))

(declare-fun b_and!108411 () Bool)

(assert (= b_and!108395 (and (=> t!141299 result!105348) b_and!108411)))

(declare-fun m!1825846 () Bool)

(assert (=> d!460843 m!1825846))

(declare-fun m!1825848 () Bool)

(assert (=> d!460843 m!1825848))

(assert (=> b!1553004 d!460843))

(assert (=> b!1553004 d!460805))

(declare-fun d!460845 () Bool)

(assert (=> d!460845 (<= (size!13594 Nil!16791) (size!13594 lt!537846))))

(declare-fun lt!538025 () Unit!26040)

(declare-fun choose!9263 (List!16859 List!16859) Unit!26040)

(assert (=> d!460845 (= lt!538025 (choose!9263 Nil!16791 lt!537846))))

(assert (=> d!460845 (isPrefix!1258 Nil!16791 lt!537846)))

(assert (=> d!460845 (= (lemmaIsPrefixThenSmallerEqSize!112 Nil!16791 lt!537846) lt!538025)))

(declare-fun bs!387675 () Bool)

(assert (= bs!387675 d!460845))

(assert (=> bs!387675 m!1825338))

(assert (=> bs!387675 m!1825330))

(declare-fun m!1825850 () Bool)

(assert (=> bs!387675 m!1825850))

(declare-fun m!1825852 () Bool)

(assert (=> bs!387675 m!1825852))

(assert (=> b!1552902 d!460845))

(assert (=> b!1552902 d!460699))

(declare-fun b!1553390 () Bool)

(declare-fun e!996500 () List!16859)

(assert (=> b!1553390 (= e!996500 (Cons!16791 (h!22192 (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791))) (++!4412 (t!141282 (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791))) lt!537929)))))

(declare-fun b!1553389 () Bool)

(assert (=> b!1553389 (= e!996500 lt!537929)))

(declare-fun e!996499 () Bool)

(declare-fun b!1553392 () Bool)

(declare-fun lt!538026 () List!16859)

(assert (=> b!1553392 (= e!996499 (or (not (= lt!537929 Nil!16791)) (= lt!538026 (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791)))))))

(declare-fun d!460847 () Bool)

(assert (=> d!460847 e!996499))

(declare-fun res!693739 () Bool)

(assert (=> d!460847 (=> (not res!693739) (not e!996499))))

(assert (=> d!460847 (= res!693739 (= (content!2341 lt!538026) ((_ map or) (content!2341 (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791))) (content!2341 lt!537929))))))

(assert (=> d!460847 (= lt!538026 e!996500)))

(declare-fun c!252537 () Bool)

(assert (=> d!460847 (= c!252537 ((_ is Nil!16791) (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791))))))

(assert (=> d!460847 (= (++!4412 (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791)) lt!537929) lt!538026)))

(declare-fun b!1553391 () Bool)

(declare-fun res!693738 () Bool)

(assert (=> b!1553391 (=> (not res!693738) (not e!996499))))

(assert (=> b!1553391 (= res!693738 (= (size!13594 lt!538026) (+ (size!13594 (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791))) (size!13594 lt!537929))))))

(assert (= (and d!460847 c!252537) b!1553389))

(assert (= (and d!460847 (not c!252537)) b!1553390))

(assert (= (and d!460847 res!693739) b!1553391))

(assert (= (and b!1553391 res!693738) b!1553392))

(declare-fun m!1825854 () Bool)

(assert (=> b!1553390 m!1825854))

(declare-fun m!1825856 () Bool)

(assert (=> d!460847 m!1825856))

(assert (=> d!460847 m!1825408))

(declare-fun m!1825858 () Bool)

(assert (=> d!460847 m!1825858))

(declare-fun m!1825860 () Bool)

(assert (=> d!460847 m!1825860))

(declare-fun m!1825862 () Bool)

(assert (=> b!1553391 m!1825862))

(assert (=> b!1553391 m!1825408))

(declare-fun m!1825864 () Bool)

(assert (=> b!1553391 m!1825864))

(declare-fun m!1825866 () Bool)

(assert (=> b!1553391 m!1825866))

(assert (=> b!1552902 d!460847))

(assert (=> b!1552902 d!460775))

(declare-fun b!1553394 () Bool)

(declare-fun e!996502 () List!16859)

(assert (=> b!1553394 (= e!996502 (Cons!16791 (h!22192 Nil!16791) (++!4412 (t!141282 Nil!16791) (Cons!16791 lt!537911 Nil!16791))))))

(declare-fun b!1553393 () Bool)

(assert (=> b!1553393 (= e!996502 (Cons!16791 lt!537911 Nil!16791))))

(declare-fun b!1553396 () Bool)

(declare-fun e!996501 () Bool)

(declare-fun lt!538027 () List!16859)

(assert (=> b!1553396 (= e!996501 (or (not (= (Cons!16791 lt!537911 Nil!16791) Nil!16791)) (= lt!538027 Nil!16791)))))

(declare-fun d!460849 () Bool)

(assert (=> d!460849 e!996501))

(declare-fun res!693741 () Bool)

(assert (=> d!460849 (=> (not res!693741) (not e!996501))))

(assert (=> d!460849 (= res!693741 (= (content!2341 lt!538027) ((_ map or) (content!2341 Nil!16791) (content!2341 (Cons!16791 lt!537911 Nil!16791)))))))

(assert (=> d!460849 (= lt!538027 e!996502)))

(declare-fun c!252538 () Bool)

(assert (=> d!460849 (= c!252538 ((_ is Nil!16791) Nil!16791))))

(assert (=> d!460849 (= (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791)) lt!538027)))

(declare-fun b!1553395 () Bool)

(declare-fun res!693740 () Bool)

(assert (=> b!1553395 (=> (not res!693740) (not e!996501))))

(assert (=> b!1553395 (= res!693740 (= (size!13594 lt!538027) (+ (size!13594 Nil!16791) (size!13594 (Cons!16791 lt!537911 Nil!16791)))))))

(assert (= (and d!460849 c!252538) b!1553393))

(assert (= (and d!460849 (not c!252538)) b!1553394))

(assert (= (and d!460849 res!693741) b!1553395))

(assert (= (and b!1553395 res!693740) b!1553396))

(declare-fun m!1825868 () Bool)

(assert (=> b!1553394 m!1825868))

(declare-fun m!1825870 () Bool)

(assert (=> d!460849 m!1825870))

(declare-fun m!1825872 () Bool)

(assert (=> d!460849 m!1825872))

(declare-fun m!1825874 () Bool)

(assert (=> d!460849 m!1825874))

(declare-fun m!1825876 () Bool)

(assert (=> b!1553395 m!1825876))

(assert (=> b!1553395 m!1825338))

(declare-fun m!1825878 () Bool)

(assert (=> b!1553395 m!1825878))

(assert (=> b!1552902 d!460849))

(declare-fun b!1553398 () Bool)

(declare-fun e!996504 () List!16859)

(assert (=> b!1553398 (= e!996504 (Cons!16791 (h!22192 Nil!16791) (++!4412 (t!141282 Nil!16791) (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791))))))

(declare-fun b!1553397 () Bool)

(assert (=> b!1553397 (= e!996504 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791))))

(declare-fun b!1553400 () Bool)

(declare-fun e!996503 () Bool)

(declare-fun lt!538028 () List!16859)

(assert (=> b!1553400 (= e!996503 (or (not (= (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791) Nil!16791)) (= lt!538028 Nil!16791)))))

(declare-fun d!460851 () Bool)

(assert (=> d!460851 e!996503))

(declare-fun res!693743 () Bool)

(assert (=> d!460851 (=> (not res!693743) (not e!996503))))

(assert (=> d!460851 (= res!693743 (= (content!2341 lt!538028) ((_ map or) (content!2341 Nil!16791) (content!2341 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791)))))))

(assert (=> d!460851 (= lt!538028 e!996504)))

(declare-fun c!252539 () Bool)

(assert (=> d!460851 (= c!252539 ((_ is Nil!16791) Nil!16791))))

(assert (=> d!460851 (= (++!4412 Nil!16791 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791)) lt!538028)))

(declare-fun b!1553399 () Bool)

(declare-fun res!693742 () Bool)

(assert (=> b!1553399 (=> (not res!693742) (not e!996503))))

(assert (=> b!1553399 (= res!693742 (= (size!13594 lt!538028) (+ (size!13594 Nil!16791) (size!13594 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791)))))))

(assert (= (and d!460851 c!252539) b!1553397))

(assert (= (and d!460851 (not c!252539)) b!1553398))

(assert (= (and d!460851 res!693743) b!1553399))

(assert (= (and b!1553399 res!693742) b!1553400))

(declare-fun m!1825880 () Bool)

(assert (=> b!1553398 m!1825880))

(declare-fun m!1825882 () Bool)

(assert (=> d!460851 m!1825882))

(assert (=> d!460851 m!1825872))

(declare-fun m!1825884 () Bool)

(assert (=> d!460851 m!1825884))

(declare-fun m!1825886 () Bool)

(assert (=> b!1553399 m!1825886))

(assert (=> b!1553399 m!1825338))

(declare-fun m!1825888 () Bool)

(assert (=> b!1553399 m!1825888))

(assert (=> b!1552902 d!460851))

(assert (=> b!1552902 d!460693))

(declare-fun d!460853 () Bool)

(declare-fun lt!538031 () List!16859)

(assert (=> d!460853 (= (++!4412 Nil!16791 lt!538031) lt!537846)))

(declare-fun e!996507 () List!16859)

(assert (=> d!460853 (= lt!538031 e!996507)))

(declare-fun c!252542 () Bool)

(assert (=> d!460853 (= c!252542 ((_ is Cons!16791) Nil!16791))))

(assert (=> d!460853 (>= (size!13594 lt!537846) (size!13594 Nil!16791))))

(assert (=> d!460853 (= (getSuffix!668 lt!537846 Nil!16791) lt!538031)))

(declare-fun b!1553405 () Bool)

(assert (=> b!1553405 (= e!996507 (getSuffix!668 (tail!2206 lt!537846) (t!141282 Nil!16791)))))

(declare-fun b!1553406 () Bool)

(assert (=> b!1553406 (= e!996507 lt!537846)))

(assert (= (and d!460853 c!252542) b!1553405))

(assert (= (and d!460853 (not c!252542)) b!1553406))

(declare-fun m!1825890 () Bool)

(assert (=> d!460853 m!1825890))

(assert (=> d!460853 m!1825330))

(assert (=> d!460853 m!1825338))

(assert (=> b!1553405 m!1825396))

(assert (=> b!1553405 m!1825396))

(declare-fun m!1825892 () Bool)

(assert (=> b!1553405 m!1825892))

(assert (=> b!1552902 d!460853))

(declare-fun d!460855 () Bool)

(assert (=> d!460855 (= (head!3111 (getSuffix!668 lt!537846 Nil!16791)) (h!22192 (getSuffix!668 lt!537846 Nil!16791)))))

(assert (=> b!1552902 d!460855))

(declare-fun b!1553408 () Bool)

(declare-fun e!996509 () List!16859)

(assert (=> b!1553408 (= e!996509 (Cons!16791 (h!22192 Nil!16791) (++!4412 (t!141282 Nil!16791) (Cons!16791 (head!3111 lt!537846) Nil!16791))))))

(declare-fun b!1553407 () Bool)

(assert (=> b!1553407 (= e!996509 (Cons!16791 (head!3111 lt!537846) Nil!16791))))

(declare-fun b!1553410 () Bool)

(declare-fun e!996508 () Bool)

(declare-fun lt!538032 () List!16859)

(assert (=> b!1553410 (= e!996508 (or (not (= (Cons!16791 (head!3111 lt!537846) Nil!16791) Nil!16791)) (= lt!538032 Nil!16791)))))

(declare-fun d!460857 () Bool)

(assert (=> d!460857 e!996508))

(declare-fun res!693745 () Bool)

(assert (=> d!460857 (=> (not res!693745) (not e!996508))))

(assert (=> d!460857 (= res!693745 (= (content!2341 lt!538032) ((_ map or) (content!2341 Nil!16791) (content!2341 (Cons!16791 (head!3111 lt!537846) Nil!16791)))))))

(assert (=> d!460857 (= lt!538032 e!996509)))

(declare-fun c!252543 () Bool)

(assert (=> d!460857 (= c!252543 ((_ is Nil!16791) Nil!16791))))

(assert (=> d!460857 (= (++!4412 Nil!16791 (Cons!16791 (head!3111 lt!537846) Nil!16791)) lt!538032)))

(declare-fun b!1553409 () Bool)

(declare-fun res!693744 () Bool)

(assert (=> b!1553409 (=> (not res!693744) (not e!996508))))

(assert (=> b!1553409 (= res!693744 (= (size!13594 lt!538032) (+ (size!13594 Nil!16791) (size!13594 (Cons!16791 (head!3111 lt!537846) Nil!16791)))))))

(assert (= (and d!460857 c!252543) b!1553407))

(assert (= (and d!460857 (not c!252543)) b!1553408))

(assert (= (and d!460857 res!693745) b!1553409))

(assert (= (and b!1553409 res!693744) b!1553410))

(declare-fun m!1825894 () Bool)

(assert (=> b!1553408 m!1825894))

(declare-fun m!1825896 () Bool)

(assert (=> d!460857 m!1825896))

(assert (=> d!460857 m!1825872))

(declare-fun m!1825898 () Bool)

(assert (=> d!460857 m!1825898))

(declare-fun m!1825900 () Bool)

(assert (=> b!1553409 m!1825900))

(assert (=> b!1553409 m!1825338))

(declare-fun m!1825902 () Bool)

(assert (=> b!1553409 m!1825902))

(assert (=> b!1552902 d!460857))

(declare-fun d!460859 () Bool)

(assert (=> d!460859 (= (head!3111 lt!537846) (h!22192 lt!537846))))

(assert (=> b!1552902 d!460859))

(declare-fun d!460861 () Bool)

(assert (=> d!460861 (= (++!4412 (++!4412 Nil!16791 (Cons!16791 lt!537911 Nil!16791)) lt!537929) lt!537846)))

(declare-fun lt!538035 () Unit!26040)

(declare-fun choose!9264 (List!16859 C!8720 List!16859 List!16859) Unit!26040)

(assert (=> d!460861 (= lt!538035 (choose!9264 Nil!16791 lt!537911 lt!537929 lt!537846))))

(assert (=> d!460861 (= (++!4412 Nil!16791 (Cons!16791 lt!537911 lt!537929)) lt!537846)))

(assert (=> d!460861 (= (lemmaMoveElementToOtherListKeepsConcatEq!437 Nil!16791 lt!537911 lt!537929 lt!537846) lt!538035)))

(declare-fun bs!387676 () Bool)

(assert (= bs!387676 d!460861))

(assert (=> bs!387676 m!1825408))

(assert (=> bs!387676 m!1825408))

(assert (=> bs!387676 m!1825410))

(declare-fun m!1825904 () Bool)

(assert (=> bs!387676 m!1825904))

(declare-fun m!1825906 () Bool)

(assert (=> bs!387676 m!1825906))

(assert (=> b!1552902 d!460861))

(declare-fun d!460863 () Bool)

(assert (=> d!460863 (isPrefix!1258 (++!4412 Nil!16791 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791)) lt!537846)))

(declare-fun lt!538038 () Unit!26040)

(declare-fun choose!9265 (List!16859 List!16859) Unit!26040)

(assert (=> d!460863 (= lt!538038 (choose!9265 Nil!16791 lt!537846))))

(assert (=> d!460863 (isPrefix!1258 Nil!16791 lt!537846)))

(assert (=> d!460863 (= (lemmaAddHeadSuffixToPrefixStillPrefix!111 Nil!16791 lt!537846) lt!538038)))

(declare-fun bs!387677 () Bool)

(assert (= bs!387677 d!460863))

(assert (=> bs!387677 m!1825852))

(assert (=> bs!387677 m!1825404))

(assert (=> bs!387677 m!1825404))

(assert (=> bs!387677 m!1825416))

(declare-fun m!1825908 () Bool)

(assert (=> bs!387677 m!1825908))

(assert (=> bs!387677 m!1825376))

(assert (=> bs!387677 m!1825376))

(assert (=> bs!387677 m!1825412))

(assert (=> b!1552902 d!460863))

(declare-fun b!1553421 () Bool)

(declare-fun e!996518 () Bool)

(assert (=> b!1553421 (= e!996518 (isPrefix!1258 (tail!2206 (++!4412 Nil!16791 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791))) (tail!2206 lt!537846)))))

(declare-fun b!1553419 () Bool)

(declare-fun e!996517 () Bool)

(assert (=> b!1553419 (= e!996517 e!996518)))

(declare-fun res!693757 () Bool)

(assert (=> b!1553419 (=> (not res!693757) (not e!996518))))

(assert (=> b!1553419 (= res!693757 (not ((_ is Nil!16791) lt!537846)))))

(declare-fun b!1553420 () Bool)

(declare-fun res!693756 () Bool)

(assert (=> b!1553420 (=> (not res!693756) (not e!996518))))

(assert (=> b!1553420 (= res!693756 (= (head!3111 (++!4412 Nil!16791 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791))) (head!3111 lt!537846)))))

(declare-fun d!460865 () Bool)

(declare-fun e!996516 () Bool)

(assert (=> d!460865 e!996516))

(declare-fun res!693754 () Bool)

(assert (=> d!460865 (=> res!693754 e!996516)))

(declare-fun lt!538041 () Bool)

(assert (=> d!460865 (= res!693754 (not lt!538041))))

(assert (=> d!460865 (= lt!538041 e!996517)))

(declare-fun res!693755 () Bool)

(assert (=> d!460865 (=> res!693755 e!996517)))

(assert (=> d!460865 (= res!693755 ((_ is Nil!16791) (++!4412 Nil!16791 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791))))))

(assert (=> d!460865 (= (isPrefix!1258 (++!4412 Nil!16791 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791)) lt!537846) lt!538041)))

(declare-fun b!1553422 () Bool)

(assert (=> b!1553422 (= e!996516 (>= (size!13594 lt!537846) (size!13594 (++!4412 Nil!16791 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 Nil!16791)) Nil!16791)))))))

(assert (= (and d!460865 (not res!693755)) b!1553419))

(assert (= (and b!1553419 res!693757) b!1553420))

(assert (= (and b!1553420 res!693756) b!1553421))

(assert (= (and d!460865 (not res!693754)) b!1553422))

(assert (=> b!1553421 m!1825404))

(declare-fun m!1825910 () Bool)

(assert (=> b!1553421 m!1825910))

(assert (=> b!1553421 m!1825396))

(assert (=> b!1553421 m!1825910))

(assert (=> b!1553421 m!1825396))

(declare-fun m!1825912 () Bool)

(assert (=> b!1553421 m!1825912))

(assert (=> b!1553420 m!1825404))

(declare-fun m!1825914 () Bool)

(assert (=> b!1553420 m!1825914))

(assert (=> b!1553420 m!1825400))

(assert (=> b!1553422 m!1825330))

(assert (=> b!1553422 m!1825404))

(declare-fun m!1825916 () Bool)

(assert (=> b!1553422 m!1825916))

(assert (=> b!1552902 d!460865))

(declare-fun bs!387678 () Bool)

(declare-fun d!460867 () Bool)

(assert (= bs!387678 (and d!460867 d!460835)))

(declare-fun lambda!65750 () Int)

(assert (=> bs!387678 (= lambda!65750 lambda!65749)))

(declare-fun bs!387679 () Bool)

(assert (= bs!387679 (and d!460867 d!460827)))

(assert (=> bs!387679 (= lambda!65750 lambda!65747)))

(declare-fun bs!387680 () Bool)

(assert (= bs!387680 (and d!460867 d!460829)))

(assert (=> bs!387680 (= lambda!65750 lambda!65748)))

(declare-fun bs!387681 () Bool)

(assert (= bs!387681 (and d!460867 d!460823)))

(assert (=> bs!387681 (= lambda!65750 lambda!65746)))

(declare-fun bs!387682 () Bool)

(assert (= bs!387682 (and d!460867 d!460811)))

(assert (=> bs!387682 (= lambda!65750 lambda!65742)))

(assert (=> d!460867 (= (inv!22068 (_1!9440 (_1!9441 (h!22194 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))))) (forall!3922 (exprs!1289 (_1!9440 (_1!9441 (h!22194 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))))) lambda!65750))))

(declare-fun bs!387683 () Bool)

(assert (= bs!387683 d!460867))

(declare-fun m!1825918 () Bool)

(assert (=> bs!387683 m!1825918))

(assert (=> b!1553116 d!460867))

(declare-fun d!460869 () Bool)

(declare-fun c!252544 () Bool)

(assert (=> d!460869 (= c!252544 ((_ is Node!5561) (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(declare-fun e!996519 () Bool)

(assert (=> d!460869 (= (inv!22064 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) e!996519)))

(declare-fun b!1553423 () Bool)

(assert (=> b!1553423 (= e!996519 (inv!22066 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(declare-fun b!1553424 () Bool)

(declare-fun e!996520 () Bool)

(assert (=> b!1553424 (= e!996519 e!996520)))

(declare-fun res!693758 () Bool)

(assert (=> b!1553424 (= res!693758 (not ((_ is Leaf!8242) (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))))))

(assert (=> b!1553424 (=> res!693758 e!996520)))

(declare-fun b!1553425 () Bool)

(assert (=> b!1553425 (= e!996520 (inv!22067 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(assert (= (and d!460869 c!252544) b!1553423))

(assert (= (and d!460869 (not c!252544)) b!1553424))

(assert (= (and b!1553424 (not res!693758)) b!1553425))

(declare-fun m!1825920 () Bool)

(assert (=> b!1553423 m!1825920))

(declare-fun m!1825922 () Bool)

(assert (=> b!1553425 m!1825922))

(assert (=> b!1553145 d!460869))

(declare-fun d!460871 () Bool)

(declare-fun c!252545 () Bool)

(assert (=> d!460871 (= c!252545 ((_ is Node!5561) (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(declare-fun e!996521 () Bool)

(assert (=> d!460871 (= (inv!22064 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) e!996521)))

(declare-fun b!1553426 () Bool)

(assert (=> b!1553426 (= e!996521 (inv!22066 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(declare-fun b!1553427 () Bool)

(declare-fun e!996522 () Bool)

(assert (=> b!1553427 (= e!996521 e!996522)))

(declare-fun res!693759 () Bool)

(assert (=> b!1553427 (= res!693759 (not ((_ is Leaf!8242) (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))))))

(assert (=> b!1553427 (=> res!693759 e!996522)))

(declare-fun b!1553428 () Bool)

(assert (=> b!1553428 (= e!996522 (inv!22067 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(assert (= (and d!460871 c!252545) b!1553426))

(assert (= (and d!460871 (not c!252545)) b!1553427))

(assert (= (and b!1553427 (not res!693759)) b!1553428))

(declare-fun m!1825924 () Bool)

(assert (=> b!1553426 m!1825924))

(declare-fun m!1825926 () Bool)

(assert (=> b!1553428 m!1825926))

(assert (=> b!1553145 d!460871))

(assert (=> b!1552851 d!460751))

(declare-fun d!460873 () Bool)

(declare-fun res!693760 () Bool)

(declare-fun e!996523 () Bool)

(assert (=> d!460873 (=> (not res!693760) (not e!996523))))

(assert (=> d!460873 (= res!693760 (= (csize!11352 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) (+ (size!13595 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) (size!13595 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))))

(assert (=> d!460873 (= (inv!22066 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) e!996523)))

(declare-fun b!1553429 () Bool)

(declare-fun res!693761 () Bool)

(assert (=> b!1553429 (=> (not res!693761) (not e!996523))))

(assert (=> b!1553429 (= res!693761 (and (not (= (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) Empty!5561)) (not (= (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) Empty!5561))))))

(declare-fun b!1553430 () Bool)

(declare-fun res!693762 () Bool)

(assert (=> b!1553430 (=> (not res!693762) (not e!996523))))

(assert (=> b!1553430 (= res!693762 (= (cheight!5772 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) (+ (max!0 (height!828 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) (height!828 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) 1)))))

(declare-fun b!1553431 () Bool)

(assert (=> b!1553431 (= e!996523 (<= 0 (cheight!5772 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))

(assert (= (and d!460873 res!693760) b!1553429))

(assert (= (and b!1553429 res!693761) b!1553430))

(assert (= (and b!1553430 res!693762) b!1553431))

(declare-fun m!1825928 () Bool)

(assert (=> d!460873 m!1825928))

(declare-fun m!1825930 () Bool)

(assert (=> d!460873 m!1825930))

(assert (=> b!1553430 m!1825808))

(assert (=> b!1553430 m!1825810))

(assert (=> b!1553430 m!1825808))

(assert (=> b!1553430 m!1825810))

(declare-fun m!1825932 () Bool)

(assert (=> b!1553430 m!1825932))

(assert (=> b!1553014 d!460873))

(declare-fun b!1553433 () Bool)

(declare-fun e!996529 () Bool)

(declare-fun e!996528 () Bool)

(assert (=> b!1553433 (= e!996529 e!996528)))

(declare-fun res!693768 () Bool)

(assert (=> b!1553433 (=> res!693768 e!996528)))

(declare-fun call!101914 () Bool)

(assert (=> b!1553433 (= res!693768 call!101914)))

(declare-fun b!1553434 () Bool)

(declare-fun e!996524 () Bool)

(assert (=> b!1553434 (= e!996524 (matchR!1876 (derivativeStep!1020 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835))) (head!3111 (tail!2206 (_1!9450 lt!537835)))) (tail!2206 (tail!2206 (_1!9450 lt!537835)))))))

(declare-fun b!1553435 () Bool)

(declare-fun res!693763 () Bool)

(declare-fun e!996530 () Bool)

(assert (=> b!1553435 (=> (not res!693763) (not e!996530))))

(assert (=> b!1553435 (= res!693763 (not call!101914))))

(declare-fun b!1553436 () Bool)

(declare-fun e!996527 () Bool)

(declare-fun e!996525 () Bool)

(assert (=> b!1553436 (= e!996527 e!996525)))

(declare-fun c!252547 () Bool)

(assert (=> b!1553436 (= c!252547 ((_ is EmptyLang!4271) (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835)))))))

(declare-fun b!1553437 () Bool)

(assert (=> b!1553437 (= e!996530 (= (head!3111 (tail!2206 (_1!9450 lt!537835))) (c!252472 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835))))))))

(declare-fun b!1553438 () Bool)

(declare-fun res!693770 () Bool)

(assert (=> b!1553438 (=> (not res!693770) (not e!996530))))

(assert (=> b!1553438 (= res!693770 (isEmpty!10101 (tail!2206 (tail!2206 (_1!9450 lt!537835)))))))

(declare-fun b!1553439 () Bool)

(declare-fun lt!538042 () Bool)

(assert (=> b!1553439 (= e!996527 (= lt!538042 call!101914))))

(declare-fun bm!101909 () Bool)

(assert (=> bm!101909 (= call!101914 (isEmpty!10101 (tail!2206 (_1!9450 lt!537835))))))

(declare-fun d!460875 () Bool)

(assert (=> d!460875 e!996527))

(declare-fun c!252548 () Bool)

(assert (=> d!460875 (= c!252548 ((_ is EmptyExpr!4271) (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835)))))))

(assert (=> d!460875 (= lt!538042 e!996524)))

(declare-fun c!252546 () Bool)

(assert (=> d!460875 (= c!252546 (isEmpty!10101 (tail!2206 (_1!9450 lt!537835))))))

(assert (=> d!460875 (validRegex!1709 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835))))))

(assert (=> d!460875 (= (matchR!1876 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835))) (tail!2206 (_1!9450 lt!537835))) lt!538042)))

(declare-fun b!1553432 () Bool)

(declare-fun res!693764 () Bool)

(assert (=> b!1553432 (=> res!693764 e!996528)))

(assert (=> b!1553432 (= res!693764 (not (isEmpty!10101 (tail!2206 (tail!2206 (_1!9450 lt!537835))))))))

(declare-fun b!1553440 () Bool)

(declare-fun res!693765 () Bool)

(declare-fun e!996526 () Bool)

(assert (=> b!1553440 (=> res!693765 e!996526)))

(assert (=> b!1553440 (= res!693765 e!996530)))

(declare-fun res!693766 () Bool)

(assert (=> b!1553440 (=> (not res!693766) (not e!996530))))

(assert (=> b!1553440 (= res!693766 lt!538042)))

(declare-fun b!1553441 () Bool)

(assert (=> b!1553441 (= e!996525 (not lt!538042))))

(declare-fun b!1553442 () Bool)

(assert (=> b!1553442 (= e!996524 (nullable!1268 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835)))))))

(declare-fun b!1553443 () Bool)

(declare-fun res!693769 () Bool)

(assert (=> b!1553443 (=> res!693769 e!996526)))

(assert (=> b!1553443 (= res!693769 (not ((_ is ElementMatch!4271) (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835))))))))

(assert (=> b!1553443 (= e!996525 e!996526)))

(declare-fun b!1553444 () Bool)

(assert (=> b!1553444 (= e!996526 e!996529)))

(declare-fun res!693767 () Bool)

(assert (=> b!1553444 (=> (not res!693767) (not e!996529))))

(assert (=> b!1553444 (= res!693767 (not lt!538042))))

(declare-fun b!1553445 () Bool)

(assert (=> b!1553445 (= e!996528 (not (= (head!3111 (tail!2206 (_1!9450 lt!537835))) (c!252472 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835)))))))))

(assert (= (and d!460875 c!252546) b!1553442))

(assert (= (and d!460875 (not c!252546)) b!1553434))

(assert (= (and d!460875 c!252548) b!1553439))

(assert (= (and d!460875 (not c!252548)) b!1553436))

(assert (= (and b!1553436 c!252547) b!1553441))

(assert (= (and b!1553436 (not c!252547)) b!1553443))

(assert (= (and b!1553443 (not res!693769)) b!1553440))

(assert (= (and b!1553440 res!693766) b!1553435))

(assert (= (and b!1553435 res!693763) b!1553438))

(assert (= (and b!1553438 res!693770) b!1553437))

(assert (= (and b!1553440 (not res!693765)) b!1553444))

(assert (= (and b!1553444 res!693767) b!1553433))

(assert (= (and b!1553433 (not res!693768)) b!1553432))

(assert (= (and b!1553432 (not res!693764)) b!1553445))

(assert (= (or b!1553439 b!1553433 b!1553435) bm!101909))

(assert (=> bm!101909 m!1825440))

(assert (=> bm!101909 m!1825442))

(assert (=> d!460875 m!1825440))

(assert (=> d!460875 m!1825442))

(assert (=> d!460875 m!1825446))

(declare-fun m!1825934 () Bool)

(assert (=> d!460875 m!1825934))

(assert (=> b!1553432 m!1825440))

(declare-fun m!1825936 () Bool)

(assert (=> b!1553432 m!1825936))

(assert (=> b!1553432 m!1825936))

(declare-fun m!1825938 () Bool)

(assert (=> b!1553432 m!1825938))

(assert (=> b!1553445 m!1825440))

(declare-fun m!1825940 () Bool)

(assert (=> b!1553445 m!1825940))

(assert (=> b!1553438 m!1825440))

(assert (=> b!1553438 m!1825936))

(assert (=> b!1553438 m!1825936))

(assert (=> b!1553438 m!1825938))

(assert (=> b!1553437 m!1825440))

(assert (=> b!1553437 m!1825940))

(assert (=> b!1553434 m!1825440))

(assert (=> b!1553434 m!1825940))

(assert (=> b!1553434 m!1825446))

(assert (=> b!1553434 m!1825940))

(declare-fun m!1825942 () Bool)

(assert (=> b!1553434 m!1825942))

(assert (=> b!1553434 m!1825440))

(assert (=> b!1553434 m!1825936))

(assert (=> b!1553434 m!1825942))

(assert (=> b!1553434 m!1825936))

(declare-fun m!1825944 () Bool)

(assert (=> b!1553434 m!1825944))

(assert (=> b!1553442 m!1825446))

(declare-fun m!1825946 () Bool)

(assert (=> b!1553442 m!1825946))

(assert (=> b!1552958 d!460875))

(declare-fun d!460877 () Bool)

(declare-fun lt!538045 () Regex!4271)

(assert (=> d!460877 (validRegex!1709 lt!538045)))

(declare-fun e!996541 () Regex!4271)

(assert (=> d!460877 (= lt!538045 e!996541)))

(declare-fun c!252563 () Bool)

(assert (=> d!460877 (= c!252563 (or ((_ is EmptyExpr!4271) (regex!2943 rule!240)) ((_ is EmptyLang!4271) (regex!2943 rule!240))))))

(assert (=> d!460877 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460877 (= (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 lt!537835))) lt!538045)))

(declare-fun b!1553466 () Bool)

(assert (=> b!1553466 (= e!996541 EmptyLang!4271)))

(declare-fun b!1553467 () Bool)

(declare-fun e!996542 () Regex!4271)

(assert (=> b!1553467 (= e!996541 e!996542)))

(declare-fun c!252559 () Bool)

(assert (=> b!1553467 (= c!252559 ((_ is ElementMatch!4271) (regex!2943 rule!240)))))

(declare-fun bm!101918 () Bool)

(declare-fun call!101923 () Regex!4271)

(declare-fun call!101925 () Regex!4271)

(assert (=> bm!101918 (= call!101923 call!101925)))

(declare-fun b!1553468 () Bool)

(declare-fun e!996543 () Regex!4271)

(declare-fun e!996544 () Regex!4271)

(assert (=> b!1553468 (= e!996543 e!996544)))

(declare-fun c!252560 () Bool)

(assert (=> b!1553468 (= c!252560 ((_ is Star!4271) (regex!2943 rule!240)))))

(declare-fun b!1553469 () Bool)

(declare-fun c!252561 () Bool)

(assert (=> b!1553469 (= c!252561 (nullable!1268 (regOne!9054 (regex!2943 rule!240))))))

(declare-fun e!996545 () Regex!4271)

(assert (=> b!1553469 (= e!996544 e!996545)))

(declare-fun b!1553470 () Bool)

(declare-fun call!101926 () Regex!4271)

(assert (=> b!1553470 (= e!996545 (Union!4271 (Concat!7305 call!101923 (regTwo!9054 (regex!2943 rule!240))) call!101926))))

(declare-fun bm!101919 () Bool)

(declare-fun call!101924 () Regex!4271)

(declare-fun c!252562 () Bool)

(assert (=> bm!101919 (= call!101924 (derivativeStep!1020 (ite c!252562 (regTwo!9055 (regex!2943 rule!240)) (ite c!252560 (reg!4600 (regex!2943 rule!240)) (regOne!9054 (regex!2943 rule!240)))) (head!3111 (_1!9450 lt!537835))))))

(declare-fun b!1553471 () Bool)

(assert (=> b!1553471 (= c!252562 ((_ is Union!4271) (regex!2943 rule!240)))))

(assert (=> b!1553471 (= e!996542 e!996543)))

(declare-fun bm!101920 () Bool)

(assert (=> bm!101920 (= call!101925 call!101924)))

(declare-fun bm!101921 () Bool)

(assert (=> bm!101921 (= call!101926 (derivativeStep!1020 (ite c!252562 (regOne!9055 (regex!2943 rule!240)) (regTwo!9054 (regex!2943 rule!240))) (head!3111 (_1!9450 lt!537835))))))

(declare-fun b!1553472 () Bool)

(assert (=> b!1553472 (= e!996543 (Union!4271 call!101926 call!101924))))

(declare-fun b!1553473 () Bool)

(assert (=> b!1553473 (= e!996542 (ite (= (head!3111 (_1!9450 lt!537835)) (c!252472 (regex!2943 rule!240))) EmptyExpr!4271 EmptyLang!4271))))

(declare-fun b!1553474 () Bool)

(assert (=> b!1553474 (= e!996545 (Union!4271 (Concat!7305 call!101923 (regTwo!9054 (regex!2943 rule!240))) EmptyLang!4271))))

(declare-fun b!1553475 () Bool)

(assert (=> b!1553475 (= e!996544 (Concat!7305 call!101925 (regex!2943 rule!240)))))

(assert (= (and d!460877 c!252563) b!1553466))

(assert (= (and d!460877 (not c!252563)) b!1553467))

(assert (= (and b!1553467 c!252559) b!1553473))

(assert (= (and b!1553467 (not c!252559)) b!1553471))

(assert (= (and b!1553471 c!252562) b!1553472))

(assert (= (and b!1553471 (not c!252562)) b!1553468))

(assert (= (and b!1553468 c!252560) b!1553475))

(assert (= (and b!1553468 (not c!252560)) b!1553469))

(assert (= (and b!1553469 c!252561) b!1553470))

(assert (= (and b!1553469 (not c!252561)) b!1553474))

(assert (= (or b!1553470 b!1553474) bm!101918))

(assert (= (or b!1553475 bm!101918) bm!101920))

(assert (= (or b!1553472 b!1553470) bm!101921))

(assert (= (or b!1553472 bm!101920) bm!101919))

(declare-fun m!1825948 () Bool)

(assert (=> d!460877 m!1825948))

(assert (=> d!460877 m!1825378))

(declare-fun m!1825950 () Bool)

(assert (=> b!1553469 m!1825950))

(assert (=> bm!101919 m!1825444))

(declare-fun m!1825952 () Bool)

(assert (=> bm!101919 m!1825952))

(assert (=> bm!101921 m!1825444))

(declare-fun m!1825954 () Bool)

(assert (=> bm!101921 m!1825954))

(assert (=> b!1552958 d!460877))

(assert (=> b!1552958 d!460799))

(assert (=> b!1552958 d!460833))

(declare-fun bs!387684 () Bool)

(declare-fun d!460879 () Bool)

(assert (= bs!387684 (and d!460879 d!460835)))

(declare-fun lambda!65751 () Int)

(assert (=> bs!387684 (= lambda!65751 lambda!65749)))

(declare-fun bs!387685 () Bool)

(assert (= bs!387685 (and d!460879 d!460827)))

(assert (=> bs!387685 (= lambda!65751 lambda!65747)))

(declare-fun bs!387686 () Bool)

(assert (= bs!387686 (and d!460879 d!460829)))

(assert (=> bs!387686 (= lambda!65751 lambda!65748)))

(declare-fun bs!387687 () Bool)

(assert (= bs!387687 (and d!460879 d!460811)))

(assert (=> bs!387687 (= lambda!65751 lambda!65742)))

(declare-fun bs!387688 () Bool)

(assert (= bs!387688 (and d!460879 d!460823)))

(assert (=> bs!387688 (= lambda!65751 lambda!65746)))

(declare-fun bs!387689 () Bool)

(assert (= bs!387689 (and d!460879 d!460867)))

(assert (=> bs!387689 (= lambda!65751 lambda!65750)))

(assert (=> d!460879 (= (inv!22068 setElem!10697) (forall!3922 (exprs!1289 setElem!10697) lambda!65751))))

(declare-fun bs!387690 () Bool)

(assert (= bs!387690 d!460879))

(declare-fun m!1825956 () Bool)

(assert (=> bs!387690 m!1825956))

(assert (=> setNonEmpty!10697 d!460879))

(declare-fun d!460881 () Bool)

(assert (=> d!460881 (= (isEmpty!10101 (_1!9450 lt!537926)) ((_ is Nil!16791) (_1!9450 lt!537926)))))

(assert (=> b!1552895 d!460881))

(declare-fun d!460883 () Bool)

(declare-fun res!693777 () Bool)

(declare-fun e!996550 () Bool)

(assert (=> d!460883 (=> (not res!693777) (not e!996550))))

(declare-fun valid!1437 (MutableMap!1731) Bool)

(assert (=> d!460883 (= res!693777 (valid!1437 (cache!2112 cacheDown!768)))))

(assert (=> d!460883 (= (validCacheMapDown!159 (cache!2112 cacheDown!768)) e!996550)))

(declare-fun b!1553482 () Bool)

(declare-fun res!693778 () Bool)

(assert (=> b!1553482 (=> (not res!693778) (not e!996550))))

(declare-fun invariantList!246 (List!16863) Bool)

(declare-datatypes ((ListMap!541 0))(
  ( (ListMap!542 (toList!855 List!16863)) )
))
(declare-fun map!3519 (MutableMap!1731) ListMap!541)

(assert (=> b!1553482 (= res!693778 (invariantList!246 (toList!855 (map!3519 (cache!2112 cacheDown!768)))))))

(declare-fun b!1553483 () Bool)

(declare-fun lambda!65754 () Int)

(declare-fun forall!3924 (List!16863 Int) Bool)

(assert (=> b!1553483 (= e!996550 (forall!3924 (toList!855 (map!3519 (cache!2112 cacheDown!768))) lambda!65754))))

(assert (= (and d!460883 res!693777) b!1553482))

(assert (= (and b!1553482 res!693778) b!1553483))

(declare-fun m!1825959 () Bool)

(assert (=> d!460883 m!1825959))

(declare-fun m!1825961 () Bool)

(assert (=> b!1553482 m!1825961))

(declare-fun m!1825963 () Bool)

(assert (=> b!1553482 m!1825963))

(assert (=> b!1553483 m!1825961))

(declare-fun m!1825965 () Bool)

(assert (=> b!1553483 m!1825965))

(assert (=> b!1553034 d!460883))

(declare-fun d!460885 () Bool)

(assert (=> d!460885 (= (inv!22060 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))) (isBalanced!1641 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))))

(declare-fun bs!387691 () Bool)

(assert (= bs!387691 d!460885))

(declare-fun m!1825967 () Bool)

(assert (=> bs!387691 m!1825967))

(assert (=> tb!87283 d!460885))

(declare-fun bs!387692 () Bool)

(declare-fun d!460887 () Bool)

(assert (= bs!387692 (and d!460887 d!460835)))

(declare-fun lambda!65755 () Int)

(assert (=> bs!387692 (= lambda!65755 lambda!65749)))

(declare-fun bs!387693 () Bool)

(assert (= bs!387693 (and d!460887 d!460827)))

(assert (=> bs!387693 (= lambda!65755 lambda!65747)))

(declare-fun bs!387694 () Bool)

(assert (= bs!387694 (and d!460887 d!460879)))

(assert (=> bs!387694 (= lambda!65755 lambda!65751)))

(declare-fun bs!387695 () Bool)

(assert (= bs!387695 (and d!460887 d!460829)))

(assert (=> bs!387695 (= lambda!65755 lambda!65748)))

(declare-fun bs!387696 () Bool)

(assert (= bs!387696 (and d!460887 d!460811)))

(assert (=> bs!387696 (= lambda!65755 lambda!65742)))

(declare-fun bs!387697 () Bool)

(assert (= bs!387697 (and d!460887 d!460823)))

(assert (=> bs!387697 (= lambda!65755 lambda!65746)))

(declare-fun bs!387698 () Bool)

(assert (= bs!387698 (and d!460887 d!460867)))

(assert (=> bs!387698 (= lambda!65755 lambda!65750)))

(assert (=> d!460887 (= (inv!22068 setElem!10706) (forall!3922 (exprs!1289 setElem!10706) lambda!65755))))

(declare-fun bs!387699 () Bool)

(assert (= bs!387699 d!460887))

(declare-fun m!1825969 () Bool)

(assert (=> bs!387699 m!1825969))

(assert (=> setNonEmpty!10706 d!460887))

(assert (=> b!1552983 d!460837))

(declare-fun d!460889 () Bool)

(assert (=> d!460889 (= (inv!22069 (xs!8361 (c!252471 input!1676))) (<= (size!13594 (innerList!5621 (xs!8361 (c!252471 input!1676)))) 2147483647))))

(declare-fun bs!387700 () Bool)

(assert (= bs!387700 d!460889))

(declare-fun m!1825971 () Bool)

(assert (=> bs!387700 m!1825971))

(assert (=> b!1553151 d!460889))

(declare-fun d!460891 () Bool)

(declare-fun c!252564 () Bool)

(assert (=> d!460891 (= c!252564 ((_ is Node!5561) (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))))

(declare-fun e!996551 () Bool)

(assert (=> d!460891 (= (inv!22064 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))) e!996551)))

(declare-fun b!1553484 () Bool)

(assert (=> b!1553484 (= e!996551 (inv!22066 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))))

(declare-fun b!1553485 () Bool)

(declare-fun e!996552 () Bool)

(assert (=> b!1553485 (= e!996551 e!996552)))

(declare-fun res!693779 () Bool)

(assert (=> b!1553485 (= res!693779 (not ((_ is Leaf!8242) (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))))))))

(assert (=> b!1553485 (=> res!693779 e!996552)))

(declare-fun b!1553486 () Bool)

(assert (=> b!1553486 (= e!996552 (inv!22067 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))))

(assert (= (and d!460891 c!252564) b!1553484))

(assert (= (and d!460891 (not c!252564)) b!1553485))

(assert (= (and b!1553485 (not res!693779)) b!1553486))

(declare-fun m!1825973 () Bool)

(assert (=> b!1553484 m!1825973))

(declare-fun m!1825975 () Bool)

(assert (=> b!1553486 m!1825975))

(assert (=> b!1553184 d!460891))

(assert (=> d!460769 d!460883))

(assert (=> b!1552966 d!460837))

(declare-fun d!460893 () Bool)

(assert (=> d!460893 (isPrefix!1258 lt!537846 lt!537846)))

(declare-fun lt!538048 () Unit!26040)

(declare-fun choose!9266 (List!16859 List!16859) Unit!26040)

(assert (=> d!460893 (= lt!538048 (choose!9266 lt!537846 lt!537846))))

(assert (=> d!460893 (= (lemmaIsPrefixRefl!888 lt!537846 lt!537846) lt!538048)))

(declare-fun bs!387701 () Bool)

(assert (= bs!387701 d!460893))

(assert (=> bs!387701 m!1825390))

(declare-fun m!1825977 () Bool)

(assert (=> bs!387701 m!1825977))

(assert (=> bm!101896 d!460893))

(declare-fun d!460895 () Bool)

(assert (=> d!460895 (= (apply!4107 (transformation!2943 rule!240) (seqFromList!1771 (_1!9450 lt!537955))) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 (_1!9450 lt!537955))))))

(declare-fun b_lambda!48751 () Bool)

(assert (=> (not b_lambda!48751) (not d!460895)))

(declare-fun t!141301 () Bool)

(declare-fun tb!87291 () Bool)

(assert (=> (and b!1552850 (= (toValue!4310 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))) t!141301) tb!87291))

(declare-fun result!105350 () Bool)

(assert (=> tb!87291 (= result!105350 (inv!21 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 (_1!9450 lt!537955)))))))

(declare-fun m!1825979 () Bool)

(assert (=> tb!87291 m!1825979))

(assert (=> d!460895 t!141301))

(declare-fun b_and!108413 () Bool)

(assert (= b_and!108397 (and (=> t!141301 result!105350) b_and!108413)))

(assert (=> d!460895 m!1825478))

(declare-fun m!1825981 () Bool)

(assert (=> d!460895 m!1825981))

(assert (=> b!1553009 d!460895))

(declare-fun d!460897 () Bool)

(assert (=> d!460897 (= (isEmpty!10101 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))) ((_ is Nil!16791) (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(assert (=> b!1553009 d!460897))

(declare-fun d!460899 () Bool)

(declare-fun lt!538049 () Int)

(assert (=> d!460899 (= lt!538049 (size!13594 (list!6486 (seqFromList!1771 (_1!9450 lt!537955)))))))

(assert (=> d!460899 (= lt!538049 (size!13595 (c!252471 (seqFromList!1771 (_1!9450 lt!537955)))))))

(assert (=> d!460899 (= (size!13593 (seqFromList!1771 (_1!9450 lt!537955))) lt!538049)))

(declare-fun bs!387702 () Bool)

(assert (= bs!387702 d!460899))

(assert (=> bs!387702 m!1825478))

(declare-fun m!1825983 () Bool)

(assert (=> bs!387702 m!1825983))

(assert (=> bs!387702 m!1825983))

(declare-fun m!1825985 () Bool)

(assert (=> bs!387702 m!1825985))

(declare-fun m!1825987 () Bool)

(assert (=> bs!387702 m!1825987))

(assert (=> b!1553009 d!460899))

(assert (=> b!1553009 d!460689))

(declare-fun bs!387703 () Bool)

(declare-fun d!460901 () Bool)

(assert (= bs!387703 (and d!460901 b!1552846)))

(declare-fun lambda!65758 () Int)

(assert (=> bs!387703 (= lambda!65758 lambda!65733)))

(declare-fun bs!387704 () Bool)

(assert (= bs!387704 (and d!460901 d!460691)))

(assert (=> bs!387704 (= lambda!65758 lambda!65736)))

(declare-fun b!1553491 () Bool)

(declare-fun e!996556 () Bool)

(assert (=> b!1553491 (= e!996556 true)))

(assert (=> d!460901 e!996556))

(assert (= d!460901 b!1553491))

(assert (=> b!1553491 (< (dynLambda!7431 order!9867 (toValue!4310 (transformation!2943 rule!240))) (dynLambda!7432 order!9869 lambda!65758))))

(assert (=> b!1553491 (< (dynLambda!7433 order!9871 (toChars!4169 (transformation!2943 rule!240))) (dynLambda!7432 order!9869 lambda!65758))))

(assert (=> d!460901 (= (list!6486 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 (_1!9450 lt!537955))))) (list!6486 (seqFromList!1771 (_1!9450 lt!537955))))))

(declare-fun lt!538052 () Unit!26040)

(assert (=> d!460901 (= lt!538052 (ForallOf!208 lambda!65758 (seqFromList!1771 (_1!9450 lt!537955))))))

(assert (=> d!460901 (= (lemmaSemiInverse!363 (transformation!2943 rule!240) (seqFromList!1771 (_1!9450 lt!537955))) lt!538052)))

(declare-fun b_lambda!48753 () Bool)

(assert (=> (not b_lambda!48753) (not d!460901)))

(declare-fun t!141303 () Bool)

(declare-fun tb!87293 () Bool)

(assert (=> (and b!1552850 (= (toChars!4169 (transformation!2943 rule!240)) (toChars!4169 (transformation!2943 rule!240))) t!141303) tb!87293))

(declare-fun b!1553492 () Bool)

(declare-fun e!996557 () Bool)

(declare-fun tp!454721 () Bool)

(assert (=> b!1553492 (= e!996557 (and (inv!22064 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 (_1!9450 lt!537955)))))) tp!454721))))

(declare-fun result!105352 () Bool)

(assert (=> tb!87293 (= result!105352 (and (inv!22060 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 (_1!9450 lt!537955))))) e!996557))))

(assert (= tb!87293 b!1553492))

(declare-fun m!1825989 () Bool)

(assert (=> b!1553492 m!1825989))

(declare-fun m!1825991 () Bool)

(assert (=> tb!87293 m!1825991))

(assert (=> d!460901 t!141303))

(declare-fun b_and!108415 () Bool)

(assert (= b_and!108411 (and (=> t!141303 result!105352) b_and!108415)))

(declare-fun b_lambda!48755 () Bool)

(assert (=> (not b_lambda!48755) (not d!460901)))

(assert (=> d!460901 t!141301))

(declare-fun b_and!108417 () Bool)

(assert (= b_and!108413 (and (=> t!141301 result!105350) b_and!108417)))

(assert (=> d!460901 m!1825478))

(declare-fun m!1825993 () Bool)

(assert (=> d!460901 m!1825993))

(assert (=> d!460901 m!1825478))

(assert (=> d!460901 m!1825981))

(assert (=> d!460901 m!1825478))

(assert (=> d!460901 m!1825983))

(assert (=> d!460901 m!1825981))

(declare-fun m!1825995 () Bool)

(assert (=> d!460901 m!1825995))

(assert (=> d!460901 m!1825995))

(declare-fun m!1825997 () Bool)

(assert (=> d!460901 m!1825997))

(assert (=> b!1553009 d!460901))

(assert (=> b!1553009 d!460697))

(assert (=> b!1553009 d!460699))

(assert (=> b!1553009 d!460693))

(declare-fun d!460903 () Bool)

(assert (=> d!460903 (= (seqFromList!1771 (_1!9450 lt!537955)) (fromListB!759 (_1!9450 lt!537955)))))

(declare-fun bs!387705 () Bool)

(assert (= bs!387705 d!460903))

(declare-fun m!1825999 () Bool)

(assert (=> bs!387705 m!1825999))

(assert (=> b!1553009 d!460903))

(declare-fun d!460905 () Bool)

(assert (=> d!460905 (= (valid!1432 (_3!1330 lt!537971)) (validCacheMapDown!159 (cache!2112 (_3!1330 lt!537971))))))

(declare-fun bs!387706 () Bool)

(assert (= bs!387706 d!460905))

(declare-fun m!1826001 () Bool)

(assert (=> bs!387706 m!1826001))

(assert (=> b!1553025 d!460905))

(declare-fun d!460907 () Bool)

(assert (=> d!460907 (= (list!6486 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))) (list!6487 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))))

(declare-fun bs!387707 () Bool)

(assert (= bs!387707 d!460907))

(declare-fun m!1826003 () Bool)

(assert (=> bs!387707 m!1826003))

(assert (=> bs!387651 d!460907))

(declare-fun d!460909 () Bool)

(assert (=> d!460909 (= (list!6486 (seqFromList!1771 lt!537839)) (list!6487 (c!252471 (seqFromList!1771 lt!537839))))))

(declare-fun bs!387708 () Bool)

(assert (= bs!387708 d!460909))

(declare-fun m!1826005 () Bool)

(assert (=> bs!387708 m!1826005))

(assert (=> bs!387651 d!460909))

(declare-fun d!460911 () Bool)

(assert (=> d!460911 true))

(declare-fun lambda!65761 () Int)

(declare-fun order!9873 () Int)

(declare-fun dynLambda!7437 (Int Int) Int)

(assert (=> d!460911 (< (dynLambda!7431 order!9867 (toValue!4310 (transformation!2943 rule!240))) (dynLambda!7437 order!9873 lambda!65761))))

(declare-fun Forall2!489 (Int) Bool)

(assert (=> d!460911 (= (equivClasses!1054 (toChars!4169 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 rule!240))) (Forall2!489 lambda!65761))))

(declare-fun bs!387709 () Bool)

(assert (= bs!387709 d!460911))

(declare-fun m!1826007 () Bool)

(assert (=> bs!387709 m!1826007))

(assert (=> b!1552919 d!460911))

(declare-fun bs!387710 () Bool)

(declare-fun d!460913 () Bool)

(assert (= bs!387710 (and d!460913 d!460835)))

(declare-fun lambda!65762 () Int)

(assert (=> bs!387710 (= lambda!65762 lambda!65749)))

(declare-fun bs!387711 () Bool)

(assert (= bs!387711 (and d!460913 d!460887)))

(assert (=> bs!387711 (= lambda!65762 lambda!65755)))

(declare-fun bs!387712 () Bool)

(assert (= bs!387712 (and d!460913 d!460827)))

(assert (=> bs!387712 (= lambda!65762 lambda!65747)))

(declare-fun bs!387713 () Bool)

(assert (= bs!387713 (and d!460913 d!460879)))

(assert (=> bs!387713 (= lambda!65762 lambda!65751)))

(declare-fun bs!387714 () Bool)

(assert (= bs!387714 (and d!460913 d!460829)))

(assert (=> bs!387714 (= lambda!65762 lambda!65748)))

(declare-fun bs!387715 () Bool)

(assert (= bs!387715 (and d!460913 d!460811)))

(assert (=> bs!387715 (= lambda!65762 lambda!65742)))

(declare-fun bs!387716 () Bool)

(assert (= bs!387716 (and d!460913 d!460823)))

(assert (=> bs!387716 (= lambda!65762 lambda!65746)))

(declare-fun bs!387717 () Bool)

(assert (= bs!387717 (and d!460913 d!460867)))

(assert (=> bs!387717 (= lambda!65762 lambda!65750)))

(assert (=> d!460913 (= (inv!22068 (_2!9444 (_1!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))))) (forall!3922 (exprs!1289 (_2!9444 (_1!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))))) lambda!65762))))

(declare-fun bs!387718 () Bool)

(assert (= bs!387718 d!460913))

(declare-fun m!1826009 () Bool)

(assert (=> bs!387718 m!1826009))

(assert (=> b!1553113 d!460913))

(declare-fun bs!387719 () Bool)

(declare-fun d!460915 () Bool)

(assert (= bs!387719 (and d!460915 d!460835)))

(declare-fun lambda!65763 () Int)

(assert (=> bs!387719 (= lambda!65763 lambda!65749)))

(declare-fun bs!387720 () Bool)

(assert (= bs!387720 (and d!460915 d!460887)))

(assert (=> bs!387720 (= lambda!65763 lambda!65755)))

(declare-fun bs!387721 () Bool)

(assert (= bs!387721 (and d!460915 d!460913)))

(assert (=> bs!387721 (= lambda!65763 lambda!65762)))

(declare-fun bs!387722 () Bool)

(assert (= bs!387722 (and d!460915 d!460827)))

(assert (=> bs!387722 (= lambda!65763 lambda!65747)))

(declare-fun bs!387723 () Bool)

(assert (= bs!387723 (and d!460915 d!460879)))

(assert (=> bs!387723 (= lambda!65763 lambda!65751)))

(declare-fun bs!387724 () Bool)

(assert (= bs!387724 (and d!460915 d!460829)))

(assert (=> bs!387724 (= lambda!65763 lambda!65748)))

(declare-fun bs!387725 () Bool)

(assert (= bs!387725 (and d!460915 d!460811)))

(assert (=> bs!387725 (= lambda!65763 lambda!65742)))

(declare-fun bs!387726 () Bool)

(assert (= bs!387726 (and d!460915 d!460823)))

(assert (=> bs!387726 (= lambda!65763 lambda!65746)))

(declare-fun bs!387727 () Bool)

(assert (= bs!387727 (and d!460915 d!460867)))

(assert (=> bs!387727 (= lambda!65763 lambda!65750)))

(assert (=> d!460915 (= (inv!22068 (_2!9444 (_1!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))))) (forall!3922 (exprs!1289 (_2!9444 (_1!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))))) lambda!65763))))

(declare-fun bs!387728 () Bool)

(assert (= bs!387728 d!460915))

(declare-fun m!1826011 () Bool)

(assert (=> bs!387728 m!1826011))

(assert (=> b!1553110 d!460915))

(declare-fun d!460917 () Bool)

(assert (=> d!460917 (= (inv!22069 (xs!8361 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) (<= (size!13594 (innerList!5621 (xs!8361 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) 2147483647))))

(declare-fun bs!387729 () Bool)

(assert (= bs!387729 d!460917))

(declare-fun m!1826013 () Bool)

(assert (=> bs!387729 m!1826013))

(assert (=> b!1553146 d!460917))

(declare-fun bs!387730 () Bool)

(declare-fun d!460919 () Bool)

(assert (= bs!387730 (and d!460919 d!460835)))

(declare-fun lambda!65764 () Int)

(assert (=> bs!387730 (= lambda!65764 lambda!65749)))

(declare-fun bs!387731 () Bool)

(assert (= bs!387731 (and d!460919 d!460887)))

(assert (=> bs!387731 (= lambda!65764 lambda!65755)))

(declare-fun bs!387732 () Bool)

(assert (= bs!387732 (and d!460919 d!460913)))

(assert (=> bs!387732 (= lambda!65764 lambda!65762)))

(declare-fun bs!387733 () Bool)

(assert (= bs!387733 (and d!460919 d!460827)))

(assert (=> bs!387733 (= lambda!65764 lambda!65747)))

(declare-fun bs!387734 () Bool)

(assert (= bs!387734 (and d!460919 d!460879)))

(assert (=> bs!387734 (= lambda!65764 lambda!65751)))

(declare-fun bs!387735 () Bool)

(assert (= bs!387735 (and d!460919 d!460915)))

(assert (=> bs!387735 (= lambda!65764 lambda!65763)))

(declare-fun bs!387736 () Bool)

(assert (= bs!387736 (and d!460919 d!460829)))

(assert (=> bs!387736 (= lambda!65764 lambda!65748)))

(declare-fun bs!387737 () Bool)

(assert (= bs!387737 (and d!460919 d!460811)))

(assert (=> bs!387737 (= lambda!65764 lambda!65742)))

(declare-fun bs!387738 () Bool)

(assert (= bs!387738 (and d!460919 d!460823)))

(assert (=> bs!387738 (= lambda!65764 lambda!65746)))

(declare-fun bs!387739 () Bool)

(assert (= bs!387739 (and d!460919 d!460867)))

(assert (=> bs!387739 (= lambda!65764 lambda!65750)))

(assert (=> d!460919 (= (inv!22068 setElem!10716) (forall!3922 (exprs!1289 setElem!10716) lambda!65764))))

(declare-fun bs!387740 () Bool)

(assert (= bs!387740 d!460919))

(declare-fun m!1826015 () Bool)

(assert (=> bs!387740 m!1826015))

(assert (=> setNonEmpty!10716 d!460919))

(declare-fun d!460921 () Bool)

(assert (=> d!460921 (= (Forall!604 lambda!65736) (choose!9260 lambda!65736))))

(declare-fun bs!387741 () Bool)

(assert (= bs!387741 d!460921))

(declare-fun m!1826017 () Bool)

(assert (=> bs!387741 m!1826017))

(assert (=> d!460691 d!460921))

(declare-fun bs!387742 () Bool)

(declare-fun d!460923 () Bool)

(assert (= bs!387742 (and d!460923 d!460835)))

(declare-fun lambda!65765 () Int)

(assert (=> bs!387742 (= lambda!65765 lambda!65749)))

(declare-fun bs!387743 () Bool)

(assert (= bs!387743 (and d!460923 d!460887)))

(assert (=> bs!387743 (= lambda!65765 lambda!65755)))

(declare-fun bs!387744 () Bool)

(assert (= bs!387744 (and d!460923 d!460913)))

(assert (=> bs!387744 (= lambda!65765 lambda!65762)))

(declare-fun bs!387745 () Bool)

(assert (= bs!387745 (and d!460923 d!460827)))

(assert (=> bs!387745 (= lambda!65765 lambda!65747)))

(declare-fun bs!387746 () Bool)

(assert (= bs!387746 (and d!460923 d!460879)))

(assert (=> bs!387746 (= lambda!65765 lambda!65751)))

(declare-fun bs!387747 () Bool)

(assert (= bs!387747 (and d!460923 d!460915)))

(assert (=> bs!387747 (= lambda!65765 lambda!65763)))

(declare-fun bs!387748 () Bool)

(assert (= bs!387748 (and d!460923 d!460919)))

(assert (=> bs!387748 (= lambda!65765 lambda!65764)))

(declare-fun bs!387749 () Bool)

(assert (= bs!387749 (and d!460923 d!460829)))

(assert (=> bs!387749 (= lambda!65765 lambda!65748)))

(declare-fun bs!387750 () Bool)

(assert (= bs!387750 (and d!460923 d!460811)))

(assert (=> bs!387750 (= lambda!65765 lambda!65742)))

(declare-fun bs!387751 () Bool)

(assert (= bs!387751 (and d!460923 d!460823)))

(assert (=> bs!387751 (= lambda!65765 lambda!65746)))

(declare-fun bs!387752 () Bool)

(assert (= bs!387752 (and d!460923 d!460867)))

(assert (=> bs!387752 (= lambda!65765 lambda!65750)))

(assert (=> d!460923 (= (inv!22068 (_1!9440 (_1!9441 (h!22194 mapDefault!8288)))) (forall!3922 (exprs!1289 (_1!9440 (_1!9441 (h!22194 mapDefault!8288)))) lambda!65765))))

(declare-fun bs!387753 () Bool)

(assert (= bs!387753 d!460923))

(declare-fun m!1826019 () Bool)

(assert (=> bs!387753 m!1826019))

(assert (=> b!1553082 d!460923))

(assert (=> bm!101891 d!460859))

(declare-fun d!460925 () Bool)

(declare-fun res!693786 () Bool)

(declare-fun e!996562 () Bool)

(assert (=> d!460925 (=> (not res!693786) (not e!996562))))

(assert (=> d!460925 (= res!693786 (<= (size!13594 (list!6488 (xs!8361 (c!252471 input!1676)))) 512))))

(assert (=> d!460925 (= (inv!22067 (c!252471 input!1676)) e!996562)))

(declare-fun b!1553501 () Bool)

(declare-fun res!693787 () Bool)

(assert (=> b!1553501 (=> (not res!693787) (not e!996562))))

(assert (=> b!1553501 (= res!693787 (= (csize!11353 (c!252471 input!1676)) (size!13594 (list!6488 (xs!8361 (c!252471 input!1676))))))))

(declare-fun b!1553502 () Bool)

(assert (=> b!1553502 (= e!996562 (and (> (csize!11353 (c!252471 input!1676)) 0) (<= (csize!11353 (c!252471 input!1676)) 512)))))

(assert (= (and d!460925 res!693786) b!1553501))

(assert (= (and b!1553501 res!693787) b!1553502))

(declare-fun m!1826021 () Bool)

(assert (=> d!460925 m!1826021))

(assert (=> d!460925 m!1826021))

(declare-fun m!1826023 () Bool)

(assert (=> d!460925 m!1826023))

(assert (=> b!1553501 m!1826021))

(assert (=> b!1553501 m!1826021))

(assert (=> b!1553501 m!1826023))

(assert (=> b!1553031 d!460925))

(declare-fun bs!387754 () Bool)

(declare-fun d!460927 () Bool)

(assert (= bs!387754 (and d!460927 d!460835)))

(declare-fun lambda!65766 () Int)

(assert (=> bs!387754 (= lambda!65766 lambda!65749)))

(declare-fun bs!387755 () Bool)

(assert (= bs!387755 (and d!460927 d!460887)))

(assert (=> bs!387755 (= lambda!65766 lambda!65755)))

(declare-fun bs!387756 () Bool)

(assert (= bs!387756 (and d!460927 d!460913)))

(assert (=> bs!387756 (= lambda!65766 lambda!65762)))

(declare-fun bs!387757 () Bool)

(assert (= bs!387757 (and d!460927 d!460827)))

(assert (=> bs!387757 (= lambda!65766 lambda!65747)))

(declare-fun bs!387758 () Bool)

(assert (= bs!387758 (and d!460927 d!460879)))

(assert (=> bs!387758 (= lambda!65766 lambda!65751)))

(declare-fun bs!387759 () Bool)

(assert (= bs!387759 (and d!460927 d!460915)))

(assert (=> bs!387759 (= lambda!65766 lambda!65763)))

(declare-fun bs!387760 () Bool)

(assert (= bs!387760 (and d!460927 d!460919)))

(assert (=> bs!387760 (= lambda!65766 lambda!65764)))

(declare-fun bs!387761 () Bool)

(assert (= bs!387761 (and d!460927 d!460829)))

(assert (=> bs!387761 (= lambda!65766 lambda!65748)))

(declare-fun bs!387762 () Bool)

(assert (= bs!387762 (and d!460927 d!460923)))

(assert (=> bs!387762 (= lambda!65766 lambda!65765)))

(declare-fun bs!387763 () Bool)

(assert (= bs!387763 (and d!460927 d!460811)))

(assert (=> bs!387763 (= lambda!65766 lambda!65742)))

(declare-fun bs!387764 () Bool)

(assert (= bs!387764 (and d!460927 d!460823)))

(assert (=> bs!387764 (= lambda!65766 lambda!65746)))

(declare-fun bs!387765 () Bool)

(assert (= bs!387765 (and d!460927 d!460867)))

(assert (=> bs!387765 (= lambda!65766 lambda!65750)))

(assert (=> d!460927 (= (inv!22068 setElem!10696) (forall!3922 (exprs!1289 setElem!10696) lambda!65766))))

(declare-fun bs!387766 () Bool)

(assert (= bs!387766 d!460927))

(declare-fun m!1826025 () Bool)

(assert (=> bs!387766 m!1826025))

(assert (=> setNonEmpty!10696 d!460927))

(declare-fun bs!387767 () Bool)

(declare-fun d!460929 () Bool)

(assert (= bs!387767 (and d!460929 d!460835)))

(declare-fun lambda!65767 () Int)

(assert (=> bs!387767 (= lambda!65767 lambda!65749)))

(declare-fun bs!387768 () Bool)

(assert (= bs!387768 (and d!460929 d!460913)))

(assert (=> bs!387768 (= lambda!65767 lambda!65762)))

(declare-fun bs!387769 () Bool)

(assert (= bs!387769 (and d!460929 d!460827)))

(assert (=> bs!387769 (= lambda!65767 lambda!65747)))

(declare-fun bs!387770 () Bool)

(assert (= bs!387770 (and d!460929 d!460879)))

(assert (=> bs!387770 (= lambda!65767 lambda!65751)))

(declare-fun bs!387771 () Bool)

(assert (= bs!387771 (and d!460929 d!460915)))

(assert (=> bs!387771 (= lambda!65767 lambda!65763)))

(declare-fun bs!387772 () Bool)

(assert (= bs!387772 (and d!460929 d!460919)))

(assert (=> bs!387772 (= lambda!65767 lambda!65764)))

(declare-fun bs!387773 () Bool)

(assert (= bs!387773 (and d!460929 d!460829)))

(assert (=> bs!387773 (= lambda!65767 lambda!65748)))

(declare-fun bs!387774 () Bool)

(assert (= bs!387774 (and d!460929 d!460923)))

(assert (=> bs!387774 (= lambda!65767 lambda!65765)))

(declare-fun bs!387775 () Bool)

(assert (= bs!387775 (and d!460929 d!460811)))

(assert (=> bs!387775 (= lambda!65767 lambda!65742)))

(declare-fun bs!387776 () Bool)

(assert (= bs!387776 (and d!460929 d!460887)))

(assert (=> bs!387776 (= lambda!65767 lambda!65755)))

(declare-fun bs!387777 () Bool)

(assert (= bs!387777 (and d!460929 d!460927)))

(assert (=> bs!387777 (= lambda!65767 lambda!65766)))

(declare-fun bs!387778 () Bool)

(assert (= bs!387778 (and d!460929 d!460823)))

(assert (=> bs!387778 (= lambda!65767 lambda!65746)))

(declare-fun bs!387779 () Bool)

(assert (= bs!387779 (and d!460929 d!460867)))

(assert (=> bs!387779 (= lambda!65767 lambda!65750)))

(assert (=> d!460929 (= (inv!22068 setElem!10695) (forall!3922 (exprs!1289 setElem!10695) lambda!65767))))

(declare-fun bs!387780 () Bool)

(assert (= bs!387780 d!460929))

(declare-fun m!1826027 () Bool)

(assert (=> bs!387780 m!1826027))

(assert (=> setNonEmpty!10695 d!460929))

(declare-fun bs!387781 () Bool)

(declare-fun d!460931 () Bool)

(assert (= bs!387781 (and d!460931 d!460835)))

(declare-fun lambda!65768 () Int)

(assert (=> bs!387781 (= lambda!65768 lambda!65749)))

(declare-fun bs!387782 () Bool)

(assert (= bs!387782 (and d!460931 d!460913)))

(assert (=> bs!387782 (= lambda!65768 lambda!65762)))

(declare-fun bs!387783 () Bool)

(assert (= bs!387783 (and d!460931 d!460827)))

(assert (=> bs!387783 (= lambda!65768 lambda!65747)))

(declare-fun bs!387784 () Bool)

(assert (= bs!387784 (and d!460931 d!460879)))

(assert (=> bs!387784 (= lambda!65768 lambda!65751)))

(declare-fun bs!387785 () Bool)

(assert (= bs!387785 (and d!460931 d!460915)))

(assert (=> bs!387785 (= lambda!65768 lambda!65763)))

(declare-fun bs!387786 () Bool)

(assert (= bs!387786 (and d!460931 d!460929)))

(assert (=> bs!387786 (= lambda!65768 lambda!65767)))

(declare-fun bs!387787 () Bool)

(assert (= bs!387787 (and d!460931 d!460919)))

(assert (=> bs!387787 (= lambda!65768 lambda!65764)))

(declare-fun bs!387788 () Bool)

(assert (= bs!387788 (and d!460931 d!460829)))

(assert (=> bs!387788 (= lambda!65768 lambda!65748)))

(declare-fun bs!387789 () Bool)

(assert (= bs!387789 (and d!460931 d!460923)))

(assert (=> bs!387789 (= lambda!65768 lambda!65765)))

(declare-fun bs!387790 () Bool)

(assert (= bs!387790 (and d!460931 d!460811)))

(assert (=> bs!387790 (= lambda!65768 lambda!65742)))

(declare-fun bs!387791 () Bool)

(assert (= bs!387791 (and d!460931 d!460887)))

(assert (=> bs!387791 (= lambda!65768 lambda!65755)))

(declare-fun bs!387792 () Bool)

(assert (= bs!387792 (and d!460931 d!460927)))

(assert (=> bs!387792 (= lambda!65768 lambda!65766)))

(declare-fun bs!387793 () Bool)

(assert (= bs!387793 (and d!460931 d!460823)))

(assert (=> bs!387793 (= lambda!65768 lambda!65746)))

(declare-fun bs!387794 () Bool)

(assert (= bs!387794 (and d!460931 d!460867)))

(assert (=> bs!387794 (= lambda!65768 lambda!65750)))

(assert (=> d!460931 (= (inv!22068 setElem!10694) (forall!3922 (exprs!1289 setElem!10694) lambda!65768))))

(declare-fun bs!387795 () Bool)

(assert (= bs!387795 d!460931))

(declare-fun m!1826029 () Bool)

(assert (=> bs!387795 m!1826029))

(assert (=> setNonEmpty!10694 d!460931))

(declare-fun d!460933 () Bool)

(declare-fun c!252566 () Bool)

(assert (=> d!460933 (= c!252566 ((_ is Node!5561) (left!13655 (c!252471 totalInput!568))))))

(declare-fun e!996563 () Bool)

(assert (=> d!460933 (= (inv!22064 (left!13655 (c!252471 totalInput!568))) e!996563)))

(declare-fun b!1553503 () Bool)

(assert (=> b!1553503 (= e!996563 (inv!22066 (left!13655 (c!252471 totalInput!568))))))

(declare-fun b!1553504 () Bool)

(declare-fun e!996564 () Bool)

(assert (=> b!1553504 (= e!996563 e!996564)))

(declare-fun res!693788 () Bool)

(assert (=> b!1553504 (= res!693788 (not ((_ is Leaf!8242) (left!13655 (c!252471 totalInput!568)))))))

(assert (=> b!1553504 (=> res!693788 e!996564)))

(declare-fun b!1553505 () Bool)

(assert (=> b!1553505 (= e!996564 (inv!22067 (left!13655 (c!252471 totalInput!568))))))

(assert (= (and d!460933 c!252566) b!1553503))

(assert (= (and d!460933 (not c!252566)) b!1553504))

(assert (= (and b!1553504 (not res!693788)) b!1553505))

(declare-fun m!1826031 () Bool)

(assert (=> b!1553503 m!1826031))

(declare-fun m!1826033 () Bool)

(assert (=> b!1553505 m!1826033))

(assert (=> b!1553105 d!460933))

(declare-fun d!460935 () Bool)

(declare-fun c!252567 () Bool)

(assert (=> d!460935 (= c!252567 ((_ is Node!5561) (right!13985 (c!252471 totalInput!568))))))

(declare-fun e!996565 () Bool)

(assert (=> d!460935 (= (inv!22064 (right!13985 (c!252471 totalInput!568))) e!996565)))

(declare-fun b!1553506 () Bool)

(assert (=> b!1553506 (= e!996565 (inv!22066 (right!13985 (c!252471 totalInput!568))))))

(declare-fun b!1553507 () Bool)

(declare-fun e!996566 () Bool)

(assert (=> b!1553507 (= e!996565 e!996566)))

(declare-fun res!693789 () Bool)

(assert (=> b!1553507 (= res!693789 (not ((_ is Leaf!8242) (right!13985 (c!252471 totalInput!568)))))))

(assert (=> b!1553507 (=> res!693789 e!996566)))

(declare-fun b!1553508 () Bool)

(assert (=> b!1553508 (= e!996566 (inv!22067 (right!13985 (c!252471 totalInput!568))))))

(assert (= (and d!460935 c!252567) b!1553506))

(assert (= (and d!460935 (not c!252567)) b!1553507))

(assert (= (and b!1553507 (not res!693789)) b!1553508))

(declare-fun m!1826035 () Bool)

(assert (=> b!1553506 m!1826035))

(declare-fun m!1826037 () Bool)

(assert (=> b!1553508 m!1826037))

(assert (=> b!1553105 d!460935))

(declare-fun d!460937 () Bool)

(assert (=> d!460937 (= (isEmpty!10101 (_1!9450 lt!537928)) ((_ is Nil!16791) (_1!9450 lt!537928)))))

(assert (=> b!1552899 d!460937))

(declare-fun bs!387796 () Bool)

(declare-fun d!460939 () Bool)

(assert (= bs!387796 (and d!460939 d!460835)))

(declare-fun lambda!65769 () Int)

(assert (=> bs!387796 (= lambda!65769 lambda!65749)))

(declare-fun bs!387797 () Bool)

(assert (= bs!387797 (and d!460939 d!460827)))

(assert (=> bs!387797 (= lambda!65769 lambda!65747)))

(declare-fun bs!387798 () Bool)

(assert (= bs!387798 (and d!460939 d!460879)))

(assert (=> bs!387798 (= lambda!65769 lambda!65751)))

(declare-fun bs!387799 () Bool)

(assert (= bs!387799 (and d!460939 d!460915)))

(assert (=> bs!387799 (= lambda!65769 lambda!65763)))

(declare-fun bs!387800 () Bool)

(assert (= bs!387800 (and d!460939 d!460929)))

(assert (=> bs!387800 (= lambda!65769 lambda!65767)))

(declare-fun bs!387801 () Bool)

(assert (= bs!387801 (and d!460939 d!460919)))

(assert (=> bs!387801 (= lambda!65769 lambda!65764)))

(declare-fun bs!387802 () Bool)

(assert (= bs!387802 (and d!460939 d!460829)))

(assert (=> bs!387802 (= lambda!65769 lambda!65748)))

(declare-fun bs!387803 () Bool)

(assert (= bs!387803 (and d!460939 d!460923)))

(assert (=> bs!387803 (= lambda!65769 lambda!65765)))

(declare-fun bs!387804 () Bool)

(assert (= bs!387804 (and d!460939 d!460811)))

(assert (=> bs!387804 (= lambda!65769 lambda!65742)))

(declare-fun bs!387805 () Bool)

(assert (= bs!387805 (and d!460939 d!460887)))

(assert (=> bs!387805 (= lambda!65769 lambda!65755)))

(declare-fun bs!387806 () Bool)

(assert (= bs!387806 (and d!460939 d!460927)))

(assert (=> bs!387806 (= lambda!65769 lambda!65766)))

(declare-fun bs!387807 () Bool)

(assert (= bs!387807 (and d!460939 d!460913)))

(assert (=> bs!387807 (= lambda!65769 lambda!65762)))

(declare-fun bs!387808 () Bool)

(assert (= bs!387808 (and d!460939 d!460931)))

(assert (=> bs!387808 (= lambda!65769 lambda!65768)))

(declare-fun bs!387809 () Bool)

(assert (= bs!387809 (and d!460939 d!460823)))

(assert (=> bs!387809 (= lambda!65769 lambda!65746)))

(declare-fun bs!387810 () Bool)

(assert (= bs!387810 (and d!460939 d!460867)))

(assert (=> bs!387810 (= lambda!65769 lambda!65750)))

(assert (=> d!460939 (= (inv!22068 setElem!10714) (forall!3922 (exprs!1289 setElem!10714) lambda!65769))))

(declare-fun bs!387811 () Bool)

(assert (= bs!387811 d!460939))

(declare-fun m!1826039 () Bool)

(assert (=> bs!387811 m!1826039))

(assert (=> setNonEmpty!10713 d!460939))

(declare-fun b!1553509 () Bool)

(declare-fun e!996567 () Bool)

(declare-fun e!996568 () Bool)

(assert (=> b!1553509 (= e!996567 e!996568)))

(declare-fun res!693795 () Bool)

(assert (=> b!1553509 (=> (not res!693795) (not e!996568))))

(assert (=> b!1553509 (= res!693795 (<= (- 1) (- (height!828 (left!13655 (c!252471 totalInput!568))) (height!828 (right!13985 (c!252471 totalInput!568))))))))

(declare-fun d!460941 () Bool)

(declare-fun res!693794 () Bool)

(assert (=> d!460941 (=> res!693794 e!996567)))

(assert (=> d!460941 (= res!693794 (not ((_ is Node!5561) (c!252471 totalInput!568))))))

(assert (=> d!460941 (= (isBalanced!1641 (c!252471 totalInput!568)) e!996567)))

(declare-fun b!1553510 () Bool)

(assert (=> b!1553510 (= e!996568 (not (isEmpty!10104 (right!13985 (c!252471 totalInput!568)))))))

(declare-fun b!1553511 () Bool)

(declare-fun res!693792 () Bool)

(assert (=> b!1553511 (=> (not res!693792) (not e!996568))))

(assert (=> b!1553511 (= res!693792 (isBalanced!1641 (left!13655 (c!252471 totalInput!568))))))

(declare-fun b!1553512 () Bool)

(declare-fun res!693793 () Bool)

(assert (=> b!1553512 (=> (not res!693793) (not e!996568))))

(assert (=> b!1553512 (= res!693793 (not (isEmpty!10104 (left!13655 (c!252471 totalInput!568)))))))

(declare-fun b!1553513 () Bool)

(declare-fun res!693791 () Bool)

(assert (=> b!1553513 (=> (not res!693791) (not e!996568))))

(assert (=> b!1553513 (= res!693791 (isBalanced!1641 (right!13985 (c!252471 totalInput!568))))))

(declare-fun b!1553514 () Bool)

(declare-fun res!693790 () Bool)

(assert (=> b!1553514 (=> (not res!693790) (not e!996568))))

(assert (=> b!1553514 (= res!693790 (<= (- (height!828 (left!13655 (c!252471 totalInput!568))) (height!828 (right!13985 (c!252471 totalInput!568)))) 1))))

(assert (= (and d!460941 (not res!693794)) b!1553509))

(assert (= (and b!1553509 res!693795) b!1553514))

(assert (= (and b!1553514 res!693790) b!1553511))

(assert (= (and b!1553511 res!693792) b!1553513))

(assert (= (and b!1553513 res!693791) b!1553512))

(assert (= (and b!1553512 res!693793) b!1553510))

(assert (=> b!1553514 m!1825702))

(assert (=> b!1553514 m!1825704))

(declare-fun m!1826041 () Bool)

(assert (=> b!1553512 m!1826041))

(declare-fun m!1826043 () Bool)

(assert (=> b!1553513 m!1826043))

(assert (=> b!1553509 m!1825702))

(assert (=> b!1553509 m!1825704))

(declare-fun m!1826045 () Bool)

(assert (=> b!1553511 m!1826045))

(declare-fun m!1826047 () Bool)

(assert (=> b!1553510 m!1826047))

(assert (=> d!460757 d!460941))

(declare-fun b!1553516 () Bool)

(declare-fun e!996574 () Bool)

(declare-fun e!996573 () Bool)

(assert (=> b!1553516 (= e!996574 e!996573)))

(declare-fun res!693801 () Bool)

(assert (=> b!1553516 (=> res!693801 e!996573)))

(declare-fun call!101927 () Bool)

(assert (=> b!1553516 (= res!693801 call!101927)))

(declare-fun b!1553517 () Bool)

(declare-fun e!996569 () Bool)

(assert (=> b!1553517 (= e!996569 (matchR!1876 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954)))))) (tail!2206 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954)))))))))

(declare-fun b!1553518 () Bool)

(declare-fun res!693796 () Bool)

(declare-fun e!996575 () Bool)

(assert (=> b!1553518 (=> (not res!693796) (not e!996575))))

(assert (=> b!1553518 (= res!693796 (not call!101927))))

(declare-fun b!1553519 () Bool)

(declare-fun e!996572 () Bool)

(declare-fun e!996570 () Bool)

(assert (=> b!1553519 (= e!996572 e!996570)))

(declare-fun c!252569 () Bool)

(assert (=> b!1553519 (= c!252569 ((_ is EmptyLang!4271) (regex!2943 rule!240)))))

(declare-fun b!1553520 () Bool)

(assert (=> b!1553520 (= e!996575 (= (head!3111 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))) (c!252472 (regex!2943 rule!240))))))

(declare-fun b!1553521 () Bool)

(declare-fun res!693803 () Bool)

(assert (=> b!1553521 (=> (not res!693803) (not e!996575))))

(assert (=> b!1553521 (= res!693803 (isEmpty!10101 (tail!2206 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954)))))))))

(declare-fun b!1553522 () Bool)

(declare-fun lt!538053 () Bool)

(assert (=> b!1553522 (= e!996572 (= lt!538053 call!101927))))

(declare-fun bm!101922 () Bool)

(assert (=> bm!101922 (= call!101927 (isEmpty!10101 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))))))

(declare-fun d!460943 () Bool)

(assert (=> d!460943 e!996572))

(declare-fun c!252570 () Bool)

(assert (=> d!460943 (= c!252570 ((_ is EmptyExpr!4271) (regex!2943 rule!240)))))

(assert (=> d!460943 (= lt!538053 e!996569)))

(declare-fun c!252568 () Bool)

(assert (=> d!460943 (= c!252568 (isEmpty!10101 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))))))

(assert (=> d!460943 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460943 (= (matchR!1876 (regex!2943 rule!240) (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))) lt!538053)))

(declare-fun b!1553515 () Bool)

(declare-fun res!693797 () Bool)

(assert (=> b!1553515 (=> res!693797 e!996573)))

(assert (=> b!1553515 (= res!693797 (not (isEmpty!10101 (tail!2206 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))))))))

(declare-fun b!1553523 () Bool)

(declare-fun res!693798 () Bool)

(declare-fun e!996571 () Bool)

(assert (=> b!1553523 (=> res!693798 e!996571)))

(assert (=> b!1553523 (= res!693798 e!996575)))

(declare-fun res!693799 () Bool)

(assert (=> b!1553523 (=> (not res!693799) (not e!996575))))

(assert (=> b!1553523 (= res!693799 lt!538053)))

(declare-fun b!1553524 () Bool)

(assert (=> b!1553524 (= e!996570 (not lt!538053))))

(declare-fun b!1553525 () Bool)

(assert (=> b!1553525 (= e!996569 (nullable!1268 (regex!2943 rule!240)))))

(declare-fun b!1553526 () Bool)

(declare-fun res!693802 () Bool)

(assert (=> b!1553526 (=> res!693802 e!996571)))

(assert (=> b!1553526 (= res!693802 (not ((_ is ElementMatch!4271) (regex!2943 rule!240))))))

(assert (=> b!1553526 (= e!996570 e!996571)))

(declare-fun b!1553527 () Bool)

(assert (=> b!1553527 (= e!996571 e!996574)))

(declare-fun res!693800 () Bool)

(assert (=> b!1553527 (=> (not res!693800) (not e!996574))))

(assert (=> b!1553527 (= res!693800 (not lt!538053))))

(declare-fun b!1553528 () Bool)

(assert (=> b!1553528 (= e!996573 (not (= (head!3111 (list!6486 (charsOf!1644 (_1!9446 (get!4843 lt!537954))))) (c!252472 (regex!2943 rule!240)))))))

(assert (= (and d!460943 c!252568) b!1553525))

(assert (= (and d!460943 (not c!252568)) b!1553517))

(assert (= (and d!460943 c!252570) b!1553522))

(assert (= (and d!460943 (not c!252570)) b!1553519))

(assert (= (and b!1553519 c!252569) b!1553524))

(assert (= (and b!1553519 (not c!252569)) b!1553526))

(assert (= (and b!1553526 (not res!693802)) b!1553523))

(assert (= (and b!1553523 res!693799) b!1553518))

(assert (= (and b!1553518 res!693796) b!1553521))

(assert (= (and b!1553521 res!693803) b!1553520))

(assert (= (and b!1553523 (not res!693798)) b!1553527))

(assert (= (and b!1553527 res!693800) b!1553516))

(assert (= (and b!1553516 (not res!693801)) b!1553515))

(assert (= (and b!1553515 (not res!693797)) b!1553528))

(assert (= (or b!1553522 b!1553516 b!1553518) bm!101922))

(assert (=> bm!101922 m!1825470))

(declare-fun m!1826049 () Bool)

(assert (=> bm!101922 m!1826049))

(assert (=> d!460943 m!1825470))

(assert (=> d!460943 m!1826049))

(assert (=> d!460943 m!1825378))

(assert (=> b!1553515 m!1825470))

(declare-fun m!1826051 () Bool)

(assert (=> b!1553515 m!1826051))

(assert (=> b!1553515 m!1826051))

(declare-fun m!1826053 () Bool)

(assert (=> b!1553515 m!1826053))

(assert (=> b!1553528 m!1825470))

(declare-fun m!1826055 () Bool)

(assert (=> b!1553528 m!1826055))

(assert (=> b!1553521 m!1825470))

(assert (=> b!1553521 m!1826051))

(assert (=> b!1553521 m!1826051))

(assert (=> b!1553521 m!1826053))

(assert (=> b!1553520 m!1825470))

(assert (=> b!1553520 m!1826055))

(assert (=> b!1553517 m!1825470))

(assert (=> b!1553517 m!1826055))

(assert (=> b!1553517 m!1826055))

(declare-fun m!1826057 () Bool)

(assert (=> b!1553517 m!1826057))

(assert (=> b!1553517 m!1825470))

(assert (=> b!1553517 m!1826051))

(assert (=> b!1553517 m!1826057))

(assert (=> b!1553517 m!1826051))

(declare-fun m!1826059 () Bool)

(assert (=> b!1553517 m!1826059))

(assert (=> b!1553525 m!1825386))

(assert (=> b!1553010 d!460943))

(assert (=> b!1553010 d!460841))

(assert (=> b!1553010 d!460843))

(assert (=> b!1553010 d!460805))

(declare-fun d!460945 () Bool)

(declare-fun lt!538054 () Int)

(assert (=> d!460945 (>= lt!538054 0)))

(declare-fun e!996576 () Int)

(assert (=> d!460945 (= lt!538054 e!996576)))

(declare-fun c!252571 () Bool)

(assert (=> d!460945 (= c!252571 ((_ is Nil!16791) (list!6486 totalInput!568)))))

(assert (=> d!460945 (= (size!13594 (list!6486 totalInput!568)) lt!538054)))

(declare-fun b!1553529 () Bool)

(assert (=> b!1553529 (= e!996576 0)))

(declare-fun b!1553530 () Bool)

(assert (=> b!1553530 (= e!996576 (+ 1 (size!13594 (t!141282 (list!6486 totalInput!568)))))))

(assert (= (and d!460945 c!252571) b!1553529))

(assert (= (and d!460945 (not c!252571)) b!1553530))

(declare-fun m!1826061 () Bool)

(assert (=> b!1553530 m!1826061))

(assert (=> b!1552927 d!460945))

(assert (=> b!1552927 d!460693))

(declare-fun d!460947 () Bool)

(assert (=> d!460947 (= (valid!1434 (_2!9448 lt!537971)) (validCacheMapUp!159 (cache!2110 (_2!9448 lt!537971))))))

(declare-fun bs!387812 () Bool)

(assert (= bs!387812 d!460947))

(declare-fun m!1826063 () Bool)

(assert (=> bs!387812 m!1826063))

(assert (=> b!1553026 d!460947))

(assert (=> d!460695 d!460691))

(declare-fun d!460949 () Bool)

(declare-fun c!252572 () Bool)

(assert (=> d!460949 (= c!252572 ((_ is Empty!5561) (c!252471 (_1!9447 (_1!9448 lt!537838)))))))

(declare-fun e!996577 () List!16859)

(assert (=> d!460949 (= (list!6487 (c!252471 (_1!9447 (_1!9448 lt!537838)))) e!996577)))

(declare-fun b!1553531 () Bool)

(assert (=> b!1553531 (= e!996577 Nil!16791)))

(declare-fun b!1553534 () Bool)

(declare-fun e!996578 () List!16859)

(assert (=> b!1553534 (= e!996578 (++!4412 (list!6487 (left!13655 (c!252471 (_1!9447 (_1!9448 lt!537838))))) (list!6487 (right!13985 (c!252471 (_1!9447 (_1!9448 lt!537838)))))))))

(declare-fun b!1553533 () Bool)

(assert (=> b!1553533 (= e!996578 (list!6488 (xs!8361 (c!252471 (_1!9447 (_1!9448 lt!537838))))))))

(declare-fun b!1553532 () Bool)

(assert (=> b!1553532 (= e!996577 e!996578)))

(declare-fun c!252573 () Bool)

(assert (=> b!1553532 (= c!252573 ((_ is Leaf!8242) (c!252471 (_1!9447 (_1!9448 lt!537838)))))))

(assert (= (and d!460949 c!252572) b!1553531))

(assert (= (and d!460949 (not c!252572)) b!1553532))

(assert (= (and b!1553532 c!252573) b!1553533))

(assert (= (and b!1553532 (not c!252573)) b!1553534))

(declare-fun m!1826065 () Bool)

(assert (=> b!1553534 m!1826065))

(declare-fun m!1826067 () Bool)

(assert (=> b!1553534 m!1826067))

(assert (=> b!1553534 m!1826065))

(assert (=> b!1553534 m!1826067))

(declare-fun m!1826069 () Bool)

(assert (=> b!1553534 m!1826069))

(declare-fun m!1826071 () Bool)

(assert (=> b!1553533 m!1826071))

(assert (=> d!460735 d!460949))

(declare-fun d!460951 () Bool)

(declare-fun res!693804 () Bool)

(declare-fun e!996579 () Bool)

(assert (=> d!460951 (=> (not res!693804) (not e!996579))))

(assert (=> d!460951 (= res!693804 (<= (size!13594 (list!6488 (xs!8361 (c!252471 totalInput!568)))) 512))))

(assert (=> d!460951 (= (inv!22067 (c!252471 totalInput!568)) e!996579)))

(declare-fun b!1553535 () Bool)

(declare-fun res!693805 () Bool)

(assert (=> b!1553535 (=> (not res!693805) (not e!996579))))

(assert (=> b!1553535 (= res!693805 (= (csize!11353 (c!252471 totalInput!568)) (size!13594 (list!6488 (xs!8361 (c!252471 totalInput!568))))))))

(declare-fun b!1553536 () Bool)

(assert (=> b!1553536 (= e!996579 (and (> (csize!11353 (c!252471 totalInput!568)) 0) (<= (csize!11353 (c!252471 totalInput!568)) 512)))))

(assert (= (and d!460951 res!693804) b!1553535))

(assert (= (and b!1553535 res!693805) b!1553536))

(assert (=> d!460951 m!1825662))

(assert (=> d!460951 m!1825662))

(declare-fun m!1826073 () Bool)

(assert (=> d!460951 m!1826073))

(assert (=> b!1553535 m!1825662))

(assert (=> b!1553535 m!1825662))

(assert (=> b!1553535 m!1826073))

(assert (=> b!1552978 d!460951))

(declare-fun d!460953 () Bool)

(declare-fun lt!538055 () Int)

(assert (=> d!460953 (>= lt!538055 0)))

(declare-fun e!996580 () Int)

(assert (=> d!460953 (= lt!538055 e!996580)))

(declare-fun c!252574 () Bool)

(assert (=> d!460953 (= c!252574 ((_ is Nil!16791) (t!141282 lt!537846)))))

(assert (=> d!460953 (= (size!13594 (t!141282 lt!537846)) lt!538055)))

(declare-fun b!1553537 () Bool)

(assert (=> b!1553537 (= e!996580 0)))

(declare-fun b!1553538 () Bool)

(assert (=> b!1553538 (= e!996580 (+ 1 (size!13594 (t!141282 (t!141282 lt!537846)))))))

(assert (= (and d!460953 c!252574) b!1553537))

(assert (= (and d!460953 (not c!252574)) b!1553538))

(declare-fun m!1826075 () Bool)

(assert (=> b!1553538 m!1826075))

(assert (=> b!1552916 d!460953))

(declare-fun bs!387813 () Bool)

(declare-fun d!460955 () Bool)

(assert (= bs!387813 (and d!460955 d!460835)))

(declare-fun lambda!65770 () Int)

(assert (=> bs!387813 (= lambda!65770 lambda!65749)))

(declare-fun bs!387814 () Bool)

(assert (= bs!387814 (and d!460955 d!460827)))

(assert (=> bs!387814 (= lambda!65770 lambda!65747)))

(declare-fun bs!387815 () Bool)

(assert (= bs!387815 (and d!460955 d!460879)))

(assert (=> bs!387815 (= lambda!65770 lambda!65751)))

(declare-fun bs!387816 () Bool)

(assert (= bs!387816 (and d!460955 d!460915)))

(assert (=> bs!387816 (= lambda!65770 lambda!65763)))

(declare-fun bs!387817 () Bool)

(assert (= bs!387817 (and d!460955 d!460939)))

(assert (=> bs!387817 (= lambda!65770 lambda!65769)))

(declare-fun bs!387818 () Bool)

(assert (= bs!387818 (and d!460955 d!460929)))

(assert (=> bs!387818 (= lambda!65770 lambda!65767)))

(declare-fun bs!387819 () Bool)

(assert (= bs!387819 (and d!460955 d!460919)))

(assert (=> bs!387819 (= lambda!65770 lambda!65764)))

(declare-fun bs!387820 () Bool)

(assert (= bs!387820 (and d!460955 d!460829)))

(assert (=> bs!387820 (= lambda!65770 lambda!65748)))

(declare-fun bs!387821 () Bool)

(assert (= bs!387821 (and d!460955 d!460923)))

(assert (=> bs!387821 (= lambda!65770 lambda!65765)))

(declare-fun bs!387822 () Bool)

(assert (= bs!387822 (and d!460955 d!460811)))

(assert (=> bs!387822 (= lambda!65770 lambda!65742)))

(declare-fun bs!387823 () Bool)

(assert (= bs!387823 (and d!460955 d!460887)))

(assert (=> bs!387823 (= lambda!65770 lambda!65755)))

(declare-fun bs!387824 () Bool)

(assert (= bs!387824 (and d!460955 d!460927)))

(assert (=> bs!387824 (= lambda!65770 lambda!65766)))

(declare-fun bs!387825 () Bool)

(assert (= bs!387825 (and d!460955 d!460913)))

(assert (=> bs!387825 (= lambda!65770 lambda!65762)))

(declare-fun bs!387826 () Bool)

(assert (= bs!387826 (and d!460955 d!460931)))

(assert (=> bs!387826 (= lambda!65770 lambda!65768)))

(declare-fun bs!387827 () Bool)

(assert (= bs!387827 (and d!460955 d!460823)))

(assert (=> bs!387827 (= lambda!65770 lambda!65746)))

(declare-fun bs!387828 () Bool)

(assert (= bs!387828 (and d!460955 d!460867)))

(assert (=> bs!387828 (= lambda!65770 lambda!65750)))

(assert (=> d!460955 (= (inv!22068 (_2!9444 (_1!9445 (h!22196 mapValue!8283)))) (forall!3922 (exprs!1289 (_2!9444 (_1!9445 (h!22196 mapValue!8283)))) lambda!65770))))

(declare-fun bs!387829 () Bool)

(assert (= bs!387829 d!460955))

(declare-fun m!1826077 () Bool)

(assert (=> bs!387829 m!1826077))

(assert (=> b!1553175 d!460955))

(declare-fun b!1553541 () Bool)

(declare-fun e!996583 () Bool)

(assert (=> b!1553541 (= e!996583 (isPrefix!1258 (tail!2206 lt!537846) (tail!2206 lt!537846)))))

(declare-fun b!1553539 () Bool)

(declare-fun e!996582 () Bool)

(assert (=> b!1553539 (= e!996582 e!996583)))

(declare-fun res!693809 () Bool)

(assert (=> b!1553539 (=> (not res!693809) (not e!996583))))

(assert (=> b!1553539 (= res!693809 (not ((_ is Nil!16791) lt!537846)))))

(declare-fun b!1553540 () Bool)

(declare-fun res!693808 () Bool)

(assert (=> b!1553540 (=> (not res!693808) (not e!996583))))

(assert (=> b!1553540 (= res!693808 (= (head!3111 lt!537846) (head!3111 lt!537846)))))

(declare-fun d!460957 () Bool)

(declare-fun e!996581 () Bool)

(assert (=> d!460957 e!996581))

(declare-fun res!693806 () Bool)

(assert (=> d!460957 (=> res!693806 e!996581)))

(declare-fun lt!538056 () Bool)

(assert (=> d!460957 (= res!693806 (not lt!538056))))

(assert (=> d!460957 (= lt!538056 e!996582)))

(declare-fun res!693807 () Bool)

(assert (=> d!460957 (=> res!693807 e!996582)))

(assert (=> d!460957 (= res!693807 ((_ is Nil!16791) lt!537846))))

(assert (=> d!460957 (= (isPrefix!1258 lt!537846 lt!537846) lt!538056)))

(declare-fun b!1553542 () Bool)

(assert (=> b!1553542 (= e!996581 (>= (size!13594 lt!537846) (size!13594 lt!537846)))))

(assert (= (and d!460957 (not res!693807)) b!1553539))

(assert (= (and b!1553539 res!693809) b!1553540))

(assert (= (and b!1553540 res!693808) b!1553541))

(assert (= (and d!460957 (not res!693806)) b!1553542))

(assert (=> b!1553541 m!1825396))

(assert (=> b!1553541 m!1825396))

(assert (=> b!1553541 m!1825396))

(assert (=> b!1553541 m!1825396))

(declare-fun m!1826079 () Bool)

(assert (=> b!1553541 m!1826079))

(assert (=> b!1553540 m!1825400))

(assert (=> b!1553540 m!1825400))

(assert (=> b!1553542 m!1825330))

(assert (=> b!1553542 m!1825330))

(assert (=> bm!101889 d!460957))

(declare-fun b!1553543 () Bool)

(declare-fun e!996584 () Bool)

(declare-fun e!996585 () Bool)

(assert (=> b!1553543 (= e!996584 e!996585)))

(declare-fun res!693815 () Bool)

(assert (=> b!1553543 (=> (not res!693815) (not e!996585))))

(assert (=> b!1553543 (= res!693815 (<= (- 1) (- (height!828 (left!13655 (c!252471 input!1676))) (height!828 (right!13985 (c!252471 input!1676))))))))

(declare-fun d!460959 () Bool)

(declare-fun res!693814 () Bool)

(assert (=> d!460959 (=> res!693814 e!996584)))

(assert (=> d!460959 (= res!693814 (not ((_ is Node!5561) (c!252471 input!1676))))))

(assert (=> d!460959 (= (isBalanced!1641 (c!252471 input!1676)) e!996584)))

(declare-fun b!1553544 () Bool)

(assert (=> b!1553544 (= e!996585 (not (isEmpty!10104 (right!13985 (c!252471 input!1676)))))))

(declare-fun b!1553545 () Bool)

(declare-fun res!693812 () Bool)

(assert (=> b!1553545 (=> (not res!693812) (not e!996585))))

(assert (=> b!1553545 (= res!693812 (isBalanced!1641 (left!13655 (c!252471 input!1676))))))

(declare-fun b!1553546 () Bool)

(declare-fun res!693813 () Bool)

(assert (=> b!1553546 (=> (not res!693813) (not e!996585))))

(assert (=> b!1553546 (= res!693813 (not (isEmpty!10104 (left!13655 (c!252471 input!1676)))))))

(declare-fun b!1553547 () Bool)

(declare-fun res!693811 () Bool)

(assert (=> b!1553547 (=> (not res!693811) (not e!996585))))

(assert (=> b!1553547 (= res!693811 (isBalanced!1641 (right!13985 (c!252471 input!1676))))))

(declare-fun b!1553548 () Bool)

(declare-fun res!693810 () Bool)

(assert (=> b!1553548 (=> (not res!693810) (not e!996585))))

(assert (=> b!1553548 (= res!693810 (<= (- (height!828 (left!13655 (c!252471 input!1676))) (height!828 (right!13985 (c!252471 input!1676)))) 1))))

(assert (= (and d!460959 (not res!693814)) b!1553543))

(assert (= (and b!1553543 res!693815) b!1553548))

(assert (= (and b!1553548 res!693810) b!1553545))

(assert (= (and b!1553545 res!693812) b!1553547))

(assert (= (and b!1553547 res!693811) b!1553546))

(assert (= (and b!1553546 res!693813) b!1553544))

(declare-fun m!1826081 () Bool)

(assert (=> b!1553548 m!1826081))

(declare-fun m!1826083 () Bool)

(assert (=> b!1553548 m!1826083))

(declare-fun m!1826085 () Bool)

(assert (=> b!1553546 m!1826085))

(declare-fun m!1826087 () Bool)

(assert (=> b!1553547 m!1826087))

(assert (=> b!1553543 m!1826081))

(assert (=> b!1553543 m!1826083))

(declare-fun m!1826089 () Bool)

(assert (=> b!1553545 m!1826089))

(declare-fun m!1826091 () Bool)

(assert (=> b!1553544 m!1826091))

(assert (=> d!460763 d!460959))

(assert (=> b!1553040 d!460813))

(assert (=> bm!101899 d!460687))

(declare-fun bs!387830 () Bool)

(declare-fun d!460961 () Bool)

(assert (= bs!387830 (and d!460961 d!460835)))

(declare-fun lambda!65771 () Int)

(assert (=> bs!387830 (= lambda!65771 lambda!65749)))

(declare-fun bs!387831 () Bool)

(assert (= bs!387831 (and d!460961 d!460827)))

(assert (=> bs!387831 (= lambda!65771 lambda!65747)))

(declare-fun bs!387832 () Bool)

(assert (= bs!387832 (and d!460961 d!460879)))

(assert (=> bs!387832 (= lambda!65771 lambda!65751)))

(declare-fun bs!387833 () Bool)

(assert (= bs!387833 (and d!460961 d!460915)))

(assert (=> bs!387833 (= lambda!65771 lambda!65763)))

(declare-fun bs!387834 () Bool)

(assert (= bs!387834 (and d!460961 d!460939)))

(assert (=> bs!387834 (= lambda!65771 lambda!65769)))

(declare-fun bs!387835 () Bool)

(assert (= bs!387835 (and d!460961 d!460929)))

(assert (=> bs!387835 (= lambda!65771 lambda!65767)))

(declare-fun bs!387836 () Bool)

(assert (= bs!387836 (and d!460961 d!460919)))

(assert (=> bs!387836 (= lambda!65771 lambda!65764)))

(declare-fun bs!387837 () Bool)

(assert (= bs!387837 (and d!460961 d!460829)))

(assert (=> bs!387837 (= lambda!65771 lambda!65748)))

(declare-fun bs!387838 () Bool)

(assert (= bs!387838 (and d!460961 d!460811)))

(assert (=> bs!387838 (= lambda!65771 lambda!65742)))

(declare-fun bs!387839 () Bool)

(assert (= bs!387839 (and d!460961 d!460887)))

(assert (=> bs!387839 (= lambda!65771 lambda!65755)))

(declare-fun bs!387840 () Bool)

(assert (= bs!387840 (and d!460961 d!460927)))

(assert (=> bs!387840 (= lambda!65771 lambda!65766)))

(declare-fun bs!387841 () Bool)

(assert (= bs!387841 (and d!460961 d!460913)))

(assert (=> bs!387841 (= lambda!65771 lambda!65762)))

(declare-fun bs!387842 () Bool)

(assert (= bs!387842 (and d!460961 d!460931)))

(assert (=> bs!387842 (= lambda!65771 lambda!65768)))

(declare-fun bs!387843 () Bool)

(assert (= bs!387843 (and d!460961 d!460923)))

(assert (=> bs!387843 (= lambda!65771 lambda!65765)))

(declare-fun bs!387844 () Bool)

(assert (= bs!387844 (and d!460961 d!460955)))

(assert (=> bs!387844 (= lambda!65771 lambda!65770)))

(declare-fun bs!387845 () Bool)

(assert (= bs!387845 (and d!460961 d!460823)))

(assert (=> bs!387845 (= lambda!65771 lambda!65746)))

(declare-fun bs!387846 () Bool)

(assert (= bs!387846 (and d!460961 d!460867)))

(assert (=> bs!387846 (= lambda!65771 lambda!65750)))

(assert (=> d!460961 (= (inv!22068 (_1!9440 (_1!9441 (h!22194 mapValue!8288)))) (forall!3922 (exprs!1289 (_1!9440 (_1!9441 (h!22194 mapValue!8288)))) lambda!65771))))

(declare-fun bs!387847 () Bool)

(assert (= bs!387847 d!460961))

(declare-fun m!1826093 () Bool)

(assert (=> bs!387847 m!1826093))

(assert (=> b!1553083 d!460961))

(assert (=> b!1552864 d!460911))

(declare-fun bm!101923 () Bool)

(declare-fun call!101929 () Bool)

(assert (=> bm!101923 (= call!101929 (isPrefix!1258 lt!537846 lt!537846))))

(declare-fun b!1553549 () Bool)

(declare-fun e!996587 () Unit!26040)

(declare-fun Unit!26046 () Unit!26040)

(assert (=> b!1553549 (= e!996587 Unit!26046)))

(declare-fun lt!538081 () Unit!26040)

(declare-fun call!101931 () Unit!26040)

(assert (=> b!1553549 (= lt!538081 call!101931)))

(assert (=> b!1553549 call!101929))

(declare-fun lt!538070 () Unit!26040)

(assert (=> b!1553549 (= lt!538070 lt!538081)))

(declare-fun lt!538058 () Unit!26040)

(declare-fun call!101934 () Unit!26040)

(assert (=> b!1553549 (= lt!538058 call!101934)))

(assert (=> b!1553549 (= lt!537846 lt!537903)))

(declare-fun lt!538069 () Unit!26040)

(assert (=> b!1553549 (= lt!538069 lt!538058)))

(assert (=> b!1553549 false))

(declare-fun b!1553550 () Bool)

(declare-fun e!996589 () tuple2!16238)

(declare-fun e!996588 () tuple2!16238)

(assert (=> b!1553550 (= e!996589 e!996588)))

(declare-fun c!252578 () Bool)

(assert (=> b!1553550 (= c!252578 (= (+ (size!13594 Nil!16791) 1) (size!13594 lt!537846)))))

(declare-fun b!1553551 () Bool)

(declare-fun e!996590 () tuple2!16238)

(declare-fun e!996592 () tuple2!16238)

(assert (=> b!1553551 (= e!996590 e!996592)))

(declare-fun lt!538080 () tuple2!16238)

(declare-fun call!101933 () tuple2!16238)

(assert (=> b!1553551 (= lt!538080 call!101933)))

(declare-fun c!252576 () Bool)

(assert (=> b!1553551 (= c!252576 (isEmpty!10101 (_1!9450 lt!538080)))))

(declare-fun b!1553552 () Bool)

(declare-fun e!996586 () tuple2!16238)

(assert (=> b!1553552 (= e!996586 (tuple2!16239 lt!537903 Nil!16791))))

(declare-fun b!1553553 () Bool)

(declare-fun e!996591 () Bool)

(declare-fun lt!538082 () tuple2!16238)

(assert (=> b!1553553 (= e!996591 (>= (size!13594 (_1!9450 lt!538082)) (size!13594 lt!537903)))))

(declare-fun bm!101924 () Bool)

(declare-fun call!101930 () List!16859)

(assert (=> bm!101924 (= call!101930 (tail!2206 call!101896))))

(declare-fun b!1553554 () Bool)

(assert (=> b!1553554 (= e!996592 lt!538080)))

(declare-fun b!1553555 () Bool)

(declare-fun e!996593 () Bool)

(assert (=> b!1553555 (= e!996593 e!996591)))

(declare-fun res!693817 () Bool)

(assert (=> b!1553555 (=> res!693817 e!996591)))

(assert (=> b!1553555 (= res!693817 (isEmpty!10101 (_1!9450 lt!538082)))))

(declare-fun b!1553556 () Bool)

(assert (=> b!1553556 (= e!996592 (tuple2!16239 lt!537903 call!101896))))

(declare-fun b!1553557 () Bool)

(assert (=> b!1553557 (= e!996590 call!101933)))

(declare-fun b!1553558 () Bool)

(declare-fun c!252575 () Bool)

(declare-fun call!101935 () Bool)

(assert (=> b!1553558 (= c!252575 call!101935)))

(declare-fun lt!538067 () Unit!26040)

(declare-fun lt!538073 () Unit!26040)

(assert (=> b!1553558 (= lt!538067 lt!538073)))

(declare-fun lt!538065 () C!8720)

(declare-fun lt!538083 () List!16859)

(assert (=> b!1553558 (= (++!4412 (++!4412 lt!537903 (Cons!16791 lt!538065 Nil!16791)) lt!538083) lt!537846)))

(assert (=> b!1553558 (= lt!538073 (lemmaMoveElementToOtherListKeepsConcatEq!437 lt!537903 lt!538065 lt!538083 lt!537846))))

(assert (=> b!1553558 (= lt!538083 (tail!2206 call!101896))))

(assert (=> b!1553558 (= lt!538065 (head!3111 call!101896))))

(declare-fun lt!538079 () Unit!26040)

(declare-fun lt!538071 () Unit!26040)

(assert (=> b!1553558 (= lt!538079 lt!538071)))

(assert (=> b!1553558 (isPrefix!1258 (++!4412 lt!537903 (Cons!16791 (head!3111 (getSuffix!668 lt!537846 lt!537903)) Nil!16791)) lt!537846)))

(assert (=> b!1553558 (= lt!538071 (lemmaAddHeadSuffixToPrefixStillPrefix!111 lt!537903 lt!537846))))

(declare-fun lt!538061 () Unit!26040)

(declare-fun lt!538084 () Unit!26040)

(assert (=> b!1553558 (= lt!538061 lt!538084)))

(assert (=> b!1553558 (= lt!538084 (lemmaAddHeadSuffixToPrefixStillPrefix!111 lt!537903 lt!537846))))

(declare-fun lt!538057 () List!16859)

(assert (=> b!1553558 (= lt!538057 (++!4412 lt!537903 (Cons!16791 (head!3111 call!101896) Nil!16791)))))

(declare-fun lt!538059 () Unit!26040)

(assert (=> b!1553558 (= lt!538059 e!996587)))

(declare-fun c!252579 () Bool)

(assert (=> b!1553558 (= c!252579 (= (size!13594 lt!537903) (size!13594 lt!537846)))))

(declare-fun lt!538072 () Unit!26040)

(declare-fun lt!538066 () Unit!26040)

(assert (=> b!1553558 (= lt!538072 lt!538066)))

(assert (=> b!1553558 (<= (size!13594 lt!537903) (size!13594 lt!537846))))

(assert (=> b!1553558 (= lt!538066 (lemmaIsPrefixThenSmallerEqSize!112 lt!537903 lt!537846))))

(assert (=> b!1553558 (= e!996588 e!996590)))

(declare-fun bm!101925 () Bool)

(declare-fun call!101932 () C!8720)

(assert (=> bm!101925 (= call!101932 (head!3111 call!101896))))

(declare-fun b!1553559 () Bool)

(declare-fun Unit!26047 () Unit!26040)

(assert (=> b!1553559 (= e!996587 Unit!26047)))

(declare-fun bm!101926 () Bool)

(declare-fun call!101928 () Regex!4271)

(assert (=> bm!101926 (= call!101928 (derivativeStep!1020 call!101894 call!101932))))

(declare-fun bm!101927 () Bool)

(assert (=> bm!101927 (= call!101935 (nullable!1268 call!101894))))

(declare-fun b!1553560 () Bool)

(assert (=> b!1553560 (= e!996586 (tuple2!16239 Nil!16791 lt!537846))))

(declare-fun bm!101928 () Bool)

(assert (=> bm!101928 (= call!101933 (findLongestMatchInner!329 call!101928 lt!538057 (+ (size!13594 Nil!16791) 1 1) call!101930 lt!537846 (size!13594 lt!537846)))))

(declare-fun bm!101929 () Bool)

(assert (=> bm!101929 (= call!101934 (lemmaIsPrefixSameLengthThenSameList!122 lt!537846 lt!537903 lt!537846))))

(declare-fun b!1553561 () Bool)

(assert (=> b!1553561 (= e!996589 (tuple2!16239 Nil!16791 lt!537846))))

(declare-fun d!460963 () Bool)

(assert (=> d!460963 e!996593))

(declare-fun res!693816 () Bool)

(assert (=> d!460963 (=> (not res!693816) (not e!996593))))

(assert (=> d!460963 (= res!693816 (= (++!4412 (_1!9450 lt!538082) (_2!9450 lt!538082)) lt!537846))))

(assert (=> d!460963 (= lt!538082 e!996589)))

(declare-fun c!252580 () Bool)

(assert (=> d!460963 (= c!252580 (lostCause!386 call!101894))))

(declare-fun lt!538068 () Unit!26040)

(declare-fun Unit!26048 () Unit!26040)

(assert (=> d!460963 (= lt!538068 Unit!26048)))

(assert (=> d!460963 (= (getSuffix!668 lt!537846 lt!537903) call!101896)))

(declare-fun lt!538062 () Unit!26040)

(declare-fun lt!538078 () Unit!26040)

(assert (=> d!460963 (= lt!538062 lt!538078)))

(declare-fun lt!538060 () List!16859)

(assert (=> d!460963 (= call!101896 lt!538060)))

(assert (=> d!460963 (= lt!538078 (lemmaSamePrefixThenSameSuffix!620 lt!537903 call!101896 lt!537903 lt!538060 lt!537846))))

(assert (=> d!460963 (= lt!538060 (getSuffix!668 lt!537846 lt!537903))))

(declare-fun lt!538075 () Unit!26040)

(declare-fun lt!538074 () Unit!26040)

(assert (=> d!460963 (= lt!538075 lt!538074)))

(assert (=> d!460963 (isPrefix!1258 lt!537903 (++!4412 lt!537903 call!101896))))

(assert (=> d!460963 (= lt!538074 (lemmaConcatTwoListThenFirstIsPrefix!783 lt!537903 call!101896))))

(assert (=> d!460963 (validRegex!1709 call!101894)))

(assert (=> d!460963 (= (findLongestMatchInner!329 call!101894 lt!537903 (+ (size!13594 Nil!16791) 1) call!101896 lt!537846 (size!13594 lt!537846)) lt!538082)))

(declare-fun bm!101930 () Bool)

(assert (=> bm!101930 (= call!101931 (lemmaIsPrefixRefl!888 lt!537846 lt!537846))))

(declare-fun b!1553562 () Bool)

(declare-fun c!252577 () Bool)

(assert (=> b!1553562 (= c!252577 call!101935)))

(declare-fun lt!538064 () Unit!26040)

(declare-fun lt!538076 () Unit!26040)

(assert (=> b!1553562 (= lt!538064 lt!538076)))

(assert (=> b!1553562 (= lt!537846 lt!537903)))

(assert (=> b!1553562 (= lt!538076 call!101934)))

(declare-fun lt!538077 () Unit!26040)

(declare-fun lt!538063 () Unit!26040)

(assert (=> b!1553562 (= lt!538077 lt!538063)))

(assert (=> b!1553562 call!101929))

(assert (=> b!1553562 (= lt!538063 call!101931)))

(assert (=> b!1553562 (= e!996588 e!996586)))

(assert (= (and d!460963 c!252580) b!1553561))

(assert (= (and d!460963 (not c!252580)) b!1553550))

(assert (= (and b!1553550 c!252578) b!1553562))

(assert (= (and b!1553550 (not c!252578)) b!1553558))

(assert (= (and b!1553562 c!252577) b!1553552))

(assert (= (and b!1553562 (not c!252577)) b!1553560))

(assert (= (and b!1553558 c!252579) b!1553549))

(assert (= (and b!1553558 (not c!252579)) b!1553559))

(assert (= (and b!1553558 c!252575) b!1553551))

(assert (= (and b!1553558 (not c!252575)) b!1553557))

(assert (= (and b!1553551 c!252576) b!1553556))

(assert (= (and b!1553551 (not c!252576)) b!1553554))

(assert (= (or b!1553551 b!1553557) bm!101924))

(assert (= (or b!1553551 b!1553557) bm!101925))

(assert (= (or b!1553551 b!1553557) bm!101926))

(assert (= (or b!1553551 b!1553557) bm!101928))

(assert (= (or b!1553562 b!1553549) bm!101929))

(assert (= (or b!1553562 b!1553549) bm!101930))

(assert (= (or b!1553562 b!1553558) bm!101927))

(assert (= (or b!1553562 b!1553549) bm!101923))

(assert (= (and d!460963 res!693816) b!1553555))

(assert (= (and b!1553555 (not res!693817)) b!1553553))

(assert (=> bm!101930 m!1825364))

(declare-fun m!1826095 () Bool)

(assert (=> bm!101929 m!1826095))

(declare-fun m!1826097 () Bool)

(assert (=> d!460963 m!1826097))

(declare-fun m!1826099 () Bool)

(assert (=> d!460963 m!1826099))

(declare-fun m!1826101 () Bool)

(assert (=> d!460963 m!1826101))

(assert (=> d!460963 m!1826097))

(declare-fun m!1826103 () Bool)

(assert (=> d!460963 m!1826103))

(declare-fun m!1826105 () Bool)

(assert (=> d!460963 m!1826105))

(declare-fun m!1826107 () Bool)

(assert (=> d!460963 m!1826107))

(declare-fun m!1826109 () Bool)

(assert (=> d!460963 m!1826109))

(declare-fun m!1826111 () Bool)

(assert (=> d!460963 m!1826111))

(assert (=> bm!101928 m!1825330))

(declare-fun m!1826113 () Bool)

(assert (=> bm!101928 m!1826113))

(declare-fun m!1826115 () Bool)

(assert (=> bm!101927 m!1826115))

(declare-fun m!1826117 () Bool)

(assert (=> b!1553553 m!1826117))

(declare-fun m!1826119 () Bool)

(assert (=> b!1553553 m!1826119))

(assert (=> bm!101923 m!1825390))

(declare-fun m!1826121 () Bool)

(assert (=> b!1553551 m!1826121))

(declare-fun m!1826123 () Bool)

(assert (=> b!1553555 m!1826123))

(declare-fun m!1826125 () Bool)

(assert (=> bm!101924 m!1826125))

(declare-fun m!1826127 () Bool)

(assert (=> bm!101926 m!1826127))

(declare-fun m!1826129 () Bool)

(assert (=> bm!101925 m!1826129))

(assert (=> b!1553558 m!1825330))

(declare-fun m!1826131 () Bool)

(assert (=> b!1553558 m!1826131))

(assert (=> b!1553558 m!1826129))

(declare-fun m!1826133 () Bool)

(assert (=> b!1553558 m!1826133))

(declare-fun m!1826135 () Bool)

(assert (=> b!1553558 m!1826135))

(declare-fun m!1826137 () Bool)

(assert (=> b!1553558 m!1826137))

(declare-fun m!1826139 () Bool)

(assert (=> b!1553558 m!1826139))

(assert (=> b!1553558 m!1826105))

(assert (=> b!1553558 m!1826125))

(assert (=> b!1553558 m!1826105))

(declare-fun m!1826141 () Bool)

(assert (=> b!1553558 m!1826141))

(declare-fun m!1826143 () Bool)

(assert (=> b!1553558 m!1826143))

(assert (=> b!1553558 m!1826137))

(assert (=> b!1553558 m!1826119))

(assert (=> b!1553558 m!1826133))

(declare-fun m!1826145 () Bool)

(assert (=> b!1553558 m!1826145))

(declare-fun m!1826147 () Bool)

(assert (=> b!1553558 m!1826147))

(assert (=> bm!101894 d!460963))

(assert (=> b!1553006 d!460805))

(declare-fun d!460965 () Bool)

(assert (=> d!460965 (= (apply!4107 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954)))) (seqFromList!1771 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954))))) (dynLambda!7435 (toValue!4310 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954))))) (seqFromList!1771 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954))))))))

(declare-fun b_lambda!48757 () Bool)

(assert (=> (not b_lambda!48757) (not d!460965)))

(declare-fun tb!87295 () Bool)

(declare-fun t!141305 () Bool)

(assert (=> (and b!1552850 (= (toValue!4310 (transformation!2943 rule!240)) (toValue!4310 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954)))))) t!141305) tb!87295))

(declare-fun result!105354 () Bool)

(assert (=> tb!87295 (= result!105354 (inv!21 (dynLambda!7435 (toValue!4310 (transformation!2943 (rule!4725 (_1!9446 (get!4843 lt!537954))))) (seqFromList!1771 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954)))))))))

(declare-fun m!1826149 () Bool)

(assert (=> tb!87295 m!1826149))

(assert (=> d!460965 t!141305))

(declare-fun b_and!108419 () Bool)

(assert (= b_and!108417 (and (=> t!141305 result!105354) b_and!108419)))

(assert (=> d!460965 m!1825464))

(declare-fun m!1826151 () Bool)

(assert (=> d!460965 m!1826151))

(assert (=> b!1553006 d!460965))

(declare-fun d!460967 () Bool)

(assert (=> d!460967 (= (seqFromList!1771 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954)))) (fromListB!759 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954)))))))

(declare-fun bs!387848 () Bool)

(assert (= bs!387848 d!460967))

(declare-fun m!1826153 () Bool)

(assert (=> bs!387848 m!1826153))

(assert (=> b!1553006 d!460967))

(assert (=> b!1552820 d!460711))

(declare-fun d!460969 () Bool)

(assert (=> d!460969 (dynLambda!7434 lambda!65733 (seqFromList!1771 lt!537839))))

(assert (=> d!460969 true))

(declare-fun _$1!9956 () Unit!26040)

(assert (=> d!460969 (= (choose!9261 lambda!65733 (seqFromList!1771 lt!537839)) _$1!9956)))

(declare-fun b_lambda!48759 () Bool)

(assert (=> (not b_lambda!48759) (not d!460969)))

(declare-fun bs!387849 () Bool)

(assert (= bs!387849 d!460969))

(assert (=> bs!387849 m!1825278))

(assert (=> bs!387849 m!1825508))

(assert (=> d!460739 d!460969))

(assert (=> d!460739 d!460709))

(declare-fun bs!387850 () Bool)

(declare-fun d!460971 () Bool)

(assert (= bs!387850 (and d!460971 d!460835)))

(declare-fun lambda!65772 () Int)

(assert (=> bs!387850 (= lambda!65772 lambda!65749)))

(declare-fun bs!387851 () Bool)

(assert (= bs!387851 (and d!460971 d!460879)))

(assert (=> bs!387851 (= lambda!65772 lambda!65751)))

(declare-fun bs!387852 () Bool)

(assert (= bs!387852 (and d!460971 d!460915)))

(assert (=> bs!387852 (= lambda!65772 lambda!65763)))

(declare-fun bs!387853 () Bool)

(assert (= bs!387853 (and d!460971 d!460939)))

(assert (=> bs!387853 (= lambda!65772 lambda!65769)))

(declare-fun bs!387854 () Bool)

(assert (= bs!387854 (and d!460971 d!460929)))

(assert (=> bs!387854 (= lambda!65772 lambda!65767)))

(declare-fun bs!387855 () Bool)

(assert (= bs!387855 (and d!460971 d!460919)))

(assert (=> bs!387855 (= lambda!65772 lambda!65764)))

(declare-fun bs!387856 () Bool)

(assert (= bs!387856 (and d!460971 d!460829)))

(assert (=> bs!387856 (= lambda!65772 lambda!65748)))

(declare-fun bs!387857 () Bool)

(assert (= bs!387857 (and d!460971 d!460811)))

(assert (=> bs!387857 (= lambda!65772 lambda!65742)))

(declare-fun bs!387858 () Bool)

(assert (= bs!387858 (and d!460971 d!460887)))

(assert (=> bs!387858 (= lambda!65772 lambda!65755)))

(declare-fun bs!387859 () Bool)

(assert (= bs!387859 (and d!460971 d!460927)))

(assert (=> bs!387859 (= lambda!65772 lambda!65766)))

(declare-fun bs!387860 () Bool)

(assert (= bs!387860 (and d!460971 d!460913)))

(assert (=> bs!387860 (= lambda!65772 lambda!65762)))

(declare-fun bs!387861 () Bool)

(assert (= bs!387861 (and d!460971 d!460931)))

(assert (=> bs!387861 (= lambda!65772 lambda!65768)))

(declare-fun bs!387862 () Bool)

(assert (= bs!387862 (and d!460971 d!460827)))

(assert (=> bs!387862 (= lambda!65772 lambda!65747)))

(declare-fun bs!387863 () Bool)

(assert (= bs!387863 (and d!460971 d!460961)))

(assert (=> bs!387863 (= lambda!65772 lambda!65771)))

(declare-fun bs!387864 () Bool)

(assert (= bs!387864 (and d!460971 d!460923)))

(assert (=> bs!387864 (= lambda!65772 lambda!65765)))

(declare-fun bs!387865 () Bool)

(assert (= bs!387865 (and d!460971 d!460955)))

(assert (=> bs!387865 (= lambda!65772 lambda!65770)))

(declare-fun bs!387866 () Bool)

(assert (= bs!387866 (and d!460971 d!460823)))

(assert (=> bs!387866 (= lambda!65772 lambda!65746)))

(declare-fun bs!387867 () Bool)

(assert (= bs!387867 (and d!460971 d!460867)))

(assert (=> bs!387867 (= lambda!65772 lambda!65750)))

(assert (=> d!460971 (= (inv!22068 setElem!10715) (forall!3922 (exprs!1289 setElem!10715) lambda!65772))))

(declare-fun bs!387868 () Bool)

(assert (= bs!387868 d!460971))

(declare-fun m!1826155 () Bool)

(assert (=> bs!387868 m!1826155))

(assert (=> setNonEmpty!10715 d!460971))

(declare-fun d!460973 () Bool)

(declare-fun res!693818 () Bool)

(declare-fun e!996595 () Bool)

(assert (=> d!460973 (=> (not res!693818) (not e!996595))))

(assert (=> d!460973 (= res!693818 (<= (size!13594 (list!6488 (xs!8361 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) 512))))

(assert (=> d!460973 (= (inv!22067 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) e!996595)))

(declare-fun b!1553563 () Bool)

(declare-fun res!693819 () Bool)

(assert (=> b!1553563 (=> (not res!693819) (not e!996595))))

(assert (=> b!1553563 (= res!693819 (= (csize!11353 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) (size!13594 (list!6488 (xs!8361 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))))))

(declare-fun b!1553564 () Bool)

(assert (=> b!1553564 (= e!996595 (and (> (csize!11353 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) 0) (<= (csize!11353 (c!252471 (totalInput!2450 cacheFurthestNullable!103))) 512)))))

(assert (= (and d!460973 res!693818) b!1553563))

(assert (= (and b!1553563 res!693819) b!1553564))

(declare-fun m!1826157 () Bool)

(assert (=> d!460973 m!1826157))

(assert (=> d!460973 m!1826157))

(declare-fun m!1826159 () Bool)

(assert (=> d!460973 m!1826159))

(assert (=> b!1553563 m!1826157))

(assert (=> b!1553563 m!1826157))

(assert (=> b!1553563 m!1826159))

(assert (=> b!1553016 d!460973))

(declare-fun d!460975 () Bool)

(assert (=> d!460975 (= (inv!22069 (xs!8361 (c!252471 totalInput!568))) (<= (size!13594 (innerList!5621 (xs!8361 (c!252471 totalInput!568)))) 2147483647))))

(declare-fun bs!387869 () Bool)

(assert (= bs!387869 d!460975))

(declare-fun m!1826161 () Bool)

(assert (=> bs!387869 m!1826161))

(assert (=> b!1553106 d!460975))

(declare-fun bs!387870 () Bool)

(declare-fun d!460977 () Bool)

(assert (= bs!387870 (and d!460977 d!460835)))

(declare-fun lambda!65773 () Int)

(assert (=> bs!387870 (= lambda!65773 lambda!65749)))

(declare-fun bs!387871 () Bool)

(assert (= bs!387871 (and d!460977 d!460879)))

(assert (=> bs!387871 (= lambda!65773 lambda!65751)))

(declare-fun bs!387872 () Bool)

(assert (= bs!387872 (and d!460977 d!460915)))

(assert (=> bs!387872 (= lambda!65773 lambda!65763)))

(declare-fun bs!387873 () Bool)

(assert (= bs!387873 (and d!460977 d!460939)))

(assert (=> bs!387873 (= lambda!65773 lambda!65769)))

(declare-fun bs!387874 () Bool)

(assert (= bs!387874 (and d!460977 d!460929)))

(assert (=> bs!387874 (= lambda!65773 lambda!65767)))

(declare-fun bs!387875 () Bool)

(assert (= bs!387875 (and d!460977 d!460919)))

(assert (=> bs!387875 (= lambda!65773 lambda!65764)))

(declare-fun bs!387876 () Bool)

(assert (= bs!387876 (and d!460977 d!460829)))

(assert (=> bs!387876 (= lambda!65773 lambda!65748)))

(declare-fun bs!387877 () Bool)

(assert (= bs!387877 (and d!460977 d!460811)))

(assert (=> bs!387877 (= lambda!65773 lambda!65742)))

(declare-fun bs!387878 () Bool)

(assert (= bs!387878 (and d!460977 d!460971)))

(assert (=> bs!387878 (= lambda!65773 lambda!65772)))

(declare-fun bs!387879 () Bool)

(assert (= bs!387879 (and d!460977 d!460887)))

(assert (=> bs!387879 (= lambda!65773 lambda!65755)))

(declare-fun bs!387880 () Bool)

(assert (= bs!387880 (and d!460977 d!460927)))

(assert (=> bs!387880 (= lambda!65773 lambda!65766)))

(declare-fun bs!387881 () Bool)

(assert (= bs!387881 (and d!460977 d!460913)))

(assert (=> bs!387881 (= lambda!65773 lambda!65762)))

(declare-fun bs!387882 () Bool)

(assert (= bs!387882 (and d!460977 d!460931)))

(assert (=> bs!387882 (= lambda!65773 lambda!65768)))

(declare-fun bs!387883 () Bool)

(assert (= bs!387883 (and d!460977 d!460827)))

(assert (=> bs!387883 (= lambda!65773 lambda!65747)))

(declare-fun bs!387884 () Bool)

(assert (= bs!387884 (and d!460977 d!460961)))

(assert (=> bs!387884 (= lambda!65773 lambda!65771)))

(declare-fun bs!387885 () Bool)

(assert (= bs!387885 (and d!460977 d!460923)))

(assert (=> bs!387885 (= lambda!65773 lambda!65765)))

(declare-fun bs!387886 () Bool)

(assert (= bs!387886 (and d!460977 d!460955)))

(assert (=> bs!387886 (= lambda!65773 lambda!65770)))

(declare-fun bs!387887 () Bool)

(assert (= bs!387887 (and d!460977 d!460823)))

(assert (=> bs!387887 (= lambda!65773 lambda!65746)))

(declare-fun bs!387888 () Bool)

(assert (= bs!387888 (and d!460977 d!460867)))

(assert (=> bs!387888 (= lambda!65773 lambda!65750)))

(assert (=> d!460977 (= (inv!22068 setElem!10703) (forall!3922 (exprs!1289 setElem!10703) lambda!65773))))

(declare-fun bs!387889 () Bool)

(assert (= bs!387889 d!460977))

(declare-fun m!1826163 () Bool)

(assert (=> bs!387889 m!1826163))

(assert (=> setNonEmpty!10702 d!460977))

(declare-fun bs!387890 () Bool)

(declare-fun d!460979 () Bool)

(assert (= bs!387890 (and d!460979 d!460835)))

(declare-fun lambda!65774 () Int)

(assert (=> bs!387890 (= lambda!65774 lambda!65749)))

(declare-fun bs!387891 () Bool)

(assert (= bs!387891 (and d!460979 d!460879)))

(assert (=> bs!387891 (= lambda!65774 lambda!65751)))

(declare-fun bs!387892 () Bool)

(assert (= bs!387892 (and d!460979 d!460915)))

(assert (=> bs!387892 (= lambda!65774 lambda!65763)))

(declare-fun bs!387893 () Bool)

(assert (= bs!387893 (and d!460979 d!460939)))

(assert (=> bs!387893 (= lambda!65774 lambda!65769)))

(declare-fun bs!387894 () Bool)

(assert (= bs!387894 (and d!460979 d!460929)))

(assert (=> bs!387894 (= lambda!65774 lambda!65767)))

(declare-fun bs!387895 () Bool)

(assert (= bs!387895 (and d!460979 d!460919)))

(assert (=> bs!387895 (= lambda!65774 lambda!65764)))

(declare-fun bs!387896 () Bool)

(assert (= bs!387896 (and d!460979 d!460829)))

(assert (=> bs!387896 (= lambda!65774 lambda!65748)))

(declare-fun bs!387897 () Bool)

(assert (= bs!387897 (and d!460979 d!460811)))

(assert (=> bs!387897 (= lambda!65774 lambda!65742)))

(declare-fun bs!387898 () Bool)

(assert (= bs!387898 (and d!460979 d!460887)))

(assert (=> bs!387898 (= lambda!65774 lambda!65755)))

(declare-fun bs!387899 () Bool)

(assert (= bs!387899 (and d!460979 d!460927)))

(assert (=> bs!387899 (= lambda!65774 lambda!65766)))

(declare-fun bs!387900 () Bool)

(assert (= bs!387900 (and d!460979 d!460913)))

(assert (=> bs!387900 (= lambda!65774 lambda!65762)))

(declare-fun bs!387901 () Bool)

(assert (= bs!387901 (and d!460979 d!460931)))

(assert (=> bs!387901 (= lambda!65774 lambda!65768)))

(declare-fun bs!387902 () Bool)

(assert (= bs!387902 (and d!460979 d!460827)))

(assert (=> bs!387902 (= lambda!65774 lambda!65747)))

(declare-fun bs!387903 () Bool)

(assert (= bs!387903 (and d!460979 d!460961)))

(assert (=> bs!387903 (= lambda!65774 lambda!65771)))

(declare-fun bs!387904 () Bool)

(assert (= bs!387904 (and d!460979 d!460923)))

(assert (=> bs!387904 (= lambda!65774 lambda!65765)))

(declare-fun bs!387905 () Bool)

(assert (= bs!387905 (and d!460979 d!460955)))

(assert (=> bs!387905 (= lambda!65774 lambda!65770)))

(declare-fun bs!387906 () Bool)

(assert (= bs!387906 (and d!460979 d!460823)))

(assert (=> bs!387906 (= lambda!65774 lambda!65746)))

(declare-fun bs!387907 () Bool)

(assert (= bs!387907 (and d!460979 d!460867)))

(assert (=> bs!387907 (= lambda!65774 lambda!65750)))

(declare-fun bs!387908 () Bool)

(assert (= bs!387908 (and d!460979 d!460977)))

(assert (=> bs!387908 (= lambda!65774 lambda!65773)))

(declare-fun bs!387909 () Bool)

(assert (= bs!387909 (and d!460979 d!460971)))

(assert (=> bs!387909 (= lambda!65774 lambda!65772)))

(assert (=> d!460979 (= (inv!22068 setElem!10713) (forall!3922 (exprs!1289 setElem!10713) lambda!65774))))

(declare-fun bs!387910 () Bool)

(assert (= bs!387910 d!460979))

(declare-fun m!1826165 () Bool)

(assert (=> bs!387910 m!1826165))

(assert (=> setNonEmpty!10714 d!460979))

(assert (=> b!1552956 d!460831))

(assert (=> b!1552956 d!460833))

(declare-fun d!460981 () Bool)

(assert (=> d!460981 (= (isEmpty!10103 (Some!3030 (tuple2!16237 (Token!5469 (apply!4107 (transformation!2943 rule!240) (_1!9447 (_1!9448 lt!537838))) rule!240 (size!13593 (_1!9447 (_1!9448 lt!537838))) lt!537839) (_2!9447 (_1!9448 lt!537838))))) (not ((_ is Some!3030) (Some!3030 (tuple2!16237 (Token!5469 (apply!4107 (transformation!2943 rule!240) (_1!9447 (_1!9448 lt!537838))) rule!240 (size!13593 (_1!9447 (_1!9448 lt!537838))) lt!537839) (_2!9447 (_1!9448 lt!537838)))))))))

(assert (=> d!460731 d!460981))

(declare-fun b!1553566 () Bool)

(declare-fun e!996601 () Bool)

(declare-fun e!996600 () Bool)

(assert (=> b!1553566 (= e!996601 e!996600)))

(declare-fun res!693825 () Bool)

(assert (=> b!1553566 (=> res!693825 e!996600)))

(declare-fun call!101936 () Bool)

(assert (=> b!1553566 (= res!693825 call!101936)))

(declare-fun b!1553567 () Bool)

(declare-fun e!996596 () Bool)

(assert (=> b!1553567 (= e!996596 (matchR!1876 (derivativeStep!1020 (regex!2943 rule!240) (head!3111 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846))))) (tail!2206 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846))))))))

(declare-fun b!1553568 () Bool)

(declare-fun res!693820 () Bool)

(declare-fun e!996602 () Bool)

(assert (=> b!1553568 (=> (not res!693820) (not e!996602))))

(assert (=> b!1553568 (= res!693820 (not call!101936))))

(declare-fun b!1553569 () Bool)

(declare-fun e!996599 () Bool)

(declare-fun e!996597 () Bool)

(assert (=> b!1553569 (= e!996599 e!996597)))

(declare-fun c!252582 () Bool)

(assert (=> b!1553569 (= c!252582 ((_ is EmptyLang!4271) (regex!2943 rule!240)))))

(declare-fun b!1553570 () Bool)

(assert (=> b!1553570 (= e!996602 (= (head!3111 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))) (c!252472 (regex!2943 rule!240))))))

(declare-fun b!1553571 () Bool)

(declare-fun res!693827 () Bool)

(assert (=> b!1553571 (=> (not res!693827) (not e!996602))))

(assert (=> b!1553571 (= res!693827 (isEmpty!10101 (tail!2206 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846))))))))

(declare-fun b!1553572 () Bool)

(declare-fun lt!538085 () Bool)

(assert (=> b!1553572 (= e!996599 (= lt!538085 call!101936))))

(declare-fun bm!101931 () Bool)

(assert (=> bm!101931 (= call!101936 (isEmpty!10101 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(declare-fun d!460983 () Bool)

(assert (=> d!460983 e!996599))

(declare-fun c!252583 () Bool)

(assert (=> d!460983 (= c!252583 ((_ is EmptyExpr!4271) (regex!2943 rule!240)))))

(assert (=> d!460983 (= lt!538085 e!996596)))

(declare-fun c!252581 () Bool)

(assert (=> d!460983 (= c!252581 (isEmpty!10101 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(assert (=> d!460983 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!460983 (= (matchR!1876 (regex!2943 rule!240) (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))) lt!538085)))

(declare-fun b!1553565 () Bool)

(declare-fun res!693821 () Bool)

(assert (=> b!1553565 (=> res!693821 e!996600)))

(assert (=> b!1553565 (= res!693821 (not (isEmpty!10101 (tail!2206 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))))

(declare-fun b!1553573 () Bool)

(declare-fun res!693822 () Bool)

(declare-fun e!996598 () Bool)

(assert (=> b!1553573 (=> res!693822 e!996598)))

(assert (=> b!1553573 (= res!693822 e!996602)))

(declare-fun res!693823 () Bool)

(assert (=> b!1553573 (=> (not res!693823) (not e!996602))))

(assert (=> b!1553573 (= res!693823 lt!538085)))

(declare-fun b!1553574 () Bool)

(assert (=> b!1553574 (= e!996597 (not lt!538085))))

(declare-fun b!1553575 () Bool)

(assert (=> b!1553575 (= e!996596 (nullable!1268 (regex!2943 rule!240)))))

(declare-fun b!1553576 () Bool)

(declare-fun res!693826 () Bool)

(assert (=> b!1553576 (=> res!693826 e!996598)))

(assert (=> b!1553576 (= res!693826 (not ((_ is ElementMatch!4271) (regex!2943 rule!240))))))

(assert (=> b!1553576 (= e!996597 e!996598)))

(declare-fun b!1553577 () Bool)

(assert (=> b!1553577 (= e!996598 e!996601)))

(declare-fun res!693824 () Bool)

(assert (=> b!1553577 (=> (not res!693824) (not e!996601))))

(assert (=> b!1553577 (= res!693824 (not lt!538085))))

(declare-fun b!1553578 () Bool)

(assert (=> b!1553578 (= e!996600 (not (= (head!3111 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))) (c!252472 (regex!2943 rule!240)))))))

(assert (= (and d!460983 c!252581) b!1553575))

(assert (= (and d!460983 (not c!252581)) b!1553567))

(assert (= (and d!460983 c!252583) b!1553572))

(assert (= (and d!460983 (not c!252583)) b!1553569))

(assert (= (and b!1553569 c!252582) b!1553574))

(assert (= (and b!1553569 (not c!252582)) b!1553576))

(assert (= (and b!1553576 (not res!693826)) b!1553573))

(assert (= (and b!1553573 res!693823) b!1553568))

(assert (= (and b!1553568 res!693820) b!1553571))

(assert (= (and b!1553571 res!693827) b!1553570))

(assert (= (and b!1553573 (not res!693822)) b!1553577))

(assert (= (and b!1553577 res!693824) b!1553566))

(assert (= (and b!1553566 (not res!693825)) b!1553565))

(assert (= (and b!1553565 (not res!693821)) b!1553578))

(assert (= (or b!1553572 b!1553566 b!1553568) bm!101931))

(assert (=> bm!101931 m!1825424))

(assert (=> d!460983 m!1825424))

(assert (=> d!460983 m!1825378))

(declare-fun m!1826167 () Bool)

(assert (=> b!1553565 m!1826167))

(assert (=> b!1553565 m!1826167))

(declare-fun m!1826169 () Bool)

(assert (=> b!1553565 m!1826169))

(declare-fun m!1826171 () Bool)

(assert (=> b!1553578 m!1826171))

(assert (=> b!1553571 m!1826167))

(assert (=> b!1553571 m!1826167))

(assert (=> b!1553571 m!1826169))

(assert (=> b!1553570 m!1826171))

(assert (=> b!1553567 m!1826171))

(assert (=> b!1553567 m!1826171))

(declare-fun m!1826173 () Bool)

(assert (=> b!1553567 m!1826173))

(assert (=> b!1553567 m!1826167))

(assert (=> b!1553567 m!1826173))

(assert (=> b!1553567 m!1826167))

(declare-fun m!1826175 () Bool)

(assert (=> b!1553567 m!1826175))

(assert (=> b!1553575 m!1825386))

(assert (=> b!1552922 d!460983))

(assert (=> b!1552922 d!460689))

(assert (=> b!1552922 d!460699))

(assert (=> b!1552922 d!460693))

(declare-fun b!1553597 () Bool)

(declare-fun e!996617 () List!16859)

(assert (=> b!1553597 (= e!996617 Nil!16791)))

(declare-fun b!1553598 () Bool)

(declare-fun e!996614 () List!16859)

(assert (=> b!1553598 (= e!996617 e!996614)))

(declare-fun c!252592 () Bool)

(assert (=> b!1553598 (= c!252592 (<= (- (size!13594 (list!6486 totalInput!568)) (size!13594 lt!537846)) 0))))

(declare-fun b!1553599 () Bool)

(declare-fun e!996613 () Int)

(declare-fun call!101939 () Int)

(assert (=> b!1553599 (= e!996613 call!101939)))

(declare-fun b!1553600 () Bool)

(assert (=> b!1553600 (= e!996614 (drop!783 (t!141282 (list!6486 totalInput!568)) (- (- (size!13594 (list!6486 totalInput!568)) (size!13594 lt!537846)) 1)))))

(declare-fun b!1553601 () Bool)

(assert (=> b!1553601 (= e!996614 (list!6486 totalInput!568))))

(declare-fun b!1553602 () Bool)

(declare-fun e!996616 () Int)

(assert (=> b!1553602 (= e!996613 e!996616)))

(declare-fun c!252593 () Bool)

(assert (=> b!1553602 (= c!252593 (>= (- (size!13594 (list!6486 totalInput!568)) (size!13594 lt!537846)) call!101939))))

(declare-fun bm!101934 () Bool)

(assert (=> bm!101934 (= call!101939 (size!13594 (list!6486 totalInput!568)))))

(declare-fun b!1553604 () Bool)

(assert (=> b!1553604 (= e!996616 (- call!101939 (- (size!13594 (list!6486 totalInput!568)) (size!13594 lt!537846))))))

(declare-fun b!1553605 () Bool)

(declare-fun e!996615 () Bool)

(declare-fun lt!538088 () List!16859)

(assert (=> b!1553605 (= e!996615 (= (size!13594 lt!538088) e!996613))))

(declare-fun c!252595 () Bool)

(assert (=> b!1553605 (= c!252595 (<= (- (size!13594 (list!6486 totalInput!568)) (size!13594 lt!537846)) 0))))

(declare-fun b!1553603 () Bool)

(assert (=> b!1553603 (= e!996616 0)))

(declare-fun d!460985 () Bool)

(assert (=> d!460985 e!996615))

(declare-fun res!693830 () Bool)

(assert (=> d!460985 (=> (not res!693830) (not e!996615))))

(assert (=> d!460985 (= res!693830 (= ((_ map implies) (content!2341 lt!538088) (content!2341 (list!6486 totalInput!568))) ((as const (InoxSet C!8720)) true)))))

(assert (=> d!460985 (= lt!538088 e!996617)))

(declare-fun c!252594 () Bool)

(assert (=> d!460985 (= c!252594 ((_ is Nil!16791) (list!6486 totalInput!568)))))

(assert (=> d!460985 (= (drop!783 (list!6486 totalInput!568) (- (size!13594 (list!6486 totalInput!568)) (size!13594 lt!537846))) lt!538088)))

(assert (= (and d!460985 c!252594) b!1553597))

(assert (= (and d!460985 (not c!252594)) b!1553598))

(assert (= (and b!1553598 c!252592) b!1553601))

(assert (= (and b!1553598 (not c!252592)) b!1553600))

(assert (= (and d!460985 res!693830) b!1553605))

(assert (= (and b!1553605 c!252595) b!1553599))

(assert (= (and b!1553605 (not c!252595)) b!1553602))

(assert (= (and b!1553602 c!252593) b!1553603))

(assert (= (and b!1553602 (not c!252593)) b!1553604))

(assert (= (or b!1553599 b!1553602 b!1553604) bm!101934))

(declare-fun m!1826177 () Bool)

(assert (=> b!1553600 m!1826177))

(assert (=> bm!101934 m!1825346))

(assert (=> bm!101934 m!1825432))

(declare-fun m!1826179 () Bool)

(assert (=> b!1553605 m!1826179))

(declare-fun m!1826181 () Bool)

(assert (=> d!460985 m!1826181))

(assert (=> d!460985 m!1825346))

(declare-fun m!1826183 () Bool)

(assert (=> d!460985 m!1826183))

(assert (=> d!460701 d!460985))

(assert (=> d!460701 d!460945))

(assert (=> d!460701 d!460693))

(declare-fun d!460987 () Bool)

(assert (=> d!460987 (= (isEmpty!10102 (maxPrefixOneRule!700 thiss!16438 rule!240 lt!537846)) (not ((_ is Some!3029) (maxPrefixOneRule!700 thiss!16438 rule!240 lt!537846))))))

(assert (=> d!460737 d!460987))

(declare-fun bs!387911 () Bool)

(declare-fun d!460989 () Bool)

(assert (= bs!387911 (and d!460989 d!460835)))

(declare-fun lambda!65775 () Int)

(assert (=> bs!387911 (= lambda!65775 lambda!65749)))

(declare-fun bs!387912 () Bool)

(assert (= bs!387912 (and d!460989 d!460979)))

(assert (=> bs!387912 (= lambda!65775 lambda!65774)))

(declare-fun bs!387913 () Bool)

(assert (= bs!387913 (and d!460989 d!460879)))

(assert (=> bs!387913 (= lambda!65775 lambda!65751)))

(declare-fun bs!387914 () Bool)

(assert (= bs!387914 (and d!460989 d!460915)))

(assert (=> bs!387914 (= lambda!65775 lambda!65763)))

(declare-fun bs!387915 () Bool)

(assert (= bs!387915 (and d!460989 d!460939)))

(assert (=> bs!387915 (= lambda!65775 lambda!65769)))

(declare-fun bs!387916 () Bool)

(assert (= bs!387916 (and d!460989 d!460929)))

(assert (=> bs!387916 (= lambda!65775 lambda!65767)))

(declare-fun bs!387917 () Bool)

(assert (= bs!387917 (and d!460989 d!460919)))

(assert (=> bs!387917 (= lambda!65775 lambda!65764)))

(declare-fun bs!387918 () Bool)

(assert (= bs!387918 (and d!460989 d!460829)))

(assert (=> bs!387918 (= lambda!65775 lambda!65748)))

(declare-fun bs!387919 () Bool)

(assert (= bs!387919 (and d!460989 d!460811)))

(assert (=> bs!387919 (= lambda!65775 lambda!65742)))

(declare-fun bs!387920 () Bool)

(assert (= bs!387920 (and d!460989 d!460887)))

(assert (=> bs!387920 (= lambda!65775 lambda!65755)))

(declare-fun bs!387921 () Bool)

(assert (= bs!387921 (and d!460989 d!460927)))

(assert (=> bs!387921 (= lambda!65775 lambda!65766)))

(declare-fun bs!387922 () Bool)

(assert (= bs!387922 (and d!460989 d!460913)))

(assert (=> bs!387922 (= lambda!65775 lambda!65762)))

(declare-fun bs!387923 () Bool)

(assert (= bs!387923 (and d!460989 d!460931)))

(assert (=> bs!387923 (= lambda!65775 lambda!65768)))

(declare-fun bs!387924 () Bool)

(assert (= bs!387924 (and d!460989 d!460827)))

(assert (=> bs!387924 (= lambda!65775 lambda!65747)))

(declare-fun bs!387925 () Bool)

(assert (= bs!387925 (and d!460989 d!460961)))

(assert (=> bs!387925 (= lambda!65775 lambda!65771)))

(declare-fun bs!387926 () Bool)

(assert (= bs!387926 (and d!460989 d!460923)))

(assert (=> bs!387926 (= lambda!65775 lambda!65765)))

(declare-fun bs!387927 () Bool)

(assert (= bs!387927 (and d!460989 d!460955)))

(assert (=> bs!387927 (= lambda!65775 lambda!65770)))

(declare-fun bs!387928 () Bool)

(assert (= bs!387928 (and d!460989 d!460823)))

(assert (=> bs!387928 (= lambda!65775 lambda!65746)))

(declare-fun bs!387929 () Bool)

(assert (= bs!387929 (and d!460989 d!460867)))

(assert (=> bs!387929 (= lambda!65775 lambda!65750)))

(declare-fun bs!387930 () Bool)

(assert (= bs!387930 (and d!460989 d!460977)))

(assert (=> bs!387930 (= lambda!65775 lambda!65773)))

(declare-fun bs!387931 () Bool)

(assert (= bs!387931 (and d!460989 d!460971)))

(assert (=> bs!387931 (= lambda!65775 lambda!65772)))

(assert (=> d!460989 (= (inv!22068 (_1!9440 (_1!9441 (h!22194 mapDefault!8284)))) (forall!3922 (exprs!1289 (_1!9440 (_1!9441 (h!22194 mapDefault!8284)))) lambda!65775))))

(declare-fun bs!387932 () Bool)

(assert (= bs!387932 d!460989))

(declare-fun m!1826185 () Bool)

(assert (=> bs!387932 m!1826185))

(assert (=> b!1553144 d!460989))

(declare-fun b!1553608 () Bool)

(declare-fun e!996620 () Bool)

(assert (=> b!1553608 (= e!996620 (isPrefix!1258 (tail!2206 Nil!16791) (tail!2206 (++!4412 Nil!16791 lt!537846))))))

(declare-fun b!1553606 () Bool)

(declare-fun e!996619 () Bool)

(assert (=> b!1553606 (= e!996619 e!996620)))

(declare-fun res!693834 () Bool)

(assert (=> b!1553606 (=> (not res!693834) (not e!996620))))

(assert (=> b!1553606 (= res!693834 (not ((_ is Nil!16791) (++!4412 Nil!16791 lt!537846))))))

(declare-fun b!1553607 () Bool)

(declare-fun res!693833 () Bool)

(assert (=> b!1553607 (=> (not res!693833) (not e!996620))))

(assert (=> b!1553607 (= res!693833 (= (head!3111 Nil!16791) (head!3111 (++!4412 Nil!16791 lt!537846))))))

(declare-fun d!460991 () Bool)

(declare-fun e!996618 () Bool)

(assert (=> d!460991 e!996618))

(declare-fun res!693831 () Bool)

(assert (=> d!460991 (=> res!693831 e!996618)))

(declare-fun lt!538089 () Bool)

(assert (=> d!460991 (= res!693831 (not lt!538089))))

(assert (=> d!460991 (= lt!538089 e!996619)))

(declare-fun res!693832 () Bool)

(assert (=> d!460991 (=> res!693832 e!996619)))

(assert (=> d!460991 (= res!693832 ((_ is Nil!16791) Nil!16791))))

(assert (=> d!460991 (= (isPrefix!1258 Nil!16791 (++!4412 Nil!16791 lt!537846)) lt!538089)))

(declare-fun b!1553609 () Bool)

(assert (=> b!1553609 (= e!996618 (>= (size!13594 (++!4412 Nil!16791 lt!537846)) (size!13594 Nil!16791)))))

(assert (= (and d!460991 (not res!693832)) b!1553606))

(assert (= (and b!1553606 res!693834) b!1553607))

(assert (= (and b!1553607 res!693833) b!1553608))

(assert (= (and d!460991 (not res!693831)) b!1553609))

(declare-fun m!1826187 () Bool)

(assert (=> b!1553608 m!1826187))

(assert (=> b!1553608 m!1825368))

(declare-fun m!1826189 () Bool)

(assert (=> b!1553608 m!1826189))

(assert (=> b!1553608 m!1826187))

(assert (=> b!1553608 m!1826189))

(declare-fun m!1826191 () Bool)

(assert (=> b!1553608 m!1826191))

(declare-fun m!1826193 () Bool)

(assert (=> b!1553607 m!1826193))

(assert (=> b!1553607 m!1825368))

(declare-fun m!1826195 () Bool)

(assert (=> b!1553607 m!1826195))

(assert (=> b!1553609 m!1825368))

(declare-fun m!1826197 () Bool)

(assert (=> b!1553609 m!1826197))

(assert (=> b!1553609 m!1825338))

(assert (=> d!460689 d!460991))

(declare-fun b!1553611 () Bool)

(declare-fun e!996622 () List!16859)

(assert (=> b!1553611 (= e!996622 (Cons!16791 (h!22192 (_1!9450 lt!537928)) (++!4412 (t!141282 (_1!9450 lt!537928)) (_2!9450 lt!537928))))))

(declare-fun b!1553610 () Bool)

(assert (=> b!1553610 (= e!996622 (_2!9450 lt!537928))))

(declare-fun b!1553613 () Bool)

(declare-fun e!996621 () Bool)

(declare-fun lt!538090 () List!16859)

(assert (=> b!1553613 (= e!996621 (or (not (= (_2!9450 lt!537928) Nil!16791)) (= lt!538090 (_1!9450 lt!537928))))))

(declare-fun d!460993 () Bool)

(assert (=> d!460993 e!996621))

(declare-fun res!693836 () Bool)

(assert (=> d!460993 (=> (not res!693836) (not e!996621))))

(assert (=> d!460993 (= res!693836 (= (content!2341 lt!538090) ((_ map or) (content!2341 (_1!9450 lt!537928)) (content!2341 (_2!9450 lt!537928)))))))

(assert (=> d!460993 (= lt!538090 e!996622)))

(declare-fun c!252596 () Bool)

(assert (=> d!460993 (= c!252596 ((_ is Nil!16791) (_1!9450 lt!537928)))))

(assert (=> d!460993 (= (++!4412 (_1!9450 lt!537928) (_2!9450 lt!537928)) lt!538090)))

(declare-fun b!1553612 () Bool)

(declare-fun res!693835 () Bool)

(assert (=> b!1553612 (=> (not res!693835) (not e!996621))))

(assert (=> b!1553612 (= res!693835 (= (size!13594 lt!538090) (+ (size!13594 (_1!9450 lt!537928)) (size!13594 (_2!9450 lt!537928)))))))

(assert (= (and d!460993 c!252596) b!1553610))

(assert (= (and d!460993 (not c!252596)) b!1553611))

(assert (= (and d!460993 res!693836) b!1553612))

(assert (= (and b!1553612 res!693835) b!1553613))

(declare-fun m!1826199 () Bool)

(assert (=> b!1553611 m!1826199))

(declare-fun m!1826201 () Bool)

(assert (=> d!460993 m!1826201))

(declare-fun m!1826203 () Bool)

(assert (=> d!460993 m!1826203))

(declare-fun m!1826205 () Bool)

(assert (=> d!460993 m!1826205))

(declare-fun m!1826207 () Bool)

(assert (=> b!1553612 m!1826207))

(assert (=> b!1553612 m!1825388))

(declare-fun m!1826209 () Bool)

(assert (=> b!1553612 m!1826209))

(assert (=> d!460689 d!460993))

(declare-fun d!460995 () Bool)

(declare-fun lostCauseFct!149 (Regex!4271) Bool)

(assert (=> d!460995 (= (lostCause!386 (regex!2943 rule!240)) (lostCauseFct!149 (regex!2943 rule!240)))))

(declare-fun bs!387933 () Bool)

(assert (= bs!387933 d!460995))

(declare-fun m!1826211 () Bool)

(assert (=> bs!387933 m!1826211))

(assert (=> d!460689 d!460995))

(declare-fun d!460997 () Bool)

(assert (=> d!460997 (isPrefix!1258 Nil!16791 (++!4412 Nil!16791 lt!537846))))

(declare-fun lt!538093 () Unit!26040)

(declare-fun choose!9267 (List!16859 List!16859) Unit!26040)

(assert (=> d!460997 (= lt!538093 (choose!9267 Nil!16791 lt!537846))))

(assert (=> d!460997 (= (lemmaConcatTwoListThenFirstIsPrefix!783 Nil!16791 lt!537846) lt!538093)))

(declare-fun bs!387934 () Bool)

(assert (= bs!387934 d!460997))

(assert (=> bs!387934 m!1825368))

(assert (=> bs!387934 m!1825368))

(assert (=> bs!387934 m!1825370))

(declare-fun m!1826213 () Bool)

(assert (=> bs!387934 m!1826213))

(assert (=> d!460689 d!460997))

(declare-fun d!460999 () Bool)

(assert (=> d!460999 (= lt!537846 lt!537906)))

(declare-fun lt!538096 () Unit!26040)

(declare-fun choose!9268 (List!16859 List!16859 List!16859 List!16859 List!16859) Unit!26040)

(assert (=> d!460999 (= lt!538096 (choose!9268 Nil!16791 lt!537846 Nil!16791 lt!537906 lt!537846))))

(assert (=> d!460999 (isPrefix!1258 Nil!16791 lt!537846)))

(assert (=> d!460999 (= (lemmaSamePrefixThenSameSuffix!620 Nil!16791 lt!537846 Nil!16791 lt!537906 lt!537846) lt!538096)))

(declare-fun bs!387935 () Bool)

(assert (= bs!387935 d!460999))

(declare-fun m!1826215 () Bool)

(assert (=> bs!387935 m!1826215))

(assert (=> bs!387935 m!1825852))

(assert (=> d!460689 d!460999))

(declare-fun b!1553615 () Bool)

(declare-fun e!996624 () List!16859)

(assert (=> b!1553615 (= e!996624 (Cons!16791 (h!22192 Nil!16791) (++!4412 (t!141282 Nil!16791) lt!537846)))))

(declare-fun b!1553614 () Bool)

(assert (=> b!1553614 (= e!996624 lt!537846)))

(declare-fun b!1553617 () Bool)

(declare-fun e!996623 () Bool)

(declare-fun lt!538097 () List!16859)

(assert (=> b!1553617 (= e!996623 (or (not (= lt!537846 Nil!16791)) (= lt!538097 Nil!16791)))))

(declare-fun d!461001 () Bool)

(assert (=> d!461001 e!996623))

(declare-fun res!693838 () Bool)

(assert (=> d!461001 (=> (not res!693838) (not e!996623))))

(assert (=> d!461001 (= res!693838 (= (content!2341 lt!538097) ((_ map or) (content!2341 Nil!16791) (content!2341 lt!537846))))))

(assert (=> d!461001 (= lt!538097 e!996624)))

(declare-fun c!252597 () Bool)

(assert (=> d!461001 (= c!252597 ((_ is Nil!16791) Nil!16791))))

(assert (=> d!461001 (= (++!4412 Nil!16791 lt!537846) lt!538097)))

(declare-fun b!1553616 () Bool)

(declare-fun res!693837 () Bool)

(assert (=> b!1553616 (=> (not res!693837) (not e!996623))))

(assert (=> b!1553616 (= res!693837 (= (size!13594 lt!538097) (+ (size!13594 Nil!16791) (size!13594 lt!537846))))))

(assert (= (and d!461001 c!252597) b!1553614))

(assert (= (and d!461001 (not c!252597)) b!1553615))

(assert (= (and d!461001 res!693838) b!1553616))

(assert (= (and b!1553616 res!693837) b!1553617))

(declare-fun m!1826217 () Bool)

(assert (=> b!1553615 m!1826217))

(declare-fun m!1826219 () Bool)

(assert (=> d!461001 m!1826219))

(assert (=> d!461001 m!1825872))

(declare-fun m!1826221 () Bool)

(assert (=> d!461001 m!1826221))

(declare-fun m!1826223 () Bool)

(assert (=> b!1553616 m!1826223))

(assert (=> b!1553616 m!1825338))

(assert (=> b!1553616 m!1825330))

(assert (=> d!460689 d!461001))

(assert (=> d!460689 d!460783))

(assert (=> d!460689 d!460853))

(assert (=> d!460685 d!460691))

(declare-fun d!461003 () Bool)

(declare-fun lt!538098 () Int)

(assert (=> d!461003 (>= lt!538098 0)))

(declare-fun e!996625 () Int)

(assert (=> d!461003 (= lt!538098 e!996625)))

(declare-fun c!252598 () Bool)

(assert (=> d!461003 (= c!252598 ((_ is Nil!16791) (_1!9450 lt!537928)))))

(assert (=> d!461003 (= (size!13594 (_1!9450 lt!537928)) lt!538098)))

(declare-fun b!1553618 () Bool)

(assert (=> b!1553618 (= e!996625 0)))

(declare-fun b!1553619 () Bool)

(assert (=> b!1553619 (= e!996625 (+ 1 (size!13594 (t!141282 (_1!9450 lt!537928)))))))

(assert (= (and d!461003 c!252598) b!1553618))

(assert (= (and d!461003 (not c!252598)) b!1553619))

(declare-fun m!1826225 () Bool)

(assert (=> b!1553619 m!1826225))

(assert (=> b!1552897 d!461003))

(assert (=> b!1552897 d!460699))

(declare-fun d!461005 () Bool)

(declare-fun e!996628 () Bool)

(assert (=> d!461005 e!996628))

(declare-fun res!693841 () Bool)

(assert (=> d!461005 (=> (not res!693841) (not e!996628))))

(declare-fun lt!538101 () BalanceConc!11064)

(assert (=> d!461005 (= res!693841 (= (list!6486 lt!538101) lt!537839))))

(declare-fun fromList!352 (List!16859) Conc!5561)

(assert (=> d!461005 (= lt!538101 (BalanceConc!11065 (fromList!352 lt!537839)))))

(assert (=> d!461005 (= (fromListB!759 lt!537839) lt!538101)))

(declare-fun b!1553622 () Bool)

(assert (=> b!1553622 (= e!996628 (isBalanced!1641 (fromList!352 lt!537839)))))

(assert (= (and d!461005 res!693841) b!1553622))

(declare-fun m!1826227 () Bool)

(assert (=> d!461005 m!1826227))

(declare-fun m!1826229 () Bool)

(assert (=> d!461005 m!1826229))

(assert (=> b!1553622 m!1826229))

(assert (=> b!1553622 m!1826229))

(declare-fun m!1826231 () Bool)

(assert (=> b!1553622 m!1826231))

(assert (=> d!460729 d!461005))

(assert (=> b!1553011 d!460983))

(assert (=> b!1553011 d!460689))

(assert (=> b!1553011 d!460699))

(assert (=> b!1553011 d!460693))

(declare-fun d!461007 () Bool)

(assert (=> d!461007 (= (valid!1433 (_4!443 lt!537971)) (validCacheMapFurthestNullable!72 (cache!2111 (_4!443 lt!537971)) (totalInput!2450 (_4!443 lt!537971))))))

(declare-fun bs!387936 () Bool)

(assert (= bs!387936 d!461007))

(declare-fun m!1826233 () Bool)

(assert (=> bs!387936 m!1826233))

(assert (=> b!1553027 d!461007))

(declare-fun d!461009 () Bool)

(assert (=> d!461009 (= (inv!22060 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))) (isBalanced!1641 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))))

(declare-fun bs!387937 () Bool)

(assert (= bs!387937 d!461009))

(declare-fun m!1826235 () Bool)

(assert (=> bs!387937 m!1826235))

(assert (=> tb!87285 d!461009))

(declare-fun d!461011 () Bool)

(assert (not d!461011))

(assert (=> b!1552924 d!461011))

(assert (=> d!460749 d!460801))

(declare-fun b!1553623 () Bool)

(declare-fun e!996630 () Bool)

(assert (=> b!1553623 (= e!996630 (inv!16 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))

(declare-fun b!1553624 () Bool)

(declare-fun e!996631 () Bool)

(assert (=> b!1553624 (= e!996631 (inv!17 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))

(declare-fun b!1553625 () Bool)

(declare-fun res!693842 () Bool)

(declare-fun e!996629 () Bool)

(assert (=> b!1553625 (=> res!693842 e!996629)))

(assert (=> b!1553625 (= res!693842 (not ((_ is IntegerValue!9101) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))))))

(assert (=> b!1553625 (= e!996631 e!996629)))

(declare-fun d!461013 () Bool)

(declare-fun c!252601 () Bool)

(assert (=> d!461013 (= c!252601 ((_ is IntegerValue!9099) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))

(assert (=> d!461013 (= (inv!21 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))) e!996630)))

(declare-fun b!1553626 () Bool)

(assert (=> b!1553626 (= e!996629 (inv!15 (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))

(declare-fun b!1553627 () Bool)

(assert (=> b!1553627 (= e!996630 e!996631)))

(declare-fun c!252600 () Bool)

(assert (=> b!1553627 (= c!252600 ((_ is IntegerValue!9100) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))))

(assert (= (and d!461013 c!252601) b!1553623))

(assert (= (and d!461013 (not c!252601)) b!1553627))

(assert (= (and b!1553627 c!252600) b!1553624))

(assert (= (and b!1553627 (not c!252600)) b!1553625))

(assert (= (and b!1553625 (not res!693842)) b!1553626))

(declare-fun m!1826237 () Bool)

(assert (=> b!1553623 m!1826237))

(declare-fun m!1826239 () Bool)

(assert (=> b!1553624 m!1826239))

(declare-fun m!1826241 () Bool)

(assert (=> b!1553626 m!1826241))

(assert (=> tb!87287 d!461013))

(declare-fun d!461015 () Bool)

(assert (=> d!461015 (= (list!6486 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))) (list!6487 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))))))

(declare-fun bs!387938 () Bool)

(assert (= bs!387938 d!461015))

(declare-fun m!1826243 () Bool)

(assert (=> bs!387938 m!1826243))

(assert (=> bs!387650 d!461015))

(assert (=> bs!387650 d!460735))

(declare-fun bs!387939 () Bool)

(declare-fun d!461017 () Bool)

(assert (= bs!387939 (and d!461017 d!460979)))

(declare-fun lambda!65776 () Int)

(assert (=> bs!387939 (= lambda!65776 lambda!65774)))

(declare-fun bs!387940 () Bool)

(assert (= bs!387940 (and d!461017 d!460879)))

(assert (=> bs!387940 (= lambda!65776 lambda!65751)))

(declare-fun bs!387941 () Bool)

(assert (= bs!387941 (and d!461017 d!460915)))

(assert (=> bs!387941 (= lambda!65776 lambda!65763)))

(declare-fun bs!387942 () Bool)

(assert (= bs!387942 (and d!461017 d!460939)))

(assert (=> bs!387942 (= lambda!65776 lambda!65769)))

(declare-fun bs!387943 () Bool)

(assert (= bs!387943 (and d!461017 d!460929)))

(assert (=> bs!387943 (= lambda!65776 lambda!65767)))

(declare-fun bs!387944 () Bool)

(assert (= bs!387944 (and d!461017 d!460919)))

(assert (=> bs!387944 (= lambda!65776 lambda!65764)))

(declare-fun bs!387945 () Bool)

(assert (= bs!387945 (and d!461017 d!460829)))

(assert (=> bs!387945 (= lambda!65776 lambda!65748)))

(declare-fun bs!387946 () Bool)

(assert (= bs!387946 (and d!461017 d!460811)))

(assert (=> bs!387946 (= lambda!65776 lambda!65742)))

(declare-fun bs!387947 () Bool)

(assert (= bs!387947 (and d!461017 d!460835)))

(assert (=> bs!387947 (= lambda!65776 lambda!65749)))

(declare-fun bs!387948 () Bool)

(assert (= bs!387948 (and d!461017 d!460989)))

(assert (=> bs!387948 (= lambda!65776 lambda!65775)))

(declare-fun bs!387949 () Bool)

(assert (= bs!387949 (and d!461017 d!460887)))

(assert (=> bs!387949 (= lambda!65776 lambda!65755)))

(declare-fun bs!387950 () Bool)

(assert (= bs!387950 (and d!461017 d!460927)))

(assert (=> bs!387950 (= lambda!65776 lambda!65766)))

(declare-fun bs!387951 () Bool)

(assert (= bs!387951 (and d!461017 d!460913)))

(assert (=> bs!387951 (= lambda!65776 lambda!65762)))

(declare-fun bs!387952 () Bool)

(assert (= bs!387952 (and d!461017 d!460931)))

(assert (=> bs!387952 (= lambda!65776 lambda!65768)))

(declare-fun bs!387953 () Bool)

(assert (= bs!387953 (and d!461017 d!460827)))

(assert (=> bs!387953 (= lambda!65776 lambda!65747)))

(declare-fun bs!387954 () Bool)

(assert (= bs!387954 (and d!461017 d!460961)))

(assert (=> bs!387954 (= lambda!65776 lambda!65771)))

(declare-fun bs!387955 () Bool)

(assert (= bs!387955 (and d!461017 d!460923)))

(assert (=> bs!387955 (= lambda!65776 lambda!65765)))

(declare-fun bs!387956 () Bool)

(assert (= bs!387956 (and d!461017 d!460955)))

(assert (=> bs!387956 (= lambda!65776 lambda!65770)))

(declare-fun bs!387957 () Bool)

(assert (= bs!387957 (and d!461017 d!460823)))

(assert (=> bs!387957 (= lambda!65776 lambda!65746)))

(declare-fun bs!387958 () Bool)

(assert (= bs!387958 (and d!461017 d!460867)))

(assert (=> bs!387958 (= lambda!65776 lambda!65750)))

(declare-fun bs!387959 () Bool)

(assert (= bs!387959 (and d!461017 d!460977)))

(assert (=> bs!387959 (= lambda!65776 lambda!65773)))

(declare-fun bs!387960 () Bool)

(assert (= bs!387960 (and d!461017 d!460971)))

(assert (=> bs!387960 (= lambda!65776 lambda!65772)))

(assert (=> d!461017 (= (inv!22068 (_1!9440 (_1!9441 (h!22194 mapValue!8285)))) (forall!3922 (exprs!1289 (_1!9440 (_1!9441 (h!22194 mapValue!8285)))) lambda!65776))))

(declare-fun bs!387961 () Bool)

(assert (= bs!387961 d!461017))

(declare-fun m!1826245 () Bool)

(assert (=> bs!387961 m!1826245))

(assert (=> b!1553096 d!461017))

(declare-fun d!461019 () Bool)

(assert (=> d!461019 (= lt!537846 Nil!16791)))

(declare-fun lt!538104 () Unit!26040)

(declare-fun choose!9269 (List!16859 List!16859 List!16859) Unit!26040)

(assert (=> d!461019 (= lt!538104 (choose!9269 lt!537846 Nil!16791 lt!537846))))

(assert (=> d!461019 (isPrefix!1258 lt!537846 lt!537846)))

(assert (=> d!461019 (= (lemmaIsPrefixSameLengthThenSameList!122 lt!537846 Nil!16791 lt!537846) lt!538104)))

(declare-fun bs!387962 () Bool)

(assert (= bs!387962 d!461019))

(declare-fun m!1826247 () Bool)

(assert (=> bs!387962 m!1826247))

(assert (=> bs!387962 m!1825390))

(assert (=> bm!101895 d!461019))

(assert (=> b!1553007 d!460805))

(declare-fun d!461021 () Bool)

(declare-fun lt!538105 () Int)

(assert (=> d!461021 (>= lt!538105 0)))

(declare-fun e!996632 () Int)

(assert (=> d!461021 (= lt!538105 e!996632)))

(declare-fun c!252602 () Bool)

(assert (=> d!461021 (= c!252602 ((_ is Nil!16791) (originalCharacters!3765 (_1!9446 (get!4843 lt!537954)))))))

(assert (=> d!461021 (= (size!13594 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954)))) lt!538105)))

(declare-fun b!1553628 () Bool)

(assert (=> b!1553628 (= e!996632 0)))

(declare-fun b!1553629 () Bool)

(assert (=> b!1553629 (= e!996632 (+ 1 (size!13594 (t!141282 (originalCharacters!3765 (_1!9446 (get!4843 lt!537954)))))))))

(assert (= (and d!461021 c!252602) b!1553628))

(assert (= (and d!461021 (not c!252602)) b!1553629))

(declare-fun m!1826249 () Bool)

(assert (=> b!1553629 m!1826249))

(assert (=> b!1553007 d!461021))

(declare-fun d!461023 () Bool)

(declare-fun lt!538106 () Regex!4271)

(assert (=> d!461023 (validRegex!1709 lt!538106)))

(declare-fun e!996633 () Regex!4271)

(assert (=> d!461023 (= lt!538106 e!996633)))

(declare-fun c!252607 () Bool)

(assert (=> d!461023 (= c!252607 (or ((_ is EmptyExpr!4271) (regex!2943 rule!240)) ((_ is EmptyLang!4271) (regex!2943 rule!240))))))

(assert (=> d!461023 (validRegex!1709 (regex!2943 rule!240))))

(assert (=> d!461023 (= (derivativeStep!1020 (regex!2943 rule!240) call!101898) lt!538106)))

(declare-fun b!1553630 () Bool)

(assert (=> b!1553630 (= e!996633 EmptyLang!4271)))

(declare-fun b!1553631 () Bool)

(declare-fun e!996634 () Regex!4271)

(assert (=> b!1553631 (= e!996633 e!996634)))

(declare-fun c!252603 () Bool)

(assert (=> b!1553631 (= c!252603 ((_ is ElementMatch!4271) (regex!2943 rule!240)))))

(declare-fun bm!101935 () Bool)

(declare-fun call!101940 () Regex!4271)

(declare-fun call!101942 () Regex!4271)

(assert (=> bm!101935 (= call!101940 call!101942)))

(declare-fun b!1553632 () Bool)

(declare-fun e!996635 () Regex!4271)

(declare-fun e!996636 () Regex!4271)

(assert (=> b!1553632 (= e!996635 e!996636)))

(declare-fun c!252604 () Bool)

(assert (=> b!1553632 (= c!252604 ((_ is Star!4271) (regex!2943 rule!240)))))

(declare-fun b!1553633 () Bool)

(declare-fun c!252605 () Bool)

(assert (=> b!1553633 (= c!252605 (nullable!1268 (regOne!9054 (regex!2943 rule!240))))))

(declare-fun e!996637 () Regex!4271)

(assert (=> b!1553633 (= e!996636 e!996637)))

(declare-fun b!1553634 () Bool)

(declare-fun call!101943 () Regex!4271)

(assert (=> b!1553634 (= e!996637 (Union!4271 (Concat!7305 call!101940 (regTwo!9054 (regex!2943 rule!240))) call!101943))))

(declare-fun bm!101936 () Bool)

(declare-fun call!101941 () Regex!4271)

(declare-fun c!252606 () Bool)

(assert (=> bm!101936 (= call!101941 (derivativeStep!1020 (ite c!252606 (regTwo!9055 (regex!2943 rule!240)) (ite c!252604 (reg!4600 (regex!2943 rule!240)) (regOne!9054 (regex!2943 rule!240)))) call!101898))))

(declare-fun b!1553635 () Bool)

(assert (=> b!1553635 (= c!252606 ((_ is Union!4271) (regex!2943 rule!240)))))

(assert (=> b!1553635 (= e!996634 e!996635)))

(declare-fun bm!101937 () Bool)

(assert (=> bm!101937 (= call!101942 call!101941)))

(declare-fun bm!101938 () Bool)

(assert (=> bm!101938 (= call!101943 (derivativeStep!1020 (ite c!252606 (regOne!9055 (regex!2943 rule!240)) (regTwo!9054 (regex!2943 rule!240))) call!101898))))

(declare-fun b!1553636 () Bool)

(assert (=> b!1553636 (= e!996635 (Union!4271 call!101943 call!101941))))

(declare-fun b!1553637 () Bool)

(assert (=> b!1553637 (= e!996634 (ite (= call!101898 (c!252472 (regex!2943 rule!240))) EmptyExpr!4271 EmptyLang!4271))))

(declare-fun b!1553638 () Bool)

(assert (=> b!1553638 (= e!996637 (Union!4271 (Concat!7305 call!101940 (regTwo!9054 (regex!2943 rule!240))) EmptyLang!4271))))

(declare-fun b!1553639 () Bool)

(assert (=> b!1553639 (= e!996636 (Concat!7305 call!101942 (regex!2943 rule!240)))))

(assert (= (and d!461023 c!252607) b!1553630))

(assert (= (and d!461023 (not c!252607)) b!1553631))

(assert (= (and b!1553631 c!252603) b!1553637))

(assert (= (and b!1553631 (not c!252603)) b!1553635))

(assert (= (and b!1553635 c!252606) b!1553636))

(assert (= (and b!1553635 (not c!252606)) b!1553632))

(assert (= (and b!1553632 c!252604) b!1553639))

(assert (= (and b!1553632 (not c!252604)) b!1553633))

(assert (= (and b!1553633 c!252605) b!1553634))

(assert (= (and b!1553633 (not c!252605)) b!1553638))

(assert (= (or b!1553634 b!1553638) bm!101935))

(assert (= (or b!1553639 bm!101935) bm!101937))

(assert (= (or b!1553636 b!1553634) bm!101938))

(assert (= (or b!1553636 bm!101937) bm!101936))

(declare-fun m!1826251 () Bool)

(assert (=> d!461023 m!1826251))

(assert (=> d!461023 m!1825378))

(assert (=> b!1553633 m!1825950))

(declare-fun m!1826253 () Bool)

(assert (=> bm!101936 m!1826253))

(declare-fun m!1826255 () Bool)

(assert (=> bm!101938 m!1826255))

(assert (=> bm!101892 d!461023))

(declare-fun d!461025 () Bool)

(declare-fun lt!538107 () Int)

(assert (=> d!461025 (>= lt!538107 0)))

(declare-fun e!996638 () Int)

(assert (=> d!461025 (= lt!538107 e!996638)))

(declare-fun c!252608 () Bool)

(assert (=> d!461025 (= c!252608 ((_ is Nil!16791) (list!6486 (_1!9447 (_1!9448 lt!537838)))))))

(assert (=> d!461025 (= (size!13594 (list!6486 (_1!9447 (_1!9448 lt!537838)))) lt!538107)))

(declare-fun b!1553640 () Bool)

(assert (=> b!1553640 (= e!996638 0)))

(declare-fun b!1553641 () Bool)

(assert (=> b!1553641 (= e!996638 (+ 1 (size!13594 (t!141282 (list!6486 (_1!9447 (_1!9448 lt!537838)))))))))

(assert (= (and d!461025 c!252608) b!1553640))

(assert (= (and d!461025 (not c!252608)) b!1553641))

(declare-fun m!1826257 () Bool)

(assert (=> b!1553641 m!1826257))

(assert (=> d!460725 d!461025))

(assert (=> d!460725 d!460735))

(declare-fun d!461027 () Bool)

(declare-fun lt!538110 () Int)

(assert (=> d!461027 (= lt!538110 (size!13594 (list!6487 (c!252471 (_1!9447 (_1!9448 lt!537838))))))))

(assert (=> d!461027 (= lt!538110 (ite ((_ is Empty!5561) (c!252471 (_1!9447 (_1!9448 lt!537838)))) 0 (ite ((_ is Leaf!8242) (c!252471 (_1!9447 (_1!9448 lt!537838)))) (csize!11353 (c!252471 (_1!9447 (_1!9448 lt!537838)))) (csize!11352 (c!252471 (_1!9447 (_1!9448 lt!537838)))))))))

(assert (=> d!461027 (= (size!13595 (c!252471 (_1!9447 (_1!9448 lt!537838)))) lt!538110)))

(declare-fun bs!387963 () Bool)

(assert (= bs!387963 d!461027))

(assert (=> bs!387963 m!1825504))

(assert (=> bs!387963 m!1825504))

(declare-fun m!1826259 () Bool)

(assert (=> bs!387963 m!1826259))

(assert (=> d!460725 d!461027))

(declare-fun bs!387964 () Bool)

(declare-fun d!461029 () Bool)

(assert (= bs!387964 (and d!461029 d!460979)))

(declare-fun lambda!65777 () Int)

(assert (=> bs!387964 (= lambda!65777 lambda!65774)))

(declare-fun bs!387965 () Bool)

(assert (= bs!387965 (and d!461029 d!460879)))

(assert (=> bs!387965 (= lambda!65777 lambda!65751)))

(declare-fun bs!387966 () Bool)

(assert (= bs!387966 (and d!461029 d!460915)))

(assert (=> bs!387966 (= lambda!65777 lambda!65763)))

(declare-fun bs!387967 () Bool)

(assert (= bs!387967 (and d!461029 d!460939)))

(assert (=> bs!387967 (= lambda!65777 lambda!65769)))

(declare-fun bs!387968 () Bool)

(assert (= bs!387968 (and d!461029 d!460929)))

(assert (=> bs!387968 (= lambda!65777 lambda!65767)))

(declare-fun bs!387969 () Bool)

(assert (= bs!387969 (and d!461029 d!460919)))

(assert (=> bs!387969 (= lambda!65777 lambda!65764)))

(declare-fun bs!387970 () Bool)

(assert (= bs!387970 (and d!461029 d!460829)))

(assert (=> bs!387970 (= lambda!65777 lambda!65748)))

(declare-fun bs!387971 () Bool)

(assert (= bs!387971 (and d!461029 d!461017)))

(assert (=> bs!387971 (= lambda!65777 lambda!65776)))

(declare-fun bs!387972 () Bool)

(assert (= bs!387972 (and d!461029 d!460811)))

(assert (=> bs!387972 (= lambda!65777 lambda!65742)))

(declare-fun bs!387973 () Bool)

(assert (= bs!387973 (and d!461029 d!460835)))

(assert (=> bs!387973 (= lambda!65777 lambda!65749)))

(declare-fun bs!387974 () Bool)

(assert (= bs!387974 (and d!461029 d!460989)))

(assert (=> bs!387974 (= lambda!65777 lambda!65775)))

(declare-fun bs!387975 () Bool)

(assert (= bs!387975 (and d!461029 d!460887)))

(assert (=> bs!387975 (= lambda!65777 lambda!65755)))

(declare-fun bs!387976 () Bool)

(assert (= bs!387976 (and d!461029 d!460927)))

(assert (=> bs!387976 (= lambda!65777 lambda!65766)))

(declare-fun bs!387977 () Bool)

(assert (= bs!387977 (and d!461029 d!460913)))

(assert (=> bs!387977 (= lambda!65777 lambda!65762)))

(declare-fun bs!387978 () Bool)

(assert (= bs!387978 (and d!461029 d!460931)))

(assert (=> bs!387978 (= lambda!65777 lambda!65768)))

(declare-fun bs!387979 () Bool)

(assert (= bs!387979 (and d!461029 d!460827)))

(assert (=> bs!387979 (= lambda!65777 lambda!65747)))

(declare-fun bs!387980 () Bool)

(assert (= bs!387980 (and d!461029 d!460961)))

(assert (=> bs!387980 (= lambda!65777 lambda!65771)))

(declare-fun bs!387981 () Bool)

(assert (= bs!387981 (and d!461029 d!460923)))

(assert (=> bs!387981 (= lambda!65777 lambda!65765)))

(declare-fun bs!387982 () Bool)

(assert (= bs!387982 (and d!461029 d!460955)))

(assert (=> bs!387982 (= lambda!65777 lambda!65770)))

(declare-fun bs!387983 () Bool)

(assert (= bs!387983 (and d!461029 d!460823)))

(assert (=> bs!387983 (= lambda!65777 lambda!65746)))

(declare-fun bs!387984 () Bool)

(assert (= bs!387984 (and d!461029 d!460867)))

(assert (=> bs!387984 (= lambda!65777 lambda!65750)))

(declare-fun bs!387985 () Bool)

(assert (= bs!387985 (and d!461029 d!460977)))

(assert (=> bs!387985 (= lambda!65777 lambda!65773)))

(declare-fun bs!387986 () Bool)

(assert (= bs!387986 (and d!461029 d!460971)))

(assert (=> bs!387986 (= lambda!65777 lambda!65772)))

(assert (=> d!461029 (= (inv!22068 setElem!10690) (forall!3922 (exprs!1289 setElem!10690) lambda!65777))))

(declare-fun bs!387987 () Bool)

(assert (= bs!387987 d!461029))

(declare-fun m!1826261 () Bool)

(assert (=> bs!387987 m!1826261))

(assert (=> setNonEmpty!10689 d!461029))

(assert (=> b!1553003 d!460805))

(declare-fun d!461031 () Bool)

(declare-fun c!252609 () Bool)

(assert (=> d!461031 (= c!252609 ((_ is Empty!5561) (c!252471 input!1676)))))

(declare-fun e!996639 () List!16859)

(assert (=> d!461031 (= (list!6487 (c!252471 input!1676)) e!996639)))

(declare-fun b!1553642 () Bool)

(assert (=> b!1553642 (= e!996639 Nil!16791)))

(declare-fun b!1553645 () Bool)

(declare-fun e!996640 () List!16859)

(assert (=> b!1553645 (= e!996640 (++!4412 (list!6487 (left!13655 (c!252471 input!1676))) (list!6487 (right!13985 (c!252471 input!1676)))))))

(declare-fun b!1553644 () Bool)

(assert (=> b!1553644 (= e!996640 (list!6488 (xs!8361 (c!252471 input!1676))))))

(declare-fun b!1553643 () Bool)

(assert (=> b!1553643 (= e!996639 e!996640)))

(declare-fun c!252610 () Bool)

(assert (=> b!1553643 (= c!252610 ((_ is Leaf!8242) (c!252471 input!1676)))))

(assert (= (and d!461031 c!252609) b!1553642))

(assert (= (and d!461031 (not c!252609)) b!1553643))

(assert (= (and b!1553643 c!252610) b!1553644))

(assert (= (and b!1553643 (not c!252610)) b!1553645))

(declare-fun m!1826263 () Bool)

(assert (=> b!1553645 m!1826263))

(declare-fun m!1826265 () Bool)

(assert (=> b!1553645 m!1826265))

(assert (=> b!1553645 m!1826263))

(assert (=> b!1553645 m!1826265))

(declare-fun m!1826267 () Bool)

(assert (=> b!1553645 m!1826267))

(assert (=> b!1553644 m!1826021))

(assert (=> d!460705 d!461031))

(assert (=> d!460697 d!460699))

(assert (=> d!460697 d!460897))

(assert (=> d!460697 d!460689))

(assert (=> d!460697 d!460693))

(assert (=> d!460697 d!460783))

(declare-fun d!461033 () Bool)

(declare-fun e!996643 () Bool)

(assert (=> d!461033 e!996643))

(declare-fun res!693845 () Bool)

(assert (=> d!461033 (=> res!693845 e!996643)))

(assert (=> d!461033 (= res!693845 (isEmpty!10101 (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(assert (=> d!461033 true))

(declare-fun _$92!255 () Unit!26040)

(assert (=> d!461033 (= (choose!9259 (regex!2943 rule!240) lt!537846) _$92!255)))

(declare-fun b!1553648 () Bool)

(assert (=> b!1553648 (= e!996643 (matchR!1876 (regex!2943 rule!240) (_1!9450 (findLongestMatchInner!329 (regex!2943 rule!240) Nil!16791 (size!13594 Nil!16791) lt!537846 lt!537846 (size!13594 lt!537846)))))))

(assert (= (and d!461033 (not res!693845)) b!1553648))

(assert (=> d!461033 m!1825338))

(assert (=> d!461033 m!1825330))

(assert (=> d!461033 m!1825338))

(assert (=> d!461033 m!1825330))

(assert (=> d!461033 m!1825340))

(assert (=> d!461033 m!1825424))

(assert (=> b!1553648 m!1825338))

(assert (=> b!1553648 m!1825330))

(assert (=> b!1553648 m!1825338))

(assert (=> b!1553648 m!1825330))

(assert (=> b!1553648 m!1825340))

(assert (=> b!1553648 m!1825428))

(assert (=> d!460697 d!461033))

(declare-fun bs!387988 () Bool)

(declare-fun d!461035 () Bool)

(assert (= bs!387988 (and d!461035 d!460979)))

(declare-fun lambda!65778 () Int)

(assert (=> bs!387988 (= lambda!65778 lambda!65774)))

(declare-fun bs!387989 () Bool)

(assert (= bs!387989 (and d!461035 d!461029)))

(assert (=> bs!387989 (= lambda!65778 lambda!65777)))

(declare-fun bs!387990 () Bool)

(assert (= bs!387990 (and d!461035 d!460879)))

(assert (=> bs!387990 (= lambda!65778 lambda!65751)))

(declare-fun bs!387991 () Bool)

(assert (= bs!387991 (and d!461035 d!460915)))

(assert (=> bs!387991 (= lambda!65778 lambda!65763)))

(declare-fun bs!387992 () Bool)

(assert (= bs!387992 (and d!461035 d!460939)))

(assert (=> bs!387992 (= lambda!65778 lambda!65769)))

(declare-fun bs!387993 () Bool)

(assert (= bs!387993 (and d!461035 d!460929)))

(assert (=> bs!387993 (= lambda!65778 lambda!65767)))

(declare-fun bs!387994 () Bool)

(assert (= bs!387994 (and d!461035 d!460919)))

(assert (=> bs!387994 (= lambda!65778 lambda!65764)))

(declare-fun bs!387995 () Bool)

(assert (= bs!387995 (and d!461035 d!460829)))

(assert (=> bs!387995 (= lambda!65778 lambda!65748)))

(declare-fun bs!387996 () Bool)

(assert (= bs!387996 (and d!461035 d!461017)))

(assert (=> bs!387996 (= lambda!65778 lambda!65776)))

(declare-fun bs!387997 () Bool)

(assert (= bs!387997 (and d!461035 d!460811)))

(assert (=> bs!387997 (= lambda!65778 lambda!65742)))

(declare-fun bs!387998 () Bool)

(assert (= bs!387998 (and d!461035 d!460835)))

(assert (=> bs!387998 (= lambda!65778 lambda!65749)))

(declare-fun bs!387999 () Bool)

(assert (= bs!387999 (and d!461035 d!460989)))

(assert (=> bs!387999 (= lambda!65778 lambda!65775)))

(declare-fun bs!388000 () Bool)

(assert (= bs!388000 (and d!461035 d!460887)))

(assert (=> bs!388000 (= lambda!65778 lambda!65755)))

(declare-fun bs!388001 () Bool)

(assert (= bs!388001 (and d!461035 d!460927)))

(assert (=> bs!388001 (= lambda!65778 lambda!65766)))

(declare-fun bs!388002 () Bool)

(assert (= bs!388002 (and d!461035 d!460913)))

(assert (=> bs!388002 (= lambda!65778 lambda!65762)))

(declare-fun bs!388003 () Bool)

(assert (= bs!388003 (and d!461035 d!460931)))

(assert (=> bs!388003 (= lambda!65778 lambda!65768)))

(declare-fun bs!388004 () Bool)

(assert (= bs!388004 (and d!461035 d!460827)))

(assert (=> bs!388004 (= lambda!65778 lambda!65747)))

(declare-fun bs!388005 () Bool)

(assert (= bs!388005 (and d!461035 d!460961)))

(assert (=> bs!388005 (= lambda!65778 lambda!65771)))

(declare-fun bs!388006 () Bool)

(assert (= bs!388006 (and d!461035 d!460923)))

(assert (=> bs!388006 (= lambda!65778 lambda!65765)))

(declare-fun bs!388007 () Bool)

(assert (= bs!388007 (and d!461035 d!460955)))

(assert (=> bs!388007 (= lambda!65778 lambda!65770)))

(declare-fun bs!388008 () Bool)

(assert (= bs!388008 (and d!461035 d!460823)))

(assert (=> bs!388008 (= lambda!65778 lambda!65746)))

(declare-fun bs!388009 () Bool)

(assert (= bs!388009 (and d!461035 d!460867)))

(assert (=> bs!388009 (= lambda!65778 lambda!65750)))

(declare-fun bs!388010 () Bool)

(assert (= bs!388010 (and d!461035 d!460977)))

(assert (=> bs!388010 (= lambda!65778 lambda!65773)))

(declare-fun bs!388011 () Bool)

(assert (= bs!388011 (and d!461035 d!460971)))

(assert (=> bs!388011 (= lambda!65778 lambda!65772)))

(assert (=> d!461035 (= (inv!22068 (_2!9444 (_1!9445 (h!22196 mapDefault!8285)))) (forall!3922 (exprs!1289 (_2!9444 (_1!9445 (h!22196 mapDefault!8285)))) lambda!65778))))

(declare-fun bs!388012 () Bool)

(assert (= bs!388012 d!461035))

(declare-fun m!1826269 () Bool)

(assert (=> bs!388012 m!1826269))

(assert (=> b!1553065 d!461035))

(declare-fun bs!388013 () Bool)

(declare-fun d!461037 () Bool)

(assert (= bs!388013 (and d!461037 d!460979)))

(declare-fun lambda!65779 () Int)

(assert (=> bs!388013 (= lambda!65779 lambda!65774)))

(declare-fun bs!388014 () Bool)

(assert (= bs!388014 (and d!461037 d!461029)))

(assert (=> bs!388014 (= lambda!65779 lambda!65777)))

(declare-fun bs!388015 () Bool)

(assert (= bs!388015 (and d!461037 d!460879)))

(assert (=> bs!388015 (= lambda!65779 lambda!65751)))

(declare-fun bs!388016 () Bool)

(assert (= bs!388016 (and d!461037 d!460915)))

(assert (=> bs!388016 (= lambda!65779 lambda!65763)))

(declare-fun bs!388017 () Bool)

(assert (= bs!388017 (and d!461037 d!460939)))

(assert (=> bs!388017 (= lambda!65779 lambda!65769)))

(declare-fun bs!388018 () Bool)

(assert (= bs!388018 (and d!461037 d!460929)))

(assert (=> bs!388018 (= lambda!65779 lambda!65767)))

(declare-fun bs!388019 () Bool)

(assert (= bs!388019 (and d!461037 d!460829)))

(assert (=> bs!388019 (= lambda!65779 lambda!65748)))

(declare-fun bs!388020 () Bool)

(assert (= bs!388020 (and d!461037 d!461017)))

(assert (=> bs!388020 (= lambda!65779 lambda!65776)))

(declare-fun bs!388021 () Bool)

(assert (= bs!388021 (and d!461037 d!460811)))

(assert (=> bs!388021 (= lambda!65779 lambda!65742)))

(declare-fun bs!388022 () Bool)

(assert (= bs!388022 (and d!461037 d!460835)))

(assert (=> bs!388022 (= lambda!65779 lambda!65749)))

(declare-fun bs!388023 () Bool)

(assert (= bs!388023 (and d!461037 d!460989)))

(assert (=> bs!388023 (= lambda!65779 lambda!65775)))

(declare-fun bs!388024 () Bool)

(assert (= bs!388024 (and d!461037 d!460887)))

(assert (=> bs!388024 (= lambda!65779 lambda!65755)))

(declare-fun bs!388025 () Bool)

(assert (= bs!388025 (and d!461037 d!460927)))

(assert (=> bs!388025 (= lambda!65779 lambda!65766)))

(declare-fun bs!388026 () Bool)

(assert (= bs!388026 (and d!461037 d!460913)))

(assert (=> bs!388026 (= lambda!65779 lambda!65762)))

(declare-fun bs!388027 () Bool)

(assert (= bs!388027 (and d!461037 d!460931)))

(assert (=> bs!388027 (= lambda!65779 lambda!65768)))

(declare-fun bs!388028 () Bool)

(assert (= bs!388028 (and d!461037 d!460827)))

(assert (=> bs!388028 (= lambda!65779 lambda!65747)))

(declare-fun bs!388029 () Bool)

(assert (= bs!388029 (and d!461037 d!460961)))

(assert (=> bs!388029 (= lambda!65779 lambda!65771)))

(declare-fun bs!388030 () Bool)

(assert (= bs!388030 (and d!461037 d!461035)))

(assert (=> bs!388030 (= lambda!65779 lambda!65778)))

(declare-fun bs!388031 () Bool)

(assert (= bs!388031 (and d!461037 d!460919)))

(assert (=> bs!388031 (= lambda!65779 lambda!65764)))

(declare-fun bs!388032 () Bool)

(assert (= bs!388032 (and d!461037 d!460923)))

(assert (=> bs!388032 (= lambda!65779 lambda!65765)))

(declare-fun bs!388033 () Bool)

(assert (= bs!388033 (and d!461037 d!460955)))

(assert (=> bs!388033 (= lambda!65779 lambda!65770)))

(declare-fun bs!388034 () Bool)

(assert (= bs!388034 (and d!461037 d!460823)))

(assert (=> bs!388034 (= lambda!65779 lambda!65746)))

(declare-fun bs!388035 () Bool)

(assert (= bs!388035 (and d!461037 d!460867)))

(assert (=> bs!388035 (= lambda!65779 lambda!65750)))

(declare-fun bs!388036 () Bool)

(assert (= bs!388036 (and d!461037 d!460977)))

(assert (=> bs!388036 (= lambda!65779 lambda!65773)))

(declare-fun bs!388037 () Bool)

(assert (= bs!388037 (and d!461037 d!460971)))

(assert (=> bs!388037 (= lambda!65779 lambda!65772)))

(assert (=> d!461037 (= (inv!22068 (_1!9440 (_1!9441 (h!22194 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))))) (forall!3922 (exprs!1289 (_1!9440 (_1!9441 (h!22194 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))))) lambda!65779))))

(declare-fun bs!388038 () Bool)

(assert (= bs!388038 d!461037))

(declare-fun m!1826271 () Bool)

(assert (=> bs!388038 m!1826271))

(assert (=> b!1553119 d!461037))

(declare-fun bs!388039 () Bool)

(declare-fun d!461039 () Bool)

(assert (= bs!388039 (and d!461039 d!460979)))

(declare-fun lambda!65780 () Int)

(assert (=> bs!388039 (= lambda!65780 lambda!65774)))

(declare-fun bs!388040 () Bool)

(assert (= bs!388040 (and d!461039 d!461029)))

(assert (=> bs!388040 (= lambda!65780 lambda!65777)))

(declare-fun bs!388041 () Bool)

(assert (= bs!388041 (and d!461039 d!460879)))

(assert (=> bs!388041 (= lambda!65780 lambda!65751)))

(declare-fun bs!388042 () Bool)

(assert (= bs!388042 (and d!461039 d!460915)))

(assert (=> bs!388042 (= lambda!65780 lambda!65763)))

(declare-fun bs!388043 () Bool)

(assert (= bs!388043 (and d!461039 d!460939)))

(assert (=> bs!388043 (= lambda!65780 lambda!65769)))

(declare-fun bs!388044 () Bool)

(assert (= bs!388044 (and d!461039 d!460929)))

(assert (=> bs!388044 (= lambda!65780 lambda!65767)))

(declare-fun bs!388045 () Bool)

(assert (= bs!388045 (and d!461039 d!460829)))

(assert (=> bs!388045 (= lambda!65780 lambda!65748)))

(declare-fun bs!388046 () Bool)

(assert (= bs!388046 (and d!461039 d!461017)))

(assert (=> bs!388046 (= lambda!65780 lambda!65776)))

(declare-fun bs!388047 () Bool)

(assert (= bs!388047 (and d!461039 d!460811)))

(assert (=> bs!388047 (= lambda!65780 lambda!65742)))

(declare-fun bs!388048 () Bool)

(assert (= bs!388048 (and d!461039 d!460835)))

(assert (=> bs!388048 (= lambda!65780 lambda!65749)))

(declare-fun bs!388049 () Bool)

(assert (= bs!388049 (and d!461039 d!460989)))

(assert (=> bs!388049 (= lambda!65780 lambda!65775)))

(declare-fun bs!388050 () Bool)

(assert (= bs!388050 (and d!461039 d!460887)))

(assert (=> bs!388050 (= lambda!65780 lambda!65755)))

(declare-fun bs!388051 () Bool)

(assert (= bs!388051 (and d!461039 d!460927)))

(assert (=> bs!388051 (= lambda!65780 lambda!65766)))

(declare-fun bs!388052 () Bool)

(assert (= bs!388052 (and d!461039 d!460913)))

(assert (=> bs!388052 (= lambda!65780 lambda!65762)))

(declare-fun bs!388053 () Bool)

(assert (= bs!388053 (and d!461039 d!460931)))

(assert (=> bs!388053 (= lambda!65780 lambda!65768)))

(declare-fun bs!388054 () Bool)

(assert (= bs!388054 (and d!461039 d!460827)))

(assert (=> bs!388054 (= lambda!65780 lambda!65747)))

(declare-fun bs!388055 () Bool)

(assert (= bs!388055 (and d!461039 d!460961)))

(assert (=> bs!388055 (= lambda!65780 lambda!65771)))

(declare-fun bs!388056 () Bool)

(assert (= bs!388056 (and d!461039 d!461037)))

(assert (=> bs!388056 (= lambda!65780 lambda!65779)))

(declare-fun bs!388057 () Bool)

(assert (= bs!388057 (and d!461039 d!461035)))

(assert (=> bs!388057 (= lambda!65780 lambda!65778)))

(declare-fun bs!388058 () Bool)

(assert (= bs!388058 (and d!461039 d!460919)))

(assert (=> bs!388058 (= lambda!65780 lambda!65764)))

(declare-fun bs!388059 () Bool)

(assert (= bs!388059 (and d!461039 d!460923)))

(assert (=> bs!388059 (= lambda!65780 lambda!65765)))

(declare-fun bs!388060 () Bool)

(assert (= bs!388060 (and d!461039 d!460955)))

(assert (=> bs!388060 (= lambda!65780 lambda!65770)))

(declare-fun bs!388061 () Bool)

(assert (= bs!388061 (and d!461039 d!460823)))

(assert (=> bs!388061 (= lambda!65780 lambda!65746)))

(declare-fun bs!388062 () Bool)

(assert (= bs!388062 (and d!461039 d!460867)))

(assert (=> bs!388062 (= lambda!65780 lambda!65750)))

(declare-fun bs!388063 () Bool)

(assert (= bs!388063 (and d!461039 d!460977)))

(assert (=> bs!388063 (= lambda!65780 lambda!65773)))

(declare-fun bs!388064 () Bool)

(assert (= bs!388064 (and d!461039 d!460971)))

(assert (=> bs!388064 (= lambda!65780 lambda!65772)))

(assert (=> d!461039 (= (inv!22068 setElem!10684) (forall!3922 (exprs!1289 setElem!10684) lambda!65780))))

(declare-fun bs!388065 () Bool)

(assert (= bs!388065 d!461039))

(declare-fun m!1826273 () Bool)

(assert (=> bs!388065 m!1826273))

(assert (=> setNonEmpty!10684 d!461039))

(declare-fun bs!388066 () Bool)

(declare-fun d!461041 () Bool)

(assert (= bs!388066 (and d!461041 d!461029)))

(declare-fun lambda!65781 () Int)

(assert (=> bs!388066 (= lambda!65781 lambda!65777)))

(declare-fun bs!388067 () Bool)

(assert (= bs!388067 (and d!461041 d!460879)))

(assert (=> bs!388067 (= lambda!65781 lambda!65751)))

(declare-fun bs!388068 () Bool)

(assert (= bs!388068 (and d!461041 d!460915)))

(assert (=> bs!388068 (= lambda!65781 lambda!65763)))

(declare-fun bs!388069 () Bool)

(assert (= bs!388069 (and d!461041 d!460939)))

(assert (=> bs!388069 (= lambda!65781 lambda!65769)))

(declare-fun bs!388070 () Bool)

(assert (= bs!388070 (and d!461041 d!460929)))

(assert (=> bs!388070 (= lambda!65781 lambda!65767)))

(declare-fun bs!388071 () Bool)

(assert (= bs!388071 (and d!461041 d!460829)))

(assert (=> bs!388071 (= lambda!65781 lambda!65748)))

(declare-fun bs!388072 () Bool)

(assert (= bs!388072 (and d!461041 d!461017)))

(assert (=> bs!388072 (= lambda!65781 lambda!65776)))

(declare-fun bs!388073 () Bool)

(assert (= bs!388073 (and d!461041 d!460811)))

(assert (=> bs!388073 (= lambda!65781 lambda!65742)))

(declare-fun bs!388074 () Bool)

(assert (= bs!388074 (and d!461041 d!460835)))

(assert (=> bs!388074 (= lambda!65781 lambda!65749)))

(declare-fun bs!388075 () Bool)

(assert (= bs!388075 (and d!461041 d!460989)))

(assert (=> bs!388075 (= lambda!65781 lambda!65775)))

(declare-fun bs!388076 () Bool)

(assert (= bs!388076 (and d!461041 d!460887)))

(assert (=> bs!388076 (= lambda!65781 lambda!65755)))

(declare-fun bs!388077 () Bool)

(assert (= bs!388077 (and d!461041 d!460927)))

(assert (=> bs!388077 (= lambda!65781 lambda!65766)))

(declare-fun bs!388078 () Bool)

(assert (= bs!388078 (and d!461041 d!460979)))

(assert (=> bs!388078 (= lambda!65781 lambda!65774)))

(declare-fun bs!388079 () Bool)

(assert (= bs!388079 (and d!461041 d!461039)))

(assert (=> bs!388079 (= lambda!65781 lambda!65780)))

(declare-fun bs!388080 () Bool)

(assert (= bs!388080 (and d!461041 d!460913)))

(assert (=> bs!388080 (= lambda!65781 lambda!65762)))

(declare-fun bs!388081 () Bool)

(assert (= bs!388081 (and d!461041 d!460931)))

(assert (=> bs!388081 (= lambda!65781 lambda!65768)))

(declare-fun bs!388082 () Bool)

(assert (= bs!388082 (and d!461041 d!460827)))

(assert (=> bs!388082 (= lambda!65781 lambda!65747)))

(declare-fun bs!388083 () Bool)

(assert (= bs!388083 (and d!461041 d!460961)))

(assert (=> bs!388083 (= lambda!65781 lambda!65771)))

(declare-fun bs!388084 () Bool)

(assert (= bs!388084 (and d!461041 d!461037)))

(assert (=> bs!388084 (= lambda!65781 lambda!65779)))

(declare-fun bs!388085 () Bool)

(assert (= bs!388085 (and d!461041 d!461035)))

(assert (=> bs!388085 (= lambda!65781 lambda!65778)))

(declare-fun bs!388086 () Bool)

(assert (= bs!388086 (and d!461041 d!460919)))

(assert (=> bs!388086 (= lambda!65781 lambda!65764)))

(declare-fun bs!388087 () Bool)

(assert (= bs!388087 (and d!461041 d!460923)))

(assert (=> bs!388087 (= lambda!65781 lambda!65765)))

(declare-fun bs!388088 () Bool)

(assert (= bs!388088 (and d!461041 d!460955)))

(assert (=> bs!388088 (= lambda!65781 lambda!65770)))

(declare-fun bs!388089 () Bool)

(assert (= bs!388089 (and d!461041 d!460823)))

(assert (=> bs!388089 (= lambda!65781 lambda!65746)))

(declare-fun bs!388090 () Bool)

(assert (= bs!388090 (and d!461041 d!460867)))

(assert (=> bs!388090 (= lambda!65781 lambda!65750)))

(declare-fun bs!388091 () Bool)

(assert (= bs!388091 (and d!461041 d!460977)))

(assert (=> bs!388091 (= lambda!65781 lambda!65773)))

(declare-fun bs!388092 () Bool)

(assert (= bs!388092 (and d!461041 d!460971)))

(assert (=> bs!388092 (= lambda!65781 lambda!65772)))

(assert (=> d!461041 (= (inv!22068 setElem!10708) (forall!3922 (exprs!1289 setElem!10708) lambda!65781))))

(declare-fun bs!388093 () Bool)

(assert (= bs!388093 d!461041))

(declare-fun m!1826275 () Bool)

(assert (=> bs!388093 m!1826275))

(assert (=> setNonEmpty!10708 d!461041))

(assert (=> b!1552961 d!460799))

(declare-fun d!461043 () Bool)

(assert (=> d!461043 true))

(assert (=> d!461043 true))

(declare-fun res!693848 () Bool)

(assert (=> d!461043 (= (choose!9260 lambda!65733) res!693848)))

(assert (=> d!460709 d!461043))

(declare-fun bs!388094 () Bool)

(declare-fun d!461045 () Bool)

(assert (= bs!388094 (and d!461045 d!461029)))

(declare-fun lambda!65782 () Int)

(assert (=> bs!388094 (= lambda!65782 lambda!65777)))

(declare-fun bs!388095 () Bool)

(assert (= bs!388095 (and d!461045 d!460879)))

(assert (=> bs!388095 (= lambda!65782 lambda!65751)))

(declare-fun bs!388096 () Bool)

(assert (= bs!388096 (and d!461045 d!460915)))

(assert (=> bs!388096 (= lambda!65782 lambda!65763)))

(declare-fun bs!388097 () Bool)

(assert (= bs!388097 (and d!461045 d!460939)))

(assert (=> bs!388097 (= lambda!65782 lambda!65769)))

(declare-fun bs!388098 () Bool)

(assert (= bs!388098 (and d!461045 d!460929)))

(assert (=> bs!388098 (= lambda!65782 lambda!65767)))

(declare-fun bs!388099 () Bool)

(assert (= bs!388099 (and d!461045 d!460829)))

(assert (=> bs!388099 (= lambda!65782 lambda!65748)))

(declare-fun bs!388100 () Bool)

(assert (= bs!388100 (and d!461045 d!461017)))

(assert (=> bs!388100 (= lambda!65782 lambda!65776)))

(declare-fun bs!388101 () Bool)

(assert (= bs!388101 (and d!461045 d!460811)))

(assert (=> bs!388101 (= lambda!65782 lambda!65742)))

(declare-fun bs!388102 () Bool)

(assert (= bs!388102 (and d!461045 d!460835)))

(assert (=> bs!388102 (= lambda!65782 lambda!65749)))

(declare-fun bs!388103 () Bool)

(assert (= bs!388103 (and d!461045 d!460989)))

(assert (=> bs!388103 (= lambda!65782 lambda!65775)))

(declare-fun bs!388104 () Bool)

(assert (= bs!388104 (and d!461045 d!460887)))

(assert (=> bs!388104 (= lambda!65782 lambda!65755)))

(declare-fun bs!388105 () Bool)

(assert (= bs!388105 (and d!461045 d!460927)))

(assert (=> bs!388105 (= lambda!65782 lambda!65766)))

(declare-fun bs!388106 () Bool)

(assert (= bs!388106 (and d!461045 d!460979)))

(assert (=> bs!388106 (= lambda!65782 lambda!65774)))

(declare-fun bs!388107 () Bool)

(assert (= bs!388107 (and d!461045 d!461039)))

(assert (=> bs!388107 (= lambda!65782 lambda!65780)))

(declare-fun bs!388108 () Bool)

(assert (= bs!388108 (and d!461045 d!460913)))

(assert (=> bs!388108 (= lambda!65782 lambda!65762)))

(declare-fun bs!388109 () Bool)

(assert (= bs!388109 (and d!461045 d!461041)))

(assert (=> bs!388109 (= lambda!65782 lambda!65781)))

(declare-fun bs!388110 () Bool)

(assert (= bs!388110 (and d!461045 d!460931)))

(assert (=> bs!388110 (= lambda!65782 lambda!65768)))

(declare-fun bs!388111 () Bool)

(assert (= bs!388111 (and d!461045 d!460827)))

(assert (=> bs!388111 (= lambda!65782 lambda!65747)))

(declare-fun bs!388112 () Bool)

(assert (= bs!388112 (and d!461045 d!460961)))

(assert (=> bs!388112 (= lambda!65782 lambda!65771)))

(declare-fun bs!388113 () Bool)

(assert (= bs!388113 (and d!461045 d!461037)))

(assert (=> bs!388113 (= lambda!65782 lambda!65779)))

(declare-fun bs!388114 () Bool)

(assert (= bs!388114 (and d!461045 d!461035)))

(assert (=> bs!388114 (= lambda!65782 lambda!65778)))

(declare-fun bs!388115 () Bool)

(assert (= bs!388115 (and d!461045 d!460919)))

(assert (=> bs!388115 (= lambda!65782 lambda!65764)))

(declare-fun bs!388116 () Bool)

(assert (= bs!388116 (and d!461045 d!460923)))

(assert (=> bs!388116 (= lambda!65782 lambda!65765)))

(declare-fun bs!388117 () Bool)

(assert (= bs!388117 (and d!461045 d!460955)))

(assert (=> bs!388117 (= lambda!65782 lambda!65770)))

(declare-fun bs!388118 () Bool)

(assert (= bs!388118 (and d!461045 d!460823)))

(assert (=> bs!388118 (= lambda!65782 lambda!65746)))

(declare-fun bs!388119 () Bool)

(assert (= bs!388119 (and d!461045 d!460867)))

(assert (=> bs!388119 (= lambda!65782 lambda!65750)))

(declare-fun bs!388120 () Bool)

(assert (= bs!388120 (and d!461045 d!460977)))

(assert (=> bs!388120 (= lambda!65782 lambda!65773)))

(declare-fun bs!388121 () Bool)

(assert (= bs!388121 (and d!461045 d!460971)))

(assert (=> bs!388121 (= lambda!65782 lambda!65772)))

(assert (=> d!461045 (= (inv!22068 (_2!9444 (_1!9445 (h!22196 mapValue!8294)))) (forall!3922 (exprs!1289 (_2!9444 (_1!9445 (h!22196 mapValue!8294)))) lambda!65782))))

(declare-fun bs!388122 () Bool)

(assert (= bs!388122 d!461045))

(declare-fun m!1826277 () Bool)

(assert (=> bs!388122 m!1826277))

(assert (=> b!1553171 d!461045))

(declare-fun bs!388123 () Bool)

(declare-fun d!461047 () Bool)

(assert (= bs!388123 (and d!461047 d!461029)))

(declare-fun lambda!65783 () Int)

(assert (=> bs!388123 (= lambda!65783 lambda!65777)))

(declare-fun bs!388124 () Bool)

(assert (= bs!388124 (and d!461047 d!460879)))

(assert (=> bs!388124 (= lambda!65783 lambda!65751)))

(declare-fun bs!388125 () Bool)

(assert (= bs!388125 (and d!461047 d!460915)))

(assert (=> bs!388125 (= lambda!65783 lambda!65763)))

(declare-fun bs!388126 () Bool)

(assert (= bs!388126 (and d!461047 d!460939)))

(assert (=> bs!388126 (= lambda!65783 lambda!65769)))

(declare-fun bs!388127 () Bool)

(assert (= bs!388127 (and d!461047 d!460929)))

(assert (=> bs!388127 (= lambda!65783 lambda!65767)))

(declare-fun bs!388128 () Bool)

(assert (= bs!388128 (and d!461047 d!460829)))

(assert (=> bs!388128 (= lambda!65783 lambda!65748)))

(declare-fun bs!388129 () Bool)

(assert (= bs!388129 (and d!461047 d!461017)))

(assert (=> bs!388129 (= lambda!65783 lambda!65776)))

(declare-fun bs!388130 () Bool)

(assert (= bs!388130 (and d!461047 d!460811)))

(assert (=> bs!388130 (= lambda!65783 lambda!65742)))

(declare-fun bs!388131 () Bool)

(assert (= bs!388131 (and d!461047 d!460835)))

(assert (=> bs!388131 (= lambda!65783 lambda!65749)))

(declare-fun bs!388132 () Bool)

(assert (= bs!388132 (and d!461047 d!460989)))

(assert (=> bs!388132 (= lambda!65783 lambda!65775)))

(declare-fun bs!388133 () Bool)

(assert (= bs!388133 (and d!461047 d!460887)))

(assert (=> bs!388133 (= lambda!65783 lambda!65755)))

(declare-fun bs!388134 () Bool)

(assert (= bs!388134 (and d!461047 d!460927)))

(assert (=> bs!388134 (= lambda!65783 lambda!65766)))

(declare-fun bs!388135 () Bool)

(assert (= bs!388135 (and d!461047 d!460979)))

(assert (=> bs!388135 (= lambda!65783 lambda!65774)))

(declare-fun bs!388136 () Bool)

(assert (= bs!388136 (and d!461047 d!461039)))

(assert (=> bs!388136 (= lambda!65783 lambda!65780)))

(declare-fun bs!388137 () Bool)

(assert (= bs!388137 (and d!461047 d!460913)))

(assert (=> bs!388137 (= lambda!65783 lambda!65762)))

(declare-fun bs!388138 () Bool)

(assert (= bs!388138 (and d!461047 d!461041)))

(assert (=> bs!388138 (= lambda!65783 lambda!65781)))

(declare-fun bs!388139 () Bool)

(assert (= bs!388139 (and d!461047 d!460931)))

(assert (=> bs!388139 (= lambda!65783 lambda!65768)))

(declare-fun bs!388140 () Bool)

(assert (= bs!388140 (and d!461047 d!460827)))

(assert (=> bs!388140 (= lambda!65783 lambda!65747)))

(declare-fun bs!388141 () Bool)

(assert (= bs!388141 (and d!461047 d!460961)))

(assert (=> bs!388141 (= lambda!65783 lambda!65771)))

(declare-fun bs!388142 () Bool)

(assert (= bs!388142 (and d!461047 d!461045)))

(assert (=> bs!388142 (= lambda!65783 lambda!65782)))

(declare-fun bs!388143 () Bool)

(assert (= bs!388143 (and d!461047 d!461037)))

(assert (=> bs!388143 (= lambda!65783 lambda!65779)))

(declare-fun bs!388144 () Bool)

(assert (= bs!388144 (and d!461047 d!461035)))

(assert (=> bs!388144 (= lambda!65783 lambda!65778)))

(declare-fun bs!388145 () Bool)

(assert (= bs!388145 (and d!461047 d!460919)))

(assert (=> bs!388145 (= lambda!65783 lambda!65764)))

(declare-fun bs!388146 () Bool)

(assert (= bs!388146 (and d!461047 d!460923)))

(assert (=> bs!388146 (= lambda!65783 lambda!65765)))

(declare-fun bs!388147 () Bool)

(assert (= bs!388147 (and d!461047 d!460955)))

(assert (=> bs!388147 (= lambda!65783 lambda!65770)))

(declare-fun bs!388148 () Bool)

(assert (= bs!388148 (and d!461047 d!460823)))

(assert (=> bs!388148 (= lambda!65783 lambda!65746)))

(declare-fun bs!388149 () Bool)

(assert (= bs!388149 (and d!461047 d!460867)))

(assert (=> bs!388149 (= lambda!65783 lambda!65750)))

(declare-fun bs!388150 () Bool)

(assert (= bs!388150 (and d!461047 d!460977)))

(assert (=> bs!388150 (= lambda!65783 lambda!65773)))

(declare-fun bs!388151 () Bool)

(assert (= bs!388151 (and d!461047 d!460971)))

(assert (=> bs!388151 (= lambda!65783 lambda!65772)))

(assert (=> d!461047 (= (inv!22068 setElem!10717) (forall!3922 (exprs!1289 setElem!10717) lambda!65783))))

(declare-fun bs!388152 () Bool)

(assert (= bs!388152 d!461047))

(declare-fun m!1826279 () Bool)

(assert (=> bs!388152 m!1826279))

(assert (=> setNonEmpty!10717 d!461047))

(declare-fun d!461049 () Bool)

(declare-fun res!693849 () Bool)

(declare-fun e!996644 () Bool)

(assert (=> d!461049 (=> (not res!693849) (not e!996644))))

(assert (=> d!461049 (= res!693849 (= (csize!11352 (c!252471 input!1676)) (+ (size!13595 (left!13655 (c!252471 input!1676))) (size!13595 (right!13985 (c!252471 input!1676))))))))

(assert (=> d!461049 (= (inv!22066 (c!252471 input!1676)) e!996644)))

(declare-fun b!1553649 () Bool)

(declare-fun res!693850 () Bool)

(assert (=> b!1553649 (=> (not res!693850) (not e!996644))))

(assert (=> b!1553649 (= res!693850 (and (not (= (left!13655 (c!252471 input!1676)) Empty!5561)) (not (= (right!13985 (c!252471 input!1676)) Empty!5561))))))

(declare-fun b!1553650 () Bool)

(declare-fun res!693851 () Bool)

(assert (=> b!1553650 (=> (not res!693851) (not e!996644))))

(assert (=> b!1553650 (= res!693851 (= (cheight!5772 (c!252471 input!1676)) (+ (max!0 (height!828 (left!13655 (c!252471 input!1676))) (height!828 (right!13985 (c!252471 input!1676)))) 1)))))

(declare-fun b!1553651 () Bool)

(assert (=> b!1553651 (= e!996644 (<= 0 (cheight!5772 (c!252471 input!1676))))))

(assert (= (and d!461049 res!693849) b!1553649))

(assert (= (and b!1553649 res!693850) b!1553650))

(assert (= (and b!1553650 res!693851) b!1553651))

(declare-fun m!1826281 () Bool)

(assert (=> d!461049 m!1826281))

(declare-fun m!1826283 () Bool)

(assert (=> d!461049 m!1826283))

(assert (=> b!1553650 m!1826081))

(assert (=> b!1553650 m!1826083))

(assert (=> b!1553650 m!1826081))

(assert (=> b!1553650 m!1826083))

(declare-fun m!1826285 () Bool)

(assert (=> b!1553650 m!1826285))

(assert (=> b!1553029 d!461049))

(declare-fun tp!454722 () Bool)

(declare-fun tp!454723 () Bool)

(declare-fun e!996645 () Bool)

(declare-fun b!1553652 () Bool)

(assert (=> b!1553652 (= e!996645 (and (inv!22064 (left!13655 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))))) tp!454722 (inv!22064 (right!13985 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))))) tp!454723))))

(declare-fun b!1553654 () Bool)

(declare-fun e!996646 () Bool)

(declare-fun tp!454724 () Bool)

(assert (=> b!1553654 (= e!996646 tp!454724)))

(declare-fun b!1553653 () Bool)

(assert (=> b!1553653 (= e!996645 (and (inv!22069 (xs!8361 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))))) e!996646))))

(assert (=> b!1553185 (= tp!454647 (and (inv!22064 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839))))) e!996645))))

(assert (= (and b!1553185 ((_ is Node!5561) (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))))) b!1553652))

(assert (= b!1553653 b!1553654))

(assert (= (and b!1553185 ((_ is Leaf!8242) (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (seqFromList!1771 lt!537839)))))) b!1553653))

(declare-fun m!1826287 () Bool)

(assert (=> b!1553652 m!1826287))

(declare-fun m!1826289 () Bool)

(assert (=> b!1553652 m!1826289))

(declare-fun m!1826291 () Bool)

(assert (=> b!1553653 m!1826291))

(assert (=> b!1553185 m!1825642))

(declare-fun b!1553659 () Bool)

(declare-fun e!996649 () Bool)

(declare-fun tp!454729 () Bool)

(declare-fun tp!454730 () Bool)

(assert (=> b!1553659 (= e!996649 (and tp!454729 tp!454730))))

(assert (=> b!1553168 (= tp!454624 e!996649)))

(assert (= (and b!1553168 ((_ is Cons!16792) (exprs!1289 (_2!9444 (_1!9445 (h!22196 mapValue!8294)))))) b!1553659))

(declare-fun b!1553663 () Bool)

(declare-fun e!996650 () Bool)

(declare-fun tp!454734 () Bool)

(declare-fun tp!454733 () Bool)

(assert (=> b!1553663 (= e!996650 (and tp!454734 tp!454733))))

(assert (=> b!1553053 (= tp!454471 e!996650)))

(declare-fun b!1553661 () Bool)

(declare-fun tp!454735 () Bool)

(declare-fun tp!454732 () Bool)

(assert (=> b!1553661 (= e!996650 (and tp!454735 tp!454732))))

(declare-fun b!1553662 () Bool)

(declare-fun tp!454731 () Bool)

(assert (=> b!1553662 (= e!996650 tp!454731)))

(declare-fun b!1553660 () Bool)

(assert (=> b!1553660 (= e!996650 tp_is_empty!7063)))

(assert (= (and b!1553053 ((_ is ElementMatch!4271) (reg!4600 (regex!2943 rule!240)))) b!1553660))

(assert (= (and b!1553053 ((_ is Concat!7305) (reg!4600 (regex!2943 rule!240)))) b!1553661))

(assert (= (and b!1553053 ((_ is Star!4271) (reg!4600 (regex!2943 rule!240)))) b!1553662))

(assert (= (and b!1553053 ((_ is Union!4271) (reg!4600 (regex!2943 rule!240)))) b!1553663))

(declare-fun b!1553664 () Bool)

(declare-fun tp!454737 () Bool)

(declare-fun tp!454736 () Bool)

(declare-fun e!996651 () Bool)

(assert (=> b!1553664 (= e!996651 (and (inv!22064 (left!13655 (left!13655 (c!252471 input!1676)))) tp!454736 (inv!22064 (right!13985 (left!13655 (c!252471 input!1676)))) tp!454737))))

(declare-fun b!1553666 () Bool)

(declare-fun e!996652 () Bool)

(declare-fun tp!454738 () Bool)

(assert (=> b!1553666 (= e!996652 tp!454738)))

(declare-fun b!1553665 () Bool)

(assert (=> b!1553665 (= e!996651 (and (inv!22069 (xs!8361 (left!13655 (c!252471 input!1676)))) e!996652))))

(assert (=> b!1553150 (= tp!454597 (and (inv!22064 (left!13655 (c!252471 input!1676))) e!996651))))

(assert (= (and b!1553150 ((_ is Node!5561) (left!13655 (c!252471 input!1676)))) b!1553664))

(assert (= b!1553665 b!1553666))

(assert (= (and b!1553150 ((_ is Leaf!8242) (left!13655 (c!252471 input!1676)))) b!1553665))

(declare-fun m!1826293 () Bool)

(assert (=> b!1553664 m!1826293))

(declare-fun m!1826295 () Bool)

(assert (=> b!1553664 m!1826295))

(declare-fun m!1826297 () Bool)

(assert (=> b!1553665 m!1826297))

(assert (=> b!1553150 m!1825610))

(declare-fun b!1553667 () Bool)

(declare-fun e!996653 () Bool)

(declare-fun tp!454739 () Bool)

(declare-fun tp!454740 () Bool)

(assert (=> b!1553667 (= e!996653 (and (inv!22064 (left!13655 (right!13985 (c!252471 input!1676)))) tp!454739 (inv!22064 (right!13985 (right!13985 (c!252471 input!1676)))) tp!454740))))

(declare-fun b!1553669 () Bool)

(declare-fun e!996654 () Bool)

(declare-fun tp!454741 () Bool)

(assert (=> b!1553669 (= e!996654 tp!454741)))

(declare-fun b!1553668 () Bool)

(assert (=> b!1553668 (= e!996653 (and (inv!22069 (xs!8361 (right!13985 (c!252471 input!1676)))) e!996654))))

(assert (=> b!1553150 (= tp!454598 (and (inv!22064 (right!13985 (c!252471 input!1676))) e!996653))))

(assert (= (and b!1553150 ((_ is Node!5561) (right!13985 (c!252471 input!1676)))) b!1553667))

(assert (= b!1553668 b!1553669))

(assert (= (and b!1553150 ((_ is Leaf!8242) (right!13985 (c!252471 input!1676)))) b!1553668))

(declare-fun m!1826299 () Bool)

(assert (=> b!1553667 m!1826299))

(declare-fun m!1826301 () Bool)

(assert (=> b!1553667 m!1826301))

(declare-fun m!1826303 () Bool)

(assert (=> b!1553668 m!1826303))

(assert (=> b!1553150 m!1825612))

(declare-fun condSetEmpty!10720 () Bool)

(assert (=> setNonEmpty!10707 (= condSetEmpty!10720 (= setRest!10707 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10720 () Bool)

(assert (=> setNonEmpty!10707 (= tp!454590 setRes!10720)))

(declare-fun setIsEmpty!10720 () Bool)

(assert (=> setIsEmpty!10720 setRes!10720))

(declare-fun setElem!10720 () Context!1578)

(declare-fun setNonEmpty!10720 () Bool)

(declare-fun e!996657 () Bool)

(declare-fun tp!454747 () Bool)

(assert (=> setNonEmpty!10720 (= setRes!10720 (and tp!454747 (inv!22068 setElem!10720) e!996657))))

(declare-fun setRest!10720 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10720 (= setRest!10707 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10720 true) setRest!10720))))

(declare-fun b!1553674 () Bool)

(declare-fun tp!454746 () Bool)

(assert (=> b!1553674 (= e!996657 tp!454746)))

(assert (= (and setNonEmpty!10707 condSetEmpty!10720) setIsEmpty!10720))

(assert (= (and setNonEmpty!10707 (not condSetEmpty!10720)) setNonEmpty!10720))

(assert (= setNonEmpty!10720 b!1553674))

(declare-fun m!1826305 () Bool)

(assert (=> setNonEmpty!10720 m!1826305))

(declare-fun e!996677 () Bool)

(declare-fun e!996682 () Bool)

(declare-fun e!996680 () Bool)

(assert (=> d!460747 (= true (and e!996677 e!996682 e!996680))))

(declare-fun b!1553695 () Bool)

(declare-fun e!996683 () Bool)

(declare-fun lt!538117 () MutLongMap!1785)

(assert (=> b!1553695 (= e!996683 ((_ is LongMap!1785) lt!538117))))

(assert (=> b!1553695 (= lt!538117 (v!23631 (underlying!3780 (cache!2110 (_2!9448 (findLongestMatchWithZipperSequenceV3Mem!46 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1553696 () Bool)

(declare-fun e!996676 () Bool)

(declare-fun e!996684 () Bool)

(assert (=> b!1553696 (= e!996676 e!996684)))

(declare-fun b!1553697 () Bool)

(declare-fun e!996678 () Bool)

(declare-fun e!996681 () Bool)

(assert (=> b!1553697 (= e!996678 e!996681)))

(declare-fun b!1553698 () Bool)

(assert (=> b!1553698 (= e!996682 e!996676)))

(declare-fun b!1553699 () Bool)

(declare-fun lt!538119 () MutLongMap!1786)

(assert (=> b!1553699 (= e!996681 ((_ is LongMap!1786) lt!538119))))

(assert (=> b!1553699 (= lt!538119 (v!23633 (underlying!3782 (cache!2111 (_4!443 (findLongestMatchWithZipperSequenceV3Mem!46 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun b!1553700 () Bool)

(declare-fun e!996679 () Bool)

(assert (=> b!1553700 (= e!996679 e!996683)))

(declare-fun b!1553701 () Bool)

(assert (=> b!1553701 (= e!996677 e!996679)))

(declare-fun b!1553702 () Bool)

(assert (=> b!1553702 (= e!996680 e!996678)))

(declare-fun b!1553703 () Bool)

(declare-fun lt!538118 () MutLongMap!1787)

(assert (=> b!1553703 (= e!996684 ((_ is LongMap!1787) lt!538118))))

(assert (=> b!1553703 (= lt!538118 (v!23635 (underlying!3784 (cache!2112 (_3!1330 (findLongestMatchWithZipperSequenceV3Mem!46 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(assert (= b!1553700 b!1553695))

(assert (= (and b!1553701 ((_ is HashMap!1729) (cache!2110 (_2!9448 (findLongestMatchWithZipperSequenceV3Mem!46 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1553700))

(assert (= d!460747 b!1553701))

(assert (= b!1553696 b!1553703))

(assert (= (and b!1553698 ((_ is HashMap!1731) (cache!2112 (_3!1330 (findLongestMatchWithZipperSequenceV3Mem!46 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1553696))

(assert (= d!460747 b!1553698))

(assert (= b!1553697 b!1553699))

(assert (= (and b!1553702 ((_ is HashMap!1730) (cache!2111 (_4!443 (findLongestMatchWithZipperSequenceV3Mem!46 (regex!2943 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))) b!1553697))

(assert (= d!460747 b!1553702))

(declare-fun condSetEmpty!10721 () Bool)

(assert (=> setNonEmpty!10693 (= condSetEmpty!10721 (= setRest!10693 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10721 () Bool)

(assert (=> setNonEmpty!10693 (= tp!454529 setRes!10721)))

(declare-fun setIsEmpty!10721 () Bool)

(assert (=> setIsEmpty!10721 setRes!10721))

(declare-fun e!996685 () Bool)

(declare-fun setNonEmpty!10721 () Bool)

(declare-fun tp!454749 () Bool)

(declare-fun setElem!10721 () Context!1578)

(assert (=> setNonEmpty!10721 (= setRes!10721 (and tp!454749 (inv!22068 setElem!10721) e!996685))))

(declare-fun setRest!10721 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10721 (= setRest!10693 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10721 true) setRest!10721))))

(declare-fun b!1553704 () Bool)

(declare-fun tp!454748 () Bool)

(assert (=> b!1553704 (= e!996685 tp!454748)))

(assert (= (and setNonEmpty!10693 condSetEmpty!10721) setIsEmpty!10721))

(assert (= (and setNonEmpty!10693 (not condSetEmpty!10721)) setNonEmpty!10721))

(assert (= setNonEmpty!10721 b!1553704))

(declare-fun m!1826307 () Bool)

(assert (=> setNonEmpty!10721 m!1826307))

(declare-fun mapIsEmpty!8304 () Bool)

(declare-fun mapRes!8304 () Bool)

(assert (=> mapIsEmpty!8304 mapRes!8304))

(declare-fun setNonEmpty!10722 () Bool)

(declare-fun setRes!10723 () Bool)

(declare-fun setElem!10723 () Context!1578)

(declare-fun tp!454755 () Bool)

(declare-fun e!996688 () Bool)

(assert (=> setNonEmpty!10722 (= setRes!10723 (and tp!454755 (inv!22068 setElem!10723) e!996688))))

(declare-fun mapValue!8304 () List!16862)

(declare-fun setRest!10722 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10722 (= (_1!9442 (_1!9443 (h!22195 mapValue!8304))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10723 true) setRest!10722))))

(declare-fun b!1553706 () Bool)

(declare-fun e!996687 () Bool)

(declare-fun tp!454753 () Bool)

(assert (=> b!1553706 (= e!996687 tp!454753)))

(declare-fun setElem!10722 () Context!1578)

(declare-fun tp!454754 () Bool)

(declare-fun setNonEmpty!10723 () Bool)

(declare-fun setRes!10722 () Bool)

(assert (=> setNonEmpty!10723 (= setRes!10722 (and tp!454754 (inv!22068 setElem!10722) e!996687))))

(declare-fun mapDefault!8304 () List!16862)

(declare-fun setRest!10723 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10723 (= (_1!9442 (_1!9443 (h!22195 mapDefault!8304))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10722 true) setRest!10723))))

(declare-fun setIsEmpty!10722 () Bool)

(assert (=> setIsEmpty!10722 setRes!10722))

(declare-fun condMapEmpty!8304 () Bool)

(assert (=> mapNonEmpty!8291 (= condMapEmpty!8304 (= mapRest!8291 ((as const (Array (_ BitVec 32) List!16862)) mapDefault!8304)))))

(declare-fun e!996686 () Bool)

(assert (=> mapNonEmpty!8291 (= tp!454573 (and e!996686 mapRes!8304))))

(declare-fun b!1553705 () Bool)

(declare-fun tp!454750 () Bool)

(assert (=> b!1553705 (= e!996686 (and setRes!10722 tp!454750))))

(declare-fun condSetEmpty!10723 () Bool)

(assert (=> b!1553705 (= condSetEmpty!10723 (= (_1!9442 (_1!9443 (h!22195 mapDefault!8304))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10723 () Bool)

(assert (=> setIsEmpty!10723 setRes!10723))

(declare-fun b!1553707 () Bool)

(declare-fun tp!454756 () Bool)

(assert (=> b!1553707 (= e!996688 tp!454756)))

(declare-fun mapNonEmpty!8304 () Bool)

(declare-fun tp!454752 () Bool)

(declare-fun e!996689 () Bool)

(assert (=> mapNonEmpty!8304 (= mapRes!8304 (and tp!454752 e!996689))))

(declare-fun mapKey!8304 () (_ BitVec 32))

(declare-fun mapRest!8304 () (Array (_ BitVec 32) List!16862))

(assert (=> mapNonEmpty!8304 (= mapRest!8291 (store mapRest!8304 mapKey!8304 mapValue!8304))))

(declare-fun b!1553708 () Bool)

(declare-fun tp!454751 () Bool)

(assert (=> b!1553708 (= e!996689 (and setRes!10723 tp!454751))))

(declare-fun condSetEmpty!10722 () Bool)

(assert (=> b!1553708 (= condSetEmpty!10722 (= (_1!9442 (_1!9443 (h!22195 mapValue!8304))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= (and mapNonEmpty!8291 condMapEmpty!8304) mapIsEmpty!8304))

(assert (= (and mapNonEmpty!8291 (not condMapEmpty!8304)) mapNonEmpty!8304))

(assert (= (and b!1553708 condSetEmpty!10722) setIsEmpty!10723))

(assert (= (and b!1553708 (not condSetEmpty!10722)) setNonEmpty!10722))

(assert (= setNonEmpty!10722 b!1553707))

(assert (= (and mapNonEmpty!8304 ((_ is Cons!16794) mapValue!8304)) b!1553708))

(assert (= (and b!1553705 condSetEmpty!10723) setIsEmpty!10722))

(assert (= (and b!1553705 (not condSetEmpty!10723)) setNonEmpty!10723))

(assert (= setNonEmpty!10723 b!1553706))

(assert (= (and mapNonEmpty!8291 ((_ is Cons!16794) mapDefault!8304)) b!1553705))

(declare-fun m!1826309 () Bool)

(assert (=> setNonEmpty!10722 m!1826309))

(declare-fun m!1826311 () Bool)

(assert (=> setNonEmpty!10723 m!1826311))

(declare-fun m!1826313 () Bool)

(assert (=> mapNonEmpty!8304 m!1826313))

(declare-fun condSetEmpty!10724 () Bool)

(assert (=> setNonEmpty!10703 (= condSetEmpty!10724 (= setRest!10703 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10724 () Bool)

(assert (=> setNonEmpty!10703 (= tp!454575 setRes!10724)))

(declare-fun setIsEmpty!10724 () Bool)

(assert (=> setIsEmpty!10724 setRes!10724))

(declare-fun e!996690 () Bool)

(declare-fun tp!454758 () Bool)

(declare-fun setNonEmpty!10724 () Bool)

(declare-fun setElem!10724 () Context!1578)

(assert (=> setNonEmpty!10724 (= setRes!10724 (and tp!454758 (inv!22068 setElem!10724) e!996690))))

(declare-fun setRest!10724 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10724 (= setRest!10703 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10724 true) setRest!10724))))

(declare-fun b!1553709 () Bool)

(declare-fun tp!454757 () Bool)

(assert (=> b!1553709 (= e!996690 tp!454757)))

(assert (= (and setNonEmpty!10703 condSetEmpty!10724) setIsEmpty!10724))

(assert (= (and setNonEmpty!10703 (not condSetEmpty!10724)) setNonEmpty!10724))

(assert (= setNonEmpty!10724 b!1553709))

(declare-fun m!1826315 () Bool)

(assert (=> setNonEmpty!10724 m!1826315))

(declare-fun b!1553713 () Bool)

(declare-fun e!996691 () Bool)

(declare-fun tp!454762 () Bool)

(declare-fun tp!454761 () Bool)

(assert (=> b!1553713 (= e!996691 (and tp!454762 tp!454761))))

(assert (=> b!1553172 (= tp!454625 e!996691)))

(declare-fun b!1553711 () Bool)

(declare-fun tp!454763 () Bool)

(declare-fun tp!454760 () Bool)

(assert (=> b!1553711 (= e!996691 (and tp!454763 tp!454760))))

(declare-fun b!1553712 () Bool)

(declare-fun tp!454759 () Bool)

(assert (=> b!1553712 (= e!996691 tp!454759)))

(declare-fun b!1553710 () Bool)

(assert (=> b!1553710 (= e!996691 tp_is_empty!7063)))

(assert (= (and b!1553172 ((_ is ElementMatch!4271) (_1!9444 (_1!9445 (h!22196 mapDefault!8294))))) b!1553710))

(assert (= (and b!1553172 ((_ is Concat!7305) (_1!9444 (_1!9445 (h!22196 mapDefault!8294))))) b!1553711))

(assert (= (and b!1553172 ((_ is Star!4271) (_1!9444 (_1!9445 (h!22196 mapDefault!8294))))) b!1553712))

(assert (= (and b!1553172 ((_ is Union!4271) (_1!9444 (_1!9445 (h!22196 mapDefault!8294))))) b!1553713))

(declare-fun e!996692 () Bool)

(declare-fun setNonEmpty!10725 () Bool)

(declare-fun setElem!10725 () Context!1578)

(declare-fun tp!454764 () Bool)

(declare-fun setRes!10725 () Bool)

(assert (=> setNonEmpty!10725 (= setRes!10725 (and tp!454764 (inv!22068 setElem!10725) e!996692))))

(declare-fun setRest!10725 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10725 (= (_2!9445 (h!22196 (t!141286 mapDefault!8294))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10725 true) setRest!10725))))

(declare-fun b!1553714 () Bool)

(declare-fun e!996693 () Bool)

(declare-fun tp!454765 () Bool)

(assert (=> b!1553714 (= e!996693 tp!454765)))

(declare-fun setIsEmpty!10725 () Bool)

(assert (=> setIsEmpty!10725 setRes!10725))

(declare-fun b!1553715 () Bool)

(declare-fun tp!454767 () Bool)

(assert (=> b!1553715 (= e!996692 tp!454767)))

(declare-fun e!996694 () Bool)

(assert (=> b!1553172 (= tp!454629 e!996694)))

(declare-fun tp!454766 () Bool)

(declare-fun b!1553716 () Bool)

(declare-fun tp!454768 () Bool)

(assert (=> b!1553716 (= e!996694 (and tp!454766 (inv!22068 (_2!9444 (_1!9445 (h!22196 (t!141286 mapDefault!8294))))) e!996693 tp_is_empty!7063 setRes!10725 tp!454768))))

(declare-fun condSetEmpty!10725 () Bool)

(assert (=> b!1553716 (= condSetEmpty!10725 (= (_2!9445 (h!22196 (t!141286 mapDefault!8294))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553716 b!1553714))

(assert (= (and b!1553716 condSetEmpty!10725) setIsEmpty!10725))

(assert (= (and b!1553716 (not condSetEmpty!10725)) setNonEmpty!10725))

(assert (= setNonEmpty!10725 b!1553715))

(assert (= (and b!1553172 ((_ is Cons!16795) (t!141286 mapDefault!8294))) b!1553716))

(declare-fun m!1826317 () Bool)

(assert (=> setNonEmpty!10725 m!1826317))

(declare-fun m!1826319 () Bool)

(assert (=> b!1553716 m!1826319))

(declare-fun condSetEmpty!10726 () Bool)

(assert (=> setNonEmpty!10690 (= condSetEmpty!10726 (= setRest!10690 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10726 () Bool)

(assert (=> setNonEmpty!10690 (= tp!454512 setRes!10726)))

(declare-fun setIsEmpty!10726 () Bool)

(assert (=> setIsEmpty!10726 setRes!10726))

(declare-fun setNonEmpty!10726 () Bool)

(declare-fun setElem!10726 () Context!1578)

(declare-fun e!996695 () Bool)

(declare-fun tp!454770 () Bool)

(assert (=> setNonEmpty!10726 (= setRes!10726 (and tp!454770 (inv!22068 setElem!10726) e!996695))))

(declare-fun setRest!10726 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10726 (= setRest!10690 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10726 true) setRest!10726))))

(declare-fun b!1553717 () Bool)

(declare-fun tp!454769 () Bool)

(assert (=> b!1553717 (= e!996695 tp!454769)))

(assert (= (and setNonEmpty!10690 condSetEmpty!10726) setIsEmpty!10726))

(assert (= (and setNonEmpty!10690 (not condSetEmpty!10726)) setNonEmpty!10726))

(assert (= setNonEmpty!10726 b!1553717))

(declare-fun m!1826321 () Bool)

(assert (=> setNonEmpty!10726 m!1826321))

(declare-fun b!1553718 () Bool)

(declare-fun e!996696 () Bool)

(declare-fun tp!454771 () Bool)

(declare-fun tp!454772 () Bool)

(assert (=> b!1553718 (= e!996696 (and tp!454771 tp!454772))))

(assert (=> b!1553080 (= tp!454517 e!996696)))

(assert (= (and b!1553080 ((_ is Cons!16792) (exprs!1289 setElem!10690))) b!1553718))

(declare-fun setIsEmpty!10727 () Bool)

(declare-fun setRes!10727 () Bool)

(assert (=> setIsEmpty!10727 setRes!10727))

(declare-fun e!996699 () Bool)

(declare-fun setElem!10727 () Context!1578)

(declare-fun tp!454776 () Bool)

(declare-fun setNonEmpty!10727 () Bool)

(assert (=> setNonEmpty!10727 (= setRes!10727 (and tp!454776 (inv!22068 setElem!10727) e!996699))))

(declare-fun setRest!10727 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10727 (= (_2!9441 (h!22194 (t!141284 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10727 true) setRest!10727))))

(declare-fun b!1553719 () Bool)

(declare-fun tp!454773 () Bool)

(assert (=> b!1553719 (= e!996699 tp!454773)))

(declare-fun e!996698 () Bool)

(assert (=> b!1553116 (= tp!454550 e!996698)))

(declare-fun b!1553720 () Bool)

(declare-fun e!996697 () Bool)

(declare-fun tp!454775 () Bool)

(assert (=> b!1553720 (= e!996697 tp!454775)))

(declare-fun tp!454774 () Bool)

(declare-fun b!1553721 () Bool)

(assert (=> b!1553721 (= e!996698 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 (t!141284 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))))))) e!996697 tp_is_empty!7063 setRes!10727 tp!454774))))

(declare-fun condSetEmpty!10727 () Bool)

(assert (=> b!1553721 (= condSetEmpty!10727 (= (_2!9441 (h!22194 (t!141284 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553721 b!1553720))

(assert (= (and b!1553721 condSetEmpty!10727) setIsEmpty!10727))

(assert (= (and b!1553721 (not condSetEmpty!10727)) setNonEmpty!10727))

(assert (= setNonEmpty!10727 b!1553719))

(assert (= (and b!1553116 ((_ is Cons!16793) (t!141284 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))))) b!1553721))

(declare-fun m!1826323 () Bool)

(assert (=> setNonEmpty!10727 m!1826323))

(declare-fun m!1826325 () Bool)

(assert (=> b!1553721 m!1826325))

(declare-fun b!1553722 () Bool)

(declare-fun e!996700 () Bool)

(declare-fun tp!454777 () Bool)

(declare-fun tp!454778 () Bool)

(assert (=> b!1553722 (= e!996700 (and tp!454777 tp!454778))))

(assert (=> b!1553112 (= tp!454547 e!996700)))

(assert (= (and b!1553112 ((_ is Cons!16792) (exprs!1289 setElem!10695))) b!1553722))

(declare-fun b!1553723 () Bool)

(declare-fun e!996701 () Bool)

(declare-fun tp!454779 () Bool)

(declare-fun tp!454780 () Bool)

(assert (=> b!1553723 (= e!996701 (and tp!454779 tp!454780))))

(assert (=> b!1553149 (= tp!454594 e!996701)))

(assert (= (and b!1553149 ((_ is Cons!16792) (exprs!1289 setElem!10708))) b!1553723))

(declare-fun b!1553724 () Bool)

(declare-fun e!996702 () Bool)

(declare-fun tp!454781 () Bool)

(declare-fun tp!454782 () Bool)

(assert (=> b!1553724 (= e!996702 (and tp!454781 tp!454782))))

(assert (=> b!1553109 (= tp!454542 e!996702)))

(assert (= (and b!1553109 ((_ is Cons!16792) (exprs!1289 setElem!10694))) b!1553724))

(declare-fun e!996703 () Bool)

(declare-fun tp!454783 () Bool)

(declare-fun tp!454784 () Bool)

(declare-fun b!1553725 () Bool)

(assert (=> b!1553725 (= e!996703 (and (inv!22064 (left!13655 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) tp!454783 (inv!22064 (right!13985 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) tp!454784))))

(declare-fun b!1553727 () Bool)

(declare-fun e!996704 () Bool)

(declare-fun tp!454785 () Bool)

(assert (=> b!1553727 (= e!996704 tp!454785)))

(declare-fun b!1553726 () Bool)

(assert (=> b!1553726 (= e!996703 (and (inv!22069 (xs!8361 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) e!996704))))

(assert (=> b!1553145 (= tp!454591 (and (inv!22064 (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) e!996703))))

(assert (= (and b!1553145 ((_ is Node!5561) (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) b!1553725))

(assert (= b!1553726 b!1553727))

(assert (= (and b!1553145 ((_ is Leaf!8242) (left!13655 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) b!1553726))

(declare-fun m!1826327 () Bool)

(assert (=> b!1553725 m!1826327))

(declare-fun m!1826329 () Bool)

(assert (=> b!1553725 m!1826329))

(declare-fun m!1826331 () Bool)

(assert (=> b!1553726 m!1826331))

(assert (=> b!1553145 m!1825602))

(declare-fun tp!454787 () Bool)

(declare-fun e!996705 () Bool)

(declare-fun tp!454786 () Bool)

(declare-fun b!1553728 () Bool)

(assert (=> b!1553728 (= e!996705 (and (inv!22064 (left!13655 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) tp!454786 (inv!22064 (right!13985 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) tp!454787))))

(declare-fun b!1553730 () Bool)

(declare-fun e!996706 () Bool)

(declare-fun tp!454788 () Bool)

(assert (=> b!1553730 (= e!996706 tp!454788)))

(declare-fun b!1553729 () Bool)

(assert (=> b!1553729 (= e!996705 (and (inv!22069 (xs!8361 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) e!996706))))

(assert (=> b!1553145 (= tp!454592 (and (inv!22064 (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))) e!996705))))

(assert (= (and b!1553145 ((_ is Node!5561) (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) b!1553728))

(assert (= b!1553729 b!1553730))

(assert (= (and b!1553145 ((_ is Leaf!8242) (right!13985 (c!252471 (totalInput!2450 cacheFurthestNullable!103))))) b!1553729))

(declare-fun m!1826333 () Bool)

(assert (=> b!1553728 m!1826333))

(declare-fun m!1826335 () Bool)

(assert (=> b!1553728 m!1826335))

(declare-fun m!1826337 () Bool)

(assert (=> b!1553729 m!1826337))

(assert (=> b!1553145 m!1825604))

(declare-fun b!1553731 () Bool)

(declare-fun e!996707 () Bool)

(declare-fun tp!454789 () Bool)

(declare-fun tp!454790 () Bool)

(assert (=> b!1553731 (= e!996707 (and tp!454789 tp!454790))))

(assert (=> b!1553063 (= tp!454487 e!996707)))

(assert (= (and b!1553063 ((_ is Cons!16792) (exprs!1289 (_2!9444 (_1!9445 (h!22196 mapDefault!8285)))))) b!1553731))

(declare-fun b!1553732 () Bool)

(declare-fun e!996708 () Bool)

(declare-fun tp!454791 () Bool)

(declare-fun tp!454792 () Bool)

(assert (=> b!1553732 (= e!996708 (and tp!454791 tp!454792))))

(assert (=> b!1553179 (= tp!454641 e!996708)))

(assert (= (and b!1553179 ((_ is Cons!16792) (exprs!1289 setElem!10717))) b!1553732))

(declare-fun b!1553733 () Bool)

(declare-fun e!996710 () Bool)

(declare-fun setRes!10728 () Bool)

(declare-fun tp!454794 () Bool)

(assert (=> b!1553733 (= e!996710 (and setRes!10728 tp!454794))))

(declare-fun condSetEmpty!10728 () Bool)

(assert (=> b!1553733 (= condSetEmpty!10728 (= (_1!9442 (_1!9443 (h!22195 (t!141285 mapDefault!8291)))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10728 () Bool)

(assert (=> setIsEmpty!10728 setRes!10728))

(declare-fun setNonEmpty!10728 () Bool)

(declare-fun tp!454795 () Bool)

(declare-fun setElem!10728 () Context!1578)

(declare-fun e!996709 () Bool)

(assert (=> setNonEmpty!10728 (= setRes!10728 (and tp!454795 (inv!22068 setElem!10728) e!996709))))

(declare-fun setRest!10728 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10728 (= (_1!9442 (_1!9443 (h!22195 (t!141285 mapDefault!8291)))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10728 true) setRest!10728))))

(declare-fun b!1553734 () Bool)

(declare-fun tp!454793 () Bool)

(assert (=> b!1553734 (= e!996709 tp!454793)))

(assert (=> b!1553130 (= tp!454571 e!996710)))

(assert (= (and b!1553733 condSetEmpty!10728) setIsEmpty!10728))

(assert (= (and b!1553733 (not condSetEmpty!10728)) setNonEmpty!10728))

(assert (= setNonEmpty!10728 b!1553734))

(assert (= (and b!1553130 ((_ is Cons!16794) (t!141285 mapDefault!8291))) b!1553733))

(declare-fun m!1826339 () Bool)

(assert (=> setNonEmpty!10728 m!1826339))

(declare-fun setRes!10730 () Bool)

(declare-fun e!996716 () Bool)

(declare-fun tp!454801 () Bool)

(declare-fun setNonEmpty!10729 () Bool)

(declare-fun setElem!10730 () Context!1578)

(assert (=> setNonEmpty!10729 (= setRes!10730 (and tp!454801 (inv!22068 setElem!10730) e!996716))))

(declare-fun mapDefault!8305 () List!16863)

(declare-fun setRest!10730 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10729 (= (_2!9445 (h!22196 mapDefault!8305)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10730 true) setRest!10730))))

(declare-fun b!1553735 () Bool)

(declare-fun tp!454806 () Bool)

(assert (=> b!1553735 (= e!996716 tp!454806)))

(declare-fun b!1553736 () Bool)

(declare-fun e!996711 () Bool)

(declare-fun tp!454798 () Bool)

(assert (=> b!1553736 (= e!996711 tp!454798)))

(declare-fun b!1553737 () Bool)

(declare-fun e!996712 () Bool)

(declare-fun tp!454802 () Bool)

(assert (=> b!1553737 (= e!996712 tp!454802)))

(declare-fun setIsEmpty!10729 () Bool)

(assert (=> setIsEmpty!10729 setRes!10730))

(declare-fun condMapEmpty!8305 () Bool)

(assert (=> mapNonEmpty!8294 (= condMapEmpty!8305 (= mapRest!8294 ((as const (Array (_ BitVec 32) List!16863)) mapDefault!8305)))))

(declare-fun e!996715 () Bool)

(declare-fun mapRes!8305 () Bool)

(assert (=> mapNonEmpty!8294 (= tp!454623 (and e!996715 mapRes!8305))))

(declare-fun e!996714 () Bool)

(declare-fun setElem!10729 () Context!1578)

(declare-fun tp!454796 () Bool)

(declare-fun setRes!10729 () Bool)

(declare-fun setNonEmpty!10730 () Bool)

(assert (=> setNonEmpty!10730 (= setRes!10729 (and tp!454796 (inv!22068 setElem!10729) e!996714))))

(declare-fun mapValue!8305 () List!16863)

(declare-fun setRest!10729 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10730 (= (_2!9445 (h!22196 mapValue!8305)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10729 true) setRest!10729))))

(declare-fun setIsEmpty!10730 () Bool)

(assert (=> setIsEmpty!10730 setRes!10729))

(declare-fun mapNonEmpty!8305 () Bool)

(declare-fun tp!454797 () Bool)

(declare-fun e!996713 () Bool)

(assert (=> mapNonEmpty!8305 (= mapRes!8305 (and tp!454797 e!996713))))

(declare-fun mapKey!8305 () (_ BitVec 32))

(declare-fun mapRest!8305 () (Array (_ BitVec 32) List!16863))

(assert (=> mapNonEmpty!8305 (= mapRest!8294 (store mapRest!8305 mapKey!8305 mapValue!8305))))

(declare-fun b!1553738 () Bool)

(declare-fun tp!454805 () Bool)

(assert (=> b!1553738 (= e!996714 tp!454805)))

(declare-fun mapIsEmpty!8305 () Bool)

(assert (=> mapIsEmpty!8305 mapRes!8305))

(declare-fun b!1553739 () Bool)

(declare-fun tp!454800 () Bool)

(declare-fun tp!454804 () Bool)

(assert (=> b!1553739 (= e!996713 (and tp!454804 (inv!22068 (_2!9444 (_1!9445 (h!22196 mapValue!8305)))) e!996711 tp_is_empty!7063 setRes!10729 tp!454800))))

(declare-fun condSetEmpty!10730 () Bool)

(assert (=> b!1553739 (= condSetEmpty!10730 (= (_2!9445 (h!22196 mapValue!8305)) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun tp!454803 () Bool)

(declare-fun b!1553740 () Bool)

(declare-fun tp!454799 () Bool)

(assert (=> b!1553740 (= e!996715 (and tp!454799 (inv!22068 (_2!9444 (_1!9445 (h!22196 mapDefault!8305)))) e!996712 tp_is_empty!7063 setRes!10730 tp!454803))))

(declare-fun condSetEmpty!10729 () Bool)

(assert (=> b!1553740 (= condSetEmpty!10729 (= (_2!9445 (h!22196 mapDefault!8305)) ((as const (Array Context!1578 Bool)) false)))))

(assert (= (and mapNonEmpty!8294 condMapEmpty!8305) mapIsEmpty!8305))

(assert (= (and mapNonEmpty!8294 (not condMapEmpty!8305)) mapNonEmpty!8305))

(assert (= b!1553739 b!1553736))

(assert (= (and b!1553739 condSetEmpty!10730) setIsEmpty!10730))

(assert (= (and b!1553739 (not condSetEmpty!10730)) setNonEmpty!10730))

(assert (= setNonEmpty!10730 b!1553738))

(assert (= (and mapNonEmpty!8305 ((_ is Cons!16795) mapValue!8305)) b!1553739))

(assert (= b!1553740 b!1553737))

(assert (= (and b!1553740 condSetEmpty!10729) setIsEmpty!10729))

(assert (= (and b!1553740 (not condSetEmpty!10729)) setNonEmpty!10729))

(assert (= setNonEmpty!10729 b!1553735))

(assert (= (and mapNonEmpty!8294 ((_ is Cons!16795) mapDefault!8305)) b!1553740))

(declare-fun m!1826341 () Bool)

(assert (=> b!1553739 m!1826341))

(declare-fun m!1826343 () Bool)

(assert (=> mapNonEmpty!8305 m!1826343))

(declare-fun m!1826345 () Bool)

(assert (=> setNonEmpty!10730 m!1826345))

(declare-fun m!1826347 () Bool)

(assert (=> setNonEmpty!10729 m!1826347))

(declare-fun m!1826349 () Bool)

(assert (=> b!1553740 m!1826349))

(declare-fun b!1553741 () Bool)

(declare-fun e!996717 () Bool)

(declare-fun tp!454807 () Bool)

(declare-fun tp!454808 () Bool)

(assert (=> b!1553741 (= e!996717 (and tp!454807 tp!454808))))

(assert (=> b!1553169 (= tp!454628 e!996717)))

(assert (= (and b!1553169 ((_ is Cons!16792) (exprs!1289 (_2!9444 (_1!9445 (h!22196 mapDefault!8294)))))) b!1553741))

(declare-fun condSetEmpty!10731 () Bool)

(assert (=> setNonEmpty!10697 (= condSetEmpty!10731 (= setRest!10697 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10731 () Bool)

(assert (=> setNonEmpty!10697 (= tp!454556 setRes!10731)))

(declare-fun setIsEmpty!10731 () Bool)

(assert (=> setIsEmpty!10731 setRes!10731))

(declare-fun setNonEmpty!10731 () Bool)

(declare-fun e!996718 () Bool)

(declare-fun tp!454810 () Bool)

(declare-fun setElem!10731 () Context!1578)

(assert (=> setNonEmpty!10731 (= setRes!10731 (and tp!454810 (inv!22068 setElem!10731) e!996718))))

(declare-fun setRest!10731 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10731 (= setRest!10697 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10731 true) setRest!10731))))

(declare-fun b!1553742 () Bool)

(declare-fun tp!454809 () Bool)

(assert (=> b!1553742 (= e!996718 tp!454809)))

(assert (= (and setNonEmpty!10697 condSetEmpty!10731) setIsEmpty!10731))

(assert (= (and setNonEmpty!10697 (not condSetEmpty!10731)) setNonEmpty!10731))

(assert (= setNonEmpty!10731 b!1553742))

(declare-fun m!1826351 () Bool)

(assert (=> setNonEmpty!10731 m!1826351))

(declare-fun condSetEmpty!10732 () Bool)

(assert (=> setNonEmpty!10706 (= condSetEmpty!10732 (= setRest!10706 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10732 () Bool)

(assert (=> setNonEmpty!10706 (= tp!454586 setRes!10732)))

(declare-fun setIsEmpty!10732 () Bool)

(assert (=> setIsEmpty!10732 setRes!10732))

(declare-fun e!996719 () Bool)

(declare-fun setNonEmpty!10732 () Bool)

(declare-fun tp!454812 () Bool)

(declare-fun setElem!10732 () Context!1578)

(assert (=> setNonEmpty!10732 (= setRes!10732 (and tp!454812 (inv!22068 setElem!10732) e!996719))))

(declare-fun setRest!10732 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10732 (= setRest!10706 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10732 true) setRest!10732))))

(declare-fun b!1553743 () Bool)

(declare-fun tp!454811 () Bool)

(assert (=> b!1553743 (= e!996719 tp!454811)))

(assert (= (and setNonEmpty!10706 condSetEmpty!10732) setIsEmpty!10732))

(assert (= (and setNonEmpty!10706 (not condSetEmpty!10732)) setNonEmpty!10732))

(assert (= setNonEmpty!10732 b!1553743))

(declare-fun m!1826353 () Bool)

(assert (=> setNonEmpty!10732 m!1826353))

(declare-fun e!996720 () Bool)

(declare-fun b!1553744 () Bool)

(declare-fun tp!454813 () Bool)

(declare-fun tp!454814 () Bool)

(assert (=> b!1553744 (= e!996720 (and (inv!22064 (left!13655 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))))) tp!454813 (inv!22064 (right!13985 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))))) tp!454814))))

(declare-fun b!1553746 () Bool)

(declare-fun e!996721 () Bool)

(declare-fun tp!454815 () Bool)

(assert (=> b!1553746 (= e!996721 tp!454815)))

(declare-fun b!1553745 () Bool)

(assert (=> b!1553745 (= e!996720 (and (inv!22069 (xs!8361 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))))) e!996721))))

(assert (=> b!1553184 (= tp!454646 (and (inv!22064 (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838)))))) e!996720))))

(assert (= (and b!1553184 ((_ is Node!5561) (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))))) b!1553744))

(assert (= b!1553745 b!1553746))

(assert (= (and b!1553184 ((_ is Leaf!8242) (c!252471 (dynLambda!7436 (toChars!4169 (transformation!2943 rule!240)) (dynLambda!7435 (toValue!4310 (transformation!2943 rule!240)) (_1!9447 (_1!9448 lt!537838))))))) b!1553745))

(declare-fun m!1826355 () Bool)

(assert (=> b!1553744 m!1826355))

(declare-fun m!1826357 () Bool)

(assert (=> b!1553744 m!1826357))

(declare-fun m!1826359 () Bool)

(assert (=> b!1553745 m!1826359))

(assert (=> b!1553184 m!1825634))

(declare-fun b!1553747 () Bool)

(declare-fun e!996722 () Bool)

(declare-fun tp!454816 () Bool)

(declare-fun tp!454817 () Bool)

(assert (=> b!1553747 (= e!996722 (and tp!454816 tp!454817))))

(assert (=> b!1553142 (= tp!454587 e!996722)))

(assert (= (and b!1553142 ((_ is Cons!16792) (exprs!1289 setElem!10707))) b!1553747))

(declare-fun b!1553751 () Bool)

(declare-fun e!996723 () Bool)

(declare-fun tp!454821 () Bool)

(declare-fun tp!454820 () Bool)

(assert (=> b!1553751 (= e!996723 (and tp!454821 tp!454820))))

(assert (=> b!1553054 (= tp!454474 e!996723)))

(declare-fun b!1553749 () Bool)

(declare-fun tp!454822 () Bool)

(declare-fun tp!454819 () Bool)

(assert (=> b!1553749 (= e!996723 (and tp!454822 tp!454819))))

(declare-fun b!1553750 () Bool)

(declare-fun tp!454818 () Bool)

(assert (=> b!1553750 (= e!996723 tp!454818)))

(declare-fun b!1553748 () Bool)

(assert (=> b!1553748 (= e!996723 tp_is_empty!7063)))

(assert (= (and b!1553054 ((_ is ElementMatch!4271) (regOne!9055 (regex!2943 rule!240)))) b!1553748))

(assert (= (and b!1553054 ((_ is Concat!7305) (regOne!9055 (regex!2943 rule!240)))) b!1553749))

(assert (= (and b!1553054 ((_ is Star!4271) (regOne!9055 (regex!2943 rule!240)))) b!1553750))

(assert (= (and b!1553054 ((_ is Union!4271) (regOne!9055 (regex!2943 rule!240)))) b!1553751))

(declare-fun b!1553755 () Bool)

(declare-fun e!996724 () Bool)

(declare-fun tp!454826 () Bool)

(declare-fun tp!454825 () Bool)

(assert (=> b!1553755 (= e!996724 (and tp!454826 tp!454825))))

(assert (=> b!1553054 (= tp!454473 e!996724)))

(declare-fun b!1553753 () Bool)

(declare-fun tp!454827 () Bool)

(declare-fun tp!454824 () Bool)

(assert (=> b!1553753 (= e!996724 (and tp!454827 tp!454824))))

(declare-fun b!1553754 () Bool)

(declare-fun tp!454823 () Bool)

(assert (=> b!1553754 (= e!996724 tp!454823)))

(declare-fun b!1553752 () Bool)

(assert (=> b!1553752 (= e!996724 tp_is_empty!7063)))

(assert (= (and b!1553054 ((_ is ElementMatch!4271) (regTwo!9055 (regex!2943 rule!240)))) b!1553752))

(assert (= (and b!1553054 ((_ is Concat!7305) (regTwo!9055 (regex!2943 rule!240)))) b!1553753))

(assert (= (and b!1553054 ((_ is Star!4271) (regTwo!9055 (regex!2943 rule!240)))) b!1553754))

(assert (= (and b!1553054 ((_ is Union!4271) (regTwo!9055 (regex!2943 rule!240)))) b!1553755))

(declare-fun b!1553756 () Bool)

(declare-fun e!996725 () Bool)

(declare-fun tp!454828 () Bool)

(declare-fun tp!454829 () Bool)

(assert (=> b!1553756 (= e!996725 (and tp!454828 tp!454829))))

(assert (=> b!1553094 (= tp!454526 e!996725)))

(assert (= (and b!1553094 ((_ is Cons!16792) (exprs!1289 setElem!10693))) b!1553756))

(declare-fun b!1553757 () Bool)

(declare-fun e!996726 () Bool)

(declare-fun tp!454830 () Bool)

(declare-fun tp!454831 () Bool)

(assert (=> b!1553757 (= e!996726 (and tp!454830 tp!454831))))

(assert (=> b!1553174 (= tp!454636 e!996726)))

(assert (= (and b!1553174 ((_ is Cons!16792) (exprs!1289 setElem!10715))) b!1553757))

(declare-fun b!1553758 () Bool)

(declare-fun e!996728 () Bool)

(declare-fun setRes!10733 () Bool)

(declare-fun tp!454833 () Bool)

(assert (=> b!1553758 (= e!996728 (and setRes!10733 tp!454833))))

(declare-fun condSetEmpty!10733 () Bool)

(assert (=> b!1553758 (= condSetEmpty!10733 (= (_1!9442 (_1!9443 (h!22195 (t!141285 mapValue!8291)))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10733 () Bool)

(assert (=> setIsEmpty!10733 setRes!10733))

(declare-fun e!996727 () Bool)

(declare-fun tp!454834 () Bool)

(declare-fun setElem!10733 () Context!1578)

(declare-fun setNonEmpty!10733 () Bool)

(assert (=> setNonEmpty!10733 (= setRes!10733 (and tp!454834 (inv!22068 setElem!10733) e!996727))))

(declare-fun setRest!10733 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10733 (= (_1!9442 (_1!9443 (h!22195 (t!141285 mapValue!8291)))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10733 true) setRest!10733))))

(declare-fun b!1553759 () Bool)

(declare-fun tp!454832 () Bool)

(assert (=> b!1553759 (= e!996727 tp!454832)))

(assert (=> b!1553133 (= tp!454572 e!996728)))

(assert (= (and b!1553758 condSetEmpty!10733) setIsEmpty!10733))

(assert (= (and b!1553758 (not condSetEmpty!10733)) setNonEmpty!10733))

(assert (= setNonEmpty!10733 b!1553759))

(assert (= (and b!1553133 ((_ is Cons!16794) (t!141285 mapValue!8291))) b!1553758))

(declare-fun m!1826361 () Bool)

(assert (=> setNonEmpty!10733 m!1826361))

(declare-fun b!1553760 () Bool)

(declare-fun e!996729 () Bool)

(declare-fun tp!454835 () Bool)

(declare-fun tp!454836 () Bool)

(assert (=> b!1553760 (= e!996729 (and tp!454835 tp!454836))))

(assert (=> b!1553085 (= tp!454509 e!996729)))

(assert (= (and b!1553085 ((_ is Cons!16792) (exprs!1289 (_1!9440 (_1!9441 (h!22194 mapDefault!8288)))))) b!1553760))

(declare-fun b!1553764 () Bool)

(declare-fun e!996730 () Bool)

(declare-fun tp!454840 () Bool)

(declare-fun tp!454839 () Bool)

(assert (=> b!1553764 (= e!996730 (and tp!454840 tp!454839))))

(assert (=> b!1553113 (= tp!454546 e!996730)))

(declare-fun b!1553762 () Bool)

(declare-fun tp!454841 () Bool)

(declare-fun tp!454838 () Bool)

(assert (=> b!1553762 (= e!996730 (and tp!454841 tp!454838))))

(declare-fun b!1553763 () Bool)

(declare-fun tp!454837 () Bool)

(assert (=> b!1553763 (= e!996730 tp!454837)))

(declare-fun b!1553761 () Bool)

(assert (=> b!1553761 (= e!996730 tp_is_empty!7063)))

(assert (= (and b!1553113 ((_ is ElementMatch!4271) (_1!9444 (_1!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) b!1553761))

(assert (= (and b!1553113 ((_ is Concat!7305) (_1!9444 (_1!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) b!1553762))

(assert (= (and b!1553113 ((_ is Star!4271) (_1!9444 (_1!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) b!1553763))

(assert (= (and b!1553113 ((_ is Union!4271) (_1!9444 (_1!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) b!1553764))

(declare-fun setNonEmpty!10734 () Bool)

(declare-fun e!996731 () Bool)

(declare-fun setRes!10734 () Bool)

(declare-fun setElem!10734 () Context!1578)

(declare-fun tp!454842 () Bool)

(assert (=> setNonEmpty!10734 (= setRes!10734 (and tp!454842 (inv!22068 setElem!10734) e!996731))))

(declare-fun setRest!10734 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10734 (= (_2!9445 (h!22196 (t!141286 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10734 true) setRest!10734))))

(declare-fun b!1553765 () Bool)

(declare-fun e!996732 () Bool)

(declare-fun tp!454843 () Bool)

(assert (=> b!1553765 (= e!996732 tp!454843)))

(declare-fun setIsEmpty!10734 () Bool)

(assert (=> setIsEmpty!10734 setRes!10734))

(declare-fun b!1553766 () Bool)

(declare-fun tp!454845 () Bool)

(assert (=> b!1553766 (= e!996731 tp!454845)))

(declare-fun e!996733 () Bool)

(assert (=> b!1553113 (= tp!454548 e!996733)))

(declare-fun tp!454846 () Bool)

(declare-fun tp!454844 () Bool)

(declare-fun b!1553767 () Bool)

(assert (=> b!1553767 (= e!996733 (and tp!454844 (inv!22068 (_2!9444 (_1!9445 (h!22196 (t!141286 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) e!996732 tp_is_empty!7063 setRes!10734 tp!454846))))

(declare-fun condSetEmpty!10734 () Bool)

(assert (=> b!1553767 (= condSetEmpty!10734 (= (_2!9445 (h!22196 (t!141286 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553767 b!1553765))

(assert (= (and b!1553767 condSetEmpty!10734) setIsEmpty!10734))

(assert (= (and b!1553767 (not condSetEmpty!10734)) setNonEmpty!10734))

(assert (= setNonEmpty!10734 b!1553766))

(assert (= (and b!1553113 ((_ is Cons!16795) (t!141286 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))) b!1553767))

(declare-fun m!1826363 () Bool)

(assert (=> setNonEmpty!10734 m!1826363))

(declare-fun m!1826365 () Bool)

(assert (=> b!1553767 m!1826365))

(declare-fun b!1553771 () Bool)

(declare-fun e!996734 () Bool)

(declare-fun tp!454850 () Bool)

(declare-fun tp!454849 () Bool)

(assert (=> b!1553771 (= e!996734 (and tp!454850 tp!454849))))

(assert (=> b!1553110 (= tp!454541 e!996734)))

(declare-fun b!1553769 () Bool)

(declare-fun tp!454851 () Bool)

(declare-fun tp!454848 () Bool)

(assert (=> b!1553769 (= e!996734 (and tp!454851 tp!454848))))

(declare-fun b!1553770 () Bool)

(declare-fun tp!454847 () Bool)

(assert (=> b!1553770 (= e!996734 tp!454847)))

(declare-fun b!1553768 () Bool)

(assert (=> b!1553768 (= e!996734 tp_is_empty!7063)))

(assert (= (and b!1553110 ((_ is ElementMatch!4271) (_1!9444 (_1!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) b!1553768))

(assert (= (and b!1553110 ((_ is Concat!7305) (_1!9444 (_1!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) b!1553769))

(assert (= (and b!1553110 ((_ is Star!4271) (_1!9444 (_1!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) b!1553770))

(assert (= (and b!1553110 ((_ is Union!4271) (_1!9444 (_1!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) b!1553771))

(declare-fun setElem!10735 () Context!1578)

(declare-fun tp!454852 () Bool)

(declare-fun e!996735 () Bool)

(declare-fun setNonEmpty!10735 () Bool)

(declare-fun setRes!10735 () Bool)

(assert (=> setNonEmpty!10735 (= setRes!10735 (and tp!454852 (inv!22068 setElem!10735) e!996735))))

(declare-fun setRest!10735 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10735 (= (_2!9445 (h!22196 (t!141286 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10735 true) setRest!10735))))

(declare-fun b!1553772 () Bool)

(declare-fun e!996736 () Bool)

(declare-fun tp!454853 () Bool)

(assert (=> b!1553772 (= e!996736 tp!454853)))

(declare-fun setIsEmpty!10735 () Bool)

(assert (=> setIsEmpty!10735 setRes!10735))

(declare-fun b!1553773 () Bool)

(declare-fun tp!454855 () Bool)

(assert (=> b!1553773 (= e!996735 tp!454855)))

(declare-fun e!996737 () Bool)

(assert (=> b!1553110 (= tp!454543 e!996737)))

(declare-fun tp!454854 () Bool)

(declare-fun b!1553774 () Bool)

(declare-fun tp!454856 () Bool)

(assert (=> b!1553774 (= e!996737 (and tp!454854 (inv!22068 (_2!9444 (_1!9445 (h!22196 (t!141286 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))))) e!996736 tp_is_empty!7063 setRes!10735 tp!454856))))

(declare-fun condSetEmpty!10735 () Bool)

(assert (=> b!1553774 (= condSetEmpty!10735 (= (_2!9445 (h!22196 (t!141286 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553774 b!1553772))

(assert (= (and b!1553774 condSetEmpty!10735) setIsEmpty!10735))

(assert (= (and b!1553774 (not condSetEmpty!10735)) setNonEmpty!10735))

(assert (= setNonEmpty!10735 b!1553773))

(assert (= (and b!1553110 ((_ is Cons!16795) (t!141286 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768))))))))) b!1553774))

(declare-fun m!1826367 () Bool)

(assert (=> setNonEmpty!10735 m!1826367))

(declare-fun m!1826369 () Bool)

(assert (=> b!1553774 m!1826369))

(declare-fun condSetEmpty!10736 () Bool)

(assert (=> setNonEmpty!10716 (= condSetEmpty!10736 (= setRest!10716 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10736 () Bool)

(assert (=> setNonEmpty!10716 (= tp!454640 setRes!10736)))

(declare-fun setIsEmpty!10736 () Bool)

(assert (=> setIsEmpty!10736 setRes!10736))

(declare-fun setElem!10736 () Context!1578)

(declare-fun e!996738 () Bool)

(declare-fun setNonEmpty!10736 () Bool)

(declare-fun tp!454858 () Bool)

(assert (=> setNonEmpty!10736 (= setRes!10736 (and tp!454858 (inv!22068 setElem!10736) e!996738))))

(declare-fun setRest!10736 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10736 (= setRest!10716 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10736 true) setRest!10736))))

(declare-fun b!1553775 () Bool)

(declare-fun tp!454857 () Bool)

(assert (=> b!1553775 (= e!996738 tp!454857)))

(assert (= (and setNonEmpty!10716 condSetEmpty!10736) setIsEmpty!10736))

(assert (= (and setNonEmpty!10716 (not condSetEmpty!10736)) setNonEmpty!10736))

(assert (= setNonEmpty!10736 b!1553775))

(declare-fun m!1826371 () Bool)

(assert (=> setNonEmpty!10736 m!1826371))

(declare-fun setIsEmpty!10737 () Bool)

(declare-fun setRes!10737 () Bool)

(assert (=> setIsEmpty!10737 setRes!10737))

(declare-fun setNonEmpty!10737 () Bool)

(declare-fun tp!454862 () Bool)

(declare-fun setElem!10737 () Context!1578)

(declare-fun e!996741 () Bool)

(assert (=> setNonEmpty!10737 (= setRes!10737 (and tp!454862 (inv!22068 setElem!10737) e!996741))))

(declare-fun setRest!10737 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10737 (= (_2!9441 (h!22194 (t!141284 mapDefault!8288))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10737 true) setRest!10737))))

(declare-fun b!1553776 () Bool)

(declare-fun tp!454859 () Bool)

(assert (=> b!1553776 (= e!996741 tp!454859)))

(declare-fun e!996740 () Bool)

(assert (=> b!1553082 (= tp!454510 e!996740)))

(declare-fun b!1553777 () Bool)

(declare-fun e!996739 () Bool)

(declare-fun tp!454861 () Bool)

(assert (=> b!1553777 (= e!996739 tp!454861)))

(declare-fun tp!454860 () Bool)

(declare-fun b!1553778 () Bool)

(assert (=> b!1553778 (= e!996740 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 (t!141284 mapDefault!8288))))) e!996739 tp_is_empty!7063 setRes!10737 tp!454860))))

(declare-fun condSetEmpty!10737 () Bool)

(assert (=> b!1553778 (= condSetEmpty!10737 (= (_2!9441 (h!22194 (t!141284 mapDefault!8288))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553778 b!1553777))

(assert (= (and b!1553778 condSetEmpty!10737) setIsEmpty!10737))

(assert (= (and b!1553778 (not condSetEmpty!10737)) setNonEmpty!10737))

(assert (= setNonEmpty!10737 b!1553776))

(assert (= (and b!1553082 ((_ is Cons!16793) (t!141284 mapDefault!8288))) b!1553778))

(declare-fun m!1826373 () Bool)

(assert (=> setNonEmpty!10737 m!1826373))

(declare-fun m!1826375 () Bool)

(assert (=> b!1553778 m!1826375))

(declare-fun b!1553779 () Bool)

(declare-fun e!996742 () Bool)

(declare-fun tp!454863 () Bool)

(declare-fun tp!454864 () Bool)

(assert (=> b!1553779 (= e!996742 (and tp!454863 tp!454864))))

(assert (=> b!1553170 (= tp!454631 e!996742)))

(assert (= (and b!1553170 ((_ is Cons!16792) (exprs!1289 setElem!10713))) b!1553779))

(declare-fun mapIsEmpty!8306 () Bool)

(declare-fun mapRes!8306 () Bool)

(assert (=> mapIsEmpty!8306 mapRes!8306))

(declare-fun b!1553780 () Bool)

(declare-fun e!996746 () Bool)

(declare-fun tp!454873 () Bool)

(assert (=> b!1553780 (= e!996746 tp!454873)))

(declare-fun mapNonEmpty!8306 () Bool)

(declare-fun tp!454871 () Bool)

(declare-fun e!996744 () Bool)

(assert (=> mapNonEmpty!8306 (= mapRes!8306 (and tp!454871 e!996744))))

(declare-fun mapValue!8306 () List!16861)

(declare-fun mapRest!8306 () (Array (_ BitVec 32) List!16861))

(declare-fun mapKey!8306 () (_ BitVec 32))

(assert (=> mapNonEmpty!8306 (= mapRest!8288 (store mapRest!8306 mapKey!8306 mapValue!8306))))

(declare-fun condMapEmpty!8306 () Bool)

(declare-fun mapDefault!8306 () List!16861)

(assert (=> mapNonEmpty!8288 (= condMapEmpty!8306 (= mapRest!8288 ((as const (Array (_ BitVec 32) List!16861)) mapDefault!8306)))))

(declare-fun e!996747 () Bool)

(assert (=> mapNonEmpty!8288 (= tp!454515 (and e!996747 mapRes!8306))))

(declare-fun b!1553781 () Bool)

(declare-fun e!996745 () Bool)

(declare-fun tp!454869 () Bool)

(assert (=> b!1553781 (= e!996745 tp!454869)))

(declare-fun setRes!10739 () Bool)

(declare-fun setNonEmpty!10738 () Bool)

(declare-fun tp!454870 () Bool)

(declare-fun setElem!10739 () Context!1578)

(assert (=> setNonEmpty!10738 (= setRes!10739 (and tp!454870 (inv!22068 setElem!10739) e!996746))))

(declare-fun setRest!10738 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10738 (= (_2!9441 (h!22194 mapValue!8306)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10739 true) setRest!10738))))

(declare-fun setNonEmpty!10739 () Bool)

(declare-fun setElem!10738 () Context!1578)

(declare-fun setRes!10738 () Bool)

(declare-fun e!996743 () Bool)

(declare-fun tp!454868 () Bool)

(assert (=> setNonEmpty!10739 (= setRes!10738 (and tp!454868 (inv!22068 setElem!10738) e!996743))))

(declare-fun setRest!10739 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10739 (= (_2!9441 (h!22194 mapDefault!8306)) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10738 true) setRest!10739))))

(declare-fun b!1553782 () Bool)

(declare-fun e!996748 () Bool)

(declare-fun tp!454866 () Bool)

(assert (=> b!1553782 (= e!996747 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 mapDefault!8306)))) e!996748 tp_is_empty!7063 setRes!10738 tp!454866))))

(declare-fun condSetEmpty!10738 () Bool)

(assert (=> b!1553782 (= condSetEmpty!10738 (= (_2!9441 (h!22194 mapDefault!8306)) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun tp!454867 () Bool)

(declare-fun b!1553783 () Bool)

(assert (=> b!1553783 (= e!996744 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 mapValue!8306)))) e!996745 tp_is_empty!7063 setRes!10739 tp!454867))))

(declare-fun condSetEmpty!10739 () Bool)

(assert (=> b!1553783 (= condSetEmpty!10739 (= (_2!9441 (h!22194 mapValue!8306)) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun b!1553784 () Bool)

(declare-fun tp!454872 () Bool)

(assert (=> b!1553784 (= e!996743 tp!454872)))

(declare-fun setIsEmpty!10738 () Bool)

(assert (=> setIsEmpty!10738 setRes!10739))

(declare-fun b!1553785 () Bool)

(declare-fun tp!454865 () Bool)

(assert (=> b!1553785 (= e!996748 tp!454865)))

(declare-fun setIsEmpty!10739 () Bool)

(assert (=> setIsEmpty!10739 setRes!10738))

(assert (= (and mapNonEmpty!8288 condMapEmpty!8306) mapIsEmpty!8306))

(assert (= (and mapNonEmpty!8288 (not condMapEmpty!8306)) mapNonEmpty!8306))

(assert (= b!1553783 b!1553781))

(assert (= (and b!1553783 condSetEmpty!10739) setIsEmpty!10738))

(assert (= (and b!1553783 (not condSetEmpty!10739)) setNonEmpty!10738))

(assert (= setNonEmpty!10738 b!1553780))

(assert (= (and mapNonEmpty!8306 ((_ is Cons!16793) mapValue!8306)) b!1553783))

(assert (= b!1553782 b!1553785))

(assert (= (and b!1553782 condSetEmpty!10738) setIsEmpty!10739))

(assert (= (and b!1553782 (not condSetEmpty!10738)) setNonEmpty!10739))

(assert (= setNonEmpty!10739 b!1553784))

(assert (= (and mapNonEmpty!8288 ((_ is Cons!16793) mapDefault!8306)) b!1553782))

(declare-fun m!1826377 () Bool)

(assert (=> b!1553782 m!1826377))

(declare-fun m!1826379 () Bool)

(assert (=> b!1553783 m!1826379))

(declare-fun m!1826381 () Bool)

(assert (=> mapNonEmpty!8306 m!1826381))

(declare-fun m!1826383 () Bool)

(assert (=> setNonEmpty!10738 m!1826383))

(declare-fun m!1826385 () Bool)

(assert (=> setNonEmpty!10739 m!1826385))

(declare-fun b!1553786 () Bool)

(declare-fun e!996749 () Bool)

(declare-fun tp!454874 () Bool)

(declare-fun tp!454875 () Bool)

(assert (=> b!1553786 (= e!996749 (and tp!454874 tp!454875))))

(assert (=> b!1553117 (= tp!454553 e!996749)))

(assert (= (and b!1553117 ((_ is Cons!16792) (exprs!1289 setElem!10697))) b!1553786))

(declare-fun condSetEmpty!10740 () Bool)

(assert (=> setNonEmpty!10696 (= condSetEmpty!10740 (= setRest!10696 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10740 () Bool)

(assert (=> setNonEmpty!10696 (= tp!454552 setRes!10740)))

(declare-fun setIsEmpty!10740 () Bool)

(assert (=> setIsEmpty!10740 setRes!10740))

(declare-fun setElem!10740 () Context!1578)

(declare-fun setNonEmpty!10740 () Bool)

(declare-fun tp!454877 () Bool)

(declare-fun e!996750 () Bool)

(assert (=> setNonEmpty!10740 (= setRes!10740 (and tp!454877 (inv!22068 setElem!10740) e!996750))))

(declare-fun setRest!10740 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10740 (= setRest!10696 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10740 true) setRest!10740))))

(declare-fun b!1553787 () Bool)

(declare-fun tp!454876 () Bool)

(assert (=> b!1553787 (= e!996750 tp!454876)))

(assert (= (and setNonEmpty!10696 condSetEmpty!10740) setIsEmpty!10740))

(assert (= (and setNonEmpty!10696 (not condSetEmpty!10740)) setNonEmpty!10740))

(assert (= setNonEmpty!10740 b!1553787))

(declare-fun m!1826387 () Bool)

(assert (=> setNonEmpty!10740 m!1826387))

(declare-fun condSetEmpty!10741 () Bool)

(assert (=> setNonEmpty!10695 (= condSetEmpty!10741 (= setRest!10695 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10741 () Bool)

(assert (=> setNonEmpty!10695 (= tp!454544 setRes!10741)))

(declare-fun setIsEmpty!10741 () Bool)

(assert (=> setIsEmpty!10741 setRes!10741))

(declare-fun setElem!10741 () Context!1578)

(declare-fun tp!454879 () Bool)

(declare-fun e!996751 () Bool)

(declare-fun setNonEmpty!10741 () Bool)

(assert (=> setNonEmpty!10741 (= setRes!10741 (and tp!454879 (inv!22068 setElem!10741) e!996751))))

(declare-fun setRest!10741 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10741 (= setRest!10695 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10741 true) setRest!10741))))

(declare-fun b!1553788 () Bool)

(declare-fun tp!454878 () Bool)

(assert (=> b!1553788 (= e!996751 tp!454878)))

(assert (= (and setNonEmpty!10695 condSetEmpty!10741) setIsEmpty!10741))

(assert (= (and setNonEmpty!10695 (not condSetEmpty!10741)) setNonEmpty!10741))

(assert (= setNonEmpty!10741 b!1553788))

(declare-fun m!1826389 () Bool)

(assert (=> setNonEmpty!10741 m!1826389))

(declare-fun b!1553789 () Bool)

(declare-fun e!996753 () Bool)

(declare-fun setRes!10742 () Bool)

(declare-fun tp!454881 () Bool)

(assert (=> b!1553789 (= e!996753 (and setRes!10742 tp!454881))))

(declare-fun condSetEmpty!10742 () Bool)

(assert (=> b!1553789 (= condSetEmpty!10742 (= (_1!9442 (_1!9443 (h!22195 (t!141285 mapDefault!8283)))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10742 () Bool)

(assert (=> setIsEmpty!10742 setRes!10742))

(declare-fun setNonEmpty!10742 () Bool)

(declare-fun e!996752 () Bool)

(declare-fun tp!454882 () Bool)

(declare-fun setElem!10742 () Context!1578)

(assert (=> setNonEmpty!10742 (= setRes!10742 (and tp!454882 (inv!22068 setElem!10742) e!996752))))

(declare-fun setRest!10742 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10742 (= (_1!9442 (_1!9443 (h!22195 (t!141285 mapDefault!8283)))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10742 true) setRest!10742))))

(declare-fun b!1553790 () Bool)

(declare-fun tp!454880 () Bool)

(assert (=> b!1553790 (= e!996752 tp!454880)))

(assert (=> b!1553148 (= tp!454595 e!996753)))

(assert (= (and b!1553789 condSetEmpty!10742) setIsEmpty!10742))

(assert (= (and b!1553789 (not condSetEmpty!10742)) setNonEmpty!10742))

(assert (= setNonEmpty!10742 b!1553790))

(assert (= (and b!1553148 ((_ is Cons!16794) (t!141285 mapDefault!8283))) b!1553789))

(declare-fun m!1826391 () Bool)

(assert (=> setNonEmpty!10742 m!1826391))

(declare-fun condSetEmpty!10743 () Bool)

(assert (=> setNonEmpty!10694 (= condSetEmpty!10743 (= setRest!10694 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10743 () Bool)

(assert (=> setNonEmpty!10694 (= tp!454539 setRes!10743)))

(declare-fun setIsEmpty!10743 () Bool)

(assert (=> setIsEmpty!10743 setRes!10743))

(declare-fun tp!454884 () Bool)

(declare-fun setNonEmpty!10743 () Bool)

(declare-fun e!996754 () Bool)

(declare-fun setElem!10743 () Context!1578)

(assert (=> setNonEmpty!10743 (= setRes!10743 (and tp!454884 (inv!22068 setElem!10743) e!996754))))

(declare-fun setRest!10743 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10743 (= setRest!10694 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10743 true) setRest!10743))))

(declare-fun b!1553791 () Bool)

(declare-fun tp!454883 () Bool)

(assert (=> b!1553791 (= e!996754 tp!454883)))

(assert (= (and setNonEmpty!10694 condSetEmpty!10743) setIsEmpty!10743))

(assert (= (and setNonEmpty!10694 (not condSetEmpty!10743)) setNonEmpty!10743))

(assert (= setNonEmpty!10743 b!1553791))

(declare-fun m!1826393 () Bool)

(assert (=> setNonEmpty!10743 m!1826393))

(declare-fun tp!454886 () Bool)

(declare-fun tp!454885 () Bool)

(declare-fun b!1553792 () Bool)

(declare-fun e!996755 () Bool)

(assert (=> b!1553792 (= e!996755 (and (inv!22064 (left!13655 (left!13655 (c!252471 totalInput!568)))) tp!454885 (inv!22064 (right!13985 (left!13655 (c!252471 totalInput!568)))) tp!454886))))

(declare-fun b!1553794 () Bool)

(declare-fun e!996756 () Bool)

(declare-fun tp!454887 () Bool)

(assert (=> b!1553794 (= e!996756 tp!454887)))

(declare-fun b!1553793 () Bool)

(assert (=> b!1553793 (= e!996755 (and (inv!22069 (xs!8361 (left!13655 (c!252471 totalInput!568)))) e!996756))))

(assert (=> b!1553105 (= tp!454536 (and (inv!22064 (left!13655 (c!252471 totalInput!568))) e!996755))))

(assert (= (and b!1553105 ((_ is Node!5561) (left!13655 (c!252471 totalInput!568)))) b!1553792))

(assert (= b!1553793 b!1553794))

(assert (= (and b!1553105 ((_ is Leaf!8242) (left!13655 (c!252471 totalInput!568)))) b!1553793))

(declare-fun m!1826395 () Bool)

(assert (=> b!1553792 m!1826395))

(declare-fun m!1826397 () Bool)

(assert (=> b!1553792 m!1826397))

(declare-fun m!1826399 () Bool)

(assert (=> b!1553793 m!1826399))

(assert (=> b!1553105 m!1825568))

(declare-fun e!996757 () Bool)

(declare-fun b!1553795 () Bool)

(declare-fun tp!454888 () Bool)

(declare-fun tp!454889 () Bool)

(assert (=> b!1553795 (= e!996757 (and (inv!22064 (left!13655 (right!13985 (c!252471 totalInput!568)))) tp!454888 (inv!22064 (right!13985 (right!13985 (c!252471 totalInput!568)))) tp!454889))))

(declare-fun b!1553797 () Bool)

(declare-fun e!996758 () Bool)

(declare-fun tp!454890 () Bool)

(assert (=> b!1553797 (= e!996758 tp!454890)))

(declare-fun b!1553796 () Bool)

(assert (=> b!1553796 (= e!996757 (and (inv!22069 (xs!8361 (right!13985 (c!252471 totalInput!568)))) e!996758))))

(assert (=> b!1553105 (= tp!454537 (and (inv!22064 (right!13985 (c!252471 totalInput!568))) e!996757))))

(assert (= (and b!1553105 ((_ is Node!5561) (right!13985 (c!252471 totalInput!568)))) b!1553795))

(assert (= b!1553796 b!1553797))

(assert (= (and b!1553105 ((_ is Leaf!8242) (right!13985 (c!252471 totalInput!568)))) b!1553796))

(declare-fun m!1826401 () Bool)

(assert (=> b!1553795 m!1826401))

(declare-fun m!1826403 () Bool)

(assert (=> b!1553795 m!1826403))

(declare-fun m!1826405 () Bool)

(assert (=> b!1553796 m!1826405))

(assert (=> b!1553105 m!1825570))

(declare-fun b!1553798 () Bool)

(declare-fun e!996759 () Bool)

(declare-fun tp!454891 () Bool)

(declare-fun tp!454892 () Bool)

(assert (=> b!1553798 (= e!996759 (and tp!454891 tp!454892))))

(assert (=> b!1553141 (= tp!454584 e!996759)))

(assert (= (and b!1553141 ((_ is Cons!16792) (exprs!1289 setElem!10706))) b!1553798))

(declare-fun b!1553799 () Bool)

(declare-fun e!996761 () Bool)

(declare-fun setRes!10744 () Bool)

(declare-fun tp!454894 () Bool)

(assert (=> b!1553799 (= e!996761 (and setRes!10744 tp!454894))))

(declare-fun condSetEmpty!10744 () Bool)

(assert (=> b!1553799 (= condSetEmpty!10744 (= (_1!9442 (_1!9443 (h!22195 (t!141285 (minValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103)))))))))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10744 () Bool)

(assert (=> setIsEmpty!10744 setRes!10744))

(declare-fun e!996760 () Bool)

(declare-fun setElem!10744 () Context!1578)

(declare-fun tp!454895 () Bool)

(declare-fun setNonEmpty!10744 () Bool)

(assert (=> setNonEmpty!10744 (= setRes!10744 (and tp!454895 (inv!22068 setElem!10744) e!996760))))

(declare-fun setRest!10744 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10744 (= (_1!9442 (_1!9443 (h!22195 (t!141285 (minValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103)))))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10744 true) setRest!10744))))

(declare-fun b!1553800 () Bool)

(declare-fun tp!454893 () Bool)

(assert (=> b!1553800 (= e!996760 tp!454893)))

(assert (=> b!1553178 (= tp!454642 e!996761)))

(assert (= (and b!1553799 condSetEmpty!10744) setIsEmpty!10744))

(assert (= (and b!1553799 (not condSetEmpty!10744)) setNonEmpty!10744))

(assert (= setNonEmpty!10744 b!1553800))

(assert (= (and b!1553178 ((_ is Cons!16794) (t!141285 (minValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))))) b!1553799))

(declare-fun m!1826407 () Bool)

(assert (=> setNonEmpty!10744 m!1826407))

(declare-fun condSetEmpty!10745 () Bool)

(assert (=> setNonEmpty!10713 (= condSetEmpty!10745 (= setRest!10714 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10745 () Bool)

(assert (=> setNonEmpty!10713 (= tp!454627 setRes!10745)))

(declare-fun setIsEmpty!10745 () Bool)

(assert (=> setIsEmpty!10745 setRes!10745))

(declare-fun setNonEmpty!10745 () Bool)

(declare-fun tp!454897 () Bool)

(declare-fun setElem!10745 () Context!1578)

(declare-fun e!996762 () Bool)

(assert (=> setNonEmpty!10745 (= setRes!10745 (and tp!454897 (inv!22068 setElem!10745) e!996762))))

(declare-fun setRest!10745 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10745 (= setRest!10714 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10745 true) setRest!10745))))

(declare-fun b!1553801 () Bool)

(declare-fun tp!454896 () Bool)

(assert (=> b!1553801 (= e!996762 tp!454896)))

(assert (= (and setNonEmpty!10713 condSetEmpty!10745) setIsEmpty!10745))

(assert (= (and setNonEmpty!10713 (not condSetEmpty!10745)) setNonEmpty!10745))

(assert (= setNonEmpty!10745 b!1553801))

(declare-fun m!1826409 () Bool)

(assert (=> setNonEmpty!10745 m!1826409))

(declare-fun b!1553806 () Bool)

(declare-fun e!996765 () Bool)

(declare-fun tp!454900 () Bool)

(assert (=> b!1553806 (= e!996765 (and tp_is_empty!7063 tp!454900))))

(assert (=> b!1553152 (= tp!454599 e!996765)))

(assert (= (and b!1553152 ((_ is Cons!16791) (innerList!5621 (xs!8361 (c!252471 input!1676))))) b!1553806))

(declare-fun b!1553807 () Bool)

(declare-fun e!996766 () Bool)

(declare-fun tp!454901 () Bool)

(declare-fun tp!454902 () Bool)

(assert (=> b!1553807 (= e!996766 (and tp!454901 tp!454902))))

(assert (=> b!1553143 (= tp!454589 e!996766)))

(assert (= (and b!1553143 ((_ is Cons!16792) (exprs!1289 (_1!9440 (_1!9441 (h!22194 mapDefault!8284)))))) b!1553807))

(declare-fun b!1553808 () Bool)

(declare-fun e!996767 () Bool)

(declare-fun tp!454903 () Bool)

(declare-fun tp!454904 () Bool)

(assert (=> b!1553808 (= e!996767 (and tp!454903 tp!454904))))

(assert (=> b!1553095 (= tp!454528 e!996767)))

(assert (= (and b!1553095 ((_ is Cons!16792) (exprs!1289 (_1!9440 (_1!9441 (h!22194 mapValue!8285)))))) b!1553808))

(declare-fun b!1553812 () Bool)

(declare-fun e!996768 () Bool)

(declare-fun tp!454908 () Bool)

(declare-fun tp!454907 () Bool)

(assert (=> b!1553812 (= e!996768 (and tp!454908 tp!454907))))

(assert (=> b!1553175 (= tp!454635 e!996768)))

(declare-fun b!1553810 () Bool)

(declare-fun tp!454909 () Bool)

(declare-fun tp!454906 () Bool)

(assert (=> b!1553810 (= e!996768 (and tp!454909 tp!454906))))

(declare-fun b!1553811 () Bool)

(declare-fun tp!454905 () Bool)

(assert (=> b!1553811 (= e!996768 tp!454905)))

(declare-fun b!1553809 () Bool)

(assert (=> b!1553809 (= e!996768 tp_is_empty!7063)))

(assert (= (and b!1553175 ((_ is ElementMatch!4271) (_1!9444 (_1!9445 (h!22196 mapValue!8283))))) b!1553809))

(assert (= (and b!1553175 ((_ is Concat!7305) (_1!9444 (_1!9445 (h!22196 mapValue!8283))))) b!1553810))

(assert (= (and b!1553175 ((_ is Star!4271) (_1!9444 (_1!9445 (h!22196 mapValue!8283))))) b!1553811))

(assert (= (and b!1553175 ((_ is Union!4271) (_1!9444 (_1!9445 (h!22196 mapValue!8283))))) b!1553812))

(declare-fun setNonEmpty!10746 () Bool)

(declare-fun e!996769 () Bool)

(declare-fun tp!454910 () Bool)

(declare-fun setElem!10746 () Context!1578)

(declare-fun setRes!10746 () Bool)

(assert (=> setNonEmpty!10746 (= setRes!10746 (and tp!454910 (inv!22068 setElem!10746) e!996769))))

(declare-fun setRest!10746 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10746 (= (_2!9445 (h!22196 (t!141286 mapValue!8283))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10746 true) setRest!10746))))

(declare-fun b!1553813 () Bool)

(declare-fun e!996770 () Bool)

(declare-fun tp!454911 () Bool)

(assert (=> b!1553813 (= e!996770 tp!454911)))

(declare-fun setIsEmpty!10746 () Bool)

(assert (=> setIsEmpty!10746 setRes!10746))

(declare-fun b!1553814 () Bool)

(declare-fun tp!454913 () Bool)

(assert (=> b!1553814 (= e!996769 tp!454913)))

(declare-fun e!996771 () Bool)

(assert (=> b!1553175 (= tp!454637 e!996771)))

(declare-fun b!1553815 () Bool)

(declare-fun tp!454914 () Bool)

(declare-fun tp!454912 () Bool)

(assert (=> b!1553815 (= e!996771 (and tp!454912 (inv!22068 (_2!9444 (_1!9445 (h!22196 (t!141286 mapValue!8283))))) e!996770 tp_is_empty!7063 setRes!10746 tp!454914))))

(declare-fun condSetEmpty!10746 () Bool)

(assert (=> b!1553815 (= condSetEmpty!10746 (= (_2!9445 (h!22196 (t!141286 mapValue!8283))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553815 b!1553813))

(assert (= (and b!1553815 condSetEmpty!10746) setIsEmpty!10746))

(assert (= (and b!1553815 (not condSetEmpty!10746)) setNonEmpty!10746))

(assert (= setNonEmpty!10746 b!1553814))

(assert (= (and b!1553175 ((_ is Cons!16795) (t!141286 mapValue!8283))) b!1553815))

(declare-fun m!1826411 () Bool)

(assert (=> setNonEmpty!10746 m!1826411))

(declare-fun m!1826413 () Bool)

(assert (=> b!1553815 m!1826413))

(declare-fun setIsEmpty!10747 () Bool)

(declare-fun setRes!10747 () Bool)

(assert (=> setIsEmpty!10747 setRes!10747))

(declare-fun setElem!10747 () Context!1578)

(declare-fun tp!454918 () Bool)

(declare-fun setNonEmpty!10747 () Bool)

(declare-fun e!996774 () Bool)

(assert (=> setNonEmpty!10747 (= setRes!10747 (and tp!454918 (inv!22068 setElem!10747) e!996774))))

(declare-fun setRest!10747 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10747 (= (_2!9441 (h!22194 (t!141284 mapValue!8288))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10747 true) setRest!10747))))

(declare-fun b!1553816 () Bool)

(declare-fun tp!454915 () Bool)

(assert (=> b!1553816 (= e!996774 tp!454915)))

(declare-fun e!996773 () Bool)

(assert (=> b!1553083 (= tp!454511 e!996773)))

(declare-fun b!1553817 () Bool)

(declare-fun e!996772 () Bool)

(declare-fun tp!454917 () Bool)

(assert (=> b!1553817 (= e!996772 tp!454917)))

(declare-fun tp!454916 () Bool)

(declare-fun b!1553818 () Bool)

(assert (=> b!1553818 (= e!996773 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 (t!141284 mapValue!8288))))) e!996772 tp_is_empty!7063 setRes!10747 tp!454916))))

(declare-fun condSetEmpty!10747 () Bool)

(assert (=> b!1553818 (= condSetEmpty!10747 (= (_2!9441 (h!22194 (t!141284 mapValue!8288))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553818 b!1553817))

(assert (= (and b!1553818 condSetEmpty!10747) setIsEmpty!10747))

(assert (= (and b!1553818 (not condSetEmpty!10747)) setNonEmpty!10747))

(assert (= setNonEmpty!10747 b!1553816))

(assert (= (and b!1553083 ((_ is Cons!16793) (t!141284 mapValue!8288))) b!1553818))

(declare-fun m!1826415 () Bool)

(assert (=> setNonEmpty!10747 m!1826415))

(declare-fun m!1826417 () Bool)

(assert (=> b!1553818 m!1826417))

(declare-fun b!1553819 () Bool)

(declare-fun e!996775 () Bool)

(declare-fun tp!454919 () Bool)

(assert (=> b!1553819 (= e!996775 (and tp_is_empty!7063 tp!454919))))

(assert (=> b!1553147 (= tp!454593 e!996775)))

(assert (= (and b!1553147 ((_ is Cons!16791) (innerList!5621 (xs!8361 (c!252471 (totalInput!2450 cacheFurthestNullable!103)))))) b!1553819))

(declare-fun b!1553820 () Bool)

(declare-fun e!996776 () Bool)

(declare-fun tp!454920 () Bool)

(declare-fun tp!454921 () Bool)

(assert (=> b!1553820 (= e!996776 (and tp!454920 tp!454921))))

(assert (=> b!1553064 (= tp!454489 e!996776)))

(assert (= (and b!1553064 ((_ is Cons!16792) (exprs!1289 setElem!10684))) b!1553820))

(declare-fun b!1553821 () Bool)

(declare-fun e!996777 () Bool)

(declare-fun tp!454922 () Bool)

(declare-fun tp!454923 () Bool)

(assert (=> b!1553821 (= e!996777 (and tp!454922 tp!454923))))

(assert (=> b!1553177 (= tp!454638 e!996777)))

(assert (= (and b!1553177 ((_ is Cons!16792) (exprs!1289 setElem!10716))) b!1553821))

(declare-fun condSetEmpty!10748 () Bool)

(assert (=> setNonEmpty!10715 (= condSetEmpty!10748 (= setRest!10715 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10748 () Bool)

(assert (=> setNonEmpty!10715 (= tp!454633 setRes!10748)))

(declare-fun setIsEmpty!10748 () Bool)

(assert (=> setIsEmpty!10748 setRes!10748))

(declare-fun tp!454925 () Bool)

(declare-fun setElem!10748 () Context!1578)

(declare-fun setNonEmpty!10748 () Bool)

(declare-fun e!996778 () Bool)

(assert (=> setNonEmpty!10748 (= setRes!10748 (and tp!454925 (inv!22068 setElem!10748) e!996778))))

(declare-fun setRest!10748 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10748 (= setRest!10715 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10748 true) setRest!10748))))

(declare-fun b!1553822 () Bool)

(declare-fun tp!454924 () Bool)

(assert (=> b!1553822 (= e!996778 tp!454924)))

(assert (= (and setNonEmpty!10715 condSetEmpty!10748) setIsEmpty!10748))

(assert (= (and setNonEmpty!10715 (not condSetEmpty!10748)) setNonEmpty!10748))

(assert (= setNonEmpty!10748 b!1553822))

(declare-fun m!1826419 () Bool)

(assert (=> setNonEmpty!10748 m!1826419))

(declare-fun b!1553823 () Bool)

(declare-fun e!996779 () Bool)

(declare-fun tp!454926 () Bool)

(declare-fun tp!454927 () Bool)

(assert (=> b!1553823 (= e!996779 (and tp!454926 tp!454927))))

(assert (=> b!1553108 (= tp!454540 e!996779)))

(assert (= (and b!1553108 ((_ is Cons!16792) (exprs!1289 (_2!9444 (_1!9445 (h!22196 (zeroValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))))))) b!1553823))

(declare-fun condSetEmpty!10749 () Bool)

(assert (=> setNonEmpty!10702 (= condSetEmpty!10749 (= setRest!10702 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10749 () Bool)

(assert (=> setNonEmpty!10702 (= tp!454576 setRes!10749)))

(declare-fun setIsEmpty!10749 () Bool)

(assert (=> setIsEmpty!10749 setRes!10749))

(declare-fun setNonEmpty!10749 () Bool)

(declare-fun tp!454929 () Bool)

(declare-fun setElem!10749 () Context!1578)

(declare-fun e!996780 () Bool)

(assert (=> setNonEmpty!10749 (= setRes!10749 (and tp!454929 (inv!22068 setElem!10749) e!996780))))

(declare-fun setRest!10749 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10749 (= setRest!10702 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10749 true) setRest!10749))))

(declare-fun b!1553824 () Bool)

(declare-fun tp!454928 () Bool)

(assert (=> b!1553824 (= e!996780 tp!454928)))

(assert (= (and setNonEmpty!10702 condSetEmpty!10749) setIsEmpty!10749))

(assert (= (and setNonEmpty!10702 (not condSetEmpty!10749)) setNonEmpty!10749))

(assert (= setNonEmpty!10749 b!1553824))

(declare-fun m!1826421 () Bool)

(assert (=> setNonEmpty!10749 m!1826421))

(declare-fun b!1553825 () Bool)

(declare-fun e!996781 () Bool)

(declare-fun tp!454930 () Bool)

(declare-fun tp!454931 () Bool)

(assert (=> b!1553825 (= e!996781 (and tp!454930 tp!454931))))

(assert (=> b!1553081 (= tp!454513 e!996781)))

(assert (= (and b!1553081 ((_ is Cons!16792) (exprs!1289 (_1!9440 (_1!9441 (h!22194 mapValue!8288)))))) b!1553825))

(declare-fun condSetEmpty!10750 () Bool)

(assert (=> setNonEmpty!10714 (= condSetEmpty!10750 (= setRest!10713 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10750 () Bool)

(assert (=> setNonEmpty!10714 (= tp!454622 setRes!10750)))

(declare-fun setIsEmpty!10750 () Bool)

(assert (=> setIsEmpty!10750 setRes!10750))

(declare-fun setNonEmpty!10750 () Bool)

(declare-fun e!996782 () Bool)

(declare-fun tp!454933 () Bool)

(declare-fun setElem!10750 () Context!1578)

(assert (=> setNonEmpty!10750 (= setRes!10750 (and tp!454933 (inv!22068 setElem!10750) e!996782))))

(declare-fun setRest!10750 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10750 (= setRest!10713 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10750 true) setRest!10750))))

(declare-fun b!1553826 () Bool)

(declare-fun tp!454932 () Bool)

(assert (=> b!1553826 (= e!996782 tp!454932)))

(assert (= (and setNonEmpty!10714 condSetEmpty!10750) setIsEmpty!10750))

(assert (= (and setNonEmpty!10714 (not condSetEmpty!10750)) setNonEmpty!10750))

(assert (= setNonEmpty!10750 b!1553826))

(declare-fun m!1826423 () Bool)

(assert (=> setNonEmpty!10750 m!1826423))

(declare-fun b!1553827 () Bool)

(declare-fun e!996783 () Bool)

(declare-fun tp!454934 () Bool)

(declare-fun tp!454935 () Bool)

(assert (=> b!1553827 (= e!996783 (and tp!454934 tp!454935))))

(assert (=> b!1553118 (= tp!454555 e!996783)))

(assert (= (and b!1553118 ((_ is Cons!16792) (exprs!1289 (_1!9440 (_1!9441 (h!22194 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))))))) b!1553827))

(declare-fun b!1553828 () Bool)

(declare-fun e!996784 () Bool)

(declare-fun tp!454936 () Bool)

(declare-fun tp!454937 () Bool)

(assert (=> b!1553828 (= e!996784 (and tp!454936 tp!454937))))

(assert (=> b!1553114 (= tp!454549 e!996784)))

(assert (= (and b!1553114 ((_ is Cons!16792) (exprs!1289 setElem!10696))) b!1553828))

(declare-fun b!1553829 () Bool)

(declare-fun e!996785 () Bool)

(declare-fun tp!454938 () Bool)

(declare-fun tp!454939 () Bool)

(assert (=> b!1553829 (= e!996785 (and tp!454938 tp!454939))))

(assert (=> b!1553111 (= tp!454545 e!996785)))

(assert (= (and b!1553111 ((_ is Cons!16792) (exprs!1289 (_2!9444 (_1!9445 (h!22196 (minValue!2044 (v!23634 (underlying!3783 (v!23635 (underlying!3784 (cache!2112 cacheDown!768)))))))))))) b!1553829))

(declare-fun setIsEmpty!10751 () Bool)

(declare-fun setRes!10751 () Bool)

(assert (=> setIsEmpty!10751 setRes!10751))

(declare-fun e!996788 () Bool)

(declare-fun tp!454943 () Bool)

(declare-fun setElem!10751 () Context!1578)

(declare-fun setNonEmpty!10751 () Bool)

(assert (=> setNonEmpty!10751 (= setRes!10751 (and tp!454943 (inv!22068 setElem!10751) e!996788))))

(declare-fun setRest!10751 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10751 (= (_2!9441 (h!22194 (t!141284 mapDefault!8284))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10751 true) setRest!10751))))

(declare-fun b!1553830 () Bool)

(declare-fun tp!454940 () Bool)

(assert (=> b!1553830 (= e!996788 tp!454940)))

(declare-fun e!996787 () Bool)

(assert (=> b!1553144 (= tp!454588 e!996787)))

(declare-fun b!1553831 () Bool)

(declare-fun e!996786 () Bool)

(declare-fun tp!454942 () Bool)

(assert (=> b!1553831 (= e!996786 tp!454942)))

(declare-fun b!1553832 () Bool)

(declare-fun tp!454941 () Bool)

(assert (=> b!1553832 (= e!996787 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 (t!141284 mapDefault!8284))))) e!996786 tp_is_empty!7063 setRes!10751 tp!454941))))

(declare-fun condSetEmpty!10751 () Bool)

(assert (=> b!1553832 (= condSetEmpty!10751 (= (_2!9441 (h!22194 (t!141284 mapDefault!8284))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553832 b!1553831))

(assert (= (and b!1553832 condSetEmpty!10751) setIsEmpty!10751))

(assert (= (and b!1553832 (not condSetEmpty!10751)) setNonEmpty!10751))

(assert (= setNonEmpty!10751 b!1553830))

(assert (= (and b!1553144 ((_ is Cons!16793) (t!141284 mapDefault!8284))) b!1553832))

(declare-fun m!1826425 () Bool)

(assert (=> setNonEmpty!10751 m!1826425))

(declare-fun m!1826427 () Bool)

(assert (=> b!1553832 m!1826427))

(declare-fun b!1553833 () Bool)

(declare-fun e!996790 () Bool)

(declare-fun setRes!10752 () Bool)

(declare-fun tp!454945 () Bool)

(assert (=> b!1553833 (= e!996790 (and setRes!10752 tp!454945))))

(declare-fun condSetEmpty!10752 () Bool)

(assert (=> b!1553833 (= condSetEmpty!10752 (= (_1!9442 (_1!9443 (h!22195 (t!141285 mapValue!8284)))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10752 () Bool)

(assert (=> setIsEmpty!10752 setRes!10752))

(declare-fun setNonEmpty!10752 () Bool)

(declare-fun setElem!10752 () Context!1578)

(declare-fun tp!454946 () Bool)

(declare-fun e!996789 () Bool)

(assert (=> setNonEmpty!10752 (= setRes!10752 (and tp!454946 (inv!22068 setElem!10752) e!996789))))

(declare-fun setRest!10752 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10752 (= (_1!9442 (_1!9443 (h!22195 (t!141285 mapValue!8284)))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10752 true) setRest!10752))))

(declare-fun b!1553834 () Bool)

(declare-fun tp!454944 () Bool)

(assert (=> b!1553834 (= e!996789 tp!454944)))

(assert (=> b!1553140 (= tp!454585 e!996790)))

(assert (= (and b!1553833 condSetEmpty!10752) setIsEmpty!10752))

(assert (= (and b!1553833 (not condSetEmpty!10752)) setNonEmpty!10752))

(assert (= setNonEmpty!10752 b!1553834))

(assert (= (and b!1553140 ((_ is Cons!16794) (t!141285 mapValue!8284))) b!1553833))

(declare-fun m!1826429 () Bool)

(assert (=> setNonEmpty!10752 m!1826429))

(declare-fun b!1553835 () Bool)

(declare-fun e!996791 () Bool)

(declare-fun tp!454947 () Bool)

(declare-fun tp!454948 () Bool)

(assert (=> b!1553835 (= e!996791 (and tp!454947 tp!454948))))

(assert (=> b!1553167 (= tp!454632 e!996791)))

(assert (= (and b!1553167 ((_ is Cons!16792) (exprs!1289 setElem!10714))) b!1553835))

(declare-fun setIsEmpty!10753 () Bool)

(declare-fun setRes!10753 () Bool)

(assert (=> setIsEmpty!10753 setRes!10753))

(declare-fun setNonEmpty!10753 () Bool)

(declare-fun tp!454952 () Bool)

(declare-fun e!996794 () Bool)

(declare-fun setElem!10753 () Context!1578)

(assert (=> setNonEmpty!10753 (= setRes!10753 (and tp!454952 (inv!22068 setElem!10753) e!996794))))

(declare-fun setRest!10753 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10753 (= (_2!9441 (h!22194 (t!141284 mapValue!8285))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10753 true) setRest!10753))))

(declare-fun b!1553836 () Bool)

(declare-fun tp!454949 () Bool)

(assert (=> b!1553836 (= e!996794 tp!454949)))

(declare-fun e!996793 () Bool)

(assert (=> b!1553096 (= tp!454527 e!996793)))

(declare-fun b!1553837 () Bool)

(declare-fun e!996792 () Bool)

(declare-fun tp!454951 () Bool)

(assert (=> b!1553837 (= e!996792 tp!454951)))

(declare-fun tp!454950 () Bool)

(declare-fun b!1553838 () Bool)

(assert (=> b!1553838 (= e!996793 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 (t!141284 mapValue!8285))))) e!996792 tp_is_empty!7063 setRes!10753 tp!454950))))

(declare-fun condSetEmpty!10753 () Bool)

(assert (=> b!1553838 (= condSetEmpty!10753 (= (_2!9441 (h!22194 (t!141284 mapValue!8285))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553838 b!1553837))

(assert (= (and b!1553838 condSetEmpty!10753) setIsEmpty!10753))

(assert (= (and b!1553838 (not condSetEmpty!10753)) setNonEmpty!10753))

(assert (= setNonEmpty!10753 b!1553836))

(assert (= (and b!1553096 ((_ is Cons!16793) (t!141284 mapValue!8285))) b!1553838))

(declare-fun m!1826431 () Bool)

(assert (=> setNonEmpty!10753 m!1826431))

(declare-fun m!1826433 () Bool)

(assert (=> b!1553838 m!1826433))

(declare-fun b!1553842 () Bool)

(declare-fun e!996795 () Bool)

(declare-fun tp!454956 () Bool)

(declare-fun tp!454955 () Bool)

(assert (=> b!1553842 (= e!996795 (and tp!454956 tp!454955))))

(assert (=> b!1553052 (= tp!454475 e!996795)))

(declare-fun b!1553840 () Bool)

(declare-fun tp!454957 () Bool)

(declare-fun tp!454954 () Bool)

(assert (=> b!1553840 (= e!996795 (and tp!454957 tp!454954))))

(declare-fun b!1553841 () Bool)

(declare-fun tp!454953 () Bool)

(assert (=> b!1553841 (= e!996795 tp!454953)))

(declare-fun b!1553839 () Bool)

(assert (=> b!1553839 (= e!996795 tp_is_empty!7063)))

(assert (= (and b!1553052 ((_ is ElementMatch!4271) (regOne!9054 (regex!2943 rule!240)))) b!1553839))

(assert (= (and b!1553052 ((_ is Concat!7305) (regOne!9054 (regex!2943 rule!240)))) b!1553840))

(assert (= (and b!1553052 ((_ is Star!4271) (regOne!9054 (regex!2943 rule!240)))) b!1553841))

(assert (= (and b!1553052 ((_ is Union!4271) (regOne!9054 (regex!2943 rule!240)))) b!1553842))

(declare-fun b!1553846 () Bool)

(declare-fun e!996796 () Bool)

(declare-fun tp!454961 () Bool)

(declare-fun tp!454960 () Bool)

(assert (=> b!1553846 (= e!996796 (and tp!454961 tp!454960))))

(assert (=> b!1553052 (= tp!454472 e!996796)))

(declare-fun b!1553844 () Bool)

(declare-fun tp!454962 () Bool)

(declare-fun tp!454959 () Bool)

(assert (=> b!1553844 (= e!996796 (and tp!454962 tp!454959))))

(declare-fun b!1553845 () Bool)

(declare-fun tp!454958 () Bool)

(assert (=> b!1553845 (= e!996796 tp!454958)))

(declare-fun b!1553843 () Bool)

(assert (=> b!1553843 (= e!996796 tp_is_empty!7063)))

(assert (= (and b!1553052 ((_ is ElementMatch!4271) (regTwo!9054 (regex!2943 rule!240)))) b!1553843))

(assert (= (and b!1553052 ((_ is Concat!7305) (regTwo!9054 (regex!2943 rule!240)))) b!1553844))

(assert (= (and b!1553052 ((_ is Star!4271) (regTwo!9054 (regex!2943 rule!240)))) b!1553845))

(assert (= (and b!1553052 ((_ is Union!4271) (regTwo!9054 (regex!2943 rule!240)))) b!1553846))

(declare-fun b!1553847 () Bool)

(declare-fun e!996797 () Bool)

(declare-fun tp!454963 () Bool)

(declare-fun tp!454964 () Bool)

(assert (=> b!1553847 (= e!996797 (and tp!454963 tp!454964))))

(assert (=> b!1553173 (= tp!454634 e!996797)))

(assert (= (and b!1553173 ((_ is Cons!16792) (exprs!1289 (_2!9444 (_1!9445 (h!22196 mapValue!8283)))))) b!1553847))

(declare-fun b!1553848 () Bool)

(declare-fun e!996798 () Bool)

(declare-fun tp!454965 () Bool)

(declare-fun tp!454966 () Bool)

(assert (=> b!1553848 (= e!996798 (and tp!454965 tp!454966))))

(assert (=> b!1553132 (= tp!454577 e!996798)))

(assert (= (and b!1553132 ((_ is Cons!16792) (exprs!1289 setElem!10703))) b!1553848))

(declare-fun b!1553849 () Bool)

(declare-fun e!996799 () Bool)

(declare-fun tp!454967 () Bool)

(declare-fun tp!454968 () Bool)

(assert (=> b!1553849 (= e!996799 (and tp!454967 tp!454968))))

(assert (=> b!1553084 (= tp!454516 e!996799)))

(assert (= (and b!1553084 ((_ is Cons!16792) (exprs!1289 setElem!10689))) b!1553849))

(declare-fun condSetEmpty!10754 () Bool)

(assert (=> setNonEmpty!10689 (= condSetEmpty!10754 (= setRest!10689 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10754 () Bool)

(assert (=> setNonEmpty!10689 (= tp!454514 setRes!10754)))

(declare-fun setIsEmpty!10754 () Bool)

(assert (=> setIsEmpty!10754 setRes!10754))

(declare-fun tp!454970 () Bool)

(declare-fun setElem!10754 () Context!1578)

(declare-fun setNonEmpty!10754 () Bool)

(declare-fun e!996800 () Bool)

(assert (=> setNonEmpty!10754 (= setRes!10754 (and tp!454970 (inv!22068 setElem!10754) e!996800))))

(declare-fun setRest!10754 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10754 (= setRest!10689 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10754 true) setRest!10754))))

(declare-fun b!1553850 () Bool)

(declare-fun tp!454969 () Bool)

(assert (=> b!1553850 (= e!996800 tp!454969)))

(assert (= (and setNonEmpty!10689 condSetEmpty!10754) setIsEmpty!10754))

(assert (= (and setNonEmpty!10689 (not condSetEmpty!10754)) setNonEmpty!10754))

(assert (= setNonEmpty!10754 b!1553850))

(declare-fun m!1826435 () Bool)

(assert (=> setNonEmpty!10754 m!1826435))

(declare-fun b!1553854 () Bool)

(declare-fun e!996801 () Bool)

(declare-fun tp!454974 () Bool)

(declare-fun tp!454973 () Bool)

(assert (=> b!1553854 (= e!996801 (and tp!454974 tp!454973))))

(assert (=> b!1553065 (= tp!454488 e!996801)))

(declare-fun b!1553852 () Bool)

(declare-fun tp!454975 () Bool)

(declare-fun tp!454972 () Bool)

(assert (=> b!1553852 (= e!996801 (and tp!454975 tp!454972))))

(declare-fun b!1553853 () Bool)

(declare-fun tp!454971 () Bool)

(assert (=> b!1553853 (= e!996801 tp!454971)))

(declare-fun b!1553851 () Bool)

(assert (=> b!1553851 (= e!996801 tp_is_empty!7063)))

(assert (= (and b!1553065 ((_ is ElementMatch!4271) (_1!9444 (_1!9445 (h!22196 mapDefault!8285))))) b!1553851))

(assert (= (and b!1553065 ((_ is Concat!7305) (_1!9444 (_1!9445 (h!22196 mapDefault!8285))))) b!1553852))

(assert (= (and b!1553065 ((_ is Star!4271) (_1!9444 (_1!9445 (h!22196 mapDefault!8285))))) b!1553853))

(assert (= (and b!1553065 ((_ is Union!4271) (_1!9444 (_1!9445 (h!22196 mapDefault!8285))))) b!1553854))

(declare-fun e!996802 () Bool)

(declare-fun setRes!10755 () Bool)

(declare-fun tp!454976 () Bool)

(declare-fun setNonEmpty!10755 () Bool)

(declare-fun setElem!10755 () Context!1578)

(assert (=> setNonEmpty!10755 (= setRes!10755 (and tp!454976 (inv!22068 setElem!10755) e!996802))))

(declare-fun setRest!10755 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10755 (= (_2!9445 (h!22196 (t!141286 mapDefault!8285))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10755 true) setRest!10755))))

(declare-fun b!1553855 () Bool)

(declare-fun e!996803 () Bool)

(declare-fun tp!454977 () Bool)

(assert (=> b!1553855 (= e!996803 tp!454977)))

(declare-fun setIsEmpty!10755 () Bool)

(assert (=> setIsEmpty!10755 setRes!10755))

(declare-fun b!1553856 () Bool)

(declare-fun tp!454979 () Bool)

(assert (=> b!1553856 (= e!996802 tp!454979)))

(declare-fun e!996804 () Bool)

(assert (=> b!1553065 (= tp!454490 e!996804)))

(declare-fun tp!454978 () Bool)

(declare-fun tp!454980 () Bool)

(declare-fun b!1553857 () Bool)

(assert (=> b!1553857 (= e!996804 (and tp!454978 (inv!22068 (_2!9444 (_1!9445 (h!22196 (t!141286 mapDefault!8285))))) e!996803 tp_is_empty!7063 setRes!10755 tp!454980))))

(declare-fun condSetEmpty!10755 () Bool)

(assert (=> b!1553857 (= condSetEmpty!10755 (= (_2!9445 (h!22196 (t!141286 mapDefault!8285))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553857 b!1553855))

(assert (= (and b!1553857 condSetEmpty!10755) setIsEmpty!10755))

(assert (= (and b!1553857 (not condSetEmpty!10755)) setNonEmpty!10755))

(assert (= setNonEmpty!10755 b!1553856))

(assert (= (and b!1553065 ((_ is Cons!16795) (t!141286 mapDefault!8285))) b!1553857))

(declare-fun m!1826437 () Bool)

(assert (=> setNonEmpty!10755 m!1826437))

(declare-fun m!1826439 () Bool)

(assert (=> b!1553857 m!1826439))

(declare-fun setIsEmpty!10756 () Bool)

(declare-fun setRes!10756 () Bool)

(assert (=> setIsEmpty!10756 setRes!10756))

(declare-fun e!996807 () Bool)

(declare-fun tp!454984 () Bool)

(declare-fun setElem!10756 () Context!1578)

(declare-fun setNonEmpty!10756 () Bool)

(assert (=> setNonEmpty!10756 (= setRes!10756 (and tp!454984 (inv!22068 setElem!10756) e!996807))))

(declare-fun setRest!10756 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10756 (= (_2!9441 (h!22194 (t!141284 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10756 true) setRest!10756))))

(declare-fun b!1553858 () Bool)

(declare-fun tp!454981 () Bool)

(assert (=> b!1553858 (= e!996807 tp!454981)))

(declare-fun e!996806 () Bool)

(assert (=> b!1553119 (= tp!454554 e!996806)))

(declare-fun b!1553859 () Bool)

(declare-fun e!996805 () Bool)

(declare-fun tp!454983 () Bool)

(assert (=> b!1553859 (= e!996805 tp!454983)))

(declare-fun tp!454982 () Bool)

(declare-fun b!1553860 () Bool)

(assert (=> b!1553860 (= e!996806 (and (inv!22068 (_1!9440 (_1!9441 (h!22194 (t!141284 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))))))) e!996805 tp_is_empty!7063 setRes!10756 tp!454982))))

(declare-fun condSetEmpty!10756 () Bool)

(assert (=> b!1553860 (= condSetEmpty!10756 (= (_2!9441 (h!22194 (t!141284 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553860 b!1553859))

(assert (= (and b!1553860 condSetEmpty!10756) setIsEmpty!10756))

(assert (= (and b!1553860 (not condSetEmpty!10756)) setNonEmpty!10756))

(assert (= setNonEmpty!10756 b!1553858))

(assert (= (and b!1553119 ((_ is Cons!16793) (t!141284 (minValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755))))))))) b!1553860))

(declare-fun m!1826441 () Bool)

(assert (=> setNonEmpty!10756 m!1826441))

(declare-fun m!1826443 () Bool)

(assert (=> b!1553860 m!1826443))

(declare-fun b!1553861 () Bool)

(declare-fun e!996808 () Bool)

(declare-fun tp!454985 () Bool)

(declare-fun tp!454986 () Bool)

(assert (=> b!1553861 (= e!996808 (and tp!454985 tp!454986))))

(assert (=> b!1553115 (= tp!454551 e!996808)))

(assert (= (and b!1553115 ((_ is Cons!16792) (exprs!1289 (_1!9440 (_1!9441 (h!22194 (zeroValue!2042 (v!23630 (underlying!3779 (v!23631 (underlying!3780 (cache!2110 cacheUp!755)))))))))))) b!1553861))

(declare-fun condSetEmpty!10757 () Bool)

(assert (=> setNonEmpty!10684 (= condSetEmpty!10757 (= setRest!10684 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10757 () Bool)

(assert (=> setNonEmpty!10684 (= tp!454486 setRes!10757)))

(declare-fun setIsEmpty!10757 () Bool)

(assert (=> setIsEmpty!10757 setRes!10757))

(declare-fun setElem!10757 () Context!1578)

(declare-fun tp!454988 () Bool)

(declare-fun setNonEmpty!10757 () Bool)

(declare-fun e!996809 () Bool)

(assert (=> setNonEmpty!10757 (= setRes!10757 (and tp!454988 (inv!22068 setElem!10757) e!996809))))

(declare-fun setRest!10757 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10757 (= setRest!10684 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10757 true) setRest!10757))))

(declare-fun b!1553862 () Bool)

(declare-fun tp!454987 () Bool)

(assert (=> b!1553862 (= e!996809 tp!454987)))

(assert (= (and setNonEmpty!10684 condSetEmpty!10757) setIsEmpty!10757))

(assert (= (and setNonEmpty!10684 (not condSetEmpty!10757)) setNonEmpty!10757))

(assert (= setNonEmpty!10757 b!1553862))

(declare-fun m!1826445 () Bool)

(assert (=> setNonEmpty!10757 m!1826445))

(declare-fun condSetEmpty!10758 () Bool)

(assert (=> setNonEmpty!10708 (= condSetEmpty!10758 (= setRest!10708 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10758 () Bool)

(assert (=> setNonEmpty!10708 (= tp!454596 setRes!10758)))

(declare-fun setIsEmpty!10758 () Bool)

(assert (=> setIsEmpty!10758 setRes!10758))

(declare-fun setNonEmpty!10758 () Bool)

(declare-fun tp!454990 () Bool)

(declare-fun e!996810 () Bool)

(declare-fun setElem!10758 () Context!1578)

(assert (=> setNonEmpty!10758 (= setRes!10758 (and tp!454990 (inv!22068 setElem!10758) e!996810))))

(declare-fun setRest!10758 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10758 (= setRest!10708 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10758 true) setRest!10758))))

(declare-fun b!1553863 () Bool)

(declare-fun tp!454989 () Bool)

(assert (=> b!1553863 (= e!996810 tp!454989)))

(assert (= (and setNonEmpty!10708 condSetEmpty!10758) setIsEmpty!10758))

(assert (= (and setNonEmpty!10708 (not condSetEmpty!10758)) setNonEmpty!10758))

(assert (= setNonEmpty!10758 b!1553863))

(declare-fun m!1826447 () Bool)

(assert (=> setNonEmpty!10758 m!1826447))

(declare-fun b!1553864 () Bool)

(declare-fun e!996811 () Bool)

(declare-fun tp!454991 () Bool)

(assert (=> b!1553864 (= e!996811 (and tp_is_empty!7063 tp!454991))))

(assert (=> b!1553107 (= tp!454538 e!996811)))

(assert (= (and b!1553107 ((_ is Cons!16791) (innerList!5621 (xs!8361 (c!252471 totalInput!568))))) b!1553864))

(declare-fun b!1553865 () Bool)

(declare-fun e!996813 () Bool)

(declare-fun setRes!10759 () Bool)

(declare-fun tp!454993 () Bool)

(assert (=> b!1553865 (= e!996813 (and setRes!10759 tp!454993))))

(declare-fun condSetEmpty!10759 () Bool)

(assert (=> b!1553865 (= condSetEmpty!10759 (= (_1!9442 (_1!9443 (h!22195 (t!141285 (zeroValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103)))))))))) ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setIsEmpty!10759 () Bool)

(assert (=> setIsEmpty!10759 setRes!10759))

(declare-fun e!996812 () Bool)

(declare-fun setNonEmpty!10759 () Bool)

(declare-fun tp!454994 () Bool)

(declare-fun setElem!10759 () Context!1578)

(assert (=> setNonEmpty!10759 (= setRes!10759 (and tp!454994 (inv!22068 setElem!10759) e!996812))))

(declare-fun setRest!10759 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10759 (= (_1!9442 (_1!9443 (h!22195 (t!141285 (zeroValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103)))))))))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10759 true) setRest!10759))))

(declare-fun b!1553866 () Bool)

(declare-fun tp!454992 () Bool)

(assert (=> b!1553866 (= e!996812 tp!454992)))

(assert (=> b!1553176 (= tp!454639 e!996813)))

(assert (= (and b!1553865 condSetEmpty!10759) setIsEmpty!10759))

(assert (= (and b!1553865 (not condSetEmpty!10759)) setNonEmpty!10759))

(assert (= setNonEmpty!10759 b!1553866))

(assert (= (and b!1553176 ((_ is Cons!16794) (t!141285 (zeroValue!2043 (v!23632 (underlying!3781 (v!23633 (underlying!3782 (cache!2111 cacheFurthestNullable!103))))))))) b!1553865))

(declare-fun m!1826449 () Bool)

(assert (=> setNonEmpty!10759 m!1826449))

(declare-fun b!1553867 () Bool)

(declare-fun e!996814 () Bool)

(declare-fun tp!454995 () Bool)

(declare-fun tp!454996 () Bool)

(assert (=> b!1553867 (= e!996814 (and tp!454995 tp!454996))))

(assert (=> b!1553131 (= tp!454574 e!996814)))

(assert (= (and b!1553131 ((_ is Cons!16792) (exprs!1289 setElem!10702))) b!1553867))

(declare-fun b!1553871 () Bool)

(declare-fun e!996815 () Bool)

(declare-fun tp!455000 () Bool)

(declare-fun tp!454999 () Bool)

(assert (=> b!1553871 (= e!996815 (and tp!455000 tp!454999))))

(assert (=> b!1553171 (= tp!454630 e!996815)))

(declare-fun b!1553869 () Bool)

(declare-fun tp!455001 () Bool)

(declare-fun tp!454998 () Bool)

(assert (=> b!1553869 (= e!996815 (and tp!455001 tp!454998))))

(declare-fun b!1553870 () Bool)

(declare-fun tp!454997 () Bool)

(assert (=> b!1553870 (= e!996815 tp!454997)))

(declare-fun b!1553868 () Bool)

(assert (=> b!1553868 (= e!996815 tp_is_empty!7063)))

(assert (= (and b!1553171 ((_ is ElementMatch!4271) (_1!9444 (_1!9445 (h!22196 mapValue!8294))))) b!1553868))

(assert (= (and b!1553171 ((_ is Concat!7305) (_1!9444 (_1!9445 (h!22196 mapValue!8294))))) b!1553869))

(assert (= (and b!1553171 ((_ is Star!4271) (_1!9444 (_1!9445 (h!22196 mapValue!8294))))) b!1553870))

(assert (= (and b!1553171 ((_ is Union!4271) (_1!9444 (_1!9445 (h!22196 mapValue!8294))))) b!1553871))

(declare-fun e!996816 () Bool)

(declare-fun setElem!10760 () Context!1578)

(declare-fun setNonEmpty!10760 () Bool)

(declare-fun setRes!10760 () Bool)

(declare-fun tp!455002 () Bool)

(assert (=> setNonEmpty!10760 (= setRes!10760 (and tp!455002 (inv!22068 setElem!10760) e!996816))))

(declare-fun setRest!10760 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10760 (= (_2!9445 (h!22196 (t!141286 mapValue!8294))) ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10760 true) setRest!10760))))

(declare-fun b!1553872 () Bool)

(declare-fun e!996817 () Bool)

(declare-fun tp!455003 () Bool)

(assert (=> b!1553872 (= e!996817 tp!455003)))

(declare-fun setIsEmpty!10760 () Bool)

(assert (=> setIsEmpty!10760 setRes!10760))

(declare-fun b!1553873 () Bool)

(declare-fun tp!455005 () Bool)

(assert (=> b!1553873 (= e!996816 tp!455005)))

(declare-fun e!996818 () Bool)

(assert (=> b!1553171 (= tp!454626 e!996818)))

(declare-fun b!1553874 () Bool)

(declare-fun tp!455004 () Bool)

(declare-fun tp!455006 () Bool)

(assert (=> b!1553874 (= e!996818 (and tp!455004 (inv!22068 (_2!9444 (_1!9445 (h!22196 (t!141286 mapValue!8294))))) e!996817 tp_is_empty!7063 setRes!10760 tp!455006))))

(declare-fun condSetEmpty!10760 () Bool)

(assert (=> b!1553874 (= condSetEmpty!10760 (= (_2!9445 (h!22196 (t!141286 mapValue!8294))) ((as const (Array Context!1578 Bool)) false)))))

(assert (= b!1553874 b!1553872))

(assert (= (and b!1553874 condSetEmpty!10760) setIsEmpty!10760))

(assert (= (and b!1553874 (not condSetEmpty!10760)) setNonEmpty!10760))

(assert (= setNonEmpty!10760 b!1553873))

(assert (= (and b!1553171 ((_ is Cons!16795) (t!141286 mapValue!8294))) b!1553874))

(declare-fun m!1826451 () Bool)

(assert (=> setNonEmpty!10760 m!1826451))

(declare-fun m!1826453 () Bool)

(assert (=> b!1553874 m!1826453))

(declare-fun condSetEmpty!10761 () Bool)

(assert (=> setNonEmpty!10717 (= condSetEmpty!10761 (= setRest!10717 ((as const (Array Context!1578 Bool)) false)))))

(declare-fun setRes!10761 () Bool)

(assert (=> setNonEmpty!10717 (= tp!454643 setRes!10761)))

(declare-fun setIsEmpty!10761 () Bool)

(assert (=> setIsEmpty!10761 setRes!10761))

(declare-fun tp!455008 () Bool)

(declare-fun setElem!10761 () Context!1578)

(declare-fun e!996819 () Bool)

(declare-fun setNonEmpty!10761 () Bool)

(assert (=> setNonEmpty!10761 (= setRes!10761 (and tp!455008 (inv!22068 setElem!10761) e!996819))))

(declare-fun setRest!10761 () (InoxSet Context!1578))

(assert (=> setNonEmpty!10761 (= setRest!10717 ((_ map or) (store ((as const (Array Context!1578 Bool)) false) setElem!10761 true) setRest!10761))))

(declare-fun b!1553875 () Bool)

(declare-fun tp!455007 () Bool)

(assert (=> b!1553875 (= e!996819 tp!455007)))

(assert (= (and setNonEmpty!10717 condSetEmpty!10761) setIsEmpty!10761))

(assert (= (and setNonEmpty!10717 (not condSetEmpty!10761)) setNonEmpty!10761))

(assert (= setNonEmpty!10761 b!1553875))

(declare-fun m!1826455 () Bool)

(assert (=> setNonEmpty!10761 m!1826455))

(declare-fun b_lambda!48761 () Bool)

(assert (= b_lambda!48753 (or (and b!1552850 b_free!41267) b_lambda!48761)))

(declare-fun b_lambda!48763 () Bool)

(assert (= b_lambda!48747 (or b!1552846 b_lambda!48763)))

(assert (=> d!460777 d!460771))

(declare-fun b_lambda!48765 () Bool)

(assert (= b_lambda!48751 (or (and b!1552850 b_free!41265) b_lambda!48765)))

(declare-fun b_lambda!48767 () Bool)

(assert (= b_lambda!48759 (or b!1552846 b_lambda!48767)))

(assert (=> d!460969 d!460773))

(declare-fun b_lambda!48769 () Bool)

(assert (= b_lambda!48755 (or (and b!1552850 b_free!41265) b_lambda!48769)))

(check-sat (not b!1553664) tp_is_empty!7063 (not d!460837) (not b_lambda!48727) (not b!1553845) (not setNonEmpty!10735) (not b!1553836) (not bm!101938) (not b!1553390) (not b!1553665) (not b!1553422) (not b!1553263) (not b!1553713) (not b!1553817) (not b!1553754) (not d!461005) (not b!1553788) (not d!460907) b_and!108373 b_and!108407 b_and!108381 (not setNonEmpty!10748) (not b!1553816) (not bm!101924) (not b!1553709) (not d!460873) (not setNonEmpty!10742) (not d!460875) (not mapNonEmpty!8305) (not d!460973) (not d!460899) (not b!1553492) (not b!1553775) (not setNonEmpty!10733) (not b!1553260) (not b!1553629) (not b!1553333) (not b!1553437) (not d!460887) (not b!1553352) (not setNonEmpty!10738) (not b!1553344) (not tb!87291) (not d!460917) (not b!1553511) (not b!1553777) (not d!460979) (not setNonEmpty!10720) (not bm!101930) (not setNonEmpty!10751) (not b!1553755) (not b!1553442) (not b!1553757) (not setNonEmpty!10758) (not b!1553399) (not b!1553420) (not setNonEmpty!10741) (not b!1553385) (not b!1553811) (not b!1553765) (not d!461049) (not b!1553551) (not b!1553398) (not b_lambda!48769) (not setNonEmpty!10726) (not b!1553799) (not b_next!41983) (not b!1553546) (not b!1553605) (not setNonEmpty!10731) (not bm!101925) (not b!1553238) b_and!108405 (not b!1553666) (not b!1553624) (not b!1553648) (not d!460841) (not b!1553789) (not d!460999) (not d!460811) (not b!1553331) (not b!1553623) (not d!460889) (not b!1553728) (not setNonEmpty!10749) (not d!460943) (not b!1553746) (not b_lambda!48767) (not b!1553806) (not d!460845) (not b!1553848) (not setNonEmpty!10761) (not b!1553545) (not b_next!41967) (not b!1553852) (not bm!101926) (not b!1553797) (not b!1553773) (not d!460993) (not d!460995) (not b!1553798) (not d!460961) (not b!1553716) (not b!1553239) b_and!108383 (not b!1553150) (not b!1553711) (not b!1553542) (not b!1553515) (not b!1553742) (not b!1553370) (not b!1553512) (not b!1553855) (not b!1553825) (not b!1553553) (not b!1553707) (not b!1553615) (not mapNonEmpty!8306) (not b!1553859) (not d!460975) (not b!1553348) (not d!460877) (not b!1553388) (not b!1553563) (not setNonEmpty!10724) (not b!1553782) (not b!1553517) (not d!460847) (not b!1553653) (not b!1553838) (not b!1553708) (not b!1553808) (not b!1553734) (not d!461027) (not setNonEmpty!10729) (not b!1553856) (not setNonEmpty!10757) (not b!1553506) (not b!1553762) (not d!461023) (not b_lambda!48743) (not b_lambda!48745) (not b!1553833) (not d!460849) (not d!460967) (not d!460817) (not b!1553612) (not b!1553750) (not b!1553105) (not b_lambda!48725) (not b!1553781) (not b_next!41981) (not bm!101931) (not b!1553743) (not b!1553619) (not d!460885) (not d!460947) (not b!1553241) (not b!1553558) (not d!460913) (not setNonEmpty!10730) (not b!1553837) (not b!1553335) (not b!1553813) (not b!1553719) (not b!1553729) (not d!460909) (not b!1553426) (not d!461041) (not bm!101907) (not d!461045) (not b!1553738) (not b!1553408) (not b!1553571) (not b!1553860) (not setNonEmpty!10737) (not d!460857) (not b!1553739) (not b!1553818) (not b!1553725) (not b!1553645) (not b!1553425) (not b!1553346) (not setNonEmpty!10722) (not b!1553409) b_and!108409 (not bm!101934) (not d!460821) (not b!1553865) (not b!1553835) (not b!1553428) (not b!1553790) (not b!1553501) (not b!1553849) (not b!1553727) (not b!1553669) (not b!1553200) (not b!1553841) (not b!1553337) (not d!460815) (not b!1553250) (not setNonEmpty!10739) (not b!1553607) (not setNonEmpty!10740) (not b!1553486) (not b!1553875) (not b!1553674) (not b!1553712) (not d!460929) (not b!1553827) (not d!461033) (not b!1553514) (not b!1553483) (not d!460923) (not b!1553611) (not b!1553567) (not d!460983) (not mapNonEmpty!8304) (not b!1553667) (not b!1553482) (not b!1553662) (not b!1553828) (not setNonEmpty!10723) (not b!1553791) (not d!460955) (not b!1553866) (not b!1553819) (not b!1553609) (not b!1553747) (not b!1553659) (not bm!101908) (not b!1553800) (not b!1553540) (not d!460977) (not b!1553509) (not b!1553812) (not d!460813) (not bm!101927) (not d!460951) (not d!460931) (not bm!101928) (not b!1553421) (not b!1553547) (not b_lambda!48761) (not b!1553783) (not b!1553874) (not setNonEmpty!10750) (not setNonEmpty!10755) (not b!1553823) (not b!1553714) (not b!1553769) (not d!460843) (not b!1553555) (not setNonEmpty!10743) (not b!1553723) (not b!1553184) (not d!460797) (not b!1553850) (not b_lambda!48739) (not b!1553857) (not d!460903) (not b!1553807) (not b!1553259) (not mapNonEmpty!8302) (not b!1553219) (not b!1553779) (not b!1553870) (not b_next!41973) (not b!1553815) (not b!1553846) (not b!1553704) (not b!1553197) (not b!1553663) (not b!1553821) (not b!1553810) (not d!460893) (not b!1553262) (not d!461035) (not b!1553740) (not b!1553668) (not b!1553832) (not setNonEmpty!10727) (not b_next!41971) (not b!1553271) (not b!1553270) (not b!1553355) (not b!1553438) (not b!1553801) (not b!1553793) (not d!461029) (not b!1553741) (not setNonEmpty!10745) (not b!1553371) (not b!1553534) (not setNonEmpty!10725) (not b!1553853) (not b!1553786) (not d!460997) (not b_lambda!48729) (not b!1553814) (not b!1553616) (not setNonEmpty!10747) (not b!1553608) (not b!1553530) (not bm!101936) (not b!1553543) (not b!1553864) (not d!460919) (not setNonEmpty!10732) (not b!1553720) (not b_next!41985) (not setNonEmpty!10734) (not d!460963) (not b!1553541) (not setNonEmpty!10756) (not b!1553863) (not b!1553520) (not d!460851) (not b!1553521) (not b!1553533) (not b!1553256) (not d!460939) (not b!1553575) (not bm!101922) (not d!460793) (not b!1553600) b_and!108379 (not b!1553745) (not b_next!41987) (not bm!101923) (not b!1553772) (not bm!101909) (not d!460985) (not b!1553831) (not b!1553395) (not b!1553795) (not b!1553525) (not b!1553510) (not d!460911) (not d!460861) (not b!1553535) (not b_next!41991) (not d!461015) (not b!1553861) (not b!1553767) (not b!1553626) (not b!1553484) (not b!1553198) (not d!460925) (not d!460915) (not d!460839) (not b!1553622) (not b!1553196) (not setNonEmpty!10759) (not b!1553771) (not b!1553503) (not b!1553822) (not b!1553749) (not b!1553873) (not b!1553343) (not b!1553641) (not b!1553776) (not b!1553652) (not b!1553650) (not b!1553724) (not b!1553732) (not b!1553778) (not b!1553432) (not b_lambda!48763) (not b!1553872) b_and!108401 (not b!1553736) (not b!1553760) (not b!1553391) (not b!1553785) b_and!108403 (not b!1553405) (not b!1553847) (not d!460989) (not b_lambda!48757) (not bm!101921) (not setNonEmpty!10752) (not b!1553345) (not b_next!41969) (not b!1553784) (not d!460867) (not b!1553824) (not b_next!41993) (not d!461017) (not b!1553753) (not b!1553528) (not b!1553374) (not d!461009) (not b!1553764) (not b!1553430) b_and!108387 (not b!1553434) (not b!1553869) (not b!1553766) (not b_next!41979) (not b!1553508) (not tb!87289) (not b!1553265) (not b!1553386) (not setNonEmpty!10746) (not d!460879) (not d!461039) (not d!460883) (not setNonEmpty!10736) (not b!1553858) (not d!461037) (not b!1553722) b_and!108419 (not b!1553834) (not mapNonEmpty!8303) (not b!1553770) (not d!460921) (not b!1553538) (not b!1553759) (not b!1553758) (not b!1553185) (not b!1553654) (not b!1553505) (not d!460819) (not b_lambda!48741) (not b!1553661) (not b!1553513) (not b!1553780) (not b!1553854) (not b!1553356) b_and!108415 (not b!1553633) (not b!1553871) (not b!1553751) (not b!1553469) (not b!1553565) (not b!1553570) (not d!461047) (not b!1553867) (not b!1553578) (not b!1553763) (not b!1553394) (not d!461019) (not setNonEmpty!10753) (not b_next!41989) (not d!460801) (not setNonEmpty!10744) (not b!1553715) (not setNonEmpty!10754) (not b!1553787) b_and!108399 (not b!1553756) (not setNonEmpty!10760) (not b_lambda!48749) (not d!460787) (not bm!101919) (not d!461007) (not b!1553830) (not b!1553721) (not tb!87295) (not mapNonEmpty!8301) b_and!108385 (not b!1553826) (not b_lambda!48765) (not b!1553731) (not b!1553792) (not setNonEmpty!10721) (not b!1553862) (not b!1553726) (not b!1553257) (not b!1553744) (not b!1553644) (not d!460829) (not d!460905) (not b!1553445) (not b!1553820) (not b!1553145) (not tb!87293) (not b!1553706) (not b_next!41975) (not bm!101929) (not d!460927) (not b!1553375) (not d!461001) (not b!1553423) (not b!1553718) (not d!460863) (not setNonEmpty!10728) (not d!460827) (not b!1553730) (not b!1553796) (not d!460835) (not b!1553733) (not b_next!41977) (not d!460823) (not b!1553735) (not b!1553840) (not b!1553357) (not b!1553544) (not b!1553794) (not b!1553705) (not b!1553372) (not b!1553373) (not b!1553737) (not b!1553548) (not b!1553842) (not d!460901) (not b!1553717) (not b!1553829) (not b!1553774) (not b!1553844) (not d!460853) (not d!460971))
(check-sat (not b_next!41983) b_and!108405 (not b_next!41967) b_and!108383 (not b_next!41981) b_and!108409 (not b_next!41973) (not b_next!41971) (not b_next!41985) (not b_next!41991) b_and!108419 (not b_next!41975) (not b_next!41977) b_and!108373 b_and!108407 b_and!108381 (not b_next!41987) b_and!108379 b_and!108403 b_and!108401 (not b_next!41969) b_and!108387 (not b_next!41993) (not b_next!41979) b_and!108415 (not b_next!41989) b_and!108399 b_and!108385)
