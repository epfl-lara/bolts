; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!512922 () Bool)

(assert start!512922)

(declare-fun b!4897156 () Bool)

(declare-fun b_free!131623 () Bool)

(declare-fun b_next!132413 () Bool)

(assert (=> b!4897156 (= b_free!131623 (not b_next!132413))))

(declare-fun tp!1378014 () Bool)

(declare-fun b_and!345495 () Bool)

(assert (=> b!4897156 (= tp!1378014 b_and!345495)))

(declare-fun b_free!131625 () Bool)

(declare-fun b_next!132415 () Bool)

(assert (=> b!4897156 (= b_free!131625 (not b_next!132415))))

(declare-fun tp!1378016 () Bool)

(declare-fun b_and!345497 () Bool)

(assert (=> b!4897156 (= tp!1378016 b_and!345497)))

(declare-fun b!4897154 () Bool)

(declare-fun e!3061255 () Bool)

(declare-datatypes ((C!26706 0))(
  ( (C!26707 (val!22687 Int)) )
))
(declare-datatypes ((List!56546 0))(
  ( (Nil!56422) (Cons!56422 (h!62870 C!26706) (t!366156 List!56546)) )
))
(declare-datatypes ((String!63888 0))(
  ( (String!63889 (value!262227 String)) )
))
(declare-datatypes ((IArray!29555 0))(
  ( (IArray!29556 (innerList!14835 List!56546)) )
))
(declare-datatypes ((Conc!14747 0))(
  ( (Node!14747 (left!40995 Conc!14747) (right!41325 Conc!14747) (csize!29724 Int) (cheight!14958 Int)) (Leaf!24554 (xs!18063 IArray!29555) (csize!29725 Int)) (Empty!14747) )
))
(declare-datatypes ((BalanceConc!28924 0))(
  ( (BalanceConc!28925 (c!832380 Conc!14747)) )
))
(declare-datatypes ((List!56547 0))(
  ( (Nil!56423) (Cons!56423 (h!62871 (_ BitVec 16)) (t!366157 List!56547)) )
))
(declare-datatypes ((TokenValue!8489 0))(
  ( (FloatLiteralValue!16978 (text!59868 List!56547)) (TokenValueExt!8488 (__x!34271 Int)) (Broken!42445 (value!262228 List!56547)) (Object!8612) (End!8489) (Def!8489) (Underscore!8489) (Match!8489) (Else!8489) (Error!8489) (Case!8489) (If!8489) (Extends!8489) (Abstract!8489) (Class!8489) (Val!8489) (DelimiterValue!16978 (del!8549 List!56547)) (KeywordValue!8495 (value!262229 List!56547)) (CommentValue!16978 (value!262230 List!56547)) (WhitespaceValue!16978 (value!262231 List!56547)) (IndentationValue!8489 (value!262232 List!56547)) (String!63890) (Int32!8489) (Broken!42446 (value!262233 List!56547)) (Boolean!8490) (Unit!146488) (OperatorValue!8492 (op!8549 List!56547)) (IdentifierValue!16978 (value!262234 List!56547)) (IdentifierValue!16979 (value!262235 List!56547)) (WhitespaceValue!16979 (value!262236 List!56547)) (True!16978) (False!16978) (Broken!42447 (value!262237 List!56547)) (Broken!42448 (value!262238 List!56547)) (True!16979) (RightBrace!8489) (RightBracket!8489) (Colon!8489) (Null!8489) (Comma!8489) (LeftBracket!8489) (False!16979) (LeftBrace!8489) (ImaginaryLiteralValue!8489 (text!59869 List!56547)) (StringLiteralValue!25467 (value!262239 List!56547)) (EOFValue!8489 (value!262240 List!56547)) (IdentValue!8489 (value!262241 List!56547)) (DelimiterValue!16979 (value!262242 List!56547)) (DedentValue!8489 (value!262243 List!56547)) (NewLineValue!8489 (value!262244 List!56547)) (IntegerValue!25467 (value!262245 (_ BitVec 32)) (text!59870 List!56547)) (IntegerValue!25468 (value!262246 Int) (text!59871 List!56547)) (Times!8489) (Or!8489) (Equal!8489) (Minus!8489) (Broken!42449 (value!262247 List!56547)) (And!8489) (Div!8489) (LessEqual!8489) (Mod!8489) (Concat!21743) (Not!8489) (Plus!8489) (SpaceValue!8489 (value!262248 List!56547)) (IntegerValue!25469 (value!262249 Int) (text!59872 List!56547)) (StringLiteralValue!25468 (text!59873 List!56547)) (FloatLiteralValue!16979 (text!59874 List!56547)) (BytesLiteralValue!8489 (value!262250 List!56547)) (CommentValue!16979 (value!262251 List!56547)) (StringLiteralValue!25469 (value!262252 List!56547)) (ErrorTokenValue!8489 (msg!8550 List!56547)) )
))
(declare-datatypes ((Regex!13254 0))(
  ( (ElementMatch!13254 (c!832381 C!26706)) (Concat!21744 (regOne!27020 Regex!13254) (regTwo!27020 Regex!13254)) (EmptyExpr!13254) (Star!13254 (reg!13583 Regex!13254)) (EmptyLang!13254) (Union!13254 (regOne!27021 Regex!13254) (regTwo!27021 Regex!13254)) )
))
(declare-datatypes ((TokenValueInjection!16286 0))(
  ( (TokenValueInjection!16287 (toValue!11082 Int) (toChars!10941 Int)) )
))
(declare-datatypes ((Rule!16158 0))(
  ( (Rule!16159 (regex!8179 Regex!13254) (tag!9043 String!63888) (isSeparator!8179 Bool) (transformation!8179 TokenValueInjection!16286)) )
))
(declare-datatypes ((Token!14922 0))(
  ( (Token!14923 (value!262253 TokenValue!8489) (rule!11381 Rule!16158) (size!37159 Int) (originalCharacters!8492 List!56546)) )
))
(declare-datatypes ((tuple2!60488 0))(
  ( (tuple2!60489 (_1!33547 Token!14922) (_2!33547 BalanceConc!28924)) )
))
(declare-fun lt!2007828 () tuple2!60488)

(declare-datatypes ((tuple2!60490 0))(
  ( (tuple2!60491 (_1!33548 Token!14922) (_2!33548 List!56546)) )
))
(declare-fun lt!2007827 () tuple2!60490)

(declare-fun list!17739 (BalanceConc!28924) List!56546)

(assert (=> b!4897154 (= e!3061255 (= (list!17739 (_2!33547 lt!2007828)) (_2!33548 lt!2007827)))))

(declare-fun b!4897155 () Bool)

(declare-fun e!3061253 () Bool)

(declare-fun tp!1378015 () Bool)

(declare-fun e!3061245 () Bool)

(declare-datatypes ((List!56548 0))(
  ( (Nil!56424) (Cons!56424 (h!62872 Rule!16158) (t!366158 List!56548)) )
))
(declare-fun rulesArg!165 () List!56548)

(declare-fun inv!72716 (String!63888) Bool)

(declare-fun inv!72719 (TokenValueInjection!16286) Bool)

(assert (=> b!4897155 (= e!3061245 (and tp!1378015 (inv!72716 (tag!9043 (h!62872 rulesArg!165))) (inv!72719 (transformation!8179 (h!62872 rulesArg!165))) e!3061253))))

(assert (=> b!4897156 (= e!3061253 (and tp!1378014 tp!1378016))))

(declare-fun b!4897157 () Bool)

(declare-fun e!3061246 () Bool)

(declare-fun e!3061248 () Bool)

(assert (=> b!4897157 (= e!3061246 e!3061248)))

(declare-fun res!2091588 () Bool)

(assert (=> b!4897157 (=> (not res!2091588) (not e!3061248))))

(declare-fun lt!2007825 () Bool)

(declare-datatypes ((Option!14035 0))(
  ( (None!14034) (Some!14034 (v!49992 tuple2!60490)) )
))
(declare-fun lt!2007830 () Option!14035)

(declare-fun isDefined!11048 (Option!14035) Bool)

(assert (=> b!4897157 (= res!2091588 (= lt!2007825 (isDefined!11048 lt!2007830)))))

(declare-datatypes ((Option!14036 0))(
  ( (None!14035) (Some!14035 (v!49993 tuple2!60488)) )
))
(declare-fun lt!2007826 () Option!14036)

(declare-fun isDefined!11049 (Option!14036) Bool)

(assert (=> b!4897157 (= lt!2007825 (isDefined!11049 lt!2007826))))

(declare-datatypes ((LexerInterface!7771 0))(
  ( (LexerInterfaceExt!7768 (__x!34272 Int)) (Lexer!7769) )
))
(declare-fun thiss!14805 () LexerInterface!7771)

(declare-fun lt!2007823 () List!56546)

(declare-fun maxPrefixZipper!678 (LexerInterface!7771 List!56548 List!56546) Option!14035)

(assert (=> b!4897157 (= lt!2007830 (maxPrefixZipper!678 thiss!14805 rulesArg!165 lt!2007823))))

(declare-fun b!4897158 () Bool)

(declare-fun e!3061257 () Bool)

(declare-fun e!3061254 () Bool)

(assert (=> b!4897158 (= e!3061257 e!3061254)))

(declare-fun res!2091586 () Bool)

(assert (=> b!4897158 (=> res!2091586 e!3061254)))

(declare-fun lt!2007829 () Bool)

(assert (=> b!4897158 (= res!2091586 lt!2007829)))

(declare-fun res!2091587 () Bool)

(declare-fun e!3061249 () Bool)

(assert (=> start!512922 (=> (not res!2091587) (not e!3061249))))

(assert (=> start!512922 (= res!2091587 (is-Lexer!7769 thiss!14805))))

(assert (=> start!512922 e!3061249))

(assert (=> start!512922 true))

(declare-fun e!3061247 () Bool)

(assert (=> start!512922 e!3061247))

(declare-fun input!1236 () BalanceConc!28924)

(declare-fun e!3061258 () Bool)

(declare-fun inv!72720 (BalanceConc!28924) Bool)

(assert (=> start!512922 (and (inv!72720 input!1236) e!3061258)))

(declare-fun b!4897159 () Bool)

(declare-fun e!3061251 () Bool)

(declare-fun lt!2007821 () tuple2!60488)

(declare-fun lt!2007822 () tuple2!60490)

(assert (=> b!4897159 (= e!3061251 (= (list!17739 (_2!33547 lt!2007821)) (_2!33548 lt!2007822)))))

(declare-fun b!4897160 () Bool)

(assert (=> b!4897160 (= e!3061248 e!3061257)))

(declare-fun res!2091594 () Bool)

(assert (=> b!4897160 (=> (not res!2091594) (not e!3061257))))

(declare-fun e!3061256 () Bool)

(assert (=> b!4897160 (= res!2091594 e!3061256)))

(declare-fun res!2091589 () Bool)

(assert (=> b!4897160 (=> res!2091589 e!3061256)))

(assert (=> b!4897160 (= res!2091589 lt!2007829)))

(assert (=> b!4897160 (= lt!2007829 (not lt!2007825))))

(declare-fun b!4897161 () Bool)

(declare-fun e!3061250 () Bool)

(assert (=> b!4897161 (= e!3061249 (not e!3061250))))

(declare-fun res!2091591 () Bool)

(assert (=> b!4897161 (=> res!2091591 e!3061250)))

(assert (=> b!4897161 (= res!2091591 (or (and (is-Cons!56424 rulesArg!165) (is-Nil!56424 (t!366158 rulesArg!165))) (not (is-Cons!56424 rulesArg!165))))))

(declare-fun isPrefix!4899 (List!56546 List!56546) Bool)

(assert (=> b!4897161 (isPrefix!4899 lt!2007823 lt!2007823)))

(declare-datatypes ((Unit!146489 0))(
  ( (Unit!146490) )
))
(declare-fun lt!2007824 () Unit!146489)

(declare-fun lemmaIsPrefixRefl!3296 (List!56546 List!56546) Unit!146489)

(assert (=> b!4897161 (= lt!2007824 (lemmaIsPrefixRefl!3296 lt!2007823 lt!2007823))))

(assert (=> b!4897161 (= lt!2007823 (list!17739 input!1236))))

(declare-fun b!4897162 () Bool)

(declare-fun tp!1378012 () Bool)

(assert (=> b!4897162 (= e!3061247 (and e!3061245 tp!1378012))))

(declare-fun b!4897163 () Bool)

(declare-fun res!2091595 () Bool)

(assert (=> b!4897163 (=> (not res!2091595) (not e!3061249))))

(declare-fun rulesValidInductive!3158 (LexerInterface!7771 List!56548) Bool)

(assert (=> b!4897163 (= res!2091595 (rulesValidInductive!3158 thiss!14805 rulesArg!165))))

(declare-fun b!4897164 () Bool)

(assert (=> b!4897164 (= e!3061254 e!3061255)))

(declare-fun res!2091585 () Bool)

(assert (=> b!4897164 (=> (not res!2091585) (not e!3061255))))

(assert (=> b!4897164 (= res!2091585 (= (_1!33547 lt!2007828) (_1!33548 lt!2007827)))))

(declare-fun get!19491 (Option!14035) tuple2!60490)

(declare-fun maxPrefix!4608 (LexerInterface!7771 List!56548 List!56546) Option!14035)

(assert (=> b!4897164 (= lt!2007827 (get!19491 (maxPrefix!4608 thiss!14805 rulesArg!165 lt!2007823)))))

(declare-fun get!19492 (Option!14036) tuple2!60488)

(assert (=> b!4897164 (= lt!2007828 (get!19492 lt!2007826))))

(declare-fun b!4897165 () Bool)

(declare-fun res!2091590 () Bool)

(assert (=> b!4897165 (=> (not res!2091590) (not e!3061249))))

(declare-fun isEmpty!30289 (List!56548) Bool)

(assert (=> b!4897165 (= res!2091590 (not (isEmpty!30289 rulesArg!165)))))

(declare-fun b!4897166 () Bool)

(assert (=> b!4897166 (= e!3061256 e!3061251)))

(declare-fun res!2091593 () Bool)

(assert (=> b!4897166 (=> (not res!2091593) (not e!3061251))))

(assert (=> b!4897166 (= res!2091593 (= (_1!33547 lt!2007821) (_1!33548 lt!2007822)))))

(assert (=> b!4897166 (= lt!2007822 (get!19491 lt!2007830))))

(assert (=> b!4897166 (= lt!2007821 (get!19492 lt!2007826))))

(declare-fun b!4897167 () Bool)

(assert (=> b!4897167 (= e!3061250 e!3061246)))

(declare-fun res!2091592 () Bool)

(assert (=> b!4897167 (=> res!2091592 e!3061246)))

(declare-fun lt!2007820 () Option!14036)

(assert (=> b!4897167 (= res!2091592 (or (and (is-None!14035 lt!2007826) (is-None!14035 lt!2007820)) (is-None!14035 lt!2007820) (is-None!14035 lt!2007826) (< (size!37159 (_1!33547 (v!49993 lt!2007826))) (size!37159 (_1!33547 (v!49993 lt!2007820))))))))

(declare-fun maxPrefixZipperSequence!1320 (LexerInterface!7771 List!56548 BalanceConc!28924) Option!14036)

(assert (=> b!4897167 (= lt!2007820 (maxPrefixZipperSequence!1320 thiss!14805 (t!366158 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!689 (LexerInterface!7771 Rule!16158 BalanceConc!28924) Option!14036)

(assert (=> b!4897167 (= lt!2007826 (maxPrefixOneRuleZipperSequence!689 thiss!14805 (h!62872 rulesArg!165) input!1236))))

(declare-fun b!4897168 () Bool)

(declare-fun tp!1378013 () Bool)

(declare-fun inv!72721 (Conc!14747) Bool)

(assert (=> b!4897168 (= e!3061258 (and (inv!72721 (c!832380 input!1236)) tp!1378013))))

(assert (= (and start!512922 res!2091587) b!4897163))

(assert (= (and b!4897163 res!2091595) b!4897165))

(assert (= (and b!4897165 res!2091590) b!4897161))

(assert (= (and b!4897161 (not res!2091591)) b!4897167))

(assert (= (and b!4897167 (not res!2091592)) b!4897157))

(assert (= (and b!4897157 res!2091588) b!4897160))

(assert (= (and b!4897160 (not res!2091589)) b!4897166))

(assert (= (and b!4897166 res!2091593) b!4897159))

(assert (= (and b!4897160 res!2091594) b!4897158))

(assert (= (and b!4897158 (not res!2091586)) b!4897164))

(assert (= (and b!4897164 res!2091585) b!4897154))

(assert (= b!4897155 b!4897156))

(assert (= b!4897162 b!4897155))

(assert (= (and start!512922 (is-Cons!56424 rulesArg!165)) b!4897162))

(assert (= start!512922 b!4897168))

(declare-fun m!5904114 () Bool)

(assert (=> b!4897165 m!5904114))

(declare-fun m!5904116 () Bool)

(assert (=> b!4897159 m!5904116))

(declare-fun m!5904118 () Bool)

(assert (=> b!4897154 m!5904118))

(declare-fun m!5904120 () Bool)

(assert (=> b!4897161 m!5904120))

(declare-fun m!5904122 () Bool)

(assert (=> b!4897161 m!5904122))

(declare-fun m!5904124 () Bool)

(assert (=> b!4897161 m!5904124))

(declare-fun m!5904126 () Bool)

(assert (=> b!4897168 m!5904126))

(declare-fun m!5904128 () Bool)

(assert (=> b!4897164 m!5904128))

(assert (=> b!4897164 m!5904128))

(declare-fun m!5904130 () Bool)

(assert (=> b!4897164 m!5904130))

(declare-fun m!5904132 () Bool)

(assert (=> b!4897164 m!5904132))

(declare-fun m!5904134 () Bool)

(assert (=> b!4897157 m!5904134))

(declare-fun m!5904136 () Bool)

(assert (=> b!4897157 m!5904136))

(declare-fun m!5904138 () Bool)

(assert (=> b!4897157 m!5904138))

(declare-fun m!5904140 () Bool)

(assert (=> b!4897155 m!5904140))

(declare-fun m!5904142 () Bool)

(assert (=> b!4897155 m!5904142))

(declare-fun m!5904144 () Bool)

(assert (=> b!4897163 m!5904144))

(declare-fun m!5904146 () Bool)

(assert (=> b!4897166 m!5904146))

(assert (=> b!4897166 m!5904132))

(declare-fun m!5904148 () Bool)

(assert (=> start!512922 m!5904148))

(declare-fun m!5904150 () Bool)

(assert (=> b!4897167 m!5904150))

(declare-fun m!5904152 () Bool)

(assert (=> b!4897167 m!5904152))

(push 1)

(assert (not b!4897161))

(assert (not start!512922))

(assert (not b_next!132413))

(assert b_and!345495)

(assert (not b!4897166))

(assert (not b!4897154))

(assert (not b!4897163))

(assert (not b!4897157))

(assert (not b!4897165))

(assert (not b!4897155))

(assert (not b_next!132415))

(assert (not b!4897167))

(assert (not b!4897159))

(assert (not b!4897168))

(assert b_and!345497)

(assert (not b!4897162))

(assert (not b!4897164))

(check-sat)

(pop 1)

(push 1)

(assert b_and!345497)

(assert b_and!345495)

(assert (not b_next!132413))

(assert (not b_next!132415))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1573627 () Bool)

(declare-fun isEmpty!30291 (Option!14035) Bool)

(assert (=> d!1573627 (= (isDefined!11048 lt!2007830) (not (isEmpty!30291 lt!2007830)))))

(declare-fun bs!1176433 () Bool)

(assert (= bs!1176433 d!1573627))

(declare-fun m!5904194 () Bool)

(assert (=> bs!1176433 m!5904194))

(assert (=> b!4897157 d!1573627))

(declare-fun d!1573629 () Bool)

(declare-fun isEmpty!30292 (Option!14036) Bool)

(assert (=> d!1573629 (= (isDefined!11049 lt!2007826) (not (isEmpty!30292 lt!2007826)))))

(declare-fun bs!1176434 () Bool)

(assert (= bs!1176434 d!1573629))

(declare-fun m!5904196 () Bool)

(assert (=> bs!1176434 m!5904196))

(assert (=> b!4897157 d!1573629))

(declare-fun lt!2007877 () Option!14035)

(declare-fun d!1573631 () Bool)

(assert (=> d!1573631 (= lt!2007877 (maxPrefix!4608 thiss!14805 rulesArg!165 lt!2007823))))

(declare-fun e!3061303 () Option!14035)

(assert (=> d!1573631 (= lt!2007877 e!3061303)))

(declare-fun c!832387 () Bool)

(assert (=> d!1573631 (= c!832387 (and (is-Cons!56424 rulesArg!165) (is-Nil!56424 (t!366158 rulesArg!165))))))

(declare-fun lt!2007876 () Unit!146489)

(declare-fun lt!2007878 () Unit!146489)

(assert (=> d!1573631 (= lt!2007876 lt!2007878)))

(assert (=> d!1573631 (isPrefix!4899 lt!2007823 lt!2007823)))

(assert (=> d!1573631 (= lt!2007878 (lemmaIsPrefixRefl!3296 lt!2007823 lt!2007823))))

(assert (=> d!1573631 (rulesValidInductive!3158 thiss!14805 rulesArg!165)))

(assert (=> d!1573631 (= (maxPrefixZipper!678 thiss!14805 rulesArg!165 lt!2007823) lt!2007877)))

(declare-fun bm!339720 () Bool)

(declare-fun call!339725 () Option!14035)

(declare-fun maxPrefixOneRuleZipper!263 (LexerInterface!7771 Rule!16158 List!56546) Option!14035)

(assert (=> bm!339720 (= call!339725 (maxPrefixOneRuleZipper!263 thiss!14805 (h!62872 rulesArg!165) lt!2007823))))

(declare-fun b!4897218 () Bool)

(assert (=> b!4897218 (= e!3061303 call!339725)))

(declare-fun b!4897219 () Bool)

(declare-fun lt!2007875 () Option!14035)

(declare-fun lt!2007874 () Option!14035)

(assert (=> b!4897219 (= e!3061303 (ite (and (is-None!14034 lt!2007875) (is-None!14034 lt!2007874)) None!14034 (ite (is-None!14034 lt!2007874) lt!2007875 (ite (is-None!14034 lt!2007875) lt!2007874 (ite (>= (size!37159 (_1!33548 (v!49992 lt!2007875))) (size!37159 (_1!33548 (v!49992 lt!2007874)))) lt!2007875 lt!2007874)))))))

(assert (=> b!4897219 (= lt!2007875 call!339725)))

(assert (=> b!4897219 (= lt!2007874 (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) lt!2007823))))

(assert (= (and d!1573631 c!832387) b!4897218))

(assert (= (and d!1573631 (not c!832387)) b!4897219))

(assert (= (or b!4897218 b!4897219) bm!339720))

(assert (=> d!1573631 m!5904128))

(assert (=> d!1573631 m!5904120))

(assert (=> d!1573631 m!5904122))

(assert (=> d!1573631 m!5904144))

(declare-fun m!5904198 () Bool)

(assert (=> bm!339720 m!5904198))

(declare-fun m!5904200 () Bool)

(assert (=> b!4897219 m!5904200))

(assert (=> b!4897157 d!1573631))

(declare-fun d!1573633 () Bool)

(declare-fun c!832390 () Bool)

(assert (=> d!1573633 (= c!832390 (is-Node!14747 (c!832380 input!1236)))))

(declare-fun e!3061308 () Bool)

(assert (=> d!1573633 (= (inv!72721 (c!832380 input!1236)) e!3061308)))

(declare-fun b!4897226 () Bool)

(declare-fun inv!72725 (Conc!14747) Bool)

(assert (=> b!4897226 (= e!3061308 (inv!72725 (c!832380 input!1236)))))

(declare-fun b!4897227 () Bool)

(declare-fun e!3061309 () Bool)

(assert (=> b!4897227 (= e!3061308 e!3061309)))

(declare-fun res!2091650 () Bool)

(assert (=> b!4897227 (= res!2091650 (not (is-Leaf!24554 (c!832380 input!1236))))))

(assert (=> b!4897227 (=> res!2091650 e!3061309)))

(declare-fun b!4897228 () Bool)

(declare-fun inv!72726 (Conc!14747) Bool)

(assert (=> b!4897228 (= e!3061309 (inv!72726 (c!832380 input!1236)))))

(assert (= (and d!1573633 c!832390) b!4897226))

(assert (= (and d!1573633 (not c!832390)) b!4897227))

(assert (= (and b!4897227 (not res!2091650)) b!4897228))

(declare-fun m!5904202 () Bool)

(assert (=> b!4897226 m!5904202))

(declare-fun m!5904204 () Bool)

(assert (=> b!4897228 m!5904204))

(assert (=> b!4897168 d!1573633))

(declare-fun d!1573635 () Bool)

(declare-fun list!17741 (Conc!14747) List!56546)

(assert (=> d!1573635 (= (list!17739 (_2!33547 lt!2007821)) (list!17741 (c!832380 (_2!33547 lt!2007821))))))

(declare-fun bs!1176435 () Bool)

(assert (= bs!1176435 d!1573635))

(declare-fun m!5904206 () Bool)

(assert (=> bs!1176435 m!5904206))

(assert (=> b!4897159 d!1573635))

(declare-fun d!1573637 () Bool)

(declare-fun isBalanced!4017 (Conc!14747) Bool)

(assert (=> d!1573637 (= (inv!72720 input!1236) (isBalanced!4017 (c!832380 input!1236)))))

(declare-fun bs!1176436 () Bool)

(assert (= bs!1176436 d!1573637))

(declare-fun m!5904208 () Bool)

(assert (=> bs!1176436 m!5904208))

(assert (=> start!512922 d!1573637))

(declare-fun d!1573639 () Bool)

(assert (=> d!1573639 (= (isEmpty!30289 rulesArg!165) (is-Nil!56424 rulesArg!165))))

(assert (=> b!4897165 d!1573639))

(declare-fun d!1573641 () Bool)

(assert (=> d!1573641 (= (inv!72716 (tag!9043 (h!62872 rulesArg!165))) (= (mod (str.len (value!262227 (tag!9043 (h!62872 rulesArg!165)))) 2) 0))))

(assert (=> b!4897155 d!1573641))

(declare-fun d!1573643 () Bool)

(declare-fun res!2091653 () Bool)

(declare-fun e!3061312 () Bool)

(assert (=> d!1573643 (=> (not res!2091653) (not e!3061312))))

(declare-fun semiInverseModEq!3591 (Int Int) Bool)

(assert (=> d!1573643 (= res!2091653 (semiInverseModEq!3591 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))))))

(assert (=> d!1573643 (= (inv!72719 (transformation!8179 (h!62872 rulesArg!165))) e!3061312)))

(declare-fun b!4897231 () Bool)

(declare-fun equivClasses!3470 (Int Int) Bool)

(assert (=> b!4897231 (= e!3061312 (equivClasses!3470 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))))))

(assert (= (and d!1573643 res!2091653) b!4897231))

(declare-fun m!5904210 () Bool)

(assert (=> d!1573643 m!5904210))

(declare-fun m!5904212 () Bool)

(assert (=> b!4897231 m!5904212))

(assert (=> b!4897155 d!1573643))

(declare-fun d!1573645 () Bool)

(assert (=> d!1573645 (= (get!19491 lt!2007830) (v!49992 lt!2007830))))

(assert (=> b!4897166 d!1573645))

(declare-fun d!1573647 () Bool)

(assert (=> d!1573647 (= (get!19492 lt!2007826) (v!49993 lt!2007826))))

(assert (=> b!4897166 d!1573647))

(declare-fun lt!2007899 () Option!14036)

(declare-fun e!3061334 () Bool)

(declare-fun b!4897257 () Bool)

(assert (=> b!4897257 (= e!3061334 (= (list!17739 (_2!33547 (get!19492 lt!2007899))) (_2!33548 (get!19491 (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))))))))

(declare-fun b!4897258 () Bool)

(declare-fun e!3061331 () Option!14036)

(declare-fun lt!2007895 () Option!14036)

(declare-fun lt!2007898 () Option!14036)

(assert (=> b!4897258 (= e!3061331 (ite (and (is-None!14035 lt!2007895) (is-None!14035 lt!2007898)) None!14035 (ite (is-None!14035 lt!2007898) lt!2007895 (ite (is-None!14035 lt!2007895) lt!2007898 (ite (>= (size!37159 (_1!33547 (v!49993 lt!2007895))) (size!37159 (_1!33547 (v!49993 lt!2007898)))) lt!2007895 lt!2007898)))))))

(declare-fun call!339728 () Option!14036)

(assert (=> b!4897258 (= lt!2007895 call!339728)))

(assert (=> b!4897258 (= lt!2007898 (maxPrefixZipperSequence!1320 thiss!14805 (t!366158 (t!366158 rulesArg!165)) input!1236))))

(declare-fun b!4897259 () Bool)

(declare-fun e!3061335 () Bool)

(assert (=> b!4897259 (= e!3061335 e!3061334)))

(declare-fun res!2091669 () Bool)

(assert (=> b!4897259 (=> (not res!2091669) (not e!3061334))))

(assert (=> b!4897259 (= res!2091669 (= (_1!33547 (get!19492 lt!2007899)) (_1!33548 (get!19491 (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))))))))

(declare-fun b!4897260 () Bool)

(declare-fun e!3061336 () Bool)

(declare-fun e!3061333 () Bool)

(assert (=> b!4897260 (= e!3061336 e!3061333)))

(declare-fun res!2091670 () Bool)

(assert (=> b!4897260 (=> res!2091670 e!3061333)))

(assert (=> b!4897260 (= res!2091670 (not (isDefined!11049 lt!2007899)))))

(declare-fun bm!339723 () Bool)

(assert (=> bm!339723 (= call!339728 (maxPrefixOneRuleZipperSequence!689 thiss!14805 (h!62872 (t!366158 rulesArg!165)) input!1236))))

(declare-fun b!4897262 () Bool)

(assert (=> b!4897262 (= e!3061331 call!339728)))

(declare-fun b!4897263 () Bool)

(declare-fun res!2091672 () Bool)

(assert (=> b!4897263 (=> (not res!2091672) (not e!3061336))))

(assert (=> b!4897263 (= res!2091672 e!3061335)))

(declare-fun res!2091673 () Bool)

(assert (=> b!4897263 (=> res!2091673 e!3061335)))

(assert (=> b!4897263 (= res!2091673 (not (isDefined!11049 lt!2007899)))))

(declare-fun b!4897264 () Bool)

(declare-fun e!3061332 () Bool)

(assert (=> b!4897264 (= e!3061332 (= (list!17739 (_2!33547 (get!19492 lt!2007899))) (_2!33548 (get!19491 (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))))))))

(declare-fun b!4897261 () Bool)

(assert (=> b!4897261 (= e!3061333 e!3061332)))

(declare-fun res!2091671 () Bool)

(assert (=> b!4897261 (=> (not res!2091671) (not e!3061332))))

(assert (=> b!4897261 (= res!2091671 (= (_1!33547 (get!19492 lt!2007899)) (_1!33548 (get!19491 (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))))))))

(declare-fun d!1573649 () Bool)

(assert (=> d!1573649 e!3061336))

(declare-fun res!2091674 () Bool)

(assert (=> d!1573649 (=> (not res!2091674) (not e!3061336))))

(assert (=> d!1573649 (= res!2091674 (= (isDefined!11049 lt!2007899) (isDefined!11048 (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236)))))))

(assert (=> d!1573649 (= lt!2007899 e!3061331)))

(declare-fun c!832396 () Bool)

(assert (=> d!1573649 (= c!832396 (and (is-Cons!56424 (t!366158 rulesArg!165)) (is-Nil!56424 (t!366158 (t!366158 rulesArg!165)))))))

(declare-fun lt!2007894 () Unit!146489)

(declare-fun lt!2007897 () Unit!146489)

(assert (=> d!1573649 (= lt!2007894 lt!2007897)))

(declare-fun lt!2007893 () List!56546)

(declare-fun lt!2007896 () List!56546)

(assert (=> d!1573649 (isPrefix!4899 lt!2007893 lt!2007896)))

(assert (=> d!1573649 (= lt!2007897 (lemmaIsPrefixRefl!3296 lt!2007893 lt!2007896))))

(assert (=> d!1573649 (= lt!2007896 (list!17739 input!1236))))

(assert (=> d!1573649 (= lt!2007893 (list!17739 input!1236))))

(assert (=> d!1573649 (rulesValidInductive!3158 thiss!14805 (t!366158 rulesArg!165))))

(assert (=> d!1573649 (= (maxPrefixZipperSequence!1320 thiss!14805 (t!366158 rulesArg!165) input!1236) lt!2007899)))

(assert (= (and d!1573649 c!832396) b!4897262))

