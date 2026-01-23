; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396934 () Bool)

(assert start!396934)

(declare-fun b!4165055 () Bool)

(declare-fun b_free!120239 () Bool)

(declare-fun b_next!120943 () Bool)

(assert (=> b!4165055 (= b_free!120239 (not b_next!120943))))

(declare-fun tp!1271861 () Bool)

(declare-fun b_and!324817 () Bool)

(assert (=> b!4165055 (= tp!1271861 b_and!324817)))

(declare-fun b_free!120241 () Bool)

(declare-fun b_next!120945 () Bool)

(assert (=> b!4165055 (= b_free!120241 (not b_next!120945))))

(declare-fun tp!1271863 () Bool)

(declare-fun b_and!324819 () Bool)

(assert (=> b!4165055 (= tp!1271863 b_and!324819)))

(declare-fun b!4165056 () Bool)

(declare-fun b_free!120243 () Bool)

(declare-fun b_next!120947 () Bool)

(assert (=> b!4165056 (= b_free!120243 (not b_next!120947))))

(declare-fun tp!1271871 () Bool)

(declare-fun b_and!324821 () Bool)

(assert (=> b!4165056 (= tp!1271871 b_and!324821)))

(declare-fun b_free!120245 () Bool)

(declare-fun b_next!120949 () Bool)

(assert (=> b!4165056 (= b_free!120245 (not b_next!120949))))

(declare-fun tp!1271865 () Bool)

(declare-fun b_and!324823 () Bool)

(assert (=> b!4165056 (= tp!1271865 b_and!324823)))

(declare-fun b!4165053 () Bool)

(declare-fun b_free!120247 () Bool)

(declare-fun b_next!120951 () Bool)

(assert (=> b!4165053 (= b_free!120247 (not b_next!120951))))

(declare-fun tp!1271868 () Bool)

(declare-fun b_and!324825 () Bool)

(assert (=> b!4165053 (= tp!1271868 b_and!324825)))

(declare-fun b_free!120249 () Bool)

(declare-fun b_next!120953 () Bool)

(assert (=> b!4165053 (= b_free!120249 (not b_next!120953))))

(declare-fun tp!1271870 () Bool)

(declare-fun b_and!324827 () Bool)

(assert (=> b!4165053 (= tp!1271870 b_and!324827)))

(declare-fun b!4165047 () Bool)

(declare-fun e!2585660 () Bool)

(declare-fun e!2585664 () Bool)

(assert (=> b!4165047 (= e!2585660 e!2585664)))

(declare-fun res!1706367 () Bool)

(assert (=> b!4165047 (=> res!1706367 e!2585664)))

(declare-datatypes ((C!25092 0))(
  ( (C!25093 (val!14708 Int)) )
))
(declare-datatypes ((List!45719 0))(
  ( (Nil!45595) (Cons!45595 (h!51015 C!25092) (t!343934 List!45719)) )
))
(declare-fun input!3316 () List!45719)

(declare-datatypes ((LexerInterface!7139 0))(
  ( (LexerInterfaceExt!7136 (__x!27773 Int)) (Lexer!7137) )
))
(declare-fun thiss!25889 () LexerInterface!7139)

(declare-datatypes ((IArray!27519 0))(
  ( (IArray!27520 (innerList!13817 List!45719)) )
))
(declare-datatypes ((Conc!13757 0))(
  ( (Node!13757 (left!33992 Conc!13757) (right!34322 Conc!13757) (csize!27744 Int) (cheight!13968 Int)) (Leaf!21273 (xs!17063 IArray!27519) (csize!27745 Int)) (Empty!13757) )
))
(declare-datatypes ((String!52745 0))(
  ( (String!52746 (value!235583 String)) )
))
(declare-datatypes ((BalanceConc!27108 0))(
  ( (BalanceConc!27109 (c!712288 Conc!13757)) )
))
(declare-datatypes ((List!45720 0))(
  ( (Nil!45596) (Cons!45596 (h!51016 (_ BitVec 16)) (t!343935 List!45720)) )
))
(declare-datatypes ((TokenValue!7776 0))(
  ( (FloatLiteralValue!15552 (text!54877 List!45720)) (TokenValueExt!7775 (__x!27774 Int)) (Broken!38880 (value!235584 List!45720)) (Object!7899) (End!7776) (Def!7776) (Underscore!7776) (Match!7776) (Else!7776) (Error!7776) (Case!7776) (If!7776) (Extends!7776) (Abstract!7776) (Class!7776) (Val!7776) (DelimiterValue!15552 (del!7836 List!45720)) (KeywordValue!7782 (value!235585 List!45720)) (CommentValue!15552 (value!235586 List!45720)) (WhitespaceValue!15552 (value!235587 List!45720)) (IndentationValue!7776 (value!235588 List!45720)) (String!52747) (Int32!7776) (Broken!38881 (value!235589 List!45720)) (Boolean!7777) (Unit!64686) (OperatorValue!7779 (op!7836 List!45720)) (IdentifierValue!15552 (value!235590 List!45720)) (IdentifierValue!15553 (value!235591 List!45720)) (WhitespaceValue!15553 (value!235592 List!45720)) (True!15552) (False!15552) (Broken!38882 (value!235593 List!45720)) (Broken!38883 (value!235594 List!45720)) (True!15553) (RightBrace!7776) (RightBracket!7776) (Colon!7776) (Null!7776) (Comma!7776) (LeftBracket!7776) (False!15553) (LeftBrace!7776) (ImaginaryLiteralValue!7776 (text!54878 List!45720)) (StringLiteralValue!23328 (value!235595 List!45720)) (EOFValue!7776 (value!235596 List!45720)) (IdentValue!7776 (value!235597 List!45720)) (DelimiterValue!15553 (value!235598 List!45720)) (DedentValue!7776 (value!235599 List!45720)) (NewLineValue!7776 (value!235600 List!45720)) (IntegerValue!23328 (value!235601 (_ BitVec 32)) (text!54879 List!45720)) (IntegerValue!23329 (value!235602 Int) (text!54880 List!45720)) (Times!7776) (Or!7776) (Equal!7776) (Minus!7776) (Broken!38884 (value!235603 List!45720)) (And!7776) (Div!7776) (LessEqual!7776) (Mod!7776) (Concat!20227) (Not!7776) (Plus!7776) (SpaceValue!7776 (value!235604 List!45720)) (IntegerValue!23330 (value!235605 Int) (text!54881 List!45720)) (StringLiteralValue!23329 (text!54882 List!45720)) (FloatLiteralValue!15553 (text!54883 List!45720)) (BytesLiteralValue!7776 (value!235606 List!45720)) (CommentValue!15553 (value!235607 List!45720)) (StringLiteralValue!23330 (value!235608 List!45720)) (ErrorTokenValue!7776 (msg!7837 List!45720)) )
))
(declare-datatypes ((TokenValueInjection!14980 0))(
  ( (TokenValueInjection!14981 (toValue!10214 Int) (toChars!10073 Int)) )
))
(declare-datatypes ((Regex!12451 0))(
  ( (ElementMatch!12451 (c!712289 C!25092)) (Concat!20228 (regOne!25414 Regex!12451) (regTwo!25414 Regex!12451)) (EmptyExpr!12451) (Star!12451 (reg!12780 Regex!12451)) (EmptyLang!12451) (Union!12451 (regOne!25415 Regex!12451) (regTwo!25415 Regex!12451)) )
))
(declare-datatypes ((Rule!14892 0))(
  ( (Rule!14893 (regex!7546 Regex!12451) (tag!8410 String!52745) (isSeparator!7546 Bool) (transformation!7546 TokenValueInjection!14980)) )
))
(declare-datatypes ((Token!13838 0))(
  ( (Token!13839 (value!235609 TokenValue!7776) (rule!10600 Rule!14892) (size!33501 Int) (originalCharacters!7950 List!45719)) )
))
(declare-datatypes ((tuple2!43522 0))(
  ( (tuple2!43523 (_1!24895 Token!13838) (_2!24895 List!45719)) )
))
(declare-datatypes ((Option!9760 0))(
  ( (None!9759) (Some!9759 (v!40537 tuple2!43522)) )
))
(declare-fun lt!1483954 () Option!9760)

(declare-fun r!4097 () Rule!14892)

(declare-fun maxPrefixOneRule!3168 (LexerInterface!7139 Rule!14892 List!45719) Option!9760)

(assert (=> b!4165047 (= res!1706367 (not (= (maxPrefixOneRule!3168 thiss!25889 r!4097 input!3316) lt!1483954)))))

(declare-fun p!2942 () List!45719)

(declare-fun lt!1483946 () TokenValue!7776)

(declare-fun lt!1483948 () Int)

(declare-fun getSuffix!2716 (List!45719 List!45719) List!45719)

(assert (=> b!4165047 (= lt!1483954 (Some!9759 (tuple2!43523 (Token!13839 lt!1483946 r!4097 lt!1483948 p!2942) (getSuffix!2716 input!3316 p!2942))))))

(declare-fun size!33502 (List!45719) Int)

(assert (=> b!4165047 (= lt!1483948 (size!33502 p!2942))))

(declare-fun lt!1483950 () BalanceConc!27108)

(declare-fun apply!10527 (TokenValueInjection!14980 BalanceConc!27108) TokenValue!7776)

(assert (=> b!4165047 (= lt!1483946 (apply!10527 (transformation!7546 r!4097) lt!1483950))))

(declare-fun isPrefix!4403 (List!45719 List!45719) Bool)

(assert (=> b!4165047 (isPrefix!4403 input!3316 input!3316)))

(declare-datatypes ((Unit!64687 0))(
  ( (Unit!64688) )
))
(declare-fun lt!1483951 () Unit!64687)

(declare-fun lemmaIsPrefixRefl!2842 (List!45719 List!45719) Unit!64687)

(assert (=> b!4165047 (= lt!1483951 (lemmaIsPrefixRefl!2842 input!3316 input!3316))))

(declare-fun lt!1483949 () Unit!64687)

(declare-fun lemmaSemiInverse!2320 (TokenValueInjection!14980 BalanceConc!27108) Unit!64687)

(assert (=> b!4165047 (= lt!1483949 (lemmaSemiInverse!2320 (transformation!7546 r!4097) lt!1483950))))

(declare-fun seqFromList!5579 (List!45719) BalanceConc!27108)

(assert (=> b!4165047 (= lt!1483950 (seqFromList!5579 p!2942))))

(declare-fun b!4165048 () Bool)

(declare-fun e!2585668 () Bool)

(declare-fun tp_is_empty!21865 () Bool)

(declare-fun tp!1271867 () Bool)

(assert (=> b!4165048 (= e!2585668 (and tp_is_empty!21865 tp!1271867))))

(declare-fun b!4165049 () Bool)

(declare-fun e!2585656 () Bool)

(declare-fun e!2585666 () Bool)

(declare-fun tp!1271860 () Bool)

(assert (=> b!4165049 (= e!2585656 (and e!2585666 tp!1271860))))

(declare-fun b!4165050 () Bool)

(declare-fun res!1706363 () Bool)

(declare-fun e!2585654 () Bool)

(assert (=> b!4165050 (=> (not res!1706363) (not e!2585654))))

(declare-fun pBis!100 () List!45719)

(assert (=> b!4165050 (= res!1706363 (isPrefix!4403 pBis!100 input!3316))))

(declare-fun b!4165051 () Bool)

(declare-fun res!1706357 () Bool)

(assert (=> b!4165051 (=> res!1706357 e!2585664)))

(assert (=> b!4165051 (= res!1706357 (<= (size!33502 pBis!100) lt!1483948))))

(declare-fun b!4165052 () Bool)

(declare-fun res!1706360 () Bool)

(assert (=> b!4165052 (=> (not res!1706360) (not e!2585654))))

(declare-datatypes ((List!45721 0))(
  ( (Nil!45597) (Cons!45597 (h!51017 Rule!14892) (t!343936 List!45721)) )
))
(declare-fun rules!3820 () List!45721)

(declare-fun contains!9341 (List!45721 Rule!14892) Bool)

(assert (=> b!4165052 (= res!1706360 (contains!9341 rules!3820 r!4097))))

(declare-fun e!2585667 () Bool)

(assert (=> b!4165053 (= e!2585667 (and tp!1271868 tp!1271870))))

(declare-fun e!2585661 () Bool)

(declare-fun b!4165054 () Bool)

(declare-fun tp!1271862 () Bool)

(declare-fun inv!60112 (String!52745) Bool)

(declare-fun inv!60114 (TokenValueInjection!14980) Bool)

(assert (=> b!4165054 (= e!2585666 (and tp!1271862 (inv!60112 (tag!8410 (h!51017 rules!3820))) (inv!60114 (transformation!7546 (h!51017 rules!3820))) e!2585661))))

(declare-fun e!2585663 () Bool)

(assert (=> b!4165055 (= e!2585663 (and tp!1271861 tp!1271863))))

(assert (=> b!4165056 (= e!2585661 (and tp!1271871 tp!1271865))))

(declare-fun b!4165057 () Bool)

(declare-fun res!1706365 () Bool)

(assert (=> b!4165057 (=> res!1706365 e!2585664)))

(declare-fun maxPrefix!4223 (LexerInterface!7139 List!45721 List!45719) Option!9760)

(assert (=> b!4165057 (= res!1706365 (not (= (maxPrefix!4223 thiss!25889 rules!3820 input!3316) lt!1483954)))))

(declare-fun res!1706368 () Bool)

(assert (=> start!396934 (=> (not res!1706368) (not e!2585654))))

(get-info :version)

(assert (=> start!396934 (= res!1706368 ((_ is Lexer!7137) thiss!25889))))

(assert (=> start!396934 e!2585654))

(declare-fun e!2585659 () Bool)

(assert (=> start!396934 e!2585659))

(assert (=> start!396934 e!2585656))

(assert (=> start!396934 e!2585668))

(declare-fun e!2585658 () Bool)

(assert (=> start!396934 e!2585658))

(assert (=> start!396934 true))

(declare-fun e!2585662 () Bool)

(assert (=> start!396934 e!2585662))

(declare-fun e!2585657 () Bool)

(assert (=> start!396934 e!2585657))

