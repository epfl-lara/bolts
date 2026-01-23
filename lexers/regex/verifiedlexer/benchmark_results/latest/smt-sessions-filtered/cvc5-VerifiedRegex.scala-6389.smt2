; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!332560 () Bool)

(assert start!332560)

(declare-fun b!3585127 () Bool)

(declare-fun b_free!92265 () Bool)

(declare-fun b_next!92969 () Bool)

(assert (=> b!3585127 (= b_free!92265 (not b_next!92969))))

(declare-fun tp!1097620 () Bool)

(declare-fun b_and!258871 () Bool)

(assert (=> b!3585127 (= tp!1097620 b_and!258871)))

(declare-fun b_free!92267 () Bool)

(declare-fun b_next!92971 () Bool)

(assert (=> b!3585127 (= b_free!92267 (not b_next!92971))))

(declare-fun tp!1097627 () Bool)

(declare-fun b_and!258873 () Bool)

(assert (=> b!3585127 (= tp!1097627 b_and!258873)))

(declare-fun b!3585143 () Bool)

(declare-fun b_free!92269 () Bool)

(declare-fun b_next!92973 () Bool)

(assert (=> b!3585143 (= b_free!92269 (not b_next!92973))))

(declare-fun tp!1097615 () Bool)

(declare-fun b_and!258875 () Bool)

(assert (=> b!3585143 (= tp!1097615 b_and!258875)))

(declare-fun b_free!92271 () Bool)

(declare-fun b_next!92975 () Bool)

(assert (=> b!3585143 (= b_free!92271 (not b_next!92975))))

(declare-fun tp!1097628 () Bool)

(declare-fun b_and!258877 () Bool)

(assert (=> b!3585143 (= tp!1097628 b_and!258877)))

(declare-fun b!3585129 () Bool)

(declare-fun b_free!92273 () Bool)

(declare-fun b_next!92977 () Bool)

(assert (=> b!3585129 (= b_free!92273 (not b_next!92977))))

(declare-fun tp!1097618 () Bool)

(declare-fun b_and!258879 () Bool)

(assert (=> b!3585129 (= tp!1097618 b_and!258879)))

(declare-fun b_free!92275 () Bool)

(declare-fun b_next!92979 () Bool)

(assert (=> b!3585129 (= b_free!92275 (not b_next!92979))))

(declare-fun tp!1097619 () Bool)

(declare-fun b_and!258881 () Bool)

(assert (=> b!3585129 (= tp!1097619 b_and!258881)))

(declare-fun b!3585149 () Bool)

(declare-fun b_free!92277 () Bool)

(declare-fun b_next!92981 () Bool)

(assert (=> b!3585149 (= b_free!92277 (not b_next!92981))))

(declare-fun tp!1097625 () Bool)

(declare-fun b_and!258883 () Bool)

(assert (=> b!3585149 (= tp!1097625 b_and!258883)))

(declare-fun b_free!92279 () Bool)

(declare-fun b_next!92983 () Bool)

(assert (=> b!3585149 (= b_free!92279 (not b_next!92983))))

(declare-fun tp!1097626 () Bool)

(declare-fun b_and!258885 () Bool)

(assert (=> b!3585149 (= tp!1097626 b_and!258885)))

(declare-fun e!2218251 () Bool)

(assert (=> b!3585127 (= e!2218251 (and tp!1097620 tp!1097627))))

(declare-fun b!3585128 () Bool)

(declare-fun e!2218244 () Bool)

(declare-fun e!2218242 () Bool)

(assert (=> b!3585128 (= e!2218244 e!2218242)))

(declare-fun res!1446734 () Bool)

(assert (=> b!3585128 (=> (not res!1446734) (not e!2218242))))

(declare-datatypes ((List!37799 0))(
  ( (Nil!37675) (Cons!37675 (h!43095 (_ BitVec 16)) (t!290552 List!37799)) )
))
(declare-datatypes ((TokenValue!5787 0))(
  ( (FloatLiteralValue!11574 (text!40954 List!37799)) (TokenValueExt!5786 (__x!23791 Int)) (Broken!28935 (value!178810 List!37799)) (Object!5910) (End!5787) (Def!5787) (Underscore!5787) (Match!5787) (Else!5787) (Error!5787) (Case!5787) (If!5787) (Extends!5787) (Abstract!5787) (Class!5787) (Val!5787) (DelimiterValue!11574 (del!5847 List!37799)) (KeywordValue!5793 (value!178811 List!37799)) (CommentValue!11574 (value!178812 List!37799)) (WhitespaceValue!11574 (value!178813 List!37799)) (IndentationValue!5787 (value!178814 List!37799)) (String!42270) (Int32!5787) (Broken!28936 (value!178815 List!37799)) (Boolean!5788) (Unit!53673) (OperatorValue!5790 (op!5847 List!37799)) (IdentifierValue!11574 (value!178816 List!37799)) (IdentifierValue!11575 (value!178817 List!37799)) (WhitespaceValue!11575 (value!178818 List!37799)) (True!11574) (False!11574) (Broken!28937 (value!178819 List!37799)) (Broken!28938 (value!178820 List!37799)) (True!11575) (RightBrace!5787) (RightBracket!5787) (Colon!5787) (Null!5787) (Comma!5787) (LeftBracket!5787) (False!11575) (LeftBrace!5787) (ImaginaryLiteralValue!5787 (text!40955 List!37799)) (StringLiteralValue!17361 (value!178821 List!37799)) (EOFValue!5787 (value!178822 List!37799)) (IdentValue!5787 (value!178823 List!37799)) (DelimiterValue!11575 (value!178824 List!37799)) (DedentValue!5787 (value!178825 List!37799)) (NewLineValue!5787 (value!178826 List!37799)) (IntegerValue!17361 (value!178827 (_ BitVec 32)) (text!40956 List!37799)) (IntegerValue!17362 (value!178828 Int) (text!40957 List!37799)) (Times!5787) (Or!5787) (Equal!5787) (Minus!5787) (Broken!28939 (value!178829 List!37799)) (And!5787) (Div!5787) (LessEqual!5787) (Mod!5787) (Concat!16103) (Not!5787) (Plus!5787) (SpaceValue!5787 (value!178830 List!37799)) (IntegerValue!17363 (value!178831 Int) (text!40958 List!37799)) (StringLiteralValue!17362 (text!40959 List!37799)) (FloatLiteralValue!11575 (text!40960 List!37799)) (BytesLiteralValue!5787 (value!178832 List!37799)) (CommentValue!11575 (value!178833 List!37799)) (StringLiteralValue!17363 (value!178834 List!37799)) (ErrorTokenValue!5787 (msg!5848 List!37799)) )
))
(declare-datatypes ((C!20818 0))(
  ( (C!20819 (val!12457 Int)) )
))
(declare-datatypes ((Regex!10316 0))(
  ( (ElementMatch!10316 (c!621052 C!20818)) (Concat!16104 (regOne!21144 Regex!10316) (regTwo!21144 Regex!10316)) (EmptyExpr!10316) (Star!10316 (reg!10645 Regex!10316)) (EmptyLang!10316) (Union!10316 (regOne!21145 Regex!10316) (regTwo!21145 Regex!10316)) )
))
(declare-datatypes ((String!42271 0))(
  ( (String!42272 (value!178835 String)) )
))
(declare-datatypes ((List!37800 0))(
  ( (Nil!37676) (Cons!37676 (h!43096 C!20818) (t!290553 List!37800)) )
))
(declare-datatypes ((IArray!22919 0))(
  ( (IArray!22920 (innerList!11517 List!37800)) )
))
(declare-datatypes ((Conc!11457 0))(
  ( (Node!11457 (left!29450 Conc!11457) (right!29780 Conc!11457) (csize!23144 Int) (cheight!11668 Int)) (Leaf!17847 (xs!14659 IArray!22919) (csize!23145 Int)) (Empty!11457) )
))
(declare-datatypes ((BalanceConc!22528 0))(
  ( (BalanceConc!22529 (c!621053 Conc!11457)) )
))
(declare-datatypes ((TokenValueInjection!11002 0))(
  ( (TokenValueInjection!11003 (toValue!7837 Int) (toChars!7696 Int)) )
))
(declare-datatypes ((Rule!10914 0))(
  ( (Rule!10915 (regex!5557 Regex!10316) (tag!6223 String!42271) (isSeparator!5557 Bool) (transformation!5557 TokenValueInjection!11002)) )
))
(declare-datatypes ((Token!10480 0))(
  ( (Token!10481 (value!178836 TokenValue!5787) (rule!8271 Rule!10914) (size!28711 Int) (originalCharacters!6271 List!37800)) )
))
(declare-datatypes ((tuple2!37572 0))(
  ( (tuple2!37573 (_1!21920 Token!10480) (_2!21920 List!37800)) )
))
(declare-fun lt!1229635 () tuple2!37572)

(declare-fun token!511 () Token!10480)

(assert (=> b!3585128 (= res!1446734 (= (_1!21920 lt!1229635) token!511))))

(declare-datatypes ((Option!7747 0))(
  ( (None!7746) (Some!7746 (v!37404 tuple2!37572)) )
))
(declare-fun lt!1229629 () Option!7747)

(declare-fun get!12136 (Option!7747) tuple2!37572)

(assert (=> b!3585128 (= lt!1229635 (get!12136 lt!1229629))))

(declare-fun e!2218245 () Bool)

(assert (=> b!3585129 (= e!2218245 (and tp!1097618 tp!1097619))))

(declare-fun e!2218246 () Bool)

(declare-fun b!3585130 () Bool)

(declare-fun e!2218239 () Bool)

(declare-fun tp!1097624 () Bool)

(declare-fun inv!21 (TokenValue!5787) Bool)

(assert (=> b!3585130 (= e!2218246 (and (inv!21 (value!178836 token!511)) e!2218239 tp!1097624))))

(declare-fun b!3585132 () Bool)

(declare-fun e!2218256 () Bool)

(declare-fun lt!1229631 () Option!7747)

(declare-fun isDefined!5979 (Option!7747) Bool)

(assert (=> b!3585132 (= e!2218256 (isDefined!5979 lt!1229631))))

(declare-datatypes ((Unit!53674 0))(
  ( (Unit!53675) )
))
(declare-fun lt!1229637 () Unit!53674)

(declare-datatypes ((List!37801 0))(
  ( (Nil!37677) (Cons!37677 (h!43097 Rule!10914) (t!290554 List!37801)) )
))
(declare-fun rules!3307 () List!37801)

(declare-fun lt!1229632 () List!37800)

(declare-fun suffix!1395 () List!37800)

(declare-datatypes ((LexerInterface!5146 0))(
  ( (LexerInterfaceExt!5143 (__x!23792 Int)) (Lexer!5144) )
))
(declare-fun thiss!23823 () LexerInterface!5146)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!826 (LexerInterface!5146 List!37801 List!37800 List!37800) Unit!53674)

(assert (=> b!3585132 (= lt!1229637 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!826 thiss!23823 rules!3307 lt!1229632 suffix!1395))))

(declare-fun lt!1229634 () List!37800)

(declare-fun maxPrefix!2680 (LexerInterface!5146 List!37801 List!37800) Option!7747)

(assert (=> b!3585132 (= lt!1229631 (maxPrefix!2680 thiss!23823 rules!3307 lt!1229634))))

(declare-fun isPrefix!2920 (List!37800 List!37800) Bool)

(assert (=> b!3585132 (isPrefix!2920 lt!1229632 lt!1229634)))

(declare-fun lt!1229630 () Unit!53674)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1841 (List!37800 List!37800) Unit!53674)

(assert (=> b!3585132 (= lt!1229630 (lemmaConcatTwoListThenFirstIsPrefix!1841 lt!1229632 suffix!1395))))

(declare-fun ++!9373 (List!37800 List!37800) List!37800)

(assert (=> b!3585132 (= lt!1229634 (++!9373 lt!1229632 suffix!1395))))

(declare-fun b!3585133 () Bool)

(declare-fun res!1446724 () Bool)

(assert (=> b!3585133 (=> (not res!1446724) (not e!2218242))))

(declare-fun rule!403 () Rule!10914)

(assert (=> b!3585133 (= res!1446724 (= (rule!8271 token!511) rule!403))))

(declare-fun b!3585134 () Bool)

(declare-fun res!1446727 () Bool)

(declare-fun e!2218248 () Bool)

(assert (=> b!3585134 (=> (not res!1446727) (not e!2218248))))

(declare-fun isEmpty!22192 (List!37801) Bool)

(assert (=> b!3585134 (= res!1446727 (not (isEmpty!22192 rules!3307)))))

(declare-fun b!3585135 () Bool)

(declare-fun res!1446722 () Bool)

(assert (=> b!3585135 (=> (not res!1446722) (not e!2218248))))

(declare-fun contains!7175 (List!37801 Rule!10914) Bool)

(assert (=> b!3585135 (= res!1446722 (contains!7175 rules!3307 rule!403))))

(declare-fun b!3585136 () Bool)

(declare-fun res!1446726 () Bool)

(assert (=> b!3585136 (=> (not res!1446726) (not e!2218248))))

(declare-fun anOtherTypeRule!33 () Rule!10914)

(assert (=> b!3585136 (= res!1446726 (not (= (isSeparator!5557 anOtherTypeRule!33) (isSeparator!5557 rule!403))))))

(declare-fun b!3585137 () Bool)

(declare-fun tp!1097629 () Bool)

(declare-fun e!2218243 () Bool)

(declare-fun e!2218253 () Bool)

(declare-fun inv!50999 (String!42271) Bool)

(declare-fun inv!51002 (TokenValueInjection!11002) Bool)

(assert (=> b!3585137 (= e!2218253 (and tp!1097629 (inv!50999 (tag!6223 anOtherTypeRule!33)) (inv!51002 (transformation!5557 anOtherTypeRule!33)) e!2218243))))

(declare-fun res!1446723 () Bool)

(assert (=> start!332560 (=> (not res!1446723) (not e!2218248))))

(assert (=> start!332560 (= res!1446723 (is-Lexer!5144 thiss!23823))))

(assert (=> start!332560 e!2218248))

(declare-fun e!2218254 () Bool)

(assert (=> start!332560 e!2218254))

(declare-fun e!2218241 () Bool)

(assert (=> start!332560 e!2218241))

(assert (=> start!332560 true))

(declare-fun inv!51003 (Token!10480) Bool)

(assert (=> start!332560 (and (inv!51003 token!511) e!2218246)))

(declare-fun e!2218259 () Bool)

(assert (=> start!332560 e!2218259))

(assert (=> start!332560 e!2218253))

(declare-fun b!3585131 () Bool)

(declare-fun tp!1097622 () Bool)

(assert (=> b!3585131 (= e!2218239 (and tp!1097622 (inv!50999 (tag!6223 (rule!8271 token!511))) (inv!51002 (transformation!5557 (rule!8271 token!511))) e!2218251))))

(declare-fun b!3585138 () Bool)

(assert (=> b!3585138 (= e!2218248 e!2218244)))

(declare-fun res!1446728 () Bool)