(assert (= (and d!1573649 (not c!832396)) b!4897258))

(assert (= (or b!4897262 b!4897258) bm!339723))

(assert (= (and d!1573649 res!2091674) b!4897263))

(assert (= (and b!4897263 (not res!2091673)) b!4897259))

(assert (= (and b!4897259 res!2091669) b!4897257))

(assert (= (and b!4897263 res!2091672) b!4897260))

(assert (= (and b!4897260 (not res!2091670)) b!4897261))

(assert (= (and b!4897261 res!2091671) b!4897264))

(declare-fun m!5904222 () Bool)

(assert (=> bm!339723 m!5904222))

(declare-fun m!5904224 () Bool)

(assert (=> b!4897257 m!5904224))

(declare-fun m!5904226 () Bool)

(assert (=> b!4897257 m!5904226))

(assert (=> b!4897257 m!5904124))

(assert (=> b!4897257 m!5904124))

(assert (=> b!4897257 m!5904224))

(declare-fun m!5904228 () Bool)

(assert (=> b!4897257 m!5904228))

(declare-fun m!5904230 () Bool)

(assert (=> b!4897257 m!5904230))

(declare-fun m!5904232 () Bool)

(assert (=> b!4897260 m!5904232))

(assert (=> b!4897261 m!5904230))

(assert (=> b!4897261 m!5904124))

(assert (=> b!4897261 m!5904124))

(declare-fun m!5904234 () Bool)

(assert (=> b!4897261 m!5904234))

(assert (=> b!4897261 m!5904234))

(declare-fun m!5904236 () Bool)

(assert (=> b!4897261 m!5904236))

(declare-fun m!5904238 () Bool)

(assert (=> b!4897258 m!5904238))

(assert (=> b!4897263 m!5904232))

(assert (=> b!4897264 m!5904124))

(assert (=> b!4897264 m!5904124))

(assert (=> b!4897264 m!5904234))

(assert (=> b!4897264 m!5904228))

(assert (=> b!4897264 m!5904234))

(assert (=> b!4897264 m!5904236))

(assert (=> b!4897264 m!5904230))

(assert (=> d!1573649 m!5904232))

(assert (=> d!1573649 m!5904124))

(declare-fun m!5904240 () Bool)

(assert (=> d!1573649 m!5904240))

(declare-fun m!5904242 () Bool)

(assert (=> d!1573649 m!5904242))

(assert (=> d!1573649 m!5904124))

(assert (=> d!1573649 m!5904224))

(assert (=> d!1573649 m!5904224))

(declare-fun m!5904244 () Bool)

(assert (=> d!1573649 m!5904244))

(declare-fun m!5904246 () Bool)

(assert (=> d!1573649 m!5904246))

(assert (=> b!4897259 m!5904230))

(assert (=> b!4897259 m!5904124))

(assert (=> b!4897259 m!5904124))

(assert (=> b!4897259 m!5904224))

(assert (=> b!4897259 m!5904224))

(assert (=> b!4897259 m!5904226))

(assert (=> b!4897167 d!1573649))

(declare-fun b!4897331 () Bool)

(declare-fun e!3061384 () Bool)

(assert (=> b!4897331 (= e!3061384 true)))

(declare-fun b!4897330 () Bool)

(declare-fun e!3061383 () Bool)

(assert (=> b!4897330 (= e!3061383 e!3061384)))

(declare-fun b!4897307 () Bool)

(assert (=> b!4897307 e!3061383))

(assert (= b!4897330 b!4897331))

(assert (= b!4897307 b!4897330))

(declare-fun order!25513 () Int)

(declare-fun order!25511 () Int)

(declare-fun lambda!244124 () Int)

(declare-fun dynLambda!22669 (Int Int) Int)

(declare-fun dynLambda!22670 (Int Int) Int)

(assert (=> b!4897331 (< (dynLambda!22669 order!25511 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) (dynLambda!22670 order!25513 lambda!244124))))

(declare-fun order!25515 () Int)

(declare-fun dynLambda!22671 (Int Int) Int)

(assert (=> b!4897331 (< (dynLambda!22671 order!25515 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) (dynLambda!22670 order!25513 lambda!244124))))

(declare-fun b!4897306 () Bool)

(declare-fun e!3061368 () Bool)

(declare-fun e!3061371 () Bool)

(assert (=> b!4897306 (= e!3061368 e!3061371)))

(declare-fun res!2091704 () Bool)

(assert (=> b!4897306 (=> res!2091704 e!3061371)))

(declare-fun lt!2007947 () Option!14036)

(assert (=> b!4897306 (= res!2091704 (not (isDefined!11049 lt!2007947)))))

(declare-fun e!3061369 () Option!14036)

(declare-datatypes ((tuple2!60496 0))(
  ( (tuple2!60497 (_1!33551 BalanceConc!28924) (_2!33551 BalanceConc!28924)) )
))
(declare-fun lt!2007946 () tuple2!60496)

(declare-fun apply!13545 (TokenValueInjection!16286 BalanceConc!28924) TokenValue!8489)

(declare-fun size!37161 (BalanceConc!28924) Int)

(assert (=> b!4897307 (= e!3061369 (Some!14035 (tuple2!60489 (Token!14923 (apply!13545 (transformation!8179 (h!62872 rulesArg!165)) (_1!33551 lt!2007946)) (h!62872 rulesArg!165) (size!37161 (_1!33551 lt!2007946)) (list!17739 (_1!33551 lt!2007946))) (_2!33551 lt!2007946))))))

(declare-fun lt!2007944 () List!56546)

(assert (=> b!4897307 (= lt!2007944 (list!17739 input!1236))))

(declare-fun lt!2007949 () Unit!146489)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1721 (Regex!13254 List!56546) Unit!146489)

(assert (=> b!4897307 (= lt!2007949 (longestMatchIsAcceptedByMatchOrIsEmpty!1721 (regex!8179 (h!62872 rulesArg!165)) lt!2007944))))

(declare-fun res!2091707 () Bool)

(declare-fun isEmpty!30293 (List!56546) Bool)

(declare-datatypes ((tuple2!60498 0))(
  ( (tuple2!60499 (_1!33552 List!56546) (_2!33552 List!56546)) )
))
(declare-fun findLongestMatchInner!1758 (Regex!13254 List!56546 Int List!56546 List!56546 Int) tuple2!60498)

(declare-fun size!37162 (List!56546) Int)

(assert (=> b!4897307 (= res!2091707 (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))))))

(declare-fun e!3061370 () Bool)

(assert (=> b!4897307 (=> res!2091707 e!3061370)))

(assert (=> b!4897307 e!3061370))

(declare-fun lt!2007951 () Unit!146489)

(assert (=> b!4897307 (= lt!2007951 lt!2007949)))

(declare-fun lt!2007945 () Unit!146489)

(declare-fun lemmaInv!1241 (TokenValueInjection!16286) Unit!146489)

(assert (=> b!4897307 (= lt!2007945 (lemmaInv!1241 (transformation!8179 (h!62872 rulesArg!165))))))

(declare-fun lt!2007948 () Unit!146489)

(declare-fun ForallOf!1138 (Int BalanceConc!28924) Unit!146489)

(assert (=> b!4897307 (= lt!2007948 (ForallOf!1138 lambda!244124 (_1!33551 lt!2007946)))))

(declare-fun lt!2007950 () Unit!146489)

(declare-fun seqFromList!5941 (List!56546) BalanceConc!28924)

(assert (=> b!4897307 (= lt!2007950 (ForallOf!1138 lambda!244124 (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))))))

(declare-fun lt!2007953 () Option!14036)

(assert (=> b!4897307 (= lt!2007953 (Some!14035 (tuple2!60489 (Token!14923 (apply!13545 (transformation!8179 (h!62872 rulesArg!165)) (_1!33551 lt!2007946)) (h!62872 rulesArg!165) (size!37161 (_1!33551 lt!2007946)) (list!17739 (_1!33551 lt!2007946))) (_2!33551 lt!2007946))))))

(declare-fun lt!2007952 () Unit!146489)

(declare-fun lemmaEqSameImage!1095 (TokenValueInjection!16286 BalanceConc!28924 BalanceConc!28924) Unit!146489)

(assert (=> b!4897307 (= lt!2007952 (lemmaEqSameImage!1095 (transformation!8179 (h!62872 rulesArg!165)) (_1!33551 lt!2007946) (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))))))

(declare-fun b!4897308 () Bool)

(declare-fun e!3061372 () Bool)

(declare-fun maxPrefixOneRule!3534 (LexerInterface!7771 Rule!16158 List!56546) Option!14035)

(assert (=> b!4897308 (= e!3061372 (= (list!17739 (_2!33547 (get!19492 lt!2007947))) (_2!33548 (get!19491 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) (list!17739 input!1236))))))))

(declare-fun b!4897309 () Bool)

(assert (=> b!4897309 (= e!3061371 e!3061372)))

(declare-fun res!2091706 () Bool)

(assert (=> b!4897309 (=> (not res!2091706) (not e!3061372))))

(assert (=> b!4897309 (= res!2091706 (= (_1!33547 (get!19492 lt!2007947)) (_1!33548 (get!19491 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) (list!17739 input!1236))))))))

(declare-fun d!1573659 () Bool)

(assert (=> d!1573659 e!3061368))

(declare-fun res!2091705 () Bool)

(assert (=> d!1573659 (=> (not res!2091705) (not e!3061368))))

(assert (=> d!1573659 (= res!2091705 (= (isDefined!11049 lt!2007947) (isDefined!11048 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) (list!17739 input!1236)))))))

(assert (=> d!1573659 (= lt!2007947 e!3061369)))

(declare-fun c!832402 () Bool)

(declare-fun isEmpty!30294 (BalanceConc!28924) Bool)

(assert (=> d!1573659 (= c!832402 (isEmpty!30294 (_1!33551 lt!2007946)))))

(declare-fun findLongestMatchWithZipperSequence!273 (Regex!13254 BalanceConc!28924) tuple2!60496)

(assert (=> d!1573659 (= lt!2007946 (findLongestMatchWithZipperSequence!273 (regex!8179 (h!62872 rulesArg!165)) input!1236))))

(declare-fun ruleValid!3677 (LexerInterface!7771 Rule!16158) Bool)

(assert (=> d!1573659 (ruleValid!3677 thiss!14805 (h!62872 rulesArg!165))))

(assert (=> d!1573659 (= (maxPrefixOneRuleZipperSequence!689 thiss!14805 (h!62872 rulesArg!165) input!1236) lt!2007947)))

(declare-fun b!4897310 () Bool)

(declare-fun matchR!6535 (Regex!13254 List!56546) Bool)

(assert (=> b!4897310 (= e!3061370 (matchR!6535 (regex!8179 (h!62872 rulesArg!165)) (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))))))

(declare-fun b!4897311 () Bool)

(assert (=> b!4897311 (= e!3061369 None!14035)))

(assert (= (and d!1573659 c!832402) b!4897311))

(assert (= (and d!1573659 (not c!832402)) b!4897307))

(assert (= (and b!4897307 (not res!2091707)) b!4897310))

(assert (= (and d!1573659 res!2091705) b!4897306))

(assert (= (and b!4897306 (not res!2091704)) b!4897309))

(assert (= (and b!4897309 res!2091706) b!4897308))

(declare-fun m!5904280 () Bool)

(assert (=> b!4897306 m!5904280))

(declare-fun m!5904282 () Bool)

(assert (=> b!4897309 m!5904282))

(assert (=> b!4897309 m!5904124))

(assert (=> b!4897309 m!5904124))

(declare-fun m!5904284 () Bool)

(assert (=> b!4897309 m!5904284))

(assert (=> b!4897309 m!5904284))

(declare-fun m!5904286 () Bool)

(assert (=> b!4897309 m!5904286))

(assert (=> b!4897308 m!5904124))

(declare-fun m!5904288 () Bool)

(assert (=> b!4897308 m!5904288))

(assert (=> b!4897308 m!5904284))

(assert (=> b!4897308 m!5904286))

(assert (=> b!4897308 m!5904282))

(assert (=> b!4897308 m!5904124))

(assert (=> b!4897308 m!5904284))

(declare-fun m!5904290 () Bool)

(assert (=> b!4897307 m!5904290))

(declare-fun m!5904292 () Bool)

(assert (=> b!4897307 m!5904292))

(declare-fun m!5904294 () Bool)

(assert (=> b!4897307 m!5904294))

(declare-fun m!5904296 () Bool)

(assert (=> b!4897307 m!5904296))

(declare-fun m!5904298 () Bool)

(assert (=> b!4897307 m!5904298))

(assert (=> b!4897307 m!5904292))

(declare-fun m!5904300 () Bool)

(assert (=> b!4897307 m!5904300))

(declare-fun m!5904302 () Bool)

(assert (=> b!4897307 m!5904302))

(declare-fun m!5904304 () Bool)

(assert (=> b!4897307 m!5904304))

(declare-fun m!5904306 () Bool)

(assert (=> b!4897307 m!5904306))

(declare-fun m!5904308 () Bool)

(assert (=> b!4897307 m!5904308))

(declare-fun m!5904310 () Bool)

(assert (=> b!4897307 m!5904310))

(assert (=> b!4897307 m!5904298))

(declare-fun m!5904312 () Bool)

(assert (=> b!4897307 m!5904312))

(assert (=> b!4897307 m!5904124))

(assert (=> b!4897307 m!5904296))

(assert (=> b!4897307 m!5904298))

(declare-fun m!5904314 () Bool)

(assert (=> b!4897307 m!5904314))

(assert (=> b!4897307 m!5904300))

(assert (=> d!1573659 m!5904280))

(declare-fun m!5904316 () Bool)

(assert (=> d!1573659 m!5904316))

(declare-fun m!5904318 () Bool)

(assert (=> d!1573659 m!5904318))

(assert (=> d!1573659 m!5904124))

(assert (=> d!1573659 m!5904284))

(assert (=> d!1573659 m!5904124))

(declare-fun m!5904320 () Bool)

(assert (=> d!1573659 m!5904320))

(assert (=> d!1573659 m!5904284))

(declare-fun m!5904322 () Bool)

(assert (=> d!1573659 m!5904322))

(assert (=> b!4897310 m!5904292))

(assert (=> b!4897310 m!5904300))

(assert (=> b!4897310 m!5904292))

(assert (=> b!4897310 m!5904300))

(assert (=> b!4897310 m!5904302))

(declare-fun m!5904324 () Bool)

(assert (=> b!4897310 m!5904324))

(assert (=> b!4897167 d!1573659))

(declare-fun d!1573689 () Bool)

(assert (=> d!1573689 true))

(declare-fun lt!2007971 () Bool)

(declare-fun lambda!244127 () Int)

(declare-fun forall!13095 (List!56548 Int) Bool)

(assert (=> d!1573689 (= lt!2007971 (forall!13095 rulesArg!165 lambda!244127))))

(declare-fun e!3061393 () Bool)

(assert (=> d!1573689 (= lt!2007971 e!3061393)))

(declare-fun res!2091734 () Bool)

(assert (=> d!1573689 (=> res!2091734 e!3061393)))

(assert (=> d!1573689 (= res!2091734 (not (is-Cons!56424 rulesArg!165)))))

(assert (=> d!1573689 (= (rulesValidInductive!3158 thiss!14805 rulesArg!165) lt!2007971)))

(declare-fun b!4897351 () Bool)

(declare-fun e!3061392 () Bool)

(assert (=> b!4897351 (= e!3061393 e!3061392)))

(declare-fun res!2091733 () Bool)

(assert (=> b!4897351 (=> (not res!2091733) (not e!3061392))))

(assert (=> b!4897351 (= res!2091733 (ruleValid!3677 thiss!14805 (h!62872 rulesArg!165)))))

(declare-fun b!4897352 () Bool)

(assert (=> b!4897352 (= e!3061392 (rulesValidInductive!3158 thiss!14805 (t!366158 rulesArg!165)))))

(assert (= (and d!1573689 (not res!2091734)) b!4897351))

(assert (= (and b!4897351 res!2091733) b!4897352))

(declare-fun m!5904348 () Bool)

(assert (=> d!1573689 m!5904348))

(assert (=> b!4897351 m!5904320))

(assert (=> b!4897352 m!5904240))

(assert (=> b!4897163 d!1573689))

(declare-fun d!1573691 () Bool)

(assert (=> d!1573691 (= (get!19491 (maxPrefix!4608 thiss!14805 rulesArg!165 lt!2007823)) (v!49992 (maxPrefix!4608 thiss!14805 rulesArg!165 lt!2007823)))))

(assert (=> b!4897164 d!1573691))

(declare-fun b!4897373 () Bool)

(declare-fun e!3061400 () Option!14035)

(declare-fun call!339737 () Option!14035)

(assert (=> b!4897373 (= e!3061400 call!339737)))

(declare-fun b!4897374 () Bool)

(declare-fun e!3061401 () Bool)

(declare-fun e!3061402 () Bool)

(assert (=> b!4897374 (= e!3061401 e!3061402)))

(declare-fun res!2091755 () Bool)

(assert (=> b!4897374 (=> (not res!2091755) (not e!3061402))))

(declare-fun lt!2007982 () Option!14035)

(assert (=> b!4897374 (= res!2091755 (isDefined!11048 lt!2007982))))

(declare-fun b!4897375 () Bool)

(declare-fun res!2091751 () Bool)

(assert (=> b!4897375 (=> (not res!2091751) (not e!3061402))))

(declare-fun ++!12248 (List!56546 List!56546) List!56546)

(declare-fun charsOf!5379 (Token!14922) BalanceConc!28924)

(assert (=> b!4897375 (= res!2091751 (= (++!12248 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982)))) (_2!33548 (get!19491 lt!2007982))) lt!2007823))))

(declare-fun b!4897376 () Bool)

(declare-fun res!2091754 () Bool)

(assert (=> b!4897376 (=> (not res!2091754) (not e!3061402))))

(assert (=> b!4897376 (= res!2091754 (< (size!37162 (_2!33548 (get!19491 lt!2007982))) (size!37162 lt!2007823)))))

(declare-fun b!4897378 () Bool)

(declare-fun contains!19442 (List!56548 Rule!16158) Bool)

(assert (=> b!4897378 (= e!3061402 (contains!19442 rulesArg!165 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))))

(declare-fun b!4897379 () Bool)

(declare-fun res!2091749 () Bool)

(assert (=> b!4897379 (=> (not res!2091749) (not e!3061402))))

(assert (=> b!4897379 (= res!2091749 (matchR!6535 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))) (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))))))

(declare-fun bm!339732 () Bool)

(assert (=> bm!339732 (= call!339737 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) lt!2007823))))

(declare-fun d!1573693 () Bool)

(assert (=> d!1573693 e!3061401))

(declare-fun res!2091753 () Bool)

(assert (=> d!1573693 (=> res!2091753 e!3061401)))

(assert (=> d!1573693 (= res!2091753 (isEmpty!30291 lt!2007982))))

(assert (=> d!1573693 (= lt!2007982 e!3061400)))

(declare-fun c!832408 () Bool)

(assert (=> d!1573693 (= c!832408 (and (is-Cons!56424 rulesArg!165) (is-Nil!56424 (t!366158 rulesArg!165))))))

(declare-fun lt!2007984 () Unit!146489)

(declare-fun lt!2007986 () Unit!146489)

(assert (=> d!1573693 (= lt!2007984 lt!2007986)))

(assert (=> d!1573693 (isPrefix!4899 lt!2007823 lt!2007823)))

(assert (=> d!1573693 (= lt!2007986 (lemmaIsPrefixRefl!3296 lt!2007823 lt!2007823))))

(assert (=> d!1573693 (rulesValidInductive!3158 thiss!14805 rulesArg!165)))

(assert (=> d!1573693 (= (maxPrefix!4608 thiss!14805 rulesArg!165 lt!2007823) lt!2007982)))

(declare-fun b!4897377 () Bool)

(declare-fun res!2091752 () Bool)

(assert (=> b!4897377 (=> (not res!2091752) (not e!3061402))))

(assert (=> b!4897377 (= res!2091752 (= (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982)))) (originalCharacters!8492 (_1!33548 (get!19491 lt!2007982)))))))

(declare-fun b!4897380 () Bool)

(declare-fun lt!2007985 () Option!14035)

(declare-fun lt!2007983 () Option!14035)

(assert (=> b!4897380 (= e!3061400 (ite (and (is-None!14034 lt!2007985) (is-None!14034 lt!2007983)) None!14034 (ite (is-None!14034 lt!2007983) lt!2007985 (ite (is-None!14034 lt!2007985) lt!2007983 (ite (>= (size!37159 (_1!33548 (v!49992 lt!2007985))) (size!37159 (_1!33548 (v!49992 lt!2007983)))) lt!2007985 lt!2007983)))))))

(assert (=> b!4897380 (= lt!2007985 call!339737)))

(assert (=> b!4897380 (= lt!2007983 (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) lt!2007823))))

(declare-fun b!4897381 () Bool)

(declare-fun res!2091750 () Bool)

(assert (=> b!4897381 (=> (not res!2091750) (not e!3061402))))

(assert (=> b!4897381 (= res!2091750 (= (value!262253 (_1!33548 (get!19491 lt!2007982))) (apply!13545 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))) (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2007982)))))))))

(assert (= (and d!1573693 c!832408) b!4897373))

(assert (= (and d!1573693 (not c!832408)) b!4897380))

(assert (= (or b!4897373 b!4897380) bm!339732))

(assert (= (and d!1573693 (not res!2091753)) b!4897374))

(assert (= (and b!4897374 res!2091755) b!4897377))

(assert (= (and b!4897377 res!2091752) b!4897376))

(assert (= (and b!4897376 res!2091754) b!4897375))

(assert (= (and b!4897375 res!2091751) b!4897381))

(assert (= (and b!4897381 res!2091750) b!4897379))

(assert (= (and b!4897379 res!2091749) b!4897378))

(declare-fun m!5904354 () Bool)

(assert (=> d!1573693 m!5904354))

(assert (=> d!1573693 m!5904120))

(assert (=> d!1573693 m!5904122))

(assert (=> d!1573693 m!5904144))

(declare-fun m!5904356 () Bool)

(assert (=> b!4897381 m!5904356))

(declare-fun m!5904358 () Bool)

(assert (=> b!4897381 m!5904358))

(assert (=> b!4897381 m!5904358))

(declare-fun m!5904360 () Bool)

(assert (=> b!4897381 m!5904360))

(assert (=> b!4897377 m!5904356))

(declare-fun m!5904362 () Bool)

(assert (=> b!4897377 m!5904362))

(assert (=> b!4897377 m!5904362))

(declare-fun m!5904364 () Bool)

(assert (=> b!4897377 m!5904364))

(assert (=> b!4897376 m!5904356))

(declare-fun m!5904366 () Bool)

(assert (=> b!4897376 m!5904366))

(declare-fun m!5904368 () Bool)

(assert (=> b!4897376 m!5904368))

(assert (=> b!4897378 m!5904356))

(declare-fun m!5904370 () Bool)

(assert (=> b!4897378 m!5904370))

(assert (=> b!4897379 m!5904356))

(assert (=> b!4897379 m!5904362))

(assert (=> b!4897379 m!5904362))

(assert (=> b!4897379 m!5904364))

(assert (=> b!4897379 m!5904364))

(declare-fun m!5904372 () Bool)

(assert (=> b!4897379 m!5904372))

(declare-fun m!5904374 () Bool)

(assert (=> bm!339732 m!5904374))

(declare-fun m!5904376 () Bool)

(assert (=> b!4897380 m!5904376))

(assert (=> b!4897375 m!5904356))

(assert (=> b!4897375 m!5904362))

(assert (=> b!4897375 m!5904362))

(assert (=> b!4897375 m!5904364))

(assert (=> b!4897375 m!5904364))

(declare-fun m!5904378 () Bool)

(assert (=> b!4897375 m!5904378))

(declare-fun m!5904380 () Bool)

(assert (=> b!4897374 m!5904380))

(assert (=> b!4897164 d!1573693))

(assert (=> b!4897164 d!1573647))

(declare-fun d!1573697 () Bool)

(assert (=> d!1573697 (= (list!17739 (_2!33547 lt!2007828)) (list!17741 (c!832380 (_2!33547 lt!2007828))))))

(declare-fun bs!1176444 () Bool)

(assert (= bs!1176444 d!1573697))

(declare-fun m!5904382 () Bool)

(assert (=> bs!1176444 m!5904382))

(assert (=> b!4897154 d!1573697))

(declare-fun b!4897391 () Bool)

(declare-fun res!2091765 () Bool)

(declare-fun e!3061410 () Bool)

(assert (=> b!4897391 (=> (not res!2091765) (not e!3061410))))

(declare-fun head!10460 (List!56546) C!26706)

(assert (=> b!4897391 (= res!2091765 (= (head!10460 lt!2007823) (head!10460 lt!2007823)))))

(declare-fun d!1573699 () Bool)

(declare-fun e!3061411 () Bool)

(assert (=> d!1573699 e!3061411))

(declare-fun res!2091764 () Bool)

(assert (=> d!1573699 (=> res!2091764 e!3061411)))

(declare-fun lt!2007989 () Bool)

(assert (=> d!1573699 (= res!2091764 (not lt!2007989))))

(declare-fun e!3061409 () Bool)

(assert (=> d!1573699 (= lt!2007989 e!3061409)))

(declare-fun res!2091767 () Bool)

(assert (=> d!1573699 (=> res!2091767 e!3061409)))

(assert (=> d!1573699 (= res!2091767 (is-Nil!56422 lt!2007823))))

(assert (=> d!1573699 (= (isPrefix!4899 lt!2007823 lt!2007823) lt!2007989)))

(declare-fun b!4897393 () Bool)

(assert (=> b!4897393 (= e!3061411 (>= (size!37162 lt!2007823) (size!37162 lt!2007823)))))

(declare-fun b!4897390 () Bool)

(assert (=> b!4897390 (= e!3061409 e!3061410)))

(declare-fun res!2091766 () Bool)

(assert (=> b!4897390 (=> (not res!2091766) (not e!3061410))))

(assert (=> b!4897390 (= res!2091766 (not (is-Nil!56422 lt!2007823)))))

(declare-fun b!4897392 () Bool)

(declare-fun tail!9606 (List!56546) List!56546)

(assert (=> b!4897392 (= e!3061410 (isPrefix!4899 (tail!9606 lt!2007823) (tail!9606 lt!2007823)))))

(assert (= (and d!1573699 (not res!2091767)) b!4897390))

(assert (= (and b!4897390 res!2091766) b!4897391))

(assert (= (and b!4897391 res!2091765) b!4897392))

(assert (= (and d!1573699 (not res!2091764)) b!4897393))

(declare-fun m!5904384 () Bool)

(assert (=> b!4897391 m!5904384))

(assert (=> b!4897391 m!5904384))

(assert (=> b!4897393 m!5904368))

(assert (=> b!4897393 m!5904368))

(declare-fun m!5904386 () Bool)

(assert (=> b!4897392 m!5904386))

(assert (=> b!4897392 m!5904386))

(assert (=> b!4897392 m!5904386))

(assert (=> b!4897392 m!5904386))

(declare-fun m!5904388 () Bool)

(assert (=> b!4897392 m!5904388))

(assert (=> b!4897161 d!1573699))

(declare-fun d!1573701 () Bool)

(assert (=> d!1573701 (isPrefix!4899 lt!2007823 lt!2007823)))

(declare-fun lt!2007992 () Unit!146489)

(declare-fun choose!35758 (List!56546 List!56546) Unit!146489)

(assert (=> d!1573701 (= lt!2007992 (choose!35758 lt!2007823 lt!2007823))))

(assert (=> d!1573701 (= (lemmaIsPrefixRefl!3296 lt!2007823 lt!2007823) lt!2007992)))

(declare-fun bs!1176445 () Bool)

(assert (= bs!1176445 d!1573701))

(assert (=> bs!1176445 m!5904120))

(declare-fun m!5904390 () Bool)

(assert (=> bs!1176445 m!5904390))

(assert (=> b!4897161 d!1573701))

(declare-fun d!1573703 () Bool)

(assert (=> d!1573703 (= (list!17739 input!1236) (list!17741 (c!832380 input!1236)))))

(declare-fun bs!1176446 () Bool)

(assert (= bs!1176446 d!1573703))

(declare-fun m!5904392 () Bool)

(assert (=> bs!1176446 m!5904392))

(assert (=> b!4897161 d!1573703))

(declare-fun tp!1378040 () Bool)

(declare-fun b!4897402 () Bool)

(declare-fun tp!1378038 () Bool)

(declare-fun e!3061416 () Bool)

(assert (=> b!4897402 (= e!3061416 (and (inv!72721 (left!40995 (c!832380 input!1236))) tp!1378038 (inv!72721 (right!41325 (c!832380 input!1236))) tp!1378040))))

(declare-fun b!4897404 () Bool)

(declare-fun e!3061417 () Bool)

(declare-fun tp!1378039 () Bool)

(assert (=> b!4897404 (= e!3061417 tp!1378039)))

(declare-fun b!4897403 () Bool)

(declare-fun inv!72727 (IArray!29555) Bool)

(assert (=> b!4897403 (= e!3061416 (and (inv!72727 (xs!18063 (c!832380 input!1236))) e!3061417))))

(assert (=> b!4897168 (= tp!1378013 (and (inv!72721 (c!832380 input!1236)) e!3061416))))

(assert (= (and b!4897168 (is-Node!14747 (c!832380 input!1236))) b!4897402))

(assert (= b!4897403 b!4897404))

(assert (= (and b!4897168 (is-Leaf!24554 (c!832380 input!1236))) b!4897403))

(declare-fun m!5904394 () Bool)

(assert (=> b!4897402 m!5904394))

(declare-fun m!5904396 () Bool)

(assert (=> b!4897402 m!5904396))

(declare-fun m!5904398 () Bool)

(assert (=> b!4897403 m!5904398))

(assert (=> b!4897168 m!5904126))

(declare-fun b!4897418 () Bool)

(declare-fun e!3061420 () Bool)

(declare-fun tp!1378054 () Bool)

(declare-fun tp!1378055 () Bool)

(assert (=> b!4897418 (= e!3061420 (and tp!1378054 tp!1378055))))

(declare-fun b!4897417 () Bool)

(declare-fun tp!1378053 () Bool)

(assert (=> b!4897417 (= e!3061420 tp!1378053)))

(declare-fun b!4897416 () Bool)

(declare-fun tp!1378051 () Bool)

(declare-fun tp!1378052 () Bool)

(assert (=> b!4897416 (= e!3061420 (and tp!1378051 tp!1378052))))

(declare-fun b!4897415 () Bool)

(declare-fun tp_is_empty!35789 () Bool)

(assert (=> b!4897415 (= e!3061420 tp_is_empty!35789)))

(assert (=> b!4897155 (= tp!1378015 e!3061420)))

(assert (= (and b!4897155 (is-ElementMatch!13254 (regex!8179 (h!62872 rulesArg!165)))) b!4897415))

(assert (= (and b!4897155 (is-Concat!21744 (regex!8179 (h!62872 rulesArg!165)))) b!4897416))

(assert (= (and b!4897155 (is-Star!13254 (regex!8179 (h!62872 rulesArg!165)))) b!4897417))

(assert (= (and b!4897155 (is-Union!13254 (regex!8179 (h!62872 rulesArg!165)))) b!4897418))

(declare-fun b!4897429 () Bool)

(declare-fun b_free!131631 () Bool)

(declare-fun b_next!132421 () Bool)

(assert (=> b!4897429 (= b_free!131631 (not b_next!132421))))

(declare-fun tp!1378065 () Bool)

(declare-fun b_and!345503 () Bool)

(assert (=> b!4897429 (= tp!1378065 b_and!345503)))

(declare-fun b_free!131633 () Bool)

(declare-fun b_next!132423 () Bool)

(assert (=> b!4897429 (= b_free!131633 (not b_next!132423))))

(declare-fun tp!1378067 () Bool)

(declare-fun b_and!345505 () Bool)

(assert (=> b!4897429 (= tp!1378067 b_and!345505)))

(declare-fun e!3061430 () Bool)

(assert (=> b!4897429 (= e!3061430 (and tp!1378065 tp!1378067))))

(declare-fun e!3061432 () Bool)

(declare-fun b!4897428 () Bool)

(declare-fun tp!1378064 () Bool)

(assert (=> b!4897428 (= e!3061432 (and tp!1378064 (inv!72716 (tag!9043 (h!62872 (t!366158 rulesArg!165)))) (inv!72719 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) e!3061430))))

(declare-fun b!4897427 () Bool)

(declare-fun e!3061429 () Bool)

(declare-fun tp!1378066 () Bool)

(assert (=> b!4897427 (= e!3061429 (and e!3061432 tp!1378066))))

(assert (=> b!4897162 (= tp!1378012 e!3061429)))