(declare-fun b!4165058 () Bool)

(declare-fun tp!1271872 () Bool)

(assert (=> b!4165058 (= e!2585657 (and tp!1271872 (inv!60112 (tag!8410 r!4097)) (inv!60114 (transformation!7546 r!4097)) e!2585667))))

(declare-fun b!4165059 () Bool)

(declare-fun tp!1271869 () Bool)

(assert (=> b!4165059 (= e!2585658 (and tp_is_empty!21865 tp!1271869))))

(declare-fun b!4165060 () Bool)

(declare-fun tp!1271864 () Bool)

(assert (=> b!4165060 (= e!2585659 (and tp_is_empty!21865 tp!1271864))))

(declare-fun b!4165061 () Bool)

(assert (=> b!4165061 (= e!2585654 (not e!2585660))))

(declare-fun res!1706362 () Bool)

(assert (=> b!4165061 (=> res!1706362 e!2585660)))

(declare-fun matchR!6196 (Regex!12451 List!45719) Bool)

(assert (=> b!4165061 (= res!1706362 (not (matchR!6196 (regex!7546 r!4097) p!2942)))))

(declare-fun ruleValid!3270 (LexerInterface!7139 Rule!14892) Bool)

(assert (=> b!4165061 (ruleValid!3270 thiss!25889 r!4097)))

(declare-fun lt!1483952 () Unit!64687)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2310 (LexerInterface!7139 Rule!14892 List!45721) Unit!64687)

