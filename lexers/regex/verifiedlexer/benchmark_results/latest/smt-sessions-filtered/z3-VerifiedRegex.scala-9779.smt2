; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511348 () Bool)

(assert start!511348)

(declare-fun b!4885901 () Bool)

(declare-fun b_free!131227 () Bool)

(declare-fun b_next!132017 () Bool)

(assert (=> b!4885901 (= b_free!131227 (not b_next!132017))))

(declare-fun tp!1374968 () Bool)

(declare-fun b_and!344059 () Bool)

(assert (=> b!4885901 (= tp!1374968 b_and!344059)))

(declare-fun b_free!131229 () Bool)

(declare-fun b_next!132019 () Bool)

(assert (=> b!4885901 (= b_free!131229 (not b_next!132019))))

(declare-fun tp!1374966 () Bool)

(declare-fun b_and!344061 () Bool)

(assert (=> b!4885901 (= tp!1374966 b_and!344061)))

(declare-fun b!4885898 () Bool)

(declare-fun res!2086254 () Bool)

(declare-fun e!3054089 () Bool)

(assert (=> b!4885898 (=> (not res!2086254) (not e!3054089))))

(declare-datatypes ((LexerInterface!7718 0))(
  ( (LexerInterfaceExt!7715 (__x!34165 Int)) (Lexer!7716) )
))
(declare-fun thiss!14805 () LexerInterface!7718)

(declare-datatypes ((C!26600 0))(
  ( (C!26601 (val!22634 Int)) )
))
(declare-datatypes ((List!56383 0))(
  ( (Nil!56259) (Cons!56259 (h!62707 C!26600) (t!365029 List!56383)) )
))
(declare-datatypes ((IArray!29449 0))(
  ( (IArray!29450 (innerList!14782 List!56383)) )
))
(declare-datatypes ((Conc!14694 0))(
  ( (Node!14694 (left!40867 Conc!14694) (right!41197 Conc!14694) (csize!29618 Int) (cheight!14905 Int)) (Leaf!24474 (xs!18010 IArray!29449) (csize!29619 Int)) (Empty!14694) )
))
(declare-datatypes ((BalanceConc!28818 0))(
  ( (BalanceConc!28819 (c!830679 Conc!14694)) )
))
(declare-datatypes ((List!56384 0))(
  ( (Nil!56260) (Cons!56260 (h!62708 (_ BitVec 16)) (t!365030 List!56384)) )
))
(declare-datatypes ((TokenValue!8436 0))(
  ( (FloatLiteralValue!16872 (text!59497 List!56384)) (TokenValueExt!8435 (__x!34166 Int)) (Broken!42180 (value!260717 List!56384)) (Object!8559) (End!8436) (Def!8436) (Underscore!8436) (Match!8436) (Else!8436) (Error!8436) (Case!8436) (If!8436) (Extends!8436) (Abstract!8436) (Class!8436) (Val!8436) (DelimiterValue!16872 (del!8496 List!56384)) (KeywordValue!8442 (value!260718 List!56384)) (CommentValue!16872 (value!260719 List!56384)) (WhitespaceValue!16872 (value!260720 List!56384)) (IndentationValue!8436 (value!260721 List!56384)) (String!63621) (Int32!8436) (Broken!42181 (value!260722 List!56384)) (Boolean!8437) (Unit!146249) (OperatorValue!8439 (op!8496 List!56384)) (IdentifierValue!16872 (value!260723 List!56384)) (IdentifierValue!16873 (value!260724 List!56384)) (WhitespaceValue!16873 (value!260725 List!56384)) (True!16872) (False!16872) (Broken!42182 (value!260726 List!56384)) (Broken!42183 (value!260727 List!56384)) (True!16873) (RightBrace!8436) (RightBracket!8436) (Colon!8436) (Null!8436) (Comma!8436) (LeftBracket!8436) (False!16873) (LeftBrace!8436) (ImaginaryLiteralValue!8436 (text!59498 List!56384)) (StringLiteralValue!25308 (value!260728 List!56384)) (EOFValue!8436 (value!260729 List!56384)) (IdentValue!8436 (value!260730 List!56384)) (DelimiterValue!16873 (value!260731 List!56384)) (DedentValue!8436 (value!260732 List!56384)) (NewLineValue!8436 (value!260733 List!56384)) (IntegerValue!25308 (value!260734 (_ BitVec 32)) (text!59499 List!56384)) (IntegerValue!25309 (value!260735 Int) (text!59500 List!56384)) (Times!8436) (Or!8436) (Equal!8436) (Minus!8436) (Broken!42184 (value!260736 List!56384)) (And!8436) (Div!8436) (LessEqual!8436) (Mod!8436) (Concat!21637) (Not!8436) (Plus!8436) (SpaceValue!8436 (value!260737 List!56384)) (IntegerValue!25310 (value!260738 Int) (text!59501 List!56384)) (StringLiteralValue!25309 (text!59502 List!56384)) (FloatLiteralValue!16873 (text!59503 List!56384)) (BytesLiteralValue!8436 (value!260739 List!56384)) (CommentValue!16873 (value!260740 List!56384)) (StringLiteralValue!25310 (value!260741 List!56384)) (ErrorTokenValue!8436 (msg!8497 List!56384)) )
))
(declare-datatypes ((Regex!13201 0))(
  ( (ElementMatch!13201 (c!830680 C!26600)) (Concat!21638 (regOne!26914 Regex!13201) (regTwo!26914 Regex!13201)) (EmptyExpr!13201) (Star!13201 (reg!13530 Regex!13201)) (EmptyLang!13201) (Union!13201 (regOne!26915 Regex!13201) (regTwo!26915 Regex!13201)) )
))
(declare-datatypes ((String!63622 0))(
  ( (String!63623 (value!260742 String)) )
))
(declare-datatypes ((TokenValueInjection!16180 0))(
  ( (TokenValueInjection!16181 (toValue!11013 Int) (toChars!10872 Int)) )
))
(declare-datatypes ((Rule!16052 0))(
  ( (Rule!16053 (regex!8126 Regex!13201) (tag!8990 String!63622) (isSeparator!8126 Bool) (transformation!8126 TokenValueInjection!16180)) )
))
(declare-datatypes ((List!56385 0))(
  ( (Nil!56261) (Cons!56261 (h!62709 Rule!16052) (t!365031 List!56385)) )
))
(declare-fun rulesArg!165 () List!56385)

