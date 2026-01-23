; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745328 () Bool)

(assert start!745328)

(declare-fun b!7901247 () Bool)

(declare-fun b_free!134719 () Bool)

(declare-fun b_next!135509 () Bool)

(assert (=> b!7901247 (= b_free!134719 (not b_next!135509))))

(declare-fun tp!2353998 () Bool)

(declare-fun b_and!352683 () Bool)

(assert (=> b!7901247 (= tp!2353998 b_and!352683)))

(declare-fun b_free!134721 () Bool)

(declare-fun b_next!135511 () Bool)

(assert (=> b!7901247 (= b_free!134721 (not b_next!135511))))

(declare-fun tp!2353997 () Bool)

(declare-fun b_and!352685 () Bool)

(assert (=> b!7901247 (= tp!2353997 b_and!352685)))

(declare-fun e!4663851 () Bool)

(declare-fun e!4663854 () Bool)

(declare-fun tp!2353996 () Bool)

(declare-datatypes ((List!74278 0))(
  ( (Nil!74154) (Cons!74154 (h!80602 (_ BitVec 16)) (t!389185 List!74278)) )
))
(declare-datatypes ((TokenValue!8902 0))(
  ( (FloatLiteralValue!17804 (text!62759 List!74278)) (TokenValueExt!8901 (__x!35091 Int)) (Broken!44510 (value!286656 List!74278)) (Object!9025) (End!8902) (Def!8902) (Underscore!8902) (Match!8902) (Else!8902) (Error!8902) (Case!8902) (If!8902) (Extends!8902) (Abstract!8902) (Class!8902) (Val!8902) (DelimiterValue!17804 (del!8962 List!74278)) (KeywordValue!8908 (value!286657 List!74278)) (CommentValue!17804 (value!286658 List!74278)) (WhitespaceValue!17804 (value!286659 List!74278)) (IndentationValue!8902 (value!286660 List!74278)) (String!82931) (Int32!8902) (Broken!44511 (value!286661 List!74278)) (Boolean!8903) (Unit!169178) (OperatorValue!8905 (op!8962 List!74278)) (IdentifierValue!17804 (value!286662 List!74278)) (IdentifierValue!17805 (value!286663 List!74278)) (WhitespaceValue!17805 (value!286664 List!74278)) (True!17804) (False!17804) (Broken!44512 (value!286665 List!74278)) (Broken!44513 (value!286666 List!74278)) (True!17805) (RightBrace!8902) (RightBracket!8902) (Colon!8902) (Null!8902) (Comma!8902) (LeftBracket!8902) (False!17805) (LeftBrace!8902) (ImaginaryLiteralValue!8902 (text!62760 List!74278)) (StringLiteralValue!26706 (value!286667 List!74278)) (EOFValue!8902 (value!286668 List!74278)) (IdentValue!8902 (value!286669 List!74278)) (DelimiterValue!17805 (value!286670 List!74278)) (DedentValue!8902 (value!286671 List!74278)) (NewLineValue!8902 (value!286672 List!74278)) (IntegerValue!26706 (value!286673 (_ BitVec 32)) (text!62761 List!74278)) (IntegerValue!26707 (value!286674 Int) (text!62762 List!74278)) (Times!8902) (Or!8902) (Equal!8902) (Minus!8902) (Broken!44514 (value!286675 List!74278)) (And!8902) (Div!8902) (LessEqual!8902) (Mod!8902) (Concat!30191) (Not!8902) (Plus!8902) (SpaceValue!8902 (value!286676 List!74278)) (IntegerValue!26708 (value!286677 Int) (text!62763 List!74278)) (StringLiteralValue!26707 (text!62764 List!74278)) (FloatLiteralValue!17805 (text!62765 List!74278)) (BytesLiteralValue!8902 (value!286678 List!74278)) (CommentValue!17805 (value!286679 List!74278)) (StringLiteralValue!26708 (value!286680 List!74278)) (ErrorTokenValue!8902 (msg!8963 List!74278)) )
))
(declare-datatypes ((C!42908 0))(
  ( (C!42909 (val!31918 Int)) )
))
(declare-datatypes ((List!74279 0))(
  ( (Nil!74155) (Cons!74155 (h!80603 C!42908) (t!389186 List!74279)) )
))
(declare-datatypes ((IArray!31581 0))(
  ( (IArray!31582 (innerList!15848 List!74279)) )
))
(declare-datatypes ((Conc!15760 0))(
  ( (Node!15760 (left!56572 Conc!15760) (right!56902 Conc!15760) (csize!31750 Int) (cheight!15971 Int)) (Leaf!30021 (xs!19142 IArray!31581) (csize!31751 Int)) (Empty!15760) )
))
(declare-datatypes ((BalanceConc!30638 0))(
  ( (BalanceConc!30639 (c!1450017 Conc!15760)) )
))
(declare-datatypes ((Regex!21289 0))(
  ( (ElementMatch!21289 (c!1450018 C!42908)) (Concat!30192 (regOne!43090 Regex!21289) (regTwo!43090 Regex!21289)) (EmptyExpr!21289) (Star!21289 (reg!21618 Regex!21289)) (EmptyLang!21289) (Union!21289 (regOne!43091 Regex!21289) (regTwo!43091 Regex!21289)) )
))
(declare-datatypes ((String!82932 0))(
  ( (String!82933 (value!286681 String)) )
))
(declare-datatypes ((TokenValueInjection!17112 0))(
  ( (TokenValueInjection!17113 (toValue!11631 Int) (toChars!11490 Int)) )
))
(declare-datatypes ((Rule!16972 0))(
  ( (Rule!16973 (regex!8586 Regex!21289) (tag!9450 String!82932) (isSeparator!8586 Bool) (transformation!8586 TokenValueInjection!17112)) )
))
(declare-datatypes ((List!74280 0))(
  ( (Nil!74156) (Cons!74156 (h!80604 Rule!16972) (t!389187 List!74280)) )
))
(declare-fun rulesArg!141 () List!74280)

(declare-fun b!7901244 () Bool)

(declare-fun inv!95137 (String!82932) Bool)

(declare-fun inv!95139 (TokenValueInjection!17112) Bool)

(assert (=> b!7901244 (= e!4663854 (and tp!2353996 (inv!95137 (tag!9450 (h!80604 rulesArg!141))) (inv!95139 (transformation!8586 (h!80604 rulesArg!141))) e!4663851))))

(declare-fun b!7901245 () Bool)

(declare-fun e!4663850 () Bool)

(declare-fun e!4663846 () Bool)

(assert (=> b!7901245 (= e!4663850 e!4663846)))

(declare-fun res!3134835 () Bool)

(assert (=> b!7901245 (=> res!3134835 e!4663846)))

(declare-fun lt!2683326 () List!74279)

(declare-datatypes ((Token!15592 0))(
  ( (Token!15593 (value!286682 TokenValue!8902) (rule!11872 Rule!16972) (size!42964 Int) (originalCharacters!8827 List!74279)) )
))
(declare-datatypes ((tuple2!70194 0))(
  ( (tuple2!70195 (_1!38400 Token!15592) (_2!38400 List!74279)) )
))
(declare-fun lt!2683327 () tuple2!70194)

(assert (=> b!7901245 (= res!3134835 (not (= lt!2683326 (originalCharacters!8827 (_1!38400 lt!2683327)))))))

(declare-fun list!19209 (BalanceConc!30638) List!74279)

(declare-fun charsOf!5530 (Token!15592) BalanceConc!30638)

(assert (=> b!7901245 (= lt!2683326 (list!19209 (charsOf!5530 (_1!38400 lt!2683327))))))

(declare-datatypes ((Option!17868 0))(
  ( (None!17867) (Some!17867 (v!55006 tuple2!70194)) )
))
(declare-fun lt!2683329 () Option!17868)

(declare-fun get!26633 (Option!17868) tuple2!70194)

(assert (=> b!7901245 (= lt!2683327 (get!26633 lt!2683329))))

(declare-fun b!7901246 () Bool)

(declare-fun res!3134842 () Bool)

(assert (=> b!7901246 (=> res!3134842 e!4663850)))

(declare-fun isEmpty!42538 (Option!17868) Bool)

(assert (=> b!7901246 (= res!3134842 (isEmpty!42538 lt!2683329))))

(assert (=> b!7901247 (= e!4663851 (and tp!2353998 tp!2353997))))

(declare-fun b!7901248 () Bool)

(declare-fun res!3134838 () Bool)

(assert (=> b!7901248 (=> res!3134838 e!4663846)))

(declare-fun apply!14327 (TokenValueInjection!17112 BalanceConc!30638) TokenValue!8902)

(declare-fun seqFromList!6145 (List!74279) BalanceConc!30638)

(assert (=> b!7901248 (= res!3134838 (not (= (value!286682 (_1!38400 lt!2683327)) (apply!14327 (transformation!8586 (rule!11872 (_1!38400 lt!2683327))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327)))))))))

(declare-fun b!7901249 () Bool)

(declare-fun res!3134836 () Bool)

(assert (=> b!7901249 (=> res!3134836 e!4663846)))

(declare-fun input!1184 () List!74279)

(declare-fun ++!18152 (List!74279 List!74279) List!74279)

(assert (=> b!7901249 (= res!3134836 (not (= (++!18152 lt!2683326 (_2!38400 lt!2683327)) input!1184)))))

(declare-fun b!7901250 () Bool)

(declare-fun e!4663847 () Bool)

(assert (=> b!7901250 (= e!4663847 e!4663850)))

(declare-fun res!3134840 () Bool)

(assert (=> b!7901250 (=> res!3134840 e!4663850)))

(declare-fun lt!2683328 () Option!17868)

(get-info :version)

(assert (=> b!7901250 (= res!3134840 (or (and ((_ is None!17867) lt!2683328) ((_ is None!17867) lt!2683329)) ((_ is None!17867) lt!2683329) (not ((_ is None!17867) lt!2683328))))))

(declare-datatypes ((LexerInterface!8178 0))(
  ( (LexerInterfaceExt!8175 (__x!35092 Int)) (Lexer!8176) )
))
(declare-fun thiss!14377 () LexerInterface!8178)

(declare-fun maxPrefix!4719 (LexerInterface!8178 List!74280 List!74279) Option!17868)

(assert (=> b!7901250 (= lt!2683329 (maxPrefix!4719 thiss!14377 (t!389187 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3766 (LexerInterface!8178 Rule!16972 List!74279) Option!17868)

(assert (=> b!7901250 (= lt!2683328 (maxPrefixOneRule!3766 thiss!14377 (h!80604 rulesArg!141) input!1184))))

(declare-fun b!7901251 () Bool)

(declare-fun res!3134833 () Bool)

(assert (=> b!7901251 (=> res!3134833 e!4663846)))

(declare-fun size!42965 (List!74279) Int)

(assert (=> b!7901251 (= res!3134833 (>= (size!42965 (_2!38400 lt!2683327)) (size!42965 input!1184)))))

(declare-fun b!7901252 () Bool)

(declare-fun e!4663852 () Bool)

(assert (=> b!7901252 (= e!4663852 (not e!4663847))))

(declare-fun res!3134837 () Bool)

(assert (=> b!7901252 (=> res!3134837 e!4663847)))

(assert (=> b!7901252 (= res!3134837 (or (and ((_ is Cons!74156) rulesArg!141) ((_ is Nil!74156) (t!389187 rulesArg!141))) (not ((_ is Cons!74156) rulesArg!141))))))

(declare-fun isPrefix!6419 (List!74279 List!74279) Bool)

(assert (=> b!7901252 (isPrefix!6419 input!1184 input!1184)))

(declare-datatypes ((Unit!169179 0))(
  ( (Unit!169180) )
))
(declare-fun lt!2683330 () Unit!169179)

(declare-fun lemmaIsPrefixRefl!3930 (List!74279 List!74279) Unit!169179)

(assert (=> b!7901252 (= lt!2683330 (lemmaIsPrefixRefl!3930 input!1184 input!1184))))

(declare-fun b!7901253 () Bool)

(declare-fun e!4663848 () Bool)

(declare-fun tp!2354000 () Bool)

(assert (=> b!7901253 (= e!4663848 (and e!4663854 tp!2354000))))

(declare-fun b!7901254 () Bool)

(declare-fun e!4663853 () Bool)

(declare-fun tp_is_empty!52953 () Bool)

(declare-fun tp!2353999 () Bool)

(assert (=> b!7901254 (= e!4663853 (and tp_is_empty!52953 tp!2353999))))

(declare-fun b!7901256 () Bool)

(declare-fun res!3134839 () Bool)

(assert (=> b!7901256 (=> (not res!3134839) (not e!4663852))))

(declare-fun rulesValidInductive!3397 (LexerInterface!8178 List!74280) Bool)

(assert (=> b!7901256 (= res!3134839 (rulesValidInductive!3397 thiss!14377 rulesArg!141))))

(declare-fun b!7901257 () Bool)

(declare-fun res!3134832 () Bool)

(assert (=> b!7901257 (=> (not res!3134832) (not e!4663852))))

(declare-fun isEmpty!42539 (List!74280) Bool)

(assert (=> b!7901257 (= res!3134832 (not (isEmpty!42539 rulesArg!141)))))

(declare-fun b!7901258 () Bool)

(declare-fun validRegex!11645 (Regex!21289) Bool)

(assert (=> b!7901258 (= e!4663846 (validRegex!11645 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))

(declare-fun res!3134841 () Bool)

(assert (=> start!745328 (=> (not res!3134841) (not e!4663852))))

(assert (=> start!745328 (= res!3134841 ((_ is Lexer!8176) thiss!14377))))

(assert (=> start!745328 e!4663852))

(assert (=> start!745328 true))

(assert (=> start!745328 e!4663848))

(assert (=> start!745328 e!4663853))

(declare-fun b!7901255 () Bool)

(declare-fun res!3134834 () Bool)

(assert (=> b!7901255 (=> res!3134834 e!4663850)))

(declare-fun isDefined!14444 (Option!17868) Bool)

(assert (=> b!7901255 (= res!3134834 (not (isDefined!14444 lt!2683329)))))

(assert (= (and start!745328 res!3134841) b!7901256))

(assert (= (and b!7901256 res!3134839) b!7901257))

(assert (= (and b!7901257 res!3134832) b!7901252))

(assert (= (and b!7901252 (not res!3134837)) b!7901250))

(assert (= (and b!7901250 (not res!3134840)) b!7901246))

(assert (= (and b!7901246 (not res!3134842)) b!7901255))

(assert (= (and b!7901255 (not res!3134834)) b!7901245))

(assert (= (and b!7901245 (not res!3134835)) b!7901251))

(assert (= (and b!7901251 (not res!3134833)) b!7901249))

(assert (= (and b!7901249 (not res!3134836)) b!7901248))

(assert (= (and b!7901248 (not res!3134838)) b!7901258))

(assert (= b!7901244 b!7901247))

(assert (= b!7901253 b!7901244))

(assert (= (and start!745328 ((_ is Cons!74156) rulesArg!141)) b!7901253))

(assert (= (and start!745328 ((_ is Cons!74155) input!1184)) b!7901254))

(declare-fun m!8275934 () Bool)

(assert (=> b!7901246 m!8275934))

(declare-fun m!8275936 () Bool)

(assert (=> b!7901252 m!8275936))

(declare-fun m!8275938 () Bool)

(assert (=> b!7901252 m!8275938))

(declare-fun m!8275940 () Bool)

(assert (=> b!7901251 m!8275940))

(declare-fun m!8275942 () Bool)

(assert (=> b!7901251 m!8275942))

(declare-fun m!8275944 () Bool)

(assert (=> b!7901249 m!8275944))

(declare-fun m!8275946 () Bool)

(assert (=> b!7901256 m!8275946))

(declare-fun m!8275948 () Bool)

(assert (=> b!7901258 m!8275948))

(declare-fun m!8275950 () Bool)

(assert (=> b!7901255 m!8275950))

(declare-fun m!8275952 () Bool)

(assert (=> b!7901257 m!8275952))

(declare-fun m!8275954 () Bool)

(assert (=> b!7901248 m!8275954))

(assert (=> b!7901248 m!8275954))

(declare-fun m!8275956 () Bool)

(assert (=> b!7901248 m!8275956))

(declare-fun m!8275958 () Bool)

(assert (=> b!7901244 m!8275958))

(declare-fun m!8275960 () Bool)

(assert (=> b!7901244 m!8275960))

(declare-fun m!8275962 () Bool)

(assert (=> b!7901245 m!8275962))

(assert (=> b!7901245 m!8275962))

(declare-fun m!8275964 () Bool)

(assert (=> b!7901245 m!8275964))

(declare-fun m!8275966 () Bool)

(assert (=> b!7901245 m!8275966))

(declare-fun m!8275968 () Bool)

(assert (=> b!7901250 m!8275968))

(declare-fun m!8275970 () Bool)

(assert (=> b!7901250 m!8275970))

(check-sat (not b!7901253) (not b!7901251) (not b!7901255) (not b!7901250) b_and!352683 (not b_next!135511) b_and!352685 (not b!7901256) tp_is_empty!52953 (not b_next!135509) (not b!7901245) (not b!7901248) (not b!7901252) (not b!7901258) (not b!7901246) (not b!7901257) (not b!7901244) (not b!7901254) (not b!7901249))
(check-sat b_and!352685 b_and!352683 (not b_next!135511) (not b_next!135509))
(get-model)

(declare-fun b!7901282 () Bool)

(declare-fun e!4663869 () Bool)

(assert (=> b!7901282 (= e!4663869 (>= (size!42965 input!1184) (size!42965 input!1184)))))

(declare-fun b!7901280 () Bool)

(declare-fun res!3134867 () Bool)

(declare-fun e!4663871 () Bool)

(assert (=> b!7901280 (=> (not res!3134867) (not e!4663871))))

(declare-fun head!16143 (List!74279) C!42908)

(assert (=> b!7901280 (= res!3134867 (= (head!16143 input!1184) (head!16143 input!1184)))))

(declare-fun b!7901279 () Bool)

(declare-fun e!4663870 () Bool)

(assert (=> b!7901279 (= e!4663870 e!4663871)))

(declare-fun res!3134869 () Bool)

(assert (=> b!7901279 (=> (not res!3134869) (not e!4663871))))

(assert (=> b!7901279 (= res!3134869 (not ((_ is Nil!74155) input!1184)))))

(declare-fun d!2358259 () Bool)

(assert (=> d!2358259 e!4663869))

(declare-fun res!3134868 () Bool)

(assert (=> d!2358259 (=> res!3134868 e!4663869)))

(declare-fun lt!2683339 () Bool)

(assert (=> d!2358259 (= res!3134868 (not lt!2683339))))

(assert (=> d!2358259 (= lt!2683339 e!4663870)))

(declare-fun res!3134866 () Bool)

(assert (=> d!2358259 (=> res!3134866 e!4663870)))

(assert (=> d!2358259 (= res!3134866 ((_ is Nil!74155) input!1184))))

(assert (=> d!2358259 (= (isPrefix!6419 input!1184 input!1184) lt!2683339)))

(declare-fun b!7901281 () Bool)

(declare-fun tail!15686 (List!74279) List!74279)

(assert (=> b!7901281 (= e!4663871 (isPrefix!6419 (tail!15686 input!1184) (tail!15686 input!1184)))))

(assert (= (and d!2358259 (not res!3134866)) b!7901279))

(assert (= (and b!7901279 res!3134869) b!7901280))

(assert (= (and b!7901280 res!3134867) b!7901281))

(assert (= (and d!2358259 (not res!3134868)) b!7901282))

(assert (=> b!7901282 m!8275942))

(assert (=> b!7901282 m!8275942))

(declare-fun m!8275976 () Bool)

(assert (=> b!7901280 m!8275976))

(assert (=> b!7901280 m!8275976))

(declare-fun m!8275978 () Bool)

(assert (=> b!7901281 m!8275978))

(assert (=> b!7901281 m!8275978))

(assert (=> b!7901281 m!8275978))

(assert (=> b!7901281 m!8275978))

(declare-fun m!8275980 () Bool)

(assert (=> b!7901281 m!8275980))

(assert (=> b!7901252 d!2358259))

(declare-fun d!2358261 () Bool)

(assert (=> d!2358261 (isPrefix!6419 input!1184 input!1184)))

(declare-fun lt!2683342 () Unit!169179)

(declare-fun choose!59713 (List!74279 List!74279) Unit!169179)

(assert (=> d!2358261 (= lt!2683342 (choose!59713 input!1184 input!1184))))

(assert (=> d!2358261 (= (lemmaIsPrefixRefl!3930 input!1184 input!1184) lt!2683342)))

(declare-fun bs!1967952 () Bool)

(assert (= bs!1967952 d!2358261))

(assert (=> bs!1967952 m!8275936))

(declare-fun m!8275982 () Bool)

(assert (=> bs!1967952 m!8275982))

(assert (=> b!7901252 d!2358261))

(declare-fun d!2358263 () Bool)

(assert (=> d!2358263 (= (isDefined!14444 lt!2683329) (not (isEmpty!42538 lt!2683329)))))

(declare-fun bs!1967953 () Bool)

(assert (= bs!1967953 d!2358263))

(assert (=> bs!1967953 m!8275934))

(assert (=> b!7901255 d!2358263))

(declare-fun d!2358265 () Bool)

(assert (=> d!2358265 (= (inv!95137 (tag!9450 (h!80604 rulesArg!141))) (= (mod (str.len (value!286681 (tag!9450 (h!80604 rulesArg!141)))) 2) 0))))

(assert (=> b!7901244 d!2358265))

(declare-fun d!2358267 () Bool)

(declare-fun res!3134872 () Bool)

(declare-fun e!4663874 () Bool)

(assert (=> d!2358267 (=> (not res!3134872) (not e!4663874))))

(declare-fun semiInverseModEq!3811 (Int Int) Bool)

(assert (=> d!2358267 (= res!3134872 (semiInverseModEq!3811 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))))))

(assert (=> d!2358267 (= (inv!95139 (transformation!8586 (h!80604 rulesArg!141))) e!4663874)))

(declare-fun b!7901285 () Bool)

(declare-fun equivClasses!3626 (Int Int) Bool)

(assert (=> b!7901285 (= e!4663874 (equivClasses!3626 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))))))

(assert (= (and d!2358267 res!3134872) b!7901285))

(declare-fun m!8275984 () Bool)

(assert (=> d!2358267 m!8275984))

(declare-fun m!8275986 () Bool)

(assert (=> b!7901285 m!8275986))

(assert (=> b!7901244 d!2358267))

(declare-fun d!2358269 () Bool)

(assert (=> d!2358269 true))

(declare-fun lt!2683376 () Bool)

(declare-fun lambda!472419 () Int)

(declare-fun forall!18441 (List!74280 Int) Bool)

(assert (=> d!2358269 (= lt!2683376 (forall!18441 rulesArg!141 lambda!472419))))

(declare-fun e!4663902 () Bool)

(assert (=> d!2358269 (= lt!2683376 e!4663902)))

(declare-fun res!3134922 () Bool)

(assert (=> d!2358269 (=> res!3134922 e!4663902)))

(assert (=> d!2358269 (= res!3134922 (not ((_ is Cons!74156) rulesArg!141)))))

(assert (=> d!2358269 (= (rulesValidInductive!3397 thiss!14377 rulesArg!141) lt!2683376)))

(declare-fun b!7901348 () Bool)

(declare-fun e!4663903 () Bool)

(assert (=> b!7901348 (= e!4663902 e!4663903)))

(declare-fun res!3134921 () Bool)

(assert (=> b!7901348 (=> (not res!3134921) (not e!4663903))))

(declare-fun ruleValid!3932 (LexerInterface!8178 Rule!16972) Bool)

(assert (=> b!7901348 (= res!3134921 (ruleValid!3932 thiss!14377 (h!80604 rulesArg!141)))))

(declare-fun b!7901349 () Bool)

(assert (=> b!7901349 (= e!4663903 (rulesValidInductive!3397 thiss!14377 (t!389187 rulesArg!141)))))

(assert (= (and d!2358269 (not res!3134922)) b!7901348))

(assert (= (and b!7901348 res!3134921) b!7901349))

(declare-fun m!8276062 () Bool)

(assert (=> d!2358269 m!8276062))

(declare-fun m!8276064 () Bool)

(assert (=> b!7901348 m!8276064))

(declare-fun m!8276066 () Bool)

(assert (=> b!7901349 m!8276066))

(assert (=> b!7901256 d!2358269))

(declare-fun d!2358279 () Bool)

(declare-fun list!19211 (Conc!15760) List!74279)

(assert (=> d!2358279 (= (list!19209 (charsOf!5530 (_1!38400 lt!2683327))) (list!19211 (c!1450017 (charsOf!5530 (_1!38400 lt!2683327)))))))

(declare-fun bs!1967954 () Bool)

(assert (= bs!1967954 d!2358279))

(declare-fun m!8276068 () Bool)

(assert (=> bs!1967954 m!8276068))

(assert (=> b!7901245 d!2358279))

(declare-fun d!2358281 () Bool)

(declare-fun lt!2683379 () BalanceConc!30638)

(assert (=> d!2358281 (= (list!19209 lt!2683379) (originalCharacters!8827 (_1!38400 lt!2683327)))))

(declare-fun dynLambda!30042 (Int TokenValue!8902) BalanceConc!30638)

(assert (=> d!2358281 (= lt!2683379 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327))))))

(assert (=> d!2358281 (= (charsOf!5530 (_1!38400 lt!2683327)) lt!2683379)))

(declare-fun b_lambda!289667 () Bool)

(assert (=> (not b_lambda!289667) (not d!2358281)))

(declare-fun t!389189 () Bool)

(declare-fun tb!262751 () Bool)

(assert (=> (and b!7901247 (= (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327))))) t!389189) tb!262751))

(declare-fun b!7901374 () Bool)

(declare-fun e!4663920 () Bool)

(declare-fun tp!2354003 () Bool)

(declare-fun inv!95142 (Conc!15760) Bool)

(assert (=> b!7901374 (= e!4663920 (and (inv!95142 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327))))) tp!2354003))))

(declare-fun result!359790 () Bool)

(declare-fun inv!95143 (BalanceConc!30638) Bool)

(assert (=> tb!262751 (= result!359790 (and (inv!95143 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327)))) e!4663920))))

(assert (= tb!262751 b!7901374))

(declare-fun m!8276070 () Bool)

(assert (=> b!7901374 m!8276070))

(declare-fun m!8276072 () Bool)

(assert (=> tb!262751 m!8276072))

(assert (=> d!2358281 t!389189))

(declare-fun b_and!352687 () Bool)

(assert (= b_and!352685 (and (=> t!389189 result!359790) b_and!352687)))

