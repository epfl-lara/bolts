; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745316 () Bool)

(assert start!745316)

(declare-fun b!7900990 () Bool)

(declare-fun b_free!134695 () Bool)

(declare-fun b_next!135485 () Bool)

(assert (=> b!7900990 (= b_free!134695 (not b_next!135485))))

(declare-fun tp!2353907 () Bool)

(declare-fun b_and!352659 () Bool)

(assert (=> b!7900990 (= tp!2353907 b_and!352659)))

(declare-fun b_free!134697 () Bool)

(declare-fun b_next!135487 () Bool)

(assert (=> b!7900990 (= b_free!134697 (not b_next!135487))))

(declare-fun tp!2353910 () Bool)

(declare-fun b_and!352661 () Bool)

(assert (=> b!7900990 (= tp!2353910 b_and!352661)))

(declare-fun b!7900983 () Bool)

(declare-fun e!4663685 () Bool)

(declare-fun e!4663689 () Bool)

(assert (=> b!7900983 (= e!4663685 e!4663689)))

(declare-fun res!3134649 () Bool)

(assert (=> b!7900983 (=> res!3134649 e!4663689)))

(declare-datatypes ((List!74260 0))(
  ( (Nil!74136) (Cons!74136 (h!80584 (_ BitVec 16)) (t!389167 List!74260)) )
))
(declare-datatypes ((TokenValue!8896 0))(
  ( (FloatLiteralValue!17792 (text!62717 List!74260)) (TokenValueExt!8895 (__x!35079 Int)) (Broken!44480 (value!286485 List!74260)) (Object!9019) (End!8896) (Def!8896) (Underscore!8896) (Match!8896) (Else!8896) (Error!8896) (Case!8896) (If!8896) (Extends!8896) (Abstract!8896) (Class!8896) (Val!8896) (DelimiterValue!17792 (del!8956 List!74260)) (KeywordValue!8902 (value!286486 List!74260)) (CommentValue!17792 (value!286487 List!74260)) (WhitespaceValue!17792 (value!286488 List!74260)) (IndentationValue!8896 (value!286489 List!74260)) (String!82901) (Int32!8896) (Broken!44481 (value!286490 List!74260)) (Boolean!8897) (Unit!169160) (OperatorValue!8899 (op!8956 List!74260)) (IdentifierValue!17792 (value!286491 List!74260)) (IdentifierValue!17793 (value!286492 List!74260)) (WhitespaceValue!17793 (value!286493 List!74260)) (True!17792) (False!17792) (Broken!44482 (value!286494 List!74260)) (Broken!44483 (value!286495 List!74260)) (True!17793) (RightBrace!8896) (RightBracket!8896) (Colon!8896) (Null!8896) (Comma!8896) (LeftBracket!8896) (False!17793) (LeftBrace!8896) (ImaginaryLiteralValue!8896 (text!62718 List!74260)) (StringLiteralValue!26688 (value!286496 List!74260)) (EOFValue!8896 (value!286497 List!74260)) (IdentValue!8896 (value!286498 List!74260)) (DelimiterValue!17793 (value!286499 List!74260)) (DedentValue!8896 (value!286500 List!74260)) (NewLineValue!8896 (value!286501 List!74260)) (IntegerValue!26688 (value!286502 (_ BitVec 32)) (text!62719 List!74260)) (IntegerValue!26689 (value!286503 Int) (text!62720 List!74260)) (Times!8896) (Or!8896) (Equal!8896) (Minus!8896) (Broken!44484 (value!286504 List!74260)) (And!8896) (Div!8896) (LessEqual!8896) (Mod!8896) (Concat!30179) (Not!8896) (Plus!8896) (SpaceValue!8896 (value!286505 List!74260)) (IntegerValue!26690 (value!286506 Int) (text!62721 List!74260)) (StringLiteralValue!26689 (text!62722 List!74260)) (FloatLiteralValue!17793 (text!62723 List!74260)) (BytesLiteralValue!8896 (value!286507 List!74260)) (CommentValue!17793 (value!286508 List!74260)) (StringLiteralValue!26690 (value!286509 List!74260)) (ErrorTokenValue!8896 (msg!8957 List!74260)) )
))
(declare-datatypes ((C!42896 0))(
  ( (C!42897 (val!31912 Int)) )
))
(declare-datatypes ((List!74261 0))(
  ( (Nil!74137) (Cons!74137 (h!80585 C!42896) (t!389168 List!74261)) )
))
(declare-datatypes ((IArray!31569 0))(
  ( (IArray!31570 (innerList!15842 List!74261)) )
))
(declare-datatypes ((Conc!15754 0))(
  ( (Node!15754 (left!56563 Conc!15754) (right!56893 Conc!15754) (csize!31738 Int) (cheight!15965 Int)) (Leaf!30012 (xs!19136 IArray!31569) (csize!31739 Int)) (Empty!15754) )
))
(declare-datatypes ((BalanceConc!30626 0))(
  ( (BalanceConc!30627 (c!1449999 Conc!15754)) )
))
(declare-datatypes ((String!82902 0))(
  ( (String!82903 (value!286510 String)) )
))
(declare-datatypes ((Regex!21283 0))(
  ( (ElementMatch!21283 (c!1450000 C!42896)) (Concat!30180 (regOne!43078 Regex!21283) (regTwo!43078 Regex!21283)) (EmptyExpr!21283) (Star!21283 (reg!21612 Regex!21283)) (EmptyLang!21283) (Union!21283 (regOne!43079 Regex!21283) (regTwo!43079 Regex!21283)) )
))
(declare-datatypes ((TokenValueInjection!17100 0))(
  ( (TokenValueInjection!17101 (toValue!11625 Int) (toChars!11484 Int)) )
))
(declare-datatypes ((Rule!16960 0))(
  ( (Rule!16961 (regex!8580 Regex!21283) (tag!9444 String!82902) (isSeparator!8580 Bool) (transformation!8580 TokenValueInjection!17100)) )
))
(declare-datatypes ((Token!15580 0))(
  ( (Token!15581 (value!286511 TokenValue!8896) (rule!11866 Rule!16960) (size!42952 Int) (originalCharacters!8821 List!74261)) )
))
(declare-datatypes ((tuple2!70182 0))(
  ( (tuple2!70183 (_1!38394 Token!15580) (_2!38394 List!74261)) )
))
(declare-fun lt!2683239 () tuple2!70182)

