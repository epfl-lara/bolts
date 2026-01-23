; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384952 () Bool)

(assert start!384952)

(declare-fun b!4076612 () Bool)

(declare-fun b_free!113641 () Bool)

(declare-fun b_next!114345 () Bool)

(assert (=> b!4076612 (= b_free!113641 (not b_next!114345))))

(declare-fun tp!1234063 () Bool)

(declare-fun b_and!313443 () Bool)

(assert (=> b!4076612 (= tp!1234063 b_and!313443)))

(declare-fun b_free!113643 () Bool)

(declare-fun b_next!114347 () Bool)

(assert (=> b!4076612 (= b_free!113643 (not b_next!114347))))

(declare-fun tp!1234066 () Bool)

(declare-fun b_and!313445 () Bool)

(assert (=> b!4076612 (= tp!1234066 b_and!313445)))

(declare-fun b!4076610 () Bool)

(declare-fun b_free!113645 () Bool)

(declare-fun b_next!114349 () Bool)

(assert (=> b!4076610 (= b_free!113645 (not b_next!114349))))

(declare-fun tp!1234064 () Bool)

(declare-fun b_and!313447 () Bool)

(assert (=> b!4076610 (= tp!1234064 b_and!313447)))

(declare-fun b_free!113647 () Bool)

(declare-fun b_next!114351 () Bool)

(assert (=> b!4076610 (= b_free!113647 (not b_next!114351))))

(declare-fun tp!1234062 () Bool)

(declare-fun b_and!313449 () Bool)

(assert (=> b!4076610 (= tp!1234062 b_and!313449)))

(declare-fun b!4076604 () Bool)

(declare-fun e!2530233 () Bool)

(declare-fun e!2530228 () Bool)

(declare-fun tp!1234058 () Bool)

(assert (=> b!4076604 (= e!2530233 (and e!2530228 tp!1234058))))

(declare-fun res!1665042 () Bool)

(declare-fun e!2530225 () Bool)

(assert (=> start!384952 (=> (not res!1665042) (not e!2530225))))

(declare-datatypes ((LexerInterface!6619 0))(
  ( (LexerInterfaceExt!6616 (__x!26737 Int)) (Lexer!6617) )
))
(declare-fun thiss!26199 () LexerInterface!6619)

(get-info :version)

(assert (=> start!384952 (= res!1665042 ((_ is Lexer!6617) thiss!26199))))

(assert (=> start!384952 e!2530225))

(assert (=> start!384952 true))

(declare-fun e!2530231 () Bool)

(assert (=> start!384952 e!2530231))

(assert (=> start!384952 e!2530233))

(declare-fun e!2530236 () Bool)

(assert (=> start!384952 e!2530236))

(declare-fun e!2530230 () Bool)

(assert (=> start!384952 e!2530230))

(declare-fun e!2530234 () Bool)

(assert (=> start!384952 e!2530234))

(declare-fun b!4076605 () Bool)

(declare-fun e!2530229 () Bool)

(declare-fun e!2530235 () Bool)

(assert (=> b!4076605 (= e!2530229 (not e!2530235))))

(declare-fun res!1665047 () Bool)

(assert (=> b!4076605 (=> res!1665047 e!2530235)))