(assert (= b!4897428 b!4897429))

(assert (= b!4897427 b!4897428))

(assert (= (and b!4897162 (is-Cons!56424 (t!366158 rulesArg!165))) b!4897427))

(declare-fun m!5904400 () Bool)

(assert (=> b!4897428 m!5904400))

(declare-fun m!5904402 () Bool)

(assert (=> b!4897428 m!5904402))

(push 1)

(assert (not b!4897391))

(assert (not b_next!132421))

(assert b_and!345495)

(assert (not b!4897308))

(assert (not b!4897380))

(assert (not b!4897418))

(assert (not bm!339723))

(assert (not d!1573703))

(assert (not b!4897375))

(assert (not d!1573629))

(assert b_and!345503)

(assert (not b!4897219))

(assert (not b!4897403))

(assert (not b_next!132413))

(assert (not d!1573693))

(assert (not d!1573631))

(assert (not b!4897416))

(assert (not b!4897404))

(assert (not b!4897264))

(assert (not b!4897263))

(assert (not b!4897309))

(assert (not d!1573637))

(assert (not b!4897231))

(assert (not d!1573689))

(assert (not b!4897168))

(assert (not b!4897378))

(assert (not b!4897306))

(assert (not b!4897377))

(assert (not b!4897376))

(assert b_and!345497)

(assert (not b!4897351))

(assert (not b!4897379))

(assert (not b!4897226))

(assert (not b!4897228))

(assert (not b!4897393))

(assert (not bm!339720))

(assert (not b!4897307))

(assert (not b!4897310))

(assert (not d!1573627))

(assert (not d!1573643))

(assert (not d!1573697))

(assert (not b!4897258))

(assert (not b!4897261))

(assert (not b!4897427))

(assert (not d!1573649))

(assert (not b!4897374))

(assert (not d!1573635))

(assert tp_is_empty!35789)

(assert (not b!4897381))

(assert (not d!1573659))

(assert (not b!4897352))

(assert b_and!345505)

(assert (not b!4897392))

(assert (not b!4897402))

(assert (not b!4897428))

(assert (not b!4897259))

(assert (not b!4897257))

(assert (not bm!339732))

(assert (not b_next!132415))

(assert (not b!4897260))

(assert (not b!4897417))

(assert (not b_next!132423))

(assert (not d!1573701))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132421))

(assert b_and!345503)

(assert (not b_next!132413))

(assert b_and!345495)

(assert b_and!345497)

(assert b_and!345505)

(assert (not b_next!132415))

(assert (not b_next!132423))

(check-sat)

(get-model)

(pop 1)

(declare-fun e!3061496 () Bool)

(declare-fun lt!2008050 () Option!14036)

(declare-fun b!4897516 () Bool)

(assert (=> b!4897516 (= e!3061496 (= (list!17739 (_2!33547 (get!19492 lt!2008050))) (_2!33548 (get!19491 (maxPrefixZipper!678 thiss!14805 (t!366158 (t!366158 rulesArg!165)) (list!17739 input!1236))))))))

(declare-fun b!4897517 () Bool)

(declare-fun e!3061493 () Option!14036)

(declare-fun lt!2008046 () Option!14036)

(declare-fun lt!2008049 () Option!14036)

(assert (=> b!4897517 (= e!3061493 (ite (and (is-None!14035 lt!2008046) (is-None!14035 lt!2008049)) None!14035 (ite (is-None!14035 lt!2008049) lt!2008046 (ite (is-None!14035 lt!2008046) lt!2008049 (ite (>= (size!37159 (_1!33547 (v!49993 lt!2008046))) (size!37159 (_1!33547 (v!49993 lt!2008049)))) lt!2008046 lt!2008049)))))))

(declare-fun call!339741 () Option!14036)

(assert (=> b!4897517 (= lt!2008046 call!339741)))

(assert (=> b!4897517 (= lt!2008049 (maxPrefixZipperSequence!1320 thiss!14805 (t!366158 (t!366158 (t!366158 rulesArg!165))) input!1236))))

(declare-fun b!4897518 () Bool)

(declare-fun e!3061497 () Bool)

(assert (=> b!4897518 (= e!3061497 e!3061496)))

(declare-fun res!2091802 () Bool)

(assert (=> b!4897518 (=> (not res!2091802) (not e!3061496))))

(assert (=> b!4897518 (= res!2091802 (= (_1!33547 (get!19492 lt!2008050)) (_1!33548 (get!19491 (maxPrefixZipper!678 thiss!14805 (t!366158 (t!366158 rulesArg!165)) (list!17739 input!1236))))))))

(declare-fun b!4897519 () Bool)

(declare-fun e!3061498 () Bool)

(declare-fun e!3061495 () Bool)

(assert (=> b!4897519 (= e!3061498 e!3061495)))

(declare-fun res!2091803 () Bool)

(assert (=> b!4897519 (=> res!2091803 e!3061495)))

(assert (=> b!4897519 (= res!2091803 (not (isDefined!11049 lt!2008050)))))

(declare-fun bm!339736 () Bool)

(assert (=> bm!339736 (= call!339741 (maxPrefixOneRuleZipperSequence!689 thiss!14805 (h!62872 (t!366158 (t!366158 rulesArg!165))) input!1236))))

(declare-fun b!4897521 () Bool)

(assert (=> b!4897521 (= e!3061493 call!339741)))

(declare-fun b!4897522 () Bool)

(declare-fun res!2091805 () Bool)

(assert (=> b!4897522 (=> (not res!2091805) (not e!3061498))))

(assert (=> b!4897522 (= res!2091805 e!3061497)))

(declare-fun res!2091806 () Bool)

(assert (=> b!4897522 (=> res!2091806 e!3061497)))

(assert (=> b!4897522 (= res!2091806 (not (isDefined!11049 lt!2008050)))))

(declare-fun b!4897523 () Bool)

(declare-fun e!3061494 () Bool)

(assert (=> b!4897523 (= e!3061494 (= (list!17739 (_2!33547 (get!19492 lt!2008050))) (_2!33548 (get!19491 (maxPrefix!4608 thiss!14805 (t!366158 (t!366158 rulesArg!165)) (list!17739 input!1236))))))))

(declare-fun b!4897520 () Bool)

(assert (=> b!4897520 (= e!3061495 e!3061494)))

(declare-fun res!2091804 () Bool)

(assert (=> b!4897520 (=> (not res!2091804) (not e!3061494))))

(assert (=> b!4897520 (= res!2091804 (= (_1!33547 (get!19492 lt!2008050)) (_1!33548 (get!19491 (maxPrefix!4608 thiss!14805 (t!366158 (t!366158 rulesArg!165)) (list!17739 input!1236))))))))

(declare-fun d!1573707 () Bool)

(assert (=> d!1573707 e!3061498))

(declare-fun res!2091807 () Bool)

(assert (=> d!1573707 (=> (not res!2091807) (not e!3061498))))

(assert (=> d!1573707 (= res!2091807 (= (isDefined!11049 lt!2008050) (isDefined!11048 (maxPrefixZipper!678 thiss!14805 (t!366158 (t!366158 rulesArg!165)) (list!17739 input!1236)))))))

(assert (=> d!1573707 (= lt!2008050 e!3061493)))

(declare-fun c!832415 () Bool)

(assert (=> d!1573707 (= c!832415 (and (is-Cons!56424 (t!366158 (t!366158 rulesArg!165))) (is-Nil!56424 (t!366158 (t!366158 (t!366158 rulesArg!165))))))))

(declare-fun lt!2008045 () Unit!146489)

(declare-fun lt!2008048 () Unit!146489)

(assert (=> d!1573707 (= lt!2008045 lt!2008048)))

(declare-fun lt!2008044 () List!56546)

(declare-fun lt!2008047 () List!56546)

(assert (=> d!1573707 (isPrefix!4899 lt!2008044 lt!2008047)))

(assert (=> d!1573707 (= lt!2008048 (lemmaIsPrefixRefl!3296 lt!2008044 lt!2008047))))

(assert (=> d!1573707 (= lt!2008047 (list!17739 input!1236))))

(assert (=> d!1573707 (= lt!2008044 (list!17739 input!1236))))

(assert (=> d!1573707 (rulesValidInductive!3158 thiss!14805 (t!366158 (t!366158 rulesArg!165)))))

(assert (=> d!1573707 (= (maxPrefixZipperSequence!1320 thiss!14805 (t!366158 (t!366158 rulesArg!165)) input!1236) lt!2008050)))

(assert (= (and d!1573707 c!832415) b!4897521))

(assert (= (and d!1573707 (not c!832415)) b!4897517))

(assert (= (or b!4897521 b!4897517) bm!339736))

(assert (= (and d!1573707 res!2091807) b!4897522))

(assert (= (and b!4897522 (not res!2091806)) b!4897518))

(assert (= (and b!4897518 res!2091802) b!4897516))

(assert (= (and b!4897522 res!2091805) b!4897519))

(assert (= (and b!4897519 (not res!2091803)) b!4897520))

(assert (= (and b!4897520 res!2091804) b!4897523))

(declare-fun m!5904482 () Bool)

(assert (=> bm!339736 m!5904482))

(declare-fun m!5904484 () Bool)

(assert (=> b!4897516 m!5904484))

(declare-fun m!5904486 () Bool)

(assert (=> b!4897516 m!5904486))

(assert (=> b!4897516 m!5904124))

(assert (=> b!4897516 m!5904124))

(assert (=> b!4897516 m!5904484))

(declare-fun m!5904488 () Bool)

(assert (=> b!4897516 m!5904488))

(declare-fun m!5904490 () Bool)

(assert (=> b!4897516 m!5904490))

(declare-fun m!5904492 () Bool)

(assert (=> b!4897519 m!5904492))

(assert (=> b!4897520 m!5904490))

(assert (=> b!4897520 m!5904124))

(assert (=> b!4897520 m!5904124))

(declare-fun m!5904494 () Bool)

(assert (=> b!4897520 m!5904494))

(assert (=> b!4897520 m!5904494))

(declare-fun m!5904496 () Bool)

(assert (=> b!4897520 m!5904496))

(declare-fun m!5904498 () Bool)

(assert (=> b!4897517 m!5904498))

(assert (=> b!4897522 m!5904492))

(assert (=> b!4897523 m!5904124))

(assert (=> b!4897523 m!5904124))

(assert (=> b!4897523 m!5904494))

(assert (=> b!4897523 m!5904488))

(assert (=> b!4897523 m!5904494))

(assert (=> b!4897523 m!5904496))

(assert (=> b!4897523 m!5904490))

(assert (=> d!1573707 m!5904492))

(assert (=> d!1573707 m!5904124))

(declare-fun m!5904500 () Bool)

(assert (=> d!1573707 m!5904500))

(declare-fun m!5904502 () Bool)

(assert (=> d!1573707 m!5904502))

(assert (=> d!1573707 m!5904124))

(assert (=> d!1573707 m!5904484))

(assert (=> d!1573707 m!5904484))

(declare-fun m!5904504 () Bool)

(assert (=> d!1573707 m!5904504))

(declare-fun m!5904506 () Bool)

(assert (=> d!1573707 m!5904506))

(assert (=> b!4897518 m!5904490))

(assert (=> b!4897518 m!5904124))

(assert (=> b!4897518 m!5904124))

(assert (=> b!4897518 m!5904484))

(assert (=> b!4897518 m!5904484))

(assert (=> b!4897518 m!5904486))

(assert (=> b!4897258 d!1573707))

(declare-fun b!4897533 () Bool)

(declare-fun e!3061503 () List!56546)

(assert (=> b!4897533 (= e!3061503 (Cons!56422 (h!62870 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))) (++!12248 (t!366156 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))) (_2!33548 (get!19491 lt!2007982)))))))

(declare-fun b!4897534 () Bool)

(declare-fun res!2091813 () Bool)

(declare-fun e!3061504 () Bool)

(assert (=> b!4897534 (=> (not res!2091813) (not e!3061504))))

(declare-fun lt!2008053 () List!56546)

(assert (=> b!4897534 (= res!2091813 (= (size!37162 lt!2008053) (+ (size!37162 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))) (size!37162 (_2!33548 (get!19491 lt!2007982))))))))

(declare-fun d!1573709 () Bool)

(assert (=> d!1573709 e!3061504))

(declare-fun res!2091812 () Bool)

(assert (=> d!1573709 (=> (not res!2091812) (not e!3061504))))

(declare-fun content!10027 (List!56546) (Set C!26706))

(assert (=> d!1573709 (= res!2091812 (= (content!10027 lt!2008053) (set.union (content!10027 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))) (content!10027 (_2!33548 (get!19491 lt!2007982))))))))

(assert (=> d!1573709 (= lt!2008053 e!3061503)))

(declare-fun c!832418 () Bool)

(assert (=> d!1573709 (= c!832418 (is-Nil!56422 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))))))

(assert (=> d!1573709 (= (++!12248 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982)))) (_2!33548 (get!19491 lt!2007982))) lt!2008053)))

(declare-fun b!4897532 () Bool)

(assert (=> b!4897532 (= e!3061503 (_2!33548 (get!19491 lt!2007982)))))

(declare-fun b!4897535 () Bool)

(assert (=> b!4897535 (= e!3061504 (or (not (= (_2!33548 (get!19491 lt!2007982)) Nil!56422)) (= lt!2008053 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982)))))))))

(assert (= (and d!1573709 c!832418) b!4897532))

(assert (= (and d!1573709 (not c!832418)) b!4897533))

(assert (= (and d!1573709 res!2091812) b!4897534))

(assert (= (and b!4897534 res!2091813) b!4897535))

(declare-fun m!5904508 () Bool)

(assert (=> b!4897533 m!5904508))

(declare-fun m!5904510 () Bool)

(assert (=> b!4897534 m!5904510))

(assert (=> b!4897534 m!5904364))

(declare-fun m!5904512 () Bool)

(assert (=> b!4897534 m!5904512))

(assert (=> b!4897534 m!5904366))

(declare-fun m!5904514 () Bool)

(assert (=> d!1573709 m!5904514))

(assert (=> d!1573709 m!5904364))

(declare-fun m!5904516 () Bool)

(assert (=> d!1573709 m!5904516))

(declare-fun m!5904518 () Bool)

(assert (=> d!1573709 m!5904518))

(assert (=> b!4897375 d!1573709))

(declare-fun d!1573711 () Bool)

(assert (=> d!1573711 (= (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982)))) (list!17741 (c!832380 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))))))

(declare-fun bs!1176447 () Bool)

(assert (= bs!1176447 d!1573711))

(declare-fun m!5904520 () Bool)

(assert (=> bs!1176447 m!5904520))

(assert (=> b!4897375 d!1573711))

(declare-fun d!1573713 () Bool)

(declare-fun lt!2008056 () BalanceConc!28924)

(assert (=> d!1573713 (= (list!17739 lt!2008056) (originalCharacters!8492 (_1!33548 (get!19491 lt!2007982))))))

(declare-fun dynLambda!22675 (Int TokenValue!8489) BalanceConc!28924)

(assert (=> d!1573713 (= lt!2008056 (dynLambda!22675 (toChars!10941 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))) (value!262253 (_1!33548 (get!19491 lt!2007982)))))))

(assert (=> d!1573713 (= (charsOf!5379 (_1!33548 (get!19491 lt!2007982))) lt!2008056)))

(declare-fun b_lambda!194793 () Bool)

(assert (=> (not b_lambda!194793) (not d!1573713)))

(declare-fun t!366163 () Bool)

(declare-fun tb!259379 () Bool)

(assert (=> (and b!4897156 (= (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toChars!10941 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))) t!366163) tb!259379))

(declare-fun b!4897540 () Bool)

(declare-fun e!3061507 () Bool)

(declare-fun tp!1378106 () Bool)

(assert (=> b!4897540 (= e!3061507 (and (inv!72721 (c!832380 (dynLambda!22675 (toChars!10941 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))) (value!262253 (_1!33548 (get!19491 lt!2007982)))))) tp!1378106))))

(declare-fun result!323002 () Bool)

(assert (=> tb!259379 (= result!323002 (and (inv!72720 (dynLambda!22675 (toChars!10941 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))) (value!262253 (_1!33548 (get!19491 lt!2007982))))) e!3061507))))

(assert (= tb!259379 b!4897540))

(declare-fun m!5904522 () Bool)

(assert (=> b!4897540 m!5904522))

(declare-fun m!5904524 () Bool)

(assert (=> tb!259379 m!5904524))

(assert (=> d!1573713 t!366163))

(declare-fun b_and!345511 () Bool)

(assert (= b_and!345497 (and (=> t!366163 result!323002) b_and!345511)))

(declare-fun tb!259381 () Bool)

(declare-fun t!366165 () Bool)

(assert (=> (and b!4897429 (= (toChars!10941 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toChars!10941 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))) t!366165) tb!259381))

(declare-fun result!323006 () Bool)

(assert (= result!323006 result!323002))

(assert (=> d!1573713 t!366165))

(declare-fun b_and!345513 () Bool)

(assert (= b_and!345505 (and (=> t!366165 result!323006) b_and!345513)))

(declare-fun m!5904526 () Bool)

(assert (=> d!1573713 m!5904526))

(declare-fun m!5904528 () Bool)

(assert (=> d!1573713 m!5904528))

(assert (=> b!4897375 d!1573713))

(declare-fun d!1573715 () Bool)

(assert (=> d!1573715 (= (get!19491 lt!2007982) (v!49992 lt!2007982))))

(assert (=> b!4897375 d!1573715))

(declare-fun d!1573717 () Bool)

(declare-fun res!2091820 () Bool)

(declare-fun e!3061510 () Bool)

(assert (=> d!1573717 (=> (not res!2091820) (not e!3061510))))

(declare-fun size!37165 (Conc!14747) Int)

(assert (=> d!1573717 (= res!2091820 (= (csize!29724 (c!832380 input!1236)) (+ (size!37165 (left!40995 (c!832380 input!1236))) (size!37165 (right!41325 (c!832380 input!1236))))))))

(assert (=> d!1573717 (= (inv!72725 (c!832380 input!1236)) e!3061510)))

(declare-fun b!4897547 () Bool)

(declare-fun res!2091821 () Bool)

(assert (=> b!4897547 (=> (not res!2091821) (not e!3061510))))

(assert (=> b!4897547 (= res!2091821 (and (not (= (left!40995 (c!832380 input!1236)) Empty!14747)) (not (= (right!41325 (c!832380 input!1236)) Empty!14747))))))

(declare-fun b!4897548 () Bool)

(declare-fun res!2091822 () Bool)

(assert (=> b!4897548 (=> (not res!2091822) (not e!3061510))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1960 (Conc!14747) Int)

(assert (=> b!4897548 (= res!2091822 (= (cheight!14958 (c!832380 input!1236)) (+ (max!0 (height!1960 (left!40995 (c!832380 input!1236))) (height!1960 (right!41325 (c!832380 input!1236)))) 1)))))

(declare-fun b!4897549 () Bool)

(assert (=> b!4897549 (= e!3061510 (<= 0 (cheight!14958 (c!832380 input!1236))))))

(assert (= (and d!1573717 res!2091820) b!4897547))

(assert (= (and b!4897547 res!2091821) b!4897548))

(assert (= (and b!4897548 res!2091822) b!4897549))

(declare-fun m!5904530 () Bool)

(assert (=> d!1573717 m!5904530))

(declare-fun m!5904532 () Bool)

(assert (=> d!1573717 m!5904532))

(declare-fun m!5904534 () Bool)

(assert (=> b!4897548 m!5904534))

(declare-fun m!5904536 () Bool)

(assert (=> b!4897548 m!5904536))

(assert (=> b!4897548 m!5904534))

(assert (=> b!4897548 m!5904536))

(declare-fun m!5904538 () Bool)

(assert (=> b!4897548 m!5904538))

(assert (=> b!4897226 d!1573717))

(declare-fun b!4897578 () Bool)

(declare-fun e!3061529 () Bool)

(assert (=> b!4897578 (= e!3061529 (not (= (head!10460 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))) (c!832381 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))))))))

(declare-fun d!1573719 () Bool)

(declare-fun e!3061530 () Bool)

(assert (=> d!1573719 e!3061530))

(declare-fun c!832425 () Bool)

(assert (=> d!1573719 (= c!832425 (is-EmptyExpr!13254 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))))))

(declare-fun lt!2008059 () Bool)

(declare-fun e!3061528 () Bool)

(assert (=> d!1573719 (= lt!2008059 e!3061528)))

(declare-fun c!832426 () Bool)

(assert (=> d!1573719 (= c!832426 (isEmpty!30293 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))))))

(declare-fun validRegex!5887 (Regex!13254) Bool)

(assert (=> d!1573719 (validRegex!5887 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))))

(assert (=> d!1573719 (= (matchR!6535 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))) (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))) lt!2008059)))

(declare-fun b!4897579 () Bool)

(declare-fun e!3061531 () Bool)

(declare-fun e!3061525 () Bool)

(assert (=> b!4897579 (= e!3061531 e!3061525)))

(declare-fun res!2091839 () Bool)

(assert (=> b!4897579 (=> (not res!2091839) (not e!3061525))))

(assert (=> b!4897579 (= res!2091839 (not lt!2008059))))

(declare-fun b!4897580 () Bool)

(declare-fun nullable!4560 (Regex!13254) Bool)

(assert (=> b!4897580 (= e!3061528 (nullable!4560 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))))))

(declare-fun b!4897581 () Bool)

(declare-fun call!339744 () Bool)

(assert (=> b!4897581 (= e!3061530 (= lt!2008059 call!339744))))

(declare-fun b!4897582 () Bool)

(declare-fun res!2091842 () Bool)

(declare-fun e!3061527 () Bool)

(assert (=> b!4897582 (=> (not res!2091842) (not e!3061527))))

(assert (=> b!4897582 (= res!2091842 (not call!339744))))

(declare-fun b!4897583 () Bool)

(declare-fun derivativeStep!3882 (Regex!13254 C!26706) Regex!13254)

(assert (=> b!4897583 (= e!3061528 (matchR!6535 (derivativeStep!3882 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))) (head!10460 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982)))))) (tail!9606 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982)))))))))

(declare-fun b!4897584 () Bool)

(assert (=> b!4897584 (= e!3061525 e!3061529)))

(declare-fun res!2091841 () Bool)

(assert (=> b!4897584 (=> res!2091841 e!3061529)))

(assert (=> b!4897584 (= res!2091841 call!339744)))

(declare-fun b!4897585 () Bool)

(declare-fun e!3061526 () Bool)

(assert (=> b!4897585 (= e!3061530 e!3061526)))

(declare-fun c!832427 () Bool)

(assert (=> b!4897585 (= c!832427 (is-EmptyLang!13254 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))))))

(declare-fun b!4897586 () Bool)

(declare-fun res!2091844 () Bool)

(assert (=> b!4897586 (=> res!2091844 e!3061529)))

(assert (=> b!4897586 (= res!2091844 (not (isEmpty!30293 (tail!9606 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))))))))

(declare-fun b!4897587 () Bool)

(assert (=> b!4897587 (= e!3061527 (= (head!10460 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))) (c!832381 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))))))

(declare-fun b!4897588 () Bool)

(declare-fun res!2091840 () Bool)

(assert (=> b!4897588 (=> (not res!2091840) (not e!3061527))))

(assert (=> b!4897588 (= res!2091840 (isEmpty!30293 (tail!9606 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982)))))))))

(declare-fun b!4897589 () Bool)

(declare-fun res!2091845 () Bool)

(assert (=> b!4897589 (=> res!2091845 e!3061531)))

(assert (=> b!4897589 (= res!2091845 e!3061527)))

(declare-fun res!2091843 () Bool)

(assert (=> b!4897589 (=> (not res!2091843) (not e!3061527))))

(assert (=> b!4897589 (= res!2091843 lt!2008059)))

(declare-fun b!4897590 () Bool)

(declare-fun res!2091846 () Bool)

(assert (=> b!4897590 (=> res!2091846 e!3061531)))

(assert (=> b!4897590 (= res!2091846 (not (is-ElementMatch!13254 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))))))

(assert (=> b!4897590 (= e!3061526 e!3061531)))

(declare-fun b!4897591 () Bool)

(assert (=> b!4897591 (= e!3061526 (not lt!2008059))))

(declare-fun bm!339739 () Bool)

(assert (=> bm!339739 (= call!339744 (isEmpty!30293 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2007982))))))))

(assert (= (and d!1573719 c!832426) b!4897580))

(assert (= (and d!1573719 (not c!832426)) b!4897583))

(assert (= (and d!1573719 c!832425) b!4897581))

(assert (= (and d!1573719 (not c!832425)) b!4897585))

(assert (= (and b!4897585 c!832427) b!4897591))

(assert (= (and b!4897585 (not c!832427)) b!4897590))

(assert (= (and b!4897590 (not res!2091846)) b!4897589))

(assert (= (and b!4897589 res!2091843) b!4897582))

(assert (= (and b!4897582 res!2091842) b!4897588))

(assert (= (and b!4897588 res!2091840) b!4897587))

(assert (= (and b!4897589 (not res!2091845)) b!4897579))

(assert (= (and b!4897579 res!2091839) b!4897584))

(assert (= (and b!4897584 (not res!2091841)) b!4897586))

(assert (= (and b!4897586 (not res!2091844)) b!4897578))

(assert (= (or b!4897581 b!4897582 b!4897584) bm!339739))

(assert (=> b!4897578 m!5904364))

(declare-fun m!5904540 () Bool)

(assert (=> b!4897578 m!5904540))

(declare-fun m!5904542 () Bool)

(assert (=> b!4897580 m!5904542))

(assert (=> b!4897588 m!5904364))

(declare-fun m!5904544 () Bool)

(assert (=> b!4897588 m!5904544))

(assert (=> b!4897588 m!5904544))

(declare-fun m!5904546 () Bool)

(assert (=> b!4897588 m!5904546))

(assert (=> bm!339739 m!5904364))

(declare-fun m!5904548 () Bool)

(assert (=> bm!339739 m!5904548))

(assert (=> d!1573719 m!5904364))

(assert (=> d!1573719 m!5904548))

(declare-fun m!5904550 () Bool)

(assert (=> d!1573719 m!5904550))

(assert (=> b!4897587 m!5904364))

(assert (=> b!4897587 m!5904540))

(assert (=> b!4897583 m!5904364))

(assert (=> b!4897583 m!5904540))

(assert (=> b!4897583 m!5904540))

(declare-fun m!5904552 () Bool)

(assert (=> b!4897583 m!5904552))

(assert (=> b!4897583 m!5904364))

(assert (=> b!4897583 m!5904544))

(assert (=> b!4897583 m!5904552))

(assert (=> b!4897583 m!5904544))

(declare-fun m!5904554 () Bool)

(assert (=> b!4897583 m!5904554))

(assert (=> b!4897586 m!5904364))

(assert (=> b!4897586 m!5904544))

(assert (=> b!4897586 m!5904544))

(assert (=> b!4897586 m!5904546))

(assert (=> b!4897379 d!1573719))

(assert (=> b!4897379 d!1573715))

(assert (=> b!4897379 d!1573711))

(assert (=> b!4897379 d!1573713))

(declare-fun d!1573721 () Bool)

(assert (=> d!1573721 (= (isDefined!11049 lt!2007899) (not (isEmpty!30292 lt!2007899)))))

(declare-fun bs!1176448 () Bool)

(assert (= bs!1176448 d!1573721))

(declare-fun m!5904556 () Bool)

(assert (=> bs!1176448 m!5904556))

(assert (=> b!4897260 d!1573721))

(assert (=> b!4897377 d!1573711))

(assert (=> b!4897377 d!1573713))

(assert (=> b!4897377 d!1573715))

(declare-fun d!1573723 () Bool)

(declare-fun res!2091851 () Bool)

(declare-fun e!3061534 () Bool)

(assert (=> d!1573723 (=> (not res!2091851) (not e!3061534))))

(declare-fun list!17743 (IArray!29555) List!56546)

(assert (=> d!1573723 (= res!2091851 (<= (size!37162 (list!17743 (xs!18063 (c!832380 input!1236)))) 512))))

(assert (=> d!1573723 (= (inv!72726 (c!832380 input!1236)) e!3061534)))

(declare-fun b!4897596 () Bool)

(declare-fun res!2091852 () Bool)

(assert (=> b!4897596 (=> (not res!2091852) (not e!3061534))))

(assert (=> b!4897596 (= res!2091852 (= (csize!29725 (c!832380 input!1236)) (size!37162 (list!17743 (xs!18063 (c!832380 input!1236))))))))

(declare-fun b!4897597 () Bool)

(assert (=> b!4897597 (= e!3061534 (and (> (csize!29725 (c!832380 input!1236)) 0) (<= (csize!29725 (c!832380 input!1236)) 512)))))

(assert (= (and d!1573723 res!2091851) b!4897596))

(assert (= (and b!4897596 res!2091852) b!4897597))

(declare-fun m!5904558 () Bool)

(assert (=> d!1573723 m!5904558))

(assert (=> d!1573723 m!5904558))

(declare-fun m!5904560 () Bool)

(assert (=> d!1573723 m!5904560))

(assert (=> b!4897596 m!5904558))

(assert (=> b!4897596 m!5904558))

(assert (=> b!4897596 m!5904560))

(assert (=> b!4897228 d!1573723))

(declare-fun d!1573725 () Bool)

(assert (=> d!1573725 (= (head!10460 lt!2007823) (h!62870 lt!2007823))))

(assert (=> b!4897391 d!1573725))

(declare-fun d!1573727 () Bool)

(assert (=> d!1573727 (= (get!19492 lt!2007947) (v!49993 lt!2007947))))

(assert (=> b!4897309 d!1573727))

(declare-fun d!1573729 () Bool)

(assert (=> d!1573729 (= (get!19491 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) (list!17739 input!1236))) (v!49992 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) (list!17739 input!1236))))))

(assert (=> b!4897309 d!1573729))

(declare-fun b!4897616 () Bool)

(declare-fun res!2091887 () Bool)

(declare-fun e!3061545 () Bool)

(assert (=> b!4897616 (=> (not res!2091887) (not e!3061545))))

(declare-fun lt!2008070 () Option!14035)

(assert (=> b!4897616 (= res!2091887 (= (++!12248 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008070)))) (_2!33548 (get!19491 lt!2008070))) (list!17739 input!1236)))))

(declare-fun b!4897617 () Bool)

(declare-fun res!2091884 () Bool)

(assert (=> b!4897617 (=> (not res!2091884) (not e!3061545))))

(assert (=> b!4897617 (= res!2091884 (= (value!262253 (_1!33548 (get!19491 lt!2008070))) (apply!13545 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2008070)))) (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2008070)))))))))

(declare-fun b!4897618 () Bool)

(declare-fun e!3061544 () Bool)

(assert (=> b!4897618 (= e!3061544 (matchR!6535 (regex!8179 (h!62872 rulesArg!165)) (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) (list!17739 input!1236) (list!17739 input!1236) (size!37162 (list!17739 input!1236))))))))

(declare-fun b!4897619 () Bool)

(declare-fun e!3061543 () Option!14035)

(declare-fun lt!2008071 () tuple2!60498)

(assert (=> b!4897619 (= e!3061543 (Some!14034 (tuple2!60491 (Token!14923 (apply!13545 (transformation!8179 (h!62872 rulesArg!165)) (seqFromList!5941 (_1!33552 lt!2008071))) (h!62872 rulesArg!165) (size!37161 (seqFromList!5941 (_1!33552 lt!2008071))) (_1!33552 lt!2008071)) (_2!33552 lt!2008071))))))

(declare-fun lt!2008074 () Unit!146489)

(assert (=> b!4897619 (= lt!2008074 (longestMatchIsAcceptedByMatchOrIsEmpty!1721 (regex!8179 (h!62872 rulesArg!165)) (list!17739 input!1236)))))

(declare-fun res!2091885 () Bool)

(assert (=> b!4897619 (= res!2091885 (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) (list!17739 input!1236) (list!17739 input!1236) (size!37162 (list!17739 input!1236))))))))

(assert (=> b!4897619 (=> res!2091885 e!3061544)))

(assert (=> b!4897619 e!3061544))

(declare-fun lt!2008073 () Unit!146489)

(assert (=> b!4897619 (= lt!2008073 lt!2008074)))

(declare-fun lt!2008072 () Unit!146489)

(declare-fun lemmaSemiInverse!2569 (TokenValueInjection!16286 BalanceConc!28924) Unit!146489)

(assert (=> b!4897619 (= lt!2008072 (lemmaSemiInverse!2569 (transformation!8179 (h!62872 rulesArg!165)) (seqFromList!5941 (_1!33552 lt!2008071))))))

(declare-fun d!1573731 () Bool)

(declare-fun e!3061546 () Bool)

(assert (=> d!1573731 e!3061546))

(declare-fun res!2091886 () Bool)

