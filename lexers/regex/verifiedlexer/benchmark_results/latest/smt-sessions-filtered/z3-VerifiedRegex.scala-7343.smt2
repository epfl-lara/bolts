; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390318 () Bool)

(assert start!390318)

(declare-fun b!4117874 () Bool)

(declare-fun b_free!116243 () Bool)

(declare-fun b_next!116947 () Bool)

(assert (=> b!4117874 (= b_free!116243 (not b_next!116947))))

(declare-fun tp!1254730 () Bool)

(declare-fun b_and!318325 () Bool)

(assert (=> b!4117874 (= tp!1254730 b_and!318325)))

(declare-fun b_free!116245 () Bool)

(declare-fun b_next!116949 () Bool)

(assert (=> b!4117874 (= b_free!116245 (not b_next!116949))))

(declare-fun tp!1254733 () Bool)

(declare-fun b_and!318327 () Bool)

(assert (=> b!4117874 (= tp!1254733 b_and!318327)))

(declare-fun b!4117859 () Bool)

(declare-fun b_free!116247 () Bool)

(declare-fun b_next!116951 () Bool)

(assert (=> b!4117859 (= b_free!116247 (not b_next!116951))))

(declare-fun tp!1254740 () Bool)

(declare-fun b_and!318329 () Bool)

(assert (=> b!4117859 (= tp!1254740 b_and!318329)))

(declare-fun b_free!116249 () Bool)

(declare-fun b_next!116953 () Bool)

(assert (=> b!4117859 (= b_free!116249 (not b_next!116953))))

(declare-fun tp!1254731 () Bool)

(declare-fun b_and!318331 () Bool)

(assert (=> b!4117859 (= tp!1254731 b_and!318331)))

(declare-fun b!4117858 () Bool)

(declare-fun b_free!116251 () Bool)

(declare-fun b_next!116955 () Bool)

(assert (=> b!4117858 (= b_free!116251 (not b_next!116955))))

(declare-fun tp!1254735 () Bool)

(declare-fun b_and!318333 () Bool)

(assert (=> b!4117858 (= tp!1254735 b_and!318333)))

(declare-fun b_free!116253 () Bool)

(declare-fun b_next!116957 () Bool)

(assert (=> b!4117858 (= b_free!116253 (not b_next!116957))))

(declare-fun tp!1254739 () Bool)

(declare-fun b_and!318335 () Bool)

(assert (=> b!4117858 (= tp!1254739 b_and!318335)))

(declare-fun b!4117855 () Bool)

(declare-fun e!2555097 () Bool)

(declare-fun tp_is_empty!21249 () Bool)

(declare-fun tp!1254732 () Bool)

(assert (=> b!4117855 (= e!2555097 (and tp_is_empty!21249 tp!1254732))))

(declare-fun b!4117856 () Bool)

(declare-fun res!1681955 () Bool)

(declare-fun e!2555091 () Bool)

(assert (=> b!4117856 (=> (not res!1681955) (not e!2555091))))