(declare-datatypes ((List!43755 0))(
  ( (Nil!43631) (Cons!43631 (h!49051 (_ BitVec 16)) (t!337394 List!43755)) )
))
(declare-datatypes ((TokenValue!7260 0))(
  ( (FloatLiteralValue!14520 (text!51265 List!43755)) (TokenValueExt!7259 (__x!26738 Int)) (Broken!36300 (value!220981 List!43755)) (Object!7383) (End!7260) (Def!7260) (Underscore!7260) (Match!7260) (Else!7260) (Error!7260) (Case!7260) (If!7260) (Extends!7260) (Abstract!7260) (Class!7260) (Val!7260) (DelimiterValue!14520 (del!7320 List!43755)) (KeywordValue!7266 (value!220982 List!43755)) (CommentValue!14520 (value!220983 List!43755)) (WhitespaceValue!14520 (value!220984 List!43755)) (IndentationValue!7260 (value!220985 List!43755)) (String!50049) (Int32!7260) (Broken!36301 (value!220986 List!43755)) (Boolean!7261) (Unit!63174) (OperatorValue!7263 (op!7320 List!43755)) (IdentifierValue!14520 (value!220987 List!43755)) (IdentifierValue!14521 (value!220988 List!43755)) (WhitespaceValue!14521 (value!220989 List!43755)) (True!14520) (False!14520) (Broken!36302 (value!220990 List!43755)) (Broken!36303 (value!220991 List!43755)) (True!14521) (RightBrace!7260) (RightBracket!7260) (Colon!7260) (Null!7260) (Comma!7260) (LeftBracket!7260) (False!14521) (LeftBrace!7260) (ImaginaryLiteralValue!7260 (text!51266 List!43755)) (StringLiteralValue!21780 (value!220992 List!43755)) (EOFValue!7260 (value!220993 List!43755)) (IdentValue!7260 (value!220994 List!43755)) (DelimiterValue!14521 (value!220995 List!43755)) (DedentValue!7260 (value!220996 List!43755)) (NewLineValue!7260 (value!220997 List!43755)) (IntegerValue!21780 (value!220998 (_ BitVec 32)) (text!51267 List!43755)) (IntegerValue!21781 (value!220999 Int) (text!51268 List!43755)) (Times!7260) (Or!7260) (Equal!7260) (Minus!7260) (Broken!36304 (value!221000 List!43755)) (And!7260) (Div!7260) (LessEqual!7260) (Mod!7260) (Concat!19195) (Not!7260) (Plus!7260) (SpaceValue!7260 (value!221001 List!43755)) (IntegerValue!21782 (value!221002 Int) (text!51269 List!43755)) (StringLiteralValue!21781 (text!51270 List!43755)) (FloatLiteralValue!14521 (text!51271 List!43755)) (BytesLiteralValue!7260 (value!221003 List!43755)) (CommentValue!14521 (value!221004 List!43755)) (StringLiteralValue!21782 (value!221005 List!43755)) (ErrorTokenValue!7260 (msg!7321 List!43755)) )
))
(declare-datatypes ((C!24056 0))(
  ( (C!24057 (val!14138 Int)) )
))
(declare-datatypes ((Regex!11935 0))(
  ( (ElementMatch!11935 (c!703256 C!24056)) (Concat!19196 (regOne!24382 Regex!11935) (regTwo!24382 Regex!11935)) (EmptyExpr!11935) (Star!11935 (reg!12264 Regex!11935)) (EmptyLang!11935) (Union!11935 (regOne!24383 Regex!11935) (regTwo!24383 Regex!11935)) )
))
(declare-datatypes ((String!50050 0))(
  ( (String!50051 (value!221006 String)) )
))
(declare-datatypes ((List!43756 0))(
  ( (Nil!43632) (Cons!43632 (h!49052 C!24056) (t!337395 List!43756)) )
))
(declare-datatypes ((IArray!26487 0))(
  ( (IArray!26488 (innerList!13301 List!43756)) )
))
(declare-datatypes ((Conc!13241 0))(
  ( (Node!13241 (left!32794 Conc!13241) (right!33124 Conc!13241) (csize!26712 Int) (cheight!13452 Int)) (Leaf!20471 (xs!16547 IArray!26487) (csize!26713 Int)) (Empty!13241) )
))
(declare-datatypes ((BalanceConc!26076 0))(
  ( (BalanceConc!26077 (c!703257 Conc!13241)) )
))
(declare-datatypes ((TokenValueInjection!13948 0))(
  ( (TokenValueInjection!13949 (toValue!9598 Int) (toChars!9457 Int)) )
))
(declare-datatypes ((Rule!13860 0))(
  ( (Rule!13861 (regex!7030 Regex!11935) (tag!7890 String!50050) (isSeparator!7030 Bool) (transformation!7030 TokenValueInjection!13948)) )
))
(declare-fun r!4213 () Rule!13860)

(declare-fun p!2988 () List!43756)

(declare-fun matchR!5880 (Regex!11935 List!43756) Bool)

(assert (=> b!4076605 (= res!1665047 (not (matchR!5880 (regex!7030 r!4213) p!2988)))))

(declare-fun ruleValid!2954 (LexerInterface!6619 Rule!13860) Bool)

(assert (=> b!4076605 (ruleValid!2954 thiss!26199 r!4213)))

(declare-datatypes ((List!43757 0))(
  ( (Nil!43633) (Cons!43633 (h!49053 Rule!13860) (t!337396 List!43757)) )
))
(declare-fun rules!3870 () List!43757)

(declare-datatypes ((Unit!63175 0))(
  ( (Unit!63176) )
))
(declare-fun lt!1458749 () Unit!63175)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2022 (LexerInterface!6619 Rule!13860 List!43757) Unit!63175)

