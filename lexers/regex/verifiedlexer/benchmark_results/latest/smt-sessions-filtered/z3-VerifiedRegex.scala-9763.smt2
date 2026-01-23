; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511012 () Bool)

(assert start!511012)

(declare-fun b!4883540 () Bool)

(declare-fun b_free!131067 () Bool)

(declare-fun b_next!131857 () Bool)

(assert (=> b!4883540 (= b_free!131067 (not b_next!131857))))

(declare-fun tp!1374197 () Bool)

(declare-fun b_and!343899 () Bool)

(assert (=> b!4883540 (= tp!1374197 b_and!343899)))

(declare-fun b_free!131069 () Bool)

(declare-fun b_next!131859 () Bool)

(assert (=> b!4883540 (= b_free!131069 (not b_next!131859))))

(declare-fun tp!1374198 () Bool)

(declare-fun b_and!343901 () Bool)

(assert (=> b!4883540 (= tp!1374198 b_and!343901)))

(declare-fun b!4883533 () Bool)

(declare-fun e!3052318 () Bool)

(assert (=> b!4883533 (= e!3052318 true)))

(declare-datatypes ((LexerInterface!7686 0))(
  ( (LexerInterfaceExt!7683 (__x!34101 Int)) (Lexer!7684) )
))
(declare-fun thiss!14805 () LexerInterface!7686)

(declare-datatypes ((C!26536 0))(
  ( (C!26537 (val!22602 Int)) )
))
(declare-datatypes ((List!56287 0))(
  ( (Nil!56163) (Cons!56163 (h!62611 C!26536) (t!364933 List!56287)) )
))
(declare-datatypes ((IArray!29385 0))(
  ( (IArray!29386 (innerList!14750 List!56287)) )
))
(declare-datatypes ((Conc!14662 0))(
  ( (Node!14662 (left!40803 Conc!14662) (right!41133 Conc!14662) (csize!29554 Int) (cheight!14873 Int)) (Leaf!24426 (xs!17978 IArray!29385) (csize!29555 Int)) (Empty!14662) )
))
(declare-datatypes ((BalanceConc!28754 0))(
  ( (BalanceConc!28755 (c!830463 Conc!14662)) )
))
(declare-datatypes ((List!56288 0))(
  ( (Nil!56164) (Cons!56164 (h!62612 (_ BitVec 16)) (t!364934 List!56288)) )
))
(declare-datatypes ((TokenValue!8404 0))(
  ( (FloatLiteralValue!16808 (text!59273 List!56288)) (TokenValueExt!8403 (__x!34102 Int)) (Broken!42020 (value!259805 List!56288)) (Object!8527) (End!8404) (Def!8404) (Underscore!8404) (Match!8404) (Else!8404) (Error!8404) (Case!8404) (If!8404) (Extends!8404) (Abstract!8404) (Class!8404) (Val!8404) (DelimiterValue!16808 (del!8464 List!56288)) (KeywordValue!8410 (value!259806 List!56288)) (CommentValue!16808 (value!259807 List!56288)) (WhitespaceValue!16808 (value!259808 List!56288)) (IndentationValue!8404 (value!259809 List!56288)) (String!63461) (Int32!8404) (Broken!42021 (value!259810 List!56288)) (Boolean!8405) (Unit!146153) (OperatorValue!8407 (op!8464 List!56288)) (IdentifierValue!16808 (value!259811 List!56288)) (IdentifierValue!16809 (value!259812 List!56288)) (WhitespaceValue!16809 (value!259813 List!56288)) (True!16808) (False!16808) (Broken!42022 (value!259814 List!56288)) (Broken!42023 (value!259815 List!56288)) (True!16809) (RightBrace!8404) (RightBracket!8404) (Colon!8404) (Null!8404) (Comma!8404) (LeftBracket!8404) (False!16809) (LeftBrace!8404) (ImaginaryLiteralValue!8404 (text!59274 List!56288)) (StringLiteralValue!25212 (value!259816 List!56288)) (EOFValue!8404 (value!259817 List!56288)) (IdentValue!8404 (value!259818 List!56288)) (DelimiterValue!16809 (value!259819 List!56288)) (DedentValue!8404 (value!259820 List!56288)) (NewLineValue!8404 (value!259821 List!56288)) (IntegerValue!25212 (value!259822 (_ BitVec 32)) (text!59275 List!56288)) (IntegerValue!25213 (value!259823 Int) (text!59276 List!56288)) (Times!8404) (Or!8404) (Equal!8404) (Minus!8404) (Broken!42024 (value!259824 List!56288)) (And!8404) (Div!8404) (LessEqual!8404) (Mod!8404) (Concat!21573) (Not!8404) (Plus!8404) (SpaceValue!8404 (value!259825 List!56288)) (IntegerValue!25214 (value!259826 Int) (text!59277 List!56288)) (StringLiteralValue!25213 (text!59278 List!56288)) (FloatLiteralValue!16809 (text!59279 List!56288)) (BytesLiteralValue!8404 (value!259827 List!56288)) (CommentValue!16809 (value!259828 List!56288)) (StringLiteralValue!25214 (value!259829 List!56288)) (ErrorTokenValue!8404 (msg!8465 List!56288)) )
))
(declare-datatypes ((Regex!13169 0))(
  ( (ElementMatch!13169 (c!830464 C!26536)) (Concat!21574 (regOne!26850 Regex!13169) (regTwo!26850 Regex!13169)) (EmptyExpr!13169) (Star!13169 (reg!13498 Regex!13169)) (EmptyLang!13169) (Union!13169 (regOne!26851 Regex!13169) (regTwo!26851 Regex!13169)) )
))
(declare-datatypes ((String!63462 0))(
  ( (String!63463 (value!259830 String)) )
))
(declare-datatypes ((TokenValueInjection!16116 0))(
  ( (TokenValueInjection!16117 (toValue!10981 Int) (toChars!10840 Int)) )
))
(declare-datatypes ((Rule!15988 0))(
  ( (Rule!15989 (regex!8094 Regex!13169) (tag!8958 String!63462) (isSeparator!8094 Bool) (transformation!8094 TokenValueInjection!16116)) )
))
(declare-datatypes ((List!56289 0))(
  ( (Nil!56165) (Cons!56165 (h!62613 Rule!15988) (t!364935 List!56289)) )
))
(declare-fun rulesArg!165 () List!56289)

