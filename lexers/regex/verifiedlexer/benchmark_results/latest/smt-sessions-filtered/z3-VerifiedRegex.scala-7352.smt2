; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390746 () Bool)

(assert start!390746)

(declare-fun b!4120885 () Bool)

(declare-fun b_free!116491 () Bool)

(declare-fun b_next!117195 () Bool)

(assert (=> b!4120885 (= b_free!116491 (not b_next!117195))))

(declare-fun tp!1255744 () Bool)

(declare-fun b_and!318741 () Bool)

(assert (=> b!4120885 (= tp!1255744 b_and!318741)))

(declare-fun b_free!116493 () Bool)

(declare-fun b_next!117197 () Bool)

(assert (=> b!4120885 (= b_free!116493 (not b_next!117197))))

(declare-fun tp!1255738 () Bool)

(declare-fun b_and!318743 () Bool)

(assert (=> b!4120885 (= tp!1255738 b_and!318743)))

(declare-fun b!4120898 () Bool)

(declare-fun b_free!116495 () Bool)

(declare-fun b_next!117199 () Bool)

(assert (=> b!4120898 (= b_free!116495 (not b_next!117199))))

(declare-fun tp!1255739 () Bool)

(declare-fun b_and!318745 () Bool)

(assert (=> b!4120898 (= tp!1255739 b_and!318745)))

(declare-fun b_free!116497 () Bool)

(declare-fun b_next!117201 () Bool)

(assert (=> b!4120898 (= b_free!116497 (not b_next!117201))))

(declare-fun tp!1255734 () Bool)

(declare-fun b_and!318747 () Bool)

(assert (=> b!4120898 (= tp!1255734 b_and!318747)))

(declare-fun b!4120900 () Bool)

(declare-fun b_free!116499 () Bool)

(declare-fun b_next!117203 () Bool)

(assert (=> b!4120900 (= b_free!116499 (not b_next!117203))))

(declare-fun tp!1255733 () Bool)

(declare-fun b_and!318749 () Bool)

(assert (=> b!4120900 (= tp!1255733 b_and!318749)))

(declare-fun b_free!116501 () Bool)

(declare-fun b_next!117205 () Bool)

(assert (=> b!4120900 (= b_free!116501 (not b_next!117205))))

(declare-fun tp!1255743 () Bool)

(declare-fun b_and!318751 () Bool)

(assert (=> b!4120900 (= tp!1255743 b_and!318751)))

(declare-fun b!4120884 () Bool)

(declare-fun e!2556997 () Bool)

(declare-fun e!2556994 () Bool)

(assert (=> b!4120884 (= e!2556997 e!2556994)))

(declare-fun res!1683605 () Bool)

(assert (=> b!4120884 (=> (not res!1683605) (not e!2556994))))

(declare-datatypes ((List!44679 0))(
  ( (Nil!44555) (Cons!44555 (h!49975 (_ BitVec 16)) (t!340742 List!44679)) )
))
(declare-datatypes ((TokenValue!7506 0))(
  ( (FloatLiteralValue!15012 (text!52987 List!44679)) (TokenValueExt!7505 (__x!27229 Int)) (Broken!37530 (value!227894 List!44679)) (Object!7629) (End!7506) (Def!7506) (Underscore!7506) (Match!7506) (Else!7506) (Error!7506) (Case!7506) (If!7506) (Extends!7506) (Abstract!7506) (Class!7506) (Val!7506) (DelimiterValue!15012 (del!7566 List!44679)) (KeywordValue!7512 (value!227895 List!44679)) (CommentValue!15012 (value!227896 List!44679)) (WhitespaceValue!15012 (value!227897 List!44679)) (IndentationValue!7506 (value!227898 List!44679)) (String!51279) (Int32!7506) (Broken!37531 (value!227899 List!44679)) (Boolean!7507) (Unit!63904) (OperatorValue!7509 (op!7566 List!44679)) (IdentifierValue!15012 (value!227900 List!44679)) (IdentifierValue!15013 (value!227901 List!44679)) (WhitespaceValue!15013 (value!227902 List!44679)) (True!15012) (False!15012) (Broken!37532 (value!227903 List!44679)) (Broken!37533 (value!227904 List!44679)) (True!15013) (RightBrace!7506) (RightBracket!7506) (Colon!7506) (Null!7506) (Comma!7506) (LeftBracket!7506) (False!15013) (LeftBrace!7506) (ImaginaryLiteralValue!7506 (text!52988 List!44679)) (StringLiteralValue!22518 (value!227905 List!44679)) (EOFValue!7506 (value!227906 List!44679)) (IdentValue!7506 (value!227907 List!44679)) (DelimiterValue!15013 (value!227908 List!44679)) (DedentValue!7506 (value!227909 List!44679)) (NewLineValue!7506 (value!227910 List!44679)) (IntegerValue!22518 (value!227911 (_ BitVec 32)) (text!52989 List!44679)) (IntegerValue!22519 (value!227912 Int) (text!52990 List!44679)) (Times!7506) (Or!7506) (Equal!7506) (Minus!7506) (Broken!37534 (value!227913 List!44679)) (And!7506) (Div!7506) (LessEqual!7506) (Mod!7506) (Concat!19687) (Not!7506) (Plus!7506) (SpaceValue!7506 (value!227914 List!44679)) (IntegerValue!22520 (value!227915 Int) (text!52991 List!44679)) (StringLiteralValue!22519 (text!52992 List!44679)) (FloatLiteralValue!15013 (text!52993 List!44679)) (BytesLiteralValue!7506 (value!227916 List!44679)) (CommentValue!15013 (value!227917 List!44679)) (StringLiteralValue!22520 (value!227918 List!44679)) (ErrorTokenValue!7506 (msg!7567 List!44679)) )
))
(declare-datatypes ((C!24548 0))(
  ( (C!24549 (val!14384 Int)) )
))
(declare-datatypes ((List!44680 0))(
  ( (Nil!44556) (Cons!44556 (h!49976 C!24548) (t!340743 List!44680)) )
))
(declare-datatypes ((IArray!26979 0))(
  ( (IArray!26980 (innerList!13547 List!44680)) )
))
(declare-datatypes ((Conc!13487 0))(
  ( (Node!13487 (left!33375 Conc!13487) (right!33705 Conc!13487) (csize!27204 Int) (cheight!13698 Int)) (Leaf!20840 (xs!16793 IArray!26979) (csize!27205 Int)) (Empty!13487) )
))
(declare-datatypes ((BalanceConc!26568 0))(
  ( (BalanceConc!26569 (c!707602 Conc!13487)) )
))
(declare-datatypes ((String!51280 0))(
  ( (String!51281 (value!227919 String)) )
))
(declare-datatypes ((Regex!12181 0))(
  ( (ElementMatch!12181 (c!707603 C!24548)) (Concat!19688 (regOne!24874 Regex!12181) (regTwo!24874 Regex!12181)) (EmptyExpr!12181) (Star!12181 (reg!12510 Regex!12181)) (EmptyLang!12181) (Union!12181 (regOne!24875 Regex!12181) (regTwo!24875 Regex!12181)) )
))
(declare-datatypes ((TokenValueInjection!14440 0))(
  ( (TokenValueInjection!14441 (toValue!9928 Int) (toChars!9787 Int)) )
))
(declare-datatypes ((Rule!14352 0))(
  ( (Rule!14353 (regex!7276 Regex!12181) (tag!8136 String!51280) (isSeparator!7276 Bool) (transformation!7276 TokenValueInjection!14440)) )
))
(declare-datatypes ((List!44681 0))(
  ( (Nil!44557) (Cons!44557 (h!49977 Rule!14352) (t!340744 List!44681)) )
))
(declare-fun rules!3756 () List!44681)

(declare-fun input!3238 () List!44680)

(declare-fun p!2912 () List!44680)

(declare-fun lt!1470100 () Int)

(declare-datatypes ((LexerInterface!6865 0))(
  ( (LexerInterfaceExt!6862 (__x!27230 Int)) (Lexer!6863) )
))
(declare-fun thiss!25645 () LexerInterface!6865)

(declare-fun lt!1470092 () TokenValue!7506)

(declare-fun r!4008 () Rule!14352)

(declare-datatypes ((Token!13482 0))(
  ( (Token!13483 (value!227920 TokenValue!7506) (rule!10350 Rule!14352) (size!32976 Int) (originalCharacters!7772 List!44680)) )
))
(declare-datatypes ((tuple2!43026 0))(
  ( (tuple2!43027 (_1!24647 Token!13482) (_2!24647 List!44680)) )
))
(declare-datatypes ((Option!9584 0))(
  ( (None!9583) (Some!9583 (v!40169 tuple2!43026)) )
))
(declare-fun maxPrefix!4057 (LexerInterface!6865 List!44681 List!44680) Option!9584)

(declare-fun getSuffix!2540 (List!44680 List!44680) List!44680)

(assert (=> b!4120884 (= res!1683605 (= (maxPrefix!4057 thiss!25645 rules!3756 input!3238) (Some!9583 (tuple2!43027 (Token!13483 lt!1470092 r!4008 lt!1470100 p!2912) (getSuffix!2540 input!3238 p!2912)))))))

(declare-fun size!32977 (List!44680) Int)

(assert (=> b!4120884 (= lt!1470100 (size!32977 p!2912))))

(declare-fun lt!1470094 () BalanceConc!26568)

(declare-fun apply!10349 (TokenValueInjection!14440 BalanceConc!26568) TokenValue!7506)

(assert (=> b!4120884 (= lt!1470092 (apply!10349 (transformation!7276 r!4008) lt!1470094))))

(declare-datatypes ((Unit!63905 0))(
  ( (Unit!63906) )
))
(declare-fun lt!1470093 () Unit!63905)

(declare-fun lemmaSemiInverse!2134 (TokenValueInjection!14440 BalanceConc!26568) Unit!63905)

(assert (=> b!4120884 (= lt!1470093 (lemmaSemiInverse!2134 (transformation!7276 r!4008) lt!1470094))))

(declare-fun seqFromList!5393 (List!44680) BalanceConc!26568)

(assert (=> b!4120884 (= lt!1470094 (seqFromList!5393 p!2912))))

(declare-fun e!2556998 () Bool)

(assert (=> b!4120885 (= e!2556998 (and tp!1255744 tp!1255738))))

(declare-fun b!4120886 () Bool)

(declare-fun res!1683602 () Bool)

(assert (=> b!4120886 (=> (not res!1683602) (not e!2556994))))

(declare-fun rBis!149 () Rule!14352)

(declare-fun getIndex!624 (List!44681 Rule!14352) Int)

(assert (=> b!4120886 (= res!1683602 (< (getIndex!624 rules!3756 rBis!149) (getIndex!624 rules!3756 r!4008)))))

(declare-fun e!2556991 () Bool)

(declare-fun tp!1255740 () Bool)

(declare-fun b!4120887 () Bool)

(declare-fun inv!59139 (String!51280) Bool)

(declare-fun inv!59141 (TokenValueInjection!14440) Bool)

(assert (=> b!4120887 (= e!2556991 (and tp!1255740 (inv!59139 (tag!8136 rBis!149)) (inv!59141 (transformation!7276 rBis!149)) e!2556998))))

(declare-fun b!4120888 () Bool)

(declare-fun e!2556987 () Bool)

(declare-fun lt!1470097 () List!44680)

(declare-fun isPrefix!4211 (List!44680 List!44680) Bool)

(assert (=> b!4120888 (= e!2556987 (isPrefix!4211 lt!1470097 input!3238))))

(declare-fun b!4120889 () Bool)

(declare-fun res!1683595 () Bool)

(assert (=> b!4120889 (=> (not res!1683595) (not e!2556997))))

(declare-fun contains!8948 (List!44681 Rule!14352) Bool)

(assert (=> b!4120889 (= res!1683595 (contains!8948 rules!3756 rBis!149))))

(declare-fun b!4120890 () Bool)

(declare-fun res!1683597 () Bool)

(assert (=> b!4120890 (=> (not res!1683597) (not e!2556997))))

(declare-fun rulesInvariant!6162 (LexerInterface!6865 List!44681) Bool)

(assert (=> b!4120890 (= res!1683597 (rulesInvariant!6162 thiss!25645 rules!3756))))

(declare-fun e!2556984 () Bool)

(declare-fun b!4120891 () Bool)

(declare-fun tp!1255737 () Bool)

(declare-fun e!2556985 () Bool)

(assert (=> b!4120891 (= e!2556984 (and tp!1255737 (inv!59139 (tag!8136 r!4008)) (inv!59141 (transformation!7276 r!4008)) e!2556985))))

(declare-fun b!4120892 () Bool)

(declare-fun e!2556986 () Bool)

(declare-fun e!2556990 () Bool)

(assert (=> b!4120892 (= e!2556986 e!2556990)))

(declare-fun res!1683599 () Bool)

(assert (=> b!4120892 (=> res!1683599 e!2556990)))

(declare-fun lt!1470099 () Option!9584)

(declare-fun isEmpty!26502 (Option!9584) Bool)

(assert (=> b!4120892 (= res!1683599 (isEmpty!26502 lt!1470099))))

(declare-fun maxPrefixOneRule!3007 (LexerInterface!6865 Rule!14352 List!44680) Option!9584)

