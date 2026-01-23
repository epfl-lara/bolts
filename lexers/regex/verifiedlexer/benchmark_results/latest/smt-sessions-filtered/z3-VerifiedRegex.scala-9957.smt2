; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522004 () Bool)

(assert start!522004)

(declare-fun b!4953185 () Bool)

(declare-fun b_free!132035 () Bool)

(declare-fun b_next!132825 () Bool)

(assert (=> b!4953185 (= b_free!132035 (not b_next!132825))))

(declare-fun tp!1388539 () Bool)

(declare-fun b_and!346887 () Bool)

(assert (=> b!4953185 (= tp!1388539 b_and!346887)))

(declare-fun b_free!132037 () Bool)

(declare-fun b_next!132827 () Bool)

(assert (=> b!4953185 (= b_free!132037 (not b_next!132827))))

(declare-fun tp!1388542 () Bool)

(declare-fun b_and!346889 () Bool)

(assert (=> b!4953185 (= tp!1388542 b_and!346889)))

(declare-fun b!4953182 () Bool)

(declare-fun e!3094689 () Bool)

(declare-datatypes ((C!27248 0))(
  ( (C!27249 (val!22990 Int)) )
))
(declare-datatypes ((List!57184 0))(
  ( (Nil!57060) (Cons!57060 (h!63508 C!27248) (t!367750 List!57184)) )
))
(declare-datatypes ((IArray!30097 0))(
  ( (IArray!30098 (innerList!15106 List!57184)) )
))
(declare-datatypes ((Conc!15018 0))(
  ( (Node!15018 (left!41629 Conc!15018) (right!41959 Conc!15018) (csize!30266 Int) (cheight!15229 Int)) (Leaf!24976 (xs!18344 IArray!30097) (csize!30267 Int)) (Empty!15018) )
))
(declare-datatypes ((BalanceConc!29466 0))(
  ( (BalanceConc!29467 (c!845925 Conc!15018)) )
))
(declare-fun totalInput!464 () BalanceConc!29466)

(declare-fun tp!1388544 () Bool)

(declare-fun inv!74381 (Conc!15018) Bool)

(assert (=> b!4953182 (= e!3094689 (and (inv!74381 (c!845925 totalInput!464)) tp!1388544))))

(declare-fun b!4953183 () Bool)

(declare-fun e!3094686 () Bool)

(assert (=> b!4953183 (= e!3094686 (not true))))

(declare-fun lt!2044270 () List!57184)

(declare-fun isPrefix!5119 (List!57184 List!57184) Bool)

(assert (=> b!4953183 (isPrefix!5119 lt!2044270 lt!2044270)))

(declare-datatypes ((Unit!147954 0))(
  ( (Unit!147955) )
))
(declare-fun lt!2044271 () Unit!147954)

(declare-fun lemmaIsPrefixRefl!3443 (List!57184 List!57184) Unit!147954)

(assert (=> b!4953183 (= lt!2044271 (lemmaIsPrefixRefl!3443 lt!2044270 lt!2044270))))

(declare-fun b!4953184 () Bool)

(declare-fun e!3094693 () Bool)

(declare-fun input!1342 () BalanceConc!29466)

(declare-fun tp!1388540 () Bool)

(assert (=> b!4953184 (= e!3094693 (and (inv!74381 (c!845925 input!1342)) tp!1388540))))

(declare-fun e!3094692 () Bool)

(assert (=> b!4953185 (= e!3094692 (and tp!1388539 tp!1388542))))

(declare-fun b!4953186 () Bool)

(declare-fun e!3094688 () Bool)

(declare-fun e!3094691 () Bool)

(declare-fun tp!1388543 () Bool)

(assert (=> b!4953186 (= e!3094688 (and e!3094691 tp!1388543))))

(declare-fun res!2113069 () Bool)

(declare-fun e!3094690 () Bool)

(assert (=> start!522004 (=> (not res!2113069) (not e!3094690))))

(declare-datatypes ((LexerInterface!7858 0))(
  ( (LexerInterfaceExt!7855 (__x!34445 Int)) (Lexer!7856) )
))
(declare-fun thiss!15247 () LexerInterface!7858)

(get-info :version)

(assert (=> start!522004 (= res!2113069 ((_ is Lexer!7856) thiss!15247))))