(assert (=> b!4076605 (= lt!1458749 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2022 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4076606 () Bool)

(declare-fun res!1665048 () Bool)

(assert (=> b!4076606 (=> (not res!1665048) (not e!2530225))))

(declare-fun contains!8699 (List!43757 Rule!13860) Bool)

(assert (=> b!4076606 (= res!1665048 (contains!8699 rules!3870 r!4213))))

(declare-fun b!4076607 () Bool)

(declare-fun e!2530226 () Bool)

(assert (=> b!4076607 (= e!2530226 true)))

(declare-datatypes ((Token!13186 0))(
  ( (Token!13187 (value!221007 TokenValue!7260) (rule!10136 Rule!13860) (size!32593 Int) (originalCharacters!7624 List!43756)) )
))
(declare-datatypes ((tuple2!42606 0))(
  ( (tuple2!42607 (_1!24437 Token!13186) (_2!24437 List!43756)) )
))
(declare-datatypes ((Option!9438 0))(
  ( (None!9437) (Some!9437 (v!39883 tuple2!42606)) )
))
(declare-fun lt!1458750 () Option!9438)

(declare-fun input!3411 () List!43756)

(declare-fun maxPrefixOneRule!2905 (LexerInterface!6619 Rule!13860 List!43756) Option!9438)

(assert (=> b!4076607 (= (maxPrefixOneRule!2905 thiss!26199 r!4213 input!3411) lt!1458750)))

(declare-fun lt!1458751 () Unit!63175)

(declare-fun suffix!1518 () List!43756)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1695 (LexerInterface!6619 List!43757 List!43756 List!43756 List!43756 Rule!13860) Unit!63175)

(assert (=> b!4076607 (= lt!1458751 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1695 thiss!26199 (t!337396 rules!3870) p!2988 input!3411 suffix!1518 r!4213))))

(declare-fun lt!1458753 () Unit!63175)

(assert (=> b!4076607 (= lt!1458753 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2022 thiss!26199 r!4213 (t!337396 rules!3870)))))

(declare-fun b!4076608 () Bool)

(declare-fun tp_is_empty!20873 () Bool)

(declare-fun tp!1234060 () Bool)

(assert (=> b!4076608 (= e!2530230 (and tp_is_empty!20873 tp!1234060))))

(declare-fun b!4076609 () Bool)

(declare-fun tp!1234057 () Bool)

(assert (=> b!4076609 (= e!2530231 (and tp_is_empty!20873 tp!1234057))))

(declare-fun e!2530238 () Bool)

(assert (=> b!4076610 (= e!2530238 (and tp!1234064 tp!1234062))))

(declare-fun b!4076611 () Bool)

(assert (=> b!4076611 (= e!2530235 e!2530226)))

(declare-fun res!1665041 () Bool)

(assert (=> b!4076611 (=> res!1665041 e!2530226)))

(declare-fun isEmpty!26057 (Option!9438) Bool)

(assert (=> b!4076611 (= res!1665041 (not (isEmpty!26057 (maxPrefixOneRule!2905 thiss!26199 (h!49053 rules!3870) input!3411))))))

(declare-fun rulesInvariant!5962 (LexerInterface!6619 List!43757) Bool)

(assert (=> b!4076611 (rulesInvariant!5962 thiss!26199 (t!337396 rules!3870))))

(declare-fun lt!1458755 () Unit!63175)

(declare-fun lemmaInvariantOnRulesThenOnTail!748 (LexerInterface!6619 Rule!13860 List!43757) Unit!63175)

(assert (=> b!4076611 (= lt!1458755 (lemmaInvariantOnRulesThenOnTail!748 thiss!26199 (h!49053 rules!3870) (t!337396 rules!3870)))))

(declare-fun e!2530237 () Bool)

(assert (=> b!4076612 (= e!2530237 (and tp!1234063 tp!1234066))))

(declare-fun b!4076613 () Bool)

(declare-fun tp!1234059 () Bool)

(declare-fun inv!58285 (String!50050) Bool)

(declare-fun inv!58287 (TokenValueInjection!13948) Bool)

(assert (=> b!4076613 (= e!2530228 (and tp!1234059 (inv!58285 (tag!7890 (h!49053 rules!3870))) (inv!58287 (transformation!7030 (h!49053 rules!3870))) e!2530238))))

(declare-fun b!4076614 () Bool)

(declare-fun res!1665045 () Bool)

(assert (=> b!4076614 (=> res!1665045 e!2530235)))

