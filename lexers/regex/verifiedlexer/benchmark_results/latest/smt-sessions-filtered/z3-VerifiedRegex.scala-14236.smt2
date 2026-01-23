; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744864 () Bool)

(assert start!744864)

(declare-fun b!7897415 () Bool)

(declare-fun b_free!134479 () Bool)

(declare-fun b_next!135269 () Bool)

(assert (=> b!7897415 (= b_free!134479 (not b_next!135269))))

(declare-fun tp!2352839 () Bool)

(declare-fun b_and!352331 () Bool)

(assert (=> b!7897415 (= tp!2352839 b_and!352331)))

(declare-fun b_free!134481 () Bool)

(declare-fun b_next!135271 () Bool)

(assert (=> b!7897415 (= b_free!134481 (not b_next!135271))))

(declare-fun tp!2352840 () Bool)

(declare-fun b_and!352333 () Bool)

(assert (=> b!7897415 (= tp!2352840 b_and!352333)))

(declare-fun b!7897404 () Bool)

(declare-fun e!4661403 () Bool)

(declare-fun e!4661408 () Bool)

(declare-fun tp!2352838 () Bool)

(assert (=> b!7897404 (= e!4661403 (and e!4661408 tp!2352838))))

(declare-fun b!7897405 () Bool)

(declare-fun res!3132730 () Bool)

(declare-fun e!4661405 () Bool)

(assert (=> b!7897405 (=> res!3132730 e!4661405)))

