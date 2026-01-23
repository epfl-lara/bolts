; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745100 () Bool)

(assert start!745100)

(declare-fun b!7898993 () Bool)

(declare-fun b_free!134567 () Bool)

(declare-fun b_next!135357 () Bool)

(assert (=> b!7898993 (= b_free!134567 (not b_next!135357))))

(declare-fun tp!2353326 () Bool)

(declare-fun b_and!352467 () Bool)

(assert (=> b!7898993 (= tp!2353326 b_and!352467)))

(declare-fun b_free!134569 () Bool)

(declare-fun b_next!135359 () Bool)

(assert (=> b!7898993 (= b_free!134569 (not b_next!135359))))

(declare-fun tp!2353328 () Bool)

(declare-fun b_and!352469 () Bool)

(assert (=> b!7898993 (= tp!2353328 b_and!352469)))

(declare-fun b!7898987 () Bool)

(declare-fun e!4662412 () Bool)

(assert (=> b!7898987 (= e!4662412 true)))

(declare-datatypes ((C!42840 0))(
  ( (C!42841 (val!31884 Int)) )
))
(declare-datatypes ((List!74176 0))(
  ( (Nil!74052) (Cons!74052 (h!80500 C!42840) (t!388985 List!74176)) )
))
(declare-fun input!1184 () List!74176)

(declare-datatypes ((LexerInterface!8144 0))(
  ( (LexerInterfaceExt!8141 (__x!35023 Int)) (Lexer!8142) )
))
(declare-fun thiss!14377 () LexerInterface!8144)

(declare-datatypes ((IArray!31513 0))(
  ( (IArray!31514 (innerList!15814 List!74176)) )
))
(declare-datatypes ((Conc!15726 0))(
  ( (Node!15726 (left!56517 Conc!15726) (right!56847 Conc!15726) (csize!31682 Int) (cheight!15937 Int)) (Leaf!29970 (xs!19108 IArray!31513) (csize!31683 Int)) (Empty!15726) )
))
(declare-datatypes ((BalanceConc!30570 0))(
  ( (BalanceConc!30571 (c!1449733 Conc!15726)) )
))
(declare-datatypes ((List!74177 0))(
  ( (Nil!74053) (Cons!74053 (h!80501 (_ BitVec 16)) (t!388986 List!74177)) )
))
(declare-datatypes ((TokenValue!8868 0))(
  ( (FloatLiteralValue!17736 (text!62521 List!74177)) (TokenValueExt!8867 (__x!35024 Int)) (Broken!44340 (value!285687 List!74177)) (Object!8991) (End!8868) (Def!8868) (Underscore!8868) (Match!8868) (Else!8868) (Error!8868) (Case!8868) (If!8868) (Extends!8868) (Abstract!8868) (Class!8868) (Val!8868) (DelimiterValue!17736 (del!8928 List!74177)) (KeywordValue!8874 (value!285688 List!74177)) (CommentValue!17736 (value!285689 List!74177)) (WhitespaceValue!17736 (value!285690 List!74177)) (IndentationValue!8868 (value!285691 List!74177)) (String!82761) (Int32!8868) (Broken!44341 (value!285692 List!74177)) (Boolean!8869) (Unit!169070) (OperatorValue!8871 (op!8928 List!74177)) (IdentifierValue!17736 (value!285693 List!74177)) (IdentifierValue!17737 (value!285694 List!74177)) (WhitespaceValue!17737 (value!285695 List!74177)) (True!17736) (False!17736) (Broken!44342 (value!285696 List!74177)) (Broken!44343 (value!285697 List!74177)) (True!17737) (RightBrace!8868) (RightBracket!8868) (Colon!8868) (Null!8868) (Comma!8868) (LeftBracket!8868) (False!17737) (LeftBrace!8868) (ImaginaryLiteralValue!8868 (text!62522 List!74177)) (StringLiteralValue!26604 (value!285698 List!74177)) (EOFValue!8868 (value!285699 List!74177)) (IdentValue!8868 (value!285700 List!74177)) (DelimiterValue!17737 (value!285701 List!74177)) (DedentValue!8868 (value!285702 List!74177)) (NewLineValue!8868 (value!285703 List!74177)) (IntegerValue!26604 (value!285704 (_ BitVec 32)) (text!62523 List!74177)) (IntegerValue!26605 (value!285705 Int) (text!62524 List!74177)) (Times!8868) (Or!8868) (Equal!8868) (Minus!8868) (Broken!44344 (value!285706 List!74177)) (And!8868) (Div!8868) (LessEqual!8868) (Mod!8868) (Concat!30123) (Not!8868) (Plus!8868) (SpaceValue!8868 (value!285707 List!74177)) (IntegerValue!26606 (value!285708 Int) (text!62525 List!74177)) (StringLiteralValue!26605 (text!62526 List!74177)) (FloatLiteralValue!17737 (text!62527 List!74177)) (BytesLiteralValue!8868 (value!285709 List!74177)) (CommentValue!17737 (value!285710 List!74177)) (StringLiteralValue!26606 (value!285711 List!74177)) (ErrorTokenValue!8868 (msg!8929 List!74177)) )
))
(declare-datatypes ((Regex!21255 0))(
  ( (ElementMatch!21255 (c!1449734 C!42840)) (Concat!30124 (regOne!43022 Regex!21255) (regTwo!43022 Regex!21255)) (EmptyExpr!21255) (Star!21255 (reg!21584 Regex!21255)) (EmptyLang!21255) (Union!21255 (regOne!43023 Regex!21255) (regTwo!43023 Regex!21255)) )
))
(declare-datatypes ((String!82762 0))(
  ( (String!82763 (value!285712 String)) )
))
(declare-datatypes ((TokenValueInjection!17044 0))(
  ( (TokenValueInjection!17045 (toValue!11593 Int) (toChars!11452 Int)) )
))
(declare-datatypes ((Rule!16904 0))(
  ( (Rule!16905 (regex!8552 Regex!21255) (tag!9416 String!82762) (isSeparator!8552 Bool) (transformation!8552 TokenValueInjection!17044)) )
))
(declare-datatypes ((List!74178 0))(
  ( (Nil!74054) (Cons!74054 (h!80502 Rule!16904) (t!388987 List!74178)) )
))
(declare-fun rulesArg!141 () List!74178)