(assert (=> d!1573731 (=> res!2091886 e!3061546)))

(assert (=> d!1573731 (= res!2091886 (isEmpty!30291 lt!2008070))))

(assert (=> d!1573731 (= lt!2008070 e!3061543)))

(declare-fun c!832430 () Bool)

(assert (=> d!1573731 (= c!832430 (isEmpty!30293 (_1!33552 lt!2008071)))))

(declare-fun findLongestMatch!1652 (Regex!13254 List!56546) tuple2!60498)

(assert (=> d!1573731 (= lt!2008071 (findLongestMatch!1652 (regex!8179 (h!62872 rulesArg!165)) (list!17739 input!1236)))))

(assert (=> d!1573731 (ruleValid!3677 thiss!14805 (h!62872 rulesArg!165))))

(assert (=> d!1573731 (= (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) (list!17739 input!1236)) lt!2008070)))

(declare-fun b!4897620 () Bool)

(assert (=> b!4897620 (= e!3061546 e!3061545)))

(declare-fun res!2091883 () Bool)

(assert (=> b!4897620 (=> (not res!2091883) (not e!3061545))))

(assert (=> b!4897620 (= res!2091883 (matchR!6535 (regex!8179 (h!62872 rulesArg!165)) (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008070))))))))

(declare-fun b!4897621 () Bool)

(assert (=> b!4897621 (= e!3061545 (= (size!37159 (_1!33548 (get!19491 lt!2008070))) (size!37162 (originalCharacters!8492 (_1!33548 (get!19491 lt!2008070))))))))

(declare-fun b!4897622 () Bool)

(declare-fun res!2091882 () Bool)

(assert (=> b!4897622 (=> (not res!2091882) (not e!3061545))))

(assert (=> b!4897622 (= res!2091882 (< (size!37162 (_2!33548 (get!19491 lt!2008070))) (size!37162 (list!17739 input!1236))))))

(declare-fun b!4897623 () Bool)

(assert (=> b!4897623 (= e!3061543 None!14034)))

(declare-fun b!4897624 () Bool)

(declare-fun res!2091881 () Bool)

(assert (=> b!4897624 (=> (not res!2091881) (not e!3061545))))

(assert (=> b!4897624 (= res!2091881 (= (rule!11381 (_1!33548 (get!19491 lt!2008070))) (h!62872 rulesArg!165)))))

(assert (= (and d!1573731 c!832430) b!4897623))

(assert (= (and d!1573731 (not c!832430)) b!4897619))

(assert (= (and b!4897619 (not res!2091885)) b!4897618))

(assert (= (and d!1573731 (not res!2091886)) b!4897620))

(assert (= (and b!4897620 res!2091883) b!4897616))

(assert (= (and b!4897616 res!2091887) b!4897622))

(assert (= (and b!4897622 res!2091882) b!4897624))

(assert (= (and b!4897624 res!2091881) b!4897617))

(assert (= (and b!4897617 res!2091884) b!4897621))

(declare-fun m!5904562 () Bool)

(assert (=> b!4897621 m!5904562))

(declare-fun m!5904564 () Bool)

(assert (=> b!4897621 m!5904564))

(assert (=> b!4897620 m!5904562))

(declare-fun m!5904566 () Bool)

(assert (=> b!4897620 m!5904566))

(assert (=> b!4897620 m!5904566))

(declare-fun m!5904568 () Bool)

(assert (=> b!4897620 m!5904568))

(assert (=> b!4897620 m!5904568))

(declare-fun m!5904570 () Bool)

(assert (=> b!4897620 m!5904570))

(assert (=> b!4897624 m!5904562))

(assert (=> b!4897619 m!5904292))

(assert (=> b!4897619 m!5904124))

(declare-fun m!5904572 () Bool)

(assert (=> b!4897619 m!5904572))

(assert (=> b!4897619 m!5904292))

(assert (=> b!4897619 m!5904124))

(assert (=> b!4897619 m!5904124))

(assert (=> b!4897619 m!5904572))

(declare-fun m!5904574 () Bool)

(assert (=> b!4897619 m!5904574))

(declare-fun m!5904576 () Bool)

(assert (=> b!4897619 m!5904576))

(declare-fun m!5904578 () Bool)

(assert (=> b!4897619 m!5904578))

(assert (=> b!4897619 m!5904578))

(declare-fun m!5904580 () Bool)

(assert (=> b!4897619 m!5904580))

(assert (=> b!4897619 m!5904124))

(declare-fun m!5904582 () Bool)

(assert (=> b!4897619 m!5904582))

(assert (=> b!4897619 m!5904578))

(declare-fun m!5904584 () Bool)

(assert (=> b!4897619 m!5904584))

(assert (=> b!4897619 m!5904578))

(declare-fun m!5904586 () Bool)

(assert (=> b!4897619 m!5904586))

(assert (=> b!4897617 m!5904562))

(declare-fun m!5904588 () Bool)

(assert (=> b!4897617 m!5904588))

(assert (=> b!4897617 m!5904588))

(declare-fun m!5904590 () Bool)

(assert (=> b!4897617 m!5904590))

(assert (=> b!4897616 m!5904562))

(assert (=> b!4897616 m!5904566))

(assert (=> b!4897616 m!5904566))

(assert (=> b!4897616 m!5904568))

(assert (=> b!4897616 m!5904568))

(declare-fun m!5904592 () Bool)

(assert (=> b!4897616 m!5904592))

(declare-fun m!5904594 () Bool)

(assert (=> d!1573731 m!5904594))

(declare-fun m!5904596 () Bool)

(assert (=> d!1573731 m!5904596))

(assert (=> d!1573731 m!5904124))

(declare-fun m!5904598 () Bool)

(assert (=> d!1573731 m!5904598))

(assert (=> d!1573731 m!5904320))

(assert (=> b!4897622 m!5904562))

(declare-fun m!5904600 () Bool)

(assert (=> b!4897622 m!5904600))

(assert (=> b!4897622 m!5904124))

(assert (=> b!4897622 m!5904572))

(assert (=> b!4897618 m!5904292))

(assert (=> b!4897618 m!5904124))

(assert (=> b!4897618 m!5904572))

(assert (=> b!4897618 m!5904292))

(assert (=> b!4897618 m!5904124))

(assert (=> b!4897618 m!5904124))

(assert (=> b!4897618 m!5904572))

(assert (=> b!4897618 m!5904574))

(declare-fun m!5904602 () Bool)

(assert (=> b!4897618 m!5904602))

(assert (=> b!4897309 d!1573731))

(assert (=> b!4897309 d!1573703))

(declare-fun bs!1176449 () Bool)

(declare-fun d!1573733 () Bool)

(assert (= bs!1176449 (and d!1573733 b!4897307)))

(declare-fun lambda!244135 () Int)

(assert (=> bs!1176449 (= lambda!244135 lambda!244124)))

(assert (=> d!1573733 true))

(assert (=> d!1573733 (< (dynLambda!22671 order!25515 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) (dynLambda!22670 order!25513 lambda!244135))))

(assert (=> d!1573733 true))

(assert (=> d!1573733 (< (dynLambda!22669 order!25511 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) (dynLambda!22670 order!25513 lambda!244135))))

(declare-fun Forall!1692 (Int) Bool)

(assert (=> d!1573733 (= (semiInverseModEq!3591 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) (Forall!1692 lambda!244135))))

(declare-fun bs!1176450 () Bool)

(assert (= bs!1176450 d!1573733))

(declare-fun m!5904604 () Bool)

(assert (=> bs!1176450 m!5904604))

(assert (=> d!1573643 d!1573733))

(declare-fun d!1573735 () Bool)

(declare-fun lt!2008077 () Int)

(assert (=> d!1573735 (>= lt!2008077 0)))

(declare-fun e!3061549 () Int)

(assert (=> d!1573735 (= lt!2008077 e!3061549)))

(declare-fun c!832433 () Bool)

(assert (=> d!1573735 (= c!832433 (is-Nil!56422 lt!2007823))))

(assert (=> d!1573735 (= (size!37162 lt!2007823) lt!2008077)))

(declare-fun b!4897633 () Bool)

(assert (=> b!4897633 (= e!3061549 0)))

(declare-fun b!4897634 () Bool)

(assert (=> b!4897634 (= e!3061549 (+ 1 (size!37162 (t!366156 lt!2007823))))))

(assert (= (and d!1573735 c!832433) b!4897633))

(assert (= (and d!1573735 (not c!832433)) b!4897634))

(declare-fun m!5904606 () Bool)

(assert (=> b!4897634 m!5904606))

(assert (=> b!4897393 d!1573735))

(assert (=> b!4897168 d!1573633))

(declare-fun lt!2008090 () Option!14035)

(declare-fun d!1573737 () Bool)

(assert (=> d!1573737 (= lt!2008090 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) lt!2007823))))

(declare-fun e!3061554 () Option!14035)

(assert (=> d!1573737 (= lt!2008090 e!3061554)))

(declare-fun c!832436 () Bool)

(declare-fun lt!2008092 () tuple2!60498)

(assert (=> d!1573737 (= c!832436 (isEmpty!30293 (_1!33552 lt!2008092)))))

(declare-fun findLongestMatchWithZipper!87 (Regex!13254 List!56546) tuple2!60498)

(assert (=> d!1573737 (= lt!2008092 (findLongestMatchWithZipper!87 (regex!8179 (h!62872 rulesArg!165)) lt!2007823))))

(assert (=> d!1573737 (ruleValid!3677 thiss!14805 (h!62872 rulesArg!165))))

(assert (=> d!1573737 (= (maxPrefixOneRuleZipper!263 thiss!14805 (h!62872 rulesArg!165) lt!2007823) lt!2008090)))

(declare-fun b!4897641 () Bool)

(assert (=> b!4897641 (= e!3061554 None!14034)))

(declare-fun b!4897642 () Bool)

(assert (=> b!4897642 (= e!3061554 (Some!14034 (tuple2!60491 (Token!14923 (apply!13545 (transformation!8179 (h!62872 rulesArg!165)) (seqFromList!5941 (_1!33552 lt!2008092))) (h!62872 rulesArg!165) (size!37162 (_1!33552 lt!2008092)) (_1!33552 lt!2008092)) (_2!33552 lt!2008092))))))

(declare-fun lt!2008095 () Unit!146489)

(assert (=> b!4897642 (= lt!2008095 (longestMatchIsAcceptedByMatchOrIsEmpty!1721 (regex!8179 (h!62872 rulesArg!165)) lt!2007823))))

(declare-fun res!2091902 () Bool)

(assert (=> b!4897642 (= res!2091902 (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007823 lt!2007823 (size!37162 lt!2007823)))))))

(declare-fun e!3061555 () Bool)

(assert (=> b!4897642 (=> res!2091902 e!3061555)))

(assert (=> b!4897642 e!3061555))

(declare-fun lt!2008093 () Unit!146489)

(assert (=> b!4897642 (= lt!2008093 lt!2008095)))

(declare-fun lt!2008094 () Unit!146489)

(assert (=> b!4897642 (= lt!2008094 (lemmaInv!1241 (transformation!8179 (h!62872 rulesArg!165))))))

(declare-fun lt!2008091 () Unit!146489)

(assert (=> b!4897642 (= lt!2008091 (lemmaSemiInverse!2569 (transformation!8179 (h!62872 rulesArg!165)) (seqFromList!5941 (_1!33552 lt!2008092))))))

(declare-fun b!4897643 () Bool)

(assert (=> b!4897643 (= e!3061555 (matchR!6535 (regex!8179 (h!62872 rulesArg!165)) (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007823 lt!2007823 (size!37162 lt!2007823)))))))

(assert (= (and d!1573737 c!832436) b!4897641))

(assert (= (and d!1573737 (not c!832436)) b!4897642))

(assert (= (and b!4897642 (not res!2091902)) b!4897643))

(assert (=> d!1573737 m!5904374))

(declare-fun m!5904608 () Bool)

(assert (=> d!1573737 m!5904608))

(declare-fun m!5904610 () Bool)

(assert (=> d!1573737 m!5904610))

(assert (=> d!1573737 m!5904320))

(assert (=> b!4897642 m!5904292))

(assert (=> b!4897642 m!5904368))

(declare-fun m!5904612 () Bool)

(assert (=> b!4897642 m!5904612))

(declare-fun m!5904614 () Bool)

(assert (=> b!4897642 m!5904614))

(declare-fun m!5904616 () Bool)

(assert (=> b!4897642 m!5904616))

(declare-fun m!5904618 () Bool)

(assert (=> b!4897642 m!5904618))

(declare-fun m!5904620 () Bool)

(assert (=> b!4897642 m!5904620))

(declare-fun m!5904622 () Bool)

(assert (=> b!4897642 m!5904622))

(assert (=> b!4897642 m!5904368))

(assert (=> b!4897642 m!5904310))

(assert (=> b!4897642 m!5904618))

(assert (=> b!4897642 m!5904292))

(assert (=> b!4897642 m!5904618))

(declare-fun m!5904624 () Bool)

(assert (=> b!4897642 m!5904624))

(assert (=> b!4897643 m!5904292))

(assert (=> b!4897643 m!5904368))

(assert (=> b!4897643 m!5904292))

(assert (=> b!4897643 m!5904368))

(assert (=> b!4897643 m!5904612))

(declare-fun m!5904626 () Bool)

(assert (=> b!4897643 m!5904626))

(assert (=> bm!339720 d!1573737))

(declare-fun d!1573739 () Bool)

(declare-fun res!2091907 () Bool)

(declare-fun e!3061560 () Bool)

(assert (=> d!1573739 (=> res!2091907 e!3061560)))

(assert (=> d!1573739 (= res!2091907 (is-Nil!56424 rulesArg!165))))

(assert (=> d!1573739 (= (forall!13095 rulesArg!165 lambda!244127) e!3061560)))

(declare-fun b!4897648 () Bool)

(declare-fun e!3061561 () Bool)

(assert (=> b!4897648 (= e!3061560 e!3061561)))

(declare-fun res!2091908 () Bool)

(assert (=> b!4897648 (=> (not res!2091908) (not e!3061561))))

(declare-fun dynLambda!22676 (Int Rule!16158) Bool)

(assert (=> b!4897648 (= res!2091908 (dynLambda!22676 lambda!244127 (h!62872 rulesArg!165)))))

(declare-fun b!4897649 () Bool)

(assert (=> b!4897649 (= e!3061561 (forall!13095 (t!366158 rulesArg!165) lambda!244127))))

(assert (= (and d!1573739 (not res!2091907)) b!4897648))

(assert (= (and b!4897648 res!2091908) b!4897649))

(declare-fun b_lambda!194795 () Bool)

(assert (=> (not b_lambda!194795) (not b!4897648)))

(declare-fun m!5904628 () Bool)

(assert (=> b!4897648 m!5904628))

(declare-fun m!5904630 () Bool)

(assert (=> b!4897649 m!5904630))

(assert (=> d!1573689 d!1573739))

(declare-fun bs!1176451 () Bool)

(declare-fun d!1573741 () Bool)

(assert (= bs!1176451 (and d!1573741 d!1573689)))

(declare-fun lambda!244136 () Int)

(assert (=> bs!1176451 (= lambda!244136 lambda!244127)))

(assert (=> d!1573741 true))

(declare-fun lt!2008096 () Bool)

(assert (=> d!1573741 (= lt!2008096 (forall!13095 (t!366158 rulesArg!165) lambda!244136))))

(declare-fun e!3061563 () Bool)

(assert (=> d!1573741 (= lt!2008096 e!3061563)))

(declare-fun res!2091910 () Bool)

(assert (=> d!1573741 (=> res!2091910 e!3061563)))

(assert (=> d!1573741 (= res!2091910 (not (is-Cons!56424 (t!366158 rulesArg!165))))))

(assert (=> d!1573741 (= (rulesValidInductive!3158 thiss!14805 (t!366158 rulesArg!165)) lt!2008096)))

(declare-fun b!4897650 () Bool)

(declare-fun e!3061562 () Bool)

(assert (=> b!4897650 (= e!3061563 e!3061562)))

(declare-fun res!2091909 () Bool)

(assert (=> b!4897650 (=> (not res!2091909) (not e!3061562))))

(assert (=> b!4897650 (= res!2091909 (ruleValid!3677 thiss!14805 (h!62872 (t!366158 rulesArg!165))))))

(declare-fun b!4897651 () Bool)

(assert (=> b!4897651 (= e!3061562 (rulesValidInductive!3158 thiss!14805 (t!366158 (t!366158 rulesArg!165))))))

(assert (= (and d!1573741 (not res!2091910)) b!4897650))

(assert (= (and b!4897650 res!2091909) b!4897651))

(declare-fun m!5904632 () Bool)

(assert (=> d!1573741 m!5904632))

(declare-fun m!5904634 () Bool)

(assert (=> b!4897650 m!5904634))

(assert (=> b!4897651 m!5904500))

(assert (=> b!4897352 d!1573741))

(declare-fun b!4897663 () Bool)

(declare-fun e!3061569 () List!56546)

(assert (=> b!4897663 (= e!3061569 (++!12248 (list!17741 (left!40995 (c!832380 (_2!33547 lt!2007821)))) (list!17741 (right!41325 (c!832380 (_2!33547 lt!2007821))))))))

(declare-fun b!4897662 () Bool)

(assert (=> b!4897662 (= e!3061569 (list!17743 (xs!18063 (c!832380 (_2!33547 lt!2007821)))))))

(declare-fun d!1573743 () Bool)

(declare-fun c!832441 () Bool)

(assert (=> d!1573743 (= c!832441 (is-Empty!14747 (c!832380 (_2!33547 lt!2007821))))))

(declare-fun e!3061568 () List!56546)

(assert (=> d!1573743 (= (list!17741 (c!832380 (_2!33547 lt!2007821))) e!3061568)))

(declare-fun b!4897660 () Bool)

(assert (=> b!4897660 (= e!3061568 Nil!56422)))

(declare-fun b!4897661 () Bool)

(assert (=> b!4897661 (= e!3061568 e!3061569)))

(declare-fun c!832442 () Bool)

(assert (=> b!4897661 (= c!832442 (is-Leaf!24554 (c!832380 (_2!33547 lt!2007821))))))

(assert (= (and d!1573743 c!832441) b!4897660))

(assert (= (and d!1573743 (not c!832441)) b!4897661))

(assert (= (and b!4897661 c!832442) b!4897662))

(assert (= (and b!4897661 (not c!832442)) b!4897663))

(declare-fun m!5904636 () Bool)

(assert (=> b!4897663 m!5904636))

(declare-fun m!5904638 () Bool)

(assert (=> b!4897663 m!5904638))

(assert (=> b!4897663 m!5904636))

(assert (=> b!4897663 m!5904638))

(declare-fun m!5904640 () Bool)

(assert (=> b!4897663 m!5904640))

(declare-fun m!5904642 () Bool)

(assert (=> b!4897662 m!5904642))

(assert (=> d!1573635 d!1573743))

(declare-fun d!1573745 () Bool)

(declare-fun res!2091915 () Bool)

(declare-fun e!3061572 () Bool)

(assert (=> d!1573745 (=> (not res!2091915) (not e!3061572))))

(assert (=> d!1573745 (= res!2091915 (validRegex!5887 (regex!8179 (h!62872 rulesArg!165))))))

(assert (=> d!1573745 (= (ruleValid!3677 thiss!14805 (h!62872 rulesArg!165)) e!3061572)))

(declare-fun b!4897668 () Bool)

(declare-fun res!2091916 () Bool)

(assert (=> b!4897668 (=> (not res!2091916) (not e!3061572))))

(assert (=> b!4897668 (= res!2091916 (not (nullable!4560 (regex!8179 (h!62872 rulesArg!165)))))))

(declare-fun b!4897669 () Bool)

(assert (=> b!4897669 (= e!3061572 (not (= (tag!9043 (h!62872 rulesArg!165)) (String!63889 ""))))))

(assert (= (and d!1573745 res!2091915) b!4897668))

(assert (= (and b!4897668 res!2091916) b!4897669))

(declare-fun m!5904644 () Bool)

(assert (=> d!1573745 m!5904644))

(declare-fun m!5904646 () Bool)

(assert (=> b!4897668 m!5904646))

(assert (=> d!1573659 d!1573745))

(declare-fun d!1573747 () Bool)

(assert (=> d!1573747 (= (isDefined!11048 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) (list!17739 input!1236))) (not (isEmpty!30291 (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) (list!17739 input!1236)))))))

(declare-fun bs!1176452 () Bool)

(assert (= bs!1176452 d!1573747))

(assert (=> bs!1176452 m!5904284))

(declare-fun m!5904648 () Bool)

(assert (=> bs!1176452 m!5904648))

(assert (=> d!1573659 d!1573747))

(assert (=> d!1573659 d!1573731))

(declare-fun d!1573749 () Bool)

(assert (=> d!1573749 (= (isDefined!11049 lt!2007947) (not (isEmpty!30292 lt!2007947)))))

(declare-fun bs!1176453 () Bool)

(assert (= bs!1176453 d!1573749))

(declare-fun m!5904650 () Bool)

(assert (=> bs!1176453 m!5904650))

(assert (=> d!1573659 d!1573749))

(declare-fun d!1573751 () Bool)

(declare-fun lt!2008099 () Bool)

(assert (=> d!1573751 (= lt!2008099 (isEmpty!30293 (list!17739 (_1!33551 lt!2007946))))))

(declare-fun isEmpty!30299 (Conc!14747) Bool)

(assert (=> d!1573751 (= lt!2008099 (isEmpty!30299 (c!832380 (_1!33551 lt!2007946))))))

(assert (=> d!1573751 (= (isEmpty!30294 (_1!33551 lt!2007946)) lt!2008099)))

(declare-fun bs!1176454 () Bool)

(assert (= bs!1176454 d!1573751))

(assert (=> bs!1176454 m!5904296))

(assert (=> bs!1176454 m!5904296))

(declare-fun m!5904652 () Bool)

(assert (=> bs!1176454 m!5904652))

(declare-fun m!5904654 () Bool)

(assert (=> bs!1176454 m!5904654))

(assert (=> d!1573659 d!1573751))

(assert (=> d!1573659 d!1573703))

(declare-fun d!1573753 () Bool)

(declare-fun lt!2008102 () tuple2!60496)

(assert (=> d!1573753 (= (tuple2!60499 (list!17739 (_1!33551 lt!2008102)) (list!17739 (_2!33551 lt!2008102))) (findLongestMatch!1652 (regex!8179 (h!62872 rulesArg!165)) (list!17739 input!1236)))))

(declare-fun choose!35760 (Regex!13254 BalanceConc!28924) tuple2!60496)

(assert (=> d!1573753 (= lt!2008102 (choose!35760 (regex!8179 (h!62872 rulesArg!165)) input!1236))))

(assert (=> d!1573753 (validRegex!5887 (regex!8179 (h!62872 rulesArg!165)))))

(assert (=> d!1573753 (= (findLongestMatchWithZipperSequence!273 (regex!8179 (h!62872 rulesArg!165)) input!1236) lt!2008102)))

(declare-fun bs!1176455 () Bool)

(assert (= bs!1176455 d!1573753))

(assert (=> bs!1176455 m!5904644))

(assert (=> bs!1176455 m!5904124))

(assert (=> bs!1176455 m!5904124))

(assert (=> bs!1176455 m!5904598))

(declare-fun m!5904656 () Bool)

(assert (=> bs!1176455 m!5904656))

(declare-fun m!5904658 () Bool)

(assert (=> bs!1176455 m!5904658))

(declare-fun m!5904660 () Bool)

(assert (=> bs!1176455 m!5904660))

(assert (=> d!1573659 d!1573753))

(assert (=> b!4897306 d!1573749))

(declare-fun d!1573755 () Bool)

(assert (=> d!1573755 true))

(declare-fun order!25523 () Int)

(declare-fun lambda!244139 () Int)

(declare-fun dynLambda!22677 (Int Int) Int)

(assert (=> d!1573755 (< (dynLambda!22669 order!25511 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) (dynLambda!22677 order!25523 lambda!244139))))

(declare-fun Forall2!1272 (Int) Bool)

(assert (=> d!1573755 (= (equivClasses!3470 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) (Forall2!1272 lambda!244139))))

(declare-fun bs!1176456 () Bool)

(assert (= bs!1176456 d!1573755))

(declare-fun m!5904662 () Bool)

(assert (=> bs!1176456 m!5904662))

(assert (=> b!4897231 d!1573755))

(assert (=> b!4897263 d!1573721))

(declare-fun d!1573757 () Bool)

(assert (=> d!1573757 (= (inv!72727 (xs!18063 (c!832380 input!1236))) (<= (size!37162 (innerList!14835 (xs!18063 (c!832380 input!1236)))) 2147483647))))

(declare-fun bs!1176457 () Bool)

(assert (= bs!1176457 d!1573757))

(declare-fun m!5904664 () Bool)

(assert (=> bs!1176457 m!5904664))

(assert (=> b!4897403 d!1573757))

(declare-fun b!4897674 () Bool)

(declare-fun e!3061575 () Option!14035)

(declare-fun call!339745 () Option!14035)

(assert (=> b!4897674 (= e!3061575 call!339745)))

(declare-fun b!4897675 () Bool)

(declare-fun e!3061576 () Bool)

(declare-fun e!3061577 () Bool)

(assert (=> b!4897675 (= e!3061576 e!3061577)))

(declare-fun res!2091925 () Bool)

(assert (=> b!4897675 (=> (not res!2091925) (not e!3061577))))

(declare-fun lt!2008103 () Option!14035)

(assert (=> b!4897675 (= res!2091925 (isDefined!11048 lt!2008103))))

(declare-fun b!4897676 () Bool)

(declare-fun res!2091921 () Bool)

(assert (=> b!4897676 (=> (not res!2091921) (not e!3061577))))

(assert (=> b!4897676 (= res!2091921 (= (++!12248 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008103)))) (_2!33548 (get!19491 lt!2008103))) lt!2007823))))

(declare-fun b!4897677 () Bool)

(declare-fun res!2091924 () Bool)

(assert (=> b!4897677 (=> (not res!2091924) (not e!3061577))))

(assert (=> b!4897677 (= res!2091924 (< (size!37162 (_2!33548 (get!19491 lt!2008103))) (size!37162 lt!2007823)))))

(declare-fun b!4897679 () Bool)

(assert (=> b!4897679 (= e!3061577 (contains!19442 (t!366158 rulesArg!165) (rule!11381 (_1!33548 (get!19491 lt!2008103)))))))

(declare-fun b!4897680 () Bool)

(declare-fun res!2091919 () Bool)

(assert (=> b!4897680 (=> (not res!2091919) (not e!3061577))))

(assert (=> b!4897680 (= res!2091919 (matchR!6535 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2008103)))) (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008103))))))))

(declare-fun bm!339740 () Bool)

(assert (=> bm!339740 (= call!339745 (maxPrefixOneRule!3534 thiss!14805 (h!62872 (t!366158 rulesArg!165)) lt!2007823))))

(declare-fun d!1573759 () Bool)

(assert (=> d!1573759 e!3061576))

(declare-fun res!2091923 () Bool)

(assert (=> d!1573759 (=> res!2091923 e!3061576)))

(assert (=> d!1573759 (= res!2091923 (isEmpty!30291 lt!2008103))))

(assert (=> d!1573759 (= lt!2008103 e!3061575)))

(declare-fun c!832443 () Bool)

(assert (=> d!1573759 (= c!832443 (and (is-Cons!56424 (t!366158 rulesArg!165)) (is-Nil!56424 (t!366158 (t!366158 rulesArg!165)))))))

(declare-fun lt!2008105 () Unit!146489)

(declare-fun lt!2008107 () Unit!146489)

(assert (=> d!1573759 (= lt!2008105 lt!2008107)))

(assert (=> d!1573759 (isPrefix!4899 lt!2007823 lt!2007823)))

(assert (=> d!1573759 (= lt!2008107 (lemmaIsPrefixRefl!3296 lt!2007823 lt!2007823))))

(assert (=> d!1573759 (rulesValidInductive!3158 thiss!14805 (t!366158 rulesArg!165))))

(assert (=> d!1573759 (= (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) lt!2007823) lt!2008103)))

(declare-fun b!4897678 () Bool)

(declare-fun res!2091922 () Bool)

(assert (=> b!4897678 (=> (not res!2091922) (not e!3061577))))

(assert (=> b!4897678 (= res!2091922 (= (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008103)))) (originalCharacters!8492 (_1!33548 (get!19491 lt!2008103)))))))

(declare-fun b!4897681 () Bool)

(declare-fun lt!2008106 () Option!14035)

(declare-fun lt!2008104 () Option!14035)

(assert (=> b!4897681 (= e!3061575 (ite (and (is-None!14034 lt!2008106) (is-None!14034 lt!2008104)) None!14034 (ite (is-None!14034 lt!2008104) lt!2008106 (ite (is-None!14034 lt!2008106) lt!2008104 (ite (>= (size!37159 (_1!33548 (v!49992 lt!2008106))) (size!37159 (_1!33548 (v!49992 lt!2008104)))) lt!2008106 lt!2008104)))))))

(assert (=> b!4897681 (= lt!2008106 call!339745)))

(assert (=> b!4897681 (= lt!2008104 (maxPrefix!4608 thiss!14805 (t!366158 (t!366158 rulesArg!165)) lt!2007823))))

(declare-fun b!4897682 () Bool)

(declare-fun res!2091920 () Bool)

(assert (=> b!4897682 (=> (not res!2091920) (not e!3061577))))

(assert (=> b!4897682 (= res!2091920 (= (value!262253 (_1!33548 (get!19491 lt!2008103))) (apply!13545 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2008103)))) (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2008103)))))))))

(assert (= (and d!1573759 c!832443) b!4897674))

(assert (= (and d!1573759 (not c!832443)) b!4897681))

(assert (= (or b!4897674 b!4897681) bm!339740))

(assert (= (and d!1573759 (not res!2091923)) b!4897675))

(assert (= (and b!4897675 res!2091925) b!4897678))

(assert (= (and b!4897678 res!2091922) b!4897677))

(assert (= (and b!4897677 res!2091924) b!4897676))

(assert (= (and b!4897676 res!2091921) b!4897682))

(assert (= (and b!4897682 res!2091920) b!4897680))

(assert (= (and b!4897680 res!2091919) b!4897679))

(declare-fun m!5904666 () Bool)

(assert (=> d!1573759 m!5904666))

(assert (=> d!1573759 m!5904120))

(assert (=> d!1573759 m!5904122))

(assert (=> d!1573759 m!5904240))

(declare-fun m!5904668 () Bool)

(assert (=> b!4897682 m!5904668))

(declare-fun m!5904670 () Bool)

(assert (=> b!4897682 m!5904670))

(assert (=> b!4897682 m!5904670))

(declare-fun m!5904672 () Bool)

(assert (=> b!4897682 m!5904672))

(assert (=> b!4897678 m!5904668))

(declare-fun m!5904674 () Bool)

(assert (=> b!4897678 m!5904674))

(assert (=> b!4897678 m!5904674))

(declare-fun m!5904676 () Bool)

(assert (=> b!4897678 m!5904676))

(assert (=> b!4897677 m!5904668))

(declare-fun m!5904678 () Bool)

(assert (=> b!4897677 m!5904678))

(assert (=> b!4897677 m!5904368))

(assert (=> b!4897679 m!5904668))

(declare-fun m!5904680 () Bool)

(assert (=> b!4897679 m!5904680))

(assert (=> b!4897680 m!5904668))

(assert (=> b!4897680 m!5904674))

(assert (=> b!4897680 m!5904674))

(assert (=> b!4897680 m!5904676))

(assert (=> b!4897680 m!5904676))

(declare-fun m!5904682 () Bool)

(assert (=> b!4897680 m!5904682))

(declare-fun m!5904684 () Bool)

(assert (=> bm!339740 m!5904684))

(declare-fun m!5904686 () Bool)

(assert (=> b!4897681 m!5904686))

(assert (=> b!4897676 m!5904668))

(assert (=> b!4897676 m!5904674))

(assert (=> b!4897676 m!5904674))

(assert (=> b!4897676 m!5904676))

(assert (=> b!4897676 m!5904676))

(declare-fun m!5904688 () Bool)

(assert (=> b!4897676 m!5904688))

(declare-fun m!5904690 () Bool)

(assert (=> b!4897675 m!5904690))

(assert (=> b!4897380 d!1573759))

(assert (=> d!1573701 d!1573699))

(declare-fun d!1573761 () Bool)

(assert (=> d!1573761 (isPrefix!4899 lt!2007823 lt!2007823)))

(assert (=> d!1573761 true))

(declare-fun _$45!2184 () Unit!146489)

(assert (=> d!1573761 (= (choose!35758 lt!2007823 lt!2007823) _$45!2184)))

(declare-fun bs!1176458 () Bool)

