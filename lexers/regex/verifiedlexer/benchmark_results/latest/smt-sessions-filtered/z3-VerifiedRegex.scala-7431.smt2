; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395326 () Bool)

(assert start!395326)

(declare-fun b!4152997 () Bool)

(declare-fun b_free!118755 () Bool)

(declare-fun b_next!119459 () Bool)

(assert (=> b!4152997 (= b_free!118755 (not b_next!119459))))

(declare-fun tp!1265842 () Bool)

(declare-fun b_and!323117 () Bool)

(assert (=> b!4152997 (= tp!1265842 b_and!323117)))

(declare-fun b_free!118757 () Bool)

(declare-fun b_next!119461 () Bool)

(assert (=> b!4152997 (= b_free!118757 (not b_next!119461))))

(declare-fun tp!1265850 () Bool)

(declare-fun b_and!323119 () Bool)

(assert (=> b!4152997 (= tp!1265850 b_and!323119)))

(declare-fun b!4152995 () Bool)

(declare-fun b_free!118759 () Bool)

(declare-fun b_next!119463 () Bool)

(assert (=> b!4152995 (= b_free!118759 (not b_next!119463))))

(declare-fun tp!1265849 () Bool)

(declare-fun b_and!323121 () Bool)

(assert (=> b!4152995 (= tp!1265849 b_and!323121)))

(declare-fun b_free!118761 () Bool)

(declare-fun b_next!119465 () Bool)

(assert (=> b!4152995 (= b_free!118761 (not b_next!119465))))

(declare-fun tp!1265848 () Bool)

(declare-fun b_and!323123 () Bool)

(assert (=> b!4152995 (= tp!1265848 b_and!323123)))

(declare-fun b!4153004 () Bool)

(declare-fun b_free!118763 () Bool)

(declare-fun b_next!119467 () Bool)

(assert (=> b!4153004 (= b_free!118763 (not b_next!119467))))

(declare-fun tp!1265846 () Bool)

(declare-fun b_and!323125 () Bool)

(assert (=> b!4153004 (= tp!1265846 b_and!323125)))

(declare-fun b_free!118765 () Bool)

(declare-fun b_next!119469 () Bool)

(assert (=> b!4153004 (= b_free!118765 (not b_next!119469))))

(declare-fun tp!1265841 () Bool)

(declare-fun b_and!323127 () Bool)

(assert (=> b!4153004 (= tp!1265841 b_and!323127)))