(assert (=> start!522004 e!3094690))

(assert (=> start!522004 true))

(assert (=> start!522004 e!3094688))

(declare-fun inv!74382 (BalanceConc!29466) Bool)

(assert (=> start!522004 (and (inv!74382 input!1342) e!3094693)))

(assert (=> start!522004 (and (inv!74382 totalInput!464) e!3094689)))

(declare-fun b!4953187 () Bool)

(declare-fun res!2113067 () Bool)

(assert (=> b!4953187 (=> (not res!2113067) (not e!3094690))))

(declare-datatypes ((List!57185 0))(
  ( (Nil!57061) (Cons!57061 (h!63509 (_ BitVec 16)) (t!367751 List!57185)) )
))
(declare-datatypes ((TokenValue!8576 0))(
  ( (FloatLiteralValue!17152 (text!60477 List!57185)) (TokenValueExt!8575 (__x!34446 Int)) (Broken!42880 (value!265006 List!57185)) (Object!8699) (End!8576) (Def!8576) (Underscore!8576) (Match!8576) (Else!8576) (Error!8576) (Case!8576) (If!8576) (Extends!8576) (Abstract!8576) (Class!8576) (Val!8576) (DelimiterValue!17152 (del!8636 List!57185)) (KeywordValue!8582 (value!265007 List!57185)) (CommentValue!17152 (value!265008 List!57185)) (WhitespaceValue!17152 (value!265009 List!57185)) (IndentationValue!8576 (value!265010 List!57185)) (String!64753) (Int32!8576) (Broken!42881 (value!265011 List!57185)) (Boolean!8577) (Unit!147956) (OperatorValue!8579 (op!8636 List!57185)) (IdentifierValue!17152 (value!265012 List!57185)) (IdentifierValue!17153 (value!265013 List!57185)) (WhitespaceValue!17153 (value!265014 List!57185)) (True!17152) (False!17152) (Broken!42882 (value!265015 List!57185)) (Broken!42883 (value!265016 List!57185)) (True!17153) (RightBrace!8576) (RightBracket!8576) (Colon!8576) (Null!8576) (Comma!8576) (LeftBracket!8576) (False!17153) (LeftBrace!8576) (ImaginaryLiteralValue!8576 (text!60478 List!57185)) (StringLiteralValue!25728 (value!265017 List!57185)) (EOFValue!8576 (value!265018 List!57185)) (IdentValue!8576 (value!265019 List!57185)) (DelimiterValue!17153 (value!265020 List!57185)) (DedentValue!8576 (value!265021 List!57185)) (NewLineValue!8576 (value!265022 List!57185)) (IntegerValue!25728 (value!265023 (_ BitVec 32)) (text!60479 List!57185)) (IntegerValue!25729 (value!265024 Int) (text!60480 List!57185)) (Times!8576) (Or!8576) (Equal!8576) (Minus!8576) (Broken!42884 (value!265025 List!57185)) (And!8576) (Div!8576) (LessEqual!8576) (Mod!8576) (Concat!22075) (Not!8576) (Plus!8576) (SpaceValue!8576 (value!265026 List!57185)) (IntegerValue!25730 (value!265027 Int) (text!60481 List!57185)) (StringLiteralValue!25729 (text!60482 List!57185)) (FloatLiteralValue!17153 (text!60483 List!57185)) (BytesLiteralValue!8576 (value!265028 List!57185)) (CommentValue!17153 (value!265029 List!57185)) (StringLiteralValue!25730 (value!265030 List!57185)) (ErrorTokenValue!8576 (msg!8637 List!57185)) )
))
(declare-datatypes ((Regex!13499 0))(
  ( (ElementMatch!13499 (c!845926 C!27248)) (Concat!22076 (regOne!27510 Regex!13499) (regTwo!27510 Regex!13499)) (EmptyExpr!13499) (Star!13499 (reg!13828 Regex!13499)) (EmptyLang!13499) (Union!13499 (regOne!27511 Regex!13499) (regTwo!27511 Regex!13499)) )
))
(declare-datatypes ((String!64754 0))(
  ( (String!64755 (value!265031 String)) )
))
(declare-datatypes ((TokenValueInjection!16460 0))(
  ( (TokenValueInjection!16461 (toValue!11217 Int) (toChars!11076 Int)) )
))
(declare-datatypes ((Rule!16332 0))(
  ( (Rule!16333 (regex!8266 Regex!13499) (tag!9130 String!64754) (isSeparator!8266 Bool) (transformation!8266 TokenValueInjection!16460)) )
))
(declare-datatypes ((List!57186 0))(
  ( (Nil!57062) (Cons!57062 (h!63510 Rule!16332) (t!367752 List!57186)) )
))
(declare-fun rulesArg!259 () List!57186)