(assert (= bs!1176458 d!1573761))

(assert (=> bs!1176458 m!5904120))

(assert (=> d!1573701 d!1573761))

(declare-fun d!1573763 () Bool)

(assert (=> d!1573763 (= (get!19492 lt!2007899) (v!49993 lt!2007899))))

(assert (=> b!4897261 d!1573763))

(declare-fun d!1573765 () Bool)

(assert (=> d!1573765 (= (get!19491 (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))) (v!49992 (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))))))

(assert (=> b!4897261 d!1573765))

(declare-fun b!4897683 () Bool)

(declare-fun e!3061578 () Option!14035)

(declare-fun call!339746 () Option!14035)

(assert (=> b!4897683 (= e!3061578 call!339746)))

(declare-fun b!4897684 () Bool)

(declare-fun e!3061579 () Bool)

(declare-fun e!3061580 () Bool)

(assert (=> b!4897684 (= e!3061579 e!3061580)))

(declare-fun res!2091932 () Bool)

(assert (=> b!4897684 (=> (not res!2091932) (not e!3061580))))

(declare-fun lt!2008108 () Option!14035)

(assert (=> b!4897684 (= res!2091932 (isDefined!11048 lt!2008108))))

(declare-fun b!4897685 () Bool)

(declare-fun res!2091928 () Bool)

(assert (=> b!4897685 (=> (not res!2091928) (not e!3061580))))

(assert (=> b!4897685 (= res!2091928 (= (++!12248 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008108)))) (_2!33548 (get!19491 lt!2008108))) (list!17739 input!1236)))))

(declare-fun b!4897686 () Bool)

(declare-fun res!2091931 () Bool)

(assert (=> b!4897686 (=> (not res!2091931) (not e!3061580))))

(assert (=> b!4897686 (= res!2091931 (< (size!37162 (_2!33548 (get!19491 lt!2008108))) (size!37162 (list!17739 input!1236))))))

(declare-fun b!4897688 () Bool)

(assert (=> b!4897688 (= e!3061580 (contains!19442 (t!366158 rulesArg!165) (rule!11381 (_1!33548 (get!19491 lt!2008108)))))))

(declare-fun b!4897689 () Bool)

(declare-fun res!2091926 () Bool)

(assert (=> b!4897689 (=> (not res!2091926) (not e!3061580))))

(assert (=> b!4897689 (= res!2091926 (matchR!6535 (regex!8179 (rule!11381 (_1!33548 (get!19491 lt!2008108)))) (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008108))))))))

(declare-fun bm!339741 () Bool)

(assert (=> bm!339741 (= call!339746 (maxPrefixOneRule!3534 thiss!14805 (h!62872 (t!366158 rulesArg!165)) (list!17739 input!1236)))))

(declare-fun d!1573767 () Bool)

(assert (=> d!1573767 e!3061579))

(declare-fun res!2091930 () Bool)

(assert (=> d!1573767 (=> res!2091930 e!3061579)))

(assert (=> d!1573767 (= res!2091930 (isEmpty!30291 lt!2008108))))

(assert (=> d!1573767 (= lt!2008108 e!3061578)))

(declare-fun c!832444 () Bool)

(assert (=> d!1573767 (= c!832444 (and (is-Cons!56424 (t!366158 rulesArg!165)) (is-Nil!56424 (t!366158 (t!366158 rulesArg!165)))))))

(declare-fun lt!2008110 () Unit!146489)

(declare-fun lt!2008112 () Unit!146489)

(assert (=> d!1573767 (= lt!2008110 lt!2008112)))

(assert (=> d!1573767 (isPrefix!4899 (list!17739 input!1236) (list!17739 input!1236))))

(assert (=> d!1573767 (= lt!2008112 (lemmaIsPrefixRefl!3296 (list!17739 input!1236) (list!17739 input!1236)))))

(assert (=> d!1573767 (rulesValidInductive!3158 thiss!14805 (t!366158 rulesArg!165))))

(assert (=> d!1573767 (= (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236)) lt!2008108)))

(declare-fun b!4897687 () Bool)

(declare-fun res!2091929 () Bool)

(assert (=> b!4897687 (=> (not res!2091929) (not e!3061580))))

(assert (=> b!4897687 (= res!2091929 (= (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008108)))) (originalCharacters!8492 (_1!33548 (get!19491 lt!2008108)))))))

(declare-fun b!4897690 () Bool)

(declare-fun lt!2008111 () Option!14035)

(declare-fun lt!2008109 () Option!14035)

(assert (=> b!4897690 (= e!3061578 (ite (and (is-None!14034 lt!2008111) (is-None!14034 lt!2008109)) None!14034 (ite (is-None!14034 lt!2008109) lt!2008111 (ite (is-None!14034 lt!2008111) lt!2008109 (ite (>= (size!37159 (_1!33548 (v!49992 lt!2008111))) (size!37159 (_1!33548 (v!49992 lt!2008109)))) lt!2008111 lt!2008109)))))))

(assert (=> b!4897690 (= lt!2008111 call!339746)))

(assert (=> b!4897690 (= lt!2008109 (maxPrefix!4608 thiss!14805 (t!366158 (t!366158 rulesArg!165)) (list!17739 input!1236)))))

(declare-fun b!4897691 () Bool)

(declare-fun res!2091927 () Bool)

(assert (=> b!4897691 (=> (not res!2091927) (not e!3061580))))

(assert (=> b!4897691 (= res!2091927 (= (value!262253 (_1!33548 (get!19491 lt!2008108))) (apply!13545 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2008108)))) (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2008108)))))))))

(assert (= (and d!1573767 c!832444) b!4897683))

(assert (= (and d!1573767 (not c!832444)) b!4897690))

(assert (= (or b!4897683 b!4897690) bm!339741))

(assert (= (and d!1573767 (not res!2091930)) b!4897684))

(assert (= (and b!4897684 res!2091932) b!4897687))

(assert (= (and b!4897687 res!2091929) b!4897686))

(assert (= (and b!4897686 res!2091931) b!4897685))

(assert (= (and b!4897685 res!2091928) b!4897691))

(assert (= (and b!4897691 res!2091927) b!4897689))

(assert (= (and b!4897689 res!2091926) b!4897688))

(declare-fun m!5904692 () Bool)

(assert (=> d!1573767 m!5904692))

(assert (=> d!1573767 m!5904124))

(assert (=> d!1573767 m!5904124))

(declare-fun m!5904694 () Bool)

(assert (=> d!1573767 m!5904694))

(assert (=> d!1573767 m!5904124))

(assert (=> d!1573767 m!5904124))

(declare-fun m!5904696 () Bool)

(assert (=> d!1573767 m!5904696))

(assert (=> d!1573767 m!5904240))

(declare-fun m!5904698 () Bool)

(assert (=> b!4897691 m!5904698))

(declare-fun m!5904700 () Bool)

(assert (=> b!4897691 m!5904700))

(assert (=> b!4897691 m!5904700))

(declare-fun m!5904702 () Bool)

(assert (=> b!4897691 m!5904702))

(assert (=> b!4897687 m!5904698))

(declare-fun m!5904704 () Bool)

(assert (=> b!4897687 m!5904704))

(assert (=> b!4897687 m!5904704))

(declare-fun m!5904706 () Bool)

(assert (=> b!4897687 m!5904706))

(assert (=> b!4897686 m!5904698))

(declare-fun m!5904708 () Bool)

(assert (=> b!4897686 m!5904708))

(assert (=> b!4897686 m!5904124))

(assert (=> b!4897686 m!5904572))

(assert (=> b!4897688 m!5904698))

(declare-fun m!5904710 () Bool)

(assert (=> b!4897688 m!5904710))

(assert (=> b!4897689 m!5904698))

(assert (=> b!4897689 m!5904704))

(assert (=> b!4897689 m!5904704))

(assert (=> b!4897689 m!5904706))

(assert (=> b!4897689 m!5904706))

(declare-fun m!5904712 () Bool)

(assert (=> b!4897689 m!5904712))

(assert (=> bm!339741 m!5904124))

(declare-fun m!5904714 () Bool)

(assert (=> bm!339741 m!5904714))

(assert (=> b!4897690 m!5904124))

(assert (=> b!4897690 m!5904494))

(assert (=> b!4897685 m!5904698))

(assert (=> b!4897685 m!5904704))

(assert (=> b!4897685 m!5904704))

(assert (=> b!4897685 m!5904706))

(assert (=> b!4897685 m!5904706))

(declare-fun m!5904716 () Bool)

(assert (=> b!4897685 m!5904716))

(declare-fun m!5904718 () Bool)

(assert (=> b!4897684 m!5904718))

(assert (=> b!4897261 d!1573767))

(assert (=> b!4897261 d!1573703))

(assert (=> d!1573631 d!1573693))

(assert (=> d!1573631 d!1573699))

(assert (=> d!1573631 d!1573701))

(assert (=> d!1573631 d!1573689))

(assert (=> b!4897259 d!1573763))

(declare-fun d!1573769 () Bool)

(assert (=> d!1573769 (= (get!19491 (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))) (v!49992 (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))))))

(assert (=> b!4897259 d!1573769))

(declare-fun d!1573771 () Bool)

(declare-fun lt!2008116 () Option!14035)

(assert (=> d!1573771 (= lt!2008116 (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236)))))

(declare-fun e!3061581 () Option!14035)

(assert (=> d!1573771 (= lt!2008116 e!3061581)))

(declare-fun c!832445 () Bool)

(assert (=> d!1573771 (= c!832445 (and (is-Cons!56424 (t!366158 rulesArg!165)) (is-Nil!56424 (t!366158 (t!366158 rulesArg!165)))))))

(declare-fun lt!2008115 () Unit!146489)

(declare-fun lt!2008117 () Unit!146489)

(assert (=> d!1573771 (= lt!2008115 lt!2008117)))

(assert (=> d!1573771 (isPrefix!4899 (list!17739 input!1236) (list!17739 input!1236))))

(assert (=> d!1573771 (= lt!2008117 (lemmaIsPrefixRefl!3296 (list!17739 input!1236) (list!17739 input!1236)))))

(assert (=> d!1573771 (rulesValidInductive!3158 thiss!14805 (t!366158 rulesArg!165))))

(assert (=> d!1573771 (= (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236)) lt!2008116)))

(declare-fun bm!339742 () Bool)

(declare-fun call!339747 () Option!14035)

(assert (=> bm!339742 (= call!339747 (maxPrefixOneRuleZipper!263 thiss!14805 (h!62872 (t!366158 rulesArg!165)) (list!17739 input!1236)))))

(declare-fun b!4897692 () Bool)

(assert (=> b!4897692 (= e!3061581 call!339747)))

(declare-fun b!4897693 () Bool)

(declare-fun lt!2008114 () Option!14035)

(declare-fun lt!2008113 () Option!14035)

(assert (=> b!4897693 (= e!3061581 (ite (and (is-None!14034 lt!2008114) (is-None!14034 lt!2008113)) None!14034 (ite (is-None!14034 lt!2008113) lt!2008114 (ite (is-None!14034 lt!2008114) lt!2008113 (ite (>= (size!37159 (_1!33548 (v!49992 lt!2008114))) (size!37159 (_1!33548 (v!49992 lt!2008113)))) lt!2008114 lt!2008113)))))))

(assert (=> b!4897693 (= lt!2008114 call!339747)))

(assert (=> b!4897693 (= lt!2008113 (maxPrefixZipper!678 thiss!14805 (t!366158 (t!366158 rulesArg!165)) (list!17739 input!1236)))))

(assert (= (and d!1573771 c!832445) b!4897692))

(assert (= (and d!1573771 (not c!832445)) b!4897693))

(assert (= (or b!4897692 b!4897693) bm!339742))

(assert (=> d!1573771 m!5904124))

(assert (=> d!1573771 m!5904234))

(assert (=> d!1573771 m!5904124))

(assert (=> d!1573771 m!5904124))

(assert (=> d!1573771 m!5904694))

(assert (=> d!1573771 m!5904124))

(assert (=> d!1573771 m!5904124))

(assert (=> d!1573771 m!5904696))

(assert (=> d!1573771 m!5904240))

(assert (=> bm!339742 m!5904124))

(declare-fun m!5904720 () Bool)

(assert (=> bm!339742 m!5904720))

(assert (=> b!4897693 m!5904124))

(assert (=> b!4897693 m!5904484))

(assert (=> b!4897259 d!1573771))

(assert (=> b!4897259 d!1573703))

(declare-fun d!1573773 () Bool)

(declare-fun lt!2008118 () Int)

(assert (=> d!1573773 (>= lt!2008118 0)))

(declare-fun e!3061582 () Int)

(assert (=> d!1573773 (= lt!2008118 e!3061582)))

(declare-fun c!832446 () Bool)

(assert (=> d!1573773 (= c!832446 (is-Nil!56422 (_2!33548 (get!19491 lt!2007982))))))

(assert (=> d!1573773 (= (size!37162 (_2!33548 (get!19491 lt!2007982))) lt!2008118)))

(declare-fun b!4897694 () Bool)

(assert (=> b!4897694 (= e!3061582 0)))

(declare-fun b!4897695 () Bool)

(assert (=> b!4897695 (= e!3061582 (+ 1 (size!37162 (t!366156 (_2!33548 (get!19491 lt!2007982))))))))

(assert (= (and d!1573773 c!832446) b!4897694))

(assert (= (and d!1573773 (not c!832446)) b!4897695))

(declare-fun m!5904722 () Bool)

(assert (=> b!4897695 m!5904722))

(assert (=> b!4897376 d!1573773))

(assert (=> b!4897376 d!1573715))

(assert (=> b!4897376 d!1573735))

(declare-fun d!1573775 () Bool)

(assert (=> d!1573775 (= (isEmpty!30292 lt!2007826) (not (is-Some!14035 lt!2007826)))))

(assert (=> d!1573629 d!1573775))

(declare-fun d!1573777 () Bool)

(assert (=> d!1573777 (= (isEmpty!30291 lt!2007982) (not (is-Some!14034 lt!2007982)))))

(assert (=> d!1573693 d!1573777))

(assert (=> d!1573693 d!1573699))

(assert (=> d!1573693 d!1573701))

(assert (=> d!1573693 d!1573689))

(declare-fun d!1573779 () Bool)

(assert (=> d!1573779 (= (list!17739 (_2!33547 (get!19492 lt!2007899))) (list!17741 (c!832380 (_2!33547 (get!19492 lt!2007899)))))))

(declare-fun bs!1176459 () Bool)

(assert (= bs!1176459 d!1573779))

(declare-fun m!5904724 () Bool)

(assert (=> bs!1176459 m!5904724))

(assert (=> b!4897257 d!1573779))

(assert (=> b!4897257 d!1573703))

(assert (=> b!4897257 d!1573771))

(assert (=> b!4897257 d!1573769))

(assert (=> b!4897257 d!1573763))

(declare-fun bs!1176460 () Bool)

(declare-fun b!4897697 () Bool)

(assert (= bs!1176460 (and b!4897697 b!4897307)))

(declare-fun lambda!244140 () Int)

(assert (=> bs!1176460 (= (and (= (toChars!10941 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))))) (= lambda!244140 lambda!244124))))

(declare-fun bs!1176461 () Bool)

(assert (= bs!1176461 (and b!4897697 d!1573733)))

(assert (=> bs!1176461 (= (and (= (toChars!10941 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))))) (= lambda!244140 lambda!244135))))

(declare-fun b!4897703 () Bool)

(declare-fun e!3061589 () Bool)

(assert (=> b!4897703 (= e!3061589 true)))

(declare-fun b!4897702 () Bool)

(declare-fun e!3061588 () Bool)

(assert (=> b!4897702 (= e!3061588 e!3061589)))

(assert (=> b!4897697 e!3061588))

(assert (= b!4897702 b!4897703))

(assert (= b!4897697 b!4897702))

(assert (=> b!4897703 (< (dynLambda!22669 order!25511 (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165))))) (dynLambda!22670 order!25513 lambda!244140))))

(assert (=> b!4897703 (< (dynLambda!22671 order!25515 (toChars!10941 (transformation!8179 (h!62872 (t!366158 rulesArg!165))))) (dynLambda!22670 order!25513 lambda!244140))))

(declare-fun b!4897696 () Bool)

(declare-fun e!3061583 () Bool)

(declare-fun e!3061586 () Bool)

(assert (=> b!4897696 (= e!3061583 e!3061586)))

(declare-fun res!2091933 () Bool)

(assert (=> b!4897696 (=> res!2091933 e!3061586)))

(declare-fun lt!2008122 () Option!14036)

(assert (=> b!4897696 (= res!2091933 (not (isDefined!11049 lt!2008122)))))

(declare-fun e!3061584 () Option!14036)

(declare-fun lt!2008121 () tuple2!60496)

(assert (=> b!4897697 (= e!3061584 (Some!14035 (tuple2!60489 (Token!14923 (apply!13545 (transformation!8179 (h!62872 (t!366158 rulesArg!165))) (_1!33551 lt!2008121)) (h!62872 (t!366158 rulesArg!165)) (size!37161 (_1!33551 lt!2008121)) (list!17739 (_1!33551 lt!2008121))) (_2!33551 lt!2008121))))))

(declare-fun lt!2008119 () List!56546)

(assert (=> b!4897697 (= lt!2008119 (list!17739 input!1236))))

(declare-fun lt!2008124 () Unit!146489)

(assert (=> b!4897697 (= lt!2008124 (longestMatchIsAcceptedByMatchOrIsEmpty!1721 (regex!8179 (h!62872 (t!366158 rulesArg!165))) lt!2008119))))

(declare-fun res!2091936 () Bool)

(assert (=> b!4897697 (= res!2091936 (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 (t!366158 rulesArg!165))) Nil!56422 (size!37162 Nil!56422) lt!2008119 lt!2008119 (size!37162 lt!2008119)))))))

(declare-fun e!3061585 () Bool)

(assert (=> b!4897697 (=> res!2091936 e!3061585)))

(assert (=> b!4897697 e!3061585))

(declare-fun lt!2008126 () Unit!146489)

(assert (=> b!4897697 (= lt!2008126 lt!2008124)))

(declare-fun lt!2008120 () Unit!146489)

(assert (=> b!4897697 (= lt!2008120 (lemmaInv!1241 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))))))

(declare-fun lt!2008123 () Unit!146489)

(assert (=> b!4897697 (= lt!2008123 (ForallOf!1138 lambda!244140 (_1!33551 lt!2008121)))))

(declare-fun lt!2008125 () Unit!146489)

(assert (=> b!4897697 (= lt!2008125 (ForallOf!1138 lambda!244140 (seqFromList!5941 (list!17739 (_1!33551 lt!2008121)))))))

(declare-fun lt!2008128 () Option!14036)

(assert (=> b!4897697 (= lt!2008128 (Some!14035 (tuple2!60489 (Token!14923 (apply!13545 (transformation!8179 (h!62872 (t!366158 rulesArg!165))) (_1!33551 lt!2008121)) (h!62872 (t!366158 rulesArg!165)) (size!37161 (_1!33551 lt!2008121)) (list!17739 (_1!33551 lt!2008121))) (_2!33551 lt!2008121))))))

(declare-fun lt!2008127 () Unit!146489)

(assert (=> b!4897697 (= lt!2008127 (lemmaEqSameImage!1095 (transformation!8179 (h!62872 (t!366158 rulesArg!165))) (_1!33551 lt!2008121) (seqFromList!5941 (list!17739 (_1!33551 lt!2008121)))))))

(declare-fun b!4897698 () Bool)

(declare-fun e!3061587 () Bool)

(assert (=> b!4897698 (= e!3061587 (= (list!17739 (_2!33547 (get!19492 lt!2008122))) (_2!33548 (get!19491 (maxPrefixOneRule!3534 thiss!14805 (h!62872 (t!366158 rulesArg!165)) (list!17739 input!1236))))))))

(declare-fun b!4897699 () Bool)

(assert (=> b!4897699 (= e!3061586 e!3061587)))

(declare-fun res!2091935 () Bool)

(assert (=> b!4897699 (=> (not res!2091935) (not e!3061587))))

(assert (=> b!4897699 (= res!2091935 (= (_1!33547 (get!19492 lt!2008122)) (_1!33548 (get!19491 (maxPrefixOneRule!3534 thiss!14805 (h!62872 (t!366158 rulesArg!165)) (list!17739 input!1236))))))))

(declare-fun d!1573781 () Bool)

(assert (=> d!1573781 e!3061583))

(declare-fun res!2091934 () Bool)

(assert (=> d!1573781 (=> (not res!2091934) (not e!3061583))))

(assert (=> d!1573781 (= res!2091934 (= (isDefined!11049 lt!2008122) (isDefined!11048 (maxPrefixOneRule!3534 thiss!14805 (h!62872 (t!366158 rulesArg!165)) (list!17739 input!1236)))))))

(assert (=> d!1573781 (= lt!2008122 e!3061584)))

(declare-fun c!832447 () Bool)

(assert (=> d!1573781 (= c!832447 (isEmpty!30294 (_1!33551 lt!2008121)))))

(assert (=> d!1573781 (= lt!2008121 (findLongestMatchWithZipperSequence!273 (regex!8179 (h!62872 (t!366158 rulesArg!165))) input!1236))))

(assert (=> d!1573781 (ruleValid!3677 thiss!14805 (h!62872 (t!366158 rulesArg!165)))))

(assert (=> d!1573781 (= (maxPrefixOneRuleZipperSequence!689 thiss!14805 (h!62872 (t!366158 rulesArg!165)) input!1236) lt!2008122)))

(declare-fun b!4897700 () Bool)

(assert (=> b!4897700 (= e!3061585 (matchR!6535 (regex!8179 (h!62872 (t!366158 rulesArg!165))) (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 (t!366158 rulesArg!165))) Nil!56422 (size!37162 Nil!56422) lt!2008119 lt!2008119 (size!37162 lt!2008119)))))))

(declare-fun b!4897701 () Bool)

(assert (=> b!4897701 (= e!3061584 None!14035)))

(assert (= (and d!1573781 c!832447) b!4897701))

(assert (= (and d!1573781 (not c!832447)) b!4897697))

(assert (= (and b!4897697 (not res!2091936)) b!4897700))

(assert (= (and d!1573781 res!2091934) b!4897696))

(assert (= (and b!4897696 (not res!2091933)) b!4897699))

(assert (= (and b!4897699 res!2091935) b!4897698))

(declare-fun m!5904726 () Bool)

(assert (=> b!4897696 m!5904726))

(declare-fun m!5904728 () Bool)

(assert (=> b!4897699 m!5904728))

(assert (=> b!4897699 m!5904124))

(assert (=> b!4897699 m!5904124))

(assert (=> b!4897699 m!5904714))

(assert (=> b!4897699 m!5904714))

(declare-fun m!5904730 () Bool)

(assert (=> b!4897699 m!5904730))

(assert (=> b!4897698 m!5904124))

(declare-fun m!5904732 () Bool)

(assert (=> b!4897698 m!5904732))

(assert (=> b!4897698 m!5904714))

(assert (=> b!4897698 m!5904730))

(assert (=> b!4897698 m!5904728))

(assert (=> b!4897698 m!5904124))

(assert (=> b!4897698 m!5904714))

(declare-fun m!5904734 () Bool)

(assert (=> b!4897697 m!5904734))

(assert (=> b!4897697 m!5904292))

(declare-fun m!5904736 () Bool)

(assert (=> b!4897697 m!5904736))

(declare-fun m!5904738 () Bool)

(assert (=> b!4897697 m!5904738))

(declare-fun m!5904740 () Bool)

(assert (=> b!4897697 m!5904740))

(assert (=> b!4897697 m!5904292))

(declare-fun m!5904742 () Bool)

(assert (=> b!4897697 m!5904742))

(declare-fun m!5904744 () Bool)

(assert (=> b!4897697 m!5904744))

(declare-fun m!5904746 () Bool)

(assert (=> b!4897697 m!5904746))

(declare-fun m!5904748 () Bool)

(assert (=> b!4897697 m!5904748))

(declare-fun m!5904750 () Bool)

(assert (=> b!4897697 m!5904750))

(declare-fun m!5904752 () Bool)

(assert (=> b!4897697 m!5904752))

(assert (=> b!4897697 m!5904740))

(declare-fun m!5904754 () Bool)

(assert (=> b!4897697 m!5904754))

(assert (=> b!4897697 m!5904124))

(assert (=> b!4897697 m!5904738))

(assert (=> b!4897697 m!5904740))

(declare-fun m!5904756 () Bool)

(assert (=> b!4897697 m!5904756))

(assert (=> b!4897697 m!5904742))

(assert (=> d!1573781 m!5904726))

(declare-fun m!5904758 () Bool)

(assert (=> d!1573781 m!5904758))

(declare-fun m!5904760 () Bool)

(assert (=> d!1573781 m!5904760))

(assert (=> d!1573781 m!5904124))

(assert (=> d!1573781 m!5904714))

(assert (=> d!1573781 m!5904124))

(assert (=> d!1573781 m!5904634))

(assert (=> d!1573781 m!5904714))

(declare-fun m!5904762 () Bool)

(assert (=> d!1573781 m!5904762))

(assert (=> b!4897700 m!5904292))

(assert (=> b!4897700 m!5904742))

(assert (=> b!4897700 m!5904292))

(assert (=> b!4897700 m!5904742))

(assert (=> b!4897700 m!5904744))

(declare-fun m!5904764 () Bool)

(assert (=> b!4897700 m!5904764))

(assert (=> bm!339723 d!1573781))

(declare-fun d!1573783 () Bool)

(assert (=> d!1573783 (= (inv!72716 (tag!9043 (h!62872 (t!366158 rulesArg!165)))) (= (mod (str.len (value!262227 (tag!9043 (h!62872 (t!366158 rulesArg!165))))) 2) 0))))

(assert (=> b!4897428 d!1573783))

(declare-fun d!1573785 () Bool)

(declare-fun res!2091937 () Bool)

(declare-fun e!3061590 () Bool)

(assert (=> d!1573785 (=> (not res!2091937) (not e!3061590))))

(assert (=> d!1573785 (= res!2091937 (semiInverseModEq!3591 (toChars!10941 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165))))))))

(assert (=> d!1573785 (= (inv!72719 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) e!3061590)))

(declare-fun b!4897704 () Bool)

(assert (=> b!4897704 (= e!3061590 (equivClasses!3470 (toChars!10941 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165))))))))

(assert (= (and d!1573785 res!2091937) b!4897704))

(declare-fun m!5904766 () Bool)

(assert (=> d!1573785 m!5904766))

(declare-fun m!5904768 () Bool)

(assert (=> b!4897704 m!5904768))

(assert (=> b!4897428 d!1573785))

(declare-fun d!1573787 () Bool)

(declare-fun lt!2008131 () Bool)

(declare-fun content!10028 (List!56548) (Set Rule!16158))

(assert (=> d!1573787 (= lt!2008131 (set.member (rule!11381 (_1!33548 (get!19491 lt!2007982))) (content!10028 rulesArg!165)))))

(declare-fun e!3061595 () Bool)

(assert (=> d!1573787 (= lt!2008131 e!3061595)))

(declare-fun res!2091943 () Bool)

(assert (=> d!1573787 (=> (not res!2091943) (not e!3061595))))

(assert (=> d!1573787 (= res!2091943 (is-Cons!56424 rulesArg!165))))

(assert (=> d!1573787 (= (contains!19442 rulesArg!165 (rule!11381 (_1!33548 (get!19491 lt!2007982)))) lt!2008131)))

(declare-fun b!4897709 () Bool)

(declare-fun e!3061596 () Bool)

(assert (=> b!4897709 (= e!3061595 e!3061596)))

(declare-fun res!2091942 () Bool)

(assert (=> b!4897709 (=> res!2091942 e!3061596)))

(assert (=> b!4897709 (= res!2091942 (= (h!62872 rulesArg!165) (rule!11381 (_1!33548 (get!19491 lt!2007982)))))))

(declare-fun b!4897710 () Bool)

(assert (=> b!4897710 (= e!3061596 (contains!19442 (t!366158 rulesArg!165) (rule!11381 (_1!33548 (get!19491 lt!2007982)))))))

(assert (= (and d!1573787 res!2091943) b!4897709))

(assert (= (and b!4897709 (not res!2091942)) b!4897710))

(declare-fun m!5904770 () Bool)

(assert (=> d!1573787 m!5904770))

(declare-fun m!5904772 () Bool)

(assert (=> d!1573787 m!5904772))

(declare-fun m!5904774 () Bool)

(assert (=> b!4897710 m!5904774))

(assert (=> b!4897378 d!1573787))

(assert (=> b!4897378 d!1573715))

(declare-fun b!4897711 () Bool)

(declare-fun e!3061601 () Bool)

(assert (=> b!4897711 (= e!3061601 (not (= (head!10460 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))) (c!832381 (regex!8179 (h!62872 rulesArg!165))))))))

(declare-fun d!1573789 () Bool)

(declare-fun e!3061602 () Bool)

(assert (=> d!1573789 e!3061602))

(declare-fun c!832448 () Bool)

(assert (=> d!1573789 (= c!832448 (is-EmptyExpr!13254 (regex!8179 (h!62872 rulesArg!165))))))

(declare-fun lt!2008132 () Bool)

(declare-fun e!3061600 () Bool)

(assert (=> d!1573789 (= lt!2008132 e!3061600)))

(declare-fun c!832449 () Bool)

(assert (=> d!1573789 (= c!832449 (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))))))

(assert (=> d!1573789 (validRegex!5887 (regex!8179 (h!62872 rulesArg!165)))))

(assert (=> d!1573789 (= (matchR!6535 (regex!8179 (h!62872 rulesArg!165)) (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))) lt!2008132)))

(declare-fun b!4897712 () Bool)

(declare-fun e!3061603 () Bool)

(declare-fun e!3061597 () Bool)

(assert (=> b!4897712 (= e!3061603 e!3061597)))

(declare-fun res!2091944 () Bool)

(assert (=> b!4897712 (=> (not res!2091944) (not e!3061597))))

(assert (=> b!4897712 (= res!2091944 (not lt!2008132))))

(declare-fun b!4897713 () Bool)

(assert (=> b!4897713 (= e!3061600 (nullable!4560 (regex!8179 (h!62872 rulesArg!165))))))

(declare-fun b!4897714 () Bool)

(declare-fun call!339748 () Bool)

(assert (=> b!4897714 (= e!3061602 (= lt!2008132 call!339748))))

(declare-fun b!4897715 () Bool)

(declare-fun res!2091947 () Bool)

(declare-fun e!3061599 () Bool)

(assert (=> b!4897715 (=> (not res!2091947) (not e!3061599))))

(assert (=> b!4897715 (= res!2091947 (not call!339748))))

(declare-fun b!4897716 () Bool)

(assert (=> b!4897716 (= e!3061600 (matchR!6535 (derivativeStep!3882 (regex!8179 (h!62872 rulesArg!165)) (head!10460 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944))))) (tail!9606 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944))))))))

(declare-fun b!4897717 () Bool)

(assert (=> b!4897717 (= e!3061597 e!3061601)))

(declare-fun res!2091946 () Bool)

(assert (=> b!4897717 (=> res!2091946 e!3061601)))

(assert (=> b!4897717 (= res!2091946 call!339748)))

(declare-fun b!4897718 () Bool)

(declare-fun e!3061598 () Bool)

(assert (=> b!4897718 (= e!3061602 e!3061598)))

(declare-fun c!832450 () Bool)

(assert (=> b!4897718 (= c!832450 (is-EmptyLang!13254 (regex!8179 (h!62872 rulesArg!165))))))

(declare-fun b!4897719 () Bool)

(declare-fun res!2091949 () Bool)

(assert (=> b!4897719 (=> res!2091949 e!3061601)))

(assert (=> b!4897719 (= res!2091949 (not (isEmpty!30293 (tail!9606 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))))))))

(declare-fun b!4897720 () Bool)

(assert (=> b!4897720 (= e!3061599 (= (head!10460 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))) (c!832381 (regex!8179 (h!62872 rulesArg!165)))))))

(declare-fun b!4897721 () Bool)

(declare-fun res!2091945 () Bool)

(assert (=> b!4897721 (=> (not res!2091945) (not e!3061599))))

(assert (=> b!4897721 (= res!2091945 (isEmpty!30293 (tail!9606 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944))))))))

(declare-fun b!4897722 () Bool)

(declare-fun res!2091950 () Bool)

(assert (=> b!4897722 (=> res!2091950 e!3061603)))

(assert (=> b!4897722 (= res!2091950 e!3061599)))

(declare-fun res!2091948 () Bool)

(assert (=> b!4897722 (=> (not res!2091948) (not e!3061599))))

(assert (=> b!4897722 (= res!2091948 lt!2008132)))

(declare-fun b!4897723 () Bool)

