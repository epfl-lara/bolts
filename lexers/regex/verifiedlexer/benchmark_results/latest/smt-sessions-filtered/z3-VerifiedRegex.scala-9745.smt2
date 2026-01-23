; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510708 () Bool)

(assert start!510708)

(declare-fun b!4881401 () Bool)

(declare-fun b_free!130891 () Bool)

(declare-fun b_next!131681 () Bool)

(assert (=> b!4881401 (= b_free!130891 (not b_next!131681))))

(declare-fun tp!1373300 () Bool)

(declare-fun b_and!343723 () Bool)

(assert (=> b!4881401 (= tp!1373300 b_and!343723)))

(declare-fun b_free!130893 () Bool)

(declare-fun b_next!131683 () Bool)

(assert (=> b!4881401 (= b_free!130893 (not b_next!131683))))

(declare-fun tp!1373298 () Bool)

(declare-fun b_and!343725 () Bool)

(assert (=> b!4881401 (= tp!1373298 b_and!343725)))

(declare-fun b!4881398 () Bool)

(declare-fun res!2083697 () Bool)

(declare-fun e!3050682 () Bool)

(assert (=> b!4881398 (=> (not res!2083697) (not e!3050682))))

(declare-datatypes ((C!26464 0))(
  ( (C!26465 (val!22566 Int)) )
))
(declare-datatypes ((List!56179 0))(
  ( (Nil!56055) (Cons!56055 (h!62503 C!26464) (t!364825 List!56179)) )
))
(declare-datatypes ((IArray!29313 0))(
  ( (IArray!29314 (innerList!14714 List!56179)) )
))
(declare-datatypes ((Conc!14626 0))(
  ( (Node!14626 (left!40729 Conc!14626) (right!41059 Conc!14626) (csize!29482 Int) (cheight!14837 Int)) (Leaf!24372 (xs!17942 IArray!29313) (csize!29483 Int)) (Empty!14626) )
))
(declare-datatypes ((BalanceConc!28682 0))(
  ( (BalanceConc!28683 (c!830283 Conc!14626)) )
))
(declare-datatypes ((List!56180 0))(
  ( (Nil!56056) (Cons!56056 (h!62504 (_ BitVec 16)) (t!364826 List!56180)) )
))
(declare-datatypes ((TokenValue!8368 0))(
  ( (FloatLiteralValue!16736 (text!59021 List!56180)) (TokenValueExt!8367 (__x!34029 Int)) (Broken!41840 (value!258781 List!56180)) (Object!8491) (End!8368) (Def!8368) (Underscore!8368) (Match!8368) (Else!8368) (Error!8368) (Case!8368) (If!8368) (Extends!8368) (Abstract!8368) (Class!8368) (Val!8368) (DelimiterValue!16736 (del!8428 List!56180)) (KeywordValue!8374 (value!258782 List!56180)) (CommentValue!16736 (value!258783 List!56180)) (WhitespaceValue!16736 (value!258784 List!56180)) (IndentationValue!8368 (value!258785 List!56180)) (String!63281) (Int32!8368) (Broken!41841 (value!258786 List!56180)) (Boolean!8369) (Unit!146045) (OperatorValue!8371 (op!8428 List!56180)) (IdentifierValue!16736 (value!258787 List!56180)) (IdentifierValue!16737 (value!258788 List!56180)) (WhitespaceValue!16737 (value!258789 List!56180)) (True!16736) (False!16736) (Broken!41842 (value!258790 List!56180)) (Broken!41843 (value!258791 List!56180)) (True!16737) (RightBrace!8368) (RightBracket!8368) (Colon!8368) (Null!8368) (Comma!8368) (LeftBracket!8368) (False!16737) (LeftBrace!8368) (ImaginaryLiteralValue!8368 (text!59022 List!56180)) (StringLiteralValue!25104 (value!258792 List!56180)) (EOFValue!8368 (value!258793 List!56180)) (IdentValue!8368 (value!258794 List!56180)) (DelimiterValue!16737 (value!258795 List!56180)) (DedentValue!8368 (value!258796 List!56180)) (NewLineValue!8368 (value!258797 List!56180)) (IntegerValue!25104 (value!258798 (_ BitVec 32)) (text!59023 List!56180)) (IntegerValue!25105 (value!258799 Int) (text!59024 List!56180)) (Times!8368) (Or!8368) (Equal!8368) (Minus!8368) (Broken!41844 (value!258800 List!56180)) (And!8368) (Div!8368) (LessEqual!8368) (Mod!8368) (Concat!21501) (Not!8368) (Plus!8368) (SpaceValue!8368 (value!258801 List!56180)) (IntegerValue!25106 (value!258802 Int) (text!59025 List!56180)) (StringLiteralValue!25105 (text!59026 List!56180)) (FloatLiteralValue!16737 (text!59027 List!56180)) (BytesLiteralValue!8368 (value!258803 List!56180)) (CommentValue!16737 (value!258804 List!56180)) (StringLiteralValue!25106 (value!258805 List!56180)) (ErrorTokenValue!8368 (msg!8429 List!56180)) )
))
(declare-datatypes ((Regex!13133 0))(
  ( (ElementMatch!13133 (c!830284 C!26464)) (Concat!21502 (regOne!26778 Regex!13133) (regTwo!26778 Regex!13133)) (EmptyExpr!13133) (Star!13133 (reg!13462 Regex!13133)) (EmptyLang!13133) (Union!13133 (regOne!26779 Regex!13133) (regTwo!26779 Regex!13133)) )
))
(declare-datatypes ((String!63282 0))(
  ( (String!63283 (value!258806 String)) )
))
(declare-datatypes ((TokenValueInjection!16044 0))(
  ( (TokenValueInjection!16045 (toValue!10945 Int) (toChars!10804 Int)) )
))
(declare-datatypes ((Rule!15916 0))(
  ( (Rule!15917 (regex!8058 Regex!13133) (tag!8922 String!63282) (isSeparator!8058 Bool) (transformation!8058 TokenValueInjection!16044)) )
))
(declare-datatypes ((List!56181 0))(
  ( (Nil!56057) (Cons!56057 (h!62505 Rule!15916) (t!364827 List!56181)) )
))
(declare-fun rulesArg!165 () List!56181)

