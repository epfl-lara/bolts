; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511034 () Bool)

(assert start!511034)

(declare-fun b!4883922 () Bool)

(declare-fun b_free!131111 () Bool)

(declare-fun b_next!131901 () Bool)

(assert (=> b!4883922 (= b_free!131111 (not b_next!131901))))

(declare-fun tp!1374365 () Bool)

(declare-fun b_and!343943 () Bool)

(assert (=> b!4883922 (= tp!1374365 b_and!343943)))

(declare-fun b_free!131113 () Bool)

(declare-fun b_next!131903 () Bool)

(assert (=> b!4883922 (= b_free!131113 (not b_next!131903))))

(declare-fun tp!1374362 () Bool)

(declare-fun b_and!343945 () Bool)

(assert (=> b!4883922 (= tp!1374362 b_and!343945)))

(declare-fun b!4883911 () Bool)

(declare-fun e!3052649 () Bool)

(declare-fun e!3052654 () Bool)

(assert (=> b!4883911 (= e!3052649 e!3052654)))

(declare-fun res!2085076 () Bool)

(assert (=> b!4883911 (=> res!2085076 e!3052654)))

(declare-datatypes ((C!26558 0))(
  ( (C!26559 (val!22613 Int)) )
))
(declare-datatypes ((List!56320 0))(
  ( (Nil!56196) (Cons!56196 (h!62644 C!26558) (t!364966 List!56320)) )
))
(declare-datatypes ((IArray!29407 0))(
  ( (IArray!29408 (innerList!14761 List!56320)) )
))
(declare-datatypes ((Conc!14673 0))(
  ( (Node!14673 (left!40820 Conc!14673) (right!41150 Conc!14673) (csize!29576 Int) (cheight!14884 Int)) (Leaf!24443 (xs!17989 IArray!29407) (csize!29577 Int)) (Empty!14673) )
))
(declare-datatypes ((BalanceConc!28776 0))(
  ( (BalanceConc!28777 (c!830496 Conc!14673)) )
))
(declare-datatypes ((List!56321 0))(
  ( (Nil!56197) (Cons!56197 (h!62645 (_ BitVec 16)) (t!364967 List!56321)) )
))
(declare-datatypes ((TokenValue!8415 0))(
  ( (FloatLiteralValue!16830 (text!59350 List!56321)) (TokenValueExt!8414 (__x!34123 Int)) (Broken!42075 (value!260120 List!56321)) (Object!8538) (End!8415) (Def!8415) (Underscore!8415) (Match!8415) (Else!8415) (Error!8415) (Case!8415) (If!8415) (Extends!8415) (Abstract!8415) (Class!8415) (Val!8415) (DelimiterValue!16830 (del!8475 List!56321)) (KeywordValue!8421 (value!260121 List!56321)) (CommentValue!16830 (value!260122 List!56321)) (WhitespaceValue!16830 (value!260123 List!56321)) (IndentationValue!8415 (value!260124 List!56321)) (String!63518) (Int32!8415) (Broken!42076 (value!260125 List!56321)) (Boolean!8416) (Unit!146186) (OperatorValue!8418 (op!8475 List!56321)) (IdentifierValue!16830 (value!260126 List!56321)) (IdentifierValue!16831 (value!260127 List!56321)) (WhitespaceValue!16831 (value!260128 List!56321)) (True!16830) (False!16830) (Broken!42077 (value!260129 List!56321)) (Broken!42078 (value!260130 List!56321)) (True!16831) (RightBrace!8415) (RightBracket!8415) (Colon!8415) (Null!8415) (Comma!8415) (LeftBracket!8415) (False!16831) (LeftBrace!8415) (ImaginaryLiteralValue!8415 (text!59351 List!56321)) (StringLiteralValue!25245 (value!260131 List!56321)) (EOFValue!8415 (value!260132 List!56321)) (IdentValue!8415 (value!260133 List!56321)) (DelimiterValue!16831 (value!260134 List!56321)) (DedentValue!8415 (value!260135 List!56321)) (NewLineValue!8415 (value!260136 List!56321)) (IntegerValue!25245 (value!260137 (_ BitVec 32)) (text!59352 List!56321)) (IntegerValue!25246 (value!260138 Int) (text!59353 List!56321)) (Times!8415) (Or!8415) (Equal!8415) (Minus!8415) (Broken!42079 (value!260139 List!56321)) (And!8415) (Div!8415) (LessEqual!8415) (Mod!8415) (Concat!21595) (Not!8415) (Plus!8415) (SpaceValue!8415 (value!260140 List!56321)) (IntegerValue!25247 (value!260141 Int) (text!59354 List!56321)) (StringLiteralValue!25246 (text!59355 List!56321)) (FloatLiteralValue!16831 (text!59356 List!56321)) (BytesLiteralValue!8415 (value!260142 List!56321)) (CommentValue!16831 (value!260143 List!56321)) (StringLiteralValue!25247 (value!260144 List!56321)) (ErrorTokenValue!8415 (msg!8476 List!56321)) )
))
(declare-datatypes ((Regex!13180 0))(
  ( (ElementMatch!13180 (c!830497 C!26558)) (Concat!21596 (regOne!26872 Regex!13180) (regTwo!26872 Regex!13180)) (EmptyExpr!13180) (Star!13180 (reg!13509 Regex!13180)) (EmptyLang!13180) (Union!13180 (regOne!26873 Regex!13180) (regTwo!26873 Regex!13180)) )
))
(declare-datatypes ((String!63519 0))(
  ( (String!63520 (value!260145 String)) )
))
(declare-datatypes ((TokenValueInjection!16138 0))(
  ( (TokenValueInjection!16139 (toValue!10992 Int) (toChars!10851 Int)) )
))
(declare-datatypes ((Rule!16010 0))(
  ( (Rule!16011 (regex!8105 Regex!13180) (tag!8969 String!63519) (isSeparator!8105 Bool) (transformation!8105 TokenValueInjection!16138)) )
))
(declare-datatypes ((Token!14778 0))(
  ( (Token!14779 (value!260146 TokenValue!8415) (rule!11267 Rule!16010) (size!37024 Int) (originalCharacters!8420 List!56320)) )
))
(declare-datatypes ((tuple2!60116 0))(
  ( (tuple2!60117 (_1!33361 Token!14778) (_2!33361 BalanceConc!28776)) )
))
(declare-datatypes ((Option!13893 0))(
  ( (None!13892) (Some!13892 (v!49842 tuple2!60116)) )
))
(declare-fun lt!2000790 () Option!13893)

(declare-fun lt!2000786 () Option!13893)

(assert (=> b!4883911 (= res!2085076 (or (and (is-None!13892 lt!2000790) (is-None!13892 lt!2000786)) (not (is-None!13892 lt!2000786))))))

(declare-datatypes ((LexerInterface!7697 0))(
  ( (LexerInterfaceExt!7694 (__x!34124 Int)) (Lexer!7695) )
))
(declare-fun thiss!14805 () LexerInterface!7697)

(declare-fun input!1236 () BalanceConc!28776)

(declare-datatypes ((List!56322 0))(
  ( (Nil!56198) (Cons!56198 (h!62646 Rule!16010) (t!364968 List!56322)) )
))
(declare-fun rulesArg!165 () List!56322)

(declare-fun maxPrefixZipperSequence!1266 (LexerInterface!7697 List!56322 BalanceConc!28776) Option!13893)

