; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511028 () Bool)

(assert start!511028)

(declare-fun b!4883805 () Bool)

(declare-fun b_free!131099 () Bool)

(declare-fun b_next!131889 () Bool)

(assert (=> b!4883805 (= b_free!131099 (not b_next!131889))))

(declare-fun tp!1374321 () Bool)

(declare-fun b_and!343931 () Bool)

(assert (=> b!4883805 (= tp!1374321 b_and!343931)))

(declare-fun b_free!131101 () Bool)

(declare-fun b_next!131891 () Bool)

(assert (=> b!4883805 (= b_free!131101 (not b_next!131891))))

(declare-fun tp!1374319 () Bool)

(declare-fun b_and!343933 () Bool)

(assert (=> b!4883805 (= tp!1374319 b_and!343933)))

(declare-fun b!4883800 () Bool)

(declare-fun e!3052544 () Bool)

(declare-fun lt!2000708 () Bool)

(assert (=> b!4883800 (= e!3052544 lt!2000708)))

(declare-fun b!4883801 () Bool)

(declare-fun res!2085004 () Bool)

(declare-fun e!3052545 () Bool)

(assert (=> b!4883801 (=> (not res!2085004) (not e!3052545))))

(declare-datatypes ((C!26552 0))(
  ( (C!26553 (val!22610 Int)) )
))
(declare-datatypes ((List!56311 0))(
  ( (Nil!56187) (Cons!56187 (h!62635 C!26552) (t!364957 List!56311)) )
))
(declare-datatypes ((IArray!29401 0))(
  ( (IArray!29402 (innerList!14758 List!56311)) )
))
(declare-datatypes ((Conc!14670 0))(
  ( (Node!14670 (left!40815 Conc!14670) (right!41145 Conc!14670) (csize!29570 Int) (cheight!14881 Int)) (Leaf!24438 (xs!17986 IArray!29401) (csize!29571 Int)) (Empty!14670) )
))
(declare-datatypes ((BalanceConc!28770 0))(
  ( (BalanceConc!28771 (c!830487 Conc!14670)) )
))
(declare-datatypes ((List!56312 0))(
  ( (Nil!56188) (Cons!56188 (h!62636 (_ BitVec 16)) (t!364958 List!56312)) )
))
(declare-datatypes ((TokenValue!8412 0))(
  ( (FloatLiteralValue!16824 (text!59329 List!56312)) (TokenValueExt!8411 (__x!34117 Int)) (Broken!42060 (value!260033 List!56312)) (Object!8535) (End!8412) (Def!8412) (Underscore!8412) (Match!8412) (Else!8412) (Error!8412) (Case!8412) (If!8412) (Extends!8412) (Abstract!8412) (Class!8412) (Val!8412) (DelimiterValue!16824 (del!8472 List!56312)) (KeywordValue!8418 (value!260034 List!56312)) (CommentValue!16824 (value!260035 List!56312)) (WhitespaceValue!16824 (value!260036 List!56312)) (IndentationValue!8412 (value!260037 List!56312)) (String!63501) (Int32!8412) (Broken!42061 (value!260038 List!56312)) (Boolean!8413) (Unit!146177) (OperatorValue!8415 (op!8472 List!56312)) (IdentifierValue!16824 (value!260039 List!56312)) (IdentifierValue!16825 (value!260040 List!56312)) (WhitespaceValue!16825 (value!260041 List!56312)) (True!16824) (False!16824) (Broken!42062 (value!260042 List!56312)) (Broken!42063 (value!260043 List!56312)) (True!16825) (RightBrace!8412) (RightBracket!8412) (Colon!8412) (Null!8412) (Comma!8412) (LeftBracket!8412) (False!16825) (LeftBrace!8412) (ImaginaryLiteralValue!8412 (text!59330 List!56312)) (StringLiteralValue!25236 (value!260044 List!56312)) (EOFValue!8412 (value!260045 List!56312)) (IdentValue!8412 (value!260046 List!56312)) (DelimiterValue!16825 (value!260047 List!56312)) (DedentValue!8412 (value!260048 List!56312)) (NewLineValue!8412 (value!260049 List!56312)) (IntegerValue!25236 (value!260050 (_ BitVec 32)) (text!59331 List!56312)) (IntegerValue!25237 (value!260051 Int) (text!59332 List!56312)) (Times!8412) (Or!8412) (Equal!8412) (Minus!8412) (Broken!42064 (value!260052 List!56312)) (And!8412) (Div!8412) (LessEqual!8412) (Mod!8412) (Concat!21589) (Not!8412) (Plus!8412) (SpaceValue!8412 (value!260053 List!56312)) (IntegerValue!25238 (value!260054 Int) (text!59333 List!56312)) (StringLiteralValue!25237 (text!59334 List!56312)) (FloatLiteralValue!16825 (text!59335 List!56312)) (BytesLiteralValue!8412 (value!260055 List!56312)) (CommentValue!16825 (value!260056 List!56312)) (StringLiteralValue!25238 (value!260057 List!56312)) (ErrorTokenValue!8412 (msg!8473 List!56312)) )
))
(declare-datatypes ((Regex!13177 0))(
  ( (ElementMatch!13177 (c!830488 C!26552)) (Concat!21590 (regOne!26866 Regex!13177) (regTwo!26866 Regex!13177)) (EmptyExpr!13177) (Star!13177 (reg!13506 Regex!13177)) (EmptyLang!13177) (Union!13177 (regOne!26867 Regex!13177) (regTwo!26867 Regex!13177)) )
))
(declare-datatypes ((String!63502 0))(
  ( (String!63503 (value!260058 String)) )
))
(declare-datatypes ((TokenValueInjection!16132 0))(
  ( (TokenValueInjection!16133 (toValue!10989 Int) (toChars!10848 Int)) )
))
(declare-datatypes ((Rule!16004 0))(
  ( (Rule!16005 (regex!8102 Regex!13177) (tag!8966 String!63502) (isSeparator!8102 Bool) (transformation!8102 TokenValueInjection!16132)) )
))
(declare-datatypes ((List!56313 0))(
  ( (Nil!56189) (Cons!56189 (h!62637 Rule!16004) (t!364959 List!56313)) )
))
(declare-fun rulesArg!165 () List!56313)