(declare-fun isEmpty!30041 (List!56181) Bool)

(assert (=> b!4881398 (= res!2083697 (not (isEmpty!30041 rulesArg!165)))))

(declare-fun b!4881399 () Bool)

(declare-fun e!3050681 () Bool)

(assert (=> b!4881399 (= e!3050681 true)))

(declare-datatypes ((LexerInterface!7650 0))(
  ( (LexerInterfaceExt!7647 (__x!34030 Int)) (Lexer!7648) )
))
(declare-fun thiss!14805 () LexerInterface!7650)

(declare-fun input!1236 () BalanceConc!28682)

(declare-datatypes ((Token!14688 0))(
  ( (Token!14689 (value!258807 TokenValue!8368) (rule!11214 Rule!15916) (size!36966 Int) (originalCharacters!8375 List!56179)) )
))
(declare-datatypes ((tuple2!59924 0))(
  ( (tuple2!59925 (_1!33265 Token!14688) (_2!33265 BalanceConc!28682)) )
))
(declare-datatypes ((Option!13809 0))(
  ( (None!13808) (Some!13808 (v!49758 tuple2!59924)) )
))
(declare-fun lt!1999439 () Option!13809)

(declare-fun maxPrefixOneRuleZipperSequence!586 (LexerInterface!7650 Rule!15916 BalanceConc!28682) Option!13809)

(assert (=> b!4881399 (= lt!1999439 (maxPrefixOneRuleZipperSequence!586 thiss!14805 (h!62505 rulesArg!165) input!1236))))

(declare-fun b!4881400 () Bool)

(declare-fun e!3050686 () Bool)

(declare-fun e!3050687 () Bool)

(declare-fun tp!1373301 () Bool)

(assert (=> b!4881400 (= e!3050686 (and e!3050687 tp!1373301))))

(declare-fun e!3050684 () Bool)

(assert (=> b!4881401 (= e!3050684 (and tp!1373300 tp!1373298))))

(declare-fun tp!1373299 () Bool)

(declare-fun b!4881402 () Bool)

(declare-fun inv!72061 (String!63282) Bool)

(declare-fun inv!72065 (TokenValueInjection!16044) Bool)

(assert (=> b!4881402 (= e!3050687 (and tp!1373299 (inv!72061 (tag!8922 (h!62505 rulesArg!165))) (inv!72065 (transformation!8058 (h!62505 rulesArg!165))) e!3050684))))

