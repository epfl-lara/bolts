; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511272 () Bool)

(assert start!511272)

(declare-fun b!4885448 () Bool)

(declare-fun b_free!131203 () Bool)

(declare-fun b_next!131993 () Bool)

(assert (=> b!4885448 (= b_free!131203 (not b_next!131993))))

(declare-fun tp!1374833 () Bool)

(declare-fun b_and!344035 () Bool)

(assert (=> b!4885448 (= tp!1374833 b_and!344035)))

(declare-fun b_free!131205 () Bool)

(declare-fun b_next!131995 () Bool)

(assert (=> b!4885448 (= b_free!131205 (not b_next!131995))))

(declare-fun tp!1374836 () Bool)

(declare-fun b_and!344037 () Bool)

(assert (=> b!4885448 (= tp!1374836 b_and!344037)))

(declare-fun b!4885447 () Bool)

(declare-fun e!3053771 () Bool)

(declare-fun e!3053776 () Bool)

(declare-fun tp!1374834 () Bool)

(assert (=> b!4885447 (= e!3053771 (and e!3053776 tp!1374834))))

(declare-fun e!3053765 () Bool)

(assert (=> b!4885448 (= e!3053765 (and tp!1374833 tp!1374836))))

(declare-fun b!4885449 () Bool)

(declare-fun e!3053768 () Bool)

(assert (=> b!4885449 (= e!3053768 true)))

(declare-datatypes ((LexerInterface!7714 0))(
  ( (LexerInterfaceExt!7711 (__x!34157 Int)) (Lexer!7712) )
))
(declare-fun thiss!14805 () LexerInterface!7714)

(declare-datatypes ((C!26592 0))(
  ( (C!26593 (val!22630 Int)) )
))
(declare-datatypes ((List!56371 0))(
  ( (Nil!56247) (Cons!56247 (h!62695 C!26592) (t!365017 List!56371)) )
))
(declare-datatypes ((List!56372 0))(
  ( (Nil!56248) (Cons!56248 (h!62696 (_ BitVec 16)) (t!365018 List!56372)) )
))
(declare-datatypes ((TokenValue!8432 0))(
  ( (FloatLiteralValue!16864 (text!59469 List!56372)) (TokenValueExt!8431 (__x!34158 Int)) (Broken!42160 (value!260603 List!56372)) (Object!8555) (End!8432) (Def!8432) (Underscore!8432) (Match!8432) (Else!8432) (Error!8432) (Case!8432) (If!8432) (Extends!8432) (Abstract!8432) (Class!8432) (Val!8432) (DelimiterValue!16864 (del!8492 List!56372)) (KeywordValue!8438 (value!260604 List!56372)) (CommentValue!16864 (value!260605 List!56372)) (WhitespaceValue!16864 (value!260606 List!56372)) (IndentationValue!8432 (value!260607 List!56372)) (String!63601) (Int32!8432) (Broken!42161 (value!260608 List!56372)) (Boolean!8433) (Unit!146237) (OperatorValue!8435 (op!8492 List!56372)) (IdentifierValue!16864 (value!260609 List!56372)) (IdentifierValue!16865 (value!260610 List!56372)) (WhitespaceValue!16865 (value!260611 List!56372)) (True!16864) (False!16864) (Broken!42162 (value!260612 List!56372)) (Broken!42163 (value!260613 List!56372)) (True!16865) (RightBrace!8432) (RightBracket!8432) (Colon!8432) (Null!8432) (Comma!8432) (LeftBracket!8432) (False!16865) (LeftBrace!8432) (ImaginaryLiteralValue!8432 (text!59470 List!56372)) (StringLiteralValue!25296 (value!260614 List!56372)) (EOFValue!8432 (value!260615 List!56372)) (IdentValue!8432 (value!260616 List!56372)) (DelimiterValue!16865 (value!260617 List!56372)) (DedentValue!8432 (value!260618 List!56372)) (NewLineValue!8432 (value!260619 List!56372)) (IntegerValue!25296 (value!260620 (_ BitVec 32)) (text!59471 List!56372)) (IntegerValue!25297 (value!260621 Int) (text!59472 List!56372)) (Times!8432) (Or!8432) (Equal!8432) (Minus!8432) (Broken!42164 (value!260622 List!56372)) (And!8432) (Div!8432) (LessEqual!8432) (Mod!8432) (Concat!21629) (Not!8432) (Plus!8432) (SpaceValue!8432 (value!260623 List!56372)) (IntegerValue!25298 (value!260624 Int) (text!59473 List!56372)) (StringLiteralValue!25297 (text!59474 List!56372)) (FloatLiteralValue!16865 (text!59475 List!56372)) (BytesLiteralValue!8432 (value!260625 List!56372)) (CommentValue!16865 (value!260626 List!56372)) (StringLiteralValue!25298 (value!260627 List!56372)) (ErrorTokenValue!8432 (msg!8493 List!56372)) )
))
(declare-datatypes ((Regex!13197 0))(
  ( (ElementMatch!13197 (c!830637 C!26592)) (Concat!21630 (regOne!26906 Regex!13197) (regTwo!26906 Regex!13197)) (EmptyExpr!13197) (Star!13197 (reg!13526 Regex!13197)) (EmptyLang!13197) (Union!13197 (regOne!26907 Regex!13197) (regTwo!26907 Regex!13197)) )
))
(declare-datatypes ((String!63602 0))(
  ( (String!63603 (value!260628 String)) )
))
(declare-datatypes ((IArray!29441 0))(
  ( (IArray!29442 (innerList!14778 List!56371)) )
))
(declare-datatypes ((Conc!14690 0))(
  ( (Node!14690 (left!40857 Conc!14690) (right!41187 Conc!14690) (csize!29610 Int) (cheight!14901 Int)) (Leaf!24468 (xs!18006 IArray!29441) (csize!29611 Int)) (Empty!14690) )
))
(declare-datatypes ((BalanceConc!28810 0))(
  ( (BalanceConc!28811 (c!830638 Conc!14690)) )
))
(declare-datatypes ((TokenValueInjection!16172 0))(
  ( (TokenValueInjection!16173 (toValue!11009 Int) (toChars!10868 Int)) )
))
(declare-datatypes ((Rule!16044 0))(
  ( (Rule!16045 (regex!8122 Regex!13197) (tag!8986 String!63602) (isSeparator!8122 Bool) (transformation!8122 TokenValueInjection!16172)) )
))
(declare-datatypes ((Token!14812 0))(
  ( (Token!14813 (value!260629 TokenValue!8432) (rule!11290 Rule!16044) (size!37051 Int) (originalCharacters!8437 List!56371)) )
))
(declare-datatypes ((tuple2!60200 0))(
  ( (tuple2!60201 (_1!33403 Token!14812) (_2!33403 List!56371)) )
))
(declare-datatypes ((Option!13927 0))(
  ( (None!13926) (Some!13926 (v!49876 tuple2!60200)) )
))
(declare-fun lt!2001754 () Option!13927)

