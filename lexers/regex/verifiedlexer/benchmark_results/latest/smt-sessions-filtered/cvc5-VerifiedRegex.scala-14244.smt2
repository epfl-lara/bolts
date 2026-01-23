; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745102 () Bool)

(assert start!745102)

(declare-fun b!7899015 () Bool)

(declare-fun b_free!134571 () Bool)

(declare-fun b_next!135361 () Bool)

(assert (=> b!7899015 (= b_free!134571 (not b_next!135361))))

(declare-fun tp!2353342 () Bool)

(declare-fun b_and!352471 () Bool)

(assert (=> b!7899015 (= tp!2353342 b_and!352471)))

(declare-fun b_free!134573 () Bool)

(declare-fun b_next!135363 () Bool)

(assert (=> b!7899015 (= b_free!134573 (not b_next!135363))))

(declare-fun tp!2353343 () Bool)

(declare-fun b_and!352473 () Bool)

(assert (=> b!7899015 (= tp!2353343 b_and!352473)))

(declare-fun b!7899013 () Bool)

(declare-fun e!4662439 () Bool)

(declare-fun e!4662440 () Bool)

(assert (=> b!7899013 (= e!4662439 (not e!4662440))))

(declare-fun res!3133530 () Bool)

(assert (=> b!7899013 (=> res!3133530 e!4662440)))

(declare-datatypes ((C!42842 0))(
  ( (C!42843 (val!31885 Int)) )
))
(declare-datatypes ((List!74179 0))(
  ( (Nil!74055) (Cons!74055 (h!80503 C!42842) (t!388988 List!74179)) )
))
(declare-datatypes ((IArray!31515 0))(
  ( (IArray!31516 (innerList!15815 List!74179)) )
))
(declare-datatypes ((Conc!15727 0))(
  ( (Node!15727 (left!56519 Conc!15727) (right!56849 Conc!15727) (csize!31684 Int) (cheight!15938 Int)) (Leaf!29972 (xs!19109 IArray!31515) (csize!31685 Int)) (Empty!15727) )
))
(declare-datatypes ((BalanceConc!30572 0))(
  ( (BalanceConc!30573 (c!1449736 Conc!15727)) )
))
(declare-datatypes ((List!74180 0))(
  ( (Nil!74056) (Cons!74056 (h!80504 (_ BitVec 16)) (t!388989 List!74180)) )
))
(declare-datatypes ((TokenValue!8869 0))(
  ( (FloatLiteralValue!17738 (text!62528 List!74180)) (TokenValueExt!8868 (__x!35025 Int)) (Broken!44345 (value!285717 List!74180)) (Object!8992) (End!8869) (Def!8869) (Underscore!8869) (Match!8869) (Else!8869) (Error!8869) (Case!8869) (If!8869) (Extends!8869) (Abstract!8869) (Class!8869) (Val!8869) (DelimiterValue!17738 (del!8929 List!74180)) (KeywordValue!8875 (value!285718 List!74180)) (CommentValue!17738 (value!285719 List!74180)) (WhitespaceValue!17738 (value!285720 List!74180)) (IndentationValue!8869 (value!285721 List!74180)) (String!82768) (Int32!8869) (Broken!44346 (value!285722 List!74180)) (Boolean!8870) (Unit!169073) (OperatorValue!8872 (op!8929 List!74180)) (IdentifierValue!17738 (value!285723 List!74180)) (IdentifierValue!17739 (value!285724 List!74180)) (WhitespaceValue!17739 (value!285725 List!74180)) (True!17738) (False!17738) (Broken!44347 (value!285726 List!74180)) (Broken!44348 (value!285727 List!74180)) (True!17739) (RightBrace!8869) (RightBracket!8869) (Colon!8869) (Null!8869) (Comma!8869) (LeftBracket!8869) (False!17739) (LeftBrace!8869) (ImaginaryLiteralValue!8869 (text!62529 List!74180)) (StringLiteralValue!26607 (value!285728 List!74180)) (EOFValue!8869 (value!285729 List!74180)) (IdentValue!8869 (value!285730 List!74180)) (DelimiterValue!17739 (value!285731 List!74180)) (DedentValue!8869 (value!285732 List!74180)) (NewLineValue!8869 (value!285733 List!74180)) (IntegerValue!26607 (value!285734 (_ BitVec 32)) (text!62530 List!74180)) (IntegerValue!26608 (value!285735 Int) (text!62531 List!74180)) (Times!8869) (Or!8869) (Equal!8869) (Minus!8869) (Broken!44349 (value!285736 List!74180)) (And!8869) (Div!8869) (LessEqual!8869) (Mod!8869) (Concat!30125) (Not!8869) (Plus!8869) (SpaceValue!8869 (value!285737 List!74180)) (IntegerValue!26609 (value!285738 Int) (text!62532 List!74180)) (StringLiteralValue!26608 (text!62533 List!74180)) (FloatLiteralValue!17739 (text!62534 List!74180)) (BytesLiteralValue!8869 (value!285739 List!74180)) (CommentValue!17739 (value!285740 List!74180)) (StringLiteralValue!26609 (value!285741 List!74180)) (ErrorTokenValue!8869 (msg!8930 List!74180)) )
))
(declare-datatypes ((Regex!21256 0))(
  ( (ElementMatch!21256 (c!1449737 C!42842)) (Concat!30126 (regOne!43024 Regex!21256) (regTwo!43024 Regex!21256)) (EmptyExpr!21256) (Star!21256 (reg!21585 Regex!21256)) (EmptyLang!21256) (Union!21256 (regOne!43025 Regex!21256) (regTwo!43025 Regex!21256)) )
))
(declare-datatypes ((String!82769 0))(
  ( (String!82770 (value!285742 String)) )
))
(declare-datatypes ((TokenValueInjection!17046 0))(
  ( (TokenValueInjection!17047 (toValue!11594 Int) (toChars!11453 Int)) )
))
(declare-datatypes ((Rule!16906 0))(
  ( (Rule!16907 (regex!8553 Regex!21256) (tag!9417 String!82769) (isSeparator!8553 Bool) (transformation!8553 TokenValueInjection!17046)) )
))
(declare-datatypes ((List!74181 0))(
  ( (Nil!74057) (Cons!74057 (h!80505 Rule!16906) (t!388990 List!74181)) )
))
(declare-fun rulesArg!141 () List!74181)