(declare-datatypes ((Token!15524 0))(
  ( (Token!15525 (value!285713 TokenValue!8868) (rule!11836 Rule!16904) (size!42899 Int) (originalCharacters!8793 List!74176)) )
))
(declare-datatypes ((tuple2!70122 0))(
  ( (tuple2!70123 (_1!38364 Token!15524) (_2!38364 List!74176)) )
))
(declare-datatypes ((Option!17834 0))(
  ( (None!17833) (Some!17833 (v!54970 tuple2!70122)) )
))
(declare-fun lt!2682414 () Option!17834)

(declare-fun maxPrefix!4685 (LexerInterface!8144 List!74178 List!74176) Option!17834)

(assert (=> b!7898987 (= lt!2682414 (maxPrefix!4685 thiss!14377 (t!388987 rulesArg!141) input!1184))))

(declare-fun lt!2682415 () Option!17834)

(declare-fun maxPrefixOneRule!3732 (LexerInterface!8144 Rule!16904 List!74176) Option!17834)

(assert (=> b!7898987 (= lt!2682415 (maxPrefixOneRule!3732 thiss!14377 (h!80502 rulesArg!141) input!1184))))

(declare-fun tp!2353330 () Bool)

(declare-fun e!4662414 () Bool)

(declare-fun e!4662415 () Bool)

(declare-fun b!7898988 () Bool)

(declare-fun inv!95042 (String!82762) Bool)

(declare-fun inv!95044 (TokenValueInjection!17044) Bool)

(assert (=> b!7898988 (= e!4662415 (and tp!2353330 (inv!95042 (tag!9416 (h!80502 rulesArg!141))) (inv!95044 (transformation!8552 (h!80502 rulesArg!141))) e!4662414))))

(declare-fun b!7898989 () Bool)

(declare-fun res!3133514 () Bool)

(declare-fun e!4662413 () Bool)

(assert (=> b!7898989 (=> (not res!3133514) (not e!4662413))))

(declare-fun rulesValidInductive!3363 (LexerInterface!8144 List!74178) Bool)