(declare-fun res!2091951 () Bool)

(assert (=> b!4897723 (=> res!2091951 e!3061603)))

(assert (=> b!4897723 (= res!2091951 (not (is-ElementMatch!13254 (regex!8179 (h!62872 rulesArg!165)))))))

(assert (=> b!4897723 (= e!3061598 e!3061603)))

(declare-fun b!4897724 () Bool)

(assert (=> b!4897724 (= e!3061598 (not lt!2008132))))

(declare-fun bm!339743 () Bool)

(assert (=> bm!339743 (= call!339748 (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))))))

(assert (= (and d!1573789 c!832449) b!4897713))

(assert (= (and d!1573789 (not c!832449)) b!4897716))

(assert (= (and d!1573789 c!832448) b!4897714))

(assert (= (and d!1573789 (not c!832448)) b!4897718))

(assert (= (and b!4897718 c!832450) b!4897724))

(assert (= (and b!4897718 (not c!832450)) b!4897723))

(assert (= (and b!4897723 (not res!2091951)) b!4897722))

(assert (= (and b!4897722 res!2091948) b!4897715))

(assert (= (and b!4897715 res!2091947) b!4897721))

(assert (= (and b!4897721 res!2091945) b!4897720))

(assert (= (and b!4897722 (not res!2091950)) b!4897712))

(assert (= (and b!4897712 res!2091944) b!4897717))

(assert (= (and b!4897717 (not res!2091946)) b!4897719))

(assert (= (and b!4897719 (not res!2091949)) b!4897711))

(assert (= (or b!4897714 b!4897715 b!4897717) bm!339743))

(declare-fun m!5904776 () Bool)

(assert (=> b!4897711 m!5904776))

(assert (=> b!4897713 m!5904646))

(declare-fun m!5904778 () Bool)

(assert (=> b!4897721 m!5904778))

(assert (=> b!4897721 m!5904778))

(declare-fun m!5904780 () Bool)

(assert (=> b!4897721 m!5904780))

(assert (=> bm!339743 m!5904306))

(assert (=> d!1573789 m!5904306))

(assert (=> d!1573789 m!5904644))

(assert (=> b!4897720 m!5904776))

(assert (=> b!4897716 m!5904776))

(assert (=> b!4897716 m!5904776))

(declare-fun m!5904782 () Bool)

(assert (=> b!4897716 m!5904782))

(assert (=> b!4897716 m!5904778))

(assert (=> b!4897716 m!5904782))

(assert (=> b!4897716 m!5904778))

(declare-fun m!5904784 () Bool)

(assert (=> b!4897716 m!5904784))

(assert (=> b!4897719 m!5904778))

(assert (=> b!4897719 m!5904778))

(assert (=> b!4897719 m!5904780))

(assert (=> b!4897310 d!1573789))

(declare-fun b!4897763 () Bool)

(declare-fun c!832468 () Bool)

(declare-fun call!339772 () Bool)

(assert (=> b!4897763 (= c!832468 call!339772)))

(declare-fun lt!2008206 () Unit!146489)

(declare-fun lt!2008213 () Unit!146489)

(assert (=> b!4897763 (= lt!2008206 lt!2008213)))

(declare-fun lt!2008211 () C!26706)

(declare-fun lt!2008204 () List!56546)

(assert (=> b!4897763 (= (++!12248 (++!12248 Nil!56422 (Cons!56422 lt!2008211 Nil!56422)) lt!2008204) lt!2007944)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1334 (List!56546 C!26706 List!56546 List!56546) Unit!146489)

(assert (=> b!4897763 (= lt!2008213 (lemmaMoveElementToOtherListKeepsConcatEq!1334 Nil!56422 lt!2008211 lt!2008204 lt!2007944))))

(assert (=> b!4897763 (= lt!2008204 (tail!9606 lt!2007944))))

(assert (=> b!4897763 (= lt!2008211 (head!10460 lt!2007944))))

(declare-fun lt!2008210 () Unit!146489)

(declare-fun lt!2008193 () Unit!146489)

(assert (=> b!4897763 (= lt!2008210 lt!2008193)))

(declare-fun getSuffix!2891 (List!56546 List!56546) List!56546)

(assert (=> b!4897763 (isPrefix!4899 (++!12248 Nil!56422 (Cons!56422 (head!10460 (getSuffix!2891 lt!2007944 Nil!56422)) Nil!56422)) lt!2007944)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!716 (List!56546 List!56546) Unit!146489)

(assert (=> b!4897763 (= lt!2008193 (lemmaAddHeadSuffixToPrefixStillPrefix!716 Nil!56422 lt!2007944))))

(declare-fun lt!2008207 () Unit!146489)

(declare-fun lt!2008216 () Unit!146489)

(assert (=> b!4897763 (= lt!2008207 lt!2008216)))

(assert (=> b!4897763 (= lt!2008216 (lemmaAddHeadSuffixToPrefixStillPrefix!716 Nil!56422 lt!2007944))))

(declare-fun lt!2008205 () List!56546)

(assert (=> b!4897763 (= lt!2008205 (++!12248 Nil!56422 (Cons!56422 (head!10460 lt!2007944) Nil!56422)))))

(declare-fun lt!2008202 () Unit!146489)

(declare-fun e!3061633 () Unit!146489)

(assert (=> b!4897763 (= lt!2008202 e!3061633)))

(declare-fun c!832466 () Bool)

(assert (=> b!4897763 (= c!832466 (= (size!37162 Nil!56422) (size!37162 lt!2007944)))))

(declare-fun lt!2008209 () Unit!146489)

(declare-fun lt!2008208 () Unit!146489)

(assert (=> b!4897763 (= lt!2008209 lt!2008208)))

(assert (=> b!4897763 (<= (size!37162 Nil!56422) (size!37162 lt!2007944))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!628 (List!56546 List!56546) Unit!146489)

(assert (=> b!4897763 (= lt!2008208 (lemmaIsPrefixThenSmallerEqSize!628 Nil!56422 lt!2007944))))

(declare-fun e!3061631 () tuple2!60498)

(declare-fun e!3061629 () tuple2!60498)

(assert (=> b!4897763 (= e!3061631 e!3061629)))

(declare-fun b!4897764 () Bool)

(declare-fun Unit!146494 () Unit!146489)

(assert (=> b!4897764 (= e!3061633 Unit!146494)))

(declare-fun lt!2008217 () Unit!146489)

(declare-fun call!339767 () Unit!146489)

(assert (=> b!4897764 (= lt!2008217 call!339767)))

(declare-fun call!339765 () Bool)

(assert (=> b!4897764 call!339765))

(declare-fun lt!2008192 () Unit!146489)

(assert (=> b!4897764 (= lt!2008192 lt!2008217)))

(declare-fun lt!2008212 () Unit!146489)

(declare-fun call!339770 () Unit!146489)

(assert (=> b!4897764 (= lt!2008212 call!339770)))

(assert (=> b!4897764 (= lt!2007944 Nil!56422)))

(declare-fun lt!2008198 () Unit!146489)

(assert (=> b!4897764 (= lt!2008198 lt!2008212)))

(assert (=> b!4897764 false))

(declare-fun b!4897765 () Bool)

(declare-fun call!339769 () tuple2!60498)

(assert (=> b!4897765 (= e!3061629 call!339769)))

(declare-fun b!4897766 () Bool)

(declare-fun e!3061632 () tuple2!60498)

(assert (=> b!4897766 (= e!3061632 (tuple2!60499 Nil!56422 lt!2007944))))

(declare-fun bm!339760 () Bool)

(assert (=> bm!339760 (= call!339765 (isPrefix!4899 lt!2007944 lt!2007944))))

(declare-fun b!4897767 () Bool)

(declare-fun c!832465 () Bool)

(assert (=> b!4897767 (= c!832465 call!339772)))

(declare-fun lt!2008190 () Unit!146489)

(declare-fun lt!2008203 () Unit!146489)

(assert (=> b!4897767 (= lt!2008190 lt!2008203)))

(assert (=> b!4897767 (= lt!2007944 Nil!56422)))

(assert (=> b!4897767 (= lt!2008203 call!339770)))

(declare-fun lt!2008215 () Unit!146489)

(declare-fun lt!2008191 () Unit!146489)

(assert (=> b!4897767 (= lt!2008215 lt!2008191)))

(assert (=> b!4897767 call!339765))

(assert (=> b!4897767 (= lt!2008191 call!339767)))

(assert (=> b!4897767 (= e!3061631 e!3061632)))

(declare-fun bm!339761 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1062 (List!56546 List!56546 List!56546) Unit!146489)

(assert (=> bm!339761 (= call!339770 (lemmaIsPrefixSameLengthThenSameList!1062 lt!2007944 Nil!56422 lt!2007944))))

(declare-fun b!4897768 () Bool)

(assert (=> b!4897768 (= e!3061632 (tuple2!60499 Nil!56422 Nil!56422))))

(declare-fun b!4897769 () Bool)

(declare-fun Unit!146495 () Unit!146489)

(assert (=> b!4897769 (= e!3061633 Unit!146495)))

(declare-fun b!4897770 () Bool)

(declare-fun e!3061626 () Bool)

(declare-fun e!3061628 () Bool)

(assert (=> b!4897770 (= e!3061626 e!3061628)))

(declare-fun res!2091966 () Bool)

(assert (=> b!4897770 (=> res!2091966 e!3061628)))

(declare-fun lt!2008197 () tuple2!60498)

(assert (=> b!4897770 (= res!2091966 (isEmpty!30293 (_1!33552 lt!2008197)))))

(declare-fun bm!339762 () Bool)

(assert (=> bm!339762 (= call!339772 (nullable!4560 (regex!8179 (h!62872 rulesArg!165))))))

(declare-fun b!4897771 () Bool)

(assert (=> b!4897771 (= e!3061628 (>= (size!37162 (_1!33552 lt!2008197)) (size!37162 Nil!56422)))))

(declare-fun bm!339763 () Bool)

(declare-fun call!339766 () Regex!13254)

(declare-fun call!339768 () C!26706)

(assert (=> bm!339763 (= call!339766 (derivativeStep!3882 (regex!8179 (h!62872 rulesArg!165)) call!339768))))

(declare-fun b!4897772 () Bool)

(declare-fun e!3061630 () tuple2!60498)

(assert (=> b!4897772 (= e!3061630 e!3061631)))

(declare-fun c!832467 () Bool)

(assert (=> b!4897772 (= c!832467 (= (size!37162 Nil!56422) (size!37162 lt!2007944)))))

(declare-fun b!4897773 () Bool)

(declare-fun e!3061627 () tuple2!60498)

(assert (=> b!4897773 (= e!3061629 e!3061627)))

(declare-fun lt!2008195 () tuple2!60498)

(assert (=> b!4897773 (= lt!2008195 call!339769)))

(declare-fun c!832464 () Bool)

(assert (=> b!4897773 (= c!832464 (isEmpty!30293 (_1!33552 lt!2008195)))))

(declare-fun b!4897774 () Bool)

(assert (=> b!4897774 (= e!3061627 (tuple2!60499 Nil!56422 lt!2007944))))

(declare-fun call!339771 () List!56546)

(declare-fun bm!339764 () Bool)

(assert (=> bm!339764 (= call!339769 (findLongestMatchInner!1758 call!339766 lt!2008205 (+ (size!37162 Nil!56422) 1) call!339771 lt!2007944 (size!37162 lt!2007944)))))

(declare-fun bm!339765 () Bool)

(assert (=> bm!339765 (= call!339767 (lemmaIsPrefixRefl!3296 lt!2007944 lt!2007944))))

(declare-fun d!1573791 () Bool)

(assert (=> d!1573791 e!3061626))

(declare-fun res!2091967 () Bool)

(assert (=> d!1573791 (=> (not res!2091967) (not e!3061626))))

(assert (=> d!1573791 (= res!2091967 (= (++!12248 (_1!33552 lt!2008197) (_2!33552 lt!2008197)) lt!2007944))))

(assert (=> d!1573791 (= lt!2008197 e!3061630)))

(declare-fun c!832463 () Bool)

(declare-fun lostCause!1090 (Regex!13254) Bool)

(assert (=> d!1573791 (= c!832463 (lostCause!1090 (regex!8179 (h!62872 rulesArg!165))))))

(declare-fun lt!2008200 () Unit!146489)

(declare-fun Unit!146496 () Unit!146489)

(assert (=> d!1573791 (= lt!2008200 Unit!146496)))

(assert (=> d!1573791 (= (getSuffix!2891 lt!2007944 Nil!56422) lt!2007944)))

(declare-fun lt!2008214 () Unit!146489)

(declare-fun lt!2008196 () Unit!146489)

(assert (=> d!1573791 (= lt!2008214 lt!2008196)))

(declare-fun lt!2008201 () List!56546)

(assert (=> d!1573791 (= lt!2007944 lt!2008201)))

(declare-fun lemmaSamePrefixThenSameSuffix!2307 (List!56546 List!56546 List!56546 List!56546 List!56546) Unit!146489)

(assert (=> d!1573791 (= lt!2008196 (lemmaSamePrefixThenSameSuffix!2307 Nil!56422 lt!2007944 Nil!56422 lt!2008201 lt!2007944))))

(assert (=> d!1573791 (= lt!2008201 (getSuffix!2891 lt!2007944 Nil!56422))))

(declare-fun lt!2008194 () Unit!146489)

(declare-fun lt!2008199 () Unit!146489)

(assert (=> d!1573791 (= lt!2008194 lt!2008199)))

(assert (=> d!1573791 (isPrefix!4899 Nil!56422 (++!12248 Nil!56422 lt!2007944))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3127 (List!56546 List!56546) Unit!146489)

(assert (=> d!1573791 (= lt!2008199 (lemmaConcatTwoListThenFirstIsPrefix!3127 Nil!56422 lt!2007944))))

(assert (=> d!1573791 (validRegex!5887 (regex!8179 (h!62872 rulesArg!165)))))

(assert (=> d!1573791 (= (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)) lt!2008197)))

(declare-fun bm!339766 () Bool)

(assert (=> bm!339766 (= call!339771 (tail!9606 lt!2007944))))

(declare-fun b!4897775 () Bool)

(assert (=> b!4897775 (= e!3061630 (tuple2!60499 Nil!56422 lt!2007944))))

(declare-fun b!4897776 () Bool)

(assert (=> b!4897776 (= e!3061627 lt!2008195)))

(declare-fun bm!339767 () Bool)

(assert (=> bm!339767 (= call!339768 (head!10460 lt!2007944))))

(assert (= (and d!1573791 c!832463) b!4897775))

(assert (= (and d!1573791 (not c!832463)) b!4897772))

(assert (= (and b!4897772 c!832467) b!4897767))

(assert (= (and b!4897772 (not c!832467)) b!4897763))

(assert (= (and b!4897767 c!832465) b!4897768))

(assert (= (and b!4897767 (not c!832465)) b!4897766))

(assert (= (and b!4897763 c!832466) b!4897764))

(assert (= (and b!4897763 (not c!832466)) b!4897769))

(assert (= (and b!4897763 c!832468) b!4897773))

(assert (= (and b!4897763 (not c!832468)) b!4897765))

(assert (= (and b!4897773 c!832464) b!4897774))

(assert (= (and b!4897773 (not c!832464)) b!4897776))

(assert (= (or b!4897773 b!4897765) bm!339766))

(assert (= (or b!4897773 b!4897765) bm!339767))

(assert (= (or b!4897773 b!4897765) bm!339763))

(assert (= (or b!4897773 b!4897765) bm!339764))

(assert (= (or b!4897767 b!4897763) bm!339762))

(assert (= (or b!4897767 b!4897764) bm!339765))

(assert (= (or b!4897767 b!4897764) bm!339761))

(assert (= (or b!4897767 b!4897764) bm!339760))

(assert (= (and d!1573791 res!2091967) b!4897770))

(assert (= (and b!4897770 (not res!2091966)) b!4897771))

(declare-fun m!5904800 () Bool)

(assert (=> bm!339760 m!5904800))

(declare-fun m!5904802 () Bool)

(assert (=> bm!339763 m!5904802))

(declare-fun m!5904804 () Bool)

(assert (=> d!1573791 m!5904804))

(declare-fun m!5904806 () Bool)

(assert (=> d!1573791 m!5904806))

(assert (=> d!1573791 m!5904644))

(declare-fun m!5904808 () Bool)

(assert (=> d!1573791 m!5904808))

(declare-fun m!5904810 () Bool)

(assert (=> d!1573791 m!5904810))

(declare-fun m!5904812 () Bool)

(assert (=> d!1573791 m!5904812))

(declare-fun m!5904814 () Bool)

(assert (=> d!1573791 m!5904814))

(declare-fun m!5904816 () Bool)

(assert (=> d!1573791 m!5904816))

(assert (=> d!1573791 m!5904804))

(declare-fun m!5904818 () Bool)

(assert (=> b!4897771 m!5904818))

(assert (=> b!4897771 m!5904292))

(assert (=> b!4897763 m!5904292))

(declare-fun m!5904820 () Bool)

(assert (=> b!4897763 m!5904820))

(declare-fun m!5904822 () Bool)

(assert (=> b!4897763 m!5904822))

(declare-fun m!5904824 () Bool)

(assert (=> b!4897763 m!5904824))

(declare-fun m!5904826 () Bool)

(assert (=> b!4897763 m!5904826))

(declare-fun m!5904828 () Bool)

(assert (=> b!4897763 m!5904828))

(assert (=> b!4897763 m!5904820))

(declare-fun m!5904830 () Bool)

(assert (=> b!4897763 m!5904830))

(declare-fun m!5904832 () Bool)

(assert (=> b!4897763 m!5904832))

(assert (=> b!4897763 m!5904826))

(declare-fun m!5904834 () Bool)

(assert (=> b!4897763 m!5904834))

(assert (=> b!4897763 m!5904816))

(declare-fun m!5904836 () Bool)

(assert (=> b!4897763 m!5904836))

(assert (=> b!4897763 m!5904300))

(declare-fun m!5904838 () Bool)

(assert (=> b!4897763 m!5904838))

(declare-fun m!5904840 () Bool)

(assert (=> b!4897763 m!5904840))

(assert (=> b!4897763 m!5904816))

(assert (=> bm!339762 m!5904646))

(declare-fun m!5904842 () Bool)

(assert (=> b!4897773 m!5904842))

(assert (=> bm!339767 m!5904838))

(assert (=> bm!339764 m!5904300))

(declare-fun m!5904844 () Bool)

(assert (=> bm!339764 m!5904844))

(declare-fun m!5904846 () Bool)

(assert (=> bm!339761 m!5904846))

(declare-fun m!5904848 () Bool)

(assert (=> bm!339765 m!5904848))

(assert (=> bm!339766 m!5904824))

(declare-fun m!5904850 () Bool)

(assert (=> b!4897770 m!5904850))

(assert (=> b!4897310 d!1573791))

(declare-fun d!1573803 () Bool)

(declare-fun lt!2008228 () Int)

(assert (=> d!1573803 (>= lt!2008228 0)))

(declare-fun e!3061638 () Int)

(assert (=> d!1573803 (= lt!2008228 e!3061638)))

(declare-fun c!832471 () Bool)

(assert (=> d!1573803 (= c!832471 (is-Nil!56422 Nil!56422))))

(assert (=> d!1573803 (= (size!37162 Nil!56422) lt!2008228)))

(declare-fun b!4897783 () Bool)

(assert (=> b!4897783 (= e!3061638 0)))

(declare-fun b!4897784 () Bool)

(assert (=> b!4897784 (= e!3061638 (+ 1 (size!37162 (t!366156 Nil!56422))))))

(assert (= (and d!1573803 c!832471) b!4897783))

(assert (= (and d!1573803 (not c!832471)) b!4897784))

(declare-fun m!5904852 () Bool)

(assert (=> b!4897784 m!5904852))

(assert (=> b!4897310 d!1573803))

(declare-fun d!1573805 () Bool)

(declare-fun lt!2008229 () Int)

(assert (=> d!1573805 (>= lt!2008229 0)))

(declare-fun e!3061639 () Int)

(assert (=> d!1573805 (= lt!2008229 e!3061639)))

(declare-fun c!832472 () Bool)

(assert (=> d!1573805 (= c!832472 (is-Nil!56422 lt!2007944))))

(assert (=> d!1573805 (= (size!37162 lt!2007944) lt!2008229)))

(declare-fun b!4897785 () Bool)

(assert (=> b!4897785 (= e!3061639 0)))

(declare-fun b!4897786 () Bool)

(assert (=> b!4897786 (= e!3061639 (+ 1 (size!37162 (t!366156 lt!2007944))))))

(assert (= (and d!1573805 c!832472) b!4897785))

(assert (= (and d!1573805 (not c!832472)) b!4897786))

(declare-fun m!5904854 () Bool)

(assert (=> b!4897786 m!5904854))

(assert (=> b!4897310 d!1573805))

(declare-fun b!4897792 () Bool)

(declare-fun e!3061644 () List!56546)

(assert (=> b!4897792 (= e!3061644 (++!12248 (list!17741 (left!40995 (c!832380 input!1236))) (list!17741 (right!41325 (c!832380 input!1236)))))))

(declare-fun b!4897791 () Bool)

(assert (=> b!4897791 (= e!3061644 (list!17743 (xs!18063 (c!832380 input!1236))))))

(declare-fun d!1573807 () Bool)

(declare-fun c!832473 () Bool)

(assert (=> d!1573807 (= c!832473 (is-Empty!14747 (c!832380 input!1236)))))

(declare-fun e!3061642 () List!56546)

(assert (=> d!1573807 (= (list!17741 (c!832380 input!1236)) e!3061642)))

(declare-fun b!4897789 () Bool)

(assert (=> b!4897789 (= e!3061642 Nil!56422)))

(declare-fun b!4897790 () Bool)

(assert (=> b!4897790 (= e!3061642 e!3061644)))

(declare-fun c!832474 () Bool)

(assert (=> b!4897790 (= c!832474 (is-Leaf!24554 (c!832380 input!1236)))))

(assert (= (and d!1573807 c!832473) b!4897789))

(assert (= (and d!1573807 (not c!832473)) b!4897790))

(assert (= (and b!4897790 c!832474) b!4897791))

(assert (= (and b!4897790 (not c!832474)) b!4897792))

(declare-fun m!5904856 () Bool)

(assert (=> b!4897792 m!5904856))

(declare-fun m!5904858 () Bool)

(assert (=> b!4897792 m!5904858))

(assert (=> b!4897792 m!5904856))

(assert (=> b!4897792 m!5904858))

(declare-fun m!5904860 () Bool)

(assert (=> b!4897792 m!5904860))

(assert (=> b!4897791 m!5904558))

(assert (=> d!1573703 d!1573807))

(declare-fun b!4897804 () Bool)

(declare-fun res!2091983 () Bool)

(declare-fun e!3061647 () Bool)

(assert (=> b!4897804 (=> (not res!2091983) (not e!3061647))))

(assert (=> b!4897804 (= res!2091983 (= (head!10460 (tail!9606 lt!2007823)) (head!10460 (tail!9606 lt!2007823))))))

(declare-fun d!1573809 () Bool)

(declare-fun e!3061648 () Bool)

(assert (=> d!1573809 e!3061648))

(declare-fun res!2091982 () Bool)

(assert (=> d!1573809 (=> res!2091982 e!3061648)))

(declare-fun lt!2008230 () Bool)

(assert (=> d!1573809 (= res!2091982 (not lt!2008230))))

(declare-fun e!3061646 () Bool)

(assert (=> d!1573809 (= lt!2008230 e!3061646)))

(declare-fun res!2091985 () Bool)

(assert (=> d!1573809 (=> res!2091985 e!3061646)))

(assert (=> d!1573809 (= res!2091985 (is-Nil!56422 (tail!9606 lt!2007823)))))

(assert (=> d!1573809 (= (isPrefix!4899 (tail!9606 lt!2007823) (tail!9606 lt!2007823)) lt!2008230)))

(declare-fun b!4897806 () Bool)

(assert (=> b!4897806 (= e!3061648 (>= (size!37162 (tail!9606 lt!2007823)) (size!37162 (tail!9606 lt!2007823))))))

(declare-fun b!4897803 () Bool)

(assert (=> b!4897803 (= e!3061646 e!3061647)))

(declare-fun res!2091984 () Bool)

(assert (=> b!4897803 (=> (not res!2091984) (not e!3061647))))

(assert (=> b!4897803 (= res!2091984 (not (is-Nil!56422 (tail!9606 lt!2007823))))))

(declare-fun b!4897805 () Bool)

(assert (=> b!4897805 (= e!3061647 (isPrefix!4899 (tail!9606 (tail!9606 lt!2007823)) (tail!9606 (tail!9606 lt!2007823))))))

(assert (= (and d!1573809 (not res!2091985)) b!4897803))

(assert (= (and b!4897803 res!2091984) b!4897804))

(assert (= (and b!4897804 res!2091983) b!4897805))

(assert (= (and d!1573809 (not res!2091982)) b!4897806))

(assert (=> b!4897804 m!5904386))

(declare-fun m!5904862 () Bool)

(assert (=> b!4897804 m!5904862))

(assert (=> b!4897804 m!5904386))

(assert (=> b!4897804 m!5904862))

(assert (=> b!4897806 m!5904386))

(declare-fun m!5904864 () Bool)

(assert (=> b!4897806 m!5904864))

(assert (=> b!4897806 m!5904386))

(assert (=> b!4897806 m!5904864))

(assert (=> b!4897805 m!5904386))

(declare-fun m!5904866 () Bool)

(assert (=> b!4897805 m!5904866))

(assert (=> b!4897805 m!5904386))

(assert (=> b!4897805 m!5904866))

(assert (=> b!4897805 m!5904866))

(assert (=> b!4897805 m!5904866))

(declare-fun m!5904868 () Bool)

(assert (=> b!4897805 m!5904868))

(assert (=> b!4897392 d!1573809))

(declare-fun d!1573811 () Bool)

(assert (=> d!1573811 (= (tail!9606 lt!2007823) (t!366156 lt!2007823))))

(assert (=> b!4897392 d!1573811))

(assert (=> b!4897308 d!1573729))

(assert (=> b!4897308 d!1573727))

(assert (=> b!4897308 d!1573731))

(assert (=> b!4897308 d!1573703))

(declare-fun d!1573813 () Bool)

(assert (=> d!1573813 (= (list!17739 (_2!33547 (get!19492 lt!2007947))) (list!17741 (c!832380 (_2!33547 (get!19492 lt!2007947)))))))

(declare-fun bs!1176463 () Bool)

(assert (= bs!1176463 d!1573813))

(declare-fun m!5904870 () Bool)

(assert (=> bs!1176463 m!5904870))

(assert (=> b!4897308 d!1573813))

(declare-fun b!4897810 () Bool)

(declare-fun e!3061650 () List!56546)

(assert (=> b!4897810 (= e!3061650 (++!12248 (list!17741 (left!40995 (c!832380 (_2!33547 lt!2007828)))) (list!17741 (right!41325 (c!832380 (_2!33547 lt!2007828))))))))

(declare-fun b!4897809 () Bool)

(assert (=> b!4897809 (= e!3061650 (list!17743 (xs!18063 (c!832380 (_2!33547 lt!2007828)))))))

(declare-fun d!1573815 () Bool)

(declare-fun c!832475 () Bool)

(assert (=> d!1573815 (= c!832475 (is-Empty!14747 (c!832380 (_2!33547 lt!2007828))))))

(declare-fun e!3061649 () List!56546)

(assert (=> d!1573815 (= (list!17741 (c!832380 (_2!33547 lt!2007828))) e!3061649)))

(declare-fun b!4897807 () Bool)

(assert (=> b!4897807 (= e!3061649 Nil!56422)))

(declare-fun b!4897808 () Bool)

(assert (=> b!4897808 (= e!3061649 e!3061650)))

(declare-fun c!832476 () Bool)

(assert (=> b!4897808 (= c!832476 (is-Leaf!24554 (c!832380 (_2!33547 lt!2007828))))))

(assert (= (and d!1573815 c!832475) b!4897807))

(assert (= (and d!1573815 (not c!832475)) b!4897808))

(assert (= (and b!4897808 c!832476) b!4897809))

(assert (= (and b!4897808 (not c!832476)) b!4897810))

(declare-fun m!5904872 () Bool)

(assert (=> b!4897810 m!5904872))

(declare-fun m!5904874 () Bool)

(assert (=> b!4897810 m!5904874))

(assert (=> b!4897810 m!5904872))

(assert (=> b!4897810 m!5904874))

(declare-fun m!5904876 () Bool)

(assert (=> b!4897810 m!5904876))

(declare-fun m!5904878 () Bool)

(assert (=> b!4897809 m!5904878))

(assert (=> d!1573697 d!1573815))

(declare-fun d!1573817 () Bool)

(assert (=> d!1573817 (= (isDefined!11048 lt!2007982) (not (isEmpty!30291 lt!2007982)))))

(declare-fun bs!1176464 () Bool)

(assert (= bs!1176464 d!1573817))

(assert (=> bs!1176464 m!5904354))

(assert (=> b!4897374 d!1573817))

(declare-fun b!4897823 () Bool)

(declare-fun e!3061655 () Bool)

(declare-fun e!3061656 () Bool)

(assert (=> b!4897823 (= e!3061655 e!3061656)))

(declare-fun res!2092003 () Bool)

(assert (=> b!4897823 (=> (not res!2092003) (not e!3061656))))

(assert (=> b!4897823 (= res!2092003 (<= (- 1) (- (height!1960 (left!40995 (c!832380 input!1236))) (height!1960 (right!41325 (c!832380 input!1236))))))))

(declare-fun b!4897824 () Bool)

(assert (=> b!4897824 (= e!3061656 (not (isEmpty!30299 (right!41325 (c!832380 input!1236)))))))

(declare-fun b!4897825 () Bool)

(declare-fun res!2092001 () Bool)

(assert (=> b!4897825 (=> (not res!2092001) (not e!3061656))))

(assert (=> b!4897825 (= res!2092001 (<= (- (height!1960 (left!40995 (c!832380 input!1236))) (height!1960 (right!41325 (c!832380 input!1236)))) 1))))

(declare-fun b!4897826 () Bool)

(declare-fun res!2092002 () Bool)

(assert (=> b!4897826 (=> (not res!2092002) (not e!3061656))))

(assert (=> b!4897826 (= res!2092002 (not (isEmpty!30299 (left!40995 (c!832380 input!1236)))))))

(declare-fun d!1573819 () Bool)

(declare-fun res!2091999 () Bool)

(assert (=> d!1573819 (=> res!2091999 e!3061655)))

(assert (=> d!1573819 (= res!2091999 (not (is-Node!14747 (c!832380 input!1236))))))

(assert (=> d!1573819 (= (isBalanced!4017 (c!832380 input!1236)) e!3061655)))

(declare-fun b!4897827 () Bool)

(declare-fun res!2092000 () Bool)

(assert (=> b!4897827 (=> (not res!2092000) (not e!3061656))))

(assert (=> b!4897827 (= res!2092000 (isBalanced!4017 (left!40995 (c!832380 input!1236))))))

(declare-fun b!4897828 () Bool)

(declare-fun res!2091998 () Bool)

(assert (=> b!4897828 (=> (not res!2091998) (not e!3061656))))

(assert (=> b!4897828 (= res!2091998 (isBalanced!4017 (right!41325 (c!832380 input!1236))))))

(assert (= (and d!1573819 (not res!2091999)) b!4897823))

(assert (= (and b!4897823 res!2092003) b!4897825))

(assert (= (and b!4897825 res!2092001) b!4897827))

(assert (= (and b!4897827 res!2092000) b!4897828))

(assert (= (and b!4897828 res!2091998) b!4897826))

(assert (= (and b!4897826 res!2092002) b!4897824))

(assert (=> b!4897825 m!5904534))

(assert (=> b!4897825 m!5904536))

(declare-fun m!5904880 () Bool)

(assert (=> b!4897828 m!5904880))

(declare-fun m!5904882 () Bool)

(assert (=> b!4897824 m!5904882))

(assert (=> b!4897823 m!5904534))

(assert (=> b!4897823 m!5904536))

(declare-fun m!5904884 () Bool)

(assert (=> b!4897827 m!5904884))

(declare-fun m!5904886 () Bool)

(assert (=> b!4897826 m!5904886))

(assert (=> d!1573637 d!1573819))

(declare-fun d!1573821 () Bool)

(assert (=> d!1573821 (= (list!17739 (_1!33551 lt!2007946)) (list!17741 (c!832380 (_1!33551 lt!2007946))))))

(declare-fun bs!1176465 () Bool)

(assert (= bs!1176465 d!1573821))

(declare-fun m!5904888 () Bool)

(assert (=> bs!1176465 m!5904888))

(assert (=> b!4897307 d!1573821))

(assert (=> b!4897307 d!1573791))

(declare-fun d!1573823 () Bool)

(declare-fun dynLambda!22678 (Int BalanceConc!28924) TokenValue!8489)

(assert (=> d!1573823 (= (apply!13545 (transformation!8179 (h!62872 rulesArg!165)) (_1!33551 lt!2007946)) (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (_1!33551 lt!2007946)))))

(declare-fun b_lambda!194797 () Bool)

(assert (=> (not b_lambda!194797) (not d!1573823)))

(declare-fun t!366169 () Bool)

(declare-fun tb!259383 () Bool)

(assert (=> (and b!4897156 (= (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) t!366169) tb!259383))

(declare-fun result!323008 () Bool)

(declare-fun inv!21 (TokenValue!8489) Bool)

(assert (=> tb!259383 (= result!323008 (inv!21 (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (_1!33551 lt!2007946))))))

(declare-fun m!5904902 () Bool)

(assert (=> tb!259383 m!5904902))

(assert (=> d!1573823 t!366169))

(declare-fun b_and!345515 () Bool)

(assert (= b_and!345495 (and (=> t!366169 result!323008) b_and!345515)))

(declare-fun t!366171 () Bool)

(declare-fun tb!259385 () Bool)

(assert (=> (and b!4897429 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) t!366171) tb!259385))

(declare-fun result!323012 () Bool)

(assert (= result!323012 result!323008))

(assert (=> d!1573823 t!366171))

(declare-fun b_and!345517 () Bool)

(assert (= b_and!345503 (and (=> t!366171 result!323012) b_and!345517)))

(declare-fun m!5904908 () Bool)

(assert (=> d!1573823 m!5904908))

(assert (=> b!4897307 d!1573823))

(declare-fun d!1573825 () Bool)

(declare-fun lt!2008238 () Int)

(assert (=> d!1573825 (= lt!2008238 (size!37162 (list!17739 (_1!33551 lt!2007946))))))

(assert (=> d!1573825 (= lt!2008238 (size!37165 (c!832380 (_1!33551 lt!2007946))))))

(assert (=> d!1573825 (= (size!37161 (_1!33551 lt!2007946)) lt!2008238)))

(declare-fun bs!1176466 () Bool)

(assert (= bs!1176466 d!1573825))

(assert (=> bs!1176466 m!5904296))

(assert (=> bs!1176466 m!5904296))

(declare-fun m!5904936 () Bool)

(assert (=> bs!1176466 m!5904936))

(declare-fun m!5904938 () Bool)

(assert (=> bs!1176466 m!5904938))

(assert (=> b!4897307 d!1573825))

(declare-fun d!1573829 () Bool)

(declare-fun e!3061666 () Bool)

(assert (=> d!1573829 e!3061666))

(declare-fun res!2092013 () Bool)

(assert (=> d!1573829 (=> (not res!2092013) (not e!3061666))))

(assert (=> d!1573829 (= res!2092013 (semiInverseModEq!3591 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))))))

(declare-fun Unit!146497 () Unit!146489)

(assert (=> d!1573829 (= (lemmaInv!1241 (transformation!8179 (h!62872 rulesArg!165))) Unit!146497)))

(declare-fun b!4897842 () Bool)

(assert (=> b!4897842 (= e!3061666 (equivClasses!3470 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))))))