(declare-datatypes ((List!74134 0))(
  ( (Nil!74010) (Cons!74010 (h!80458 (_ BitVec 16)) (t!388869 List!74134)) )
))
(declare-datatypes ((TokenValue!8854 0))(
  ( (FloatLiteralValue!17708 (text!62423 List!74134)) (TokenValueExt!8853 (__x!34995 Int)) (Broken!44270 (value!285288 List!74134)) (Object!8977) (End!8854) (Def!8854) (Underscore!8854) (Match!8854) (Else!8854) (Error!8854) (Case!8854) (If!8854) (Extends!8854) (Abstract!8854) (Class!8854) (Val!8854) (DelimiterValue!17708 (del!8914 List!74134)) (KeywordValue!8860 (value!285289 List!74134)) (CommentValue!17708 (value!285290 List!74134)) (WhitespaceValue!17708 (value!285291 List!74134)) (IndentationValue!8854 (value!285292 List!74134)) (String!82691) (Int32!8854) (Broken!44271 (value!285293 List!74134)) (Boolean!8855) (Unit!169025) (OperatorValue!8857 (op!8914 List!74134)) (IdentifierValue!17708 (value!285294 List!74134)) (IdentifierValue!17709 (value!285295 List!74134)) (WhitespaceValue!17709 (value!285296 List!74134)) (True!17708) (False!17708) (Broken!44272 (value!285297 List!74134)) (Broken!44273 (value!285298 List!74134)) (True!17709) (RightBrace!8854) (RightBracket!8854) (Colon!8854) (Null!8854) (Comma!8854) (LeftBracket!8854) (False!17709) (LeftBrace!8854) (ImaginaryLiteralValue!8854 (text!62424 List!74134)) (StringLiteralValue!26562 (value!285299 List!74134)) (EOFValue!8854 (value!285300 List!74134)) (IdentValue!8854 (value!285301 List!74134)) (DelimiterValue!17709 (value!285302 List!74134)) (DedentValue!8854 (value!285303 List!74134)) (NewLineValue!8854 (value!285304 List!74134)) (IntegerValue!26562 (value!285305 (_ BitVec 32)) (text!62425 List!74134)) (IntegerValue!26563 (value!285306 Int) (text!62426 List!74134)) (Times!8854) (Or!8854) (Equal!8854) (Minus!8854) (Broken!44274 (value!285307 List!74134)) (And!8854) (Div!8854) (LessEqual!8854) (Mod!8854) (Concat!30095) (Not!8854) (Plus!8854) (SpaceValue!8854 (value!285308 List!74134)) (IntegerValue!26564 (value!285309 Int) (text!62427 List!74134)) (StringLiteralValue!26563 (text!62428 List!74134)) (FloatLiteralValue!17709 (text!62429 List!74134)) (BytesLiteralValue!8854 (value!285310 List!74134)) (CommentValue!17709 (value!285311 List!74134)) (StringLiteralValue!26564 (value!285312 List!74134)) (ErrorTokenValue!8854 (msg!8915 List!74134)) )
))
(declare-datatypes ((C!42812 0))(
  ( (C!42813 (val!31870 Int)) )
))
(declare-datatypes ((List!74135 0))(
  ( (Nil!74011) (Cons!74011 (h!80459 C!42812) (t!388870 List!74135)) )
))
(declare-datatypes ((IArray!31485 0))(
  ( (IArray!31486 (innerList!15800 List!74135)) )
))
(declare-datatypes ((Conc!15712 0))(
  ( (Node!15712 (left!56484 Conc!15712) (right!56814 Conc!15712) (csize!31654 Int) (cheight!15923 Int)) (Leaf!29949 (xs!19094 IArray!31485) (csize!31655 Int)) (Empty!15712) )
))
(declare-datatypes ((BalanceConc!30542 0))(
  ( (BalanceConc!30543 (c!1449519 Conc!15712)) )
))
(declare-datatypes ((String!82692 0))(
  ( (String!82693 (value!285313 String)) )
))
(declare-datatypes ((Regex!21241 0))(
  ( (ElementMatch!21241 (c!1449520 C!42812)) (Concat!30096 (regOne!42994 Regex!21241) (regTwo!42994 Regex!21241)) (EmptyExpr!21241) (Star!21241 (reg!21570 Regex!21241)) (EmptyLang!21241) (Union!21241 (regOne!42995 Regex!21241) (regTwo!42995 Regex!21241)) )
))
(declare-datatypes ((TokenValueInjection!17016 0))(
  ( (TokenValueInjection!17017 (toValue!11575 Int) (toChars!11434 Int)) )
))
(declare-datatypes ((Rule!16876 0))(
  ( (Rule!16877 (regex!8538 Regex!21241) (tag!9402 String!82692) (isSeparator!8538 Bool) (transformation!8538 TokenValueInjection!17016)) )
))
(declare-datatypes ((Token!15496 0))(
  ( (Token!15497 (value!285314 TokenValue!8854) (rule!11816 Rule!16876) (size!42869 Int) (originalCharacters!8779 List!74135)) )
))
(declare-datatypes ((tuple2!70084 0))(
  ( (tuple2!70085 (_1!38345 Token!15496) (_2!38345 List!74135)) )
))
(declare-datatypes ((Option!17820 0))(
  ( (None!17819) (Some!17819 (v!54956 tuple2!70084)) )
))
(declare-fun lt!2681850 () Option!17820)

(declare-fun isDefined!14416 (Option!17820) Bool)

(assert (=> b!7897405 (= res!3132730 (not (isDefined!14416 lt!2681850)))))

(declare-fun b!7897406 () Bool)

(declare-fun e!4661409 () Bool)

(declare-fun e!4661402 () Bool)

(assert (=> b!7897406 (= e!4661409 (not e!4661402))))

(declare-fun res!3132736 () Bool)

(assert (=> b!7897406 (=> res!3132736 e!4661402)))

(declare-datatypes ((List!74136 0))(
  ( (Nil!74012) (Cons!74012 (h!80460 Rule!16876) (t!388871 List!74136)) )
))
(declare-fun rulesArg!141 () List!74136)

(get-info :version)

(assert (=> b!7897406 (= res!3132736 (or (not ((_ is Cons!74012) rulesArg!141)) (not ((_ is Nil!74012) (t!388871 rulesArg!141)))))))

(declare-fun input!1184 () List!74135)

(declare-fun isPrefix!6371 (List!74135 List!74135) Bool)

(assert (=> b!7897406 (isPrefix!6371 input!1184 input!1184)))