(assert (=> b!4120892 (= lt!1470099 (maxPrefixOneRule!3007 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4120892 (not (= rBis!149 r!4008))))

(declare-fun lt!1470095 () Unit!63905)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!16 (LexerInterface!6865 List!44681 Rule!14352 Rule!14352) Unit!63905)

(assert (=> b!4120892 (= lt!1470095 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!16 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6433 (List!44681) List!44681)

(assert (=> b!4120892 (contains!8948 (tail!6433 rules!3756) r!4008)))

(declare-fun lt!1470096 () Unit!63905)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!18 (List!44681 Rule!14352 Rule!14352) Unit!63905)

(assert (=> b!4120892 (= lt!1470096 (lemmaGetIndexBiggerAndHeadEqThenTailContains!18 rules!3756 rBis!149 r!4008))))

(declare-fun b!4120893 () Bool)

(declare-fun res!1683600 () Bool)

(assert (=> b!4120893 (=> (not res!1683600) (not e!2556994))))

(declare-fun matchR!6012 (Regex!12181 List!44680) Bool)

(assert (=> b!4120893 (= res!1683600 (matchR!6012 (regex!7276 r!4008) p!2912))))

(declare-fun b!4120894 () Bool)

(declare-fun res!1683603 () Bool)

(assert (=> b!4120894 (=> (not res!1683603) (not e!2556997))))

(assert (=> b!4120894 (= res!1683603 (contains!8948 rules!3756 r!4008))))

(declare-fun b!4120883 () Bool)

(assert (=> b!4120883 (= e!2556994 (not e!2556986))))

(declare-fun res!1683598 () Bool)

(assert (=> b!4120883 (=> res!1683598 e!2556986)))

(get-info :version)

(assert (=> b!4120883 (= res!1683598 (or (not ((_ is Cons!44557) rules!3756)) (not (= (h!49977 rules!3756) rBis!149))))))

(declare-fun lt!1470098 () Unit!63905)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2128 (LexerInterface!6865 Rule!14352 List!44681) Unit!63905)

(assert (=> b!4120883 (= lt!1470098 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2128 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3084 (LexerInterface!6865 Rule!14352) Bool)

(assert (=> b!4120883 (ruleValid!3084 thiss!25645 rBis!149)))

(declare-fun lt!1470090 () Unit!63905)

(assert (=> b!4120883 (= lt!1470090 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2128 thiss!25645 rBis!149 rules!3756))))

(declare-fun res!1683593 () Bool)

(assert (=> start!390746 (=> (not res!1683593) (not e!2556997))))

(assert (=> start!390746 (= res!1683593 ((_ is Lexer!6863) thiss!25645))))

(assert (=> start!390746 e!2556997))

(declare-fun e!2556996 () Bool)

(assert (=> start!390746 e!2556996))

(declare-fun e!2556989 () Bool)

(assert (=> start!390746 e!2556989))

(assert (=> start!390746 true))

(assert (=> start!390746 e!2556984))

(declare-fun e!2556988 () Bool)

(assert (=> start!390746 e!2556988))

(assert (=> start!390746 e!2556991))

(declare-fun b!4120895 () Bool)

(declare-fun res!1683596 () Bool)

(assert (=> b!4120895 (=> (not res!1683596) (not e!2556997))))

(declare-fun isEmpty!26503 (List!44680) Bool)

(assert (=> b!4120895 (= res!1683596 (not (isEmpty!26503 p!2912)))))

(declare-fun b!4120896 () Bool)

(declare-fun e!2556981 () Bool)

(assert (=> b!4120896 (= e!2556990 e!2556981)))

(declare-fun res!1683601 () Bool)

(assert (=> b!4120896 (=> res!1683601 e!2556981)))

(declare-fun lt!1470091 () BalanceConc!26568)

(declare-fun size!32978 (BalanceConc!26568) Int)

(assert (=> b!4120896 (= res!1683601 (<= (size!32978 lt!1470091) lt!1470100))))

(declare-fun charsOf!4898 (Token!13482) BalanceConc!26568)

(declare-fun get!14532 (Option!9584) tuple2!43026)

(assert (=> b!4120896 (= lt!1470091 (charsOf!4898 (_1!24647 (get!14532 lt!1470099))))))

(declare-fun b!4120897 () Bool)

(assert (=> b!4120897 (= e!2556981 e!2556987)))

(declare-fun res!1683606 () Bool)

(assert (=> b!4120897 (=> res!1683606 e!2556987)))

(assert (=> b!4120897 (= res!1683606 (< (size!32977 input!3238) (size!32977 lt!1470097)))))

(declare-fun list!16349 (BalanceConc!26568) List!44680)

(assert (=> b!4120897 (= lt!1470097 (list!16349 lt!1470091))))

(declare-fun e!2556983 () Bool)

(assert (=> b!4120898 (= e!2556983 (and tp!1255739 tp!1255734))))

(declare-fun b!4120899 () Bool)

(declare-fun e!2556995 () Bool)

(declare-fun tp!1255735 () Bool)

(assert (=> b!4120899 (= e!2556995 (and tp!1255735 (inv!59139 (tag!8136 (h!49977 rules!3756))) (inv!59141 (transformation!7276 (h!49977 rules!3756))) e!2556983))))

(assert (=> b!4120900 (= e!2556985 (and tp!1255733 tp!1255743))))

(declare-fun b!4120901 () Bool)

(declare-fun res!1683594 () Bool)

(assert (=> b!4120901 (=> (not res!1683594) (not e!2556994))))

(assert (=> b!4120901 (= res!1683594 (ruleValid!3084 thiss!25645 r!4008))))

(declare-fun b!4120902 () Bool)

(declare-fun tp_is_empty!21285 () Bool)

(declare-fun tp!1255736 () Bool)

(assert (=> b!4120902 (= e!2556988 (and tp_is_empty!21285 tp!1255736))))

(declare-fun b!4120903 () Bool)

(declare-fun res!1683607 () Bool)

(assert (=> b!4120903 (=> (not res!1683607) (not e!2556997))))

(assert (=> b!4120903 (= res!1683607 (isPrefix!4211 p!2912 input!3238))))

(declare-fun b!4120904 () Bool)

(declare-fun tp!1255741 () Bool)

(assert (=> b!4120904 (= e!2556996 (and e!2556995 tp!1255741))))

(declare-fun b!4120905 () Bool)

(declare-fun res!1683604 () Bool)

(assert (=> b!4120905 (=> (not res!1683604) (not e!2556997))))

(declare-fun isEmpty!26504 (List!44681) Bool)

(assert (=> b!4120905 (= res!1683604 (not (isEmpty!26504 rules!3756)))))

(declare-fun b!4120906 () Bool)

(declare-fun tp!1255742 () Bool)

(assert (=> b!4120906 (= e!2556989 (and tp_is_empty!21285 tp!1255742))))

(assert (= (and start!390746 res!1683593) b!4120903))

(assert (= (and b!4120903 res!1683607) b!4120905))

(assert (= (and b!4120905 res!1683604) b!4120890))

(assert (= (and b!4120890 res!1683597) b!4120894))

(assert (= (and b!4120894 res!1683603) b!4120889))

(assert (= (and b!4120889 res!1683595) b!4120895))

(assert (= (and b!4120895 res!1683596) b!4120884))

(assert (= (and b!4120884 res!1683605) b!4120893))

(assert (= (and b!4120893 res!1683600) b!4120886))

(assert (= (and b!4120886 res!1683602) b!4120901))

(assert (= (and b!4120901 res!1683594) b!4120883))

(assert (= (and b!4120883 (not res!1683598)) b!4120892))

(assert (= (and b!4120892 (not res!1683599)) b!4120896))

(assert (= (and b!4120896 (not res!1683601)) b!4120897))

(assert (= (and b!4120897 (not res!1683606)) b!4120888))

(assert (= b!4120899 b!4120898))

(assert (= b!4120904 b!4120899))

(assert (= (and start!390746 ((_ is Cons!44557) rules!3756)) b!4120904))

(assert (= (and start!390746 ((_ is Cons!44556) p!2912)) b!4120906))

(assert (= b!4120891 b!4120900))

(assert (= start!390746 b!4120891))

(assert (= (and start!390746 ((_ is Cons!44556) input!3238)) b!4120902))

(assert (= b!4120887 b!4120885))

(assert (= start!390746 b!4120887))

(declare-fun m!4720017 () Bool)

(assert (=> b!4120890 m!4720017))

(declare-fun m!4720019 () Bool)

(assert (=> b!4120884 m!4720019))

(declare-fun m!4720021 () Bool)

(assert (=> b!4120884 m!4720021))

(declare-fun m!4720023 () Bool)

(assert (=> b!4120884 m!4720023))

(declare-fun m!4720025 () Bool)

(assert (=> b!4120884 m!4720025))

(declare-fun m!4720027 () Bool)

(assert (=> b!4120884 m!4720027))

(declare-fun m!4720029 () Bool)

(assert (=> b!4120884 m!4720029))

(declare-fun m!4720031 () Bool)

(assert (=> b!4120883 m!4720031))

(declare-fun m!4720033 () Bool)

(assert (=> b!4120883 m!4720033))

(declare-fun m!4720035 () Bool)

(assert (=> b!4120883 m!4720035))

(declare-fun m!4720037 () Bool)

(assert (=> b!4120894 m!4720037))

(declare-fun m!4720039 () Bool)

(assert (=> b!4120896 m!4720039))

(declare-fun m!4720041 () Bool)

(assert (=> b!4120896 m!4720041))

(declare-fun m!4720043 () Bool)

(assert (=> b!4120896 m!4720043))

(declare-fun m!4720045 () Bool)

(assert (=> b!4120888 m!4720045))

(declare-fun m!4720047 () Bool)

(assert (=> b!4120899 m!4720047))

(declare-fun m!4720049 () Bool)

(assert (=> b!4120899 m!4720049))

(declare-fun m!4720051 () Bool)

(assert (=> b!4120905 m!4720051))

(declare-fun m!4720053 () Bool)

(assert (=> b!4120889 m!4720053))

(declare-fun m!4720055 () Bool)

(assert (=> b!4120893 m!4720055))

(declare-fun m!4720057 () Bool)

(assert (=> b!4120887 m!4720057))

(declare-fun m!4720059 () Bool)

(assert (=> b!4120887 m!4720059))

(declare-fun m!4720061 () Bool)

(assert (=> b!4120892 m!4720061))

(declare-fun m!4720063 () Bool)

(assert (=> b!4120892 m!4720063))

(declare-fun m!4720065 () Bool)

(assert (=> b!4120892 m!4720065))

(assert (=> b!4120892 m!4720061))

(declare-fun m!4720067 () Bool)

(assert (=> b!4120892 m!4720067))

(declare-fun m!4720069 () Bool)

(assert (=> b!4120892 m!4720069))

(declare-fun m!4720071 () Bool)

(assert (=> b!4120892 m!4720071))

(declare-fun m!4720073 () Bool)

(assert (=> b!4120901 m!4720073))

(declare-fun m!4720075 () Bool)

(assert (=> b!4120897 m!4720075))

(declare-fun m!4720077 () Bool)

(assert (=> b!4120897 m!4720077))

(declare-fun m!4720079 () Bool)

(assert (=> b!4120897 m!4720079))

(declare-fun m!4720081 () Bool)

(assert (=> b!4120895 m!4720081))

(declare-fun m!4720083 () Bool)

(assert (=> b!4120886 m!4720083))

(declare-fun m!4720085 () Bool)

(assert (=> b!4120886 m!4720085))

(declare-fun m!4720087 () Bool)

(assert (=> b!4120891 m!4720087))

(declare-fun m!4720089 () Bool)

(assert (=> b!4120891 m!4720089))

(declare-fun m!4720091 () Bool)

(assert (=> b!4120903 m!4720091))

(check-sat (not b_next!117199) (not b!4120890) b_and!318749 (not b!4120887) (not b!4120904) (not b!4120893) b_and!318747 tp_is_empty!21285 (not b!4120895) b_and!318741 (not b_next!117197) (not b_next!117201) (not b!4120891) (not b!4120883) (not b!4120902) b_and!318743 (not b!4120886) (not b_next!117205) (not b!4120888) b_and!318751 (not b!4120896) (not b!4120892) (not b!4120905) (not b!4120894) (not b!4120903) (not b_next!117203) (not b!4120899) (not b!4120884) (not b!4120901) (not b!4120897) (not b!4120906) (not b_next!117195) (not b!4120889) b_and!318745)
(check-sat (not b_next!117199) (not b_next!117201) b_and!318743 b_and!318749 b_and!318747 (not b_next!117203) b_and!318741 (not b_next!117197) (not b_next!117205) b_and!318751 (not b_next!117195) b_and!318745)
(get-model)

(declare-fun b!4120918 () Bool)

(declare-fun e!2557007 () Bool)

(assert (=> b!4120918 (= e!2557007 (>= (size!32977 input!3238) (size!32977 lt!1470097)))))

(declare-fun b!4120916 () Bool)

(declare-fun res!1683626 () Bool)

(declare-fun e!2557005 () Bool)

(assert (=> b!4120916 (=> (not res!1683626) (not e!2557005))))

(declare-fun head!8681 (List!44680) C!24548)

(assert (=> b!4120916 (= res!1683626 (= (head!8681 lt!1470097) (head!8681 input!3238)))))

(declare-fun b!4120915 () Bool)

(declare-fun e!2557006 () Bool)

(assert (=> b!4120915 (= e!2557006 e!2557005)))

(declare-fun res!1683624 () Bool)

(assert (=> b!4120915 (=> (not res!1683624) (not e!2557005))))

(assert (=> b!4120915 (= res!1683624 (not ((_ is Nil!44556) input!3238)))))

(declare-fun d!1221705 () Bool)

(assert (=> d!1221705 e!2557007))

(declare-fun res!1683625 () Bool)

(assert (=> d!1221705 (=> res!1683625 e!2557007)))

(declare-fun lt!1470103 () Bool)

(assert (=> d!1221705 (= res!1683625 (not lt!1470103))))

(assert (=> d!1221705 (= lt!1470103 e!2557006)))

(declare-fun res!1683623 () Bool)

(assert (=> d!1221705 (=> res!1683623 e!2557006)))

(assert (=> d!1221705 (= res!1683623 ((_ is Nil!44556) lt!1470097))))

(assert (=> d!1221705 (= (isPrefix!4211 lt!1470097 input!3238) lt!1470103)))

(declare-fun b!4120917 () Bool)

(declare-fun tail!6434 (List!44680) List!44680)

(assert (=> b!4120917 (= e!2557005 (isPrefix!4211 (tail!6434 lt!1470097) (tail!6434 input!3238)))))

(assert (= (and d!1221705 (not res!1683623)) b!4120915))

(assert (= (and b!4120915 res!1683624) b!4120916))

(assert (= (and b!4120916 res!1683626) b!4120917))

(assert (= (and d!1221705 (not res!1683625)) b!4120918))

(assert (=> b!4120918 m!4720075))

(assert (=> b!4120918 m!4720077))

(declare-fun m!4720093 () Bool)

(assert (=> b!4120916 m!4720093))

(declare-fun m!4720095 () Bool)

(assert (=> b!4120916 m!4720095))

(declare-fun m!4720097 () Bool)

(assert (=> b!4120917 m!4720097))

(declare-fun m!4720099 () Bool)

(assert (=> b!4120917 m!4720099))

(assert (=> b!4120917 m!4720097))

(assert (=> b!4120917 m!4720099))

(declare-fun m!4720101 () Bool)

(assert (=> b!4120917 m!4720101))

(assert (=> b!4120888 d!1221705))

(declare-fun d!1221707 () Bool)

(assert (=> d!1221707 (= (inv!59139 (tag!8136 (h!49977 rules!3756))) (= (mod (str.len (value!227919 (tag!8136 (h!49977 rules!3756)))) 2) 0))))

(assert (=> b!4120899 d!1221707))

(declare-fun d!1221709 () Bool)

(declare-fun res!1683629 () Bool)

(declare-fun e!2557010 () Bool)

(assert (=> d!1221709 (=> (not res!1683629) (not e!2557010))))

(declare-fun semiInverseModEq!3135 (Int Int) Bool)

(assert (=> d!1221709 (= res!1683629 (semiInverseModEq!3135 (toChars!9787 (transformation!7276 (h!49977 rules!3756))) (toValue!9928 (transformation!7276 (h!49977 rules!3756)))))))

(assert (=> d!1221709 (= (inv!59141 (transformation!7276 (h!49977 rules!3756))) e!2557010)))

(declare-fun b!4120921 () Bool)

(declare-fun equivClasses!3034 (Int Int) Bool)

(assert (=> b!4120921 (= e!2557010 (equivClasses!3034 (toChars!9787 (transformation!7276 (h!49977 rules!3756))) (toValue!9928 (transformation!7276 (h!49977 rules!3756)))))))

(assert (= (and d!1221709 res!1683629) b!4120921))

(declare-fun m!4720103 () Bool)

(assert (=> d!1221709 m!4720103))

(declare-fun m!4720105 () Bool)

(assert (=> b!4120921 m!4720105))

(assert (=> b!4120899 d!1221709))

(declare-fun d!1221711 () Bool)

(declare-fun lt!1470106 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6869 (List!44681) (InoxSet Rule!14352))

(assert (=> d!1221711 (= lt!1470106 (select (content!6869 rules!3756) rBis!149))))

(declare-fun e!2557015 () Bool)

(assert (=> d!1221711 (= lt!1470106 e!2557015)))

(declare-fun res!1683634 () Bool)

(assert (=> d!1221711 (=> (not res!1683634) (not e!2557015))))

(assert (=> d!1221711 (= res!1683634 ((_ is Cons!44557) rules!3756))))

(assert (=> d!1221711 (= (contains!8948 rules!3756 rBis!149) lt!1470106)))

(declare-fun b!4120926 () Bool)

(declare-fun e!2557016 () Bool)

(assert (=> b!4120926 (= e!2557015 e!2557016)))

(declare-fun res!1683635 () Bool)

(assert (=> b!4120926 (=> res!1683635 e!2557016)))

(assert (=> b!4120926 (= res!1683635 (= (h!49977 rules!3756) rBis!149))))

(declare-fun b!4120927 () Bool)

(assert (=> b!4120927 (= e!2557016 (contains!8948 (t!340744 rules!3756) rBis!149))))

(assert (= (and d!1221711 res!1683634) b!4120926))

(assert (= (and b!4120926 (not res!1683635)) b!4120927))

(declare-fun m!4720107 () Bool)

(assert (=> d!1221711 m!4720107))

(declare-fun m!4720109 () Bool)

(assert (=> d!1221711 m!4720109))

(declare-fun m!4720111 () Bool)

(assert (=> b!4120927 m!4720111))

(assert (=> b!4120889 d!1221711))

(declare-fun d!1221715 () Bool)

(declare-fun res!1683638 () Bool)

(declare-fun e!2557019 () Bool)

(assert (=> d!1221715 (=> (not res!1683638) (not e!2557019))))

(declare-fun rulesValid!2849 (LexerInterface!6865 List!44681) Bool)

(assert (=> d!1221715 (= res!1683638 (rulesValid!2849 thiss!25645 rules!3756))))

(assert (=> d!1221715 (= (rulesInvariant!6162 thiss!25645 rules!3756) e!2557019)))

(declare-fun b!4120930 () Bool)

(declare-datatypes ((List!44682 0))(
  ( (Nil!44558) (Cons!44558 (h!49978 String!51280) (t!340787 List!44682)) )
))
(declare-fun noDuplicateTag!2928 (LexerInterface!6865 List!44681 List!44682) Bool)

(assert (=> b!4120930 (= e!2557019 (noDuplicateTag!2928 thiss!25645 rules!3756 Nil!44558))))

(assert (= (and d!1221715 res!1683638) b!4120930))

(declare-fun m!4720113 () Bool)

(assert (=> d!1221715 m!4720113))

(declare-fun m!4720115 () Bool)

(assert (=> b!4120930 m!4720115))

(assert (=> b!4120890 d!1221715))

(declare-fun d!1221717 () Bool)

(declare-fun res!1683643 () Bool)

(declare-fun e!2557022 () Bool)

(assert (=> d!1221717 (=> (not res!1683643) (not e!2557022))))

(declare-fun validRegex!5473 (Regex!12181) Bool)

(assert (=> d!1221717 (= res!1683643 (validRegex!5473 (regex!7276 r!4008)))))

(assert (=> d!1221717 (= (ruleValid!3084 thiss!25645 r!4008) e!2557022)))

(declare-fun b!4120935 () Bool)

(declare-fun res!1683644 () Bool)

(assert (=> b!4120935 (=> (not res!1683644) (not e!2557022))))

(declare-fun nullable!4273 (Regex!12181) Bool)

(assert (=> b!4120935 (= res!1683644 (not (nullable!4273 (regex!7276 r!4008))))))

(declare-fun b!4120936 () Bool)

(assert (=> b!4120936 (= e!2557022 (not (= (tag!8136 r!4008) (String!51281 ""))))))

(assert (= (and d!1221717 res!1683643) b!4120935))

(assert (= (and b!4120935 res!1683644) b!4120936))

(declare-fun m!4720121 () Bool)

(assert (=> d!1221717 m!4720121))

(declare-fun m!4720123 () Bool)

(assert (=> b!4120935 m!4720123))

(assert (=> b!4120901 d!1221717))

(declare-fun d!1221721 () Bool)

(declare-fun lt!1470115 () Int)

(assert (=> d!1221721 (= lt!1470115 (size!32977 (list!16349 lt!1470091)))))

(declare-fun size!32980 (Conc!13487) Int)

(assert (=> d!1221721 (= lt!1470115 (size!32980 (c!707602 lt!1470091)))))

(assert (=> d!1221721 (= (size!32978 lt!1470091) lt!1470115)))

(declare-fun bs!594695 () Bool)

(assert (= bs!594695 d!1221721))

(assert (=> bs!594695 m!4720079))

(assert (=> bs!594695 m!4720079))

(declare-fun m!4720125 () Bool)

(assert (=> bs!594695 m!4720125))

(declare-fun m!4720127 () Bool)

(assert (=> bs!594695 m!4720127))

(assert (=> b!4120896 d!1221721))

(declare-fun d!1221723 () Bool)

(declare-fun lt!1470118 () BalanceConc!26568)

(assert (=> d!1221723 (= (list!16349 lt!1470118) (originalCharacters!7772 (_1!24647 (get!14532 lt!1470099))))))

(declare-fun dynLambda!19039 (Int TokenValue!7506) BalanceConc!26568)

(assert (=> d!1221723 (= lt!1470118 (dynLambda!19039 (toChars!9787 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470099))))) (value!227920 (_1!24647 (get!14532 lt!1470099)))))))