(assert (= (and d!1573829 res!2092013) b!4897842))

(assert (=> d!1573829 m!5904210))

(assert (=> b!4897842 m!5904212))

(assert (=> b!4897307 d!1573829))

(assert (=> b!4897307 d!1573805))

(declare-fun d!1573833 () Bool)

(declare-fun e!3061672 () Bool)

(assert (=> d!1573833 e!3061672))

(declare-fun res!2092016 () Bool)

(assert (=> d!1573833 (=> res!2092016 e!3061672)))

(assert (=> d!1573833 (= res!2092016 (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))))))

(declare-fun lt!2008250 () Unit!146489)

(declare-fun choose!35761 (Regex!13254 List!56546) Unit!146489)

(assert (=> d!1573833 (= lt!2008250 (choose!35761 (regex!8179 (h!62872 rulesArg!165)) lt!2007944))))

(assert (=> d!1573833 (validRegex!5887 (regex!8179 (h!62872 rulesArg!165)))))

(assert (=> d!1573833 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1721 (regex!8179 (h!62872 rulesArg!165)) lt!2007944) lt!2008250)))

(declare-fun b!4897851 () Bool)

(assert (=> b!4897851 (= e!3061672 (matchR!6535 (regex!8179 (h!62872 rulesArg!165)) (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))))))

(assert (= (and d!1573833 (not res!2092016)) b!4897851))

(assert (=> d!1573833 m!5904292))

(assert (=> d!1573833 m!5904300))

(assert (=> d!1573833 m!5904292))

(assert (=> d!1573833 m!5904300))

(assert (=> d!1573833 m!5904302))

(assert (=> d!1573833 m!5904306))

(declare-fun m!5904954 () Bool)

(assert (=> d!1573833 m!5904954))

(assert (=> d!1573833 m!5904644))

(assert (=> b!4897851 m!5904292))

(assert (=> b!4897851 m!5904300))

(assert (=> b!4897851 m!5904292))

(assert (=> b!4897851 m!5904300))

(assert (=> b!4897851 m!5904302))

(assert (=> b!4897851 m!5904324))

(assert (=> b!4897307 d!1573833))

(declare-fun d!1573843 () Bool)

(assert (=> d!1573843 (= (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))) (is-Nil!56422 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007944 lt!2007944 (size!37162 lt!2007944)))))))

(assert (=> b!4897307 d!1573843))

(assert (=> b!4897307 d!1573703))

(declare-fun d!1573845 () Bool)

(declare-fun fromListB!2696 (List!56546) BalanceConc!28924)

(assert (=> d!1573845 (= (seqFromList!5941 (list!17739 (_1!33551 lt!2007946))) (fromListB!2696 (list!17739 (_1!33551 lt!2007946))))))

(declare-fun bs!1176471 () Bool)

(assert (= bs!1176471 d!1573845))

(assert (=> bs!1176471 m!5904296))

(declare-fun m!5904958 () Bool)

(assert (=> bs!1176471 m!5904958))

(assert (=> b!4897307 d!1573845))

(declare-fun d!1573849 () Bool)

(declare-fun dynLambda!22679 (Int BalanceConc!28924) Bool)

(assert (=> d!1573849 (dynLambda!22679 lambda!244124 (_1!33551 lt!2007946))))

(declare-fun lt!2008256 () Unit!146489)

(declare-fun choose!35762 (Int BalanceConc!28924) Unit!146489)

(assert (=> d!1573849 (= lt!2008256 (choose!35762 lambda!244124 (_1!33551 lt!2007946)))))

(assert (=> d!1573849 (Forall!1692 lambda!244124)))

(assert (=> d!1573849 (= (ForallOf!1138 lambda!244124 (_1!33551 lt!2007946)) lt!2008256)))

(declare-fun b_lambda!194801 () Bool)

(assert (=> (not b_lambda!194801) (not d!1573849)))

(declare-fun bs!1176473 () Bool)

(assert (= bs!1176473 d!1573849))

(declare-fun m!5904966 () Bool)

(assert (=> bs!1176473 m!5904966))

(declare-fun m!5904968 () Bool)

(assert (=> bs!1176473 m!5904968))

(declare-fun m!5904970 () Bool)

(assert (=> bs!1176473 m!5904970))

(assert (=> b!4897307 d!1573849))

(declare-fun bs!1176474 () Bool)

(declare-fun d!1573853 () Bool)

(assert (= bs!1176474 (and d!1573853 d!1573755)))

(declare-fun lambda!244146 () Int)

(assert (=> bs!1176474 (= lambda!244146 lambda!244139)))

(declare-fun b!4897867 () Bool)

(declare-fun e!3061685 () Bool)

(assert (=> b!4897867 (= e!3061685 true)))

(assert (=> d!1573853 e!3061685))

(assert (= d!1573853 b!4897867))

(assert (=> b!4897867 (< (dynLambda!22669 order!25511 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) (dynLambda!22677 order!25523 lambda!244146))))

(assert (=> b!4897867 (< (dynLambda!22671 order!25515 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) (dynLambda!22677 order!25523 lambda!244146))))

(assert (=> d!1573853 (= (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (_1!33551 lt!2007946)) (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))))))

(declare-fun lt!2008262 () Unit!146489)

(declare-fun Forall2of!451 (Int BalanceConc!28924 BalanceConc!28924) Unit!146489)

(assert (=> d!1573853 (= lt!2008262 (Forall2of!451 lambda!244146 (_1!33551 lt!2007946) (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))))))

(assert (=> d!1573853 (= (list!17739 (_1!33551 lt!2007946)) (list!17739 (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))))))

(assert (=> d!1573853 (= (lemmaEqSameImage!1095 (transformation!8179 (h!62872 rulesArg!165)) (_1!33551 lt!2007946) (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))) lt!2008262)))

(declare-fun b_lambda!194807 () Bool)

(assert (=> (not b_lambda!194807) (not d!1573853)))

(assert (=> d!1573853 t!366169))

(declare-fun b_and!345525 () Bool)

(assert (= b_and!345515 (and (=> t!366169 result!323008) b_and!345525)))

(assert (=> d!1573853 t!366171))

(declare-fun b_and!345527 () Bool)

(assert (= b_and!345517 (and (=> t!366171 result!323012) b_and!345527)))

(declare-fun b_lambda!194809 () Bool)

(assert (=> (not b_lambda!194809) (not d!1573853)))

(declare-fun t!366181 () Bool)

(declare-fun tb!259395 () Bool)

(assert (=> (and b!4897156 (= (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) t!366181) tb!259395))

(declare-fun result!323024 () Bool)

(assert (=> tb!259395 (= result!323024 (inv!21 (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (seqFromList!5941 (list!17739 (_1!33551 lt!2007946))))))))

(declare-fun m!5904984 () Bool)

(assert (=> tb!259395 m!5904984))

(assert (=> d!1573853 t!366181))

(declare-fun b_and!345531 () Bool)

(assert (= b_and!345525 (and (=> t!366181 result!323024) b_and!345531)))

(declare-fun t!366183 () Bool)

(declare-fun tb!259397 () Bool)

(assert (=> (and b!4897429 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) t!366183) tb!259397))

(declare-fun result!323026 () Bool)

(assert (= result!323026 result!323024))

(assert (=> d!1573853 t!366183))

(declare-fun b_and!345533 () Bool)

(assert (= b_and!345527 (and (=> t!366183 result!323026) b_and!345533)))

(assert (=> d!1573853 m!5904908))

(assert (=> d!1573853 m!5904298))

(declare-fun m!5904986 () Bool)

(assert (=> d!1573853 m!5904986))

(assert (=> d!1573853 m!5904296))

(assert (=> d!1573853 m!5904298))

(declare-fun m!5904988 () Bool)

(assert (=> d!1573853 m!5904988))

(assert (=> d!1573853 m!5904298))

(declare-fun m!5904990 () Bool)

(assert (=> d!1573853 m!5904990))

(assert (=> b!4897307 d!1573853))

(declare-fun d!1573857 () Bool)

(assert (=> d!1573857 (dynLambda!22679 lambda!244124 (seqFromList!5941 (list!17739 (_1!33551 lt!2007946))))))

(declare-fun lt!2008263 () Unit!146489)

(assert (=> d!1573857 (= lt!2008263 (choose!35762 lambda!244124 (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))))))

(assert (=> d!1573857 (Forall!1692 lambda!244124)))

(assert (=> d!1573857 (= (ForallOf!1138 lambda!244124 (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))) lt!2008263)))

(declare-fun b_lambda!194811 () Bool)

(assert (=> (not b_lambda!194811) (not d!1573857)))

(declare-fun bs!1176475 () Bool)

(assert (= bs!1176475 d!1573857))

(assert (=> bs!1176475 m!5904298))

(declare-fun m!5904992 () Bool)

(assert (=> bs!1176475 m!5904992))

(assert (=> bs!1176475 m!5904298))

(declare-fun m!5904994 () Bool)

(assert (=> bs!1176475 m!5904994))

(assert (=> bs!1176475 m!5904970))

(assert (=> b!4897307 d!1573857))

(assert (=> b!4897307 d!1573803))

(assert (=> b!4897381 d!1573715))

(declare-fun d!1573859 () Bool)

(assert (=> d!1573859 (= (apply!13545 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))) (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2007982))))) (dynLambda!22678 (toValue!11082 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))) (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2007982))))))))

(declare-fun b_lambda!194813 () Bool)

(assert (=> (not b_lambda!194813) (not d!1573859)))

(declare-fun tb!259399 () Bool)

(declare-fun t!366185 () Bool)

(assert (=> (and b!4897156 (= (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (toValue!11082 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))) t!366185) tb!259399))

(declare-fun result!323028 () Bool)

(assert (=> tb!259399 (= result!323028 (inv!21 (dynLambda!22678 (toValue!11082 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982))))) (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2007982)))))))))

(declare-fun m!5904996 () Bool)

(assert (=> tb!259399 m!5904996))

(assert (=> d!1573859 t!366185))

(declare-fun b_and!345535 () Bool)

(assert (= b_and!345531 (and (=> t!366185 result!323028) b_and!345535)))

(declare-fun t!366187 () Bool)

(declare-fun tb!259401 () Bool)

(assert (=> (and b!4897429 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))) t!366187) tb!259401))

(declare-fun result!323030 () Bool)

(assert (= result!323030 result!323028))

(assert (=> d!1573859 t!366187))

(declare-fun b_and!345537 () Bool)

(assert (= b_and!345533 (and (=> t!366187 result!323030) b_and!345537)))

(assert (=> d!1573859 m!5904358))

(declare-fun m!5904998 () Bool)

(assert (=> d!1573859 m!5904998))

(assert (=> b!4897381 d!1573859))

(declare-fun d!1573861 () Bool)

(assert (=> d!1573861 (= (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2007982)))) (fromListB!2696 (originalCharacters!8492 (_1!33548 (get!19491 lt!2007982)))))))

(declare-fun bs!1176476 () Bool)

(assert (= bs!1176476 d!1573861))

(declare-fun m!5905000 () Bool)

(assert (=> bs!1176476 m!5905000))

(assert (=> b!4897381 d!1573861))

(declare-fun d!1573863 () Bool)

(declare-fun c!832481 () Bool)

(assert (=> d!1573863 (= c!832481 (is-Node!14747 (left!40995 (c!832380 input!1236))))))

(declare-fun e!3061689 () Bool)

(assert (=> d!1573863 (= (inv!72721 (left!40995 (c!832380 input!1236))) e!3061689)))

(declare-fun b!4897868 () Bool)

(assert (=> b!4897868 (= e!3061689 (inv!72725 (left!40995 (c!832380 input!1236))))))

(declare-fun b!4897869 () Bool)

(declare-fun e!3061690 () Bool)

(assert (=> b!4897869 (= e!3061689 e!3061690)))

(declare-fun res!2092021 () Bool)

(assert (=> b!4897869 (= res!2092021 (not (is-Leaf!24554 (left!40995 (c!832380 input!1236)))))))

(assert (=> b!4897869 (=> res!2092021 e!3061690)))

(declare-fun b!4897870 () Bool)

(assert (=> b!4897870 (= e!3061690 (inv!72726 (left!40995 (c!832380 input!1236))))))

(assert (= (and d!1573863 c!832481) b!4897868))

(assert (= (and d!1573863 (not c!832481)) b!4897869))

(assert (= (and b!4897869 (not res!2092021)) b!4897870))

(declare-fun m!5905002 () Bool)

(assert (=> b!4897868 m!5905002))

(declare-fun m!5905004 () Bool)

(assert (=> b!4897870 m!5905004))

(assert (=> b!4897402 d!1573863))

(declare-fun d!1573865 () Bool)

(declare-fun c!832482 () Bool)

(assert (=> d!1573865 (= c!832482 (is-Node!14747 (right!41325 (c!832380 input!1236))))))

(declare-fun e!3061691 () Bool)

(assert (=> d!1573865 (= (inv!72721 (right!41325 (c!832380 input!1236))) e!3061691)))

(declare-fun b!4897871 () Bool)

(assert (=> b!4897871 (= e!3061691 (inv!72725 (right!41325 (c!832380 input!1236))))))

(declare-fun b!4897872 () Bool)

(declare-fun e!3061692 () Bool)

(assert (=> b!4897872 (= e!3061691 e!3061692)))

(declare-fun res!2092022 () Bool)

(assert (=> b!4897872 (= res!2092022 (not (is-Leaf!24554 (right!41325 (c!832380 input!1236)))))))

(assert (=> b!4897872 (=> res!2092022 e!3061692)))

(declare-fun b!4897873 () Bool)

(assert (=> b!4897873 (= e!3061692 (inv!72726 (right!41325 (c!832380 input!1236))))))

(assert (= (and d!1573865 c!832482) b!4897871))

(assert (= (and d!1573865 (not c!832482)) b!4897872))

(assert (= (and b!4897872 (not res!2092022)) b!4897873))

(declare-fun m!5905006 () Bool)

(assert (=> b!4897871 m!5905006))

(declare-fun m!5905008 () Bool)

(assert (=> b!4897873 m!5905008))

(assert (=> b!4897402 d!1573865))

(declare-fun b!4897874 () Bool)

(declare-fun res!2092029 () Bool)

(declare-fun e!3061695 () Bool)

(assert (=> b!4897874 (=> (not res!2092029) (not e!3061695))))

(declare-fun lt!2008264 () Option!14035)

(assert (=> b!4897874 (= res!2092029 (= (++!12248 (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008264)))) (_2!33548 (get!19491 lt!2008264))) lt!2007823))))

(declare-fun b!4897875 () Bool)

(declare-fun res!2092026 () Bool)

(assert (=> b!4897875 (=> (not res!2092026) (not e!3061695))))

(assert (=> b!4897875 (= res!2092026 (= (value!262253 (_1!33548 (get!19491 lt!2008264))) (apply!13545 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2008264)))) (seqFromList!5941 (originalCharacters!8492 (_1!33548 (get!19491 lt!2008264)))))))))

(declare-fun b!4897876 () Bool)

(declare-fun e!3061694 () Bool)

(assert (=> b!4897876 (= e!3061694 (matchR!6535 (regex!8179 (h!62872 rulesArg!165)) (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007823 lt!2007823 (size!37162 lt!2007823)))))))

(declare-fun b!4897877 () Bool)

(declare-fun e!3061693 () Option!14035)

(declare-fun lt!2008265 () tuple2!60498)

(assert (=> b!4897877 (= e!3061693 (Some!14034 (tuple2!60491 (Token!14923 (apply!13545 (transformation!8179 (h!62872 rulesArg!165)) (seqFromList!5941 (_1!33552 lt!2008265))) (h!62872 rulesArg!165) (size!37161 (seqFromList!5941 (_1!33552 lt!2008265))) (_1!33552 lt!2008265)) (_2!33552 lt!2008265))))))

(declare-fun lt!2008268 () Unit!146489)

(assert (=> b!4897877 (= lt!2008268 (longestMatchIsAcceptedByMatchOrIsEmpty!1721 (regex!8179 (h!62872 rulesArg!165)) lt!2007823))))

(declare-fun res!2092027 () Bool)

(assert (=> b!4897877 (= res!2092027 (isEmpty!30293 (_1!33552 (findLongestMatchInner!1758 (regex!8179 (h!62872 rulesArg!165)) Nil!56422 (size!37162 Nil!56422) lt!2007823 lt!2007823 (size!37162 lt!2007823)))))))

(assert (=> b!4897877 (=> res!2092027 e!3061694)))

(assert (=> b!4897877 e!3061694))

(declare-fun lt!2008267 () Unit!146489)

(assert (=> b!4897877 (= lt!2008267 lt!2008268)))

(declare-fun lt!2008266 () Unit!146489)

(assert (=> b!4897877 (= lt!2008266 (lemmaSemiInverse!2569 (transformation!8179 (h!62872 rulesArg!165)) (seqFromList!5941 (_1!33552 lt!2008265))))))

(declare-fun d!1573867 () Bool)

(declare-fun e!3061696 () Bool)

(assert (=> d!1573867 e!3061696))

(declare-fun res!2092028 () Bool)

(assert (=> d!1573867 (=> res!2092028 e!3061696)))

(assert (=> d!1573867 (= res!2092028 (isEmpty!30291 lt!2008264))))

(assert (=> d!1573867 (= lt!2008264 e!3061693)))

(declare-fun c!832483 () Bool)

(assert (=> d!1573867 (= c!832483 (isEmpty!30293 (_1!33552 lt!2008265)))))

(assert (=> d!1573867 (= lt!2008265 (findLongestMatch!1652 (regex!8179 (h!62872 rulesArg!165)) lt!2007823))))

(assert (=> d!1573867 (ruleValid!3677 thiss!14805 (h!62872 rulesArg!165))))

(assert (=> d!1573867 (= (maxPrefixOneRule!3534 thiss!14805 (h!62872 rulesArg!165) lt!2007823) lt!2008264)))

(declare-fun b!4897878 () Bool)

(assert (=> b!4897878 (= e!3061696 e!3061695)))

(declare-fun res!2092025 () Bool)

(assert (=> b!4897878 (=> (not res!2092025) (not e!3061695))))

(assert (=> b!4897878 (= res!2092025 (matchR!6535 (regex!8179 (h!62872 rulesArg!165)) (list!17739 (charsOf!5379 (_1!33548 (get!19491 lt!2008264))))))))

(declare-fun b!4897879 () Bool)

(assert (=> b!4897879 (= e!3061695 (= (size!37159 (_1!33548 (get!19491 lt!2008264))) (size!37162 (originalCharacters!8492 (_1!33548 (get!19491 lt!2008264))))))))

(declare-fun b!4897880 () Bool)

(declare-fun res!2092024 () Bool)

(assert (=> b!4897880 (=> (not res!2092024) (not e!3061695))))

(assert (=> b!4897880 (= res!2092024 (< (size!37162 (_2!33548 (get!19491 lt!2008264))) (size!37162 lt!2007823)))))

(declare-fun b!4897881 () Bool)

(assert (=> b!4897881 (= e!3061693 None!14034)))

(declare-fun b!4897882 () Bool)

(declare-fun res!2092023 () Bool)

(assert (=> b!4897882 (=> (not res!2092023) (not e!3061695))))

(assert (=> b!4897882 (= res!2092023 (= (rule!11381 (_1!33548 (get!19491 lt!2008264))) (h!62872 rulesArg!165)))))

(assert (= (and d!1573867 c!832483) b!4897881))

(assert (= (and d!1573867 (not c!832483)) b!4897877))

(assert (= (and b!4897877 (not res!2092027)) b!4897876))

(assert (= (and d!1573867 (not res!2092028)) b!4897878))

(assert (= (and b!4897878 res!2092025) b!4897874))

(assert (= (and b!4897874 res!2092029) b!4897880))

(assert (= (and b!4897880 res!2092024) b!4897882))

(assert (= (and b!4897882 res!2092023) b!4897875))

(assert (= (and b!4897875 res!2092026) b!4897879))

(declare-fun m!5905010 () Bool)

(assert (=> b!4897879 m!5905010))

(declare-fun m!5905012 () Bool)

(assert (=> b!4897879 m!5905012))

(assert (=> b!4897878 m!5905010))

(declare-fun m!5905014 () Bool)

(assert (=> b!4897878 m!5905014))

(assert (=> b!4897878 m!5905014))

(declare-fun m!5905016 () Bool)

(assert (=> b!4897878 m!5905016))

(assert (=> b!4897878 m!5905016))

(declare-fun m!5905018 () Bool)

(assert (=> b!4897878 m!5905018))

(assert (=> b!4897882 m!5905010))

(assert (=> b!4897877 m!5904292))

(assert (=> b!4897877 m!5904368))

(assert (=> b!4897877 m!5904292))

(assert (=> b!4897877 m!5904368))

(assert (=> b!4897877 m!5904612))

(assert (=> b!4897877 m!5904622))

(declare-fun m!5905020 () Bool)

(assert (=> b!4897877 m!5905020))

(assert (=> b!4897877 m!5905020))

(declare-fun m!5905022 () Bool)

(assert (=> b!4897877 m!5905022))

(assert (=> b!4897877 m!5904616))

(assert (=> b!4897877 m!5905020))

(declare-fun m!5905024 () Bool)

(assert (=> b!4897877 m!5905024))

(assert (=> b!4897877 m!5905020))

(declare-fun m!5905026 () Bool)

(assert (=> b!4897877 m!5905026))

(assert (=> b!4897875 m!5905010))

(declare-fun m!5905028 () Bool)

(assert (=> b!4897875 m!5905028))

(assert (=> b!4897875 m!5905028))

(declare-fun m!5905030 () Bool)

(assert (=> b!4897875 m!5905030))

(assert (=> b!4897874 m!5905010))

(assert (=> b!4897874 m!5905014))

(assert (=> b!4897874 m!5905014))

(assert (=> b!4897874 m!5905016))

(assert (=> b!4897874 m!5905016))

(declare-fun m!5905032 () Bool)

(assert (=> b!4897874 m!5905032))

(declare-fun m!5905034 () Bool)

(assert (=> d!1573867 m!5905034))

(declare-fun m!5905036 () Bool)

(assert (=> d!1573867 m!5905036))

(declare-fun m!5905038 () Bool)

(assert (=> d!1573867 m!5905038))

(assert (=> d!1573867 m!5904320))

(assert (=> b!4897880 m!5905010))

(declare-fun m!5905040 () Bool)

(assert (=> b!4897880 m!5905040))

(assert (=> b!4897880 m!5904368))

(assert (=> b!4897876 m!5904292))

(assert (=> b!4897876 m!5904368))

(assert (=> b!4897876 m!5904292))

(assert (=> b!4897876 m!5904368))

(assert (=> b!4897876 m!5904612))

(assert (=> b!4897876 m!5904626))

(assert (=> bm!339732 d!1573867))

(declare-fun d!1573869 () Bool)

(declare-fun lt!2008272 () Option!14035)

(assert (=> d!1573869 (= lt!2008272 (maxPrefix!4608 thiss!14805 (t!366158 rulesArg!165) lt!2007823))))

(declare-fun e!3061697 () Option!14035)

(assert (=> d!1573869 (= lt!2008272 e!3061697)))

(declare-fun c!832484 () Bool)

(assert (=> d!1573869 (= c!832484 (and (is-Cons!56424 (t!366158 rulesArg!165)) (is-Nil!56424 (t!366158 (t!366158 rulesArg!165)))))))

(declare-fun lt!2008271 () Unit!146489)

(declare-fun lt!2008273 () Unit!146489)

(assert (=> d!1573869 (= lt!2008271 lt!2008273)))

(assert (=> d!1573869 (isPrefix!4899 lt!2007823 lt!2007823)))

(assert (=> d!1573869 (= lt!2008273 (lemmaIsPrefixRefl!3296 lt!2007823 lt!2007823))))

(assert (=> d!1573869 (rulesValidInductive!3158 thiss!14805 (t!366158 rulesArg!165))))

(assert (=> d!1573869 (= (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) lt!2007823) lt!2008272)))

(declare-fun bm!339768 () Bool)

(declare-fun call!339773 () Option!14035)

(assert (=> bm!339768 (= call!339773 (maxPrefixOneRuleZipper!263 thiss!14805 (h!62872 (t!366158 rulesArg!165)) lt!2007823))))

(declare-fun b!4897883 () Bool)

(assert (=> b!4897883 (= e!3061697 call!339773)))

(declare-fun b!4897884 () Bool)

(declare-fun lt!2008270 () Option!14035)

(declare-fun lt!2008269 () Option!14035)

(assert (=> b!4897884 (= e!3061697 (ite (and (is-None!14034 lt!2008270) (is-None!14034 lt!2008269)) None!14034 (ite (is-None!14034 lt!2008269) lt!2008270 (ite (is-None!14034 lt!2008270) lt!2008269 (ite (>= (size!37159 (_1!33548 (v!49992 lt!2008270))) (size!37159 (_1!33548 (v!49992 lt!2008269)))) lt!2008270 lt!2008269)))))))

(assert (=> b!4897884 (= lt!2008270 call!339773)))

(assert (=> b!4897884 (= lt!2008269 (maxPrefixZipper!678 thiss!14805 (t!366158 (t!366158 rulesArg!165)) lt!2007823))))

(assert (= (and d!1573869 c!832484) b!4897883))

(assert (= (and d!1573869 (not c!832484)) b!4897884))

(assert (= (or b!4897883 b!4897884) bm!339768))

(assert (=> d!1573869 m!5904376))

(assert (=> d!1573869 m!5904120))

(assert (=> d!1573869 m!5904122))

(assert (=> d!1573869 m!5904240))

(declare-fun m!5905042 () Bool)

(assert (=> bm!339768 m!5905042))

(declare-fun m!5905044 () Bool)

(assert (=> b!4897884 m!5905044))

(assert (=> b!4897219 d!1573869))

(declare-fun d!1573871 () Bool)

(assert (=> d!1573871 (= (isEmpty!30291 lt!2007830) (not (is-Some!14034 lt!2007830)))))

(assert (=> d!1573627 d!1573871))

(assert (=> b!4897351 d!1573745))

(assert (=> d!1573649 d!1573741))

(declare-fun b!4897886 () Bool)

(declare-fun res!2092031 () Bool)

(declare-fun e!3061699 () Bool)

(assert (=> b!4897886 (=> (not res!2092031) (not e!3061699))))

(assert (=> b!4897886 (= res!2092031 (= (head!10460 lt!2007893) (head!10460 lt!2007896)))))

(declare-fun d!1573873 () Bool)

(declare-fun e!3061700 () Bool)

(assert (=> d!1573873 e!3061700))

(declare-fun res!2092030 () Bool)

(assert (=> d!1573873 (=> res!2092030 e!3061700)))

(declare-fun lt!2008274 () Bool)

(assert (=> d!1573873 (= res!2092030 (not lt!2008274))))

(declare-fun e!3061698 () Bool)

(assert (=> d!1573873 (= lt!2008274 e!3061698)))

(declare-fun res!2092033 () Bool)

(assert (=> d!1573873 (=> res!2092033 e!3061698)))

(assert (=> d!1573873 (= res!2092033 (is-Nil!56422 lt!2007893))))

(assert (=> d!1573873 (= (isPrefix!4899 lt!2007893 lt!2007896) lt!2008274)))

(declare-fun b!4897888 () Bool)

(assert (=> b!4897888 (= e!3061700 (>= (size!37162 lt!2007896) (size!37162 lt!2007893)))))

(declare-fun b!4897885 () Bool)

(assert (=> b!4897885 (= e!3061698 e!3061699)))

(declare-fun res!2092032 () Bool)

(assert (=> b!4897885 (=> (not res!2092032) (not e!3061699))))

(assert (=> b!4897885 (= res!2092032 (not (is-Nil!56422 lt!2007896)))))

(declare-fun b!4897887 () Bool)

(assert (=> b!4897887 (= e!3061699 (isPrefix!4899 (tail!9606 lt!2007893) (tail!9606 lt!2007896)))))

(assert (= (and d!1573873 (not res!2092033)) b!4897885))

(assert (= (and b!4897885 res!2092032) b!4897886))

(assert (= (and b!4897886 res!2092031) b!4897887))

(assert (= (and d!1573873 (not res!2092030)) b!4897888))

(declare-fun m!5905046 () Bool)

(assert (=> b!4897886 m!5905046))

(declare-fun m!5905048 () Bool)

(assert (=> b!4897886 m!5905048))

(declare-fun m!5905050 () Bool)

(assert (=> b!4897888 m!5905050))

(declare-fun m!5905052 () Bool)

(assert (=> b!4897888 m!5905052))

(declare-fun m!5905054 () Bool)

(assert (=> b!4897887 m!5905054))

(declare-fun m!5905056 () Bool)

(assert (=> b!4897887 m!5905056))

(assert (=> b!4897887 m!5905054))

(assert (=> b!4897887 m!5905056))

(declare-fun m!5905058 () Bool)

(assert (=> b!4897887 m!5905058))

(assert (=> d!1573649 d!1573873))

(declare-fun d!1573875 () Bool)

(assert (=> d!1573875 (= (isDefined!11048 (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236))) (not (isEmpty!30291 (maxPrefixZipper!678 thiss!14805 (t!366158 rulesArg!165) (list!17739 input!1236)))))))

(declare-fun bs!1176477 () Bool)

(assert (= bs!1176477 d!1573875))

(assert (=> bs!1176477 m!5904224))

(declare-fun m!5905060 () Bool)

(assert (=> bs!1176477 m!5905060))

(assert (=> d!1573649 d!1573875))

(assert (=> d!1573649 d!1573721))

(assert (=> d!1573649 d!1573703))

(assert (=> d!1573649 d!1573771))

(declare-fun d!1573877 () Bool)

