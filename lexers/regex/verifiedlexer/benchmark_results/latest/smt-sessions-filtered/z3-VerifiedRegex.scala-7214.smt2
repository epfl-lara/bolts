; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384480 () Bool)

(assert start!384480)

(declare-fun b!4072969 () Bool)

(declare-fun b_free!113361 () Bool)

(declare-fun b_next!114065 () Bool)

(assert (=> b!4072969 (= b_free!113361 (not b_next!114065))))

(declare-fun tp!1232696 () Bool)

(declare-fun b_and!313011 () Bool)

(assert (=> b!4072969 (= tp!1232696 b_and!313011)))

(declare-fun b_free!113363 () Bool)

(declare-fun b_next!114067 () Bool)

(assert (=> b!4072969 (= b_free!113363 (not b_next!114067))))

(declare-fun tp!1232698 () Bool)

(declare-fun b_and!313013 () Bool)

(assert (=> b!4072969 (= tp!1232698 b_and!313013)))

(declare-fun b!4072972 () Bool)

(declare-fun b_free!113365 () Bool)

(declare-fun b_next!114069 () Bool)

(assert (=> b!4072972 (= b_free!113365 (not b_next!114069))))

(declare-fun tp!1232693 () Bool)

(declare-fun b_and!313015 () Bool)

(assert (=> b!4072972 (= tp!1232693 b_and!313015)))

(declare-fun b_free!113367 () Bool)

(declare-fun b_next!114071 () Bool)

(assert (=> b!4072972 (= b_free!113367 (not b_next!114071))))

(declare-fun tp!1232695 () Bool)

(declare-fun b_and!313017 () Bool)

(assert (=> b!4072972 (= tp!1232695 b_and!313017)))

(declare-fun b!4072966 () Bool)

(declare-fun e!2527850 () Bool)

(declare-fun e!2527840 () Bool)

(assert (=> b!4072966 (= e!2527850 (not e!2527840))))

(declare-fun res!1663166 () Bool)

(assert (=> b!4072966 (=> res!1663166 e!2527840)))

(declare-datatypes ((List!43657 0))(
  ( (Nil!43533) (Cons!43533 (h!48953 (_ BitVec 16)) (t!337160 List!43657)) )
))
(declare-datatypes ((TokenValue!7230 0))(
  ( (FloatLiteralValue!14460 (text!51055 List!43657)) (TokenValueExt!7229 (__x!26677 Int)) (Broken!36150 (value!220126 List!43657)) (Object!7353) (End!7230) (Def!7230) (Underscore!7230) (Match!7230) (Else!7230) (Error!7230) (Case!7230) (If!7230) (Extends!7230) (Abstract!7230) (Class!7230) (Val!7230) (DelimiterValue!14460 (del!7290 List!43657)) (KeywordValue!7236 (value!220127 List!43657)) (CommentValue!14460 (value!220128 List!43657)) (WhitespaceValue!14460 (value!220129 List!43657)) (IndentationValue!7230 (value!220130 List!43657)) (String!49899) (Int32!7230) (Broken!36151 (value!220131 List!43657)) (Boolean!7231) (Unit!63084) (OperatorValue!7233 (op!7290 List!43657)) (IdentifierValue!14460 (value!220132 List!43657)) (IdentifierValue!14461 (value!220133 List!43657)) (WhitespaceValue!14461 (value!220134 List!43657)) (True!14460) (False!14460) (Broken!36152 (value!220135 List!43657)) (Broken!36153 (value!220136 List!43657)) (True!14461) (RightBrace!7230) (RightBracket!7230) (Colon!7230) (Null!7230) (Comma!7230) (LeftBracket!7230) (False!14461) (LeftBrace!7230) (ImaginaryLiteralValue!7230 (text!51056 List!43657)) (StringLiteralValue!21690 (value!220137 List!43657)) (EOFValue!7230 (value!220138 List!43657)) (IdentValue!7230 (value!220139 List!43657)) (DelimiterValue!14461 (value!220140 List!43657)) (DedentValue!7230 (value!220141 List!43657)) (NewLineValue!7230 (value!220142 List!43657)) (IntegerValue!21690 (value!220143 (_ BitVec 32)) (text!51057 List!43657)) (IntegerValue!21691 (value!220144 Int) (text!51058 List!43657)) (Times!7230) (Or!7230) (Equal!7230) (Minus!7230) (Broken!36154 (value!220145 List!43657)) (And!7230) (Div!7230) (LessEqual!7230) (Mod!7230) (Concat!19135) (Not!7230) (Plus!7230) (SpaceValue!7230 (value!220146 List!43657)) (IntegerValue!21692 (value!220147 Int) (text!51059 List!43657)) (StringLiteralValue!21691 (text!51060 List!43657)) (FloatLiteralValue!14461 (text!51061 List!43657)) (BytesLiteralValue!7230 (value!220148 List!43657)) (CommentValue!14461 (value!220149 List!43657)) (StringLiteralValue!21692 (value!220150 List!43657)) (ErrorTokenValue!7230 (msg!7291 List!43657)) )
))
(declare-datatypes ((String!49900 0))(
  ( (String!49901 (value!220151 String)) )
))
(declare-datatypes ((C!23996 0))(
  ( (C!23997 (val!14108 Int)) )
))
(declare-datatypes ((Regex!11905 0))(
  ( (ElementMatch!11905 (c!702892 C!23996)) (Concat!19136 (regOne!24322 Regex!11905) (regTwo!24322 Regex!11905)) (EmptyExpr!11905) (Star!11905 (reg!12234 Regex!11905)) (EmptyLang!11905) (Union!11905 (regOne!24323 Regex!11905) (regTwo!24323 Regex!11905)) )
))
(declare-datatypes ((List!43658 0))(
  ( (Nil!43534) (Cons!43534 (h!48954 C!23996) (t!337161 List!43658)) )
))
(declare-datatypes ((IArray!26427 0))(
  ( (IArray!26428 (innerList!13271 List!43658)) )
))
(declare-datatypes ((Conc!13211 0))(
  ( (Node!13211 (left!32733 Conc!13211) (right!33063 Conc!13211) (csize!26652 Int) (cheight!13422 Int)) (Leaf!20426 (xs!16517 IArray!26427) (csize!26653 Int)) (Empty!13211) )
))
(declare-datatypes ((BalanceConc!26016 0))(
  ( (BalanceConc!26017 (c!702893 Conc!13211)) )
))
(declare-datatypes ((TokenValueInjection!13888 0))(
  ( (TokenValueInjection!13889 (toValue!9564 Int) (toChars!9423 Int)) )
))
(declare-datatypes ((Rule!13800 0))(
  ( (Rule!13801 (regex!7000 Regex!11905) (tag!7860 String!49900) (isSeparator!7000 Bool) (transformation!7000 TokenValueInjection!13888)) )
))
(declare-fun r!4213 () Rule!13800)

