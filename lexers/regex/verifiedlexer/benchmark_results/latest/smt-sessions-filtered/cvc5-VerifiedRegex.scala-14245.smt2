; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745106 () Bool)

(assert start!745106)

(declare-fun b!7899077 () Bool)

(declare-fun b_free!134579 () Bool)

(declare-fun b_next!135369 () Bool)

(assert (=> b!7899077 (= b_free!134579 (not b_next!135369))))

(declare-fun tp!2353373 () Bool)

(declare-fun b_and!352479 () Bool)

(assert (=> b!7899077 (= tp!2353373 b_and!352479)))

(declare-fun b_free!134581 () Bool)

(declare-fun b_next!135371 () Bool)

(assert (=> b!7899077 (= b_free!134581 (not b_next!135371))))

(declare-fun tp!2353375 () Bool)

(declare-fun b_and!352481 () Bool)

(assert (=> b!7899077 (= tp!2353375 b_and!352481)))

(declare-fun b!7899069 () Bool)

(declare-fun e!4662489 () Bool)

(declare-fun e!4662488 () Bool)

(assert (=> b!7899069 (= e!4662489 e!4662488)))

(declare-fun res!3133560 () Bool)

(assert (=> b!7899069 (=> res!3133560 e!4662488)))

(declare-datatypes ((List!74185 0))(
  ( (Nil!74061) (Cons!74061 (h!80509 (_ BitVec 16)) (t!388994 List!74185)) )
))
(declare-datatypes ((TokenValue!8871 0))(
  ( (FloatLiteralValue!17742 (text!62542 List!74185)) (TokenValueExt!8870 (__x!35029 Int)) (Broken!44355 (value!285774 List!74185)) (Object!8994) (End!8871) (Def!8871) (Underscore!8871) (Match!8871) (Else!8871) (Error!8871) (Case!8871) (If!8871) (Extends!8871) (Abstract!8871) (Class!8871) (Val!8871) (DelimiterValue!17742 (del!8931 List!74185)) (KeywordValue!8877 (value!285775 List!74185)) (CommentValue!17742 (value!285776 List!74185)) (WhitespaceValue!17742 (value!285777 List!74185)) (IndentationValue!8871 (value!285778 List!74185)) (String!82778) (Int32!8871) (Broken!44356 (value!285779 List!74185)) (Boolean!8872) (Unit!169079) (OperatorValue!8874 (op!8931 List!74185)) (IdentifierValue!17742 (value!285780 List!74185)) (IdentifierValue!17743 (value!285781 List!74185)) (WhitespaceValue!17743 (value!285782 List!74185)) (True!17742) (False!17742) (Broken!44357 (value!285783 List!74185)) (Broken!44358 (value!285784 List!74185)) (True!17743) (RightBrace!8871) (RightBracket!8871) (Colon!8871) (Null!8871) (Comma!8871) (LeftBracket!8871) (False!17743) (LeftBrace!8871) (ImaginaryLiteralValue!8871 (text!62543 List!74185)) (StringLiteralValue!26613 (value!285785 List!74185)) (EOFValue!8871 (value!285786 List!74185)) (IdentValue!8871 (value!285787 List!74185)) (DelimiterValue!17743 (value!285788 List!74185)) (DedentValue!8871 (value!285789 List!74185)) (NewLineValue!8871 (value!285790 List!74185)) (IntegerValue!26613 (value!285791 (_ BitVec 32)) (text!62544 List!74185)) (IntegerValue!26614 (value!285792 Int) (text!62545 List!74185)) (Times!8871) (Or!8871) (Equal!8871) (Minus!8871) (Broken!44359 (value!285793 List!74185)) (And!8871) (Div!8871) (LessEqual!8871) (Mod!8871) (Concat!30129) (Not!8871) (Plus!8871) (SpaceValue!8871 (value!285794 List!74185)) (IntegerValue!26615 (value!285795 Int) (text!62546 List!74185)) (StringLiteralValue!26614 (text!62547 List!74185)) (FloatLiteralValue!17743 (text!62548 List!74185)) (BytesLiteralValue!8871 (value!285796 List!74185)) (CommentValue!17743 (value!285797 List!74185)) (StringLiteralValue!26615 (value!285798 List!74185)) (ErrorTokenValue!8871 (msg!8932 List!74185)) )
))
(declare-datatypes ((C!42846 0))(
  ( (C!42847 (val!31887 Int)) )
))
(declare-datatypes ((List!74186 0))(
  ( (Nil!74062) (Cons!74062 (h!80510 C!42846) (t!388995 List!74186)) )
))
(declare-datatypes ((IArray!31519 0))(
  ( (IArray!31520 (innerList!15817 List!74186)) )
))
(declare-datatypes ((Conc!15729 0))(
  ( (Node!15729 (left!56522 Conc!15729) (right!56852 Conc!15729) (csize!31688 Int) (cheight!15940 Int)) (Leaf!29975 (xs!19111 IArray!31519) (csize!31689 Int)) (Empty!15729) )
))
(declare-datatypes ((BalanceConc!30576 0))(
  ( (BalanceConc!30577 (c!1449742 Conc!15729)) )
))
(declare-datatypes ((Regex!21258 0))(
  ( (ElementMatch!21258 (c!1449743 C!42846)) (Concat!30130 (regOne!43028 Regex!21258) (regTwo!43028 Regex!21258)) (EmptyExpr!21258) (Star!21258 (reg!21587 Regex!21258)) (EmptyLang!21258) (Union!21258 (regOne!43029 Regex!21258) (regTwo!43029 Regex!21258)) )
))
(declare-datatypes ((String!82779 0))(
  ( (String!82780 (value!285799 String)) )
))
(declare-datatypes ((TokenValueInjection!17050 0))(
  ( (TokenValueInjection!17051 (toValue!11596 Int) (toChars!11455 Int)) )
))
(declare-datatypes ((Rule!16910 0))(
  ( (Rule!16911 (regex!8555 Regex!21258) (tag!9419 String!82779) (isSeparator!8555 Bool) (transformation!8555 TokenValueInjection!17050)) )
))
(declare-datatypes ((Token!15530 0))(
  ( (Token!15531 (value!285800 TokenValue!8871) (rule!11839 Rule!16910) (size!42902 Int) (originalCharacters!8796 List!74186)) )
))
(declare-datatypes ((tuple2!70128 0))(
  ( (tuple2!70129 (_1!38367 Token!15530) (_2!38367 List!74186)) )
))
(declare-fun lt!2682458 () tuple2!70128)