(declare-fun isEmpty!30103 (List!56313) Bool)

(assert (=> b!4883801 (= res!2085004 (not (isEmpty!30103 rulesArg!165)))))

(declare-fun b!4883802 () Bool)

(declare-fun e!3052548 () Bool)

(declare-fun input!1236 () BalanceConc!28770)

(declare-fun tp!1374317 () Bool)

(declare-fun inv!72283 (Conc!14670) Bool)

(assert (=> b!4883802 (= e!3052548 (and (inv!72283 (c!830487 input!1236)) tp!1374317))))

(declare-fun b!4883803 () Bool)

(declare-fun e!3052550 () Bool)

(declare-fun e!3052547 () Bool)

(declare-fun tp!1374320 () Bool)

(assert (=> b!4883803 (= e!3052550 (and e!3052547 tp!1374320))))

(declare-fun b!4883804 () Bool)

(declare-fun e!3052546 () Bool)

(assert (=> b!4883804 (= e!3052545 (not e!3052546))))

(declare-fun res!2085007 () Bool)

(assert (=> b!4883804 (=> res!2085007 e!3052546)))

(get-info :version)

(assert (=> b!4883804 (= res!2085007 (or (and ((_ is Cons!56189) rulesArg!165) ((_ is Nil!56189) (t!364959 rulesArg!165))) (not ((_ is Cons!56189) rulesArg!165))))))

(declare-fun lt!2000707 () List!56311)

(declare-fun isPrefix!4824 (List!56311 List!56311) Bool)

(assert (=> b!4883804 (isPrefix!4824 lt!2000707 lt!2000707)))

(declare-datatypes ((Unit!146178 0))(
  ( (Unit!146179) )
))
(declare-fun lt!2000704 () Unit!146178)

(declare-fun lemmaIsPrefixRefl!3221 (List!56311 List!56311) Unit!146178)