(declare-fun lt!2001752 () List!56371)

(declare-datatypes ((List!56373 0))(
  ( (Nil!56249) (Cons!56249 (h!62697 Rule!16044) (t!365019 List!56373)) )
))
(declare-fun rulesArg!165 () List!56373)

(declare-fun maxPrefix!4579 (LexerInterface!7714 List!56373 List!56371) Option!13927)

(assert (=> b!4885449 (= lt!2001754 (maxPrefix!4579 thiss!14805 rulesArg!165 lt!2001752))))

(declare-fun b!4885451 () Bool)

(declare-fun e!3053772 () Bool)

(assert (=> b!4885451 (= e!3053772 e!3053768)))

(declare-fun res!2085997 () Bool)

(assert (=> b!4885451 (=> res!2085997 e!3053768)))

(declare-fun e!3053770 () Bool)

(assert (=> b!4885451 (= res!2085997 e!3053770)))

(declare-fun res!2085996 () Bool)

(assert (=> b!4885451 (=> (not res!2085996) (not e!3053770))))

(declare-fun lt!2001746 () Bool)

(assert (=> b!4885451 (= res!2085996 (not lt!2001746))))

(declare-fun lt!2001750 () Bool)

(assert (=> b!4885451 (= lt!2001746 (not lt!2001750))))

(declare-fun b!4885452 () Bool)

(declare-fun res!2085988 () Bool)

(declare-fun e!3053766 () Bool)

(assert (=> b!4885452 (=> (not res!2085988) (not e!3053766))))

(declare-fun isEmpty!30143 (List!56373) Bool)

(assert (=> b!4885452 (= res!2085988 (not (isEmpty!30143 rulesArg!165)))))

(declare-fun b!4885453 () Bool)

(declare-fun e!3053773 () Bool)

(declare-fun input!1236 () BalanceConc!28810)

(declare-fun tp!1374837 () Bool)

(declare-fun inv!72389 (Conc!14690) Bool)

(assert (=> b!4885453 (= e!3053773 (and (inv!72389 (c!830638 input!1236)) tp!1374837))))

(declare-fun b!4885454 () Bool)

(declare-fun tp!1374835 () Bool)