(assert (=> b!4165061 (= lt!1483952 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2310 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4165062 () Bool)

(declare-fun res!1706364 () Bool)

(assert (=> b!4165062 (=> (not res!1706364) (not e!2585654))))

(assert (=> b!4165062 (= res!1706364 (isPrefix!4403 p!2942 input!3316))))

(declare-fun b!4165063 () Bool)

(declare-fun e!2585655 () Bool)

(assert (=> b!4165063 (= e!2585664 e!2585655)))

(declare-fun res!1706359 () Bool)

(assert (=> b!4165063 (=> res!1706359 e!2585655)))

(declare-fun validRegex!5575 (Regex!12451) Bool)

(assert (=> b!4165063 (= res!1706359 (not (validRegex!5575 (regex!7546 r!4097))))))

(declare-fun rBis!161 () Rule!14892)

(assert (=> b!4165063 (ruleValid!3270 thiss!25889 rBis!161)))

(declare-fun lt!1483953 () Unit!64687)

(assert (=> b!4165063 (= lt!1483953 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2310 thiss!25889 rBis!161 rules!3820))))

(declare-fun b!4165064 () Bool)

(declare-fun res!1706358 () Bool)

(assert (=> b!4165064 (=> (not res!1706358) (not e!2585654))))

(declare-fun isEmpty!26987 (List!45721) Bool)

(assert (=> b!4165064 (= res!1706358 (not (isEmpty!26987 rules!3820)))))

(declare-fun b!4165065 () Bool)

(declare-fun res!1706361 () Bool)

(assert (=> b!4165065 (=> (not res!1706361) (not e!2585654))))

(assert (=> b!4165065 (= res!1706361 (contains!9341 rules!3820 rBis!161))))

(declare-fun b!4165066 () Bool)

(declare-fun res!1706366 () Bool)

(assert (=> b!4165066 (=> (not res!1706366) (not e!2585654))))

(declare-fun rulesInvariant!6352 (LexerInterface!7139 List!45721) Bool)

(assert (=> b!4165066 (= res!1706366 (rulesInvariant!6352 thiss!25889 rules!3820))))

(declare-fun b!4165067 () Bool)

(assert (=> b!4165067 (= e!2585655 (validRegex!5575 (regex!7546 rBis!161)))))

(assert (=> b!4165067 (not (matchR!6196 (regex!7546 rBis!161) pBis!100))))

(declare-fun lt!1483947 () Unit!64687)

(declare-fun lemmaMaxPrefixOutputsMaxPrefixInner!2 (LexerInterface!7139 List!45721 Rule!14892 List!45719 List!45719 List!45719 Rule!14892) Unit!64687)

(assert (=> b!4165067 (= lt!1483947 (lemmaMaxPrefixOutputsMaxPrefixInner!2 thiss!25889 rules!3820 r!4097 p!2942 input!3316 pBis!100 rBis!161))))

(declare-fun tp!1271866 () Bool)

(declare-fun b!4165068 () Bool)

(assert (=> b!4165068 (= e!2585662 (and tp!1271866 (inv!60112 (tag!8410 rBis!161)) (inv!60114 (transformation!7546 rBis!161)) e!2585663))))

(assert (= (and start!396934 res!1706368) b!4165062))

(assert (= (and b!4165062 res!1706364) b!4165050))

(assert (= (and b!4165050 res!1706363) b!4165064))

(assert (= (and b!4165064 res!1706358) b!4165066))

(assert (= (and b!4165066 res!1706366) b!4165052))

(assert (= (and b!4165052 res!1706360) b!4165065))

(assert (= (and b!4165065 res!1706361) b!4165061))

(assert (= (and b!4165061 (not res!1706362)) b!4165047))

(assert (= (and b!4165047 (not res!1706367)) b!4165051))

(assert (= (and b!4165051 (not res!1706357)) b!4165057))

(assert (= (and b!4165057 (not res!1706365)) b!4165063))

(assert (= (and b!4165063 (not res!1706359)) b!4165067))

(assert (= (and start!396934 ((_ is Cons!45595) pBis!100)) b!4165060))

(assert (= b!4165054 b!4165056))

(assert (= b!4165049 b!4165054))

(assert (= (and start!396934 ((_ is Cons!45597) rules!3820)) b!4165049))

(assert (= (and start!396934 ((_ is Cons!45595) p!2942)) b!4165048))

(assert (= (and start!396934 ((_ is Cons!45595) input!3316)) b!4165059))

(assert (= b!4165068 b!4165055))

(assert (= start!396934 b!4165068))

(assert (= b!4165058 b!4165053))

(assert (= start!396934 b!4165058))

(declare-fun m!4757141 () Bool)

(assert (=> b!4165065 m!4757141))

(declare-fun m!4757143 () Bool)

(assert (=> b!4165067 m!4757143))

(declare-fun m!4757145 () Bool)

(assert (=> b!4165067 m!4757145))

(declare-fun m!4757147 () Bool)

(assert (=> b!4165067 m!4757147))

(declare-fun m!4757149 () Bool)

(assert (=> b!4165047 m!4757149))

(declare-fun m!4757151 () Bool)

(assert (=> b!4165047 m!4757151))

(declare-fun m!4757153 () Bool)

(assert (=> b!4165047 m!4757153))

(declare-fun m!4757155 () Bool)

(assert (=> b!4165047 m!4757155))

(declare-fun m!4757157 () Bool)

(assert (=> b!4165047 m!4757157))

(declare-fun m!4757159 () Bool)

(assert (=> b!4165047 m!4757159))

(declare-fun m!4757161 () Bool)

(assert (=> b!4165047 m!4757161))

(declare-fun m!4757163 () Bool)

(assert (=> b!4165047 m!4757163))

(declare-fun m!4757165 () Bool)

(assert (=> b!4165052 m!4757165))

(declare-fun m!4757167 () Bool)

(assert (=> b!4165051 m!4757167))

(declare-fun m!4757169 () Bool)

(assert (=> b!4165062 m!4757169))

(declare-fun m!4757171 () Bool)

(assert (=> b!4165058 m!4757171))

(declare-fun m!4757173 () Bool)

(assert (=> b!4165058 m!4757173))

(declare-fun m!4757175 () Bool)

(assert (=> b!4165057 m!4757175))

(declare-fun m!4757177 () Bool)

(assert (=> b!4165050 m!4757177))

(declare-fun m!4757179 () Bool)

(assert (=> b!4165068 m!4757179))

(declare-fun m!4757181 () Bool)

(assert (=> b!4165068 m!4757181))

(declare-fun m!4757183 () Bool)

(assert (=> b!4165064 m!4757183))

(declare-fun m!4757185 () Bool)

(assert (=> b!4165061 m!4757185))

(declare-fun m!4757187 () Bool)

(assert (=> b!4165061 m!4757187))

(declare-fun m!4757189 () Bool)

(assert (=> b!4165061 m!4757189))

(declare-fun m!4757191 () Bool)

(assert (=> b!4165066 m!4757191))

(declare-fun m!4757193 () Bool)

(assert (=> b!4165063 m!4757193))

(declare-fun m!4757195 () Bool)

(assert (=> b!4165063 m!4757195))

(declare-fun m!4757197 () Bool)

(assert (=> b!4165063 m!4757197))

(declare-fun m!4757199 () Bool)

(assert (=> b!4165054 m!4757199))

(declare-fun m!4757201 () Bool)

(assert (=> b!4165054 m!4757201))

(check-sat (not b!4165065) (not b!4165058) (not b!4165063) (not b!4165050) (not b_next!120951) (not b!4165051) (not b!4165054) (not b!4165048) b_and!324817 (not b!4165068) (not b_next!120953) (not b!4165047) (not b!4165061) b_and!324825 tp_is_empty!21865 b_and!324819 (not b!4165066) b_and!324827 (not b!4165067) (not b!4165060) (not b_next!120949) (not b_next!120945) b_and!324821 (not b!4165062) (not b!4165057) (not b_next!120943) (not b!4165059) (not b!4165049) b_and!324823 (not b!4165064) (not b_next!120947) (not b!4165052))
(check-sat b_and!324825 b_and!324819 b_and!324827 (not b_next!120949) (not b_next!120951) (not b_next!120943) b_and!324823 b_and!324817 (not b_next!120953) (not b_next!120947) (not b_next!120945) b_and!324821)
(get-model)

(declare-fun d!1230876 () Bool)

(assert (=> d!1230876 (= (inv!60112 (tag!8410 rBis!161)) (= (mod (str.len (value!235583 (tag!8410 rBis!161))) 2) 0))))

(assert (=> b!4165068 d!1230876))

(declare-fun d!1230878 () Bool)

(declare-fun res!1706379 () Bool)

(declare-fun e!2585673 () Bool)

(assert (=> d!1230878 (=> (not res!1706379) (not e!2585673))))

(declare-fun semiInverseModEq!3274 (Int Int) Bool)

(assert (=> d!1230878 (= res!1706379 (semiInverseModEq!3274 (toChars!10073 (transformation!7546 rBis!161)) (toValue!10214 (transformation!7546 rBis!161))))))

(assert (=> d!1230878 (= (inv!60114 (transformation!7546 rBis!161)) e!2585673)))

(declare-fun b!4165071 () Bool)

(declare-fun equivClasses!3173 (Int Int) Bool)

(assert (=> b!4165071 (= e!2585673 (equivClasses!3173 (toChars!10073 (transformation!7546 rBis!161)) (toValue!10214 (transformation!7546 rBis!161))))))

(assert (= (and d!1230878 res!1706379) b!4165071))

(declare-fun m!4757203 () Bool)

(assert (=> d!1230878 m!4757203))

(declare-fun m!4757205 () Bool)

(assert (=> b!4165071 m!4757205))

(assert (=> b!4165068 d!1230878))

(declare-fun b!4165252 () Bool)

(declare-fun e!2585777 () Bool)

(assert (=> b!4165252 (= e!2585777 true)))

(declare-fun d!1230882 () Bool)

(assert (=> d!1230882 e!2585777))

(assert (= d!1230882 b!4165252))

(declare-fun order!24005 () Int)

(declare-fun order!24003 () Int)

(declare-fun lambda!129102 () Int)

(declare-fun dynLambda!19514 (Int Int) Int)

(declare-fun dynLambda!19515 (Int Int) Int)

(assert (=> b!4165252 (< (dynLambda!19514 order!24003 (toValue!10214 (transformation!7546 r!4097))) (dynLambda!19515 order!24005 lambda!129102))))

(declare-fun order!24007 () Int)

(declare-fun dynLambda!19516 (Int Int) Int)

(assert (=> b!4165252 (< (dynLambda!19516 order!24007 (toChars!10073 (transformation!7546 r!4097))) (dynLambda!19515 order!24005 lambda!129102))))

(declare-fun list!16509 (BalanceConc!27108) List!45719)

(declare-fun dynLambda!19517 (Int TokenValue!7776) BalanceConc!27108)

(declare-fun dynLambda!19518 (Int BalanceConc!27108) TokenValue!7776)

(assert (=> d!1230882 (= (list!16509 (dynLambda!19517 (toChars!10073 (transformation!7546 r!4097)) (dynLambda!19518 (toValue!10214 (transformation!7546 r!4097)) lt!1483950))) (list!16509 lt!1483950))))

(declare-fun lt!1484014 () Unit!64687)

(declare-fun ForallOf!1009 (Int BalanceConc!27108) Unit!64687)

(assert (=> d!1230882 (= lt!1484014 (ForallOf!1009 lambda!129102 lt!1483950))))

(assert (=> d!1230882 (= (lemmaSemiInverse!2320 (transformation!7546 r!4097) lt!1483950) lt!1484014)))

(declare-fun b_lambda!122279 () Bool)

(assert (=> (not b_lambda!122279) (not d!1230882)))

(declare-fun tb!249435 () Bool)

(declare-fun t!343938 () Bool)

(assert (=> (and b!4165055 (= (toChars!10073 (transformation!7546 rBis!161)) (toChars!10073 (transformation!7546 r!4097))) t!343938) tb!249435))

(declare-fun tp!1271875 () Bool)

(declare-fun e!2585780 () Bool)

(declare-fun b!4165257 () Bool)

(declare-fun inv!60115 (Conc!13757) Bool)

(assert (=> b!4165257 (= e!2585780 (and (inv!60115 (c!712288 (dynLambda!19517 (toChars!10073 (transformation!7546 r!4097)) (dynLambda!19518 (toValue!10214 (transformation!7546 r!4097)) lt!1483950)))) tp!1271875))))

(declare-fun result!303804 () Bool)

(declare-fun inv!60116 (BalanceConc!27108) Bool)

(assert (=> tb!249435 (= result!303804 (and (inv!60116 (dynLambda!19517 (toChars!10073 (transformation!7546 r!4097)) (dynLambda!19518 (toValue!10214 (transformation!7546 r!4097)) lt!1483950))) e!2585780))))

(assert (= tb!249435 b!4165257))

(declare-fun m!4757345 () Bool)

(assert (=> b!4165257 m!4757345))

(declare-fun m!4757347 () Bool)

(assert (=> tb!249435 m!4757347))

(assert (=> d!1230882 t!343938))

(declare-fun b_and!324829 () Bool)

(assert (= b_and!324819 (and (=> t!343938 result!303804) b_and!324829)))

(declare-fun t!343940 () Bool)

(declare-fun tb!249437 () Bool)

(assert (=> (and b!4165056 (= (toChars!10073 (transformation!7546 (h!51017 rules!3820))) (toChars!10073 (transformation!7546 r!4097))) t!343940) tb!249437))

(declare-fun result!303808 () Bool)

(assert (= result!303808 result!303804))

(assert (=> d!1230882 t!343940))

(declare-fun b_and!324831 () Bool)

(assert (= b_and!324823 (and (=> t!343940 result!303808) b_and!324831)))

(declare-fun t!343942 () Bool)

(declare-fun tb!249439 () Bool)

(assert (=> (and b!4165053 (= (toChars!10073 (transformation!7546 r!4097)) (toChars!10073 (transformation!7546 r!4097))) t!343942) tb!249439))

(declare-fun result!303810 () Bool)

(assert (= result!303810 result!303804))

(assert (=> d!1230882 t!343942))

(declare-fun b_and!324833 () Bool)

(assert (= b_and!324827 (and (=> t!343942 result!303810) b_and!324833)))

(declare-fun b_lambda!122281 () Bool)

(assert (=> (not b_lambda!122281) (not d!1230882)))

(declare-fun tb!249441 () Bool)

(declare-fun t!343944 () Bool)

(assert (=> (and b!4165055 (= (toValue!10214 (transformation!7546 rBis!161)) (toValue!10214 (transformation!7546 r!4097))) t!343944) tb!249441))

(declare-fun result!303812 () Bool)

(declare-fun inv!21 (TokenValue!7776) Bool)

(assert (=> tb!249441 (= result!303812 (inv!21 (dynLambda!19518 (toValue!10214 (transformation!7546 r!4097)) lt!1483950)))))

(declare-fun m!4757349 () Bool)

(assert (=> tb!249441 m!4757349))

(assert (=> d!1230882 t!343944))

(declare-fun b_and!324835 () Bool)

(assert (= b_and!324817 (and (=> t!343944 result!303812) b_and!324835)))

(declare-fun t!343946 () Bool)

(declare-fun tb!249443 () Bool)

(assert (=> (and b!4165056 (= (toValue!10214 (transformation!7546 (h!51017 rules!3820))) (toValue!10214 (transformation!7546 r!4097))) t!343946) tb!249443))

(declare-fun result!303816 () Bool)

(assert (= result!303816 result!303812))

(assert (=> d!1230882 t!343946))

(declare-fun b_and!324837 () Bool)

(assert (= b_and!324821 (and (=> t!343946 result!303816) b_and!324837)))

(declare-fun t!343948 () Bool)

(declare-fun tb!249445 () Bool)

(assert (=> (and b!4165053 (= (toValue!10214 (transformation!7546 r!4097)) (toValue!10214 (transformation!7546 r!4097))) t!343948) tb!249445))

(declare-fun result!303818 () Bool)

(assert (= result!303818 result!303812))

(assert (=> d!1230882 t!343948))

(declare-fun b_and!324839 () Bool)

(assert (= b_and!324825 (and (=> t!343948 result!303818) b_and!324839)))

(declare-fun m!4757351 () Bool)

(assert (=> d!1230882 m!4757351))

(declare-fun m!4757353 () Bool)

(assert (=> d!1230882 m!4757353))

(declare-fun m!4757355 () Bool)

(assert (=> d!1230882 m!4757355))

(assert (=> d!1230882 m!4757355))

(declare-fun m!4757357 () Bool)

(assert (=> d!1230882 m!4757357))

(declare-fun m!4757359 () Bool)

(assert (=> d!1230882 m!4757359))

(assert (=> d!1230882 m!4757353))

(assert (=> b!4165047 d!1230882))

(declare-fun d!1230922 () Bool)

(declare-fun lt!1484017 () Int)

(assert (=> d!1230922 (>= lt!1484017 0)))

(declare-fun e!2585786 () Int)

(assert (=> d!1230922 (= lt!1484017 e!2585786)))

(declare-fun c!712324 () Bool)

(assert (=> d!1230922 (= c!712324 ((_ is Nil!45595) p!2942))))

(assert (=> d!1230922 (= (size!33502 p!2942) lt!1484017)))

(declare-fun b!4165264 () Bool)

(assert (=> b!4165264 (= e!2585786 0)))

(declare-fun b!4165265 () Bool)

(assert (=> b!4165265 (= e!2585786 (+ 1 (size!33502 (t!343934 p!2942))))))

(assert (= (and d!1230922 c!712324) b!4165264))

(assert (= (and d!1230922 (not c!712324)) b!4165265))

(declare-fun m!4757361 () Bool)

(assert (=> b!4165265 m!4757361))

(assert (=> b!4165047 d!1230922))

(declare-fun d!1230924 () Bool)

(assert (=> d!1230924 (isPrefix!4403 input!3316 input!3316)))

(declare-fun lt!1484020 () Unit!64687)

(declare-fun choose!25505 (List!45719 List!45719) Unit!64687)

(assert (=> d!1230924 (= lt!1484020 (choose!25505 input!3316 input!3316))))

(assert (=> d!1230924 (= (lemmaIsPrefixRefl!2842 input!3316 input!3316) lt!1484020)))

(declare-fun bs!595788 () Bool)

(assert (= bs!595788 d!1230924))

(assert (=> bs!595788 m!4757153))

(declare-fun m!4757363 () Bool)

(assert (=> bs!595788 m!4757363))

(assert (=> b!4165047 d!1230924))

(declare-fun d!1230926 () Bool)

(declare-fun fromListB!2559 (List!45719) BalanceConc!27108)

(assert (=> d!1230926 (= (seqFromList!5579 p!2942) (fromListB!2559 p!2942))))

(declare-fun bs!595789 () Bool)

(assert (= bs!595789 d!1230926))

(declare-fun m!4757365 () Bool)

(assert (=> bs!595789 m!4757365))

(assert (=> b!4165047 d!1230926))

(declare-fun d!1230928 () Bool)

(declare-fun lt!1484023 () List!45719)

(declare-fun ++!11662 (List!45719 List!45719) List!45719)

(assert (=> d!1230928 (= (++!11662 p!2942 lt!1484023) input!3316)))

(declare-fun e!2585789 () List!45719)

(assert (=> d!1230928 (= lt!1484023 e!2585789)))

(declare-fun c!712327 () Bool)

(assert (=> d!1230928 (= c!712327 ((_ is Cons!45595) p!2942))))

(assert (=> d!1230928 (>= (size!33502 input!3316) (size!33502 p!2942))))

(assert (=> d!1230928 (= (getSuffix!2716 input!3316 p!2942) lt!1484023)))

(declare-fun b!4165270 () Bool)

(declare-fun tail!6689 (List!45719) List!45719)

(assert (=> b!4165270 (= e!2585789 (getSuffix!2716 (tail!6689 input!3316) (t!343934 p!2942)))))

(declare-fun b!4165271 () Bool)

(assert (=> b!4165271 (= e!2585789 input!3316)))

(assert (= (and d!1230928 c!712327) b!4165270))

(assert (= (and d!1230928 (not c!712327)) b!4165271))

(declare-fun m!4757367 () Bool)

(assert (=> d!1230928 m!4757367))

(declare-fun m!4757369 () Bool)

(assert (=> d!1230928 m!4757369))

(assert (=> d!1230928 m!4757159))

(declare-fun m!4757371 () Bool)

(assert (=> b!4165270 m!4757371))

(assert (=> b!4165270 m!4757371))

(declare-fun m!4757373 () Bool)

(assert (=> b!4165270 m!4757373))

(assert (=> b!4165047 d!1230928))

(declare-fun b!4165280 () Bool)

(declare-fun e!2585797 () Bool)

(declare-fun e!2585796 () Bool)

(assert (=> b!4165280 (= e!2585797 e!2585796)))

(declare-fun res!1706506 () Bool)

(assert (=> b!4165280 (=> (not res!1706506) (not e!2585796))))

(assert (=> b!4165280 (= res!1706506 (not ((_ is Nil!45595) input!3316)))))

(declare-fun b!4165281 () Bool)

(declare-fun res!1706505 () Bool)

(assert (=> b!4165281 (=> (not res!1706505) (not e!2585796))))

(declare-fun head!8842 (List!45719) C!25092)

(assert (=> b!4165281 (= res!1706505 (= (head!8842 input!3316) (head!8842 input!3316)))))

(declare-fun d!1230930 () Bool)

(declare-fun e!2585798 () Bool)

(assert (=> d!1230930 e!2585798))

(declare-fun res!1706504 () Bool)

(assert (=> d!1230930 (=> res!1706504 e!2585798)))

(declare-fun lt!1484026 () Bool)

(assert (=> d!1230930 (= res!1706504 (not lt!1484026))))

(assert (=> d!1230930 (= lt!1484026 e!2585797)))

(declare-fun res!1706507 () Bool)

(assert (=> d!1230930 (=> res!1706507 e!2585797)))

(assert (=> d!1230930 (= res!1706507 ((_ is Nil!45595) input!3316))))

(assert (=> d!1230930 (= (isPrefix!4403 input!3316 input!3316) lt!1484026)))

(declare-fun b!4165283 () Bool)

(assert (=> b!4165283 (= e!2585798 (>= (size!33502 input!3316) (size!33502 input!3316)))))

(declare-fun b!4165282 () Bool)

(assert (=> b!4165282 (= e!2585796 (isPrefix!4403 (tail!6689 input!3316) (tail!6689 input!3316)))))

(assert (= (and d!1230930 (not res!1706507)) b!4165280))

(assert (= (and b!4165280 res!1706506) b!4165281))

(assert (= (and b!4165281 res!1706505) b!4165282))

(assert (= (and d!1230930 (not res!1706504)) b!4165283))

(declare-fun m!4757375 () Bool)

(assert (=> b!4165281 m!4757375))

(assert (=> b!4165281 m!4757375))

(assert (=> b!4165283 m!4757369))

(assert (=> b!4165283 m!4757369))

(assert (=> b!4165282 m!4757371))

(assert (=> b!4165282 m!4757371))

(assert (=> b!4165282 m!4757371))

(assert (=> b!4165282 m!4757371))

(declare-fun m!4757377 () Bool)

(assert (=> b!4165282 m!4757377))

(assert (=> b!4165047 d!1230930))

(declare-fun b!4165356 () Bool)

(declare-fun res!1706547 () Bool)

(declare-fun e!2585847 () Bool)

(assert (=> b!4165356 (=> (not res!1706547) (not e!2585847))))

(declare-fun lt!1484043 () Option!9760)

(declare-fun get!14822 (Option!9760) tuple2!43522)

(assert (=> b!4165356 (= res!1706547 (= (value!235609 (_1!24895 (get!14822 lt!1484043))) (apply!10527 (transformation!7546 (rule!10600 (_1!24895 (get!14822 lt!1484043)))) (seqFromList!5579 (originalCharacters!7950 (_1!24895 (get!14822 lt!1484043)))))))))

(declare-fun b!4165357 () Bool)

(assert (=> b!4165357 (= e!2585847 (= (size!33501 (_1!24895 (get!14822 lt!1484043))) (size!33502 (originalCharacters!7950 (_1!24895 (get!14822 lt!1484043))))))))

(declare-fun d!1230932 () Bool)

(declare-fun e!2585849 () Bool)

(assert (=> d!1230932 e!2585849))

(declare-fun res!1706545 () Bool)

(assert (=> d!1230932 (=> res!1706545 e!2585849)))

(declare-fun isEmpty!26990 (Option!9760) Bool)

(assert (=> d!1230932 (= res!1706545 (isEmpty!26990 lt!1484043))))

(declare-fun e!2585848 () Option!9760)

(assert (=> d!1230932 (= lt!1484043 e!2585848)))

(declare-fun c!712333 () Bool)

(declare-datatypes ((tuple2!43526 0))(
  ( (tuple2!43527 (_1!24897 List!45719) (_2!24897 List!45719)) )
))
(declare-fun lt!1484047 () tuple2!43526)

(declare-fun isEmpty!26991 (List!45719) Bool)

(assert (=> d!1230932 (= c!712333 (isEmpty!26991 (_1!24897 lt!1484047)))))

(declare-fun findLongestMatch!1476 (Regex!12451 List!45719) tuple2!43526)

(assert (=> d!1230932 (= lt!1484047 (findLongestMatch!1476 (regex!7546 r!4097) input!3316))))

(assert (=> d!1230932 (ruleValid!3270 thiss!25889 r!4097)))

(assert (=> d!1230932 (= (maxPrefixOneRule!3168 thiss!25889 r!4097 input!3316) lt!1484043)))

(declare-fun b!4165358 () Bool)

(assert (=> b!4165358 (= e!2585848 None!9759)))

(declare-fun b!4165359 () Bool)

(declare-fun res!1706549 () Bool)

(assert (=> b!4165359 (=> (not res!1706549) (not e!2585847))))

(assert (=> b!4165359 (= res!1706549 (= (rule!10600 (_1!24895 (get!14822 lt!1484043))) r!4097))))

(declare-fun b!4165360 () Bool)

(declare-fun res!1706550 () Bool)

(assert (=> b!4165360 (=> (not res!1706550) (not e!2585847))))

(assert (=> b!4165360 (= res!1706550 (< (size!33502 (_2!24895 (get!14822 lt!1484043))) (size!33502 input!3316)))))

(declare-fun b!4165361 () Bool)

(assert (=> b!4165361 (= e!2585849 e!2585847)))

(declare-fun res!1706544 () Bool)

(assert (=> b!4165361 (=> (not res!1706544) (not e!2585847))))

(declare-fun charsOf!5025 (Token!13838) BalanceConc!27108)

(assert (=> b!4165361 (= res!1706544 (matchR!6196 (regex!7546 r!4097) (list!16509 (charsOf!5025 (_1!24895 (get!14822 lt!1484043))))))))

(declare-fun b!4165362 () Bool)

(declare-fun e!2585846 () Bool)

(declare-fun findLongestMatchInner!1563 (Regex!12451 List!45719 Int List!45719 List!45719 Int) tuple2!43526)

(assert (=> b!4165362 (= e!2585846 (matchR!6196 (regex!7546 r!4097) (_1!24897 (findLongestMatchInner!1563 (regex!7546 r!4097) Nil!45595 (size!33502 Nil!45595) input!3316 input!3316 (size!33502 input!3316)))))))

(declare-fun b!4165363 () Bool)

(declare-fun size!33504 (BalanceConc!27108) Int)

(assert (=> b!4165363 (= e!2585848 (Some!9759 (tuple2!43523 (Token!13839 (apply!10527 (transformation!7546 r!4097) (seqFromList!5579 (_1!24897 lt!1484047))) r!4097 (size!33504 (seqFromList!5579 (_1!24897 lt!1484047))) (_1!24897 lt!1484047)) (_2!24897 lt!1484047))))))

(declare-fun lt!1484046 () Unit!64687)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1536 (Regex!12451 List!45719) Unit!64687)