(declare-datatypes ((Unit!169026 0))(
  ( (Unit!169027) )
))
(declare-fun lt!2681849 () Unit!169026)

(declare-fun lemmaIsPrefixRefl!3882 (List!74135 List!74135) Unit!169026)

(assert (=> b!7897406 (= lt!2681849 (lemmaIsPrefixRefl!3882 input!1184 input!1184))))

(declare-fun b!7897407 () Bool)

(declare-fun e!4661410 () Bool)

(declare-fun tp_is_empty!52857 () Bool)

(declare-fun tp!2352841 () Bool)

(assert (=> b!7897407 (= e!4661410 (and tp_is_empty!52857 tp!2352841))))

(declare-fun b!7897408 () Bool)

(declare-fun res!3132733 () Bool)

(assert (=> b!7897408 (=> (not res!3132733) (not e!4661409))))

(declare-fun isEmpty!42452 (List!74136) Bool)

(assert (=> b!7897408 (= res!3132733 (not (isEmpty!42452 rulesArg!141)))))

(declare-fun b!7897410 () Bool)

(assert (=> b!7897410 (= e!4661402 e!4661405)))

(declare-fun res!3132735 () Bool)

(assert (=> b!7897410 (=> res!3132735 e!4661405)))

(declare-fun isEmpty!42453 (Option!17820) Bool)

(assert (=> b!7897410 (= res!3132735 (isEmpty!42453 lt!2681850))))

(declare-datatypes ((LexerInterface!8130 0))(
  ( (LexerInterfaceExt!8127 (__x!34996 Int)) (Lexer!8128) )
))
(declare-fun thiss!14377 () LexerInterface!8130)

(declare-fun maxPrefixOneRule!3718 (LexerInterface!8130 Rule!16876 List!74135) Option!17820)

(assert (=> b!7897410 (= lt!2681850 (maxPrefixOneRule!3718 thiss!14377 (h!80460 rulesArg!141) input!1184))))

(declare-fun b!7897411 () Bool)

(declare-fun res!3132731 () Bool)

(declare-fun e!4661406 () Bool)

(assert (=> b!7897411 (=> res!3132731 e!4661406)))

(declare-fun lt!2681848 () tuple2!70084)

(declare-fun lt!2681847 () List!74135)

(declare-fun ++!18121 (List!74135 List!74135) List!74135)

(assert (=> b!7897411 (= res!3132731 (not (= (++!18121 lt!2681847 (_2!38345 lt!2681848)) input!1184)))))

(declare-fun b!7897412 () Bool)

(declare-fun e!4661407 () Bool)

(declare-fun tp!2352842 () Bool)

(declare-fun inv!94998 (String!82692) Bool)

(declare-fun inv!95000 (TokenValueInjection!17016) Bool)

(assert (=> b!7897412 (= e!4661408 (and tp!2352842 (inv!94998 (tag!9402 (h!80460 rulesArg!141))) (inv!95000 (transformation!8538 (h!80460 rulesArg!141))) e!4661407))))

(declare-fun b!7897409 () Bool)

(assert (=> b!7897409 (= e!4661406 true)))

(declare-fun res!3132734 () Bool)

(assert (=> start!744864 (=> (not res!3132734) (not e!4661409))))

(assert (=> start!744864 (= res!3132734 ((_ is Lexer!8128) thiss!14377))))

(assert (=> start!744864 e!4661409))

(assert (=> start!744864 true))

(assert (=> start!744864 e!4661403))

(assert (=> start!744864 e!4661410))

(declare-fun b!7897413 () Bool)

(assert (=> b!7897413 (= e!4661405 e!4661406)))

(declare-fun res!3132729 () Bool)

(assert (=> b!7897413 (=> res!3132729 e!4661406)))

(assert (=> b!7897413 (= res!3132729 (not (= lt!2681847 (originalCharacters!8779 (_1!38345 lt!2681848)))))))

(declare-fun list!19159 (BalanceConc!30542) List!74135)