(assert (=> d!1221723 (= (charsOf!4898 (_1!24647 (get!14532 lt!1470099))) lt!1470118)))

(declare-fun b_lambda!120921 () Bool)

(assert (=> (not b_lambda!120921) (not d!1221723)))

(declare-fun t!340748 () Bool)

(declare-fun tb!247289 () Bool)

(assert (=> (and b!4120885 (= (toChars!9787 (transformation!7276 rBis!149)) (toChars!9787 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470099)))))) t!340748) tb!247289))

(declare-fun b!4120946 () Bool)

(declare-fun e!2557028 () Bool)

(declare-fun tp!1255750 () Bool)

(declare-fun inv!59143 (Conc!13487) Bool)

(assert (=> b!4120946 (= e!2557028 (and (inv!59143 (c!707602 (dynLambda!19039 (toChars!9787 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470099))))) (value!227920 (_1!24647 (get!14532 lt!1470099)))))) tp!1255750))))

(declare-fun result!300436 () Bool)

(declare-fun inv!59145 (BalanceConc!26568) Bool)

(assert (=> tb!247289 (= result!300436 (and (inv!59145 (dynLambda!19039 (toChars!9787 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470099))))) (value!227920 (_1!24647 (get!14532 lt!1470099))))) e!2557028))))

(assert (= tb!247289 b!4120946))

(declare-fun m!4720137 () Bool)

(assert (=> b!4120946 m!4720137))

(declare-fun m!4720139 () Bool)

(assert (=> tb!247289 m!4720139))

(assert (=> d!1221723 t!340748))

(declare-fun b_and!318759 () Bool)

(assert (= b_and!318743 (and (=> t!340748 result!300436) b_and!318759)))

(declare-fun t!340754 () Bool)

(declare-fun tb!247295 () Bool)

(assert (=> (and b!4120898 (= (toChars!9787 (transformation!7276 (h!49977 rules!3756))) (toChars!9787 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470099)))))) t!340754) tb!247295))

(declare-fun result!300444 () Bool)

(assert (= result!300444 result!300436))

(assert (=> d!1221723 t!340754))

(declare-fun b_and!318761 () Bool)

(assert (= b_and!318747 (and (=> t!340754 result!300444) b_and!318761)))

(declare-fun t!340756 () Bool)

(declare-fun tb!247297 () Bool)

(assert (=> (and b!4120900 (= (toChars!9787 (transformation!7276 r!4008)) (toChars!9787 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470099)))))) t!340756) tb!247297))

(declare-fun result!300446 () Bool)

(assert (= result!300446 result!300436))

(assert (=> d!1221723 t!340756))

(declare-fun b_and!318763 () Bool)

(assert (= b_and!318751 (and (=> t!340756 result!300446) b_and!318763)))

(declare-fun m!4720141 () Bool)

(assert (=> d!1221723 m!4720141))

(declare-fun m!4720143 () Bool)

(assert (=> d!1221723 m!4720143))

(assert (=> b!4120896 d!1221723))

(declare-fun d!1221727 () Bool)

(assert (=> d!1221727 (= (get!14532 lt!1470099) (v!40169 lt!1470099))))

(assert (=> b!4120896 d!1221727))

(declare-fun b!4120957 () Bool)

(declare-fun e!2557035 () Int)

(assert (=> b!4120957 (= e!2557035 (+ 1 (getIndex!624 (t!340744 rules!3756) rBis!149)))))

(declare-fun d!1221731 () Bool)

(declare-fun lt!1470121 () Int)

(assert (=> d!1221731 (>= lt!1470121 0)))

(declare-fun e!2557034 () Int)

(assert (=> d!1221731 (= lt!1470121 e!2557034)))

(declare-fun c!707609 () Bool)

(assert (=> d!1221731 (= c!707609 (and ((_ is Cons!44557) rules!3756) (= (h!49977 rules!3756) rBis!149)))))

(assert (=> d!1221731 (contains!8948 rules!3756 rBis!149)))

(assert (=> d!1221731 (= (getIndex!624 rules!3756 rBis!149) lt!1470121)))

(declare-fun b!4120958 () Bool)

(assert (=> b!4120958 (= e!2557035 (- 1))))

(declare-fun b!4120956 () Bool)

(assert (=> b!4120956 (= e!2557034 e!2557035)))

(declare-fun c!707608 () Bool)

(assert (=> b!4120956 (= c!707608 (and ((_ is Cons!44557) rules!3756) (not (= (h!49977 rules!3756) rBis!149))))))