(declare-fun m!8276074 () Bool)

(assert (=> d!2358281 m!8276074))

(declare-fun m!8276076 () Bool)

(assert (=> d!2358281 m!8276076))

(assert (=> b!7901245 d!2358281))

(declare-fun d!2358283 () Bool)

(assert (=> d!2358283 (= (get!26633 lt!2683329) (v!55006 lt!2683329))))

(assert (=> b!7901245 d!2358283))

(declare-fun d!2358285 () Bool)

(assert (=> d!2358285 (= (isEmpty!42539 rulesArg!141) ((_ is Nil!74156) rulesArg!141))))

(assert (=> b!7901257 d!2358285))

(declare-fun d!2358289 () Bool)

(assert (=> d!2358289 (= (isEmpty!42538 lt!2683329) (not ((_ is Some!17867) lt!2683329)))))

(assert (=> b!7901246 d!2358289))

(declare-fun d!2358291 () Bool)

(declare-fun dynLambda!30043 (Int BalanceConc!30638) TokenValue!8902)

(assert (=> d!2358291 (= (apply!14327 (transformation!8586 (rule!11872 (_1!38400 lt!2683327))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327)))) (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327)))))))

(declare-fun b_lambda!289669 () Bool)

(assert (=> (not b_lambda!289669) (not d!2358291)))

(declare-fun t!389191 () Bool)

(declare-fun tb!262753 () Bool)

(assert (=> (and b!7901247 (= (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327))))) t!389191) tb!262753))

(declare-fun result!359794 () Bool)

(declare-fun inv!21 (TokenValue!8902) Bool)

(assert (=> tb!262753 (= result!359794 (inv!21 (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327))))))))

(declare-fun m!8276084 () Bool)

(assert (=> tb!262753 m!8276084))

(assert (=> d!2358291 t!389191))

(declare-fun b_and!352689 () Bool)

(assert (= b_and!352683 (and (=> t!389191 result!359794) b_and!352689)))

(assert (=> d!2358291 m!8275954))

(declare-fun m!8276086 () Bool)

(assert (=> d!2358291 m!8276086))

(assert (=> b!7901248 d!2358291))

(declare-fun d!2358293 () Bool)

(declare-fun fromListB!2774 (List!74279) BalanceConc!30638)

(assert (=> d!2358293 (= (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327))) (fromListB!2774 (originalCharacters!8827 (_1!38400 lt!2683327))))))

(declare-fun bs!1967955 () Bool)

(assert (= bs!1967955 d!2358293))

(declare-fun m!8276088 () Bool)

(assert (=> bs!1967955 m!8276088))

(assert (=> b!7901248 d!2358293))

(declare-fun b!7901419 () Bool)

(declare-fun e!4663958 () Bool)

(declare-fun e!4663954 () Bool)

(assert (=> b!7901419 (= e!4663958 e!4663954)))

(declare-fun res!3134959 () Bool)

(assert (=> b!7901419 (=> (not res!3134959) (not e!4663954))))

(declare-fun call!733157 () Bool)

(assert (=> b!7901419 (= res!3134959 call!733157)))

(declare-fun b!7901420 () Bool)

(declare-fun res!3134961 () Bool)

(assert (=> b!7901420 (=> res!3134961 e!4663958)))

(assert (=> b!7901420 (= res!3134961 (not ((_ is Concat!30192) (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))

(declare-fun e!4663956 () Bool)

(assert (=> b!7901420 (= e!4663956 e!4663958)))

(declare-fun b!7901421 () Bool)

(declare-fun e!4663957 () Bool)

(declare-fun e!4663959 () Bool)

(assert (=> b!7901421 (= e!4663957 e!4663959)))

(declare-fun c!1450042 () Bool)

(assert (=> b!7901421 (= c!1450042 ((_ is Star!21289) (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))

(declare-fun b!7901422 () Bool)

(declare-fun e!4663960 () Bool)

(declare-fun call!733158 () Bool)

(assert (=> b!7901422 (= e!4663960 call!733158)))

(declare-fun bm!733152 () Bool)

(declare-fun call!733159 () Bool)

(assert (=> bm!733152 (= call!733159 call!733158)))

(declare-fun b!7901423 () Bool)

(declare-fun res!3134960 () Bool)

(declare-fun e!4663955 () Bool)

(assert (=> b!7901423 (=> (not res!3134960) (not e!4663955))))

(assert (=> b!7901423 (= res!3134960 call!733159)))

(assert (=> b!7901423 (= e!4663956 e!4663955)))

(declare-fun b!7901424 () Bool)

(assert (=> b!7901424 (= e!4663954 call!733159)))

(declare-fun b!7901425 () Bool)

(assert (=> b!7901425 (= e!4663955 call!733157)))

(declare-fun b!7901426 () Bool)

(assert (=> b!7901426 (= e!4663959 e!4663960)))

(declare-fun res!3134958 () Bool)

(declare-fun nullable!9482 (Regex!21289) Bool)

(assert (=> b!7901426 (= res!3134958 (not (nullable!9482 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))

(assert (=> b!7901426 (=> (not res!3134958) (not e!4663960))))

(declare-fun bm!733153 () Bool)

(declare-fun c!1450043 () Bool)

(assert (=> bm!733153 (= call!733157 (validRegex!11645 (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))

(declare-fun b!7901427 () Bool)

(assert (=> b!7901427 (= e!4663959 e!4663956)))

(assert (=> b!7901427 (= c!1450043 ((_ is Union!21289) (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))

(declare-fun bm!733154 () Bool)

(assert (=> bm!733154 (= call!733158 (validRegex!11645 (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))))

(declare-fun d!2358295 () Bool)

(declare-fun res!3134957 () Bool)

(assert (=> d!2358295 (=> res!3134957 e!4663957)))

(assert (=> d!2358295 (= res!3134957 ((_ is ElementMatch!21289) (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))

(assert (=> d!2358295 (= (validRegex!11645 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) e!4663957)))

(assert (= (and d!2358295 (not res!3134957)) b!7901421))

(assert (= (and b!7901421 c!1450042) b!7901426))

(assert (= (and b!7901421 (not c!1450042)) b!7901427))

(assert (= (and b!7901426 res!3134958) b!7901422))

(assert (= (and b!7901427 c!1450043) b!7901423))

(assert (= (and b!7901427 (not c!1450043)) b!7901420))

(assert (= (and b!7901423 res!3134960) b!7901425))

(assert (= (and b!7901420 (not res!3134961)) b!7901419))

(assert (= (and b!7901419 res!3134959) b!7901424))

(assert (= (or b!7901423 b!7901424) bm!733152))

(assert (= (or b!7901425 b!7901419) bm!733153))

(assert (= (or b!7901422 bm!733152) bm!733154))

(declare-fun m!8276110 () Bool)

(assert (=> b!7901426 m!8276110))

(declare-fun m!8276112 () Bool)

(assert (=> bm!733153 m!8276112))

(declare-fun m!8276114 () Bool)

(assert (=> bm!733154 m!8276114))

(assert (=> b!7901258 d!2358295))

(declare-fun d!2358305 () Bool)

(declare-fun e!4663975 () Bool)

(assert (=> d!2358305 e!4663975))

(declare-fun res!3134975 () Bool)

(assert (=> d!2358305 (=> (not res!3134975) (not e!4663975))))

(declare-fun lt!2683387 () List!74279)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15711 (List!74279) (InoxSet C!42908))

(assert (=> d!2358305 (= res!3134975 (= (content!15711 lt!2683387) ((_ map or) (content!15711 lt!2683326) (content!15711 (_2!38400 lt!2683327)))))))

(declare-fun e!4663974 () List!74279)

(assert (=> d!2358305 (= lt!2683387 e!4663974)))

(declare-fun c!1450046 () Bool)

(assert (=> d!2358305 (= c!1450046 ((_ is Nil!74155) lt!2683326))))

(assert (=> d!2358305 (= (++!18152 lt!2683326 (_2!38400 lt!2683327)) lt!2683387)))

(declare-fun b!7901448 () Bool)

(declare-fun res!3134974 () Bool)

(assert (=> b!7901448 (=> (not res!3134974) (not e!4663975))))

(assert (=> b!7901448 (= res!3134974 (= (size!42965 lt!2683387) (+ (size!42965 lt!2683326) (size!42965 (_2!38400 lt!2683327)))))))

(declare-fun b!7901449 () Bool)

(assert (=> b!7901449 (= e!4663975 (or (not (= (_2!38400 lt!2683327) Nil!74155)) (= lt!2683387 lt!2683326)))))

(declare-fun b!7901446 () Bool)

(assert (=> b!7901446 (= e!4663974 (_2!38400 lt!2683327))))

(declare-fun b!7901447 () Bool)

(assert (=> b!7901447 (= e!4663974 (Cons!74155 (h!80603 lt!2683326) (++!18152 (t!389186 lt!2683326) (_2!38400 lt!2683327))))))

(assert (= (and d!2358305 c!1450046) b!7901446))

(assert (= (and d!2358305 (not c!1450046)) b!7901447))

(assert (= (and d!2358305 res!3134975) b!7901448))

(assert (= (and b!7901448 res!3134974) b!7901449))

(declare-fun m!8276118 () Bool)

(assert (=> d!2358305 m!8276118))

(declare-fun m!8276120 () Bool)

(assert (=> d!2358305 m!8276120))

(declare-fun m!8276122 () Bool)

(assert (=> d!2358305 m!8276122))

(declare-fun m!8276124 () Bool)

(assert (=> b!7901448 m!8276124))

(declare-fun m!8276126 () Bool)

(assert (=> b!7901448 m!8276126))

(assert (=> b!7901448 m!8275940))

(declare-fun m!8276128 () Bool)

(assert (=> b!7901447 m!8276128))

(assert (=> b!7901249 d!2358305))

(declare-fun d!2358309 () Bool)

(declare-fun lt!2683391 () Int)

(assert (=> d!2358309 (>= lt!2683391 0)))

(declare-fun e!4663981 () Int)

(assert (=> d!2358309 (= lt!2683391 e!4663981)))

(declare-fun c!1450049 () Bool)

(assert (=> d!2358309 (= c!1450049 ((_ is Nil!74155) (_2!38400 lt!2683327)))))

(assert (=> d!2358309 (= (size!42965 (_2!38400 lt!2683327)) lt!2683391)))

(declare-fun b!7901458 () Bool)

(assert (=> b!7901458 (= e!4663981 0)))

(declare-fun b!7901459 () Bool)

(assert (=> b!7901459 (= e!4663981 (+ 1 (size!42965 (t!389186 (_2!38400 lt!2683327)))))))

(assert (= (and d!2358309 c!1450049) b!7901458))

(assert (= (and d!2358309 (not c!1450049)) b!7901459))

(declare-fun m!8276136 () Bool)

(assert (=> b!7901459 m!8276136))

(assert (=> b!7901251 d!2358309))

(declare-fun d!2358313 () Bool)

(declare-fun lt!2683392 () Int)

(assert (=> d!2358313 (>= lt!2683392 0)))

(declare-fun e!4663982 () Int)

(assert (=> d!2358313 (= lt!2683392 e!4663982)))

(declare-fun c!1450050 () Bool)

(assert (=> d!2358313 (= c!1450050 ((_ is Nil!74155) input!1184))))

(assert (=> d!2358313 (= (size!42965 input!1184) lt!2683392)))

(declare-fun b!7901460 () Bool)

(assert (=> b!7901460 (= e!4663982 0)))

(declare-fun b!7901461 () Bool)

(assert (=> b!7901461 (= e!4663982 (+ 1 (size!42965 (t!389186 input!1184))))))

(assert (= (and d!2358313 c!1450050) b!7901460))

(assert (= (and d!2358313 (not c!1450050)) b!7901461))

(declare-fun m!8276138 () Bool)

(assert (=> b!7901461 m!8276138))

(assert (=> b!7901251 d!2358313))

(declare-fun call!733162 () Option!17868)

(declare-fun bm!733157 () Bool)

(assert (=> bm!733157 (= call!733162 (maxPrefixOneRule!3766 thiss!14377 (h!80604 (t!389187 rulesArg!141)) input!1184))))

(declare-fun b!7901515 () Bool)

(declare-fun res!3134997 () Bool)

(declare-fun e!4664011 () Bool)

(assert (=> b!7901515 (=> (not res!3134997) (not e!4664011))))

(declare-fun lt!2683413 () Option!17868)

(assert (=> b!7901515 (= res!3134997 (= (++!18152 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413)))) (_2!38400 (get!26633 lt!2683413))) input!1184))))

(declare-fun b!7901516 () Bool)

(declare-fun contains!20886 (List!74280 Rule!16972) Bool)

(assert (=> b!7901516 (= e!4664011 (contains!20886 (t!389187 rulesArg!141) (rule!11872 (_1!38400 (get!26633 lt!2683413)))))))

(declare-fun b!7901517 () Bool)

(declare-fun res!3134995 () Bool)

(assert (=> b!7901517 (=> (not res!3134995) (not e!4664011))))

(assert (=> b!7901517 (= res!3134995 (= (value!286682 (_1!38400 (get!26633 lt!2683413))) (apply!14327 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683413)))))))))

(declare-fun d!2358315 () Bool)

(declare-fun e!4664012 () Bool)

(assert (=> d!2358315 e!4664012))

(declare-fun res!3134999 () Bool)

(assert (=> d!2358315 (=> res!3134999 e!4664012)))

(assert (=> d!2358315 (= res!3134999 (isEmpty!42538 lt!2683413))))

(declare-fun e!4664010 () Option!17868)

(assert (=> d!2358315 (= lt!2683413 e!4664010)))

(declare-fun c!1450053 () Bool)

(assert (=> d!2358315 (= c!1450053 (and ((_ is Cons!74156) (t!389187 rulesArg!141)) ((_ is Nil!74156) (t!389187 (t!389187 rulesArg!141)))))))

(declare-fun lt!2683410 () Unit!169179)

(declare-fun lt!2683409 () Unit!169179)

(assert (=> d!2358315 (= lt!2683410 lt!2683409)))

(assert (=> d!2358315 (isPrefix!6419 input!1184 input!1184)))

(assert (=> d!2358315 (= lt!2683409 (lemmaIsPrefixRefl!3930 input!1184 input!1184))))

(assert (=> d!2358315 (rulesValidInductive!3397 thiss!14377 (t!389187 rulesArg!141))))

(assert (=> d!2358315 (= (maxPrefix!4719 thiss!14377 (t!389187 rulesArg!141) input!1184) lt!2683413)))

(declare-fun b!7901518 () Bool)

(declare-fun res!3134994 () Bool)

(assert (=> b!7901518 (=> (not res!3134994) (not e!4664011))))

(assert (=> b!7901518 (= res!3134994 (< (size!42965 (_2!38400 (get!26633 lt!2683413))) (size!42965 input!1184)))))

(declare-fun b!7901519 () Bool)

(assert (=> b!7901519 (= e!4664012 e!4664011)))

(declare-fun res!3135000 () Bool)

(assert (=> b!7901519 (=> (not res!3135000) (not e!4664011))))

(assert (=> b!7901519 (= res!3135000 (isDefined!14444 lt!2683413))))

(declare-fun b!7901520 () Bool)

(declare-fun res!3134996 () Bool)

(assert (=> b!7901520 (=> (not res!3134996) (not e!4664011))))

(declare-fun matchR!10642 (Regex!21289 List!74279) Bool)

(assert (=> b!7901520 (= res!3134996 (matchR!10642 (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))) (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))))))

(declare-fun b!7901521 () Bool)

(declare-fun res!3134998 () Bool)

(assert (=> b!7901521 (=> (not res!3134998) (not e!4664011))))

(assert (=> b!7901521 (= res!3134998 (= (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413)))) (originalCharacters!8827 (_1!38400 (get!26633 lt!2683413)))))))

(declare-fun b!7901522 () Bool)

(assert (=> b!7901522 (= e!4664010 call!733162)))

(declare-fun b!7901523 () Bool)

(declare-fun lt!2683412 () Option!17868)

(declare-fun lt!2683411 () Option!17868)

(assert (=> b!7901523 (= e!4664010 (ite (and ((_ is None!17867) lt!2683412) ((_ is None!17867) lt!2683411)) None!17867 (ite ((_ is None!17867) lt!2683411) lt!2683412 (ite ((_ is None!17867) lt!2683412) lt!2683411 (ite (>= (size!42964 (_1!38400 (v!55006 lt!2683412))) (size!42964 (_1!38400 (v!55006 lt!2683411)))) lt!2683412 lt!2683411)))))))

(assert (=> b!7901523 (= lt!2683412 call!733162)))

(assert (=> b!7901523 (= lt!2683411 (maxPrefix!4719 thiss!14377 (t!389187 (t!389187 rulesArg!141)) input!1184))))

(assert (= (and d!2358315 c!1450053) b!7901522))

(assert (= (and d!2358315 (not c!1450053)) b!7901523))

(assert (= (or b!7901522 b!7901523) bm!733157))

(assert (= (and d!2358315 (not res!3134999)) b!7901519))

(assert (= (and b!7901519 res!3135000) b!7901521))

(assert (= (and b!7901521 res!3134998) b!7901518))

(assert (= (and b!7901518 res!3134994) b!7901515))

(assert (= (and b!7901515 res!3134997) b!7901517))

(assert (= (and b!7901517 res!3134995) b!7901520))

(assert (= (and b!7901520 res!3134996) b!7901516))

(declare-fun m!8276156 () Bool)

(assert (=> b!7901519 m!8276156))

(declare-fun m!8276158 () Bool)

(assert (=> b!7901515 m!8276158))

(declare-fun m!8276160 () Bool)

(assert (=> b!7901515 m!8276160))

(assert (=> b!7901515 m!8276160))

(declare-fun m!8276162 () Bool)

(assert (=> b!7901515 m!8276162))

(assert (=> b!7901515 m!8276162))

(declare-fun m!8276164 () Bool)

(assert (=> b!7901515 m!8276164))

(assert (=> b!7901520 m!8276158))

(assert (=> b!7901520 m!8276160))

(assert (=> b!7901520 m!8276160))

(assert (=> b!7901520 m!8276162))

(assert (=> b!7901520 m!8276162))

(declare-fun m!8276166 () Bool)

(assert (=> b!7901520 m!8276166))

(declare-fun m!8276168 () Bool)

(assert (=> b!7901523 m!8276168))

(declare-fun m!8276170 () Bool)

(assert (=> d!2358315 m!8276170))

(assert (=> d!2358315 m!8275936))

(assert (=> d!2358315 m!8275938))

(assert (=> d!2358315 m!8276066))

(assert (=> b!7901517 m!8276158))

(declare-fun m!8276172 () Bool)

(assert (=> b!7901517 m!8276172))

(assert (=> b!7901517 m!8276172))

(declare-fun m!8276174 () Bool)

(assert (=> b!7901517 m!8276174))

(declare-fun m!8276176 () Bool)

(assert (=> bm!733157 m!8276176))

(assert (=> b!7901516 m!8276158))

(declare-fun m!8276178 () Bool)

(assert (=> b!7901516 m!8276178))

(assert (=> b!7901518 m!8276158))

(declare-fun m!8276180 () Bool)

(assert (=> b!7901518 m!8276180))

(assert (=> b!7901518 m!8275942))

(assert (=> b!7901521 m!8276158))

(assert (=> b!7901521 m!8276160))

(assert (=> b!7901521 m!8276160))

(assert (=> b!7901521 m!8276162))

(assert (=> b!7901250 d!2358315))

(declare-fun b!7901542 () Bool)

(declare-fun e!4664022 () Option!17868)

(declare-datatypes ((tuple2!70198 0))(
  ( (tuple2!70199 (_1!38402 List!74279) (_2!38402 List!74279)) )
))
(declare-fun lt!2683424 () tuple2!70198)

(declare-fun size!42967 (BalanceConc!30638) Int)

(assert (=> b!7901542 (= e!4664022 (Some!17867 (tuple2!70195 (Token!15593 (apply!14327 (transformation!8586 (h!80604 rulesArg!141)) (seqFromList!6145 (_1!38402 lt!2683424))) (h!80604 rulesArg!141) (size!42967 (seqFromList!6145 (_1!38402 lt!2683424))) (_1!38402 lt!2683424)) (_2!38402 lt!2683424))))))

(declare-fun lt!2683425 () Unit!169179)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2114 (Regex!21289 List!74279) Unit!169179)

(assert (=> b!7901542 (= lt!2683425 (longestMatchIsAcceptedByMatchOrIsEmpty!2114 (regex!8586 (h!80604 rulesArg!141)) input!1184))))

(declare-fun res!3135021 () Bool)

(declare-fun isEmpty!42541 (List!74279) Bool)

(declare-fun findLongestMatchInner!2151 (Regex!21289 List!74279 Int List!74279 List!74279 Int) tuple2!70198)

(assert (=> b!7901542 (= res!3135021 (isEmpty!42541 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(declare-fun e!4664024 () Bool)

(assert (=> b!7901542 (=> res!3135021 e!4664024)))

(assert (=> b!7901542 e!4664024))

(declare-fun lt!2683428 () Unit!169179)

(assert (=> b!7901542 (= lt!2683428 lt!2683425)))

(declare-fun lt!2683427 () Unit!169179)

(declare-fun lemmaSemiInverse!2661 (TokenValueInjection!17112 BalanceConc!30638) Unit!169179)

(assert (=> b!7901542 (= lt!2683427 (lemmaSemiInverse!2661 (transformation!8586 (h!80604 rulesArg!141)) (seqFromList!6145 (_1!38402 lt!2683424))))))

(declare-fun b!7901543 () Bool)

(declare-fun e!4664023 () Bool)

(declare-fun e!4664021 () Bool)

(assert (=> b!7901543 (= e!4664023 e!4664021)))

(declare-fun res!3135016 () Bool)

(assert (=> b!7901543 (=> (not res!3135016) (not e!4664021))))

(declare-fun lt!2683426 () Option!17868)

(assert (=> b!7901543 (= res!3135016 (matchR!10642 (regex!8586 (h!80604 rulesArg!141)) (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))))))

(declare-fun b!7901544 () Bool)

(assert (=> b!7901544 (= e!4664021 (= (size!42964 (_1!38400 (get!26633 lt!2683426))) (size!42965 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426))))))))

(declare-fun b!7901545 () Bool)

(declare-fun res!3135019 () Bool)

(assert (=> b!7901545 (=> (not res!3135019) (not e!4664021))))

(assert (=> b!7901545 (= res!3135019 (= (++!18152 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426)))) (_2!38400 (get!26633 lt!2683426))) input!1184))))

(declare-fun b!7901547 () Bool)

(assert (=> b!7901547 (= e!4664022 None!17867)))

(declare-fun b!7901548 () Bool)

(declare-fun res!3135020 () Bool)

(assert (=> b!7901548 (=> (not res!3135020) (not e!4664021))))

(assert (=> b!7901548 (= res!3135020 (= (rule!11872 (_1!38400 (get!26633 lt!2683426))) (h!80604 rulesArg!141)))))

(declare-fun b!7901549 () Bool)

(declare-fun res!3135018 () Bool)

(assert (=> b!7901549 (=> (not res!3135018) (not e!4664021))))

(assert (=> b!7901549 (= res!3135018 (< (size!42965 (_2!38400 (get!26633 lt!2683426))) (size!42965 input!1184)))))

(declare-fun b!7901550 () Bool)

(assert (=> b!7901550 (= e!4664024 (matchR!10642 (regex!8586 (h!80604 rulesArg!141)) (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(declare-fun b!7901546 () Bool)

(declare-fun res!3135015 () Bool)

(assert (=> b!7901546 (=> (not res!3135015) (not e!4664021))))

(assert (=> b!7901546 (= res!3135015 (= (value!286682 (_1!38400 (get!26633 lt!2683426))) (apply!14327 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426)))))))))

(declare-fun d!2358327 () Bool)

(assert (=> d!2358327 e!4664023))

(declare-fun res!3135017 () Bool)

(assert (=> d!2358327 (=> res!3135017 e!4664023)))

(assert (=> d!2358327 (= res!3135017 (isEmpty!42538 lt!2683426))))

(assert (=> d!2358327 (= lt!2683426 e!4664022)))

(declare-fun c!1450056 () Bool)

(assert (=> d!2358327 (= c!1450056 (isEmpty!42541 (_1!38402 lt!2683424)))))

(declare-fun findLongestMatch!1918 (Regex!21289 List!74279) tuple2!70198)

(assert (=> d!2358327 (= lt!2683424 (findLongestMatch!1918 (regex!8586 (h!80604 rulesArg!141)) input!1184))))

(assert (=> d!2358327 (ruleValid!3932 thiss!14377 (h!80604 rulesArg!141))))

(assert (=> d!2358327 (= (maxPrefixOneRule!3766 thiss!14377 (h!80604 rulesArg!141) input!1184) lt!2683426)))

(assert (= (and d!2358327 c!1450056) b!7901547))

(assert (= (and d!2358327 (not c!1450056)) b!7901542))

(assert (= (and b!7901542 (not res!3135021)) b!7901550))

(assert (= (and d!2358327 (not res!3135017)) b!7901543))

(assert (= (and b!7901543 res!3135016) b!7901545))

(assert (= (and b!7901545 res!3135019) b!7901549))

(assert (= (and b!7901549 res!3135018) b!7901548))

(assert (= (and b!7901548 res!3135020) b!7901546))

(assert (= (and b!7901546 res!3135015) b!7901544))

(declare-fun m!8276182 () Bool)

(assert (=> b!7901549 m!8276182))

(declare-fun m!8276184 () Bool)

(assert (=> b!7901549 m!8276184))

(assert (=> b!7901549 m!8275942))

(assert (=> b!7901544 m!8276182))

(declare-fun m!8276186 () Bool)

(assert (=> b!7901544 m!8276186))

(assert (=> b!7901545 m!8276182))

(declare-fun m!8276188 () Bool)

(assert (=> b!7901545 m!8276188))

(assert (=> b!7901545 m!8276188))

(declare-fun m!8276190 () Bool)

(assert (=> b!7901545 m!8276190))

(assert (=> b!7901545 m!8276190))

(declare-fun m!8276192 () Bool)

(assert (=> b!7901545 m!8276192))

(assert (=> b!7901543 m!8276182))

(assert (=> b!7901543 m!8276188))

(assert (=> b!7901543 m!8276188))

(assert (=> b!7901543 m!8276190))

(assert (=> b!7901543 m!8276190))

(declare-fun m!8276194 () Bool)

(assert (=> b!7901543 m!8276194))

(declare-fun m!8276196 () Bool)

(assert (=> b!7901542 m!8276196))

(declare-fun m!8276198 () Bool)

(assert (=> b!7901542 m!8276198))

(declare-fun m!8276200 () Bool)

(assert (=> b!7901542 m!8276200))

(declare-fun m!8276202 () Bool)

(assert (=> b!7901542 m!8276202))

(assert (=> b!7901542 m!8276196))

(declare-fun m!8276204 () Bool)

(assert (=> b!7901542 m!8276204))

(assert (=> b!7901542 m!8275942))

(assert (=> b!7901542 m!8276196))

(declare-fun m!8276206 () Bool)

(assert (=> b!7901542 m!8276206))

(assert (=> b!7901542 m!8276196))

(declare-fun m!8276208 () Bool)

(assert (=> b!7901542 m!8276208))

(assert (=> b!7901542 m!8276208))

(assert (=> b!7901542 m!8275942))

(declare-fun m!8276210 () Bool)

(assert (=> b!7901542 m!8276210))

(assert (=> b!7901550 m!8276208))

(assert (=> b!7901550 m!8275942))

(assert (=> b!7901550 m!8276208))

(assert (=> b!7901550 m!8275942))

(assert (=> b!7901550 m!8276210))

(declare-fun m!8276212 () Bool)

(assert (=> b!7901550 m!8276212))

(assert (=> b!7901548 m!8276182))

(declare-fun m!8276214 () Bool)

(assert (=> d!2358327 m!8276214))

(declare-fun m!8276216 () Bool)

(assert (=> d!2358327 m!8276216))

(declare-fun m!8276218 () Bool)

(assert (=> d!2358327 m!8276218))

(assert (=> d!2358327 m!8276064))

(assert (=> b!7901546 m!8276182))

(declare-fun m!8276220 () Bool)

(assert (=> b!7901546 m!8276220))

(assert (=> b!7901546 m!8276220))

(declare-fun m!8276222 () Bool)

(assert (=> b!7901546 m!8276222))

(assert (=> b!7901250 d!2358327))

(declare-fun b!7901561 () Bool)

(declare-fun b_free!134727 () Bool)

(declare-fun b_next!135517 () Bool)

(assert (=> b!7901561 (= b_free!134727 (not b_next!135517))))

(declare-fun t!389201 () Bool)

(declare-fun tb!262763 () Bool)

(assert (=> (and b!7901561 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327))))) t!389201) tb!262763))