(declare-fun rulesValidInductive!3105 (LexerInterface!7718 List!56385) Bool)

(assert (=> b!4885898 (= res!2086254 (rulesValidInductive!3105 thiss!14805 rulesArg!165))))

(declare-fun b!4885899 () Bool)

(declare-fun res!2086252 () Bool)

(assert (=> b!4885899 (=> (not res!2086252) (not e!3054089))))

(declare-fun isEmpty!30153 (List!56385) Bool)

(assert (=> b!4885899 (= res!2086252 (not (isEmpty!30153 rulesArg!165)))))

(declare-fun b!4885900 () Bool)

(declare-fun e!3054093 () Bool)

(assert (=> b!4885900 (= e!3054093 true)))

(declare-datatypes ((Token!14820 0))(
  ( (Token!14821 (value!260743 TokenValue!8436) (rule!11296 Rule!16052) (size!37058 Int) (originalCharacters!8441 List!56383)) )
))
(declare-datatypes ((tuple2!60220 0))(
  ( (tuple2!60221 (_1!33413 Token!14820) (_2!33413 List!56383)) )
))
(declare-datatypes ((Option!13935 0))(
  ( (None!13934) (Some!13934 (v!49884 tuple2!60220)) )
))
(declare-fun lt!2002022 () Option!13935)

(declare-fun lt!2002020 () List!56383)

(declare-fun maxPrefixZipper!629 (LexerInterface!7718 List!56385 List!56383) Option!13935)

(assert (=> b!4885900 (= lt!2002022 (maxPrefixZipper!629 thiss!14805 rulesArg!165 lt!2002020))))

(declare-fun e!3054090 () Bool)

(assert (=> b!4885901 (= e!3054090 (and tp!1374968 tp!1374966))))

(declare-fun b!4885902 () Bool)

(declare-fun e!3054094 () Bool)

(declare-fun input!1236 () BalanceConc!28818)

(declare-fun tp!1374965 () Bool)

(declare-fun inv!72410 (Conc!14694) Bool)

(assert (=> b!4885902 (= e!3054094 (and (inv!72410 (c!830679 input!1236)) tp!1374965))))

(declare-fun b!4885904 () Bool)

(declare-fun e!3054092 () Bool)

(assert (=> b!4885904 (= e!3054092 e!3054093)))

(declare-fun res!2086253 () Bool)

(assert (=> b!4885904 (=> res!2086253 e!3054093)))

(declare-datatypes ((tuple2!60222 0))(
  ( (tuple2!60223 (_1!33414 Token!14820) (_2!33414 BalanceConc!28818)) )
))
(declare-datatypes ((Option!13936 0))(
  ( (None!13935) (Some!13935 (v!49885 tuple2!60222)) )
))
(declare-fun lt!2002023 () Option!13936)

(declare-fun lt!2002024 () Option!13936)

(get-info :version)

(assert (=> b!4885904 (= res!2086253 (or (and ((_ is None!13935) lt!2002023) ((_ is None!13935) lt!2002024)) ((_ is None!13935) lt!2002024) ((_ is None!13935) lt!2002023) (< (size!37058 (_1!33414 (v!49885 lt!2002023))) (size!37058 (_1!33414 (v!49885 lt!2002024))))))))

(declare-fun maxPrefixZipperSequence!1287 (LexerInterface!7718 List!56385 BalanceConc!28818) Option!13936)