(declare-datatypes ((List!45241 0))(
  ( (Nil!45117) (Cons!45117 (h!50537 (_ BitVec 16)) (t!343272 List!45241)) )
))
(declare-datatypes ((TokenValue!7664 0))(
  ( (FloatLiteralValue!15328 (text!54093 List!45241)) (TokenValueExt!7663 (__x!27545 Int)) (Broken!38320 (value!232397 List!45241)) (Object!7787) (End!7664) (Def!7664) (Underscore!7664) (Match!7664) (Else!7664) (Error!7664) (Case!7664) (If!7664) (Extends!7664) (Abstract!7664) (Class!7664) (Val!7664) (DelimiterValue!15328 (del!7724 List!45241)) (KeywordValue!7670 (value!232398 List!45241)) (CommentValue!15328 (value!232399 List!45241)) (WhitespaceValue!15328 (value!232400 List!45241)) (IndentationValue!7664 (value!232401 List!45241)) (String!52069) (Int32!7664) (Broken!38321 (value!232402 List!45241)) (Boolean!7665) (Unit!64384) (OperatorValue!7667 (op!7724 List!45241)) (IdentifierValue!15328 (value!232403 List!45241)) (IdentifierValue!15329 (value!232404 List!45241)) (WhitespaceValue!15329 (value!232405 List!45241)) (True!15328) (False!15328) (Broken!38322 (value!232406 List!45241)) (Broken!38323 (value!232407 List!45241)) (True!15329) (RightBrace!7664) (RightBracket!7664) (Colon!7664) (Null!7664) (Comma!7664) (LeftBracket!7664) (False!15329) (LeftBrace!7664) (ImaginaryLiteralValue!7664 (text!54094 List!45241)) (StringLiteralValue!22992 (value!232408 List!45241)) (EOFValue!7664 (value!232409 List!45241)) (IdentValue!7664 (value!232410 List!45241)) (DelimiterValue!15329 (value!232411 List!45241)) (DedentValue!7664 (value!232412 List!45241)) (NewLineValue!7664 (value!232413 List!45241)) (IntegerValue!22992 (value!232414 (_ BitVec 32)) (text!54095 List!45241)) (IntegerValue!22993 (value!232415 Int) (text!54096 List!45241)) (Times!7664) (Or!7664) (Equal!7664) (Minus!7664) (Broken!38324 (value!232416 List!45241)) (And!7664) (Div!7664) (LessEqual!7664) (Mod!7664) (Concat!20003) (Not!7664) (Plus!7664) (SpaceValue!7664 (value!232417 List!45241)) (IntegerValue!22994 (value!232418 Int) (text!54097 List!45241)) (StringLiteralValue!22993 (text!54098 List!45241)) (FloatLiteralValue!15329 (text!54099 List!45241)) (BytesLiteralValue!7664 (value!232419 List!45241)) (CommentValue!15329 (value!232420 List!45241)) (StringLiteralValue!22994 (value!232421 List!45241)) (ErrorTokenValue!7664 (msg!7725 List!45241)) )
))
(declare-datatypes ((C!24864 0))(
  ( (C!24865 (val!14542 Int)) )
))
(declare-datatypes ((List!45242 0))(
  ( (Nil!45118) (Cons!45118 (h!50538 C!24864) (t!343273 List!45242)) )
))
(declare-datatypes ((IArray!27295 0))(
  ( (IArray!27296 (innerList!13705 List!45242)) )
))
(declare-datatypes ((Conc!13645 0))(
  ( (Node!13645 (left!33784 Conc!13645) (right!34114 Conc!13645) (csize!27520 Int) (cheight!13856 Int)) (Leaf!21077 (xs!16951 IArray!27295) (csize!27521 Int)) (Empty!13645) )
))
(declare-datatypes ((BalanceConc!26884 0))(
  ( (BalanceConc!26885 (c!711164 Conc!13645)) )
))
(declare-datatypes ((Regex!12339 0))(
  ( (ElementMatch!12339 (c!711165 C!24864)) (Concat!20004 (regOne!25190 Regex!12339) (regTwo!25190 Regex!12339)) (EmptyExpr!12339) (Star!12339 (reg!12668 Regex!12339)) (EmptyLang!12339) (Union!12339 (regOne!25191 Regex!12339) (regTwo!25191 Regex!12339)) )
))
(declare-datatypes ((String!52070 0))(
  ( (String!52071 (value!232422 String)) )
))
(declare-datatypes ((TokenValueInjection!14756 0))(
  ( (TokenValueInjection!14757 (toValue!10098 Int) (toChars!9957 Int)) )
))
(declare-datatypes ((Rule!14668 0))(
  ( (Rule!14669 (regex!7434 Regex!12339) (tag!8294 String!52070) (isSeparator!7434 Bool) (transformation!7434 TokenValueInjection!14756)) )
))
(declare-fun rBis!149 () Rule!14668)

(declare-fun b!4152985 () Bool)

(declare-fun e!2576630 () Bool)

(declare-fun e!2576620 () Bool)

(declare-fun tp!1265840 () Bool)

(declare-fun inv!59730 (String!52070) Bool)

(declare-fun inv!59732 (TokenValueInjection!14756) Bool)

(assert (=> b!4152985 (= e!2576630 (and tp!1265840 (inv!59730 (tag!8294 rBis!149)) (inv!59732 (transformation!7434 rBis!149)) e!2576620))))

(declare-fun b!4152986 () Bool)

(declare-fun res!1700816 () Bool)

(declare-fun e!2576624 () Bool)

(assert (=> b!4152986 (=> (not res!1700816) (not e!2576624))))

(declare-datatypes ((LexerInterface!7023 0))(
  ( (LexerInterfaceExt!7020 (__x!27546 Int)) (Lexer!7021) )
))
(declare-fun thiss!25645 () LexerInterface!7023)

(declare-fun r!4008 () Rule!14668)

(declare-fun ruleValid!3240 (LexerInterface!7023 Rule!14668) Bool)

(assert (=> b!4152986 (= res!1700816 (ruleValid!3240 thiss!25645 r!4008))))

(declare-fun b!4152987 () Bool)

(declare-fun res!1700818 () Bool)