(declare-fun list!19203 (BalanceConc!30626) List!74261)

(declare-fun charsOf!5524 (Token!15580) BalanceConc!30626)

(assert (=> b!7900983 (= res!3134649 (not (= (list!19203 (charsOf!5524 (_1!38394 lt!2683239))) (originalCharacters!8821 (_1!38394 lt!2683239)))))))

(declare-datatypes ((Option!17862 0))(
  ( (None!17861) (Some!17861 (v!55000 tuple2!70182)) )
))
(declare-fun lt!2683237 () Option!17862)

(declare-fun get!26624 (Option!17862) tuple2!70182)

(assert (=> b!7900983 (= lt!2683239 (get!26624 lt!2683237))))

(declare-fun res!3134647 () Bool)

(declare-fun e!4663690 () Bool)

(assert (=> start!745316 (=> (not res!3134647) (not e!4663690))))

(declare-datatypes ((LexerInterface!8172 0))(
  ( (LexerInterfaceExt!8169 (__x!35080 Int)) (Lexer!8170) )
))
(declare-fun thiss!14377 () LexerInterface!8172)

(get-info :version)

(assert (=> start!745316 (= res!3134647 ((_ is Lexer!8170) thiss!14377))))

(assert (=> start!745316 e!4663690))

(assert (=> start!745316 true))

(declare-fun e!4663691 () Bool)

(assert (=> start!745316 e!4663691))

(declare-fun e!4663692 () Bool)

(assert (=> start!745316 e!4663692))

(declare-fun b!7900984 () Bool)