(declare-fun result!359818 () Bool)

(assert (= result!359818 result!359794))

(assert (=> d!2358291 t!389201))

(declare-fun tp!2354046 () Bool)

(declare-fun b_and!352699 () Bool)

(assert (=> b!7901561 (= tp!2354046 (and (=> t!389201 result!359818) b_and!352699))))

(declare-fun b_free!134729 () Bool)

(declare-fun b_next!135519 () Bool)

(assert (=> b!7901561 (= b_free!134729 (not b_next!135519))))

(declare-fun tb!262765 () Bool)

(declare-fun t!389203 () Bool)

(assert (=> (and b!7901561 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327))))) t!389203) tb!262765))

(declare-fun result!359820 () Bool)

(assert (= result!359820 result!359790))

(assert (=> d!2358281 t!389203))

(declare-fun tp!2354048 () Bool)

(declare-fun b_and!352701 () Bool)

(assert (=> b!7901561 (= tp!2354048 (and (=> t!389203 result!359820) b_and!352701))))

(declare-fun e!4664035 () Bool)

(assert (=> b!7901561 (= e!4664035 (and tp!2354046 tp!2354048))))

(declare-fun tp!2354047 () Bool)

(declare-fun b!7901560 () Bool)

(declare-fun e!4664036 () Bool)

(assert (=> b!7901560 (= e!4664036 (and tp!2354047 (inv!95137 (tag!9450 (h!80604 (t!389187 rulesArg!141)))) (inv!95139 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) e!4664035))))

(declare-fun b!7901559 () Bool)

(declare-fun e!4664034 () Bool)

(declare-fun tp!2354045 () Bool)

(assert (=> b!7901559 (= e!4664034 (and e!4664036 tp!2354045))))

(assert (=> b!7901253 (= tp!2354000 e!4664034)))

(assert (= b!7901560 b!7901561))

(assert (= b!7901559 b!7901560))

(assert (= (and b!7901253 ((_ is Cons!74156) (t!389187 rulesArg!141))) b!7901559))

(declare-fun m!8276224 () Bool)

(assert (=> b!7901560 m!8276224))

(declare-fun m!8276226 () Bool)

(assert (=> b!7901560 m!8276226))

(declare-fun b!7901572 () Bool)

(declare-fun e!4664039 () Bool)

(assert (=> b!7901572 (= e!4664039 tp_is_empty!52953)))

(declare-fun b!7901575 () Bool)

(declare-fun tp!2354062 () Bool)

(declare-fun tp!2354059 () Bool)

(assert (=> b!7901575 (= e!4664039 (and tp!2354062 tp!2354059))))

(declare-fun b!7901574 () Bool)

(declare-fun tp!2354060 () Bool)

(assert (=> b!7901574 (= e!4664039 tp!2354060)))

(declare-fun b!7901573 () Bool)

(declare-fun tp!2354061 () Bool)

(declare-fun tp!2354063 () Bool)

(assert (=> b!7901573 (= e!4664039 (and tp!2354061 tp!2354063))))

(assert (=> b!7901244 (= tp!2353996 e!4664039)))

(assert (= (and b!7901244 ((_ is ElementMatch!21289) (regex!8586 (h!80604 rulesArg!141)))) b!7901572))

(assert (= (and b!7901244 ((_ is Concat!30192) (regex!8586 (h!80604 rulesArg!141)))) b!7901573))

(assert (= (and b!7901244 ((_ is Star!21289) (regex!8586 (h!80604 rulesArg!141)))) b!7901574))

(assert (= (and b!7901244 ((_ is Union!21289) (regex!8586 (h!80604 rulesArg!141)))) b!7901575))

(declare-fun b!7901580 () Bool)

(declare-fun e!4664042 () Bool)

(declare-fun tp!2354066 () Bool)

(assert (=> b!7901580 (= e!4664042 (and tp_is_empty!52953 tp!2354066))))

(assert (=> b!7901254 (= tp!2353999 e!4664042)))

(assert (= (and b!7901254 ((_ is Cons!74155) (t!389186 input!1184))) b!7901580))

(check-sat (not b!7901518) (not d!2358279) (not b!7901281) (not b!7901349) (not b!7901426) (not b_next!135509) (not b!7901548) (not b!7901575) (not b!7901516) (not b!7901515) (not b!7901285) (not b!7901523) (not d!2358327) (not b!7901543) (not d!2358305) (not b!7901519) (not b!7901348) (not b_next!135517) b_and!352689 (not b!7901550) (not b!7901549) (not b_next!135519) (not b!7901461) (not b!7901521) (not b!7901459) (not b!7901447) (not b!7901517) (not b!7901560) (not b!7901559) (not tb!262751) (not b_next!135511) b_and!352687 (not b!7901574) (not d!2358263) (not b!7901282) (not b_lambda!289669) (not b!7901520) (not b!7901544) (not bm!733157) tp_is_empty!52953 (not b_lambda!289667) (not d!2358293) (not b!7901580) (not d!2358269) b_and!352699 (not d!2358261) (not tb!262753) (not b!7901280) (not bm!733154) (not b!7901546) (not b!7901448) (not b!7901545) (not d!2358267) (not d!2358315) (not d!2358281) (not bm!733153) (not b!7901374) b_and!352701 (not b!7901573) (not b!7901542))
(check-sat (not b_next!135517) b_and!352689 (not b_next!135519) b_and!352699 (not b_next!135509) b_and!352701 (not b_next!135511) b_and!352687)
(get-model)

(declare-fun d!2358359 () Bool)

(assert (=> d!2358359 (= (get!26633 lt!2683426) (v!55006 lt!2683426))))

(assert (=> b!7901546 d!2358359))

(declare-fun d!2358361 () Bool)

(assert (=> d!2358361 (= (apply!14327 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426))))) (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426))))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426))))))))

(declare-fun b_lambda!289677 () Bool)

(assert (=> (not b_lambda!289677) (not d!2358361)))

(declare-fun tb!262771 () Bool)

(declare-fun t!389209 () Bool)

(assert (=> (and b!7901247 (= (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426)))))) t!389209) tb!262771))

(declare-fun result!359830 () Bool)

(assert (=> tb!262771 (= result!359830 (inv!21 (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426))))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426)))))))))

(declare-fun m!8276268 () Bool)

(assert (=> tb!262771 m!8276268))

(assert (=> d!2358361 t!389209))

(declare-fun b_and!352707 () Bool)

(assert (= b_and!352689 (and (=> t!389209 result!359830) b_and!352707)))

(declare-fun t!389211 () Bool)

(declare-fun tb!262773 () Bool)

(assert (=> (and b!7901561 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426)))))) t!389211) tb!262773))

(declare-fun result!359832 () Bool)

(assert (= result!359832 result!359830))

(assert (=> d!2358361 t!389211))

(declare-fun b_and!352709 () Bool)

(assert (= b_and!352699 (and (=> t!389211 result!359832) b_and!352709)))

(assert (=> d!2358361 m!8276220))

(declare-fun m!8276270 () Bool)

(assert (=> d!2358361 m!8276270))

(assert (=> b!7901546 d!2358361))

(declare-fun d!2358363 () Bool)

(assert (=> d!2358363 (= (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426)))) (fromListB!2774 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426)))))))

(declare-fun bs!1967965 () Bool)

(assert (= bs!1967965 d!2358363))

(declare-fun m!8276272 () Bool)

(assert (=> bs!1967965 m!8276272))

(assert (=> b!7901546 d!2358363))

(declare-fun d!2358365 () Bool)

(declare-fun lt!2683433 () Int)

(assert (=> d!2358365 (>= lt!2683433 0)))

(declare-fun e!4664066 () Int)

(assert (=> d!2358365 (= lt!2683433 e!4664066)))

(declare-fun c!1450063 () Bool)

(assert (=> d!2358365 (= c!1450063 ((_ is Nil!74155) (t!389186 (_2!38400 lt!2683327))))))

(assert (=> d!2358365 (= (size!42965 (t!389186 (_2!38400 lt!2683327))) lt!2683433)))

(declare-fun b!7901613 () Bool)

(assert (=> b!7901613 (= e!4664066 0)))

(declare-fun b!7901614 () Bool)

(assert (=> b!7901614 (= e!4664066 (+ 1 (size!42965 (t!389186 (t!389186 (_2!38400 lt!2683327))))))))

(assert (= (and d!2358365 c!1450063) b!7901613))

(assert (= (and d!2358365 (not c!1450063)) b!7901614))

(declare-fun m!8276274 () Bool)

(assert (=> b!7901614 m!8276274))

(assert (=> b!7901459 d!2358365))

(declare-fun d!2358367 () Bool)

(declare-fun nullableFct!3748 (Regex!21289) Bool)

(assert (=> d!2358367 (= (nullable!9482 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))) (nullableFct!3748 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))

(declare-fun bs!1967966 () Bool)

(assert (= bs!1967966 d!2358367))

(declare-fun m!8276276 () Bool)

(assert (=> bs!1967966 m!8276276))

(assert (=> b!7901426 d!2358367))

(declare-fun b!7901615 () Bool)

(declare-fun e!4664071 () Bool)

(declare-fun e!4664067 () Bool)

(assert (=> b!7901615 (= e!4664071 e!4664067)))

(declare-fun res!3135040 () Bool)

(assert (=> b!7901615 (=> (not res!3135040) (not e!4664067))))

(declare-fun call!733169 () Bool)

(assert (=> b!7901615 (= res!3135040 call!733169)))

(declare-fun b!7901616 () Bool)

(declare-fun res!3135042 () Bool)

(assert (=> b!7901616 (=> res!3135042 e!4664071)))

