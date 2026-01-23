; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394646 () Bool)

(assert start!394646)

(declare-fun b!4147840 () Bool)

(declare-fun b_free!118427 () Bool)

(declare-fun b_next!119131 () Bool)

(assert (=> b!4147840 (= b_free!118427 (not b_next!119131))))

(declare-fun tp!1264354 () Bool)

(declare-fun b_and!322501 () Bool)

(assert (=> b!4147840 (= tp!1264354 b_and!322501)))

(declare-fun b_free!118429 () Bool)

(declare-fun b_next!119133 () Bool)

(assert (=> b!4147840 (= b_free!118429 (not b_next!119133))))

(declare-fun tp!1264348 () Bool)

(declare-fun b_and!322503 () Bool)

(assert (=> b!4147840 (= tp!1264348 b_and!322503)))

(declare-fun b!4147818 () Bool)

(declare-fun b_free!118431 () Bool)

(declare-fun b_next!119135 () Bool)

(assert (=> b!4147818 (= b_free!118431 (not b_next!119135))))

(declare-fun tp!1264353 () Bool)

(declare-fun b_and!322505 () Bool)

(assert (=> b!4147818 (= tp!1264353 b_and!322505)))

(declare-fun b_free!118433 () Bool)

(declare-fun b_next!119137 () Bool)

(assert (=> b!4147818 (= b_free!118433 (not b_next!119137))))

(declare-fun tp!1264352 () Bool)

(declare-fun b_and!322507 () Bool)

(assert (=> b!4147818 (= tp!1264352 b_and!322507)))

(declare-fun b!4147838 () Bool)

(declare-fun b_free!118435 () Bool)

(declare-fun b_next!119139 () Bool)

(assert (=> b!4147838 (= b_free!118435 (not b_next!119139))))

(declare-fun tp!1264349 () Bool)

(declare-fun b_and!322509 () Bool)

(assert (=> b!4147838 (= tp!1264349 b_and!322509)))

(declare-fun b_free!118437 () Bool)

(declare-fun b_next!119141 () Bool)

(assert (=> b!4147838 (= b_free!118437 (not b_next!119141))))

(declare-fun tp!1264345 () Bool)

(declare-fun b_and!322511 () Bool)

(assert (=> b!4147838 (= tp!1264345 b_and!322511)))

(declare-fun e!2573597 () Bool)

(assert (=> b!4147818 (= e!2573597 (and tp!1264353 tp!1264352))))

(declare-fun b!4147819 () Bool)

(declare-fun res!1697981 () Bool)

(declare-fun e!2573604 () Bool)

(assert (=> b!4147819 (=> (not res!1697981) (not e!2573604))))

(declare-datatypes ((C!24820 0))(
  ( (C!24821 (val!14520 Int)) )
))
(declare-datatypes ((List!45159 0))(
  ( (Nil!45035) (Cons!45035 (h!50455 C!24820) (t!342934 List!45159)) )
))
(declare-fun p!2912 () List!45159)

(declare-fun input!3238 () List!45159)

(declare-fun isPrefix!4347 (List!45159 List!45159) Bool)

(assert (=> b!4147819 (= res!1697981 (isPrefix!4347 p!2912 input!3238))))

(declare-fun b!4147820 () Bool)

(declare-fun res!1697987 () Bool)

(declare-fun e!2573596 () Bool)

(assert (=> b!4147820 (=> (not res!1697987) (not e!2573596))))

(declare-datatypes ((List!45160 0))(
  ( (Nil!45036) (Cons!45036 (h!50456 (_ BitVec 16)) (t!342935 List!45160)) )
))
(declare-datatypes ((TokenValue!7642 0))(
  ( (FloatLiteralValue!15284 (text!53939 List!45160)) (TokenValueExt!7641 (__x!27501 Int)) (Broken!38210 (value!231770 List!45160)) (Object!7765) (End!7642) (Def!7642) (Underscore!7642) (Match!7642) (Else!7642) (Error!7642) (Case!7642) (If!7642) (Extends!7642) (Abstract!7642) (Class!7642) (Val!7642) (DelimiterValue!15284 (del!7702 List!45160)) (KeywordValue!7648 (value!231771 List!45160)) (CommentValue!15284 (value!231772 List!45160)) (WhitespaceValue!15284 (value!231773 List!45160)) (IndentationValue!7642 (value!231774 List!45160)) (String!51959) (Int32!7642) (Broken!38211 (value!231775 List!45160)) (Boolean!7643) (Unit!64318) (OperatorValue!7645 (op!7702 List!45160)) (IdentifierValue!15284 (value!231776 List!45160)) (IdentifierValue!15285 (value!231777 List!45160)) (WhitespaceValue!15285 (value!231778 List!45160)) (True!15284) (False!15284) (Broken!38212 (value!231779 List!45160)) (Broken!38213 (value!231780 List!45160)) (True!15285) (RightBrace!7642) (RightBracket!7642) (Colon!7642) (Null!7642) (Comma!7642) (LeftBracket!7642) (False!15285) (LeftBrace!7642) (ImaginaryLiteralValue!7642 (text!53940 List!45160)) (StringLiteralValue!22926 (value!231781 List!45160)) (EOFValue!7642 (value!231782 List!45160)) (IdentValue!7642 (value!231783 List!45160)) (DelimiterValue!15285 (value!231784 List!45160)) (DedentValue!7642 (value!231785 List!45160)) (NewLineValue!7642 (value!231786 List!45160)) (IntegerValue!22926 (value!231787 (_ BitVec 32)) (text!53941 List!45160)) (IntegerValue!22927 (value!231788 Int) (text!53942 List!45160)) (Times!7642) (Or!7642) (Equal!7642) (Minus!7642) (Broken!38214 (value!231789 List!45160)) (And!7642) (Div!7642) (LessEqual!7642) (Mod!7642) (Concat!19959) (Not!7642) (Plus!7642) (SpaceValue!7642 (value!231790 List!45160)) (IntegerValue!22928 (value!231791 Int) (text!53943 List!45160)) (StringLiteralValue!22927 (text!53944 List!45160)) (FloatLiteralValue!15285 (text!53945 List!45160)) (BytesLiteralValue!7642 (value!231792 List!45160)) (CommentValue!15285 (value!231793 List!45160)) (StringLiteralValue!22928 (value!231794 List!45160)) (ErrorTokenValue!7642 (msg!7703 List!45160)) )
))
(declare-datatypes ((String!51960 0))(
  ( (String!51961 (value!231795 String)) )
))
(declare-datatypes ((IArray!27251 0))(
  ( (IArray!27252 (innerList!13683 List!45159)) )
))
(declare-datatypes ((Conc!13623 0))(
  ( (Node!13623 (left!33719 Conc!13623) (right!34049 Conc!13623) (csize!27476 Int) (cheight!13834 Int)) (Leaf!21044 (xs!16929 IArray!27251) (csize!27477 Int)) (Empty!13623) )
))
(declare-datatypes ((BalanceConc!26840 0))(
  ( (BalanceConc!26841 (c!710582 Conc!13623)) )
))
(declare-datatypes ((Regex!12317 0))(
  ( (ElementMatch!12317 (c!710583 C!24820)) (Concat!19960 (regOne!25146 Regex!12317) (regTwo!25146 Regex!12317)) (EmptyExpr!12317) (Star!12317 (reg!12646 Regex!12317)) (EmptyLang!12317) (Union!12317 (regOne!25147 Regex!12317) (regTwo!25147 Regex!12317)) )
))
(declare-datatypes ((TokenValueInjection!14712 0))(
  ( (TokenValueInjection!14713 (toValue!10076 Int) (toChars!9935 Int)) )
))
(declare-datatypes ((Rule!14624 0))(
  ( (Rule!14625 (regex!7412 Regex!12317) (tag!8272 String!51960) (isSeparator!7412 Bool) (transformation!7412 TokenValueInjection!14712)) )
))
(declare-datatypes ((List!45161 0))(
  ( (Nil!45037) (Cons!45037 (h!50457 Rule!14624) (t!342936 List!45161)) )
))
(declare-fun rules!3756 () List!45161)

(declare-fun rBis!149 () Rule!14624)

(declare-fun r!4008 () Rule!14624)

(declare-fun getIndex!758 (List!45161 Rule!14624) Int)

(assert (=> b!4147820 (= res!1697987 (< (getIndex!758 rules!3756 rBis!149) (getIndex!758 rules!3756 r!4008)))))

(declare-fun b!4147821 () Bool)

(declare-fun res!1697989 () Bool)

(assert (=> b!4147821 (=> (not res!1697989) (not e!2573604))))

(declare-datatypes ((LexerInterface!7001 0))(
  ( (LexerInterfaceExt!6998 (__x!27502 Int)) (Lexer!6999) )
))
(declare-fun thiss!25645 () LexerInterface!7001)

(declare-fun rulesInvariant!6298 (LexerInterface!7001 List!45161) Bool)

(assert (=> b!4147821 (= res!1697989 (rulesInvariant!6298 thiss!25645 rules!3756))))

(declare-fun b!4147822 () Bool)

(assert (=> b!4147822 (= e!2573604 e!2573596)))

(declare-fun res!1697990 () Bool)

(assert (=> b!4147822 (=> (not res!1697990) (not e!2573596))))

(declare-fun lt!1479439 () BalanceConc!26840)

(declare-datatypes ((Token!13754 0))(
  ( (Token!13755 (value!231796 TokenValue!7642) (rule!10540 Rule!14624) (size!33387 Int) (originalCharacters!7908 List!45159)) )
))
(declare-datatypes ((tuple2!43402 0))(
  ( (tuple2!43403 (_1!24835 Token!13754) (_2!24835 List!45159)) )
))
(declare-datatypes ((Option!9718 0))(
  ( (None!9717) (Some!9717 (v!40373 tuple2!43402)) )
))
(declare-fun maxPrefix!4191 (LexerInterface!7001 List!45161 List!45159) Option!9718)

(declare-fun apply!10485 (TokenValueInjection!14712 BalanceConc!26840) TokenValue!7642)

(declare-fun size!33388 (List!45159) Int)

(declare-fun getSuffix!2674 (List!45159 List!45159) List!45159)