(declare-fun b!4120955 () Bool)

(assert (=> b!4120955 (= e!2557034 0)))

(assert (= (and d!1221731 c!707609) b!4120955))

(assert (= (and d!1221731 (not c!707609)) b!4120956))

(assert (= (and b!4120956 c!707608) b!4120957))

(assert (= (and b!4120956 (not c!707608)) b!4120958))

(declare-fun m!4720145 () Bool)

(assert (=> b!4120957 m!4720145))

(assert (=> d!1221731 m!4720053))

(assert (=> b!4120886 d!1221731))

(declare-fun b!4120961 () Bool)

(declare-fun e!2557037 () Int)

(assert (=> b!4120961 (= e!2557037 (+ 1 (getIndex!624 (t!340744 rules!3756) r!4008)))))

(declare-fun d!1221735 () Bool)

(declare-fun lt!1470122 () Int)

(assert (=> d!1221735 (>= lt!1470122 0)))

(declare-fun e!2557036 () Int)

(assert (=> d!1221735 (= lt!1470122 e!2557036)))

(declare-fun c!707611 () Bool)

(assert (=> d!1221735 (= c!707611 (and ((_ is Cons!44557) rules!3756) (= (h!49977 rules!3756) r!4008)))))

(assert (=> d!1221735 (contains!8948 rules!3756 r!4008)))

(assert (=> d!1221735 (= (getIndex!624 rules!3756 r!4008) lt!1470122)))

(declare-fun b!4120962 () Bool)

(assert (=> b!4120962 (= e!2557037 (- 1))))

(declare-fun b!4120960 () Bool)

(assert (=> b!4120960 (= e!2557036 e!2557037)))

(declare-fun c!707610 () Bool)

(assert (=> b!4120960 (= c!707610 (and ((_ is Cons!44557) rules!3756) (not (= (h!49977 rules!3756) r!4008))))))

(declare-fun b!4120959 () Bool)

(assert (=> b!4120959 (= e!2557036 0)))

(assert (= (and d!1221735 c!707611) b!4120959))

(assert (= (and d!1221735 (not c!707611)) b!4120960))

(assert (= (and b!4120960 c!707610) b!4120961))

(assert (= (and b!4120960 (not c!707610)) b!4120962))

(declare-fun m!4720147 () Bool)

(assert (=> b!4120961 m!4720147))

(assert (=> d!1221735 m!4720037))

(assert (=> b!4120886 d!1221735))

(declare-fun d!1221737 () Bool)

(declare-fun lt!1470125 () Int)

(assert (=> d!1221737 (>= lt!1470125 0)))

(declare-fun e!2557043 () Int)

(assert (=> d!1221737 (= lt!1470125 e!2557043)))

(declare-fun c!707614 () Bool)

(assert (=> d!1221737 (= c!707614 ((_ is Nil!44556) input!3238))))

(assert (=> d!1221737 (= (size!32977 input!3238) lt!1470125)))

(declare-fun b!4120970 () Bool)

(assert (=> b!4120970 (= e!2557043 0)))

(declare-fun b!4120971 () Bool)

(assert (=> b!4120971 (= e!2557043 (+ 1 (size!32977 (t!340743 input!3238))))))

(assert (= (and d!1221737 c!707614) b!4120970))

(assert (= (and d!1221737 (not c!707614)) b!4120971))

(declare-fun m!4720153 () Bool)

(assert (=> b!4120971 m!4720153))

(assert (=> b!4120897 d!1221737))

(declare-fun d!1221741 () Bool)

(declare-fun lt!1470126 () Int)

(assert (=> d!1221741 (>= lt!1470126 0)))

(declare-fun e!2557044 () Int)

(assert (=> d!1221741 (= lt!1470126 e!2557044)))

(declare-fun c!707615 () Bool)

(assert (=> d!1221741 (= c!707615 ((_ is Nil!44556) lt!1470097))))

(assert (=> d!1221741 (= (size!32977 lt!1470097) lt!1470126)))

(declare-fun b!4120972 () Bool)

(assert (=> b!4120972 (= e!2557044 0)))

(declare-fun b!4120973 () Bool)

(assert (=> b!4120973 (= e!2557044 (+ 1 (size!32977 (t!340743 lt!1470097))))))

(assert (= (and d!1221741 c!707615) b!4120972))

(assert (= (and d!1221741 (not c!707615)) b!4120973))

(declare-fun m!4720155 () Bool)

(assert (=> b!4120973 m!4720155))

(assert (=> b!4120897 d!1221741))

(declare-fun d!1221743 () Bool)

(declare-fun list!16350 (Conc!13487) List!44680)

(assert (=> d!1221743 (= (list!16349 lt!1470091) (list!16350 (c!707602 lt!1470091)))))

(declare-fun bs!594696 () Bool)

(assert (= bs!594696 d!1221743))

(declare-fun m!4720157 () Bool)

(assert (=> bs!594696 m!4720157))

(assert (=> b!4120897 d!1221743))

(declare-fun d!1221745 () Bool)

(assert (=> d!1221745 (= (inv!59139 (tag!8136 rBis!149)) (= (mod (str.len (value!227919 (tag!8136 rBis!149))) 2) 0))))

(assert (=> b!4120887 d!1221745))

(declare-fun d!1221747 () Bool)

(declare-fun res!1683648 () Bool)

(declare-fun e!2557045 () Bool)

(assert (=> d!1221747 (=> (not res!1683648) (not e!2557045))))

(assert (=> d!1221747 (= res!1683648 (semiInverseModEq!3135 (toChars!9787 (transformation!7276 rBis!149)) (toValue!9928 (transformation!7276 rBis!149))))))

(assert (=> d!1221747 (= (inv!59141 (transformation!7276 rBis!149)) e!2557045)))

(declare-fun b!4120974 () Bool)

(assert (=> b!4120974 (= e!2557045 (equivClasses!3034 (toChars!9787 (transformation!7276 rBis!149)) (toValue!9928 (transformation!7276 rBis!149))))))

(assert (= (and d!1221747 res!1683648) b!4120974))

(declare-fun m!4720159 () Bool)

(assert (=> d!1221747 m!4720159))

(declare-fun m!4720161 () Bool)

(assert (=> b!4120974 m!4720161))

(assert (=> b!4120887 d!1221747))

(declare-fun d!1221749 () Bool)

(assert (=> d!1221749 (ruleValid!3084 thiss!25645 r!4008)))

(declare-fun lt!1470129 () Unit!63905)

(declare-fun choose!25184 (LexerInterface!6865 Rule!14352 List!44681) Unit!63905)

(assert (=> d!1221749 (= lt!1470129 (choose!25184 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1221749 (contains!8948 rules!3756 r!4008)))

(assert (=> d!1221749 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2128 thiss!25645 r!4008 rules!3756) lt!1470129)))

(declare-fun bs!594697 () Bool)

(assert (= bs!594697 d!1221749))

(assert (=> bs!594697 m!4720073))

(declare-fun m!4720167 () Bool)

(assert (=> bs!594697 m!4720167))

(assert (=> bs!594697 m!4720037))

(assert (=> b!4120883 d!1221749))

(declare-fun d!1221753 () Bool)

(declare-fun res!1683652 () Bool)

(declare-fun e!2557049 () Bool)

(assert (=> d!1221753 (=> (not res!1683652) (not e!2557049))))

(assert (=> d!1221753 (= res!1683652 (validRegex!5473 (regex!7276 rBis!149)))))

(assert (=> d!1221753 (= (ruleValid!3084 thiss!25645 rBis!149) e!2557049)))

(declare-fun b!4120978 () Bool)

(declare-fun res!1683653 () Bool)

(assert (=> b!4120978 (=> (not res!1683653) (not e!2557049))))

(assert (=> b!4120978 (= res!1683653 (not (nullable!4273 (regex!7276 rBis!149))))))

(declare-fun b!4120979 () Bool)

(assert (=> b!4120979 (= e!2557049 (not (= (tag!8136 rBis!149) (String!51281 ""))))))

(assert (= (and d!1221753 res!1683652) b!4120978))

(assert (= (and b!4120978 res!1683653) b!4120979))

(declare-fun m!4720169 () Bool)

(assert (=> d!1221753 m!4720169))

(declare-fun m!4720171 () Bool)

(assert (=> b!4120978 m!4720171))

(assert (=> b!4120883 d!1221753))

(declare-fun d!1221755 () Bool)

(assert (=> d!1221755 (ruleValid!3084 thiss!25645 rBis!149)))

(declare-fun lt!1470130 () Unit!63905)

(assert (=> d!1221755 (= lt!1470130 (choose!25184 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1221755 (contains!8948 rules!3756 rBis!149)))

(assert (=> d!1221755 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2128 thiss!25645 rBis!149 rules!3756) lt!1470130)))

(declare-fun bs!594698 () Bool)

(assert (= bs!594698 d!1221755))

(assert (=> bs!594698 m!4720033))

(declare-fun m!4720173 () Bool)

(assert (=> bs!594698 m!4720173))

(assert (=> bs!594698 m!4720053))

(assert (=> b!4120883 d!1221755))

(declare-fun d!1221757 () Bool)

(declare-fun lt!1470131 () Bool)

(assert (=> d!1221757 (= lt!1470131 (select (content!6869 rules!3756) r!4008))))

(declare-fun e!2557052 () Bool)

(assert (=> d!1221757 (= lt!1470131 e!2557052)))

(declare-fun res!1683658 () Bool)

(assert (=> d!1221757 (=> (not res!1683658) (not e!2557052))))

(assert (=> d!1221757 (= res!1683658 ((_ is Cons!44557) rules!3756))))

(assert (=> d!1221757 (= (contains!8948 rules!3756 r!4008) lt!1470131)))

(declare-fun b!4120984 () Bool)

(declare-fun e!2557053 () Bool)

(assert (=> b!4120984 (= e!2557052 e!2557053)))

(declare-fun res!1683659 () Bool)

(assert (=> b!4120984 (=> res!1683659 e!2557053)))

(assert (=> b!4120984 (= res!1683659 (= (h!49977 rules!3756) r!4008))))

(declare-fun b!4120985 () Bool)

(assert (=> b!4120985 (= e!2557053 (contains!8948 (t!340744 rules!3756) r!4008))))

(assert (= (and d!1221757 res!1683658) b!4120984))

(assert (= (and b!4120984 (not res!1683659)) b!4120985))

(assert (=> d!1221757 m!4720107))

(declare-fun m!4720175 () Bool)

(assert (=> d!1221757 m!4720175))

(declare-fun m!4720177 () Bool)

(assert (=> b!4120985 m!4720177))

(assert (=> b!4120894 d!1221757))

(declare-fun d!1221759 () Bool)

(assert (=> d!1221759 (= (isEmpty!26504 rules!3756) ((_ is Nil!44557) rules!3756))))

(assert (=> b!4120905 d!1221759))

(declare-fun b!4120998 () Bool)

(declare-fun e!2557060 () Bool)

(assert (=> b!4120998 (= e!2557060 true)))

(declare-fun d!1221761 () Bool)

(assert (=> d!1221761 e!2557060))

(assert (= d!1221761 b!4120998))

(declare-fun lambda!128676 () Int)

(declare-fun order!23437 () Int)

(declare-fun order!23435 () Int)

(declare-fun dynLambda!19044 (Int Int) Int)

(declare-fun dynLambda!19045 (Int Int) Int)

(assert (=> b!4120998 (< (dynLambda!19044 order!23435 (toValue!9928 (transformation!7276 r!4008))) (dynLambda!19045 order!23437 lambda!128676))))

(declare-fun order!23439 () Int)

(declare-fun dynLambda!19046 (Int Int) Int)

(assert (=> b!4120998 (< (dynLambda!19046 order!23439 (toChars!9787 (transformation!7276 r!4008))) (dynLambda!19045 order!23437 lambda!128676))))

(declare-fun dynLambda!19047 (Int BalanceConc!26568) TokenValue!7506)

(assert (=> d!1221761 (= (list!16349 (dynLambda!19039 (toChars!9787 (transformation!7276 r!4008)) (dynLambda!19047 (toValue!9928 (transformation!7276 r!4008)) lt!1470094))) (list!16349 lt!1470094))))

(declare-fun lt!1470139 () Unit!63905)

(declare-fun ForallOf!919 (Int BalanceConc!26568) Unit!63905)

(assert (=> d!1221761 (= lt!1470139 (ForallOf!919 lambda!128676 lt!1470094))))

(assert (=> d!1221761 (= (lemmaSemiInverse!2134 (transformation!7276 r!4008) lt!1470094) lt!1470139)))

(declare-fun b_lambda!120923 () Bool)

(assert (=> (not b_lambda!120923) (not d!1221761)))

(declare-fun tb!247299 () Bool)

(declare-fun t!340758 () Bool)

(assert (=> (and b!4120885 (= (toChars!9787 (transformation!7276 rBis!149)) (toChars!9787 (transformation!7276 r!4008))) t!340758) tb!247299))

(declare-fun tp!1255751 () Bool)

(declare-fun e!2557061 () Bool)

(declare-fun b!4120999 () Bool)

(assert (=> b!4120999 (= e!2557061 (and (inv!59143 (c!707602 (dynLambda!19039 (toChars!9787 (transformation!7276 r!4008)) (dynLambda!19047 (toValue!9928 (transformation!7276 r!4008)) lt!1470094)))) tp!1255751))))

(declare-fun result!300448 () Bool)