(declare-datatypes ((Token!14756 0))(
  ( (Token!14757 (value!259831 TokenValue!8404) (rule!11256 Rule!15988) (size!37013 Int) (originalCharacters!8409 List!56287)) )
))
(declare-datatypes ((tuple2!60072 0))(
  ( (tuple2!60073 (_1!33339 Token!14756) (_2!33339 List!56287)) )
))
(declare-datatypes ((Option!13871 0))(
  ( (None!13870) (Some!13870 (v!49820 tuple2!60072)) )
))
(declare-fun lt!2000542 () Option!13871)

(declare-fun lt!2000534 () List!56287)

(declare-fun maxPrefix!4567 (LexerInterface!7686 List!56289 List!56287) Option!13871)

(assert (=> b!4883533 (= lt!2000542 (maxPrefix!4567 thiss!14805 rulesArg!165 lt!2000534))))

(declare-fun b!4883534 () Bool)

(declare-fun e!3052321 () Bool)

(declare-fun e!3052319 () Bool)

(assert (=> b!4883534 (= e!3052321 e!3052319)))

(declare-fun res!2084833 () Bool)

(assert (=> b!4883534 (=> res!2084833 e!3052319)))

(declare-datatypes ((tuple2!60074 0))(
  ( (tuple2!60075 (_1!33340 Token!14756) (_2!33340 BalanceConc!28754)) )
))
(declare-fun lt!2000538 () tuple2!60074)

(declare-fun lt!2000535 () tuple2!60072)

(assert (=> b!4883534 (= res!2084833 (not (= (_1!33340 lt!2000538) (_1!33339 lt!2000535))))))

(declare-fun lt!2000537 () Option!13871)

(declare-fun get!19322 (Option!13871) tuple2!60072)

(assert (=> b!4883534 (= lt!2000535 (get!19322 lt!2000537))))

(declare-datatypes ((Option!13872 0))(
  ( (None!13871) (Some!13871 (v!49821 tuple2!60074)) )
))
(declare-fun get!19323 (Option!13872) tuple2!60074)

(assert (=> b!4883534 (= lt!2000538 (get!19323 None!13871))))

(declare-fun b!4883535 () Bool)

(declare-fun res!2084831 () Bool)

(declare-fun e!3052324 () Bool)

(assert (=> b!4883535 (=> (not res!2084831) (not e!3052324))))

(declare-fun rulesValidInductive!3073 (LexerInterface!7686 List!56289) Bool)

(assert (=> b!4883535 (= res!2084831 (rulesValidInductive!3073 thiss!14805 rulesArg!165))))

(declare-fun b!4883537 () Bool)

(declare-fun e!3052317 () Bool)

(declare-fun e!3052315 () Bool)

(declare-fun tp!1374201 () Bool)