(assert (=> b!4883911 (= lt!2000786 (maxPrefixZipperSequence!1266 thiss!14805 (t!364968 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!631 (LexerInterface!7697 Rule!16010 BalanceConc!28776) Option!13893)

(assert (=> b!4883911 (= lt!2000790 (maxPrefixOneRuleZipperSequence!631 thiss!14805 (h!62646 rulesArg!165) input!1236))))

(declare-fun e!3052646 () Bool)

(declare-fun e!3052645 () Bool)

(declare-fun b!4883912 () Bool)

(declare-fun tp!1374363 () Bool)

(declare-fun inv!72295 (String!63519) Bool)

(declare-fun inv!72298 (TokenValueInjection!16138) Bool)

(assert (=> b!4883912 (= e!3052646 (and tp!1374363 (inv!72295 (tag!8969 (h!62646 rulesArg!165))) (inv!72298 (transformation!8105 (h!62646 rulesArg!165))) e!3052645))))

(declare-fun b!4883913 () Bool)

(declare-fun e!3052648 () Bool)

(declare-fun tp!1374364 () Bool)

(assert (=> b!4883913 (= e!3052648 (and e!3052646 tp!1374364))))

(declare-fun b!4883914 () Bool)

(declare-fun res!2085078 () Bool)

(declare-fun e!3052647 () Bool)

(assert (=> b!4883914 (=> (not res!2085078) (not e!3052647))))

(declare-fun isEmpty!30106 (List!56322) Bool)

(assert (=> b!4883914 (= res!2085078 (not (isEmpty!30106 rulesArg!165)))))

(declare-fun b!4883915 () Bool)

(declare-fun e!3052650 () Bool)

(declare-fun e!3052643 () Bool)

(assert (=> b!4883915 (= e!3052650 e!3052643)))

(declare-fun res!2085080 () Bool)

(assert (=> b!4883915 (=> res!2085080 e!3052643)))

(declare-fun lt!2000784 () tuple2!60116)

(declare-datatypes ((tuple2!60118 0))(
  ( (tuple2!60119 (_1!33362 Token!14778) (_2!33362 List!56320)) )
))
(declare-fun lt!2000788 () tuple2!60118)

(assert (=> b!4883915 (= res!2085080 (not (= (_1!33361 lt!2000784) (_1!33362 lt!2000788))))))

(declare-datatypes ((Option!13894 0))(
  ( (None!13893) (Some!13893 (v!49843 tuple2!60118)) )
))
(declare-fun lt!2000783 () Option!13894)

(declare-fun get!19342 (Option!13894) tuple2!60118)

(assert (=> b!4883915 (= lt!2000788 (get!19342 lt!2000783))))

(declare-fun get!19343 (Option!13893) tuple2!60116)

(assert (=> b!4883915 (= lt!2000784 (get!19343 lt!2000790))))

(declare-fun b!4883916 () Bool)

(assert (=> b!4883916 (= e!3052647 (not e!3052649))))

(declare-fun res!2085083 () Bool)

(assert (=> b!4883916 (=> res!2085083 e!3052649)))

(assert (=> b!4883916 (= res!2085083 (or (and (is-Cons!56198 rulesArg!165) (is-Nil!56198 (t!364968 rulesArg!165))) (not (is-Cons!56198 rulesArg!165))))))

(declare-fun lt!2000789 () List!56320)

(declare-fun isPrefix!4827 (List!56320 List!56320) Bool)

(assert (=> b!4883916 (isPrefix!4827 lt!2000789 lt!2000789)))

(declare-datatypes ((Unit!146187 0))(
  ( (Unit!146188) )
))
(declare-fun lt!2000791 () Unit!146187)

(declare-fun lemmaIsPrefixRefl!3224 (List!56320 List!56320) Unit!146187)

(assert (=> b!4883916 (= lt!2000791 (lemmaIsPrefixRefl!3224 lt!2000789 lt!2000789))))

(declare-fun list!17630 (BalanceConc!28776) List!56320)

(assert (=> b!4883916 (= lt!2000789 (list!17630 input!1236))))

(declare-fun b!4883917 () Bool)

(declare-fun e!3052652 () Bool)

(declare-fun e!3052651 () Bool)

(assert (=> b!4883917 (= e!3052652 e!3052651)))

(declare-fun res!2085079 () Bool)

(assert (=> b!4883917 (=> res!2085079 e!3052651)))

(assert (=> b!4883917 (= res!2085079 e!3052650)))

(declare-fun res!2085084 () Bool)

(assert (=> b!4883917 (=> (not res!2085084) (not e!3052650))))

(declare-fun lt!2000787 () Bool)

(assert (=> b!4883917 (= res!2085084 (not lt!2000787))))

(declare-fun lt!2000785 () Bool)

(assert (=> b!4883917 (= lt!2000787 (not lt!2000785))))

(declare-fun b!4883918 () Bool)

(declare-fun res!2085081 () Bool)

(assert (=> b!4883918 (=> (not res!2085081) (not e!3052647))))

(declare-fun rulesValidInductive!3084 (LexerInterface!7697 List!56322) Bool)

(assert (=> b!4883918 (= res!2085081 (rulesValidInductive!3084 thiss!14805 rulesArg!165))))

(declare-fun b!4883919 () Bool)

(assert (=> b!4883919 (= e!3052643 (not (= (list!17630 (_2!33361 lt!2000784)) (_2!33362 lt!2000788))))))

(declare-fun b!4883920 () Bool)

(declare-fun isDefined!10920 (Option!13894) Bool)

(declare-fun maxPrefix!4570 (LexerInterface!7697 List!56322 List!56320) Option!13894)

(assert (=> b!4883920 (= e!3052651 (isDefined!10920 (maxPrefix!4570 thiss!14805 rulesArg!165 lt!2000789)))))

(declare-fun b!4883921 () Bool)

(declare-fun e!3052644 () Bool)

(declare-fun tp!1374366 () Bool)

(declare-fun inv!72299 (Conc!14673) Bool)

(assert (=> b!4883921 (= e!3052644 (and (inv!72299 (c!830496 input!1236)) tp!1374366))))

(assert (=> b!4883922 (= e!3052645 (and tp!1374365 tp!1374362))))

(declare-fun res!2085085 () Bool)

(assert (=> start!511034 (=> (not res!2085085) (not e!3052647))))

(assert (=> start!511034 (= res!2085085 (is-Lexer!7695 thiss!14805))))

(assert (=> start!511034 e!3052647))

(assert (=> start!511034 true))

(assert (=> start!511034 e!3052648))

(declare-fun inv!72300 (BalanceConc!28776) Bool)

(assert (=> start!511034 (and (inv!72300 input!1236) e!3052644)))

(declare-fun b!4883923 () Bool)

(declare-fun res!2085082 () Bool)

(assert (=> b!4883923 (=> res!2085082 e!3052651)))

(assert (=> b!4883923 (= res!2085082 lt!2000787)))

(declare-fun b!4883924 () Bool)

(assert (=> b!4883924 (= e!3052654 e!3052652)))

(declare-fun res!2085077 () Bool)

(assert (=> b!4883924 (=> res!2085077 e!3052652)))

(assert (=> b!4883924 (= res!2085077 (not (= lt!2000785 (isDefined!10920 lt!2000783))))))

(declare-fun isDefined!10921 (Option!13893) Bool)

(assert (=> b!4883924 (= lt!2000785 (isDefined!10921 lt!2000790))))

(declare-fun maxPrefixZipper!608 (LexerInterface!7697 List!56322 List!56320) Option!13894)

(assert (=> b!4883924 (= lt!2000783 (maxPrefixZipper!608 thiss!14805 rulesArg!165 lt!2000789))))

(assert (= (and start!511034 res!2085085) b!4883918))

(assert (= (and b!4883918 res!2085081) b!4883914))

(assert (= (and b!4883914 res!2085078) b!4883916))

(assert (= (and b!4883916 (not res!2085083)) b!4883911))

(assert (= (and b!4883911 (not res!2085076)) b!4883924))

(assert (= (and b!4883924 (not res!2085077)) b!4883917))

(assert (= (and b!4883917 res!2085084) b!4883915))

(assert (= (and b!4883915 (not res!2085080)) b!4883919))

(assert (= (and b!4883917 (not res!2085079)) b!4883923))

(assert (= (and b!4883923 (not res!2085082)) b!4883920))

(assert (= b!4883912 b!4883922))

(assert (= b!4883913 b!4883912))

(assert (= (and start!511034 (is-Cons!56198 rulesArg!165)) b!4883913))

(assert (= start!511034 b!4883921))

(declare-fun m!5887856 () Bool)

(assert (=> b!4883924 m!5887856))

(declare-fun m!5887858 () Bool)

(assert (=> b!4883924 m!5887858))

(declare-fun m!5887860 () Bool)

(assert (=> b!4883924 m!5887860))

(declare-fun m!5887862 () Bool)

(assert (=> b!4883914 m!5887862))

(declare-fun m!5887864 () Bool)

(assert (=> b!4883919 m!5887864))

(declare-fun m!5887866 () Bool)

(assert (=> b!4883915 m!5887866))

(declare-fun m!5887868 () Bool)

(assert (=> b!4883915 m!5887868))

(declare-fun m!5887870 () Bool)

(assert (=> b!4883920 m!5887870))

(assert (=> b!4883920 m!5887870))

(declare-fun m!5887872 () Bool)

(assert (=> b!4883920 m!5887872))

(declare-fun m!5887874 () Bool)

(assert (=> b!4883912 m!5887874))

(declare-fun m!5887876 () Bool)

(assert (=> b!4883912 m!5887876))

(declare-fun m!5887878 () Bool)

(assert (=> start!511034 m!5887878))

(declare-fun m!5887880 () Bool)

(assert (=> b!4883911 m!5887880))

(declare-fun m!5887882 () Bool)

(assert (=> b!4883911 m!5887882))

(declare-fun m!5887884 () Bool)

(assert (=> b!4883921 m!5887884))

(declare-fun m!5887886 () Bool)

(assert (=> b!4883918 m!5887886))

(declare-fun m!5887888 () Bool)

(assert (=> b!4883916 m!5887888))

(declare-fun m!5887890 () Bool)

(assert (=> b!4883916 m!5887890))

(declare-fun m!5887892 () Bool)

(assert (=> b!4883916 m!5887892))

(push 1)

(assert (not b!4883916))

(assert b_and!343945)

(assert (not b!4883918))

(assert b_and!343943)

(assert (not b!4883911))

(assert (not start!511034))

(assert (not b!4883920))

(assert (not b_next!131901))

(assert (not b_next!131903))

(assert (not b!4883919))

(assert (not b!4883921))

(assert (not b!4883914))

(assert (not b!4883912))

(assert (not b!4883915))

(assert (not b!4883924))

(assert (not b!4883913))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343945)

(assert b_and!343943)

(assert (not b_next!131901))

(assert (not b_next!131903))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1569212 () Bool)

(declare-fun isBalanced!3989 (Conc!14673) Bool)

(assert (=> d!1569212 (= (inv!72300 input!1236) (isBalanced!3989 (c!830496 input!1236)))))

(declare-fun bs!1175514 () Bool)

(assert (= bs!1175514 d!1569212))

(declare-fun m!5887932 () Bool)

(assert (=> bs!1175514 m!5887932))

(assert (=> start!511034 d!1569212))

(declare-fun b!4883975 () Bool)

(declare-fun e!3052699 () Bool)

(declare-fun e!3052698 () Bool)

(assert (=> b!4883975 (= e!3052699 e!3052698)))

(declare-fun res!2085133 () Bool)

(assert (=> b!4883975 (=> (not res!2085133) (not e!3052698))))

(assert (=> b!4883975 (= res!2085133 (not (is-Nil!56196 lt!2000789)))))

(declare-fun b!4883977 () Bool)

(declare-fun tail!9577 (List!56320) List!56320)

(assert (=> b!4883977 (= e!3052698 (isPrefix!4827 (tail!9577 lt!2000789) (tail!9577 lt!2000789)))))

(declare-fun b!4883976 () Bool)

(declare-fun res!2085134 () Bool)

(assert (=> b!4883976 (=> (not res!2085134) (not e!3052698))))

(declare-fun head!10431 (List!56320) C!26558)

(assert (=> b!4883976 (= res!2085134 (= (head!10431 lt!2000789) (head!10431 lt!2000789)))))

(declare-fun b!4883978 () Bool)

(declare-fun e!3052697 () Bool)

(declare-fun size!37026 (List!56320) Int)

(assert (=> b!4883978 (= e!3052697 (>= (size!37026 lt!2000789) (size!37026 lt!2000789)))))

(declare-fun d!1569214 () Bool)

(assert (=> d!1569214 e!3052697))

(declare-fun res!2085132 () Bool)

(assert (=> d!1569214 (=> res!2085132 e!3052697)))

(declare-fun lt!2000821 () Bool)

(assert (=> d!1569214 (= res!2085132 (not lt!2000821))))

(assert (=> d!1569214 (= lt!2000821 e!3052699)))

(declare-fun res!2085135 () Bool)

(assert (=> d!1569214 (=> res!2085135 e!3052699)))

(assert (=> d!1569214 (= res!2085135 (is-Nil!56196 lt!2000789))))

(assert (=> d!1569214 (= (isPrefix!4827 lt!2000789 lt!2000789) lt!2000821)))

(assert (= (and d!1569214 (not res!2085135)) b!4883975))

(assert (= (and b!4883975 res!2085133) b!4883976))

(assert (= (and b!4883976 res!2085134) b!4883977))

(assert (= (and d!1569214 (not res!2085132)) b!4883978))

(declare-fun m!5887934 () Bool)

(assert (=> b!4883977 m!5887934))

(assert (=> b!4883977 m!5887934))

(assert (=> b!4883977 m!5887934))

(assert (=> b!4883977 m!5887934))

(declare-fun m!5887936 () Bool)

(assert (=> b!4883977 m!5887936))

(declare-fun m!5887938 () Bool)

(assert (=> b!4883976 m!5887938))

(assert (=> b!4883976 m!5887938))

(declare-fun m!5887940 () Bool)

(assert (=> b!4883978 m!5887940))

(assert (=> b!4883978 m!5887940))

(assert (=> b!4883916 d!1569214))

(declare-fun d!1569216 () Bool)

(assert (=> d!1569216 (isPrefix!4827 lt!2000789 lt!2000789)))

(declare-fun lt!2000824 () Unit!146187)

(declare-fun choose!35669 (List!56320 List!56320) Unit!146187)

(assert (=> d!1569216 (= lt!2000824 (choose!35669 lt!2000789 lt!2000789))))

(assert (=> d!1569216 (= (lemmaIsPrefixRefl!3224 lt!2000789 lt!2000789) lt!2000824)))

(declare-fun bs!1175515 () Bool)

(assert (= bs!1175515 d!1569216))

(assert (=> bs!1175515 m!5887888))

(declare-fun m!5887942 () Bool)

(assert (=> bs!1175515 m!5887942))

(assert (=> b!4883916 d!1569216))

(declare-fun d!1569218 () Bool)

(declare-fun list!17632 (Conc!14673) List!56320)

(assert (=> d!1569218 (= (list!17630 input!1236) (list!17632 (c!830496 input!1236)))))

(declare-fun bs!1175516 () Bool)

(assert (= bs!1175516 d!1569218))

(declare-fun m!5887944 () Bool)

(assert (=> bs!1175516 m!5887944))

(assert (=> b!4883916 d!1569218))

(declare-fun b!4883999 () Bool)

(declare-fun res!2085160 () Bool)

(declare-fun e!3052719 () Bool)

(assert (=> b!4883999 (=> (not res!2085160) (not e!3052719))))

(declare-fun e!3052720 () Bool)

(assert (=> b!4883999 (= res!2085160 e!3052720)))

(declare-fun res!2085157 () Bool)

(assert (=> b!4883999 (=> res!2085157 e!3052720)))

(declare-fun lt!2000847 () Option!13893)

(assert (=> b!4883999 (= res!2085157 (not (isDefined!10921 lt!2000847)))))

(declare-fun call!338921 () Option!13893)

(declare-fun bm!338916 () Bool)

(assert (=> bm!338916 (= call!338921 (maxPrefixOneRuleZipperSequence!631 thiss!14805 (h!62646 (t!364968 rulesArg!165)) input!1236))))

(declare-fun b!4884000 () Bool)

(declare-fun e!3052717 () Bool)

(assert (=> b!4884000 (= e!3052720 e!3052717)))

(declare-fun res!2085159 () Bool)

(assert (=> b!4884000 (=> (not res!2085159) (not e!3052717))))

(assert (=> b!4884000 (= res!2085159 (= (_1!33361 (get!19343 lt!2000847)) (_1!33362 (get!19342 (maxPrefixZipper!608 thiss!14805 (t!364968 rulesArg!165) (list!17630 input!1236))))))))

(declare-fun b!4884001 () Bool)

(declare-fun e!3052716 () Bool)

(assert (=> b!4884001 (= e!3052716 (= (list!17630 (_2!33361 (get!19343 lt!2000847))) (_2!33362 (get!19342 (maxPrefix!4570 thiss!14805 (t!364968 rulesArg!165) (list!17630 input!1236))))))))

(declare-fun b!4884002 () Bool)

(declare-fun e!3052721 () Option!13893)

(assert (=> b!4884002 (= e!3052721 call!338921)))

(declare-fun b!4884003 () Bool)

(declare-fun e!3052718 () Bool)

(assert (=> b!4884003 (= e!3052719 e!3052718)))

(declare-fun res!2085156 () Bool)

(assert (=> b!4884003 (=> res!2085156 e!3052718)))

(assert (=> b!4884003 (= res!2085156 (not (isDefined!10921 lt!2000847)))))

(declare-fun b!4884004 () Bool)

(assert (=> b!4884004 (= e!3052718 e!3052716)))

(declare-fun res!2085158 () Bool)

(assert (=> b!4884004 (=> (not res!2085158) (not e!3052716))))

(assert (=> b!4884004 (= res!2085158 (= (_1!33361 (get!19343 lt!2000847)) (_1!33362 (get!19342 (maxPrefix!4570 thiss!14805 (t!364968 rulesArg!165) (list!17630 input!1236))))))))

(declare-fun b!4884006 () Bool)

(assert (=> b!4884006 (= e!3052717 (= (list!17630 (_2!33361 (get!19343 lt!2000847))) (_2!33362 (get!19342 (maxPrefixZipper!608 thiss!14805 (t!364968 rulesArg!165) (list!17630 input!1236))))))))

(declare-fun b!4884005 () Bool)

(declare-fun lt!2000844 () Option!13893)

(declare-fun lt!2000846 () Option!13893)

(assert (=> b!4884005 (= e!3052721 (ite (and (is-None!13892 lt!2000844) (is-None!13892 lt!2000846)) None!13892 (ite (is-None!13892 lt!2000846) lt!2000844 (ite (is-None!13892 lt!2000844) lt!2000846 (ite (>= (size!37024 (_1!33361 (v!49842 lt!2000844))) (size!37024 (_1!33361 (v!49842 lt!2000846)))) lt!2000844 lt!2000846)))))))

(assert (=> b!4884005 (= lt!2000844 call!338921)))

(assert (=> b!4884005 (= lt!2000846 (maxPrefixZipperSequence!1266 thiss!14805 (t!364968 (t!364968 rulesArg!165)) input!1236))))

(declare-fun d!1569220 () Bool)

(assert (=> d!1569220 e!3052719))

(declare-fun res!2085161 () Bool)

(assert (=> d!1569220 (=> (not res!2085161) (not e!3052719))))

(assert (=> d!1569220 (= res!2085161 (= (isDefined!10921 lt!2000847) (isDefined!10920 (maxPrefixZipper!608 thiss!14805 (t!364968 rulesArg!165) (list!17630 input!1236)))))))

(assert (=> d!1569220 (= lt!2000847 e!3052721)))

(declare-fun c!830503 () Bool)

(assert (=> d!1569220 (= c!830503 (and (is-Cons!56198 (t!364968 rulesArg!165)) (is-Nil!56198 (t!364968 (t!364968 rulesArg!165)))))))

(declare-fun lt!2000845 () Unit!146187)

(declare-fun lt!2000843 () Unit!146187)

(assert (=> d!1569220 (= lt!2000845 lt!2000843)))

(declare-fun lt!2000841 () List!56320)

(declare-fun lt!2000842 () List!56320)

(assert (=> d!1569220 (isPrefix!4827 lt!2000841 lt!2000842)))

(assert (=> d!1569220 (= lt!2000843 (lemmaIsPrefixRefl!3224 lt!2000841 lt!2000842))))

(assert (=> d!1569220 (= lt!2000842 (list!17630 input!1236))))

(assert (=> d!1569220 (= lt!2000841 (list!17630 input!1236))))

(assert (=> d!1569220 (rulesValidInductive!3084 thiss!14805 (t!364968 rulesArg!165))))

(assert (=> d!1569220 (= (maxPrefixZipperSequence!1266 thiss!14805 (t!364968 rulesArg!165) input!1236) lt!2000847)))

(assert (= (and d!1569220 c!830503) b!4884002))

(assert (= (and d!1569220 (not c!830503)) b!4884005))

(assert (= (or b!4884002 b!4884005) bm!338916))

(assert (= (and d!1569220 res!2085161) b!4883999))

(assert (= (and b!4883999 (not res!2085157)) b!4884000))

(assert (= (and b!4884000 res!2085159) b!4884006))

(assert (= (and b!4883999 res!2085160) b!4884003))

(assert (= (and b!4884003 (not res!2085156)) b!4884004))

(assert (= (and b!4884004 res!2085158) b!4884001))

(declare-fun m!5887948 () Bool)

(assert (=> b!4884000 m!5887948))

(assert (=> b!4884000 m!5887892))

(assert (=> b!4884000 m!5887892))

(declare-fun m!5887950 () Bool)

(assert (=> b!4884000 m!5887950))

(assert (=> b!4884000 m!5887950))

(declare-fun m!5887952 () Bool)

(assert (=> b!4884000 m!5887952))

(assert (=> b!4884004 m!5887948))

(assert (=> b!4884004 m!5887892))

(assert (=> b!4884004 m!5887892))

(declare-fun m!5887954 () Bool)

(assert (=> b!4884004 m!5887954))

(assert (=> b!4884004 m!5887954))

(declare-fun m!5887956 () Bool)

(assert (=> b!4884004 m!5887956))

(declare-fun m!5887958 () Bool)

(assert (=> bm!338916 m!5887958))

(declare-fun m!5887960 () Bool)

(assert (=> b!4884003 m!5887960))

(declare-fun m!5887962 () Bool)

(assert (=> b!4884006 m!5887962))

(assert (=> b!4884006 m!5887892))

(assert (=> b!4884006 m!5887950))

(assert (=> b!4884006 m!5887950))

(assert (=> b!4884006 m!5887952))

(assert (=> b!4884006 m!5887892))

(assert (=> b!4884006 m!5887948))

(assert (=> b!4884001 m!5887954))

(assert (=> b!4884001 m!5887956))

(assert (=> b!4884001 m!5887962))

(assert (=> b!4884001 m!5887892))

(assert (=> b!4884001 m!5887892))

(assert (=> b!4884001 m!5887954))

(assert (=> b!4884001 m!5887948))

(declare-fun m!5887964 () Bool)

(assert (=> b!4884005 m!5887964))

(assert (=> b!4883999 m!5887960))

(assert (=> d!1569220 m!5887892))

(declare-fun m!5887966 () Bool)

(assert (=> d!1569220 m!5887966))

(declare-fun m!5887968 () Bool)

(assert (=> d!1569220 m!5887968))

(assert (=> d!1569220 m!5887892))

(assert (=> d!1569220 m!5887950))

(assert (=> d!1569220 m!5887950))

(declare-fun m!5887970 () Bool)

(assert (=> d!1569220 m!5887970))

(assert (=> d!1569220 m!5887960))

(declare-fun m!5887972 () Bool)

(assert (=> d!1569220 m!5887972))

(assert (=> b!4883911 d!1569220))

(declare-fun b!4884066 () Bool)

(declare-fun e!3052765 () Bool)

(assert (=> b!4884066 (= e!3052765 true)))

(declare-fun b!4884065 () Bool)

(declare-fun e!3052764 () Bool)

(assert (=> b!4884065 (= e!3052764 e!3052765)))

(declare-fun b!4884054 () Bool)

(assert (=> b!4884054 e!3052764))

(assert (= b!4884065 b!4884066))

(assert (= b!4884054 b!4884065))

(declare-fun lambda!243775 () Int)

(declare-fun order!25341 () Int)

(declare-fun order!25339 () Int)

(declare-fun dynLambda!22555 (Int Int) Int)

(declare-fun dynLambda!22556 (Int Int) Int)

(assert (=> b!4884066 (< (dynLambda!22555 order!25339 (toValue!10992 (transformation!8105 (h!62646 rulesArg!165)))) (dynLambda!22556 order!25341 lambda!243775))))

(declare-fun order!25343 () Int)

(declare-fun dynLambda!22557 (Int Int) Int)

(assert (=> b!4884066 (< (dynLambda!22557 order!25343 (toChars!10851 (transformation!8105 (h!62646 rulesArg!165)))) (dynLambda!22556 order!25341 lambda!243775))))

(declare-fun b!4884053 () Bool)

(declare-fun e!3052755 () Bool)

(declare-fun e!3052757 () Bool)

(assert (=> b!4884053 (= e!3052755 e!3052757)))

(declare-fun res!2085190 () Bool)

(assert (=> b!4884053 (=> (not res!2085190) (not e!3052757))))

(declare-fun lt!2000893 () Option!13893)

(declare-fun maxPrefixOneRule!3506 (LexerInterface!7697 Rule!16010 List!56320) Option!13894)

(assert (=> b!4884053 (= res!2085190 (= (_1!33361 (get!19343 lt!2000893)) (_1!33362 (get!19342 (maxPrefixOneRule!3506 thiss!14805 (h!62646 rulesArg!165) (list!17630 input!1236))))))))

(declare-fun d!1569226 () Bool)

(declare-fun e!3052758 () Bool)

(assert (=> d!1569226 e!3052758))

(declare-fun res!2085192 () Bool)

(assert (=> d!1569226 (=> (not res!2085192) (not e!3052758))))

(assert (=> d!1569226 (= res!2085192 (= (isDefined!10921 lt!2000893) (isDefined!10920 (maxPrefixOneRule!3506 thiss!14805 (h!62646 rulesArg!165) (list!17630 input!1236)))))))

(declare-fun e!3052759 () Option!13893)

(assert (=> d!1569226 (= lt!2000893 e!3052759)))

(declare-fun c!830512 () Bool)

(declare-datatypes ((tuple2!60124 0))(
  ( (tuple2!60125 (_1!33365 BalanceConc!28776) (_2!33365 BalanceConc!28776)) )
))
(declare-fun lt!2000894 () tuple2!60124)

(declare-fun isEmpty!30108 (BalanceConc!28776) Bool)

(assert (=> d!1569226 (= c!830512 (isEmpty!30108 (_1!33365 lt!2000894)))))

(declare-fun findLongestMatchWithZipperSequence!251 (Regex!13180 BalanceConc!28776) tuple2!60124)

(assert (=> d!1569226 (= lt!2000894 (findLongestMatchWithZipperSequence!251 (regex!8105 (h!62646 rulesArg!165)) input!1236))))

(declare-fun ruleValid!3649 (LexerInterface!7697 Rule!16010) Bool)

(assert (=> d!1569226 (ruleValid!3649 thiss!14805 (h!62646 rulesArg!165))))

(assert (=> d!1569226 (= (maxPrefixOneRuleZipperSequence!631 thiss!14805 (h!62646 rulesArg!165) input!1236) lt!2000893)))

(declare-fun apply!13517 (TokenValueInjection!16138 BalanceConc!28776) TokenValue!8415)

(declare-fun size!37027 (BalanceConc!28776) Int)

(assert (=> b!4884054 (= e!3052759 (Some!13892 (tuple2!60117 (Token!14779 (apply!13517 (transformation!8105 (h!62646 rulesArg!165)) (_1!33365 lt!2000894)) (h!62646 rulesArg!165) (size!37027 (_1!33365 lt!2000894)) (list!17630 (_1!33365 lt!2000894))) (_2!33365 lt!2000894))))))

(declare-fun lt!2000891 () List!56320)

(assert (=> b!4884054 (= lt!2000891 (list!17630 input!1236))))

(declare-fun lt!2000897 () Unit!146187)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1699 (Regex!13180 List!56320) Unit!146187)

(assert (=> b!4884054 (= lt!2000897 (longestMatchIsAcceptedByMatchOrIsEmpty!1699 (regex!8105 (h!62646 rulesArg!165)) lt!2000891))))

(declare-fun res!2085193 () Bool)

(declare-fun isEmpty!30109 (List!56320) Bool)

(declare-datatypes ((tuple2!60126 0))(
  ( (tuple2!60127 (_1!33366 List!56320) (_2!33366 List!56320)) )
))
(declare-fun findLongestMatchInner!1736 (Regex!13180 List!56320 Int List!56320 List!56320 Int) tuple2!60126)

(assert (=> b!4884054 (= res!2085193 (isEmpty!30109 (_1!33366 (findLongestMatchInner!1736 (regex!8105 (h!62646 rulesArg!165)) Nil!56196 (size!37026 Nil!56196) lt!2000891 lt!2000891 (size!37026 lt!2000891)))))))

(declare-fun e!3052756 () Bool)

(assert (=> b!4884054 (=> res!2085193 e!3052756)))

(assert (=> b!4884054 e!3052756))

(declare-fun lt!2000895 () Unit!146187)

(assert (=> b!4884054 (= lt!2000895 lt!2000897)))

(declare-fun lt!2000890 () Unit!146187)

(declare-fun lemmaInv!1219 (TokenValueInjection!16138) Unit!146187)

(assert (=> b!4884054 (= lt!2000890 (lemmaInv!1219 (transformation!8105 (h!62646 rulesArg!165))))))

(declare-fun lt!2000899 () Unit!146187)

(declare-fun ForallOf!1116 (Int BalanceConc!28776) Unit!146187)

(assert (=> b!4884054 (= lt!2000899 (ForallOf!1116 lambda!243775 (_1!33365 lt!2000894)))))

(declare-fun lt!2000896 () Unit!146187)

(declare-fun seqFromList!5913 (List!56320) BalanceConc!28776)

(assert (=> b!4884054 (= lt!2000896 (ForallOf!1116 lambda!243775 (seqFromList!5913 (list!17630 (_1!33365 lt!2000894)))))))

(declare-fun lt!2000898 () Option!13893)

(assert (=> b!4884054 (= lt!2000898 (Some!13892 (tuple2!60117 (Token!14779 (apply!13517 (transformation!8105 (h!62646 rulesArg!165)) (_1!33365 lt!2000894)) (h!62646 rulesArg!165) (size!37027 (_1!33365 lt!2000894)) (list!17630 (_1!33365 lt!2000894))) (_2!33365 lt!2000894))))))

(declare-fun lt!2000892 () Unit!146187)

(declare-fun lemmaEqSameImage!1073 (TokenValueInjection!16138 BalanceConc!28776 BalanceConc!28776) Unit!146187)

(assert (=> b!4884054 (= lt!2000892 (lemmaEqSameImage!1073 (transformation!8105 (h!62646 rulesArg!165)) (_1!33365 lt!2000894) (seqFromList!5913 (list!17630 (_1!33365 lt!2000894)))))))

(declare-fun b!4884055 () Bool)

(assert (=> b!4884055 (= e!3052759 None!13892)))

(declare-fun b!4884056 () Bool)

(assert (=> b!4884056 (= e!3052757 (= (list!17630 (_2!33361 (get!19343 lt!2000893))) (_2!33362 (get!19342 (maxPrefixOneRule!3506 thiss!14805 (h!62646 rulesArg!165) (list!17630 input!1236))))))))

(declare-fun b!4884057 () Bool)

(assert (=> b!4884057 (= e!3052758 e!3052755)))

(declare-fun res!2085191 () Bool)

(assert (=> b!4884057 (=> res!2085191 e!3052755)))

(assert (=> b!4884057 (= res!2085191 (not (isDefined!10921 lt!2000893)))))

(declare-fun b!4884058 () Bool)

(declare-fun matchR!6507 (Regex!13180 List!56320) Bool)

(assert (=> b!4884058 (= e!3052756 (matchR!6507 (regex!8105 (h!62646 rulesArg!165)) (_1!33366 (findLongestMatchInner!1736 (regex!8105 (h!62646 rulesArg!165)) Nil!56196 (size!37026 Nil!56196) lt!2000891 lt!2000891 (size!37026 lt!2000891)))))))

(assert (= (and d!1569226 c!830512) b!4884055))

(assert (= (and d!1569226 (not c!830512)) b!4884054))

(assert (= (and b!4884054 (not res!2085193)) b!4884058))

(assert (= (and d!1569226 res!2085192) b!4884057))

(assert (= (and b!4884057 (not res!2085191)) b!4884053))

(assert (= (and b!4884053 res!2085190) b!4884056))

(declare-fun m!5888008 () Bool)

(assert (=> b!4884053 m!5888008))

(assert (=> b!4884053 m!5887892))

(assert (=> b!4884053 m!5887892))

(declare-fun m!5888010 () Bool)

(assert (=> b!4884053 m!5888010))

(assert (=> b!4884053 m!5888010))

(declare-fun m!5888012 () Bool)

(assert (=> b!4884053 m!5888012))

(declare-fun m!5888014 () Bool)

(assert (=> b!4884054 m!5888014))

(declare-fun m!5888016 () Bool)

(assert (=> b!4884054 m!5888016))

(declare-fun m!5888018 () Bool)

(assert (=> b!4884054 m!5888018))

(assert (=> b!4884054 m!5888016))

(declare-fun m!5888020 () Bool)

(assert (=> b!4884054 m!5888020))

(declare-fun m!5888022 () Bool)

(assert (=> b!4884054 m!5888022))

(declare-fun m!5888024 () Bool)

(assert (=> b!4884054 m!5888024))

(declare-fun m!5888026 () Bool)

(assert (=> b!4884054 m!5888026))

(assert (=> b!4884054 m!5888020))

(declare-fun m!5888028 () Bool)

(assert (=> b!4884054 m!5888028))

(declare-fun m!5888030 () Bool)

(assert (=> b!4884054 m!5888030))

(assert (=> b!4884054 m!5888014))

(assert (=> b!4884054 m!5888024))

(declare-fun m!5888032 () Bool)

(assert (=> b!4884054 m!5888032))

(assert (=> b!4884054 m!5887892))

(assert (=> b!4884054 m!5888024))

(declare-fun m!5888034 () Bool)

(assert (=> b!4884054 m!5888034))

(declare-fun m!5888036 () Bool)

(assert (=> b!4884054 m!5888036))

(declare-fun m!5888038 () Bool)

(assert (=> b!4884054 m!5888038))

(declare-fun m!5888040 () Bool)

(assert (=> d!1569226 m!5888040))

(declare-fun m!5888042 () Bool)

(assert (=> d!1569226 m!5888042))

(assert (=> d!1569226 m!5887892))

(assert (=> d!1569226 m!5888010))

(declare-fun m!5888044 () Bool)

(assert (=> d!1569226 m!5888044))

(assert (=> d!1569226 m!5887892))

(assert (=> d!1569226 m!5888010))

(declare-fun m!5888046 () Bool)

(assert (=> d!1569226 m!5888046))

(declare-fun m!5888048 () Bool)

(assert (=> d!1569226 m!5888048))

(assert (=> b!4884056 m!5887892))

(declare-fun m!5888050 () Bool)

(assert (=> b!4884056 m!5888050))

(assert (=> b!4884056 m!5888010))

(assert (=> b!4884056 m!5888012))

(assert (=> b!4884056 m!5887892))

(assert (=> b!4884056 m!5888010))

(assert (=> b!4884056 m!5888008))

(assert (=> b!4884058 m!5888016))

(assert (=> b!4884058 m!5888020))

(assert (=> b!4884058 m!5888016))

(assert (=> b!4884058 m!5888020))

(assert (=> b!4884058 m!5888022))

(declare-fun m!5888052 () Bool)

(assert (=> b!4884058 m!5888052))

(assert (=> b!4884057 m!5888048))

(assert (=> b!4883911 d!1569226))

(declare-fun d!1569250 () Bool)

(declare-fun c!830515 () Bool)

(assert (=> d!1569250 (= c!830515 (is-Node!14673 (c!830496 input!1236)))))

(declare-fun e!3052770 () Bool)

(assert (=> d!1569250 (= (inv!72299 (c!830496 input!1236)) e!3052770)))

(declare-fun b!4884073 () Bool)

(declare-fun inv!72304 (Conc!14673) Bool)

(assert (=> b!4884073 (= e!3052770 (inv!72304 (c!830496 input!1236)))))

(declare-fun b!4884074 () Bool)

(declare-fun e!3052771 () Bool)

(assert (=> b!4884074 (= e!3052770 e!3052771)))

(declare-fun res!2085196 () Bool)

(assert (=> b!4884074 (= res!2085196 (not (is-Leaf!24443 (c!830496 input!1236))))))

(assert (=> b!4884074 (=> res!2085196 e!3052771)))

(declare-fun b!4884075 () Bool)

(declare-fun inv!72305 (Conc!14673) Bool)

(assert (=> b!4884075 (= e!3052771 (inv!72305 (c!830496 input!1236)))))

(assert (= (and d!1569250 c!830515) b!4884073))

(assert (= (and d!1569250 (not c!830515)) b!4884074))

(assert (= (and b!4884074 (not res!2085196)) b!4884075))

(declare-fun m!5888054 () Bool)

(assert (=> b!4884073 m!5888054))

(declare-fun m!5888056 () Bool)

(assert (=> b!4884075 m!5888056))

(assert (=> b!4883921 d!1569250))

(declare-fun d!1569252 () Bool)

(declare-fun isEmpty!30110 (Option!13894) Bool)

(assert (=> d!1569252 (= (isDefined!10920 (maxPrefix!4570 thiss!14805 rulesArg!165 lt!2000789)) (not (isEmpty!30110 (maxPrefix!4570 thiss!14805 rulesArg!165 lt!2000789))))))

(declare-fun bs!1175522 () Bool)

(assert (= bs!1175522 d!1569252))

(assert (=> bs!1175522 m!5887870))

(declare-fun m!5888058 () Bool)

(assert (=> bs!1175522 m!5888058))

(assert (=> b!4883920 d!1569252))

(declare-fun b!4884118 () Bool)

(declare-fun e!3052797 () Bool)

(declare-fun e!3052798 () Bool)

(assert (=> b!4884118 (= e!3052797 e!3052798)))

(declare-fun res!2085234 () Bool)

(assert (=> b!4884118 (=> (not res!2085234) (not e!3052798))))

(declare-fun lt!2000935 () Option!13894)

(assert (=> b!4884118 (= res!2085234 (isDefined!10920 lt!2000935))))

(declare-fun b!4884119 () Bool)

(declare-fun res!2085232 () Bool)

(assert (=> b!4884119 (=> (not res!2085232) (not e!3052798))))

(declare-fun ++!12222 (List!56320 List!56320) List!56320)

(declare-fun charsOf!5353 (Token!14778) BalanceConc!28776)

(assert (=> b!4884119 (= res!2085232 (= (++!12222 (list!17630 (charsOf!5353 (_1!33362 (get!19342 lt!2000935)))) (_2!33362 (get!19342 lt!2000935))) lt!2000789))))

(declare-fun b!4884120 () Bool)

(declare-fun e!3052796 () Option!13894)

(declare-fun lt!2000931 () Option!13894)

(declare-fun lt!2000933 () Option!13894)

(assert (=> b!4884120 (= e!3052796 (ite (and (is-None!13893 lt!2000931) (is-None!13893 lt!2000933)) None!13893 (ite (is-None!13893 lt!2000933) lt!2000931 (ite (is-None!13893 lt!2000931) lt!2000933 (ite (>= (size!37024 (_1!33362 (v!49843 lt!2000931))) (size!37024 (_1!33362 (v!49843 lt!2000933)))) lt!2000931 lt!2000933)))))))

(declare-fun call!338930 () Option!13894)

(assert (=> b!4884120 (= lt!2000931 call!338930)))

(assert (=> b!4884120 (= lt!2000933 (maxPrefix!4570 thiss!14805 (t!364968 rulesArg!165) lt!2000789))))

(declare-fun b!4884121 () Bool)

(declare-fun res!2085230 () Bool)

(assert (=> b!4884121 (=> (not res!2085230) (not e!3052798))))

(assert (=> b!4884121 (= res!2085230 (< (size!37026 (_2!33362 (get!19342 lt!2000935))) (size!37026 lt!2000789)))))

(declare-fun b!4884123 () Bool)

(declare-fun contains!19416 (List!56322 Rule!16010) Bool)

(assert (=> b!4884123 (= e!3052798 (contains!19416 rulesArg!165 (rule!11267 (_1!33362 (get!19342 lt!2000935)))))))

(declare-fun b!4884124 () Bool)

(declare-fun res!2085231 () Bool)

(assert (=> b!4884124 (=> (not res!2085231) (not e!3052798))))

(assert (=> b!4884124 (= res!2085231 (matchR!6507 (regex!8105 (rule!11267 (_1!33362 (get!19342 lt!2000935)))) (list!17630 (charsOf!5353 (_1!33362 (get!19342 lt!2000935))))))))

(declare-fun b!4884125 () Bool)

(assert (=> b!4884125 (= e!3052796 call!338930)))

(declare-fun bm!338925 () Bool)

(assert (=> bm!338925 (= call!338930 (maxPrefixOneRule!3506 thiss!14805 (h!62646 rulesArg!165) lt!2000789))))

(declare-fun b!4884126 () Bool)

(declare-fun res!2085233 () Bool)

(assert (=> b!4884126 (=> (not res!2085233) (not e!3052798))))

(assert (=> b!4884126 (= res!2085233 (= (value!260146 (_1!33362 (get!19342 lt!2000935))) (apply!13517 (transformation!8105 (rule!11267 (_1!33362 (get!19342 lt!2000935)))) (seqFromList!5913 (originalCharacters!8420 (_1!33362 (get!19342 lt!2000935)))))))))

(declare-fun b!4884122 () Bool)

(declare-fun res!2085235 () Bool)

(assert (=> b!4884122 (=> (not res!2085235) (not e!3052798))))

(assert (=> b!4884122 (= res!2085235 (= (list!17630 (charsOf!5353 (_1!33362 (get!19342 lt!2000935)))) (originalCharacters!8420 (_1!33362 (get!19342 lt!2000935)))))))

(declare-fun d!1569254 () Bool)

(assert (=> d!1569254 e!3052797))

(declare-fun res!2085229 () Bool)

(assert (=> d!1569254 (=> res!2085229 e!3052797)))

(assert (=> d!1569254 (= res!2085229 (isEmpty!30110 lt!2000935))))

(assert (=> d!1569254 (= lt!2000935 e!3052796)))

(declare-fun c!830521 () Bool)

(assert (=> d!1569254 (= c!830521 (and (is-Cons!56198 rulesArg!165) (is-Nil!56198 (t!364968 rulesArg!165))))))

(declare-fun lt!2000932 () Unit!146187)

(declare-fun lt!2000934 () Unit!146187)

(assert (=> d!1569254 (= lt!2000932 lt!2000934)))

(assert (=> d!1569254 (isPrefix!4827 lt!2000789 lt!2000789)))

(assert (=> d!1569254 (= lt!2000934 (lemmaIsPrefixRefl!3224 lt!2000789 lt!2000789))))

(assert (=> d!1569254 (rulesValidInductive!3084 thiss!14805 rulesArg!165)))

(assert (=> d!1569254 (= (maxPrefix!4570 thiss!14805 rulesArg!165 lt!2000789) lt!2000935)))

(assert (= (and d!1569254 c!830521) b!4884125))

(assert (= (and d!1569254 (not c!830521)) b!4884120))

(assert (= (or b!4884125 b!4884120) bm!338925))

(assert (= (and d!1569254 (not res!2085229)) b!4884118))

(assert (= (and b!4884118 res!2085234) b!4884122))

(assert (= (and b!4884122 res!2085235) b!4884121))

(assert (= (and b!4884121 res!2085230) b!4884119))

(assert (= (and b!4884119 res!2085232) b!4884126))

(assert (= (and b!4884126 res!2085233) b!4884124))

(assert (= (and b!4884124 res!2085231) b!4884123))

(declare-fun m!5888084 () Bool)

(assert (=> b!4884122 m!5888084))

(declare-fun m!5888086 () Bool)

(assert (=> b!4884122 m!5888086))

(assert (=> b!4884122 m!5888086))

(declare-fun m!5888088 () Bool)

(assert (=> b!4884122 m!5888088))

(assert (=> b!4884119 m!5888084))

(assert (=> b!4884119 m!5888086))

(assert (=> b!4884119 m!5888086))

(assert (=> b!4884119 m!5888088))

(assert (=> b!4884119 m!5888088))

(declare-fun m!5888090 () Bool)

(assert (=> b!4884119 m!5888090))

(declare-fun m!5888092 () Bool)

(assert (=> bm!338925 m!5888092))

(declare-fun m!5888094 () Bool)

(assert (=> b!4884118 m!5888094))

(assert (=> b!4884124 m!5888084))

(assert (=> b!4884124 m!5888086))

(assert (=> b!4884124 m!5888086))

(assert (=> b!4884124 m!5888088))

(assert (=> b!4884124 m!5888088))

(declare-fun m!5888096 () Bool)

(assert (=> b!4884124 m!5888096))

(assert (=> b!4884123 m!5888084))

(declare-fun m!5888098 () Bool)

(assert (=> b!4884123 m!5888098))

(declare-fun m!5888100 () Bool)

(assert (=> b!4884120 m!5888100))

(declare-fun m!5888102 () Bool)

(assert (=> d!1569254 m!5888102))

(assert (=> d!1569254 m!5887888))

(assert (=> d!1569254 m!5887890))

(assert (=> d!1569254 m!5887886))

(assert (=> b!4884121 m!5888084))

(declare-fun m!5888104 () Bool)

(assert (=> b!4884121 m!5888104))

(assert (=> b!4884121 m!5887940))

(assert (=> b!4884126 m!5888084))

(declare-fun m!5888106 () Bool)

(assert (=> b!4884126 m!5888106))

(assert (=> b!4884126 m!5888106))

(declare-fun m!5888108 () Bool)

(assert (=> b!4884126 m!5888108))

(assert (=> b!4883920 d!1569254))

(declare-fun d!1569258 () Bool)

(assert (=> d!1569258 (= (get!19342 lt!2000783) (v!49843 lt!2000783))))

(assert (=> b!4883915 d!1569258))

(declare-fun d!1569260 () Bool)

(assert (=> d!1569260 (= (get!19343 lt!2000790) (v!49842 lt!2000790))))

(assert (=> b!4883915 d!1569260))

(declare-fun d!1569262 () Bool)

(assert (=> d!1569262 (= (isEmpty!30106 rulesArg!165) (is-Nil!56198 rulesArg!165))))

(assert (=> b!4883914 d!1569262))

(declare-fun d!1569264 () Bool)

(assert (=> d!1569264 (= (isDefined!10920 lt!2000783) (not (isEmpty!30110 lt!2000783)))))

(declare-fun bs!1175523 () Bool)

(assert (= bs!1175523 d!1569264))

(declare-fun m!5888110 () Bool)

(assert (=> bs!1175523 m!5888110))

(assert (=> b!4883924 d!1569264))

(declare-fun d!1569266 () Bool)

(declare-fun isEmpty!30111 (Option!13893) Bool)

(assert (=> d!1569266 (= (isDefined!10921 lt!2000790) (not (isEmpty!30111 lt!2000790)))))

(declare-fun bs!1175524 () Bool)

(assert (= bs!1175524 d!1569266))

(declare-fun m!5888112 () Bool)

(assert (=> bs!1175524 m!5888112))

(assert (=> b!4883924 d!1569266))

(declare-fun lt!2000947 () Option!13894)

(declare-fun d!1569268 () Bool)

(assert (=> d!1569268 (= lt!2000947 (maxPrefix!4570 thiss!14805 rulesArg!165 lt!2000789))))

(declare-fun e!3052801 () Option!13894)

(assert (=> d!1569268 (= lt!2000947 e!3052801)))

(declare-fun c!830524 () Bool)

(assert (=> d!1569268 (= c!830524 (and (is-Cons!56198 rulesArg!165) (is-Nil!56198 (t!364968 rulesArg!165))))))

(declare-fun lt!2000948 () Unit!146187)

(declare-fun lt!2000950 () Unit!146187)

(assert (=> d!1569268 (= lt!2000948 lt!2000950)))

(assert (=> d!1569268 (isPrefix!4827 lt!2000789 lt!2000789)))

(assert (=> d!1569268 (= lt!2000950 (lemmaIsPrefixRefl!3224 lt!2000789 lt!2000789))))

(assert (=> d!1569268 (rulesValidInductive!3084 thiss!14805 rulesArg!165)))

(assert (=> d!1569268 (= (maxPrefixZipper!608 thiss!14805 rulesArg!165 lt!2000789) lt!2000947)))

(declare-fun call!338933 () Option!13894)

(declare-fun bm!338928 () Bool)

(declare-fun maxPrefixOneRuleZipper!237 (LexerInterface!7697 Rule!16010 List!56320) Option!13894)

(assert (=> bm!338928 (= call!338933 (maxPrefixOneRuleZipper!237 thiss!14805 (h!62646 rulesArg!165) lt!2000789))))

(declare-fun b!4884131 () Bool)

(assert (=> b!4884131 (= e!3052801 call!338933)))

(declare-fun b!4884132 () Bool)

(declare-fun lt!2000949 () Option!13894)

(declare-fun lt!2000946 () Option!13894)

(assert (=> b!4884132 (= e!3052801 (ite (and (is-None!13893 lt!2000949) (is-None!13893 lt!2000946)) None!13893 (ite (is-None!13893 lt!2000946) lt!2000949 (ite (is-None!13893 lt!2000949) lt!2000946 (ite (>= (size!37024 (_1!33362 (v!49843 lt!2000949))) (size!37024 (_1!33362 (v!49843 lt!2000946)))) lt!2000949 lt!2000946)))))))

(assert (=> b!4884132 (= lt!2000949 call!338933)))

(assert (=> b!4884132 (= lt!2000946 (maxPrefixZipper!608 thiss!14805 (t!364968 rulesArg!165) lt!2000789))))

(assert (= (and d!1569268 c!830524) b!4884131))

(assert (= (and d!1569268 (not c!830524)) b!4884132))

(assert (= (or b!4884131 b!4884132) bm!338928))

(assert (=> d!1569268 m!5887870))

(assert (=> d!1569268 m!5887888))

(assert (=> d!1569268 m!5887890))

(assert (=> d!1569268 m!5887886))

(declare-fun m!5888114 () Bool)

(assert (=> bm!338928 m!5888114))

(declare-fun m!5888116 () Bool)

(assert (=> b!4884132 m!5888116))

(assert (=> b!4883924 d!1569268))

(declare-fun d!1569270 () Bool)

(assert (=> d!1569270 (= (list!17630 (_2!33361 lt!2000784)) (list!17632 (c!830496 (_2!33361 lt!2000784))))))

(declare-fun bs!1175525 () Bool)

(assert (= bs!1175525 d!1569270))

(declare-fun m!5888118 () Bool)

(assert (=> bs!1175525 m!5888118))

(assert (=> b!4883919 d!1569270))

(declare-fun d!1569272 () Bool)

(assert (=> d!1569272 true))

(declare-fun lt!2000953 () Bool)

(declare-fun lambda!243778 () Int)

(declare-fun forall!13067 (List!56322 Int) Bool)

(assert (=> d!1569272 (= lt!2000953 (forall!13067 rulesArg!165 lambda!243778))))

(declare-fun e!3052806 () Bool)

(assert (=> d!1569272 (= lt!2000953 e!3052806)))

(declare-fun res!2085241 () Bool)

(assert (=> d!1569272 (=> res!2085241 e!3052806)))

(assert (=> d!1569272 (= res!2085241 (not (is-Cons!56198 rulesArg!165)))))

(assert (=> d!1569272 (= (rulesValidInductive!3084 thiss!14805 rulesArg!165) lt!2000953)))

(declare-fun b!4884137 () Bool)

(declare-fun e!3052807 () Bool)

(assert (=> b!4884137 (= e!3052806 e!3052807)))

(declare-fun res!2085240 () Bool)

(assert (=> b!4884137 (=> (not res!2085240) (not e!3052807))))

(assert (=> b!4884137 (= res!2085240 (ruleValid!3649 thiss!14805 (h!62646 rulesArg!165)))))

(declare-fun b!4884138 () Bool)

(assert (=> b!4884138 (= e!3052807 (rulesValidInductive!3084 thiss!14805 (t!364968 rulesArg!165)))))

(assert (= (and d!1569272 (not res!2085241)) b!4884137))

(assert (= (and b!4884137 res!2085240) b!4884138))

(declare-fun m!5888120 () Bool)

(assert (=> d!1569272 m!5888120))

(assert (=> b!4884137 m!5888042))

(assert (=> b!4884138 m!5887972))

(assert (=> b!4883918 d!1569272))

(declare-fun d!1569274 () Bool)

(assert (=> d!1569274 (= (inv!72295 (tag!8969 (h!62646 rulesArg!165))) (= (mod (str.len (value!260145 (tag!8969 (h!62646 rulesArg!165)))) 2) 0))))

(assert (=> b!4883912 d!1569274))

(declare-fun d!1569276 () Bool)

(declare-fun res!2085244 () Bool)

(declare-fun e!3052810 () Bool)

(assert (=> d!1569276 (=> (not res!2085244) (not e!3052810))))

(declare-fun semiInverseModEq!3563 (Int Int) Bool)

(assert (=> d!1569276 (= res!2085244 (semiInverseModEq!3563 (toChars!10851 (transformation!8105 (h!62646 rulesArg!165))) (toValue!10992 (transformation!8105 (h!62646 rulesArg!165)))))))

(assert (=> d!1569276 (= (inv!72298 (transformation!8105 (h!62646 rulesArg!165))) e!3052810)))

(declare-fun b!4884143 () Bool)

(declare-fun equivClasses!3442 (Int Int) Bool)

(assert (=> b!4884143 (= e!3052810 (equivClasses!3442 (toChars!10851 (transformation!8105 (h!62646 rulesArg!165))) (toValue!10992 (transformation!8105 (h!62646 rulesArg!165)))))))

(assert (= (and d!1569276 res!2085244) b!4884143))

(declare-fun m!5888122 () Bool)

(assert (=> d!1569276 m!5888122))

(declare-fun m!5888124 () Bool)

(assert (=> b!4884143 m!5888124))

(assert (=> b!4883912 d!1569276))

(declare-fun b!4884156 () Bool)

(declare-fun e!3052819 () Bool)

(declare-fun tp!1374388 () Bool)

(declare-fun tp!1374390 () Bool)

(assert (=> b!4884156 (= e!3052819 (and (inv!72299 (left!40820 (c!830496 input!1236))) tp!1374390 (inv!72299 (right!41150 (c!830496 input!1236))) tp!1374388))))

(declare-fun b!4884158 () Bool)

(declare-fun e!3052820 () Bool)

(declare-fun tp!1374389 () Bool)

(assert (=> b!4884158 (= e!3052820 tp!1374389)))

(declare-fun b!4884157 () Bool)

(declare-fun inv!72306 (IArray!29407) Bool)

(assert (=> b!4884157 (= e!3052819 (and (inv!72306 (xs!17989 (c!830496 input!1236))) e!3052820))))

(assert (=> b!4883921 (= tp!1374366 (and (inv!72299 (c!830496 input!1236)) e!3052819))))

(assert (= (and b!4883921 (is-Node!14673 (c!830496 input!1236))) b!4884156))

(assert (= b!4884157 b!4884158))

(assert (= (and b!4883921 (is-Leaf!24443 (c!830496 input!1236))) b!4884157))

(declare-fun m!5888126 () Bool)

(assert (=> b!4884156 m!5888126))

(declare-fun m!5888128 () Bool)

(assert (=> b!4884156 m!5888128))

(declare-fun m!5888130 () Bool)

(assert (=> b!4884157 m!5888130))

(assert (=> b!4883921 m!5887884))

(declare-fun b!4884171 () Bool)

(declare-fun b_free!131119 () Bool)

(declare-fun b_next!131909 () Bool)

(assert (=> b!4884171 (= b_free!131119 (not b_next!131909))))

(declare-fun tp!1374399 () Bool)

(declare-fun b_and!343951 () Bool)

(assert (=> b!4884171 (= tp!1374399 b_and!343951)))

(declare-fun b_free!131121 () Bool)

(declare-fun b_next!131911 () Bool)

(assert (=> b!4884171 (= b_free!131121 (not b_next!131911))))

(declare-fun tp!1374401 () Bool)

(declare-fun b_and!343953 () Bool)

(assert (=> b!4884171 (= tp!1374401 b_and!343953)))

(declare-fun e!3052830 () Bool)

(assert (=> b!4884171 (= e!3052830 (and tp!1374399 tp!1374401))))

(declare-fun b!4884170 () Bool)

(declare-fun tp!1374400 () Bool)

(declare-fun e!3052831 () Bool)

(assert (=> b!4884170 (= e!3052831 (and tp!1374400 (inv!72295 (tag!8969 (h!62646 (t!364968 rulesArg!165)))) (inv!72298 (transformation!8105 (h!62646 (t!364968 rulesArg!165)))) e!3052830))))

(declare-fun b!4884169 () Bool)

(declare-fun e!3052829 () Bool)

(declare-fun tp!1374402 () Bool)

(assert (=> b!4884169 (= e!3052829 (and e!3052831 tp!1374402))))

(assert (=> b!4883913 (= tp!1374364 e!3052829)))

(assert (= b!4884170 b!4884171))

(assert (= b!4884169 b!4884170))

(assert (= (and b!4883913 (is-Cons!56198 (t!364968 rulesArg!165))) b!4884169))

(declare-fun m!5888132 () Bool)

(assert (=> b!4884170 m!5888132))

(declare-fun m!5888134 () Bool)

(assert (=> b!4884170 m!5888134))

(declare-fun b!4884184 () Bool)

(declare-fun e!3052835 () Bool)

(declare-fun tp!1374416 () Bool)

(assert (=> b!4884184 (= e!3052835 tp!1374416)))

(declare-fun b!4884182 () Bool)

(declare-fun tp_is_empty!35725 () Bool)

(assert (=> b!4884182 (= e!3052835 tp_is_empty!35725)))

(declare-fun b!4884183 () Bool)

(declare-fun tp!1374417 () Bool)

(declare-fun tp!1374413 () Bool)

(assert (=> b!4884183 (= e!3052835 (and tp!1374417 tp!1374413))))

(assert (=> b!4883912 (= tp!1374363 e!3052835)))

(declare-fun b!4884185 () Bool)

(declare-fun tp!1374415 () Bool)

(declare-fun tp!1374414 () Bool)

(assert (=> b!4884185 (= e!3052835 (and tp!1374415 tp!1374414))))

(assert (= (and b!4883912 (is-ElementMatch!13180 (regex!8105 (h!62646 rulesArg!165)))) b!4884182))

(assert (= (and b!4883912 (is-Concat!21596 (regex!8105 (h!62646 rulesArg!165)))) b!4884183))

(assert (= (and b!4883912 (is-Star!13180 (regex!8105 (h!62646 rulesArg!165)))) b!4884184))

(assert (= (and b!4883912 (is-Union!13180 (regex!8105 (h!62646 rulesArg!165)))) b!4884185))

(push 1)

(assert (not b!4884053))

(assert (not d!1569216))

(assert (not d!1569272))

(assert (not b!4884185))

(assert b_and!343951)

(assert (not b!4884143))

(assert (not bm!338928))

(assert (not b!4884004))

(assert (not b!4884118))

(assert b_and!343945)

(assert (not d!1569276))

(assert (not b!4884122))

(assert (not b!4884126))

(assert (not b!4884169))

(assert (not b!4884001))

(assert (not b!4884120))

(assert (not b!4884054))

(assert b_and!343943)

(assert (not b!4884119))

(assert (not d!1569270))

(assert (not b!4884073))

(assert (not b!4884170))

(assert (not b!4883978))

(assert (not b!4883999))

(assert (not b_next!131909))

(assert (not b!4884184))

(assert (not d!1569218))

(assert (not b!4884156))

(assert (not b!4883977))

(assert (not b!4884157))

(assert (not b!4884006))

(assert (not b!4883976))

(assert tp_is_empty!35725)

(assert (not b_next!131911))

(assert b_and!343953)

(assert (not b!4884124))

(assert (not b!4884005))

(assert (not b!4884121))

(assert (not d!1569226))

(assert (not b!4883921))

(assert (not b!4884056))

(assert (not b!4884000))

(assert (not d!1569220))

(assert (not b!4884137))

(assert (not d!1569266))

(assert (not d!1569212))

(assert (not b!4884138))

(assert (not b!4884183))

(assert (not d!1569254))

(assert (not b!4884158))

(assert (not b!4884123))

(assert (not b!4884132))

(assert (not b!4884003))

(assert (not d!1569252))

(assert (not bm!338925))

(assert (not b_next!131901))

(assert (not b!4884058))

(assert (not d!1569268))

(assert (not d!1569264))

(assert (not b!4884057))

(assert (not bm!338916))

(assert (not b_next!131903))

(assert (not b!4884075))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343945)

(assert b_and!343943)

(assert (not b_next!131909))

(assert b_and!343951)

(assert (not b_next!131901))

(assert (not b_next!131903))

(assert (not b_next!131911))

(assert b_and!343953)

(check-sat)

(pop 1)