(assert (=> tb!247299 (= result!300448 (and (inv!59145 (dynLambda!19039 (toChars!9787 (transformation!7276 r!4008)) (dynLambda!19047 (toValue!9928 (transformation!7276 r!4008)) lt!1470094))) e!2557061))))

(assert (= tb!247299 b!4120999))

(declare-fun m!4720189 () Bool)

(assert (=> b!4120999 m!4720189))

(declare-fun m!4720191 () Bool)

(assert (=> tb!247299 m!4720191))

(assert (=> d!1221761 t!340758))

(declare-fun b_and!318765 () Bool)

(assert (= b_and!318759 (and (=> t!340758 result!300448) b_and!318765)))

(declare-fun t!340760 () Bool)

(declare-fun tb!247301 () Bool)

(assert (=> (and b!4120898 (= (toChars!9787 (transformation!7276 (h!49977 rules!3756))) (toChars!9787 (transformation!7276 r!4008))) t!340760) tb!247301))

(declare-fun result!300450 () Bool)

(assert (= result!300450 result!300448))

(assert (=> d!1221761 t!340760))

(declare-fun b_and!318767 () Bool)

(assert (= b_and!318761 (and (=> t!340760 result!300450) b_and!318767)))

(declare-fun t!340762 () Bool)

(declare-fun tb!247303 () Bool)

(assert (=> (and b!4120900 (= (toChars!9787 (transformation!7276 r!4008)) (toChars!9787 (transformation!7276 r!4008))) t!340762) tb!247303))

(declare-fun result!300452 () Bool)

(assert (= result!300452 result!300448))

(assert (=> d!1221761 t!340762))

(declare-fun b_and!318769 () Bool)

(assert (= b_and!318763 (and (=> t!340762 result!300452) b_and!318769)))

(declare-fun b_lambda!120925 () Bool)

(assert (=> (not b_lambda!120925) (not d!1221761)))

(declare-fun t!340764 () Bool)

(declare-fun tb!247305 () Bool)

(assert (=> (and b!4120885 (= (toValue!9928 (transformation!7276 rBis!149)) (toValue!9928 (transformation!7276 r!4008))) t!340764) tb!247305))

(declare-fun result!300454 () Bool)

(declare-fun inv!21 (TokenValue!7506) Bool)

(assert (=> tb!247305 (= result!300454 (inv!21 (dynLambda!19047 (toValue!9928 (transformation!7276 r!4008)) lt!1470094)))))

(declare-fun m!4720193 () Bool)

(assert (=> tb!247305 m!4720193))

(assert (=> d!1221761 t!340764))

(declare-fun b_and!318771 () Bool)

(assert (= b_and!318741 (and (=> t!340764 result!300454) b_and!318771)))

(declare-fun t!340766 () Bool)

(declare-fun tb!247307 () Bool)

(assert (=> (and b!4120898 (= (toValue!9928 (transformation!7276 (h!49977 rules!3756))) (toValue!9928 (transformation!7276 r!4008))) t!340766) tb!247307))

(declare-fun result!300458 () Bool)

(assert (= result!300458 result!300454))

(assert (=> d!1221761 t!340766))

(declare-fun b_and!318773 () Bool)

(assert (= b_and!318745 (and (=> t!340766 result!300458) b_and!318773)))

(declare-fun t!340768 () Bool)

(declare-fun tb!247309 () Bool)

(assert (=> (and b!4120900 (= (toValue!9928 (transformation!7276 r!4008)) (toValue!9928 (transformation!7276 r!4008))) t!340768) tb!247309))

(declare-fun result!300460 () Bool)

(assert (= result!300460 result!300454))

(assert (=> d!1221761 t!340768))

(declare-fun b_and!318775 () Bool)

(assert (= b_and!318749 (and (=> t!340768 result!300460) b_and!318775)))

(declare-fun m!4720195 () Bool)

(assert (=> d!1221761 m!4720195))

(declare-fun m!4720197 () Bool)

(assert (=> d!1221761 m!4720197))

(assert (=> d!1221761 m!4720195))

(declare-fun m!4720199 () Bool)

(assert (=> d!1221761 m!4720199))

(assert (=> d!1221761 m!4720197))

(declare-fun m!4720201 () Bool)

(assert (=> d!1221761 m!4720201))

(declare-fun m!4720203 () Bool)

(assert (=> d!1221761 m!4720203))

(assert (=> b!4120884 d!1221761))

(declare-fun d!1221767 () Bool)

(assert (=> d!1221767 (= (apply!10349 (transformation!7276 r!4008) lt!1470094) (dynLambda!19047 (toValue!9928 (transformation!7276 r!4008)) lt!1470094))))

(declare-fun b_lambda!120927 () Bool)

(assert (=> (not b_lambda!120927) (not d!1221767)))

(assert (=> d!1221767 t!340764))

(declare-fun b_and!318777 () Bool)

(assert (= b_and!318771 (and (=> t!340764 result!300454) b_and!318777)))

(assert (=> d!1221767 t!340766))

(declare-fun b_and!318779 () Bool)

(assert (= b_and!318773 (and (=> t!340766 result!300458) b_and!318779)))

(assert (=> d!1221767 t!340768))

(declare-fun b_and!318781 () Bool)

(assert (= b_and!318775 (and (=> t!340768 result!300460) b_and!318781)))

(assert (=> d!1221767 m!4720195))

(assert (=> b!4120884 d!1221767))

(declare-fun d!1221769 () Bool)

(declare-fun lt!1470143 () List!44680)

(declare-fun ++!11552 (List!44680 List!44680) List!44680)

(assert (=> d!1221769 (= (++!11552 p!2912 lt!1470143) input!3238)))

(declare-fun e!2557074 () List!44680)

(assert (=> d!1221769 (= lt!1470143 e!2557074)))

(declare-fun c!707623 () Bool)

(assert (=> d!1221769 (= c!707623 ((_ is Cons!44556) p!2912))))

(assert (=> d!1221769 (>= (size!32977 input!3238) (size!32977 p!2912))))

(assert (=> d!1221769 (= (getSuffix!2540 input!3238 p!2912) lt!1470143)))

(declare-fun b!4121014 () Bool)

(assert (=> b!4121014 (= e!2557074 (getSuffix!2540 (tail!6434 input!3238) (t!340743 p!2912)))))

(declare-fun b!4121015 () Bool)

(assert (=> b!4121015 (= e!2557074 input!3238)))

(assert (= (and d!1221769 c!707623) b!4121014))

(assert (= (and d!1221769 (not c!707623)) b!4121015))

(declare-fun m!4720221 () Bool)

(assert (=> d!1221769 m!4720221))

(assert (=> d!1221769 m!4720075))

(assert (=> d!1221769 m!4720019))

(assert (=> b!4121014 m!4720099))

(assert (=> b!4121014 m!4720099))

(declare-fun m!4720223 () Bool)

(assert (=> b!4121014 m!4720223))

(assert (=> b!4120884 d!1221769))

(declare-fun b!4121061 () Bool)

(declare-fun res!1683702 () Bool)

(declare-fun e!2557092 () Bool)

(assert (=> b!4121061 (=> (not res!1683702) (not e!2557092))))

(declare-fun lt!1470169 () Option!9584)

(assert (=> b!4121061 (= res!1683702 (= (++!11552 (list!16349 (charsOf!4898 (_1!24647 (get!14532 lt!1470169)))) (_2!24647 (get!14532 lt!1470169))) input!3238))))

(declare-fun call!289960 () Option!9584)

(declare-fun bm!289955 () Bool)

(assert (=> bm!289955 (= call!289960 (maxPrefixOneRule!3007 thiss!25645 (h!49977 rules!3756) input!3238))))

(declare-fun b!4121062 () Bool)

(declare-fun e!2557091 () Option!9584)

(declare-fun lt!1470172 () Option!9584)

(declare-fun lt!1470170 () Option!9584)

(assert (=> b!4121062 (= e!2557091 (ite (and ((_ is None!9583) lt!1470172) ((_ is None!9583) lt!1470170)) None!9583 (ite ((_ is None!9583) lt!1470170) lt!1470172 (ite ((_ is None!9583) lt!1470172) lt!1470170 (ite (>= (size!32976 (_1!24647 (v!40169 lt!1470172))) (size!32976 (_1!24647 (v!40169 lt!1470170)))) lt!1470172 lt!1470170)))))))

(assert (=> b!4121062 (= lt!1470172 call!289960)))

(assert (=> b!4121062 (= lt!1470170 (maxPrefix!4057 thiss!25645 (t!340744 rules!3756) input!3238))))

(declare-fun b!4121063 () Bool)

(declare-fun e!2557090 () Bool)

(assert (=> b!4121063 (= e!2557090 e!2557092)))

(declare-fun res!1683697 () Bool)

(assert (=> b!4121063 (=> (not res!1683697) (not e!2557092))))

(declare-fun isDefined!7230 (Option!9584) Bool)

(assert (=> b!4121063 (= res!1683697 (isDefined!7230 lt!1470169))))

(declare-fun b!4121064 () Bool)

(assert (=> b!4121064 (= e!2557091 call!289960)))

(declare-fun b!4121065 () Bool)

(declare-fun res!1683699 () Bool)

(assert (=> b!4121065 (=> (not res!1683699) (not e!2557092))))

(assert (=> b!4121065 (= res!1683699 (= (list!16349 (charsOf!4898 (_1!24647 (get!14532 lt!1470169)))) (originalCharacters!7772 (_1!24647 (get!14532 lt!1470169)))))))

(declare-fun b!4121067 () Bool)

(assert (=> b!4121067 (= e!2557092 (contains!8948 rules!3756 (rule!10350 (_1!24647 (get!14532 lt!1470169)))))))

(declare-fun b!4121068 () Bool)

(declare-fun res!1683700 () Bool)

(assert (=> b!4121068 (=> (not res!1683700) (not e!2557092))))

(assert (=> b!4121068 (= res!1683700 (= (value!227920 (_1!24647 (get!14532 lt!1470169))) (apply!10349 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470169)))) (seqFromList!5393 (originalCharacters!7772 (_1!24647 (get!14532 lt!1470169)))))))))

(declare-fun b!4121069 () Bool)

(declare-fun res!1683703 () Bool)

(assert (=> b!4121069 (=> (not res!1683703) (not e!2557092))))

(assert (=> b!4121069 (= res!1683703 (< (size!32977 (_2!24647 (get!14532 lt!1470169))) (size!32977 input!3238)))))

(declare-fun b!4121066 () Bool)

(declare-fun res!1683698 () Bool)

(assert (=> b!4121066 (=> (not res!1683698) (not e!2557092))))

(assert (=> b!4121066 (= res!1683698 (matchR!6012 (regex!7276 (rule!10350 (_1!24647 (get!14532 lt!1470169)))) (list!16349 (charsOf!4898 (_1!24647 (get!14532 lt!1470169))))))))

(declare-fun d!1221773 () Bool)

(assert (=> d!1221773 e!2557090))

(declare-fun res!1683701 () Bool)

(assert (=> d!1221773 (=> res!1683701 e!2557090)))

(assert (=> d!1221773 (= res!1683701 (isEmpty!26502 lt!1470169))))

(assert (=> d!1221773 (= lt!1470169 e!2557091)))

(declare-fun c!707629 () Bool)

(assert (=> d!1221773 (= c!707629 (and ((_ is Cons!44557) rules!3756) ((_ is Nil!44557) (t!340744 rules!3756))))))

(declare-fun lt!1470171 () Unit!63905)

(declare-fun lt!1470173 () Unit!63905)

(assert (=> d!1221773 (= lt!1470171 lt!1470173)))