(declare-fun list!19174 (BalanceConc!30576) List!74186)

(declare-fun charsOf!5499 (Token!15530) BalanceConc!30576)

(assert (=> b!7899069 (= res!3133560 (not (= (list!19174 (charsOf!5499 (_1!38367 lt!2682458))) (originalCharacters!8796 (_1!38367 lt!2682458)))))))

(declare-datatypes ((Option!17837 0))(
  ( (None!17836) (Some!17836 (v!54973 tuple2!70128)) )
))
(declare-fun get!26587 (Option!17837) tuple2!70128)

(assert (=> b!7899069 (= lt!2682458 (get!26587 None!17836))))

(declare-fun b!7899070 () Bool)

(declare-fun res!3133563 () Bool)

(declare-fun e!4662491 () Bool)

(assert (=> b!7899070 (=> (not res!3133563) (not e!4662491))))

(declare-datatypes ((List!74187 0))(
  ( (Nil!74063) (Cons!74063 (h!80511 Rule!16910) (t!388996 List!74187)) )
))
(declare-fun rulesArg!141 () List!74187)

(declare-fun isEmpty!42484 (List!74187) Bool)

(assert (=> b!7899070 (= res!3133563 (not (isEmpty!42484 rulesArg!141)))))

(declare-fun b!7899071 () Bool)

(assert (=> b!7899071 (= e!4662488 true)))

(declare-fun lt!2682453 () Int)

(declare-fun input!1184 () List!74186)

(declare-fun size!42903 (List!74186) Int)

(assert (=> b!7899071 (= lt!2682453 (size!42903 input!1184))))

(declare-fun lt!2682455 () Int)

(assert (=> b!7899071 (= lt!2682455 (size!42903 (_2!38367 lt!2682458)))))

(declare-fun b!7899072 () Bool)

(declare-fun res!3133559 () Bool)

(assert (=> b!7899072 (=> (not res!3133559) (not e!4662491))))

(declare-datatypes ((LexerInterface!8147 0))(
  ( (LexerInterfaceExt!8144 (__x!35030 Int)) (Lexer!8145) )
))
(declare-fun thiss!14377 () LexerInterface!8147)

(declare-fun rulesValidInductive!3366 (LexerInterface!8147 List!74187) Bool)

(assert (=> b!7899072 (= res!3133559 (rulesValidInductive!3366 thiss!14377 rulesArg!141))))

(declare-fun b!7899073 () Bool)

(declare-fun e!4662485 () Bool)

(declare-fun tp_is_empty!52891 () Bool)

(declare-fun tp!2353371 () Bool)

(assert (=> b!7899073 (= e!4662485 (and tp_is_empty!52891 tp!2353371))))

(declare-fun b!7899074 () Bool)

(declare-fun e!4662483 () Bool)

(declare-fun e!4662484 () Bool)

(declare-fun tp!2353372 () Bool)

(assert (=> b!7899074 (= e!4662483 (and e!4662484 tp!2353372))))

(declare-fun b!7899075 () Bool)

(declare-fun e!4662486 () Bool)

(assert (=> b!7899075 (= e!4662491 (not e!4662486))))

(declare-fun res!3133558 () Bool)

(assert (=> b!7899075 (=> res!3133558 e!4662486)))

(assert (=> b!7899075 (= res!3133558 (or (and (is-Cons!74063 rulesArg!141) (is-Nil!74063 (t!388996 rulesArg!141))) (not (is-Cons!74063 rulesArg!141))))))