(assert (=> b!7901616 (= res!3135042 (not ((_ is Concat!30192) (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))))

(declare-fun e!4664069 () Bool)

(assert (=> b!7901616 (= e!4664069 e!4664071)))

(declare-fun b!7901617 () Bool)

(declare-fun e!4664070 () Bool)

(declare-fun e!4664072 () Bool)

(assert (=> b!7901617 (= e!4664070 e!4664072)))

(declare-fun c!1450064 () Bool)

(assert (=> b!7901617 (= c!1450064 ((_ is Star!21289) (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))

(declare-fun b!7901618 () Bool)

(declare-fun e!4664073 () Bool)

(declare-fun call!733170 () Bool)

(assert (=> b!7901618 (= e!4664073 call!733170)))

(declare-fun bm!733164 () Bool)

(declare-fun call!733171 () Bool)

(assert (=> bm!733164 (= call!733171 call!733170)))

(declare-fun b!7901619 () Bool)

(declare-fun res!3135041 () Bool)

(declare-fun e!4664068 () Bool)

(assert (=> b!7901619 (=> (not res!3135041) (not e!4664068))))

(assert (=> b!7901619 (= res!3135041 call!733171)))

(assert (=> b!7901619 (= e!4664069 e!4664068)))

(declare-fun b!7901620 () Bool)

(assert (=> b!7901620 (= e!4664067 call!733171)))

(declare-fun b!7901621 () Bool)

(assert (=> b!7901621 (= e!4664068 call!733169)))

(declare-fun b!7901622 () Bool)

(assert (=> b!7901622 (= e!4664072 e!4664073)))

(declare-fun res!3135039 () Bool)

(assert (=> b!7901622 (= res!3135039 (not (nullable!9482 (reg!21618 (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))))

(assert (=> b!7901622 (=> (not res!3135039) (not e!4664073))))

(declare-fun bm!733165 () Bool)

(declare-fun c!1450065 () Bool)

(assert (=> bm!733165 (= call!733169 (validRegex!11645 (ite c!1450065 (regTwo!43091 (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))) (regOne!43090 (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))))

(declare-fun b!7901623 () Bool)

(assert (=> b!7901623 (= e!4664072 e!4664069)))

(assert (=> b!7901623 (= c!1450065 ((_ is Union!21289) (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))

(declare-fun bm!733166 () Bool)

(assert (=> bm!733166 (= call!733170 (validRegex!11645 (ite c!1450064 (reg!21618 (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))) (ite c!1450065 (regOne!43091 (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))) (regTwo!43090 (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))))))

(declare-fun d!2358369 () Bool)

(declare-fun res!3135038 () Bool)

(assert (=> d!2358369 (=> res!3135038 e!4664070)))

(assert (=> d!2358369 (= res!3135038 ((_ is ElementMatch!21289) (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))

(assert (=> d!2358369 (= (validRegex!11645 (ite c!1450043 (regTwo!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regOne!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))) e!4664070)))

(assert (= (and d!2358369 (not res!3135038)) b!7901617))

(assert (= (and b!7901617 c!1450064) b!7901622))

(assert (= (and b!7901617 (not c!1450064)) b!7901623))

(assert (= (and b!7901622 res!3135039) b!7901618))

(assert (= (and b!7901623 c!1450065) b!7901619))

(assert (= (and b!7901623 (not c!1450065)) b!7901616))

(assert (= (and b!7901619 res!3135041) b!7901621))

(assert (= (and b!7901616 (not res!3135042)) b!7901615))

(assert (= (and b!7901615 res!3135040) b!7901620))

(assert (= (or b!7901619 b!7901620) bm!733164))

(assert (= (or b!7901621 b!7901615) bm!733165))

(assert (= (or b!7901618 bm!733164) bm!733166))

(declare-fun m!8276278 () Bool)

(assert (=> b!7901622 m!8276278))

(declare-fun m!8276280 () Bool)

(assert (=> bm!733165 m!8276280))

(declare-fun m!8276282 () Bool)

(assert (=> bm!733166 m!8276282))

(assert (=> bm!733153 d!2358369))

(assert (=> b!7901548 d!2358359))

(declare-fun b!7901624 () Bool)

(declare-fun e!4664078 () Bool)

(declare-fun e!4664074 () Bool)

(assert (=> b!7901624 (= e!4664078 e!4664074)))

(declare-fun res!3135045 () Bool)

(assert (=> b!7901624 (=> (not res!3135045) (not e!4664074))))

(declare-fun call!733172 () Bool)

(assert (=> b!7901624 (= res!3135045 call!733172)))

(declare-fun b!7901625 () Bool)

(declare-fun res!3135047 () Bool)

(assert (=> b!7901625 (=> res!3135047 e!4664078)))

(assert (=> b!7901625 (= res!3135047 (not ((_ is Concat!30192) (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))))

(declare-fun e!4664076 () Bool)

(assert (=> b!7901625 (= e!4664076 e!4664078)))

(declare-fun b!7901626 () Bool)

(declare-fun e!4664077 () Bool)

(declare-fun e!4664079 () Bool)

(assert (=> b!7901626 (= e!4664077 e!4664079)))

(declare-fun c!1450066 () Bool)

(assert (=> b!7901626 (= c!1450066 ((_ is Star!21289) (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))))

(declare-fun b!7901627 () Bool)

(declare-fun e!4664080 () Bool)

(declare-fun call!733173 () Bool)

(assert (=> b!7901627 (= e!4664080 call!733173)))

(declare-fun bm!733167 () Bool)

(declare-fun call!733174 () Bool)

(assert (=> bm!733167 (= call!733174 call!733173)))

(declare-fun b!7901628 () Bool)

(declare-fun res!3135046 () Bool)

(declare-fun e!4664075 () Bool)

(assert (=> b!7901628 (=> (not res!3135046) (not e!4664075))))

(assert (=> b!7901628 (= res!3135046 call!733174)))

(assert (=> b!7901628 (= e!4664076 e!4664075)))

(declare-fun b!7901629 () Bool)

(assert (=> b!7901629 (= e!4664074 call!733174)))

(declare-fun b!7901630 () Bool)

(assert (=> b!7901630 (= e!4664075 call!733172)))

(declare-fun b!7901631 () Bool)

(assert (=> b!7901631 (= e!4664079 e!4664080)))

(declare-fun res!3135044 () Bool)

(assert (=> b!7901631 (= res!3135044 (not (nullable!9482 (reg!21618 (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))))))

(assert (=> b!7901631 (=> (not res!3135044) (not e!4664080))))

(declare-fun c!1450067 () Bool)

(declare-fun bm!733168 () Bool)

(assert (=> bm!733168 (= call!733172 (validRegex!11645 (ite c!1450067 (regTwo!43091 (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))) (regOne!43090 (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))))))

(declare-fun b!7901632 () Bool)

(assert (=> b!7901632 (= e!4664079 e!4664076)))

(assert (=> b!7901632 (= c!1450067 ((_ is Union!21289) (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))))

(declare-fun bm!733169 () Bool)

(assert (=> bm!733169 (= call!733173 (validRegex!11645 (ite c!1450066 (reg!21618 (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))) (ite c!1450067 (regOne!43091 (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))) (regTwo!43090 (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))))))))))))

(declare-fun d!2358371 () Bool)

(declare-fun res!3135043 () Bool)

(assert (=> d!2358371 (=> res!3135043 e!4664077)))

(assert (=> d!2358371 (= res!3135043 ((_ is ElementMatch!21289) (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))))))

(assert (=> d!2358371 (= (validRegex!11645 (ite c!1450042 (reg!21618 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (ite c!1450043 (regOne!43091 (regex!8586 (rule!11872 (_1!38400 lt!2683327)))) (regTwo!43090 (regex!8586 (rule!11872 (_1!38400 lt!2683327))))))) e!4664077)))

(assert (= (and d!2358371 (not res!3135043)) b!7901626))

(assert (= (and b!7901626 c!1450066) b!7901631))

(assert (= (and b!7901626 (not c!1450066)) b!7901632))

(assert (= (and b!7901631 res!3135044) b!7901627))

(assert (= (and b!7901632 c!1450067) b!7901628))

(assert (= (and b!7901632 (not c!1450067)) b!7901625))

(assert (= (and b!7901628 res!3135046) b!7901630))

(assert (= (and b!7901625 (not res!3135047)) b!7901624))

(assert (= (and b!7901624 res!3135045) b!7901629))

(assert (= (or b!7901628 b!7901629) bm!733167))

(assert (= (or b!7901630 b!7901624) bm!733168))

(assert (= (or b!7901627 bm!733167) bm!733169))

(declare-fun m!8276284 () Bool)

(assert (=> b!7901631 m!8276284))

(declare-fun m!8276286 () Bool)

(assert (=> bm!733168 m!8276286))

(declare-fun m!8276288 () Bool)

(assert (=> bm!733169 m!8276288))

(assert (=> bm!733154 d!2358371))

(declare-fun d!2358373 () Bool)

(declare-fun res!3135052 () Bool)

(declare-fun e!4664085 () Bool)

(assert (=> d!2358373 (=> res!3135052 e!4664085)))

(assert (=> d!2358373 (= res!3135052 ((_ is Nil!74156) rulesArg!141))))

(assert (=> d!2358373 (= (forall!18441 rulesArg!141 lambda!472419) e!4664085)))

(declare-fun b!7901637 () Bool)

(declare-fun e!4664086 () Bool)

(assert (=> b!7901637 (= e!4664085 e!4664086)))

(declare-fun res!3135053 () Bool)

(assert (=> b!7901637 (=> (not res!3135053) (not e!4664086))))

(declare-fun dynLambda!30047 (Int Rule!16972) Bool)

(assert (=> b!7901637 (= res!3135053 (dynLambda!30047 lambda!472419 (h!80604 rulesArg!141)))))

(declare-fun b!7901638 () Bool)

(assert (=> b!7901638 (= e!4664086 (forall!18441 (t!389187 rulesArg!141) lambda!472419))))

(assert (= (and d!2358373 (not res!3135052)) b!7901637))

(assert (= (and b!7901637 res!3135053) b!7901638))

(declare-fun b_lambda!289679 () Bool)

(assert (=> (not b_lambda!289679) (not b!7901637)))

(declare-fun m!8276290 () Bool)

(assert (=> b!7901637 m!8276290))

(declare-fun m!8276292 () Bool)

(assert (=> b!7901638 m!8276292))

(assert (=> d!2358269 d!2358373))

(declare-fun d!2358375 () Bool)

(declare-fun lt!2683434 () Int)

(assert (=> d!2358375 (>= lt!2683434 0)))

(declare-fun e!4664087 () Int)

(assert (=> d!2358375 (= lt!2683434 e!4664087)))

(declare-fun c!1450068 () Bool)

(assert (=> d!2358375 (= c!1450068 ((_ is Nil!74155) (_2!38400 (get!26633 lt!2683426))))))

(assert (=> d!2358375 (= (size!42965 (_2!38400 (get!26633 lt!2683426))) lt!2683434)))

(declare-fun b!7901639 () Bool)

(assert (=> b!7901639 (= e!4664087 0)))

(declare-fun b!7901640 () Bool)

(assert (=> b!7901640 (= e!4664087 (+ 1 (size!42965 (t!389186 (_2!38400 (get!26633 lt!2683426))))))))

(assert (= (and d!2358375 c!1450068) b!7901639))

(assert (= (and d!2358375 (not c!1450068)) b!7901640))

(declare-fun m!8276294 () Bool)

(assert (=> b!7901640 m!8276294))

(assert (=> b!7901549 d!2358375))

(assert (=> b!7901549 d!2358359))

(assert (=> b!7901549 d!2358313))

(assert (=> d!2358261 d!2358259))

(declare-fun d!2358377 () Bool)

(assert (=> d!2358377 (isPrefix!6419 input!1184 input!1184)))

(assert (=> d!2358377 true))

(declare-fun _$45!2431 () Unit!169179)

(assert (=> d!2358377 (= (choose!59713 input!1184 input!1184) _$45!2431)))

(declare-fun bs!1967967 () Bool)

(assert (= bs!1967967 d!2358377))

(assert (=> bs!1967967 m!8275936))

(assert (=> d!2358261 d!2358377))

(declare-fun b!7901669 () Bool)

(declare-fun e!4664102 () Bool)

(declare-fun derivativeStep!6426 (Regex!21289 C!42908) Regex!21289)

(assert (=> b!7901669 (= e!4664102 (matchR!10642 (derivativeStep!6426 (regex!8586 (h!80604 rulesArg!141)) (head!16143 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184))))) (tail!15686 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184))))))))

(declare-fun b!7901670 () Bool)

(declare-fun e!4664104 () Bool)

(declare-fun e!4664105 () Bool)

(assert (=> b!7901670 (= e!4664104 e!4664105)))

(declare-fun res!3135077 () Bool)

(assert (=> b!7901670 (=> res!3135077 e!4664105)))

(declare-fun call!733177 () Bool)

(assert (=> b!7901670 (= res!3135077 call!733177)))

(declare-fun b!7901671 () Bool)

(declare-fun res!3135073 () Bool)

(declare-fun e!4664103 () Bool)

(assert (=> b!7901671 (=> (not res!3135073) (not e!4664103))))

(assert (=> b!7901671 (= res!3135073 (isEmpty!42541 (tail!15686 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184))))))))

(declare-fun b!7901672 () Bool)

(assert (=> b!7901672 (= e!4664102 (nullable!9482 (regex!8586 (h!80604 rulesArg!141))))))

(declare-fun b!7901673 () Bool)

(declare-fun res!3135074 () Bool)

(declare-fun e!4664106 () Bool)

(assert (=> b!7901673 (=> res!3135074 e!4664106)))

(assert (=> b!7901673 (= res!3135074 (not ((_ is ElementMatch!21289) (regex!8586 (h!80604 rulesArg!141)))))))

(declare-fun e!4664107 () Bool)

(assert (=> b!7901673 (= e!4664107 e!4664106)))

(declare-fun d!2358379 () Bool)

(declare-fun e!4664108 () Bool)

(assert (=> d!2358379 e!4664108))

(declare-fun c!1450076 () Bool)

(assert (=> d!2358379 (= c!1450076 ((_ is EmptyExpr!21289) (regex!8586 (h!80604 rulesArg!141))))))

(declare-fun lt!2683437 () Bool)

(assert (=> d!2358379 (= lt!2683437 e!4664102)))

(declare-fun c!1450077 () Bool)

(assert (=> d!2358379 (= c!1450077 (isEmpty!42541 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(assert (=> d!2358379 (validRegex!11645 (regex!8586 (h!80604 rulesArg!141)))))

(assert (=> d!2358379 (= (matchR!10642 (regex!8586 (h!80604 rulesArg!141)) (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))) lt!2683437)))

(declare-fun b!7901674 () Bool)

(declare-fun res!3135076 () Bool)

(assert (=> b!7901674 (=> res!3135076 e!4664105)))

(assert (=> b!7901674 (= res!3135076 (not (isEmpty!42541 (tail!15686 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))))

(declare-fun b!7901675 () Bool)

(assert (=> b!7901675 (= e!4664103 (= (head!16143 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))) (c!1450018 (regex!8586 (h!80604 rulesArg!141)))))))

(declare-fun b!7901676 () Bool)

(declare-fun res!3135071 () Bool)

(assert (=> b!7901676 (=> (not res!3135071) (not e!4664103))))

(assert (=> b!7901676 (= res!3135071 (not call!733177))))

(declare-fun b!7901677 () Bool)

(assert (=> b!7901677 (= e!4664105 (not (= (head!16143 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))) (c!1450018 (regex!8586 (h!80604 rulesArg!141))))))))

(declare-fun b!7901678 () Bool)

(assert (=> b!7901678 (= e!4664108 (= lt!2683437 call!733177))))

(declare-fun b!7901679 () Bool)

(assert (=> b!7901679 (= e!4664107 (not lt!2683437))))

(declare-fun bm!733172 () Bool)

(assert (=> bm!733172 (= call!733177 (isEmpty!42541 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(declare-fun b!7901680 () Bool)

(assert (=> b!7901680 (= e!4664106 e!4664104)))

(declare-fun res!3135070 () Bool)

(assert (=> b!7901680 (=> (not res!3135070) (not e!4664104))))

(assert (=> b!7901680 (= res!3135070 (not lt!2683437))))

(declare-fun b!7901681 () Bool)

(assert (=> b!7901681 (= e!4664108 e!4664107)))

(declare-fun c!1450075 () Bool)

(assert (=> b!7901681 (= c!1450075 ((_ is EmptyLang!21289) (regex!8586 (h!80604 rulesArg!141))))))

(declare-fun b!7901682 () Bool)

(declare-fun res!3135075 () Bool)

(assert (=> b!7901682 (=> res!3135075 e!4664106)))

(assert (=> b!7901682 (= res!3135075 e!4664103)))

(declare-fun res!3135072 () Bool)

(assert (=> b!7901682 (=> (not res!3135072) (not e!4664103))))

(assert (=> b!7901682 (= res!3135072 lt!2683437)))

(assert (= (and d!2358379 c!1450077) b!7901672))

(assert (= (and d!2358379 (not c!1450077)) b!7901669))

(assert (= (and d!2358379 c!1450076) b!7901678))

(assert (= (and d!2358379 (not c!1450076)) b!7901681))

(assert (= (and b!7901681 c!1450075) b!7901679))

(assert (= (and b!7901681 (not c!1450075)) b!7901673))

(assert (= (and b!7901673 (not res!3135074)) b!7901682))

(assert (= (and b!7901682 res!3135072) b!7901676))

(assert (= (and b!7901676 res!3135071) b!7901671))

(assert (= (and b!7901671 res!3135073) b!7901675))

(assert (= (and b!7901682 (not res!3135075)) b!7901680))

(assert (= (and b!7901680 res!3135070) b!7901670))

(assert (= (and b!7901670 (not res!3135077)) b!7901674))

(assert (= (and b!7901674 (not res!3135076)) b!7901677))

(assert (= (or b!7901678 b!7901670 b!7901676) bm!733172))

(declare-fun m!8276296 () Bool)

(assert (=> b!7901674 m!8276296))

(assert (=> b!7901674 m!8276296))

(declare-fun m!8276298 () Bool)

(assert (=> b!7901674 m!8276298))

(assert (=> d!2358379 m!8276202))

(declare-fun m!8276300 () Bool)

(assert (=> d!2358379 m!8276300))

(declare-fun m!8276302 () Bool)

(assert (=> b!7901669 m!8276302))

(assert (=> b!7901669 m!8276302))

(declare-fun m!8276304 () Bool)

(assert (=> b!7901669 m!8276304))

(assert (=> b!7901669 m!8276296))

(assert (=> b!7901669 m!8276304))

(assert (=> b!7901669 m!8276296))

(declare-fun m!8276306 () Bool)

(assert (=> b!7901669 m!8276306))

(assert (=> b!7901675 m!8276302))

(assert (=> b!7901677 m!8276302))

(declare-fun m!8276308 () Bool)

(assert (=> b!7901672 m!8276308))

(assert (=> bm!733172 m!8276202))

(assert (=> b!7901671 m!8276296))

(assert (=> b!7901671 m!8276296))

(assert (=> b!7901671 m!8276298))

(assert (=> b!7901550 d!2358379))

(declare-fun b!7901787 () Bool)

(declare-fun e!4664171 () Unit!169179)

(declare-fun Unit!169184 () Unit!169179)

(assert (=> b!7901787 (= e!4664171 Unit!169184)))

(declare-fun lt!2683626 () Unit!169179)

(declare-fun call!733221 () Unit!169179)

(assert (=> b!7901787 (= lt!2683626 call!733221)))

(declare-fun call!733224 () Bool)

(assert (=> b!7901787 call!733224))

(declare-fun lt!2683634 () Unit!169179)

(assert (=> b!7901787 (= lt!2683634 lt!2683626)))

(declare-fun lt!2683629 () Unit!169179)

(declare-fun call!733220 () Unit!169179)

(assert (=> b!7901787 (= lt!2683629 call!733220)))

(assert (=> b!7901787 (= input!1184 Nil!74155)))

(declare-fun lt!2683618 () Unit!169179)

(assert (=> b!7901787 (= lt!2683618 lt!2683629)))

(assert (=> b!7901787 false))

(declare-fun b!7901788 () Bool)

(declare-fun e!4664172 () tuple2!70198)

(declare-fun lt!2683623 () tuple2!70198)

(assert (=> b!7901788 (= e!4664172 lt!2683623)))

(declare-fun b!7901789 () Bool)

(declare-fun e!4664174 () tuple2!70198)

(assert (=> b!7901789 (= e!4664174 (tuple2!70199 Nil!74155 input!1184))))

(declare-fun b!7901790 () Bool)

(declare-fun e!4664177 () Bool)

(declare-fun e!4664176 () Bool)

(assert (=> b!7901790 (= e!4664177 e!4664176)))

(declare-fun res!3135103 () Bool)

(assert (=> b!7901790 (=> res!3135103 e!4664176)))

(declare-fun lt!2683620 () tuple2!70198)

(assert (=> b!7901790 (= res!3135103 (isEmpty!42541 (_1!38402 lt!2683620)))))

(declare-fun b!7901791 () Bool)

(declare-fun c!1450116 () Bool)

(declare-fun call!733218 () Bool)

(assert (=> b!7901791 (= c!1450116 call!733218)))

(declare-fun lt!2683621 () Unit!169179)

(declare-fun lt!2683625 () Unit!169179)

(assert (=> b!7901791 (= lt!2683621 lt!2683625)))

(declare-fun lt!2683628 () C!42908)

(declare-fun lt!2683638 () List!74279)

(assert (=> b!7901791 (= (++!18152 (++!18152 Nil!74155 (Cons!74155 lt!2683628 Nil!74155)) lt!2683638) input!1184)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3469 (List!74279 C!42908 List!74279 List!74279) Unit!169179)

(assert (=> b!7901791 (= lt!2683625 (lemmaMoveElementToOtherListKeepsConcatEq!3469 Nil!74155 lt!2683628 lt!2683638 input!1184))))

(assert (=> b!7901791 (= lt!2683638 (tail!15686 input!1184))))

(assert (=> b!7901791 (= lt!2683628 (head!16143 input!1184))))

(declare-fun lt!2683631 () Unit!169179)

(declare-fun lt!2683624 () Unit!169179)

(assert (=> b!7901791 (= lt!2683631 lt!2683624)))

(declare-fun getSuffix!3682 (List!74279 List!74279) List!74279)

(assert (=> b!7901791 (isPrefix!6419 (++!18152 Nil!74155 (Cons!74155 (head!16143 (getSuffix!3682 input!1184 Nil!74155)) Nil!74155)) input!1184)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1247 (List!74279 List!74279) Unit!169179)

(assert (=> b!7901791 (= lt!2683624 (lemmaAddHeadSuffixToPrefixStillPrefix!1247 Nil!74155 input!1184))))

(declare-fun lt!2683635 () Unit!169179)

(declare-fun lt!2683622 () Unit!169179)

(assert (=> b!7901791 (= lt!2683635 lt!2683622)))

(assert (=> b!7901791 (= lt!2683622 (lemmaAddHeadSuffixToPrefixStillPrefix!1247 Nil!74155 input!1184))))

(declare-fun lt!2683637 () List!74279)

(assert (=> b!7901791 (= lt!2683637 (++!18152 Nil!74155 (Cons!74155 (head!16143 input!1184) Nil!74155)))))

(declare-fun lt!2683640 () Unit!169179)

(assert (=> b!7901791 (= lt!2683640 e!4664171)))

(declare-fun c!1450120 () Bool)

(assert (=> b!7901791 (= c!1450120 (= (size!42965 Nil!74155) (size!42965 input!1184)))))

(declare-fun lt!2683633 () Unit!169179)

(declare-fun lt!2683617 () Unit!169179)

(assert (=> b!7901791 (= lt!2683633 lt!2683617)))

(assert (=> b!7901791 (<= (size!42965 Nil!74155) (size!42965 input!1184))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1027 (List!74279 List!74279) Unit!169179)

(assert (=> b!7901791 (= lt!2683617 (lemmaIsPrefixThenSmallerEqSize!1027 Nil!74155 input!1184))))

(declare-fun e!4664178 () tuple2!70198)

(declare-fun e!4664173 () tuple2!70198)

(assert (=> b!7901791 (= e!4664178 e!4664173)))

(declare-fun b!7901792 () Bool)

(declare-fun e!4664175 () tuple2!70198)

(assert (=> b!7901792 (= e!4664175 (tuple2!70199 Nil!74155 input!1184))))

(declare-fun b!7901793 () Bool)

(assert (=> b!7901793 (= e!4664174 (tuple2!70199 Nil!74155 Nil!74155))))

(declare-fun bm!733214 () Bool)

(assert (=> bm!733214 (= call!733221 (lemmaIsPrefixRefl!3930 input!1184 input!1184))))

(declare-fun bm!733215 () Bool)

(assert (=> bm!733215 (= call!733224 (isPrefix!6419 input!1184 input!1184))))

(declare-fun b!7901794 () Bool)

(declare-fun Unit!169185 () Unit!169179)

(assert (=> b!7901794 (= e!4664171 Unit!169185)))

(declare-fun b!7901795 () Bool)

(assert (=> b!7901795 (= e!4664172 (tuple2!70199 Nil!74155 input!1184))))

(declare-fun bm!733216 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1562 (List!74279 List!74279 List!74279) Unit!169179)

(assert (=> bm!733216 (= call!733220 (lemmaIsPrefixSameLengthThenSameList!1562 input!1184 Nil!74155 input!1184))))

(declare-fun b!7901796 () Bool)

(declare-fun c!1450117 () Bool)

(assert (=> b!7901796 (= c!1450117 call!733218)))

(declare-fun lt!2683639 () Unit!169179)

(declare-fun lt!2683632 () Unit!169179)

(assert (=> b!7901796 (= lt!2683639 lt!2683632)))

(assert (=> b!7901796 (= input!1184 Nil!74155)))

(assert (=> b!7901796 (= lt!2683632 call!733220)))

(declare-fun lt!2683641 () Unit!169179)

(declare-fun lt!2683630 () Unit!169179)

(assert (=> b!7901796 (= lt!2683641 lt!2683630)))

(assert (=> b!7901796 call!733224))

(assert (=> b!7901796 (= lt!2683630 call!733221)))

(assert (=> b!7901796 (= e!4664178 e!4664174)))

(declare-fun bm!733217 () Bool)

(assert (=> bm!733217 (= call!733218 (nullable!9482 (regex!8586 (h!80604 rulesArg!141))))))

(declare-fun b!7901797 () Bool)

(assert (=> b!7901797 (= e!4664173 e!4664172)))

(declare-fun call!733225 () tuple2!70198)

(assert (=> b!7901797 (= lt!2683623 call!733225)))

(declare-fun c!1450121 () Bool)

(assert (=> b!7901797 (= c!1450121 (isEmpty!42541 (_1!38402 lt!2683623)))))

(declare-fun bm!733218 () Bool)

(declare-fun call!733223 () Regex!21289)

(declare-fun call!733222 () C!42908)

(assert (=> bm!733218 (= call!733223 (derivativeStep!6426 (regex!8586 (h!80604 rulesArg!141)) call!733222))))

(declare-fun b!7901798 () Bool)

(assert (=> b!7901798 (= e!4664175 e!4664178)))

(declare-fun c!1450119 () Bool)

(assert (=> b!7901798 (= c!1450119 (= (size!42965 Nil!74155) (size!42965 input!1184)))))

(declare-fun d!2358381 () Bool)

(assert (=> d!2358381 e!4664177))

(declare-fun res!3135102 () Bool)

(assert (=> d!2358381 (=> (not res!3135102) (not e!4664177))))

(assert (=> d!2358381 (= res!3135102 (= (++!18152 (_1!38402 lt!2683620) (_2!38402 lt!2683620)) input!1184))))

(assert (=> d!2358381 (= lt!2683620 e!4664175)))

(declare-fun c!1450118 () Bool)

(declare-fun lostCause!1914 (Regex!21289) Bool)

(assert (=> d!2358381 (= c!1450118 (lostCause!1914 (regex!8586 (h!80604 rulesArg!141))))))

(declare-fun lt!2683642 () Unit!169179)

(declare-fun Unit!169186 () Unit!169179)

(assert (=> d!2358381 (= lt!2683642 Unit!169186)))

(assert (=> d!2358381 (= (getSuffix!3682 input!1184 Nil!74155) input!1184)))

(declare-fun lt!2683616 () Unit!169179)

(declare-fun lt!2683627 () Unit!169179)

(assert (=> d!2358381 (= lt!2683616 lt!2683627)))

(declare-fun lt!2683636 () List!74279)

(assert (=> d!2358381 (= input!1184 lt!2683636)))

(declare-fun lemmaSamePrefixThenSameSuffix!2930 (List!74279 List!74279 List!74279 List!74279 List!74279) Unit!169179)

(assert (=> d!2358381 (= lt!2683627 (lemmaSamePrefixThenSameSuffix!2930 Nil!74155 input!1184 Nil!74155 lt!2683636 input!1184))))

(assert (=> d!2358381 (= lt!2683636 (getSuffix!3682 input!1184 Nil!74155))))

(declare-fun lt!2683619 () Unit!169179)

(declare-fun lt!2683615 () Unit!169179)

(assert (=> d!2358381 (= lt!2683619 lt!2683615)))

(assert (=> d!2358381 (isPrefix!6419 Nil!74155 (++!18152 Nil!74155 input!1184))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3792 (List!74279 List!74279) Unit!169179)

(assert (=> d!2358381 (= lt!2683615 (lemmaConcatTwoListThenFirstIsPrefix!3792 Nil!74155 input!1184))))

(assert (=> d!2358381 (validRegex!11645 (regex!8586 (h!80604 rulesArg!141)))))

(assert (=> d!2358381 (= (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)) lt!2683620)))

(declare-fun bm!733213 () Bool)

(declare-fun call!733219 () List!74279)

(assert (=> bm!733213 (= call!733225 (findLongestMatchInner!2151 call!733223 lt!2683637 (+ (size!42965 Nil!74155) 1) call!733219 input!1184 (size!42965 input!1184)))))

(declare-fun b!7901799 () Bool)

(assert (=> b!7901799 (= e!4664176 (>= (size!42965 (_1!38402 lt!2683620)) (size!42965 Nil!74155)))))

(declare-fun bm!733219 () Bool)

(assert (=> bm!733219 (= call!733219 (tail!15686 input!1184))))

(declare-fun bm!733220 () Bool)

(assert (=> bm!733220 (= call!733222 (head!16143 input!1184))))

(declare-fun b!7901800 () Bool)

(assert (=> b!7901800 (= e!4664173 call!733225)))

(assert (= (and d!2358381 c!1450118) b!7901792))

(assert (= (and d!2358381 (not c!1450118)) b!7901798))

(assert (= (and b!7901798 c!1450119) b!7901796))

(assert (= (and b!7901798 (not c!1450119)) b!7901791))

(assert (= (and b!7901796 c!1450117) b!7901793))

(assert (= (and b!7901796 (not c!1450117)) b!7901789))

(assert (= (and b!7901791 c!1450120) b!7901787))

(assert (= (and b!7901791 (not c!1450120)) b!7901794))

(assert (= (and b!7901791 c!1450116) b!7901797))

(assert (= (and b!7901791 (not c!1450116)) b!7901800))

(assert (= (and b!7901797 c!1450121) b!7901795))

(assert (= (and b!7901797 (not c!1450121)) b!7901788))

(assert (= (or b!7901797 b!7901800) bm!733219))

(assert (= (or b!7901797 b!7901800) bm!733220))

(assert (= (or b!7901797 b!7901800) bm!733218))

(assert (= (or b!7901797 b!7901800) bm!733213))

(assert (= (or b!7901796 b!7901787) bm!733215))

(assert (= (or b!7901796 b!7901791) bm!733217))

(assert (= (or b!7901796 b!7901787) bm!733214))

(assert (= (or b!7901796 b!7901787) bm!733216))

(assert (= (and d!2358381 res!3135102) b!7901790))

(assert (= (and b!7901790 (not res!3135103)) b!7901799))

(assert (=> bm!733214 m!8275938))

(assert (=> bm!733215 m!8275936))

(declare-fun m!8276420 () Bool)

(assert (=> b!7901791 m!8276420))

(declare-fun m!8276422 () Bool)

(assert (=> b!7901791 m!8276422))

(assert (=> b!7901791 m!8275978))

(declare-fun m!8276424 () Bool)

(assert (=> b!7901791 m!8276424))

(declare-fun m!8276426 () Bool)

(assert (=> b!7901791 m!8276426))

(declare-fun m!8276428 () Bool)

(assert (=> b!7901791 m!8276428))

(assert (=> b!7901791 m!8276424))

(assert (=> b!7901791 m!8275976))

(assert (=> b!7901791 m!8276420))

(declare-fun m!8276430 () Bool)

(assert (=> b!7901791 m!8276430))

(assert (=> b!7901791 m!8275942))

(assert (=> b!7901791 m!8276208))

(declare-fun m!8276432 () Bool)

(assert (=> b!7901791 m!8276432))

(assert (=> b!7901791 m!8276430))

(declare-fun m!8276434 () Bool)

(assert (=> b!7901791 m!8276434))

(declare-fun m!8276436 () Bool)

(assert (=> b!7901791 m!8276436))

(declare-fun m!8276438 () Bool)

(assert (=> b!7901791 m!8276438))

(declare-fun m!8276440 () Bool)

(assert (=> b!7901790 m!8276440))

(assert (=> d!2358381 m!8276300))

(declare-fun m!8276442 () Bool)

(assert (=> d!2358381 m!8276442))

(assert (=> d!2358381 m!8276420))

(declare-fun m!8276444 () Bool)

(assert (=> d!2358381 m!8276444))

(declare-fun m!8276446 () Bool)

(assert (=> d!2358381 m!8276446))

(declare-fun m!8276448 () Bool)

(assert (=> d!2358381 m!8276448))

(declare-fun m!8276450 () Bool)

(assert (=> d!2358381 m!8276450))

(assert (=> d!2358381 m!8276446))

(declare-fun m!8276452 () Bool)

(assert (=> d!2358381 m!8276452))

(declare-fun m!8276454 () Bool)

(assert (=> b!7901799 m!8276454))

(assert (=> b!7901799 m!8276208))

(declare-fun m!8276456 () Bool)

(assert (=> b!7901797 m!8276456))

(assert (=> bm!733219 m!8275978))

(declare-fun m!8276458 () Bool)

(assert (=> bm!733218 m!8276458))

(assert (=> bm!733213 m!8275942))

(declare-fun m!8276460 () Bool)

(assert (=> bm!733213 m!8276460))

(declare-fun m!8276462 () Bool)

(assert (=> bm!733216 m!8276462))

(assert (=> bm!733217 m!8276308))

(assert (=> bm!733220 m!8275976))

(assert (=> b!7901550 d!2358381))

(declare-fun d!2358415 () Bool)

(declare-fun lt!2683645 () Int)

(assert (=> d!2358415 (>= lt!2683645 0)))

(declare-fun e!4664193 () Int)

(assert (=> d!2358415 (= lt!2683645 e!4664193)))

(declare-fun c!1450128 () Bool)

(assert (=> d!2358415 (= c!1450128 ((_ is Nil!74155) Nil!74155))))

(assert (=> d!2358415 (= (size!42965 Nil!74155) lt!2683645)))

(declare-fun b!7901829 () Bool)

(assert (=> b!7901829 (= e!4664193 0)))

(declare-fun b!7901830 () Bool)

(assert (=> b!7901830 (= e!4664193 (+ 1 (size!42965 (t!389186 Nil!74155))))))

(assert (= (and d!2358415 c!1450128) b!7901829))

(assert (= (and d!2358415 (not c!1450128)) b!7901830))

(declare-fun m!8276464 () Bool)

(assert (=> b!7901830 m!8276464))

(assert (=> b!7901550 d!2358415))

(assert (=> b!7901550 d!2358313))

(declare-fun d!2358417 () Bool)

(assert (=> d!2358417 (= (isEmpty!42538 lt!2683426) (not ((_ is Some!17867) lt!2683426)))))

(assert (=> d!2358327 d!2358417))

(declare-fun d!2358419 () Bool)

(assert (=> d!2358419 (= (isEmpty!42541 (_1!38402 lt!2683424)) ((_ is Nil!74155) (_1!38402 lt!2683424)))))

(assert (=> d!2358327 d!2358419))

(declare-fun d!2358421 () Bool)

(declare-fun lt!2683678 () tuple2!70198)

(assert (=> d!2358421 (= (++!18152 (_1!38402 lt!2683678) (_2!38402 lt!2683678)) input!1184)))

(declare-fun sizeTr!449 (List!74279 Int) Int)

(assert (=> d!2358421 (= lt!2683678 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 0 input!1184 input!1184 (sizeTr!449 input!1184 0)))))

(declare-fun lt!2683675 () Unit!169179)

(declare-fun lt!2683671 () Unit!169179)

(assert (=> d!2358421 (= lt!2683675 lt!2683671)))

(declare-fun lt!2683672 () List!74279)

(declare-fun lt!2683676 () Int)

(assert (=> d!2358421 (= (sizeTr!449 lt!2683672 lt!2683676) (+ (size!42965 lt!2683672) lt!2683676))))

(declare-fun lemmaSizeTrEqualsSize!448 (List!74279 Int) Unit!169179)

(assert (=> d!2358421 (= lt!2683671 (lemmaSizeTrEqualsSize!448 lt!2683672 lt!2683676))))

(assert (=> d!2358421 (= lt!2683676 0)))

(assert (=> d!2358421 (= lt!2683672 Nil!74155)))

(declare-fun lt!2683673 () Unit!169179)

(declare-fun lt!2683677 () Unit!169179)

(assert (=> d!2358421 (= lt!2683673 lt!2683677)))

(declare-fun lt!2683674 () Int)

(assert (=> d!2358421 (= (sizeTr!449 input!1184 lt!2683674) (+ (size!42965 input!1184) lt!2683674))))

(assert (=> d!2358421 (= lt!2683677 (lemmaSizeTrEqualsSize!448 input!1184 lt!2683674))))

(assert (=> d!2358421 (= lt!2683674 0)))

(assert (=> d!2358421 (validRegex!11645 (regex!8586 (h!80604 rulesArg!141)))))

(assert (=> d!2358421 (= (findLongestMatch!1918 (regex!8586 (h!80604 rulesArg!141)) input!1184) lt!2683678)))

(declare-fun bs!1967976 () Bool)

(assert (= bs!1967976 d!2358421))

(assert (=> bs!1967976 m!8275942))

(declare-fun m!8276532 () Bool)

(assert (=> bs!1967976 m!8276532))

(declare-fun m!8276534 () Bool)

(assert (=> bs!1967976 m!8276534))

(assert (=> bs!1967976 m!8276532))

(declare-fun m!8276536 () Bool)

(assert (=> bs!1967976 m!8276536))

(declare-fun m!8276538 () Bool)

(assert (=> bs!1967976 m!8276538))

(declare-fun m!8276540 () Bool)

(assert (=> bs!1967976 m!8276540))

(declare-fun m!8276542 () Bool)

(assert (=> bs!1967976 m!8276542))

(assert (=> bs!1967976 m!8276300))

(declare-fun m!8276544 () Bool)

(assert (=> bs!1967976 m!8276544))

(declare-fun m!8276546 () Bool)

(assert (=> bs!1967976 m!8276546))

(assert (=> d!2358327 d!2358421))

(declare-fun d!2358449 () Bool)

(declare-fun res!3135146 () Bool)

(declare-fun e!4664221 () Bool)

(assert (=> d!2358449 (=> (not res!3135146) (not e!4664221))))

(assert (=> d!2358449 (= res!3135146 (validRegex!11645 (regex!8586 (h!80604 rulesArg!141))))))

(assert (=> d!2358449 (= (ruleValid!3932 thiss!14377 (h!80604 rulesArg!141)) e!4664221)))

(declare-fun b!7901883 () Bool)

(declare-fun res!3135147 () Bool)

(assert (=> b!7901883 (=> (not res!3135147) (not e!4664221))))

(assert (=> b!7901883 (= res!3135147 (not (nullable!9482 (regex!8586 (h!80604 rulesArg!141)))))))

(declare-fun b!7901884 () Bool)

(assert (=> b!7901884 (= e!4664221 (not (= (tag!9450 (h!80604 rulesArg!141)) (String!82933 ""))))))

(assert (= (and d!2358449 res!3135146) b!7901883))

(assert (= (and b!7901883 res!3135147) b!7901884))

(assert (=> d!2358449 m!8276300))

(assert (=> b!7901883 m!8276308))

(assert (=> d!2358327 d!2358449))

(assert (=> d!2358263 d!2358289))

(declare-fun b!7901885 () Bool)

(declare-fun e!4664222 () Bool)

(assert (=> b!7901885 (= e!4664222 (matchR!10642 (derivativeStep!6426 (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))) (head!16143 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413)))))) (tail!15686 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413)))))))))

(declare-fun b!7901886 () Bool)

(declare-fun e!4664224 () Bool)

(declare-fun e!4664225 () Bool)

(assert (=> b!7901886 (= e!4664224 e!4664225)))

(declare-fun res!3135155 () Bool)

(assert (=> b!7901886 (=> res!3135155 e!4664225)))

(declare-fun call!733230 () Bool)

(assert (=> b!7901886 (= res!3135155 call!733230)))

(declare-fun b!7901887 () Bool)

(declare-fun res!3135151 () Bool)

(declare-fun e!4664223 () Bool)

(assert (=> b!7901887 (=> (not res!3135151) (not e!4664223))))

(assert (=> b!7901887 (= res!3135151 (isEmpty!42541 (tail!15686 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413)))))))))