(declare-fun isEmpty!30686 (List!57186) Bool)

(assert (=> b!4953187 (= res!2113067 (not (isEmpty!30686 rulesArg!259)))))

(declare-fun b!4953188 () Bool)

(declare-fun res!2113070 () Bool)

(assert (=> b!4953188 (=> (not res!2113070) (not e!3094690))))

(declare-fun rulesValidInductive!3169 (LexerInterface!7858 List!57186) Bool)

(assert (=> b!4953188 (= res!2113070 (rulesValidInductive!3169 thiss!15247 rulesArg!259))))

(declare-fun b!4953189 () Bool)

(assert (=> b!4953189 (= e!3094690 e!3094686)))

(declare-fun res!2113068 () Bool)

(assert (=> b!4953189 (=> (not res!2113068) (not e!3094686))))

(declare-fun isSuffix!1065 (List!57184 List!57184) Bool)

(declare-fun list!18197 (BalanceConc!29466) List!57184)

(assert (=> b!4953189 (= res!2113068 (isSuffix!1065 lt!2044270 (list!18197 totalInput!464)))))

(assert (=> b!4953189 (= lt!2044270 (list!18197 input!1342))))

(declare-fun tp!1388541 () Bool)

(declare-fun b!4953190 () Bool)

(declare-fun inv!74377 (String!64754) Bool)

(declare-fun inv!74383 (TokenValueInjection!16460) Bool)

(assert (=> b!4953190 (= e!3094691 (and tp!1388541 (inv!74377 (tag!9130 (h!63510 rulesArg!259))) (inv!74383 (transformation!8266 (h!63510 rulesArg!259))) e!3094692))))

(assert (= (and start!522004 res!2113069) b!4953188))

(assert (= (and b!4953188 res!2113070) b!4953187))

(assert (= (and b!4953187 res!2113067) b!4953189))

(assert (= (and b!4953189 res!2113068) b!4953183))

(assert (= b!4953190 b!4953185))

(assert (= b!4953186 b!4953190))

(assert (= (and start!522004 ((_ is Cons!57062) rulesArg!259)) b!4953186))

(assert (= start!522004 b!4953184))

(assert (= start!522004 b!4953182))

(declare-fun m!5977946 () Bool)

(assert (=> b!4953187 m!5977946))

(declare-fun m!5977948 () Bool)

(assert (=> b!4953184 m!5977948))

(declare-fun m!5977950 () Bool)

(assert (=> b!4953188 m!5977950))

(declare-fun m!5977952 () Bool)

(assert (=> b!4953189 m!5977952))

(assert (=> b!4953189 m!5977952))

(declare-fun m!5977954 () Bool)

(assert (=> b!4953189 m!5977954))

(declare-fun m!5977956 () Bool)

(assert (=> b!4953189 m!5977956))

(declare-fun m!5977958 () Bool)

(assert (=> b!4953182 m!5977958))

(declare-fun m!5977960 () Bool)

(assert (=> start!522004 m!5977960))

(declare-fun m!5977962 () Bool)

(assert (=> start!522004 m!5977962))

(declare-fun m!5977964 () Bool)

(assert (=> b!4953190 m!5977964))

(declare-fun m!5977966 () Bool)

(assert (=> b!4953190 m!5977966))

(declare-fun m!5977968 () Bool)

(assert (=> b!4953183 m!5977968))

(declare-fun m!5977970 () Bool)

(assert (=> b!4953183 m!5977970))

(check-sat (not b!4953187) (not b!4953189) (not b!4953190) (not b!4953184) (not b!4953188) (not b_next!132827) (not b!4953186) (not start!522004) (not b!4953182) b_and!346887 b_and!346889 (not b!4953183) (not b_next!132825))
(check-sat b_and!346887 b_and!346889 (not b_next!132825) (not b_next!132827))
