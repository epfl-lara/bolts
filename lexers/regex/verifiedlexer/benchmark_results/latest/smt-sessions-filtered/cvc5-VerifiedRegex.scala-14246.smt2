; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745110 () Bool)

(assert start!745110)

(declare-fun b!7899143 () Bool)

(declare-fun b_free!134587 () Bool)

(declare-fun b_next!135377 () Bool)

(assert (=> b!7899143 (= b_free!134587 (not b_next!135377))))

(declare-fun tp!2353401 () Bool)

(declare-fun b_and!352487 () Bool)

(assert (=> b!7899143 (= tp!2353401 b_and!352487)))

(declare-fun b_free!134589 () Bool)

(declare-fun b_next!135379 () Bool)

(assert (=> b!7899143 (= b_free!134589 (not b_next!135379))))

(declare-fun tp!2353402 () Bool)

(declare-fun b_and!352489 () Bool)

(assert (=> b!7899143 (= tp!2353402 b_and!352489)))

(declare-fun b!7899133 () Bool)

(declare-fun e!4662545 () Bool)

(declare-fun e!4662539 () Bool)

(declare-fun tp!2353405 () Bool)

(assert (=> b!7899133 (= e!4662545 (and e!4662539 tp!2353405))))

(declare-fun b!7899134 () Bool)

(declare-fun res!3133601 () Bool)

(declare-fun e!4662541 () Bool)

(assert (=> b!7899134 (=> res!3133601 e!4662541)))