(declare-fun p!2988 () List!43658)

(declare-fun matchR!5850 (Regex!11905 List!43658) Bool)

(assert (=> b!4072966 (= res!1663166 (not (matchR!5850 (regex!7000 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6589 0))(
  ( (LexerInterfaceExt!6586 (__x!26678 Int)) (Lexer!6587) )
))
(declare-fun thiss!26199 () LexerInterface!6589)

(declare-fun ruleValid!2924 (LexerInterface!6589 Rule!13800) Bool)

(assert (=> b!4072966 (ruleValid!2924 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63085 0))(
  ( (Unit!63086) )
))
(declare-fun lt!1457765 () Unit!63085)

(declare-datatypes ((List!43659 0))(
  ( (Nil!43535) (Cons!43535 (h!48955 Rule!13800) (t!337162 List!43659)) )
))
(declare-fun rules!3870 () List!43659)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1992 (LexerInterface!6589 Rule!13800 List!43659) Unit!63085)

(assert (=> b!4072966 (= lt!1457765 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1992 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4072967 () Bool)

(declare-fun res!1663170 () Bool)

(assert (=> b!4072967 (=> res!1663170 e!2527840)))

(get-info :version)

(assert (=> b!4072967 (= res!1663170 (or (not ((_ is Cons!43535) rules!3870)) (not (= (h!48955 rules!3870) r!4213))))))

(declare-fun b!4072968 () Bool)

(declare-fun e!2527843 () Bool)

(declare-fun tp_is_empty!20813 () Bool)

(declare-fun tp!1232697 () Bool)

(assert (=> b!4072968 (= e!2527843 (and tp_is_empty!20813 tp!1232697))))

(declare-fun e!2527847 () Bool)

(assert (=> b!4072969 (= e!2527847 (and tp!1232696 tp!1232698))))

(declare-fun b!4072970 () Bool)

(declare-fun e!2527851 () Bool)

(declare-fun tp!1232699 () Bool)

(assert (=> b!4072970 (= e!2527851 (and tp_is_empty!20813 tp!1232699))))

(declare-fun b!4072971 () Bool)

(declare-fun e!2527841 () Bool)

(declare-fun tp!1232702 () Bool)

(declare-fun e!2527846 () Bool)

(declare-fun inv!58188 (String!49900) Bool)

(declare-fun inv!58190 (TokenValueInjection!13888) Bool)

(assert (=> b!4072971 (= e!2527846 (and tp!1232702 (inv!58188 (tag!7860 r!4213)) (inv!58190 (transformation!7000 r!4213)) e!2527841))))

(assert (=> b!4072972 (= e!2527841 (and tp!1232693 tp!1232695))))

(declare-fun b!4072973 () Bool)

(declare-fun res!1663165 () Bool)

(declare-fun e!2527842 () Bool)

(assert (=> b!4072973 (=> (not res!1663165) (not e!2527842))))

(declare-fun contains!8667 (List!43659 Rule!13800) Bool)

(assert (=> b!4072973 (= res!1663165 (contains!8667 rules!3870 r!4213))))

(declare-fun b!4072974 () Bool)

(declare-fun e!2527844 () Bool)

(declare-fun tp!1232701 () Bool)

(assert (=> b!4072974 (= e!2527844 (and tp_is_empty!20813 tp!1232701))))

(declare-fun b!4072975 () Bool)

(assert (=> b!4072975 (= e!2527842 e!2527850)))

(declare-fun res!1663167 () Bool)

(assert (=> b!4072975 (=> (not res!1663167) (not e!2527850))))

(declare-fun suffix!1518 () List!43658)

(declare-fun lt!1457767 () BalanceConc!26016)

(declare-fun input!3411 () List!43658)

(declare-datatypes ((Token!13126 0))(
  ( (Token!13127 (value!220152 TokenValue!7230) (rule!10104 Rule!13800) (size!32531 Int) (originalCharacters!7594 List!43658)) )
))
(declare-datatypes ((tuple2!42542 0))(
  ( (tuple2!42543 (_1!24405 Token!13126) (_2!24405 List!43658)) )
))
(declare-datatypes ((Option!9408 0))(
  ( (None!9407) (Some!9407 (v!39845 tuple2!42542)) )
))
(declare-fun maxPrefix!3881 (LexerInterface!6589 List!43659 List!43658) Option!9408)

(declare-fun apply!10183 (TokenValueInjection!13888 BalanceConc!26016) TokenValue!7230)

(declare-fun size!32532 (List!43658) Int)

(assert (=> b!4072975 (= res!1663167 (= (maxPrefix!3881 thiss!26199 rules!3870 input!3411) (Some!9407 (tuple2!42543 (Token!13127 (apply!10183 (transformation!7000 r!4213) lt!1457767) r!4213 (size!32532 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1457766 () Unit!63085)

(declare-fun lemmaSemiInverse!1967 (TokenValueInjection!13888 BalanceConc!26016) Unit!63085)

(assert (=> b!4072975 (= lt!1457766 (lemmaSemiInverse!1967 (transformation!7000 r!4213) lt!1457767))))

(declare-fun seqFromList!5217 (List!43658) BalanceConc!26016)

(assert (=> b!4072975 (= lt!1457767 (seqFromList!5217 p!2988))))

(declare-fun res!1663172 () Bool)

(assert (=> start!384480 (=> (not res!1663172) (not e!2527842))))

(assert (=> start!384480 (= res!1663172 ((_ is Lexer!6587) thiss!26199))))

(assert (=> start!384480 e!2527842))

(assert (=> start!384480 true))

(assert (=> start!384480 e!2527843))

(declare-fun e!2527852 () Bool)

(assert (=> start!384480 e!2527852))

(assert (=> start!384480 e!2527844))

(assert (=> start!384480 e!2527851))

(assert (=> start!384480 e!2527846))

(declare-fun b!4072976 () Bool)

(declare-fun e!2527845 () Bool)

(declare-fun tp!1232694 () Bool)

(assert (=> b!4072976 (= e!2527852 (and e!2527845 tp!1232694))))

(declare-fun b!4072977 () Bool)

(declare-fun res!1663169 () Bool)

(assert (=> b!4072977 (=> (not res!1663169) (not e!2527842))))

(declare-fun isEmpty!25978 (List!43659) Bool)

(assert (=> b!4072977 (= res!1663169 (not (isEmpty!25978 rules!3870)))))

(declare-fun b!4072978 () Bool)

(declare-fun tp!1232700 () Bool)

(assert (=> b!4072978 (= e!2527845 (and tp!1232700 (inv!58188 (tag!7860 (h!48955 rules!3870))) (inv!58190 (transformation!7000 (h!48955 rules!3870))) e!2527847))))

(declare-fun b!4072979 () Bool)

(declare-fun res!1663168 () Bool)

(assert (=> b!4072979 (=> (not res!1663168) (not e!2527842))))

(declare-fun isEmpty!25979 (List!43658) Bool)

(assert (=> b!4072979 (= res!1663168 (not (isEmpty!25979 p!2988)))))

(declare-fun b!4072980 () Bool)

(declare-fun res!1663164 () Bool)

(assert (=> b!4072980 (=> (not res!1663164) (not e!2527842))))

(declare-fun ++!11406 (List!43658 List!43658) List!43658)

(assert (=> b!4072980 (= res!1663164 (= input!3411 (++!11406 p!2988 suffix!1518)))))

(declare-fun b!4072981 () Bool)

(assert (=> b!4072981 (= e!2527840 true)))

(declare-fun lt!1457764 () Bool)

(declare-fun rulesInvariant!5932 (LexerInterface!6589 List!43659) Bool)

(assert (=> b!4072981 (= lt!1457764 (rulesInvariant!5932 thiss!26199 (Cons!43535 (h!48955 rules!3870) (t!337162 rules!3870))))))

(declare-fun b!4072982 () Bool)

(declare-fun res!1663171 () Bool)

(assert (=> b!4072982 (=> (not res!1663171) (not e!2527842))))

(assert (=> b!4072982 (= res!1663171 (rulesInvariant!5932 thiss!26199 rules!3870))))

(assert (= (and start!384480 res!1663172) b!4072977))

(assert (= (and b!4072977 res!1663169) b!4072982))

(assert (= (and b!4072982 res!1663171) b!4072973))

(assert (= (and b!4072973 res!1663165) b!4072980))

(assert (= (and b!4072980 res!1663164) b!4072979))

(assert (= (and b!4072979 res!1663168) b!4072975))

(assert (= (and b!4072975 res!1663167) b!4072966))

(assert (= (and b!4072966 (not res!1663166)) b!4072967))

(assert (= (and b!4072967 (not res!1663170)) b!4072981))

(assert (= (and start!384480 ((_ is Cons!43534) suffix!1518)) b!4072968))

(assert (= b!4072978 b!4072969))

(assert (= b!4072976 b!4072978))

(assert (= (and start!384480 ((_ is Cons!43535) rules!3870)) b!4072976))

(assert (= (and start!384480 ((_ is Cons!43534) p!2988)) b!4072974))

(assert (= (and start!384480 ((_ is Cons!43534) input!3411)) b!4072970))

(assert (= b!4072971 b!4072972))

(assert (= start!384480 b!4072971))

(declare-fun m!4681849 () Bool)

(assert (=> b!4072979 m!4681849))

(declare-fun m!4681851 () Bool)

(assert (=> b!4072982 m!4681851))

(declare-fun m!4681853 () Bool)

(assert (=> b!4072981 m!4681853))

(declare-fun m!4681855 () Bool)

(assert (=> b!4072971 m!4681855))

(declare-fun m!4681857 () Bool)

(assert (=> b!4072971 m!4681857))

(declare-fun m!4681859 () Bool)

(assert (=> b!4072978 m!4681859))

(declare-fun m!4681861 () Bool)

(assert (=> b!4072978 m!4681861))

(declare-fun m!4681863 () Bool)

(assert (=> b!4072975 m!4681863))

(declare-fun m!4681865 () Bool)

(assert (=> b!4072975 m!4681865))

(declare-fun m!4681867 () Bool)

(assert (=> b!4072975 m!4681867))

(declare-fun m!4681869 () Bool)

(assert (=> b!4072975 m!4681869))

(declare-fun m!4681871 () Bool)

(assert (=> b!4072975 m!4681871))

(declare-fun m!4681873 () Bool)

(assert (=> b!4072966 m!4681873))

(declare-fun m!4681875 () Bool)

(assert (=> b!4072966 m!4681875))

(declare-fun m!4681877 () Bool)

(assert (=> b!4072966 m!4681877))

(declare-fun m!4681879 () Bool)

(assert (=> b!4072973 m!4681879))

(declare-fun m!4681881 () Bool)

(assert (=> b!4072980 m!4681881))

(declare-fun m!4681883 () Bool)

(assert (=> b!4072977 m!4681883))

(check-sat (not b_next!114065) (not b!4072978) (not b!4072976) (not b_next!114067) (not b!4072977) (not b_next!114071) (not b!4072975) (not b!4072974) (not b!4072981) (not b!4072980) b_and!313011 (not b!4072982) b_and!313015 tp_is_empty!20813 (not b!4072971) (not b!4072966) (not b_next!114069) b_and!313013 (not b!4072968) b_and!313017 (not b!4072979) (not b!4072973) (not b!4072970))
(check-sat (not b_next!114065) b_and!313017 (not b_next!114067) (not b_next!114071) b_and!313011 b_and!313015 (not b_next!114069) b_and!313013)