(assert (=> b!4885904 (= lt!2002024 (maxPrefixZipperSequence!1287 thiss!14805 (t!365031 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!652 (LexerInterface!7718 Rule!16052 BalanceConc!28818) Option!13936)

(assert (=> b!4885904 (= lt!2002023 (maxPrefixOneRuleZipperSequence!652 thiss!14805 (h!62709 rulesArg!165) input!1236))))

(declare-fun b!4885905 () Bool)

(assert (=> b!4885905 (= e!3054089 (not e!3054092))))

(declare-fun res!2086251 () Bool)

(assert (=> b!4885905 (=> res!2086251 e!3054092)))

(assert (=> b!4885905 (= res!2086251 (or (and ((_ is Cons!56261) rulesArg!165) ((_ is Nil!56261) (t!365031 rulesArg!165))) (not ((_ is Cons!56261) rulesArg!165))))))

(declare-fun isPrefix!4848 (List!56383 List!56383) Bool)

(assert (=> b!4885905 (isPrefix!4848 lt!2002020 lt!2002020)))

(declare-datatypes ((Unit!146250 0))(
  ( (Unit!146251) )
))
(declare-fun lt!2002021 () Unit!146250)

(declare-fun lemmaIsPrefixRefl!3245 (List!56383 List!56383) Unit!146250)

(assert (=> b!4885905 (= lt!2002021 (lemmaIsPrefixRefl!3245 lt!2002020 lt!2002020))))

(declare-fun list!17659 (BalanceConc!28818) List!56383)

(assert (=> b!4885905 (= lt!2002020 (list!17659 input!1236))))

(declare-fun tp!1374967 () Bool)

(declare-fun b!4885906 () Bool)

(declare-fun e!3054091 () Bool)

(declare-fun inv!72406 (String!63622) Bool)

(declare-fun inv!72411 (TokenValueInjection!16180) Bool)

(assert (=> b!4885906 (= e!3054091 (and tp!1374967 (inv!72406 (tag!8990 (h!62709 rulesArg!165))) (inv!72411 (transformation!8126 (h!62709 rulesArg!165))) e!3054090))))

(declare-fun b!4885903 () Bool)

(declare-fun e!3054088 () Bool)

(declare-fun tp!1374969 () Bool)

(assert (=> b!4885903 (= e!3054088 (and e!3054091 tp!1374969))))

(declare-fun res!2086255 () Bool)

(assert (=> start!511348 (=> (not res!2086255) (not e!3054089))))

(assert (=> start!511348 (= res!2086255 ((_ is Lexer!7716) thiss!14805))))

(assert (=> start!511348 e!3054089))

(assert (=> start!511348 true))

(assert (=> start!511348 e!3054088))

(declare-fun inv!72412 (BalanceConc!28818) Bool)

(assert (=> start!511348 (and (inv!72412 input!1236) e!3054094)))

(assert (= (and start!511348 res!2086255) b!4885898))

(assert (= (and b!4885898 res!2086254) b!4885899))

(assert (= (and b!4885899 res!2086252) b!4885905))

(assert (= (and b!4885905 (not res!2086251)) b!4885904))

(assert (= (and b!4885904 (not res!2086253)) b!4885900))

(assert (= b!4885906 b!4885901))

(assert (= b!4885903 b!4885906))

(assert (= (and start!511348 ((_ is Cons!56261) rulesArg!165)) b!4885903))

(assert (= start!511348 b!4885902))

(declare-fun m!5889724 () Bool)

(assert (=> b!4885898 m!5889724))

(declare-fun m!5889726 () Bool)

(assert (=> b!4885904 m!5889726))

(declare-fun m!5889728 () Bool)

(assert (=> b!4885904 m!5889728))

(declare-fun m!5889730 () Bool)

(assert (=> b!4885900 m!5889730))

(declare-fun m!5889732 () Bool)

(assert (=> b!4885899 m!5889732))

(declare-fun m!5889734 () Bool)

(assert (=> b!4885906 m!5889734))

(declare-fun m!5889736 () Bool)

(assert (=> b!4885906 m!5889736))

(declare-fun m!5889738 () Bool)

(assert (=> start!511348 m!5889738))

(declare-fun m!5889740 () Bool)

(assert (=> b!4885902 m!5889740))

(declare-fun m!5889742 () Bool)

(assert (=> b!4885905 m!5889742))

(declare-fun m!5889744 () Bool)

(assert (=> b!4885905 m!5889744))

(declare-fun m!5889746 () Bool)

(assert (=> b!4885905 m!5889746))

(check-sat (not b!4885899) (not b!4885906) (not b!4885903) b_and!344061 (not start!511348) b_and!344059 (not b!4885898) (not b!4885902) (not b!4885900) (not b_next!132019) (not b!4885905) (not b_next!132017) (not b!4885904))
(check-sat b_and!344061 b_and!344059 (not b_next!132017) (not b_next!132019))