(declare-datatypes ((List!44615 0))(
  ( (Nil!44491) (Cons!44491 (h!49911 (_ BitVec 16)) (t!340518 List!44615)) )
))
(declare-datatypes ((TokenValue!7488 0))(
  ( (FloatLiteralValue!14976 (text!52861 List!44615)) (TokenValueExt!7487 (__x!27193 Int)) (Broken!37440 (value!227381 List!44615)) (Object!7611) (End!7488) (Def!7488) (Underscore!7488) (Match!7488) (Else!7488) (Error!7488) (Case!7488) (If!7488) (Extends!7488) (Abstract!7488) (Class!7488) (Val!7488) (DelimiterValue!14976 (del!7548 List!44615)) (KeywordValue!7494 (value!227382 List!44615)) (CommentValue!14976 (value!227383 List!44615)) (WhitespaceValue!14976 (value!227384 List!44615)) (IndentationValue!7488 (value!227385 List!44615)) (String!51189) (Int32!7488) (Broken!37441 (value!227386 List!44615)) (Boolean!7489) (Unit!63850) (OperatorValue!7491 (op!7548 List!44615)) (IdentifierValue!14976 (value!227387 List!44615)) (IdentifierValue!14977 (value!227388 List!44615)) (WhitespaceValue!14977 (value!227389 List!44615)) (True!14976) (False!14976) (Broken!37442 (value!227390 List!44615)) (Broken!37443 (value!227391 List!44615)) (True!14977) (RightBrace!7488) (RightBracket!7488) (Colon!7488) (Null!7488) (Comma!7488) (LeftBracket!7488) (False!14977) (LeftBrace!7488) (ImaginaryLiteralValue!7488 (text!52862 List!44615)) (StringLiteralValue!22464 (value!227392 List!44615)) (EOFValue!7488 (value!227393 List!44615)) (IdentValue!7488 (value!227394 List!44615)) (DelimiterValue!14977 (value!227395 List!44615)) (DedentValue!7488 (value!227396 List!44615)) (NewLineValue!7488 (value!227397 List!44615)) (IntegerValue!22464 (value!227398 (_ BitVec 32)) (text!52863 List!44615)) (IntegerValue!22465 (value!227399 Int) (text!52864 List!44615)) (Times!7488) (Or!7488) (Equal!7488) (Minus!7488) (Broken!37444 (value!227400 List!44615)) (And!7488) (Div!7488) (LessEqual!7488) (Mod!7488) (Concat!19651) (Not!7488) (Plus!7488) (SpaceValue!7488 (value!227401 List!44615)) (IntegerValue!22466 (value!227402 Int) (text!52865 List!44615)) (StringLiteralValue!22465 (text!52866 List!44615)) (FloatLiteralValue!14977 (text!52867 List!44615)) (BytesLiteralValue!7488 (value!227403 List!44615)) (CommentValue!14977 (value!227404 List!44615)) (StringLiteralValue!22466 (value!227405 List!44615)) (ErrorTokenValue!7488 (msg!7549 List!44615)) )
))
(declare-datatypes ((C!24512 0))(
  ( (C!24513 (val!14366 Int)) )
))
(declare-datatypes ((List!44616 0))(
  ( (Nil!44492) (Cons!44492 (h!49912 C!24512) (t!340519 List!44616)) )
))
(declare-datatypes ((IArray!26943 0))(
  ( (IArray!26944 (innerList!13529 List!44616)) )
))
(declare-datatypes ((Conc!13469 0))(
  ( (Node!13469 (left!33332 Conc!13469) (right!33662 Conc!13469) (csize!27168 Int) (cheight!13680 Int)) (Leaf!20813 (xs!16775 IArray!26943) (csize!27169 Int)) (Empty!13469) )
))
(declare-datatypes ((BalanceConc!26532 0))(
  ( (BalanceConc!26533 (c!707284 Conc!13469)) )
))
(declare-datatypes ((TokenValueInjection!14404 0))(
  ( (TokenValueInjection!14405 (toValue!9910 Int) (toChars!9769 Int)) )
))
(declare-datatypes ((Regex!12163 0))(
  ( (ElementMatch!12163 (c!707285 C!24512)) (Concat!19652 (regOne!24838 Regex!12163) (regTwo!24838 Regex!12163)) (EmptyExpr!12163) (Star!12163 (reg!12492 Regex!12163)) (EmptyLang!12163) (Union!12163 (regOne!24839 Regex!12163) (regTwo!24839 Regex!12163)) )
))
(declare-datatypes ((String!51190 0))(
  ( (String!51191 (value!227406 String)) )
))
(declare-datatypes ((Rule!14316 0))(
  ( (Rule!14317 (regex!7258 Regex!12163) (tag!8118 String!51190) (isSeparator!7258 Bool) (transformation!7258 TokenValueInjection!14404)) )
))
(declare-datatypes ((List!44617 0))(
  ( (Nil!44493) (Cons!44493 (h!49913 Rule!14316) (t!340520 List!44617)) )
))
(declare-fun rules!3756 () List!44617)

(declare-fun r!4008 () Rule!14316)

(declare-fun contains!8930 (List!44617 Rule!14316) Bool)

(assert (=> b!4117856 (= res!1681955 (contains!8930 rules!3756 r!4008))))

(declare-fun b!4117857 () Bool)

(declare-fun res!1681954 () Bool)

(assert (=> b!4117857 (=> (not res!1681954) (not e!2555091))))

(declare-fun p!2912 () List!44616)

(declare-fun isEmpty!26455 (List!44616) Bool)