(declare-fun b!4881403 () Bool)

(assert (=> b!4881403 (= e!3050682 (not e!3050681))))

(declare-fun res!2083695 () Bool)

(assert (=> b!4881403 (=> res!2083695 e!3050681)))

(get-info :version)

(assert (=> b!4881403 (= res!2083695 (or (not ((_ is Cons!56057) rulesArg!165)) (not ((_ is Nil!56057) (t!364827 rulesArg!165)))))))

(declare-fun lt!1999438 () List!56179)

(declare-fun isPrefix!4780 (List!56179 List!56179) Bool)

(assert (=> b!4881403 (isPrefix!4780 lt!1999438 lt!1999438)))

(declare-datatypes ((Unit!146046 0))(
  ( (Unit!146047) )
))
(declare-fun lt!1999440 () Unit!146046)

(declare-fun lemmaIsPrefixRefl!3177 (List!56179 List!56179) Unit!146046)

(assert (=> b!4881403 (= lt!1999440 (lemmaIsPrefixRefl!3177 lt!1999438 lt!1999438))))

(declare-fun list!17576 (BalanceConc!28682) List!56179)

(assert (=> b!4881403 (= lt!1999438 (list!17576 input!1236))))

(declare-fun b!4881404 () Bool)

(declare-fun e!3050685 () Bool)

(declare-fun tp!1373297 () Bool)

(declare-fun inv!72066 (Conc!14626) Bool)

(assert (=> b!4881404 (= e!3050685 (and (inv!72066 (c!830283 input!1236)) tp!1373297))))

(declare-fun b!4881405 () Bool)

(declare-fun res!2083696 () Bool)

(assert (=> b!4881405 (=> (not res!2083696) (not e!3050682))))

(declare-fun rulesValidInductive!3037 (LexerInterface!7650 List!56181) Bool)

(assert (=> b!4881405 (= res!2083696 (rulesValidInductive!3037 thiss!14805 rulesArg!165))))

(declare-fun res!2083698 () Bool)

(assert (=> start!510708 (=> (not res!2083698) (not e!3050682))))

(assert (=> start!510708 (= res!2083698 ((_ is Lexer!7648) thiss!14805))))

(assert (=> start!510708 e!3050682))

(assert (=> start!510708 true))

(assert (=> start!510708 e!3050686))

(declare-fun inv!72067 (BalanceConc!28682) Bool)

(assert (=> start!510708 (and (inv!72067 input!1236) e!3050685)))

(assert (= (and start!510708 res!2083698) b!4881405))

(assert (= (and b!4881405 res!2083696) b!4881398))

(assert (= (and b!4881398 res!2083697) b!4881403))

(assert (= (and b!4881403 (not res!2083695)) b!4881399))

(assert (= b!4881402 b!4881401))

(assert (= b!4881400 b!4881402))

(assert (= (and start!510708 ((_ is Cons!56057) rulesArg!165)) b!4881400))

(assert (= start!510708 b!4881404))

(declare-fun m!5885650 () Bool)

(assert (=> b!4881398 m!5885650))

(declare-fun m!5885652 () Bool)

(assert (=> b!4881404 m!5885652))

(declare-fun m!5885654 () Bool)

(assert (=> b!4881405 m!5885654))

(declare-fun m!5885656 () Bool)

(assert (=> b!4881399 m!5885656))

(declare-fun m!5885658 () Bool)

(assert (=> b!4881403 m!5885658))

(declare-fun m!5885660 () Bool)

(assert (=> b!4881403 m!5885660))

(declare-fun m!5885662 () Bool)

(assert (=> b!4881403 m!5885662))

(declare-fun m!5885664 () Bool)

(assert (=> start!510708 m!5885664))

(declare-fun m!5885666 () Bool)

(assert (=> b!4881402 m!5885666))

(declare-fun m!5885668 () Bool)

(assert (=> b!4881402 m!5885668))

(check-sat (not b!4881405) (not b!4881400) (not start!510708) (not b!4881402) (not b_next!131681) (not b!4881398) (not b!4881403) (not b!4881404) b_and!343725 b_and!343723 (not b!4881399) (not b_next!131683))
(check-sat b_and!343725 b_and!343723 (not b_next!131681) (not b_next!131683))