(assert (=> b!4883804 (= lt!2000704 (lemmaIsPrefixRefl!3221 lt!2000707 lt!2000707))))

(declare-fun list!17627 (BalanceConc!28770) List!56311)

(assert (=> b!4883804 (= lt!2000707 (list!17627 input!1236))))

(declare-fun e!3052549 () Bool)

(assert (=> b!4883805 (= e!3052549 (and tp!1374321 tp!1374319))))

(declare-fun b!4883806 () Bool)

(declare-fun e!3052552 () Bool)

(assert (=> b!4883806 (= e!3052552 e!3052544)))

(declare-fun res!2085002 () Bool)

(assert (=> b!4883806 (=> res!2085002 e!3052544)))

(declare-fun lt!2000710 () Bool)

(assert (=> b!4883806 (= res!2085002 (or (not (= lt!2000710 lt!2000708)) (not lt!2000710)))))

(declare-datatypes ((Token!14772 0))(
  ( (Token!14773 (value!260059 TokenValue!8412) (rule!11264 Rule!16004) (size!37021 Int) (originalCharacters!8417 List!56311)) )
))
(declare-datatypes ((tuple2!60104 0))(
  ( (tuple2!60105 (_1!33355 Token!14772) (_2!33355 List!56311)) )
))
(declare-datatypes ((Option!13887 0))(
  ( (None!13886) (Some!13886 (v!49836 tuple2!60104)) )
))
(declare-fun lt!2000709 () Option!13887)

(declare-fun isDefined!10914 (Option!13887) Bool)

(assert (=> b!4883806 (= lt!2000708 (isDefined!10914 lt!2000709))))

(declare-datatypes ((tuple2!60106 0))(
  ( (tuple2!60107 (_1!33356 Token!14772) (_2!33356 BalanceConc!28770)) )
))
(declare-datatypes ((Option!13888 0))(
  ( (None!13887) (Some!13887 (v!49837 tuple2!60106)) )
))
(declare-fun lt!2000705 () Option!13888)

(declare-fun isDefined!10915 (Option!13888) Bool)

(assert (=> b!4883806 (= lt!2000710 (isDefined!10915 lt!2000705))))

(declare-datatypes ((LexerInterface!7694 0))(
  ( (LexerInterfaceExt!7691 (__x!34118 Int)) (Lexer!7692) )
))
(declare-fun thiss!14805 () LexerInterface!7694)

(declare-fun maxPrefixZipper!605 (LexerInterface!7694 List!56313 List!56311) Option!13887)

(assert (=> b!4883806 (= lt!2000709 (maxPrefixZipper!605 thiss!14805 rulesArg!165 lt!2000707))))

(declare-fun b!4883807 () Bool)

(declare-fun res!2085003 () Bool)

(assert (=> b!4883807 (=> (not res!2085003) (not e!3052545))))

(declare-fun rulesValidInductive!3081 (LexerInterface!7694 List!56313) Bool)

(assert (=> b!4883807 (= res!2085003 (rulesValidInductive!3081 thiss!14805 rulesArg!165))))

(declare-fun b!4883808 () Bool)

(assert (=> b!4883808 (= e!3052546 e!3052552)))

(declare-fun res!2085005 () Bool)

(assert (=> b!4883808 (=> res!2085005 e!3052552)))

(declare-fun lt!2000706 () Option!13888)

(assert (=> b!4883808 (= res!2085005 (or (and ((_ is None!13887) lt!2000705) ((_ is None!13887) lt!2000706)) (not ((_ is None!13887) lt!2000706))))))

(declare-fun maxPrefixZipperSequence!1263 (LexerInterface!7694 List!56313 BalanceConc!28770) Option!13888)