(declare-fun isPrefix!6388 (List!74186 List!74186) Bool)

(assert (=> b!7899075 (isPrefix!6388 input!1184 input!1184)))

(declare-datatypes ((Unit!169080 0))(
  ( (Unit!169081) )
))
(declare-fun lt!2682454 () Unit!169080)

(declare-fun lemmaIsPrefixRefl!3899 (List!74186 List!74186) Unit!169080)

(assert (=> b!7899075 (= lt!2682454 (lemmaIsPrefixRefl!3899 input!1184 input!1184))))

(declare-fun tp!2353374 () Bool)

(declare-fun b!7899076 () Bool)

(declare-fun e!4662487 () Bool)

(declare-fun inv!95050 (String!82779) Bool)

(declare-fun inv!95053 (TokenValueInjection!17050) Bool)

(assert (=> b!7899076 (= e!4662484 (and tp!2353374 (inv!95050 (tag!9419 (h!80511 rulesArg!141))) (inv!95053 (transformation!8555 (h!80511 rulesArg!141))) e!4662487))))

(assert (=> b!7899077 (= e!4662487 (and tp!2353373 tp!2353375))))

(declare-fun res!3133561 () Bool)

(assert (=> start!745106 (=> (not res!3133561) (not e!4662491))))

(assert (=> start!745106 (= res!3133561 (is-Lexer!8145 thiss!14377))))

(assert (=> start!745106 e!4662491))

(assert (=> start!745106 true))

(assert (=> start!745106 e!4662483))

(assert (=> start!745106 e!4662485))

(declare-fun b!7899078 () Bool)

(assert (=> b!7899078 (= e!4662486 e!4662489)))

(declare-fun res!3133562 () Bool)

(assert (=> b!7899078 (=> res!3133562 e!4662489)))

(declare-fun lt!2682457 () Option!17837)

(declare-fun lt!2682456 () Option!17837)

(assert (=> b!7899078 (= res!3133562 true)))

(declare-fun maxPrefix!4688 (LexerInterface!8147 List!74187 List!74186) Option!17837)

(assert (=> b!7899078 (= lt!2682456 (maxPrefix!4688 thiss!14377 (t!388996 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3735 (LexerInterface!8147 Rule!16910 List!74186) Option!17837)

(assert (=> b!7899078 (= lt!2682457 (maxPrefixOneRule!3735 thiss!14377 (h!80511 rulesArg!141) input!1184))))

(assert (= (and start!745106 res!3133561) b!7899072))

(assert (= (and b!7899072 res!3133559) b!7899070))

(assert (= (and b!7899070 res!3133563) b!7899075))

(assert (= (and b!7899075 (not res!3133558)) b!7899078))

(assert (= (and b!7899078 (not res!3133562)) b!7899069))

(assert (= (and b!7899069 (not res!3133560)) b!7899071))

(assert (= b!7899076 b!7899077))

(assert (= b!7899074 b!7899076))

(assert (= (and start!745106 (is-Cons!74063 rulesArg!141)) b!7899074))

(assert (= (and start!745106 (is-Cons!74062 input!1184)) b!7899073))

(declare-fun m!8273952 () Bool)

(assert (=> b!7899072 m!8273952))

(declare-fun m!8273954 () Bool)

(assert (=> b!7899075 m!8273954))

(declare-fun m!8273956 () Bool)

(assert (=> b!7899075 m!8273956))

(declare-fun m!8273958 () Bool)

(assert (=> b!7899071 m!8273958))

(declare-fun m!8273960 () Bool)

(assert (=> b!7899071 m!8273960))

(declare-fun m!8273962 () Bool)

(assert (=> b!7899070 m!8273962))

(declare-fun m!8273964 () Bool)

(assert (=> b!7899069 m!8273964))

(assert (=> b!7899069 m!8273964))

(declare-fun m!8273966 () Bool)

(assert (=> b!7899069 m!8273966))

(declare-fun m!8273968 () Bool)

(assert (=> b!7899069 m!8273968))

(declare-fun m!8273970 () Bool)

(assert (=> b!7899076 m!8273970))

(declare-fun m!8273972 () Bool)

(assert (=> b!7899076 m!8273972))

(declare-fun m!8273974 () Bool)

(assert (=> b!7899078 m!8273974))

(declare-fun m!8273976 () Bool)

(assert (=> b!7899078 m!8273976))

(push 1)

(assert (not b!7899072))

(assert b_and!352479)

(assert b_and!352481)

(assert (not b!7899071))

(assert (not b!7899075))

(assert (not b_next!135371))

(assert (not b_next!135369))

(assert (not b!7899074))

(assert (not b!7899070))

(assert (not b!7899078))

(assert (not b!7899073))

(assert (not b!7899076))

(assert tp_is_empty!52891)

(assert (not b!7899069))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352481)

(assert b_and!352479)

(assert (not b_next!135371))

(assert (not b_next!135369))

(check-sat)

(pop 1)