(declare-fun b!7901888 () Bool)

(assert (=> b!7901888 (= e!4664222 (nullable!9482 (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))))))

(declare-fun b!7901889 () Bool)

(declare-fun res!3135152 () Bool)

(declare-fun e!4664226 () Bool)

(assert (=> b!7901889 (=> res!3135152 e!4664226)))

(assert (=> b!7901889 (= res!3135152 (not ((_ is ElementMatch!21289) (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))))))

(declare-fun e!4664227 () Bool)

(assert (=> b!7901889 (= e!4664227 e!4664226)))

(declare-fun d!2358455 () Bool)

(declare-fun e!4664228 () Bool)

(assert (=> d!2358455 e!4664228))

(declare-fun c!1450142 () Bool)

(assert (=> d!2358455 (= c!1450142 ((_ is EmptyExpr!21289) (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))))))

(declare-fun lt!2683680 () Bool)

(assert (=> d!2358455 (= lt!2683680 e!4664222)))

(declare-fun c!1450143 () Bool)

(assert (=> d!2358455 (= c!1450143 (isEmpty!42541 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))))))

(assert (=> d!2358455 (validRegex!11645 (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))))

(assert (=> d!2358455 (= (matchR!10642 (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))) (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))) lt!2683680)))

(declare-fun b!7901890 () Bool)

(declare-fun res!3135154 () Bool)

(assert (=> b!7901890 (=> res!3135154 e!4664225)))

(assert (=> b!7901890 (= res!3135154 (not (isEmpty!42541 (tail!15686 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))))))))

(declare-fun b!7901891 () Bool)

(assert (=> b!7901891 (= e!4664223 (= (head!16143 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))) (c!1450018 (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))))))

(declare-fun b!7901892 () Bool)

(declare-fun res!3135149 () Bool)

(assert (=> b!7901892 (=> (not res!3135149) (not e!4664223))))

(assert (=> b!7901892 (= res!3135149 (not call!733230))))

(declare-fun b!7901893 () Bool)

(assert (=> b!7901893 (= e!4664225 (not (= (head!16143 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))) (c!1450018 (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))))))))

(declare-fun b!7901894 () Bool)

(assert (=> b!7901894 (= e!4664228 (= lt!2683680 call!733230))))

(declare-fun b!7901895 () Bool)

(assert (=> b!7901895 (= e!4664227 (not lt!2683680))))

(declare-fun bm!733225 () Bool)

(assert (=> bm!733225 (= call!733230 (isEmpty!42541 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))))))

(declare-fun b!7901896 () Bool)

(assert (=> b!7901896 (= e!4664226 e!4664224)))

(declare-fun res!3135148 () Bool)

(assert (=> b!7901896 (=> (not res!3135148) (not e!4664224))))

(assert (=> b!7901896 (= res!3135148 (not lt!2683680))))

(declare-fun b!7901897 () Bool)

(assert (=> b!7901897 (= e!4664228 e!4664227)))

(declare-fun c!1450141 () Bool)

(assert (=> b!7901897 (= c!1450141 ((_ is EmptyLang!21289) (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))))))

(declare-fun b!7901898 () Bool)

(declare-fun res!3135153 () Bool)

(assert (=> b!7901898 (=> res!3135153 e!4664226)))

(assert (=> b!7901898 (= res!3135153 e!4664223)))

(declare-fun res!3135150 () Bool)

(assert (=> b!7901898 (=> (not res!3135150) (not e!4664223))))

(assert (=> b!7901898 (= res!3135150 lt!2683680)))

(assert (= (and d!2358455 c!1450143) b!7901888))

(assert (= (and d!2358455 (not c!1450143)) b!7901885))

(assert (= (and d!2358455 c!1450142) b!7901894))

(assert (= (and d!2358455 (not c!1450142)) b!7901897))

(assert (= (and b!7901897 c!1450141) b!7901895))

(assert (= (and b!7901897 (not c!1450141)) b!7901889))

(assert (= (and b!7901889 (not res!3135152)) b!7901898))

(assert (= (and b!7901898 res!3135150) b!7901892))

(assert (= (and b!7901892 res!3135149) b!7901887))

(assert (= (and b!7901887 res!3135151) b!7901891))

(assert (= (and b!7901898 (not res!3135153)) b!7901896))

(assert (= (and b!7901896 res!3135148) b!7901886))

(assert (= (and b!7901886 (not res!3135155)) b!7901890))

(assert (= (and b!7901890 (not res!3135154)) b!7901893))

(assert (= (or b!7901894 b!7901886 b!7901892) bm!733225))

(assert (=> b!7901890 m!8276162))

(declare-fun m!8276564 () Bool)

(assert (=> b!7901890 m!8276564))

(assert (=> b!7901890 m!8276564))

(declare-fun m!8276566 () Bool)

(assert (=> b!7901890 m!8276566))

(assert (=> d!2358455 m!8276162))

(declare-fun m!8276568 () Bool)

(assert (=> d!2358455 m!8276568))

(declare-fun m!8276570 () Bool)

(assert (=> d!2358455 m!8276570))

(assert (=> b!7901885 m!8276162))

(declare-fun m!8276572 () Bool)

(assert (=> b!7901885 m!8276572))

(assert (=> b!7901885 m!8276572))

(declare-fun m!8276574 () Bool)

(assert (=> b!7901885 m!8276574))

(assert (=> b!7901885 m!8276162))

(assert (=> b!7901885 m!8276564))

(assert (=> b!7901885 m!8276574))

(assert (=> b!7901885 m!8276564))

(declare-fun m!8276576 () Bool)

(assert (=> b!7901885 m!8276576))

(assert (=> b!7901891 m!8276162))

(assert (=> b!7901891 m!8276572))

(assert (=> b!7901893 m!8276162))

(assert (=> b!7901893 m!8276572))

(declare-fun m!8276578 () Bool)

(assert (=> b!7901888 m!8276578))

(assert (=> bm!733225 m!8276162))

(assert (=> bm!733225 m!8276568))

(assert (=> b!7901887 m!8276162))

(assert (=> b!7901887 m!8276564))

(assert (=> b!7901887 m!8276564))

(assert (=> b!7901887 m!8276566))

(assert (=> b!7901520 d!2358455))

(declare-fun d!2358463 () Bool)

(assert (=> d!2358463 (= (get!26633 lt!2683413) (v!55006 lt!2683413))))

(assert (=> b!7901520 d!2358463))

(declare-fun d!2358465 () Bool)

(assert (=> d!2358465 (= (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413)))) (list!19211 (c!1450017 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))))))

(declare-fun bs!1967979 () Bool)

(assert (= bs!1967979 d!2358465))

(declare-fun m!8276580 () Bool)

(assert (=> bs!1967979 m!8276580))

(assert (=> b!7901520 d!2358465))

(declare-fun d!2358467 () Bool)

(declare-fun lt!2683681 () BalanceConc!30638)

(assert (=> d!2358467 (= (list!19209 lt!2683681) (originalCharacters!8827 (_1!38400 (get!26633 lt!2683413))))))

(assert (=> d!2358467 (= lt!2683681 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))) (value!286682 (_1!38400 (get!26633 lt!2683413)))))))

(assert (=> d!2358467 (= (charsOf!5530 (_1!38400 (get!26633 lt!2683413))) lt!2683681)))

(declare-fun b_lambda!289691 () Bool)

(assert (=> (not b_lambda!289691) (not d!2358467)))

(declare-fun tb!262791 () Bool)

(declare-fun t!389230 () Bool)

(assert (=> (and b!7901247 (= (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))) t!389230) tb!262791))

(declare-fun b!7901907 () Bool)

(declare-fun e!4664233 () Bool)

(declare-fun tp!2354070 () Bool)

(assert (=> b!7901907 (= e!4664233 (and (inv!95142 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))) (value!286682 (_1!38400 (get!26633 lt!2683413)))))) tp!2354070))))

(declare-fun result!359850 () Bool)

(assert (=> tb!262791 (= result!359850 (and (inv!95143 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))) (value!286682 (_1!38400 (get!26633 lt!2683413))))) e!4664233))))

(assert (= tb!262791 b!7901907))

(declare-fun m!8276582 () Bool)

(assert (=> b!7901907 m!8276582))

(declare-fun m!8276584 () Bool)

(assert (=> tb!262791 m!8276584))

(assert (=> d!2358467 t!389230))

(declare-fun b_and!352731 () Bool)

(assert (= b_and!352687 (and (=> t!389230 result!359850) b_and!352731)))

(declare-fun t!389232 () Bool)

(declare-fun tb!262793 () Bool)

(assert (=> (and b!7901561 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))) t!389232) tb!262793))

(declare-fun result!359852 () Bool)

(assert (= result!359852 result!359850))

(assert (=> d!2358467 t!389232))

(declare-fun b_and!352733 () Bool)

(assert (= b_and!352701 (and (=> t!389232 result!359852) b_and!352733)))

(declare-fun m!8276586 () Bool)

(assert (=> d!2358467 m!8276586))

(declare-fun m!8276588 () Bool)

(assert (=> d!2358467 m!8276588))

(assert (=> b!7901520 d!2358467))

(assert (=> b!7901348 d!2358449))

(declare-fun b!7901932 () Bool)

(declare-fun res!3135160 () Bool)

(declare-fun e!4664249 () Bool)

(assert (=> b!7901932 (=> res!3135160 e!4664249)))

(assert (=> b!7901932 (= res!3135160 (not ((_ is IntegerValue!26708) (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327)))))))))

(declare-fun e!4664248 () Bool)

(assert (=> b!7901932 (= e!4664248 e!4664249)))

(declare-fun b!7901933 () Bool)

(declare-fun e!4664250 () Bool)

(declare-fun inv!16 (TokenValue!8902) Bool)

(assert (=> b!7901933 (= e!4664250 (inv!16 (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327))))))))

(declare-fun b!7901934 () Bool)

(assert (=> b!7901934 (= e!4664250 e!4664248)))

(declare-fun c!1450159 () Bool)

(assert (=> b!7901934 (= c!1450159 ((_ is IntegerValue!26707) (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327))))))))

(declare-fun d!2358469 () Bool)

(declare-fun c!1450158 () Bool)

(assert (=> d!2358469 (= c!1450158 ((_ is IntegerValue!26706) (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327))))))))

(assert (=> d!2358469 (= (inv!21 (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327))))) e!4664250)))

(declare-fun b!7901935 () Bool)

(declare-fun inv!17 (TokenValue!8902) Bool)

(assert (=> b!7901935 (= e!4664248 (inv!17 (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327))))))))

(declare-fun b!7901936 () Bool)

(declare-fun inv!15 (TokenValue!8902) Bool)

(assert (=> b!7901936 (= e!4664249 (inv!15 (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 lt!2683327))))))))

(assert (= (and d!2358469 c!1450158) b!7901933))

(assert (= (and d!2358469 (not c!1450158)) b!7901934))

(assert (= (and b!7901934 c!1450159) b!7901935))

(assert (= (and b!7901934 (not c!1450159)) b!7901932))

(assert (= (and b!7901932 (not res!3135160)) b!7901936))

(declare-fun m!8276598 () Bool)

(assert (=> b!7901933 m!8276598))

(declare-fun m!8276600 () Bool)

(assert (=> b!7901935 m!8276600))

(declare-fun m!8276602 () Bool)

(assert (=> b!7901936 m!8276602))

(assert (=> tb!262753 d!2358469))

(declare-fun d!2358473 () Bool)

(assert (=> d!2358473 (= (head!16143 input!1184) (h!80603 input!1184))))

(assert (=> b!7901280 d!2358473))

(assert (=> b!7901282 d!2358313))

(declare-fun d!2358475 () Bool)

(assert (=> d!2358475 (= (seqFromList!6145 (_1!38402 lt!2683424)) (fromListB!2774 (_1!38402 lt!2683424)))))

(declare-fun bs!1967980 () Bool)

(assert (= bs!1967980 d!2358475))

(declare-fun m!8276604 () Bool)

(assert (=> bs!1967980 m!8276604))

(assert (=> b!7901542 d!2358475))

(declare-fun d!2358477 () Bool)

(declare-fun e!4664272 () Bool)

(assert (=> d!2358477 e!4664272))

(declare-fun res!3135185 () Bool)

(assert (=> d!2358477 (=> res!3135185 e!4664272)))

(assert (=> d!2358477 (= res!3135185 (isEmpty!42541 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(declare-fun lt!2683699 () Unit!169179)

(declare-fun choose!59715 (Regex!21289 List!74279) Unit!169179)

(assert (=> d!2358477 (= lt!2683699 (choose!59715 (regex!8586 (h!80604 rulesArg!141)) input!1184))))

(assert (=> d!2358477 (validRegex!11645 (regex!8586 (h!80604 rulesArg!141)))))

(assert (=> d!2358477 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2114 (regex!8586 (h!80604 rulesArg!141)) input!1184) lt!2683699)))

(declare-fun b!7901972 () Bool)

(assert (=> b!7901972 (= e!4664272 (matchR!10642 (regex!8586 (h!80604 rulesArg!141)) (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(assert (= (and d!2358477 (not res!3135185)) b!7901972))

(assert (=> d!2358477 m!8276202))

(assert (=> d!2358477 m!8276300))

(assert (=> d!2358477 m!8276208))

(assert (=> d!2358477 m!8276208))

(assert (=> d!2358477 m!8275942))

(assert (=> d!2358477 m!8276210))

(assert (=> d!2358477 m!8275942))

(declare-fun m!8276666 () Bool)

(assert (=> d!2358477 m!8276666))

(assert (=> b!7901972 m!8276208))

(assert (=> b!7901972 m!8275942))

(assert (=> b!7901972 m!8276208))

(assert (=> b!7901972 m!8275942))

(assert (=> b!7901972 m!8276210))

(assert (=> b!7901972 m!8276212))

(assert (=> b!7901542 d!2358477))

(declare-fun d!2358493 () Bool)

(assert (=> d!2358493 (= (apply!14327 (transformation!8586 (h!80604 rulesArg!141)) (seqFromList!6145 (_1!38402 lt!2683424))) (dynLambda!30043 (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (seqFromList!6145 (_1!38402 lt!2683424))))))

(declare-fun b_lambda!289693 () Bool)

(assert (=> (not b_lambda!289693) (not d!2358493)))

(declare-fun t!389234 () Bool)

(declare-fun tb!262795 () Bool)

(assert (=> (and b!7901247 (= (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))) t!389234) tb!262795))

(declare-fun result!359854 () Bool)

(assert (=> tb!262795 (= result!359854 (inv!21 (dynLambda!30043 (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (seqFromList!6145 (_1!38402 lt!2683424)))))))

(declare-fun m!8276668 () Bool)

(assert (=> tb!262795 m!8276668))

(assert (=> d!2358493 t!389234))

(declare-fun b_and!352735 () Bool)

(assert (= b_and!352707 (and (=> t!389234 result!359854) b_and!352735)))

(declare-fun t!389236 () Bool)

(declare-fun tb!262797 () Bool)

(assert (=> (and b!7901561 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))) t!389236) tb!262797))

(declare-fun result!359856 () Bool)

(assert (= result!359856 result!359854))

(assert (=> d!2358493 t!389236))

(declare-fun b_and!352737 () Bool)

(assert (= b_and!352709 (and (=> t!389236 result!359856) b_and!352737)))

(assert (=> d!2358493 m!8276196))

(declare-fun m!8276670 () Bool)

(assert (=> d!2358493 m!8276670))

(assert (=> b!7901542 d!2358493))

(assert (=> b!7901542 d!2358415))

(declare-fun d!2358495 () Bool)

(assert (=> d!2358495 (= (isEmpty!42541 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))) ((_ is Nil!74155) (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 rulesArg!141)) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(assert (=> b!7901542 d!2358495))

(assert (=> b!7901542 d!2358381))

(declare-fun d!2358497 () Bool)

(declare-fun lt!2683703 () Int)

(assert (=> d!2358497 (= lt!2683703 (size!42965 (list!19209 (seqFromList!6145 (_1!38402 lt!2683424)))))))

(declare-fun size!42969 (Conc!15760) Int)

(assert (=> d!2358497 (= lt!2683703 (size!42969 (c!1450017 (seqFromList!6145 (_1!38402 lt!2683424)))))))

(assert (=> d!2358497 (= (size!42967 (seqFromList!6145 (_1!38402 lt!2683424))) lt!2683703)))

(declare-fun bs!1967981 () Bool)

(assert (= bs!1967981 d!2358497))

(assert (=> bs!1967981 m!8276196))

(declare-fun m!8276698 () Bool)

(assert (=> bs!1967981 m!8276698))

(assert (=> bs!1967981 m!8276698))

(declare-fun m!8276700 () Bool)

(assert (=> bs!1967981 m!8276700))

(declare-fun m!8276702 () Bool)

(assert (=> bs!1967981 m!8276702))

(assert (=> b!7901542 d!2358497))

(declare-fun b!7902001 () Bool)

(declare-fun e!4664289 () Bool)

(assert (=> b!7902001 (= e!4664289 true)))

(declare-fun d!2358501 () Bool)

(assert (=> d!2358501 e!4664289))

(assert (= d!2358501 b!7902001))

(declare-fun lambda!472432 () Int)

(declare-fun order!29819 () Int)

(declare-fun order!29817 () Int)

(declare-fun dynLambda!30049 (Int Int) Int)

(declare-fun dynLambda!30050 (Int Int) Int)

(assert (=> b!7902001 (< (dynLambda!30049 order!29817 (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))) (dynLambda!30050 order!29819 lambda!472432))))

(declare-fun order!29821 () Int)

(declare-fun dynLambda!30051 (Int Int) Int)

(assert (=> b!7902001 (< (dynLambda!30051 order!29821 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141)))) (dynLambda!30050 order!29819 lambda!472432))))

(assert (=> d!2358501 (= (list!19209 (dynLambda!30042 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (dynLambda!30043 (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (seqFromList!6145 (_1!38402 lt!2683424))))) (list!19209 (seqFromList!6145 (_1!38402 lt!2683424))))))

(declare-fun lt!2683706 () Unit!169179)

(declare-fun ForallOf!1298 (Int BalanceConc!30638) Unit!169179)

(assert (=> d!2358501 (= lt!2683706 (ForallOf!1298 lambda!472432 (seqFromList!6145 (_1!38402 lt!2683424))))))

(assert (=> d!2358501 (= (lemmaSemiInverse!2661 (transformation!8586 (h!80604 rulesArg!141)) (seqFromList!6145 (_1!38402 lt!2683424))) lt!2683706)))

(declare-fun b_lambda!289695 () Bool)

(assert (=> (not b_lambda!289695) (not d!2358501)))

(declare-fun t!389238 () Bool)

(declare-fun tb!262799 () Bool)

(assert (=> (and b!7901247 (= (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toChars!11490 (transformation!8586 (h!80604 rulesArg!141)))) t!389238) tb!262799))

(declare-fun b!7902006 () Bool)

(declare-fun e!4664294 () Bool)

(declare-fun tp!2354071 () Bool)

(assert (=> b!7902006 (= e!4664294 (and (inv!95142 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (dynLambda!30043 (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (seqFromList!6145 (_1!38402 lt!2683424)))))) tp!2354071))))

(declare-fun result!359858 () Bool)

(assert (=> tb!262799 (= result!359858 (and (inv!95143 (dynLambda!30042 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (dynLambda!30043 (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (seqFromList!6145 (_1!38402 lt!2683424))))) e!4664294))))

(assert (= tb!262799 b!7902006))

(declare-fun m!8276724 () Bool)

(assert (=> b!7902006 m!8276724))

(declare-fun m!8276726 () Bool)

(assert (=> tb!262799 m!8276726))

(assert (=> d!2358501 t!389238))

(declare-fun b_and!352739 () Bool)

(assert (= b_and!352731 (and (=> t!389238 result!359858) b_and!352739)))

(declare-fun t!389240 () Bool)

(declare-fun tb!262801 () Bool)

(assert (=> (and b!7901561 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toChars!11490 (transformation!8586 (h!80604 rulesArg!141)))) t!389240) tb!262801))

(declare-fun result!359860 () Bool)

(assert (= result!359860 result!359858))

(assert (=> d!2358501 t!389240))

(declare-fun b_and!352741 () Bool)

(assert (= b_and!352733 (and (=> t!389240 result!359860) b_and!352741)))

(declare-fun b_lambda!289697 () Bool)

(assert (=> (not b_lambda!289697) (not d!2358501)))

(assert (=> d!2358501 t!389234))

(declare-fun b_and!352743 () Bool)

(assert (= b_and!352735 (and (=> t!389234 result!359854) b_and!352743)))

(assert (=> d!2358501 t!389236))

(declare-fun b_and!352745 () Bool)

(assert (= b_and!352737 (and (=> t!389236 result!359856) b_and!352745)))

(declare-fun m!8276728 () Bool)

(assert (=> d!2358501 m!8276728))

(declare-fun m!8276730 () Bool)

(assert (=> d!2358501 m!8276730))

(assert (=> d!2358501 m!8276196))

(declare-fun m!8276732 () Bool)

(assert (=> d!2358501 m!8276732))

(assert (=> d!2358501 m!8276196))

(assert (=> d!2358501 m!8276698))

(assert (=> d!2358501 m!8276670))

(assert (=> d!2358501 m!8276728))

(assert (=> d!2358501 m!8276196))

(assert (=> d!2358501 m!8276670))

(assert (=> b!7901542 d!2358501))

(assert (=> b!7901542 d!2358313))

(declare-fun b!7902012 () Bool)

(declare-fun e!4664297 () Bool)

(assert (=> b!7902012 (= e!4664297 (>= (size!42965 (tail!15686 input!1184)) (size!42965 (tail!15686 input!1184))))))

(declare-fun b!7902010 () Bool)

(declare-fun res!3135204 () Bool)

(declare-fun e!4664299 () Bool)

(assert (=> b!7902010 (=> (not res!3135204) (not e!4664299))))

(assert (=> b!7902010 (= res!3135204 (= (head!16143 (tail!15686 input!1184)) (head!16143 (tail!15686 input!1184))))))

(declare-fun b!7902009 () Bool)

(declare-fun e!4664298 () Bool)

(assert (=> b!7902009 (= e!4664298 e!4664299)))

(declare-fun res!3135206 () Bool)

(assert (=> b!7902009 (=> (not res!3135206) (not e!4664299))))

(assert (=> b!7902009 (= res!3135206 (not ((_ is Nil!74155) (tail!15686 input!1184))))))

(declare-fun d!2358509 () Bool)

(assert (=> d!2358509 e!4664297))

(declare-fun res!3135205 () Bool)

(assert (=> d!2358509 (=> res!3135205 e!4664297)))

(declare-fun lt!2683707 () Bool)

(assert (=> d!2358509 (= res!3135205 (not lt!2683707))))

(assert (=> d!2358509 (= lt!2683707 e!4664298)))

(declare-fun res!3135203 () Bool)

(assert (=> d!2358509 (=> res!3135203 e!4664298)))

(assert (=> d!2358509 (= res!3135203 ((_ is Nil!74155) (tail!15686 input!1184)))))

(assert (=> d!2358509 (= (isPrefix!6419 (tail!15686 input!1184) (tail!15686 input!1184)) lt!2683707)))

(declare-fun b!7902011 () Bool)

(assert (=> b!7902011 (= e!4664299 (isPrefix!6419 (tail!15686 (tail!15686 input!1184)) (tail!15686 (tail!15686 input!1184))))))

(assert (= (and d!2358509 (not res!3135203)) b!7902009))

(assert (= (and b!7902009 res!3135206) b!7902010))

(assert (= (and b!7902010 res!3135204) b!7902011))

(assert (= (and d!2358509 (not res!3135205)) b!7902012))

(assert (=> b!7902012 m!8275978))

(declare-fun m!8276738 () Bool)

(assert (=> b!7902012 m!8276738))

(assert (=> b!7902012 m!8275978))

(assert (=> b!7902012 m!8276738))

(assert (=> b!7902010 m!8275978))

(declare-fun m!8276742 () Bool)

(assert (=> b!7902010 m!8276742))

(assert (=> b!7902010 m!8275978))

(assert (=> b!7902010 m!8276742))

(assert (=> b!7902011 m!8275978))

(declare-fun m!8276744 () Bool)

(assert (=> b!7902011 m!8276744))

(assert (=> b!7902011 m!8275978))

(assert (=> b!7902011 m!8276744))

(assert (=> b!7902011 m!8276744))

(assert (=> b!7902011 m!8276744))

(declare-fun m!8276746 () Bool)

(assert (=> b!7902011 m!8276746))

(assert (=> b!7901281 d!2358509))

(declare-fun d!2358511 () Bool)

(assert (=> d!2358511 (= (tail!15686 input!1184) (t!389186 input!1184))))

(assert (=> b!7901281 d!2358511))

(assert (=> b!7901521 d!2358465))

(assert (=> b!7901521 d!2358467))

(assert (=> b!7901521 d!2358463))

(declare-fun bs!1967983 () Bool)

(declare-fun d!2358515 () Bool)

(assert (= bs!1967983 (and d!2358515 d!2358269)))

(declare-fun lambda!472433 () Int)

(assert (=> bs!1967983 (= lambda!472433 lambda!472419)))

(assert (=> d!2358515 true))

(declare-fun lt!2683708 () Bool)

(assert (=> d!2358515 (= lt!2683708 (forall!18441 (t!389187 rulesArg!141) lambda!472433))))

(declare-fun e!4664305 () Bool)

(assert (=> d!2358515 (= lt!2683708 e!4664305)))

(declare-fun res!3135208 () Bool)

(assert (=> d!2358515 (=> res!3135208 e!4664305)))

(assert (=> d!2358515 (= res!3135208 (not ((_ is Cons!74156) (t!389187 rulesArg!141))))))

(assert (=> d!2358515 (= (rulesValidInductive!3397 thiss!14377 (t!389187 rulesArg!141)) lt!2683708)))

(declare-fun b!7902016 () Bool)

(declare-fun e!4664306 () Bool)

(assert (=> b!7902016 (= e!4664305 e!4664306)))

(declare-fun res!3135207 () Bool)

(assert (=> b!7902016 (=> (not res!3135207) (not e!4664306))))

(assert (=> b!7902016 (= res!3135207 (ruleValid!3932 thiss!14377 (h!80604 (t!389187 rulesArg!141))))))

(declare-fun b!7902017 () Bool)

(assert (=> b!7902017 (= e!4664306 (rulesValidInductive!3397 thiss!14377 (t!389187 (t!389187 rulesArg!141))))))

(assert (= (and d!2358515 (not res!3135208)) b!7902016))

(assert (= (and b!7902016 res!3135207) b!7902017))

(declare-fun m!8276752 () Bool)

(assert (=> d!2358515 m!8276752))

(declare-fun m!8276754 () Bool)

(assert (=> b!7902016 m!8276754))

(declare-fun m!8276756 () Bool)

(assert (=> b!7902017 m!8276756))

(assert (=> b!7901349 d!2358515))

(declare-fun bm!733228 () Bool)

(declare-fun call!733233 () Option!17868)

(assert (=> bm!733228 (= call!733233 (maxPrefixOneRule!3766 thiss!14377 (h!80604 (t!389187 (t!389187 rulesArg!141))) input!1184))))

(declare-fun b!7902018 () Bool)

(declare-fun res!3135212 () Bool)

(declare-fun e!4664308 () Bool)

(assert (=> b!7902018 (=> (not res!3135212) (not e!4664308))))

(declare-fun lt!2683713 () Option!17868)

(assert (=> b!7902018 (= res!3135212 (= (++!18152 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683713)))) (_2!38400 (get!26633 lt!2683713))) input!1184))))