(assert (=> b!4883808 (= lt!2000706 (maxPrefixZipperSequence!1263 thiss!14805 (t!364959 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!628 (LexerInterface!7694 Rule!16004 BalanceConc!28770) Option!13888)

(assert (=> b!4883808 (= lt!2000705 (maxPrefixOneRuleZipperSequence!628 thiss!14805 (h!62637 rulesArg!165) input!1236))))

(declare-fun res!2085001 () Bool)

(assert (=> start!511028 (=> (not res!2085001) (not e!3052545))))

(assert (=> start!511028 (= res!2085001 ((_ is Lexer!7692) thiss!14805))))

(assert (=> start!511028 e!3052545))

(assert (=> start!511028 true))

(assert (=> start!511028 e!3052550))

(declare-fun inv!72284 (BalanceConc!28770) Bool)

(assert (=> start!511028 (and (inv!72284 input!1236) e!3052548)))

(declare-fun b!4883809 () Bool)

(declare-fun tp!1374318 () Bool)

(declare-fun inv!72279 (String!63502) Bool)

(declare-fun inv!72285 (TokenValueInjection!16132) Bool)

(assert (=> b!4883809 (= e!3052547 (and tp!1374318 (inv!72279 (tag!8966 (h!62637 rulesArg!165))) (inv!72285 (transformation!8102 (h!62637 rulesArg!165))) e!3052549))))

(declare-fun b!4883810 () Bool)

(declare-fun res!2085006 () Bool)

(assert (=> b!4883810 (=> res!2085006 e!3052544)))

(declare-fun get!19334 (Option!13888) tuple2!60106)

(declare-fun get!19335 (Option!13887) tuple2!60104)

(assert (=> b!4883810 (= res!2085006 (not (= (_1!33356 (get!19334 lt!2000705)) (_1!33355 (get!19335 lt!2000709)))))))

(assert (= (and start!511028 res!2085001) b!4883807))

(assert (= (and b!4883807 res!2085003) b!4883801))

(assert (= (and b!4883801 res!2085004) b!4883804))

(assert (= (and b!4883804 (not res!2085007)) b!4883808))

(assert (= (and b!4883808 (not res!2085005)) b!4883806))

(assert (= (and b!4883806 (not res!2085002)) b!4883810))

(assert (= (and b!4883810 (not res!2085006)) b!4883800))

(assert (= b!4883809 b!4883805))

(assert (= b!4883803 b!4883809))

(assert (= (and start!511028 ((_ is Cons!56189) rulesArg!165)) b!4883803))

(assert (= start!511028 b!4883802))

(declare-fun m!5887756 () Bool)

(assert (=> b!4883810 m!5887756))

(declare-fun m!5887758 () Bool)

(assert (=> b!4883810 m!5887758))

(declare-fun m!5887760 () Bool)

(assert (=> b!4883809 m!5887760))

(declare-fun m!5887762 () Bool)

(assert (=> b!4883809 m!5887762))

(declare-fun m!5887764 () Bool)

(assert (=> start!511028 m!5887764))

(declare-fun m!5887766 () Bool)

(assert (=> b!4883804 m!5887766))

(declare-fun m!5887768 () Bool)

(assert (=> b!4883804 m!5887768))

(declare-fun m!5887770 () Bool)

(assert (=> b!4883804 m!5887770))

(declare-fun m!5887772 () Bool)

(assert (=> b!4883801 m!5887772))

(declare-fun m!5887774 () Bool)

(assert (=> b!4883802 m!5887774))

(declare-fun m!5887776 () Bool)

(assert (=> b!4883808 m!5887776))

(declare-fun m!5887778 () Bool)

(assert (=> b!4883808 m!5887778))

(declare-fun m!5887780 () Bool)

(assert (=> b!4883806 m!5887780))

(declare-fun m!5887782 () Bool)

(assert (=> b!4883806 m!5887782))

(declare-fun m!5887784 () Bool)

(assert (=> b!4883806 m!5887784))

(declare-fun m!5887786 () Bool)

(assert (=> b!4883807 m!5887786))

(check-sat b_and!343931 (not b!4883803) (not b!4883808) (not b_next!131891) (not start!511028) (not b!4883810) b_and!343933 (not b!4883802) (not b!4883804) (not b!4883801) (not b!4883806) (not b_next!131889) (not b!4883809) (not b!4883807))
(check-sat b_and!343933 b_and!343931 (not b_next!131889) (not b_next!131891))