(declare-datatypes ((List!74191 0))(
  ( (Nil!74067) (Cons!74067 (h!80515 (_ BitVec 16)) (t!389000 List!74191)) )
))
(declare-datatypes ((TokenValue!8873 0))(
  ( (FloatLiteralValue!17746 (text!62556 List!74191)) (TokenValueExt!8872 (__x!35033 Int)) (Broken!44365 (value!285831 List!74191)) (Object!8996) (End!8873) (Def!8873) (Underscore!8873) (Match!8873) (Else!8873) (Error!8873) (Case!8873) (If!8873) (Extends!8873) (Abstract!8873) (Class!8873) (Val!8873) (DelimiterValue!17746 (del!8933 List!74191)) (KeywordValue!8879 (value!285832 List!74191)) (CommentValue!17746 (value!285833 List!74191)) (WhitespaceValue!17746 (value!285834 List!74191)) (IndentationValue!8873 (value!285835 List!74191)) (String!82788) (Int32!8873) (Broken!44366 (value!285836 List!74191)) (Boolean!8874) (Unit!169085) (OperatorValue!8876 (op!8933 List!74191)) (IdentifierValue!17746 (value!285837 List!74191)) (IdentifierValue!17747 (value!285838 List!74191)) (WhitespaceValue!17747 (value!285839 List!74191)) (True!17746) (False!17746) (Broken!44367 (value!285840 List!74191)) (Broken!44368 (value!285841 List!74191)) (True!17747) (RightBrace!8873) (RightBracket!8873) (Colon!8873) (Null!8873) (Comma!8873) (LeftBracket!8873) (False!17747) (LeftBrace!8873) (ImaginaryLiteralValue!8873 (text!62557 List!74191)) (StringLiteralValue!26619 (value!285842 List!74191)) (EOFValue!8873 (value!285843 List!74191)) (IdentValue!8873 (value!285844 List!74191)) (DelimiterValue!17747 (value!285845 List!74191)) (DedentValue!8873 (value!285846 List!74191)) (NewLineValue!8873 (value!285847 List!74191)) (IntegerValue!26619 (value!285848 (_ BitVec 32)) (text!62558 List!74191)) (IntegerValue!26620 (value!285849 Int) (text!62559 List!74191)) (Times!8873) (Or!8873) (Equal!8873) (Minus!8873) (Broken!44369 (value!285850 List!74191)) (And!8873) (Div!8873) (LessEqual!8873) (Mod!8873) (Concat!30133) (Not!8873) (Plus!8873) (SpaceValue!8873 (value!285851 List!74191)) (IntegerValue!26621 (value!285852 Int) (text!62560 List!74191)) (StringLiteralValue!26620 (text!62561 List!74191)) (FloatLiteralValue!17747 (text!62562 List!74191)) (BytesLiteralValue!8873 (value!285853 List!74191)) (CommentValue!17747 (value!285854 List!74191)) (StringLiteralValue!26621 (value!285855 List!74191)) (ErrorTokenValue!8873 (msg!8934 List!74191)) )
))
(declare-datatypes ((C!42850 0))(
  ( (C!42851 (val!31889 Int)) )
))
(declare-datatypes ((List!74192 0))(
  ( (Nil!74068) (Cons!74068 (h!80516 C!42850) (t!389001 List!74192)) )
))
(declare-datatypes ((IArray!31523 0))(
  ( (IArray!31524 (innerList!15819 List!74192)) )
))
(declare-datatypes ((Conc!15731 0))(
  ( (Node!15731 (left!56525 Conc!15731) (right!56855 Conc!15731) (csize!31692 Int) (cheight!15942 Int)) (Leaf!29978 (xs!19113 IArray!31523) (csize!31693 Int)) (Empty!15731) )
))
(declare-datatypes ((BalanceConc!30580 0))(
  ( (BalanceConc!30581 (c!1449748 Conc!15731)) )
))
(declare-datatypes ((String!82789 0))(
  ( (String!82790 (value!285856 String)) )
))
(declare-datatypes ((Regex!21260 0))(
  ( (ElementMatch!21260 (c!1449749 C!42850)) (Concat!30134 (regOne!43032 Regex!21260) (regTwo!43032 Regex!21260)) (EmptyExpr!21260) (Star!21260 (reg!21589 Regex!21260)) (EmptyLang!21260) (Union!21260 (regOne!43033 Regex!21260) (regTwo!43033 Regex!21260)) )
))
(declare-datatypes ((TokenValueInjection!17054 0))(
  ( (TokenValueInjection!17055 (toValue!11598 Int) (toChars!11457 Int)) )
))
(declare-datatypes ((Rule!16914 0))(
  ( (Rule!16915 (regex!8557 Regex!21260) (tag!9421 String!82789) (isSeparator!8557 Bool) (transformation!8557 TokenValueInjection!17054)) )
))
(declare-datatypes ((Token!15534 0))(
  ( (Token!15535 (value!285857 TokenValue!8873) (rule!11841 Rule!16914) (size!42906 Int) (originalCharacters!8798 List!74192)) )
))
(declare-datatypes ((tuple2!70132 0))(
  ( (tuple2!70133 (_1!38369 Token!15534) (_2!38369 List!74192)) )
))
(declare-fun lt!2682491 () tuple2!70132)

(declare-fun input!1184 () List!74192)

(declare-fun size!42907 (List!74192) Int)

(assert (=> b!7899134 (= res!3133601 (>= (size!42907 (_2!38369 lt!2682491)) (size!42907 input!1184)))))

(declare-fun b!7899135 () Bool)

(declare-fun e!4662538 () Bool)

(assert (=> b!7899135 (= e!4662538 e!4662541)))

(declare-fun res!3133604 () Bool)

(assert (=> b!7899135 (=> res!3133604 e!4662541)))

(declare-fun lt!2682490 () List!74192)

(assert (=> b!7899135 (= res!3133604 (not (= lt!2682490 (originalCharacters!8798 (_1!38369 lt!2682491)))))))

(declare-fun list!19176 (BalanceConc!30580) List!74192)

(declare-fun charsOf!5501 (Token!15534) BalanceConc!30580)

(assert (=> b!7899135 (= lt!2682490 (list!19176 (charsOf!5501 (_1!38369 lt!2682491))))))

(declare-datatypes ((Option!17839 0))(
  ( (None!17838) (Some!17838 (v!54975 tuple2!70132)) )
))
(declare-fun get!26590 (Option!17839) tuple2!70132)