(declare-fun e!2576631 () Bool)

(assert (=> b!4152987 (=> (not res!1700818) (not e!2576631))))

(declare-datatypes ((List!45243 0))(
  ( (Nil!45119) (Cons!45119 (h!50539 Rule!14668) (t!343274 List!45243)) )
))
(declare-fun rules!3756 () List!45243)

(declare-fun contains!9120 (List!45243 Rule!14668) Bool)

(assert (=> b!4152987 (= res!1700818 (contains!9120 rules!3756 rBis!149))))

(declare-fun b!4152988 () Bool)

(declare-fun res!1700821 () Bool)

(assert (=> b!4152988 (=> (not res!1700821) (not e!2576631))))

(declare-fun isEmpty!26942 (List!45243) Bool)

(assert (=> b!4152988 (= res!1700821 (not (isEmpty!26942 rules!3756)))))

(declare-fun b!4152989 () Bool)

(declare-fun res!1700823 () Bool)

(assert (=> b!4152989 (=> (not res!1700823) (not e!2576631))))

(declare-fun p!2912 () List!45242)

(declare-fun input!3238 () List!45242)

(declare-fun isPrefix!4369 (List!45242 List!45242) Bool)

(assert (=> b!4152989 (= res!1700823 (isPrefix!4369 p!2912 input!3238))))

(declare-fun b!4152990 () Bool)

(declare-fun res!1700819 () Bool)

(assert (=> b!4152990 (=> (not res!1700819) (not e!2576631))))

(assert (=> b!4152990 (= res!1700819 (contains!9120 rules!3756 r!4008))))

(declare-fun b!4152991 () Bool)

(declare-fun res!1700824 () Bool)

(assert (=> b!4152991 (=> (not res!1700824) (not e!2576624))))

(declare-fun matchR!6168 (Regex!12339 List!45242) Bool)

(assert (=> b!4152991 (= res!1700824 (matchR!6168 (regex!7434 r!4008) p!2912))))

(declare-fun b!4152992 () Bool)

(declare-fun e!2576629 () Bool)

(declare-fun tp_is_empty!21601 () Bool)

(declare-fun tp!1265845 () Bool)

(assert (=> b!4152992 (= e!2576629 (and tp_is_empty!21601 tp!1265845))))

(declare-fun b!4152993 () Bool)

(declare-fun res!1700817 () Bool)

(assert (=> b!4152993 (=> (not res!1700817) (not e!2576631))))

(declare-fun rulesInvariant!6320 (LexerInterface!7023 List!45243) Bool)

(assert (=> b!4152993 (= res!1700817 (rulesInvariant!6320 thiss!25645 rules!3756))))

(declare-fun e!2576622 () Bool)

(assert (=> b!4152995 (= e!2576622 (and tp!1265849 tp!1265848))))

(declare-fun b!4152996 () Bool)

(declare-fun tp!1265839 () Bool)

(declare-fun e!2576632 () Bool)

(assert (=> b!4152996 (= e!2576632 (and tp!1265839 (inv!59730 (tag!8294 (h!50539 rules!3756))) (inv!59732 (transformation!7434 (h!50539 rules!3756))) e!2576622))))

(declare-fun e!2576625 () Bool)

(assert (=> b!4152997 (= e!2576625 (and tp!1265842 tp!1265850))))

(declare-fun b!4152998 () Bool)

(get-info :version)

(assert (=> b!4152998 (= e!2576624 (not (or (and ((_ is Cons!45119) rules!3756) (= (h!50539 rules!3756) rBis!149)) (and ((_ is Cons!45119) rules!3756) (not (= (h!50539 rules!3756) rBis!149))) ((_ is Nil!45119) rules!3756))))))

(declare-datatypes ((Unit!64385 0))(
  ( (Unit!64386) )
))
(declare-fun lt!1481021 () Unit!64385)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2280 (LexerInterface!7023 Rule!14668 List!45243) Unit!64385)

(assert (=> b!4152998 (= lt!1481021 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2280 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4152998 (ruleValid!3240 thiss!25645 rBis!149)))

(declare-fun lt!1481020 () Unit!64385)

(assert (=> b!4152998 (= lt!1481020 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2280 thiss!25645 rBis!149 rules!3756))))

(declare-fun tp!1265847 () Bool)

(declare-fun e!2576621 () Bool)