(declare-fun b!7902019 () Bool)

(assert (=> b!7902019 (= e!4664308 (contains!20886 (t!389187 (t!389187 rulesArg!141)) (rule!11872 (_1!38400 (get!26633 lt!2683713)))))))

(declare-fun b!7902020 () Bool)

(declare-fun res!3135210 () Bool)

(assert (=> b!7902020 (=> (not res!3135210) (not e!4664308))))

(assert (=> b!7902020 (= res!3135210 (= (value!286682 (_1!38400 (get!26633 lt!2683713))) (apply!14327 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683713)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683713)))))))))

(declare-fun d!2358517 () Bool)

(declare-fun e!4664309 () Bool)

(assert (=> d!2358517 e!4664309))

(declare-fun res!3135214 () Bool)

(assert (=> d!2358517 (=> res!3135214 e!4664309)))

(assert (=> d!2358517 (= res!3135214 (isEmpty!42538 lt!2683713))))

(declare-fun e!4664307 () Option!17868)

(assert (=> d!2358517 (= lt!2683713 e!4664307)))

(declare-fun c!1450173 () Bool)

(assert (=> d!2358517 (= c!1450173 (and ((_ is Cons!74156) (t!389187 (t!389187 rulesArg!141))) ((_ is Nil!74156) (t!389187 (t!389187 (t!389187 rulesArg!141))))))))

(declare-fun lt!2683710 () Unit!169179)

(declare-fun lt!2683709 () Unit!169179)

(assert (=> d!2358517 (= lt!2683710 lt!2683709)))

(assert (=> d!2358517 (isPrefix!6419 input!1184 input!1184)))

(assert (=> d!2358517 (= lt!2683709 (lemmaIsPrefixRefl!3930 input!1184 input!1184))))

(assert (=> d!2358517 (rulesValidInductive!3397 thiss!14377 (t!389187 (t!389187 rulesArg!141)))))

(assert (=> d!2358517 (= (maxPrefix!4719 thiss!14377 (t!389187 (t!389187 rulesArg!141)) input!1184) lt!2683713)))

(declare-fun b!7902021 () Bool)

(declare-fun res!3135209 () Bool)

(assert (=> b!7902021 (=> (not res!3135209) (not e!4664308))))

(assert (=> b!7902021 (= res!3135209 (< (size!42965 (_2!38400 (get!26633 lt!2683713))) (size!42965 input!1184)))))

(declare-fun b!7902022 () Bool)

(assert (=> b!7902022 (= e!4664309 e!4664308)))

(declare-fun res!3135215 () Bool)

(assert (=> b!7902022 (=> (not res!3135215) (not e!4664308))))

(assert (=> b!7902022 (= res!3135215 (isDefined!14444 lt!2683713))))

(declare-fun b!7902023 () Bool)

(declare-fun res!3135211 () Bool)

(assert (=> b!7902023 (=> (not res!3135211) (not e!4664308))))

(assert (=> b!7902023 (= res!3135211 (matchR!10642 (regex!8586 (rule!11872 (_1!38400 (get!26633 lt!2683713)))) (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683713))))))))

(declare-fun b!7902024 () Bool)

(declare-fun res!3135213 () Bool)

(assert (=> b!7902024 (=> (not res!3135213) (not e!4664308))))

(assert (=> b!7902024 (= res!3135213 (= (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683713)))) (originalCharacters!8827 (_1!38400 (get!26633 lt!2683713)))))))

(declare-fun b!7902025 () Bool)

(assert (=> b!7902025 (= e!4664307 call!733233)))

(declare-fun b!7902026 () Bool)

(declare-fun lt!2683712 () Option!17868)

(declare-fun lt!2683711 () Option!17868)

(assert (=> b!7902026 (= e!4664307 (ite (and ((_ is None!17867) lt!2683712) ((_ is None!17867) lt!2683711)) None!17867 (ite ((_ is None!17867) lt!2683711) lt!2683712 (ite ((_ is None!17867) lt!2683712) lt!2683711 (ite (>= (size!42964 (_1!38400 (v!55006 lt!2683712))) (size!42964 (_1!38400 (v!55006 lt!2683711)))) lt!2683712 lt!2683711)))))))

(assert (=> b!7902026 (= lt!2683712 call!733233)))

(assert (=> b!7902026 (= lt!2683711 (maxPrefix!4719 thiss!14377 (t!389187 (t!389187 (t!389187 rulesArg!141))) input!1184))))

(assert (= (and d!2358517 c!1450173) b!7902025))

(assert (= (and d!2358517 (not c!1450173)) b!7902026))

(assert (= (or b!7902025 b!7902026) bm!733228))

(assert (= (and d!2358517 (not res!3135214)) b!7902022))

(assert (= (and b!7902022 res!3135215) b!7902024))

(assert (= (and b!7902024 res!3135213) b!7902021))

(assert (= (and b!7902021 res!3135209) b!7902018))

(assert (= (and b!7902018 res!3135212) b!7902020))

(assert (= (and b!7902020 res!3135210) b!7902023))

(assert (= (and b!7902023 res!3135211) b!7902019))

(declare-fun m!8276762 () Bool)

(assert (=> b!7902022 m!8276762))

(declare-fun m!8276764 () Bool)

(assert (=> b!7902018 m!8276764))

(declare-fun m!8276766 () Bool)

(assert (=> b!7902018 m!8276766))

(assert (=> b!7902018 m!8276766))

(declare-fun m!8276768 () Bool)

(assert (=> b!7902018 m!8276768))

(assert (=> b!7902018 m!8276768))

(declare-fun m!8276770 () Bool)

(assert (=> b!7902018 m!8276770))

(assert (=> b!7902023 m!8276764))

(assert (=> b!7902023 m!8276766))

(assert (=> b!7902023 m!8276766))

(assert (=> b!7902023 m!8276768))

(assert (=> b!7902023 m!8276768))

(declare-fun m!8276772 () Bool)

(assert (=> b!7902023 m!8276772))

(declare-fun m!8276774 () Bool)

(assert (=> b!7902026 m!8276774))

(declare-fun m!8276776 () Bool)

(assert (=> d!2358517 m!8276776))

(assert (=> d!2358517 m!8275936))

(assert (=> d!2358517 m!8275938))

(assert (=> d!2358517 m!8276756))

(assert (=> b!7902020 m!8276764))

(declare-fun m!8276778 () Bool)

(assert (=> b!7902020 m!8276778))

(assert (=> b!7902020 m!8276778))

(declare-fun m!8276780 () Bool)

(assert (=> b!7902020 m!8276780))

(declare-fun m!8276782 () Bool)

(assert (=> bm!733228 m!8276782))

(assert (=> b!7902019 m!8276764))

(declare-fun m!8276784 () Bool)

(assert (=> b!7902019 m!8276784))

(assert (=> b!7902021 m!8276764))

(declare-fun m!8276786 () Bool)

(assert (=> b!7902021 m!8276786))

(assert (=> b!7902021 m!8275942))

(assert (=> b!7902024 m!8276764))

(assert (=> b!7902024 m!8276766))

(assert (=> b!7902024 m!8276766))

(assert (=> b!7902024 m!8276768))

(assert (=> b!7901523 d!2358517))

(declare-fun b!7902055 () Bool)

(declare-fun e!4664321 () Bool)

(assert (=> b!7902055 (= e!4664321 (matchR!10642 (derivativeStep!6426 (regex!8586 (h!80604 rulesArg!141)) (head!16143 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426)))))) (tail!15686 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426)))))))))

(declare-fun b!7902056 () Bool)

(declare-fun e!4664323 () Bool)

(declare-fun e!4664324 () Bool)

(assert (=> b!7902056 (= e!4664323 e!4664324)))

(declare-fun res!3135223 () Bool)

(assert (=> b!7902056 (=> res!3135223 e!4664324)))

(declare-fun call!733234 () Bool)

(assert (=> b!7902056 (= res!3135223 call!733234)))

(declare-fun b!7902057 () Bool)

(declare-fun res!3135219 () Bool)

(declare-fun e!4664322 () Bool)

(assert (=> b!7902057 (=> (not res!3135219) (not e!4664322))))

(assert (=> b!7902057 (= res!3135219 (isEmpty!42541 (tail!15686 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426)))))))))

(declare-fun b!7902058 () Bool)

(assert (=> b!7902058 (= e!4664321 (nullable!9482 (regex!8586 (h!80604 rulesArg!141))))))

(declare-fun b!7902059 () Bool)

(declare-fun res!3135220 () Bool)

(declare-fun e!4664325 () Bool)

(assert (=> b!7902059 (=> res!3135220 e!4664325)))

(assert (=> b!7902059 (= res!3135220 (not ((_ is ElementMatch!21289) (regex!8586 (h!80604 rulesArg!141)))))))

(declare-fun e!4664326 () Bool)

(assert (=> b!7902059 (= e!4664326 e!4664325)))

(declare-fun d!2358519 () Bool)

(declare-fun e!4664327 () Bool)

(assert (=> d!2358519 e!4664327))

(declare-fun c!1450175 () Bool)

(assert (=> d!2358519 (= c!1450175 ((_ is EmptyExpr!21289) (regex!8586 (h!80604 rulesArg!141))))))

(declare-fun lt!2683714 () Bool)

(assert (=> d!2358519 (= lt!2683714 e!4664321)))

(declare-fun c!1450176 () Bool)

(assert (=> d!2358519 (= c!1450176 (isEmpty!42541 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))))))

(assert (=> d!2358519 (validRegex!11645 (regex!8586 (h!80604 rulesArg!141)))))

(assert (=> d!2358519 (= (matchR!10642 (regex!8586 (h!80604 rulesArg!141)) (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))) lt!2683714)))

(declare-fun b!7902060 () Bool)

(declare-fun res!3135222 () Bool)

(assert (=> b!7902060 (=> res!3135222 e!4664324)))

(assert (=> b!7902060 (= res!3135222 (not (isEmpty!42541 (tail!15686 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))))))))

(declare-fun b!7902061 () Bool)

(assert (=> b!7902061 (= e!4664322 (= (head!16143 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))) (c!1450018 (regex!8586 (h!80604 rulesArg!141)))))))

(declare-fun b!7902062 () Bool)

(declare-fun res!3135217 () Bool)

(assert (=> b!7902062 (=> (not res!3135217) (not e!4664322))))

(assert (=> b!7902062 (= res!3135217 (not call!733234))))

(declare-fun b!7902063 () Bool)

(assert (=> b!7902063 (= e!4664324 (not (= (head!16143 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))) (c!1450018 (regex!8586 (h!80604 rulesArg!141))))))))

(declare-fun b!7902064 () Bool)

(assert (=> b!7902064 (= e!4664327 (= lt!2683714 call!733234))))

(declare-fun b!7902065 () Bool)

(assert (=> b!7902065 (= e!4664326 (not lt!2683714))))

(declare-fun bm!733229 () Bool)

(assert (=> bm!733229 (= call!733234 (isEmpty!42541 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))))))

(declare-fun b!7902066 () Bool)

(assert (=> b!7902066 (= e!4664325 e!4664323)))

(declare-fun res!3135216 () Bool)

(assert (=> b!7902066 (=> (not res!3135216) (not e!4664323))))

(assert (=> b!7902066 (= res!3135216 (not lt!2683714))))

(declare-fun b!7902067 () Bool)

(assert (=> b!7902067 (= e!4664327 e!4664326)))

(declare-fun c!1450174 () Bool)

(assert (=> b!7902067 (= c!1450174 ((_ is EmptyLang!21289) (regex!8586 (h!80604 rulesArg!141))))))

(declare-fun b!7902068 () Bool)

(declare-fun res!3135221 () Bool)

(assert (=> b!7902068 (=> res!3135221 e!4664325)))

(assert (=> b!7902068 (= res!3135221 e!4664322)))

(declare-fun res!3135218 () Bool)

(assert (=> b!7902068 (=> (not res!3135218) (not e!4664322))))

(assert (=> b!7902068 (= res!3135218 lt!2683714)))

(assert (= (and d!2358519 c!1450176) b!7902058))

(assert (= (and d!2358519 (not c!1450176)) b!7902055))

(assert (= (and d!2358519 c!1450175) b!7902064))

(assert (= (and d!2358519 (not c!1450175)) b!7902067))

(assert (= (and b!7902067 c!1450174) b!7902065))

(assert (= (and b!7902067 (not c!1450174)) b!7902059))

(assert (= (and b!7902059 (not res!3135220)) b!7902068))

(assert (= (and b!7902068 res!3135218) b!7902062))

(assert (= (and b!7902062 res!3135217) b!7902057))

(assert (= (and b!7902057 res!3135219) b!7902061))

(assert (= (and b!7902068 (not res!3135221)) b!7902066))

(assert (= (and b!7902066 res!3135216) b!7902056))

(assert (= (and b!7902056 (not res!3135223)) b!7902060))

(assert (= (and b!7902060 (not res!3135222)) b!7902063))

(assert (= (or b!7902064 b!7902056 b!7902062) bm!733229))

(assert (=> b!7902060 m!8276190))

(declare-fun m!8276794 () Bool)

(assert (=> b!7902060 m!8276794))

(assert (=> b!7902060 m!8276794))

(declare-fun m!8276796 () Bool)

(assert (=> b!7902060 m!8276796))

(assert (=> d!2358519 m!8276190))

(declare-fun m!8276798 () Bool)

(assert (=> d!2358519 m!8276798))

(assert (=> d!2358519 m!8276300))

(assert (=> b!7902055 m!8276190))

(declare-fun m!8276800 () Bool)

(assert (=> b!7902055 m!8276800))

(assert (=> b!7902055 m!8276800))

(declare-fun m!8276802 () Bool)

(assert (=> b!7902055 m!8276802))

(assert (=> b!7902055 m!8276190))

(assert (=> b!7902055 m!8276794))

(assert (=> b!7902055 m!8276802))

(assert (=> b!7902055 m!8276794))

(declare-fun m!8276804 () Bool)

(assert (=> b!7902055 m!8276804))

(assert (=> b!7902061 m!8276190))

(assert (=> b!7902061 m!8276800))

(assert (=> b!7902063 m!8276190))

(assert (=> b!7902063 m!8276800))

(assert (=> b!7902058 m!8276308))

(assert (=> bm!733229 m!8276190))

(assert (=> bm!733229 m!8276798))

(assert (=> b!7902057 m!8276190))

(assert (=> b!7902057 m!8276794))

(assert (=> b!7902057 m!8276794))

(assert (=> b!7902057 m!8276796))

(assert (=> b!7901543 d!2358519))

(declare-fun d!2358523 () Bool)

(assert (=> d!2358523 (= (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426)))) (list!19211 (c!1450017 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))))))

(declare-fun bs!1967985 () Bool)

(assert (= bs!1967985 d!2358523))

(declare-fun m!8276806 () Bool)

(assert (=> bs!1967985 m!8276806))

(assert (=> b!7901543 d!2358523))

(declare-fun d!2358525 () Bool)

(declare-fun lt!2683715 () BalanceConc!30638)

(assert (=> d!2358525 (= (list!19209 lt!2683715) (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426))))))

(assert (=> d!2358525 (= lt!2683715 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426))))) (value!286682 (_1!38400 (get!26633 lt!2683426)))))))

(assert (=> d!2358525 (= (charsOf!5530 (_1!38400 (get!26633 lt!2683426))) lt!2683715)))

(declare-fun b_lambda!289715 () Bool)

(assert (=> (not b_lambda!289715) (not d!2358525)))

(declare-fun t!389262 () Bool)

(declare-fun tb!262823 () Bool)

(assert (=> (and b!7901247 (= (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426)))))) t!389262) tb!262823))

(declare-fun b!7902077 () Bool)

(declare-fun e!4664330 () Bool)

(declare-fun tp!2354116 () Bool)

(assert (=> b!7902077 (= e!4664330 (and (inv!95142 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426))))) (value!286682 (_1!38400 (get!26633 lt!2683426)))))) tp!2354116))))

(declare-fun result!359884 () Bool)

(assert (=> tb!262823 (= result!359884 (and (inv!95143 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426))))) (value!286682 (_1!38400 (get!26633 lt!2683426))))) e!4664330))))

(assert (= tb!262823 b!7902077))

(declare-fun m!8276808 () Bool)

(assert (=> b!7902077 m!8276808))

(declare-fun m!8276810 () Bool)

(assert (=> tb!262823 m!8276810))

(assert (=> d!2358525 t!389262))

(declare-fun b_and!352755 () Bool)

(assert (= b_and!352739 (and (=> t!389262 result!359884) b_and!352755)))

(declare-fun t!389264 () Bool)

(declare-fun tb!262825 () Bool)

(assert (=> (and b!7901561 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426)))))) t!389264) tb!262825))

(declare-fun result!359886 () Bool)

(assert (= result!359886 result!359884))

(assert (=> d!2358525 t!389264))

(declare-fun b_and!352757 () Bool)

(assert (= b_and!352741 (and (=> t!389264 result!359886) b_and!352757)))

(declare-fun m!8276812 () Bool)

(assert (=> d!2358525 m!8276812))

(declare-fun m!8276814 () Bool)

(assert (=> d!2358525 m!8276814))

(assert (=> b!7901543 d!2358525))

(assert (=> b!7901543 d!2358359))

(assert (=> b!7901544 d!2358359))

(declare-fun d!2358527 () Bool)

(declare-fun lt!2683716 () Int)

(assert (=> d!2358527 (>= lt!2683716 0)))

(declare-fun e!4664331 () Int)

(assert (=> d!2358527 (= lt!2683716 e!4664331)))

(declare-fun c!1450177 () Bool)

(assert (=> d!2358527 (= c!1450177 ((_ is Nil!74155) (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426)))))))

(assert (=> d!2358527 (= (size!42965 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426)))) lt!2683716)))

(declare-fun b!7902078 () Bool)

(assert (=> b!7902078 (= e!4664331 0)))

(declare-fun b!7902079 () Bool)

(assert (=> b!7902079 (= e!4664331 (+ 1 (size!42965 (t!389186 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683426)))))))))

(assert (= (and d!2358527 c!1450177) b!7902078))

(assert (= (and d!2358527 (not c!1450177)) b!7902079))

(declare-fun m!8276816 () Bool)

(assert (=> b!7902079 m!8276816))

(assert (=> b!7901544 d!2358527))

(declare-fun d!2358529 () Bool)

(assert (=> d!2358529 true))

(declare-fun order!29823 () Int)

(declare-fun lambda!472436 () Int)

(declare-fun dynLambda!30052 (Int Int) Int)

(assert (=> d!2358529 (< (dynLambda!30049 order!29817 (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))) (dynLambda!30052 order!29823 lambda!472436))))

(declare-fun Forall2!1313 (Int) Bool)

(assert (=> d!2358529 (= (equivClasses!3626 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))) (Forall2!1313 lambda!472436))))

(declare-fun bs!1967986 () Bool)

(assert (= bs!1967986 d!2358529))

(declare-fun m!8276818 () Bool)

(assert (=> bs!1967986 m!8276818))

(assert (=> b!7901285 d!2358529))

(declare-fun d!2358531 () Bool)

(assert (=> d!2358531 (= (inv!95137 (tag!9450 (h!80604 (t!389187 rulesArg!141)))) (= (mod (str.len (value!286681 (tag!9450 (h!80604 (t!389187 rulesArg!141))))) 2) 0))))

(assert (=> b!7901560 d!2358531))

(declare-fun d!2358533 () Bool)

(declare-fun res!3135226 () Bool)

(declare-fun e!4664334 () Bool)

(assert (=> d!2358533 (=> (not res!3135226) (not e!4664334))))

(assert (=> d!2358533 (= res!3135226 (semiInverseModEq!3811 (toChars!11490 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141))))))))

(assert (=> d!2358533 (= (inv!95139 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) e!4664334)))

(declare-fun b!7902084 () Bool)

(assert (=> b!7902084 (= e!4664334 (equivClasses!3626 (toChars!11490 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141))))))))

(assert (= (and d!2358533 res!3135226) b!7902084))

(declare-fun m!8276820 () Bool)

(assert (=> d!2358533 m!8276820))

(declare-fun m!8276822 () Bool)

(assert (=> b!7902084 m!8276822))

(assert (=> b!7901560 d!2358533))

(declare-fun d!2358535 () Bool)

(assert (=> d!2358535 (= (isEmpty!42538 lt!2683413) (not ((_ is Some!17867) lt!2683413)))))

(assert (=> d!2358315 d!2358535))

(assert (=> d!2358315 d!2358259))

(assert (=> d!2358315 d!2358261))

(assert (=> d!2358315 d!2358515))

(declare-fun d!2358537 () Bool)

(declare-fun e!4664336 () Bool)

(assert (=> d!2358537 e!4664336))

(declare-fun res!3135228 () Bool)

(assert (=> d!2358537 (=> (not res!3135228) (not e!4664336))))

(declare-fun lt!2683717 () List!74279)

(assert (=> d!2358537 (= res!3135228 (= (content!15711 lt!2683717) ((_ map or) (content!15711 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))) (content!15711 (_2!38400 (get!26633 lt!2683426))))))))

(declare-fun e!4664335 () List!74279)

(assert (=> d!2358537 (= lt!2683717 e!4664335)))

(declare-fun c!1450178 () Bool)

(assert (=> d!2358537 (= c!1450178 ((_ is Nil!74155) (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))))))

(assert (=> d!2358537 (= (++!18152 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426)))) (_2!38400 (get!26633 lt!2683426))) lt!2683717)))

(declare-fun b!7902087 () Bool)

(declare-fun res!3135227 () Bool)

(assert (=> b!7902087 (=> (not res!3135227) (not e!4664336))))

(assert (=> b!7902087 (= res!3135227 (= (size!42965 lt!2683717) (+ (size!42965 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))) (size!42965 (_2!38400 (get!26633 lt!2683426))))))))

(declare-fun b!7902088 () Bool)

(assert (=> b!7902088 (= e!4664336 (or (not (= (_2!38400 (get!26633 lt!2683426)) Nil!74155)) (= lt!2683717 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426)))))))))

(declare-fun b!7902085 () Bool)

(assert (=> b!7902085 (= e!4664335 (_2!38400 (get!26633 lt!2683426)))))

(declare-fun b!7902086 () Bool)

(assert (=> b!7902086 (= e!4664335 (Cons!74155 (h!80603 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))) (++!18152 (t!389186 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683426))))) (_2!38400 (get!26633 lt!2683426)))))))

(assert (= (and d!2358537 c!1450178) b!7902085))

(assert (= (and d!2358537 (not c!1450178)) b!7902086))

(assert (= (and d!2358537 res!3135228) b!7902087))

(assert (= (and b!7902087 res!3135227) b!7902088))

(declare-fun m!8276824 () Bool)

(assert (=> d!2358537 m!8276824))

(assert (=> d!2358537 m!8276190))

(declare-fun m!8276826 () Bool)

(assert (=> d!2358537 m!8276826))

(declare-fun m!8276828 () Bool)

(assert (=> d!2358537 m!8276828))

(declare-fun m!8276830 () Bool)

(assert (=> b!7902087 m!8276830))

(assert (=> b!7902087 m!8276190))

(declare-fun m!8276832 () Bool)

(assert (=> b!7902087 m!8276832))

(assert (=> b!7902087 m!8276184))

(declare-fun m!8276834 () Bool)

(assert (=> b!7902086 m!8276834))

(assert (=> b!7901545 d!2358537))

(assert (=> b!7901545 d!2358523))

(assert (=> b!7901545 d!2358525))

(assert (=> b!7901545 d!2358359))

(declare-fun d!2358539 () Bool)

(declare-fun e!4664338 () Bool)

(assert (=> d!2358539 e!4664338))

(declare-fun res!3135230 () Bool)

(assert (=> d!2358539 (=> (not res!3135230) (not e!4664338))))

(declare-fun lt!2683718 () List!74279)

(assert (=> d!2358539 (= res!3135230 (= (content!15711 lt!2683718) ((_ map or) (content!15711 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))) (content!15711 (_2!38400 (get!26633 lt!2683413))))))))

(declare-fun e!4664337 () List!74279)

(assert (=> d!2358539 (= lt!2683718 e!4664337)))

(declare-fun c!1450179 () Bool)

(assert (=> d!2358539 (= c!1450179 ((_ is Nil!74155) (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))))))

(assert (=> d!2358539 (= (++!18152 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413)))) (_2!38400 (get!26633 lt!2683413))) lt!2683718)))

(declare-fun b!7902091 () Bool)

(declare-fun res!3135229 () Bool)

(assert (=> b!7902091 (=> (not res!3135229) (not e!4664338))))

(assert (=> b!7902091 (= res!3135229 (= (size!42965 lt!2683718) (+ (size!42965 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))) (size!42965 (_2!38400 (get!26633 lt!2683413))))))))

(declare-fun b!7902092 () Bool)

(assert (=> b!7902092 (= e!4664338 (or (not (= (_2!38400 (get!26633 lt!2683413)) Nil!74155)) (= lt!2683718 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413)))))))))

(declare-fun b!7902089 () Bool)

(assert (=> b!7902089 (= e!4664337 (_2!38400 (get!26633 lt!2683413)))))

(declare-fun b!7902090 () Bool)

(assert (=> b!7902090 (= e!4664337 (Cons!74155 (h!80603 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))) (++!18152 (t!389186 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683413))))) (_2!38400 (get!26633 lt!2683413)))))))

(assert (= (and d!2358539 c!1450179) b!7902089))