(assert (=> b!7899135 (= lt!2682491 (get!26590 None!17838))))

(declare-fun b!7899136 () Bool)

(declare-fun res!3133598 () Bool)

(assert (=> b!7899136 (=> res!3133598 e!4662541)))

(declare-fun ++!18131 (List!74192 List!74192) List!74192)

(assert (=> b!7899136 (= res!3133598 (not (= (++!18131 lt!2682490 (_2!38369 lt!2682491)) input!1184)))))

(declare-fun b!7899137 () Bool)

(declare-fun res!3133600 () Bool)

(declare-fun e!4662543 () Bool)

(assert (=> b!7899137 (=> (not res!3133600) (not e!4662543))))

(declare-datatypes ((List!74193 0))(
  ( (Nil!74069) (Cons!74069 (h!80517 Rule!16914) (t!389002 List!74193)) )
))
(declare-fun rulesArg!141 () List!74193)

(declare-fun isEmpty!42486 (List!74193) Bool)

(assert (=> b!7899137 (= res!3133600 (not (isEmpty!42486 rulesArg!141)))))

(declare-fun b!7899138 () Bool)

(declare-fun e!4662540 () Bool)

(declare-fun tp_is_empty!52895 () Bool)

(declare-fun tp!2353403 () Bool)

(assert (=> b!7899138 (= e!4662540 (and tp_is_empty!52895 tp!2353403))))

(declare-fun res!3133605 () Bool)

(assert (=> start!745110 (=> (not res!3133605) (not e!4662543))))

(declare-datatypes ((LexerInterface!8149 0))(
  ( (LexerInterfaceExt!8146 (__x!35034 Int)) (Lexer!8147) )
))
(declare-fun thiss!14377 () LexerInterface!8149)

(assert (=> start!745110 (= res!3133605 (is-Lexer!8147 thiss!14377))))

(assert (=> start!745110 e!4662543))

(assert (=> start!745110 true))

(assert (=> start!745110 e!4662545))

(assert (=> start!745110 e!4662540))

(declare-fun b!7899139 () Bool)

(declare-fun tp!2353404 () Bool)

(declare-fun e!4662537 () Bool)

(declare-fun inv!95055 (String!82789) Bool)

(declare-fun inv!95058 (TokenValueInjection!17054) Bool)

(assert (=> b!7899139 (= e!4662539 (and tp!2353404 (inv!95055 (tag!9421 (h!80517 rulesArg!141))) (inv!95058 (transformation!8557 (h!80517 rulesArg!141))) e!4662537))))

(declare-fun b!7899140 () Bool)

(assert (=> b!7899140 (= e!4662541 true)))

(declare-fun b!7899141 () Bool)

(declare-fun res!3133599 () Bool)

(assert (=> b!7899141 (=> (not res!3133599) (not e!4662543))))

(declare-fun rulesValidInductive!3368 (LexerInterface!8149 List!74193) Bool)

(assert (=> b!7899141 (= res!3133599 (rulesValidInductive!3368 thiss!14377 rulesArg!141))))

(declare-fun b!7899142 () Bool)

(declare-fun e!4662544 () Bool)

(assert (=> b!7899142 (= e!4662543 (not e!4662544))))

(declare-fun res!3133603 () Bool)

(assert (=> b!7899142 (=> res!3133603 e!4662544)))

(assert (=> b!7899142 (= res!3133603 (or (and (is-Cons!74069 rulesArg!141) (is-Nil!74069 (t!389002 rulesArg!141))) (not (is-Cons!74069 rulesArg!141))))))

(declare-fun isPrefix!6390 (List!74192 List!74192) Bool)

(assert (=> b!7899142 (isPrefix!6390 input!1184 input!1184)))

(declare-datatypes ((Unit!169086 0))(
  ( (Unit!169087) )
))
(declare-fun lt!2682487 () Unit!169086)