(assert (=> b!3585138 (=> (not res!1446728) (not e!2218244))))

(assert (=> b!3585138 (= res!1446728 (isDefined!5979 lt!1229629))))

(assert (=> b!3585138 (= lt!1229629 (maxPrefix!2680 thiss!23823 rules!3307 lt!1229632))))

(declare-fun list!13846 (BalanceConc!22528) List!37800)

(declare-fun charsOf!3571 (Token!10480) BalanceConc!22528)

(assert (=> b!3585138 (= lt!1229632 (list!13846 (charsOf!3571 token!511)))))

(declare-fun b!3585139 () Bool)

(declare-fun res!1446730 () Bool)

(assert (=> b!3585139 (=> (not res!1446730) (not e!2218242))))

(declare-fun isEmpty!22193 (List!37800) Bool)

(assert (=> b!3585139 (= res!1446730 (isEmpty!22193 (_2!21920 lt!1229635)))))

(declare-fun b!3585140 () Bool)

(declare-fun res!1446721 () Bool)

(assert (=> b!3585140 (=> res!1446721 e!2218256)))

(declare-fun lt!1229636 () C!20818)

(declare-fun contains!7176 (List!37800 C!20818) Bool)

(declare-fun usedCharacters!771 (Regex!10316) List!37800)

(assert (=> b!3585140 (= res!1446721 (not (contains!7176 (usedCharacters!771 (regex!5557 anOtherTypeRule!33)) lt!1229636)))))

(declare-fun b!3585141 () Bool)

(declare-fun e!2218247 () Bool)

(declare-fun tp!1097617 () Bool)

(assert (=> b!3585141 (= e!2218254 (and e!2218247 tp!1097617))))

(declare-fun b!3585142 () Bool)

(declare-fun e!2218258 () Bool)

(assert (=> b!3585142 (= e!2218242 (not e!2218258))))

(declare-fun res!1446731 () Bool)

(assert (=> b!3585142 (=> res!1446731 e!2218258)))

(declare-fun matchR!4885 (Regex!10316 List!37800) Bool)

(assert (=> b!3585142 (= res!1446731 (not (matchR!4885 (regex!5557 rule!403) lt!1229632)))))

(declare-fun ruleValid!1822 (LexerInterface!5146 Rule!10914) Bool)

(assert (=> b!3585142 (ruleValid!1822 thiss!23823 rule!403)))

(declare-fun lt!1229633 () Unit!53674)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!977 (LexerInterface!5146 Rule!10914 List!37801) Unit!53674)