(assert (= (and d!2358539 (not c!1450179)) b!7902090))

(assert (= (and d!2358539 res!3135230) b!7902091))

(assert (= (and b!7902091 res!3135229) b!7902092))

(declare-fun m!8276836 () Bool)

(assert (=> d!2358539 m!8276836))

(assert (=> d!2358539 m!8276162))

(declare-fun m!8276838 () Bool)

(assert (=> d!2358539 m!8276838))

(declare-fun m!8276840 () Bool)

(assert (=> d!2358539 m!8276840))

(declare-fun m!8276842 () Bool)

(assert (=> b!7902091 m!8276842))

(assert (=> b!7902091 m!8276162))

(declare-fun m!8276844 () Bool)

(assert (=> b!7902091 m!8276844))

(assert (=> b!7902091 m!8276180))

(declare-fun m!8276846 () Bool)

(assert (=> b!7902090 m!8276846))

(assert (=> b!7901515 d!2358539))

(assert (=> b!7901515 d!2358465))

(assert (=> b!7901515 d!2358467))

(assert (=> b!7901515 d!2358463))

(declare-fun b!7902093 () Bool)

(declare-fun e!4664340 () Option!17868)

(declare-fun lt!2683719 () tuple2!70198)

(assert (=> b!7902093 (= e!4664340 (Some!17867 (tuple2!70195 (Token!15593 (apply!14327 (transformation!8586 (h!80604 (t!389187 rulesArg!141))) (seqFromList!6145 (_1!38402 lt!2683719))) (h!80604 (t!389187 rulesArg!141)) (size!42967 (seqFromList!6145 (_1!38402 lt!2683719))) (_1!38402 lt!2683719)) (_2!38402 lt!2683719))))))

(declare-fun lt!2683720 () Unit!169179)

(assert (=> b!7902093 (= lt!2683720 (longestMatchIsAcceptedByMatchOrIsEmpty!2114 (regex!8586 (h!80604 (t!389187 rulesArg!141))) input!1184))))

(declare-fun res!3135237 () Bool)

(assert (=> b!7902093 (= res!3135237 (isEmpty!42541 (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 (t!389187 rulesArg!141))) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(declare-fun e!4664342 () Bool)

(assert (=> b!7902093 (=> res!3135237 e!4664342)))

(assert (=> b!7902093 e!4664342))

(declare-fun lt!2683723 () Unit!169179)

(assert (=> b!7902093 (= lt!2683723 lt!2683720)))

(declare-fun lt!2683722 () Unit!169179)

(assert (=> b!7902093 (= lt!2683722 (lemmaSemiInverse!2661 (transformation!8586 (h!80604 (t!389187 rulesArg!141))) (seqFromList!6145 (_1!38402 lt!2683719))))))

(declare-fun b!7902094 () Bool)

(declare-fun e!4664341 () Bool)

(declare-fun e!4664339 () Bool)

(assert (=> b!7902094 (= e!4664341 e!4664339)))

(declare-fun res!3135232 () Bool)

(assert (=> b!7902094 (=> (not res!3135232) (not e!4664339))))

(declare-fun lt!2683721 () Option!17868)

(assert (=> b!7902094 (= res!3135232 (matchR!10642 (regex!8586 (h!80604 (t!389187 rulesArg!141))) (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683721))))))))

(declare-fun b!7902095 () Bool)

(assert (=> b!7902095 (= e!4664339 (= (size!42964 (_1!38400 (get!26633 lt!2683721))) (size!42965 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683721))))))))

(declare-fun b!7902096 () Bool)

(declare-fun res!3135235 () Bool)

(assert (=> b!7902096 (=> (not res!3135235) (not e!4664339))))

(assert (=> b!7902096 (= res!3135235 (= (++!18152 (list!19209 (charsOf!5530 (_1!38400 (get!26633 lt!2683721)))) (_2!38400 (get!26633 lt!2683721))) input!1184))))

(declare-fun b!7902098 () Bool)

(assert (=> b!7902098 (= e!4664340 None!17867)))

(declare-fun b!7902099 () Bool)

(declare-fun res!3135236 () Bool)

(assert (=> b!7902099 (=> (not res!3135236) (not e!4664339))))

(assert (=> b!7902099 (= res!3135236 (= (rule!11872 (_1!38400 (get!26633 lt!2683721))) (h!80604 (t!389187 rulesArg!141))))))

(declare-fun b!7902100 () Bool)

(declare-fun res!3135234 () Bool)

(assert (=> b!7902100 (=> (not res!3135234) (not e!4664339))))

(assert (=> b!7902100 (= res!3135234 (< (size!42965 (_2!38400 (get!26633 lt!2683721))) (size!42965 input!1184)))))

(declare-fun b!7902101 () Bool)

(assert (=> b!7902101 (= e!4664342 (matchR!10642 (regex!8586 (h!80604 (t!389187 rulesArg!141))) (_1!38402 (findLongestMatchInner!2151 (regex!8586 (h!80604 (t!389187 rulesArg!141))) Nil!74155 (size!42965 Nil!74155) input!1184 input!1184 (size!42965 input!1184)))))))

(declare-fun b!7902097 () Bool)

(declare-fun res!3135231 () Bool)

(assert (=> b!7902097 (=> (not res!3135231) (not e!4664339))))

(assert (=> b!7902097 (= res!3135231 (= (value!286682 (_1!38400 (get!26633 lt!2683721))) (apply!14327 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683721)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683721)))))))))

(declare-fun d!2358541 () Bool)

(assert (=> d!2358541 e!4664341))

(declare-fun res!3135233 () Bool)

(assert (=> d!2358541 (=> res!3135233 e!4664341)))

(assert (=> d!2358541 (= res!3135233 (isEmpty!42538 lt!2683721))))

(assert (=> d!2358541 (= lt!2683721 e!4664340)))

(declare-fun c!1450180 () Bool)

(assert (=> d!2358541 (= c!1450180 (isEmpty!42541 (_1!38402 lt!2683719)))))

(assert (=> d!2358541 (= lt!2683719 (findLongestMatch!1918 (regex!8586 (h!80604 (t!389187 rulesArg!141))) input!1184))))

(assert (=> d!2358541 (ruleValid!3932 thiss!14377 (h!80604 (t!389187 rulesArg!141)))))

(assert (=> d!2358541 (= (maxPrefixOneRule!3766 thiss!14377 (h!80604 (t!389187 rulesArg!141)) input!1184) lt!2683721)))

(assert (= (and d!2358541 c!1450180) b!7902098))

(assert (= (and d!2358541 (not c!1450180)) b!7902093))

(assert (= (and b!7902093 (not res!3135237)) b!7902101))

(assert (= (and d!2358541 (not res!3135233)) b!7902094))

(assert (= (and b!7902094 res!3135232) b!7902096))

(assert (= (and b!7902096 res!3135235) b!7902100))

(assert (= (and b!7902100 res!3135234) b!7902099))

(assert (= (and b!7902099 res!3135236) b!7902097))

(assert (= (and b!7902097 res!3135231) b!7902095))

(declare-fun m!8276848 () Bool)

(assert (=> b!7902100 m!8276848))

(declare-fun m!8276850 () Bool)

(assert (=> b!7902100 m!8276850))

(assert (=> b!7902100 m!8275942))

(assert (=> b!7902095 m!8276848))

(declare-fun m!8276852 () Bool)

(assert (=> b!7902095 m!8276852))

(assert (=> b!7902096 m!8276848))

(declare-fun m!8276854 () Bool)

(assert (=> b!7902096 m!8276854))

(assert (=> b!7902096 m!8276854))

(declare-fun m!8276856 () Bool)

(assert (=> b!7902096 m!8276856))

(assert (=> b!7902096 m!8276856))

(declare-fun m!8276858 () Bool)

(assert (=> b!7902096 m!8276858))

(assert (=> b!7902094 m!8276848))

(assert (=> b!7902094 m!8276854))

(assert (=> b!7902094 m!8276854))

(assert (=> b!7902094 m!8276856))

(assert (=> b!7902094 m!8276856))

(declare-fun m!8276860 () Bool)

(assert (=> b!7902094 m!8276860))

(declare-fun m!8276862 () Bool)

(assert (=> b!7902093 m!8276862))

(declare-fun m!8276864 () Bool)

(assert (=> b!7902093 m!8276864))

(declare-fun m!8276866 () Bool)

(assert (=> b!7902093 m!8276866))

(declare-fun m!8276868 () Bool)

(assert (=> b!7902093 m!8276868))

(assert (=> b!7902093 m!8276862))

(declare-fun m!8276870 () Bool)

(assert (=> b!7902093 m!8276870))

(assert (=> b!7902093 m!8275942))

(assert (=> b!7902093 m!8276862))

(declare-fun m!8276872 () Bool)

(assert (=> b!7902093 m!8276872))

(assert (=> b!7902093 m!8276862))

(assert (=> b!7902093 m!8276208))

(assert (=> b!7902093 m!8276208))

(assert (=> b!7902093 m!8275942))

(declare-fun m!8276874 () Bool)

(assert (=> b!7902093 m!8276874))

(assert (=> b!7902101 m!8276208))

(assert (=> b!7902101 m!8275942))

(assert (=> b!7902101 m!8276208))

(assert (=> b!7902101 m!8275942))

(assert (=> b!7902101 m!8276874))

(declare-fun m!8276876 () Bool)

(assert (=> b!7902101 m!8276876))

(assert (=> b!7902099 m!8276848))

(declare-fun m!8276878 () Bool)

(assert (=> d!2358541 m!8276878))

(declare-fun m!8276880 () Bool)

(assert (=> d!2358541 m!8276880))

(declare-fun m!8276882 () Bool)

(assert (=> d!2358541 m!8276882))

(assert (=> d!2358541 m!8276754))

(assert (=> b!7902097 m!8276848))

(declare-fun m!8276884 () Bool)

(assert (=> b!7902097 m!8276884))

(assert (=> b!7902097 m!8276884))

(declare-fun m!8276886 () Bool)

(assert (=> b!7902097 m!8276886))

(assert (=> bm!733157 d!2358541))

(declare-fun d!2358543 () Bool)

(declare-fun e!4664344 () Bool)

(assert (=> d!2358543 e!4664344))

(declare-fun res!3135239 () Bool)

(assert (=> d!2358543 (=> (not res!3135239) (not e!4664344))))

(declare-fun lt!2683724 () List!74279)

(assert (=> d!2358543 (= res!3135239 (= (content!15711 lt!2683724) ((_ map or) (content!15711 (t!389186 lt!2683326)) (content!15711 (_2!38400 lt!2683327)))))))

(declare-fun e!4664343 () List!74279)

(assert (=> d!2358543 (= lt!2683724 e!4664343)))

(declare-fun c!1450181 () Bool)

(assert (=> d!2358543 (= c!1450181 ((_ is Nil!74155) (t!389186 lt!2683326)))))

(assert (=> d!2358543 (= (++!18152 (t!389186 lt!2683326) (_2!38400 lt!2683327)) lt!2683724)))

(declare-fun b!7902104 () Bool)

(declare-fun res!3135238 () Bool)

(assert (=> b!7902104 (=> (not res!3135238) (not e!4664344))))

(assert (=> b!7902104 (= res!3135238 (= (size!42965 lt!2683724) (+ (size!42965 (t!389186 lt!2683326)) (size!42965 (_2!38400 lt!2683327)))))))

(declare-fun b!7902105 () Bool)

(assert (=> b!7902105 (= e!4664344 (or (not (= (_2!38400 lt!2683327) Nil!74155)) (= lt!2683724 (t!389186 lt!2683326))))))

(declare-fun b!7902102 () Bool)

(assert (=> b!7902102 (= e!4664343 (_2!38400 lt!2683327))))

(declare-fun b!7902103 () Bool)

(assert (=> b!7902103 (= e!4664343 (Cons!74155 (h!80603 (t!389186 lt!2683326)) (++!18152 (t!389186 (t!389186 lt!2683326)) (_2!38400 lt!2683327))))))

(assert (= (and d!2358543 c!1450181) b!7902102))

(assert (= (and d!2358543 (not c!1450181)) b!7902103))

(assert (= (and d!2358543 res!3135239) b!7902104))

(assert (= (and b!7902104 res!3135238) b!7902105))

(declare-fun m!8276888 () Bool)

(assert (=> d!2358543 m!8276888))

(declare-fun m!8276890 () Bool)

(assert (=> d!2358543 m!8276890))

(assert (=> d!2358543 m!8276122))

(declare-fun m!8276892 () Bool)

(assert (=> b!7902104 m!8276892))

(declare-fun m!8276894 () Bool)

(assert (=> b!7902104 m!8276894))

(assert (=> b!7902104 m!8275940))

(declare-fun m!8276896 () Bool)

(assert (=> b!7902103 m!8276896))

(assert (=> b!7901447 d!2358543))

(declare-fun d!2358545 () Bool)

(declare-fun isBalanced!4473 (Conc!15760) Bool)

(assert (=> d!2358545 (= (inv!95143 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327)))) (isBalanced!4473 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327))))))))

(declare-fun bs!1967987 () Bool)

(assert (= bs!1967987 d!2358545))

(declare-fun m!8276898 () Bool)

(assert (=> bs!1967987 m!8276898))

(assert (=> tb!262751 d!2358545))

(declare-fun d!2358547 () Bool)

(declare-fun lt!2683727 () Bool)

(declare-fun content!15713 (List!74280) (InoxSet Rule!16972))

(assert (=> d!2358547 (= lt!2683727 (select (content!15713 (t!389187 rulesArg!141)) (rule!11872 (_1!38400 (get!26633 lt!2683413)))))))

(declare-fun e!4664350 () Bool)

(assert (=> d!2358547 (= lt!2683727 e!4664350)))

(declare-fun res!3135244 () Bool)

(assert (=> d!2358547 (=> (not res!3135244) (not e!4664350))))

(assert (=> d!2358547 (= res!3135244 ((_ is Cons!74156) (t!389187 rulesArg!141)))))

(assert (=> d!2358547 (= (contains!20886 (t!389187 rulesArg!141) (rule!11872 (_1!38400 (get!26633 lt!2683413)))) lt!2683727)))

(declare-fun b!7902110 () Bool)

(declare-fun e!4664349 () Bool)

(assert (=> b!7902110 (= e!4664350 e!4664349)))

(declare-fun res!3135245 () Bool)

(assert (=> b!7902110 (=> res!3135245 e!4664349)))

(assert (=> b!7902110 (= res!3135245 (= (h!80604 (t!389187 rulesArg!141)) (rule!11872 (_1!38400 (get!26633 lt!2683413)))))))

(declare-fun b!7902111 () Bool)

(assert (=> b!7902111 (= e!4664349 (contains!20886 (t!389187 (t!389187 rulesArg!141)) (rule!11872 (_1!38400 (get!26633 lt!2683413)))))))

(assert (= (and d!2358547 res!3135244) b!7902110))

(assert (= (and b!7902110 (not res!3135245)) b!7902111))

(declare-fun m!8276900 () Bool)

(assert (=> d!2358547 m!8276900))

(declare-fun m!8276902 () Bool)

(assert (=> d!2358547 m!8276902))

(declare-fun m!8276904 () Bool)

(assert (=> b!7902111 m!8276904))

(assert (=> b!7901516 d!2358547))

(assert (=> b!7901516 d!2358463))

(declare-fun d!2358549 () Bool)

(declare-fun lt!2683728 () Int)

(assert (=> d!2358549 (>= lt!2683728 0)))

(declare-fun e!4664351 () Int)

(assert (=> d!2358549 (= lt!2683728 e!4664351)))

(declare-fun c!1450182 () Bool)

(assert (=> d!2358549 (= c!1450182 ((_ is Nil!74155) lt!2683387))))

(assert (=> d!2358549 (= (size!42965 lt!2683387) lt!2683728)))

(declare-fun b!7902112 () Bool)

(assert (=> b!7902112 (= e!4664351 0)))

(declare-fun b!7902113 () Bool)

(assert (=> b!7902113 (= e!4664351 (+ 1 (size!42965 (t!389186 lt!2683387))))))

(assert (= (and d!2358549 c!1450182) b!7902112))

(assert (= (and d!2358549 (not c!1450182)) b!7902113))

(declare-fun m!8276906 () Bool)

(assert (=> b!7902113 m!8276906))

(assert (=> b!7901448 d!2358549))

(declare-fun d!2358551 () Bool)

(declare-fun lt!2683729 () Int)

(assert (=> d!2358551 (>= lt!2683729 0)))

(declare-fun e!4664352 () Int)

(assert (=> d!2358551 (= lt!2683729 e!4664352)))

(declare-fun c!1450183 () Bool)

(assert (=> d!2358551 (= c!1450183 ((_ is Nil!74155) lt!2683326))))

(assert (=> d!2358551 (= (size!42965 lt!2683326) lt!2683729)))

(declare-fun b!7902114 () Bool)

(assert (=> b!7902114 (= e!4664352 0)))

(declare-fun b!7902115 () Bool)

(assert (=> b!7902115 (= e!4664352 (+ 1 (size!42965 (t!389186 lt!2683326))))))

(assert (= (and d!2358551 c!1450183) b!7902114))

(assert (= (and d!2358551 (not c!1450183)) b!7902115))

(assert (=> b!7902115 m!8276894))

(assert (=> b!7901448 d!2358551))

(assert (=> b!7901448 d!2358309))

(declare-fun d!2358553 () Bool)

(declare-fun e!4664355 () Bool)

(assert (=> d!2358553 e!4664355))

(declare-fun res!3135248 () Bool)

(assert (=> d!2358553 (=> (not res!3135248) (not e!4664355))))

(declare-fun lt!2683732 () BalanceConc!30638)

(assert (=> d!2358553 (= res!3135248 (= (list!19209 lt!2683732) (originalCharacters!8827 (_1!38400 lt!2683327))))))

(declare-fun fromList!960 (List!74279) Conc!15760)

(assert (=> d!2358553 (= lt!2683732 (BalanceConc!30639 (fromList!960 (originalCharacters!8827 (_1!38400 lt!2683327)))))))

(assert (=> d!2358553 (= (fromListB!2774 (originalCharacters!8827 (_1!38400 lt!2683327))) lt!2683732)))

(declare-fun b!7902118 () Bool)

(assert (=> b!7902118 (= e!4664355 (isBalanced!4473 (fromList!960 (originalCharacters!8827 (_1!38400 lt!2683327)))))))

(assert (= (and d!2358553 res!3135248) b!7902118))

(declare-fun m!8276908 () Bool)

(assert (=> d!2358553 m!8276908))

(declare-fun m!8276910 () Bool)

(assert (=> d!2358553 m!8276910))

(assert (=> b!7902118 m!8276910))

(assert (=> b!7902118 m!8276910))

(declare-fun m!8276912 () Bool)

(assert (=> b!7902118 m!8276912))

(assert (=> d!2358293 d!2358553))

(assert (=> b!7901517 d!2358463))

(declare-fun d!2358555 () Bool)

(assert (=> d!2358555 (= (apply!14327 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683413))))) (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683413))))))))

(declare-fun b_lambda!289717 () Bool)

(assert (=> (not b_lambda!289717) (not d!2358555)))

(declare-fun t!389266 () Bool)

(declare-fun tb!262827 () Bool)

(assert (=> (and b!7901247 (= (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))) t!389266) tb!262827))

(declare-fun result!359888 () Bool)

(assert (=> tb!262827 (= result!359888 (inv!21 (dynLambda!30043 (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413))))) (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683413)))))))))

(declare-fun m!8276914 () Bool)

(assert (=> tb!262827 m!8276914))

(assert (=> d!2358555 t!389266))

(declare-fun b_and!352759 () Bool)

(assert (= b_and!352743 (and (=> t!389266 result!359888) b_and!352759)))

(declare-fun t!389268 () Bool)

(declare-fun tb!262829 () Bool)

(assert (=> (and b!7901561 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))) t!389268) tb!262829))

(declare-fun result!359890 () Bool)

(assert (= result!359890 result!359888))

(assert (=> d!2358555 t!389268))

(declare-fun b_and!352761 () Bool)

(assert (= b_and!352745 (and (=> t!389268 result!359890) b_and!352761)))

(assert (=> d!2358555 m!8276172))

(declare-fun m!8276916 () Bool)

(assert (=> d!2358555 m!8276916))

(assert (=> b!7901517 d!2358555))

(declare-fun d!2358557 () Bool)

(assert (=> d!2358557 (= (seqFromList!6145 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683413)))) (fromListB!2774 (originalCharacters!8827 (_1!38400 (get!26633 lt!2683413)))))))

(declare-fun bs!1967988 () Bool)

(assert (= bs!1967988 d!2358557))

(declare-fun m!8276918 () Bool)

(assert (=> bs!1967988 m!8276918))

(assert (=> b!7901517 d!2358557))

(declare-fun b!7902128 () Bool)

(declare-fun e!4664361 () List!74279)

(declare-fun e!4664362 () List!74279)

(assert (=> b!7902128 (= e!4664361 e!4664362)))

(declare-fun c!1450190 () Bool)

(assert (=> b!7902128 (= c!1450190 ((_ is Leaf!30021) (c!1450017 (charsOf!5530 (_1!38400 lt!2683327)))))))

(declare-fun b!7902129 () Bool)

(declare-fun list!19213 (IArray!31581) List!74279)

(assert (=> b!7902129 (= e!4664362 (list!19213 (xs!19142 (c!1450017 (charsOf!5530 (_1!38400 lt!2683327))))))))

(declare-fun b!7902127 () Bool)

(assert (=> b!7902127 (= e!4664361 Nil!74155)))

(declare-fun d!2358559 () Bool)

(declare-fun c!1450189 () Bool)

(assert (=> d!2358559 (= c!1450189 ((_ is Empty!15760) (c!1450017 (charsOf!5530 (_1!38400 lt!2683327)))))))

(assert (=> d!2358559 (= (list!19211 (c!1450017 (charsOf!5530 (_1!38400 lt!2683327)))) e!4664361)))

(declare-fun b!7902130 () Bool)

(assert (=> b!7902130 (= e!4664362 (++!18152 (list!19211 (left!56572 (c!1450017 (charsOf!5530 (_1!38400 lt!2683327))))) (list!19211 (right!56902 (c!1450017 (charsOf!5530 (_1!38400 lt!2683327)))))))))

(assert (= (and d!2358559 c!1450189) b!7902127))

(assert (= (and d!2358559 (not c!1450189)) b!7902128))

(assert (= (and b!7902128 c!1450190) b!7902129))

(assert (= (and b!7902128 (not c!1450190)) b!7902130))

(declare-fun m!8276920 () Bool)

(assert (=> b!7902129 m!8276920))

(declare-fun m!8276922 () Bool)

(assert (=> b!7902130 m!8276922))

(declare-fun m!8276924 () Bool)

(assert (=> b!7902130 m!8276924))

(assert (=> b!7902130 m!8276922))

(assert (=> b!7902130 m!8276924))

(declare-fun m!8276926 () Bool)

(assert (=> b!7902130 m!8276926))

(assert (=> d!2358279 d!2358559))

(declare-fun d!2358561 () Bool)

(assert (=> d!2358561 (= (isDefined!14444 lt!2683413) (not (isEmpty!42538 lt!2683413)))))

(declare-fun bs!1967989 () Bool)

(assert (= bs!1967989 d!2358561))

(assert (=> bs!1967989 m!8276170))

(assert (=> b!7901519 d!2358561))

(declare-fun d!2358563 () Bool)

(declare-fun lt!2683733 () Int)

(assert (=> d!2358563 (>= lt!2683733 0)))

(declare-fun e!4664363 () Int)

(assert (=> d!2358563 (= lt!2683733 e!4664363)))

(declare-fun c!1450191 () Bool)

(assert (=> d!2358563 (= c!1450191 ((_ is Nil!74155) (_2!38400 (get!26633 lt!2683413))))))

(assert (=> d!2358563 (= (size!42965 (_2!38400 (get!26633 lt!2683413))) lt!2683733)))

(declare-fun b!7902131 () Bool)

(assert (=> b!7902131 (= e!4664363 0)))

(declare-fun b!7902132 () Bool)

(assert (=> b!7902132 (= e!4664363 (+ 1 (size!42965 (t!389186 (_2!38400 (get!26633 lt!2683413))))))))

(assert (= (and d!2358563 c!1450191) b!7902131))

(assert (= (and d!2358563 (not c!1450191)) b!7902132))

(declare-fun m!8276928 () Bool)

(assert (=> b!7902132 m!8276928))

(assert (=> b!7901518 d!2358563))

(assert (=> b!7901518 d!2358463))

(assert (=> b!7901518 d!2358313))

(declare-fun d!2358565 () Bool)

(declare-fun c!1450194 () Bool)

(assert (=> d!2358565 (= c!1450194 ((_ is Node!15760) (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327))))))))

(declare-fun e!4664368 () Bool)

(assert (=> d!2358565 (= (inv!95142 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327))))) e!4664368)))

(declare-fun b!7902139 () Bool)

(declare-fun inv!95146 (Conc!15760) Bool)

(assert (=> b!7902139 (= e!4664368 (inv!95146 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327))))))))

(declare-fun b!7902140 () Bool)

(declare-fun e!4664369 () Bool)

(assert (=> b!7902140 (= e!4664368 e!4664369)))

(declare-fun res!3135251 () Bool)

(assert (=> b!7902140 (= res!3135251 (not ((_ is Leaf!30021) (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327)))))))))

(assert (=> b!7902140 (=> res!3135251 e!4664369)))

(declare-fun b!7902141 () Bool)

(declare-fun inv!95147 (Conc!15760) Bool)

(assert (=> b!7902141 (= e!4664369 (inv!95147 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327))))))))

(assert (= (and d!2358565 c!1450194) b!7902139))

(assert (= (and d!2358565 (not c!1450194)) b!7902140))

(assert (= (and b!7902140 (not res!3135251)) b!7902141))

(declare-fun m!8276930 () Bool)

(assert (=> b!7902139 m!8276930))

(declare-fun m!8276932 () Bool)

(assert (=> b!7902141 m!8276932))

(assert (=> b!7901374 d!2358565))

(declare-fun bs!1967990 () Bool)

(declare-fun d!2358567 () Bool)

(assert (= bs!1967990 (and d!2358567 d!2358501)))

(declare-fun lambda!472439 () Int)

(assert (=> bs!1967990 (= lambda!472439 lambda!472432)))

(assert (=> d!2358567 true))

(assert (=> d!2358567 (< (dynLambda!30051 order!29821 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141)))) (dynLambda!30050 order!29819 lambda!472439))))

(assert (=> d!2358567 true))

(assert (=> d!2358567 (< (dynLambda!30049 order!29817 (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))) (dynLambda!30050 order!29819 lambda!472439))))