(assert (=> d!1221773 (isPrefix!4211 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2732 (List!44680 List!44680) Unit!63905)

(assert (=> d!1221773 (= lt!1470173 (lemmaIsPrefixRefl!2732 input!3238 input!3238))))

(declare-fun rulesValidInductive!2687 (LexerInterface!6865 List!44681) Bool)

(assert (=> d!1221773 (rulesValidInductive!2687 thiss!25645 rules!3756)))

(assert (=> d!1221773 (= (maxPrefix!4057 thiss!25645 rules!3756 input!3238) lt!1470169)))

(assert (= (and d!1221773 c!707629) b!4121064))

(assert (= (and d!1221773 (not c!707629)) b!4121062))

(assert (= (or b!4121064 b!4121062) bm!289955))

(assert (= (and d!1221773 (not res!1683701)) b!4121063))

(assert (= (and b!4121063 res!1683697) b!4121065))

(assert (= (and b!4121065 res!1683699) b!4121069))

(assert (= (and b!4121069 res!1683703) b!4121061))

(assert (= (and b!4121061 res!1683702) b!4121068))

(assert (= (and b!4121068 res!1683700) b!4121066))

(assert (= (and b!4121066 res!1683698) b!4121067))

(declare-fun m!4720229 () Bool)

(assert (=> d!1221773 m!4720229))

(declare-fun m!4720231 () Bool)

(assert (=> d!1221773 m!4720231))

(declare-fun m!4720233 () Bool)

(assert (=> d!1221773 m!4720233))

(declare-fun m!4720235 () Bool)

(assert (=> d!1221773 m!4720235))

(declare-fun m!4720239 () Bool)

(assert (=> b!4121062 m!4720239))

(declare-fun m!4720241 () Bool)

(assert (=> b!4121066 m!4720241))

(declare-fun m!4720243 () Bool)

(assert (=> b!4121066 m!4720243))

(assert (=> b!4121066 m!4720243))

(declare-fun m!4720247 () Bool)

(assert (=> b!4121066 m!4720247))

(assert (=> b!4121066 m!4720247))

(declare-fun m!4720253 () Bool)

(assert (=> b!4121066 m!4720253))

(assert (=> b!4121069 m!4720241))

(declare-fun m!4720255 () Bool)

(assert (=> b!4121069 m!4720255))

(assert (=> b!4121069 m!4720075))

(assert (=> b!4121061 m!4720241))

(assert (=> b!4121061 m!4720243))

(assert (=> b!4121061 m!4720243))

(assert (=> b!4121061 m!4720247))

(assert (=> b!4121061 m!4720247))

(declare-fun m!4720265 () Bool)

(assert (=> b!4121061 m!4720265))

(assert (=> b!4121065 m!4720241))

(assert (=> b!4121065 m!4720243))

(assert (=> b!4121065 m!4720243))

(assert (=> b!4121065 m!4720247))

(assert (=> b!4121068 m!4720241))

(declare-fun m!4720277 () Bool)

(assert (=> b!4121068 m!4720277))

(assert (=> b!4121068 m!4720277))

(declare-fun m!4720279 () Bool)

(assert (=> b!4121068 m!4720279))

(assert (=> b!4121067 m!4720241))

(declare-fun m!4720281 () Bool)

(assert (=> b!4121067 m!4720281))

(declare-fun m!4720285 () Bool)

(assert (=> b!4121063 m!4720285))

(declare-fun m!4720287 () Bool)

(assert (=> bm!289955 m!4720287))

(assert (=> b!4120884 d!1221773))

(declare-fun d!1221777 () Bool)

(declare-fun fromListB!2469 (List!44680) BalanceConc!26568)

(assert (=> d!1221777 (= (seqFromList!5393 p!2912) (fromListB!2469 p!2912))))

(declare-fun bs!594699 () Bool)

(assert (= bs!594699 d!1221777))

(declare-fun m!4720289 () Bool)

(assert (=> bs!594699 m!4720289))

(assert (=> b!4120884 d!1221777))

(declare-fun d!1221781 () Bool)

(declare-fun lt!1470174 () Int)

(assert (=> d!1221781 (>= lt!1470174 0)))

(declare-fun e!2557093 () Int)

(assert (=> d!1221781 (= lt!1470174 e!2557093)))

(declare-fun c!707630 () Bool)

(assert (=> d!1221781 (= c!707630 ((_ is Nil!44556) p!2912))))

(assert (=> d!1221781 (= (size!32977 p!2912) lt!1470174)))

(declare-fun b!4121070 () Bool)

(assert (=> b!4121070 (= e!2557093 0)))

(declare-fun b!4121071 () Bool)

(assert (=> b!4121071 (= e!2557093 (+ 1 (size!32977 (t!340743 p!2912))))))

(assert (= (and d!1221781 c!707630) b!4121070))

(assert (= (and d!1221781 (not c!707630)) b!4121071))

(declare-fun m!4720291 () Bool)

(assert (=> b!4121071 m!4720291))

(assert (=> b!4120884 d!1221781))

(declare-fun d!1221783 () Bool)

(assert (=> d!1221783 (= (isEmpty!26503 p!2912) ((_ is Nil!44556) p!2912))))

(assert (=> b!4120895 d!1221783))

(declare-fun d!1221785 () Bool)

(assert (=> d!1221785 (= (inv!59139 (tag!8136 r!4008)) (= (mod (str.len (value!227919 (tag!8136 r!4008))) 2) 0))))

(assert (=> b!4120891 d!1221785))

(declare-fun d!1221787 () Bool)

(declare-fun res!1683704 () Bool)

(declare-fun e!2557094 () Bool)

(assert (=> d!1221787 (=> (not res!1683704) (not e!2557094))))

(assert (=> d!1221787 (= res!1683704 (semiInverseModEq!3135 (toChars!9787 (transformation!7276 r!4008)) (toValue!9928 (transformation!7276 r!4008))))))

(assert (=> d!1221787 (= (inv!59141 (transformation!7276 r!4008)) e!2557094)))

(declare-fun b!4121072 () Bool)

(assert (=> b!4121072 (= e!2557094 (equivClasses!3034 (toChars!9787 (transformation!7276 r!4008)) (toValue!9928 (transformation!7276 r!4008))))))

(assert (= (and d!1221787 res!1683704) b!4121072))

(declare-fun m!4720295 () Bool)

(assert (=> d!1221787 m!4720295))

(declare-fun m!4720297 () Bool)

(assert (=> b!4121072 m!4720297))

(assert (=> b!4120891 d!1221787))

(declare-fun d!1221791 () Bool)

(declare-fun lt!1470175 () Bool)

(assert (=> d!1221791 (= lt!1470175 (select (content!6869 (tail!6433 rules!3756)) r!4008))))

(declare-fun e!2557095 () Bool)

(assert (=> d!1221791 (= lt!1470175 e!2557095)))

(declare-fun res!1683705 () Bool)

(assert (=> d!1221791 (=> (not res!1683705) (not e!2557095))))

(assert (=> d!1221791 (= res!1683705 ((_ is Cons!44557) (tail!6433 rules!3756)))))

(assert (=> d!1221791 (= (contains!8948 (tail!6433 rules!3756) r!4008) lt!1470175)))

(declare-fun b!4121073 () Bool)

(declare-fun e!2557096 () Bool)

(assert (=> b!4121073 (= e!2557095 e!2557096)))

(declare-fun res!1683706 () Bool)

(assert (=> b!4121073 (=> res!1683706 e!2557096)))

(assert (=> b!4121073 (= res!1683706 (= (h!49977 (tail!6433 rules!3756)) r!4008))))

(declare-fun b!4121074 () Bool)

(assert (=> b!4121074 (= e!2557096 (contains!8948 (t!340744 (tail!6433 rules!3756)) r!4008))))

(assert (= (and d!1221791 res!1683705) b!4121073))

(assert (= (and b!4121073 (not res!1683706)) b!4121074))

(assert (=> d!1221791 m!4720061))

(declare-fun m!4720299 () Bool)

(assert (=> d!1221791 m!4720299))

(declare-fun m!4720301 () Bool)

(assert (=> d!1221791 m!4720301))

(declare-fun m!4720303 () Bool)

(assert (=> b!4121074 m!4720303))

(assert (=> b!4120892 d!1221791))

(declare-fun d!1221793 () Bool)

(assert (=> d!1221793 (= (isEmpty!26502 lt!1470099) (not ((_ is Some!9583) lt!1470099)))))

(assert (=> b!4120892 d!1221793))

(declare-fun d!1221795 () Bool)

(assert (=> d!1221795 (= (tail!6433 rules!3756) (t!340744 rules!3756))))

(assert (=> b!4120892 d!1221795))

(declare-fun d!1221797 () Bool)

(assert (=> d!1221797 (contains!8948 (tail!6433 rules!3756) r!4008)))

(declare-fun lt!1470181 () Unit!63905)

(declare-fun choose!25186 (List!44681 Rule!14352 Rule!14352) Unit!63905)

(assert (=> d!1221797 (= lt!1470181 (choose!25186 rules!3756 rBis!149 r!4008))))

(declare-fun e!2557102 () Bool)

(assert (=> d!1221797 e!2557102))

(declare-fun res!1683709 () Bool)

(assert (=> d!1221797 (=> (not res!1683709) (not e!2557102))))

(assert (=> d!1221797 (= res!1683709 (contains!8948 rules!3756 rBis!149))))

(assert (=> d!1221797 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!18 rules!3756 rBis!149 r!4008) lt!1470181)))

(declare-fun b!4121083 () Bool)

(assert (=> b!4121083 (= e!2557102 (contains!8948 rules!3756 r!4008))))

(assert (= (and d!1221797 res!1683709) b!4121083))

(assert (=> d!1221797 m!4720061))

(assert (=> d!1221797 m!4720061))

(assert (=> d!1221797 m!4720063))

(declare-fun m!4720307 () Bool)

(assert (=> d!1221797 m!4720307))

(assert (=> d!1221797 m!4720053))

(assert (=> b!4121083 m!4720037))

(assert (=> b!4120892 d!1221797))

(declare-fun b!4121155 () Bool)

(declare-fun e!2557153 () Option!9584)

(declare-datatypes ((tuple2!43028 0))(
  ( (tuple2!43029 (_1!24648 List!44680) (_2!24648 List!44680)) )
))
(declare-fun lt!1470217 () tuple2!43028)

(assert (=> b!4121155 (= e!2557153 (Some!9583 (tuple2!43027 (Token!13483 (apply!10349 (transformation!7276 rBis!149) (seqFromList!5393 (_1!24648 lt!1470217))) rBis!149 (size!32978 (seqFromList!5393 (_1!24648 lt!1470217))) (_1!24648 lt!1470217)) (_2!24648 lt!1470217))))))

(declare-fun lt!1470215 () Unit!63905)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1463 (Regex!12181 List!44680) Unit!63905)

(assert (=> b!4121155 (= lt!1470215 (longestMatchIsAcceptedByMatchOrIsEmpty!1463 (regex!7276 rBis!149) input!3238))))

(declare-fun res!1683759 () Bool)

(declare-fun findLongestMatchInner!1490 (Regex!12181 List!44680 Int List!44680 List!44680 Int) tuple2!43028)

(assert (=> b!4121155 (= res!1683759 (isEmpty!26503 (_1!24648 (findLongestMatchInner!1490 (regex!7276 rBis!149) Nil!44556 (size!32977 Nil!44556) input!3238 input!3238 (size!32977 input!3238)))))))

(declare-fun e!2557150 () Bool)

(assert (=> b!4121155 (=> res!1683759 e!2557150)))

(assert (=> b!4121155 e!2557150))

(declare-fun lt!1470214 () Unit!63905)

(assert (=> b!4121155 (= lt!1470214 lt!1470215)))

(declare-fun lt!1470218 () Unit!63905)

(assert (=> b!4121155 (= lt!1470218 (lemmaSemiInverse!2134 (transformation!7276 rBis!149) (seqFromList!5393 (_1!24648 lt!1470217))))))

(declare-fun b!4121156 () Bool)

(declare-fun e!2557152 () Bool)

(declare-fun e!2557151 () Bool)

(assert (=> b!4121156 (= e!2557152 e!2557151)))

(declare-fun res!1683757 () Bool)

(assert (=> b!4121156 (=> (not res!1683757) (not e!2557151))))

(declare-fun lt!1470216 () Option!9584)

(assert (=> b!4121156 (= res!1683757 (matchR!6012 (regex!7276 rBis!149) (list!16349 (charsOf!4898 (_1!24647 (get!14532 lt!1470216))))))))

(declare-fun b!4121157 () Bool)

(assert (=> b!4121157 (= e!2557150 (matchR!6012 (regex!7276 rBis!149) (_1!24648 (findLongestMatchInner!1490 (regex!7276 rBis!149) Nil!44556 (size!32977 Nil!44556) input!3238 input!3238 (size!32977 input!3238)))))))

(declare-fun d!1221801 () Bool)

(assert (=> d!1221801 e!2557152))

(declare-fun res!1683761 () Bool)

(assert (=> d!1221801 (=> res!1683761 e!2557152)))

(assert (=> d!1221801 (= res!1683761 (isEmpty!26502 lt!1470216))))

(assert (=> d!1221801 (= lt!1470216 e!2557153)))

(declare-fun c!707646 () Bool)

(assert (=> d!1221801 (= c!707646 (isEmpty!26503 (_1!24648 lt!1470217)))))

(declare-fun findLongestMatch!1403 (Regex!12181 List!44680) tuple2!43028)

(assert (=> d!1221801 (= lt!1470217 (findLongestMatch!1403 (regex!7276 rBis!149) input!3238))))

(assert (=> d!1221801 (ruleValid!3084 thiss!25645 rBis!149)))

(assert (=> d!1221801 (= (maxPrefixOneRule!3007 thiss!25645 rBis!149 input!3238) lt!1470216)))

(declare-fun b!4121158 () Bool)

(declare-fun res!1683758 () Bool)

(assert (=> b!4121158 (=> (not res!1683758) (not e!2557151))))

(assert (=> b!4121158 (= res!1683758 (= (rule!10350 (_1!24647 (get!14532 lt!1470216))) rBis!149))))

(declare-fun b!4121159 () Bool)

(declare-fun res!1683762 () Bool)

(assert (=> b!4121159 (=> (not res!1683762) (not e!2557151))))

(assert (=> b!4121159 (= res!1683762 (= (++!11552 (list!16349 (charsOf!4898 (_1!24647 (get!14532 lt!1470216)))) (_2!24647 (get!14532 lt!1470216))) input!3238))))

(declare-fun b!4121160 () Bool)

(declare-fun res!1683760 () Bool)

(assert (=> b!4121160 (=> (not res!1683760) (not e!2557151))))

(assert (=> b!4121160 (= res!1683760 (< (size!32977 (_2!24647 (get!14532 lt!1470216))) (size!32977 input!3238)))))

(declare-fun b!4121161 () Bool)

(declare-fun res!1683763 () Bool)

(assert (=> b!4121161 (=> (not res!1683763) (not e!2557151))))

(assert (=> b!4121161 (= res!1683763 (= (value!227920 (_1!24647 (get!14532 lt!1470216))) (apply!10349 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470216)))) (seqFromList!5393 (originalCharacters!7772 (_1!24647 (get!14532 lt!1470216)))))))))

(declare-fun b!4121162 () Bool)

(assert (=> b!4121162 (= e!2557153 None!9583)))

(declare-fun b!4121163 () Bool)