(assert (=> b!4076614 (= res!1665045 (or (and ((_ is Cons!43633) rules!3870) (= (h!49053 rules!3870) r!4213)) (not ((_ is Cons!43633) rules!3870)) (= (h!49053 rules!3870) r!4213)))))

(declare-fun b!4076615 () Bool)

(declare-fun res!1665046 () Bool)

(assert (=> b!4076615 (=> (not res!1665046) (not e!2530225))))

(declare-fun isEmpty!26058 (List!43757) Bool)

(assert (=> b!4076615 (= res!1665046 (not (isEmpty!26058 rules!3870)))))

(declare-fun b!4076616 () Bool)

(declare-fun res!1665053 () Bool)

(assert (=> b!4076616 (=> res!1665053 e!2530226)))

(assert (=> b!4076616 (= res!1665053 (not (contains!8699 (t!337396 rules!3870) r!4213)))))

(declare-fun b!4076617 () Bool)

(declare-fun res!1665043 () Bool)

(assert (=> b!4076617 (=> (not res!1665043) (not e!2530225))))

(assert (=> b!4076617 (= res!1665043 (rulesInvariant!5962 thiss!26199 rules!3870))))

(declare-fun b!4076618 () Bool)

(declare-fun res!1665051 () Bool)

(assert (=> b!4076618 (=> res!1665051 e!2530226)))

(assert (=> b!4076618 (= res!1665051 (isEmpty!26058 (t!337396 rules!3870)))))

(declare-fun b!4076619 () Bool)

(declare-fun res!1665050 () Bool)

(assert (=> b!4076619 (=> res!1665050 e!2530226)))

(declare-fun maxPrefix!3911 (LexerInterface!6619 List!43757 List!43756) Option!9438)

(assert (=> b!4076619 (= res!1665050 (not (= (maxPrefix!3911 thiss!26199 (t!337396 rules!3870) input!3411) lt!1458750)))))

(declare-fun b!4076620 () Bool)

(declare-fun res!1665052 () Bool)

(assert (=> b!4076620 (=> (not res!1665052) (not e!2530225))))

(declare-fun isEmpty!26059 (List!43756) Bool)

(assert (=> b!4076620 (= res!1665052 (not (isEmpty!26059 p!2988)))))

(declare-fun b!4076621 () Bool)

(declare-fun tp!1234061 () Bool)

(assert (=> b!4076621 (= e!2530234 (and tp!1234061 (inv!58285 (tag!7890 r!4213)) (inv!58287 (transformation!7030 r!4213)) e!2530237))))

(declare-fun b!4076622 () Bool)

(assert (=> b!4076622 (= e!2530225 e!2530229)))

(declare-fun res!1665049 () Bool)

(assert (=> b!4076622 (=> (not res!1665049) (not e!2530229))))

(assert (=> b!4076622 (= res!1665049 (= (maxPrefix!3911 thiss!26199 rules!3870 input!3411) lt!1458750))))

(declare-fun lt!1458752 () BalanceConc!26076)

(declare-fun apply!10213 (TokenValueInjection!13948 BalanceConc!26076) TokenValue!7260)

(declare-fun size!32594 (List!43756) Int)

