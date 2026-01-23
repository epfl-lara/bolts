; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744856 () Bool)

(assert start!744856)

(declare-fun b!7897270 () Bool)

(declare-fun b_free!134463 () Bool)

(declare-fun b_next!135253 () Bool)

(assert (=> b!7897270 (= b_free!134463 (not b_next!135253))))

(declare-fun tp!2352781 () Bool)

(declare-fun b_and!352315 () Bool)

(assert (=> b!7897270 (= tp!2352781 b_and!352315)))

(declare-fun b_free!134465 () Bool)

(declare-fun b_next!135255 () Bool)

(assert (=> b!7897270 (= b_free!134465 (not b_next!135255))))

(declare-fun tp!2352778 () Bool)

(declare-fun b_and!352317 () Bool)

(assert (=> b!7897270 (= tp!2352778 b_and!352317)))

(declare-fun b!7897263 () Bool)

(declare-fun res!3132637 () Bool)

(declare-fun e!4661295 () Bool)

(assert (=> b!7897263 (=> res!3132637 e!4661295)))

(declare-datatypes ((List!74122 0))(
  ( (Nil!73998) (Cons!73998 (h!80446 (_ BitVec 16)) (t!388857 List!74122)) )
))
(declare-datatypes ((TokenValue!8850 0))(
  ( (FloatLiteralValue!17700 (text!62395 List!74122)) (TokenValueExt!8849 (__x!34987 Int)) (Broken!44250 (value!285174 List!74122)) (Object!8973) (End!8850) (Def!8850) (Underscore!8850) (Match!8850) (Else!8850) (Error!8850) (Case!8850) (If!8850) (Extends!8850) (Abstract!8850) (Class!8850) (Val!8850) (DelimiterValue!17700 (del!8910 List!74122)) (KeywordValue!8856 (value!285175 List!74122)) (CommentValue!17700 (value!285176 List!74122)) (WhitespaceValue!17700 (value!285177 List!74122)) (IndentationValue!8850 (value!285178 List!74122)) (String!82671) (Int32!8850) (Broken!44251 (value!285179 List!74122)) (Boolean!8851) (Unit!169013) (OperatorValue!8853 (op!8910 List!74122)) (IdentifierValue!17700 (value!285180 List!74122)) (IdentifierValue!17701 (value!285181 List!74122)) (WhitespaceValue!17701 (value!285182 List!74122)) (True!17700) (False!17700) (Broken!44252 (value!285183 List!74122)) (Broken!44253 (value!285184 List!74122)) (True!17701) (RightBrace!8850) (RightBracket!8850) (Colon!8850) (Null!8850) (Comma!8850) (LeftBracket!8850) (False!17701) (LeftBrace!8850) (ImaginaryLiteralValue!8850 (text!62396 List!74122)) (StringLiteralValue!26550 (value!285185 List!74122)) (EOFValue!8850 (value!285186 List!74122)) (IdentValue!8850 (value!285187 List!74122)) (DelimiterValue!17701 (value!285188 List!74122)) (DedentValue!8850 (value!285189 List!74122)) (NewLineValue!8850 (value!285190 List!74122)) (IntegerValue!26550 (value!285191 (_ BitVec 32)) (text!62397 List!74122)) (IntegerValue!26551 (value!285192 Int) (text!62398 List!74122)) (Times!8850) (Or!8850) (Equal!8850) (Minus!8850) (Broken!44254 (value!285193 List!74122)) (And!8850) (Div!8850) (LessEqual!8850) (Mod!8850) (Concat!30087) (Not!8850) (Plus!8850) (SpaceValue!8850 (value!285194 List!74122)) (IntegerValue!26552 (value!285195 Int) (text!62399 List!74122)) (StringLiteralValue!26551 (text!62400 List!74122)) (FloatLiteralValue!17701 (text!62401 List!74122)) (BytesLiteralValue!8850 (value!285196 List!74122)) (CommentValue!17701 (value!285197 List!74122)) (StringLiteralValue!26552 (value!285198 List!74122)) (ErrorTokenValue!8850 (msg!8911 List!74122)) )
))
(declare-datatypes ((C!42804 0))(
  ( (C!42805 (val!31866 Int)) )
))
(declare-datatypes ((List!74123 0))(
  ( (Nil!73999) (Cons!73999 (h!80447 C!42804) (t!388858 List!74123)) )
))
(declare-datatypes ((IArray!31477 0))(
  ( (IArray!31478 (innerList!15796 List!74123)) )
))
(declare-datatypes ((Conc!15708 0))(
  ( (Node!15708 (left!56478 Conc!15708) (right!56808 Conc!15708) (csize!31646 Int) (cheight!15919 Int)) (Leaf!29943 (xs!19090 IArray!31477) (csize!31647 Int)) (Empty!15708) )
))
(declare-datatypes ((BalanceConc!30534 0))(
  ( (BalanceConc!30535 (c!1449511 Conc!15708)) )
))
(declare-datatypes ((String!82672 0))(
  ( (String!82673 (value!285199 String)) )
))
(declare-datatypes ((Regex!21237 0))(
  ( (ElementMatch!21237 (c!1449512 C!42804)) (Concat!30088 (regOne!42986 Regex!21237) (regTwo!42986 Regex!21237)) (EmptyExpr!21237) (Star!21237 (reg!21566 Regex!21237)) (EmptyLang!21237) (Union!21237 (regOne!42987 Regex!21237) (regTwo!42987 Regex!21237)) )
))
(declare-datatypes ((TokenValueInjection!17008 0))(
  ( (TokenValueInjection!17009 (toValue!11571 Int) (toChars!11430 Int)) )
))
(declare-datatypes ((Rule!16868 0))(
  ( (Rule!16869 (regex!8534 Regex!21237) (tag!9398 String!82672) (isSeparator!8534 Bool) (transformation!8534 TokenValueInjection!17008)) )
))
(declare-datatypes ((Token!15488 0))(
  ( (Token!15489 (value!285200 TokenValue!8850) (rule!11812 Rule!16868) (size!42862 Int) (originalCharacters!8775 List!74123)) )
))
(declare-datatypes ((tuple2!70076 0))(
  ( (tuple2!70077 (_1!38341 Token!15488) (_2!38341 List!74123)) )
))
(declare-datatypes ((Option!17816 0))(
  ( (None!17815) (Some!17815 (v!54952 tuple2!70076)) )
))
(declare-fun lt!2681794 () Option!17816)