(assert (=> b!4883537 (= e!3052317 (and e!3052315 tp!1374201))))

(declare-fun b!4883538 () Bool)

(declare-fun e!3052316 () Bool)

(declare-fun e!3052313 () Bool)

(assert (=> b!4883538 (= e!3052316 e!3052313)))

(declare-fun res!2084838 () Bool)

(assert (=> b!4883538 (=> res!2084838 e!3052313)))

(declare-fun lt!2000533 () Option!13872)

(declare-fun lt!2000539 () Option!13872)

(get-info :version)

(assert (=> b!4883538 (= res!2084838 (or (not ((_ is None!13871) lt!2000533)) (not ((_ is None!13871) lt!2000539))))))

(declare-fun input!1236 () BalanceConc!28754)

(declare-fun maxPrefixZipperSequence!1255 (LexerInterface!7686 List!56289 BalanceConc!28754) Option!13872)

(assert (=> b!4883538 (= lt!2000539 (maxPrefixZipperSequence!1255 thiss!14805 (t!364935 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!620 (LexerInterface!7686 Rule!15988 BalanceConc!28754) Option!13872)

(assert (=> b!4883538 (= lt!2000533 (maxPrefixOneRuleZipperSequence!620 thiss!14805 (h!62613 rulesArg!165) input!1236))))

(declare-fun b!4883539 () Bool)

(declare-fun e!3052323 () Bool)

(declare-fun tp!1374199 () Bool)

(declare-fun inv!72247 (Conc!14662) Bool)

(assert (=> b!4883539 (= e!3052323 (and (inv!72247 (c!830463 input!1236)) tp!1374199))))

(declare-fun e!3052320 () Bool)

(assert (=> b!4883540 (= e!3052320 (and tp!1374197 tp!1374198))))

(declare-fun b!4883541 () Bool)

(declare-fun res!2084830 () Bool)

(assert (=> b!4883541 (=> (not res!2084830) (not e!3052324))))

(declare-fun isEmpty!30095 (List!56289) Bool)

(assert (=> b!4883541 (= res!2084830 (not (isEmpty!30095 rulesArg!165)))))

(declare-fun b!4883542 () Bool)

(declare-fun e!3052314 () Bool)

(assert (=> b!4883542 (= e!3052313 e!3052314)))

(declare-fun res!2084836 () Bool)

(assert (=> b!4883542 (=> res!2084836 e!3052314)))

(declare-fun lt!2000540 () Bool)

(declare-fun isDefined!10905 (Option!13871) Bool)

(assert (=> b!4883542 (= res!2084836 (not (= lt!2000540 (isDefined!10905 lt!2000537))))))

(assert (=> b!4883542 (= lt!2000540 false)))

(declare-fun maxPrefixZipper!597 (LexerInterface!7686 List!56289 List!56287) Option!13871)

(assert (=> b!4883542 (= lt!2000537 (maxPrefixZipper!597 thiss!14805 rulesArg!165 lt!2000534))))

(declare-fun b!4883536 () Bool)

(assert (=> b!4883536 (= e!3052324 (not e!3052316))))

(declare-fun res!2084834 () Bool)

(assert (=> b!4883536 (=> res!2084834 e!3052316)))

(assert (=> b!4883536 (= res!2084834 (or (and ((_ is Cons!56165) rulesArg!165) ((_ is Nil!56165) (t!364935 rulesArg!165))) (not ((_ is Cons!56165) rulesArg!165))))))

(declare-fun isPrefix!4816 (List!56287 List!56287) Bool)

(assert (=> b!4883536 (isPrefix!4816 lt!2000534 lt!2000534)))

(declare-datatypes ((Unit!146154 0))(
  ( (Unit!146155) )
))
(declare-fun lt!2000536 () Unit!146154)

(declare-fun lemmaIsPrefixRefl!3213 (List!56287 List!56287) Unit!146154)

(assert (=> b!4883536 (= lt!2000536 (lemmaIsPrefixRefl!3213 lt!2000534 lt!2000534))))

(declare-fun list!17619 (BalanceConc!28754) List!56287)

(assert (=> b!4883536 (= lt!2000534 (list!17619 input!1236))))

(declare-fun res!2084839 () Bool)

(assert (=> start!511012 (=> (not res!2084839) (not e!3052324))))

(assert (=> start!511012 (= res!2084839 ((_ is Lexer!7684) thiss!14805))))

(assert (=> start!511012 e!3052324))

(assert (=> start!511012 true))

(assert (=> start!511012 e!3052317))

(declare-fun inv!72248 (BalanceConc!28754) Bool)

(assert (=> start!511012 (and (inv!72248 input!1236) e!3052323)))

(declare-fun b!4883543 () Bool)

(assert (=> b!4883543 (= e!3052314 e!3052318)))

(declare-fun res!2084835 () Bool)

(assert (=> b!4883543 (=> res!2084835 e!3052318)))

(assert (=> b!4883543 (= res!2084835 e!3052321)))

(declare-fun res!2084832 () Bool)

(assert (=> b!4883543 (=> (not res!2084832) (not e!3052321))))

(declare-fun lt!2000541 () Bool)

(assert (=> b!4883543 (= res!2084832 (not lt!2000541))))

(assert (=> b!4883543 (= lt!2000541 (not lt!2000540))))

(declare-fun b!4883544 () Bool)

(declare-fun tp!1374200 () Bool)

(declare-fun inv!72243 (String!63462) Bool)

(declare-fun inv!72249 (TokenValueInjection!16116) Bool)

(assert (=> b!4883544 (= e!3052315 (and tp!1374200 (inv!72243 (tag!8958 (h!62613 rulesArg!165))) (inv!72249 (transformation!8094 (h!62613 rulesArg!165))) e!3052320))))

(declare-fun b!4883545 () Bool)

(declare-fun res!2084837 () Bool)

(assert (=> b!4883545 (=> res!2084837 e!3052318)))

(assert (=> b!4883545 (= res!2084837 lt!2000541)))

(declare-fun b!4883546 () Bool)

(assert (=> b!4883546 (= e!3052319 (not (= (list!17619 (_2!33340 lt!2000538)) (_2!33339 lt!2000535))))))

(assert (= (and start!511012 res!2084839) b!4883535))

(assert (= (and b!4883535 res!2084831) b!4883541))

(assert (= (and b!4883541 res!2084830) b!4883536))

(assert (= (and b!4883536 (not res!2084834)) b!4883538))

(assert (= (and b!4883538 (not res!2084838)) b!4883542))

(assert (= (and b!4883542 (not res!2084836)) b!4883543))

(assert (= (and b!4883543 res!2084832) b!4883534))

(assert (= (and b!4883534 (not res!2084833)) b!4883546))

(assert (= (and b!4883543 (not res!2084835)) b!4883545))

(assert (= (and b!4883545 (not res!2084837)) b!4883533))

(assert (= b!4883544 b!4883540))

(assert (= b!4883537 b!4883544))

(assert (= (and start!511012 ((_ is Cons!56165) rulesArg!165)) b!4883537))

(assert (= start!511012 b!4883539))

(declare-fun m!5887510 () Bool)

(assert (=> b!4883541 m!5887510))

(declare-fun m!5887512 () Bool)

(assert (=> b!4883539 m!5887512))

(declare-fun m!5887514 () Bool)

(assert (=> b!4883542 m!5887514))

(declare-fun m!5887516 () Bool)

(assert (=> b!4883542 m!5887516))

(declare-fun m!5887518 () Bool)

(assert (=> b!4883533 m!5887518))

(declare-fun m!5887520 () Bool)

(assert (=> b!4883544 m!5887520))

(declare-fun m!5887522 () Bool)

(assert (=> b!4883544 m!5887522))

(declare-fun m!5887524 () Bool)

(assert (=> b!4883546 m!5887524))

(declare-fun m!5887526 () Bool)

(assert (=> b!4883534 m!5887526))

(declare-fun m!5887528 () Bool)

(assert (=> b!4883534 m!5887528))

(declare-fun m!5887530 () Bool)

(assert (=> start!511012 m!5887530))

(declare-fun m!5887532 () Bool)

(assert (=> b!4883536 m!5887532))

(declare-fun m!5887534 () Bool)

(assert (=> b!4883536 m!5887534))

(declare-fun m!5887536 () Bool)

(assert (=> b!4883536 m!5887536))

(declare-fun m!5887538 () Bool)

(assert (=> b!4883535 m!5887538))

(declare-fun m!5887540 () Bool)

(assert (=> b!4883538 m!5887540))

(declare-fun m!5887542 () Bool)

(assert (=> b!4883538 m!5887542))

(check-sat (not start!511012) (not b!4883534) (not b!4883538) (not b!4883542) (not b!4883536) (not b!4883546) (not b_next!131857) (not b!4883535) (not b_next!131859) (not b!4883539) (not b!4883533) (not b!4883537) b_and!343899 (not b!4883544) b_and!343901 (not b!4883541))
(check-sat b_and!343901 b_and!343899 (not b_next!131857) (not b_next!131859))