(assert (=> b!7899013 (= res!3133530 (or (and (is-Cons!74057 rulesArg!141) (is-Nil!74057 (t!388990 rulesArg!141))) (not (is-Cons!74057 rulesArg!141))))))

(declare-fun input!1184 () List!74179)

(declare-fun isPrefix!6386 (List!74179 List!74179) Bool)

(assert (=> b!7899013 (isPrefix!6386 input!1184 input!1184)))

(declare-datatypes ((Unit!169074 0))(
  ( (Unit!169075) )
))
(declare-fun lt!2682427 () Unit!169074)

(declare-fun lemmaIsPrefixRefl!3897 (List!74179 List!74179) Unit!169074)

(assert (=> b!7899013 (= lt!2682427 (lemmaIsPrefixRefl!3897 input!1184 input!1184))))

(declare-fun res!3133526 () Bool)

(assert (=> start!745102 (=> (not res!3133526) (not e!4662439))))

(declare-datatypes ((LexerInterface!8145 0))(
  ( (LexerInterfaceExt!8142 (__x!35026 Int)) (Lexer!8143) )
))
(declare-fun thiss!14377 () LexerInterface!8145)

(assert (=> start!745102 (= res!3133526 (is-Lexer!8143 thiss!14377))))

(assert (=> start!745102 e!4662439))

(assert (=> start!745102 true))

(declare-fun e!4662435 () Bool)

(assert (=> start!745102 e!4662435))

(declare-fun e!4662437 () Bool)

(assert (=> start!745102 e!4662437))

(declare-fun b!7899014 () Bool)

(declare-fun e!4662438 () Bool)

(declare-fun tp!2353345 () Bool)

(assert (=> b!7899014 (= e!4662435 (and e!4662438 tp!2353345))))

(declare-fun e!4662434 () Bool)

(assert (=> b!7899015 (= e!4662434 (and tp!2353342 tp!2353343))))

(declare-fun b!7899016 () Bool)

(declare-fun tp_is_empty!52887 () Bool)

(declare-fun tp!2353341 () Bool)

(assert (=> b!7899016 (= e!4662437 (and tp_is_empty!52887 tp!2353341))))

(declare-fun b!7899017 () Bool)

(declare-fun e!4662436 () Bool)

(assert (=> b!7899017 (= e!4662436 true)))

(declare-fun lt!2682425 () List!74179)

(declare-fun list!19172 (BalanceConc!30572) List!74179)

(declare-datatypes ((Token!15526 0))(
  ( (Token!15527 (value!285743 TokenValue!8869) (rule!11837 Rule!16906) (size!42900 Int) (originalCharacters!8794 List!74179)) )
))
(declare-fun charsOf!5497 (Token!15526) BalanceConc!30572)