(assert (=> b!4121163 (= e!2557151 (= (size!32976 (_1!24647 (get!14532 lt!1470216))) (size!32977 (originalCharacters!7772 (_1!24647 (get!14532 lt!1470216))))))))

(assert (= (and d!1221801 c!707646) b!4121162))

(assert (= (and d!1221801 (not c!707646)) b!4121155))

(assert (= (and b!4121155 (not res!1683759)) b!4121157))

(assert (= (and d!1221801 (not res!1683761)) b!4121156))

(assert (= (and b!4121156 res!1683757) b!4121159))

(assert (= (and b!4121159 res!1683762) b!4121160))

(assert (= (and b!4121160 res!1683760) b!4121158))

(assert (= (and b!4121158 res!1683758) b!4121161))

(assert (= (and b!4121161 res!1683763) b!4121163))

(declare-fun m!4720367 () Bool)

(assert (=> b!4121156 m!4720367))

(declare-fun m!4720369 () Bool)

(assert (=> b!4121156 m!4720369))

(assert (=> b!4121156 m!4720369))

(declare-fun m!4720371 () Bool)

(assert (=> b!4121156 m!4720371))

(assert (=> b!4121156 m!4720371))

(declare-fun m!4720373 () Bool)

(assert (=> b!4121156 m!4720373))

(declare-fun m!4720375 () Bool)

(assert (=> b!4121155 m!4720375))

(declare-fun m!4720377 () Bool)

(assert (=> b!4121155 m!4720377))

(assert (=> b!4121155 m!4720375))

(declare-fun m!4720379 () Bool)

(assert (=> b!4121155 m!4720379))

(declare-fun m!4720381 () Bool)

(assert (=> b!4121155 m!4720381))

(assert (=> b!4121155 m!4720375))

(declare-fun m!4720383 () Bool)

(assert (=> b!4121155 m!4720383))

(declare-fun m!4720385 () Bool)

(assert (=> b!4121155 m!4720385))

(assert (=> b!4121155 m!4720375))

(declare-fun m!4720387 () Bool)

(assert (=> b!4121155 m!4720387))

(assert (=> b!4121155 m!4720379))

(assert (=> b!4121155 m!4720075))

(declare-fun m!4720389 () Bool)

(assert (=> b!4121155 m!4720389))

(assert (=> b!4121155 m!4720075))

(assert (=> b!4121161 m!4720367))

(declare-fun m!4720391 () Bool)

(assert (=> b!4121161 m!4720391))

(assert (=> b!4121161 m!4720391))

(declare-fun m!4720393 () Bool)

(assert (=> b!4121161 m!4720393))

(assert (=> b!4121158 m!4720367))

(assert (=> b!4121159 m!4720367))

(assert (=> b!4121159 m!4720369))

(assert (=> b!4121159 m!4720369))

(assert (=> b!4121159 m!4720371))

(assert (=> b!4121159 m!4720371))

(declare-fun m!4720395 () Bool)

(assert (=> b!4121159 m!4720395))

(assert (=> b!4121163 m!4720367))

(declare-fun m!4720397 () Bool)

(assert (=> b!4121163 m!4720397))

(declare-fun m!4720399 () Bool)

(assert (=> d!1221801 m!4720399))

(declare-fun m!4720401 () Bool)

(assert (=> d!1221801 m!4720401))

(declare-fun m!4720403 () Bool)

(assert (=> d!1221801 m!4720403))

(assert (=> d!1221801 m!4720033))

(assert (=> b!4121157 m!4720379))

(assert (=> b!4121157 m!4720075))

(assert (=> b!4121157 m!4720379))

(assert (=> b!4121157 m!4720075))

(assert (=> b!4121157 m!4720389))

(declare-fun m!4720405 () Bool)

(assert (=> b!4121157 m!4720405))

(assert (=> b!4121160 m!4720367))

(declare-fun m!4720407 () Bool)

(assert (=> b!4121160 m!4720407))

(assert (=> b!4121160 m!4720075))

(assert (=> b!4120892 d!1221801))

(declare-fun d!1221847 () Bool)

(assert (=> d!1221847 (not (= rBis!149 r!4008))))

(declare-fun lt!1470221 () Unit!63905)

(declare-fun choose!25188 (LexerInterface!6865 List!44681 Rule!14352 Rule!14352) Unit!63905)

(assert (=> d!1221847 (= lt!1470221 (choose!25188 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1221847 (contains!8948 rules!3756 rBis!149)))

(assert (=> d!1221847 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!16 thiss!25645 rules!3756 rBis!149 r!4008) lt!1470221)))

(declare-fun bs!594704 () Bool)

(assert (= bs!594704 d!1221847))

(declare-fun m!4720409 () Bool)

(assert (=> bs!594704 m!4720409))

(assert (=> bs!594704 m!4720053))

(assert (=> b!4120892 d!1221847))

(declare-fun b!4121167 () Bool)

(declare-fun e!2557156 () Bool)

(assert (=> b!4121167 (= e!2557156 (>= (size!32977 input!3238) (size!32977 p!2912)))))

(declare-fun b!4121165 () Bool)

(declare-fun res!1683767 () Bool)

(declare-fun e!2557154 () Bool)

(assert (=> b!4121165 (=> (not res!1683767) (not e!2557154))))

(assert (=> b!4121165 (= res!1683767 (= (head!8681 p!2912) (head!8681 input!3238)))))

(declare-fun b!4121164 () Bool)

(declare-fun e!2557155 () Bool)

(assert (=> b!4121164 (= e!2557155 e!2557154)))

(declare-fun res!1683765 () Bool)

(assert (=> b!4121164 (=> (not res!1683765) (not e!2557154))))

(assert (=> b!4121164 (= res!1683765 (not ((_ is Nil!44556) input!3238)))))

(declare-fun d!1221849 () Bool)

(assert (=> d!1221849 e!2557156))

(declare-fun res!1683766 () Bool)

(assert (=> d!1221849 (=> res!1683766 e!2557156)))

(declare-fun lt!1470222 () Bool)

(assert (=> d!1221849 (= res!1683766 (not lt!1470222))))

(assert (=> d!1221849 (= lt!1470222 e!2557155)))

(declare-fun res!1683764 () Bool)

(assert (=> d!1221849 (=> res!1683764 e!2557155)))

(assert (=> d!1221849 (= res!1683764 ((_ is Nil!44556) p!2912))))

(assert (=> d!1221849 (= (isPrefix!4211 p!2912 input!3238) lt!1470222)))

(declare-fun b!4121166 () Bool)

(assert (=> b!4121166 (= e!2557154 (isPrefix!4211 (tail!6434 p!2912) (tail!6434 input!3238)))))

(assert (= (and d!1221849 (not res!1683764)) b!4121164))

(assert (= (and b!4121164 res!1683765) b!4121165))

(assert (= (and b!4121165 res!1683767) b!4121166))

(assert (= (and d!1221849 (not res!1683766)) b!4121167))

(assert (=> b!4121167 m!4720075))

(assert (=> b!4121167 m!4720019))

(declare-fun m!4720411 () Bool)

(assert (=> b!4121165 m!4720411))

(assert (=> b!4121165 m!4720095))

(declare-fun m!4720413 () Bool)

(assert (=> b!4121166 m!4720413))

(assert (=> b!4121166 m!4720099))

(assert (=> b!4121166 m!4720413))

(assert (=> b!4121166 m!4720099))

(declare-fun m!4720415 () Bool)

(assert (=> b!4121166 m!4720415))

(assert (=> b!4120903 d!1221849))

(declare-fun b!4121214 () Bool)

(declare-fun e!2557181 () Bool)

(declare-fun lt!1470235 () Bool)

(assert (=> b!4121214 (= e!2557181 (not lt!1470235))))

(declare-fun b!4121215 () Bool)

(declare-fun e!2557183 () Bool)

(assert (=> b!4121215 (= e!2557183 (not (= (head!8681 p!2912) (c!707603 (regex!7276 r!4008)))))))

(declare-fun b!4121216 () Bool)

(declare-fun e!2557184 () Bool)

(assert (=> b!4121216 (= e!2557184 (nullable!4273 (regex!7276 r!4008)))))

(declare-fun b!4121217 () Bool)

(declare-fun res!1683802 () Bool)

(assert (=> b!4121217 (=> res!1683802 e!2557183)))

(assert (=> b!4121217 (= res!1683802 (not (isEmpty!26503 (tail!6434 p!2912))))))

(declare-fun b!4121218 () Bool)

(declare-fun res!1683803 () Bool)

(declare-fun e!2557180 () Bool)

(assert (=> b!4121218 (=> res!1683803 e!2557180)))

(assert (=> b!4121218 (= res!1683803 (not ((_ is ElementMatch!12181) (regex!7276 r!4008))))))

(assert (=> b!4121218 (= e!2557181 e!2557180)))

(declare-fun b!4121219 () Bool)

(declare-fun res!1683798 () Bool)

(assert (=> b!4121219 (=> res!1683798 e!2557180)))

(declare-fun e!2557179 () Bool)

(assert (=> b!4121219 (= res!1683798 e!2557179)))

(declare-fun res!1683801 () Bool)

(assert (=> b!4121219 (=> (not res!1683801) (not e!2557179))))

(assert (=> b!4121219 (= res!1683801 lt!1470235)))

(declare-fun b!4121220 () Bool)

(declare-fun res!1683804 () Bool)

(assert (=> b!4121220 (=> (not res!1683804) (not e!2557179))))

(declare-fun call!289963 () Bool)

(assert (=> b!4121220 (= res!1683804 (not call!289963))))

(declare-fun b!4121221 () Bool)

(declare-fun res!1683799 () Bool)

(assert (=> b!4121221 (=> (not res!1683799) (not e!2557179))))

(assert (=> b!4121221 (= res!1683799 (isEmpty!26503 (tail!6434 p!2912)))))

(declare-fun b!4121222 () Bool)

(declare-fun e!2557185 () Bool)

(assert (=> b!4121222 (= e!2557180 e!2557185)))

(declare-fun res!1683800 () Bool)

(assert (=> b!4121222 (=> (not res!1683800) (not e!2557185))))

(assert (=> b!4121222 (= res!1683800 (not lt!1470235))))

(declare-fun b!4121223 () Bool)

(declare-fun derivativeStep!3669 (Regex!12181 C!24548) Regex!12181)

(assert (=> b!4121223 (= e!2557184 (matchR!6012 (derivativeStep!3669 (regex!7276 r!4008) (head!8681 p!2912)) (tail!6434 p!2912)))))

(declare-fun b!4121225 () Bool)

(declare-fun e!2557182 () Bool)

(assert (=> b!4121225 (= e!2557182 e!2557181)))

(declare-fun c!707656 () Bool)

(assert (=> b!4121225 (= c!707656 ((_ is EmptyLang!12181) (regex!7276 r!4008)))))

(declare-fun b!4121226 () Bool)

(assert (=> b!4121226 (= e!2557179 (= (head!8681 p!2912) (c!707603 (regex!7276 r!4008))))))

(declare-fun bm!289958 () Bool)

(assert (=> bm!289958 (= call!289963 (isEmpty!26503 p!2912))))

(declare-fun b!4121227 () Bool)

(assert (=> b!4121227 (= e!2557182 (= lt!1470235 call!289963))))

(declare-fun d!1221851 () Bool)

(assert (=> d!1221851 e!2557182))

(declare-fun c!707657 () Bool)

(assert (=> d!1221851 (= c!707657 ((_ is EmptyExpr!12181) (regex!7276 r!4008)))))

(assert (=> d!1221851 (= lt!1470235 e!2557184)))

(declare-fun c!707655 () Bool)

(assert (=> d!1221851 (= c!707655 (isEmpty!26503 p!2912))))

(assert (=> d!1221851 (validRegex!5473 (regex!7276 r!4008))))

(assert (=> d!1221851 (= (matchR!6012 (regex!7276 r!4008) p!2912) lt!1470235)))

(declare-fun b!4121224 () Bool)

(assert (=> b!4121224 (= e!2557185 e!2557183)))

(declare-fun res!1683805 () Bool)

(assert (=> b!4121224 (=> res!1683805 e!2557183)))

(assert (=> b!4121224 (= res!1683805 call!289963)))

(assert (= (and d!1221851 c!707655) b!4121216))

(assert (= (and d!1221851 (not c!707655)) b!4121223))

(assert (= (and d!1221851 c!707657) b!4121227))

(assert (= (and d!1221851 (not c!707657)) b!4121225))

(assert (= (and b!4121225 c!707656) b!4121214))

(assert (= (and b!4121225 (not c!707656)) b!4121218))

(assert (= (and b!4121218 (not res!1683803)) b!4121219))

(assert (= (and b!4121219 res!1683801) b!4121220))

(assert (= (and b!4121220 res!1683804) b!4121221))

(assert (= (and b!4121221 res!1683799) b!4121226))

(assert (= (and b!4121219 (not res!1683798)) b!4121222))

(assert (= (and b!4121222 res!1683800) b!4121224))

(assert (= (and b!4121224 (not res!1683805)) b!4121217))

(assert (= (and b!4121217 (not res!1683802)) b!4121215))

(assert (= (or b!4121227 b!4121220 b!4121224) bm!289958))

(assert (=> b!4121216 m!4720123))

(assert (=> b!4121226 m!4720411))

(assert (=> b!4121223 m!4720411))

(assert (=> b!4121223 m!4720411))

(declare-fun m!4720417 () Bool)

(assert (=> b!4121223 m!4720417))

(assert (=> b!4121223 m!4720413))