(assert (=> d!1573877 (isPrefix!4899 lt!2007893 lt!2007896)))

(declare-fun lt!2008275 () Unit!146489)

(assert (=> d!1573877 (= lt!2008275 (choose!35758 lt!2007893 lt!2007896))))

(assert (=> d!1573877 (= (lemmaIsPrefixRefl!3296 lt!2007893 lt!2007896) lt!2008275)))

(declare-fun bs!1176478 () Bool)

(assert (= bs!1176478 d!1573877))

(assert (=> bs!1176478 m!5904242))

(declare-fun m!5905062 () Bool)

(assert (=> bs!1176478 m!5905062))

(assert (=> d!1573649 d!1573877))

(assert (=> b!4897264 d!1573779))

(assert (=> b!4897264 d!1573763))

(assert (=> b!4897264 d!1573765))

(assert (=> b!4897264 d!1573703))

(assert (=> b!4897264 d!1573767))

(declare-fun b!4897893 () Bool)

(declare-fun e!3061703 () Bool)

(declare-fun tp!1378109 () Bool)

(assert (=> b!4897893 (= e!3061703 (and tp_is_empty!35789 tp!1378109))))

(assert (=> b!4897404 (= tp!1378039 e!3061703)))

(assert (= (and b!4897404 (is-Cons!56422 (innerList!14835 (xs!18063 (c!832380 input!1236))))) b!4897893))

(declare-fun b!4897897 () Bool)

(declare-fun e!3061704 () Bool)

(declare-fun tp!1378113 () Bool)

(declare-fun tp!1378114 () Bool)

(assert (=> b!4897897 (= e!3061704 (and tp!1378113 tp!1378114))))

(declare-fun b!4897896 () Bool)

(declare-fun tp!1378112 () Bool)

(assert (=> b!4897896 (= e!3061704 tp!1378112)))

(declare-fun b!4897895 () Bool)

(declare-fun tp!1378110 () Bool)

(declare-fun tp!1378111 () Bool)

(assert (=> b!4897895 (= e!3061704 (and tp!1378110 tp!1378111))))

(declare-fun b!4897894 () Bool)

(assert (=> b!4897894 (= e!3061704 tp_is_empty!35789)))

(assert (=> b!4897416 (= tp!1378051 e!3061704)))

(assert (= (and b!4897416 (is-ElementMatch!13254 (regOne!27020 (regex!8179 (h!62872 rulesArg!165))))) b!4897894))

(assert (= (and b!4897416 (is-Concat!21744 (regOne!27020 (regex!8179 (h!62872 rulesArg!165))))) b!4897895))

(assert (= (and b!4897416 (is-Star!13254 (regOne!27020 (regex!8179 (h!62872 rulesArg!165))))) b!4897896))

(assert (= (and b!4897416 (is-Union!13254 (regOne!27020 (regex!8179 (h!62872 rulesArg!165))))) b!4897897))

(declare-fun b!4897901 () Bool)

(declare-fun e!3061705 () Bool)

(declare-fun tp!1378118 () Bool)

(declare-fun tp!1378119 () Bool)

(assert (=> b!4897901 (= e!3061705 (and tp!1378118 tp!1378119))))

(declare-fun b!4897900 () Bool)

(declare-fun tp!1378117 () Bool)

(assert (=> b!4897900 (= e!3061705 tp!1378117)))

(declare-fun b!4897899 () Bool)

(declare-fun tp!1378115 () Bool)

(declare-fun tp!1378116 () Bool)

(assert (=> b!4897899 (= e!3061705 (and tp!1378115 tp!1378116))))

(declare-fun b!4897898 () Bool)

(assert (=> b!4897898 (= e!3061705 tp_is_empty!35789)))

(assert (=> b!4897416 (= tp!1378052 e!3061705)))

(assert (= (and b!4897416 (is-ElementMatch!13254 (regTwo!27020 (regex!8179 (h!62872 rulesArg!165))))) b!4897898))

(assert (= (and b!4897416 (is-Concat!21744 (regTwo!27020 (regex!8179 (h!62872 rulesArg!165))))) b!4897899))

(assert (= (and b!4897416 (is-Star!13254 (regTwo!27020 (regex!8179 (h!62872 rulesArg!165))))) b!4897900))

(assert (= (and b!4897416 (is-Union!13254 (regTwo!27020 (regex!8179 (h!62872 rulesArg!165))))) b!4897901))

(declare-fun b!4897902 () Bool)

(declare-fun tp!1378120 () Bool)

(declare-fun tp!1378122 () Bool)

(declare-fun e!3061706 () Bool)

(assert (=> b!4897902 (= e!3061706 (and (inv!72721 (left!40995 (left!40995 (c!832380 input!1236)))) tp!1378120 (inv!72721 (right!41325 (left!40995 (c!832380 input!1236)))) tp!1378122))))

(declare-fun b!4897904 () Bool)

(declare-fun e!3061707 () Bool)

(declare-fun tp!1378121 () Bool)

(assert (=> b!4897904 (= e!3061707 tp!1378121)))

(declare-fun b!4897903 () Bool)

(assert (=> b!4897903 (= e!3061706 (and (inv!72727 (xs!18063 (left!40995 (c!832380 input!1236)))) e!3061707))))

(assert (=> b!4897402 (= tp!1378038 (and (inv!72721 (left!40995 (c!832380 input!1236))) e!3061706))))

(assert (= (and b!4897402 (is-Node!14747 (left!40995 (c!832380 input!1236)))) b!4897902))

(assert (= b!4897903 b!4897904))

(assert (= (and b!4897402 (is-Leaf!24554 (left!40995 (c!832380 input!1236)))) b!4897903))

(declare-fun m!5905064 () Bool)

(assert (=> b!4897902 m!5905064))

(declare-fun m!5905066 () Bool)

(assert (=> b!4897902 m!5905066))

(declare-fun m!5905068 () Bool)

(assert (=> b!4897903 m!5905068))

(assert (=> b!4897402 m!5904394))

(declare-fun e!3061708 () Bool)

(declare-fun tp!1378123 () Bool)

(declare-fun b!4897905 () Bool)

(declare-fun tp!1378125 () Bool)

(assert (=> b!4897905 (= e!3061708 (and (inv!72721 (left!40995 (right!41325 (c!832380 input!1236)))) tp!1378123 (inv!72721 (right!41325 (right!41325 (c!832380 input!1236)))) tp!1378125))))

(declare-fun b!4897907 () Bool)

(declare-fun e!3061709 () Bool)

(declare-fun tp!1378124 () Bool)

(assert (=> b!4897907 (= e!3061709 tp!1378124)))

(declare-fun b!4897906 () Bool)

(assert (=> b!4897906 (= e!3061708 (and (inv!72727 (xs!18063 (right!41325 (c!832380 input!1236)))) e!3061709))))

(assert (=> b!4897402 (= tp!1378040 (and (inv!72721 (right!41325 (c!832380 input!1236))) e!3061708))))

(assert (= (and b!4897402 (is-Node!14747 (right!41325 (c!832380 input!1236)))) b!4897905))

(assert (= b!4897906 b!4897907))

(assert (= (and b!4897402 (is-Leaf!24554 (right!41325 (c!832380 input!1236)))) b!4897906))

(declare-fun m!5905070 () Bool)

(assert (=> b!4897905 m!5905070))

(declare-fun m!5905072 () Bool)

(assert (=> b!4897905 m!5905072))

(declare-fun m!5905074 () Bool)

(assert (=> b!4897906 m!5905074))

(assert (=> b!4897402 m!5904396))

(declare-fun b!4897911 () Bool)

(declare-fun e!3061710 () Bool)

(declare-fun tp!1378129 () Bool)

(declare-fun tp!1378130 () Bool)

(assert (=> b!4897911 (= e!3061710 (and tp!1378129 tp!1378130))))

(declare-fun b!4897910 () Bool)

(declare-fun tp!1378128 () Bool)

(assert (=> b!4897910 (= e!3061710 tp!1378128)))

(declare-fun b!4897909 () Bool)

(declare-fun tp!1378126 () Bool)

(declare-fun tp!1378127 () Bool)

(assert (=> b!4897909 (= e!3061710 (and tp!1378126 tp!1378127))))

(declare-fun b!4897908 () Bool)

(assert (=> b!4897908 (= e!3061710 tp_is_empty!35789)))

(assert (=> b!4897428 (= tp!1378064 e!3061710)))

(assert (= (and b!4897428 (is-ElementMatch!13254 (regex!8179 (h!62872 (t!366158 rulesArg!165))))) b!4897908))

(assert (= (and b!4897428 (is-Concat!21744 (regex!8179 (h!62872 (t!366158 rulesArg!165))))) b!4897909))

(assert (= (and b!4897428 (is-Star!13254 (regex!8179 (h!62872 (t!366158 rulesArg!165))))) b!4897910))

(assert (= (and b!4897428 (is-Union!13254 (regex!8179 (h!62872 (t!366158 rulesArg!165))))) b!4897911))

(declare-fun b!4897914 () Bool)

(declare-fun b_free!131639 () Bool)

(declare-fun b_next!132429 () Bool)

(assert (=> b!4897914 (= b_free!131639 (not b_next!132429))))

(declare-fun t!366189 () Bool)

(declare-fun tb!259403 () Bool)

(assert (=> (and b!4897914 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) t!366189) tb!259403))

(declare-fun result!323034 () Bool)

(assert (= result!323034 result!323008))

(assert (=> d!1573823 t!366189))

(assert (=> d!1573853 t!366189))

(declare-fun t!366191 () Bool)

(declare-fun tb!259405 () Bool)

(assert (=> (and b!4897914 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165)))) t!366191) tb!259405))

(declare-fun result!323036 () Bool)

(assert (= result!323036 result!323024))

(assert (=> d!1573853 t!366191))

(declare-fun t!366193 () Bool)

(declare-fun tb!259407 () Bool)

(assert (=> (and b!4897914 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toValue!11082 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))) t!366193) tb!259407))

(declare-fun result!323038 () Bool)

(assert (= result!323038 result!323028))

(assert (=> d!1573859 t!366193))

(declare-fun b_and!345539 () Bool)

(declare-fun tp!1378132 () Bool)

(assert (=> b!4897914 (= tp!1378132 (and (=> t!366189 result!323034) (=> t!366191 result!323036) (=> t!366193 result!323038) b_and!345539))))

(declare-fun b_free!131641 () Bool)

(declare-fun b_next!132431 () Bool)

(assert (=> b!4897914 (= b_free!131641 (not b_next!132431))))

(declare-fun tb!259409 () Bool)

(declare-fun t!366195 () Bool)

(assert (=> (and b!4897914 (= (toChars!10941 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toChars!10941 (transformation!8179 (rule!11381 (_1!33548 (get!19491 lt!2007982)))))) t!366195) tb!259409))

(declare-fun result!323040 () Bool)

(assert (= result!323040 result!323002))

(assert (=> d!1573713 t!366195))

(declare-fun b_and!345541 () Bool)

(declare-fun tp!1378134 () Bool)

(assert (=> b!4897914 (= tp!1378134 (and (=> t!366195 result!323040) b_and!345541))))

(declare-fun e!3061712 () Bool)

(assert (=> b!4897914 (= e!3061712 (and tp!1378132 tp!1378134))))

(declare-fun b!4897913 () Bool)

(declare-fun e!3061714 () Bool)

(declare-fun tp!1378131 () Bool)

(assert (=> b!4897913 (= e!3061714 (and tp!1378131 (inv!72716 (tag!9043 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (inv!72719 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) e!3061712))))

(declare-fun b!4897912 () Bool)

(declare-fun e!3061711 () Bool)

(declare-fun tp!1378133 () Bool)

(assert (=> b!4897912 (= e!3061711 (and e!3061714 tp!1378133))))

(assert (=> b!4897427 (= tp!1378066 e!3061711)))

(assert (= b!4897913 b!4897914))

(assert (= b!4897912 b!4897913))

(assert (= (and b!4897427 (is-Cons!56424 (t!366158 (t!366158 rulesArg!165)))) b!4897912))

(declare-fun m!5905076 () Bool)

(assert (=> b!4897913 m!5905076))

(declare-fun m!5905078 () Bool)

(assert (=> b!4897913 m!5905078))

(declare-fun b!4897918 () Bool)

(declare-fun e!3061715 () Bool)

(declare-fun tp!1378138 () Bool)

(declare-fun tp!1378139 () Bool)

(assert (=> b!4897918 (= e!3061715 (and tp!1378138 tp!1378139))))

(declare-fun b!4897917 () Bool)

(declare-fun tp!1378137 () Bool)

(assert (=> b!4897917 (= e!3061715 tp!1378137)))

(declare-fun b!4897916 () Bool)

(declare-fun tp!1378135 () Bool)

(declare-fun tp!1378136 () Bool)

(assert (=> b!4897916 (= e!3061715 (and tp!1378135 tp!1378136))))

(declare-fun b!4897915 () Bool)

(assert (=> b!4897915 (= e!3061715 tp_is_empty!35789)))

(assert (=> b!4897418 (= tp!1378054 e!3061715)))

(assert (= (and b!4897418 (is-ElementMatch!13254 (regOne!27021 (regex!8179 (h!62872 rulesArg!165))))) b!4897915))

(assert (= (and b!4897418 (is-Concat!21744 (regOne!27021 (regex!8179 (h!62872 rulesArg!165))))) b!4897916))

(assert (= (and b!4897418 (is-Star!13254 (regOne!27021 (regex!8179 (h!62872 rulesArg!165))))) b!4897917))

(assert (= (and b!4897418 (is-Union!13254 (regOne!27021 (regex!8179 (h!62872 rulesArg!165))))) b!4897918))

(declare-fun b!4897922 () Bool)

(declare-fun e!3061716 () Bool)

(declare-fun tp!1378143 () Bool)

(declare-fun tp!1378144 () Bool)

(assert (=> b!4897922 (= e!3061716 (and tp!1378143 tp!1378144))))

(declare-fun b!4897921 () Bool)

(declare-fun tp!1378142 () Bool)

(assert (=> b!4897921 (= e!3061716 tp!1378142)))

(declare-fun b!4897920 () Bool)

(declare-fun tp!1378140 () Bool)

(declare-fun tp!1378141 () Bool)

(assert (=> b!4897920 (= e!3061716 (and tp!1378140 tp!1378141))))

(declare-fun b!4897919 () Bool)

(assert (=> b!4897919 (= e!3061716 tp_is_empty!35789)))

(assert (=> b!4897418 (= tp!1378055 e!3061716)))

(assert (= (and b!4897418 (is-ElementMatch!13254 (regTwo!27021 (regex!8179 (h!62872 rulesArg!165))))) b!4897919))

(assert (= (and b!4897418 (is-Concat!21744 (regTwo!27021 (regex!8179 (h!62872 rulesArg!165))))) b!4897920))

(assert (= (and b!4897418 (is-Star!13254 (regTwo!27021 (regex!8179 (h!62872 rulesArg!165))))) b!4897921))

(assert (= (and b!4897418 (is-Union!13254 (regTwo!27021 (regex!8179 (h!62872 rulesArg!165))))) b!4897922))

(declare-fun b!4897926 () Bool)

(declare-fun e!3061717 () Bool)

(declare-fun tp!1378148 () Bool)

(declare-fun tp!1378149 () Bool)

(assert (=> b!4897926 (= e!3061717 (and tp!1378148 tp!1378149))))

(declare-fun b!4897925 () Bool)

(declare-fun tp!1378147 () Bool)

(assert (=> b!4897925 (= e!3061717 tp!1378147)))

(declare-fun b!4897924 () Bool)

(declare-fun tp!1378145 () Bool)

(declare-fun tp!1378146 () Bool)

(assert (=> b!4897924 (= e!3061717 (and tp!1378145 tp!1378146))))

(declare-fun b!4897923 () Bool)

(assert (=> b!4897923 (= e!3061717 tp_is_empty!35789)))

(assert (=> b!4897417 (= tp!1378053 e!3061717)))

(assert (= (and b!4897417 (is-ElementMatch!13254 (reg!13583 (regex!8179 (h!62872 rulesArg!165))))) b!4897923))

(assert (= (and b!4897417 (is-Concat!21744 (reg!13583 (regex!8179 (h!62872 rulesArg!165))))) b!4897924))

(assert (= (and b!4897417 (is-Star!13254 (reg!13583 (regex!8179 (h!62872 rulesArg!165))))) b!4897925))

(assert (= (and b!4897417 (is-Union!13254 (reg!13583 (regex!8179 (h!62872 rulesArg!165))))) b!4897926))

(declare-fun b_lambda!194815 () Bool)

(assert (= b_lambda!194797 (or (and b!4897156 b_free!131623) (and b!4897429 b_free!131631 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))))) (and b!4897914 b_free!131639 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))))) b_lambda!194815)))

(declare-fun b_lambda!194817 () Bool)

(assert (= b_lambda!194795 (or d!1573689 b_lambda!194817)))

(declare-fun bs!1176479 () Bool)

(declare-fun d!1573879 () Bool)

(assert (= bs!1176479 (and d!1573879 d!1573689)))

(assert (=> bs!1176479 (= (dynLambda!22676 lambda!244127 (h!62872 rulesArg!165)) (ruleValid!3677 thiss!14805 (h!62872 rulesArg!165)))))

(assert (=> bs!1176479 m!5904320))

(assert (=> b!4897648 d!1573879))

(declare-fun b_lambda!194819 () Bool)

(assert (= b_lambda!194811 (or b!4897307 b_lambda!194819)))

(declare-fun bs!1176480 () Bool)

(declare-fun d!1573881 () Bool)

(assert (= bs!1176480 (and d!1573881 b!4897307)))

(assert (=> bs!1176480 (= (dynLambda!22679 lambda!244124 (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))) (= (list!17739 (dynLambda!22675 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))))) (list!17739 (seqFromList!5941 (list!17739 (_1!33551 lt!2007946))))))))

(declare-fun b_lambda!194827 () Bool)

(assert (=> (not b_lambda!194827) (not bs!1176480)))

(declare-fun t!366197 () Bool)

(declare-fun tb!259411 () Bool)

(assert (=> (and b!4897156 (= (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) t!366197) tb!259411))

(declare-fun e!3061718 () Bool)

(declare-fun tp!1378150 () Bool)

(declare-fun b!4897927 () Bool)

(assert (=> b!4897927 (= e!3061718 (and (inv!72721 (c!832380 (dynLambda!22675 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (seqFromList!5941 (list!17739 (_1!33551 lt!2007946))))))) tp!1378150))))

(declare-fun result!323042 () Bool)

(assert (=> tb!259411 (= result!323042 (and (inv!72720 (dynLambda!22675 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (seqFromList!5941 (list!17739 (_1!33551 lt!2007946)))))) e!3061718))))

(assert (= tb!259411 b!4897927))

(declare-fun m!5905080 () Bool)

(assert (=> b!4897927 m!5905080))

(declare-fun m!5905082 () Bool)

(assert (=> tb!259411 m!5905082))

(assert (=> bs!1176480 t!366197))

(declare-fun b_and!345543 () Bool)

(assert (= b_and!345511 (and (=> t!366197 result!323042) b_and!345543)))

(declare-fun t!366199 () Bool)

(declare-fun tb!259413 () Bool)

(assert (=> (and b!4897429 (= (toChars!10941 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) t!366199) tb!259413))

(declare-fun result!323044 () Bool)

(assert (= result!323044 result!323042))

(assert (=> bs!1176480 t!366199))

(declare-fun b_and!345545 () Bool)

(assert (= b_and!345513 (and (=> t!366199 result!323044) b_and!345545)))

(declare-fun t!366201 () Bool)

(declare-fun tb!259415 () Bool)

(assert (=> (and b!4897914 (= (toChars!10941 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) t!366201) tb!259415))

(declare-fun result!323046 () Bool)

(assert (= result!323046 result!323042))

(assert (=> bs!1176480 t!366201))

(declare-fun b_and!345547 () Bool)

(assert (= b_and!345541 (and (=> t!366201 result!323046) b_and!345547)))

(declare-fun b_lambda!194829 () Bool)

(assert (=> (not b_lambda!194829) (not bs!1176480)))

(assert (=> bs!1176480 t!366181))

(declare-fun b_and!345549 () Bool)

(assert (= b_and!345535 (and (=> t!366181 result!323024) b_and!345549)))

(assert (=> bs!1176480 t!366183))

(declare-fun b_and!345551 () Bool)

(assert (= b_and!345537 (and (=> t!366183 result!323026) b_and!345551)))

(assert (=> bs!1176480 t!366191))

(declare-fun b_and!345553 () Bool)

(assert (= b_and!345539 (and (=> t!366191 result!323036) b_and!345553)))

(assert (=> bs!1176480 m!5904988))

(declare-fun m!5905084 () Bool)

(assert (=> bs!1176480 m!5905084))

(assert (=> bs!1176480 m!5904298))

(assert (=> bs!1176480 m!5904990))

(assert (=> bs!1176480 m!5904298))

(assert (=> bs!1176480 m!5904988))

(assert (=> bs!1176480 m!5905084))

(declare-fun m!5905086 () Bool)

(assert (=> bs!1176480 m!5905086))

(assert (=> d!1573857 d!1573881))

(declare-fun b_lambda!194821 () Bool)

(assert (= b_lambda!194809 (or (and b!4897156 b_free!131623) (and b!4897429 b_free!131631 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))))) (and b!4897914 b_free!131639 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))))) b_lambda!194821)))

(declare-fun b_lambda!194823 () Bool)

(assert (= b_lambda!194807 (or (and b!4897156 b_free!131623) (and b!4897429 b_free!131631 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))))) (and b!4897914 b_free!131639 (= (toValue!11082 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))))) b_lambda!194823)))

(declare-fun b_lambda!194825 () Bool)

(assert (= b_lambda!194801 (or b!4897307 b_lambda!194825)))

(declare-fun bs!1176481 () Bool)

(declare-fun d!1573883 () Bool)

(assert (= bs!1176481 (and d!1573883 b!4897307)))

(assert (=> bs!1176481 (= (dynLambda!22679 lambda!244124 (_1!33551 lt!2007946)) (= (list!17739 (dynLambda!22675 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (_1!33551 lt!2007946)))) (list!17739 (_1!33551 lt!2007946))))))

(declare-fun b_lambda!194831 () Bool)

(assert (=> (not b_lambda!194831) (not bs!1176481)))

(declare-fun t!366203 () Bool)

(declare-fun tb!259417 () Bool)

(assert (=> (and b!4897156 (= (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) t!366203) tb!259417))

(declare-fun e!3061719 () Bool)

(declare-fun b!4897928 () Bool)

(declare-fun tp!1378151 () Bool)

(assert (=> b!4897928 (= e!3061719 (and (inv!72721 (c!832380 (dynLambda!22675 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (_1!33551 lt!2007946))))) tp!1378151))))

(declare-fun result!323048 () Bool)

(assert (=> tb!259417 (= result!323048 (and (inv!72720 (dynLambda!22675 (toChars!10941 (transformation!8179 (h!62872 rulesArg!165))) (dynLambda!22678 (toValue!11082 (transformation!8179 (h!62872 rulesArg!165))) (_1!33551 lt!2007946)))) e!3061719))))

(assert (= tb!259417 b!4897928))

(declare-fun m!5905088 () Bool)

(assert (=> b!4897928 m!5905088))

(declare-fun m!5905090 () Bool)

(assert (=> tb!259417 m!5905090))

(assert (=> bs!1176481 t!366203))

(declare-fun b_and!345555 () Bool)

(assert (= b_and!345543 (and (=> t!366203 result!323048) b_and!345555)))

(declare-fun t!366205 () Bool)

(declare-fun tb!259419 () Bool)

(assert (=> (and b!4897429 (= (toChars!10941 (transformation!8179 (h!62872 (t!366158 rulesArg!165)))) (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) t!366205) tb!259419))

(declare-fun result!323050 () Bool)

(assert (= result!323050 result!323048))

(assert (=> bs!1176481 t!366205))

(declare-fun b_and!345557 () Bool)

(assert (= b_and!345545 (and (=> t!366205 result!323050) b_and!345557)))

(declare-fun t!366207 () Bool)

(declare-fun tb!259421 () Bool)

(assert (=> (and b!4897914 (= (toChars!10941 (transformation!8179 (h!62872 (t!366158 (t!366158 rulesArg!165))))) (toChars!10941 (transformation!8179 (h!62872 rulesArg!165)))) t!366207) tb!259421))

(declare-fun result!323052 () Bool)

(assert (= result!323052 result!323048))

(assert (=> bs!1176481 t!366207))

(declare-fun b_and!345559 () Bool)

(assert (= b_and!345547 (and (=> t!366207 result!323052) b_and!345559)))

(declare-fun b_lambda!194833 () Bool)

(assert (=> (not b_lambda!194833) (not bs!1176481)))

(assert (=> bs!1176481 t!366169))

(declare-fun b_and!345561 () Bool)

(assert (= b_and!345549 (and (=> t!366169 result!323008) b_and!345561)))

(assert (=> bs!1176481 t!366171))

(declare-fun b_and!345563 () Bool)

(assert (= b_and!345551 (and (=> t!366171 result!323012) b_and!345563)))

(assert (=> bs!1176481 t!366189))

(declare-fun b_and!345565 () Bool)

(assert (= b_and!345553 (and (=> t!366189 result!323034) b_and!345565)))

(assert (=> bs!1176481 m!5904908))

(declare-fun m!5905092 () Bool)

(assert (=> bs!1176481 m!5905092))

(assert (=> bs!1176481 m!5904296))

(assert (=> bs!1176481 m!5904908))

(assert (=> bs!1176481 m!5905092))

(declare-fun m!5905094 () Bool)

(assert (=> bs!1176481 m!5905094))

(assert (=> d!1573849 d!1573883))

(push 1)

(assert (not b!4897681))

(assert (not b!4897791))

(assert (not b!4897879))

(assert (not b!4897773))

(assert (not b!4897886))

(assert (not b!4897698))

(assert (not b!4897643))

(assert (not d!1573745))

(assert (not d!1573845))

(assert (not bm!339761))

(assert (not b_next!132421))

(assert (not d!1573711))

(assert (not b!4897905))

(assert (not b!4897909))

(assert (not d!1573781))

(assert (not d!1573757))

(assert (not b_lambda!194827))

(assert (not b!4897620))

(assert b_and!345559)

(assert (not b!4897650))

(assert (not d!1573785))

(assert (not tb!259399))

(assert (not b!4897882))

(assert (not d!1573753))

(assert (not b!4897700))

(assert (not b!4897678))

(assert (not b_next!132431))

(assert (not b!4897622))

(assert (not d!1573813))

(assert (not b!4897596))

(assert (not bs!1176481))

(assert (not b!4897716))

(assert (not bs!1176480))

(assert (not b!4897516))

(assert (not d!1573719))

(assert (not d!1573875))

(assert (not b!4897918))

(assert (not b!4897624))

(assert (not b!4897823))

(assert (not b!4897916))

(assert (not d!1573825))

(assert (not b_next!132429))

(assert b_and!345563)

(assert (not b_next!132413))

(assert (not bm!339740))

(assert (not b!4897675))

(assert (not d!1573733))

(assert (not d!1573849))

(assert (not b!4897901))

(assert (not b!4897642))

(assert (not b!4897704))

(assert (not b!4897696))

(assert (not b!4897806))

(assert (not b!4897888))

(assert (not d!1573877))

(assert (not b!4897519))

(assert (not b!4897677))

(assert (not b!4897684))

(assert b_and!345557)

(assert (not b!4897899))

(assert (not b!4897520))

(assert (not b!4897911))

(assert (not b!4897870))

(assert (not b!4897904))

(assert (not d!1573771))

(assert (not b!4897873))

(assert (not b!4897587))

(assert (not b!4897920))

(assert (not b!4897686))

(assert (not b!4897663))

(assert b_and!345565)

(assert (not b!4897805))

(assert (not b!4897695))

(assert (not d!1573755))

(assert (not b!4897534))

(assert (not tb!259383))

(assert (not b!4897523))

(assert (not b!4897680))

(assert (not b!4897884))

(assert (not bm!339764))

(assert (not bm!339767))

(assert (not b!4897887))

(assert (not b!4897711))

(assert (not b!4897540))

(assert (not b!4897828))

(assert (not b!4897580))

(assert (not d!1573767))

(assert (not b!4897925))

(assert (not b!4897903))

(assert (not b!4897868))

(assert (not b!4897533))

(assert (not b!4897522))

(assert (not tb!259379))

(assert (not d!1573721))

(assert (not b_lambda!194817))

(assert (not b!4897649))

(assert (not b!4897676))

(assert (not d!1573867))

(assert (not b!4897842))

(assert (not b!4897691))

(assert (not b!4897688))

(assert (not d!1573741))

(assert (not b!4897880))

(assert (not b!4897878))

(assert (not b!4897697))

(assert (not d!1573713))

(assert (not d!1573833))

(assert (not b_lambda!194833))

(assert (not b!4897710))

(assert (not d!1573731))

(assert (not d!1573791))

(assert (not bm!339741))

(assert (not b!4897662))

(assert (not b!4897913))

(assert (not b!4897924))

(assert (not tb!259395))

(assert (not b!4897679))

(assert (not d!1573869))

(assert b_and!345561)

(assert (not b!4897583))

(assert (not bs!1176479))

(assert (not bm!339742))

(assert (not b!4897586))

(assert (not b!4897900))

(assert (not b!4897617))

(assert (not b_lambda!194831))

(assert (not b!4897895))

(assert (not b!4897876))

(assert (not d!1573749))

(assert (not b!4897618))

(assert (not d!1573853))

(assert (not bm!339739))

(assert (not b!4897588))

(assert (not d!1573861))

(assert b_and!345555)

(assert (not b!4897851))

(assert (not d!1573747))

(assert (not d!1573761))

(assert (not b_lambda!194819))

(assert (not d!1573709))

(assert (not b!4897927))

(assert (not bm!339768))

(assert (not bm!339763))

(assert (not b!4897721))

(assert (not d!1573779))

(assert (not b!4897651))

(assert (not bm!339762))

(assert (not b!4897804))

(assert (not b!4897719))

(assert (not b!4897771))

(assert (not b!4897616))

(assert (not d!1573737))

(assert (not b!4897875))

(assert (not b!4897893))

(assert (not bm!339765))

(assert (not b!4897770))

(assert (not d!1573723))

(assert (not b!4897621))

(assert (not d!1573787))

(assert (not b!4897902))

(assert (not b!4897826))

(assert (not tb!259411))

(assert (not b!4897689))

(assert (not b!4897699))

(assert (not bm!339736))

(assert (not bm!339760))

(assert (not b_lambda!194825))

(assert tp_is_empty!35789)

(assert (not b_lambda!194793))

(assert (not bm!339743))

(assert (not d!1573717))

(assert (not b!4897784))

(assert (not b!4897693))

(assert (not b!4897578))

(assert (not b!4897682))

(assert (not b_lambda!194821))

(assert (not b!4897518))

(assert (not b!4897877))

(assert (not b!4897619))

(assert (not d!1573751))

(assert (not d!1573789))

(assert (not b!4897897))

(assert (not tb!259417))

(assert (not b!4897517))

(assert (not b!4897871))

(assert (not b!4897548))

(assert (not d!1573829))

(assert (not b!4897402))

(assert (not b_lambda!194823))

(assert (not b!4897910))

(assert (not b_lambda!194813))

(assert (not b!4897809))

(assert (not b!4897912))

(assert (not b!4897685))

(assert (not b_lambda!194829))

(assert (not b!4897906))

(assert (not bm!339766))

(assert (not b_next!132415))

(assert (not b!4897922))

(assert (not b_lambda!194815))

(assert (not d!1573817))

(assert (not d!1573707))

(assert (not b!4897917))

(assert (not b!4897921))

(assert (not b!4897763))

(assert (not b_next!132423))

(assert (not b!4897928))

(assert (not b!4897634))

(assert (not b!4897926))

(assert (not b!4897896))

(assert (not b!4897874))

(assert (not d!1573821))

(assert (not b!4897792))

(assert (not b!4897668))

(assert (not b!4897810))

(assert (not d!1573759))

(assert (not b!4897713))

(assert (not b!4897687))

(assert (not b!4897827))

(assert (not b!4897720))

(assert (not b!4897825))

(assert (not b!4897786))

(assert (not b!4897907))

(assert (not b!4897690))

(assert (not b!4897824))

(assert (not d!1573857))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132431))

(assert b_and!345557)

(assert b_and!345565)

(assert b_and!345561)

(assert b_and!345555)

(assert (not b_next!132415))

(assert (not b_next!132423))

(assert (not b_next!132421))

(assert b_and!345559)

(assert (not b_next!132429))

(assert b_and!345563)

(assert (not b_next!132413))

(check-sat)

(pop 1)