(assert (=> b!7898989 (= res!3133514 (rulesValidInductive!3363 thiss!14377 rulesArg!141))))

(declare-fun b!7898990 () Bool)

(assert (=> b!7898990 (= e!4662413 (not e!4662412))))

(declare-fun res!3133515 () Bool)

(assert (=> b!7898990 (=> res!3133515 e!4662412)))

(get-info :version)

(assert (=> b!7898990 (= res!3133515 (or (and ((_ is Cons!74054) rulesArg!141) ((_ is Nil!74054) (t!388987 rulesArg!141))) (not ((_ is Cons!74054) rulesArg!141))))))

(declare-fun isPrefix!6385 (List!74176 List!74176) Bool)

(assert (=> b!7898990 (isPrefix!6385 input!1184 input!1184)))

(declare-datatypes ((Unit!169071 0))(
  ( (Unit!169072) )
))
(declare-fun lt!2682416 () Unit!169071)

(declare-fun lemmaIsPrefixRefl!3896 (List!74176 List!74176) Unit!169071)

(assert (=> b!7898990 (= lt!2682416 (lemmaIsPrefixRefl!3896 input!1184 input!1184))))

(declare-fun b!7898991 () Bool)

(declare-fun res!3133513 () Bool)

(assert (=> b!7898991 (=> (not res!3133513) (not e!4662413))))

(declare-fun isEmpty!42481 (List!74178) Bool)

(assert (=> b!7898991 (= res!3133513 (not (isEmpty!42481 rulesArg!141)))))

(declare-fun b!7898992 () Bool)

(declare-fun e!4662411 () Bool)

(declare-fun tp_is_empty!52885 () Bool)

(declare-fun tp!2353327 () Bool)

(assert (=> b!7898992 (= e!4662411 (and tp_is_empty!52885 tp!2353327))))

(assert (=> b!7898993 (= e!4662414 (and tp!2353326 tp!2353328))))

(declare-fun res!3133512 () Bool)

(assert (=> start!745100 (=> (not res!3133512) (not e!4662413))))

(assert (=> start!745100 (= res!3133512 ((_ is Lexer!8142) thiss!14377))))

(assert (=> start!745100 e!4662413))

(assert (=> start!745100 true))

(declare-fun e!4662416 () Bool)

(assert (=> start!745100 e!4662416))

(assert (=> start!745100 e!4662411))

(declare-fun b!7898994 () Bool)

(declare-fun tp!2353329 () Bool)

(assert (=> b!7898994 (= e!4662416 (and e!4662415 tp!2353329))))

(assert (= (and start!745100 res!3133512) b!7898989))

(assert (= (and b!7898989 res!3133514) b!7898991))

(assert (= (and b!7898991 res!3133513) b!7898990))

(assert (= (and b!7898990 (not res!3133515)) b!7898987))

(assert (= b!7898988 b!7898993))

(assert (= b!7898994 b!7898988))

(assert (= (and start!745100 ((_ is Cons!74054) rulesArg!141)) b!7898994))

(assert (= (and start!745100 ((_ is Cons!74052) input!1184)) b!7898992))

(declare-fun m!8273892 () Bool)

(assert (=> b!7898989 m!8273892))

(declare-fun m!8273894 () Bool)

(assert (=> b!7898987 m!8273894))

(declare-fun m!8273896 () Bool)

(assert (=> b!7898987 m!8273896))

(declare-fun m!8273898 () Bool)

(assert (=> b!7898990 m!8273898))

(declare-fun m!8273900 () Bool)

(assert (=> b!7898990 m!8273900))

(declare-fun m!8273902 () Bool)

(assert (=> b!7898991 m!8273902))

(declare-fun m!8273904 () Bool)

(assert (=> b!7898988 m!8273904))

(declare-fun m!8273906 () Bool)

(assert (=> b!7898988 m!8273906))

(check-sat (not b!7898992) (not b!7898988) (not b_next!135359) (not b_next!135357) (not b!7898994) (not b!7898991) (not b!7898989) (not b!7898987) (not b!7898990) b_and!352469 tp_is_empty!52885 b_and!352467)
(check-sat b_and!352469 b_and!352467 (not b_next!135359) (not b_next!135357))