(assert (=> b!4165363 (= lt!1484046 (longestMatchIsAcceptedByMatchOrIsEmpty!1536 (regex!7546 r!4097) input!3316))))

(declare-fun res!1706546 () Bool)

(assert (=> b!4165363 (= res!1706546 (isEmpty!26991 (_1!24897 (findLongestMatchInner!1563 (regex!7546 r!4097) Nil!45595 (size!33502 Nil!45595) input!3316 input!3316 (size!33502 input!3316)))))))

(assert (=> b!4165363 (=> res!1706546 e!2585846)))

(assert (=> b!4165363 e!2585846))

(declare-fun lt!1484044 () Unit!64687)

(assert (=> b!4165363 (= lt!1484044 lt!1484046)))

(declare-fun lt!1484045 () Unit!64687)

(assert (=> b!4165363 (= lt!1484045 (lemmaSemiInverse!2320 (transformation!7546 r!4097) (seqFromList!5579 (_1!24897 lt!1484047))))))

(declare-fun b!4165364 () Bool)

(declare-fun res!1706548 () Bool)

(assert (=> b!4165364 (=> (not res!1706548) (not e!2585847))))

(assert (=> b!4165364 (= res!1706548 (= (++!11662 (list!16509 (charsOf!5025 (_1!24895 (get!14822 lt!1484043)))) (_2!24895 (get!14822 lt!1484043))) input!3316))))

(assert (= (and d!1230932 c!712333) b!4165358))

(assert (= (and d!1230932 (not c!712333)) b!4165363))

(assert (= (and b!4165363 (not res!1706546)) b!4165362))

(assert (= (and d!1230932 (not res!1706545)) b!4165361))

(assert (= (and b!4165361 res!1706544) b!4165364))

(assert (= (and b!4165364 res!1706548) b!4165360))

(assert (= (and b!4165360 res!1706550) b!4165359))

(assert (= (and b!4165359 res!1706549) b!4165356))

(assert (= (and b!4165356 res!1706547) b!4165357))

(declare-fun m!4757427 () Bool)

(assert (=> b!4165361 m!4757427))

(declare-fun m!4757429 () Bool)

(assert (=> b!4165361 m!4757429))

(assert (=> b!4165361 m!4757429))

(declare-fun m!4757431 () Bool)

(assert (=> b!4165361 m!4757431))

(assert (=> b!4165361 m!4757431))

(declare-fun m!4757433 () Bool)

(assert (=> b!4165361 m!4757433))

(assert (=> b!4165356 m!4757427))

(declare-fun m!4757435 () Bool)

(assert (=> b!4165356 m!4757435))

(assert (=> b!4165356 m!4757435))

(declare-fun m!4757437 () Bool)

(assert (=> b!4165356 m!4757437))

(assert (=> b!4165357 m!4757427))

(declare-fun m!4757439 () Bool)

(assert (=> b!4165357 m!4757439))

(assert (=> b!4165364 m!4757427))

(assert (=> b!4165364 m!4757429))

(assert (=> b!4165364 m!4757429))

(assert (=> b!4165364 m!4757431))

(assert (=> b!4165364 m!4757431))

(declare-fun m!4757441 () Bool)

(assert (=> b!4165364 m!4757441))

(assert (=> b!4165363 m!4757369))

(declare-fun m!4757443 () Bool)

(assert (=> b!4165363 m!4757443))

(declare-fun m!4757445 () Bool)

(assert (=> b!4165363 m!4757445))

(assert (=> b!4165363 m!4757369))

(declare-fun m!4757447 () Bool)

(assert (=> b!4165363 m!4757447))

(declare-fun m!4757449 () Bool)

(assert (=> b!4165363 m!4757449))

(assert (=> b!4165363 m!4757443))

(declare-fun m!4757451 () Bool)

(assert (=> b!4165363 m!4757451))

(declare-fun m!4757453 () Bool)

(assert (=> b!4165363 m!4757453))

(assert (=> b!4165363 m!4757445))

(assert (=> b!4165363 m!4757443))

(declare-fun m!4757455 () Bool)

(assert (=> b!4165363 m!4757455))

(assert (=> b!4165363 m!4757443))

(declare-fun m!4757457 () Bool)

(assert (=> b!4165363 m!4757457))

(declare-fun m!4757459 () Bool)

(assert (=> d!1230932 m!4757459))

(declare-fun m!4757461 () Bool)

(assert (=> d!1230932 m!4757461))

(declare-fun m!4757463 () Bool)

(assert (=> d!1230932 m!4757463))

(assert (=> d!1230932 m!4757187))

(assert (=> b!4165362 m!4757445))

(assert (=> b!4165362 m!4757369))

(assert (=> b!4165362 m!4757445))

(assert (=> b!4165362 m!4757369))

(assert (=> b!4165362 m!4757447))

(declare-fun m!4757465 () Bool)

(assert (=> b!4165362 m!4757465))

(assert (=> b!4165359 m!4757427))

(assert (=> b!4165360 m!4757427))

(declare-fun m!4757467 () Bool)

(assert (=> b!4165360 m!4757467))

(assert (=> b!4165360 m!4757369))

(assert (=> b!4165047 d!1230932))

(declare-fun d!1230956 () Bool)

(assert (=> d!1230956 (= (apply!10527 (transformation!7546 r!4097) lt!1483950) (dynLambda!19518 (toValue!10214 (transformation!7546 r!4097)) lt!1483950))))

(declare-fun b_lambda!122295 () Bool)

(assert (=> (not b_lambda!122295) (not d!1230956)))

(assert (=> d!1230956 t!343944))

(declare-fun b_and!324863 () Bool)

(assert (= b_and!324835 (and (=> t!343944 result!303812) b_and!324863)))

(assert (=> d!1230956 t!343946))

(declare-fun b_and!324865 () Bool)

(assert (= b_and!324837 (and (=> t!343946 result!303816) b_and!324865)))

(assert (=> d!1230956 t!343948))

(declare-fun b_and!324867 () Bool)

(assert (= b_and!324839 (and (=> t!343948 result!303818) b_and!324867)))

(assert (=> d!1230956 m!4757353))

(assert (=> b!4165047 d!1230956))

(declare-fun d!1230958 () Bool)

(assert (=> d!1230958 (= (inv!60112 (tag!8410 r!4097)) (= (mod (str.len (value!235583 (tag!8410 r!4097))) 2) 0))))

(assert (=> b!4165058 d!1230958))

(declare-fun d!1230960 () Bool)

(declare-fun res!1706551 () Bool)

(declare-fun e!2585860 () Bool)

(assert (=> d!1230960 (=> (not res!1706551) (not e!2585860))))

(assert (=> d!1230960 (= res!1706551 (semiInverseModEq!3274 (toChars!10073 (transformation!7546 r!4097)) (toValue!10214 (transformation!7546 r!4097))))))

(assert (=> d!1230960 (= (inv!60114 (transformation!7546 r!4097)) e!2585860)))

(declare-fun b!4165391 () Bool)

(assert (=> b!4165391 (= e!2585860 (equivClasses!3173 (toChars!10073 (transformation!7546 r!4097)) (toValue!10214 (transformation!7546 r!4097))))))

(assert (= (and d!1230960 res!1706551) b!4165391))

(declare-fun m!4757469 () Bool)

(assert (=> d!1230960 m!4757469))

(declare-fun m!4757471 () Bool)

(assert (=> b!4165391 m!4757471))

(assert (=> b!4165058 d!1230960))

(declare-fun d!1230962 () Bool)

(declare-fun lt!1484048 () Int)

(assert (=> d!1230962 (>= lt!1484048 0)))

(declare-fun e!2585861 () Int)

(assert (=> d!1230962 (= lt!1484048 e!2585861)))

(declare-fun c!712334 () Bool)

(assert (=> d!1230962 (= c!712334 ((_ is Nil!45595) pBis!100))))

(assert (=> d!1230962 (= (size!33502 pBis!100) lt!1484048)))

(declare-fun b!4165392 () Bool)

(assert (=> b!4165392 (= e!2585861 0)))

(declare-fun b!4165393 () Bool)

(assert (=> b!4165393 (= e!2585861 (+ 1 (size!33502 (t!343934 pBis!100))))))

(assert (= (and d!1230962 c!712334) b!4165392))

(assert (= (and d!1230962 (not c!712334)) b!4165393))

(declare-fun m!4757473 () Bool)

(assert (=> b!4165393 m!4757473))

(assert (=> b!4165051 d!1230962))

(declare-fun b!4165394 () Bool)

(declare-fun e!2585863 () Bool)

(declare-fun e!2585862 () Bool)

(assert (=> b!4165394 (= e!2585863 e!2585862)))

(declare-fun res!1706554 () Bool)

(assert (=> b!4165394 (=> (not res!1706554) (not e!2585862))))

(assert (=> b!4165394 (= res!1706554 (not ((_ is Nil!45595) input!3316)))))

(declare-fun b!4165395 () Bool)

(declare-fun res!1706553 () Bool)

(assert (=> b!4165395 (=> (not res!1706553) (not e!2585862))))

(assert (=> b!4165395 (= res!1706553 (= (head!8842 p!2942) (head!8842 input!3316)))))

(declare-fun d!1230964 () Bool)

(declare-fun e!2585864 () Bool)

(assert (=> d!1230964 e!2585864))

(declare-fun res!1706552 () Bool)

(assert (=> d!1230964 (=> res!1706552 e!2585864)))

(declare-fun lt!1484049 () Bool)

(assert (=> d!1230964 (= res!1706552 (not lt!1484049))))

(assert (=> d!1230964 (= lt!1484049 e!2585863)))

(declare-fun res!1706555 () Bool)

(assert (=> d!1230964 (=> res!1706555 e!2585863)))

(assert (=> d!1230964 (= res!1706555 ((_ is Nil!45595) p!2942))))

(assert (=> d!1230964 (= (isPrefix!4403 p!2942 input!3316) lt!1484049)))

(declare-fun b!4165397 () Bool)

(assert (=> b!4165397 (= e!2585864 (>= (size!33502 input!3316) (size!33502 p!2942)))))

(declare-fun b!4165396 () Bool)

(assert (=> b!4165396 (= e!2585862 (isPrefix!4403 (tail!6689 p!2942) (tail!6689 input!3316)))))

(assert (= (and d!1230964 (not res!1706555)) b!4165394))

(assert (= (and b!4165394 res!1706554) b!4165395))

(assert (= (and b!4165395 res!1706553) b!4165396))

(assert (= (and d!1230964 (not res!1706552)) b!4165397))

(declare-fun m!4757475 () Bool)

(assert (=> b!4165395 m!4757475))

(assert (=> b!4165395 m!4757375))

(assert (=> b!4165397 m!4757369))

(assert (=> b!4165397 m!4757159))

(declare-fun m!4757477 () Bool)

(assert (=> b!4165396 m!4757477))

(assert (=> b!4165396 m!4757371))

(assert (=> b!4165396 m!4757477))

(assert (=> b!4165396 m!4757371))

(declare-fun m!4757479 () Bool)

(assert (=> b!4165396 m!4757479))

(assert (=> b!4165062 d!1230964))

(declare-fun b!4165398 () Bool)

(declare-fun e!2585866 () Bool)

(declare-fun e!2585865 () Bool)

(assert (=> b!4165398 (= e!2585866 e!2585865)))

(declare-fun res!1706558 () Bool)

(assert (=> b!4165398 (=> (not res!1706558) (not e!2585865))))

(assert (=> b!4165398 (= res!1706558 (not ((_ is Nil!45595) input!3316)))))

(declare-fun b!4165399 () Bool)

(declare-fun res!1706557 () Bool)

(assert (=> b!4165399 (=> (not res!1706557) (not e!2585865))))

(assert (=> b!4165399 (= res!1706557 (= (head!8842 pBis!100) (head!8842 input!3316)))))

(declare-fun d!1230966 () Bool)

(declare-fun e!2585867 () Bool)

(assert (=> d!1230966 e!2585867))

(declare-fun res!1706556 () Bool)

(assert (=> d!1230966 (=> res!1706556 e!2585867)))

(declare-fun lt!1484050 () Bool)

(assert (=> d!1230966 (= res!1706556 (not lt!1484050))))

(assert (=> d!1230966 (= lt!1484050 e!2585866)))

(declare-fun res!1706559 () Bool)

(assert (=> d!1230966 (=> res!1706559 e!2585866)))

(assert (=> d!1230966 (= res!1706559 ((_ is Nil!45595) pBis!100))))

(assert (=> d!1230966 (= (isPrefix!4403 pBis!100 input!3316) lt!1484050)))

(declare-fun b!4165401 () Bool)

(assert (=> b!4165401 (= e!2585867 (>= (size!33502 input!3316) (size!33502 pBis!100)))))

(declare-fun b!4165400 () Bool)