(assert (=> b!4121223 m!4720417))

(assert (=> b!4121223 m!4720413))

(declare-fun m!4720419 () Bool)

(assert (=> b!4121223 m!4720419))

(assert (=> b!4121217 m!4720413))

(assert (=> b!4121217 m!4720413))

(declare-fun m!4720421 () Bool)

(assert (=> b!4121217 m!4720421))

(assert (=> b!4121215 m!4720411))

(assert (=> d!1221851 m!4720081))

(assert (=> d!1221851 m!4720121))

(assert (=> bm!289958 m!4720081))

(assert (=> b!4121221 m!4720413))

(assert (=> b!4121221 m!4720413))

(assert (=> b!4121221 m!4720421))

(assert (=> b!4120893 d!1221851))

(declare-fun b!4121238 () Bool)

(declare-fun b_free!116503 () Bool)

(declare-fun b_next!117207 () Bool)

(assert (=> b!4121238 (= b_free!116503 (not b_next!117207))))

(declare-fun tb!247323 () Bool)

(declare-fun t!340782 () Bool)

(assert (=> (and b!4121238 (= (toValue!9928 (transformation!7276 (h!49977 (t!340744 rules!3756)))) (toValue!9928 (transformation!7276 r!4008))) t!340782) tb!247323))

(declare-fun result!300478 () Bool)

(assert (= result!300478 result!300454))

(assert (=> d!1221761 t!340782))

(assert (=> d!1221767 t!340782))

(declare-fun b_and!318801 () Bool)

(declare-fun tp!1255764 () Bool)

(assert (=> b!4121238 (= tp!1255764 (and (=> t!340782 result!300478) b_and!318801))))

(declare-fun b_free!116505 () Bool)

(declare-fun b_next!117209 () Bool)

(assert (=> b!4121238 (= b_free!116505 (not b_next!117209))))

(declare-fun tb!247325 () Bool)

(declare-fun t!340784 () Bool)

(assert (=> (and b!4121238 (= (toChars!9787 (transformation!7276 (h!49977 (t!340744 rules!3756)))) (toChars!9787 (transformation!7276 (rule!10350 (_1!24647 (get!14532 lt!1470099)))))) t!340784) tb!247325))

(declare-fun result!300480 () Bool)

(assert (= result!300480 result!300436))

(assert (=> d!1221723 t!340784))

(declare-fun tb!247327 () Bool)

(declare-fun t!340786 () Bool)

(assert (=> (and b!4121238 (= (toChars!9787 (transformation!7276 (h!49977 (t!340744 rules!3756)))) (toChars!9787 (transformation!7276 r!4008))) t!340786) tb!247327))

(declare-fun result!300482 () Bool)

(assert (= result!300482 result!300448))

(assert (=> d!1221761 t!340786))

(declare-fun b_and!318803 () Bool)

(declare-fun tp!1255762 () Bool)

(assert (=> b!4121238 (= tp!1255762 (and (=> t!340784 result!300480) (=> t!340786 result!300482) b_and!318803))))

(declare-fun e!2557196 () Bool)

(assert (=> b!4121238 (= e!2557196 (and tp!1255764 tp!1255762))))

(declare-fun tp!1255761 () Bool)

(declare-fun b!4121237 () Bool)

(declare-fun e!2557195 () Bool)

(assert (=> b!4121237 (= e!2557195 (and tp!1255761 (inv!59139 (tag!8136 (h!49977 (t!340744 rules!3756)))) (inv!59141 (transformation!7276 (h!49977 (t!340744 rules!3756)))) e!2557196))))

(declare-fun b!4121236 () Bool)

(declare-fun e!2557194 () Bool)

(declare-fun tp!1255763 () Bool)

(assert (=> b!4121236 (= e!2557194 (and e!2557195 tp!1255763))))

(assert (=> b!4120904 (= tp!1255741 e!2557194)))

(assert (= b!4121237 b!4121238))

(assert (= b!4121236 b!4121237))

(assert (= (and b!4120904 ((_ is Cons!44557) (t!340744 rules!3756))) b!4121236))

(declare-fun m!4720423 () Bool)

(assert (=> b!4121237 m!4720423))

(declare-fun m!4720425 () Bool)

(assert (=> b!4121237 m!4720425))

(declare-fun b!4121260 () Bool)

(declare-fun e!2557204 () Bool)

(declare-fun tp!1255778 () Bool)

(assert (=> b!4121260 (= e!2557204 tp!1255778)))

(declare-fun b!4121261 () Bool)

(declare-fun tp!1255776 () Bool)

(declare-fun tp!1255777 () Bool)

(assert (=> b!4121261 (= e!2557204 (and tp!1255776 tp!1255777))))

(declare-fun b!4121258 () Bool)

(assert (=> b!4121258 (= e!2557204 tp_is_empty!21285)))

(assert (=> b!4120899 (= tp!1255735 e!2557204)))

(declare-fun b!4121259 () Bool)

(declare-fun tp!1255779 () Bool)

(declare-fun tp!1255775 () Bool)

(assert (=> b!4121259 (= e!2557204 (and tp!1255779 tp!1255775))))

(assert (= (and b!4120899 ((_ is ElementMatch!12181) (regex!7276 (h!49977 rules!3756)))) b!4121258))

(assert (= (and b!4120899 ((_ is Concat!19688) (regex!7276 (h!49977 rules!3756)))) b!4121259))

(assert (= (and b!4120899 ((_ is Star!12181) (regex!7276 (h!49977 rules!3756)))) b!4121260))

(assert (= (and b!4120899 ((_ is Union!12181) (regex!7276 (h!49977 rules!3756)))) b!4121261))

(declare-fun b!4121266 () Bool)

(declare-fun e!2557207 () Bool)

(declare-fun tp!1255782 () Bool)

(assert (=> b!4121266 (= e!2557207 (and tp_is_empty!21285 tp!1255782))))

(assert (=> b!4120906 (= tp!1255742 e!2557207)))

(assert (= (and b!4120906 ((_ is Cons!44556) (t!340743 p!2912))) b!4121266))

(declare-fun b!4121269 () Bool)

(declare-fun e!2557208 () Bool)

(declare-fun tp!1255786 () Bool)

(assert (=> b!4121269 (= e!2557208 tp!1255786)))

(declare-fun b!4121270 () Bool)

(declare-fun tp!1255784 () Bool)

(declare-fun tp!1255785 () Bool)

(assert (=> b!4121270 (= e!2557208 (and tp!1255784 tp!1255785))))

(declare-fun b!4121267 () Bool)

(assert (=> b!4121267 (= e!2557208 tp_is_empty!21285)))

(assert (=> b!4120891 (= tp!1255737 e!2557208)))

(declare-fun b!4121268 () Bool)

(declare-fun tp!1255787 () Bool)

(declare-fun tp!1255783 () Bool)

(assert (=> b!4121268 (= e!2557208 (and tp!1255787 tp!1255783))))

(assert (= (and b!4120891 ((_ is ElementMatch!12181) (regex!7276 r!4008))) b!4121267))

(assert (= (and b!4120891 ((_ is Concat!19688) (regex!7276 r!4008))) b!4121268))

(assert (= (and b!4120891 ((_ is Star!12181) (regex!7276 r!4008))) b!4121269))

(assert (= (and b!4120891 ((_ is Union!12181) (regex!7276 r!4008))) b!4121270))

(declare-fun b!4121271 () Bool)

(declare-fun e!2557209 () Bool)

(declare-fun tp!1255788 () Bool)

(assert (=> b!4121271 (= e!2557209 (and tp_is_empty!21285 tp!1255788))))

(assert (=> b!4120902 (= tp!1255736 e!2557209)))

(assert (= (and b!4120902 ((_ is Cons!44556) (t!340743 input!3238))) b!4121271))

(declare-fun b!4121274 () Bool)

(declare-fun e!2557210 () Bool)

(declare-fun tp!1255792 () Bool)

(assert (=> b!4121274 (= e!2557210 tp!1255792)))

(declare-fun b!4121275 () Bool)

(declare-fun tp!1255790 () Bool)

(declare-fun tp!1255791 () Bool)

(assert (=> b!4121275 (= e!2557210 (and tp!1255790 tp!1255791))))

(declare-fun b!4121272 () Bool)

(assert (=> b!4121272 (= e!2557210 tp_is_empty!21285)))

(assert (=> b!4120887 (= tp!1255740 e!2557210)))

(declare-fun b!4121273 () Bool)

(declare-fun tp!1255793 () Bool)

(declare-fun tp!1255789 () Bool)

(assert (=> b!4121273 (= e!2557210 (and tp!1255793 tp!1255789))))

(assert (= (and b!4120887 ((_ is ElementMatch!12181) (regex!7276 rBis!149))) b!4121272))

(assert (= (and b!4120887 ((_ is Concat!19688) (regex!7276 rBis!149))) b!4121273))

(assert (= (and b!4120887 ((_ is Star!12181) (regex!7276 rBis!149))) b!4121274))

(assert (= (and b!4120887 ((_ is Union!12181) (regex!7276 rBis!149))) b!4121275))

(declare-fun b_lambda!120935 () Bool)

(assert (= b_lambda!120925 (or (and b!4120885 b_free!116491 (= (toValue!9928 (transformation!7276 rBis!149)) (toValue!9928 (transformation!7276 r!4008)))) (and b!4120898 b_free!116495 (= (toValue!9928 (transformation!7276 (h!49977 rules!3756))) (toValue!9928 (transformation!7276 r!4008)))) (and b!4120900 b_free!116499) (and b!4121238 b_free!116503 (= (toValue!9928 (transformation!7276 (h!49977 (t!340744 rules!3756)))) (toValue!9928 (transformation!7276 r!4008)))) b_lambda!120935)))

(declare-fun b_lambda!120937 () Bool)

(assert (= b_lambda!120923 (or (and b!4120885 b_free!116493 (= (toChars!9787 (transformation!7276 rBis!149)) (toChars!9787 (transformation!7276 r!4008)))) (and b!4120898 b_free!116497 (= (toChars!9787 (transformation!7276 (h!49977 rules!3756))) (toChars!9787 (transformation!7276 r!4008)))) (and b!4120900 b_free!116501) (and b!4121238 b_free!116505 (= (toChars!9787 (transformation!7276 (h!49977 (t!340744 rules!3756)))) (toChars!9787 (transformation!7276 r!4008)))) b_lambda!120937)))

(declare-fun b_lambda!120939 () Bool)

(assert (= b_lambda!120927 (or (and b!4120885 b_free!116491 (= (toValue!9928 (transformation!7276 rBis!149)) (toValue!9928 (transformation!7276 r!4008)))) (and b!4120898 b_free!116495 (= (toValue!9928 (transformation!7276 (h!49977 rules!3756))) (toValue!9928 (transformation!7276 r!4008)))) (and b!4120900 b_free!116499) (and b!4121238 b_free!116503 (= (toValue!9928 (transformation!7276 (h!49977 (t!340744 rules!3756)))) (toValue!9928 (transformation!7276 r!4008)))) b_lambda!120939)))

(check-sat (not d!1221847) (not b!4121259) (not b!4121065) (not b_next!117197) (not d!1221749) b_and!318777 (not b!4121260) (not d!1221735) (not b_lambda!120935) (not b_next!117199) (not b!4121071) (not b!4121166) (not b!4121274) (not d!1221731) (not b!4121061) (not bm!289958) (not b_next!117201) (not d!1221761) b_and!318801 (not d!1221711) (not b!4121266) (not bm!289955) (not b!4121161) (not b!4121074) (not b!4121068) (not b!4121271) (not b!4121063) (not b!4121083) (not tb!247305) (not b!4121066) (not b!4121156) (not b!4121062) (not b!4120935) (not b!4121165) (not b!4121067) (not b!4121167) (not d!1221777) (not b_next!117205) (not b!4120961) b_and!318779 (not b!4121270) (not b!4121217) (not b!4121223) (not d!1221787) b_and!318767 (not d!1221801) (not d!1221753) (not b_next!117209) b_and!318765 (not d!1221791) (not b!4120930) (not b!4121158) b_and!318803 (not b!4121226) (not d!1221773) (not b_lambda!120939) (not b!4120927) (not tb!247299) (not b!4120921) (not tb!247289) (not d!1221747) (not b!4120973) (not b!4120971) (not b!4120917) (not b!4121237) (not b!4121155) (not d!1221851) (not b!4121216) (not b!4121261) (not b!4121159) (not b!4121014) (not b!4121215) (not b!4121269) (not b!4121275) (not b!4121157) (not b!4120999) (not b!4120978) (not d!1221769) (not d!1221797) (not b_next!117207) (not b!4120946) (not b!4120974) (not b_lambda!120921) tp_is_empty!21285 (not b!4121268) (not d!1221755) (not b!4121163) (not d!1221723) (not b!4121221) (not d!1221715) b_and!318781 (not d!1221709) (not b!4120918) (not d!1221717) (not b_next!117203) (not b!4120957) (not d!1221743) (not b!4121160) (not d!1221721) (not b!4121069) (not b_lambda!120937) b_and!318769 (not b!4121072) (not b_next!117195) (not b!4121273) (not b!4121236) (not b!4120916) (not d!1221757) (not b!4120985))
(check-sat (not b_next!117197) b_and!318777 (not b_next!117199) (not b_next!117201) b_and!318801 b_and!318767 (not b_next!117209) (not b_next!117207) b_and!318781 (not b_next!117203) b_and!318769 (not b_next!117195) (not b_next!117205) b_and!318779 b_and!318803 b_and!318765)