(declare-datatypes ((tuple2!70124 0))(
  ( (tuple2!70125 (_1!38365 Token!15526) (_2!38365 List!74179)) )
))
(declare-datatypes ((Option!17835 0))(
  ( (None!17834) (Some!17834 (v!54971 tuple2!70124)) )
))
(declare-fun get!26584 (Option!17835) tuple2!70124)

(assert (=> b!7899017 (= lt!2682425 (list!19172 (charsOf!5497 (_1!38365 (get!26584 None!17834)))))))

(declare-fun b!7899018 () Bool)

(assert (=> b!7899018 (= e!4662440 e!4662436)))

(declare-fun res!3133528 () Bool)

(assert (=> b!7899018 (=> res!3133528 e!4662436)))

(declare-fun lt!2682428 () Option!17835)

(declare-fun lt!2682426 () Option!17835)

(assert (=> b!7899018 (= res!3133528 true)))

(declare-fun maxPrefix!4686 (LexerInterface!8145 List!74181 List!74179) Option!17835)

(assert (=> b!7899018 (= lt!2682426 (maxPrefix!4686 thiss!14377 (t!388990 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3733 (LexerInterface!8145 Rule!16906 List!74179) Option!17835)

(assert (=> b!7899018 (= lt!2682428 (maxPrefixOneRule!3733 thiss!14377 (h!80505 rulesArg!141) input!1184))))

(declare-fun tp!2353344 () Bool)

(declare-fun b!7899019 () Bool)

(declare-fun inv!95045 (String!82769) Bool)

(declare-fun inv!95048 (TokenValueInjection!17046) Bool)

(assert (=> b!7899019 (= e!4662438 (and tp!2353344 (inv!95045 (tag!9417 (h!80505 rulesArg!141))) (inv!95048 (transformation!8553 (h!80505 rulesArg!141))) e!4662434))))

(declare-fun b!7899020 () Bool)

(declare-fun res!3133529 () Bool)

(assert (=> b!7899020 (=> (not res!3133529) (not e!4662439))))

(declare-fun isEmpty!42482 (List!74181) Bool)

(assert (=> b!7899020 (= res!3133529 (not (isEmpty!42482 rulesArg!141)))))

(declare-fun b!7899021 () Bool)

(declare-fun res!3133527 () Bool)

(assert (=> b!7899021 (=> (not res!3133527) (not e!4662439))))

(declare-fun rulesValidInductive!3364 (LexerInterface!8145 List!74181) Bool)

(assert (=> b!7899021 (= res!3133527 (rulesValidInductive!3364 thiss!14377 rulesArg!141))))

(assert (= (and start!745102 res!3133526) b!7899021))

(assert (= (and b!7899021 res!3133527) b!7899020))

(assert (= (and b!7899020 res!3133529) b!7899013))

(assert (= (and b!7899013 (not res!3133530)) b!7899018))

(assert (= (and b!7899018 (not res!3133528)) b!7899017))

(assert (= b!7899019 b!7899015))

(assert (= b!7899014 b!7899019))

(assert (= (and start!745102 (is-Cons!74057 rulesArg!141)) b!7899014))

(assert (= (and start!745102 (is-Cons!74055 input!1184)) b!7899016))

(declare-fun m!8273908 () Bool)

(assert (=> b!7899019 m!8273908))

(declare-fun m!8273910 () Bool)

(assert (=> b!7899019 m!8273910))

(declare-fun m!8273912 () Bool)

(assert (=> b!7899013 m!8273912))

(declare-fun m!8273914 () Bool)

(assert (=> b!7899013 m!8273914))

(declare-fun m!8273916 () Bool)

(assert (=> b!7899017 m!8273916))

(declare-fun m!8273918 () Bool)

(assert (=> b!7899017 m!8273918))

(assert (=> b!7899017 m!8273918))

(declare-fun m!8273920 () Bool)

(assert (=> b!7899017 m!8273920))

(declare-fun m!8273922 () Bool)

(assert (=> b!7899018 m!8273922))

(declare-fun m!8273924 () Bool)

(assert (=> b!7899018 m!8273924))

(declare-fun m!8273926 () Bool)

(assert (=> b!7899021 m!8273926))

(declare-fun m!8273928 () Bool)

(assert (=> b!7899020 m!8273928))

(push 1)

(assert (not b_next!135361))

(assert (not b!7899018))

(assert (not b!7899021))

(assert (not b!7899020))

(assert (not b!7899017))

(assert (not b_next!135363))

(assert (not b!7899019))

(assert (not b!7899014))

(assert b_and!352471)

(assert (not b!7899016))

(assert tp_is_empty!52887)

(assert b_and!352473)

(assert (not b!7899013))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352473)

(assert b_and!352471)

(assert (not b_next!135363))

(assert (not b_next!135361))

(check-sat)

(pop 1)