(assert (=> b!4147822 (= res!1697990 (= (maxPrefix!4191 thiss!25645 rules!3756 input!3238) (Some!9717 (tuple2!43403 (Token!13755 (apply!10485 (transformation!7412 r!4008) lt!1479439) r!4008 (size!33388 p!2912) p!2912) (getSuffix!2674 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64319 0))(
  ( (Unit!64320) )
))
(declare-fun lt!1479436 () Unit!64319)

(declare-fun lemmaSemiInverse!2270 (TokenValueInjection!14712 BalanceConc!26840) Unit!64319)

(assert (=> b!4147822 (= lt!1479436 (lemmaSemiInverse!2270 (transformation!7412 r!4008) lt!1479439))))

(declare-fun seqFromList!5529 (List!45159) BalanceConc!26840)

(assert (=> b!4147822 (= lt!1479439 (seqFromList!5529 p!2912))))

(declare-fun b!4147823 () Bool)

(declare-fun e!2573592 () Bool)

(declare-fun e!2573593 () Bool)

(declare-fun tp!1264351 () Bool)

(assert (=> b!4147823 (= e!2573592 (and e!2573593 tp!1264351))))

(declare-fun b!4147824 () Bool)

(declare-fun res!1697982 () Bool)

(assert (=> b!4147824 (=> (not res!1697982) (not e!2573604))))

(declare-fun contains!9094 (List!45161 Rule!14624) Bool)

(assert (=> b!4147824 (= res!1697982 (contains!9094 rules!3756 r!4008))))

(declare-fun b!4147825 () Bool)

(declare-fun res!1697988 () Bool)

(assert (=> b!4147825 (=> (not res!1697988) (not e!2573604))))

(declare-fun isEmpty!26882 (List!45161) Bool)

(assert (=> b!4147825 (= res!1697988 (not (isEmpty!26882 rules!3756)))))

(declare-fun b!4147826 () Bool)

(declare-fun e!2573600 () Bool)

(assert (=> b!4147826 (= e!2573596 (not e!2573600))))

(declare-fun res!1697994 () Bool)

(assert (=> b!4147826 (=> res!1697994 e!2573600)))

(get-info :version)

(assert (=> b!4147826 (= res!1697994 (or (and ((_ is Cons!45037) rules!3756) (= (h!50457 rules!3756) rBis!149)) (not ((_ is Cons!45037) rules!3756)) (= (h!50457 rules!3756) rBis!149)))))

(declare-fun lt!1479442 () Unit!64319)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2258 (LexerInterface!7001 Rule!14624 List!45161) Unit!64319)

(assert (=> b!4147826 (= lt!1479442 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2258 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3218 (LexerInterface!7001 Rule!14624) Bool)

(assert (=> b!4147826 (ruleValid!3218 thiss!25645 rBis!149)))

(declare-fun lt!1479440 () Unit!64319)

(assert (=> b!4147826 (= lt!1479440 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2258 thiss!25645 rBis!149 rules!3756))))

(declare-fun res!1697991 () Bool)

(assert (=> start!394646 (=> (not res!1697991) (not e!2573604))))

(assert (=> start!394646 (= res!1697991 ((_ is Lexer!6999) thiss!25645))))

(assert (=> start!394646 e!2573604))

(assert (=> start!394646 e!2573592))

(declare-fun e!2573603 () Bool)

(assert (=> start!394646 e!2573603))

(assert (=> start!394646 true))

(declare-fun e!2573591 () Bool)

(assert (=> start!394646 e!2573591))

(declare-fun e!2573598 () Bool)

(assert (=> start!394646 e!2573598))

(declare-fun e!2573590 () Bool)

(assert (=> start!394646 e!2573590))

(declare-fun b!4147827 () Bool)

(declare-fun tp_is_empty!21557 () Bool)

(declare-fun tp!1264343 () Bool)

(assert (=> b!4147827 (= e!2573598 (and tp_is_empty!21557 tp!1264343))))

(declare-fun b!4147828 () Bool)

(declare-fun e!2573602 () Bool)

(declare-fun tp!1264344 () Bool)

(declare-fun inv!59643 (String!51960) Bool)

(declare-fun inv!59645 (TokenValueInjection!14712) Bool)

(assert (=> b!4147828 (= e!2573593 (and tp!1264344 (inv!59643 (tag!8272 (h!50457 rules!3756))) (inv!59645 (transformation!7412 (h!50457 rules!3756))) e!2573602))))

(declare-fun tp!1264347 () Bool)

(declare-fun b!4147829 () Bool)

(assert (=> b!4147829 (= e!2573591 (and tp!1264347 (inv!59643 (tag!8272 r!4008)) (inv!59645 (transformation!7412 r!4008)) e!2573597))))

(declare-fun b!4147830 () Bool)

(declare-fun res!1697992 () Bool)

(assert (=> b!4147830 (=> (not res!1697992) (not e!2573604))))

(declare-fun isEmpty!26883 (List!45159) Bool)

(assert (=> b!4147830 (= res!1697992 (not (isEmpty!26883 p!2912)))))

(declare-fun tp!1264346 () Bool)

(declare-fun e!2573599 () Bool)

(declare-fun b!4147831 () Bool)

(assert (=> b!4147831 (= e!2573590 (and tp!1264346 (inv!59643 (tag!8272 rBis!149)) (inv!59645 (transformation!7412 rBis!149)) e!2573599))))

(declare-fun b!4147832 () Bool)

(assert (=> b!4147832 (= e!2573600 (contains!9094 rules!3756 (h!50457 rules!3756)))))

(assert (=> b!4147832 (rulesInvariant!6298 thiss!25645 (t!342936 rules!3756))))

(declare-fun lt!1479441 () Unit!64319)

(declare-fun lemmaInvariantOnRulesThenOnTail!824 (LexerInterface!7001 Rule!14624 List!45161) Unit!64319)

(assert (=> b!4147832 (= lt!1479441 (lemmaInvariantOnRulesThenOnTail!824 thiss!25645 (h!50457 rules!3756) (t!342936 rules!3756)))))

(declare-fun lt!1479438 () Option!9718)

(assert (=> b!4147832 (= lt!1479438 (maxPrefix!4191 thiss!25645 (t!342936 rules!3756) input!3238))))

(declare-fun lt!1479437 () Option!9718)

(declare-fun maxPrefixOneRule!3130 (LexerInterface!7001 Rule!14624 List!45159) Option!9718)

(assert (=> b!4147832 (= lt!1479437 (maxPrefixOneRule!3130 thiss!25645 (h!50457 rules!3756) input!3238))))

(declare-fun b!4147833 () Bool)

(declare-fun res!1697985 () Bool)

(assert (=> b!4147833 (=> (not res!1697985) (not e!2573596))))

(assert (=> b!4147833 (= res!1697985 (ruleValid!3218 thiss!25645 r!4008))))

(declare-fun b!4147834 () Bool)

(declare-fun res!1697993 () Bool)

(assert (=> b!4147834 (=> (not res!1697993) (not e!2573596))))

(declare-fun matchR!6146 (Regex!12317 List!45159) Bool)

(assert (=> b!4147834 (= res!1697993 (matchR!6146 (regex!7412 r!4008) p!2912))))

(declare-fun b!4147835 () Bool)

(declare-fun res!1697983 () Bool)

(assert (=> b!4147835 (=> (not res!1697983) (not e!2573604))))

(assert (=> b!4147835 (= res!1697983 (contains!9094 rules!3756 rBis!149))))

(declare-fun b!4147836 () Bool)

(declare-fun tp!1264350 () Bool)

(assert (=> b!4147836 (= e!2573603 (and tp_is_empty!21557 tp!1264350))))

(declare-fun b!4147837 () Bool)

(declare-fun res!1697984 () Bool)

(assert (=> b!4147837 (=> res!1697984 e!2573600)))

(assert (=> b!4147837 (= res!1697984 (not (contains!9094 (t!342936 rules!3756) r!4008)))))

(assert (=> b!4147838 (= e!2573602 (and tp!1264349 tp!1264345))))

(declare-fun b!4147839 () Bool)

(declare-fun res!1697986 () Bool)

(assert (=> b!4147839 (=> res!1697986 e!2573600)))

(assert (=> b!4147839 (= res!1697986 (not (contains!9094 (t!342936 rules!3756) rBis!149)))))

(assert (=> b!4147840 (= e!2573599 (and tp!1264354 tp!1264348))))

(assert (= (and start!394646 res!1697991) b!4147819))

(assert (= (and b!4147819 res!1697981) b!4147825))

(assert (= (and b!4147825 res!1697988) b!4147821))

(assert (= (and b!4147821 res!1697989) b!4147824))

(assert (= (and b!4147824 res!1697982) b!4147835))

(assert (= (and b!4147835 res!1697983) b!4147830))

(assert (= (and b!4147830 res!1697992) b!4147822))

(assert (= (and b!4147822 res!1697990) b!4147834))

(assert (= (and b!4147834 res!1697993) b!4147820))

(assert (= (and b!4147820 res!1697987) b!4147833))

(assert (= (and b!4147833 res!1697985) b!4147826))

(assert (= (and b!4147826 (not res!1697994)) b!4147837))

(assert (= (and b!4147837 (not res!1697984)) b!4147839))

(assert (= (and b!4147839 (not res!1697986)) b!4147832))

(assert (= b!4147828 b!4147838))

(assert (= b!4147823 b!4147828))

(assert (= (and start!394646 ((_ is Cons!45037) rules!3756)) b!4147823))

(assert (= (and start!394646 ((_ is Cons!45035) p!2912)) b!4147836))

(assert (= b!4147829 b!4147818))

(assert (= start!394646 b!4147829))

(assert (= (and start!394646 ((_ is Cons!45035) input!3238)) b!4147827))

(assert (= b!4147831 b!4147840))

(assert (= start!394646 b!4147831))

(declare-fun m!4743665 () Bool)

(assert (=> b!4147822 m!4743665))

(declare-fun m!4743667 () Bool)

(assert (=> b!4147822 m!4743667))

(declare-fun m!4743669 () Bool)

(assert (=> b!4147822 m!4743669))

(declare-fun m!4743671 () Bool)

(assert (=> b!4147822 m!4743671))

(declare-fun m!4743673 () Bool)

(assert (=> b!4147822 m!4743673))

(declare-fun m!4743675 () Bool)

(assert (=> b!4147822 m!4743675))

(declare-fun m!4743677 () Bool)

(assert (=> b!4147837 m!4743677))

(declare-fun m!4743679 () Bool)

(assert (=> b!4147839 m!4743679))

(declare-fun m!4743681 () Bool)

(assert (=> b!4147832 m!4743681))

(declare-fun m!4743683 () Bool)

(assert (=> b!4147832 m!4743683))

(declare-fun m!4743685 () Bool)

(assert (=> b!4147832 m!4743685))

(declare-fun m!4743687 () Bool)

(assert (=> b!4147832 m!4743687))

(declare-fun m!4743689 () Bool)

(assert (=> b!4147832 m!4743689))

(declare-fun m!4743691 () Bool)

(assert (=> b!4147828 m!4743691))

(declare-fun m!4743693 () Bool)

(assert (=> b!4147828 m!4743693))

(declare-fun m!4743695 () Bool)

(assert (=> b!4147826 m!4743695))

(declare-fun m!4743697 () Bool)

(assert (=> b!4147826 m!4743697))

(declare-fun m!4743699 () Bool)

(assert (=> b!4147826 m!4743699))

(declare-fun m!4743701 () Bool)

(assert (=> b!4147824 m!4743701))

(declare-fun m!4743703 () Bool)

(assert (=> b!4147820 m!4743703))

(declare-fun m!4743705 () Bool)

(assert (=> b!4147820 m!4743705))

(declare-fun m!4743707 () Bool)

(assert (=> b!4147834 m!4743707))

(declare-fun m!4743709 () Bool)

(assert (=> b!4147825 m!4743709))

(declare-fun m!4743711 () Bool)

(assert (=> b!4147833 m!4743711))

(declare-fun m!4743713 () Bool)

(assert (=> b!4147831 m!4743713))

(declare-fun m!4743715 () Bool)

(assert (=> b!4147831 m!4743715))

(declare-fun m!4743717 () Bool)

(assert (=> b!4147829 m!4743717))

(declare-fun m!4743719 () Bool)

(assert (=> b!4147829 m!4743719))

(declare-fun m!4743721 () Bool)

(assert (=> b!4147819 m!4743721))

(declare-fun m!4743723 () Bool)

(assert (=> b!4147830 m!4743723))

(declare-fun m!4743725 () Bool)

(assert (=> b!4147835 m!4743725))

(declare-fun m!4743727 () Bool)

(assert (=> b!4147821 m!4743727))

(check-sat (not b_next!119137) (not b!4147819) b_and!322509 (not b_next!119135) (not b!4147824) (not b_next!119141) (not b_next!119131) (not b!4147839) (not b!4147833) (not b!4147827) (not b!4147835) (not b!4147834) b_and!322511 (not b!4147831) (not b!4147828) (not b!4147820) b_and!322505 (not b!4147837) (not b!4147822) b_and!322507 b_and!322501 b_and!322503 (not b!4147826) (not b!4147821) (not b!4147830) (not b!4147836) (not b!4147832) (not b!4147825) (not b_next!119139) (not b_next!119133) (not b!4147829) (not b!4147823) tp_is_empty!21557)
(check-sat b_and!322511 b_and!322505 b_and!322507 (not b_next!119137) b_and!322509 (not b_next!119135) (not b_next!119141) (not b_next!119131) (not b_next!119139) (not b_next!119133) b_and!322501 b_and!322503)
(get-model)

(declare-fun d!1227303 () Bool)

(assert (=> d!1227303 (= (inv!59643 (tag!8272 (h!50457 rules!3756))) (= (mod (str.len (value!231795 (tag!8272 (h!50457 rules!3756)))) 2) 0))))

(assert (=> b!4147828 d!1227303))

(declare-fun d!1227305 () Bool)

(declare-fun res!1698024 () Bool)

(declare-fun e!2573624 () Bool)

(assert (=> d!1227305 (=> (not res!1698024) (not e!2573624))))

(declare-fun semiInverseModEq!3205 (Int Int) Bool)

(assert (=> d!1227305 (= res!1698024 (semiInverseModEq!3205 (toChars!9935 (transformation!7412 (h!50457 rules!3756))) (toValue!10076 (transformation!7412 (h!50457 rules!3756)))))))

(assert (=> d!1227305 (= (inv!59645 (transformation!7412 (h!50457 rules!3756))) e!2573624)))

(declare-fun b!4147860 () Bool)

(declare-fun equivClasses!3104 (Int Int) Bool)

(assert (=> b!4147860 (= e!2573624 (equivClasses!3104 (toChars!9935 (transformation!7412 (h!50457 rules!3756))) (toValue!10076 (transformation!7412 (h!50457 rules!3756)))))))

(assert (= (and d!1227305 res!1698024) b!4147860))

(declare-fun m!4743751 () Bool)

(assert (=> d!1227305 m!4743751))

(declare-fun m!4743753 () Bool)

(assert (=> b!4147860 m!4743753))

(assert (=> b!4147828 d!1227305))

(declare-fun d!1227307 () Bool)

(declare-fun lt!1479450 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6967 (List!45161) (InoxSet Rule!14624))

(assert (=> d!1227307 (= lt!1479450 (select (content!6967 (t!342936 rules!3756)) rBis!149))))

(declare-fun e!2573629 () Bool)

(assert (=> d!1227307 (= lt!1479450 e!2573629)))

(declare-fun res!1698029 () Bool)

(assert (=> d!1227307 (=> (not res!1698029) (not e!2573629))))

(assert (=> d!1227307 (= res!1698029 ((_ is Cons!45037) (t!342936 rules!3756)))))

(assert (=> d!1227307 (= (contains!9094 (t!342936 rules!3756) rBis!149) lt!1479450)))

(declare-fun b!4147865 () Bool)

(declare-fun e!2573630 () Bool)

(assert (=> b!4147865 (= e!2573629 e!2573630)))

(declare-fun res!1698030 () Bool)

(assert (=> b!4147865 (=> res!1698030 e!2573630)))

(assert (=> b!4147865 (= res!1698030 (= (h!50457 (t!342936 rules!3756)) rBis!149))))

(declare-fun b!4147866 () Bool)

(assert (=> b!4147866 (= e!2573630 (contains!9094 (t!342936 (t!342936 rules!3756)) rBis!149))))

(assert (= (and d!1227307 res!1698029) b!4147865))

(assert (= (and b!4147865 (not res!1698030)) b!4147866))

(declare-fun m!4743755 () Bool)

(assert (=> d!1227307 m!4743755))

(declare-fun m!4743757 () Bool)

(assert (=> d!1227307 m!4743757))

(declare-fun m!4743759 () Bool)

(assert (=> b!4147866 m!4743759))

(assert (=> b!4147839 d!1227307))

(declare-fun d!1227309 () Bool)

(assert (=> d!1227309 (= (inv!59643 (tag!8272 r!4008)) (= (mod (str.len (value!231795 (tag!8272 r!4008))) 2) 0))))

(assert (=> b!4147829 d!1227309))

(declare-fun d!1227311 () Bool)

(declare-fun res!1698031 () Bool)

(declare-fun e!2573631 () Bool)

(assert (=> d!1227311 (=> (not res!1698031) (not e!2573631))))

(assert (=> d!1227311 (= res!1698031 (semiInverseModEq!3205 (toChars!9935 (transformation!7412 r!4008)) (toValue!10076 (transformation!7412 r!4008))))))

(assert (=> d!1227311 (= (inv!59645 (transformation!7412 r!4008)) e!2573631)))

(declare-fun b!4147867 () Bool)

(assert (=> b!4147867 (= e!2573631 (equivClasses!3104 (toChars!9935 (transformation!7412 r!4008)) (toValue!10076 (transformation!7412 r!4008))))))

(assert (= (and d!1227311 res!1698031) b!4147867))

(declare-fun m!4743761 () Bool)

(assert (=> d!1227311 m!4743761))

(declare-fun m!4743763 () Bool)

(assert (=> b!4147867 m!4743763))

(assert (=> b!4147829 d!1227311))

(declare-fun b!4147878 () Bool)

(declare-fun e!2573637 () Int)

(assert (=> b!4147878 (= e!2573637 (+ 1 (getIndex!758 (t!342936 rules!3756) rBis!149)))))

(declare-fun b!4147876 () Bool)

(declare-fun e!2573638 () Int)

(assert (=> b!4147876 (= e!2573638 0)))

(declare-fun b!4147877 () Bool)

(assert (=> b!4147877 (= e!2573638 e!2573637)))

(declare-fun c!710588 () Bool)

(assert (=> b!4147877 (= c!710588 (and ((_ is Cons!45037) rules!3756) (not (= (h!50457 rules!3756) rBis!149))))))

(declare-fun d!1227313 () Bool)

(declare-fun lt!1479453 () Int)

(assert (=> d!1227313 (>= lt!1479453 0)))

(assert (=> d!1227313 (= lt!1479453 e!2573638)))

(declare-fun c!710589 () Bool)

(assert (=> d!1227313 (= c!710589 (and ((_ is Cons!45037) rules!3756) (= (h!50457 rules!3756) rBis!149)))))

(assert (=> d!1227313 (contains!9094 rules!3756 rBis!149)))

(assert (=> d!1227313 (= (getIndex!758 rules!3756 rBis!149) lt!1479453)))

(declare-fun b!4147879 () Bool)

(assert (=> b!4147879 (= e!2573637 (- 1))))

(assert (= (and d!1227313 c!710589) b!4147876))

(assert (= (and d!1227313 (not c!710589)) b!4147877))

(assert (= (and b!4147877 c!710588) b!4147878))

(assert (= (and b!4147877 (not c!710588)) b!4147879))

(declare-fun m!4743765 () Bool)

(assert (=> b!4147878 m!4743765))

(assert (=> d!1227313 m!4743725))

(assert (=> b!4147820 d!1227313))

(declare-fun b!4147882 () Bool)

(declare-fun e!2573639 () Int)

(assert (=> b!4147882 (= e!2573639 (+ 1 (getIndex!758 (t!342936 rules!3756) r!4008)))))

(declare-fun b!4147880 () Bool)

(declare-fun e!2573640 () Int)

(assert (=> b!4147880 (= e!2573640 0)))

(declare-fun b!4147881 () Bool)

(assert (=> b!4147881 (= e!2573640 e!2573639)))

(declare-fun c!710590 () Bool)

(assert (=> b!4147881 (= c!710590 (and ((_ is Cons!45037) rules!3756) (not (= (h!50457 rules!3756) r!4008))))))

(declare-fun d!1227315 () Bool)

(declare-fun lt!1479454 () Int)

(assert (=> d!1227315 (>= lt!1479454 0)))

(assert (=> d!1227315 (= lt!1479454 e!2573640)))

(declare-fun c!710591 () Bool)

(assert (=> d!1227315 (= c!710591 (and ((_ is Cons!45037) rules!3756) (= (h!50457 rules!3756) r!4008)))))

(assert (=> d!1227315 (contains!9094 rules!3756 r!4008)))

(assert (=> d!1227315 (= (getIndex!758 rules!3756 r!4008) lt!1479454)))

(declare-fun b!4147883 () Bool)

(assert (=> b!4147883 (= e!2573639 (- 1))))

(assert (= (and d!1227315 c!710591) b!4147880))

(assert (= (and d!1227315 (not c!710591)) b!4147881))

(assert (= (and b!4147881 c!710590) b!4147882))

(assert (= (and b!4147881 (not c!710590)) b!4147883))

(declare-fun m!4743767 () Bool)

(assert (=> b!4147882 m!4743767))

(assert (=> d!1227315 m!4743701))

(assert (=> b!4147820 d!1227315))

(declare-fun d!1227317 () Bool)

(assert (=> d!1227317 (= (inv!59643 (tag!8272 rBis!149)) (= (mod (str.len (value!231795 (tag!8272 rBis!149))) 2) 0))))

(assert (=> b!4147831 d!1227317))

(declare-fun d!1227319 () Bool)

(declare-fun res!1698032 () Bool)

(declare-fun e!2573641 () Bool)

(assert (=> d!1227319 (=> (not res!1698032) (not e!2573641))))

(assert (=> d!1227319 (= res!1698032 (semiInverseModEq!3205 (toChars!9935 (transformation!7412 rBis!149)) (toValue!10076 (transformation!7412 rBis!149))))))

(assert (=> d!1227319 (= (inv!59645 (transformation!7412 rBis!149)) e!2573641)))

(declare-fun b!4147884 () Bool)

(assert (=> b!4147884 (= e!2573641 (equivClasses!3104 (toChars!9935 (transformation!7412 rBis!149)) (toValue!10076 (transformation!7412 rBis!149))))))

(assert (= (and d!1227319 res!1698032) b!4147884))

(declare-fun m!4743769 () Bool)

(assert (=> d!1227319 m!4743769))

(declare-fun m!4743771 () Bool)

(assert (=> b!4147884 m!4743771))

(assert (=> b!4147831 d!1227319))

(declare-fun d!1227321 () Bool)

(declare-fun res!1698035 () Bool)

(declare-fun e!2573644 () Bool)

(assert (=> d!1227321 (=> (not res!1698035) (not e!2573644))))

(declare-fun rulesValid!2918 (LexerInterface!7001 List!45161) Bool)

(assert (=> d!1227321 (= res!1698035 (rulesValid!2918 thiss!25645 rules!3756))))

(assert (=> d!1227321 (= (rulesInvariant!6298 thiss!25645 rules!3756) e!2573644)))

(declare-fun b!4147887 () Bool)

(declare-datatypes ((List!45163 0))(
  ( (Nil!45039) (Cons!45039 (h!50459 String!51960) (t!342970 List!45163)) )
))
(declare-fun noDuplicateTag!3001 (LexerInterface!7001 List!45161 List!45163) Bool)

(assert (=> b!4147887 (= e!2573644 (noDuplicateTag!3001 thiss!25645 rules!3756 Nil!45039))))

(assert (= (and d!1227321 res!1698035) b!4147887))

(declare-fun m!4743773 () Bool)

(assert (=> d!1227321 m!4743773))

(declare-fun m!4743775 () Bool)

(assert (=> b!4147887 m!4743775))

(assert (=> b!4147821 d!1227321))

(declare-fun b!4147899 () Bool)

(declare-fun e!2573652 () Bool)

(assert (=> b!4147899 (= e!2573652 (>= (size!33388 input!3238) (size!33388 p!2912)))))

(declare-fun b!4147897 () Bool)

(declare-fun res!1698046 () Bool)

(declare-fun e!2573653 () Bool)

(assert (=> b!4147897 (=> (not res!1698046) (not e!2573653))))

(declare-fun head!8753 (List!45159) C!24820)

(assert (=> b!4147897 (= res!1698046 (= (head!8753 p!2912) (head!8753 input!3238)))))

(declare-fun d!1227323 () Bool)

(assert (=> d!1227323 e!2573652))

(declare-fun res!1698045 () Bool)

(assert (=> d!1227323 (=> res!1698045 e!2573652)))

(declare-fun lt!1479457 () Bool)

(assert (=> d!1227323 (= res!1698045 (not lt!1479457))))

(declare-fun e!2573651 () Bool)

(assert (=> d!1227323 (= lt!1479457 e!2573651)))

(declare-fun res!1698044 () Bool)

(assert (=> d!1227323 (=> res!1698044 e!2573651)))

(assert (=> d!1227323 (= res!1698044 ((_ is Nil!45035) p!2912))))

(assert (=> d!1227323 (= (isPrefix!4347 p!2912 input!3238) lt!1479457)))

(declare-fun b!4147898 () Bool)

(declare-fun tail!6595 (List!45159) List!45159)

(assert (=> b!4147898 (= e!2573653 (isPrefix!4347 (tail!6595 p!2912) (tail!6595 input!3238)))))

(declare-fun b!4147896 () Bool)

(assert (=> b!4147896 (= e!2573651 e!2573653)))

(declare-fun res!1698047 () Bool)

(assert (=> b!4147896 (=> (not res!1698047) (not e!2573653))))

(assert (=> b!4147896 (= res!1698047 (not ((_ is Nil!45035) input!3238)))))

(assert (= (and d!1227323 (not res!1698044)) b!4147896))

(assert (= (and b!4147896 res!1698047) b!4147897))

(assert (= (and b!4147897 res!1698046) b!4147898))

(assert (= (and d!1227323 (not res!1698045)) b!4147899))

(declare-fun m!4743777 () Bool)

(assert (=> b!4147899 m!4743777))

(assert (=> b!4147899 m!4743665))

(declare-fun m!4743779 () Bool)

(assert (=> b!4147897 m!4743779))

(declare-fun m!4743781 () Bool)

(assert (=> b!4147897 m!4743781))

(declare-fun m!4743783 () Bool)

(assert (=> b!4147898 m!4743783))

(declare-fun m!4743785 () Bool)

(assert (=> b!4147898 m!4743785))

(assert (=> b!4147898 m!4743783))

(assert (=> b!4147898 m!4743785))

(declare-fun m!4743787 () Bool)

(assert (=> b!4147898 m!4743787))

(assert (=> b!4147819 d!1227323))

(declare-fun d!1227325 () Bool)

(assert (=> d!1227325 (= (isEmpty!26883 p!2912) ((_ is Nil!45035) p!2912))))

(assert (=> b!4147830 d!1227325))

(declare-fun b!4147955 () Bool)

(declare-fun e!2573686 () Bool)

(declare-fun derivativeStep!3734 (Regex!12317 C!24820) Regex!12317)

(assert (=> b!4147955 (= e!2573686 (matchR!6146 (derivativeStep!3734 (regex!7412 r!4008) (head!8753 p!2912)) (tail!6595 p!2912)))))

(declare-fun b!4147956 () Bool)

(declare-fun e!2573685 () Bool)

(declare-fun e!2573683 () Bool)

(assert (=> b!4147956 (= e!2573685 e!2573683)))

(declare-fun res!1698088 () Bool)

(assert (=> b!4147956 (=> (not res!1698088) (not e!2573683))))

(declare-fun lt!1479478 () Bool)

(assert (=> b!4147956 (= res!1698088 (not lt!1479478))))

(declare-fun b!4147957 () Bool)

(declare-fun e!2573684 () Bool)

(assert (=> b!4147957 (= e!2573684 (not lt!1479478))))

(declare-fun b!4147958 () Bool)

(declare-fun res!1698091 () Bool)

(assert (=> b!4147958 (=> res!1698091 e!2573685)))

(declare-fun e!2573682 () Bool)

(assert (=> b!4147958 (= res!1698091 e!2573682)))

(declare-fun res!1698090 () Bool)

(assert (=> b!4147958 (=> (not res!1698090) (not e!2573682))))

(assert (=> b!4147958 (= res!1698090 lt!1479478)))

(declare-fun bm!290666 () Bool)

(declare-fun call!290671 () Bool)

(assert (=> bm!290666 (= call!290671 (isEmpty!26883 p!2912))))

(declare-fun b!4147959 () Bool)

(declare-fun e!2573680 () Bool)

(assert (=> b!4147959 (= e!2573680 (not (= (head!8753 p!2912) (c!710583 (regex!7412 r!4008)))))))

(declare-fun b!4147960 () Bool)

(declare-fun nullable!4341 (Regex!12317) Bool)

(assert (=> b!4147960 (= e!2573686 (nullable!4341 (regex!7412 r!4008)))))

(declare-fun b!4147961 () Bool)

(declare-fun res!1698087 () Bool)

(assert (=> b!4147961 (=> (not res!1698087) (not e!2573682))))

(assert (=> b!4147961 (= res!1698087 (not call!290671))))

(declare-fun b!4147962 () Bool)

(assert (=> b!4147962 (= e!2573682 (= (head!8753 p!2912) (c!710583 (regex!7412 r!4008))))))

(declare-fun b!4147963 () Bool)

(declare-fun res!1698085 () Bool)

(assert (=> b!4147963 (=> (not res!1698085) (not e!2573682))))

(assert (=> b!4147963 (= res!1698085 (isEmpty!26883 (tail!6595 p!2912)))))

(declare-fun b!4147964 () Bool)

(declare-fun e!2573681 () Bool)

(assert (=> b!4147964 (= e!2573681 (= lt!1479478 call!290671))))

(declare-fun b!4147965 () Bool)

(declare-fun res!1698089 () Bool)

(assert (=> b!4147965 (=> res!1698089 e!2573680)))

(assert (=> b!4147965 (= res!1698089 (not (isEmpty!26883 (tail!6595 p!2912))))))

(declare-fun b!4147966 () Bool)

(assert (=> b!4147966 (= e!2573683 e!2573680)))

(declare-fun res!1698086 () Bool)

(assert (=> b!4147966 (=> res!1698086 e!2573680)))

(assert (=> b!4147966 (= res!1698086 call!290671)))

(declare-fun d!1227327 () Bool)

(assert (=> d!1227327 e!2573681))

(declare-fun c!710603 () Bool)

(assert (=> d!1227327 (= c!710603 ((_ is EmptyExpr!12317) (regex!7412 r!4008)))))

(assert (=> d!1227327 (= lt!1479478 e!2573686)))

(declare-fun c!710602 () Bool)

(assert (=> d!1227327 (= c!710602 (isEmpty!26883 p!2912))))

(declare-fun validRegex!5551 (Regex!12317) Bool)

(assert (=> d!1227327 (validRegex!5551 (regex!7412 r!4008))))

(assert (=> d!1227327 (= (matchR!6146 (regex!7412 r!4008) p!2912) lt!1479478)))

(declare-fun b!4147967 () Bool)

(assert (=> b!4147967 (= e!2573681 e!2573684)))

(declare-fun c!710601 () Bool)

(assert (=> b!4147967 (= c!710601 ((_ is EmptyLang!12317) (regex!7412 r!4008)))))

(declare-fun b!4147968 () Bool)

(declare-fun res!1698092 () Bool)

(assert (=> b!4147968 (=> res!1698092 e!2573685)))

(assert (=> b!4147968 (= res!1698092 (not ((_ is ElementMatch!12317) (regex!7412 r!4008))))))

(assert (=> b!4147968 (= e!2573684 e!2573685)))

(assert (= (and d!1227327 c!710602) b!4147960))

(assert (= (and d!1227327 (not c!710602)) b!4147955))

(assert (= (and d!1227327 c!710603) b!4147964))

(assert (= (and d!1227327 (not c!710603)) b!4147967))

(assert (= (and b!4147967 c!710601) b!4147957))

(assert (= (and b!4147967 (not c!710601)) b!4147968))

(assert (= (and b!4147968 (not res!1698092)) b!4147958))

(assert (= (and b!4147958 res!1698090) b!4147961))

(assert (= (and b!4147961 res!1698087) b!4147963))

(assert (= (and b!4147963 res!1698085) b!4147962))

(assert (= (and b!4147958 (not res!1698091)) b!4147956))

(assert (= (and b!4147956 res!1698088) b!4147966))

(assert (= (and b!4147966 (not res!1698086)) b!4147965))

(assert (= (and b!4147965 (not res!1698089)) b!4147959))

(assert (= (or b!4147964 b!4147961 b!4147966) bm!290666))

(assert (=> b!4147959 m!4743779))

(assert (=> b!4147963 m!4743783))

(assert (=> b!4147963 m!4743783))

(declare-fun m!4743839 () Bool)

(assert (=> b!4147963 m!4743839))

(assert (=> b!4147962 m!4743779))

(assert (=> bm!290666 m!4743723))

(declare-fun m!4743841 () Bool)

(assert (=> b!4147960 m!4743841))

(assert (=> d!1227327 m!4743723))

(declare-fun m!4743843 () Bool)

(assert (=> d!1227327 m!4743843))

(assert (=> b!4147955 m!4743779))

(assert (=> b!4147955 m!4743779))

(declare-fun m!4743845 () Bool)

(assert (=> b!4147955 m!4743845))

(assert (=> b!4147955 m!4743783))

(assert (=> b!4147955 m!4743845))

(assert (=> b!4147955 m!4743783))

(declare-fun m!4743847 () Bool)

(assert (=> b!4147955 m!4743847))

(assert (=> b!4147965 m!4743783))

(assert (=> b!4147965 m!4743783))

(assert (=> b!4147965 m!4743839))

(assert (=> b!4147834 d!1227327))

(declare-fun d!1227333 () Bool)

(declare-fun res!1698093 () Bool)

(declare-fun e!2573687 () Bool)

(assert (=> d!1227333 (=> (not res!1698093) (not e!2573687))))

(assert (=> d!1227333 (= res!1698093 (rulesValid!2918 thiss!25645 (t!342936 rules!3756)))))

(assert (=> d!1227333 (= (rulesInvariant!6298 thiss!25645 (t!342936 rules!3756)) e!2573687)))

(declare-fun b!4147969 () Bool)

(assert (=> b!4147969 (= e!2573687 (noDuplicateTag!3001 thiss!25645 (t!342936 rules!3756) Nil!45039))))

(assert (= (and d!1227333 res!1698093) b!4147969))

(declare-fun m!4743849 () Bool)

(assert (=> d!1227333 m!4743849))

(declare-fun m!4743851 () Bool)

(assert (=> b!4147969 m!4743851))

(assert (=> b!4147832 d!1227333))

(declare-fun d!1227335 () Bool)

(declare-fun lt!1479479 () Bool)

(assert (=> d!1227335 (= lt!1479479 (select (content!6967 rules!3756) (h!50457 rules!3756)))))

(declare-fun e!2573688 () Bool)

(assert (=> d!1227335 (= lt!1479479 e!2573688)))

(declare-fun res!1698094 () Bool)

(assert (=> d!1227335 (=> (not res!1698094) (not e!2573688))))

(assert (=> d!1227335 (= res!1698094 ((_ is Cons!45037) rules!3756))))

(assert (=> d!1227335 (= (contains!9094 rules!3756 (h!50457 rules!3756)) lt!1479479)))

(declare-fun b!4147970 () Bool)

(declare-fun e!2573689 () Bool)

(assert (=> b!4147970 (= e!2573688 e!2573689)))

(declare-fun res!1698095 () Bool)

(assert (=> b!4147970 (=> res!1698095 e!2573689)))

(assert (=> b!4147970 (= res!1698095 (= (h!50457 rules!3756) (h!50457 rules!3756)))))

(declare-fun b!4147971 () Bool)

(assert (=> b!4147971 (= e!2573689 (contains!9094 (t!342936 rules!3756) (h!50457 rules!3756)))))

(assert (= (and d!1227335 res!1698094) b!4147970))

(assert (= (and b!4147970 (not res!1698095)) b!4147971))

(declare-fun m!4743853 () Bool)

(assert (=> d!1227335 m!4743853))

(declare-fun m!4743855 () Bool)

(assert (=> d!1227335 m!4743855))

(declare-fun m!4743857 () Bool)

(assert (=> b!4147971 m!4743857))

(assert (=> b!4147832 d!1227335))

(declare-fun b!4148041 () Bool)

(declare-fun res!1698139 () Bool)

(declare-fun e!2573721 () Bool)

(assert (=> b!4148041 (=> (not res!1698139) (not e!2573721))))

(declare-fun lt!1479520 () Option!9718)

(declare-fun ++!11642 (List!45159 List!45159) List!45159)

(declare-fun list!16485 (BalanceConc!26840) List!45159)

(declare-fun charsOf!5005 (Token!13754) BalanceConc!26840)

(declare-fun get!14707 (Option!9718) tuple2!43402)

(assert (=> b!4148041 (= res!1698139 (= (++!11642 (list!16485 (charsOf!5005 (_1!24835 (get!14707 lt!1479520)))) (_2!24835 (get!14707 lt!1479520))) input!3238))))

(declare-fun b!4148042 () Bool)

(declare-fun res!1698142 () Bool)

(assert (=> b!4148042 (=> (not res!1698142) (not e!2573721))))

(assert (=> b!4148042 (= res!1698142 (< (size!33388 (_2!24835 (get!14707 lt!1479520))) (size!33388 input!3238)))))

(declare-fun b!4148043 () Bool)

(declare-fun e!2573720 () Option!9718)

(declare-datatypes ((tuple2!43406 0))(
  ( (tuple2!43407 (_1!24837 List!45159) (_2!24837 List!45159)) )
))
(declare-fun lt!1479519 () tuple2!43406)

(declare-fun size!33390 (BalanceConc!26840) Int)

(assert (=> b!4148043 (= e!2573720 (Some!9717 (tuple2!43403 (Token!13755 (apply!10485 (transformation!7412 (h!50457 rules!3756)) (seqFromList!5529 (_1!24837 lt!1479519))) (h!50457 rules!3756) (size!33390 (seqFromList!5529 (_1!24837 lt!1479519))) (_1!24837 lt!1479519)) (_2!24837 lt!1479519))))))

(declare-fun lt!1479522 () Unit!64319)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1518 (Regex!12317 List!45159) Unit!64319)

(assert (=> b!4148043 (= lt!1479522 (longestMatchIsAcceptedByMatchOrIsEmpty!1518 (regex!7412 (h!50457 rules!3756)) input!3238))))

(declare-fun res!1698141 () Bool)

(declare-fun findLongestMatchInner!1545 (Regex!12317 List!45159 Int List!45159 List!45159 Int) tuple2!43406)

(assert (=> b!4148043 (= res!1698141 (isEmpty!26883 (_1!24837 (findLongestMatchInner!1545 (regex!7412 (h!50457 rules!3756)) Nil!45035 (size!33388 Nil!45035) input!3238 input!3238 (size!33388 input!3238)))))))

(declare-fun e!2573722 () Bool)

(assert (=> b!4148043 (=> res!1698141 e!2573722)))

(assert (=> b!4148043 e!2573722))

(declare-fun lt!1479518 () Unit!64319)

(assert (=> b!4148043 (= lt!1479518 lt!1479522)))

(declare-fun lt!1479521 () Unit!64319)

(assert (=> b!4148043 (= lt!1479521 (lemmaSemiInverse!2270 (transformation!7412 (h!50457 rules!3756)) (seqFromList!5529 (_1!24837 lt!1479519))))))

(declare-fun b!4148044 () Bool)

(assert (=> b!4148044 (= e!2573722 (matchR!6146 (regex!7412 (h!50457 rules!3756)) (_1!24837 (findLongestMatchInner!1545 (regex!7412 (h!50457 rules!3756)) Nil!45035 (size!33388 Nil!45035) input!3238 input!3238 (size!33388 input!3238)))))))

(declare-fun d!1227337 () Bool)

(declare-fun e!2573723 () Bool)

(assert (=> d!1227337 e!2573723))

(declare-fun res!1698143 () Bool)

(assert (=> d!1227337 (=> res!1698143 e!2573723)))

(declare-fun isEmpty!26885 (Option!9718) Bool)

(assert (=> d!1227337 (= res!1698143 (isEmpty!26885 lt!1479520))))

(assert (=> d!1227337 (= lt!1479520 e!2573720)))

(declare-fun c!710617 () Bool)

(assert (=> d!1227337 (= c!710617 (isEmpty!26883 (_1!24837 lt!1479519)))))

(declare-fun findLongestMatch!1458 (Regex!12317 List!45159) tuple2!43406)

(assert (=> d!1227337 (= lt!1479519 (findLongestMatch!1458 (regex!7412 (h!50457 rules!3756)) input!3238))))

(assert (=> d!1227337 (ruleValid!3218 thiss!25645 (h!50457 rules!3756))))

(assert (=> d!1227337 (= (maxPrefixOneRule!3130 thiss!25645 (h!50457 rules!3756) input!3238) lt!1479520)))

(declare-fun b!4148045 () Bool)

(assert (=> b!4148045 (= e!2573721 (= (size!33387 (_1!24835 (get!14707 lt!1479520))) (size!33388 (originalCharacters!7908 (_1!24835 (get!14707 lt!1479520))))))))

(declare-fun b!4148046 () Bool)

(assert (=> b!4148046 (= e!2573720 None!9717)))

(declare-fun b!4148047 () Bool)

(assert (=> b!4148047 (= e!2573723 e!2573721)))

(declare-fun res!1698145 () Bool)

(assert (=> b!4148047 (=> (not res!1698145) (not e!2573721))))

(assert (=> b!4148047 (= res!1698145 (matchR!6146 (regex!7412 (h!50457 rules!3756)) (list!16485 (charsOf!5005 (_1!24835 (get!14707 lt!1479520))))))))

(declare-fun b!4148048 () Bool)

(declare-fun res!1698140 () Bool)

(assert (=> b!4148048 (=> (not res!1698140) (not e!2573721))))

(assert (=> b!4148048 (= res!1698140 (= (rule!10540 (_1!24835 (get!14707 lt!1479520))) (h!50457 rules!3756)))))

(declare-fun b!4148049 () Bool)

(declare-fun res!1698144 () Bool)

(assert (=> b!4148049 (=> (not res!1698144) (not e!2573721))))

(assert (=> b!4148049 (= res!1698144 (= (value!231796 (_1!24835 (get!14707 lt!1479520))) (apply!10485 (transformation!7412 (rule!10540 (_1!24835 (get!14707 lt!1479520)))) (seqFromList!5529 (originalCharacters!7908 (_1!24835 (get!14707 lt!1479520)))))))))

(assert (= (and d!1227337 c!710617) b!4148046))

(assert (= (and d!1227337 (not c!710617)) b!4148043))

(assert (= (and b!4148043 (not res!1698141)) b!4148044))

(assert (= (and d!1227337 (not res!1698143)) b!4148047))

(assert (= (and b!4148047 res!1698145) b!4148041))

(assert (= (and b!4148041 res!1698139) b!4148042))

(assert (= (and b!4148042 res!1698142) b!4148048))

(assert (= (and b!4148048 res!1698140) b!4148049))

(assert (= (and b!4148049 res!1698144) b!4148045))

(declare-fun m!4743933 () Bool)

(assert (=> b!4148041 m!4743933))

(declare-fun m!4743935 () Bool)

(assert (=> b!4148041 m!4743935))

(assert (=> b!4148041 m!4743935))

(declare-fun m!4743937 () Bool)

(assert (=> b!4148041 m!4743937))

(assert (=> b!4148041 m!4743937))

(declare-fun m!4743939 () Bool)

(assert (=> b!4148041 m!4743939))

(declare-fun m!4743941 () Bool)

(assert (=> d!1227337 m!4743941))

(declare-fun m!4743943 () Bool)

(assert (=> d!1227337 m!4743943))

(declare-fun m!4743945 () Bool)

(assert (=> d!1227337 m!4743945))

(declare-fun m!4743947 () Bool)

(assert (=> d!1227337 m!4743947))

(declare-fun m!4743949 () Bool)

(assert (=> b!4148043 m!4743949))

(declare-fun m!4743951 () Bool)

(assert (=> b!4148043 m!4743951))

(assert (=> b!4148043 m!4743949))

(assert (=> b!4148043 m!4743777))

(assert (=> b!4148043 m!4743949))

(declare-fun m!4743953 () Bool)

(assert (=> b!4148043 m!4743953))

(declare-fun m!4743955 () Bool)

(assert (=> b!4148043 m!4743955))

(assert (=> b!4148043 m!4743955))

(assert (=> b!4148043 m!4743777))

(declare-fun m!4743957 () Bool)

(assert (=> b!4148043 m!4743957))

(assert (=> b!4148043 m!4743949))

(declare-fun m!4743959 () Bool)

(assert (=> b!4148043 m!4743959))

(declare-fun m!4743961 () Bool)

(assert (=> b!4148043 m!4743961))

(declare-fun m!4743963 () Bool)

(assert (=> b!4148043 m!4743963))

(assert (=> b!4148044 m!4743955))

(assert (=> b!4148044 m!4743777))

(assert (=> b!4148044 m!4743955))

(assert (=> b!4148044 m!4743777))

(assert (=> b!4148044 m!4743957))

(declare-fun m!4743965 () Bool)

(assert (=> b!4148044 m!4743965))

(assert (=> b!4148045 m!4743933))

(declare-fun m!4743967 () Bool)

(assert (=> b!4148045 m!4743967))

(assert (=> b!4148048 m!4743933))

(assert (=> b!4148047 m!4743933))

(assert (=> b!4148047 m!4743935))

(assert (=> b!4148047 m!4743935))

(assert (=> b!4148047 m!4743937))

(assert (=> b!4148047 m!4743937))

(declare-fun m!4743969 () Bool)

(assert (=> b!4148047 m!4743969))

(assert (=> b!4148042 m!4743933))

(declare-fun m!4743971 () Bool)

(assert (=> b!4148042 m!4743971))

(assert (=> b!4148042 m!4743777))

(assert (=> b!4148049 m!4743933))

(declare-fun m!4743973 () Bool)

(assert (=> b!4148049 m!4743973))

(assert (=> b!4148049 m!4743973))

(declare-fun m!4743975 () Bool)

(assert (=> b!4148049 m!4743975))

(assert (=> b!4147832 d!1227337))

(declare-fun d!1227355 () Bool)

(assert (=> d!1227355 (rulesInvariant!6298 thiss!25645 (t!342936 rules!3756))))

(declare-fun lt!1479525 () Unit!64319)

(declare-fun choose!25399 (LexerInterface!7001 Rule!14624 List!45161) Unit!64319)

(assert (=> d!1227355 (= lt!1479525 (choose!25399 thiss!25645 (h!50457 rules!3756) (t!342936 rules!3756)))))

(assert (=> d!1227355 (rulesInvariant!6298 thiss!25645 (Cons!45037 (h!50457 rules!3756) (t!342936 rules!3756)))))

(assert (=> d!1227355 (= (lemmaInvariantOnRulesThenOnTail!824 thiss!25645 (h!50457 rules!3756) (t!342936 rules!3756)) lt!1479525)))

(declare-fun bs!595388 () Bool)

(assert (= bs!595388 d!1227355))

(assert (=> bs!595388 m!4743687))

(declare-fun m!4743977 () Bool)

(assert (=> bs!595388 m!4743977))

(declare-fun m!4743979 () Bool)

(assert (=> bs!595388 m!4743979))

(assert (=> b!4147832 d!1227355))

(declare-fun b!4148068 () Bool)

(declare-fun e!2573731 () Option!9718)

(declare-fun call!290678 () Option!9718)

(assert (=> b!4148068 (= e!2573731 call!290678)))

(declare-fun b!4148069 () Bool)

(declare-fun res!1698162 () Bool)

(declare-fun e!2573730 () Bool)

(assert (=> b!4148069 (=> (not res!1698162) (not e!2573730))))

(declare-fun lt!1479538 () Option!9718)

(assert (=> b!4148069 (= res!1698162 (= (++!11642 (list!16485 (charsOf!5005 (_1!24835 (get!14707 lt!1479538)))) (_2!24835 (get!14707 lt!1479538))) input!3238))))

(declare-fun b!4148070 () Bool)

(declare-fun lt!1479539 () Option!9718)

(declare-fun lt!1479540 () Option!9718)

(assert (=> b!4148070 (= e!2573731 (ite (and ((_ is None!9717) lt!1479539) ((_ is None!9717) lt!1479540)) None!9717 (ite ((_ is None!9717) lt!1479540) lt!1479539 (ite ((_ is None!9717) lt!1479539) lt!1479540 (ite (>= (size!33387 (_1!24835 (v!40373 lt!1479539))) (size!33387 (_1!24835 (v!40373 lt!1479540)))) lt!1479539 lt!1479540)))))))

(assert (=> b!4148070 (= lt!1479539 call!290678)))

(assert (=> b!4148070 (= lt!1479540 (maxPrefix!4191 thiss!25645 (t!342936 (t!342936 rules!3756)) input!3238))))

(declare-fun b!4148071 () Bool)

(declare-fun e!2573732 () Bool)

(assert (=> b!4148071 (= e!2573732 e!2573730)))

(declare-fun res!1698166 () Bool)

(assert (=> b!4148071 (=> (not res!1698166) (not e!2573730))))

(declare-fun isDefined!7296 (Option!9718) Bool)

(assert (=> b!4148071 (= res!1698166 (isDefined!7296 lt!1479538))))

(declare-fun b!4148072 () Bool)

(declare-fun res!1698161 () Bool)

(assert (=> b!4148072 (=> (not res!1698161) (not e!2573730))))

(assert (=> b!4148072 (= res!1698161 (< (size!33388 (_2!24835 (get!14707 lt!1479538))) (size!33388 input!3238)))))

(declare-fun bm!290673 () Bool)

(assert (=> bm!290673 (= call!290678 (maxPrefixOneRule!3130 thiss!25645 (h!50457 (t!342936 rules!3756)) input!3238))))

(declare-fun d!1227357 () Bool)

(assert (=> d!1227357 e!2573732))

(declare-fun res!1698164 () Bool)

(assert (=> d!1227357 (=> res!1698164 e!2573732)))

(assert (=> d!1227357 (= res!1698164 (isEmpty!26885 lt!1479538))))

(assert (=> d!1227357 (= lt!1479538 e!2573731)))

(declare-fun c!710620 () Bool)

(assert (=> d!1227357 (= c!710620 (and ((_ is Cons!45037) (t!342936 rules!3756)) ((_ is Nil!45037) (t!342936 (t!342936 rules!3756)))))))

(declare-fun lt!1479536 () Unit!64319)

(declare-fun lt!1479537 () Unit!64319)

(assert (=> d!1227357 (= lt!1479536 lt!1479537)))

(assert (=> d!1227357 (isPrefix!4347 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2804 (List!45159 List!45159) Unit!64319)

(assert (=> d!1227357 (= lt!1479537 (lemmaIsPrefixRefl!2804 input!3238 input!3238))))

(declare-fun rulesValidInductive!2756 (LexerInterface!7001 List!45161) Bool)

(assert (=> d!1227357 (rulesValidInductive!2756 thiss!25645 (t!342936 rules!3756))))

(assert (=> d!1227357 (= (maxPrefix!4191 thiss!25645 (t!342936 rules!3756) input!3238) lt!1479538)))

(declare-fun b!4148073 () Bool)

(assert (=> b!4148073 (= e!2573730 (contains!9094 (t!342936 rules!3756) (rule!10540 (_1!24835 (get!14707 lt!1479538)))))))

(declare-fun b!4148074 () Bool)

(declare-fun res!1698165 () Bool)

(assert (=> b!4148074 (=> (not res!1698165) (not e!2573730))))

(assert (=> b!4148074 (= res!1698165 (= (value!231796 (_1!24835 (get!14707 lt!1479538))) (apply!10485 (transformation!7412 (rule!10540 (_1!24835 (get!14707 lt!1479538)))) (seqFromList!5529 (originalCharacters!7908 (_1!24835 (get!14707 lt!1479538)))))))))

(declare-fun b!4148075 () Bool)

(declare-fun res!1698163 () Bool)

(assert (=> b!4148075 (=> (not res!1698163) (not e!2573730))))

(assert (=> b!4148075 (= res!1698163 (matchR!6146 (regex!7412 (rule!10540 (_1!24835 (get!14707 lt!1479538)))) (list!16485 (charsOf!5005 (_1!24835 (get!14707 lt!1479538))))))))

(declare-fun b!4148076 () Bool)

(declare-fun res!1698160 () Bool)

(assert (=> b!4148076 (=> (not res!1698160) (not e!2573730))))

(assert (=> b!4148076 (= res!1698160 (= (list!16485 (charsOf!5005 (_1!24835 (get!14707 lt!1479538)))) (originalCharacters!7908 (_1!24835 (get!14707 lt!1479538)))))))

(assert (= (and d!1227357 c!710620) b!4148068))

(assert (= (and d!1227357 (not c!710620)) b!4148070))

(assert (= (or b!4148068 b!4148070) bm!290673))

(assert (= (and d!1227357 (not res!1698164)) b!4148071))

(assert (= (and b!4148071 res!1698166) b!4148076))

(assert (= (and b!4148076 res!1698160) b!4148072))

(assert (= (and b!4148072 res!1698161) b!4148069))

(assert (= (and b!4148069 res!1698162) b!4148074))

(assert (= (and b!4148074 res!1698165) b!4148075))

(assert (= (and b!4148075 res!1698163) b!4148073))

(declare-fun m!4743981 () Bool)

(assert (=> d!1227357 m!4743981))

(declare-fun m!4743983 () Bool)

(assert (=> d!1227357 m!4743983))

(declare-fun m!4743985 () Bool)

(assert (=> d!1227357 m!4743985))

(declare-fun m!4743987 () Bool)

(assert (=> d!1227357 m!4743987))

(declare-fun m!4743989 () Bool)

(assert (=> b!4148074 m!4743989))

(declare-fun m!4743991 () Bool)

(assert (=> b!4148074 m!4743991))

(assert (=> b!4148074 m!4743991))

(declare-fun m!4743993 () Bool)

(assert (=> b!4148074 m!4743993))

(assert (=> b!4148073 m!4743989))

(declare-fun m!4743995 () Bool)

(assert (=> b!4148073 m!4743995))

(declare-fun m!4743997 () Bool)

(assert (=> b!4148071 m!4743997))

(assert (=> b!4148076 m!4743989))

(declare-fun m!4743999 () Bool)

(assert (=> b!4148076 m!4743999))

(assert (=> b!4148076 m!4743999))

(declare-fun m!4744001 () Bool)

(assert (=> b!4148076 m!4744001))

(declare-fun m!4744003 () Bool)

(assert (=> b!4148070 m!4744003))

(assert (=> b!4148069 m!4743989))

(assert (=> b!4148069 m!4743999))

(assert (=> b!4148069 m!4743999))

(assert (=> b!4148069 m!4744001))

(assert (=> b!4148069 m!4744001))

(declare-fun m!4744005 () Bool)

(assert (=> b!4148069 m!4744005))

(assert (=> b!4148075 m!4743989))

(assert (=> b!4148075 m!4743999))

(assert (=> b!4148075 m!4743999))

(assert (=> b!4148075 m!4744001))

(assert (=> b!4148075 m!4744001))

(declare-fun m!4744007 () Bool)

(assert (=> b!4148075 m!4744007))

(declare-fun m!4744009 () Bool)

(assert (=> bm!290673 m!4744009))

(assert (=> b!4148072 m!4743989))

(declare-fun m!4744011 () Bool)

(assert (=> b!4148072 m!4744011))

(assert (=> b!4148072 m!4743777))

(assert (=> b!4147832 d!1227357))

(declare-fun d!1227359 () Bool)

(declare-fun lt!1479543 () List!45159)

(assert (=> d!1227359 (= (++!11642 p!2912 lt!1479543) input!3238)))

(declare-fun e!2573735 () List!45159)

(assert (=> d!1227359 (= lt!1479543 e!2573735)))

(declare-fun c!710623 () Bool)

(assert (=> d!1227359 (= c!710623 ((_ is Cons!45035) p!2912))))

(assert (=> d!1227359 (>= (size!33388 input!3238) (size!33388 p!2912))))

(assert (=> d!1227359 (= (getSuffix!2674 input!3238 p!2912) lt!1479543)))

(declare-fun b!4148081 () Bool)

(assert (=> b!4148081 (= e!2573735 (getSuffix!2674 (tail!6595 input!3238) (t!342934 p!2912)))))

(declare-fun b!4148082 () Bool)

(assert (=> b!4148082 (= e!2573735 input!3238)))

(assert (= (and d!1227359 c!710623) b!4148081))

(assert (= (and d!1227359 (not c!710623)) b!4148082))

(declare-fun m!4744013 () Bool)

(assert (=> d!1227359 m!4744013))

(assert (=> d!1227359 m!4743777))

(assert (=> d!1227359 m!4743665))

(assert (=> b!4148081 m!4743785))

(assert (=> b!4148081 m!4743785))

(declare-fun m!4744015 () Bool)

(assert (=> b!4148081 m!4744015))

(assert (=> b!4147822 d!1227359))

(declare-fun d!1227361 () Bool)

(declare-fun dynLambda!19403 (Int BalanceConc!26840) TokenValue!7642)

(assert (=> d!1227361 (= (apply!10485 (transformation!7412 r!4008) lt!1479439) (dynLambda!19403 (toValue!10076 (transformation!7412 r!4008)) lt!1479439))))

(declare-fun b_lambda!121969 () Bool)

(assert (=> (not b_lambda!121969) (not d!1227361)))

(declare-fun t!342944 () Bool)

(declare-fun tb!249001 () Bool)

(assert (=> (and b!4147840 (= (toValue!10076 (transformation!7412 rBis!149)) (toValue!10076 (transformation!7412 r!4008))) t!342944) tb!249001))

(declare-fun result!302860 () Bool)

(declare-fun inv!21 (TokenValue!7642) Bool)

(assert (=> tb!249001 (= result!302860 (inv!21 (dynLambda!19403 (toValue!10076 (transformation!7412 r!4008)) lt!1479439)))))

(declare-fun m!4744017 () Bool)

(assert (=> tb!249001 m!4744017))

(assert (=> d!1227361 t!342944))

(declare-fun b_and!322519 () Bool)

(assert (= b_and!322501 (and (=> t!342944 result!302860) b_and!322519)))

(declare-fun t!342946 () Bool)

(declare-fun tb!249003 () Bool)

(assert (=> (and b!4147818 (= (toValue!10076 (transformation!7412 r!4008)) (toValue!10076 (transformation!7412 r!4008))) t!342946) tb!249003))

(declare-fun result!302864 () Bool)

(assert (= result!302864 result!302860))

(assert (=> d!1227361 t!342946))

(declare-fun b_and!322521 () Bool)

(assert (= b_and!322505 (and (=> t!342946 result!302864) b_and!322521)))

(declare-fun t!342948 () Bool)

(declare-fun tb!249005 () Bool)

(assert (=> (and b!4147838 (= (toValue!10076 (transformation!7412 (h!50457 rules!3756))) (toValue!10076 (transformation!7412 r!4008))) t!342948) tb!249005))

(declare-fun result!302866 () Bool)

(assert (= result!302866 result!302860))

(assert (=> d!1227361 t!342948))

(declare-fun b_and!322523 () Bool)

(assert (= b_and!322509 (and (=> t!342948 result!302866) b_and!322523)))

(declare-fun m!4744019 () Bool)

(assert (=> d!1227361 m!4744019))

(assert (=> b!4147822 d!1227361))

(declare-fun d!1227363 () Bool)

(declare-fun fromListB!2537 (List!45159) BalanceConc!26840)

(assert (=> d!1227363 (= (seqFromList!5529 p!2912) (fromListB!2537 p!2912))))

(declare-fun bs!595389 () Bool)

(assert (= bs!595389 d!1227363))

(declare-fun m!4744021 () Bool)

(assert (=> bs!595389 m!4744021))

(assert (=> b!4147822 d!1227363))

(declare-fun d!1227365 () Bool)

(declare-fun lt!1479546 () Int)

(assert (=> d!1227365 (>= lt!1479546 0)))

(declare-fun e!2573741 () Int)

(assert (=> d!1227365 (= lt!1479546 e!2573741)))

(declare-fun c!710626 () Bool)

(assert (=> d!1227365 (= c!710626 ((_ is Nil!45035) p!2912))))

(assert (=> d!1227365 (= (size!33388 p!2912) lt!1479546)))

(declare-fun b!4148089 () Bool)

(assert (=> b!4148089 (= e!2573741 0)))

(declare-fun b!4148090 () Bool)

(assert (=> b!4148090 (= e!2573741 (+ 1 (size!33388 (t!342934 p!2912))))))

(assert (= (and d!1227365 c!710626) b!4148089))

(assert (= (and d!1227365 (not c!710626)) b!4148090))

(declare-fun m!4744023 () Bool)

(assert (=> b!4148090 m!4744023))

(assert (=> b!4147822 d!1227365))

(declare-fun b!4148091 () Bool)

(declare-fun e!2573743 () Option!9718)

(declare-fun call!290679 () Option!9718)

(assert (=> b!4148091 (= e!2573743 call!290679)))

(declare-fun b!4148092 () Bool)

(declare-fun res!1698169 () Bool)

(declare-fun e!2573742 () Bool)

(assert (=> b!4148092 (=> (not res!1698169) (not e!2573742))))

(declare-fun lt!1479549 () Option!9718)

(assert (=> b!4148092 (= res!1698169 (= (++!11642 (list!16485 (charsOf!5005 (_1!24835 (get!14707 lt!1479549)))) (_2!24835 (get!14707 lt!1479549))) input!3238))))

(declare-fun b!4148093 () Bool)

(declare-fun lt!1479550 () Option!9718)

(declare-fun lt!1479551 () Option!9718)

(assert (=> b!4148093 (= e!2573743 (ite (and ((_ is None!9717) lt!1479550) ((_ is None!9717) lt!1479551)) None!9717 (ite ((_ is None!9717) lt!1479551) lt!1479550 (ite ((_ is None!9717) lt!1479550) lt!1479551 (ite (>= (size!33387 (_1!24835 (v!40373 lt!1479550))) (size!33387 (_1!24835 (v!40373 lt!1479551)))) lt!1479550 lt!1479551)))))))

(assert (=> b!4148093 (= lt!1479550 call!290679)))

(assert (=> b!4148093 (= lt!1479551 (maxPrefix!4191 thiss!25645 (t!342936 rules!3756) input!3238))))

(declare-fun b!4148094 () Bool)

(declare-fun e!2573744 () Bool)

(assert (=> b!4148094 (= e!2573744 e!2573742)))

(declare-fun res!1698173 () Bool)

(assert (=> b!4148094 (=> (not res!1698173) (not e!2573742))))

(assert (=> b!4148094 (= res!1698173 (isDefined!7296 lt!1479549))))

(declare-fun b!4148095 () Bool)

(declare-fun res!1698168 () Bool)

(assert (=> b!4148095 (=> (not res!1698168) (not e!2573742))))

(assert (=> b!4148095 (= res!1698168 (< (size!33388 (_2!24835 (get!14707 lt!1479549))) (size!33388 input!3238)))))

(declare-fun bm!290674 () Bool)

(assert (=> bm!290674 (= call!290679 (maxPrefixOneRule!3130 thiss!25645 (h!50457 rules!3756) input!3238))))

(declare-fun d!1227367 () Bool)

(assert (=> d!1227367 e!2573744))

(declare-fun res!1698171 () Bool)

(assert (=> d!1227367 (=> res!1698171 e!2573744)))

(assert (=> d!1227367 (= res!1698171 (isEmpty!26885 lt!1479549))))

(assert (=> d!1227367 (= lt!1479549 e!2573743)))

(declare-fun c!710627 () Bool)

(assert (=> d!1227367 (= c!710627 (and ((_ is Cons!45037) rules!3756) ((_ is Nil!45037) (t!342936 rules!3756))))))

(declare-fun lt!1479547 () Unit!64319)

(declare-fun lt!1479548 () Unit!64319)

(assert (=> d!1227367 (= lt!1479547 lt!1479548)))

(assert (=> d!1227367 (isPrefix!4347 input!3238 input!3238)))

(assert (=> d!1227367 (= lt!1479548 (lemmaIsPrefixRefl!2804 input!3238 input!3238))))

(assert (=> d!1227367 (rulesValidInductive!2756 thiss!25645 rules!3756)))

(assert (=> d!1227367 (= (maxPrefix!4191 thiss!25645 rules!3756 input!3238) lt!1479549)))

(declare-fun b!4148096 () Bool)

(assert (=> b!4148096 (= e!2573742 (contains!9094 rules!3756 (rule!10540 (_1!24835 (get!14707 lt!1479549)))))))

(declare-fun b!4148097 () Bool)

(declare-fun res!1698172 () Bool)

(assert (=> b!4148097 (=> (not res!1698172) (not e!2573742))))

(assert (=> b!4148097 (= res!1698172 (= (value!231796 (_1!24835 (get!14707 lt!1479549))) (apply!10485 (transformation!7412 (rule!10540 (_1!24835 (get!14707 lt!1479549)))) (seqFromList!5529 (originalCharacters!7908 (_1!24835 (get!14707 lt!1479549)))))))))

(declare-fun b!4148098 () Bool)

(declare-fun res!1698170 () Bool)

(assert (=> b!4148098 (=> (not res!1698170) (not e!2573742))))

(assert (=> b!4148098 (= res!1698170 (matchR!6146 (regex!7412 (rule!10540 (_1!24835 (get!14707 lt!1479549)))) (list!16485 (charsOf!5005 (_1!24835 (get!14707 lt!1479549))))))))

(declare-fun b!4148099 () Bool)

(declare-fun res!1698167 () Bool)

(assert (=> b!4148099 (=> (not res!1698167) (not e!2573742))))

(assert (=> b!4148099 (= res!1698167 (= (list!16485 (charsOf!5005 (_1!24835 (get!14707 lt!1479549)))) (originalCharacters!7908 (_1!24835 (get!14707 lt!1479549)))))))

(assert (= (and d!1227367 c!710627) b!4148091))

(assert (= (and d!1227367 (not c!710627)) b!4148093))

(assert (= (or b!4148091 b!4148093) bm!290674))

(assert (= (and d!1227367 (not res!1698171)) b!4148094))

(assert (= (and b!4148094 res!1698173) b!4148099))

(assert (= (and b!4148099 res!1698167) b!4148095))

(assert (= (and b!4148095 res!1698168) b!4148092))

(assert (= (and b!4148092 res!1698169) b!4148097))

(assert (= (and b!4148097 res!1698172) b!4148098))

(assert (= (and b!4148098 res!1698170) b!4148096))

(declare-fun m!4744025 () Bool)

(assert (=> d!1227367 m!4744025))

(assert (=> d!1227367 m!4743983))

(assert (=> d!1227367 m!4743985))

(declare-fun m!4744027 () Bool)

(assert (=> d!1227367 m!4744027))

(declare-fun m!4744029 () Bool)

(assert (=> b!4148097 m!4744029))

(declare-fun m!4744031 () Bool)

(assert (=> b!4148097 m!4744031))

(assert (=> b!4148097 m!4744031))

(declare-fun m!4744033 () Bool)

(assert (=> b!4148097 m!4744033))

(assert (=> b!4148096 m!4744029))

(declare-fun m!4744035 () Bool)

(assert (=> b!4148096 m!4744035))

(declare-fun m!4744037 () Bool)

(assert (=> b!4148094 m!4744037))

(assert (=> b!4148099 m!4744029))

(declare-fun m!4744039 () Bool)

(assert (=> b!4148099 m!4744039))

(assert (=> b!4148099 m!4744039))

(declare-fun m!4744041 () Bool)

(assert (=> b!4148099 m!4744041))

(assert (=> b!4148093 m!4743685))

(assert (=> b!4148092 m!4744029))

(assert (=> b!4148092 m!4744039))

(assert (=> b!4148092 m!4744039))

(assert (=> b!4148092 m!4744041))

(assert (=> b!4148092 m!4744041))

(declare-fun m!4744043 () Bool)

(assert (=> b!4148092 m!4744043))

(assert (=> b!4148098 m!4744029))

(assert (=> b!4148098 m!4744039))

(assert (=> b!4148098 m!4744039))

(assert (=> b!4148098 m!4744041))

(assert (=> b!4148098 m!4744041))

(declare-fun m!4744045 () Bool)

(assert (=> b!4148098 m!4744045))

(assert (=> bm!290674 m!4743681))

(assert (=> b!4148095 m!4744029))

(declare-fun m!4744047 () Bool)

(assert (=> b!4148095 m!4744047))

(assert (=> b!4148095 m!4743777))

(assert (=> b!4147822 d!1227367))

(declare-fun b!4148236 () Bool)

(declare-fun e!2573822 () Bool)

(assert (=> b!4148236 (= e!2573822 true)))

(declare-fun d!1227369 () Bool)

(assert (=> d!1227369 e!2573822))

(assert (= d!1227369 b!4148236))

(declare-fun lambda!129003 () Int)

(declare-fun order!23875 () Int)

(declare-fun order!23873 () Int)

(declare-fun dynLambda!19404 (Int Int) Int)

(declare-fun dynLambda!19405 (Int Int) Int)

(assert (=> b!4148236 (< (dynLambda!19404 order!23873 (toValue!10076 (transformation!7412 r!4008))) (dynLambda!19405 order!23875 lambda!129003))))

(declare-fun order!23877 () Int)

(declare-fun dynLambda!19406 (Int Int) Int)

(assert (=> b!4148236 (< (dynLambda!19406 order!23877 (toChars!9935 (transformation!7412 r!4008))) (dynLambda!19405 order!23875 lambda!129003))))

(declare-fun dynLambda!19407 (Int TokenValue!7642) BalanceConc!26840)

(assert (=> d!1227369 (= (list!16485 (dynLambda!19407 (toChars!9935 (transformation!7412 r!4008)) (dynLambda!19403 (toValue!10076 (transformation!7412 r!4008)) lt!1479439))) (list!16485 lt!1479439))))

(declare-fun lt!1479571 () Unit!64319)

(declare-fun ForallOf!988 (Int BalanceConc!26840) Unit!64319)

(assert (=> d!1227369 (= lt!1479571 (ForallOf!988 lambda!129003 lt!1479439))))

(assert (=> d!1227369 (= (lemmaSemiInverse!2270 (transformation!7412 r!4008) lt!1479439) lt!1479571)))

(declare-fun b_lambda!121981 () Bool)

(assert (=> (not b_lambda!121981) (not d!1227369)))

(declare-fun t!342961 () Bool)

(declare-fun tb!249017 () Bool)

(assert (=> (and b!4147840 (= (toChars!9935 (transformation!7412 rBis!149)) (toChars!9935 (transformation!7412 r!4008))) t!342961) tb!249017))

(declare-fun b!4148241 () Bool)

(declare-fun e!2573825 () Bool)

(declare-fun tp!1264401 () Bool)

(declare-fun inv!59648 (Conc!13623) Bool)

(assert (=> b!4148241 (= e!2573825 (and (inv!59648 (c!710582 (dynLambda!19407 (toChars!9935 (transformation!7412 r!4008)) (dynLambda!19403 (toValue!10076 (transformation!7412 r!4008)) lt!1479439)))) tp!1264401))))

(declare-fun result!302886 () Bool)

(declare-fun inv!59649 (BalanceConc!26840) Bool)

(assert (=> tb!249017 (= result!302886 (and (inv!59649 (dynLambda!19407 (toChars!9935 (transformation!7412 r!4008)) (dynLambda!19403 (toValue!10076 (transformation!7412 r!4008)) lt!1479439))) e!2573825))))

(assert (= tb!249017 b!4148241))

(declare-fun m!4744109 () Bool)

(assert (=> b!4148241 m!4744109))

(declare-fun m!4744111 () Bool)

(assert (=> tb!249017 m!4744111))

(assert (=> d!1227369 t!342961))

(declare-fun b_and!322541 () Bool)

(assert (= b_and!322503 (and (=> t!342961 result!302886) b_and!322541)))

(declare-fun t!342963 () Bool)

(declare-fun tb!249019 () Bool)

(assert (=> (and b!4147818 (= (toChars!9935 (transformation!7412 r!4008)) (toChars!9935 (transformation!7412 r!4008))) t!342963) tb!249019))

(declare-fun result!302890 () Bool)

(assert (= result!302890 result!302886))

(assert (=> d!1227369 t!342963))

(declare-fun b_and!322543 () Bool)

(assert (= b_and!322507 (and (=> t!342963 result!302890) b_and!322543)))

(declare-fun t!342965 () Bool)

(declare-fun tb!249021 () Bool)

(assert (=> (and b!4147838 (= (toChars!9935 (transformation!7412 (h!50457 rules!3756))) (toChars!9935 (transformation!7412 r!4008))) t!342965) tb!249021))

(declare-fun result!302892 () Bool)

(assert (= result!302892 result!302886))

(assert (=> d!1227369 t!342965))

(declare-fun b_and!322545 () Bool)

(assert (= b_and!322511 (and (=> t!342965 result!302892) b_and!322545)))

(declare-fun b_lambda!121983 () Bool)

(assert (=> (not b_lambda!121983) (not d!1227369)))

(assert (=> d!1227369 t!342944))

(declare-fun b_and!322547 () Bool)

(assert (= b_and!322519 (and (=> t!342944 result!302860) b_and!322547)))

(assert (=> d!1227369 t!342946))

(declare-fun b_and!322549 () Bool)

(assert (= b_and!322521 (and (=> t!342946 result!302864) b_and!322549)))

(assert (=> d!1227369 t!342948))

(declare-fun b_and!322551 () Bool)

(assert (= b_and!322523 (and (=> t!342948 result!302866) b_and!322551)))

(declare-fun m!4744113 () Bool)

(assert (=> d!1227369 m!4744113))

(declare-fun m!4744115 () Bool)

(assert (=> d!1227369 m!4744115))

(declare-fun m!4744117 () Bool)

(assert (=> d!1227369 m!4744117))

(assert (=> d!1227369 m!4744019))

(declare-fun m!4744119 () Bool)

(assert (=> d!1227369 m!4744119))

(assert (=> d!1227369 m!4744019))

(assert (=> d!1227369 m!4744115))

(assert (=> b!4147822 d!1227369))

(declare-fun d!1227397 () Bool)

(declare-fun res!1698227 () Bool)

(declare-fun e!2573828 () Bool)

(assert (=> d!1227397 (=> (not res!1698227) (not e!2573828))))

(assert (=> d!1227397 (= res!1698227 (validRegex!5551 (regex!7412 r!4008)))))

(assert (=> d!1227397 (= (ruleValid!3218 thiss!25645 r!4008) e!2573828)))

(declare-fun b!4148246 () Bool)

(declare-fun res!1698228 () Bool)

(assert (=> b!4148246 (=> (not res!1698228) (not e!2573828))))

(assert (=> b!4148246 (= res!1698228 (not (nullable!4341 (regex!7412 r!4008))))))

(declare-fun b!4148247 () Bool)

(assert (=> b!4148247 (= e!2573828 (not (= (tag!8272 r!4008) (String!51961 ""))))))

(assert (= (and d!1227397 res!1698227) b!4148246))

(assert (= (and b!4148246 res!1698228) b!4148247))

(assert (=> d!1227397 m!4743843))

(assert (=> b!4148246 m!4743841))

(assert (=> b!4147833 d!1227397))

(declare-fun d!1227399 () Bool)

(assert (=> d!1227399 (ruleValid!3218 thiss!25645 r!4008)))

(declare-fun lt!1479574 () Unit!64319)

(declare-fun choose!25400 (LexerInterface!7001 Rule!14624 List!45161) Unit!64319)

(assert (=> d!1227399 (= lt!1479574 (choose!25400 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1227399 (contains!9094 rules!3756 r!4008)))

(assert (=> d!1227399 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2258 thiss!25645 r!4008 rules!3756) lt!1479574)))

(declare-fun bs!595392 () Bool)

(assert (= bs!595392 d!1227399))

(assert (=> bs!595392 m!4743711))

(declare-fun m!4744121 () Bool)

(assert (=> bs!595392 m!4744121))

(assert (=> bs!595392 m!4743701))

(assert (=> b!4147826 d!1227399))

(declare-fun d!1227401 () Bool)

(declare-fun res!1698229 () Bool)

(declare-fun e!2573829 () Bool)

(assert (=> d!1227401 (=> (not res!1698229) (not e!2573829))))

(assert (=> d!1227401 (= res!1698229 (validRegex!5551 (regex!7412 rBis!149)))))

(assert (=> d!1227401 (= (ruleValid!3218 thiss!25645 rBis!149) e!2573829)))

(declare-fun b!4148248 () Bool)

(declare-fun res!1698230 () Bool)

(assert (=> b!4148248 (=> (not res!1698230) (not e!2573829))))

(assert (=> b!4148248 (= res!1698230 (not (nullable!4341 (regex!7412 rBis!149))))))

(declare-fun b!4148249 () Bool)

(assert (=> b!4148249 (= e!2573829 (not (= (tag!8272 rBis!149) (String!51961 ""))))))

(assert (= (and d!1227401 res!1698229) b!4148248))

(assert (= (and b!4148248 res!1698230) b!4148249))

(declare-fun m!4744123 () Bool)

(assert (=> d!1227401 m!4744123))

(declare-fun m!4744125 () Bool)

(assert (=> b!4148248 m!4744125))

(assert (=> b!4147826 d!1227401))

(declare-fun d!1227403 () Bool)

(assert (=> d!1227403 (ruleValid!3218 thiss!25645 rBis!149)))

(declare-fun lt!1479575 () Unit!64319)

(assert (=> d!1227403 (= lt!1479575 (choose!25400 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1227403 (contains!9094 rules!3756 rBis!149)))

(assert (=> d!1227403 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2258 thiss!25645 rBis!149 rules!3756) lt!1479575)))

(declare-fun bs!595393 () Bool)

(assert (= bs!595393 d!1227403))

(assert (=> bs!595393 m!4743697))

(declare-fun m!4744127 () Bool)

(assert (=> bs!595393 m!4744127))

(assert (=> bs!595393 m!4743725))

(assert (=> b!4147826 d!1227403))

(declare-fun d!1227405 () Bool)

(declare-fun lt!1479576 () Bool)

(assert (=> d!1227405 (= lt!1479576 (select (content!6967 (t!342936 rules!3756)) r!4008))))

(declare-fun e!2573830 () Bool)

(assert (=> d!1227405 (= lt!1479576 e!2573830)))

(declare-fun res!1698231 () Bool)

(assert (=> d!1227405 (=> (not res!1698231) (not e!2573830))))

(assert (=> d!1227405 (= res!1698231 ((_ is Cons!45037) (t!342936 rules!3756)))))

(assert (=> d!1227405 (= (contains!9094 (t!342936 rules!3756) r!4008) lt!1479576)))

(declare-fun b!4148250 () Bool)

(declare-fun e!2573831 () Bool)

(assert (=> b!4148250 (= e!2573830 e!2573831)))

(declare-fun res!1698232 () Bool)

(assert (=> b!4148250 (=> res!1698232 e!2573831)))

(assert (=> b!4148250 (= res!1698232 (= (h!50457 (t!342936 rules!3756)) r!4008))))

(declare-fun b!4148251 () Bool)

(assert (=> b!4148251 (= e!2573831 (contains!9094 (t!342936 (t!342936 rules!3756)) r!4008))))

(assert (= (and d!1227405 res!1698231) b!4148250))

(assert (= (and b!4148250 (not res!1698232)) b!4148251))

(assert (=> d!1227405 m!4743755))

(declare-fun m!4744129 () Bool)

(assert (=> d!1227405 m!4744129))

(declare-fun m!4744131 () Bool)

(assert (=> b!4148251 m!4744131))

(assert (=> b!4147837 d!1227405))

(declare-fun d!1227407 () Bool)

(declare-fun lt!1479577 () Bool)

(assert (=> d!1227407 (= lt!1479577 (select (content!6967 rules!3756) r!4008))))

(declare-fun e!2573832 () Bool)

(assert (=> d!1227407 (= lt!1479577 e!2573832)))

(declare-fun res!1698233 () Bool)

(assert (=> d!1227407 (=> (not res!1698233) (not e!2573832))))

(assert (=> d!1227407 (= res!1698233 ((_ is Cons!45037) rules!3756))))

(assert (=> d!1227407 (= (contains!9094 rules!3756 r!4008) lt!1479577)))

(declare-fun b!4148252 () Bool)

(declare-fun e!2573833 () Bool)

(assert (=> b!4148252 (= e!2573832 e!2573833)))

(declare-fun res!1698234 () Bool)

(assert (=> b!4148252 (=> res!1698234 e!2573833)))

(assert (=> b!4148252 (= res!1698234 (= (h!50457 rules!3756) r!4008))))

(declare-fun b!4148253 () Bool)

(assert (=> b!4148253 (= e!2573833 (contains!9094 (t!342936 rules!3756) r!4008))))

(assert (= (and d!1227407 res!1698233) b!4148252))

(assert (= (and b!4148252 (not res!1698234)) b!4148253))

(assert (=> d!1227407 m!4743853))

(declare-fun m!4744133 () Bool)

(assert (=> d!1227407 m!4744133))

(assert (=> b!4148253 m!4743677))

(assert (=> b!4147824 d!1227407))

(declare-fun d!1227409 () Bool)

(declare-fun lt!1479578 () Bool)

(assert (=> d!1227409 (= lt!1479578 (select (content!6967 rules!3756) rBis!149))))

(declare-fun e!2573834 () Bool)

(assert (=> d!1227409 (= lt!1479578 e!2573834)))

(declare-fun res!1698235 () Bool)

(assert (=> d!1227409 (=> (not res!1698235) (not e!2573834))))

(assert (=> d!1227409 (= res!1698235 ((_ is Cons!45037) rules!3756))))

(assert (=> d!1227409 (= (contains!9094 rules!3756 rBis!149) lt!1479578)))

(declare-fun b!4148254 () Bool)

(declare-fun e!2573835 () Bool)

(assert (=> b!4148254 (= e!2573834 e!2573835)))

(declare-fun res!1698236 () Bool)

(assert (=> b!4148254 (=> res!1698236 e!2573835)))

(assert (=> b!4148254 (= res!1698236 (= (h!50457 rules!3756) rBis!149))))

(declare-fun b!4148255 () Bool)

(assert (=> b!4148255 (= e!2573835 (contains!9094 (t!342936 rules!3756) rBis!149))))

(assert (= (and d!1227409 res!1698235) b!4148254))

(assert (= (and b!4148254 (not res!1698236)) b!4148255))

(assert (=> d!1227409 m!4743853))

(declare-fun m!4744135 () Bool)

(assert (=> d!1227409 m!4744135))

(assert (=> b!4148255 m!4743679))

(assert (=> b!4147835 d!1227409))

(declare-fun d!1227411 () Bool)

(assert (=> d!1227411 (= (isEmpty!26882 rules!3756) ((_ is Nil!45037) rules!3756))))

(assert (=> b!4147825 d!1227411))

(declare-fun b!4148268 () Bool)

(declare-fun e!2573838 () Bool)

(declare-fun tp!1264413 () Bool)

(assert (=> b!4148268 (= e!2573838 tp!1264413)))

(declare-fun b!4148267 () Bool)

(declare-fun tp!1264416 () Bool)

(declare-fun tp!1264414 () Bool)

(assert (=> b!4148267 (= e!2573838 (and tp!1264416 tp!1264414))))

(declare-fun b!4148266 () Bool)

(assert (=> b!4148266 (= e!2573838 tp_is_empty!21557)))

(declare-fun b!4148269 () Bool)

(declare-fun tp!1264415 () Bool)

(declare-fun tp!1264412 () Bool)

(assert (=> b!4148269 (= e!2573838 (and tp!1264415 tp!1264412))))

(assert (=> b!4147828 (= tp!1264344 e!2573838)))

(assert (= (and b!4147828 ((_ is ElementMatch!12317) (regex!7412 (h!50457 rules!3756)))) b!4148266))

(assert (= (and b!4147828 ((_ is Concat!19960) (regex!7412 (h!50457 rules!3756)))) b!4148267))

(assert (= (and b!4147828 ((_ is Star!12317) (regex!7412 (h!50457 rules!3756)))) b!4148268))

(assert (= (and b!4147828 ((_ is Union!12317) (regex!7412 (h!50457 rules!3756)))) b!4148269))

(declare-fun b!4148280 () Bool)

(declare-fun b_free!118443 () Bool)

(declare-fun b_next!119147 () Bool)

(assert (=> b!4148280 (= b_free!118443 (not b_next!119147))))

(declare-fun t!342967 () Bool)

(declare-fun tb!249023 () Bool)

(assert (=> (and b!4148280 (= (toValue!10076 (transformation!7412 (h!50457 (t!342936 rules!3756)))) (toValue!10076 (transformation!7412 r!4008))) t!342967) tb!249023))

(declare-fun result!302898 () Bool)

(assert (= result!302898 result!302860))

(assert (=> d!1227361 t!342967))

(assert (=> d!1227369 t!342967))

(declare-fun b_and!322553 () Bool)

(declare-fun tp!1264428 () Bool)

(assert (=> b!4148280 (= tp!1264428 (and (=> t!342967 result!302898) b_and!322553))))

(declare-fun b_free!118445 () Bool)

(declare-fun b_next!119149 () Bool)

(assert (=> b!4148280 (= b_free!118445 (not b_next!119149))))

(declare-fun tb!249025 () Bool)

(declare-fun t!342969 () Bool)

(assert (=> (and b!4148280 (= (toChars!9935 (transformation!7412 (h!50457 (t!342936 rules!3756)))) (toChars!9935 (transformation!7412 r!4008))) t!342969) tb!249025))

(declare-fun result!302900 () Bool)

(assert (= result!302900 result!302886))

(assert (=> d!1227369 t!342969))

(declare-fun b_and!322555 () Bool)

(declare-fun tp!1264425 () Bool)

(assert (=> b!4148280 (= tp!1264425 (and (=> t!342969 result!302900) b_and!322555))))

(declare-fun e!2573849 () Bool)

(assert (=> b!4148280 (= e!2573849 (and tp!1264428 tp!1264425))))

(declare-fun tp!1264426 () Bool)

(declare-fun b!4148279 () Bool)

(declare-fun e!2573848 () Bool)

(assert (=> b!4148279 (= e!2573848 (and tp!1264426 (inv!59643 (tag!8272 (h!50457 (t!342936 rules!3756)))) (inv!59645 (transformation!7412 (h!50457 (t!342936 rules!3756)))) e!2573849))))

(declare-fun b!4148278 () Bool)

(declare-fun e!2573847 () Bool)

(declare-fun tp!1264427 () Bool)

(assert (=> b!4148278 (= e!2573847 (and e!2573848 tp!1264427))))

(assert (=> b!4147823 (= tp!1264351 e!2573847)))

(assert (= b!4148279 b!4148280))

(assert (= b!4148278 b!4148279))

(assert (= (and b!4147823 ((_ is Cons!45037) (t!342936 rules!3756))) b!4148278))

(declare-fun m!4744137 () Bool)

(assert (=> b!4148279 m!4744137))

(declare-fun m!4744139 () Bool)

(assert (=> b!4148279 m!4744139))

(declare-fun b!4148283 () Bool)

(declare-fun e!2573851 () Bool)

(declare-fun tp!1264430 () Bool)

(assert (=> b!4148283 (= e!2573851 tp!1264430)))

(declare-fun b!4148282 () Bool)

(declare-fun tp!1264433 () Bool)

(declare-fun tp!1264431 () Bool)

(assert (=> b!4148282 (= e!2573851 (and tp!1264433 tp!1264431))))

(declare-fun b!4148281 () Bool)

(assert (=> b!4148281 (= e!2573851 tp_is_empty!21557)))

(declare-fun b!4148284 () Bool)

(declare-fun tp!1264432 () Bool)

(declare-fun tp!1264429 () Bool)

(assert (=> b!4148284 (= e!2573851 (and tp!1264432 tp!1264429))))

(assert (=> b!4147829 (= tp!1264347 e!2573851)))

(assert (= (and b!4147829 ((_ is ElementMatch!12317) (regex!7412 r!4008))) b!4148281))

(assert (= (and b!4147829 ((_ is Concat!19960) (regex!7412 r!4008))) b!4148282))

(assert (= (and b!4147829 ((_ is Star!12317) (regex!7412 r!4008))) b!4148283))

(assert (= (and b!4147829 ((_ is Union!12317) (regex!7412 r!4008))) b!4148284))

(declare-fun b!4148289 () Bool)

(declare-fun e!2573854 () Bool)

(declare-fun tp!1264436 () Bool)

(assert (=> b!4148289 (= e!2573854 (and tp_is_empty!21557 tp!1264436))))

(assert (=> b!4147827 (= tp!1264343 e!2573854)))

(assert (= (and b!4147827 ((_ is Cons!45035) (t!342934 input!3238))) b!4148289))

(declare-fun b!4148290 () Bool)

(declare-fun e!2573855 () Bool)

(declare-fun tp!1264437 () Bool)

(assert (=> b!4148290 (= e!2573855 (and tp_is_empty!21557 tp!1264437))))

(assert (=> b!4147836 (= tp!1264350 e!2573855)))

(assert (= (and b!4147836 ((_ is Cons!45035) (t!342934 p!2912))) b!4148290))

(declare-fun b!4148293 () Bool)

(declare-fun e!2573856 () Bool)

(declare-fun tp!1264439 () Bool)

(assert (=> b!4148293 (= e!2573856 tp!1264439)))

(declare-fun b!4148292 () Bool)

(declare-fun tp!1264442 () Bool)

(declare-fun tp!1264440 () Bool)

(assert (=> b!4148292 (= e!2573856 (and tp!1264442 tp!1264440))))

(declare-fun b!4148291 () Bool)

(assert (=> b!4148291 (= e!2573856 tp_is_empty!21557)))

(declare-fun b!4148294 () Bool)

(declare-fun tp!1264441 () Bool)

(declare-fun tp!1264438 () Bool)

(assert (=> b!4148294 (= e!2573856 (and tp!1264441 tp!1264438))))

(assert (=> b!4147831 (= tp!1264346 e!2573856)))

(assert (= (and b!4147831 ((_ is ElementMatch!12317) (regex!7412 rBis!149))) b!4148291))

(assert (= (and b!4147831 ((_ is Concat!19960) (regex!7412 rBis!149))) b!4148292))

(assert (= (and b!4147831 ((_ is Star!12317) (regex!7412 rBis!149))) b!4148293))

(assert (= (and b!4147831 ((_ is Union!12317) (regex!7412 rBis!149))) b!4148294))

(declare-fun b_lambda!121985 () Bool)

(assert (= b_lambda!121969 (or (and b!4147840 b_free!118427 (= (toValue!10076 (transformation!7412 rBis!149)) (toValue!10076 (transformation!7412 r!4008)))) (and b!4147818 b_free!118431) (and b!4147838 b_free!118435 (= (toValue!10076 (transformation!7412 (h!50457 rules!3756))) (toValue!10076 (transformation!7412 r!4008)))) (and b!4148280 b_free!118443 (= (toValue!10076 (transformation!7412 (h!50457 (t!342936 rules!3756)))) (toValue!10076 (transformation!7412 r!4008)))) b_lambda!121985)))

(declare-fun b_lambda!121987 () Bool)

(assert (= b_lambda!121983 (or (and b!4147840 b_free!118427 (= (toValue!10076 (transformation!7412 rBis!149)) (toValue!10076 (transformation!7412 r!4008)))) (and b!4147818 b_free!118431) (and b!4147838 b_free!118435 (= (toValue!10076 (transformation!7412 (h!50457 rules!3756))) (toValue!10076 (transformation!7412 r!4008)))) (and b!4148280 b_free!118443 (= (toValue!10076 (transformation!7412 (h!50457 (t!342936 rules!3756)))) (toValue!10076 (transformation!7412 r!4008)))) b_lambda!121987)))

(declare-fun b_lambda!121989 () Bool)

(assert (= b_lambda!121981 (or (and b!4147840 b_free!118429 (= (toChars!9935 (transformation!7412 rBis!149)) (toChars!9935 (transformation!7412 r!4008)))) (and b!4147818 b_free!118433) (and b!4147838 b_free!118437 (= (toChars!9935 (transformation!7412 (h!50457 rules!3756))) (toChars!9935 (transformation!7412 r!4008)))) (and b!4148280 b_free!118445 (= (toChars!9935 (transformation!7412 (h!50457 (t!342936 rules!3756)))) (toChars!9935 (transformation!7412 r!4008)))) b_lambda!121989)))

(check-sat (not d!1227327) (not b!4148097) (not d!1227367) (not b_lambda!121985) (not d!1227307) (not b!4147962) (not b!4147965) (not d!1227363) (not b!4148246) (not b!4148294) (not b!4147884) (not tb!249017) (not d!1227407) (not b!4148293) (not b!4147878) b_and!322543 (not b!4148099) (not b!4148269) (not d!1227333) (not b!4148095) (not b!4148279) (not b!4148284) (not d!1227313) (not b!4148093) (not b!4148283) (not d!1227397) (not b!4148292) (not b_next!119137) (not b!4148076) (not d!1227335) b_and!322553 (not b!4148289) (not b!4148045) (not b!4148253) (not b!4148268) (not b!4148042) (not b!4148092) (not d!1227315) b_and!322547 (not b_lambda!121987) (not b!4147867) (not b!4148047) (not b!4148044) (not d!1227311) (not b!4148094) (not bm!290674) (not d!1227359) (not b!4148290) (not b!4148069) (not b!4148282) (not b!4148043) (not b!4148049) (not b!4148096) (not b!4148241) (not b!4148278) (not bm!290673) (not b!4148098) (not b_next!119135) (not d!1227321) (not b!4147887) (not b!4148072) b_and!322555 (not b!4148267) (not b!4148248) (not b_next!119141) (not b!4147963) (not d!1227305) (not d!1227319) b_and!322549 (not b!4147955) (not bm!290666) (not d!1227355) (not b_next!119131) (not b!4147959) (not b!4148074) (not d!1227337) (not b!4148048) (not d!1227405) (not b!4147898) (not b!4147899) (not d!1227357) b_and!322545 b_and!322541 (not b!4148251) (not b_next!119149) (not d!1227369) (not d!1227401) (not b!4148073) (not b!4148075) (not b!4148081) (not b_next!119139) (not b!4147969) (not d!1227409) (not b!4147860) (not b_lambda!121989) (not b!4147971) (not b!4147897) (not b_next!119133) (not b!4148070) (not b_next!119147) (not b!4148090) (not tb!249001) tp_is_empty!21557 (not b!4147866) (not b!4148255) (not b!4148041) (not b!4148071) (not b!4147960) (not d!1227399) (not d!1227403) b_and!322551 (not b!4147882))
(check-sat b_and!322543 (not b_next!119137) b_and!322553 b_and!322547 (not b_next!119135) b_and!322555 (not b_next!119141) b_and!322549 (not b_next!119131) b_and!322545 (not b_next!119139) b_and!322551 b_and!322541 (not b_next!119149) (not b_next!119133) (not b_next!119147))