(declare-fun b!4152999 () Bool)

(assert (=> b!4152999 (= e!2576621 (and tp!1265847 (inv!59730 (tag!8294 r!4008)) (inv!59732 (transformation!7434 r!4008)) e!2576625))))

(declare-fun b!4153000 () Bool)

(declare-fun e!2576623 () Bool)

(declare-fun tp!1265843 () Bool)

(assert (=> b!4153000 (= e!2576623 (and tp_is_empty!21601 tp!1265843))))

(declare-fun b!4153001 () Bool)

(declare-fun res!1700820 () Bool)

(assert (=> b!4153001 (=> (not res!1700820) (not e!2576624))))

(declare-fun getIndex!780 (List!45243 Rule!14668) Int)

(assert (=> b!4153001 (= res!1700820 (< (getIndex!780 rules!3756 rBis!149) (getIndex!780 rules!3756 r!4008)))))

(declare-fun b!4153002 () Bool)

(declare-fun res!1700826 () Bool)

(assert (=> b!4153002 (=> (not res!1700826) (not e!2576631))))

(declare-fun isEmpty!26943 (List!45242) Bool)

(assert (=> b!4153002 (= res!1700826 (not (isEmpty!26943 p!2912)))))

(declare-fun res!1700825 () Bool)

(assert (=> start!395326 (=> (not res!1700825) (not e!2576631))))

(assert (=> start!395326 (= res!1700825 ((_ is Lexer!7021) thiss!25645))))

(assert (=> start!395326 e!2576631))

(declare-fun e!2576619 () Bool)

(assert (=> start!395326 e!2576619))

(assert (=> start!395326 e!2576623))

(assert (=> start!395326 true))

(assert (=> start!395326 e!2576621))

(assert (=> start!395326 e!2576629))

(assert (=> start!395326 e!2576630))

(declare-fun b!4152994 () Bool)

(assert (=> b!4152994 (= e!2576631 e!2576624)))

(declare-fun res!1700822 () Bool)

(assert (=> b!4152994 (=> (not res!1700822) (not e!2576624))))

(declare-fun lt!1481019 () BalanceConc!26884)

(declare-datatypes ((Token!13798 0))(
  ( (Token!13799 (value!232423 TokenValue!7664) (rule!10576 Rule!14668) (size!33445 Int) (originalCharacters!7930 List!45242)) )
))
(declare-datatypes ((tuple2!43474 0))(
  ( (tuple2!43475 (_1!24871 Token!13798) (_2!24871 List!45242)) )
))
(declare-datatypes ((Option!9740 0))(
  ( (None!9739) (Some!9739 (v!40411 tuple2!43474)) )
))
(declare-fun maxPrefix!4213 (LexerInterface!7023 List!45243 List!45242) Option!9740)

(declare-fun apply!10507 (TokenValueInjection!14756 BalanceConc!26884) TokenValue!7664)

(declare-fun size!33446 (List!45242) Int)

(declare-fun getSuffix!2696 (List!45242 List!45242) List!45242)

(assert (=> b!4152994 (= res!1700822 (= (maxPrefix!4213 thiss!25645 rules!3756 input!3238) (Some!9739 (tuple2!43475 (Token!13799 (apply!10507 (transformation!7434 r!4008) lt!1481019) r!4008 (size!33446 p!2912) p!2912) (getSuffix!2696 input!3238 p!2912)))))))

(declare-fun lt!1481022 () Unit!64385)

(declare-fun lemmaSemiInverse!2292 (TokenValueInjection!14756 BalanceConc!26884) Unit!64385)

(assert (=> b!4152994 (= lt!1481022 (lemmaSemiInverse!2292 (transformation!7434 r!4008) lt!1481019))))

(declare-fun seqFromList!5551 (List!45242) BalanceConc!26884)

(assert (=> b!4152994 (= lt!1481019 (seqFromList!5551 p!2912))))

(declare-fun b!4153003 () Bool)

(declare-fun tp!1265844 () Bool)

(assert (=> b!4153003 (= e!2576619 (and e!2576632 tp!1265844))))

(assert (=> b!4153004 (= e!2576620 (and tp!1265846 tp!1265841))))

(assert (= (and start!395326 res!1700825) b!4152989))

(assert (= (and b!4152989 res!1700823) b!4152988))

