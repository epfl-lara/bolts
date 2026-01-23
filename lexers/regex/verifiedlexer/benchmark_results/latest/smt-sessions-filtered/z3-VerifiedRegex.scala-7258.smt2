; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386872 () Bool)

(assert start!386872)

(declare-fun b!4089127 () Bool)

(declare-fun b_free!114289 () Bool)

(declare-fun b_next!114993 () Bool)

(assert (=> b!4089127 (= b_free!114289 (not b_next!114993))))

(declare-fun tp!1238007 () Bool)

(declare-fun b_and!315015 () Bool)

(assert (=> b!4089127 (= tp!1238007 b_and!315015)))

(declare-fun b_free!114291 () Bool)

(declare-fun b_next!114995 () Bool)

(assert (=> b!4089127 (= b_free!114291 (not b_next!114995))))

(declare-fun tp!1238008 () Bool)

(declare-fun b_and!315017 () Bool)

(assert (=> b!4089127 (= tp!1238008 b_and!315017)))

(declare-fun b!4089130 () Bool)

(declare-fun b_free!114293 () Bool)

(declare-fun b_next!114997 () Bool)

(assert (=> b!4089130 (= b_free!114293 (not b_next!114997))))

(declare-fun tp!1238006 () Bool)

(declare-fun b_and!315019 () Bool)

(assert (=> b!4089130 (= tp!1238006 b_and!315019)))

(declare-fun b_free!114295 () Bool)

(declare-fun b_next!114999 () Bool)

(assert (=> b!4089130 (= b_free!114295 (not b_next!114999))))

(declare-fun tp!1238010 () Bool)

(declare-fun b_and!315021 () Bool)

(assert (=> b!4089130 (= tp!1238010 b_and!315021)))

(declare-fun b!4089124 () Bool)

(declare-fun e!2537812 () Bool)

(declare-fun e!2537808 () Bool)

(assert (=> b!4089124 (= e!2537812 (not e!2537808))))

(declare-fun res!1671061 () Bool)

(assert (=> b!4089124 (=> res!1671061 e!2537808)))

(declare-datatypes ((List!43965 0))(
  ( (Nil!43841) (Cons!43841 (h!49261 (_ BitVec 16)) (t!338492 List!43965)) )
))
(declare-datatypes ((TokenValue!7318 0))(
  ( (FloatLiteralValue!14636 (text!51671 List!43965)) (TokenValueExt!7317 (__x!26853 Int)) (Broken!36590 (value!222634 List!43965)) (Object!7441) (End!7318) (Def!7318) (Underscore!7318) (Match!7318) (Else!7318) (Error!7318) (Case!7318) (If!7318) (Extends!7318) (Abstract!7318) (Class!7318) (Val!7318) (DelimiterValue!14636 (del!7378 List!43965)) (KeywordValue!7324 (value!222635 List!43965)) (CommentValue!14636 (value!222636 List!43965)) (WhitespaceValue!14636 (value!222637 List!43965)) (IndentationValue!7318 (value!222638 List!43965)) (String!50339) (Int32!7318) (Broken!36591 (value!222639 List!43965)) (Boolean!7319) (Unit!63366) (OperatorValue!7321 (op!7378 List!43965)) (IdentifierValue!14636 (value!222640 List!43965)) (IdentifierValue!14637 (value!222641 List!43965)) (WhitespaceValue!14637 (value!222642 List!43965)) (True!14636) (False!14636) (Broken!36592 (value!222643 List!43965)) (Broken!36593 (value!222644 List!43965)) (True!14637) (RightBrace!7318) (RightBracket!7318) (Colon!7318) (Null!7318) (Comma!7318) (LeftBracket!7318) (False!14637) (LeftBrace!7318) (ImaginaryLiteralValue!7318 (text!51672 List!43965)) (StringLiteralValue!21954 (value!222645 List!43965)) (EOFValue!7318 (value!222646 List!43965)) (IdentValue!7318 (value!222647 List!43965)) (DelimiterValue!14637 (value!222648 List!43965)) (DedentValue!7318 (value!222649 List!43965)) (NewLineValue!7318 (value!222650 List!43965)) (IntegerValue!21954 (value!222651 (_ BitVec 32)) (text!51673 List!43965)) (IntegerValue!21955 (value!222652 Int) (text!51674 List!43965)) (Times!7318) (Or!7318) (Equal!7318) (Minus!7318) (Broken!36594 (value!222653 List!43965)) (And!7318) (Div!7318) (LessEqual!7318) (Mod!7318) (Concat!19311) (Not!7318) (Plus!7318) (SpaceValue!7318 (value!222654 List!43965)) (IntegerValue!21956 (value!222655 Int) (text!51675 List!43965)) (StringLiteralValue!21955 (text!51676 List!43965)) (FloatLiteralValue!14637 (text!51677 List!43965)) (BytesLiteralValue!7318 (value!222656 List!43965)) (CommentValue!14637 (value!222657 List!43965)) (StringLiteralValue!21956 (value!222658 List!43965)) (ErrorTokenValue!7318 (msg!7379 List!43965)) )
))
(declare-datatypes ((String!50340 0))(
  ( (String!50341 (value!222659 String)) )
))
(declare-datatypes ((C!24172 0))(
  ( (C!24173 (val!14196 Int)) )
))
(declare-datatypes ((Regex!11993 0))(
  ( (ElementMatch!11993 (c!704842 C!24172)) (Concat!19312 (regOne!24498 Regex!11993) (regTwo!24498 Regex!11993)) (EmptyExpr!11993) (Star!11993 (reg!12322 Regex!11993)) (EmptyLang!11993) (Union!11993 (regOne!24499 Regex!11993) (regTwo!24499 Regex!11993)) )
))
(declare-datatypes ((List!43966 0))(
  ( (Nil!43842) (Cons!43842 (h!49262 C!24172) (t!338493 List!43966)) )
))
(declare-datatypes ((IArray!26603 0))(
  ( (IArray!26604 (innerList!13359 List!43966)) )
))
(declare-datatypes ((Conc!13299 0))(
  ( (Node!13299 (left!32953 Conc!13299) (right!33283 Conc!13299) (csize!26828 Int) (cheight!13510 Int)) (Leaf!20558 (xs!16605 IArray!26603) (csize!26829 Int)) (Empty!13299) )
))
(declare-datatypes ((BalanceConc!26192 0))(
  ( (BalanceConc!26193 (c!704843 Conc!13299)) )
))
(declare-datatypes ((TokenValueInjection!14064 0))(
  ( (TokenValueInjection!14065 (toValue!9676 Int) (toChars!9535 Int)) )
))
(declare-datatypes ((Rule!13976 0))(
  ( (Rule!13977 (regex!7088 Regex!11993) (tag!7948 String!50340) (isSeparator!7088 Bool) (transformation!7088 TokenValueInjection!14064)) )
))
(declare-fun r!4213 () Rule!13976)

(declare-fun p!2988 () List!43966)

(declare-fun matchR!5934 (Regex!11993 List!43966) Bool)