(declare-fun charsOf!5487 (Token!15496) BalanceConc!30542)

(assert (=> b!7897413 (= lt!2681847 (list!19159 (charsOf!5487 (_1!38345 lt!2681848))))))

(declare-fun get!26566 (Option!17820) tuple2!70084)

(assert (=> b!7897413 (= lt!2681848 (get!26566 lt!2681850))))

(declare-fun b!7897414 () Bool)

(declare-fun res!3132732 () Bool)

(assert (=> b!7897414 (=> res!3132732 e!4661406)))

(declare-fun size!42870 (List!74135) Int)

(assert (=> b!7897414 (= res!3132732 (>= (size!42870 (_2!38345 lt!2681848)) (size!42870 input!1184)))))

(assert (=> b!7897415 (= e!4661407 (and tp!2352839 tp!2352840))))

(declare-fun b!7897416 () Bool)

(declare-fun res!3132728 () Bool)

(assert (=> b!7897416 (=> (not res!3132728) (not e!4661409))))

(declare-fun rulesValidInductive!3349 (LexerInterface!8130 List!74136) Bool)

(assert (=> b!7897416 (= res!3132728 (rulesValidInductive!3349 thiss!14377 rulesArg!141))))

(assert (= (and start!744864 res!3132734) b!7897416))

(assert (= (and b!7897416 res!3132728) b!7897408))

(assert (= (and b!7897408 res!3132733) b!7897406))

(assert (= (and b!7897406 (not res!3132736)) b!7897410))

(assert (= (and b!7897410 (not res!3132735)) b!7897405))

(assert (= (and b!7897405 (not res!3132730)) b!7897413))

(assert (= (and b!7897413 (not res!3132729)) b!7897414))

(assert (= (and b!7897414 (not res!3132732)) b!7897411))

(assert (= (and b!7897411 (not res!3132731)) b!7897409))

(assert (= b!7897412 b!7897415))

(assert (= b!7897404 b!7897412))

(assert (= (and start!744864 ((_ is Cons!74012) rulesArg!141)) b!7897404))

(assert (= (and start!744864 ((_ is Cons!74011) input!1184)) b!7897407))

(declare-fun m!8272558 () Bool)

(assert (=> b!7897410 m!8272558))

(declare-fun m!8272560 () Bool)

(assert (=> b!7897410 m!8272560))

(declare-fun m!8272562 () Bool)

(assert (=> b!7897413 m!8272562))

(assert (=> b!7897413 m!8272562))

(declare-fun m!8272564 () Bool)

(assert (=> b!7897413 m!8272564))

(declare-fun m!8272566 () Bool)

(assert (=> b!7897413 m!8272566))

(declare-fun m!8272568 () Bool)

(assert (=> b!7897416 m!8272568))

(declare-fun m!8272570 () Bool)

(assert (=> b!7897405 m!8272570))

(declare-fun m!8272572 () Bool)

(assert (=> b!7897406 m!8272572))

(declare-fun m!8272574 () Bool)

(assert (=> b!7897406 m!8272574))

(declare-fun m!8272576 () Bool)

(assert (=> b!7897412 m!8272576))

(declare-fun m!8272578 () Bool)

(assert (=> b!7897412 m!8272578))

(declare-fun m!8272580 () Bool)

(assert (=> b!7897408 m!8272580))

(declare-fun m!8272582 () Bool)

(assert (=> b!7897414 m!8272582))

(declare-fun m!8272584 () Bool)

(assert (=> b!7897414 m!8272584))

(declare-fun m!8272586 () Bool)

(assert (=> b!7897411 m!8272586))

(check-sat (not b!7897405) (not b!7897414) (not b!7897404) (not b!7897406) (not b_next!135271) (not b!7897410) (not b!7897407) b_and!352331 (not b!7897408) tp_is_empty!52857 (not b!7897412) (not b!7897416) (not b!7897411) (not b_next!135269) b_and!352333 (not b!7897413))
(check-sat b_and!352333 b_and!352331 (not b_next!135271) (not b_next!135269))