(assert (=> b!4165400 (= e!2585865 (isPrefix!4403 (tail!6689 pBis!100) (tail!6689 input!3316)))))

(assert (= (and d!1230966 (not res!1706559)) b!4165398))

(assert (= (and b!4165398 res!1706558) b!4165399))

(assert (= (and b!4165399 res!1706557) b!4165400))

(assert (= (and d!1230966 (not res!1706556)) b!4165401))

(declare-fun m!4757481 () Bool)

(assert (=> b!4165399 m!4757481))

(assert (=> b!4165399 m!4757375))

(assert (=> b!4165401 m!4757369))

(assert (=> b!4165401 m!4757167))

(declare-fun m!4757483 () Bool)

(assert (=> b!4165400 m!4757483))

(assert (=> b!4165400 m!4757371))

(assert (=> b!4165400 m!4757483))

(assert (=> b!4165400 m!4757371))

(declare-fun m!4757485 () Bool)

(assert (=> b!4165400 m!4757485))

(assert (=> b!4165050 d!1230966))

(declare-fun b!4165430 () Bool)

(declare-fun res!1706576 () Bool)

(declare-fun e!2585882 () Bool)

(assert (=> b!4165430 (=> res!1706576 e!2585882)))

(declare-fun e!2585886 () Bool)

(assert (=> b!4165430 (= res!1706576 e!2585886)))

(declare-fun res!1706581 () Bool)

(assert (=> b!4165430 (=> (not res!1706581) (not e!2585886))))

(declare-fun lt!1484053 () Bool)

(assert (=> b!4165430 (= res!1706581 lt!1484053)))

(declare-fun b!4165431 () Bool)

(declare-fun e!2585888 () Bool)

(assert (=> b!4165431 (= e!2585888 (not (= (head!8842 p!2942) (c!712289 (regex!7546 r!4097)))))))

(declare-fun d!1230968 () Bool)

(declare-fun e!2585884 () Bool)

(assert (=> d!1230968 e!2585884))

(declare-fun c!712343 () Bool)

(assert (=> d!1230968 (= c!712343 ((_ is EmptyExpr!12451) (regex!7546 r!4097)))))

(declare-fun e!2585883 () Bool)

(assert (=> d!1230968 (= lt!1484053 e!2585883)))

(declare-fun c!712341 () Bool)

(assert (=> d!1230968 (= c!712341 (isEmpty!26991 p!2942))))

(assert (=> d!1230968 (validRegex!5575 (regex!7546 r!4097))))

(assert (=> d!1230968 (= (matchR!6196 (regex!7546 r!4097) p!2942) lt!1484053)))

(declare-fun bm!290975 () Bool)

(declare-fun call!290980 () Bool)

(assert (=> bm!290975 (= call!290980 (isEmpty!26991 p!2942))))

(declare-fun b!4165432 () Bool)

(declare-fun e!2585885 () Bool)

(assert (=> b!4165432 (= e!2585885 e!2585888)))

(declare-fun res!1706577 () Bool)

(assert (=> b!4165432 (=> res!1706577 e!2585888)))

(assert (=> b!4165432 (= res!1706577 call!290980)))

(declare-fun b!4165433 () Bool)

(declare-fun res!1706578 () Bool)

(assert (=> b!4165433 (=> res!1706578 e!2585888)))

(assert (=> b!4165433 (= res!1706578 (not (isEmpty!26991 (tail!6689 p!2942))))))

(declare-fun b!4165434 () Bool)

(assert (=> b!4165434 (= e!2585882 e!2585885)))

(declare-fun res!1706582 () Bool)

(assert (=> b!4165434 (=> (not res!1706582) (not e!2585885))))

(assert (=> b!4165434 (= res!1706582 (not lt!1484053))))

(declare-fun b!4165435 () Bool)

(assert (=> b!4165435 (= e!2585884 (= lt!1484053 call!290980))))

(declare-fun b!4165436 () Bool)

(assert (=> b!4165436 (= e!2585886 (= (head!8842 p!2942) (c!712289 (regex!7546 r!4097))))))

(declare-fun b!4165437 () Bool)

(declare-fun e!2585887 () Bool)

(assert (=> b!4165437 (= e!2585884 e!2585887)))

(declare-fun c!712342 () Bool)

(assert (=> b!4165437 (= c!712342 ((_ is EmptyLang!12451) (regex!7546 r!4097)))))

(declare-fun b!4165438 () Bool)

(declare-fun res!1706580 () Bool)

(assert (=> b!4165438 (=> res!1706580 e!2585882)))

(assert (=> b!4165438 (= res!1706580 (not ((_ is ElementMatch!12451) (regex!7546 r!4097))))))

(assert (=> b!4165438 (= e!2585887 e!2585882)))

(declare-fun b!4165439 () Bool)

(declare-fun nullable!4365 (Regex!12451) Bool)

(assert (=> b!4165439 (= e!2585883 (nullable!4365 (regex!7546 r!4097)))))

(declare-fun b!4165440 () Bool)

(declare-fun res!1706583 () Bool)

(assert (=> b!4165440 (=> (not res!1706583) (not e!2585886))))

(assert (=> b!4165440 (= res!1706583 (isEmpty!26991 (tail!6689 p!2942)))))

(declare-fun b!4165441 () Bool)

(assert (=> b!4165441 (= e!2585887 (not lt!1484053))))

(declare-fun b!4165442 () Bool)

(declare-fun derivativeStep!3757 (Regex!12451 C!25092) Regex!12451)

(assert (=> b!4165442 (= e!2585883 (matchR!6196 (derivativeStep!3757 (regex!7546 r!4097) (head!8842 p!2942)) (tail!6689 p!2942)))))

(declare-fun b!4165443 () Bool)

(declare-fun res!1706579 () Bool)

(assert (=> b!4165443 (=> (not res!1706579) (not e!2585886))))

(assert (=> b!4165443 (= res!1706579 (not call!290980))))

(assert (= (and d!1230968 c!712341) b!4165439))

(assert (= (and d!1230968 (not c!712341)) b!4165442))

(assert (= (and d!1230968 c!712343) b!4165435))

(assert (= (and d!1230968 (not c!712343)) b!4165437))

(assert (= (and b!4165437 c!712342) b!4165441))

(assert (= (and b!4165437 (not c!712342)) b!4165438))

(assert (= (and b!4165438 (not res!1706580)) b!4165430))

(assert (= (and b!4165430 res!1706581) b!4165443))

(assert (= (and b!4165443 res!1706579) b!4165440))

(assert (= (and b!4165440 res!1706583) b!4165436))

(assert (= (and b!4165430 (not res!1706576)) b!4165434))

(assert (= (and b!4165434 res!1706582) b!4165432))

(assert (= (and b!4165432 (not res!1706577)) b!4165433))

(assert (= (and b!4165433 (not res!1706578)) b!4165431))

(assert (= (or b!4165435 b!4165432 b!4165443) bm!290975))

(assert (=> b!4165433 m!4757477))

(assert (=> b!4165433 m!4757477))

(declare-fun m!4757487 () Bool)

(assert (=> b!4165433 m!4757487))

(declare-fun m!4757489 () Bool)

(assert (=> b!4165439 m!4757489))

(assert (=> b!4165436 m!4757475))

(assert (=> b!4165431 m!4757475))

(assert (=> b!4165442 m!4757475))

(assert (=> b!4165442 m!4757475))

(declare-fun m!4757491 () Bool)

(assert (=> b!4165442 m!4757491))

(assert (=> b!4165442 m!4757477))

(assert (=> b!4165442 m!4757491))

(assert (=> b!4165442 m!4757477))

(declare-fun m!4757493 () Bool)

(assert (=> b!4165442 m!4757493))

(declare-fun m!4757495 () Bool)

(assert (=> bm!290975 m!4757495))

(assert (=> b!4165440 m!4757477))

(assert (=> b!4165440 m!4757477))

(assert (=> b!4165440 m!4757487))

(assert (=> d!1230968 m!4757495))

(assert (=> d!1230968 m!4757193))

(assert (=> b!4165061 d!1230968))

(declare-fun d!1230970 () Bool)

(declare-fun res!1706588 () Bool)

(declare-fun e!2585891 () Bool)

(assert (=> d!1230970 (=> (not res!1706588) (not e!2585891))))

(assert (=> d!1230970 (= res!1706588 (validRegex!5575 (regex!7546 r!4097)))))

(assert (=> d!1230970 (= (ruleValid!3270 thiss!25889 r!4097) e!2585891)))

(declare-fun b!4165448 () Bool)

(declare-fun res!1706589 () Bool)

(assert (=> b!4165448 (=> (not res!1706589) (not e!2585891))))

(assert (=> b!4165448 (= res!1706589 (not (nullable!4365 (regex!7546 r!4097))))))

(declare-fun b!4165449 () Bool)

(assert (=> b!4165449 (= e!2585891 (not (= (tag!8410 r!4097) (String!52746 ""))))))

(assert (= (and d!1230970 res!1706588) b!4165448))

(assert (= (and b!4165448 res!1706589) b!4165449))

(assert (=> d!1230970 m!4757193))

(assert (=> b!4165448 m!4757489))

(assert (=> b!4165061 d!1230970))

(declare-fun d!1230972 () Bool)

(assert (=> d!1230972 (ruleValid!3270 thiss!25889 r!4097)))

(declare-fun lt!1484056 () Unit!64687)

(declare-fun choose!25506 (LexerInterface!7139 Rule!14892 List!45721) Unit!64687)

(assert (=> d!1230972 (= lt!1484056 (choose!25506 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1230972 (contains!9341 rules!3820 r!4097)))

(assert (=> d!1230972 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2310 thiss!25889 r!4097 rules!3820) lt!1484056)))

(declare-fun bs!595791 () Bool)

(assert (= bs!595791 d!1230972))

(assert (=> bs!595791 m!4757187))

(declare-fun m!4757497 () Bool)

(assert (=> bs!595791 m!4757497))

(assert (=> bs!595791 m!4757165))

(assert (=> b!4165061 d!1230972))

(declare-fun d!1230974 () Bool)

(assert (=> d!1230974 (= (isEmpty!26987 rules!3820) ((_ is Nil!45597) rules!3820))))

(assert (=> b!4165064 d!1230974))

(declare-fun d!1230976 () Bool)

(assert (=> d!1230976 (= (inv!60112 (tag!8410 (h!51017 rules!3820))) (= (mod (str.len (value!235583 (tag!8410 (h!51017 rules!3820)))) 2) 0))))

(assert (=> b!4165054 d!1230976))

(declare-fun d!1230978 () Bool)

(declare-fun res!1706590 () Bool)

(declare-fun e!2585892 () Bool)

(assert (=> d!1230978 (=> (not res!1706590) (not e!2585892))))

(assert (=> d!1230978 (= res!1706590 (semiInverseModEq!3274 (toChars!10073 (transformation!7546 (h!51017 rules!3820))) (toValue!10214 (transformation!7546 (h!51017 rules!3820)))))))

(assert (=> d!1230978 (= (inv!60114 (transformation!7546 (h!51017 rules!3820))) e!2585892)))

(declare-fun b!4165450 () Bool)

(assert (=> b!4165450 (= e!2585892 (equivClasses!3173 (toChars!10073 (transformation!7546 (h!51017 rules!3820))) (toValue!10214 (transformation!7546 (h!51017 rules!3820)))))))

(assert (= (and d!1230978 res!1706590) b!4165450))

(declare-fun m!4757499 () Bool)

(assert (=> d!1230978 m!4757499))

(declare-fun m!4757501 () Bool)

(assert (=> b!4165450 m!4757501))

(assert (=> b!4165054 d!1230978))

(declare-fun d!1230980 () Bool)

(declare-fun lt!1484059 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7088 (List!45721) (InoxSet Rule!14892))

(assert (=> d!1230980 (= lt!1484059 (select (content!7088 rules!3820) rBis!161))))

(declare-fun e!2585897 () Bool)

(assert (=> d!1230980 (= lt!1484059 e!2585897)))

(declare-fun res!1706596 () Bool)

(assert (=> d!1230980 (=> (not res!1706596) (not e!2585897))))

(assert (=> d!1230980 (= res!1706596 ((_ is Cons!45597) rules!3820))))

(assert (=> d!1230980 (= (contains!9341 rules!3820 rBis!161) lt!1484059)))

(declare-fun b!4165455 () Bool)

(declare-fun e!2585898 () Bool)

(assert (=> b!4165455 (= e!2585897 e!2585898)))

(declare-fun res!1706595 () Bool)

(assert (=> b!4165455 (=> res!1706595 e!2585898)))

(assert (=> b!4165455 (= res!1706595 (= (h!51017 rules!3820) rBis!161))))

(declare-fun b!4165456 () Bool)

(assert (=> b!4165456 (= e!2585898 (contains!9341 (t!343936 rules!3820) rBis!161))))

(assert (= (and d!1230980 res!1706596) b!4165455))

(assert (= (and b!4165455 (not res!1706595)) b!4165456))

(declare-fun m!4757503 () Bool)

(assert (=> d!1230980 m!4757503))

(declare-fun m!4757505 () Bool)

(assert (=> d!1230980 m!4757505))

(declare-fun m!4757507 () Bool)

(assert (=> b!4165456 m!4757507))

(assert (=> b!4165065 d!1230980))

(declare-fun d!1230982 () Bool)

(declare-fun lt!1484060 () Bool)

(assert (=> d!1230982 (= lt!1484060 (select (content!7088 rules!3820) r!4097))))

(declare-fun e!2585899 () Bool)

(assert (=> d!1230982 (= lt!1484060 e!2585899)))

(declare-fun res!1706598 () Bool)

(assert (=> d!1230982 (=> (not res!1706598) (not e!2585899))))

(assert (=> d!1230982 (= res!1706598 ((_ is Cons!45597) rules!3820))))

(assert (=> d!1230982 (= (contains!9341 rules!3820 r!4097) lt!1484060)))

(declare-fun b!4165457 () Bool)

(declare-fun e!2585900 () Bool)

(assert (=> b!4165457 (= e!2585899 e!2585900)))

(declare-fun res!1706597 () Bool)