(assert (=> b!4117857 (= res!1681954 (not (isEmpty!26455 p!2912)))))

(declare-fun e!2555089 () Bool)

(assert (=> b!4117858 (= e!2555089 (and tp!1254735 tp!1254739))))

(declare-fun e!2555098 () Bool)

(assert (=> b!4117859 (= e!2555098 (and tp!1254740 tp!1254731))))

(declare-fun b!4117860 () Bool)

(declare-fun res!1681956 () Bool)

(assert (=> b!4117860 (=> (not res!1681956) (not e!2555091))))

(declare-fun isEmpty!26456 (List!44617) Bool)

(assert (=> b!4117860 (= res!1681956 (not (isEmpty!26456 rules!3756)))))

(declare-fun b!4117861 () Bool)

(declare-fun res!1681952 () Bool)

(assert (=> b!4117861 (=> (not res!1681952) (not e!2555091))))

(declare-datatypes ((LexerInterface!6847 0))(
  ( (LexerInterfaceExt!6844 (__x!27194 Int)) (Lexer!6845) )
))
(declare-fun thiss!25645 () LexerInterface!6847)

(declare-fun rulesInvariant!6144 (LexerInterface!6847 List!44617) Bool)

(assert (=> b!4117861 (= res!1681952 (rulesInvariant!6144 thiss!25645 rules!3756))))

(declare-fun tp!1254737 () Bool)

(declare-fun e!2555090 () Bool)

(declare-fun b!4117862 () Bool)

(declare-fun inv!59078 (String!51190) Bool)

(declare-fun inv!59080 (TokenValueInjection!14404) Bool)

(assert (=> b!4117862 (= e!2555090 (and tp!1254737 (inv!59078 (tag!8118 (h!49913 rules!3756))) (inv!59080 (transformation!7258 (h!49913 rules!3756))) e!2555089))))

(declare-fun b!4117863 () Bool)

(declare-fun e!2555092 () Bool)

(assert (=> b!4117863 (= e!2555091 e!2555092)))

(declare-fun res!1681953 () Bool)

(assert (=> b!4117863 (=> (not res!1681953) (not e!2555092))))

(declare-fun input!3238 () List!44616)

(declare-fun lt!1469105 () BalanceConc!26532)

(declare-datatypes ((Token!13446 0))(
  ( (Token!13447 (value!227407 TokenValue!7488) (rule!10324 Rule!14316) (size!32925 Int) (originalCharacters!7754 List!44616)) )
))
(declare-datatypes ((tuple2!42974 0))(
  ( (tuple2!42975 (_1!24621 Token!13446) (_2!24621 List!44616)) )
))
(declare-datatypes ((Option!9566 0))(
  ( (None!9565) (Some!9565 (v!40143 tuple2!42974)) )
))
(declare-fun maxPrefix!4039 (LexerInterface!6847 List!44617 List!44616) Option!9566)

(declare-fun apply!10331 (TokenValueInjection!14404 BalanceConc!26532) TokenValue!7488)

(declare-fun size!32926 (List!44616) Int)

(declare-fun getSuffix!2522 (List!44616 List!44616) List!44616)