(declare-fun inv!72385 (String!63602) Bool)

(declare-fun inv!72390 (TokenValueInjection!16172) Bool)

(assert (=> b!4885454 (= e!3053776 (and tp!1374835 (inv!72385 (tag!8986 (h!62697 rulesArg!165))) (inv!72390 (transformation!8122 (h!62697 rulesArg!165))) e!3053765))))

(declare-fun b!4885455 () Bool)

(declare-fun res!2085993 () Bool)

(assert (=> b!4885455 (=> res!2085993 e!3053768)))

(assert (=> b!4885455 (= res!2085993 lt!2001746)))

(declare-fun b!4885456 () Bool)

(declare-fun e!3053767 () Bool)

(assert (=> b!4885456 (= e!3053770 e!3053767)))

(declare-fun res!2085989 () Bool)

(assert (=> b!4885456 (=> res!2085989 e!3053767)))

(declare-datatypes ((tuple2!60202 0))(
  ( (tuple2!60203 (_1!33404 Token!14812) (_2!33404 BalanceConc!28810)) )
))
(declare-fun lt!2001753 () tuple2!60202)

(declare-fun lt!2001745 () tuple2!60200)

(assert (=> b!4885456 (= res!2085989 (not (= (_1!33404 lt!2001753) (_1!33403 lt!2001745))))))

(declare-fun lt!2001747 () Option!13927)

(declare-fun get!19376 (Option!13927) tuple2!60200)

(assert (=> b!4885456 (= lt!2001745 (get!19376 lt!2001747))))

(declare-datatypes ((Option!13928 0))(
  ( (None!13927) (Some!13927 (v!49877 tuple2!60202)) )
))
(declare-fun lt!2001751 () Option!13928)

(declare-fun get!19377 (Option!13928) tuple2!60202)

(assert (=> b!4885456 (= lt!2001753 (get!19377 lt!2001751))))

(declare-fun b!4885457 () Bool)

(declare-fun list!17653 (BalanceConc!28810) List!56371)

(assert (=> b!4885457 (= e!3053767 (not (= (list!17653 (_2!33404 lt!2001753)) (_2!33403 lt!2001745))))))

(declare-fun b!4885458 () Bool)

(declare-fun e!3053774 () Bool)

(assert (=> b!4885458 (= e!3053774 e!3053772)))

(declare-fun res!2085995 () Bool)

(assert (=> b!4885458 (=> res!2085995 e!3053772)))

(declare-fun isDefined!10950 (Option!13927) Bool)

(assert (=> b!4885458 (= res!2085995 (not (= lt!2001750 (isDefined!10950 lt!2001747))))))

(declare-fun isDefined!10951 (Option!13928) Bool)

(assert (=> b!4885458 (= lt!2001750 (isDefined!10951 lt!2001751))))

(declare-fun maxPrefixZipper!625 (LexerInterface!7714 List!56373 List!56371) Option!13927)

(assert (=> b!4885458 (= lt!2001747 (maxPrefixZipper!625 thiss!14805 rulesArg!165 lt!2001752))))

(declare-fun b!4885450 () Bool)

(declare-fun e!3053769 () Bool)

(assert (=> b!4885450 (= e!3053766 (not e!3053769))))

(declare-fun res!2085990 () Bool)

(assert (=> b!4885450 (=> res!2085990 e!3053769)))

(get-info :version)

(assert (=> b!4885450 (= res!2085990 (or (and ((_ is Cons!56249) rulesArg!165) ((_ is Nil!56249) (t!365019 rulesArg!165))) (not ((_ is Cons!56249) rulesArg!165))))))

(declare-fun isPrefix!4844 (List!56371 List!56371) Bool)

(assert (=> b!4885450 (isPrefix!4844 lt!2001752 lt!2001752)))

(declare-datatypes ((Unit!146238 0))(
  ( (Unit!146239) )
))
(declare-fun lt!2001748 () Unit!146238)

(declare-fun lemmaIsPrefixRefl!3241 (List!56371 List!56371) Unit!146238)

(assert (=> b!4885450 (= lt!2001748 (lemmaIsPrefixRefl!3241 lt!2001752 lt!2001752))))

(assert (=> b!4885450 (= lt!2001752 (list!17653 input!1236))))

(declare-fun res!2085992 () Bool)

(assert (=> start!511272 (=> (not res!2085992) (not e!3053766))))

(assert (=> start!511272 (= res!2085992 ((_ is Lexer!7712) thiss!14805))))

(assert (=> start!511272 e!3053766))

(assert (=> start!511272 true))

(assert (=> start!511272 e!3053771))

(declare-fun inv!72391 (BalanceConc!28810) Bool)