(assert (=> b!4165457 (=> res!1706597 e!2585900)))

(assert (=> b!4165457 (= res!1706597 (= (h!51017 rules!3820) r!4097))))

(declare-fun b!4165458 () Bool)

(assert (=> b!4165458 (= e!2585900 (contains!9341 (t!343936 rules!3820) r!4097))))

(assert (= (and d!1230982 res!1706598) b!4165457))

(assert (= (and b!4165457 (not res!1706597)) b!4165458))

(assert (=> d!1230982 m!4757503))

(declare-fun m!4757509 () Bool)

(assert (=> d!1230982 m!4757509))

(declare-fun m!4757511 () Bool)

(assert (=> b!4165458 m!4757511))

(assert (=> b!4165052 d!1230982))

(declare-fun b!4165477 () Bool)

(declare-fun e!2585921 () Bool)

(declare-fun call!290989 () Bool)

(assert (=> b!4165477 (= e!2585921 call!290989)))

(declare-fun b!4165478 () Bool)

(declare-fun e!2585915 () Bool)

(declare-fun call!290987 () Bool)

(assert (=> b!4165478 (= e!2585915 call!290987)))

(declare-fun b!4165479 () Bool)

(declare-fun res!1706609 () Bool)

(declare-fun e!2585917 () Bool)

(assert (=> b!4165479 (=> (not res!1706609) (not e!2585917))))

(declare-fun call!290988 () Bool)

(assert (=> b!4165479 (= res!1706609 call!290988)))

(declare-fun e!2585920 () Bool)

(assert (=> b!4165479 (= e!2585920 e!2585917)))

(declare-fun bm!290982 () Bool)

(assert (=> bm!290982 (= call!290987 call!290989)))

(declare-fun b!4165480 () Bool)

(assert (=> b!4165480 (= e!2585917 call!290987)))

(declare-fun b!4165481 () Bool)

(declare-fun res!1706613 () Bool)

(declare-fun e!2585919 () Bool)

(assert (=> b!4165481 (=> res!1706613 e!2585919)))

(assert (=> b!4165481 (= res!1706613 (not ((_ is Concat!20228) (regex!7546 r!4097))))))

(assert (=> b!4165481 (= e!2585920 e!2585919)))

(declare-fun b!4165482 () Bool)

(declare-fun e!2585916 () Bool)

(assert (=> b!4165482 (= e!2585916 e!2585921)))

(declare-fun res!1706612 () Bool)

(assert (=> b!4165482 (= res!1706612 (not (nullable!4365 (reg!12780 (regex!7546 r!4097)))))))

(assert (=> b!4165482 (=> (not res!1706612) (not e!2585921))))

(declare-fun b!4165483 () Bool)

(assert (=> b!4165483 (= e!2585916 e!2585920)))

(declare-fun c!712348 () Bool)

(assert (=> b!4165483 (= c!712348 ((_ is Union!12451) (regex!7546 r!4097)))))

(declare-fun b!4165484 () Bool)

(assert (=> b!4165484 (= e!2585919 e!2585915)))

(declare-fun res!1706610 () Bool)

(assert (=> b!4165484 (=> (not res!1706610) (not e!2585915))))

(assert (=> b!4165484 (= res!1706610 call!290988)))

(declare-fun d!1230984 () Bool)

(declare-fun res!1706611 () Bool)

(declare-fun e!2585918 () Bool)

(assert (=> d!1230984 (=> res!1706611 e!2585918)))

(assert (=> d!1230984 (= res!1706611 ((_ is ElementMatch!12451) (regex!7546 r!4097)))))

(assert (=> d!1230984 (= (validRegex!5575 (regex!7546 r!4097)) e!2585918)))

(declare-fun c!712349 () Bool)

(declare-fun bm!290983 () Bool)

(assert (=> bm!290983 (= call!290989 (validRegex!5575 (ite c!712349 (reg!12780 (regex!7546 r!4097)) (ite c!712348 (regTwo!25415 (regex!7546 r!4097)) (regTwo!25414 (regex!7546 r!4097))))))))

(declare-fun b!4165485 () Bool)

(assert (=> b!4165485 (= e!2585918 e!2585916)))

(assert (=> b!4165485 (= c!712349 ((_ is Star!12451) (regex!7546 r!4097)))))

(declare-fun bm!290984 () Bool)

(assert (=> bm!290984 (= call!290988 (validRegex!5575 (ite c!712348 (regOne!25415 (regex!7546 r!4097)) (regOne!25414 (regex!7546 r!4097)))))))

(assert (= (and d!1230984 (not res!1706611)) b!4165485))

(assert (= (and b!4165485 c!712349) b!4165482))

(assert (= (and b!4165485 (not c!712349)) b!4165483))

(assert (= (and b!4165482 res!1706612) b!4165477))

(assert (= (and b!4165483 c!712348) b!4165479))

(assert (= (and b!4165483 (not c!712348)) b!4165481))

(assert (= (and b!4165479 res!1706609) b!4165480))

(assert (= (and b!4165481 (not res!1706613)) b!4165484))

(assert (= (and b!4165484 res!1706610) b!4165478))

(assert (= (or b!4165480 b!4165478) bm!290982))

(assert (= (or b!4165479 b!4165484) bm!290984))

(assert (= (or b!4165477 bm!290982) bm!290983))

(declare-fun m!4757513 () Bool)

(assert (=> b!4165482 m!4757513))

(declare-fun m!4757515 () Bool)

(assert (=> bm!290983 m!4757515))

(declare-fun m!4757517 () Bool)

(assert (=> bm!290984 m!4757517))

(assert (=> b!4165063 d!1230984))

(declare-fun d!1230986 () Bool)

(declare-fun res!1706614 () Bool)

(declare-fun e!2585922 () Bool)

(assert (=> d!1230986 (=> (not res!1706614) (not e!2585922))))

(assert (=> d!1230986 (= res!1706614 (validRegex!5575 (regex!7546 rBis!161)))))

(assert (=> d!1230986 (= (ruleValid!3270 thiss!25889 rBis!161) e!2585922)))

(declare-fun b!4165486 () Bool)

(declare-fun res!1706615 () Bool)

(assert (=> b!4165486 (=> (not res!1706615) (not e!2585922))))

(assert (=> b!4165486 (= res!1706615 (not (nullable!4365 (regex!7546 rBis!161))))))

(declare-fun b!4165487 () Bool)

(assert (=> b!4165487 (= e!2585922 (not (= (tag!8410 rBis!161) (String!52746 ""))))))

(assert (= (and d!1230986 res!1706614) b!4165486))

(assert (= (and b!4165486 res!1706615) b!4165487))

(assert (=> d!1230986 m!4757143))

(declare-fun m!4757519 () Bool)

(assert (=> b!4165486 m!4757519))

(assert (=> b!4165063 d!1230986))

(declare-fun d!1230988 () Bool)

(assert (=> d!1230988 (ruleValid!3270 thiss!25889 rBis!161)))

(declare-fun lt!1484061 () Unit!64687)

(assert (=> d!1230988 (= lt!1484061 (choose!25506 thiss!25889 rBis!161 rules!3820))))

(assert (=> d!1230988 (contains!9341 rules!3820 rBis!161)))

(assert (=> d!1230988 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2310 thiss!25889 rBis!161 rules!3820) lt!1484061)))

(declare-fun bs!595792 () Bool)

(assert (= bs!595792 d!1230988))

(assert (=> bs!595792 m!4757195))

(declare-fun m!4757521 () Bool)

(assert (=> bs!595792 m!4757521))

(assert (=> bs!595792 m!4757141))

(assert (=> b!4165063 d!1230988))

(declare-fun b!4165488 () Bool)

(declare-fun e!2585929 () Bool)

(declare-fun call!290992 () Bool)

(assert (=> b!4165488 (= e!2585929 call!290992)))

(declare-fun b!4165489 () Bool)

(declare-fun e!2585923 () Bool)

(declare-fun call!290990 () Bool)

(assert (=> b!4165489 (= e!2585923 call!290990)))

(declare-fun b!4165490 () Bool)

(declare-fun res!1706616 () Bool)

(declare-fun e!2585925 () Bool)

(assert (=> b!4165490 (=> (not res!1706616) (not e!2585925))))

(declare-fun call!290991 () Bool)

(assert (=> b!4165490 (= res!1706616 call!290991)))

(declare-fun e!2585928 () Bool)

(assert (=> b!4165490 (= e!2585928 e!2585925)))

(declare-fun bm!290985 () Bool)

(assert (=> bm!290985 (= call!290990 call!290992)))

(declare-fun b!4165491 () Bool)

(assert (=> b!4165491 (= e!2585925 call!290990)))

(declare-fun b!4165492 () Bool)

(declare-fun res!1706620 () Bool)

(declare-fun e!2585927 () Bool)

(assert (=> b!4165492 (=> res!1706620 e!2585927)))

(assert (=> b!4165492 (= res!1706620 (not ((_ is Concat!20228) (regex!7546 rBis!161))))))

(assert (=> b!4165492 (= e!2585928 e!2585927)))

(declare-fun b!4165493 () Bool)

(declare-fun e!2585924 () Bool)

(assert (=> b!4165493 (= e!2585924 e!2585929)))

(declare-fun res!1706619 () Bool)

(assert (=> b!4165493 (= res!1706619 (not (nullable!4365 (reg!12780 (regex!7546 rBis!161)))))))

(assert (=> b!4165493 (=> (not res!1706619) (not e!2585929))))

(declare-fun b!4165494 () Bool)

(assert (=> b!4165494 (= e!2585924 e!2585928)))

(declare-fun c!712350 () Bool)

(assert (=> b!4165494 (= c!712350 ((_ is Union!12451) (regex!7546 rBis!161)))))

(declare-fun b!4165495 () Bool)

(assert (=> b!4165495 (= e!2585927 e!2585923)))

(declare-fun res!1706617 () Bool)

(assert (=> b!4165495 (=> (not res!1706617) (not e!2585923))))

(assert (=> b!4165495 (= res!1706617 call!290991)))

(declare-fun d!1230990 () Bool)

(declare-fun res!1706618 () Bool)

(declare-fun e!2585926 () Bool)

(assert (=> d!1230990 (=> res!1706618 e!2585926)))

(assert (=> d!1230990 (= res!1706618 ((_ is ElementMatch!12451) (regex!7546 rBis!161)))))

(assert (=> d!1230990 (= (validRegex!5575 (regex!7546 rBis!161)) e!2585926)))

(declare-fun bm!290986 () Bool)

(declare-fun c!712351 () Bool)

(assert (=> bm!290986 (= call!290992 (validRegex!5575 (ite c!712351 (reg!12780 (regex!7546 rBis!161)) (ite c!712350 (regTwo!25415 (regex!7546 rBis!161)) (regTwo!25414 (regex!7546 rBis!161))))))))

(declare-fun b!4165496 () Bool)

(assert (=> b!4165496 (= e!2585926 e!2585924)))

(assert (=> b!4165496 (= c!712351 ((_ is Star!12451) (regex!7546 rBis!161)))))

(declare-fun bm!290987 () Bool)

(assert (=> bm!290987 (= call!290991 (validRegex!5575 (ite c!712350 (regOne!25415 (regex!7546 rBis!161)) (regOne!25414 (regex!7546 rBis!161)))))))

(assert (= (and d!1230990 (not res!1706618)) b!4165496))

(assert (= (and b!4165496 c!712351) b!4165493))

(assert (= (and b!4165496 (not c!712351)) b!4165494))

(assert (= (and b!4165493 res!1706619) b!4165488))

(assert (= (and b!4165494 c!712350) b!4165490))

(assert (= (and b!4165494 (not c!712350)) b!4165492))

(assert (= (and b!4165490 res!1706616) b!4165491))

(assert (= (and b!4165492 (not res!1706620)) b!4165495))

(assert (= (and b!4165495 res!1706617) b!4165489))

(assert (= (or b!4165491 b!4165489) bm!290985))

(assert (= (or b!4165490 b!4165495) bm!290987))

(assert (= (or b!4165488 bm!290985) bm!290986))

(declare-fun m!4757523 () Bool)

(assert (=> b!4165493 m!4757523))

(declare-fun m!4757525 () Bool)

(assert (=> bm!290986 m!4757525))

(declare-fun m!4757527 () Bool)

(assert (=> bm!290987 m!4757527))

(assert (=> b!4165067 d!1230990))

(declare-fun b!4165497 () Bool)

(declare-fun res!1706621 () Bool)

(declare-fun e!2585930 () Bool)

(assert (=> b!4165497 (=> res!1706621 e!2585930)))

(declare-fun e!2585934 () Bool)

(assert (=> b!4165497 (= res!1706621 e!2585934)))

(declare-fun res!1706626 () Bool)

(assert (=> b!4165497 (=> (not res!1706626) (not e!2585934))))

(declare-fun lt!1484062 () Bool)

(assert (=> b!4165497 (= res!1706626 lt!1484062)))

(declare-fun b!4165498 () Bool)

(declare-fun e!2585936 () Bool)

(assert (=> b!4165498 (= e!2585936 (not (= (head!8842 pBis!100) (c!712289 (regex!7546 rBis!161)))))))

(declare-fun d!1230992 () Bool)

(declare-fun e!2585932 () Bool)

(assert (=> d!1230992 e!2585932))

(declare-fun c!712354 () Bool)

(assert (=> d!1230992 (= c!712354 ((_ is EmptyExpr!12451) (regex!7546 rBis!161)))))

(declare-fun e!2585931 () Bool)

(assert (=> d!1230992 (= lt!1484062 e!2585931)))

(declare-fun c!712352 () Bool)

(assert (=> d!1230992 (= c!712352 (isEmpty!26991 pBis!100))))

(assert (=> d!1230992 (validRegex!5575 (regex!7546 rBis!161))))

(assert (=> d!1230992 (= (matchR!6196 (regex!7546 rBis!161) pBis!100) lt!1484062)))

(declare-fun bm!290988 () Bool)

(declare-fun call!290993 () Bool)

(assert (=> bm!290988 (= call!290993 (isEmpty!26991 pBis!100))))

(declare-fun b!4165499 () Bool)

(declare-fun e!2585933 () Bool)