(assert (=> b!3585142 (= lt!1229633 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!977 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2218250 () Bool)

(assert (=> b!3585143 (= e!2218250 (and tp!1097615 tp!1097628))))

(declare-fun b!3585144 () Bool)

(declare-fun res!1446732 () Bool)

(assert (=> b!3585144 (=> (not res!1446732) (not e!2218248))))

(assert (=> b!3585144 (= res!1446732 (contains!7175 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3585145 () Bool)

(declare-fun res!1446725 () Bool)

(assert (=> b!3585145 (=> res!1446725 e!2218258)))

(assert (=> b!3585145 (= res!1446725 (isEmpty!22193 suffix!1395))))

(declare-fun tp!1097621 () Bool)

(declare-fun b!3585146 () Bool)

(assert (=> b!3585146 (= e!2218259 (and tp!1097621 (inv!50999 (tag!6223 rule!403)) (inv!51002 (transformation!5557 rule!403)) e!2218245))))

(declare-fun b!3585147 () Bool)

(assert (=> b!3585147 (= e!2218258 e!2218256)))

(declare-fun res!1446735 () Bool)

(assert (=> b!3585147 (=> res!1446735 e!2218256)))

(assert (=> b!3585147 (= res!1446735 (contains!7176 (usedCharacters!771 (regex!5557 rule!403)) lt!1229636))))

(declare-fun head!7474 (List!37800) C!20818)

(assert (=> b!3585147 (= lt!1229636 (head!7474 suffix!1395))))

(declare-fun b!3585148 () Bool)

(declare-fun res!1446733 () Bool)

(assert (=> b!3585148 (=> (not res!1446733) (not e!2218248))))

(declare-fun rulesInvariant!4543 (LexerInterface!5146 List!37801) Bool)

(assert (=> b!3585148 (= res!1446733 (rulesInvariant!4543 thiss!23823 rules!3307))))

(assert (=> b!3585149 (= e!2218243 (and tp!1097625 tp!1097626))))

(declare-fun b!3585150 () Bool)

(declare-fun res!1446729 () Bool)

(assert (=> b!3585150 (=> res!1446729 e!2218256)))

(declare-fun sepAndNonSepRulesDisjointChars!1727 (List!37801 List!37801) Bool)

(assert (=> b!3585150 (= res!1446729 (not (sepAndNonSepRulesDisjointChars!1727 rules!3307 rules!3307)))))

(declare-fun b!3585151 () Bool)

(declare-fun tp_is_empty!17715 () Bool)

(declare-fun tp!1097623 () Bool)

(assert (=> b!3585151 (= e!2218241 (and tp_is_empty!17715 tp!1097623))))

(declare-fun b!3585152 () Bool)

(declare-fun tp!1097616 () Bool)

(assert (=> b!3585152 (= e!2218247 (and tp!1097616 (inv!50999 (tag!6223 (h!43097 rules!3307))) (inv!51002 (transformation!5557 (h!43097 rules!3307))) e!2218250))))

(assert (= (and start!332560 res!1446723) b!3585134))

(assert (= (and b!3585134 res!1446727) b!3585148))

(assert (= (and b!3585148 res!1446733) b!3585135))

(assert (= (and b!3585135 res!1446722) b!3585144))

(assert (= (and b!3585144 res!1446732) b!3585136))

(assert (= (and b!3585136 res!1446726) b!3585138))

(assert (= (and b!3585138 res!1446728) b!3585128))

(assert (= (and b!3585128 res!1446734) b!3585139))

(assert (= (and b!3585139 res!1446730) b!3585133))

(assert (= (and b!3585133 res!1446724) b!3585142))

(assert (= (and b!3585142 (not res!1446731)) b!3585145))

(assert (= (and b!3585145 (not res!1446725)) b!3585147))

(assert (= (and b!3585147 (not res!1446735)) b!3585140))

(assert (= (and b!3585140 (not res!1446721)) b!3585150))

(assert (= (and b!3585150 (not res!1446729)) b!3585132))

(assert (= b!3585152 b!3585143))

(assert (= b!3585141 b!3585152))

(assert (= (and start!332560 (is-Cons!37677 rules!3307)) b!3585141))

(assert (= (and start!332560 (is-Cons!37676 suffix!1395)) b!3585151))

(assert (= b!3585131 b!3585127))

(assert (= b!3585130 b!3585131))

(assert (= start!332560 b!3585130))

(assert (= b!3585146 b!3585129))

(assert (= start!332560 b!3585146))

(assert (= b!3585137 b!3585149))

(assert (= start!332560 b!3585137))

(declare-fun m!4078413 () Bool)

(assert (=> b!3585137 m!4078413))

(declare-fun m!4078415 () Bool)

(assert (=> b!3585137 m!4078415))

(declare-fun m!4078417 () Bool)

(assert (=> b!3585135 m!4078417))

(declare-fun m!4078419 () Bool)

(assert (=> b!3585128 m!4078419))

(declare-fun m!4078421 () Bool)

(assert (=> b!3585132 m!4078421))

(declare-fun m!4078423 () Bool)

(assert (=> b!3585132 m!4078423))

(declare-fun m!4078425 () Bool)

(assert (=> b!3585132 m!4078425))

(declare-fun m!4078427 () Bool)

(assert (=> b!3585132 m!4078427))

(declare-fun m!4078429 () Bool)

(assert (=> b!3585132 m!4078429))

(declare-fun m!4078431 () Bool)

(assert (=> b!3585132 m!4078431))

(declare-fun m!4078433 () Bool)

(assert (=> b!3585144 m!4078433))

(declare-fun m!4078435 () Bool)

(assert (=> b!3585147 m!4078435))

(assert (=> b!3585147 m!4078435))

(declare-fun m!4078437 () Bool)

(assert (=> b!3585147 m!4078437))

(declare-fun m!4078439 () Bool)

(assert (=> b!3585147 m!4078439))

(declare-fun m!4078441 () Bool)

(assert (=> b!3585152 m!4078441))

(declare-fun m!4078443 () Bool)

(assert (=> b!3585152 m!4078443))

(declare-fun m!4078445 () Bool)

(assert (=> b!3585138 m!4078445))

(declare-fun m!4078447 () Bool)

(assert (=> b!3585138 m!4078447))

(declare-fun m!4078449 () Bool)

(assert (=> b!3585138 m!4078449))

(assert (=> b!3585138 m!4078449))

(declare-fun m!4078451 () Bool)

(assert (=> b!3585138 m!4078451))

(declare-fun m!4078453 () Bool)

(assert (=> b!3585145 m!4078453))

(declare-fun m!4078455 () Bool)

(assert (=> b!3585150 m!4078455))

(declare-fun m!4078457 () Bool)

(assert (=> b!3585134 m!4078457))

(declare-fun m!4078459 () Bool)

(assert (=> b!3585131 m!4078459))

(declare-fun m!4078461 () Bool)

(assert (=> b!3585131 m!4078461))

(declare-fun m!4078463 () Bool)

(assert (=> b!3585146 m!4078463))

(declare-fun m!4078465 () Bool)

(assert (=> b!3585146 m!4078465))

(declare-fun m!4078467 () Bool)

(assert (=> b!3585140 m!4078467))

(assert (=> b!3585140 m!4078467))

(declare-fun m!4078469 () Bool)

(assert (=> b!3585140 m!4078469))

(declare-fun m!4078471 () Bool)

(assert (=> b!3585148 m!4078471))

(declare-fun m!4078473 () Bool)

(assert (=> start!332560 m!4078473))

(declare-fun m!4078475 () Bool)

(assert (=> b!3585139 m!4078475))

(declare-fun m!4078477 () Bool)

(assert (=> b!3585142 m!4078477))

(declare-fun m!4078479 () Bool)

(assert (=> b!3585142 m!4078479))

(declare-fun m!4078481 () Bool)

(assert (=> b!3585142 m!4078481))

(declare-fun m!4078483 () Bool)

(assert (=> b!3585130 m!4078483))

(push 1)

(assert b_and!258885)

(assert b_and!258877)

(assert (not b!3585148))

(assert (not b!3585128))

(assert (not b_next!92981))

(assert (not b!3585138))

(assert (not b!3585131))

(assert (not b!3585152))

(assert b_and!258881)

(assert (not b_next!92969))

(assert (not b!3585139))

(assert b_and!258879)

(assert (not b!3585144))

(assert (not b!3585130))

(assert (not b_next!92979))

(assert tp_is_empty!17715)

(assert b_and!258875)

(assert (not b!3585135))

(assert (not b!3585132))

(assert (not b!3585140))

(assert b_and!258883)

(assert (not b!3585137))

(assert (not b!3585142))

(assert b_and!258871)

(assert (not b!3585134))

(assert (not b_next!92975))

(assert (not b_next!92977))

(assert (not b!3585147))

(assert (not b!3585141))

(assert (not b!3585146))

(assert (not b!3585151))

(assert (not b_next!92973))

(assert (not b_next!92983))

(assert (not start!332560))

(assert b_and!258873)

(assert (not b_next!92971))

(assert (not b!3585145))

(assert (not b!3585150))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92979))

(assert b_and!258875)

(assert b_and!258883)

(assert b_and!258871)

(assert b_and!258885)

(assert (not b_next!92973))

(assert (not b_next!92983))

(assert b_and!258877)

(assert (not b_next!92981))

(assert b_and!258881)

(assert (not b_next!92969))

(assert b_and!258879)

(assert (not b_next!92975))

(assert (not b_next!92977))

(assert b_and!258873)

(assert (not b_next!92971))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1057072 () Bool)

(declare-fun lt!1229667 () Bool)

(declare-fun content!5350 (List!37801) (Set Rule!10914))

(assert (=> d!1057072 (= lt!1229667 (set.member rule!403 (content!5350 rules!3307)))))

(declare-fun e!2218327 () Bool)

(assert (=> d!1057072 (= lt!1229667 e!2218327)))

(declare-fun res!1446793 () Bool)

(assert (=> d!1057072 (=> (not res!1446793) (not e!2218327))))

(assert (=> d!1057072 (= res!1446793 (is-Cons!37677 rules!3307))))

(assert (=> d!1057072 (= (contains!7175 rules!3307 rule!403) lt!1229667)))

(declare-fun b!3585235 () Bool)

(declare-fun e!2218328 () Bool)

(assert (=> b!3585235 (= e!2218327 e!2218328)))

(declare-fun res!1446794 () Bool)

(assert (=> b!3585235 (=> res!1446794 e!2218328)))

(assert (=> b!3585235 (= res!1446794 (= (h!43097 rules!3307) rule!403))))

(declare-fun b!3585236 () Bool)

(assert (=> b!3585236 (= e!2218328 (contains!7175 (t!290554 rules!3307) rule!403))))

(assert (= (and d!1057072 res!1446793) b!3585235))

(assert (= (and b!3585235 (not res!1446794)) b!3585236))

(declare-fun m!4078557 () Bool)

(assert (=> d!1057072 m!4078557))

(declare-fun m!4078559 () Bool)

(assert (=> d!1057072 m!4078559))

(declare-fun m!4078561 () Bool)

(assert (=> b!3585236 m!4078561))

(assert (=> b!3585135 d!1057072))

(declare-fun d!1057074 () Bool)

(assert (=> d!1057074 (= (inv!50999 (tag!6223 rule!403)) (= (mod (str.len (value!178835 (tag!6223 rule!403))) 2) 0))))

(assert (=> b!3585146 d!1057074))

(declare-fun d!1057076 () Bool)

(declare-fun res!1446797 () Bool)

(declare-fun e!2218331 () Bool)

(assert (=> d!1057076 (=> (not res!1446797) (not e!2218331))))

(declare-fun semiInverseModEq!2354 (Int Int) Bool)

(assert (=> d!1057076 (= res!1446797 (semiInverseModEq!2354 (toChars!7696 (transformation!5557 rule!403)) (toValue!7837 (transformation!5557 rule!403))))))

(assert (=> d!1057076 (= (inv!51002 (transformation!5557 rule!403)) e!2218331)))

(declare-fun b!3585239 () Bool)

(declare-fun equivClasses!2253 (Int Int) Bool)

(assert (=> b!3585239 (= e!2218331 (equivClasses!2253 (toChars!7696 (transformation!5557 rule!403)) (toValue!7837 (transformation!5557 rule!403))))))

(assert (= (and d!1057076 res!1446797) b!3585239))

(declare-fun m!4078563 () Bool)

(assert (=> d!1057076 m!4078563))

(declare-fun m!4078565 () Bool)

(assert (=> b!3585239 m!4078565))

(assert (=> b!3585146 d!1057076))

(declare-fun d!1057078 () Bool)

(assert (=> d!1057078 (= (isEmpty!22193 suffix!1395) (is-Nil!37676 suffix!1395))))

(assert (=> b!3585145 d!1057078))

(declare-fun d!1057080 () Bool)

(declare-fun res!1446802 () Bool)

(declare-fun e!2218334 () Bool)

(assert (=> d!1057080 (=> (not res!1446802) (not e!2218334))))

(assert (=> d!1057080 (= res!1446802 (not (isEmpty!22193 (originalCharacters!6271 token!511))))))

(assert (=> d!1057080 (= (inv!51003 token!511) e!2218334)))

(declare-fun b!3585244 () Bool)

(declare-fun res!1446803 () Bool)

(assert (=> b!3585244 (=> (not res!1446803) (not e!2218334))))

(declare-fun dynLambda!16201 (Int TokenValue!5787) BalanceConc!22528)

(assert (=> b!3585244 (= res!1446803 (= (originalCharacters!6271 token!511) (list!13846 (dynLambda!16201 (toChars!7696 (transformation!5557 (rule!8271 token!511))) (value!178836 token!511)))))))

(declare-fun b!3585245 () Bool)

(declare-fun size!28713 (List!37800) Int)

(assert (=> b!3585245 (= e!2218334 (= (size!28711 token!511) (size!28713 (originalCharacters!6271 token!511))))))

(assert (= (and d!1057080 res!1446802) b!3585244))

(assert (= (and b!3585244 res!1446803) b!3585245))

(declare-fun b_lambda!105923 () Bool)

(assert (=> (not b_lambda!105923) (not b!3585244)))

(declare-fun t!290559 () Bool)

(declare-fun tb!204521 () Bool)

(assert (=> (and b!3585127 (= (toChars!7696 (transformation!5557 (rule!8271 token!511))) (toChars!7696 (transformation!5557 (rule!8271 token!511)))) t!290559) tb!204521))

(declare-fun b!3585250 () Bool)

(declare-fun e!2218337 () Bool)

(declare-fun tp!1097677 () Bool)

(declare-fun inv!51006 (Conc!11457) Bool)

(assert (=> b!3585250 (= e!2218337 (and (inv!51006 (c!621053 (dynLambda!16201 (toChars!7696 (transformation!5557 (rule!8271 token!511))) (value!178836 token!511)))) tp!1097677))))

(declare-fun result!249366 () Bool)

(declare-fun inv!51007 (BalanceConc!22528) Bool)

(assert (=> tb!204521 (= result!249366 (and (inv!51007 (dynLambda!16201 (toChars!7696 (transformation!5557 (rule!8271 token!511))) (value!178836 token!511))) e!2218337))))

(assert (= tb!204521 b!3585250))

(declare-fun m!4078567 () Bool)

(assert (=> b!3585250 m!4078567))

(declare-fun m!4078569 () Bool)

(assert (=> tb!204521 m!4078569))

(assert (=> b!3585244 t!290559))

(declare-fun b_and!258903 () Bool)

(assert (= b_and!258873 (and (=> t!290559 result!249366) b_and!258903)))

(declare-fun tb!204523 () Bool)

(declare-fun t!290561 () Bool)

(assert (=> (and b!3585143 (= (toChars!7696 (transformation!5557 (h!43097 rules!3307))) (toChars!7696 (transformation!5557 (rule!8271 token!511)))) t!290561) tb!204523))

(declare-fun result!249370 () Bool)

(assert (= result!249370 result!249366))

(assert (=> b!3585244 t!290561))

(declare-fun b_and!258905 () Bool)

(assert (= b_and!258877 (and (=> t!290561 result!249370) b_and!258905)))

(declare-fun tb!204525 () Bool)

(declare-fun t!290563 () Bool)

(assert (=> (and b!3585129 (= (toChars!7696 (transformation!5557 rule!403)) (toChars!7696 (transformation!5557 (rule!8271 token!511)))) t!290563) tb!204525))

(declare-fun result!249372 () Bool)

(assert (= result!249372 result!249366))

(assert (=> b!3585244 t!290563))

(declare-fun b_and!258907 () Bool)

(assert (= b_and!258881 (and (=> t!290563 result!249372) b_and!258907)))

(declare-fun tb!204527 () Bool)

(declare-fun t!290565 () Bool)

(assert (=> (and b!3585149 (= (toChars!7696 (transformation!5557 anOtherTypeRule!33)) (toChars!7696 (transformation!5557 (rule!8271 token!511)))) t!290565) tb!204527))

(declare-fun result!249374 () Bool)

(assert (= result!249374 result!249366))

(assert (=> b!3585244 t!290565))

(declare-fun b_and!258909 () Bool)

(assert (= b_and!258885 (and (=> t!290565 result!249374) b_and!258909)))

(declare-fun m!4078571 () Bool)

(assert (=> d!1057080 m!4078571))

(declare-fun m!4078573 () Bool)

(assert (=> b!3585244 m!4078573))

(assert (=> b!3585244 m!4078573))

(declare-fun m!4078575 () Bool)

(assert (=> b!3585244 m!4078575))

(declare-fun m!4078577 () Bool)

(assert (=> b!3585245 m!4078577))

(assert (=> start!332560 d!1057080))

(declare-fun d!1057082 () Bool)

(declare-fun lt!1229670 () Bool)

(declare-fun content!5351 (List!37800) (Set C!20818))

(assert (=> d!1057082 (= lt!1229670 (set.member lt!1229636 (content!5351 (usedCharacters!771 (regex!5557 rule!403)))))))

(declare-fun e!2218342 () Bool)

(assert (=> d!1057082 (= lt!1229670 e!2218342)))

(declare-fun res!1446809 () Bool)

(assert (=> d!1057082 (=> (not res!1446809) (not e!2218342))))

(assert (=> d!1057082 (= res!1446809 (is-Cons!37676 (usedCharacters!771 (regex!5557 rule!403))))))

(assert (=> d!1057082 (= (contains!7176 (usedCharacters!771 (regex!5557 rule!403)) lt!1229636) lt!1229670)))

(declare-fun b!3585255 () Bool)

(declare-fun e!2218343 () Bool)

(assert (=> b!3585255 (= e!2218342 e!2218343)))

(declare-fun res!1446808 () Bool)

(assert (=> b!3585255 (=> res!1446808 e!2218343)))

(assert (=> b!3585255 (= res!1446808 (= (h!43096 (usedCharacters!771 (regex!5557 rule!403))) lt!1229636))))

(declare-fun b!3585256 () Bool)

(assert (=> b!3585256 (= e!2218343 (contains!7176 (t!290553 (usedCharacters!771 (regex!5557 rule!403))) lt!1229636))))

(assert (= (and d!1057082 res!1446809) b!3585255))

(assert (= (and b!3585255 (not res!1446808)) b!3585256))

(assert (=> d!1057082 m!4078435))

(declare-fun m!4078579 () Bool)

(assert (=> d!1057082 m!4078579))

(declare-fun m!4078581 () Bool)

(assert (=> d!1057082 m!4078581))

(declare-fun m!4078583 () Bool)

(assert (=> b!3585256 m!4078583))

(assert (=> b!3585147 d!1057082))

(declare-fun call!259584 () List!37800)

(declare-fun c!621066 () Bool)

(declare-fun bm!259578 () Bool)

(declare-fun c!621065 () Bool)

(assert (=> bm!259578 (= call!259584 (usedCharacters!771 (ite c!621065 (reg!10645 (regex!5557 rule!403)) (ite c!621066 (regOne!21145 (regex!5557 rule!403)) (regTwo!21144 (regex!5557 rule!403))))))))

(declare-fun bm!259579 () Bool)

(declare-fun call!259583 () List!37800)

(assert (=> bm!259579 (= call!259583 (usedCharacters!771 (ite c!621066 (regTwo!21145 (regex!5557 rule!403)) (regOne!21144 (regex!5557 rule!403)))))))

(declare-fun b!3585273 () Bool)

(declare-fun e!2218352 () List!37800)

(assert (=> b!3585273 (= e!2218352 Nil!37676)))

(declare-fun b!3585274 () Bool)

(declare-fun e!2218355 () List!37800)

(declare-fun call!259585 () List!37800)

(assert (=> b!3585274 (= e!2218355 call!259585)))

(declare-fun b!3585275 () Bool)

(declare-fun e!2218354 () List!37800)

(assert (=> b!3585275 (= e!2218354 call!259584)))

(declare-fun bm!259580 () Bool)

(declare-fun call!259586 () List!37800)

(assert (=> bm!259580 (= call!259586 call!259584)))

(declare-fun b!3585276 () Bool)

(assert (=> b!3585276 (= c!621065 (is-Star!10316 (regex!5557 rule!403)))))

(declare-fun e!2218353 () List!37800)

(assert (=> b!3585276 (= e!2218353 e!2218354)))

(declare-fun d!1057084 () Bool)

(declare-fun c!621068 () Bool)

(assert (=> d!1057084 (= c!621068 (or (is-EmptyExpr!10316 (regex!5557 rule!403)) (is-EmptyLang!10316 (regex!5557 rule!403))))))

(assert (=> d!1057084 (= (usedCharacters!771 (regex!5557 rule!403)) e!2218352)))

(declare-fun b!3585277 () Bool)

(assert (=> b!3585277 (= e!2218355 call!259585)))

(declare-fun b!3585278 () Bool)

(assert (=> b!3585278 (= e!2218354 e!2218355)))

(assert (=> b!3585278 (= c!621066 (is-Union!10316 (regex!5557 rule!403)))))

(declare-fun b!3585279 () Bool)

(assert (=> b!3585279 (= e!2218352 e!2218353)))

(declare-fun c!621067 () Bool)

(assert (=> b!3585279 (= c!621067 (is-ElementMatch!10316 (regex!5557 rule!403)))))

(declare-fun b!3585280 () Bool)

(assert (=> b!3585280 (= e!2218353 (Cons!37676 (c!621052 (regex!5557 rule!403)) Nil!37676))))

(declare-fun bm!259581 () Bool)

(assert (=> bm!259581 (= call!259585 (++!9373 (ite c!621066 call!259586 call!259583) (ite c!621066 call!259583 call!259586)))))

(assert (= (and d!1057084 c!621068) b!3585273))

(assert (= (and d!1057084 (not c!621068)) b!3585279))

(assert (= (and b!3585279 c!621067) b!3585280))

(assert (= (and b!3585279 (not c!621067)) b!3585276))

(assert (= (and b!3585276 c!621065) b!3585275))

(assert (= (and b!3585276 (not c!621065)) b!3585278))

(assert (= (and b!3585278 c!621066) b!3585277))

(assert (= (and b!3585278 (not c!621066)) b!3585274))

(assert (= (or b!3585277 b!3585274) bm!259580))

(assert (= (or b!3585277 b!3585274) bm!259579))

(assert (= (or b!3585277 b!3585274) bm!259581))

(assert (= (or b!3585275 bm!259580) bm!259578))

(declare-fun m!4078585 () Bool)

(assert (=> bm!259578 m!4078585))

(declare-fun m!4078587 () Bool)

(assert (=> bm!259579 m!4078587))

(declare-fun m!4078589 () Bool)

(assert (=> bm!259581 m!4078589))

(assert (=> b!3585147 d!1057084))

(declare-fun d!1057086 () Bool)

(assert (=> d!1057086 (= (head!7474 suffix!1395) (h!43096 suffix!1395))))

(assert (=> b!3585147 d!1057086))

(declare-fun d!1057088 () Bool)

(assert (=> d!1057088 (isDefined!5979 (maxPrefix!2680 thiss!23823 rules!3307 (++!9373 lt!1229632 suffix!1395)))))

(declare-fun lt!1229728 () Unit!53674)

(declare-fun e!2218393 () Unit!53674)

(assert (=> d!1057088 (= lt!1229728 e!2218393)))

(declare-fun c!621085 () Bool)

(declare-fun isEmpty!22196 (Option!7747) Bool)

(assert (=> d!1057088 (= c!621085 (isEmpty!22196 (maxPrefix!2680 thiss!23823 rules!3307 (++!9373 lt!1229632 suffix!1395))))))

(declare-fun lt!1229727 () Unit!53674)

(declare-fun lt!1229738 () Unit!53674)

(assert (=> d!1057088 (= lt!1229727 lt!1229738)))

(declare-fun e!2218392 () Bool)

(assert (=> d!1057088 e!2218392))

(declare-fun res!1446843 () Bool)

(assert (=> d!1057088 (=> (not res!1446843) (not e!2218392))))

(declare-fun lt!1229730 () Token!10480)

(declare-datatypes ((Option!7749 0))(
  ( (None!7748) (Some!7748 (v!37410 Rule!10914)) )
))
(declare-fun isDefined!5981 (Option!7749) Bool)

(declare-fun getRuleFromTag!1166 (LexerInterface!5146 List!37801 String!42271) Option!7749)

(assert (=> d!1057088 (= res!1446843 (isDefined!5981 (getRuleFromTag!1166 thiss!23823 rules!3307 (tag!6223 (rule!8271 lt!1229730)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1166 (LexerInterface!5146 List!37801 List!37800 Token!10480) Unit!53674)

(assert (=> d!1057088 (= lt!1229738 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1166 thiss!23823 rules!3307 lt!1229632 lt!1229730))))

(declare-fun lt!1229725 () Unit!53674)

(declare-fun lt!1229726 () Unit!53674)

(assert (=> d!1057088 (= lt!1229725 lt!1229726)))

(declare-fun lt!1229735 () List!37800)

(assert (=> d!1057088 (isPrefix!2920 lt!1229735 (++!9373 lt!1229632 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!408 (List!37800 List!37800 List!37800) Unit!53674)

(assert (=> d!1057088 (= lt!1229726 (lemmaPrefixStaysPrefixWhenAddingToSuffix!408 lt!1229735 lt!1229632 suffix!1395))))

(assert (=> d!1057088 (= lt!1229735 (list!13846 (charsOf!3571 lt!1229730)))))

(declare-fun lt!1229722 () Unit!53674)

(declare-fun lt!1229729 () Unit!53674)

(assert (=> d!1057088 (= lt!1229722 lt!1229729)))

(declare-fun lt!1229737 () List!37800)

(declare-fun lt!1229724 () List!37800)

(assert (=> d!1057088 (isPrefix!2920 lt!1229737 (++!9373 lt!1229737 lt!1229724))))

(assert (=> d!1057088 (= lt!1229729 (lemmaConcatTwoListThenFirstIsPrefix!1841 lt!1229737 lt!1229724))))

(assert (=> d!1057088 (= lt!1229724 (_2!21920 (get!12136 (maxPrefix!2680 thiss!23823 rules!3307 lt!1229632))))))

(assert (=> d!1057088 (= lt!1229737 (list!13846 (charsOf!3571 lt!1229730)))))

(declare-datatypes ((List!37805 0))(
  ( (Nil!37681) (Cons!37681 (h!43101 Token!10480) (t!290576 List!37805)) )
))
(declare-fun head!7476 (List!37805) Token!10480)

(declare-datatypes ((IArray!22923 0))(
  ( (IArray!22924 (innerList!11519 List!37805)) )
))
(declare-datatypes ((Conc!11459 0))(
  ( (Node!11459 (left!29452 Conc!11459) (right!29782 Conc!11459) (csize!23148 Int) (cheight!11670 Int)) (Leaf!17849 (xs!14661 IArray!22923) (csize!23149 Int)) (Empty!11459) )
))
(declare-datatypes ((BalanceConc!22532 0))(
  ( (BalanceConc!22533 (c!621132 Conc!11459)) )
))
(declare-fun list!13848 (BalanceConc!22532) List!37805)

(declare-datatypes ((tuple2!37576 0))(
  ( (tuple2!37577 (_1!21922 BalanceConc!22532) (_2!21922 BalanceConc!22528)) )
))
(declare-fun lex!2440 (LexerInterface!5146 List!37801 BalanceConc!22528) tuple2!37576)

(declare-fun seqFromList!4112 (List!37800) BalanceConc!22528)

(assert (=> d!1057088 (= lt!1229730 (head!7476 (list!13848 (_1!21922 (lex!2440 thiss!23823 rules!3307 (seqFromList!4112 lt!1229632))))))))

(assert (=> d!1057088 (not (isEmpty!22192 rules!3307))))

(assert (=> d!1057088 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!826 thiss!23823 rules!3307 lt!1229632 suffix!1395) lt!1229728)))

(declare-fun b!3585347 () Bool)

(declare-fun Unit!53679 () Unit!53674)

(assert (=> b!3585347 (= e!2218393 Unit!53679)))

(declare-fun lt!1229733 () List!37800)

(assert (=> b!3585347 (= lt!1229733 (++!9373 lt!1229632 suffix!1395))))

(declare-fun lt!1229736 () Unit!53674)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!444 (LexerInterface!5146 Rule!10914 List!37801 List!37800) Unit!53674)

(assert (=> b!3585347 (= lt!1229736 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!444 thiss!23823 (rule!8271 lt!1229730) rules!3307 lt!1229733))))

(declare-fun maxPrefixOneRule!1832 (LexerInterface!5146 Rule!10914 List!37800) Option!7747)

(assert (=> b!3585347 (isEmpty!22196 (maxPrefixOneRule!1832 thiss!23823 (rule!8271 lt!1229730) lt!1229733))))

(declare-fun lt!1229734 () Unit!53674)

(assert (=> b!3585347 (= lt!1229734 lt!1229736)))

(declare-fun lt!1229723 () List!37800)

(assert (=> b!3585347 (= lt!1229723 (list!13846 (charsOf!3571 lt!1229730)))))

(declare-fun lt!1229732 () Unit!53674)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!432 (LexerInterface!5146 Rule!10914 List!37800 List!37800) Unit!53674)

(assert (=> b!3585347 (= lt!1229732 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!432 thiss!23823 (rule!8271 lt!1229730) lt!1229723 (++!9373 lt!1229632 suffix!1395)))))

(assert (=> b!3585347 (not (matchR!4885 (regex!5557 (rule!8271 lt!1229730)) lt!1229723))))

(declare-fun lt!1229731 () Unit!53674)

(assert (=> b!3585347 (= lt!1229731 lt!1229732)))

(assert (=> b!3585347 false))

(declare-fun b!3585345 () Bool)

(declare-fun res!1446842 () Bool)

(assert (=> b!3585345 (=> (not res!1446842) (not e!2218392))))

(declare-fun get!12138 (Option!7749) Rule!10914)

(assert (=> b!3585345 (= res!1446842 (matchR!4885 (regex!5557 (get!12138 (getRuleFromTag!1166 thiss!23823 rules!3307 (tag!6223 (rule!8271 lt!1229730))))) (list!13846 (charsOf!3571 lt!1229730))))))

(declare-fun b!3585348 () Bool)

(declare-fun Unit!53680 () Unit!53674)

(assert (=> b!3585348 (= e!2218393 Unit!53680)))

(declare-fun b!3585346 () Bool)

(assert (=> b!3585346 (= e!2218392 (= (rule!8271 lt!1229730) (get!12138 (getRuleFromTag!1166 thiss!23823 rules!3307 (tag!6223 (rule!8271 lt!1229730))))))))

(assert (= (and d!1057088 res!1446843) b!3585345))

(assert (= (and b!3585345 res!1446842) b!3585346))

(assert (= (and d!1057088 c!621085) b!3585347))

(assert (= (and d!1057088 (not c!621085)) b!3585348))

(declare-fun m!4078615 () Bool)

(assert (=> d!1057088 m!4078615))

(declare-fun m!4078617 () Bool)

(assert (=> d!1057088 m!4078617))

(declare-fun m!4078619 () Bool)

(assert (=> d!1057088 m!4078619))

(declare-fun m!4078621 () Bool)

(assert (=> d!1057088 m!4078621))

(declare-fun m!4078623 () Bool)

(assert (=> d!1057088 m!4078623))

(assert (=> d!1057088 m!4078615))

(declare-fun m!4078625 () Bool)

(assert (=> d!1057088 m!4078625))

(declare-fun m!4078627 () Bool)

(assert (=> d!1057088 m!4078627))

(assert (=> d!1057088 m!4078431))

(assert (=> d!1057088 m!4078621))

(assert (=> d!1057088 m!4078447))

(declare-fun m!4078629 () Bool)

(assert (=> d!1057088 m!4078629))

(declare-fun m!4078631 () Bool)

(assert (=> d!1057088 m!4078631))

(declare-fun m!4078633 () Bool)

(assert (=> d!1057088 m!4078633))

(assert (=> d!1057088 m!4078447))

(declare-fun m!4078635 () Bool)

(assert (=> d!1057088 m!4078635))

(assert (=> d!1057088 m!4078621))

(declare-fun m!4078637 () Bool)

(assert (=> d!1057088 m!4078637))

(assert (=> d!1057088 m!4078617))

(declare-fun m!4078639 () Bool)

(assert (=> d!1057088 m!4078639))

(declare-fun m!4078641 () Bool)

(assert (=> d!1057088 m!4078641))

(assert (=> d!1057088 m!4078457))

(assert (=> d!1057088 m!4078629))

(assert (=> d!1057088 m!4078431))

(declare-fun m!4078643 () Bool)

(assert (=> d!1057088 m!4078643))

(assert (=> d!1057088 m!4078639))

(declare-fun m!4078645 () Bool)

(assert (=> d!1057088 m!4078645))

(assert (=> d!1057088 m!4078431))

(declare-fun m!4078647 () Bool)

(assert (=> d!1057088 m!4078647))

(assert (=> d!1057088 m!4078647))

(declare-fun m!4078649 () Bool)

(assert (=> d!1057088 m!4078649))

(assert (=> b!3585347 m!4078615))

(declare-fun m!4078651 () Bool)

(assert (=> b!3585347 m!4078651))

(assert (=> b!3585347 m!4078615))

(assert (=> b!3585347 m!4078625))

(declare-fun m!4078653 () Bool)

(assert (=> b!3585347 m!4078653))

(assert (=> b!3585347 m!4078431))

(declare-fun m!4078655 () Bool)

(assert (=> b!3585347 m!4078655))

(assert (=> b!3585347 m!4078651))

(declare-fun m!4078657 () Bool)

(assert (=> b!3585347 m!4078657))

(assert (=> b!3585347 m!4078431))

(declare-fun m!4078659 () Bool)

(assert (=> b!3585347 m!4078659))

(assert (=> b!3585345 m!4078615))

(assert (=> b!3585345 m!4078615))

(assert (=> b!3585345 m!4078625))

(assert (=> b!3585345 m!4078647))

(declare-fun m!4078661 () Bool)

(assert (=> b!3585345 m!4078661))

(assert (=> b!3585345 m!4078625))

(declare-fun m!4078663 () Bool)

(assert (=> b!3585345 m!4078663))

(assert (=> b!3585345 m!4078647))

(assert (=> b!3585346 m!4078647))

(assert (=> b!3585346 m!4078647))

(assert (=> b!3585346 m!4078661))

(assert (=> b!3585132 d!1057088))

(declare-fun lt!1229746 () List!37800)

(declare-fun b!3585369 () Bool)

(declare-fun e!2218402 () Bool)

(assert (=> b!3585369 (= e!2218402 (or (not (= suffix!1395 Nil!37676)) (= lt!1229746 lt!1229632)))))

(declare-fun b!3585368 () Bool)

(declare-fun res!1446855 () Bool)

(assert (=> b!3585368 (=> (not res!1446855) (not e!2218402))))

(assert (=> b!3585368 (= res!1446855 (= (size!28713 lt!1229746) (+ (size!28713 lt!1229632) (size!28713 suffix!1395))))))

(declare-fun b!3585366 () Bool)

(declare-fun e!2218401 () List!37800)

(assert (=> b!3585366 (= e!2218401 suffix!1395)))

(declare-fun b!3585367 () Bool)

(assert (=> b!3585367 (= e!2218401 (Cons!37676 (h!43096 lt!1229632) (++!9373 (t!290553 lt!1229632) suffix!1395)))))

(declare-fun d!1057104 () Bool)

(assert (=> d!1057104 e!2218402))

(declare-fun res!1446856 () Bool)

(assert (=> d!1057104 (=> (not res!1446856) (not e!2218402))))

(assert (=> d!1057104 (= res!1446856 (= (content!5351 lt!1229746) (set.union (content!5351 lt!1229632) (content!5351 suffix!1395))))))

(assert (=> d!1057104 (= lt!1229746 e!2218401)))

(declare-fun c!621089 () Bool)

(assert (=> d!1057104 (= c!621089 (is-Nil!37676 lt!1229632))))

(assert (=> d!1057104 (= (++!9373 lt!1229632 suffix!1395) lt!1229746)))

(assert (= (and d!1057104 c!621089) b!3585366))

(assert (= (and d!1057104 (not c!621089)) b!3585367))

(assert (= (and d!1057104 res!1446856) b!3585368))

(assert (= (and b!3585368 res!1446855) b!3585369))

(declare-fun m!4078699 () Bool)

(assert (=> b!3585368 m!4078699))

(declare-fun m!4078701 () Bool)

(assert (=> b!3585368 m!4078701))

(declare-fun m!4078703 () Bool)

(assert (=> b!3585368 m!4078703))

(declare-fun m!4078705 () Bool)

(assert (=> b!3585367 m!4078705))

(declare-fun m!4078707 () Bool)

(assert (=> d!1057104 m!4078707))

(declare-fun m!4078709 () Bool)

(assert (=> d!1057104 m!4078709))

(declare-fun m!4078711 () Bool)

(assert (=> d!1057104 m!4078711))

(assert (=> b!3585132 d!1057104))

(declare-fun b!3585378 () Bool)

(declare-fun e!2218410 () Bool)

(declare-fun e!2218411 () Bool)

(assert (=> b!3585378 (= e!2218410 e!2218411)))

(declare-fun res!1446865 () Bool)

(assert (=> b!3585378 (=> (not res!1446865) (not e!2218411))))

(assert (=> b!3585378 (= res!1446865 (not (is-Nil!37676 lt!1229634)))))

(declare-fun d!1057108 () Bool)

(declare-fun e!2218409 () Bool)

(assert (=> d!1057108 e!2218409))

(declare-fun res!1446866 () Bool)

(assert (=> d!1057108 (=> res!1446866 e!2218409)))

(declare-fun lt!1229752 () Bool)

(assert (=> d!1057108 (= res!1446866 (not lt!1229752))))

(assert (=> d!1057108 (= lt!1229752 e!2218410)))

(declare-fun res!1446867 () Bool)

(assert (=> d!1057108 (=> res!1446867 e!2218410)))

(assert (=> d!1057108 (= res!1446867 (is-Nil!37676 lt!1229632))))

(assert (=> d!1057108 (= (isPrefix!2920 lt!1229632 lt!1229634) lt!1229752)))

(declare-fun b!3585380 () Bool)

(declare-fun tail!5554 (List!37800) List!37800)

(assert (=> b!3585380 (= e!2218411 (isPrefix!2920 (tail!5554 lt!1229632) (tail!5554 lt!1229634)))))

(declare-fun b!3585381 () Bool)

(assert (=> b!3585381 (= e!2218409 (>= (size!28713 lt!1229634) (size!28713 lt!1229632)))))

(declare-fun b!3585379 () Bool)

(declare-fun res!1446868 () Bool)

(assert (=> b!3585379 (=> (not res!1446868) (not e!2218411))))

(assert (=> b!3585379 (= res!1446868 (= (head!7474 lt!1229632) (head!7474 lt!1229634)))))

(assert (= (and d!1057108 (not res!1446867)) b!3585378))

(assert (= (and b!3585378 res!1446865) b!3585379))

(assert (= (and b!3585379 res!1446868) b!3585380))

(assert (= (and d!1057108 (not res!1446866)) b!3585381))

(declare-fun m!4078715 () Bool)

(assert (=> b!3585380 m!4078715))

(declare-fun m!4078717 () Bool)

(assert (=> b!3585380 m!4078717))

(assert (=> b!3585380 m!4078715))

(assert (=> b!3585380 m!4078717))

(declare-fun m!4078719 () Bool)

(assert (=> b!3585380 m!4078719))

(declare-fun m!4078721 () Bool)

(assert (=> b!3585381 m!4078721))

(assert (=> b!3585381 m!4078701))

(declare-fun m!4078723 () Bool)

(assert (=> b!3585379 m!4078723))

(declare-fun m!4078725 () Bool)

(assert (=> b!3585379 m!4078725))

(assert (=> b!3585132 d!1057108))

(declare-fun d!1057112 () Bool)

(assert (=> d!1057112 (= (isDefined!5979 lt!1229631) (not (isEmpty!22196 lt!1229631)))))

(declare-fun bs!570032 () Bool)

(assert (= bs!570032 d!1057112))

(declare-fun m!4078727 () Bool)

(assert (=> bs!570032 m!4078727))

(assert (=> b!3585132 d!1057112))

(declare-fun b!3585453 () Bool)

(declare-fun res!1446917 () Bool)

(declare-fun e!2218447 () Bool)

(assert (=> b!3585453 (=> (not res!1446917) (not e!2218447))))

(declare-fun lt!1229769 () Option!7747)

(assert (=> b!3585453 (= res!1446917 (= (++!9373 (list!13846 (charsOf!3571 (_1!21920 (get!12136 lt!1229769)))) (_2!21920 (get!12136 lt!1229769))) lt!1229634))))

(declare-fun b!3585454 () Bool)

(declare-fun e!2218446 () Bool)

(assert (=> b!3585454 (= e!2218446 e!2218447)))

(declare-fun res!1446913 () Bool)

(assert (=> b!3585454 (=> (not res!1446913) (not e!2218447))))

(assert (=> b!3585454 (= res!1446913 (isDefined!5979 lt!1229769))))

(declare-fun bm!259602 () Bool)

(declare-fun call!259607 () Option!7747)

(assert (=> bm!259602 (= call!259607 (maxPrefixOneRule!1832 thiss!23823 (h!43097 rules!3307) lt!1229634))))

(declare-fun d!1057114 () Bool)

(assert (=> d!1057114 e!2218446))

(declare-fun res!1446916 () Bool)

(assert (=> d!1057114 (=> res!1446916 e!2218446)))

(assert (=> d!1057114 (= res!1446916 (isEmpty!22196 lt!1229769))))

(declare-fun e!2218445 () Option!7747)

(assert (=> d!1057114 (= lt!1229769 e!2218445)))

(declare-fun c!621101 () Bool)

(assert (=> d!1057114 (= c!621101 (and (is-Cons!37677 rules!3307) (is-Nil!37677 (t!290554 rules!3307))))))

(declare-fun lt!1229770 () Unit!53674)

(declare-fun lt!1229768 () Unit!53674)

(assert (=> d!1057114 (= lt!1229770 lt!1229768)))

(assert (=> d!1057114 (isPrefix!2920 lt!1229634 lt!1229634)))

(declare-fun lemmaIsPrefixRefl!1873 (List!37800 List!37800) Unit!53674)

(assert (=> d!1057114 (= lt!1229768 (lemmaIsPrefixRefl!1873 lt!1229634 lt!1229634))))

(declare-fun rulesValidInductive!1936 (LexerInterface!5146 List!37801) Bool)

(assert (=> d!1057114 (rulesValidInductive!1936 thiss!23823 rules!3307)))

(assert (=> d!1057114 (= (maxPrefix!2680 thiss!23823 rules!3307 lt!1229634) lt!1229769)))

(declare-fun b!3585455 () Bool)

(declare-fun res!1446914 () Bool)

(assert (=> b!3585455 (=> (not res!1446914) (not e!2218447))))

(assert (=> b!3585455 (= res!1446914 (= (list!13846 (charsOf!3571 (_1!21920 (get!12136 lt!1229769)))) (originalCharacters!6271 (_1!21920 (get!12136 lt!1229769)))))))

(declare-fun b!3585456 () Bool)

(declare-fun res!1446919 () Bool)

(assert (=> b!3585456 (=> (not res!1446919) (not e!2218447))))

(assert (=> b!3585456 (= res!1446919 (matchR!4885 (regex!5557 (rule!8271 (_1!21920 (get!12136 lt!1229769)))) (list!13846 (charsOf!3571 (_1!21920 (get!12136 lt!1229769))))))))

(declare-fun b!3585457 () Bool)

(assert (=> b!3585457 (= e!2218445 call!259607)))

(declare-fun b!3585458 () Bool)

(assert (=> b!3585458 (= e!2218447 (contains!7175 rules!3307 (rule!8271 (_1!21920 (get!12136 lt!1229769)))))))

(declare-fun b!3585459 () Bool)

(declare-fun res!1446915 () Bool)

(assert (=> b!3585459 (=> (not res!1446915) (not e!2218447))))

(declare-fun apply!9069 (TokenValueInjection!11002 BalanceConc!22528) TokenValue!5787)

(assert (=> b!3585459 (= res!1446915 (= (value!178836 (_1!21920 (get!12136 lt!1229769))) (apply!9069 (transformation!5557 (rule!8271 (_1!21920 (get!12136 lt!1229769)))) (seqFromList!4112 (originalCharacters!6271 (_1!21920 (get!12136 lt!1229769)))))))))

(declare-fun b!3585460 () Bool)

(declare-fun lt!1229767 () Option!7747)

(declare-fun lt!1229766 () Option!7747)

(assert (=> b!3585460 (= e!2218445 (ite (and (is-None!7746 lt!1229767) (is-None!7746 lt!1229766)) None!7746 (ite (is-None!7746 lt!1229766) lt!1229767 (ite (is-None!7746 lt!1229767) lt!1229766 (ite (>= (size!28711 (_1!21920 (v!37404 lt!1229767))) (size!28711 (_1!21920 (v!37404 lt!1229766)))) lt!1229767 lt!1229766)))))))

(assert (=> b!3585460 (= lt!1229767 call!259607)))

(assert (=> b!3585460 (= lt!1229766 (maxPrefix!2680 thiss!23823 (t!290554 rules!3307) lt!1229634))))

(declare-fun b!3585461 () Bool)

(declare-fun res!1446918 () Bool)

(assert (=> b!3585461 (=> (not res!1446918) (not e!2218447))))

(assert (=> b!3585461 (= res!1446918 (< (size!28713 (_2!21920 (get!12136 lt!1229769))) (size!28713 lt!1229634)))))

(assert (= (and d!1057114 c!621101) b!3585457))

(assert (= (and d!1057114 (not c!621101)) b!3585460))

(assert (= (or b!3585457 b!3585460) bm!259602))

(assert (= (and d!1057114 (not res!1446916)) b!3585454))

(assert (= (and b!3585454 res!1446913) b!3585455))

(assert (= (and b!3585455 res!1446914) b!3585461))

(assert (= (and b!3585461 res!1446918) b!3585453))

(assert (= (and b!3585453 res!1446917) b!3585459))

(assert (= (and b!3585459 res!1446915) b!3585456))

(assert (= (and b!3585456 res!1446919) b!3585458))

(declare-fun m!4078753 () Bool)

(assert (=> b!3585459 m!4078753))

(declare-fun m!4078755 () Bool)

(assert (=> b!3585459 m!4078755))

(assert (=> b!3585459 m!4078755))

(declare-fun m!4078757 () Bool)

(assert (=> b!3585459 m!4078757))

(assert (=> b!3585458 m!4078753))

(declare-fun m!4078759 () Bool)

(assert (=> b!3585458 m!4078759))

(assert (=> b!3585456 m!4078753))

(declare-fun m!4078761 () Bool)

(assert (=> b!3585456 m!4078761))

(assert (=> b!3585456 m!4078761))

(declare-fun m!4078763 () Bool)

(assert (=> b!3585456 m!4078763))

(assert (=> b!3585456 m!4078763))

(declare-fun m!4078765 () Bool)

(assert (=> b!3585456 m!4078765))

(declare-fun m!4078767 () Bool)

(assert (=> b!3585454 m!4078767))

(assert (=> b!3585453 m!4078753))

(assert (=> b!3585453 m!4078761))

(assert (=> b!3585453 m!4078761))

(assert (=> b!3585453 m!4078763))

(assert (=> b!3585453 m!4078763))

(declare-fun m!4078769 () Bool)

(assert (=> b!3585453 m!4078769))

(declare-fun m!4078771 () Bool)

(assert (=> d!1057114 m!4078771))

(declare-fun m!4078773 () Bool)

(assert (=> d!1057114 m!4078773))

(declare-fun m!4078775 () Bool)

(assert (=> d!1057114 m!4078775))

(declare-fun m!4078777 () Bool)

(assert (=> d!1057114 m!4078777))

(assert (=> b!3585461 m!4078753))

(declare-fun m!4078779 () Bool)

(assert (=> b!3585461 m!4078779))

(assert (=> b!3585461 m!4078721))

(declare-fun m!4078781 () Bool)

(assert (=> b!3585460 m!4078781))

(assert (=> b!3585455 m!4078753))

(assert (=> b!3585455 m!4078761))

(assert (=> b!3585455 m!4078761))

(assert (=> b!3585455 m!4078763))

(declare-fun m!4078783 () Bool)

(assert (=> bm!259602 m!4078783))

(assert (=> b!3585132 d!1057114))

(declare-fun d!1057124 () Bool)

(assert (=> d!1057124 (isPrefix!2920 lt!1229632 (++!9373 lt!1229632 suffix!1395))))

(declare-fun lt!1229776 () Unit!53674)

(declare-fun choose!20856 (List!37800 List!37800) Unit!53674)

(assert (=> d!1057124 (= lt!1229776 (choose!20856 lt!1229632 suffix!1395))))

(assert (=> d!1057124 (= (lemmaConcatTwoListThenFirstIsPrefix!1841 lt!1229632 suffix!1395) lt!1229776)))

(declare-fun bs!570034 () Bool)

(assert (= bs!570034 d!1057124))

(assert (=> bs!570034 m!4078431))

(assert (=> bs!570034 m!4078431))

(declare-fun m!4078787 () Bool)

(assert (=> bs!570034 m!4078787))

(declare-fun m!4078789 () Bool)

(assert (=> bs!570034 m!4078789))

(assert (=> b!3585132 d!1057124))

(declare-fun d!1057128 () Bool)

(assert (=> d!1057128 (= (isEmpty!22192 rules!3307) (is-Nil!37677 rules!3307))))

(assert (=> b!3585134 d!1057128))

(declare-fun d!1057130 () Bool)

(declare-fun lt!1229777 () Bool)

(assert (=> d!1057130 (= lt!1229777 (set.member anOtherTypeRule!33 (content!5350 rules!3307)))))

(declare-fun e!2218448 () Bool)

(assert (=> d!1057130 (= lt!1229777 e!2218448)))

(declare-fun res!1446920 () Bool)

(assert (=> d!1057130 (=> (not res!1446920) (not e!2218448))))

(assert (=> d!1057130 (= res!1446920 (is-Cons!37677 rules!3307))))

(assert (=> d!1057130 (= (contains!7175 rules!3307 anOtherTypeRule!33) lt!1229777)))

(declare-fun b!3585462 () Bool)

(declare-fun e!2218449 () Bool)

(assert (=> b!3585462 (= e!2218448 e!2218449)))

(declare-fun res!1446921 () Bool)

(assert (=> b!3585462 (=> res!1446921 e!2218449)))

(assert (=> b!3585462 (= res!1446921 (= (h!43097 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3585463 () Bool)

(assert (=> b!3585463 (= e!2218449 (contains!7175 (t!290554 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1057130 res!1446920) b!3585462))

(assert (= (and b!3585462 (not res!1446921)) b!3585463))

(assert (=> d!1057130 m!4078557))

(declare-fun m!4078791 () Bool)

(assert (=> d!1057130 m!4078791))

(declare-fun m!4078793 () Bool)

(assert (=> b!3585463 m!4078793))

(assert (=> b!3585144 d!1057130))

(declare-fun b!3585478 () Bool)

(declare-fun e!2218460 () Bool)

(declare-fun inv!17 (TokenValue!5787) Bool)

(assert (=> b!3585478 (= e!2218460 (inv!17 (value!178836 token!511)))))

(declare-fun b!3585479 () Bool)

(declare-fun e!2218462 () Bool)

(declare-fun inv!16 (TokenValue!5787) Bool)

(assert (=> b!3585479 (= e!2218462 (inv!16 (value!178836 token!511)))))

(declare-fun b!3585480 () Bool)

(declare-fun res!1446928 () Bool)

(declare-fun e!2218461 () Bool)

(assert (=> b!3585480 (=> res!1446928 e!2218461)))

(assert (=> b!3585480 (= res!1446928 (not (is-IntegerValue!17363 (value!178836 token!511))))))

(assert (=> b!3585480 (= e!2218460 e!2218461)))

(declare-fun b!3585481 () Bool)

(assert (=> b!3585481 (= e!2218462 e!2218460)))

(declare-fun c!621107 () Bool)

(assert (=> b!3585481 (= c!621107 (is-IntegerValue!17362 (value!178836 token!511)))))

(declare-fun b!3585482 () Bool)

(declare-fun inv!15 (TokenValue!5787) Bool)

(assert (=> b!3585482 (= e!2218461 (inv!15 (value!178836 token!511)))))

(declare-fun d!1057132 () Bool)

(declare-fun c!621106 () Bool)

(assert (=> d!1057132 (= c!621106 (is-IntegerValue!17361 (value!178836 token!511)))))

(assert (=> d!1057132 (= (inv!21 (value!178836 token!511)) e!2218462)))

(assert (= (and d!1057132 c!621106) b!3585479))

(assert (= (and d!1057132 (not c!621106)) b!3585481))

(assert (= (and b!3585481 c!621107) b!3585478))

(assert (= (and b!3585481 (not c!621107)) b!3585480))

(assert (= (and b!3585480 (not res!1446928)) b!3585482))

(declare-fun m!4078795 () Bool)

(assert (=> b!3585478 m!4078795))

(declare-fun m!4078797 () Bool)

(assert (=> b!3585479 m!4078797))

(declare-fun m!4078799 () Bool)

(assert (=> b!3585482 m!4078799))

(assert (=> b!3585130 d!1057132))

(declare-fun d!1057134 () Bool)

(declare-fun lt!1229778 () Bool)

(assert (=> d!1057134 (= lt!1229778 (set.member lt!1229636 (content!5351 (usedCharacters!771 (regex!5557 anOtherTypeRule!33)))))))

(declare-fun e!2218465 () Bool)

(assert (=> d!1057134 (= lt!1229778 e!2218465)))

(declare-fun res!1446932 () Bool)

(assert (=> d!1057134 (=> (not res!1446932) (not e!2218465))))

(assert (=> d!1057134 (= res!1446932 (is-Cons!37676 (usedCharacters!771 (regex!5557 anOtherTypeRule!33))))))

(assert (=> d!1057134 (= (contains!7176 (usedCharacters!771 (regex!5557 anOtherTypeRule!33)) lt!1229636) lt!1229778)))

(declare-fun b!3585485 () Bool)

(declare-fun e!2218466 () Bool)

(assert (=> b!3585485 (= e!2218465 e!2218466)))

(declare-fun res!1446931 () Bool)

(assert (=> b!3585485 (=> res!1446931 e!2218466)))

(assert (=> b!3585485 (= res!1446931 (= (h!43096 (usedCharacters!771 (regex!5557 anOtherTypeRule!33))) lt!1229636))))

(declare-fun b!3585486 () Bool)

(assert (=> b!3585486 (= e!2218466 (contains!7176 (t!290553 (usedCharacters!771 (regex!5557 anOtherTypeRule!33))) lt!1229636))))

(assert (= (and d!1057134 res!1446932) b!3585485))

(assert (= (and b!3585485 (not res!1446931)) b!3585486))

(assert (=> d!1057134 m!4078467))

(declare-fun m!4078801 () Bool)

(assert (=> d!1057134 m!4078801))

(declare-fun m!4078803 () Bool)

(assert (=> d!1057134 m!4078803))

(declare-fun m!4078805 () Bool)

(assert (=> b!3585486 m!4078805))

(assert (=> b!3585140 d!1057134))

(declare-fun c!621109 () Bool)

(declare-fun call!259609 () List!37800)

(declare-fun c!621108 () Bool)

(declare-fun bm!259603 () Bool)

(assert (=> bm!259603 (= call!259609 (usedCharacters!771 (ite c!621108 (reg!10645 (regex!5557 anOtherTypeRule!33)) (ite c!621109 (regOne!21145 (regex!5557 anOtherTypeRule!33)) (regTwo!21144 (regex!5557 anOtherTypeRule!33))))))))

(declare-fun bm!259604 () Bool)

(declare-fun call!259608 () List!37800)

(assert (=> bm!259604 (= call!259608 (usedCharacters!771 (ite c!621109 (regTwo!21145 (regex!5557 anOtherTypeRule!33)) (regOne!21144 (regex!5557 anOtherTypeRule!33)))))))

(declare-fun b!3585487 () Bool)

(declare-fun e!2218467 () List!37800)

(assert (=> b!3585487 (= e!2218467 Nil!37676)))

(declare-fun b!3585488 () Bool)

(declare-fun e!2218470 () List!37800)

(declare-fun call!259610 () List!37800)

(assert (=> b!3585488 (= e!2218470 call!259610)))

(declare-fun b!3585489 () Bool)

(declare-fun e!2218469 () List!37800)

(assert (=> b!3585489 (= e!2218469 call!259609)))

(declare-fun bm!259605 () Bool)

(declare-fun call!259611 () List!37800)

(assert (=> bm!259605 (= call!259611 call!259609)))

(declare-fun b!3585490 () Bool)

(assert (=> b!3585490 (= c!621108 (is-Star!10316 (regex!5557 anOtherTypeRule!33)))))

(declare-fun e!2218468 () List!37800)

(assert (=> b!3585490 (= e!2218468 e!2218469)))

(declare-fun d!1057136 () Bool)

(declare-fun c!621111 () Bool)

(assert (=> d!1057136 (= c!621111 (or (is-EmptyExpr!10316 (regex!5557 anOtherTypeRule!33)) (is-EmptyLang!10316 (regex!5557 anOtherTypeRule!33))))))

(assert (=> d!1057136 (= (usedCharacters!771 (regex!5557 anOtherTypeRule!33)) e!2218467)))

(declare-fun b!3585491 () Bool)

(assert (=> b!3585491 (= e!2218470 call!259610)))

(declare-fun b!3585492 () Bool)

(assert (=> b!3585492 (= e!2218469 e!2218470)))

(assert (=> b!3585492 (= c!621109 (is-Union!10316 (regex!5557 anOtherTypeRule!33)))))

(declare-fun b!3585493 () Bool)

(assert (=> b!3585493 (= e!2218467 e!2218468)))

(declare-fun c!621110 () Bool)

(assert (=> b!3585493 (= c!621110 (is-ElementMatch!10316 (regex!5557 anOtherTypeRule!33)))))

(declare-fun b!3585494 () Bool)

(assert (=> b!3585494 (= e!2218468 (Cons!37676 (c!621052 (regex!5557 anOtherTypeRule!33)) Nil!37676))))

(declare-fun bm!259606 () Bool)

(assert (=> bm!259606 (= call!259610 (++!9373 (ite c!621109 call!259611 call!259608) (ite c!621109 call!259608 call!259611)))))

(assert (= (and d!1057136 c!621111) b!3585487))

(assert (= (and d!1057136 (not c!621111)) b!3585493))

(assert (= (and b!3585493 c!621110) b!3585494))

(assert (= (and b!3585493 (not c!621110)) b!3585490))

(assert (= (and b!3585490 c!621108) b!3585489))

(assert (= (and b!3585490 (not c!621108)) b!3585492))

(assert (= (and b!3585492 c!621109) b!3585491))

(assert (= (and b!3585492 (not c!621109)) b!3585488))

(assert (= (or b!3585491 b!3585488) bm!259605))

(assert (= (or b!3585491 b!3585488) bm!259604))

(assert (= (or b!3585491 b!3585488) bm!259606))

(assert (= (or b!3585489 bm!259605) bm!259603))

(declare-fun m!4078811 () Bool)

(assert (=> bm!259603 m!4078811))

(declare-fun m!4078813 () Bool)

(assert (=> bm!259604 m!4078813))

(declare-fun m!4078815 () Bool)

(assert (=> bm!259606 m!4078815))

(assert (=> b!3585140 d!1057136))

(declare-fun d!1057140 () Bool)

(assert (=> d!1057140 (= (inv!50999 (tag!6223 (rule!8271 token!511))) (= (mod (str.len (value!178835 (tag!6223 (rule!8271 token!511)))) 2) 0))))

(assert (=> b!3585131 d!1057140))

(declare-fun d!1057142 () Bool)

(declare-fun res!1446933 () Bool)

(declare-fun e!2218471 () Bool)

(assert (=> d!1057142 (=> (not res!1446933) (not e!2218471))))

(assert (=> d!1057142 (= res!1446933 (semiInverseModEq!2354 (toChars!7696 (transformation!5557 (rule!8271 token!511))) (toValue!7837 (transformation!5557 (rule!8271 token!511)))))))

(assert (=> d!1057142 (= (inv!51002 (transformation!5557 (rule!8271 token!511))) e!2218471)))

(declare-fun b!3585495 () Bool)

(assert (=> b!3585495 (= e!2218471 (equivClasses!2253 (toChars!7696 (transformation!5557 (rule!8271 token!511))) (toValue!7837 (transformation!5557 (rule!8271 token!511)))))))

(assert (= (and d!1057142 res!1446933) b!3585495))

(declare-fun m!4078817 () Bool)

(assert (=> d!1057142 m!4078817))

(declare-fun m!4078819 () Bool)

(assert (=> b!3585495 m!4078819))

(assert (=> b!3585131 d!1057142))

(declare-fun b!3585540 () Bool)

(declare-fun res!1446963 () Bool)

(declare-fun e!2218503 () Bool)

(assert (=> b!3585540 (=> res!1446963 e!2218503)))

(declare-fun e!2218501 () Bool)

(assert (=> b!3585540 (= res!1446963 e!2218501)))

(declare-fun res!1446964 () Bool)

(assert (=> b!3585540 (=> (not res!1446964) (not e!2218501))))

(declare-fun lt!1229782 () Bool)

(assert (=> b!3585540 (= res!1446964 lt!1229782)))

(declare-fun b!3585541 () Bool)

(declare-fun e!2218500 () Bool)

(declare-fun call!259618 () Bool)

(assert (=> b!3585541 (= e!2218500 (= lt!1229782 call!259618))))

(declare-fun b!3585542 () Bool)

(declare-fun e!2218499 () Bool)

(declare-fun nullable!3556 (Regex!10316) Bool)

(assert (=> b!3585542 (= e!2218499 (nullable!3556 (regex!5557 rule!403)))))

(declare-fun b!3585543 () Bool)

(declare-fun res!1446962 () Bool)

(assert (=> b!3585543 (=> (not res!1446962) (not e!2218501))))

(assert (=> b!3585543 (= res!1446962 (not call!259618))))

(declare-fun d!1057144 () Bool)

(assert (=> d!1057144 e!2218500))

(declare-fun c!621122 () Bool)

(assert (=> d!1057144 (= c!621122 (is-EmptyExpr!10316 (regex!5557 rule!403)))))

(assert (=> d!1057144 (= lt!1229782 e!2218499)))

(declare-fun c!621124 () Bool)

(assert (=> d!1057144 (= c!621124 (isEmpty!22193 lt!1229632))))

(declare-fun validRegex!4712 (Regex!10316) Bool)

(assert (=> d!1057144 (validRegex!4712 (regex!5557 rule!403))))

(assert (=> d!1057144 (= (matchR!4885 (regex!5557 rule!403) lt!1229632) lt!1229782)))

(declare-fun b!3585544 () Bool)

(declare-fun e!2218498 () Bool)

(assert (=> b!3585544 (= e!2218503 e!2218498)))

(declare-fun res!1446961 () Bool)

(assert (=> b!3585544 (=> (not res!1446961) (not e!2218498))))

(assert (=> b!3585544 (= res!1446961 (not lt!1229782))))

(declare-fun b!3585545 () Bool)

(assert (=> b!3585545 (= e!2218501 (= (head!7474 lt!1229632) (c!621052 (regex!5557 rule!403))))))

(declare-fun b!3585546 () Bool)

(declare-fun e!2218504 () Bool)

(assert (=> b!3585546 (= e!2218500 e!2218504)))

(declare-fun c!621123 () Bool)

(assert (=> b!3585546 (= c!621123 (is-EmptyLang!10316 (regex!5557 rule!403)))))

(declare-fun b!3585547 () Bool)

(declare-fun res!1446965 () Bool)

(declare-fun e!2218502 () Bool)

(assert (=> b!3585547 (=> res!1446965 e!2218502)))

(assert (=> b!3585547 (= res!1446965 (not (isEmpty!22193 (tail!5554 lt!1229632))))))

(declare-fun b!3585548 () Bool)

(declare-fun res!1446960 () Bool)

(assert (=> b!3585548 (=> res!1446960 e!2218503)))

(assert (=> b!3585548 (= res!1446960 (not (is-ElementMatch!10316 (regex!5557 rule!403))))))

(assert (=> b!3585548 (= e!2218504 e!2218503)))

(declare-fun b!3585549 () Bool)

(declare-fun res!1446958 () Bool)

(assert (=> b!3585549 (=> (not res!1446958) (not e!2218501))))

(assert (=> b!3585549 (= res!1446958 (isEmpty!22193 (tail!5554 lt!1229632)))))

(declare-fun b!3585550 () Bool)

(assert (=> b!3585550 (= e!2218504 (not lt!1229782))))

(declare-fun b!3585551 () Bool)

(assert (=> b!3585551 (= e!2218502 (not (= (head!7474 lt!1229632) (c!621052 (regex!5557 rule!403)))))))

(declare-fun bm!259613 () Bool)

(assert (=> bm!259613 (= call!259618 (isEmpty!22193 lt!1229632))))

(declare-fun b!3585552 () Bool)

(assert (=> b!3585552 (= e!2218498 e!2218502)))

(declare-fun res!1446959 () Bool)

(assert (=> b!3585552 (=> res!1446959 e!2218502)))

(assert (=> b!3585552 (= res!1446959 call!259618)))

(declare-fun b!3585553 () Bool)

(declare-fun derivativeStep!3105 (Regex!10316 C!20818) Regex!10316)

(assert (=> b!3585553 (= e!2218499 (matchR!4885 (derivativeStep!3105 (regex!5557 rule!403) (head!7474 lt!1229632)) (tail!5554 lt!1229632)))))

(assert (= (and d!1057144 c!621124) b!3585542))

(assert (= (and d!1057144 (not c!621124)) b!3585553))

(assert (= (and d!1057144 c!621122) b!3585541))

(assert (= (and d!1057144 (not c!621122)) b!3585546))

(assert (= (and b!3585546 c!621123) b!3585550))

(assert (= (and b!3585546 (not c!621123)) b!3585548))

(assert (= (and b!3585548 (not res!1446960)) b!3585540))

(assert (= (and b!3585540 res!1446964) b!3585543))

(assert (= (and b!3585543 res!1446962) b!3585549))

(assert (= (and b!3585549 res!1446958) b!3585545))

(assert (= (and b!3585540 (not res!1446963)) b!3585544))

(assert (= (and b!3585544 res!1446961) b!3585552))

(assert (= (and b!3585552 (not res!1446959)) b!3585547))

(assert (= (and b!3585547 (not res!1446965)) b!3585551))

(assert (= (or b!3585541 b!3585543 b!3585552) bm!259613))

(declare-fun m!4078841 () Bool)

(assert (=> bm!259613 m!4078841))

(assert (=> d!1057144 m!4078841))

(declare-fun m!4078843 () Bool)

(assert (=> d!1057144 m!4078843))

(assert (=> b!3585545 m!4078723))

(assert (=> b!3585551 m!4078723))

(assert (=> b!3585549 m!4078715))

(assert (=> b!3585549 m!4078715))

(declare-fun m!4078845 () Bool)

(assert (=> b!3585549 m!4078845))

(declare-fun m!4078847 () Bool)

(assert (=> b!3585542 m!4078847))

(assert (=> b!3585547 m!4078715))

(assert (=> b!3585547 m!4078715))

(assert (=> b!3585547 m!4078845))

(assert (=> b!3585553 m!4078723))

(assert (=> b!3585553 m!4078723))

(declare-fun m!4078849 () Bool)

(assert (=> b!3585553 m!4078849))

(assert (=> b!3585553 m!4078715))

(assert (=> b!3585553 m!4078849))

(assert (=> b!3585553 m!4078715))

(declare-fun m!4078851 () Bool)

(assert (=> b!3585553 m!4078851))

(assert (=> b!3585142 d!1057144))

(declare-fun d!1057156 () Bool)

(declare-fun res!1446976 () Bool)

(declare-fun e!2218510 () Bool)

(assert (=> d!1057156 (=> (not res!1446976) (not e!2218510))))

(assert (=> d!1057156 (= res!1446976 (validRegex!4712 (regex!5557 rule!403)))))

(assert (=> d!1057156 (= (ruleValid!1822 thiss!23823 rule!403) e!2218510)))

(declare-fun b!3585564 () Bool)

(declare-fun res!1446977 () Bool)

(assert (=> b!3585564 (=> (not res!1446977) (not e!2218510))))

(assert (=> b!3585564 (= res!1446977 (not (nullable!3556 (regex!5557 rule!403))))))

(declare-fun b!3585565 () Bool)

(assert (=> b!3585565 (= e!2218510 (not (= (tag!6223 rule!403) (String!42272 ""))))))

(assert (= (and d!1057156 res!1446976) b!3585564))

(assert (= (and b!3585564 res!1446977) b!3585565))

(assert (=> d!1057156 m!4078843))

(assert (=> b!3585564 m!4078847))

(assert (=> b!3585142 d!1057156))

(declare-fun d!1057160 () Bool)

(assert (=> d!1057160 (ruleValid!1822 thiss!23823 rule!403)))

(declare-fun lt!1229785 () Unit!53674)

(declare-fun choose!20857 (LexerInterface!5146 Rule!10914 List!37801) Unit!53674)

(assert (=> d!1057160 (= lt!1229785 (choose!20857 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1057160 (contains!7175 rules!3307 rule!403)))

(assert (=> d!1057160 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!977 thiss!23823 rule!403 rules!3307) lt!1229785)))

(declare-fun bs!570035 () Bool)

(assert (= bs!570035 d!1057160))

(assert (=> bs!570035 m!4078479))

(declare-fun m!4078859 () Bool)

(assert (=> bs!570035 m!4078859))

(assert (=> bs!570035 m!4078417))

(assert (=> b!3585142 d!1057160))

(declare-fun d!1057162 () Bool)

(assert (=> d!1057162 (= (inv!50999 (tag!6223 (h!43097 rules!3307))) (= (mod (str.len (value!178835 (tag!6223 (h!43097 rules!3307)))) 2) 0))))

(assert (=> b!3585152 d!1057162))

(declare-fun d!1057164 () Bool)

(declare-fun res!1446980 () Bool)

(declare-fun e!2218517 () Bool)

(assert (=> d!1057164 (=> (not res!1446980) (not e!2218517))))

(assert (=> d!1057164 (= res!1446980 (semiInverseModEq!2354 (toChars!7696 (transformation!5557 (h!43097 rules!3307))) (toValue!7837 (transformation!5557 (h!43097 rules!3307)))))))

(assert (=> d!1057164 (= (inv!51002 (transformation!5557 (h!43097 rules!3307))) e!2218517)))

(declare-fun b!3585576 () Bool)

(assert (=> b!3585576 (= e!2218517 (equivClasses!2253 (toChars!7696 (transformation!5557 (h!43097 rules!3307))) (toValue!7837 (transformation!5557 (h!43097 rules!3307)))))))

(assert (= (and d!1057164 res!1446980) b!3585576))

(declare-fun m!4078861 () Bool)

(assert (=> d!1057164 m!4078861))

(declare-fun m!4078863 () Bool)

(assert (=> b!3585576 m!4078863))

(assert (=> b!3585152 d!1057164))

(declare-fun d!1057166 () Bool)

(assert (=> d!1057166 (= (isDefined!5979 lt!1229629) (not (isEmpty!22196 lt!1229629)))))

(declare-fun bs!570036 () Bool)

(assert (= bs!570036 d!1057166))

(declare-fun m!4078865 () Bool)

(assert (=> bs!570036 m!4078865))

(assert (=> b!3585138 d!1057166))

(declare-fun b!3585577 () Bool)

(declare-fun res!1446985 () Bool)

(declare-fun e!2218520 () Bool)

(assert (=> b!3585577 (=> (not res!1446985) (not e!2218520))))

(declare-fun lt!1229789 () Option!7747)

(assert (=> b!3585577 (= res!1446985 (= (++!9373 (list!13846 (charsOf!3571 (_1!21920 (get!12136 lt!1229789)))) (_2!21920 (get!12136 lt!1229789))) lt!1229632))))

(declare-fun b!3585578 () Bool)

(declare-fun e!2218519 () Bool)

(assert (=> b!3585578 (= e!2218519 e!2218520)))

(declare-fun res!1446981 () Bool)

(assert (=> b!3585578 (=> (not res!1446981) (not e!2218520))))

(assert (=> b!3585578 (= res!1446981 (isDefined!5979 lt!1229789))))

(declare-fun call!259619 () Option!7747)

(declare-fun bm!259614 () Bool)

(assert (=> bm!259614 (= call!259619 (maxPrefixOneRule!1832 thiss!23823 (h!43097 rules!3307) lt!1229632))))

(declare-fun d!1057168 () Bool)

(assert (=> d!1057168 e!2218519))

(declare-fun res!1446984 () Bool)

(assert (=> d!1057168 (=> res!1446984 e!2218519)))

(assert (=> d!1057168 (= res!1446984 (isEmpty!22196 lt!1229789))))

(declare-fun e!2218518 () Option!7747)

(assert (=> d!1057168 (= lt!1229789 e!2218518)))

(declare-fun c!621129 () Bool)

(assert (=> d!1057168 (= c!621129 (and (is-Cons!37677 rules!3307) (is-Nil!37677 (t!290554 rules!3307))))))

(declare-fun lt!1229790 () Unit!53674)

(declare-fun lt!1229788 () Unit!53674)

(assert (=> d!1057168 (= lt!1229790 lt!1229788)))

(assert (=> d!1057168 (isPrefix!2920 lt!1229632 lt!1229632)))

(assert (=> d!1057168 (= lt!1229788 (lemmaIsPrefixRefl!1873 lt!1229632 lt!1229632))))

(assert (=> d!1057168 (rulesValidInductive!1936 thiss!23823 rules!3307)))

(assert (=> d!1057168 (= (maxPrefix!2680 thiss!23823 rules!3307 lt!1229632) lt!1229789)))

(declare-fun b!3585579 () Bool)

(declare-fun res!1446982 () Bool)

(assert (=> b!3585579 (=> (not res!1446982) (not e!2218520))))

(assert (=> b!3585579 (= res!1446982 (= (list!13846 (charsOf!3571 (_1!21920 (get!12136 lt!1229789)))) (originalCharacters!6271 (_1!21920 (get!12136 lt!1229789)))))))

(declare-fun b!3585580 () Bool)

(declare-fun res!1446987 () Bool)

(assert (=> b!3585580 (=> (not res!1446987) (not e!2218520))))

(assert (=> b!3585580 (= res!1446987 (matchR!4885 (regex!5557 (rule!8271 (_1!21920 (get!12136 lt!1229789)))) (list!13846 (charsOf!3571 (_1!21920 (get!12136 lt!1229789))))))))

(declare-fun b!3585581 () Bool)

(assert (=> b!3585581 (= e!2218518 call!259619)))

(declare-fun b!3585582 () Bool)

(assert (=> b!3585582 (= e!2218520 (contains!7175 rules!3307 (rule!8271 (_1!21920 (get!12136 lt!1229789)))))))

(declare-fun b!3585583 () Bool)

(declare-fun res!1446983 () Bool)

(assert (=> b!3585583 (=> (not res!1446983) (not e!2218520))))

(assert (=> b!3585583 (= res!1446983 (= (value!178836 (_1!21920 (get!12136 lt!1229789))) (apply!9069 (transformation!5557 (rule!8271 (_1!21920 (get!12136 lt!1229789)))) (seqFromList!4112 (originalCharacters!6271 (_1!21920 (get!12136 lt!1229789)))))))))

(declare-fun b!3585584 () Bool)

(declare-fun lt!1229787 () Option!7747)

(declare-fun lt!1229786 () Option!7747)

(assert (=> b!3585584 (= e!2218518 (ite (and (is-None!7746 lt!1229787) (is-None!7746 lt!1229786)) None!7746 (ite (is-None!7746 lt!1229786) lt!1229787 (ite (is-None!7746 lt!1229787) lt!1229786 (ite (>= (size!28711 (_1!21920 (v!37404 lt!1229787))) (size!28711 (_1!21920 (v!37404 lt!1229786)))) lt!1229787 lt!1229786)))))))

(assert (=> b!3585584 (= lt!1229787 call!259619)))

(assert (=> b!3585584 (= lt!1229786 (maxPrefix!2680 thiss!23823 (t!290554 rules!3307) lt!1229632))))

(declare-fun b!3585585 () Bool)

(declare-fun res!1446986 () Bool)

(assert (=> b!3585585 (=> (not res!1446986) (not e!2218520))))

(assert (=> b!3585585 (= res!1446986 (< (size!28713 (_2!21920 (get!12136 lt!1229789))) (size!28713 lt!1229632)))))

(assert (= (and d!1057168 c!621129) b!3585581))

(assert (= (and d!1057168 (not c!621129)) b!3585584))

(assert (= (or b!3585581 b!3585584) bm!259614))

(assert (= (and d!1057168 (not res!1446984)) b!3585578))

(assert (= (and b!3585578 res!1446981) b!3585579))

(assert (= (and b!3585579 res!1446982) b!3585585))

(assert (= (and b!3585585 res!1446986) b!3585577))

(assert (= (and b!3585577 res!1446985) b!3585583))

(assert (= (and b!3585583 res!1446983) b!3585580))

(assert (= (and b!3585580 res!1446987) b!3585582))

(declare-fun m!4078873 () Bool)

(assert (=> b!3585583 m!4078873))

(declare-fun m!4078875 () Bool)

(assert (=> b!3585583 m!4078875))

(assert (=> b!3585583 m!4078875))

(declare-fun m!4078877 () Bool)

(assert (=> b!3585583 m!4078877))

(assert (=> b!3585582 m!4078873))

(declare-fun m!4078879 () Bool)

(assert (=> b!3585582 m!4078879))

(assert (=> b!3585580 m!4078873))

(declare-fun m!4078881 () Bool)

(assert (=> b!3585580 m!4078881))

(assert (=> b!3585580 m!4078881))

(declare-fun m!4078885 () Bool)

(assert (=> b!3585580 m!4078885))

(assert (=> b!3585580 m!4078885))

(declare-fun m!4078889 () Bool)

(assert (=> b!3585580 m!4078889))

(declare-fun m!4078891 () Bool)

(assert (=> b!3585578 m!4078891))

(assert (=> b!3585577 m!4078873))

(assert (=> b!3585577 m!4078881))

(assert (=> b!3585577 m!4078881))

(assert (=> b!3585577 m!4078885))

(assert (=> b!3585577 m!4078885))

(declare-fun m!4078893 () Bool)

(assert (=> b!3585577 m!4078893))

(declare-fun m!4078895 () Bool)

(assert (=> d!1057168 m!4078895))

(declare-fun m!4078897 () Bool)

(assert (=> d!1057168 m!4078897))

(declare-fun m!4078899 () Bool)

(assert (=> d!1057168 m!4078899))

(assert (=> d!1057168 m!4078777))

(assert (=> b!3585585 m!4078873))

(declare-fun m!4078901 () Bool)

(assert (=> b!3585585 m!4078901))

(assert (=> b!3585585 m!4078701))

(declare-fun m!4078903 () Bool)

(assert (=> b!3585584 m!4078903))

(assert (=> b!3585579 m!4078873))

(assert (=> b!3585579 m!4078881))

(assert (=> b!3585579 m!4078881))

(assert (=> b!3585579 m!4078885))

(declare-fun m!4078905 () Bool)

(assert (=> bm!259614 m!4078905))

(assert (=> b!3585138 d!1057168))

(declare-fun d!1057182 () Bool)

(declare-fun list!13849 (Conc!11457) List!37800)

(assert (=> d!1057182 (= (list!13846 (charsOf!3571 token!511)) (list!13849 (c!621053 (charsOf!3571 token!511))))))

(declare-fun bs!570037 () Bool)

(assert (= bs!570037 d!1057182))

(declare-fun m!4078907 () Bool)

(assert (=> bs!570037 m!4078907))

(assert (=> b!3585138 d!1057182))

(declare-fun d!1057184 () Bool)

(declare-fun lt!1229795 () BalanceConc!22528)

(assert (=> d!1057184 (= (list!13846 lt!1229795) (originalCharacters!6271 token!511))))

(assert (=> d!1057184 (= lt!1229795 (dynLambda!16201 (toChars!7696 (transformation!5557 (rule!8271 token!511))) (value!178836 token!511)))))

(assert (=> d!1057184 (= (charsOf!3571 token!511) lt!1229795)))

(declare-fun b_lambda!105929 () Bool)

(assert (=> (not b_lambda!105929) (not d!1057184)))

(assert (=> d!1057184 t!290559))

(declare-fun b_and!258927 () Bool)

(assert (= b_and!258903 (and (=> t!290559 result!249366) b_and!258927)))

(assert (=> d!1057184 t!290561))

(declare-fun b_and!258929 () Bool)

(assert (= b_and!258905 (and (=> t!290561 result!249370) b_and!258929)))

(assert (=> d!1057184 t!290563))

(declare-fun b_and!258931 () Bool)

(assert (= b_and!258907 (and (=> t!290563 result!249372) b_and!258931)))

(assert (=> d!1057184 t!290565))

(declare-fun b_and!258933 () Bool)

(assert (= b_and!258909 (and (=> t!290565 result!249374) b_and!258933)))

(declare-fun m!4078909 () Bool)

(assert (=> d!1057184 m!4078909))

(assert (=> d!1057184 m!4078573))

(assert (=> b!3585138 d!1057184))

(declare-fun d!1057186 () Bool)

(assert (=> d!1057186 (= (inv!50999 (tag!6223 anOtherTypeRule!33)) (= (mod (str.len (value!178835 (tag!6223 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3585137 d!1057186))

(declare-fun d!1057188 () Bool)

(declare-fun res!1447002 () Bool)

(declare-fun e!2218534 () Bool)

(assert (=> d!1057188 (=> (not res!1447002) (not e!2218534))))

(assert (=> d!1057188 (= res!1447002 (semiInverseModEq!2354 (toChars!7696 (transformation!5557 anOtherTypeRule!33)) (toValue!7837 (transformation!5557 anOtherTypeRule!33))))))

(assert (=> d!1057188 (= (inv!51002 (transformation!5557 anOtherTypeRule!33)) e!2218534)))

(declare-fun b!3585604 () Bool)

(assert (=> b!3585604 (= e!2218534 (equivClasses!2253 (toChars!7696 (transformation!5557 anOtherTypeRule!33)) (toValue!7837 (transformation!5557 anOtherTypeRule!33))))))

(assert (= (and d!1057188 res!1447002) b!3585604))

(declare-fun m!4078913 () Bool)

(assert (=> d!1057188 m!4078913))

(declare-fun m!4078917 () Bool)

(assert (=> b!3585604 m!4078917))

(assert (=> b!3585137 d!1057188))

(declare-fun d!1057190 () Bool)

(declare-fun res!1447005 () Bool)

(declare-fun e!2218537 () Bool)

(assert (=> d!1057190 (=> (not res!1447005) (not e!2218537))))

(declare-fun rulesValid!2113 (LexerInterface!5146 List!37801) Bool)

(assert (=> d!1057190 (= res!1447005 (rulesValid!2113 thiss!23823 rules!3307))))

(assert (=> d!1057190 (= (rulesInvariant!4543 thiss!23823 rules!3307) e!2218537)))

(declare-fun b!3585607 () Bool)

(declare-datatypes ((List!37806 0))(
  ( (Nil!37682) (Cons!37682 (h!43102 String!42271) (t!290579 List!37806)) )
))
(declare-fun noDuplicateTag!2109 (LexerInterface!5146 List!37801 List!37806) Bool)

(assert (=> b!3585607 (= e!2218537 (noDuplicateTag!2109 thiss!23823 rules!3307 Nil!37682))))

(assert (= (and d!1057190 res!1447005) b!3585607))

(declare-fun m!4078925 () Bool)

(assert (=> d!1057190 m!4078925))

(declare-fun m!4078927 () Bool)

(assert (=> b!3585607 m!4078927))

(assert (=> b!3585148 d!1057190))

(declare-fun d!1057196 () Bool)

(assert (=> d!1057196 (= (isEmpty!22193 (_2!21920 lt!1229635)) (is-Nil!37676 (_2!21920 lt!1229635)))))

(assert (=> b!3585139 d!1057196))

(declare-fun d!1057198 () Bool)

(declare-fun res!1447010 () Bool)

(declare-fun e!2218542 () Bool)

(assert (=> d!1057198 (=> res!1447010 e!2218542)))

(assert (=> d!1057198 (= res!1447010 (not (is-Cons!37677 rules!3307)))))

(assert (=> d!1057198 (= (sepAndNonSepRulesDisjointChars!1727 rules!3307 rules!3307) e!2218542)))

(declare-fun b!3585612 () Bool)

(declare-fun e!2218543 () Bool)

(assert (=> b!3585612 (= e!2218542 e!2218543)))

(declare-fun res!1447011 () Bool)

(assert (=> b!3585612 (=> (not res!1447011) (not e!2218543))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!780 (Rule!10914 List!37801) Bool)

(assert (=> b!3585612 (= res!1447011 (ruleDisjointCharsFromAllFromOtherType!780 (h!43097 rules!3307) rules!3307))))

(declare-fun b!3585613 () Bool)

(assert (=> b!3585613 (= e!2218543 (sepAndNonSepRulesDisjointChars!1727 rules!3307 (t!290554 rules!3307)))))

(assert (= (and d!1057198 (not res!1447010)) b!3585612))

(assert (= (and b!3585612 res!1447011) b!3585613))

(declare-fun m!4078929 () Bool)

(assert (=> b!3585612 m!4078929))

(declare-fun m!4078931 () Bool)

(assert (=> b!3585613 m!4078931))

(assert (=> b!3585150 d!1057198))

(declare-fun d!1057200 () Bool)

(assert (=> d!1057200 (= (get!12136 lt!1229629) (v!37404 lt!1229629))))

(assert (=> b!3585128 d!1057200))

(declare-fun b!3585618 () Bool)

(declare-fun e!2218546 () Bool)

(declare-fun tp!1097683 () Bool)

(assert (=> b!3585618 (= e!2218546 (and tp_is_empty!17715 tp!1097683))))

(assert (=> b!3585151 (= tp!1097623 e!2218546)))

(assert (= (and b!3585151 (is-Cons!37676 (t!290553 suffix!1395))) b!3585618))

(declare-fun b!3585631 () Bool)

(declare-fun e!2218549 () Bool)

(declare-fun tp!1097696 () Bool)

(assert (=> b!3585631 (= e!2218549 tp!1097696)))

(assert (=> b!3585146 (= tp!1097621 e!2218549)))

(declare-fun b!3585629 () Bool)

(assert (=> b!3585629 (= e!2218549 tp_is_empty!17715)))

(declare-fun b!3585632 () Bool)

(declare-fun tp!1097698 () Bool)

(declare-fun tp!1097695 () Bool)

(assert (=> b!3585632 (= e!2218549 (and tp!1097698 tp!1097695))))

(declare-fun b!3585630 () Bool)

(declare-fun tp!1097694 () Bool)

(declare-fun tp!1097697 () Bool)

(assert (=> b!3585630 (= e!2218549 (and tp!1097694 tp!1097697))))

(assert (= (and b!3585146 (is-ElementMatch!10316 (regex!5557 rule!403))) b!3585629))

(assert (= (and b!3585146 (is-Concat!16104 (regex!5557 rule!403))) b!3585630))

(assert (= (and b!3585146 (is-Star!10316 (regex!5557 rule!403))) b!3585631))

(assert (= (and b!3585146 (is-Union!10316 (regex!5557 rule!403))) b!3585632))

(declare-fun b!3585633 () Bool)

(declare-fun e!2218550 () Bool)

(declare-fun tp!1097699 () Bool)

(assert (=> b!3585633 (= e!2218550 (and tp_is_empty!17715 tp!1097699))))

(assert (=> b!3585130 (= tp!1097624 e!2218550)))

(assert (= (and b!3585130 (is-Cons!37676 (originalCharacters!6271 token!511))) b!3585633))

(declare-fun b!3585636 () Bool)

(declare-fun e!2218551 () Bool)

(declare-fun tp!1097702 () Bool)

(assert (=> b!3585636 (= e!2218551 tp!1097702)))

(assert (=> b!3585131 (= tp!1097622 e!2218551)))

(declare-fun b!3585634 () Bool)

(assert (=> b!3585634 (= e!2218551 tp_is_empty!17715)))

(declare-fun b!3585637 () Bool)

(declare-fun tp!1097704 () Bool)

(declare-fun tp!1097701 () Bool)

(assert (=> b!3585637 (= e!2218551 (and tp!1097704 tp!1097701))))

(declare-fun b!3585635 () Bool)

(declare-fun tp!1097700 () Bool)

(declare-fun tp!1097703 () Bool)

(assert (=> b!3585635 (= e!2218551 (and tp!1097700 tp!1097703))))

(assert (= (and b!3585131 (is-ElementMatch!10316 (regex!5557 (rule!8271 token!511)))) b!3585634))

(assert (= (and b!3585131 (is-Concat!16104 (regex!5557 (rule!8271 token!511)))) b!3585635))

(assert (= (and b!3585131 (is-Star!10316 (regex!5557 (rule!8271 token!511)))) b!3585636))

(assert (= (and b!3585131 (is-Union!10316 (regex!5557 (rule!8271 token!511)))) b!3585637))

(declare-fun b!3585648 () Bool)

(declare-fun b_free!92297 () Bool)

(declare-fun b_next!93001 () Bool)

(assert (=> b!3585648 (= b_free!92297 (not b_next!93001))))

(declare-fun tp!1097713 () Bool)

(declare-fun b_and!258935 () Bool)

(assert (=> b!3585648 (= tp!1097713 b_and!258935)))

(declare-fun b_free!92299 () Bool)

(declare-fun b_next!93003 () Bool)

(assert (=> b!3585648 (= b_free!92299 (not b_next!93003))))

(declare-fun t!290575 () Bool)

(declare-fun tb!204537 () Bool)

(assert (=> (and b!3585648 (= (toChars!7696 (transformation!5557 (h!43097 (t!290554 rules!3307)))) (toChars!7696 (transformation!5557 (rule!8271 token!511)))) t!290575) tb!204537))

(declare-fun result!249392 () Bool)

(assert (= result!249392 result!249366))

(assert (=> b!3585244 t!290575))

(assert (=> d!1057184 t!290575))

(declare-fun b_and!258937 () Bool)

(declare-fun tp!1097714 () Bool)

(assert (=> b!3585648 (= tp!1097714 (and (=> t!290575 result!249392) b_and!258937))))

(declare-fun e!2218560 () Bool)

(assert (=> b!3585648 (= e!2218560 (and tp!1097713 tp!1097714))))

(declare-fun b!3585647 () Bool)

(declare-fun e!2218563 () Bool)

(declare-fun tp!1097716 () Bool)

(assert (=> b!3585647 (= e!2218563 (and tp!1097716 (inv!50999 (tag!6223 (h!43097 (t!290554 rules!3307)))) (inv!51002 (transformation!5557 (h!43097 (t!290554 rules!3307)))) e!2218560))))

(declare-fun b!3585646 () Bool)

(declare-fun e!2218562 () Bool)

(declare-fun tp!1097715 () Bool)

(assert (=> b!3585646 (= e!2218562 (and e!2218563 tp!1097715))))

(assert (=> b!3585141 (= tp!1097617 e!2218562)))

(assert (= b!3585647 b!3585648))

(assert (= b!3585646 b!3585647))

(assert (= (and b!3585141 (is-Cons!37677 (t!290554 rules!3307))) b!3585646))

(declare-fun m!4078933 () Bool)

(assert (=> b!3585647 m!4078933))

(declare-fun m!4078935 () Bool)

(assert (=> b!3585647 m!4078935))

(declare-fun b!3585651 () Bool)

(declare-fun e!2218564 () Bool)

(declare-fun tp!1097719 () Bool)

(assert (=> b!3585651 (= e!2218564 tp!1097719)))

(assert (=> b!3585152 (= tp!1097616 e!2218564)))

(declare-fun b!3585649 () Bool)

(assert (=> b!3585649 (= e!2218564 tp_is_empty!17715)))

(declare-fun b!3585652 () Bool)

(declare-fun tp!1097721 () Bool)

(declare-fun tp!1097718 () Bool)

(assert (=> b!3585652 (= e!2218564 (and tp!1097721 tp!1097718))))

(declare-fun b!3585650 () Bool)

(declare-fun tp!1097717 () Bool)

(declare-fun tp!1097720 () Bool)

(assert (=> b!3585650 (= e!2218564 (and tp!1097717 tp!1097720))))

(assert (= (and b!3585152 (is-ElementMatch!10316 (regex!5557 (h!43097 rules!3307)))) b!3585649))

(assert (= (and b!3585152 (is-Concat!16104 (regex!5557 (h!43097 rules!3307)))) b!3585650))

(assert (= (and b!3585152 (is-Star!10316 (regex!5557 (h!43097 rules!3307)))) b!3585651))

(assert (= (and b!3585152 (is-Union!10316 (regex!5557 (h!43097 rules!3307)))) b!3585652))

(declare-fun b!3585655 () Bool)

(declare-fun e!2218565 () Bool)

(declare-fun tp!1097724 () Bool)

(assert (=> b!3585655 (= e!2218565 tp!1097724)))

(assert (=> b!3585137 (= tp!1097629 e!2218565)))

(declare-fun b!3585653 () Bool)

(assert (=> b!3585653 (= e!2218565 tp_is_empty!17715)))

(declare-fun b!3585656 () Bool)

(declare-fun tp!1097726 () Bool)

(declare-fun tp!1097723 () Bool)

(assert (=> b!3585656 (= e!2218565 (and tp!1097726 tp!1097723))))

(declare-fun b!3585654 () Bool)

(declare-fun tp!1097722 () Bool)

(declare-fun tp!1097725 () Bool)

(assert (=> b!3585654 (= e!2218565 (and tp!1097722 tp!1097725))))

(assert (= (and b!3585137 (is-ElementMatch!10316 (regex!5557 anOtherTypeRule!33))) b!3585653))

(assert (= (and b!3585137 (is-Concat!16104 (regex!5557 anOtherTypeRule!33))) b!3585654))

(assert (= (and b!3585137 (is-Star!10316 (regex!5557 anOtherTypeRule!33))) b!3585655))

(assert (= (and b!3585137 (is-Union!10316 (regex!5557 anOtherTypeRule!33))) b!3585656))

(declare-fun b_lambda!105931 () Bool)

(assert (= b_lambda!105929 (or (and b!3585149 b_free!92279 (= (toChars!7696 (transformation!5557 anOtherTypeRule!33)) (toChars!7696 (transformation!5557 (rule!8271 token!511))))) (and b!3585143 b_free!92271 (= (toChars!7696 (transformation!5557 (h!43097 rules!3307))) (toChars!7696 (transformation!5557 (rule!8271 token!511))))) (and b!3585127 b_free!92267) (and b!3585648 b_free!92299 (= (toChars!7696 (transformation!5557 (h!43097 (t!290554 rules!3307)))) (toChars!7696 (transformation!5557 (rule!8271 token!511))))) (and b!3585129 b_free!92275 (= (toChars!7696 (transformation!5557 rule!403)) (toChars!7696 (transformation!5557 (rule!8271 token!511))))) b_lambda!105931)))

(declare-fun b_lambda!105933 () Bool)

(assert (= b_lambda!105923 (or (and b!3585149 b_free!92279 (= (toChars!7696 (transformation!5557 anOtherTypeRule!33)) (toChars!7696 (transformation!5557 (rule!8271 token!511))))) (and b!3585143 b_free!92271 (= (toChars!7696 (transformation!5557 (h!43097 rules!3307))) (toChars!7696 (transformation!5557 (rule!8271 token!511))))) (and b!3585127 b_free!92267) (and b!3585648 b_free!92299 (= (toChars!7696 (transformation!5557 (h!43097 (t!290554 rules!3307)))) (toChars!7696 (transformation!5557 (rule!8271 token!511))))) (and b!3585129 b_free!92275 (= (toChars!7696 (transformation!5557 rule!403)) (toChars!7696 (transformation!5557 (rule!8271 token!511))))) b_lambda!105933)))

(push 1)

(assert b_and!258931)

(assert (not b!3585650))

(assert (not b_next!92981))

(assert (not b!3585346))

(assert (not b!3585458))

(assert (not b_next!92969))

(assert b_and!258927)

(assert b_and!258879)

(assert (not b!3585578))

(assert (not b!3585656))

(assert (not b!3585607))

(assert (not b!3585542))

(assert (not b_next!92979))

(assert (not b!3585630))

(assert (not b!3585236))

(assert (not d!1057088))

(assert (not bm!259604))

(assert (not b_lambda!105933))

(assert (not d!1057166))

(assert (not bm!259614))

(assert (not bm!259606))

(assert (not b_lambda!105931))

(assert (not b!3585453))

(assert (not d!1057124))

(assert (not d!1057160))

(assert (not b!3585584))

(assert tp_is_empty!17715)

(assert b_and!258875)

(assert (not b!3585455))

(assert (not b!3585647))

(assert (not b!3585652))

(assert (not b!3585651))

(assert (not d!1057076))

(assert (not b!3585379))

(assert (not b!3585553))

(assert b_and!258883)

(assert (not bm!259578))

(assert (not d!1057188))

(assert (not b!3585368))

(assert (not b!3585654))

(assert (not b!3585655))

(assert (not b!3585633))

(assert (not d!1057142))

(assert (not b!3585459))

(assert (not b!3585239))

(assert b_and!258871)

(assert (not b_next!92975))

(assert (not b!3585604))

(assert (not b_next!92977))

(assert b_and!258933)

(assert (not b!3585250))

(assert (not b!3585463))

(assert (not b!3585479))

(assert (not b!3585613))

(assert (not b!3585347))

(assert (not bm!259613))

(assert (not b!3585636))

(assert (not b!3585582))

(assert (not d!1057164))

(assert (not b!3585618))

(assert (not d!1057190))

(assert (not d!1057184))

(assert (not b!3585612))

(assert (not b_next!93001))

(assert (not b!3585646))

(assert (not d!1057130))

(assert (not d!1057114))

(assert (not b!3585579))

(assert (not d!1057134))

(assert (not b!3585486))

(assert (not b!3585551))

(assert (not b!3585631))

(assert b_and!258935)

(assert (not b!3585576))

(assert (not b_next!92973))

(assert (not b_next!92983))

(assert (not b!3585635))

(assert (not b!3585256))

(assert (not b!3585380))

(assert (not b!3585381))

(assert (not bm!259602))

(assert (not b!3585478))

(assert (not b!3585345))

(assert (not b!3585456))

(assert (not b!3585583))

(assert (not b!3585580))

(assert (not b!3585367))

(assert (not b!3585461))

(assert (not bm!259603))

(assert (not b!3585495))

(assert (not b!3585245))

(assert (not bm!259581))

(assert (not b!3585545))

(assert (not tb!204521))

(assert (not d!1057144))

(assert (not d!1057082))

(assert (not d!1057080))

(assert (not b!3585632))

(assert (not bm!259579))

(assert (not b!3585577))

(assert (not d!1057112))

(assert (not b!3585585))

(assert (not d!1057168))

(assert b_and!258937)

(assert (not b!3585637))

(assert (not b!3585564))

(assert (not d!1057104))

(assert (not b_next!93003))

(assert (not b_next!92971))

(assert (not d!1057072))

(assert (not d!1057182))

(assert (not b!3585244))

(assert (not b!3585547))

(assert (not d!1057156))

(assert (not b!3585549))

(assert b_and!258929)

(assert (not b!3585460))

(assert (not b!3585482))

(assert (not b!3585454))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92981))

(assert (not b_next!92979))

(assert b_and!258875)

(assert b_and!258931)

(assert b_and!258883)

(assert b_and!258871)

(assert (not b_next!93001))

(assert (not b_next!92983))

(assert b_and!258937)

(assert b_and!258929)

(assert (not b_next!92969))

(assert b_and!258927)

(assert b_and!258879)

(assert (not b_next!92975))

(assert (not b_next!92977))

(assert b_and!258933)

(assert b_and!258935)

(assert (not b_next!92973))

(assert (not b_next!93003))

(assert (not b_next!92971))

(check-sat)

(pop 1)