(assert (= (and b!4152988 res!1700821) b!4152993))

(assert (= (and b!4152993 res!1700817) b!4152990))

(assert (= (and b!4152990 res!1700819) b!4152987))

(assert (= (and b!4152987 res!1700818) b!4153002))

(assert (= (and b!4153002 res!1700826) b!4152994))

(assert (= (and b!4152994 res!1700822) b!4152991))

(assert (= (and b!4152991 res!1700824) b!4153001))

(assert (= (and b!4153001 res!1700820) b!4152986))

(assert (= (and b!4152986 res!1700816) b!4152998))

(assert (= b!4152996 b!4152995))

(assert (= b!4153003 b!4152996))

(assert (= (and start!395326 ((_ is Cons!45119) rules!3756)) b!4153003))

(assert (= (and start!395326 ((_ is Cons!45118) p!2912)) b!4153000))

(assert (= b!4152999 b!4152997))

(assert (= start!395326 b!4152999))

(assert (= (and start!395326 ((_ is Cons!45118) input!3238)) b!4152992))

(assert (= b!4152985 b!4153004))

(assert (= start!395326 b!4152985))

(declare-fun m!4748259 () Bool)

(assert (=> b!4153001 m!4748259))

(declare-fun m!4748261 () Bool)

(assert (=> b!4153001 m!4748261))

(declare-fun m!4748263 () Bool)

(assert (=> b!4152991 m!4748263))

(declare-fun m!4748265 () Bool)

(assert (=> b!4152994 m!4748265))

(declare-fun m!4748267 () Bool)

(assert (=> b!4152994 m!4748267))

(declare-fun m!4748269 () Bool)

(assert (=> b!4152994 m!4748269))

(declare-fun m!4748271 () Bool)

(assert (=> b!4152994 m!4748271))

(declare-fun m!4748273 () Bool)

(assert (=> b!4152994 m!4748273))

(declare-fun m!4748275 () Bool)

(assert (=> b!4152994 m!4748275))

(declare-fun m!4748277 () Bool)

(assert (=> b!4152996 m!4748277))

(declare-fun m!4748279 () Bool)

(assert (=> b!4152996 m!4748279))

(declare-fun m!4748281 () Bool)

(assert (=> b!4152986 m!4748281))

(declare-fun m!4748283 () Bool)

(assert (=> b!4153002 m!4748283))

(declare-fun m!4748285 () Bool)

(assert (=> b!4152993 m!4748285))

(declare-fun m!4748287 () Bool)

(assert (=> b!4152998 m!4748287))

(declare-fun m!4748289 () Bool)

(assert (=> b!4152998 m!4748289))

(declare-fun m!4748291 () Bool)

(assert (=> b!4152998 m!4748291))

(declare-fun m!4748293 () Bool)

(assert (=> b!4152999 m!4748293))

(declare-fun m!4748295 () Bool)

(assert (=> b!4152999 m!4748295))

(declare-fun m!4748297 () Bool)

(assert (=> b!4152985 m!4748297))

(declare-fun m!4748299 () Bool)

(assert (=> b!4152985 m!4748299))

(declare-fun m!4748301 () Bool)

(assert (=> b!4152990 m!4748301))

(declare-fun m!4748303 () Bool)

(assert (=> b!4152987 m!4748303))

(declare-fun m!4748305 () Bool)

(assert (=> b!4152989 m!4748305))

(declare-fun m!4748307 () Bool)

(assert (=> b!4152988 m!4748307))

(check-sat (not b_next!119467) b_and!323117 tp_is_empty!21601 b_and!323123 (not b_next!119459) (not b!4152986) b_and!323127 (not b!4152988) b_and!323119 (not b!4152991) (not b!4153003) (not b!4152992) (not b!4152987) (not b_next!119463) (not b!4152994) b_and!323125 (not b!4152998) b_and!323121 (not b_next!119469) (not b!4153000) (not b!4152985) (not b!4152993) (not b!4152999) (not b!4153002) (not b!4152989) (not b_next!119461) (not b!4153001) (not b_next!119465) (not b!4152990) (not b!4152996))
(check-sat (not b_next!119467) b_and!323117 (not b_next!119463) b_and!323125 b_and!323123 (not b_next!119459) b_and!323127 (not b_next!119461) b_and!323119 (not b_next!119465) b_and!323121 (not b_next!119469))