(declare-fun res!3134648 () Bool)

(assert (=> b!7900984 (=> (not res!3134648) (not e!4663690))))

(declare-datatypes ((List!74262 0))(
  ( (Nil!74138) (Cons!74138 (h!80586 Rule!16960) (t!389169 List!74262)) )
))
(declare-fun rulesArg!141 () List!74262)

(declare-fun rulesValidInductive!3391 (LexerInterface!8172 List!74262) Bool)

(assert (=> b!7900984 (= res!3134648 (rulesValidInductive!3391 thiss!14377 rulesArg!141))))

(declare-fun b!7900985 () Bool)

(declare-fun e!4663686 () Bool)

(assert (=> b!7900985 (= e!4663690 (not e!4663686))))

(declare-fun res!3134643 () Bool)

(assert (=> b!7900985 (=> res!3134643 e!4663686)))

(assert (=> b!7900985 (= res!3134643 (or (and ((_ is Cons!74138) rulesArg!141) ((_ is Nil!74138) (t!389169 rulesArg!141))) (not ((_ is Cons!74138) rulesArg!141))))))

(declare-fun input!1184 () List!74261)

(declare-fun isPrefix!6413 (List!74261 List!74261) Bool)

(assert (=> b!7900985 (isPrefix!6413 input!1184 input!1184)))

(declare-datatypes ((Unit!169161 0))(
  ( (Unit!169162) )
))
(declare-fun lt!2683235 () Unit!169161)

(declare-fun lemmaIsPrefixRefl!3924 (List!74261 List!74261) Unit!169161)

(assert (=> b!7900985 (= lt!2683235 (lemmaIsPrefixRefl!3924 input!1184 input!1184))))

(declare-fun b!7900986 () Bool)

(declare-fun res!3134646 () Bool)

(assert (=> b!7900986 (=> res!3134646 e!4663685)))

(declare-fun isEmpty!42526 (Option!17862) Bool)

(assert (=> b!7900986 (= res!3134646 (isEmpty!42526 lt!2683237))))

(declare-fun b!7900987 () Bool)

(assert (=> b!7900987 (= e!4663689 true)))

(declare-fun lt!2683236 () Int)

(declare-fun size!42953 (List!74261) Int)

(assert (=> b!7900987 (= lt!2683236 (size!42953 input!1184))))

(declare-fun lt!2683238 () Int)

(assert (=> b!7900987 (= lt!2683238 (size!42953 (_2!38394 lt!2683239)))))

(declare-fun b!7900988 () Bool)

(declare-fun e!4663687 () Bool)

(declare-fun e!4663688 () Bool)

(declare-fun tp!2353906 () Bool)

(declare-fun inv!95122 (String!82902) Bool)

(declare-fun inv!95124 (TokenValueInjection!17100) Bool)

(assert (=> b!7900988 (= e!4663688 (and tp!2353906 (inv!95122 (tag!9444 (h!80586 rulesArg!141))) (inv!95124 (transformation!8580 (h!80586 rulesArg!141))) e!4663687))))

(declare-fun b!7900989 () Bool)

(assert (=> b!7900989 (= e!4663686 e!4663685)))

(declare-fun res!3134650 () Bool)

(assert (=> b!7900989 (=> res!3134650 e!4663685)))

(declare-fun lt!2683240 () Option!17862)

(assert (=> b!7900989 (= res!3134650 (or (and ((_ is None!17861) lt!2683240) ((_ is None!17861) lt!2683237)) ((_ is None!17861) lt!2683237) (not ((_ is None!17861) lt!2683240))))))

(declare-fun maxPrefix!4713 (LexerInterface!8172 List!74262 List!74261) Option!17862)