(assert (=> b!4165499 (= e!2585933 e!2585936)))

(declare-fun res!1706622 () Bool)

(assert (=> b!4165499 (=> res!1706622 e!2585936)))

(assert (=> b!4165499 (= res!1706622 call!290993)))

(declare-fun b!4165500 () Bool)

(declare-fun res!1706623 () Bool)

(assert (=> b!4165500 (=> res!1706623 e!2585936)))

(assert (=> b!4165500 (= res!1706623 (not (isEmpty!26991 (tail!6689 pBis!100))))))

(declare-fun b!4165501 () Bool)

(assert (=> b!4165501 (= e!2585930 e!2585933)))

(declare-fun res!1706627 () Bool)

(assert (=> b!4165501 (=> (not res!1706627) (not e!2585933))))

(assert (=> b!4165501 (= res!1706627 (not lt!1484062))))

(declare-fun b!4165502 () Bool)

(assert (=> b!4165502 (= e!2585932 (= lt!1484062 call!290993))))

(declare-fun b!4165503 () Bool)

(assert (=> b!4165503 (= e!2585934 (= (head!8842 pBis!100) (c!712289 (regex!7546 rBis!161))))))

(declare-fun b!4165504 () Bool)

(declare-fun e!2585935 () Bool)

(assert (=> b!4165504 (= e!2585932 e!2585935)))

(declare-fun c!712353 () Bool)

(assert (=> b!4165504 (= c!712353 ((_ is EmptyLang!12451) (regex!7546 rBis!161)))))

(declare-fun b!4165505 () Bool)

(declare-fun res!1706625 () Bool)

(assert (=> b!4165505 (=> res!1706625 e!2585930)))

(assert (=> b!4165505 (= res!1706625 (not ((_ is ElementMatch!12451) (regex!7546 rBis!161))))))

(assert (=> b!4165505 (= e!2585935 e!2585930)))

(declare-fun b!4165506 () Bool)

(assert (=> b!4165506 (= e!2585931 (nullable!4365 (regex!7546 rBis!161)))))

(declare-fun b!4165507 () Bool)

(declare-fun res!1706628 () Bool)

(assert (=> b!4165507 (=> (not res!1706628) (not e!2585934))))

(assert (=> b!4165507 (= res!1706628 (isEmpty!26991 (tail!6689 pBis!100)))))

(declare-fun b!4165508 () Bool)

(assert (=> b!4165508 (= e!2585935 (not lt!1484062))))

(declare-fun b!4165509 () Bool)

(assert (=> b!4165509 (= e!2585931 (matchR!6196 (derivativeStep!3757 (regex!7546 rBis!161) (head!8842 pBis!100)) (tail!6689 pBis!100)))))

(declare-fun b!4165510 () Bool)

(declare-fun res!1706624 () Bool)

(assert (=> b!4165510 (=> (not res!1706624) (not e!2585934))))

(assert (=> b!4165510 (= res!1706624 (not call!290993))))

(assert (= (and d!1230992 c!712352) b!4165506))

(assert (= (and d!1230992 (not c!712352)) b!4165509))

(assert (= (and d!1230992 c!712354) b!4165502))

(assert (= (and d!1230992 (not c!712354)) b!4165504))

(assert (= (and b!4165504 c!712353) b!4165508))

(assert (= (and b!4165504 (not c!712353)) b!4165505))

(assert (= (and b!4165505 (not res!1706625)) b!4165497))

(assert (= (and b!4165497 res!1706626) b!4165510))

(assert (= (and b!4165510 res!1706624) b!4165507))

(assert (= (and b!4165507 res!1706628) b!4165503))

(assert (= (and b!4165497 (not res!1706621)) b!4165501))

(assert (= (and b!4165501 res!1706627) b!4165499))

(assert (= (and b!4165499 (not res!1706622)) b!4165500))

(assert (= (and b!4165500 (not res!1706623)) b!4165498))

(assert (= (or b!4165502 b!4165499 b!4165510) bm!290988))

(assert (=> b!4165500 m!4757483))

(assert (=> b!4165500 m!4757483))

(declare-fun m!4757529 () Bool)

(assert (=> b!4165500 m!4757529))

(assert (=> b!4165506 m!4757519))

(assert (=> b!4165503 m!4757481))

(assert (=> b!4165498 m!4757481))

(assert (=> b!4165509 m!4757481))

(assert (=> b!4165509 m!4757481))

(declare-fun m!4757531 () Bool)

(assert (=> b!4165509 m!4757531))

(assert (=> b!4165509 m!4757483))

(assert (=> b!4165509 m!4757531))

(assert (=> b!4165509 m!4757483))

(declare-fun m!4757533 () Bool)

(assert (=> b!4165509 m!4757533))

(declare-fun m!4757535 () Bool)

(assert (=> bm!290988 m!4757535))

(assert (=> b!4165507 m!4757483))

(assert (=> b!4165507 m!4757483))

(assert (=> b!4165507 m!4757529))

(assert (=> d!1230992 m!4757535))

(assert (=> d!1230992 m!4757143))

(assert (=> b!4165067 d!1230992))

(declare-fun d!1230994 () Bool)

(assert (=> d!1230994 (not (matchR!6196 (regex!7546 rBis!161) pBis!100))))

(declare-fun lt!1484065 () Unit!64687)

(declare-fun choose!25507 (LexerInterface!7139 List!45721 Rule!14892 List!45719 List!45719 List!45719 Rule!14892) Unit!64687)

(assert (=> d!1230994 (= lt!1484065 (choose!25507 thiss!25889 rules!3820 r!4097 p!2942 input!3316 pBis!100 rBis!161))))

(assert (=> d!1230994 (isPrefix!4403 p!2942 input!3316)))

(assert (=> d!1230994 (= (lemmaMaxPrefixOutputsMaxPrefixInner!2 thiss!25889 rules!3820 r!4097 p!2942 input!3316 pBis!100 rBis!161) lt!1484065)))

(declare-fun bs!595793 () Bool)

(assert (= bs!595793 d!1230994))

(assert (=> bs!595793 m!4757145))

(declare-fun m!4757537 () Bool)

(assert (=> bs!595793 m!4757537))

(assert (=> bs!595793 m!4757169))

(assert (=> b!4165067 d!1230994))

(declare-fun b!4165529 () Bool)

(declare-fun res!1706645 () Bool)

(declare-fun e!2585943 () Bool)

(assert (=> b!4165529 (=> (not res!1706645) (not e!2585943))))

(declare-fun lt!1484076 () Option!9760)

(assert (=> b!4165529 (= res!1706645 (= (++!11662 (list!16509 (charsOf!5025 (_1!24895 (get!14822 lt!1484076)))) (_2!24895 (get!14822 lt!1484076))) input!3316))))

(declare-fun b!4165531 () Bool)

(declare-fun e!2585945 () Option!9760)

(declare-fun lt!1484077 () Option!9760)

(declare-fun lt!1484078 () Option!9760)

(assert (=> b!4165531 (= e!2585945 (ite (and ((_ is None!9759) lt!1484077) ((_ is None!9759) lt!1484078)) None!9759 (ite ((_ is None!9759) lt!1484078) lt!1484077 (ite ((_ is None!9759) lt!1484077) lt!1484078 (ite (>= (size!33501 (_1!24895 (v!40537 lt!1484077))) (size!33501 (_1!24895 (v!40537 lt!1484078)))) lt!1484077 lt!1484078)))))))

(declare-fun call!290996 () Option!9760)

(assert (=> b!4165531 (= lt!1484077 call!290996)))

(assert (=> b!4165531 (= lt!1484078 (maxPrefix!4223 thiss!25889 (t!343936 rules!3820) input!3316))))

(declare-fun b!4165532 () Bool)

(declare-fun e!2585944 () Bool)

(assert (=> b!4165532 (= e!2585944 e!2585943)))

(declare-fun res!1706644 () Bool)

(assert (=> b!4165532 (=> (not res!1706644) (not e!2585943))))

(declare-fun isDefined!7312 (Option!9760) Bool)

(assert (=> b!4165532 (= res!1706644 (isDefined!7312 lt!1484076))))

(declare-fun b!4165533 () Bool)

(declare-fun res!1706649 () Bool)

(assert (=> b!4165533 (=> (not res!1706649) (not e!2585943))))

(assert (=> b!4165533 (= res!1706649 (< (size!33502 (_2!24895 (get!14822 lt!1484076))) (size!33502 input!3316)))))

(declare-fun b!4165534 () Bool)

(assert (=> b!4165534 (= e!2585943 (contains!9341 rules!3820 (rule!10600 (_1!24895 (get!14822 lt!1484076)))))))

(declare-fun b!4165530 () Bool)

(declare-fun res!1706647 () Bool)

(assert (=> b!4165530 (=> (not res!1706647) (not e!2585943))))

(assert (=> b!4165530 (= res!1706647 (matchR!6196 (regex!7546 (rule!10600 (_1!24895 (get!14822 lt!1484076)))) (list!16509 (charsOf!5025 (_1!24895 (get!14822 lt!1484076))))))))

(declare-fun d!1230996 () Bool)

(assert (=> d!1230996 e!2585944))

(declare-fun res!1706646 () Bool)

(assert (=> d!1230996 (=> res!1706646 e!2585944)))

(assert (=> d!1230996 (= res!1706646 (isEmpty!26990 lt!1484076))))

(assert (=> d!1230996 (= lt!1484076 e!2585945)))

(declare-fun c!712357 () Bool)

(assert (=> d!1230996 (= c!712357 (and ((_ is Cons!45597) rules!3820) ((_ is Nil!45597) (t!343936 rules!3820))))))

(declare-fun lt!1484080 () Unit!64687)

(declare-fun lt!1484079 () Unit!64687)

(assert (=> d!1230996 (= lt!1484080 lt!1484079)))

(assert (=> d!1230996 (isPrefix!4403 input!3316 input!3316)))

(assert (=> d!1230996 (= lt!1484079 (lemmaIsPrefixRefl!2842 input!3316 input!3316))))

(declare-fun rulesValidInductive!2780 (LexerInterface!7139 List!45721) Bool)

(assert (=> d!1230996 (rulesValidInductive!2780 thiss!25889 rules!3820)))

(assert (=> d!1230996 (= (maxPrefix!4223 thiss!25889 rules!3820 input!3316) lt!1484076)))

(declare-fun b!4165535 () Bool)

(declare-fun res!1706643 () Bool)

(assert (=> b!4165535 (=> (not res!1706643) (not e!2585943))))

(assert (=> b!4165535 (= res!1706643 (= (list!16509 (charsOf!5025 (_1!24895 (get!14822 lt!1484076)))) (originalCharacters!7950 (_1!24895 (get!14822 lt!1484076)))))))

(declare-fun b!4165536 () Bool)

(declare-fun res!1706648 () Bool)

(assert (=> b!4165536 (=> (not res!1706648) (not e!2585943))))

(assert (=> b!4165536 (= res!1706648 (= (value!235609 (_1!24895 (get!14822 lt!1484076))) (apply!10527 (transformation!7546 (rule!10600 (_1!24895 (get!14822 lt!1484076)))) (seqFromList!5579 (originalCharacters!7950 (_1!24895 (get!14822 lt!1484076)))))))))

(declare-fun b!4165537 () Bool)

(assert (=> b!4165537 (= e!2585945 call!290996)))

(declare-fun bm!290991 () Bool)

(assert (=> bm!290991 (= call!290996 (maxPrefixOneRule!3168 thiss!25889 (h!51017 rules!3820) input!3316))))

(assert (= (and d!1230996 c!712357) b!4165537))

(assert (= (and d!1230996 (not c!712357)) b!4165531))

(assert (= (or b!4165537 b!4165531) bm!290991))

(assert (= (and d!1230996 (not res!1706646)) b!4165532))

(assert (= (and b!4165532 res!1706644) b!4165535))

(assert (= (and b!4165535 res!1706643) b!4165533))

(assert (= (and b!4165533 res!1706649) b!4165529))

(assert (= (and b!4165529 res!1706645) b!4165536))

(assert (= (and b!4165536 res!1706648) b!4165530))

(assert (= (and b!4165530 res!1706647) b!4165534))

(declare-fun m!4757539 () Bool)

(assert (=> b!4165535 m!4757539))

(declare-fun m!4757541 () Bool)

(assert (=> b!4165535 m!4757541))

(assert (=> b!4165535 m!4757541))

(declare-fun m!4757543 () Bool)

(assert (=> b!4165535 m!4757543))

(assert (=> b!4165536 m!4757539))

(declare-fun m!4757545 () Bool)

(assert (=> b!4165536 m!4757545))

(assert (=> b!4165536 m!4757545))

(declare-fun m!4757547 () Bool)

(assert (=> b!4165536 m!4757547))

(declare-fun m!4757549 () Bool)

(assert (=> bm!290991 m!4757549))

(declare-fun m!4757551 () Bool)

(assert (=> d!1230996 m!4757551))

(assert (=> d!1230996 m!4757153))

(assert (=> d!1230996 m!4757157))

(declare-fun m!4757553 () Bool)

(assert (=> d!1230996 m!4757553))

(declare-fun m!4757555 () Bool)

(assert (=> b!4165531 m!4757555))

(assert (=> b!4165530 m!4757539))

(assert (=> b!4165530 m!4757541))

(assert (=> b!4165530 m!4757541))

(assert (=> b!4165530 m!4757543))

(assert (=> b!4165530 m!4757543))

(declare-fun m!4757557 () Bool)

(assert (=> b!4165530 m!4757557))

(assert (=> b!4165534 m!4757539))

(declare-fun m!4757559 () Bool)

(assert (=> b!4165534 m!4757559))

(assert (=> b!4165529 m!4757539))

(assert (=> b!4165529 m!4757541))

(assert (=> b!4165529 m!4757541))

(assert (=> b!4165529 m!4757543))

(assert (=> b!4165529 m!4757543))

(declare-fun m!4757561 () Bool)

(assert (=> b!4165529 m!4757561))

(declare-fun m!4757563 () Bool)

(assert (=> b!4165532 m!4757563))

(assert (=> b!4165533 m!4757539))

(declare-fun m!4757565 () Bool)