(declare-fun lemmaIsPrefixRefl!3901 (List!74192 List!74192) Unit!169086)

(assert (=> b!7899142 (= lt!2682487 (lemmaIsPrefixRefl!3901 input!1184 input!1184))))

(assert (=> b!7899143 (= e!4662537 (and tp!2353401 tp!2353402))))

(declare-fun b!7899144 () Bool)

(assert (=> b!7899144 (= e!4662544 e!4662538)))

(declare-fun res!3133602 () Bool)

(assert (=> b!7899144 (=> res!3133602 e!4662538)))

(declare-fun lt!2682488 () Option!17839)

(declare-fun lt!2682489 () Option!17839)

(assert (=> b!7899144 (= res!3133602 true)))

(declare-fun maxPrefix!4690 (LexerInterface!8149 List!74193 List!74192) Option!17839)

(assert (=> b!7899144 (= lt!2682489 (maxPrefix!4690 thiss!14377 (t!389002 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3737 (LexerInterface!8149 Rule!16914 List!74192) Option!17839)

(assert (=> b!7899144 (= lt!2682488 (maxPrefixOneRule!3737 thiss!14377 (h!80517 rulesArg!141) input!1184))))

(assert (= (and start!745110 res!3133605) b!7899141))

(assert (= (and b!7899141 res!3133599) b!7899137))

(assert (= (and b!7899137 res!3133600) b!7899142))

(assert (= (and b!7899142 (not res!3133603)) b!7899144))

(assert (= (and b!7899144 (not res!3133602)) b!7899135))

(assert (= (and b!7899135 (not res!3133604)) b!7899134))

(assert (= (and b!7899134 (not res!3133601)) b!7899136))

(assert (= (and b!7899136 (not res!3133598)) b!7899140))

(assert (= b!7899139 b!7899143))

(assert (= b!7899133 b!7899139))

(assert (= (and start!745110 (is-Cons!74069 rulesArg!141)) b!7899133))

(assert (= (and start!745110 (is-Cons!74068 input!1184)) b!7899138))

(declare-fun m!8274004 () Bool)

(assert (=> b!7899144 m!8274004))

(declare-fun m!8274006 () Bool)

(assert (=> b!7899144 m!8274006))

(declare-fun m!8274008 () Bool)

(assert (=> b!7899141 m!8274008))

(declare-fun m!8274010 () Bool)

(assert (=> b!7899142 m!8274010))

(declare-fun m!8274012 () Bool)

(assert (=> b!7899142 m!8274012))

(declare-fun m!8274014 () Bool)

(assert (=> b!7899134 m!8274014))

(declare-fun m!8274016 () Bool)

(assert (=> b!7899134 m!8274016))

(declare-fun m!8274018 () Bool)

(assert (=> b!7899136 m!8274018))

(declare-fun m!8274020 () Bool)

(assert (=> b!7899139 m!8274020))

(declare-fun m!8274022 () Bool)

(assert (=> b!7899139 m!8274022))

(declare-fun m!8274024 () Bool)

(assert (=> b!7899135 m!8274024))

(assert (=> b!7899135 m!8274024))

(declare-fun m!8274026 () Bool)

(assert (=> b!7899135 m!8274026))

(declare-fun m!8274028 () Bool)

(assert (=> b!7899135 m!8274028))

(declare-fun m!8274030 () Bool)

(assert (=> b!7899137 m!8274030))

(push 1)

(assert (not b!7899144))

(assert tp_is_empty!52895)

(assert (not b!7899141))

(assert (not b_next!135377))

(assert (not b!7899139))

(assert (not b!7899133))

(assert (not b!7899135))

(assert (not b_next!135379))

(assert b_and!352489)

(assert (not b!7899142))

(assert (not b!7899136))

(assert b_and!352487)

(assert (not b!7899134))

(assert (not b!7899138))

(assert (not b!7899137))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352489)

(assert b_and!352487)

(assert (not b_next!135379))

(assert (not b_next!135377))

(check-sat)

(pop 1)