(assert (=> start!511272 (and (inv!72391 input!1236) e!3053773)))

(declare-fun b!4885459 () Bool)

(assert (=> b!4885459 (= e!3053769 e!3053774)))

(declare-fun res!2085991 () Bool)

(assert (=> b!4885459 (=> res!2085991 e!3053774)))

(declare-fun lt!2001749 () Option!13928)

(assert (=> b!4885459 (= res!2085991 (or (and ((_ is None!13927) lt!2001749) ((_ is None!13927) lt!2001751)) ((_ is None!13927) lt!2001751) (not ((_ is None!13927) lt!2001749))))))

(declare-fun maxPrefixZipperSequence!1283 (LexerInterface!7714 List!56373 BalanceConc!28810) Option!13928)

(assert (=> b!4885459 (= lt!2001751 (maxPrefixZipperSequence!1283 thiss!14805 (t!365019 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!648 (LexerInterface!7714 Rule!16044 BalanceConc!28810) Option!13928)

(assert (=> b!4885459 (= lt!2001749 (maxPrefixOneRuleZipperSequence!648 thiss!14805 (h!62697 rulesArg!165) input!1236))))

(declare-fun b!4885460 () Bool)

(declare-fun res!2085994 () Bool)

(assert (=> b!4885460 (=> (not res!2085994) (not e!3053766))))

(declare-fun rulesValidInductive!3101 (LexerInterface!7714 List!56373) Bool)

(assert (=> b!4885460 (= res!2085994 (rulesValidInductive!3101 thiss!14805 rulesArg!165))))

(assert (= (and start!511272 res!2085992) b!4885460))

(assert (= (and b!4885460 res!2085994) b!4885452))

(assert (= (and b!4885452 res!2085988) b!4885450))

(assert (= (and b!4885450 (not res!2085990)) b!4885459))

(assert (= (and b!4885459 (not res!2085991)) b!4885458))

(assert (= (and b!4885458 (not res!2085995)) b!4885451))

(assert (= (and b!4885451 res!2085996) b!4885456))

(assert (= (and b!4885456 (not res!2085989)) b!4885457))

(assert (= (and b!4885451 (not res!2085997)) b!4885455))

(assert (= (and b!4885455 (not res!2085993)) b!4885449))

(assert (= b!4885454 b!4885448))

(assert (= b!4885447 b!4885454))

(assert (= (and start!511272 ((_ is Cons!56249) rulesArg!165)) b!4885447))

(assert (= start!511272 b!4885453))

(declare-fun m!5889296 () Bool)

(assert (=> b!4885454 m!5889296))

(declare-fun m!5889298 () Bool)

(assert (=> b!4885454 m!5889298))

(declare-fun m!5889300 () Bool)

(assert (=> b!4885456 m!5889300))

(declare-fun m!5889302 () Bool)

(assert (=> b!4885456 m!5889302))

(declare-fun m!5889304 () Bool)

(assert (=> b!4885450 m!5889304))

(declare-fun m!5889306 () Bool)

(assert (=> b!4885450 m!5889306))

(declare-fun m!5889308 () Bool)

(assert (=> b!4885450 m!5889308))

(declare-fun m!5889310 () Bool)

(assert (=> b!4885457 m!5889310))

(declare-fun m!5889312 () Bool)

(assert (=> b!4885458 m!5889312))

(declare-fun m!5889314 () Bool)

(assert (=> b!4885458 m!5889314))

(declare-fun m!5889316 () Bool)

(assert (=> b!4885458 m!5889316))

(declare-fun m!5889318 () Bool)

(assert (=> b!4885449 m!5889318))

(declare-fun m!5889320 () Bool)

(assert (=> b!4885459 m!5889320))

(declare-fun m!5889322 () Bool)

(assert (=> b!4885459 m!5889322))

(declare-fun m!5889324 () Bool)

(assert (=> b!4885460 m!5889324))

(declare-fun m!5889326 () Bool)

(assert (=> b!4885453 m!5889326))

(declare-fun m!5889328 () Bool)

(assert (=> start!511272 m!5889328))

(declare-fun m!5889330 () Bool)

(assert (=> b!4885452 m!5889330))

(check-sat (not b!4885459) (not b!4885450) (not b_next!131993) (not b!4885457) (not b!4885458) (not b!4885447) (not b!4885452) b_and!344037 (not b!4885454) (not b!4885453) (not b!4885449) (not b_next!131995) b_and!344035 (not b!4885460) (not start!511272) (not b!4885456))
(check-sat b_and!344037 b_and!344035 (not b_next!131993) (not b_next!131995))