(declare-fun isDefined!14412 (Option!17816) Bool)

(assert (=> b!7897263 (= res!3132637 (not (isDefined!14412 lt!2681794)))))

(declare-fun b!7897264 () Bool)

(declare-fun e!4661299 () Bool)

(declare-fun e!4661297 () Bool)

(assert (=> b!7897264 (= e!4661299 (not e!4661297))))

(declare-fun res!3132635 () Bool)

(assert (=> b!7897264 (=> res!3132635 e!4661297)))

(declare-datatypes ((List!74124 0))(
  ( (Nil!74000) (Cons!74000 (h!80448 Rule!16868) (t!388859 List!74124)) )
))
(declare-fun rulesArg!141 () List!74124)

(get-info :version)

(assert (=> b!7897264 (= res!3132635 (or (not ((_ is Cons!74000) rulesArg!141)) (not ((_ is Nil!74000) (t!388859 rulesArg!141)))))))

(declare-fun input!1184 () List!74123)

(declare-fun isPrefix!6367 (List!74123 List!74123) Bool)

(assert (=> b!7897264 (isPrefix!6367 input!1184 input!1184)))

(declare-datatypes ((Unit!169014 0))(
  ( (Unit!169015) )
))
(declare-fun lt!2681795 () Unit!169014)

(declare-fun lemmaIsPrefixRefl!3878 (List!74123 List!74123) Unit!169014)

(assert (=> b!7897264 (= lt!2681795 (lemmaIsPrefixRefl!3878 input!1184 input!1184))))

(declare-fun b!7897265 () Bool)

(declare-fun res!3132639 () Bool)

(assert (=> b!7897265 (=> (not res!3132639) (not e!4661299))))

(declare-datatypes ((LexerInterface!8126 0))(
  ( (LexerInterfaceExt!8123 (__x!34988 Int)) (Lexer!8124) )
))
(declare-fun thiss!14377 () LexerInterface!8126)

(declare-fun rulesValidInductive!3345 (LexerInterface!8126 List!74124) Bool)

(assert (=> b!7897265 (= res!3132639 (rulesValidInductive!3345 thiss!14377 rulesArg!141))))

(declare-fun b!7897266 () Bool)

(declare-fun e!4661296 () Bool)

(declare-fun e!4661302 () Bool)

(declare-fun tp!2352780 () Bool)

(assert (=> b!7897266 (= e!4661296 (and e!4661302 tp!2352780))))

(declare-fun res!3132636 () Bool)

(assert (=> start!744856 (=> (not res!3132636) (not e!4661299))))

(assert (=> start!744856 (= res!3132636 ((_ is Lexer!8124) thiss!14377))))

(assert (=> start!744856 e!4661299))

(assert (=> start!744856 true))

(assert (=> start!744856 e!4661296))

(declare-fun e!4661301 () Bool)

(assert (=> start!744856 e!4661301))