(assert (=> b!4076622 (= lt!1458750 (Some!9437 (tuple2!42607 (Token!13187 (apply!10213 (transformation!7030 r!4213) lt!1458752) r!4213 (size!32594 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1458754 () Unit!63175)

(declare-fun lemmaSemiInverse!1997 (TokenValueInjection!13948 BalanceConc!26076) Unit!63175)

(assert (=> b!4076622 (= lt!1458754 (lemmaSemiInverse!1997 (transformation!7030 r!4213) lt!1458752))))

(declare-fun seqFromList!5247 (List!43756) BalanceConc!26076)

(assert (=> b!4076622 (= lt!1458752 (seqFromList!5247 p!2988))))

(declare-fun b!4076623 () Bool)

(declare-fun res!1665044 () Bool)

(assert (=> b!4076623 (=> (not res!1665044) (not e!2530225))))

(declare-fun ++!11436 (List!43756 List!43756) List!43756)

(assert (=> b!4076623 (= res!1665044 (= input!3411 (++!11436 p!2988 suffix!1518)))))

(declare-fun b!4076624 () Bool)

(declare-fun tp!1234065 () Bool)

(assert (=> b!4076624 (= e!2530236 (and tp_is_empty!20873 tp!1234065))))

(assert (= (and start!384952 res!1665042) b!4076615))

(assert (= (and b!4076615 res!1665046) b!4076617))

(assert (= (and b!4076617 res!1665043) b!4076606))

(assert (= (and b!4076606 res!1665048) b!4076623))

(assert (= (and b!4076623 res!1665044) b!4076620))

(assert (= (and b!4076620 res!1665052) b!4076622))

(assert (= (and b!4076622 res!1665049) b!4076605))

(assert (= (and b!4076605 (not res!1665047)) b!4076614))

(assert (= (and b!4076614 (not res!1665045)) b!4076611))

(assert (= (and b!4076611 (not res!1665041)) b!4076618))

(assert (= (and b!4076618 (not res!1665051)) b!4076616))

(assert (= (and b!4076616 (not res!1665053)) b!4076619))

(assert (= (and b!4076619 (not res!1665050)) b!4076607))

(assert (= (and start!384952 ((_ is Cons!43632) suffix!1518)) b!4076609))

(assert (= b!4076613 b!4076610))

(assert (= b!4076604 b!4076613))

(assert (= (and start!384952 ((_ is Cons!43633) rules!3870)) b!4076604))

(assert (= (and start!384952 ((_ is Cons!43632) p!2988)) b!4076624))

(assert (= (and start!384952 ((_ is Cons!43632) input!3411)) b!4076608))

(assert (= b!4076621 b!4076612))

(assert (= start!384952 b!4076621))

(declare-fun m!4684855 () Bool)

(assert (=> b!4076623 m!4684855))

(declare-fun m!4684857 () Bool)

(assert (=> b!4076621 m!4684857))

(declare-fun m!4684859 () Bool)

(assert (=> b!4076621 m!4684859))

(declare-fun m!4684861 () Bool)

(assert (=> b!4076622 m!4684861))

(declare-fun m!4684863 () Bool)

(assert (=> b!4076622 m!4684863))

(declare-fun m!4684865 () Bool)

(assert (=> b!4076622 m!4684865))

(declare-fun m!4684867 () Bool)

(assert (=> b!4076622 m!4684867))

(declare-fun m!4684869 () Bool)

(assert (=> b!4076622 m!4684869))

(declare-fun m!4684871 () Bool)

(assert (=> b!4076619 m!4684871))

(declare-fun m!4684873 () Bool)

(assert (=> b!4076620 m!4684873))

(declare-fun m!4684875 () Bool)

(assert (=> b!4076616 m!4684875))

(declare-fun m!4684877 () Bool)

(assert (=> b!4076615 m!4684877))

(declare-fun m!4684879 () Bool)

(assert (=> b!4076618 m!4684879))

(declare-fun m!4684881 () Bool)

(assert (=> b!4076607 m!4684881))

(declare-fun m!4684883 () Bool)

(assert (=> b!4076607 m!4684883))

(declare-fun m!4684885 () Bool)

(assert (=> b!4076607 m!4684885))

(declare-fun m!4684887 () Bool)

(assert (=> b!4076613 m!4684887))

(declare-fun m!4684889 () Bool)

(assert (=> b!4076613 m!4684889))

(declare-fun m!4684891 () Bool)

(assert (=> b!4076606 m!4684891))

(declare-fun m!4684893 () Bool)

(assert (=> b!4076611 m!4684893))

(assert (=> b!4076611 m!4684893))

(declare-fun m!4684895 () Bool)

(assert (=> b!4076611 m!4684895))

(declare-fun m!4684897 () Bool)

(assert (=> b!4076611 m!4684897))

(declare-fun m!4684899 () Bool)

(assert (=> b!4076611 m!4684899))

(declare-fun m!4684901 () Bool)

(assert (=> b!4076605 m!4684901))

(declare-fun m!4684903 () Bool)

(assert (=> b!4076605 m!4684903))

(declare-fun m!4684905 () Bool)

(assert (=> b!4076605 m!4684905))

(declare-fun m!4684907 () Bool)

(assert (=> b!4076617 m!4684907))

(check-sat (not b!4076607) (not b!4076611) (not b!4076606) (not b!4076617) (not b!4076605) (not b!4076619) (not b_next!114349) b_and!313449 (not b!4076618) (not b!4076609) (not b!4076613) b_and!313445 (not b!4076615) (not b!4076621) (not b!4076622) (not b_next!114351) b_and!313443 (not b!4076623) tp_is_empty!20873 (not b_next!114347) (not b!4076604) (not b!4076608) (not b!4076620) (not b!4076616) (not b_next!114345) (not b!4076624) b_and!313447)
(check-sat (not b_next!114347) (not b_next!114349) b_and!313449 b_and!313445 (not b_next!114345) b_and!313447 (not b_next!114351) b_and!313443)