(declare-fun Forall!1842 (Int) Bool)

(assert (=> d!2358567 (= (semiInverseModEq!3811 (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))) (Forall!1842 lambda!472439))))

(declare-fun bs!1967991 () Bool)

(assert (= bs!1967991 d!2358567))

(declare-fun m!8276934 () Bool)

(assert (=> bs!1967991 m!8276934))

(assert (=> d!2358267 d!2358567))

(declare-fun d!2358569 () Bool)

(declare-fun c!1450197 () Bool)

(assert (=> d!2358569 (= c!1450197 ((_ is Nil!74155) lt!2683387))))

(declare-fun e!4664372 () (InoxSet C!42908))

(assert (=> d!2358569 (= (content!15711 lt!2683387) e!4664372)))

(declare-fun b!7902150 () Bool)

(assert (=> b!7902150 (= e!4664372 ((as const (Array C!42908 Bool)) false))))

(declare-fun b!7902151 () Bool)

(assert (=> b!7902151 (= e!4664372 ((_ map or) (store ((as const (Array C!42908 Bool)) false) (h!80603 lt!2683387) true) (content!15711 (t!389186 lt!2683387))))))

(assert (= (and d!2358569 c!1450197) b!7902150))

(assert (= (and d!2358569 (not c!1450197)) b!7902151))

(declare-fun m!8276936 () Bool)

(assert (=> b!7902151 m!8276936))

(declare-fun m!8276938 () Bool)

(assert (=> b!7902151 m!8276938))

(assert (=> d!2358305 d!2358569))

(declare-fun d!2358571 () Bool)

(declare-fun c!1450198 () Bool)

(assert (=> d!2358571 (= c!1450198 ((_ is Nil!74155) lt!2683326))))

(declare-fun e!4664373 () (InoxSet C!42908))

(assert (=> d!2358571 (= (content!15711 lt!2683326) e!4664373)))

(declare-fun b!7902152 () Bool)

(assert (=> b!7902152 (= e!4664373 ((as const (Array C!42908 Bool)) false))))

(declare-fun b!7902153 () Bool)

(assert (=> b!7902153 (= e!4664373 ((_ map or) (store ((as const (Array C!42908 Bool)) false) (h!80603 lt!2683326) true) (content!15711 (t!389186 lt!2683326))))))

(assert (= (and d!2358571 c!1450198) b!7902152))

(assert (= (and d!2358571 (not c!1450198)) b!7902153))

(declare-fun m!8276940 () Bool)

(assert (=> b!7902153 m!8276940))

(assert (=> b!7902153 m!8276890))

(assert (=> d!2358305 d!2358571))

(declare-fun d!2358573 () Bool)

(declare-fun c!1450199 () Bool)

(assert (=> d!2358573 (= c!1450199 ((_ is Nil!74155) (_2!38400 lt!2683327)))))

(declare-fun e!4664374 () (InoxSet C!42908))

(assert (=> d!2358573 (= (content!15711 (_2!38400 lt!2683327)) e!4664374)))

(declare-fun b!7902154 () Bool)

(assert (=> b!7902154 (= e!4664374 ((as const (Array C!42908 Bool)) false))))

(declare-fun b!7902155 () Bool)

(assert (=> b!7902155 (= e!4664374 ((_ map or) (store ((as const (Array C!42908 Bool)) false) (h!80603 (_2!38400 lt!2683327)) true) (content!15711 (t!389186 (_2!38400 lt!2683327)))))))

(assert (= (and d!2358573 c!1450199) b!7902154))

(assert (= (and d!2358573 (not c!1450199)) b!7902155))

(declare-fun m!8276942 () Bool)

(assert (=> b!7902155 m!8276942))

(declare-fun m!8276944 () Bool)

(assert (=> b!7902155 m!8276944))

(assert (=> d!2358305 d!2358573))

(declare-fun d!2358575 () Bool)

(assert (=> d!2358575 (= (list!19209 lt!2683379) (list!19211 (c!1450017 lt!2683379)))))

(declare-fun bs!1967992 () Bool)

(assert (= bs!1967992 d!2358575))

(declare-fun m!8276946 () Bool)

(assert (=> bs!1967992 m!8276946))

(assert (=> d!2358281 d!2358575))

(declare-fun d!2358577 () Bool)

(declare-fun lt!2683734 () Int)

(assert (=> d!2358577 (>= lt!2683734 0)))

(declare-fun e!4664375 () Int)

(assert (=> d!2358577 (= lt!2683734 e!4664375)))

(declare-fun c!1450200 () Bool)

(assert (=> d!2358577 (= c!1450200 ((_ is Nil!74155) (t!389186 input!1184)))))

(assert (=> d!2358577 (= (size!42965 (t!389186 input!1184)) lt!2683734)))

(declare-fun b!7902156 () Bool)

(assert (=> b!7902156 (= e!4664375 0)))

(declare-fun b!7902157 () Bool)

(assert (=> b!7902157 (= e!4664375 (+ 1 (size!42965 (t!389186 (t!389186 input!1184)))))))

(assert (= (and d!2358577 c!1450200) b!7902156))

(assert (= (and d!2358577 (not c!1450200)) b!7902157))

(declare-fun m!8276948 () Bool)

(assert (=> b!7902157 m!8276948))

(assert (=> b!7901461 d!2358577))

(declare-fun b!7902158 () Bool)

(declare-fun e!4664376 () Bool)

(assert (=> b!7902158 (= e!4664376 tp_is_empty!52953)))

(declare-fun b!7902161 () Bool)

(declare-fun tp!2354120 () Bool)

(declare-fun tp!2354117 () Bool)

(assert (=> b!7902161 (= e!4664376 (and tp!2354120 tp!2354117))))

(declare-fun b!7902160 () Bool)

(declare-fun tp!2354118 () Bool)

(assert (=> b!7902160 (= e!4664376 tp!2354118)))

(declare-fun b!7902159 () Bool)

(declare-fun tp!2354119 () Bool)

(declare-fun tp!2354121 () Bool)

(assert (=> b!7902159 (= e!4664376 (and tp!2354119 tp!2354121))))

(assert (=> b!7901575 (= tp!2354062 e!4664376)))

(assert (= (and b!7901575 ((_ is ElementMatch!21289) (regOne!43091 (regex!8586 (h!80604 rulesArg!141))))) b!7902158))

(assert (= (and b!7901575 ((_ is Concat!30192) (regOne!43091 (regex!8586 (h!80604 rulesArg!141))))) b!7902159))

(assert (= (and b!7901575 ((_ is Star!21289) (regOne!43091 (regex!8586 (h!80604 rulesArg!141))))) b!7902160))

(assert (= (and b!7901575 ((_ is Union!21289) (regOne!43091 (regex!8586 (h!80604 rulesArg!141))))) b!7902161))

(declare-fun b!7902162 () Bool)

(declare-fun e!4664377 () Bool)

(assert (=> b!7902162 (= e!4664377 tp_is_empty!52953)))

(declare-fun b!7902165 () Bool)

(declare-fun tp!2354125 () Bool)

(declare-fun tp!2354122 () Bool)

(assert (=> b!7902165 (= e!4664377 (and tp!2354125 tp!2354122))))

(declare-fun b!7902164 () Bool)

(declare-fun tp!2354123 () Bool)

(assert (=> b!7902164 (= e!4664377 tp!2354123)))

(declare-fun b!7902163 () Bool)

(declare-fun tp!2354124 () Bool)

(declare-fun tp!2354126 () Bool)

(assert (=> b!7902163 (= e!4664377 (and tp!2354124 tp!2354126))))

(assert (=> b!7901575 (= tp!2354059 e!4664377)))

(assert (= (and b!7901575 ((_ is ElementMatch!21289) (regTwo!43091 (regex!8586 (h!80604 rulesArg!141))))) b!7902162))

(assert (= (and b!7901575 ((_ is Concat!30192) (regTwo!43091 (regex!8586 (h!80604 rulesArg!141))))) b!7902163))

(assert (= (and b!7901575 ((_ is Star!21289) (regTwo!43091 (regex!8586 (h!80604 rulesArg!141))))) b!7902164))

(assert (= (and b!7901575 ((_ is Union!21289) (regTwo!43091 (regex!8586 (h!80604 rulesArg!141))))) b!7902165))

(declare-fun tp!2354134 () Bool)

(declare-fun b!7902174 () Bool)

(declare-fun e!4664382 () Bool)

(declare-fun tp!2354135 () Bool)

(assert (=> b!7902174 (= e!4664382 (and (inv!95142 (left!56572 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327)))))) tp!2354134 (inv!95142 (right!56902 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327)))))) tp!2354135))))

(declare-fun b!7902176 () Bool)

(declare-fun e!4664383 () Bool)

(declare-fun tp!2354133 () Bool)

(assert (=> b!7902176 (= e!4664383 tp!2354133)))

(declare-fun b!7902175 () Bool)

(declare-fun inv!95149 (IArray!31581) Bool)

(assert (=> b!7902175 (= e!4664382 (and (inv!95149 (xs!19142 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327)))))) e!4664383))))

(assert (=> b!7901374 (= tp!2354003 (and (inv!95142 (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327))))) e!4664382))))

(assert (= (and b!7901374 ((_ is Node!15760) (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327)))))) b!7902174))

(assert (= b!7902175 b!7902176))

(assert (= (and b!7901374 ((_ is Leaf!30021) (c!1450017 (dynLambda!30042 (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))) (value!286682 (_1!38400 lt!2683327)))))) b!7902175))

(declare-fun m!8276950 () Bool)

(assert (=> b!7902174 m!8276950))

(declare-fun m!8276952 () Bool)

(assert (=> b!7902174 m!8276952))

(declare-fun m!8276954 () Bool)

(assert (=> b!7902175 m!8276954))

(assert (=> b!7901374 m!8276070))

(declare-fun b!7902179 () Bool)

(declare-fun b_free!134735 () Bool)

(declare-fun b_next!135525 () Bool)

(assert (=> b!7902179 (= b_free!134735 (not b_next!135525))))

(declare-fun tb!262831 () Bool)

(declare-fun t!389271 () Bool)

(assert (=> (and b!7902179 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426)))))) t!389271) tb!262831))

(declare-fun result!359894 () Bool)

(assert (= result!359894 result!359830))

(assert (=> d!2358361 t!389271))

(declare-fun t!389273 () Bool)

(declare-fun tb!262833 () Bool)

(assert (=> (and b!7902179 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141)))) t!389273) tb!262833))

(declare-fun result!359896 () Bool)

(assert (= result!359896 result!359854))

(assert (=> d!2358501 t!389273))

(declare-fun t!389275 () Bool)

(declare-fun tb!262835 () Bool)

(assert (=> (and b!7902179 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327))))) t!389275) tb!262835))

(declare-fun result!359898 () Bool)

(assert (= result!359898 result!359794))

(assert (=> d!2358291 t!389275))

(declare-fun tb!262837 () Bool)

(declare-fun t!389277 () Bool)

(assert (=> (and b!7902179 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))) t!389277) tb!262837))

(declare-fun result!359900 () Bool)

(assert (= result!359900 result!359888))

(assert (=> d!2358555 t!389277))

(assert (=> d!2358493 t!389273))

(declare-fun tp!2354137 () Bool)

(declare-fun b_and!352763 () Bool)

(assert (=> b!7902179 (= tp!2354137 (and (=> t!389273 result!359896) (=> t!389271 result!359894) (=> t!389275 result!359898) (=> t!389277 result!359900) b_and!352763))))

(declare-fun b_free!134737 () Bool)

(declare-fun b_next!135527 () Bool)

(assert (=> b!7902179 (= b_free!134737 (not b_next!135527))))

(declare-fun t!389279 () Bool)

(declare-fun tb!262839 () Bool)

(assert (=> (and b!7902179 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327))))) t!389279) tb!262839))

(declare-fun result!359902 () Bool)

(assert (= result!359902 result!359790))

(assert (=> d!2358281 t!389279))

(declare-fun t!389281 () Bool)

(declare-fun tb!262841 () Bool)

(assert (=> (and b!7902179 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683413)))))) t!389281) tb!262841))

(declare-fun result!359904 () Bool)

(assert (= result!359904 result!359850))

(assert (=> d!2358467 t!389281))

(declare-fun t!389283 () Bool)

(declare-fun tb!262843 () Bool)

(assert (=> (and b!7902179 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toChars!11490 (transformation!8586 (h!80604 rulesArg!141)))) t!389283) tb!262843))

(declare-fun result!359906 () Bool)

(assert (= result!359906 result!359858))

(assert (=> d!2358501 t!389283))

(declare-fun tb!262845 () Bool)

(declare-fun t!389285 () Bool)

(assert (=> (and b!7902179 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 (get!26633 lt!2683426)))))) t!389285) tb!262845))

(declare-fun result!359908 () Bool)

(assert (= result!359908 result!359884))

(assert (=> d!2358525 t!389285))

(declare-fun tp!2354139 () Bool)

(declare-fun b_and!352765 () Bool)

(assert (=> b!7902179 (= tp!2354139 (and (=> t!389279 result!359902) (=> t!389281 result!359904) (=> t!389283 result!359906) (=> t!389285 result!359908) b_and!352765))))

(declare-fun e!4664386 () Bool)

(assert (=> b!7902179 (= e!4664386 (and tp!2354137 tp!2354139))))

(declare-fun e!4664387 () Bool)

(declare-fun tp!2354138 () Bool)

(declare-fun b!7902178 () Bool)

(assert (=> b!7902178 (= e!4664387 (and tp!2354138 (inv!95137 (tag!9450 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (inv!95139 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) e!4664386))))

(declare-fun b!7902177 () Bool)

(declare-fun e!4664385 () Bool)

(declare-fun tp!2354136 () Bool)

(assert (=> b!7902177 (= e!4664385 (and e!4664387 tp!2354136))))

(assert (=> b!7901559 (= tp!2354045 e!4664385)))

(assert (= b!7902178 b!7902179))

(assert (= b!7902177 b!7902178))

(assert (= (and b!7901559 ((_ is Cons!74156) (t!389187 (t!389187 rulesArg!141)))) b!7902177))

(declare-fun m!8276956 () Bool)

(assert (=> b!7902178 m!8276956))

(declare-fun m!8276958 () Bool)

(assert (=> b!7902178 m!8276958))

(declare-fun b!7902180 () Bool)

(declare-fun e!4664388 () Bool)

(assert (=> b!7902180 (= e!4664388 tp_is_empty!52953)))

(declare-fun b!7902183 () Bool)

(declare-fun tp!2354143 () Bool)

(declare-fun tp!2354140 () Bool)

(assert (=> b!7902183 (= e!4664388 (and tp!2354143 tp!2354140))))

(declare-fun b!7902182 () Bool)

(declare-fun tp!2354141 () Bool)

(assert (=> b!7902182 (= e!4664388 tp!2354141)))

(declare-fun b!7902181 () Bool)

(declare-fun tp!2354142 () Bool)

(declare-fun tp!2354144 () Bool)

(assert (=> b!7902181 (= e!4664388 (and tp!2354142 tp!2354144))))

(assert (=> b!7901573 (= tp!2354061 e!4664388)))

(assert (= (and b!7901573 ((_ is ElementMatch!21289) (regOne!43090 (regex!8586 (h!80604 rulesArg!141))))) b!7902180))

(assert (= (and b!7901573 ((_ is Concat!30192) (regOne!43090 (regex!8586 (h!80604 rulesArg!141))))) b!7902181))

(assert (= (and b!7901573 ((_ is Star!21289) (regOne!43090 (regex!8586 (h!80604 rulesArg!141))))) b!7902182))

(assert (= (and b!7901573 ((_ is Union!21289) (regOne!43090 (regex!8586 (h!80604 rulesArg!141))))) b!7902183))

(declare-fun b!7902184 () Bool)

(declare-fun e!4664389 () Bool)

(assert (=> b!7902184 (= e!4664389 tp_is_empty!52953)))

(declare-fun b!7902187 () Bool)

(declare-fun tp!2354148 () Bool)

(declare-fun tp!2354145 () Bool)

(assert (=> b!7902187 (= e!4664389 (and tp!2354148 tp!2354145))))

(declare-fun b!7902186 () Bool)

(declare-fun tp!2354146 () Bool)

(assert (=> b!7902186 (= e!4664389 tp!2354146)))

(declare-fun b!7902185 () Bool)

(declare-fun tp!2354147 () Bool)

(declare-fun tp!2354149 () Bool)

(assert (=> b!7902185 (= e!4664389 (and tp!2354147 tp!2354149))))

(assert (=> b!7901573 (= tp!2354063 e!4664389)))

(assert (= (and b!7901573 ((_ is ElementMatch!21289) (regTwo!43090 (regex!8586 (h!80604 rulesArg!141))))) b!7902184))

(assert (= (and b!7901573 ((_ is Concat!30192) (regTwo!43090 (regex!8586 (h!80604 rulesArg!141))))) b!7902185))

(assert (= (and b!7901573 ((_ is Star!21289) (regTwo!43090 (regex!8586 (h!80604 rulesArg!141))))) b!7902186))

(assert (= (and b!7901573 ((_ is Union!21289) (regTwo!43090 (regex!8586 (h!80604 rulesArg!141))))) b!7902187))

(declare-fun b!7902188 () Bool)

(declare-fun e!4664390 () Bool)

(assert (=> b!7902188 (= e!4664390 tp_is_empty!52953)))

(declare-fun b!7902191 () Bool)

(declare-fun tp!2354153 () Bool)

(declare-fun tp!2354150 () Bool)

(assert (=> b!7902191 (= e!4664390 (and tp!2354153 tp!2354150))))

(declare-fun b!7902190 () Bool)

(declare-fun tp!2354151 () Bool)

(assert (=> b!7902190 (= e!4664390 tp!2354151)))

(declare-fun b!7902189 () Bool)

(declare-fun tp!2354152 () Bool)

(declare-fun tp!2354154 () Bool)

(assert (=> b!7902189 (= e!4664390 (and tp!2354152 tp!2354154))))

(assert (=> b!7901560 (= tp!2354047 e!4664390)))

(assert (= (and b!7901560 ((_ is ElementMatch!21289) (regex!8586 (h!80604 (t!389187 rulesArg!141))))) b!7902188))

(assert (= (and b!7901560 ((_ is Concat!30192) (regex!8586 (h!80604 (t!389187 rulesArg!141))))) b!7902189))

(assert (= (and b!7901560 ((_ is Star!21289) (regex!8586 (h!80604 (t!389187 rulesArg!141))))) b!7902190))

(assert (= (and b!7901560 ((_ is Union!21289) (regex!8586 (h!80604 (t!389187 rulesArg!141))))) b!7902191))

(declare-fun b!7902192 () Bool)

(declare-fun e!4664391 () Bool)

(assert (=> b!7902192 (= e!4664391 tp_is_empty!52953)))

(declare-fun b!7902195 () Bool)

(declare-fun tp!2354158 () Bool)

(declare-fun tp!2354155 () Bool)

(assert (=> b!7902195 (= e!4664391 (and tp!2354158 tp!2354155))))

(declare-fun b!7902194 () Bool)

(declare-fun tp!2354156 () Bool)

(assert (=> b!7902194 (= e!4664391 tp!2354156)))

(declare-fun b!7902193 () Bool)

(declare-fun tp!2354157 () Bool)

(declare-fun tp!2354159 () Bool)

(assert (=> b!7902193 (= e!4664391 (and tp!2354157 tp!2354159))))

(assert (=> b!7901574 (= tp!2354060 e!4664391)))

(assert (= (and b!7901574 ((_ is ElementMatch!21289) (reg!21618 (regex!8586 (h!80604 rulesArg!141))))) b!7902192))

(assert (= (and b!7901574 ((_ is Concat!30192) (reg!21618 (regex!8586 (h!80604 rulesArg!141))))) b!7902193))

(assert (= (and b!7901574 ((_ is Star!21289) (reg!21618 (regex!8586 (h!80604 rulesArg!141))))) b!7902194))

(assert (= (and b!7901574 ((_ is Union!21289) (reg!21618 (regex!8586 (h!80604 rulesArg!141))))) b!7902195))

(declare-fun b!7902196 () Bool)

(declare-fun e!4664392 () Bool)

(declare-fun tp!2354160 () Bool)

(assert (=> b!7902196 (= e!4664392 (and tp_is_empty!52953 tp!2354160))))

(assert (=> b!7901580 (= tp!2354066 e!4664392)))

(assert (= (and b!7901580 ((_ is Cons!74155) (t!389186 (t!389186 input!1184)))) b!7902196))

(declare-fun b_lambda!289719 () Bool)

(assert (= b_lambda!289695 (or (and b!7901247 b_free!134721) (and b!7901561 b_free!134729 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))))) (and b!7902179 b_free!134737 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))))) b_lambda!289719)))

(declare-fun b_lambda!289721 () Bool)

(assert (= b_lambda!289693 (or (and b!7901247 b_free!134719) (and b!7901561 b_free!134727 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))))) (and b!7902179 b_free!134735 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))))) b_lambda!289721)))

(declare-fun b_lambda!289723 () Bool)

(assert (= b_lambda!289669 (or (and b!7901247 b_free!134719 (= (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))))) (and b!7901561 b_free!134727 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))))) (and b!7902179 b_free!134735 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toValue!11631 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))))) b_lambda!289723)))

(declare-fun b_lambda!289725 () Bool)

(assert (= b_lambda!289679 (or d!2358269 b_lambda!289725)))

(declare-fun bs!1967993 () Bool)

(declare-fun d!2358579 () Bool)

(assert (= bs!1967993 (and d!2358579 d!2358269)))

(assert (=> bs!1967993 (= (dynLambda!30047 lambda!472419 (h!80604 rulesArg!141)) (ruleValid!3932 thiss!14377 (h!80604 rulesArg!141)))))

(assert (=> bs!1967993 m!8276064))

(assert (=> b!7901637 d!2358579))

(declare-fun b_lambda!289727 () Bool)

(assert (= b_lambda!289697 (or (and b!7901247 b_free!134719) (and b!7901561 b_free!134727 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))))) (and b!7902179 b_free!134735 (= (toValue!11631 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toValue!11631 (transformation!8586 (h!80604 rulesArg!141))))) b_lambda!289727)))

(declare-fun b_lambda!289729 () Bool)

(assert (= b_lambda!289667 (or (and b!7901247 b_free!134721 (= (toChars!11490 (transformation!8586 (h!80604 rulesArg!141))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))))) (and b!7901561 b_free!134729 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 rulesArg!141)))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))))) (and b!7902179 b_free!134737 (= (toChars!11490 (transformation!8586 (h!80604 (t!389187 (t!389187 rulesArg!141))))) (toChars!11490 (transformation!8586 (rule!11872 (_1!38400 lt!2683327)))))) b_lambda!289729)))

(check-sat (not b!7901888) (not b!7902155) (not b!7902023) (not b!7901887) (not d!2358501) (not d!2358515) (not b!7902157) (not bm!733220) (not b_next!135517) (not b_next!135525) (not b_lambda!289691) (not b!7902097) (not d!2358519) (not b!7901933) (not b!7901672) (not bs!1967993) (not bm!733217) (not b!7902020) (not tb!262795) (not b!7902103) (not b_lambda!289721) (not b!7902195) (not b!7902182) (not bm!733219) (not b_next!135519) (not b!7902024) (not b!7902164) (not b!7902181) (not b!7901830) (not d!2358523) (not b!7902194) (not b!7902018) (not b!7902011) (not b!7902161) (not b!7902178) (not b!7901885) (not b!7902057) (not b!7902189) (not b!7902113) (not b!7902006) (not d!2358567) (not b!7902077) (not b!7902183) (not d!2358455) (not b!7901972) (not b!7902196) (not b!7902185) (not b!7902063) (not b!7902061) (not b!7902026) (not b!7902010) (not d!2358377) (not d!2358379) (not bm!733172) b_and!352761 (not b!7901674) (not b_lambda!289729) (not b_next!135511) (not b!7902100) (not b!7902186) (not d!2358575) (not b!7902174) (not d!2358421) (not tb!262823) (not bm!733213) (not b!7901669) (not b!7902190) (not d!2358547) (not b!7901622) (not b!7902175) (not bm!733166) (not b!7902193) (not bm!733214) (not b!7901799) (not bm!733228) (not b!7901893) (not b!7902021) (not b!7902139) (not b_lambda!289727) b_and!352755 (not b!7902091) (not b!7902111) (not d!2358381) (not b!7902165) (not b!7902177) tp_is_empty!52953 (not b!7901891) (not d!2358537) (not d!2358449) (not tb!262791) (not bm!733169) (not b!7901638) (not tb!262827) b_and!352759 (not b!7902090) (not b!7902019) (not b_lambda!289719) (not bm!733165) (not b!7902060) (not b!7902012) (not b!7902017) (not d!2358363) (not b_lambda!289717) (not d!2358543) (not b!7902118) (not b_next!135527) (not b!7902016) (not b!7902093) (not bm!733218) (not bm!733229) (not tb!262799) (not b_next!135509) (not bm!733215) (not b!7902141) (not d!2358557) (not b!7902099) (not b!7901640) (not b_lambda!289715) (not b!7902187) (not d!2358533) (not b!7901936) (not b!7902104) (not b!7901790) (not bm!733225) (not b!7901791) (not d!2358477) (not d!2358553) (not d!2358517) (not b!7902159) (not b!7901675) (not tb!262771) (not b!7902022) (not d!2358541) (not b!7902115) b_and!352763 (not b!7902087) (not b!7902151) (not b!7901890) (not b!7902079) (not b!7902101) (not b!7901907) (not d!2358525) (not b!7902086) b_and!352765 (not d!2358529) (not d!2358539) (not b_lambda!289677) (not b!7901935) (not b!7902130) (not bm!733168) (not d!2358367) (not b!7902163) (not b!7902095) (not b_lambda!289725) (not b!7901797) (not b!7901614) (not d!2358561) (not b!7902058) b_and!352757 (not b!7902153) (not b!7901631) (not d!2358545) (not b!7902055) (not b!7902084) (not b!7902096) (not b!7901374) (not b!7902132) (not b!7902129) (not b!7901671) (not d!2358467) (not b!7901883) (not b!7902160) (not d!2358497) (not d!2358475) (not b!7902191) (not d!2358465) (not b!7901677) (not b!7902094) (not b_lambda!289723) (not b!7902176) (not bm!733216))
(check-sat (not b_next!135519) b_and!352761 (not b_next!135511) b_and!352755 b_and!352759 (not b_next!135527) (not b_next!135509) b_and!352763 b_and!352765 b_and!352757 (not b_next!135517) (not b_next!135525))