(assert (=> b!7900989 (= lt!2683237 (maxPrefix!4713 thiss!14377 (t!389169 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3760 (LexerInterface!8172 Rule!16960 List!74261) Option!17862)

(assert (=> b!7900989 (= lt!2683240 (maxPrefixOneRule!3760 thiss!14377 (h!80586 rulesArg!141) input!1184))))

(assert (=> b!7900990 (= e!4663687 (and tp!2353907 tp!2353910))))

(declare-fun b!7900991 () Bool)

(declare-fun res!3134644 () Bool)

(assert (=> b!7900991 (=> res!3134644 e!4663685)))

(declare-fun isDefined!14438 (Option!17862) Bool)

(assert (=> b!7900991 (= res!3134644 (not (isDefined!14438 lt!2683237)))))

(declare-fun b!7900992 () Bool)

(declare-fun tp_is_empty!52941 () Bool)

(declare-fun tp!2353909 () Bool)

(assert (=> b!7900992 (= e!4663692 (and tp_is_empty!52941 tp!2353909))))

(declare-fun b!7900993 () Bool)

(declare-fun res!3134645 () Bool)

(assert (=> b!7900993 (=> (not res!3134645) (not e!4663690))))

(declare-fun isEmpty!42527 (List!74262) Bool)

(assert (=> b!7900993 (= res!3134645 (not (isEmpty!42527 rulesArg!141)))))

(declare-fun b!7900994 () Bool)

(declare-fun tp!2353908 () Bool)

(assert (=> b!7900994 (= e!4663691 (and e!4663688 tp!2353908))))

(assert (= (and start!745316 res!3134647) b!7900984))

(assert (= (and b!7900984 res!3134648) b!7900993))

(assert (= (and b!7900993 res!3134645) b!7900985))

(assert (= (and b!7900985 (not res!3134643)) b!7900989))

(assert (= (and b!7900989 (not res!3134650)) b!7900986))

(assert (= (and b!7900986 (not res!3134646)) b!7900991))

(assert (= (and b!7900991 (not res!3134644)) b!7900983))

(assert (= (and b!7900983 (not res!3134649)) b!7900987))

(assert (= b!7900988 b!7900990))

(assert (= b!7900994 b!7900988))

(assert (= (and start!745316 ((_ is Cons!74138) rulesArg!141)) b!7900994))

(assert (= (and start!745316 ((_ is Cons!74137) input!1184)) b!7900992))

(declare-fun m!8275730 () Bool)

(assert (=> b!7900983 m!8275730))

(assert (=> b!7900983 m!8275730))

(declare-fun m!8275732 () Bool)

(assert (=> b!7900983 m!8275732))

(declare-fun m!8275734 () Bool)

(assert (=> b!7900983 m!8275734))

(declare-fun m!8275736 () Bool)

(assert (=> b!7900984 m!8275736))

(declare-fun m!8275738 () Bool)

(assert (=> b!7900993 m!8275738))

(declare-fun m!8275740 () Bool)

(assert (=> b!7900989 m!8275740))

(declare-fun m!8275742 () Bool)

(assert (=> b!7900989 m!8275742))

(declare-fun m!8275744 () Bool)

(assert (=> b!7900987 m!8275744))

(declare-fun m!8275746 () Bool)

(assert (=> b!7900987 m!8275746))

(declare-fun m!8275748 () Bool)

(assert (=> b!7900991 m!8275748))

(declare-fun m!8275750 () Bool)

(assert (=> b!7900986 m!8275750))

(declare-fun m!8275752 () Bool)

(assert (=> b!7900988 m!8275752))

(declare-fun m!8275754 () Bool)

(assert (=> b!7900988 m!8275754))

(declare-fun m!8275756 () Bool)

(assert (=> b!7900985 m!8275756))

(declare-fun m!8275758 () Bool)

(assert (=> b!7900985 m!8275758))

(check-sat (not b_next!135485) tp_is_empty!52941 (not b!7900987) b_and!352659 (not b!7900993) (not b!7900991) (not b!7900986) (not b!7900994) (not b!7900984) (not b!7900983) (not b!7900992) (not b!7900988) (not b_next!135487) (not b!7900985) (not b!7900989) b_and!352661)
(check-sat b_and!352661 b_and!352659 (not b_next!135487) (not b_next!135485))