(assert (=> b!4117863 (= res!1681953 (= (maxPrefix!4039 thiss!25645 rules!3756 input!3238) (Some!9565 (tuple2!42975 (Token!13447 (apply!10331 (transformation!7258 r!4008) lt!1469105) r!4008 (size!32926 p!2912) p!2912) (getSuffix!2522 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63851 0))(
  ( (Unit!63852) )
))
(declare-fun lt!1469106 () Unit!63851)

(declare-fun lemmaSemiInverse!2116 (TokenValueInjection!14404 BalanceConc!26532) Unit!63851)

(assert (=> b!4117863 (= lt!1469106 (lemmaSemiInverse!2116 (transformation!7258 r!4008) lt!1469105))))

(declare-fun seqFromList!5375 (List!44616) BalanceConc!26532)

(assert (=> b!4117863 (= lt!1469105 (seqFromList!5375 p!2912))))

(declare-fun b!4117864 () Bool)

(declare-fun res!1681950 () Bool)

(assert (=> b!4117864 (=> (not res!1681950) (not e!2555091))))

(declare-fun isPrefix!4193 (List!44616 List!44616) Bool)

(assert (=> b!4117864 (= res!1681950 (isPrefix!4193 p!2912 input!3238))))

(declare-fun b!4117865 () Bool)

(declare-fun res!1681947 () Bool)

(assert (=> b!4117865 (=> (not res!1681947) (not e!2555092))))

(declare-fun ruleValid!3066 (LexerInterface!6847 Rule!14316) Bool)

(assert (=> b!4117865 (= res!1681947 (ruleValid!3066 thiss!25645 r!4008))))

(declare-fun tp!1254736 () Bool)

(declare-fun e!2555093 () Bool)

(declare-fun e!2555096 () Bool)

(declare-fun b!4117866 () Bool)

(assert (=> b!4117866 (= e!2555093 (and tp!1254736 (inv!59078 (tag!8118 r!4008)) (inv!59080 (transformation!7258 r!4008)) e!2555096))))

(declare-fun b!4117867 () Bool)

(declare-fun res!1681948 () Bool)

(assert (=> b!4117867 (=> (not res!1681948) (not e!2555092))))

(declare-fun matchR!5994 (Regex!12163 List!44616) Bool)

(assert (=> b!4117867 (= res!1681948 (matchR!5994 (regex!7258 r!4008) p!2912))))

(declare-fun b!4117868 () Bool)

(declare-fun res!1681957 () Bool)

(assert (=> b!4117868 (=> (not res!1681957) (not e!2555092))))

(declare-fun rBis!149 () Rule!14316)

(declare-fun getIndex!606 (List!44617 Rule!14316) Int)

(assert (=> b!4117868 (= res!1681957 (< (getIndex!606 rules!3756 rBis!149) (getIndex!606 rules!3756 r!4008)))))

(declare-fun b!4117869 () Bool)

(declare-fun e!2555094 () Bool)

(declare-fun tp!1254729 () Bool)

(assert (=> b!4117869 (= e!2555094 (and e!2555090 tp!1254729))))

(declare-fun b!4117870 () Bool)

(declare-fun res!1681949 () Bool)

(assert (=> b!4117870 (=> (not res!1681949) (not e!2555091))))

(assert (=> b!4117870 (= res!1681949 (contains!8930 rules!3756 rBis!149))))

(declare-fun e!2555087 () Bool)

(declare-fun tp!1254738 () Bool)

(declare-fun b!4117871 () Bool)

(assert (=> b!4117871 (= e!2555087 (and tp!1254738 (inv!59078 (tag!8118 rBis!149)) (inv!59080 (transformation!7258 rBis!149)) e!2555098))))

(declare-fun b!4117872 () Bool)

(declare-fun e!2555088 () Bool)

(declare-fun tp!1254734 () Bool)

(assert (=> b!4117872 (= e!2555088 (and tp_is_empty!21249 tp!1254734))))

(declare-fun res!1681951 () Bool)

(assert (=> start!390318 (=> (not res!1681951) (not e!2555091))))

(get-info :version)

(assert (=> start!390318 (= res!1681951 ((_ is Lexer!6845) thiss!25645))))

(assert (=> start!390318 e!2555091))

(assert (=> start!390318 e!2555094))

(assert (=> start!390318 e!2555097))

(assert (=> start!390318 true))

(assert (=> start!390318 e!2555093))

(assert (=> start!390318 e!2555088))

(assert (=> start!390318 e!2555087))

(declare-fun b!4117873 () Bool)

(assert (=> b!4117873 (= e!2555092 (not true))))

(declare-fun lt!1469103 () Unit!63851)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2110 (LexerInterface!6847 Rule!14316 List!44617) Unit!63851)

(assert (=> b!4117873 (= lt!1469103 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2110 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4117873 (ruleValid!3066 thiss!25645 rBis!149)))

(declare-fun lt!1469104 () Unit!63851)

(assert (=> b!4117873 (= lt!1469104 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2110 thiss!25645 rBis!149 rules!3756))))

(assert (=> b!4117874 (= e!2555096 (and tp!1254730 tp!1254733))))

(assert (= (and start!390318 res!1681951) b!4117864))

(assert (= (and b!4117864 res!1681950) b!4117860))

(assert (= (and b!4117860 res!1681956) b!4117861))

(assert (= (and b!4117861 res!1681952) b!4117856))

(assert (= (and b!4117856 res!1681955) b!4117870))

(assert (= (and b!4117870 res!1681949) b!4117857))

(assert (= (and b!4117857 res!1681954) b!4117863))

(assert (= (and b!4117863 res!1681953) b!4117867))

(assert (= (and b!4117867 res!1681948) b!4117868))

(assert (= (and b!4117868 res!1681957) b!4117865))

(assert (= (and b!4117865 res!1681947) b!4117873))

(assert (= b!4117862 b!4117858))

(assert (= b!4117869 b!4117862))

(assert (= (and start!390318 ((_ is Cons!44493) rules!3756)) b!4117869))

(assert (= (and start!390318 ((_ is Cons!44492) p!2912)) b!4117855))

(assert (= b!4117866 b!4117874))

(assert (= start!390318 b!4117866))

(assert (= (and start!390318 ((_ is Cons!44492) input!3238)) b!4117872))

(assert (= b!4117871 b!4117859))

(assert (= start!390318 b!4117871))

(declare-fun m!4717391 () Bool)

(assert (=> b!4117864 m!4717391))

(declare-fun m!4717393 () Bool)

(assert (=> b!4117866 m!4717393))

(declare-fun m!4717395 () Bool)

(assert (=> b!4117866 m!4717395))

(declare-fun m!4717397 () Bool)

(assert (=> b!4117856 m!4717397))

(declare-fun m!4717399 () Bool)

(assert (=> b!4117873 m!4717399))

(declare-fun m!4717401 () Bool)

(assert (=> b!4117873 m!4717401))

(declare-fun m!4717403 () Bool)

(assert (=> b!4117873 m!4717403))

(declare-fun m!4717405 () Bool)

(assert (=> b!4117863 m!4717405))

(declare-fun m!4717407 () Bool)

(assert (=> b!4117863 m!4717407))

(declare-fun m!4717409 () Bool)

(assert (=> b!4117863 m!4717409))

(declare-fun m!4717411 () Bool)

(assert (=> b!4117863 m!4717411))

(declare-fun m!4717413 () Bool)

(assert (=> b!4117863 m!4717413))

(declare-fun m!4717415 () Bool)

(assert (=> b!4117863 m!4717415))

(declare-fun m!4717417 () Bool)

(assert (=> b!4117867 m!4717417))

(declare-fun m!4717419 () Bool)

(assert (=> b!4117860 m!4717419))

(declare-fun m!4717421 () Bool)

(assert (=> b!4117870 m!4717421))

(declare-fun m!4717423 () Bool)

(assert (=> b!4117857 m!4717423))

(declare-fun m!4717425 () Bool)

(assert (=> b!4117865 m!4717425))

(declare-fun m!4717427 () Bool)

(assert (=> b!4117861 m!4717427))

(declare-fun m!4717429 () Bool)

(assert (=> b!4117871 m!4717429))

(declare-fun m!4717431 () Bool)

(assert (=> b!4117871 m!4717431))

(declare-fun m!4717433 () Bool)

(assert (=> b!4117868 m!4717433))

(declare-fun m!4717435 () Bool)

(assert (=> b!4117868 m!4717435))

(declare-fun m!4717437 () Bool)

(assert (=> b!4117862 m!4717437))

(declare-fun m!4717439 () Bool)

(assert (=> b!4117862 m!4717439))

(check-sat (not b!4117871) (not b!4117860) (not b_next!116955) (not b!4117872) (not b!4117855) b_and!318333 (not b_next!116957) (not b!4117862) (not b_next!116947) (not b_next!116953) b_and!318325 (not b!4117857) (not b_next!116951) (not b!4117865) (not b!4117867) (not b!4117868) (not b!4117864) b_and!318329 (not b!4117870) (not b!4117866) tp_is_empty!21249 (not b!4117863) b_and!318327 b_and!318331 (not b!4117873) (not b!4117861) b_and!318335 (not b!4117856) (not b_next!116949) (not b!4117869))
(check-sat (not b_next!116951) (not b_next!116955) b_and!318329 b_and!318333 (not b_next!116957) (not b_next!116947) (not b_next!116953) b_and!318325 b_and!318327 b_and!318331 b_and!318335 (not b_next!116949))