(assert (=> b!4089124 (= res!1671061 (not (matchR!5934 (regex!7088 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6677 0))(
  ( (LexerInterfaceExt!6674 (__x!26854 Int)) (Lexer!6675) )
))
(declare-fun thiss!26199 () LexerInterface!6677)

(declare-fun ruleValid!3008 (LexerInterface!6677 Rule!13976) Bool)

(assert (=> b!4089124 (ruleValid!3008 thiss!26199 r!4213)))

(declare-datatypes ((List!43967 0))(
  ( (Nil!43843) (Cons!43843 (h!49263 Rule!13976) (t!338494 List!43967)) )
))
(declare-fun rules!3870 () List!43967)

(declare-datatypes ((Unit!63367 0))(
  ( (Unit!63368) )
))
(declare-fun lt!1462557 () Unit!63367)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2074 (LexerInterface!6677 Rule!13976 List!43967) Unit!63367)

(assert (=> b!4089124 (= lt!1462557 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2074 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4089125 () Bool)

(declare-fun e!2537813 () Bool)

(declare-fun e!2537816 () Bool)

(declare-fun tp!1238005 () Bool)

(declare-fun inv!58539 (String!50340) Bool)

(declare-fun inv!58541 (TokenValueInjection!14064) Bool)

(assert (=> b!4089125 (= e!2537813 (and tp!1238005 (inv!58539 (tag!7948 r!4213)) (inv!58541 (transformation!7088 r!4213)) e!2537816))))

(assert (=> b!4089127 (= e!2537816 (and tp!1238007 tp!1238008))))

(declare-fun b!4089128 () Bool)

(declare-fun res!1671059 () Bool)

(declare-fun e!2537811 () Bool)

(assert (=> b!4089128 (=> (not res!1671059) (not e!2537811))))

(declare-fun isEmpty!26217 (List!43967) Bool)

(assert (=> b!4089128 (= res!1671059 (not (isEmpty!26217 rules!3870)))))

(declare-fun b!4089129 () Bool)

(declare-fun e!2537817 () Bool)

(declare-fun tp_is_empty!20989 () Bool)

(declare-fun tp!1238002 () Bool)

(assert (=> b!4089129 (= e!2537817 (and tp_is_empty!20989 tp!1238002))))

(declare-fun e!2537820 () Bool)

(assert (=> b!4089130 (= e!2537820 (and tp!1238006 tp!1238010))))

(declare-fun b!4089131 () Bool)

(declare-fun res!1671060 () Bool)

(declare-fun e!2537809 () Bool)

(assert (=> b!4089131 (=> res!1671060 e!2537809)))

(assert (=> b!4089131 (= res!1671060 (isEmpty!26217 (t!338494 rules!3870)))))

(declare-fun b!4089132 () Bool)

(declare-fun e!2537814 () Bool)

(declare-fun e!2537807 () Bool)

(declare-fun tp!1238003 () Bool)

(assert (=> b!4089132 (= e!2537814 (and e!2537807 tp!1238003))))

(declare-fun b!4089133 () Bool)

(declare-fun e!2537819 () Bool)

(declare-fun tp!1238001 () Bool)

(assert (=> b!4089133 (= e!2537819 (and tp_is_empty!20989 tp!1238001))))

(declare-fun b!4089126 () Bool)

(declare-fun res!1671063 () Bool)

(assert (=> b!4089126 (=> (not res!1671063) (not e!2537811))))

(declare-fun isEmpty!26218 (List!43966) Bool)

(assert (=> b!4089126 (= res!1671063 (not (isEmpty!26218 p!2988)))))

(declare-fun res!1671056 () Bool)

(assert (=> start!386872 (=> (not res!1671056) (not e!2537811))))

(get-info :version)

(assert (=> start!386872 (= res!1671056 ((_ is Lexer!6675) thiss!26199))))

(assert (=> start!386872 e!2537811))

(assert (=> start!386872 true))

(assert (=> start!386872 e!2537817))

(assert (=> start!386872 e!2537814))

(assert (=> start!386872 e!2537819))

(declare-fun e!2537815 () Bool)

(assert (=> start!386872 e!2537815))

(assert (=> start!386872 e!2537813))

(declare-fun b!4089134 () Bool)

(declare-fun res!1671062 () Bool)

(assert (=> b!4089134 (=> (not res!1671062) (not e!2537811))))

(declare-fun suffix!1518 () List!43966)

(declare-fun input!3411 () List!43966)

(declare-fun ++!11494 (List!43966 List!43966) List!43966)

(assert (=> b!4089134 (= res!1671062 (= input!3411 (++!11494 p!2988 suffix!1518)))))

(declare-fun b!4089135 () Bool)

(declare-fun tp!1238009 () Bool)

(assert (=> b!4089135 (= e!2537815 (and tp_is_empty!20989 tp!1238009))))

(declare-fun b!4089136 () Bool)

(assert (=> b!4089136 (= e!2537808 e!2537809)))

(declare-fun res!1671058 () Bool)

(assert (=> b!4089136 (=> res!1671058 e!2537809)))

(declare-datatypes ((Token!13302 0))(
  ( (Token!13303 (value!222660 TokenValue!7318) (rule!10224 Rule!13976) (size!32746 Int) (originalCharacters!7682 List!43966)) )
))
(declare-datatypes ((tuple2!42776 0))(
  ( (tuple2!42777 (_1!24522 Token!13302) (_2!24522 List!43966)) )
))
(declare-datatypes ((Option!9494 0))(
  ( (None!9493) (Some!9493 (v!39975 tuple2!42776)) )
))
(declare-fun isEmpty!26219 (Option!9494) Bool)

(declare-fun maxPrefixOneRule!2949 (LexerInterface!6677 Rule!13976 List!43966) Option!9494)

(assert (=> b!4089136 (= res!1671058 (not (isEmpty!26219 (maxPrefixOneRule!2949 thiss!26199 (h!49263 rules!3870) input!3411))))))

(declare-fun rulesInvariant!6020 (LexerInterface!6677 List!43967) Bool)

(assert (=> b!4089136 (rulesInvariant!6020 thiss!26199 (t!338494 rules!3870))))

(declare-fun lt!1462559 () Unit!63367)

(declare-fun lemmaInvariantOnRulesThenOnTail!790 (LexerInterface!6677 Rule!13976 List!43967) Unit!63367)

(assert (=> b!4089136 (= lt!1462559 (lemmaInvariantOnRulesThenOnTail!790 thiss!26199 (h!49263 rules!3870) (t!338494 rules!3870)))))

(declare-fun tp!1238004 () Bool)

(declare-fun b!4089137 () Bool)

(assert (=> b!4089137 (= e!2537807 (and tp!1238004 (inv!58539 (tag!7948 (h!49263 rules!3870))) (inv!58541 (transformation!7088 (h!49263 rules!3870))) e!2537820))))

(declare-fun b!4089138 () Bool)

(declare-fun contains!8767 (List!43967 Rule!13976) Bool)

(assert (=> b!4089138 (= e!2537809 (contains!8767 (t!338494 rules!3870) r!4213))))

(declare-fun b!4089139 () Bool)

(declare-fun res!1671057 () Bool)

(assert (=> b!4089139 (=> res!1671057 e!2537808)))

(assert (=> b!4089139 (= res!1671057 (or (and ((_ is Cons!43843) rules!3870) (= (h!49263 rules!3870) r!4213)) (not ((_ is Cons!43843) rules!3870)) (= (h!49263 rules!3870) r!4213)))))

(declare-fun b!4089140 () Bool)

(assert (=> b!4089140 (= e!2537811 e!2537812)))

(declare-fun res!1671053 () Bool)

(assert (=> b!4089140 (=> (not res!1671053) (not e!2537812))))

(declare-fun lt!1462556 () BalanceConc!26192)

(declare-fun maxPrefix!3967 (LexerInterface!6677 List!43967 List!43966) Option!9494)

(declare-fun apply!10271 (TokenValueInjection!14064 BalanceConc!26192) TokenValue!7318)

(declare-fun size!32747 (List!43966) Int)

(assert (=> b!4089140 (= res!1671053 (= (maxPrefix!3967 thiss!26199 rules!3870 input!3411) (Some!9493 (tuple2!42777 (Token!13303 (apply!10271 (transformation!7088 r!4213) lt!1462556) r!4213 (size!32747 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1462558 () Unit!63367)

(declare-fun lemmaSemiInverse!2055 (TokenValueInjection!14064 BalanceConc!26192) Unit!63367)

(assert (=> b!4089140 (= lt!1462558 (lemmaSemiInverse!2055 (transformation!7088 r!4213) lt!1462556))))

(declare-fun seqFromList!5305 (List!43966) BalanceConc!26192)

(assert (=> b!4089140 (= lt!1462556 (seqFromList!5305 p!2988))))

(declare-fun b!4089141 () Bool)

(declare-fun res!1671054 () Bool)

(assert (=> b!4089141 (=> (not res!1671054) (not e!2537811))))

(assert (=> b!4089141 (= res!1671054 (contains!8767 rules!3870 r!4213))))

(declare-fun b!4089142 () Bool)

(declare-fun res!1671055 () Bool)

(assert (=> b!4089142 (=> (not res!1671055) (not e!2537811))))

(assert (=> b!4089142 (= res!1671055 (rulesInvariant!6020 thiss!26199 rules!3870))))

(assert (= (and start!386872 res!1671056) b!4089128))

(assert (= (and b!4089128 res!1671059) b!4089142))

(assert (= (and b!4089142 res!1671055) b!4089141))

(assert (= (and b!4089141 res!1671054) b!4089134))

(assert (= (and b!4089134 res!1671062) b!4089126))

(assert (= (and b!4089126 res!1671063) b!4089140))

(assert (= (and b!4089140 res!1671053) b!4089124))

(assert (= (and b!4089124 (not res!1671061)) b!4089139))

(assert (= (and b!4089139 (not res!1671057)) b!4089136))

(assert (= (and b!4089136 (not res!1671058)) b!4089131))

(assert (= (and b!4089131 (not res!1671060)) b!4089138))

(assert (= (and start!386872 ((_ is Cons!43842) suffix!1518)) b!4089129))

(assert (= b!4089137 b!4089130))

(assert (= b!4089132 b!4089137))

(assert (= (and start!386872 ((_ is Cons!43843) rules!3870)) b!4089132))

(assert (= (and start!386872 ((_ is Cons!43842) p!2988)) b!4089133))

(assert (= (and start!386872 ((_ is Cons!43842) input!3411)) b!4089135))

(assert (= b!4089125 b!4089127))

(assert (= start!386872 b!4089125))

(declare-fun m!4696007 () Bool)

(assert (=> b!4089134 m!4696007))

(declare-fun m!4696009 () Bool)

(assert (=> b!4089140 m!4696009))

(declare-fun m!4696011 () Bool)

(assert (=> b!4089140 m!4696011))

(declare-fun m!4696013 () Bool)

(assert (=> b!4089140 m!4696013))

(declare-fun m!4696015 () Bool)

(assert (=> b!4089140 m!4696015))

(declare-fun m!4696017 () Bool)

(assert (=> b!4089140 m!4696017))

(declare-fun m!4696019 () Bool)

(assert (=> b!4089141 m!4696019))

(declare-fun m!4696021 () Bool)

(assert (=> b!4089125 m!4696021))

(declare-fun m!4696023 () Bool)

(assert (=> b!4089125 m!4696023))

(declare-fun m!4696025 () Bool)

(assert (=> b!4089126 m!4696025))

(declare-fun m!4696027 () Bool)

(assert (=> b!4089136 m!4696027))

(assert (=> b!4089136 m!4696027))

(declare-fun m!4696029 () Bool)

(assert (=> b!4089136 m!4696029))

(declare-fun m!4696031 () Bool)

(assert (=> b!4089136 m!4696031))

(declare-fun m!4696033 () Bool)

(assert (=> b!4089136 m!4696033))

(declare-fun m!4696035 () Bool)

(assert (=> b!4089124 m!4696035))

(declare-fun m!4696037 () Bool)

(assert (=> b!4089124 m!4696037))

(declare-fun m!4696039 () Bool)

(assert (=> b!4089124 m!4696039))

(declare-fun m!4696041 () Bool)

(assert (=> b!4089137 m!4696041))

(declare-fun m!4696043 () Bool)

(assert (=> b!4089137 m!4696043))

(declare-fun m!4696045 () Bool)

(assert (=> b!4089138 m!4696045))

(declare-fun m!4696047 () Bool)

(assert (=> b!4089142 m!4696047))

(declare-fun m!4696049 () Bool)

(assert (=> b!4089128 m!4696049))

(declare-fun m!4696051 () Bool)

(assert (=> b!4089131 m!4696051))

(check-sat (not b!4089129) (not b!4089138) (not b!4089137) (not b!4089140) (not b!4089135) (not b!4089136) (not b!4089142) b_and!315021 (not b_next!114995) (not b!4089126) (not b!4089125) (not b_next!114997) (not b!4089141) (not b!4089133) (not b!4089128) (not b!4089132) (not b_next!114993) (not b!4089124) b_and!315017 b_and!315015 (not b_next!114999) tp_is_empty!20989 (not b!4089134) (not b!4089131) b_and!315019)
(check-sat (not b_next!114997) (not b_next!114993) b_and!315021 (not b_next!114995) (not b_next!114999) b_and!315019 b_and!315017 b_and!315015)
(get-model)

(declare-fun b!4089171 () Bool)

(declare-fun e!2537840 () Bool)

(declare-fun nullable!4231 (Regex!11993) Bool)

(assert (=> b!4089171 (= e!2537840 (nullable!4231 (regex!7088 r!4213)))))

(declare-fun b!4089172 () Bool)

(declare-fun res!1671093 () Bool)

(declare-fun e!2537835 () Bool)

(assert (=> b!4089172 (=> (not res!1671093) (not e!2537835))))

(declare-fun call!289057 () Bool)

(assert (=> b!4089172 (= res!1671093 (not call!289057))))

(declare-fun b!4089173 () Bool)

(declare-fun e!2537836 () Bool)

(declare-fun lt!1462562 () Bool)

(assert (=> b!4089173 (= e!2537836 (= lt!1462562 call!289057))))

(declare-fun b!4089174 () Bool)

(declare-fun e!2537839 () Bool)

(declare-fun e!2537837 () Bool)

(assert (=> b!4089174 (= e!2537839 e!2537837)))

(declare-fun res!1671087 () Bool)

(assert (=> b!4089174 (=> res!1671087 e!2537837)))

(assert (=> b!4089174 (= res!1671087 call!289057)))

(declare-fun b!4089175 () Bool)

(declare-fun res!1671089 () Bool)

(assert (=> b!4089175 (=> res!1671089 e!2537837)))

(declare-fun tail!6377 (List!43966) List!43966)

(assert (=> b!4089175 (= res!1671089 (not (isEmpty!26218 (tail!6377 p!2988))))))

(declare-fun b!4089176 () Bool)

(declare-fun res!1671088 () Bool)

(declare-fun e!2537841 () Bool)

(assert (=> b!4089176 (=> res!1671088 e!2537841)))

(assert (=> b!4089176 (= res!1671088 (not ((_ is ElementMatch!11993) (regex!7088 r!4213))))))

(declare-fun e!2537838 () Bool)

(assert (=> b!4089176 (= e!2537838 e!2537841)))

(declare-fun b!4089177 () Bool)

(assert (=> b!4089177 (= e!2537836 e!2537838)))

(declare-fun c!704852 () Bool)

(assert (=> b!4089177 (= c!704852 ((_ is EmptyLang!11993) (regex!7088 r!4213)))))

(declare-fun b!4089178 () Bool)

(declare-fun res!1671090 () Bool)

(assert (=> b!4089178 (=> (not res!1671090) (not e!2537835))))

(assert (=> b!4089178 (= res!1671090 (isEmpty!26218 (tail!6377 p!2988)))))

(declare-fun d!1214159 () Bool)

(assert (=> d!1214159 e!2537836))

(declare-fun c!704851 () Bool)

(assert (=> d!1214159 (= c!704851 ((_ is EmptyExpr!11993) (regex!7088 r!4213)))))

(assert (=> d!1214159 (= lt!1462562 e!2537840)))

(declare-fun c!704850 () Bool)

(assert (=> d!1214159 (= c!704850 (isEmpty!26218 p!2988))))

(declare-fun validRegex!5432 (Regex!11993) Bool)

(assert (=> d!1214159 (validRegex!5432 (regex!7088 r!4213))))

(assert (=> d!1214159 (= (matchR!5934 (regex!7088 r!4213) p!2988) lt!1462562)))

(declare-fun b!4089179 () Bool)

(declare-fun derivativeStep!3633 (Regex!11993 C!24172) Regex!11993)

(declare-fun head!8643 (List!43966) C!24172)

(assert (=> b!4089179 (= e!2537840 (matchR!5934 (derivativeStep!3633 (regex!7088 r!4213) (head!8643 p!2988)) (tail!6377 p!2988)))))

(declare-fun b!4089180 () Bool)

(assert (=> b!4089180 (= e!2537841 e!2537839)))

(declare-fun res!1671091 () Bool)

(assert (=> b!4089180 (=> (not res!1671091) (not e!2537839))))

(assert (=> b!4089180 (= res!1671091 (not lt!1462562))))

(declare-fun b!4089181 () Bool)

(assert (=> b!4089181 (= e!2537838 (not lt!1462562))))

(declare-fun bm!289052 () Bool)

(assert (=> bm!289052 (= call!289057 (isEmpty!26218 p!2988))))

(declare-fun b!4089182 () Bool)

(assert (=> b!4089182 (= e!2537837 (not (= (head!8643 p!2988) (c!704842 (regex!7088 r!4213)))))))

(declare-fun b!4089183 () Bool)

(assert (=> b!4089183 (= e!2537835 (= (head!8643 p!2988) (c!704842 (regex!7088 r!4213))))))

(declare-fun b!4089184 () Bool)

(declare-fun res!1671092 () Bool)

(assert (=> b!4089184 (=> res!1671092 e!2537841)))

(assert (=> b!4089184 (= res!1671092 e!2537835)))

(declare-fun res!1671094 () Bool)

(assert (=> b!4089184 (=> (not res!1671094) (not e!2537835))))

(assert (=> b!4089184 (= res!1671094 lt!1462562)))

(assert (= (and d!1214159 c!704850) b!4089171))

(assert (= (and d!1214159 (not c!704850)) b!4089179))

(assert (= (and d!1214159 c!704851) b!4089173))

(assert (= (and d!1214159 (not c!704851)) b!4089177))

(assert (= (and b!4089177 c!704852) b!4089181))

(assert (= (and b!4089177 (not c!704852)) b!4089176))

(assert (= (and b!4089176 (not res!1671088)) b!4089184))

(assert (= (and b!4089184 res!1671094) b!4089172))

(assert (= (and b!4089172 res!1671093) b!4089178))

(assert (= (and b!4089178 res!1671090) b!4089183))

(assert (= (and b!4089184 (not res!1671092)) b!4089180))

(assert (= (and b!4089180 res!1671091) b!4089174))

(assert (= (and b!4089174 (not res!1671087)) b!4089175))

(assert (= (and b!4089175 (not res!1671089)) b!4089182))

(assert (= (or b!4089173 b!4089172 b!4089174) bm!289052))

(declare-fun m!4696053 () Bool)

(assert (=> b!4089175 m!4696053))

(assert (=> b!4089175 m!4696053))

(declare-fun m!4696055 () Bool)

(assert (=> b!4089175 m!4696055))

(declare-fun m!4696057 () Bool)

(assert (=> b!4089179 m!4696057))

(assert (=> b!4089179 m!4696057))

(declare-fun m!4696059 () Bool)

(assert (=> b!4089179 m!4696059))

(assert (=> b!4089179 m!4696053))

(assert (=> b!4089179 m!4696059))

(assert (=> b!4089179 m!4696053))

(declare-fun m!4696061 () Bool)

(assert (=> b!4089179 m!4696061))

(declare-fun m!4696063 () Bool)

(assert (=> b!4089171 m!4696063))

(assert (=> bm!289052 m!4696025))

(assert (=> d!1214159 m!4696025))

(declare-fun m!4696065 () Bool)

(assert (=> d!1214159 m!4696065))

(assert (=> b!4089182 m!4696057))

(assert (=> b!4089178 m!4696053))

(assert (=> b!4089178 m!4696053))

(assert (=> b!4089178 m!4696055))

(assert (=> b!4089183 m!4696057))

(assert (=> b!4089124 d!1214159))

(declare-fun d!1214163 () Bool)

(declare-fun res!1671099 () Bool)

(declare-fun e!2537844 () Bool)

(assert (=> d!1214163 (=> (not res!1671099) (not e!2537844))))

(assert (=> d!1214163 (= res!1671099 (validRegex!5432 (regex!7088 r!4213)))))

(assert (=> d!1214163 (= (ruleValid!3008 thiss!26199 r!4213) e!2537844)))

(declare-fun b!4089189 () Bool)

(declare-fun res!1671100 () Bool)

(assert (=> b!4089189 (=> (not res!1671100) (not e!2537844))))

(assert (=> b!4089189 (= res!1671100 (not (nullable!4231 (regex!7088 r!4213))))))

(declare-fun b!4089190 () Bool)

(assert (=> b!4089190 (= e!2537844 (not (= (tag!7948 r!4213) (String!50341 ""))))))

(assert (= (and d!1214163 res!1671099) b!4089189))

(assert (= (and b!4089189 res!1671100) b!4089190))

(assert (=> d!1214163 m!4696065))

(assert (=> b!4089189 m!4696063))

(assert (=> b!4089124 d!1214163))

(declare-fun d!1214165 () Bool)

(assert (=> d!1214165 (ruleValid!3008 thiss!26199 r!4213)))

(declare-fun lt!1462567 () Unit!63367)

(declare-fun choose!24973 (LexerInterface!6677 Rule!13976 List!43967) Unit!63367)

(assert (=> d!1214165 (= lt!1462567 (choose!24973 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1214165 (contains!8767 rules!3870 r!4213)))

(assert (=> d!1214165 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2074 thiss!26199 r!4213 rules!3870) lt!1462567)))

(declare-fun bs!593235 () Bool)

(assert (= bs!593235 d!1214165))

(assert (=> bs!593235 m!4696037))

(declare-fun m!4696067 () Bool)

(assert (=> bs!593235 m!4696067))

(assert (=> bs!593235 m!4696019))

(assert (=> b!4089124 d!1214165))

(declare-fun b!4089230 () Bool)

(declare-fun e!2537864 () Bool)

(declare-fun lt!1462570 () List!43966)

(assert (=> b!4089230 (= e!2537864 (or (not (= suffix!1518 Nil!43842)) (= lt!1462570 p!2988)))))

(declare-fun b!4089229 () Bool)

(declare-fun res!1671121 () Bool)

(assert (=> b!4089229 (=> (not res!1671121) (not e!2537864))))

(assert (=> b!4089229 (= res!1671121 (= (size!32747 lt!1462570) (+ (size!32747 p!2988) (size!32747 suffix!1518))))))

(declare-fun b!4089227 () Bool)

(declare-fun e!2537863 () List!43966)

(assert (=> b!4089227 (= e!2537863 suffix!1518)))

(declare-fun d!1214167 () Bool)

(assert (=> d!1214167 e!2537864))

(declare-fun res!1671122 () Bool)

(assert (=> d!1214167 (=> (not res!1671122) (not e!2537864))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6748 (List!43966) (InoxSet C!24172))

(assert (=> d!1214167 (= res!1671122 (= (content!6748 lt!1462570) ((_ map or) (content!6748 p!2988) (content!6748 suffix!1518))))))

(assert (=> d!1214167 (= lt!1462570 e!2537863)))

(declare-fun c!704861 () Bool)

(assert (=> d!1214167 (= c!704861 ((_ is Nil!43842) p!2988))))

(assert (=> d!1214167 (= (++!11494 p!2988 suffix!1518) lt!1462570)))

(declare-fun b!4089228 () Bool)

(assert (=> b!4089228 (= e!2537863 (Cons!43842 (h!49262 p!2988) (++!11494 (t!338493 p!2988) suffix!1518)))))

(assert (= (and d!1214167 c!704861) b!4089227))

(assert (= (and d!1214167 (not c!704861)) b!4089228))

(assert (= (and d!1214167 res!1671122) b!4089229))

(assert (= (and b!4089229 res!1671121) b!4089230))

(declare-fun m!4696069 () Bool)

(assert (=> b!4089229 m!4696069))

(assert (=> b!4089229 m!4696013))

(declare-fun m!4696071 () Bool)

(assert (=> b!4089229 m!4696071))

(declare-fun m!4696073 () Bool)

(assert (=> d!1214167 m!4696073))

(declare-fun m!4696075 () Bool)

(assert (=> d!1214167 m!4696075))

(declare-fun m!4696077 () Bool)

(assert (=> d!1214167 m!4696077))

(declare-fun m!4696079 () Bool)

(assert (=> b!4089228 m!4696079))

(assert (=> b!4089134 d!1214167))

(declare-fun d!1214169 () Bool)

(assert (=> d!1214169 (= (inv!58539 (tag!7948 (h!49263 rules!3870))) (= (mod (str.len (value!222659 (tag!7948 (h!49263 rules!3870)))) 2) 0))))

(assert (=> b!4089137 d!1214169))

(declare-fun d!1214171 () Bool)

(declare-fun res!1671137 () Bool)

(declare-fun e!2537876 () Bool)

(assert (=> d!1214171 (=> (not res!1671137) (not e!2537876))))

(declare-fun semiInverseModEq!3044 (Int Int) Bool)

(assert (=> d!1214171 (= res!1671137 (semiInverseModEq!3044 (toChars!9535 (transformation!7088 (h!49263 rules!3870))) (toValue!9676 (transformation!7088 (h!49263 rules!3870)))))))

(assert (=> d!1214171 (= (inv!58541 (transformation!7088 (h!49263 rules!3870))) e!2537876)))

(declare-fun b!4089251 () Bool)

(declare-fun equivClasses!2943 (Int Int) Bool)

(assert (=> b!4089251 (= e!2537876 (equivClasses!2943 (toChars!9535 (transformation!7088 (h!49263 rules!3870))) (toValue!9676 (transformation!7088 (h!49263 rules!3870)))))))

(assert (= (and d!1214171 res!1671137) b!4089251))

(declare-fun m!4696095 () Bool)

(assert (=> d!1214171 m!4696095))

(declare-fun m!4696097 () Bool)

(assert (=> b!4089251 m!4696097))

(assert (=> b!4089137 d!1214171))

(declare-fun d!1214175 () Bool)

(assert (=> d!1214175 (= (isEmpty!26218 p!2988) ((_ is Nil!43842) p!2988))))

(assert (=> b!4089126 d!1214175))

(declare-fun d!1214179 () Bool)

(assert (=> d!1214179 (= (isEmpty!26219 (maxPrefixOneRule!2949 thiss!26199 (h!49263 rules!3870) input!3411)) (not ((_ is Some!9493) (maxPrefixOneRule!2949 thiss!26199 (h!49263 rules!3870) input!3411))))))

(assert (=> b!4089136 d!1214179))

(declare-fun b!4089305 () Bool)

(declare-fun res!1671184 () Bool)

(declare-fun e!2537906 () Bool)

(assert (=> b!4089305 (=> (not res!1671184) (not e!2537906))))

(declare-fun lt!1462603 () Option!9494)

(declare-fun list!16278 (BalanceConc!26192) List!43966)

(declare-fun charsOf!4850 (Token!13302) BalanceConc!26192)

(declare-fun get!14378 (Option!9494) tuple2!42776)

(assert (=> b!4089305 (= res!1671184 (= (++!11494 (list!16278 (charsOf!4850 (_1!24522 (get!14378 lt!1462603)))) (_2!24522 (get!14378 lt!1462603))) input!3411))))

(declare-fun b!4089306 () Bool)

(declare-fun res!1671183 () Bool)

(assert (=> b!4089306 (=> (not res!1671183) (not e!2537906))))

(assert (=> b!4089306 (= res!1671183 (= (value!222660 (_1!24522 (get!14378 lt!1462603))) (apply!10271 (transformation!7088 (rule!10224 (_1!24522 (get!14378 lt!1462603)))) (seqFromList!5305 (originalCharacters!7682 (_1!24522 (get!14378 lt!1462603)))))))))

(declare-fun d!1214181 () Bool)

(declare-fun e!2537905 () Bool)

(assert (=> d!1214181 e!2537905))

(declare-fun res!1671181 () Bool)

(assert (=> d!1214181 (=> res!1671181 e!2537905)))

(assert (=> d!1214181 (= res!1671181 (isEmpty!26219 lt!1462603))))

(declare-fun e!2537907 () Option!9494)

(assert (=> d!1214181 (= lt!1462603 e!2537907)))

(declare-fun c!704870 () Bool)

(declare-datatypes ((tuple2!42780 0))(
  ( (tuple2!42781 (_1!24524 List!43966) (_2!24524 List!43966)) )
))
(declare-fun lt!1462602 () tuple2!42780)

(assert (=> d!1214181 (= c!704870 (isEmpty!26218 (_1!24524 lt!1462602)))))

(declare-fun findLongestMatch!1369 (Regex!11993 List!43966) tuple2!42780)

(assert (=> d!1214181 (= lt!1462602 (findLongestMatch!1369 (regex!7088 (h!49263 rules!3870)) input!3411))))

(assert (=> d!1214181 (ruleValid!3008 thiss!26199 (h!49263 rules!3870))))

(assert (=> d!1214181 (= (maxPrefixOneRule!2949 thiss!26199 (h!49263 rules!3870) input!3411) lt!1462603)))

(declare-fun b!4089307 () Bool)

(assert (=> b!4089307 (= e!2537906 (= (size!32746 (_1!24522 (get!14378 lt!1462603))) (size!32747 (originalCharacters!7682 (_1!24522 (get!14378 lt!1462603))))))))

(declare-fun b!4089308 () Bool)

(assert (=> b!4089308 (= e!2537907 None!9493)))

(declare-fun b!4089309 () Bool)

(assert (=> b!4089309 (= e!2537905 e!2537906)))

(declare-fun res!1671182 () Bool)

(assert (=> b!4089309 (=> (not res!1671182) (not e!2537906))))

(assert (=> b!4089309 (= res!1671182 (matchR!5934 (regex!7088 (h!49263 rules!3870)) (list!16278 (charsOf!4850 (_1!24522 (get!14378 lt!1462603))))))))

(declare-fun b!4089310 () Bool)

(declare-fun size!32749 (BalanceConc!26192) Int)

(assert (=> b!4089310 (= e!2537907 (Some!9493 (tuple2!42777 (Token!13303 (apply!10271 (transformation!7088 (h!49263 rules!3870)) (seqFromList!5305 (_1!24524 lt!1462602))) (h!49263 rules!3870) (size!32749 (seqFromList!5305 (_1!24524 lt!1462602))) (_1!24524 lt!1462602)) (_2!24524 lt!1462602))))))

(declare-fun lt!1462600 () Unit!63367)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1429 (Regex!11993 List!43966) Unit!63367)

(assert (=> b!4089310 (= lt!1462600 (longestMatchIsAcceptedByMatchOrIsEmpty!1429 (regex!7088 (h!49263 rules!3870)) input!3411))))

(declare-fun res!1671186 () Bool)

(declare-fun findLongestMatchInner!1456 (Regex!11993 List!43966 Int List!43966 List!43966 Int) tuple2!42780)

(assert (=> b!4089310 (= res!1671186 (isEmpty!26218 (_1!24524 (findLongestMatchInner!1456 (regex!7088 (h!49263 rules!3870)) Nil!43842 (size!32747 Nil!43842) input!3411 input!3411 (size!32747 input!3411)))))))

(declare-fun e!2537904 () Bool)

(assert (=> b!4089310 (=> res!1671186 e!2537904)))

(assert (=> b!4089310 e!2537904))

(declare-fun lt!1462604 () Unit!63367)

(assert (=> b!4089310 (= lt!1462604 lt!1462600)))

(declare-fun lt!1462601 () Unit!63367)

(assert (=> b!4089310 (= lt!1462601 (lemmaSemiInverse!2055 (transformation!7088 (h!49263 rules!3870)) (seqFromList!5305 (_1!24524 lt!1462602))))))

(declare-fun b!4089311 () Bool)

(declare-fun res!1671187 () Bool)

(assert (=> b!4089311 (=> (not res!1671187) (not e!2537906))))

(assert (=> b!4089311 (= res!1671187 (< (size!32747 (_2!24522 (get!14378 lt!1462603))) (size!32747 input!3411)))))

(declare-fun b!4089312 () Bool)

(assert (=> b!4089312 (= e!2537904 (matchR!5934 (regex!7088 (h!49263 rules!3870)) (_1!24524 (findLongestMatchInner!1456 (regex!7088 (h!49263 rules!3870)) Nil!43842 (size!32747 Nil!43842) input!3411 input!3411 (size!32747 input!3411)))))))

(declare-fun b!4089313 () Bool)

(declare-fun res!1671185 () Bool)

(assert (=> b!4089313 (=> (not res!1671185) (not e!2537906))))

(assert (=> b!4089313 (= res!1671185 (= (rule!10224 (_1!24522 (get!14378 lt!1462603))) (h!49263 rules!3870)))))

(assert (= (and d!1214181 c!704870) b!4089308))

(assert (= (and d!1214181 (not c!704870)) b!4089310))

(assert (= (and b!4089310 (not res!1671186)) b!4089312))

(assert (= (and d!1214181 (not res!1671181)) b!4089309))

(assert (= (and b!4089309 res!1671182) b!4089305))

(assert (= (and b!4089305 res!1671184) b!4089311))

(assert (= (and b!4089311 res!1671187) b!4089313))

(assert (= (and b!4089313 res!1671185) b!4089306))

(assert (= (and b!4089306 res!1671183) b!4089307))

(declare-fun m!4696167 () Bool)

(assert (=> b!4089307 m!4696167))

(declare-fun m!4696169 () Bool)

(assert (=> b!4089307 m!4696169))

(assert (=> b!4089309 m!4696167))

(declare-fun m!4696171 () Bool)

(assert (=> b!4089309 m!4696171))

(assert (=> b!4089309 m!4696171))

(declare-fun m!4696173 () Bool)

(assert (=> b!4089309 m!4696173))

(assert (=> b!4089309 m!4696173))

(declare-fun m!4696175 () Bool)

(assert (=> b!4089309 m!4696175))

(assert (=> b!4089311 m!4696167))

(declare-fun m!4696177 () Bool)

(assert (=> b!4089311 m!4696177))

(declare-fun m!4696179 () Bool)

(assert (=> b!4089311 m!4696179))

(assert (=> b!4089313 m!4696167))

(declare-fun m!4696181 () Bool)

(assert (=> d!1214181 m!4696181))

(declare-fun m!4696183 () Bool)

(assert (=> d!1214181 m!4696183))

(declare-fun m!4696185 () Bool)

(assert (=> d!1214181 m!4696185))

(declare-fun m!4696187 () Bool)

(assert (=> d!1214181 m!4696187))

(assert (=> b!4089305 m!4696167))

(assert (=> b!4089305 m!4696171))

(assert (=> b!4089305 m!4696171))

(assert (=> b!4089305 m!4696173))

(assert (=> b!4089305 m!4696173))

(declare-fun m!4696189 () Bool)

(assert (=> b!4089305 m!4696189))

(assert (=> b!4089306 m!4696167))

(declare-fun m!4696191 () Bool)

(assert (=> b!4089306 m!4696191))

(assert (=> b!4089306 m!4696191))

(declare-fun m!4696193 () Bool)

(assert (=> b!4089306 m!4696193))

(declare-fun m!4696195 () Bool)

(assert (=> b!4089310 m!4696195))

(declare-fun m!4696197 () Bool)

(assert (=> b!4089310 m!4696197))

(assert (=> b!4089310 m!4696195))

(declare-fun m!4696199 () Bool)

(assert (=> b!4089310 m!4696199))

(declare-fun m!4696201 () Bool)

(assert (=> b!4089310 m!4696201))

(assert (=> b!4089310 m!4696195))

(declare-fun m!4696203 () Bool)

(assert (=> b!4089310 m!4696203))

(assert (=> b!4089310 m!4696195))

(declare-fun m!4696205 () Bool)

(assert (=> b!4089310 m!4696205))

(assert (=> b!4089310 m!4696179))

(declare-fun m!4696207 () Bool)

(assert (=> b!4089310 m!4696207))

(assert (=> b!4089310 m!4696201))

(assert (=> b!4089310 m!4696179))

(declare-fun m!4696209 () Bool)

(assert (=> b!4089310 m!4696209))

(assert (=> b!4089312 m!4696201))

(assert (=> b!4089312 m!4696179))

(assert (=> b!4089312 m!4696201))

(assert (=> b!4089312 m!4696179))

(assert (=> b!4089312 m!4696209))

(declare-fun m!4696211 () Bool)

(assert (=> b!4089312 m!4696211))

(assert (=> b!4089136 d!1214181))

(declare-fun d!1214207 () Bool)

(declare-fun res!1671192 () Bool)

(declare-fun e!2537912 () Bool)

(assert (=> d!1214207 (=> (not res!1671192) (not e!2537912))))

(declare-fun rulesValid!2778 (LexerInterface!6677 List!43967) Bool)

(assert (=> d!1214207 (= res!1671192 (rulesValid!2778 thiss!26199 (t!338494 rules!3870)))))

(assert (=> d!1214207 (= (rulesInvariant!6020 thiss!26199 (t!338494 rules!3870)) e!2537912)))

(declare-fun b!4089318 () Bool)

(declare-datatypes ((List!43969 0))(
  ( (Nil!43845) (Cons!43845 (h!49265 String!50340) (t!338520 List!43969)) )
))
(declare-fun noDuplicateTag!2779 (LexerInterface!6677 List!43967 List!43969) Bool)

(assert (=> b!4089318 (= e!2537912 (noDuplicateTag!2779 thiss!26199 (t!338494 rules!3870) Nil!43845))))

(assert (= (and d!1214207 res!1671192) b!4089318))

(declare-fun m!4696213 () Bool)

(assert (=> d!1214207 m!4696213))

(declare-fun m!4696215 () Bool)

(assert (=> b!4089318 m!4696215))

(assert (=> b!4089136 d!1214207))

(declare-fun d!1214209 () Bool)

(assert (=> d!1214209 (rulesInvariant!6020 thiss!26199 (t!338494 rules!3870))))

(declare-fun lt!1462612 () Unit!63367)

(declare-fun choose!24975 (LexerInterface!6677 Rule!13976 List!43967) Unit!63367)

(assert (=> d!1214209 (= lt!1462612 (choose!24975 thiss!26199 (h!49263 rules!3870) (t!338494 rules!3870)))))

(assert (=> d!1214209 (rulesInvariant!6020 thiss!26199 (Cons!43843 (h!49263 rules!3870) (t!338494 rules!3870)))))

(assert (=> d!1214209 (= (lemmaInvariantOnRulesThenOnTail!790 thiss!26199 (h!49263 rules!3870) (t!338494 rules!3870)) lt!1462612)))

(declare-fun bs!593238 () Bool)

(assert (= bs!593238 d!1214209))

(assert (=> bs!593238 m!4696031))

(declare-fun m!4696217 () Bool)

(assert (=> bs!593238 m!4696217))

(declare-fun m!4696219 () Bool)

(assert (=> bs!593238 m!4696219))

(assert (=> b!4089136 d!1214209))

(declare-fun d!1214211 () Bool)

(assert (=> d!1214211 (= (inv!58539 (tag!7948 r!4213)) (= (mod (str.len (value!222659 (tag!7948 r!4213))) 2) 0))))

(assert (=> b!4089125 d!1214211))

(declare-fun d!1214213 () Bool)

(declare-fun res!1671193 () Bool)

(declare-fun e!2537913 () Bool)

(assert (=> d!1214213 (=> (not res!1671193) (not e!2537913))))

(assert (=> d!1214213 (= res!1671193 (semiInverseModEq!3044 (toChars!9535 (transformation!7088 r!4213)) (toValue!9676 (transformation!7088 r!4213))))))

(assert (=> d!1214213 (= (inv!58541 (transformation!7088 r!4213)) e!2537913)))

(declare-fun b!4089319 () Bool)

(assert (=> b!4089319 (= e!2537913 (equivClasses!2943 (toChars!9535 (transformation!7088 r!4213)) (toValue!9676 (transformation!7088 r!4213))))))

(assert (= (and d!1214213 res!1671193) b!4089319))

(declare-fun m!4696221 () Bool)

(assert (=> d!1214213 m!4696221))

(declare-fun m!4696223 () Bool)

(assert (=> b!4089319 m!4696223))

(assert (=> b!4089125 d!1214213))

(declare-fun d!1214215 () Bool)

(declare-fun dynLambda!18746 (Int BalanceConc!26192) TokenValue!7318)

(assert (=> d!1214215 (= (apply!10271 (transformation!7088 r!4213) lt!1462556) (dynLambda!18746 (toValue!9676 (transformation!7088 r!4213)) lt!1462556))))

(declare-fun b_lambda!119807 () Bool)

(assert (=> (not b_lambda!119807) (not d!1214215)))

(declare-fun t!338496 () Bool)

(declare-fun tb!245753 () Bool)

(assert (=> (and b!4089127 (= (toValue!9676 (transformation!7088 r!4213)) (toValue!9676 (transformation!7088 r!4213))) t!338496) tb!245753))

(declare-fun result!298182 () Bool)

(declare-fun inv!21 (TokenValue!7318) Bool)

(assert (=> tb!245753 (= result!298182 (inv!21 (dynLambda!18746 (toValue!9676 (transformation!7088 r!4213)) lt!1462556)))))

(declare-fun m!4696225 () Bool)

(assert (=> tb!245753 m!4696225))

(assert (=> d!1214215 t!338496))

(declare-fun b_and!315023 () Bool)

(assert (= b_and!315015 (and (=> t!338496 result!298182) b_and!315023)))

(declare-fun t!338498 () Bool)

(declare-fun tb!245755 () Bool)

(assert (=> (and b!4089130 (= (toValue!9676 (transformation!7088 (h!49263 rules!3870))) (toValue!9676 (transformation!7088 r!4213))) t!338498) tb!245755))

(declare-fun result!298186 () Bool)

(assert (= result!298186 result!298182))

(assert (=> d!1214215 t!338498))

(declare-fun b_and!315025 () Bool)

(assert (= b_and!315019 (and (=> t!338498 result!298186) b_and!315025)))

(declare-fun m!4696227 () Bool)

(assert (=> d!1214215 m!4696227))

(assert (=> b!4089140 d!1214215))

(declare-fun b!4089340 () Bool)

(declare-fun e!2537924 () Option!9494)

(declare-fun call!289063 () Option!9494)

(assert (=> b!4089340 (= e!2537924 call!289063)))

(declare-fun b!4089341 () Bool)

(declare-fun e!2537925 () Bool)

(declare-fun lt!1462626 () Option!9494)

(assert (=> b!4089341 (= e!2537925 (contains!8767 rules!3870 (rule!10224 (_1!24522 (get!14378 lt!1462626)))))))

(declare-fun b!4089342 () Bool)

(declare-fun res!1671210 () Bool)

(assert (=> b!4089342 (=> (not res!1671210) (not e!2537925))))

(assert (=> b!4089342 (= res!1671210 (< (size!32747 (_2!24522 (get!14378 lt!1462626))) (size!32747 input!3411)))))

(declare-fun bm!289058 () Bool)

(assert (=> bm!289058 (= call!289063 (maxPrefixOneRule!2949 thiss!26199 (h!49263 rules!3870) input!3411))))

(declare-fun b!4089343 () Bool)

(declare-fun e!2537923 () Bool)

(assert (=> b!4089343 (= e!2537923 e!2537925)))

(declare-fun res!1671211 () Bool)

(assert (=> b!4089343 (=> (not res!1671211) (not e!2537925))))

(declare-fun isDefined!7185 (Option!9494) Bool)

(assert (=> b!4089343 (= res!1671211 (isDefined!7185 lt!1462626))))

(declare-fun d!1214217 () Bool)

(assert (=> d!1214217 e!2537923))

(declare-fun res!1671212 () Bool)

(assert (=> d!1214217 (=> res!1671212 e!2537923)))

(assert (=> d!1214217 (= res!1671212 (isEmpty!26219 lt!1462626))))

(assert (=> d!1214217 (= lt!1462626 e!2537924)))

(declare-fun c!704874 () Bool)

(assert (=> d!1214217 (= c!704874 (and ((_ is Cons!43843) rules!3870) ((_ is Nil!43843) (t!338494 rules!3870))))))

(declare-fun lt!1462627 () Unit!63367)

(declare-fun lt!1462623 () Unit!63367)

(assert (=> d!1214217 (= lt!1462627 lt!1462623)))

(declare-fun isPrefix!4136 (List!43966 List!43966) Bool)

(assert (=> d!1214217 (isPrefix!4136 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2687 (List!43966 List!43966) Unit!63367)

(assert (=> d!1214217 (= lt!1462623 (lemmaIsPrefixRefl!2687 input!3411 input!3411))))

(declare-fun rulesValidInductive!2618 (LexerInterface!6677 List!43967) Bool)

(assert (=> d!1214217 (rulesValidInductive!2618 thiss!26199 rules!3870)))

(assert (=> d!1214217 (= (maxPrefix!3967 thiss!26199 rules!3870 input!3411) lt!1462626)))

(declare-fun b!4089344 () Bool)

(declare-fun res!1671209 () Bool)

(assert (=> b!4089344 (=> (not res!1671209) (not e!2537925))))

(assert (=> b!4089344 (= res!1671209 (= (++!11494 (list!16278 (charsOf!4850 (_1!24522 (get!14378 lt!1462626)))) (_2!24522 (get!14378 lt!1462626))) input!3411))))

(declare-fun b!4089345 () Bool)

(declare-fun res!1671213 () Bool)

(assert (=> b!4089345 (=> (not res!1671213) (not e!2537925))))

(assert (=> b!4089345 (= res!1671213 (= (value!222660 (_1!24522 (get!14378 lt!1462626))) (apply!10271 (transformation!7088 (rule!10224 (_1!24522 (get!14378 lt!1462626)))) (seqFromList!5305 (originalCharacters!7682 (_1!24522 (get!14378 lt!1462626)))))))))

(declare-fun b!4089346 () Bool)

(declare-fun lt!1462624 () Option!9494)

(declare-fun lt!1462625 () Option!9494)

(assert (=> b!4089346 (= e!2537924 (ite (and ((_ is None!9493) lt!1462624) ((_ is None!9493) lt!1462625)) None!9493 (ite ((_ is None!9493) lt!1462625) lt!1462624 (ite ((_ is None!9493) lt!1462624) lt!1462625 (ite (>= (size!32746 (_1!24522 (v!39975 lt!1462624))) (size!32746 (_1!24522 (v!39975 lt!1462625)))) lt!1462624 lt!1462625)))))))

(assert (=> b!4089346 (= lt!1462624 call!289063)))

(assert (=> b!4089346 (= lt!1462625 (maxPrefix!3967 thiss!26199 (t!338494 rules!3870) input!3411))))

(declare-fun b!4089347 () Bool)

(declare-fun res!1671214 () Bool)

(assert (=> b!4089347 (=> (not res!1671214) (not e!2537925))))

(assert (=> b!4089347 (= res!1671214 (= (list!16278 (charsOf!4850 (_1!24522 (get!14378 lt!1462626)))) (originalCharacters!7682 (_1!24522 (get!14378 lt!1462626)))))))

(declare-fun b!4089348 () Bool)

(declare-fun res!1671208 () Bool)

(assert (=> b!4089348 (=> (not res!1671208) (not e!2537925))))

(assert (=> b!4089348 (= res!1671208 (matchR!5934 (regex!7088 (rule!10224 (_1!24522 (get!14378 lt!1462626)))) (list!16278 (charsOf!4850 (_1!24522 (get!14378 lt!1462626))))))))

(assert (= (and d!1214217 c!704874) b!4089340))

(assert (= (and d!1214217 (not c!704874)) b!4089346))

(assert (= (or b!4089340 b!4089346) bm!289058))

(assert (= (and d!1214217 (not res!1671212)) b!4089343))

(assert (= (and b!4089343 res!1671211) b!4089347))

(assert (= (and b!4089347 res!1671214) b!4089342))

(assert (= (and b!4089342 res!1671210) b!4089344))

(assert (= (and b!4089344 res!1671209) b!4089345))

(assert (= (and b!4089345 res!1671213) b!4089348))

(assert (= (and b!4089348 res!1671208) b!4089341))

(declare-fun m!4696229 () Bool)

(assert (=> b!4089344 m!4696229))

(declare-fun m!4696231 () Bool)

(assert (=> b!4089344 m!4696231))

(assert (=> b!4089344 m!4696231))

(declare-fun m!4696233 () Bool)

(assert (=> b!4089344 m!4696233))

(assert (=> b!4089344 m!4696233))

(declare-fun m!4696235 () Bool)

(assert (=> b!4089344 m!4696235))

(assert (=> b!4089345 m!4696229))

(declare-fun m!4696237 () Bool)

(assert (=> b!4089345 m!4696237))

(assert (=> b!4089345 m!4696237))

(declare-fun m!4696239 () Bool)

(assert (=> b!4089345 m!4696239))

(declare-fun m!4696241 () Bool)

(assert (=> d!1214217 m!4696241))

(declare-fun m!4696243 () Bool)

(assert (=> d!1214217 m!4696243))

(declare-fun m!4696245 () Bool)

(assert (=> d!1214217 m!4696245))

(declare-fun m!4696247 () Bool)

(assert (=> d!1214217 m!4696247))

(declare-fun m!4696249 () Bool)

(assert (=> b!4089343 m!4696249))

(declare-fun m!4696251 () Bool)

(assert (=> b!4089346 m!4696251))

(assert (=> b!4089347 m!4696229))

(assert (=> b!4089347 m!4696231))

(assert (=> b!4089347 m!4696231))

(assert (=> b!4089347 m!4696233))

(assert (=> b!4089341 m!4696229))

(declare-fun m!4696253 () Bool)

(assert (=> b!4089341 m!4696253))

(assert (=> b!4089348 m!4696229))

(assert (=> b!4089348 m!4696231))

(assert (=> b!4089348 m!4696231))

(assert (=> b!4089348 m!4696233))

(assert (=> b!4089348 m!4696233))

(declare-fun m!4696255 () Bool)

(assert (=> b!4089348 m!4696255))

(assert (=> bm!289058 m!4696027))

(assert (=> b!4089342 m!4696229))

(declare-fun m!4696257 () Bool)

(assert (=> b!4089342 m!4696257))

(assert (=> b!4089342 m!4696179))

(assert (=> b!4089140 d!1214217))

(declare-fun d!1214219 () Bool)

(declare-fun lt!1462630 () Int)

(assert (=> d!1214219 (>= lt!1462630 0)))

(declare-fun e!2537928 () Int)

(assert (=> d!1214219 (= lt!1462630 e!2537928)))

(declare-fun c!704877 () Bool)

(assert (=> d!1214219 (= c!704877 ((_ is Nil!43842) p!2988))))

(assert (=> d!1214219 (= (size!32747 p!2988) lt!1462630)))

(declare-fun b!4089353 () Bool)

(assert (=> b!4089353 (= e!2537928 0)))

(declare-fun b!4089354 () Bool)

(assert (=> b!4089354 (= e!2537928 (+ 1 (size!32747 (t!338493 p!2988))))))

(assert (= (and d!1214219 c!704877) b!4089353))

(assert (= (and d!1214219 (not c!704877)) b!4089354))

(declare-fun m!4696259 () Bool)

(assert (=> b!4089354 m!4696259))

(assert (=> b!4089140 d!1214219))

(declare-fun d!1214221 () Bool)

(declare-fun fromListB!2429 (List!43966) BalanceConc!26192)

(assert (=> d!1214221 (= (seqFromList!5305 p!2988) (fromListB!2429 p!2988))))

(declare-fun bs!593239 () Bool)

(assert (= bs!593239 d!1214221))

(declare-fun m!4696261 () Bool)

(assert (=> bs!593239 m!4696261))

(assert (=> b!4089140 d!1214221))

(declare-fun b!4089416 () Bool)

(declare-fun e!2537958 () Bool)

(assert (=> b!4089416 (= e!2537958 true)))

(declare-fun d!1214223 () Bool)

(assert (=> d!1214223 e!2537958))

(assert (= d!1214223 b!4089416))

(declare-fun order!23041 () Int)

(declare-fun order!23043 () Int)

(declare-fun lambda!127983 () Int)

(declare-fun dynLambda!18747 (Int Int) Int)

(declare-fun dynLambda!18748 (Int Int) Int)

(assert (=> b!4089416 (< (dynLambda!18747 order!23041 (toValue!9676 (transformation!7088 r!4213))) (dynLambda!18748 order!23043 lambda!127983))))

(declare-fun order!23045 () Int)

(declare-fun dynLambda!18749 (Int Int) Int)

(assert (=> b!4089416 (< (dynLambda!18749 order!23045 (toChars!9535 (transformation!7088 r!4213))) (dynLambda!18748 order!23043 lambda!127983))))

(declare-fun dynLambda!18750 (Int TokenValue!7318) BalanceConc!26192)

(assert (=> d!1214223 (= (list!16278 (dynLambda!18750 (toChars!9535 (transformation!7088 r!4213)) (dynLambda!18746 (toValue!9676 (transformation!7088 r!4213)) lt!1462556))) (list!16278 lt!1462556))))

(declare-fun lt!1462655 () Unit!63367)

(declare-fun ForallOf!883 (Int BalanceConc!26192) Unit!63367)

(assert (=> d!1214223 (= lt!1462655 (ForallOf!883 lambda!127983 lt!1462556))))

(assert (=> d!1214223 (= (lemmaSemiInverse!2055 (transformation!7088 r!4213) lt!1462556) lt!1462655)))

(declare-fun b_lambda!119815 () Bool)

(assert (=> (not b_lambda!119815) (not d!1214223)))

(declare-fun t!338508 () Bool)

(declare-fun tb!245765 () Bool)

(assert (=> (and b!4089127 (= (toChars!9535 (transformation!7088 r!4213)) (toChars!9535 (transformation!7088 r!4213))) t!338508) tb!245765))

(declare-fun e!2537967 () Bool)

(declare-fun tp!1238016 () Bool)

(declare-fun b!4089427 () Bool)

(declare-fun inv!58544 (Conc!13299) Bool)

(assert (=> b!4089427 (= e!2537967 (and (inv!58544 (c!704843 (dynLambda!18750 (toChars!9535 (transformation!7088 r!4213)) (dynLambda!18746 (toValue!9676 (transformation!7088 r!4213)) lt!1462556)))) tp!1238016))))

(declare-fun result!298200 () Bool)

(declare-fun inv!58545 (BalanceConc!26192) Bool)

(assert (=> tb!245765 (= result!298200 (and (inv!58545 (dynLambda!18750 (toChars!9535 (transformation!7088 r!4213)) (dynLambda!18746 (toValue!9676 (transformation!7088 r!4213)) lt!1462556))) e!2537967))))

(assert (= tb!245765 b!4089427))

(declare-fun m!4696329 () Bool)

(assert (=> b!4089427 m!4696329))

(declare-fun m!4696331 () Bool)

(assert (=> tb!245765 m!4696331))

(assert (=> d!1214223 t!338508))

(declare-fun b_and!315039 () Bool)

(assert (= b_and!315017 (and (=> t!338508 result!298200) b_and!315039)))

(declare-fun tb!245767 () Bool)

(declare-fun t!338510 () Bool)

(assert (=> (and b!4089130 (= (toChars!9535 (transformation!7088 (h!49263 rules!3870))) (toChars!9535 (transformation!7088 r!4213))) t!338510) tb!245767))

(declare-fun result!298204 () Bool)

(assert (= result!298204 result!298200))

(assert (=> d!1214223 t!338510))

(declare-fun b_and!315041 () Bool)

(assert (= b_and!315021 (and (=> t!338510 result!298204) b_and!315041)))

(declare-fun b_lambda!119817 () Bool)

(assert (=> (not b_lambda!119817) (not d!1214223)))

(assert (=> d!1214223 t!338496))

(declare-fun b_and!315043 () Bool)

(assert (= b_and!315023 (and (=> t!338496 result!298182) b_and!315043)))

(assert (=> d!1214223 t!338498))

(declare-fun b_and!315045 () Bool)

(assert (= b_and!315025 (and (=> t!338498 result!298186) b_and!315045)))

(declare-fun m!4696339 () Bool)

(assert (=> d!1214223 m!4696339))

(declare-fun m!4696341 () Bool)

(assert (=> d!1214223 m!4696341))

(declare-fun m!4696343 () Bool)

(assert (=> d!1214223 m!4696343))

(declare-fun m!4696345 () Bool)

(assert (=> d!1214223 m!4696345))

(assert (=> d!1214223 m!4696227))

(assert (=> d!1214223 m!4696227))

(assert (=> d!1214223 m!4696339))

(assert (=> b!4089140 d!1214223))

(declare-fun d!1214241 () Bool)

(assert (=> d!1214241 (= (isEmpty!26217 rules!3870) ((_ is Nil!43843) rules!3870))))

(assert (=> b!4089128 d!1214241))

(declare-fun d!1214243 () Bool)

(declare-fun lt!1462662 () Bool)

(declare-fun content!6750 (List!43967) (InoxSet Rule!13976))

(assert (=> d!1214243 (= lt!1462662 (select (content!6750 (t!338494 rules!3870)) r!4213))))

(declare-fun e!2537993 () Bool)

(assert (=> d!1214243 (= lt!1462662 e!2537993)))

(declare-fun res!1671254 () Bool)

(assert (=> d!1214243 (=> (not res!1671254) (not e!2537993))))

(assert (=> d!1214243 (= res!1671254 ((_ is Cons!43843) (t!338494 rules!3870)))))

(assert (=> d!1214243 (= (contains!8767 (t!338494 rules!3870) r!4213) lt!1462662)))

(declare-fun b!4089461 () Bool)

(declare-fun e!2537992 () Bool)

(assert (=> b!4089461 (= e!2537993 e!2537992)))

(declare-fun res!1671255 () Bool)

(assert (=> b!4089461 (=> res!1671255 e!2537992)))

(assert (=> b!4089461 (= res!1671255 (= (h!49263 (t!338494 rules!3870)) r!4213))))

(declare-fun b!4089462 () Bool)

(assert (=> b!4089462 (= e!2537992 (contains!8767 (t!338494 (t!338494 rules!3870)) r!4213))))

(assert (= (and d!1214243 res!1671254) b!4089461))

(assert (= (and b!4089461 (not res!1671255)) b!4089462))

(declare-fun m!4696351 () Bool)

(assert (=> d!1214243 m!4696351))

(declare-fun m!4696353 () Bool)

(assert (=> d!1214243 m!4696353))

(declare-fun m!4696355 () Bool)

(assert (=> b!4089462 m!4696355))

(assert (=> b!4089138 d!1214243))

(declare-fun d!1214245 () Bool)

(declare-fun res!1671256 () Bool)

(declare-fun e!2537995 () Bool)

(assert (=> d!1214245 (=> (not res!1671256) (not e!2537995))))

(assert (=> d!1214245 (= res!1671256 (rulesValid!2778 thiss!26199 rules!3870))))

(assert (=> d!1214245 (= (rulesInvariant!6020 thiss!26199 rules!3870) e!2537995)))

(declare-fun b!4089467 () Bool)

(assert (=> b!4089467 (= e!2537995 (noDuplicateTag!2779 thiss!26199 rules!3870 Nil!43845))))

(assert (= (and d!1214245 res!1671256) b!4089467))

(declare-fun m!4696357 () Bool)

(assert (=> d!1214245 m!4696357))

(declare-fun m!4696359 () Bool)

(assert (=> b!4089467 m!4696359))

(assert (=> b!4089142 d!1214245))

(declare-fun d!1214247 () Bool)

(assert (=> d!1214247 (= (isEmpty!26217 (t!338494 rules!3870)) ((_ is Nil!43843) (t!338494 rules!3870)))))

(assert (=> b!4089131 d!1214247))

(declare-fun d!1214249 () Bool)

(declare-fun lt!1462663 () Bool)

(assert (=> d!1214249 (= lt!1462663 (select (content!6750 rules!3870) r!4213))))

(declare-fun e!2537999 () Bool)

(assert (=> d!1214249 (= lt!1462663 e!2537999)))

(declare-fun res!1671257 () Bool)

(assert (=> d!1214249 (=> (not res!1671257) (not e!2537999))))

(assert (=> d!1214249 (= res!1671257 ((_ is Cons!43843) rules!3870))))

(assert (=> d!1214249 (= (contains!8767 rules!3870 r!4213) lt!1462663)))

(declare-fun b!4089473 () Bool)

(declare-fun e!2537998 () Bool)

(assert (=> b!4089473 (= e!2537999 e!2537998)))

(declare-fun res!1671258 () Bool)

(assert (=> b!4089473 (=> res!1671258 e!2537998)))

(assert (=> b!4089473 (= res!1671258 (= (h!49263 rules!3870) r!4213))))

(declare-fun b!4089474 () Bool)

(assert (=> b!4089474 (= e!2537998 (contains!8767 (t!338494 rules!3870) r!4213))))

(assert (= (and d!1214249 res!1671257) b!4089473))

(assert (= (and b!4089473 (not res!1671258)) b!4089474))

(declare-fun m!4696361 () Bool)

(assert (=> d!1214249 m!4696361))

(declare-fun m!4696363 () Bool)

(assert (=> d!1214249 m!4696363))

(assert (=> b!4089474 m!4696045))

(assert (=> b!4089141 d!1214249))

(declare-fun b!4089479 () Bool)

(declare-fun e!2538002 () Bool)

(declare-fun tp!1238056 () Bool)

(assert (=> b!4089479 (= e!2538002 (and tp_is_empty!20989 tp!1238056))))

(assert (=> b!4089129 (= tp!1238002 e!2538002)))

(assert (= (and b!4089129 ((_ is Cons!43842) (t!338493 suffix!1518))) b!4089479))

(declare-fun b!4089480 () Bool)

(declare-fun e!2538003 () Bool)

(declare-fun tp!1238057 () Bool)

(assert (=> b!4089480 (= e!2538003 (and tp_is_empty!20989 tp!1238057))))

(assert (=> b!4089133 (= tp!1238001 e!2538003)))

(assert (= (and b!4089133 ((_ is Cons!43842) (t!338493 p!2988))) b!4089480))

(declare-fun b!4089491 () Bool)

(declare-fun b_free!114301 () Bool)

(declare-fun b_next!115005 () Bool)

(assert (=> b!4089491 (= b_free!114301 (not b_next!115005))))

(declare-fun tb!245773 () Bool)

(declare-fun t!338516 () Bool)

(assert (=> (and b!4089491 (= (toValue!9676 (transformation!7088 (h!49263 (t!338494 rules!3870)))) (toValue!9676 (transformation!7088 r!4213))) t!338516) tb!245773))

(declare-fun result!298220 () Bool)

(assert (= result!298220 result!298182))

(assert (=> d!1214215 t!338516))

(assert (=> d!1214223 t!338516))

(declare-fun tp!1238067 () Bool)

(declare-fun b_and!315051 () Bool)

(assert (=> b!4089491 (= tp!1238067 (and (=> t!338516 result!298220) b_and!315051))))

(declare-fun b_free!114303 () Bool)

(declare-fun b_next!115007 () Bool)

(assert (=> b!4089491 (= b_free!114303 (not b_next!115007))))

(declare-fun tb!245775 () Bool)

(declare-fun t!338518 () Bool)

(assert (=> (and b!4089491 (= (toChars!9535 (transformation!7088 (h!49263 (t!338494 rules!3870)))) (toChars!9535 (transformation!7088 r!4213))) t!338518) tb!245775))

(declare-fun result!298222 () Bool)

(assert (= result!298222 result!298200))

(assert (=> d!1214223 t!338518))

(declare-fun tp!1238068 () Bool)

(declare-fun b_and!315053 () Bool)

(assert (=> b!4089491 (= tp!1238068 (and (=> t!338518 result!298222) b_and!315053))))

(declare-fun e!2538013 () Bool)

(assert (=> b!4089491 (= e!2538013 (and tp!1238067 tp!1238068))))

(declare-fun tp!1238066 () Bool)

(declare-fun e!2538014 () Bool)

(declare-fun b!4089490 () Bool)

(assert (=> b!4089490 (= e!2538014 (and tp!1238066 (inv!58539 (tag!7948 (h!49263 (t!338494 rules!3870)))) (inv!58541 (transformation!7088 (h!49263 (t!338494 rules!3870)))) e!2538013))))

(declare-fun b!4089489 () Bool)

(declare-fun e!2538012 () Bool)

(declare-fun tp!1238069 () Bool)

(assert (=> b!4089489 (= e!2538012 (and e!2538014 tp!1238069))))

(assert (=> b!4089132 (= tp!1238003 e!2538012)))

(assert (= b!4089490 b!4089491))

(assert (= b!4089489 b!4089490))

(assert (= (and b!4089132 ((_ is Cons!43843) (t!338494 rules!3870))) b!4089489))

(declare-fun m!4696365 () Bool)

(assert (=> b!4089490 m!4696365))

(declare-fun m!4696367 () Bool)

(assert (=> b!4089490 m!4696367))

(declare-fun b!4089505 () Bool)

(declare-fun e!2538018 () Bool)

(declare-fun tp!1238081 () Bool)

(declare-fun tp!1238084 () Bool)

(assert (=> b!4089505 (= e!2538018 (and tp!1238081 tp!1238084))))

(assert (=> b!4089137 (= tp!1238004 e!2538018)))

(declare-fun b!4089504 () Bool)

(declare-fun tp!1238080 () Bool)

(assert (=> b!4089504 (= e!2538018 tp!1238080)))

(declare-fun b!4089502 () Bool)

(assert (=> b!4089502 (= e!2538018 tp_is_empty!20989)))

(declare-fun b!4089503 () Bool)

(declare-fun tp!1238082 () Bool)

(declare-fun tp!1238083 () Bool)

(assert (=> b!4089503 (= e!2538018 (and tp!1238082 tp!1238083))))

(assert (= (and b!4089137 ((_ is ElementMatch!11993) (regex!7088 (h!49263 rules!3870)))) b!4089502))

(assert (= (and b!4089137 ((_ is Concat!19312) (regex!7088 (h!49263 rules!3870)))) b!4089503))

(assert (= (and b!4089137 ((_ is Star!11993) (regex!7088 (h!49263 rules!3870)))) b!4089504))

(assert (= (and b!4089137 ((_ is Union!11993) (regex!7088 (h!49263 rules!3870)))) b!4089505))

(declare-fun b!4089509 () Bool)

(declare-fun e!2538019 () Bool)

(declare-fun tp!1238086 () Bool)

(declare-fun tp!1238089 () Bool)

(assert (=> b!4089509 (= e!2538019 (and tp!1238086 tp!1238089))))

(assert (=> b!4089125 (= tp!1238005 e!2538019)))

(declare-fun b!4089508 () Bool)

(declare-fun tp!1238085 () Bool)

(assert (=> b!4089508 (= e!2538019 tp!1238085)))

(declare-fun b!4089506 () Bool)

(assert (=> b!4089506 (= e!2538019 tp_is_empty!20989)))

(declare-fun b!4089507 () Bool)

(declare-fun tp!1238087 () Bool)

(declare-fun tp!1238088 () Bool)

(assert (=> b!4089507 (= e!2538019 (and tp!1238087 tp!1238088))))

(assert (= (and b!4089125 ((_ is ElementMatch!11993) (regex!7088 r!4213))) b!4089506))

(assert (= (and b!4089125 ((_ is Concat!19312) (regex!7088 r!4213))) b!4089507))

(assert (= (and b!4089125 ((_ is Star!11993) (regex!7088 r!4213))) b!4089508))

(assert (= (and b!4089125 ((_ is Union!11993) (regex!7088 r!4213))) b!4089509))

(declare-fun b!4089510 () Bool)

(declare-fun e!2538020 () Bool)

(declare-fun tp!1238090 () Bool)

(assert (=> b!4089510 (= e!2538020 (and tp_is_empty!20989 tp!1238090))))

(assert (=> b!4089135 (= tp!1238009 e!2538020)))

(assert (= (and b!4089135 ((_ is Cons!43842) (t!338493 input!3411))) b!4089510))

(declare-fun b_lambda!119825 () Bool)

(assert (= b_lambda!119807 (or (and b!4089127 b_free!114289) (and b!4089130 b_free!114293 (= (toValue!9676 (transformation!7088 (h!49263 rules!3870))) (toValue!9676 (transformation!7088 r!4213)))) (and b!4089491 b_free!114301 (= (toValue!9676 (transformation!7088 (h!49263 (t!338494 rules!3870)))) (toValue!9676 (transformation!7088 r!4213)))) b_lambda!119825)))

(declare-fun b_lambda!119827 () Bool)

(assert (= b_lambda!119815 (or (and b!4089127 b_free!114291) (and b!4089130 b_free!114295 (= (toChars!9535 (transformation!7088 (h!49263 rules!3870))) (toChars!9535 (transformation!7088 r!4213)))) (and b!4089491 b_free!114303 (= (toChars!9535 (transformation!7088 (h!49263 (t!338494 rules!3870)))) (toChars!9535 (transformation!7088 r!4213)))) b_lambda!119827)))

(declare-fun b_lambda!119829 () Bool)

(assert (= b_lambda!119817 (or (and b!4089127 b_free!114289) (and b!4089130 b_free!114293 (= (toValue!9676 (transformation!7088 (h!49263 rules!3870))) (toValue!9676 (transformation!7088 r!4213)))) (and b!4089491 b_free!114301 (= (toValue!9676 (transformation!7088 (h!49263 (t!338494 rules!3870)))) (toValue!9676 (transformation!7088 r!4213)))) b_lambda!119829)))

(check-sat (not b!4089344) (not d!1214213) (not b_next!115007) b_and!315051 (not b_lambda!119827) (not d!1214165) (not b!4089310) (not b!4089341) (not d!1214221) (not b!4089345) (not b!4089510) (not b!4089319) (not b!4089507) (not b_next!115005) (not b!4089504) (not b!4089318) (not tb!245765) (not b!4089489) (not b!4089342) (not d!1214181) (not b_next!114997) (not b!4089305) b_and!315043 (not b_lambda!119829) (not b!4089312) (not b!4089251) (not b!4089183) b_and!315039 (not d!1214163) b_and!315041 (not b!4089306) (not bm!289058) (not b!4089189) (not d!1214209) (not b!4089175) (not d!1214171) (not b!4089346) (not b!4089347) (not b_next!114993) (not tb!245753) (not d!1214217) (not d!1214249) (not b!4089427) (not bm!289052) (not b!4089505) b_and!315053 (not b!4089182) (not b!4089348) (not b!4089343) (not d!1214243) (not d!1214245) (not b!4089171) (not d!1214207) (not b!4089490) (not b!4089508) (not b!4089479) (not b!4089307) (not b!4089309) (not b_lambda!119825) (not b!4089509) (not b!4089228) (not b_next!114995) (not d!1214167) (not b_next!114999) (not b!4089474) (not b!4089179) (not b!4089178) tp_is_empty!20989 (not b!4089229) (not b!4089462) b_and!315045 (not b!4089503) (not b!4089313) (not b!4089354) (not b!4089311) (not b!4089480) (not d!1214159) (not b!4089467) (not d!1214223))
(check-sat (not b_next!115005) (not b_next!114997) (not b_next!115007) b_and!315043 b_and!315051 (not b_next!114993) b_and!315053 (not b_next!114995) (not b_next!114999) b_and!315045 b_and!315039 b_and!315041)