(declare-fun b!7897267 () Bool)

(assert (=> b!7897267 (= e!4661295 true)))

(declare-fun lt!2681796 () List!74123)

(declare-fun list!19155 (BalanceConc!30534) List!74123)

(declare-fun charsOf!5483 (Token!15488) BalanceConc!30534)

(declare-fun get!26560 (Option!17816) tuple2!70076)

(assert (=> b!7897267 (= lt!2681796 (list!19155 (charsOf!5483 (_1!38341 (get!26560 lt!2681794)))))))

(declare-fun b!7897268 () Bool)

(declare-fun res!3132640 () Bool)

(assert (=> b!7897268 (=> (not res!3132640) (not e!4661299))))

(declare-fun isEmpty!42444 (List!74124) Bool)

(assert (=> b!7897268 (= res!3132640 (not (isEmpty!42444 rulesArg!141)))))

(declare-fun b!7897269 () Bool)

(assert (=> b!7897269 (= e!4661297 e!4661295)))

(declare-fun res!3132638 () Bool)

(assert (=> b!7897269 (=> res!3132638 e!4661295)))

(declare-fun isEmpty!42445 (Option!17816) Bool)

(assert (=> b!7897269 (= res!3132638 (isEmpty!42445 lt!2681794))))

(declare-fun maxPrefixOneRule!3714 (LexerInterface!8126 Rule!16868 List!74123) Option!17816)

(assert (=> b!7897269 (= lt!2681794 (maxPrefixOneRule!3714 thiss!14377 (h!80448 rulesArg!141) input!1184))))

(declare-fun e!4661298 () Bool)

(assert (=> b!7897270 (= e!4661298 (and tp!2352781 tp!2352778))))

(declare-fun b!7897271 () Bool)

(declare-fun tp_is_empty!52849 () Bool)

(declare-fun tp!2352779 () Bool)

(assert (=> b!7897271 (= e!4661301 (and tp_is_empty!52849 tp!2352779))))

(declare-fun tp!2352782 () Bool)

(declare-fun b!7897272 () Bool)

(declare-fun inv!94988 (String!82672) Bool)

(declare-fun inv!94990 (TokenValueInjection!17008) Bool)

(assert (=> b!7897272 (= e!4661302 (and tp!2352782 (inv!94988 (tag!9398 (h!80448 rulesArg!141))) (inv!94990 (transformation!8534 (h!80448 rulesArg!141))) e!4661298))))

(assert (= (and start!744856 res!3132636) b!7897265))

(assert (= (and b!7897265 res!3132639) b!7897268))

(assert (= (and b!7897268 res!3132640) b!7897264))

(assert (= (and b!7897264 (not res!3132635)) b!7897269))

(assert (= (and b!7897269 (not res!3132638)) b!7897263))

(assert (= (and b!7897263 (not res!3132637)) b!7897267))

(assert (= b!7897272 b!7897270))

(assert (= b!7897266 b!7897272))

(assert (= (and start!744856 ((_ is Cons!74000) rulesArg!141)) b!7897266))

(assert (= (and start!744856 ((_ is Cons!73999) input!1184)) b!7897271))

(declare-fun m!8272448 () Bool)

(assert (=> b!7897264 m!8272448))

(declare-fun m!8272450 () Bool)

(assert (=> b!7897264 m!8272450))

(declare-fun m!8272452 () Bool)

(assert (=> b!7897269 m!8272452))

(declare-fun m!8272454 () Bool)

(assert (=> b!7897269 m!8272454))

(declare-fun m!8272456 () Bool)

(assert (=> b!7897265 m!8272456))

(declare-fun m!8272458 () Bool)

(assert (=> b!7897263 m!8272458))

(declare-fun m!8272460 () Bool)

(assert (=> b!7897268 m!8272460))

(declare-fun m!8272462 () Bool)

(assert (=> b!7897267 m!8272462))

(declare-fun m!8272464 () Bool)

(assert (=> b!7897267 m!8272464))

(assert (=> b!7897267 m!8272464))

(declare-fun m!8272466 () Bool)

(assert (=> b!7897267 m!8272466))

(declare-fun m!8272468 () Bool)

(assert (=> b!7897272 m!8272468))

(declare-fun m!8272470 () Bool)

(assert (=> b!7897272 m!8272470))

(check-sat (not b!7897267) (not b!7897264) (not b!7897271) (not b!7897272) (not b!7897269) (not b!7897263) (not b!7897266) (not b_next!135253) b_and!352317 (not b_next!135255) tp_is_empty!52849 (not b!7897265) (not b!7897268) b_and!352315)
(check-sat b_and!352317 b_and!352315 (not b_next!135255) (not b_next!135253))