(assert (=> b!4165533 m!4757565))

(assert (=> b!4165533 m!4757369))

(assert (=> b!4165057 d!1230996))

(declare-fun d!1230998 () Bool)

(declare-fun res!1706652 () Bool)

(declare-fun e!2585948 () Bool)

(assert (=> d!1230998 (=> (not res!1706652) (not e!2585948))))

(declare-fun rulesValid!2942 (LexerInterface!7139 List!45721) Bool)

(assert (=> d!1230998 (= res!1706652 (rulesValid!2942 thiss!25889 rules!3820))))

(assert (=> d!1230998 (= (rulesInvariant!6352 thiss!25889 rules!3820) e!2585948)))

(declare-fun b!4165540 () Bool)

(declare-datatypes ((List!45723 0))(
  ( (Nil!45599) (Cons!45599 (h!51019 String!52745) (t!343970 List!45723)) )
))
(declare-fun noDuplicateTag!3103 (LexerInterface!7139 List!45721 List!45723) Bool)

(assert (=> b!4165540 (= e!2585948 (noDuplicateTag!3103 thiss!25889 rules!3820 Nil!45599))))

(assert (= (and d!1230998 res!1706652) b!4165540))

(declare-fun m!4757567 () Bool)

(assert (=> d!1230998 m!4757567))

(declare-fun m!4757569 () Bool)

(assert (=> b!4165540 m!4757569))

(assert (=> b!4165066 d!1230998))

(declare-fun b!4165545 () Bool)

(declare-fun e!2585951 () Bool)

(declare-fun tp!1271923 () Bool)

(assert (=> b!4165545 (= e!2585951 (and tp_is_empty!21865 tp!1271923))))

(assert (=> b!4165048 (= tp!1271867 e!2585951)))

(assert (= (and b!4165048 ((_ is Cons!45595) (t!343934 p!2942))) b!4165545))

(declare-fun b!4165546 () Bool)

(declare-fun e!2585952 () Bool)

(declare-fun tp!1271924 () Bool)

(assert (=> b!4165546 (= e!2585952 (and tp_is_empty!21865 tp!1271924))))

(assert (=> b!4165059 (= tp!1271869 e!2585952)))

(assert (= (and b!4165059 ((_ is Cons!45595) (t!343934 input!3316))) b!4165546))

(declare-fun b!4165558 () Bool)

(declare-fun e!2585955 () Bool)

(declare-fun tp!1271935 () Bool)

(declare-fun tp!1271939 () Bool)

(assert (=> b!4165558 (= e!2585955 (and tp!1271935 tp!1271939))))

(declare-fun b!4165560 () Bool)

(declare-fun tp!1271937 () Bool)

(declare-fun tp!1271936 () Bool)

(assert (=> b!4165560 (= e!2585955 (and tp!1271937 tp!1271936))))

(assert (=> b!4165054 (= tp!1271862 e!2585955)))

(declare-fun b!4165559 () Bool)

(declare-fun tp!1271938 () Bool)

(assert (=> b!4165559 (= e!2585955 tp!1271938)))

(declare-fun b!4165557 () Bool)

(assert (=> b!4165557 (= e!2585955 tp_is_empty!21865)))

(assert (= (and b!4165054 ((_ is ElementMatch!12451) (regex!7546 (h!51017 rules!3820)))) b!4165557))

(assert (= (and b!4165054 ((_ is Concat!20228) (regex!7546 (h!51017 rules!3820)))) b!4165558))

(assert (= (and b!4165054 ((_ is Star!12451) (regex!7546 (h!51017 rules!3820)))) b!4165559))

(assert (= (and b!4165054 ((_ is Union!12451) (regex!7546 (h!51017 rules!3820)))) b!4165560))

(declare-fun b!4165571 () Bool)

(declare-fun b_free!120255 () Bool)

(declare-fun b_next!120959 () Bool)

(assert (=> b!4165571 (= b_free!120255 (not b_next!120959))))

(declare-fun tb!249463 () Bool)

(declare-fun t!343967 () Bool)

(assert (=> (and b!4165571 (= (toValue!10214 (transformation!7546 (h!51017 (t!343936 rules!3820)))) (toValue!10214 (transformation!7546 r!4097))) t!343967) tb!249463))

(declare-fun result!303852 () Bool)

(assert (= result!303852 result!303812))

(assert (=> d!1230882 t!343967))

(assert (=> d!1230956 t!343967))

(declare-fun b_and!324869 () Bool)

(declare-fun tp!1271949 () Bool)

(assert (=> b!4165571 (= tp!1271949 (and (=> t!343967 result!303852) b_and!324869))))

(declare-fun b_free!120257 () Bool)

(declare-fun b_next!120961 () Bool)

(assert (=> b!4165571 (= b_free!120257 (not b_next!120961))))

(declare-fun tb!249465 () Bool)

(declare-fun t!343969 () Bool)

(assert (=> (and b!4165571 (= (toChars!10073 (transformation!7546 (h!51017 (t!343936 rules!3820)))) (toChars!10073 (transformation!7546 r!4097))) t!343969) tb!249465))

(declare-fun result!303854 () Bool)

(assert (= result!303854 result!303804))

(assert (=> d!1230882 t!343969))

(declare-fun tp!1271948 () Bool)

(declare-fun b_and!324871 () Bool)

(assert (=> b!4165571 (= tp!1271948 (and (=> t!343969 result!303854) b_and!324871))))

(declare-fun e!2585964 () Bool)

(assert (=> b!4165571 (= e!2585964 (and tp!1271949 tp!1271948))))

(declare-fun b!4165570 () Bool)

(declare-fun e!2585966 () Bool)

(declare-fun tp!1271951 () Bool)

(assert (=> b!4165570 (= e!2585966 (and tp!1271951 (inv!60112 (tag!8410 (h!51017 (t!343936 rules!3820)))) (inv!60114 (transformation!7546 (h!51017 (t!343936 rules!3820)))) e!2585964))))

(declare-fun b!4165569 () Bool)

(declare-fun e!2585967 () Bool)

(declare-fun tp!1271950 () Bool)

(assert (=> b!4165569 (= e!2585967 (and e!2585966 tp!1271950))))

(assert (=> b!4165049 (= tp!1271860 e!2585967)))

(assert (= b!4165570 b!4165571))

(assert (= b!4165569 b!4165570))

(assert (= (and b!4165049 ((_ is Cons!45597) (t!343936 rules!3820))) b!4165569))

(declare-fun m!4757571 () Bool)

(assert (=> b!4165570 m!4757571))

(declare-fun m!4757573 () Bool)

(assert (=> b!4165570 m!4757573))

(declare-fun b!4165573 () Bool)

(declare-fun e!2585968 () Bool)

(declare-fun tp!1271952 () Bool)

(declare-fun tp!1271956 () Bool)

(assert (=> b!4165573 (= e!2585968 (and tp!1271952 tp!1271956))))

(declare-fun b!4165575 () Bool)

(declare-fun tp!1271954 () Bool)

(declare-fun tp!1271953 () Bool)

(assert (=> b!4165575 (= e!2585968 (and tp!1271954 tp!1271953))))

(assert (=> b!4165068 (= tp!1271866 e!2585968)))

(declare-fun b!4165574 () Bool)

(declare-fun tp!1271955 () Bool)

(assert (=> b!4165574 (= e!2585968 tp!1271955)))

(declare-fun b!4165572 () Bool)

(assert (=> b!4165572 (= e!2585968 tp_is_empty!21865)))

(assert (= (and b!4165068 ((_ is ElementMatch!12451) (regex!7546 rBis!161))) b!4165572))

(assert (= (and b!4165068 ((_ is Concat!20228) (regex!7546 rBis!161))) b!4165573))

(assert (= (and b!4165068 ((_ is Star!12451) (regex!7546 rBis!161))) b!4165574))

(assert (= (and b!4165068 ((_ is Union!12451) (regex!7546 rBis!161))) b!4165575))

(declare-fun b!4165577 () Bool)

(declare-fun e!2585969 () Bool)

(declare-fun tp!1271957 () Bool)

(declare-fun tp!1271961 () Bool)

(assert (=> b!4165577 (= e!2585969 (and tp!1271957 tp!1271961))))

(declare-fun b!4165579 () Bool)

(declare-fun tp!1271959 () Bool)

(declare-fun tp!1271958 () Bool)

(assert (=> b!4165579 (= e!2585969 (and tp!1271959 tp!1271958))))

(assert (=> b!4165058 (= tp!1271872 e!2585969)))

(declare-fun b!4165578 () Bool)

(declare-fun tp!1271960 () Bool)

(assert (=> b!4165578 (= e!2585969 tp!1271960)))

(declare-fun b!4165576 () Bool)

(assert (=> b!4165576 (= e!2585969 tp_is_empty!21865)))

(assert (= (and b!4165058 ((_ is ElementMatch!12451) (regex!7546 r!4097))) b!4165576))

(assert (= (and b!4165058 ((_ is Concat!20228) (regex!7546 r!4097))) b!4165577))

(assert (= (and b!4165058 ((_ is Star!12451) (regex!7546 r!4097))) b!4165578))

(assert (= (and b!4165058 ((_ is Union!12451) (regex!7546 r!4097))) b!4165579))

(declare-fun b!4165580 () Bool)

(declare-fun e!2585970 () Bool)

(declare-fun tp!1271962 () Bool)

(assert (=> b!4165580 (= e!2585970 (and tp_is_empty!21865 tp!1271962))))

(assert (=> b!4165060 (= tp!1271864 e!2585970)))

(assert (= (and b!4165060 ((_ is Cons!45595) (t!343934 pBis!100))) b!4165580))

(declare-fun b_lambda!122297 () Bool)

(assert (= b_lambda!122295 (or (and b!4165055 b_free!120239 (= (toValue!10214 (transformation!7546 rBis!161)) (toValue!10214 (transformation!7546 r!4097)))) (and b!4165056 b_free!120243 (= (toValue!10214 (transformation!7546 (h!51017 rules!3820))) (toValue!10214 (transformation!7546 r!4097)))) (and b!4165053 b_free!120247) (and b!4165571 b_free!120255 (= (toValue!10214 (transformation!7546 (h!51017 (t!343936 rules!3820)))) (toValue!10214 (transformation!7546 r!4097)))) b_lambda!122297)))

(declare-fun b_lambda!122299 () Bool)

(assert (= b_lambda!122279 (or (and b!4165055 b_free!120241 (= (toChars!10073 (transformation!7546 rBis!161)) (toChars!10073 (transformation!7546 r!4097)))) (and b!4165056 b_free!120245 (= (toChars!10073 (transformation!7546 (h!51017 rules!3820))) (toChars!10073 (transformation!7546 r!4097)))) (and b!4165053 b_free!120249) (and b!4165571 b_free!120257 (= (toChars!10073 (transformation!7546 (h!51017 (t!343936 rules!3820)))) (toChars!10073 (transformation!7546 r!4097)))) b_lambda!122299)))

(declare-fun b_lambda!122301 () Bool)

(assert (= b_lambda!122281 (or (and b!4165055 b_free!120239 (= (toValue!10214 (transformation!7546 rBis!161)) (toValue!10214 (transformation!7546 r!4097)))) (and b!4165056 b_free!120243 (= (toValue!10214 (transformation!7546 (h!51017 rules!3820))) (toValue!10214 (transformation!7546 r!4097)))) (and b!4165053 b_free!120247) (and b!4165571 b_free!120255 (= (toValue!10214 (transformation!7546 (h!51017 (t!343936 rules!3820)))) (toValue!10214 (transformation!7546 r!4097)))) b_lambda!122301)))

(check-sat (not b!4165577) (not b!4165397) (not b!4165439) (not b!4165534) (not d!1230970) (not b!4165546) (not b!4165391) (not bm!290984) (not b!4165360) (not b!4165283) (not b!4165356) (not b!4165396) (not b!4165361) b_and!324867 (not b!4165493) (not b!4165535) b_and!324833 (not d!1230924) (not b!4165559) tp_is_empty!21865 (not b!4165503) (not bm!290988) (not bm!290975) (not b!4165498) (not d!1230982) (not b!4165529) (not tb!249441) (not b!4165458) (not b!4165450) (not b_lambda!122297) (not b!4165281) (not bm!290986) (not tb!249435) (not b!4165357) b_and!324869 (not d!1230968) (not b!4165401) (not b!4165573) (not b!4165509) (not bm!290987) (not b!4165569) (not b!4165532) (not b!4165545) (not d!1230992) b_and!324871 (not b_next!120949) (not b!4165265) (not b!4165270) (not b!4165282) (not b!4165442) (not b!4165579) (not d!1230972) b_and!324865 (not b_next!120951) b_and!324831 (not b!4165456) (not d!1230988) (not d!1230960) b_and!324863 (not b!4165558) (not b!4165363) (not b_next!120945) (not b!4165448) (not b!4165560) (not b_next!120959) (not b!4165433) (not b!4165540) (not b!4165575) (not b!4165482) (not b_next!120943) (not b!4165507) (not b_lambda!122299) (not bm!290991) (not b!4165570) (not b!4165393) (not b_lambda!122301) (not b!4165362) (not b!4165431) (not d!1230928) (not b!4165359) (not b!4165578) (not d!1230994) (not b!4165436) (not b!4165531) (not b!4165364) (not b!4165500) (not d!1230932) (not d!1230926) (not d!1230998) (not b!4165580) (not b!4165071) (not b!4165399) (not b_next!120961) (not b!4165530) (not bm!290983) (not b!4165395) (not b!4165440) (not b!4165486) (not d!1230882) (not d!1230980) (not d!1230878) (not d!1230986) (not b!4165257) (not b_next!120953) b_and!324829 (not b!4165536) (not b_next!120947) (not b!4165506) (not d!1230978) (not b!4165574) (not b!4165533) (not d!1230996) (not b!4165400))
(check-sat b_and!324867 b_and!324833 b_and!324869 b_and!324865 b_and!324863 (not b_next!120943) (not b_next!120961) (not b_next!120947) b_and!324871 (not b_next!120949) (not b_next!120951) b_and!324831 (not b_next!120945) (not b_next!120959) (not b_next!120953) b_and!324829)
