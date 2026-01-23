; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!380160 () Bool)

(assert start!380160)

(declare-fun b!4034157 () Bool)

(declare-fun b_free!112425 () Bool)

(declare-fun b_next!113129 () Bool)

(assert (=> b!4034157 (= b_free!112425 (not b_next!113129))))

(declare-fun tp!1225797 () Bool)

(declare-fun b_and!310003 () Bool)

(assert (=> b!4034157 (= tp!1225797 b_and!310003)))

(declare-fun b_free!112427 () Bool)

(declare-fun b_next!113131 () Bool)

(assert (=> b!4034157 (= b_free!112427 (not b_next!113131))))

(declare-fun tp!1225801 () Bool)

(declare-fun b_and!310005 () Bool)

(assert (=> b!4034157 (= tp!1225801 b_and!310005)))

(declare-fun b!4034142 () Bool)

(declare-fun b_free!112429 () Bool)

(declare-fun b_next!113133 () Bool)

(assert (=> b!4034142 (= b_free!112429 (not b_next!113133))))

(declare-fun tp!1225802 () Bool)

(declare-fun b_and!310007 () Bool)

(assert (=> b!4034142 (= tp!1225802 b_and!310007)))

(declare-fun b_free!112431 () Bool)

(declare-fun b_next!113135 () Bool)

(assert (=> b!4034142 (= b_free!112431 (not b_next!113135))))

(declare-fun tp!1225805 () Bool)

(declare-fun b_and!310009 () Bool)

(assert (=> b!4034142 (= tp!1225805 b_and!310009)))

(declare-fun b!4034128 () Bool)

(declare-fun res!1642630 () Bool)

(declare-fun e!2503227 () Bool)

(assert (=> b!4034128 (=> (not res!1642630) (not e!2503227))))

(declare-datatypes ((C!23828 0))(
  ( (C!23829 (val!14008 Int)) )
))
(declare-datatypes ((List!43341 0))(
  ( (Nil!43217) (Cons!43217 (h!48637 C!23828) (t!334404 List!43341)) )
))
(declare-datatypes ((IArray!26259 0))(
  ( (IArray!26260 (innerList!13187 List!43341)) )
))
(declare-datatypes ((Conc!13127 0))(
  ( (Node!13127 (left!32547 Conc!13127) (right!32877 Conc!13127) (csize!26484 Int) (cheight!13338 Int)) (Leaf!20292 (xs!16433 IArray!26259) (csize!26485 Int)) (Empty!13127) )
))
(declare-datatypes ((BalanceConc!25848 0))(
  ( (BalanceConc!25849 (c!696700 Conc!13127)) )
))
(declare-datatypes ((List!43342 0))(
  ( (Nil!43218) (Cons!43218 (h!48638 (_ BitVec 16)) (t!334405 List!43342)) )
))
(declare-datatypes ((TokenValue!7146 0))(
  ( (FloatLiteralValue!14292 (text!50467 List!43342)) (TokenValueExt!7145 (__x!26509 Int)) (Broken!35730 (value!217714 List!43342)) (Object!7269) (End!7146) (Def!7146) (Underscore!7146) (Match!7146) (Else!7146) (Error!7146) (Case!7146) (If!7146) (Extends!7146) (Abstract!7146) (Class!7146) (Val!7146) (DelimiterValue!14292 (del!7206 List!43342)) (KeywordValue!7152 (value!217715 List!43342)) (CommentValue!14292 (value!217716 List!43342)) (WhitespaceValue!14292 (value!217717 List!43342)) (IndentationValue!7146 (value!217718 List!43342)) (String!49447) (Int32!7146) (Broken!35731 (value!217719 List!43342)) (Boolean!7147) (Unit!62396) (OperatorValue!7149 (op!7206 List!43342)) (IdentifierValue!14292 (value!217720 List!43342)) (IdentifierValue!14293 (value!217721 List!43342)) (WhitespaceValue!14293 (value!217722 List!43342)) (True!14292) (False!14292) (Broken!35732 (value!217723 List!43342)) (Broken!35733 (value!217724 List!43342)) (True!14293) (RightBrace!7146) (RightBracket!7146) (Colon!7146) (Null!7146) (Comma!7146) (LeftBracket!7146) (False!14293) (LeftBrace!7146) (ImaginaryLiteralValue!7146 (text!50468 List!43342)) (StringLiteralValue!21438 (value!217725 List!43342)) (EOFValue!7146 (value!217726 List!43342)) (IdentValue!7146 (value!217727 List!43342)) (DelimiterValue!14293 (value!217728 List!43342)) (DedentValue!7146 (value!217729 List!43342)) (NewLineValue!7146 (value!217730 List!43342)) (IntegerValue!21438 (value!217731 (_ BitVec 32)) (text!50469 List!43342)) (IntegerValue!21439 (value!217732 Int) (text!50470 List!43342)) (Times!7146) (Or!7146) (Equal!7146) (Minus!7146) (Broken!35734 (value!217733 List!43342)) (And!7146) (Div!7146) (LessEqual!7146) (Mod!7146) (Concat!18967) (Not!7146) (Plus!7146) (SpaceValue!7146 (value!217734 List!43342)) (IntegerValue!21440 (value!217735 Int) (text!50471 List!43342)) (StringLiteralValue!21439 (text!50472 List!43342)) (FloatLiteralValue!14293 (text!50473 List!43342)) (BytesLiteralValue!7146 (value!217736 List!43342)) (CommentValue!14293 (value!217737 List!43342)) (StringLiteralValue!21440 (value!217738 List!43342)) (ErrorTokenValue!7146 (msg!7207 List!43342)) )
))
(declare-datatypes ((Regex!11821 0))(
  ( (ElementMatch!11821 (c!696701 C!23828)) (Concat!18968 (regOne!24154 Regex!11821) (regTwo!24154 Regex!11821)) (EmptyExpr!11821) (Star!11821 (reg!12150 Regex!11821)) (EmptyLang!11821) (Union!11821 (regOne!24155 Regex!11821) (regTwo!24155 Regex!11821)) )
))
(declare-datatypes ((String!49448 0))(
  ( (String!49449 (value!217739 String)) )
))
(declare-datatypes ((TokenValueInjection!13720 0))(
  ( (TokenValueInjection!13721 (toValue!9444 Int) (toChars!9303 Int)) )
))
(declare-datatypes ((Rule!13632 0))(
  ( (Rule!13633 (regex!6916 Regex!11821) (tag!7776 String!49448) (isSeparator!6916 Bool) (transformation!6916 TokenValueInjection!13720)) )
))
(declare-datatypes ((Token!12970 0))(
  ( (Token!12971 (value!217740 TokenValue!7146) (rule!9982 Rule!13632) (size!32301 Int) (originalCharacters!7516 List!43341)) )
))
(declare-fun token!484 () Token!12970)

(declare-fun size!32302 (List!43341) Int)

(assert (=> b!4034128 (= res!1642630 (= (size!32301 token!484) (size!32302 (originalCharacters!7516 token!484))))))

(declare-fun b!4034129 () Bool)

(declare-fun e!2503231 () Bool)

(declare-fun e!2503215 () Bool)

(declare-fun tp!1225804 () Bool)

(assert (=> b!4034129 (= e!2503231 (and e!2503215 tp!1225804))))

(declare-fun b!4034130 () Bool)

(declare-fun res!1642637 () Bool)

(declare-fun e!2503240 () Bool)

(assert (=> b!4034130 (=> (not res!1642637) (not e!2503240))))

(declare-datatypes ((List!43343 0))(
  ( (Nil!43219) (Cons!43219 (h!48639 Rule!13632) (t!334406 List!43343)) )
))
(declare-fun rules!2999 () List!43343)

(declare-fun isEmpty!25789 (List!43343) Bool)

(assert (=> b!4034130 (= res!1642637 (not (isEmpty!25789 rules!2999)))))

(declare-fun b!4034131 () Bool)

(declare-fun e!2503233 () Bool)

(declare-fun tp_is_empty!20613 () Bool)

(declare-fun tp!1225799 () Bool)

(assert (=> b!4034131 (= e!2503233 (and tp_is_empty!20613 tp!1225799))))

(declare-fun lt!1435037 () List!43341)

(declare-fun b!4034133 () Bool)

(declare-fun lt!1435027 () Int)

(assert (=> b!4034133 (= e!2503227 (and (= (size!32301 token!484) lt!1435027) (= (originalCharacters!7516 token!484) lt!1435037)))))

(declare-fun b!4034134 () Bool)

(declare-fun e!2503223 () Bool)

(declare-fun e!2503234 () Bool)

(assert (=> b!4034134 (= e!2503223 e!2503234)))

(declare-fun res!1642620 () Bool)

(assert (=> b!4034134 (=> res!1642620 e!2503234)))

(declare-datatypes ((tuple2!42298 0))(
  ( (tuple2!42299 (_1!24283 Token!12970) (_2!24283 List!43341)) )
))
(declare-datatypes ((Option!9330 0))(
  ( (None!9329) (Some!9329 (v!39723 tuple2!42298)) )
))
(declare-fun lt!1435035 () Option!9330)

(declare-fun lt!1435039 () Option!9330)

(assert (=> b!4034134 (= res!1642620 (not (= lt!1435035 lt!1435039)))))

(declare-fun lt!1435032 () Token!12970)

(declare-fun suffixResult!105 () List!43341)

(assert (=> b!4034134 (= lt!1435035 (Some!9329 (tuple2!42299 lt!1435032 suffixResult!105)))))

(declare-datatypes ((LexerInterface!6505 0))(
  ( (LexerInterfaceExt!6502 (__x!26510 Int)) (Lexer!6503) )
))
(declare-fun thiss!21717 () LexerInterface!6505)

(declare-fun lt!1435003 () List!43341)

(declare-fun maxPrefixOneRule!2815 (LexerInterface!6505 Rule!13632 List!43341) Option!9330)

(assert (=> b!4034134 (= lt!1435035 (maxPrefixOneRule!2815 thiss!21717 (rule!9982 token!484) lt!1435003))))

(declare-fun lt!1435021 () TokenValue!7146)

(assert (=> b!4034134 (= lt!1435032 (Token!12971 lt!1435021 (rule!9982 token!484) lt!1435027 lt!1435037))))

(declare-fun apply!10105 (TokenValueInjection!13720 BalanceConc!25848) TokenValue!7146)

(declare-fun seqFromList!5133 (List!43341) BalanceConc!25848)

(assert (=> b!4034134 (= lt!1435021 (apply!10105 (transformation!6916 (rule!9982 token!484)) (seqFromList!5133 lt!1435037)))))

(declare-datatypes ((Unit!62397 0))(
  ( (Unit!62398) )
))
(declare-fun lt!1435016 () Unit!62397)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1621 (LexerInterface!6505 List!43343 List!43341 List!43341 List!43341 Rule!13632) Unit!62397)

(assert (=> b!4034134 (= lt!1435016 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1621 thiss!21717 rules!2999 lt!1435037 lt!1435003 suffixResult!105 (rule!9982 token!484)))))

(declare-fun lt!1435030 () List!43341)

(assert (=> b!4034134 (= lt!1435030 suffixResult!105)))

(declare-fun lt!1435026 () Unit!62397)

(declare-fun lemmaSamePrefixThenSameSuffix!2164 (List!43341 List!43341 List!43341 List!43341 List!43341) Unit!62397)

(assert (=> b!4034134 (= lt!1435026 (lemmaSamePrefixThenSameSuffix!2164 lt!1435037 lt!1435030 lt!1435037 suffixResult!105 lt!1435003))))

(declare-fun lt!1435002 () List!43341)

(declare-fun isPrefix!4003 (List!43341 List!43341) Bool)

(assert (=> b!4034134 (isPrefix!4003 lt!1435037 lt!1435002)))

(declare-fun lt!1435012 () Unit!62397)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2838 (List!43341 List!43341) Unit!62397)

(assert (=> b!4034134 (= lt!1435012 (lemmaConcatTwoListThenFirstIsPrefix!2838 lt!1435037 lt!1435030))))

(declare-fun b!4034135 () Bool)

(declare-fun e!2503230 () Bool)

(assert (=> b!4034135 (= e!2503230 e!2503223)))

(declare-fun res!1642623 () Bool)

(assert (=> b!4034135 (=> res!1642623 e!2503223)))

(declare-fun lt!1435036 () List!43341)

(assert (=> b!4034135 (= res!1642623 (or (not (= lt!1435003 lt!1435036)) (not (= lt!1435003 lt!1435002))))))

(assert (=> b!4034135 (= lt!1435036 lt!1435002)))

(declare-fun ++!11318 (List!43341 List!43341) List!43341)

(assert (=> b!4034135 (= lt!1435002 (++!11318 lt!1435037 lt!1435030))))

(declare-fun lt!1435008 () List!43341)

(declare-fun suffix!1299 () List!43341)

(assert (=> b!4034135 (= lt!1435036 (++!11318 lt!1435008 suffix!1299))))

(declare-fun lt!1435038 () List!43341)

(assert (=> b!4034135 (= lt!1435030 (++!11318 lt!1435038 suffix!1299))))

(declare-fun lt!1435017 () Unit!62397)

(declare-fun lemmaConcatAssociativity!2620 (List!43341 List!43341 List!43341) Unit!62397)

(assert (=> b!4034135 (= lt!1435017 (lemmaConcatAssociativity!2620 lt!1435037 lt!1435038 suffix!1299))))

(declare-fun b!4034136 () Bool)

(declare-fun e!2503236 () Bool)

(declare-fun e!2503232 () Bool)

(assert (=> b!4034136 (= e!2503236 e!2503232)))

(declare-fun res!1642629 () Bool)

(assert (=> b!4034136 (=> (not res!1642629) (not e!2503232))))

(declare-fun maxPrefix!3803 (LexerInterface!6505 List!43343 List!43341) Option!9330)

(assert (=> b!4034136 (= res!1642629 (= (maxPrefix!3803 thiss!21717 rules!2999 lt!1435003) lt!1435039))))

(declare-fun lt!1435004 () tuple2!42298)

(assert (=> b!4034136 (= lt!1435039 (Some!9329 lt!1435004))))

(assert (=> b!4034136 (= lt!1435004 (tuple2!42299 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43341)

(assert (=> b!4034136 (= lt!1435003 (++!11318 prefix!494 suffix!1299))))

(declare-fun e!2503238 () Bool)

(declare-fun tp!1225794 () Bool)

(declare-fun b!4034137 () Bool)

(declare-fun e!2503225 () Bool)

(declare-fun inv!21 (TokenValue!7146) Bool)

(assert (=> b!4034137 (= e!2503238 (and (inv!21 (value!217740 token!484)) e!2503225 tp!1225794))))

(declare-fun tp!1225796 () Bool)

(declare-fun b!4034138 () Bool)

(declare-fun e!2503228 () Bool)

(declare-fun inv!57735 (String!49448) Bool)

(declare-fun inv!57738 (TokenValueInjection!13720) Bool)

(assert (=> b!4034138 (= e!2503215 (and tp!1225796 (inv!57735 (tag!7776 (h!48639 rules!2999))) (inv!57738 (transformation!6916 (h!48639 rules!2999))) e!2503228))))

(declare-fun b!4034139 () Bool)

(declare-fun e!2503217 () Bool)

(declare-fun e!2503239 () Bool)

(assert (=> b!4034139 (= e!2503217 e!2503239)))

(declare-fun res!1642628 () Bool)

(assert (=> b!4034139 (=> res!1642628 e!2503239)))

(assert (=> b!4034139 (= res!1642628 (not (isPrefix!4003 lt!1435037 lt!1435003)))))

(assert (=> b!4034139 (isPrefix!4003 prefix!494 lt!1435003)))

(declare-fun lt!1435014 () Unit!62397)

(assert (=> b!4034139 (= lt!1435014 (lemmaConcatTwoListThenFirstIsPrefix!2838 prefix!494 suffix!1299))))

(declare-fun lt!1435001 () List!43341)

(assert (=> b!4034139 (isPrefix!4003 lt!1435037 lt!1435001)))

(declare-fun lt!1435023 () Unit!62397)

(assert (=> b!4034139 (= lt!1435023 (lemmaConcatTwoListThenFirstIsPrefix!2838 lt!1435037 suffixResult!105))))

(declare-fun b!4034140 () Bool)

(declare-fun e!2503224 () Bool)

(assert (=> b!4034140 (= e!2503234 e!2503224)))

(declare-fun res!1642621 () Bool)

(assert (=> b!4034140 (=> res!1642621 e!2503224)))

(declare-fun matchR!5774 (Regex!11821 List!43341) Bool)

(assert (=> b!4034140 (= res!1642621 (not (matchR!5774 (regex!6916 (rule!9982 token!484)) lt!1435037)))))

(declare-fun lt!1435033 () List!43341)

(assert (=> b!4034140 (isPrefix!4003 lt!1435037 lt!1435033)))

(declare-fun newSuffix!27 () List!43341)

(declare-fun lt!1435006 () Unit!62397)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!796 (List!43341 List!43341 List!43341) Unit!62397)

(assert (=> b!4034140 (= lt!1435006 (lemmaPrefixStaysPrefixWhenAddingToSuffix!796 lt!1435037 prefix!494 newSuffix!27))))

(declare-fun lt!1435018 () Unit!62397)

(assert (=> b!4034140 (= lt!1435018 (lemmaPrefixStaysPrefixWhenAddingToSuffix!796 lt!1435037 prefix!494 suffix!1299))))

(declare-fun b!4034141 () Bool)

(declare-fun e!2503241 () Bool)

(assert (=> b!4034141 (= e!2503224 e!2503241)))

(declare-fun res!1642631 () Bool)

(assert (=> b!4034141 (=> res!1642631 e!2503241)))

(declare-fun lt!1435007 () List!43341)

(assert (=> b!4034141 (= res!1642631 (not (= lt!1435007 lt!1435003)))))

(declare-fun lt!1435011 () List!43341)

(assert (=> b!4034141 (= lt!1435007 (++!11318 lt!1435037 lt!1435011))))

(declare-fun getSuffix!2420 (List!43341 List!43341) List!43341)

(assert (=> b!4034141 (= lt!1435011 (getSuffix!2420 lt!1435003 lt!1435037))))

(assert (=> b!4034141 e!2503227))

(declare-fun res!1642622 () Bool)

(assert (=> b!4034141 (=> (not res!1642622) (not e!2503227))))

(assert (=> b!4034141 (= res!1642622 (isPrefix!4003 lt!1435003 lt!1435003))))

(declare-fun lt!1435025 () Unit!62397)

(declare-fun lemmaIsPrefixRefl!2570 (List!43341 List!43341) Unit!62397)

(assert (=> b!4034141 (= lt!1435025 (lemmaIsPrefixRefl!2570 lt!1435003 lt!1435003))))

(declare-fun e!2503229 () Bool)

(assert (=> b!4034142 (= e!2503229 (and tp!1225802 tp!1225805))))

(declare-fun lt!1435019 () List!43341)

(declare-fun e!2503237 () Bool)

(declare-fun b!4034143 () Bool)

(declare-fun lt!1435020 () Option!9330)

(assert (=> b!4034143 (= e!2503237 (= lt!1435033 (++!11318 lt!1435019 (_2!24283 (v!39723 lt!1435020)))))))

(declare-fun b!4034132 () Bool)

(declare-fun res!1642639 () Bool)

(assert (=> b!4034132 (=> (not res!1642639) (not e!2503240))))

(declare-fun rulesInvariant!5848 (LexerInterface!6505 List!43343) Bool)

(assert (=> b!4034132 (= res!1642639 (rulesInvariant!5848 thiss!21717 rules!2999))))

(declare-fun res!1642635 () Bool)

(assert (=> start!380160 (=> (not res!1642635) (not e!2503240))))

(get-info :version)

(assert (=> start!380160 (= res!1642635 ((_ is Lexer!6503) thiss!21717))))

(assert (=> start!380160 e!2503240))

(declare-fun e!2503218 () Bool)

(assert (=> start!380160 e!2503218))

(declare-fun inv!57739 (Token!12970) Bool)

(assert (=> start!380160 (and (inv!57739 token!484) e!2503238)))

(declare-fun e!2503242 () Bool)

(assert (=> start!380160 e!2503242))

(declare-fun e!2503235 () Bool)

(assert (=> start!380160 e!2503235))

(declare-fun e!2503220 () Bool)

(assert (=> start!380160 e!2503220))

(assert (=> start!380160 true))

(assert (=> start!380160 e!2503231))

(assert (=> start!380160 e!2503233))

(declare-fun b!4034144 () Bool)

(declare-fun e!2503216 () Bool)

(assert (=> b!4034144 (= e!2503216 e!2503237)))

(declare-fun res!1642633 () Bool)

(assert (=> b!4034144 (=> res!1642633 e!2503237)))

(declare-fun contains!8580 (List!43343 Rule!13632) Bool)

(assert (=> b!4034144 (= res!1642633 (not (contains!8580 rules!2999 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))

(declare-fun list!16082 (BalanceConc!25848) List!43341)

(declare-fun charsOf!4732 (Token!12970) BalanceConc!25848)

(assert (=> b!4034144 (= lt!1435019 (list!16082 (charsOf!4732 (_1!24283 (v!39723 lt!1435020)))))))

(declare-fun lt!1435029 () Unit!62397)

(declare-fun lemmaInv!1125 (TokenValueInjection!13720) Unit!62397)

(assert (=> b!4034144 (= lt!1435029 (lemmaInv!1125 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))

(declare-fun ruleValid!2846 (LexerInterface!6505 Rule!13632) Bool)

(assert (=> b!4034144 (ruleValid!2846 thiss!21717 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))

(declare-fun lt!1435034 () Unit!62397)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1916 (LexerInterface!6505 Rule!13632 List!43343) Unit!62397)

(assert (=> b!4034144 (= lt!1435034 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1916 thiss!21717 (rule!9982 (_1!24283 (v!39723 lt!1435020))) rules!2999))))

(declare-fun lt!1435010 () Unit!62397)

(declare-fun lemmaCharactersSize!1435 (Token!12970) Unit!62397)

(assert (=> b!4034144 (= lt!1435010 (lemmaCharactersSize!1435 token!484))))

(declare-fun lt!1435022 () Unit!62397)

(assert (=> b!4034144 (= lt!1435022 (lemmaCharactersSize!1435 (_1!24283 (v!39723 lt!1435020))))))

(declare-fun b!4034145 () Bool)

(declare-fun res!1642632 () Bool)

(assert (=> b!4034145 (=> (not res!1642632) (not e!2503240))))

(assert (=> b!4034145 (= res!1642632 (>= (size!32302 suffix!1299) (size!32302 newSuffix!27)))))

(declare-fun b!4034146 () Bool)

(assert (=> b!4034146 (= e!2503241 e!2503216)))

(declare-fun res!1642627 () Bool)

(assert (=> b!4034146 (=> res!1642627 e!2503216)))

(assert (=> b!4034146 (= res!1642627 (not ((_ is Some!9329) lt!1435020)))))

(assert (=> b!4034146 (= lt!1435020 (maxPrefix!3803 thiss!21717 rules!2999 lt!1435033))))

(assert (=> b!4034146 (and (= suffixResult!105 lt!1435011) (= lt!1435004 (tuple2!42299 lt!1435032 lt!1435011)))))

(declare-fun lt!1435031 () Unit!62397)

(assert (=> b!4034146 (= lt!1435031 (lemmaSamePrefixThenSameSuffix!2164 lt!1435037 suffixResult!105 lt!1435037 lt!1435011 lt!1435003))))

(assert (=> b!4034146 (isPrefix!4003 lt!1435037 lt!1435007)))

(declare-fun lt!1435005 () Unit!62397)

(assert (=> b!4034146 (= lt!1435005 (lemmaConcatTwoListThenFirstIsPrefix!2838 lt!1435037 lt!1435011))))

(declare-fun b!4034147 () Bool)

(declare-fun tp!1225806 () Bool)

(assert (=> b!4034147 (= e!2503220 (and tp_is_empty!20613 tp!1225806))))

(declare-fun b!4034148 () Bool)

(declare-fun tp!1225800 () Bool)

(assert (=> b!4034148 (= e!2503218 (and tp_is_empty!20613 tp!1225800))))

(declare-fun b!4034149 () Bool)

(declare-fun tp!1225795 () Bool)

(assert (=> b!4034149 (= e!2503242 (and tp_is_empty!20613 tp!1225795))))

(declare-fun b!4034150 () Bool)

(declare-fun e!2503221 () Bool)

(assert (=> b!4034150 (= e!2503240 e!2503221)))

(declare-fun res!1642624 () Bool)

(assert (=> b!4034150 (=> (not res!1642624) (not e!2503221))))

(declare-fun lt!1435015 () Int)

(assert (=> b!4034150 (= res!1642624 (>= lt!1435015 lt!1435027))))

(assert (=> b!4034150 (= lt!1435027 (size!32302 lt!1435037))))

(assert (=> b!4034150 (= lt!1435015 (size!32302 prefix!494))))

(assert (=> b!4034150 (= lt!1435037 (list!16082 (charsOf!4732 token!484)))))

(declare-fun b!4034151 () Bool)

(assert (=> b!4034151 (= e!2503232 (not e!2503217))))

(declare-fun res!1642638 () Bool)

(assert (=> b!4034151 (=> res!1642638 e!2503217)))

(assert (=> b!4034151 (= res!1642638 (not (= lt!1435001 lt!1435003)))))

(assert (=> b!4034151 (= lt!1435001 (++!11318 lt!1435037 suffixResult!105))))

(declare-fun lt!1435024 () Unit!62397)

(assert (=> b!4034151 (= lt!1435024 (lemmaInv!1125 (transformation!6916 (rule!9982 token!484))))))

(assert (=> b!4034151 (ruleValid!2846 thiss!21717 (rule!9982 token!484))))

(declare-fun lt!1435028 () Unit!62397)

(assert (=> b!4034151 (= lt!1435028 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1916 thiss!21717 (rule!9982 token!484) rules!2999))))

(declare-fun tp!1225798 () Bool)

(declare-fun b!4034152 () Bool)

(assert (=> b!4034152 (= e!2503225 (and tp!1225798 (inv!57735 (tag!7776 (rule!9982 token!484))) (inv!57738 (transformation!6916 (rule!9982 token!484))) e!2503229))))

(declare-fun b!4034153 () Bool)

(declare-fun res!1642626 () Bool)

(assert (=> b!4034153 (=> (not res!1642626) (not e!2503240))))

(assert (=> b!4034153 (= res!1642626 (isPrefix!4003 newSuffix!27 suffix!1299))))

(declare-fun b!4034154 () Bool)

(assert (=> b!4034154 (= e!2503221 e!2503236)))

(declare-fun res!1642625 () Bool)

(assert (=> b!4034154 (=> (not res!1642625) (not e!2503236))))

(declare-fun lt!1435013 () List!43341)

(assert (=> b!4034154 (= res!1642625 (= lt!1435013 lt!1435033))))

(assert (=> b!4034154 (= lt!1435033 (++!11318 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43341)

(assert (=> b!4034154 (= lt!1435013 (++!11318 lt!1435037 newSuffixResult!27))))

(declare-fun b!4034155 () Bool)

(declare-fun tp!1225803 () Bool)

(assert (=> b!4034155 (= e!2503235 (and tp_is_empty!20613 tp!1225803))))

(declare-fun b!4034156 () Bool)

(declare-fun res!1642636 () Bool)

(assert (=> b!4034156 (=> (not res!1642636) (not e!2503227))))

(assert (=> b!4034156 (= res!1642636 (= (value!217740 token!484) lt!1435021))))

(assert (=> b!4034157 (= e!2503228 (and tp!1225797 tp!1225801))))

(declare-fun b!4034158 () Bool)

(assert (=> b!4034158 (= e!2503239 e!2503230)))

(declare-fun res!1642634 () Bool)

(assert (=> b!4034158 (=> res!1642634 e!2503230)))

(assert (=> b!4034158 (= res!1642634 (not (= lt!1435008 prefix!494)))))

(assert (=> b!4034158 (= lt!1435008 (++!11318 lt!1435037 lt!1435038))))

(assert (=> b!4034158 (= lt!1435038 (getSuffix!2420 prefix!494 lt!1435037))))

(assert (=> b!4034158 (isPrefix!4003 lt!1435037 prefix!494)))

(declare-fun lt!1435009 () Unit!62397)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!567 (List!43341 List!43341 List!43341) Unit!62397)

(assert (=> b!4034158 (= lt!1435009 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!567 prefix!494 lt!1435037 lt!1435003))))

(assert (= (and start!380160 res!1642635) b!4034130))

(assert (= (and b!4034130 res!1642637) b!4034132))

(assert (= (and b!4034132 res!1642639) b!4034145))

(assert (= (and b!4034145 res!1642632) b!4034153))

(assert (= (and b!4034153 res!1642626) b!4034150))

(assert (= (and b!4034150 res!1642624) b!4034154))

(assert (= (and b!4034154 res!1642625) b!4034136))

(assert (= (and b!4034136 res!1642629) b!4034151))

(assert (= (and b!4034151 (not res!1642638)) b!4034139))

(assert (= (and b!4034139 (not res!1642628)) b!4034158))

(assert (= (and b!4034158 (not res!1642634)) b!4034135))

(assert (= (and b!4034135 (not res!1642623)) b!4034134))

(assert (= (and b!4034134 (not res!1642620)) b!4034140))

(assert (= (and b!4034140 (not res!1642621)) b!4034141))

(assert (= (and b!4034141 res!1642622) b!4034156))

(assert (= (and b!4034156 res!1642636) b!4034128))

(assert (= (and b!4034128 res!1642630) b!4034133))

(assert (= (and b!4034141 (not res!1642631)) b!4034146))

(assert (= (and b!4034146 (not res!1642627)) b!4034144))

(assert (= (and b!4034144 (not res!1642633)) b!4034143))

(assert (= (and start!380160 ((_ is Cons!43217) prefix!494)) b!4034148))

(assert (= b!4034152 b!4034142))

(assert (= b!4034137 b!4034152))

(assert (= start!380160 b!4034137))

(assert (= (and start!380160 ((_ is Cons!43217) suffixResult!105)) b!4034149))

(assert (= (and start!380160 ((_ is Cons!43217) suffix!1299)) b!4034155))

(assert (= (and start!380160 ((_ is Cons!43217) newSuffix!27)) b!4034147))

(assert (= b!4034138 b!4034157))

(assert (= b!4034129 b!4034138))

(assert (= (and start!380160 ((_ is Cons!43219) rules!2999)) b!4034129))

(assert (= (and start!380160 ((_ is Cons!43217) newSuffixResult!27)) b!4034131))

(declare-fun m!4627443 () Bool)

(assert (=> b!4034135 m!4627443))

(declare-fun m!4627445 () Bool)

(assert (=> b!4034135 m!4627445))

(declare-fun m!4627447 () Bool)

(assert (=> b!4034135 m!4627447))

(declare-fun m!4627449 () Bool)

(assert (=> b!4034135 m!4627449))

(declare-fun m!4627451 () Bool)

(assert (=> b!4034144 m!4627451))

(declare-fun m!4627453 () Bool)

(assert (=> b!4034144 m!4627453))

(declare-fun m!4627455 () Bool)

(assert (=> b!4034144 m!4627455))

(declare-fun m!4627457 () Bool)

(assert (=> b!4034144 m!4627457))

(declare-fun m!4627459 () Bool)

(assert (=> b!4034144 m!4627459))

(declare-fun m!4627461 () Bool)

(assert (=> b!4034144 m!4627461))

(declare-fun m!4627463 () Bool)

(assert (=> b!4034144 m!4627463))

(assert (=> b!4034144 m!4627459))

(declare-fun m!4627465 () Bool)

(assert (=> b!4034144 m!4627465))

(declare-fun m!4627467 () Bool)

(assert (=> b!4034136 m!4627467))

(declare-fun m!4627469 () Bool)

(assert (=> b!4034136 m!4627469))

(declare-fun m!4627471 () Bool)

(assert (=> b!4034143 m!4627471))

(declare-fun m!4627473 () Bool)

(assert (=> start!380160 m!4627473))

(declare-fun m!4627475 () Bool)

(assert (=> b!4034134 m!4627475))

(assert (=> b!4034134 m!4627475))

(declare-fun m!4627477 () Bool)

(assert (=> b!4034134 m!4627477))

(declare-fun m!4627479 () Bool)

(assert (=> b!4034134 m!4627479))

(declare-fun m!4627481 () Bool)

(assert (=> b!4034134 m!4627481))

(declare-fun m!4627483 () Bool)

(assert (=> b!4034134 m!4627483))

(declare-fun m!4627485 () Bool)

(assert (=> b!4034134 m!4627485))

(declare-fun m!4627487 () Bool)

(assert (=> b!4034134 m!4627487))

(declare-fun m!4627489 () Bool)

(assert (=> b!4034139 m!4627489))

(declare-fun m!4627491 () Bool)

(assert (=> b!4034139 m!4627491))

(declare-fun m!4627493 () Bool)

(assert (=> b!4034139 m!4627493))

(declare-fun m!4627495 () Bool)

(assert (=> b!4034139 m!4627495))

(declare-fun m!4627497 () Bool)

(assert (=> b!4034139 m!4627497))

(declare-fun m!4627499 () Bool)

(assert (=> b!4034146 m!4627499))

(declare-fun m!4627501 () Bool)

(assert (=> b!4034146 m!4627501))

(declare-fun m!4627503 () Bool)

(assert (=> b!4034146 m!4627503))

(declare-fun m!4627505 () Bool)

(assert (=> b!4034146 m!4627505))

(declare-fun m!4627507 () Bool)

(assert (=> b!4034150 m!4627507))

(declare-fun m!4627509 () Bool)

(assert (=> b!4034150 m!4627509))

(declare-fun m!4627511 () Bool)

(assert (=> b!4034150 m!4627511))

(assert (=> b!4034150 m!4627511))

(declare-fun m!4627513 () Bool)

(assert (=> b!4034150 m!4627513))

(declare-fun m!4627515 () Bool)

(assert (=> b!4034130 m!4627515))

(declare-fun m!4627517 () Bool)

(assert (=> b!4034132 m!4627517))

(declare-fun m!4627519 () Bool)

(assert (=> b!4034158 m!4627519))

(declare-fun m!4627521 () Bool)

(assert (=> b!4034158 m!4627521))

(declare-fun m!4627523 () Bool)

(assert (=> b!4034158 m!4627523))

(declare-fun m!4627525 () Bool)

(assert (=> b!4034158 m!4627525))

(declare-fun m!4627527 () Bool)

(assert (=> b!4034154 m!4627527))

(declare-fun m!4627529 () Bool)

(assert (=> b!4034154 m!4627529))

(declare-fun m!4627531 () Bool)

(assert (=> b!4034128 m!4627531))

(declare-fun m!4627533 () Bool)

(assert (=> b!4034145 m!4627533))

(declare-fun m!4627535 () Bool)

(assert (=> b!4034145 m!4627535))

(declare-fun m!4627537 () Bool)

(assert (=> b!4034141 m!4627537))

(declare-fun m!4627539 () Bool)

(assert (=> b!4034141 m!4627539))

(declare-fun m!4627541 () Bool)

(assert (=> b!4034141 m!4627541))

(declare-fun m!4627543 () Bool)

(assert (=> b!4034141 m!4627543))

(declare-fun m!4627545 () Bool)

(assert (=> b!4034140 m!4627545))

(declare-fun m!4627547 () Bool)

(assert (=> b!4034140 m!4627547))

(declare-fun m!4627549 () Bool)

(assert (=> b!4034140 m!4627549))

(declare-fun m!4627551 () Bool)

(assert (=> b!4034140 m!4627551))

(declare-fun m!4627553 () Bool)

(assert (=> b!4034153 m!4627553))

(declare-fun m!4627555 () Bool)

(assert (=> b!4034151 m!4627555))

(declare-fun m!4627557 () Bool)

(assert (=> b!4034151 m!4627557))

(declare-fun m!4627559 () Bool)

(assert (=> b!4034151 m!4627559))

(declare-fun m!4627561 () Bool)

(assert (=> b!4034151 m!4627561))

(declare-fun m!4627563 () Bool)

(assert (=> b!4034138 m!4627563))

(declare-fun m!4627565 () Bool)

(assert (=> b!4034138 m!4627565))

(declare-fun m!4627567 () Bool)

(assert (=> b!4034137 m!4627567))

(declare-fun m!4627569 () Bool)

(assert (=> b!4034152 m!4627569))

(declare-fun m!4627571 () Bool)

(assert (=> b!4034152 m!4627571))

(check-sat (not b!4034145) (not b!4034152) (not b!4034129) (not b!4034153) (not b!4034150) (not b!4034141) (not start!380160) (not b!4034132) (not b!4034136) (not b!4034137) b_and!310003 (not b!4034140) (not b!4034148) (not b!4034135) (not b!4034128) (not b!4034144) tp_is_empty!20613 (not b!4034154) (not b_next!113135) (not b!4034146) (not b!4034138) (not b!4034130) (not b_next!113133) b_and!310009 (not b!4034134) (not b!4034131) (not b!4034147) (not b!4034158) (not b!4034143) b_and!310005 b_and!310007 (not b!4034155) (not b!4034139) (not b_next!113131) (not b!4034149) (not b_next!113129) (not b!4034151))
(check-sat (not b_next!113135) b_and!310005 b_and!310007 b_and!310003 (not b_next!113131) (not b_next!113129) (not b_next!113133) b_and!310009)
(get-model)

(declare-fun b!4034308 () Bool)

(declare-fun res!1642741 () Bool)

(declare-fun e!2503320 () Bool)

(assert (=> b!4034308 (=> (not res!1642741) (not e!2503320))))

(declare-fun lt!1435112 () Option!9330)

(declare-fun get!14180 (Option!9330) tuple2!42298)

(assert (=> b!4034308 (= res!1642741 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112)))) (_2!24283 (get!14180 lt!1435112))) lt!1435003))))

(declare-fun d!1194963 () Bool)

(declare-fun e!2503319 () Bool)

(assert (=> d!1194963 e!2503319))

(declare-fun res!1642740 () Bool)

(assert (=> d!1194963 (=> res!1642740 e!2503319)))

(declare-fun isEmpty!25792 (Option!9330) Bool)

(assert (=> d!1194963 (= res!1642740 (isEmpty!25792 lt!1435112))))

(declare-fun e!2503318 () Option!9330)

(assert (=> d!1194963 (= lt!1435112 e!2503318)))

(declare-fun c!696727 () Bool)

(assert (=> d!1194963 (= c!696727 (and ((_ is Cons!43219) rules!2999) ((_ is Nil!43219) (t!334406 rules!2999))))))

(declare-fun lt!1435111 () Unit!62397)

(declare-fun lt!1435110 () Unit!62397)

(assert (=> d!1194963 (= lt!1435111 lt!1435110)))

(assert (=> d!1194963 (isPrefix!4003 lt!1435003 lt!1435003)))

(assert (=> d!1194963 (= lt!1435110 (lemmaIsPrefixRefl!2570 lt!1435003 lt!1435003))))

(declare-fun rulesValidInductive!2519 (LexerInterface!6505 List!43343) Bool)

(assert (=> d!1194963 (rulesValidInductive!2519 thiss!21717 rules!2999)))

(assert (=> d!1194963 (= (maxPrefix!3803 thiss!21717 rules!2999 lt!1435003) lt!1435112)))

(declare-fun b!4034309 () Bool)

(declare-fun res!1642746 () Bool)

(assert (=> b!4034309 (=> (not res!1642746) (not e!2503320))))

(assert (=> b!4034309 (= res!1642746 (< (size!32302 (_2!24283 (get!14180 lt!1435112))) (size!32302 lt!1435003)))))

(declare-fun b!4034310 () Bool)

(declare-fun res!1642743 () Bool)

(assert (=> b!4034310 (=> (not res!1642743) (not e!2503320))))

(assert (=> b!4034310 (= res!1642743 (= (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112)))) (originalCharacters!7516 (_1!24283 (get!14180 lt!1435112)))))))

(declare-fun b!4034311 () Bool)

(declare-fun res!1642745 () Bool)

(assert (=> b!4034311 (=> (not res!1642745) (not e!2503320))))

(assert (=> b!4034311 (= res!1642745 (= (value!217740 (_1!24283 (get!14180 lt!1435112))) (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435112)))))))))

(declare-fun b!4034312 () Bool)

(assert (=> b!4034312 (= e!2503319 e!2503320)))

(declare-fun res!1642742 () Bool)

(assert (=> b!4034312 (=> (not res!1642742) (not e!2503320))))

(declare-fun isDefined!7098 (Option!9330) Bool)

(assert (=> b!4034312 (= res!1642742 (isDefined!7098 lt!1435112))))

(declare-fun bm!287007 () Bool)

(declare-fun call!287012 () Option!9330)

(assert (=> bm!287007 (= call!287012 (maxPrefixOneRule!2815 thiss!21717 (h!48639 rules!2999) lt!1435003))))

(declare-fun b!4034313 () Bool)

(assert (=> b!4034313 (= e!2503318 call!287012)))

(declare-fun b!4034314 () Bool)

(assert (=> b!4034314 (= e!2503320 (contains!8580 rules!2999 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))))

(declare-fun b!4034315 () Bool)

(declare-fun lt!1435113 () Option!9330)

(declare-fun lt!1435109 () Option!9330)

(assert (=> b!4034315 (= e!2503318 (ite (and ((_ is None!9329) lt!1435113) ((_ is None!9329) lt!1435109)) None!9329 (ite ((_ is None!9329) lt!1435109) lt!1435113 (ite ((_ is None!9329) lt!1435113) lt!1435109 (ite (>= (size!32301 (_1!24283 (v!39723 lt!1435113))) (size!32301 (_1!24283 (v!39723 lt!1435109)))) lt!1435113 lt!1435109)))))))

(assert (=> b!4034315 (= lt!1435113 call!287012)))

(assert (=> b!4034315 (= lt!1435109 (maxPrefix!3803 thiss!21717 (t!334406 rules!2999) lt!1435003))))

(declare-fun b!4034316 () Bool)

(declare-fun res!1642744 () Bool)

(assert (=> b!4034316 (=> (not res!1642744) (not e!2503320))))

(assert (=> b!4034316 (= res!1642744 (matchR!5774 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))))))

(assert (= (and d!1194963 c!696727) b!4034313))

(assert (= (and d!1194963 (not c!696727)) b!4034315))

(assert (= (or b!4034313 b!4034315) bm!287007))

(assert (= (and d!1194963 (not res!1642740)) b!4034312))

(assert (= (and b!4034312 res!1642742) b!4034310))

(assert (= (and b!4034310 res!1642743) b!4034309))

(assert (= (and b!4034309 res!1642746) b!4034308))

(assert (= (and b!4034308 res!1642741) b!4034311))

(assert (= (and b!4034311 res!1642745) b!4034316))

(assert (= (and b!4034316 res!1642744) b!4034314))

(declare-fun m!4627773 () Bool)

(assert (=> b!4034308 m!4627773))

(declare-fun m!4627775 () Bool)

(assert (=> b!4034308 m!4627775))

(assert (=> b!4034308 m!4627775))

(declare-fun m!4627777 () Bool)

(assert (=> b!4034308 m!4627777))

(assert (=> b!4034308 m!4627777))

(declare-fun m!4627779 () Bool)

(assert (=> b!4034308 m!4627779))

(declare-fun m!4627781 () Bool)

(assert (=> bm!287007 m!4627781))

(assert (=> b!4034310 m!4627773))

(assert (=> b!4034310 m!4627775))

(assert (=> b!4034310 m!4627775))

(assert (=> b!4034310 m!4627777))

(assert (=> b!4034316 m!4627773))

(assert (=> b!4034316 m!4627775))

(assert (=> b!4034316 m!4627775))

(assert (=> b!4034316 m!4627777))

(assert (=> b!4034316 m!4627777))

(declare-fun m!4627783 () Bool)

(assert (=> b!4034316 m!4627783))

(declare-fun m!4627785 () Bool)

(assert (=> b!4034312 m!4627785))

(assert (=> b!4034311 m!4627773))

(declare-fun m!4627789 () Bool)

(assert (=> b!4034311 m!4627789))

(assert (=> b!4034311 m!4627789))

(declare-fun m!4627791 () Bool)

(assert (=> b!4034311 m!4627791))

(assert (=> b!4034314 m!4627773))

(declare-fun m!4627797 () Bool)

(assert (=> b!4034314 m!4627797))

(declare-fun m!4627799 () Bool)

(assert (=> b!4034315 m!4627799))

(assert (=> b!4034309 m!4627773))

(declare-fun m!4627801 () Bool)

(assert (=> b!4034309 m!4627801))

(declare-fun m!4627803 () Bool)

(assert (=> b!4034309 m!4627803))

(declare-fun m!4627805 () Bool)

(assert (=> d!1194963 m!4627805))

(assert (=> d!1194963 m!4627541))

(assert (=> d!1194963 m!4627543))

(declare-fun m!4627815 () Bool)

(assert (=> d!1194963 m!4627815))

(assert (=> b!4034136 d!1194963))

(declare-fun b!4034352 () Bool)

(declare-fun res!1642768 () Bool)

(declare-fun e!2503339 () Bool)

(assert (=> b!4034352 (=> (not res!1642768) (not e!2503339))))

(declare-fun lt!1435127 () List!43341)

(assert (=> b!4034352 (= res!1642768 (= (size!32302 lt!1435127) (+ (size!32302 prefix!494) (size!32302 suffix!1299))))))

(declare-fun b!4034353 () Bool)

(assert (=> b!4034353 (= e!2503339 (or (not (= suffix!1299 Nil!43217)) (= lt!1435127 prefix!494)))))

(declare-fun b!4034351 () Bool)

(declare-fun e!2503340 () List!43341)

(assert (=> b!4034351 (= e!2503340 (Cons!43217 (h!48637 prefix!494) (++!11318 (t!334404 prefix!494) suffix!1299)))))

(declare-fun d!1195003 () Bool)

(assert (=> d!1195003 e!2503339))

(declare-fun res!1642769 () Bool)

(assert (=> d!1195003 (=> (not res!1642769) (not e!2503339))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6566 (List!43341) (InoxSet C!23828))

(assert (=> d!1195003 (= res!1642769 (= (content!6566 lt!1435127) ((_ map or) (content!6566 prefix!494) (content!6566 suffix!1299))))))

(assert (=> d!1195003 (= lt!1435127 e!2503340)))

(declare-fun c!696734 () Bool)

(assert (=> d!1195003 (= c!696734 ((_ is Nil!43217) prefix!494))))

(assert (=> d!1195003 (= (++!11318 prefix!494 suffix!1299) lt!1435127)))

(declare-fun b!4034350 () Bool)

(assert (=> b!4034350 (= e!2503340 suffix!1299)))

(assert (= (and d!1195003 c!696734) b!4034350))

(assert (= (and d!1195003 (not c!696734)) b!4034351))

(assert (= (and d!1195003 res!1642769) b!4034352))

(assert (= (and b!4034352 res!1642768) b!4034353))

(declare-fun m!4627841 () Bool)

(assert (=> b!4034352 m!4627841))

(assert (=> b!4034352 m!4627509))

(assert (=> b!4034352 m!4627533))

(declare-fun m!4627843 () Bool)

(assert (=> b!4034351 m!4627843))

(declare-fun m!4627845 () Bool)

(assert (=> d!1195003 m!4627845))

(declare-fun m!4627847 () Bool)

(assert (=> d!1195003 m!4627847))

(declare-fun m!4627849 () Bool)

(assert (=> d!1195003 m!4627849))

(assert (=> b!4034136 d!1195003))

(declare-fun b!4034356 () Bool)

(declare-fun res!1642773 () Bool)

(declare-fun e!2503344 () Bool)

(assert (=> b!4034356 (=> (not res!1642773) (not e!2503344))))

(declare-fun lt!1435131 () Option!9330)

(assert (=> b!4034356 (= res!1642773 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131)))) (_2!24283 (get!14180 lt!1435131))) lt!1435033))))

(declare-fun d!1195019 () Bool)

(declare-fun e!2503343 () Bool)

(assert (=> d!1195019 e!2503343))

(declare-fun res!1642772 () Bool)

(assert (=> d!1195019 (=> res!1642772 e!2503343)))

(assert (=> d!1195019 (= res!1642772 (isEmpty!25792 lt!1435131))))

(declare-fun e!2503342 () Option!9330)

(assert (=> d!1195019 (= lt!1435131 e!2503342)))

(declare-fun c!696735 () Bool)

(assert (=> d!1195019 (= c!696735 (and ((_ is Cons!43219) rules!2999) ((_ is Nil!43219) (t!334406 rules!2999))))))

(declare-fun lt!1435130 () Unit!62397)

(declare-fun lt!1435129 () Unit!62397)

(assert (=> d!1195019 (= lt!1435130 lt!1435129)))

(assert (=> d!1195019 (isPrefix!4003 lt!1435033 lt!1435033)))

(assert (=> d!1195019 (= lt!1435129 (lemmaIsPrefixRefl!2570 lt!1435033 lt!1435033))))

(assert (=> d!1195019 (rulesValidInductive!2519 thiss!21717 rules!2999)))

(assert (=> d!1195019 (= (maxPrefix!3803 thiss!21717 rules!2999 lt!1435033) lt!1435131)))

(declare-fun b!4034357 () Bool)

(declare-fun res!1642778 () Bool)

(assert (=> b!4034357 (=> (not res!1642778) (not e!2503344))))

(assert (=> b!4034357 (= res!1642778 (< (size!32302 (_2!24283 (get!14180 lt!1435131))) (size!32302 lt!1435033)))))

(declare-fun b!4034358 () Bool)

(declare-fun res!1642775 () Bool)

(assert (=> b!4034358 (=> (not res!1642775) (not e!2503344))))

(assert (=> b!4034358 (= res!1642775 (= (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131)))) (originalCharacters!7516 (_1!24283 (get!14180 lt!1435131)))))))

(declare-fun b!4034359 () Bool)

(declare-fun res!1642777 () Bool)

(assert (=> b!4034359 (=> (not res!1642777) (not e!2503344))))

(assert (=> b!4034359 (= res!1642777 (= (value!217740 (_1!24283 (get!14180 lt!1435131))) (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435131)))))))))

(declare-fun b!4034360 () Bool)

(assert (=> b!4034360 (= e!2503343 e!2503344)))

(declare-fun res!1642774 () Bool)

(assert (=> b!4034360 (=> (not res!1642774) (not e!2503344))))

(assert (=> b!4034360 (= res!1642774 (isDefined!7098 lt!1435131))))

(declare-fun call!287013 () Option!9330)

(declare-fun bm!287008 () Bool)

(assert (=> bm!287008 (= call!287013 (maxPrefixOneRule!2815 thiss!21717 (h!48639 rules!2999) lt!1435033))))

(declare-fun b!4034361 () Bool)

(assert (=> b!4034361 (= e!2503342 call!287013)))

(declare-fun b!4034362 () Bool)

(assert (=> b!4034362 (= e!2503344 (contains!8580 rules!2999 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))))

(declare-fun b!4034363 () Bool)

(declare-fun lt!1435132 () Option!9330)

(declare-fun lt!1435128 () Option!9330)

(assert (=> b!4034363 (= e!2503342 (ite (and ((_ is None!9329) lt!1435132) ((_ is None!9329) lt!1435128)) None!9329 (ite ((_ is None!9329) lt!1435128) lt!1435132 (ite ((_ is None!9329) lt!1435132) lt!1435128 (ite (>= (size!32301 (_1!24283 (v!39723 lt!1435132))) (size!32301 (_1!24283 (v!39723 lt!1435128)))) lt!1435132 lt!1435128)))))))

(assert (=> b!4034363 (= lt!1435132 call!287013)))

(assert (=> b!4034363 (= lt!1435128 (maxPrefix!3803 thiss!21717 (t!334406 rules!2999) lt!1435033))))

(declare-fun b!4034364 () Bool)

(declare-fun res!1642776 () Bool)

(assert (=> b!4034364 (=> (not res!1642776) (not e!2503344))))

(assert (=> b!4034364 (= res!1642776 (matchR!5774 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))))))

(assert (= (and d!1195019 c!696735) b!4034361))

(assert (= (and d!1195019 (not c!696735)) b!4034363))

(assert (= (or b!4034361 b!4034363) bm!287008))

(assert (= (and d!1195019 (not res!1642772)) b!4034360))

(assert (= (and b!4034360 res!1642774) b!4034358))

(assert (= (and b!4034358 res!1642775) b!4034357))

(assert (= (and b!4034357 res!1642778) b!4034356))

(assert (= (and b!4034356 res!1642773) b!4034359))

(assert (= (and b!4034359 res!1642777) b!4034364))

(assert (= (and b!4034364 res!1642776) b!4034362))

(declare-fun m!4627857 () Bool)

(assert (=> b!4034356 m!4627857))

(declare-fun m!4627859 () Bool)

(assert (=> b!4034356 m!4627859))

(assert (=> b!4034356 m!4627859))

(declare-fun m!4627861 () Bool)

(assert (=> b!4034356 m!4627861))

(assert (=> b!4034356 m!4627861))

(declare-fun m!4627863 () Bool)

(assert (=> b!4034356 m!4627863))

(declare-fun m!4627865 () Bool)

(assert (=> bm!287008 m!4627865))

(assert (=> b!4034358 m!4627857))

(assert (=> b!4034358 m!4627859))

(assert (=> b!4034358 m!4627859))

(assert (=> b!4034358 m!4627861))

(assert (=> b!4034364 m!4627857))

(assert (=> b!4034364 m!4627859))

(assert (=> b!4034364 m!4627859))

(assert (=> b!4034364 m!4627861))

(assert (=> b!4034364 m!4627861))

(declare-fun m!4627869 () Bool)

(assert (=> b!4034364 m!4627869))

(declare-fun m!4627871 () Bool)

(assert (=> b!4034360 m!4627871))

(assert (=> b!4034359 m!4627857))

(declare-fun m!4627873 () Bool)

(assert (=> b!4034359 m!4627873))

(assert (=> b!4034359 m!4627873))

(declare-fun m!4627879 () Bool)

(assert (=> b!4034359 m!4627879))

(assert (=> b!4034362 m!4627857))

(declare-fun m!4627885 () Bool)

(assert (=> b!4034362 m!4627885))

(declare-fun m!4627887 () Bool)

(assert (=> b!4034363 m!4627887))

(assert (=> b!4034357 m!4627857))

(declare-fun m!4627889 () Bool)

(assert (=> b!4034357 m!4627889))

(declare-fun m!4627891 () Bool)

(assert (=> b!4034357 m!4627891))

(declare-fun m!4627893 () Bool)

(assert (=> d!1195019 m!4627893))

(declare-fun m!4627895 () Bool)

(assert (=> d!1195019 m!4627895))

(declare-fun m!4627897 () Bool)

(assert (=> d!1195019 m!4627897))

(assert (=> d!1195019 m!4627815))

(assert (=> b!4034146 d!1195019))

(declare-fun d!1195027 () Bool)

(assert (=> d!1195027 (= suffixResult!105 lt!1435011)))

(declare-fun lt!1435142 () Unit!62397)

(declare-fun choose!24429 (List!43341 List!43341 List!43341 List!43341 List!43341) Unit!62397)

(assert (=> d!1195027 (= lt!1435142 (choose!24429 lt!1435037 suffixResult!105 lt!1435037 lt!1435011 lt!1435003))))

(assert (=> d!1195027 (isPrefix!4003 lt!1435037 lt!1435003)))

(assert (=> d!1195027 (= (lemmaSamePrefixThenSameSuffix!2164 lt!1435037 suffixResult!105 lt!1435037 lt!1435011 lt!1435003) lt!1435142)))

(declare-fun bs!590420 () Bool)

(assert (= bs!590420 d!1195027))

(declare-fun m!4627905 () Bool)

(assert (=> bs!590420 m!4627905))

(assert (=> bs!590420 m!4627489))

(assert (=> b!4034146 d!1195027))

(declare-fun b!4034411 () Bool)

(declare-fun e!2503375 () Bool)

(declare-fun e!2503376 () Bool)

(assert (=> b!4034411 (= e!2503375 e!2503376)))

(declare-fun res!1642812 () Bool)

(assert (=> b!4034411 (=> (not res!1642812) (not e!2503376))))

(assert (=> b!4034411 (= res!1642812 (not ((_ is Nil!43217) lt!1435007)))))

(declare-fun b!4034412 () Bool)

(declare-fun res!1642815 () Bool)

(assert (=> b!4034412 (=> (not res!1642815) (not e!2503376))))

(declare-fun head!8547 (List!43341) C!23828)

(assert (=> b!4034412 (= res!1642815 (= (head!8547 lt!1435037) (head!8547 lt!1435007)))))

(declare-fun d!1195033 () Bool)

(declare-fun e!2503377 () Bool)

(assert (=> d!1195033 e!2503377))

(declare-fun res!1642814 () Bool)

(assert (=> d!1195033 (=> res!1642814 e!2503377)))

(declare-fun lt!1435147 () Bool)

(assert (=> d!1195033 (= res!1642814 (not lt!1435147))))

(assert (=> d!1195033 (= lt!1435147 e!2503375)))

(declare-fun res!1642813 () Bool)

(assert (=> d!1195033 (=> res!1642813 e!2503375)))

(assert (=> d!1195033 (= res!1642813 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195033 (= (isPrefix!4003 lt!1435037 lt!1435007) lt!1435147)))

(declare-fun b!4034413 () Bool)

(declare-fun tail!6279 (List!43341) List!43341)

(assert (=> b!4034413 (= e!2503376 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435007)))))

(declare-fun b!4034414 () Bool)

(assert (=> b!4034414 (= e!2503377 (>= (size!32302 lt!1435007) (size!32302 lt!1435037)))))

(assert (= (and d!1195033 (not res!1642813)) b!4034411))

(assert (= (and b!4034411 res!1642812) b!4034412))

(assert (= (and b!4034412 res!1642815) b!4034413))

(assert (= (and d!1195033 (not res!1642814)) b!4034414))

(declare-fun m!4627907 () Bool)

(assert (=> b!4034412 m!4627907))

(declare-fun m!4627909 () Bool)

(assert (=> b!4034412 m!4627909))

(declare-fun m!4627911 () Bool)

(assert (=> b!4034413 m!4627911))

(declare-fun m!4627913 () Bool)

(assert (=> b!4034413 m!4627913))

(assert (=> b!4034413 m!4627911))

(assert (=> b!4034413 m!4627913))

(declare-fun m!4627915 () Bool)

(assert (=> b!4034413 m!4627915))

(declare-fun m!4627917 () Bool)

(assert (=> b!4034414 m!4627917))

(assert (=> b!4034414 m!4627507))

(assert (=> b!4034146 d!1195033))

(declare-fun d!1195035 () Bool)

(assert (=> d!1195035 (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 lt!1435011))))

(declare-fun lt!1435152 () Unit!62397)

(declare-fun choose!24430 (List!43341 List!43341) Unit!62397)

(assert (=> d!1195035 (= lt!1435152 (choose!24430 lt!1435037 lt!1435011))))

(assert (=> d!1195035 (= (lemmaConcatTwoListThenFirstIsPrefix!2838 lt!1435037 lt!1435011) lt!1435152)))

(declare-fun bs!590421 () Bool)

(assert (= bs!590421 d!1195035))

(assert (=> bs!590421 m!4627537))

(assert (=> bs!590421 m!4627537))

(declare-fun m!4627937 () Bool)

(assert (=> bs!590421 m!4627937))

(declare-fun m!4627939 () Bool)

(assert (=> bs!590421 m!4627939))

(assert (=> b!4034146 d!1195035))

(declare-fun b!4034435 () Bool)

(declare-fun res!1642828 () Bool)

(declare-fun e!2503388 () Bool)

(assert (=> b!4034435 (=> (not res!1642828) (not e!2503388))))

(declare-fun lt!1435153 () List!43341)

(assert (=> b!4034435 (= res!1642828 (= (size!32302 lt!1435153) (+ (size!32302 lt!1435037) (size!32302 lt!1435030))))))

(declare-fun b!4034436 () Bool)

(assert (=> b!4034436 (= e!2503388 (or (not (= lt!1435030 Nil!43217)) (= lt!1435153 lt!1435037)))))

(declare-fun b!4034434 () Bool)

(declare-fun e!2503389 () List!43341)

(assert (=> b!4034434 (= e!2503389 (Cons!43217 (h!48637 lt!1435037) (++!11318 (t!334404 lt!1435037) lt!1435030)))))

(declare-fun d!1195041 () Bool)

(assert (=> d!1195041 e!2503388))

(declare-fun res!1642829 () Bool)

(assert (=> d!1195041 (=> (not res!1642829) (not e!2503388))))

(assert (=> d!1195041 (= res!1642829 (= (content!6566 lt!1435153) ((_ map or) (content!6566 lt!1435037) (content!6566 lt!1435030))))))

(assert (=> d!1195041 (= lt!1435153 e!2503389)))

(declare-fun c!696745 () Bool)

(assert (=> d!1195041 (= c!696745 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195041 (= (++!11318 lt!1435037 lt!1435030) lt!1435153)))

(declare-fun b!4034433 () Bool)

(assert (=> b!4034433 (= e!2503389 lt!1435030)))

(assert (= (and d!1195041 c!696745) b!4034433))

(assert (= (and d!1195041 (not c!696745)) b!4034434))

(assert (= (and d!1195041 res!1642829) b!4034435))

(assert (= (and b!4034435 res!1642828) b!4034436))

(declare-fun m!4627941 () Bool)

(assert (=> b!4034435 m!4627941))

(assert (=> b!4034435 m!4627507))

(declare-fun m!4627943 () Bool)

(assert (=> b!4034435 m!4627943))

(declare-fun m!4627945 () Bool)

(assert (=> b!4034434 m!4627945))

(declare-fun m!4627947 () Bool)

(assert (=> d!1195041 m!4627947))

(declare-fun m!4627949 () Bool)

(assert (=> d!1195041 m!4627949))

(declare-fun m!4627951 () Bool)

(assert (=> d!1195041 m!4627951))

(assert (=> b!4034135 d!1195041))

(declare-fun b!4034439 () Bool)

(declare-fun res!1642830 () Bool)

(declare-fun e!2503390 () Bool)

(assert (=> b!4034439 (=> (not res!1642830) (not e!2503390))))

(declare-fun lt!1435154 () List!43341)

(assert (=> b!4034439 (= res!1642830 (= (size!32302 lt!1435154) (+ (size!32302 lt!1435008) (size!32302 suffix!1299))))))

(declare-fun b!4034440 () Bool)

(assert (=> b!4034440 (= e!2503390 (or (not (= suffix!1299 Nil!43217)) (= lt!1435154 lt!1435008)))))

(declare-fun b!4034438 () Bool)

(declare-fun e!2503391 () List!43341)

(assert (=> b!4034438 (= e!2503391 (Cons!43217 (h!48637 lt!1435008) (++!11318 (t!334404 lt!1435008) suffix!1299)))))

(declare-fun d!1195043 () Bool)

(assert (=> d!1195043 e!2503390))

(declare-fun res!1642831 () Bool)

(assert (=> d!1195043 (=> (not res!1642831) (not e!2503390))))

(assert (=> d!1195043 (= res!1642831 (= (content!6566 lt!1435154) ((_ map or) (content!6566 lt!1435008) (content!6566 suffix!1299))))))

(assert (=> d!1195043 (= lt!1435154 e!2503391)))

(declare-fun c!696746 () Bool)

(assert (=> d!1195043 (= c!696746 ((_ is Nil!43217) lt!1435008))))

(assert (=> d!1195043 (= (++!11318 lt!1435008 suffix!1299) lt!1435154)))

(declare-fun b!4034437 () Bool)

(assert (=> b!4034437 (= e!2503391 suffix!1299)))

(assert (= (and d!1195043 c!696746) b!4034437))

(assert (= (and d!1195043 (not c!696746)) b!4034438))

(assert (= (and d!1195043 res!1642831) b!4034439))

(assert (= (and b!4034439 res!1642830) b!4034440))

(declare-fun m!4627953 () Bool)

(assert (=> b!4034439 m!4627953))

(declare-fun m!4627955 () Bool)

(assert (=> b!4034439 m!4627955))

(assert (=> b!4034439 m!4627533))

(declare-fun m!4627957 () Bool)

(assert (=> b!4034438 m!4627957))

(declare-fun m!4627959 () Bool)

(assert (=> d!1195043 m!4627959))

(declare-fun m!4627961 () Bool)

(assert (=> d!1195043 m!4627961))

(assert (=> d!1195043 m!4627849))

(assert (=> b!4034135 d!1195043))

(declare-fun b!4034443 () Bool)

(declare-fun res!1642832 () Bool)

(declare-fun e!2503392 () Bool)

(assert (=> b!4034443 (=> (not res!1642832) (not e!2503392))))

(declare-fun lt!1435157 () List!43341)

(assert (=> b!4034443 (= res!1642832 (= (size!32302 lt!1435157) (+ (size!32302 lt!1435038) (size!32302 suffix!1299))))))

(declare-fun b!4034444 () Bool)

(assert (=> b!4034444 (= e!2503392 (or (not (= suffix!1299 Nil!43217)) (= lt!1435157 lt!1435038)))))

(declare-fun b!4034442 () Bool)

(declare-fun e!2503393 () List!43341)

(assert (=> b!4034442 (= e!2503393 (Cons!43217 (h!48637 lt!1435038) (++!11318 (t!334404 lt!1435038) suffix!1299)))))

(declare-fun d!1195045 () Bool)

(assert (=> d!1195045 e!2503392))

(declare-fun res!1642833 () Bool)

(assert (=> d!1195045 (=> (not res!1642833) (not e!2503392))))

(assert (=> d!1195045 (= res!1642833 (= (content!6566 lt!1435157) ((_ map or) (content!6566 lt!1435038) (content!6566 suffix!1299))))))

(assert (=> d!1195045 (= lt!1435157 e!2503393)))

(declare-fun c!696747 () Bool)

(assert (=> d!1195045 (= c!696747 ((_ is Nil!43217) lt!1435038))))

(assert (=> d!1195045 (= (++!11318 lt!1435038 suffix!1299) lt!1435157)))

(declare-fun b!4034441 () Bool)

(assert (=> b!4034441 (= e!2503393 suffix!1299)))

(assert (= (and d!1195045 c!696747) b!4034441))

(assert (= (and d!1195045 (not c!696747)) b!4034442))

(assert (= (and d!1195045 res!1642833) b!4034443))

(assert (= (and b!4034443 res!1642832) b!4034444))

(declare-fun m!4627967 () Bool)

(assert (=> b!4034443 m!4627967))

(declare-fun m!4627969 () Bool)

(assert (=> b!4034443 m!4627969))

(assert (=> b!4034443 m!4627533))

(declare-fun m!4627971 () Bool)

(assert (=> b!4034442 m!4627971))

(declare-fun m!4627975 () Bool)

(assert (=> d!1195045 m!4627975))

(declare-fun m!4627979 () Bool)

(assert (=> d!1195045 m!4627979))

(assert (=> d!1195045 m!4627849))

(assert (=> b!4034135 d!1195045))

(declare-fun d!1195051 () Bool)

(assert (=> d!1195051 (= (++!11318 (++!11318 lt!1435037 lt!1435038) suffix!1299) (++!11318 lt!1435037 (++!11318 lt!1435038 suffix!1299)))))

(declare-fun lt!1435171 () Unit!62397)

(declare-fun choose!24432 (List!43341 List!43341 List!43341) Unit!62397)

(assert (=> d!1195051 (= lt!1435171 (choose!24432 lt!1435037 lt!1435038 suffix!1299))))

(assert (=> d!1195051 (= (lemmaConcatAssociativity!2620 lt!1435037 lt!1435038 suffix!1299) lt!1435171)))

(declare-fun bs!590424 () Bool)

(assert (= bs!590424 d!1195051))

(assert (=> bs!590424 m!4627447))

(declare-fun m!4628003 () Bool)

(assert (=> bs!590424 m!4628003))

(assert (=> bs!590424 m!4627519))

(assert (=> bs!590424 m!4627519))

(declare-fun m!4628011 () Bool)

(assert (=> bs!590424 m!4628011))

(assert (=> bs!590424 m!4627447))

(declare-fun m!4628015 () Bool)

(assert (=> bs!590424 m!4628015))

(assert (=> b!4034135 d!1195051))

(declare-fun d!1195063 () Bool)

(declare-fun lt!1435181 () Int)

(assert (=> d!1195063 (>= lt!1435181 0)))

(declare-fun e!2503418 () Int)

(assert (=> d!1195063 (= lt!1435181 e!2503418)))

(declare-fun c!696756 () Bool)

(assert (=> d!1195063 (= c!696756 ((_ is Nil!43217) suffix!1299))))

(assert (=> d!1195063 (= (size!32302 suffix!1299) lt!1435181)))

(declare-fun b!4034488 () Bool)

(assert (=> b!4034488 (= e!2503418 0)))

(declare-fun b!4034489 () Bool)

(assert (=> b!4034489 (= e!2503418 (+ 1 (size!32302 (t!334404 suffix!1299))))))

(assert (= (and d!1195063 c!696756) b!4034488))

(assert (= (and d!1195063 (not c!696756)) b!4034489))

(declare-fun m!4628065 () Bool)

(assert (=> b!4034489 m!4628065))

(assert (=> b!4034145 d!1195063))

(declare-fun d!1195081 () Bool)

(declare-fun lt!1435183 () Int)

(assert (=> d!1195081 (>= lt!1435183 0)))

(declare-fun e!2503420 () Int)

(assert (=> d!1195081 (= lt!1435183 e!2503420)))

(declare-fun c!696758 () Bool)

(assert (=> d!1195081 (= c!696758 ((_ is Nil!43217) newSuffix!27))))

(assert (=> d!1195081 (= (size!32302 newSuffix!27) lt!1435183)))

(declare-fun b!4034492 () Bool)

(assert (=> b!4034492 (= e!2503420 0)))

(declare-fun b!4034493 () Bool)

(assert (=> b!4034493 (= e!2503420 (+ 1 (size!32302 (t!334404 newSuffix!27))))))

(assert (= (and d!1195081 c!696758) b!4034492))

(assert (= (and d!1195081 (not c!696758)) b!4034493))

(declare-fun m!4628071 () Bool)

(assert (=> b!4034493 m!4628071))

(assert (=> b!4034145 d!1195081))

(declare-fun d!1195085 () Bool)

(assert (=> d!1195085 (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 lt!1435030))))

(declare-fun lt!1435185 () Unit!62397)

(assert (=> d!1195085 (= lt!1435185 (choose!24430 lt!1435037 lt!1435030))))

(assert (=> d!1195085 (= (lemmaConcatTwoListThenFirstIsPrefix!2838 lt!1435037 lt!1435030) lt!1435185)))

(declare-fun bs!590427 () Bool)

(assert (= bs!590427 d!1195085))

(assert (=> bs!590427 m!4627443))

(assert (=> bs!590427 m!4627443))

(declare-fun m!4628075 () Bool)

(assert (=> bs!590427 m!4628075))

(declare-fun m!4628077 () Bool)

(assert (=> bs!590427 m!4628077))

(assert (=> b!4034134 d!1195085))

(declare-fun d!1195089 () Bool)

(assert (=> d!1195089 (= lt!1435030 suffixResult!105)))

(declare-fun lt!1435186 () Unit!62397)

(assert (=> d!1195089 (= lt!1435186 (choose!24429 lt!1435037 lt!1435030 lt!1435037 suffixResult!105 lt!1435003))))

(assert (=> d!1195089 (isPrefix!4003 lt!1435037 lt!1435003)))

(assert (=> d!1195089 (= (lemmaSamePrefixThenSameSuffix!2164 lt!1435037 lt!1435030 lt!1435037 suffixResult!105 lt!1435003) lt!1435186)))

(declare-fun bs!590428 () Bool)

(assert (= bs!590428 d!1195089))

(declare-fun m!4628079 () Bool)

(assert (=> bs!590428 m!4628079))

(assert (=> bs!590428 m!4627489))

(assert (=> b!4034134 d!1195089))

(declare-fun d!1195091 () Bool)

(declare-fun dynLambda!18317 (Int BalanceConc!25848) TokenValue!7146)

(assert (=> d!1195091 (= (apply!10105 (transformation!6916 (rule!9982 token!484)) (seqFromList!5133 lt!1435037)) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037)))))

(declare-fun b_lambda!117695 () Bool)

(assert (=> (not b_lambda!117695) (not d!1195091)))

(declare-fun t!334420 () Bool)

(declare-fun tb!242317 () Bool)

(assert (=> (and b!4034157 (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) t!334420) tb!242317))

(declare-fun result!293746 () Bool)

(assert (=> tb!242317 (= result!293746 (inv!21 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037))))))

(declare-fun m!4628083 () Bool)

(assert (=> tb!242317 m!4628083))

(assert (=> d!1195091 t!334420))

(declare-fun b_and!310027 () Bool)

(assert (= b_and!310003 (and (=> t!334420 result!293746) b_and!310027)))

(declare-fun t!334422 () Bool)

(declare-fun tb!242319 () Bool)

(assert (=> (and b!4034142 (= (toValue!9444 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) t!334422) tb!242319))

(declare-fun result!293750 () Bool)

(assert (= result!293750 result!293746))

(assert (=> d!1195091 t!334422))

(declare-fun b_and!310029 () Bool)

(assert (= b_and!310007 (and (=> t!334422 result!293750) b_and!310029)))

(assert (=> d!1195091 m!4627475))

(declare-fun m!4628085 () Bool)

(assert (=> d!1195091 m!4628085))

(assert (=> b!4034134 d!1195091))

(declare-fun d!1195095 () Bool)

(assert (=> d!1195095 (= (maxPrefixOneRule!2815 thiss!21717 (rule!9982 token!484) lt!1435003) (Some!9329 (tuple2!42299 (Token!12971 (apply!10105 (transformation!6916 (rule!9982 token!484)) (seqFromList!5133 lt!1435037)) (rule!9982 token!484) (size!32302 lt!1435037) lt!1435037) suffixResult!105)))))

(declare-fun lt!1435195 () Unit!62397)

(declare-fun choose!24433 (LexerInterface!6505 List!43343 List!43341 List!43341 List!43341 Rule!13632) Unit!62397)

(assert (=> d!1195095 (= lt!1435195 (choose!24433 thiss!21717 rules!2999 lt!1435037 lt!1435003 suffixResult!105 (rule!9982 token!484)))))

(assert (=> d!1195095 (not (isEmpty!25789 rules!2999))))

(assert (=> d!1195095 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1621 thiss!21717 rules!2999 lt!1435037 lt!1435003 suffixResult!105 (rule!9982 token!484)) lt!1435195)))

(declare-fun bs!590431 () Bool)

(assert (= bs!590431 d!1195095))

(assert (=> bs!590431 m!4627475))

(assert (=> bs!590431 m!4627475))

(assert (=> bs!590431 m!4627477))

(declare-fun m!4628123 () Bool)

(assert (=> bs!590431 m!4628123))

(assert (=> bs!590431 m!4627515))

(assert (=> bs!590431 m!4627481))

(assert (=> bs!590431 m!4627507))

(assert (=> b!4034134 d!1195095))

(declare-fun b!4034571 () Bool)

(declare-fun res!1642890 () Bool)

(declare-fun e!2503471 () Bool)

(assert (=> b!4034571 (=> (not res!1642890) (not e!2503471))))

(declare-fun lt!1435210 () Option!9330)

(assert (=> b!4034571 (= res!1642890 (< (size!32302 (_2!24283 (get!14180 lt!1435210))) (size!32302 lt!1435003)))))

(declare-fun b!4034572 () Bool)

(assert (=> b!4034572 (= e!2503471 (= (size!32301 (_1!24283 (get!14180 lt!1435210))) (size!32302 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210))))))))

(declare-fun b!4034573 () Bool)

(declare-fun e!2503469 () Option!9330)

(declare-datatypes ((tuple2!42302 0))(
  ( (tuple2!42303 (_1!24285 List!43341) (_2!24285 List!43341)) )
))
(declare-fun lt!1435209 () tuple2!42302)

(declare-fun size!32304 (BalanceConc!25848) Int)

(assert (=> b!4034573 (= e!2503469 (Some!9329 (tuple2!42299 (Token!12971 (apply!10105 (transformation!6916 (rule!9982 token!484)) (seqFromList!5133 (_1!24285 lt!1435209))) (rule!9982 token!484) (size!32304 (seqFromList!5133 (_1!24285 lt!1435209))) (_1!24285 lt!1435209)) (_2!24285 lt!1435209))))))

(declare-fun lt!1435206 () Unit!62397)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1354 (Regex!11821 List!43341) Unit!62397)

(assert (=> b!4034573 (= lt!1435206 (longestMatchIsAcceptedByMatchOrIsEmpty!1354 (regex!6916 (rule!9982 token!484)) lt!1435003))))

(declare-fun res!1642895 () Bool)

(declare-fun isEmpty!25793 (List!43341) Bool)

(declare-fun findLongestMatchInner!1381 (Regex!11821 List!43341 Int List!43341 List!43341 Int) tuple2!42302)

(assert (=> b!4034573 (= res!1642895 (isEmpty!25793 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(declare-fun e!2503470 () Bool)

(assert (=> b!4034573 (=> res!1642895 e!2503470)))

(assert (=> b!4034573 e!2503470))

(declare-fun lt!1435207 () Unit!62397)

(assert (=> b!4034573 (= lt!1435207 lt!1435206)))

(declare-fun lt!1435208 () Unit!62397)

(declare-fun lemmaSemiInverse!1901 (TokenValueInjection!13720 BalanceConc!25848) Unit!62397)

(assert (=> b!4034573 (= lt!1435208 (lemmaSemiInverse!1901 (transformation!6916 (rule!9982 token!484)) (seqFromList!5133 (_1!24285 lt!1435209))))))

(declare-fun b!4034574 () Bool)

(assert (=> b!4034574 (= e!2503470 (matchR!5774 (regex!6916 (rule!9982 token!484)) (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(declare-fun b!4034575 () Bool)

(declare-fun res!1642893 () Bool)

(assert (=> b!4034575 (=> (not res!1642893) (not e!2503471))))

(assert (=> b!4034575 (= res!1642893 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210)))) (_2!24283 (get!14180 lt!1435210))) lt!1435003))))

(declare-fun b!4034576 () Bool)

(assert (=> b!4034576 (= e!2503469 None!9329)))

(declare-fun b!4034577 () Bool)

(declare-fun res!1642894 () Bool)

(assert (=> b!4034577 (=> (not res!1642894) (not e!2503471))))

(assert (=> b!4034577 (= res!1642894 (= (rule!9982 (_1!24283 (get!14180 lt!1435210))) (rule!9982 token!484)))))

(declare-fun d!1195107 () Bool)

(declare-fun e!2503468 () Bool)

(assert (=> d!1195107 e!2503468))

(declare-fun res!1642892 () Bool)

(assert (=> d!1195107 (=> res!1642892 e!2503468)))

(assert (=> d!1195107 (= res!1642892 (isEmpty!25792 lt!1435210))))

(assert (=> d!1195107 (= lt!1435210 e!2503469)))

(declare-fun c!696763 () Bool)

(assert (=> d!1195107 (= c!696763 (isEmpty!25793 (_1!24285 lt!1435209)))))

(declare-fun findLongestMatch!1294 (Regex!11821 List!43341) tuple2!42302)

(assert (=> d!1195107 (= lt!1435209 (findLongestMatch!1294 (regex!6916 (rule!9982 token!484)) lt!1435003))))

(assert (=> d!1195107 (ruleValid!2846 thiss!21717 (rule!9982 token!484))))

(assert (=> d!1195107 (= (maxPrefixOneRule!2815 thiss!21717 (rule!9982 token!484) lt!1435003) lt!1435210)))

(declare-fun b!4034578 () Bool)

(assert (=> b!4034578 (= e!2503468 e!2503471)))

(declare-fun res!1642891 () Bool)

(assert (=> b!4034578 (=> (not res!1642891) (not e!2503471))))

(assert (=> b!4034578 (= res!1642891 (matchR!5774 (regex!6916 (rule!9982 token!484)) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))))))

(declare-fun b!4034579 () Bool)

(declare-fun res!1642889 () Bool)

(assert (=> b!4034579 (=> (not res!1642889) (not e!2503471))))

(assert (=> b!4034579 (= res!1642889 (= (value!217740 (_1!24283 (get!14180 lt!1435210))) (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210)))))))))

(assert (= (and d!1195107 c!696763) b!4034576))

(assert (= (and d!1195107 (not c!696763)) b!4034573))

(assert (= (and b!4034573 (not res!1642895)) b!4034574))

(assert (= (and d!1195107 (not res!1642892)) b!4034578))

(assert (= (and b!4034578 res!1642891) b!4034575))

(assert (= (and b!4034575 res!1642893) b!4034571))

(assert (= (and b!4034571 res!1642890) b!4034577))

(assert (= (and b!4034577 res!1642894) b!4034579))

(assert (= (and b!4034579 res!1642889) b!4034572))

(declare-fun m!4628125 () Bool)

(assert (=> b!4034574 m!4628125))

(assert (=> b!4034574 m!4627803))

(assert (=> b!4034574 m!4628125))

(assert (=> b!4034574 m!4627803))

(declare-fun m!4628127 () Bool)

(assert (=> b!4034574 m!4628127))

(declare-fun m!4628129 () Bool)

(assert (=> b!4034574 m!4628129))

(declare-fun m!4628131 () Bool)

(assert (=> b!4034575 m!4628131))

(declare-fun m!4628133 () Bool)

(assert (=> b!4034575 m!4628133))

(assert (=> b!4034575 m!4628133))

(declare-fun m!4628135 () Bool)

(assert (=> b!4034575 m!4628135))

(assert (=> b!4034575 m!4628135))

(declare-fun m!4628137 () Bool)

(assert (=> b!4034575 m!4628137))

(assert (=> b!4034578 m!4628131))

(assert (=> b!4034578 m!4628133))

(assert (=> b!4034578 m!4628133))

(assert (=> b!4034578 m!4628135))

(assert (=> b!4034578 m!4628135))

(declare-fun m!4628139 () Bool)

(assert (=> b!4034578 m!4628139))

(assert (=> b!4034579 m!4628131))

(declare-fun m!4628141 () Bool)

(assert (=> b!4034579 m!4628141))

(assert (=> b!4034579 m!4628141))

(declare-fun m!4628143 () Bool)

(assert (=> b!4034579 m!4628143))

(assert (=> b!4034572 m!4628131))

(declare-fun m!4628145 () Bool)

(assert (=> b!4034572 m!4628145))

(declare-fun m!4628147 () Bool)

(assert (=> d!1195107 m!4628147))

(declare-fun m!4628149 () Bool)

(assert (=> d!1195107 m!4628149))

(declare-fun m!4628151 () Bool)

(assert (=> d!1195107 m!4628151))

(assert (=> d!1195107 m!4627559))

(declare-fun m!4628153 () Bool)

(assert (=> b!4034573 m!4628153))

(declare-fun m!4628155 () Bool)

(assert (=> b!4034573 m!4628155))

(declare-fun m!4628157 () Bool)

(assert (=> b!4034573 m!4628157))

(assert (=> b!4034573 m!4628153))

(assert (=> b!4034573 m!4628153))

(declare-fun m!4628159 () Bool)

(assert (=> b!4034573 m!4628159))

(declare-fun m!4628161 () Bool)

(assert (=> b!4034573 m!4628161))

(assert (=> b!4034573 m!4628125))

(assert (=> b!4034573 m!4627803))

(assert (=> b!4034573 m!4628127))

(assert (=> b!4034573 m!4628125))

(assert (=> b!4034573 m!4628153))

(declare-fun m!4628163 () Bool)

(assert (=> b!4034573 m!4628163))

(assert (=> b!4034573 m!4627803))

(assert (=> b!4034571 m!4628131))

(declare-fun m!4628165 () Bool)

(assert (=> b!4034571 m!4628165))

(assert (=> b!4034571 m!4627803))

(assert (=> b!4034577 m!4628131))

(assert (=> b!4034134 d!1195107))

(declare-fun b!4034580 () Bool)

(declare-fun e!2503472 () Bool)

(declare-fun e!2503473 () Bool)

(assert (=> b!4034580 (= e!2503472 e!2503473)))

(declare-fun res!1642896 () Bool)

(assert (=> b!4034580 (=> (not res!1642896) (not e!2503473))))

(assert (=> b!4034580 (= res!1642896 (not ((_ is Nil!43217) lt!1435002)))))

(declare-fun b!4034581 () Bool)

(declare-fun res!1642899 () Bool)

(assert (=> b!4034581 (=> (not res!1642899) (not e!2503473))))

(assert (=> b!4034581 (= res!1642899 (= (head!8547 lt!1435037) (head!8547 lt!1435002)))))

(declare-fun d!1195109 () Bool)

(declare-fun e!2503474 () Bool)

(assert (=> d!1195109 e!2503474))

(declare-fun res!1642898 () Bool)

(assert (=> d!1195109 (=> res!1642898 e!2503474)))

(declare-fun lt!1435211 () Bool)

(assert (=> d!1195109 (= res!1642898 (not lt!1435211))))

(assert (=> d!1195109 (= lt!1435211 e!2503472)))

(declare-fun res!1642897 () Bool)

(assert (=> d!1195109 (=> res!1642897 e!2503472)))

(assert (=> d!1195109 (= res!1642897 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195109 (= (isPrefix!4003 lt!1435037 lt!1435002) lt!1435211)))

(declare-fun b!4034582 () Bool)

(assert (=> b!4034582 (= e!2503473 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435002)))))

(declare-fun b!4034583 () Bool)

(assert (=> b!4034583 (= e!2503474 (>= (size!32302 lt!1435002) (size!32302 lt!1435037)))))

(assert (= (and d!1195109 (not res!1642897)) b!4034580))

(assert (= (and b!4034580 res!1642896) b!4034581))

(assert (= (and b!4034581 res!1642899) b!4034582))

(assert (= (and d!1195109 (not res!1642898)) b!4034583))

(assert (=> b!4034581 m!4627907))

(declare-fun m!4628167 () Bool)

(assert (=> b!4034581 m!4628167))

(assert (=> b!4034582 m!4627911))

(declare-fun m!4628169 () Bool)

(assert (=> b!4034582 m!4628169))

(assert (=> b!4034582 m!4627911))

(assert (=> b!4034582 m!4628169))

(declare-fun m!4628171 () Bool)

(assert (=> b!4034582 m!4628171))

(declare-fun m!4628173 () Bool)

(assert (=> b!4034583 m!4628173))

(assert (=> b!4034583 m!4627507))

(assert (=> b!4034134 d!1195109))

(declare-fun d!1195111 () Bool)

(declare-fun fromListB!2338 (List!43341) BalanceConc!25848)

(assert (=> d!1195111 (= (seqFromList!5133 lt!1435037) (fromListB!2338 lt!1435037))))

(declare-fun bs!590432 () Bool)

(assert (= bs!590432 d!1195111))

(declare-fun m!4628175 () Bool)

(assert (=> bs!590432 m!4628175))

(assert (=> b!4034134 d!1195111))

(declare-fun b!4034584 () Bool)

(declare-fun e!2503475 () Bool)

(declare-fun e!2503476 () Bool)

(assert (=> b!4034584 (= e!2503475 e!2503476)))

(declare-fun res!1642900 () Bool)

(assert (=> b!4034584 (=> (not res!1642900) (not e!2503476))))

(assert (=> b!4034584 (= res!1642900 (not ((_ is Nil!43217) lt!1435003)))))

(declare-fun b!4034585 () Bool)

(declare-fun res!1642903 () Bool)

(assert (=> b!4034585 (=> (not res!1642903) (not e!2503476))))

(assert (=> b!4034585 (= res!1642903 (= (head!8547 lt!1435037) (head!8547 lt!1435003)))))

(declare-fun d!1195113 () Bool)

(declare-fun e!2503477 () Bool)

(assert (=> d!1195113 e!2503477))

(declare-fun res!1642902 () Bool)

(assert (=> d!1195113 (=> res!1642902 e!2503477)))

(declare-fun lt!1435212 () Bool)

(assert (=> d!1195113 (= res!1642902 (not lt!1435212))))

(assert (=> d!1195113 (= lt!1435212 e!2503475)))

(declare-fun res!1642901 () Bool)

(assert (=> d!1195113 (=> res!1642901 e!2503475)))

(assert (=> d!1195113 (= res!1642901 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195113 (= (isPrefix!4003 lt!1435037 lt!1435003) lt!1435212)))

(declare-fun b!4034586 () Bool)

(assert (=> b!4034586 (= e!2503476 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435003)))))

(declare-fun b!4034587 () Bool)

(assert (=> b!4034587 (= e!2503477 (>= (size!32302 lt!1435003) (size!32302 lt!1435037)))))

(assert (= (and d!1195113 (not res!1642901)) b!4034584))

(assert (= (and b!4034584 res!1642900) b!4034585))

(assert (= (and b!4034585 res!1642903) b!4034586))

(assert (= (and d!1195113 (not res!1642902)) b!4034587))

(assert (=> b!4034585 m!4627907))

(declare-fun m!4628177 () Bool)

(assert (=> b!4034585 m!4628177))

(assert (=> b!4034586 m!4627911))

(declare-fun m!4628179 () Bool)

(assert (=> b!4034586 m!4628179))

(assert (=> b!4034586 m!4627911))

(assert (=> b!4034586 m!4628179))

(declare-fun m!4628181 () Bool)

(assert (=> b!4034586 m!4628181))

(assert (=> b!4034587 m!4627803))

(assert (=> b!4034587 m!4627507))

(assert (=> b!4034139 d!1195113))

(declare-fun d!1195115 () Bool)

(assert (=> d!1195115 (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 suffixResult!105))))

(declare-fun lt!1435213 () Unit!62397)

(assert (=> d!1195115 (= lt!1435213 (choose!24430 lt!1435037 suffixResult!105))))

(assert (=> d!1195115 (= (lemmaConcatTwoListThenFirstIsPrefix!2838 lt!1435037 suffixResult!105) lt!1435213)))

(declare-fun bs!590433 () Bool)

(assert (= bs!590433 d!1195115))

(assert (=> bs!590433 m!4627555))

(assert (=> bs!590433 m!4627555))

(declare-fun m!4628183 () Bool)

(assert (=> bs!590433 m!4628183))

(declare-fun m!4628185 () Bool)

(assert (=> bs!590433 m!4628185))

(assert (=> b!4034139 d!1195115))

(declare-fun b!4034588 () Bool)

(declare-fun e!2503478 () Bool)

(declare-fun e!2503479 () Bool)

(assert (=> b!4034588 (= e!2503478 e!2503479)))

(declare-fun res!1642904 () Bool)

(assert (=> b!4034588 (=> (not res!1642904) (not e!2503479))))

(assert (=> b!4034588 (= res!1642904 (not ((_ is Nil!43217) lt!1435003)))))

(declare-fun b!4034589 () Bool)

(declare-fun res!1642907 () Bool)

(assert (=> b!4034589 (=> (not res!1642907) (not e!2503479))))

(assert (=> b!4034589 (= res!1642907 (= (head!8547 prefix!494) (head!8547 lt!1435003)))))

(declare-fun d!1195117 () Bool)

(declare-fun e!2503480 () Bool)

(assert (=> d!1195117 e!2503480))

(declare-fun res!1642906 () Bool)

(assert (=> d!1195117 (=> res!1642906 e!2503480)))

(declare-fun lt!1435214 () Bool)

(assert (=> d!1195117 (= res!1642906 (not lt!1435214))))

(assert (=> d!1195117 (= lt!1435214 e!2503478)))

(declare-fun res!1642905 () Bool)

(assert (=> d!1195117 (=> res!1642905 e!2503478)))

(assert (=> d!1195117 (= res!1642905 ((_ is Nil!43217) prefix!494))))

(assert (=> d!1195117 (= (isPrefix!4003 prefix!494 lt!1435003) lt!1435214)))

(declare-fun b!4034590 () Bool)

(assert (=> b!4034590 (= e!2503479 (isPrefix!4003 (tail!6279 prefix!494) (tail!6279 lt!1435003)))))

(declare-fun b!4034591 () Bool)

(assert (=> b!4034591 (= e!2503480 (>= (size!32302 lt!1435003) (size!32302 prefix!494)))))

(assert (= (and d!1195117 (not res!1642905)) b!4034588))

(assert (= (and b!4034588 res!1642904) b!4034589))

(assert (= (and b!4034589 res!1642907) b!4034590))

(assert (= (and d!1195117 (not res!1642906)) b!4034591))

(declare-fun m!4628187 () Bool)

(assert (=> b!4034589 m!4628187))

(assert (=> b!4034589 m!4628177))

(declare-fun m!4628189 () Bool)

(assert (=> b!4034590 m!4628189))

(assert (=> b!4034590 m!4628179))

(assert (=> b!4034590 m!4628189))

(assert (=> b!4034590 m!4628179))

(declare-fun m!4628191 () Bool)

(assert (=> b!4034590 m!4628191))

(assert (=> b!4034591 m!4627803))

(assert (=> b!4034591 m!4627509))

(assert (=> b!4034139 d!1195117))

(declare-fun b!4034592 () Bool)

(declare-fun e!2503481 () Bool)

(declare-fun e!2503482 () Bool)

(assert (=> b!4034592 (= e!2503481 e!2503482)))

(declare-fun res!1642908 () Bool)

(assert (=> b!4034592 (=> (not res!1642908) (not e!2503482))))

(assert (=> b!4034592 (= res!1642908 (not ((_ is Nil!43217) lt!1435001)))))

(declare-fun b!4034593 () Bool)

(declare-fun res!1642911 () Bool)

(assert (=> b!4034593 (=> (not res!1642911) (not e!2503482))))

(assert (=> b!4034593 (= res!1642911 (= (head!8547 lt!1435037) (head!8547 lt!1435001)))))

(declare-fun d!1195119 () Bool)

(declare-fun e!2503483 () Bool)

(assert (=> d!1195119 e!2503483))

(declare-fun res!1642910 () Bool)

(assert (=> d!1195119 (=> res!1642910 e!2503483)))

(declare-fun lt!1435215 () Bool)

(assert (=> d!1195119 (= res!1642910 (not lt!1435215))))

(assert (=> d!1195119 (= lt!1435215 e!2503481)))

(declare-fun res!1642909 () Bool)

(assert (=> d!1195119 (=> res!1642909 e!2503481)))

(assert (=> d!1195119 (= res!1642909 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195119 (= (isPrefix!4003 lt!1435037 lt!1435001) lt!1435215)))

(declare-fun b!4034594 () Bool)

(assert (=> b!4034594 (= e!2503482 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435001)))))

(declare-fun b!4034595 () Bool)

(assert (=> b!4034595 (= e!2503483 (>= (size!32302 lt!1435001) (size!32302 lt!1435037)))))

(assert (= (and d!1195119 (not res!1642909)) b!4034592))

(assert (= (and b!4034592 res!1642908) b!4034593))

(assert (= (and b!4034593 res!1642911) b!4034594))

(assert (= (and d!1195119 (not res!1642910)) b!4034595))

(assert (=> b!4034593 m!4627907))

(declare-fun m!4628193 () Bool)

(assert (=> b!4034593 m!4628193))

(assert (=> b!4034594 m!4627911))

(declare-fun m!4628195 () Bool)

(assert (=> b!4034594 m!4628195))

(assert (=> b!4034594 m!4627911))

(assert (=> b!4034594 m!4628195))

(declare-fun m!4628197 () Bool)

(assert (=> b!4034594 m!4628197))

(declare-fun m!4628199 () Bool)

(assert (=> b!4034595 m!4628199))

(assert (=> b!4034595 m!4627507))

(assert (=> b!4034139 d!1195119))

(declare-fun d!1195121 () Bool)

(assert (=> d!1195121 (isPrefix!4003 prefix!494 (++!11318 prefix!494 suffix!1299))))

(declare-fun lt!1435216 () Unit!62397)

(assert (=> d!1195121 (= lt!1435216 (choose!24430 prefix!494 suffix!1299))))

(assert (=> d!1195121 (= (lemmaConcatTwoListThenFirstIsPrefix!2838 prefix!494 suffix!1299) lt!1435216)))

(declare-fun bs!590434 () Bool)

(assert (= bs!590434 d!1195121))

(assert (=> bs!590434 m!4627469))

(assert (=> bs!590434 m!4627469))

(declare-fun m!4628201 () Bool)

(assert (=> bs!590434 m!4628201))

(declare-fun m!4628203 () Bool)

(assert (=> bs!590434 m!4628203))

(assert (=> b!4034139 d!1195121))

(declare-fun d!1195123 () Bool)

(declare-fun lt!1435217 () Int)

(assert (=> d!1195123 (>= lt!1435217 0)))

(declare-fun e!2503484 () Int)

(assert (=> d!1195123 (= lt!1435217 e!2503484)))

(declare-fun c!696764 () Bool)

(assert (=> d!1195123 (= c!696764 ((_ is Nil!43217) (originalCharacters!7516 token!484)))))

(assert (=> d!1195123 (= (size!32302 (originalCharacters!7516 token!484)) lt!1435217)))

(declare-fun b!4034596 () Bool)

(assert (=> b!4034596 (= e!2503484 0)))

(declare-fun b!4034597 () Bool)

(assert (=> b!4034597 (= e!2503484 (+ 1 (size!32302 (t!334404 (originalCharacters!7516 token!484)))))))

(assert (= (and d!1195123 c!696764) b!4034596))

(assert (= (and d!1195123 (not c!696764)) b!4034597))

(declare-fun m!4628205 () Bool)

(assert (=> b!4034597 m!4628205))

(assert (=> b!4034128 d!1195123))

(declare-fun d!1195125 () Bool)

(assert (=> d!1195125 (= (inv!57735 (tag!7776 (h!48639 rules!2999))) (= (mod (str.len (value!217739 (tag!7776 (h!48639 rules!2999)))) 2) 0))))

(assert (=> b!4034138 d!1195125))

(declare-fun d!1195127 () Bool)

(declare-fun res!1642914 () Bool)

(declare-fun e!2503487 () Bool)

(assert (=> d!1195127 (=> (not res!1642914) (not e!2503487))))

(declare-fun semiInverseModEq!2952 (Int Int) Bool)

(assert (=> d!1195127 (= res!1642914 (semiInverseModEq!2952 (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (h!48639 rules!2999)))))))

(assert (=> d!1195127 (= (inv!57738 (transformation!6916 (h!48639 rules!2999))) e!2503487)))

(declare-fun b!4034600 () Bool)

(declare-fun equivClasses!2851 (Int Int) Bool)

(assert (=> b!4034600 (= e!2503487 (equivClasses!2851 (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (h!48639 rules!2999)))))))

(assert (= (and d!1195127 res!1642914) b!4034600))

(declare-fun m!4628207 () Bool)

(assert (=> d!1195127 m!4628207))

(declare-fun m!4628209 () Bool)

(assert (=> b!4034600 m!4628209))

(assert (=> b!4034138 d!1195127))

(declare-fun d!1195129 () Bool)

(declare-fun res!1642919 () Bool)

(declare-fun e!2503490 () Bool)

(assert (=> d!1195129 (=> (not res!1642919) (not e!2503490))))

(assert (=> d!1195129 (= res!1642919 (not (isEmpty!25793 (originalCharacters!7516 token!484))))))

(assert (=> d!1195129 (= (inv!57739 token!484) e!2503490)))

(declare-fun b!4034605 () Bool)

(declare-fun res!1642920 () Bool)

(assert (=> b!4034605 (=> (not res!1642920) (not e!2503490))))

(declare-fun dynLambda!18318 (Int TokenValue!7146) BalanceConc!25848)

(assert (=> b!4034605 (= res!1642920 (= (originalCharacters!7516 token!484) (list!16082 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))))))

(declare-fun b!4034606 () Bool)

(assert (=> b!4034606 (= e!2503490 (= (size!32301 token!484) (size!32302 (originalCharacters!7516 token!484))))))

(assert (= (and d!1195129 res!1642919) b!4034605))

(assert (= (and b!4034605 res!1642920) b!4034606))

(declare-fun b_lambda!117703 () Bool)

(assert (=> (not b_lambda!117703) (not b!4034605)))

(declare-fun tb!242327 () Bool)

(declare-fun t!334430 () Bool)

(assert (=> (and b!4034157 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) t!334430) tb!242327))

(declare-fun b!4034611 () Bool)

(declare-fun e!2503493 () Bool)

(declare-fun tp!1225853 () Bool)

(declare-fun inv!57742 (Conc!13127) Bool)

(assert (=> b!4034611 (= e!2503493 (and (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))) tp!1225853))))

(declare-fun result!293764 () Bool)

(declare-fun inv!57743 (BalanceConc!25848) Bool)

(assert (=> tb!242327 (= result!293764 (and (inv!57743 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))) e!2503493))))

(assert (= tb!242327 b!4034611))

(declare-fun m!4628211 () Bool)

(assert (=> b!4034611 m!4628211))

(declare-fun m!4628213 () Bool)

(assert (=> tb!242327 m!4628213))

(assert (=> b!4034605 t!334430))

(declare-fun b_and!310035 () Bool)

(assert (= b_and!310005 (and (=> t!334430 result!293764) b_and!310035)))

(declare-fun t!334432 () Bool)

(declare-fun tb!242329 () Bool)

(assert (=> (and b!4034142 (= (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) t!334432) tb!242329))

(declare-fun result!293768 () Bool)

(assert (= result!293768 result!293764))

(assert (=> b!4034605 t!334432))

(declare-fun b_and!310037 () Bool)

(assert (= b_and!310009 (and (=> t!334432 result!293768) b_and!310037)))

(declare-fun m!4628215 () Bool)

(assert (=> d!1195129 m!4628215))

(declare-fun m!4628217 () Bool)

(assert (=> b!4034605 m!4628217))

(assert (=> b!4034605 m!4628217))

(declare-fun m!4628219 () Bool)

(assert (=> b!4034605 m!4628219))

(assert (=> b!4034606 m!4627531))

(assert (=> start!380160 d!1195129))

(declare-fun b!4034622 () Bool)

(declare-fun e!2503500 () Bool)

(declare-fun e!2503501 () Bool)

(assert (=> b!4034622 (= e!2503500 e!2503501)))

(declare-fun c!696769 () Bool)

(assert (=> b!4034622 (= c!696769 ((_ is IntegerValue!21439) (value!217740 token!484)))))

(declare-fun b!4034623 () Bool)

(declare-fun inv!17 (TokenValue!7146) Bool)

(assert (=> b!4034623 (= e!2503501 (inv!17 (value!217740 token!484)))))

(declare-fun b!4034624 () Bool)

(declare-fun e!2503502 () Bool)

(declare-fun inv!15 (TokenValue!7146) Bool)

(assert (=> b!4034624 (= e!2503502 (inv!15 (value!217740 token!484)))))

(declare-fun b!4034625 () Bool)

(declare-fun res!1642923 () Bool)

(assert (=> b!4034625 (=> res!1642923 e!2503502)))

(assert (=> b!4034625 (= res!1642923 (not ((_ is IntegerValue!21440) (value!217740 token!484))))))

(assert (=> b!4034625 (= e!2503501 e!2503502)))

(declare-fun b!4034626 () Bool)

(declare-fun inv!16 (TokenValue!7146) Bool)

(assert (=> b!4034626 (= e!2503500 (inv!16 (value!217740 token!484)))))

(declare-fun d!1195131 () Bool)

(declare-fun c!696770 () Bool)

(assert (=> d!1195131 (= c!696770 ((_ is IntegerValue!21438) (value!217740 token!484)))))

(assert (=> d!1195131 (= (inv!21 (value!217740 token!484)) e!2503500)))

(assert (= (and d!1195131 c!696770) b!4034626))

(assert (= (and d!1195131 (not c!696770)) b!4034622))

(assert (= (and b!4034622 c!696769) b!4034623))

(assert (= (and b!4034622 (not c!696769)) b!4034625))

(assert (= (and b!4034625 (not res!1642923)) b!4034624))

(declare-fun m!4628221 () Bool)

(assert (=> b!4034623 m!4628221))

(declare-fun m!4628223 () Bool)

(assert (=> b!4034624 m!4628223))

(declare-fun m!4628225 () Bool)

(assert (=> b!4034626 m!4628225))

(assert (=> b!4034137 d!1195131))

(declare-fun b!4034629 () Bool)

(declare-fun res!1642924 () Bool)

(declare-fun e!2503503 () Bool)

(assert (=> b!4034629 (=> (not res!1642924) (not e!2503503))))

(declare-fun lt!1435218 () List!43341)

(assert (=> b!4034629 (= res!1642924 (= (size!32302 lt!1435218) (+ (size!32302 lt!1435037) (size!32302 lt!1435038))))))

(declare-fun b!4034630 () Bool)

(assert (=> b!4034630 (= e!2503503 (or (not (= lt!1435038 Nil!43217)) (= lt!1435218 lt!1435037)))))

(declare-fun b!4034628 () Bool)

(declare-fun e!2503504 () List!43341)

(assert (=> b!4034628 (= e!2503504 (Cons!43217 (h!48637 lt!1435037) (++!11318 (t!334404 lt!1435037) lt!1435038)))))

(declare-fun d!1195133 () Bool)

(assert (=> d!1195133 e!2503503))

(declare-fun res!1642925 () Bool)

(assert (=> d!1195133 (=> (not res!1642925) (not e!2503503))))

(assert (=> d!1195133 (= res!1642925 (= (content!6566 lt!1435218) ((_ map or) (content!6566 lt!1435037) (content!6566 lt!1435038))))))

(assert (=> d!1195133 (= lt!1435218 e!2503504)))

(declare-fun c!696771 () Bool)

(assert (=> d!1195133 (= c!696771 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195133 (= (++!11318 lt!1435037 lt!1435038) lt!1435218)))

(declare-fun b!4034627 () Bool)

(assert (=> b!4034627 (= e!2503504 lt!1435038)))

(assert (= (and d!1195133 c!696771) b!4034627))

(assert (= (and d!1195133 (not c!696771)) b!4034628))

(assert (= (and d!1195133 res!1642925) b!4034629))

(assert (= (and b!4034629 res!1642924) b!4034630))

(declare-fun m!4628227 () Bool)

(assert (=> b!4034629 m!4628227))

(assert (=> b!4034629 m!4627507))

(assert (=> b!4034629 m!4627969))

(declare-fun m!4628229 () Bool)

(assert (=> b!4034628 m!4628229))

(declare-fun m!4628231 () Bool)

(assert (=> d!1195133 m!4628231))

(assert (=> d!1195133 m!4627949))

(assert (=> d!1195133 m!4627979))

(assert (=> b!4034158 d!1195133))

(declare-fun d!1195135 () Bool)

(declare-fun lt!1435221 () List!43341)

(assert (=> d!1195135 (= (++!11318 lt!1435037 lt!1435221) prefix!494)))

(declare-fun e!2503507 () List!43341)

(assert (=> d!1195135 (= lt!1435221 e!2503507)))

(declare-fun c!696774 () Bool)

(assert (=> d!1195135 (= c!696774 ((_ is Cons!43217) lt!1435037))))

(assert (=> d!1195135 (>= (size!32302 prefix!494) (size!32302 lt!1435037))))

(assert (=> d!1195135 (= (getSuffix!2420 prefix!494 lt!1435037) lt!1435221)))

(declare-fun b!4034635 () Bool)

(assert (=> b!4034635 (= e!2503507 (getSuffix!2420 (tail!6279 prefix!494) (t!334404 lt!1435037)))))

(declare-fun b!4034636 () Bool)

(assert (=> b!4034636 (= e!2503507 prefix!494)))

(assert (= (and d!1195135 c!696774) b!4034635))

(assert (= (and d!1195135 (not c!696774)) b!4034636))

(declare-fun m!4628233 () Bool)

(assert (=> d!1195135 m!4628233))

(assert (=> d!1195135 m!4627509))

(assert (=> d!1195135 m!4627507))

(assert (=> b!4034635 m!4628189))

(assert (=> b!4034635 m!4628189))

(declare-fun m!4628235 () Bool)

(assert (=> b!4034635 m!4628235))

(assert (=> b!4034158 d!1195135))

(declare-fun b!4034637 () Bool)

(declare-fun e!2503508 () Bool)

(declare-fun e!2503509 () Bool)

(assert (=> b!4034637 (= e!2503508 e!2503509)))

(declare-fun res!1642926 () Bool)

(assert (=> b!4034637 (=> (not res!1642926) (not e!2503509))))

(assert (=> b!4034637 (= res!1642926 (not ((_ is Nil!43217) prefix!494)))))

(declare-fun b!4034638 () Bool)

(declare-fun res!1642929 () Bool)

(assert (=> b!4034638 (=> (not res!1642929) (not e!2503509))))

(assert (=> b!4034638 (= res!1642929 (= (head!8547 lt!1435037) (head!8547 prefix!494)))))

(declare-fun d!1195137 () Bool)

(declare-fun e!2503510 () Bool)

(assert (=> d!1195137 e!2503510))

(declare-fun res!1642928 () Bool)

(assert (=> d!1195137 (=> res!1642928 e!2503510)))

(declare-fun lt!1435222 () Bool)

(assert (=> d!1195137 (= res!1642928 (not lt!1435222))))

(assert (=> d!1195137 (= lt!1435222 e!2503508)))

(declare-fun res!1642927 () Bool)

(assert (=> d!1195137 (=> res!1642927 e!2503508)))

(assert (=> d!1195137 (= res!1642927 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195137 (= (isPrefix!4003 lt!1435037 prefix!494) lt!1435222)))

(declare-fun b!4034639 () Bool)

(assert (=> b!4034639 (= e!2503509 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 prefix!494)))))

(declare-fun b!4034640 () Bool)

(assert (=> b!4034640 (= e!2503510 (>= (size!32302 prefix!494) (size!32302 lt!1435037)))))

(assert (= (and d!1195137 (not res!1642927)) b!4034637))

(assert (= (and b!4034637 res!1642926) b!4034638))

(assert (= (and b!4034638 res!1642929) b!4034639))

(assert (= (and d!1195137 (not res!1642928)) b!4034640))

(assert (=> b!4034638 m!4627907))

(assert (=> b!4034638 m!4628187))

(assert (=> b!4034639 m!4627911))

(assert (=> b!4034639 m!4628189))

(assert (=> b!4034639 m!4627911))

(assert (=> b!4034639 m!4628189))

(declare-fun m!4628237 () Bool)

(assert (=> b!4034639 m!4628237))

(assert (=> b!4034640 m!4627509))

(assert (=> b!4034640 m!4627507))

(assert (=> b!4034158 d!1195137))

(declare-fun d!1195139 () Bool)

(assert (=> d!1195139 (isPrefix!4003 lt!1435037 prefix!494)))

(declare-fun lt!1435225 () Unit!62397)

(declare-fun choose!24435 (List!43341 List!43341 List!43341) Unit!62397)

(assert (=> d!1195139 (= lt!1435225 (choose!24435 prefix!494 lt!1435037 lt!1435003))))

(assert (=> d!1195139 (isPrefix!4003 prefix!494 lt!1435003)))

(assert (=> d!1195139 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!567 prefix!494 lt!1435037 lt!1435003) lt!1435225)))

(declare-fun bs!590435 () Bool)

(assert (= bs!590435 d!1195139))

(assert (=> bs!590435 m!4627523))

(declare-fun m!4628239 () Bool)

(assert (=> bs!590435 m!4628239))

(assert (=> bs!590435 m!4627495))

(assert (=> b!4034158 d!1195139))

(declare-fun d!1195141 () Bool)

(assert (=> d!1195141 (= (inv!57735 (tag!7776 (rule!9982 token!484))) (= (mod (str.len (value!217739 (tag!7776 (rule!9982 token!484)))) 2) 0))))

(assert (=> b!4034152 d!1195141))

(declare-fun d!1195143 () Bool)

(declare-fun res!1642930 () Bool)

(declare-fun e!2503511 () Bool)

(assert (=> d!1195143 (=> (not res!1642930) (not e!2503511))))

(assert (=> d!1195143 (= res!1642930 (semiInverseModEq!2952 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))))))

(assert (=> d!1195143 (= (inv!57738 (transformation!6916 (rule!9982 token!484))) e!2503511)))

(declare-fun b!4034641 () Bool)

(assert (=> b!4034641 (= e!2503511 (equivClasses!2851 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))))))

(assert (= (and d!1195143 res!1642930) b!4034641))

(declare-fun m!4628241 () Bool)

(assert (=> d!1195143 m!4628241))

(declare-fun m!4628243 () Bool)

(assert (=> b!4034641 m!4628243))

(assert (=> b!4034152 d!1195143))

(declare-fun b!4034644 () Bool)

(declare-fun res!1642931 () Bool)

(declare-fun e!2503512 () Bool)

(assert (=> b!4034644 (=> (not res!1642931) (not e!2503512))))

(declare-fun lt!1435226 () List!43341)

(assert (=> b!4034644 (= res!1642931 (= (size!32302 lt!1435226) (+ (size!32302 lt!1435037) (size!32302 lt!1435011))))))

(declare-fun b!4034645 () Bool)

(assert (=> b!4034645 (= e!2503512 (or (not (= lt!1435011 Nil!43217)) (= lt!1435226 lt!1435037)))))

(declare-fun b!4034643 () Bool)

(declare-fun e!2503513 () List!43341)

(assert (=> b!4034643 (= e!2503513 (Cons!43217 (h!48637 lt!1435037) (++!11318 (t!334404 lt!1435037) lt!1435011)))))

(declare-fun d!1195145 () Bool)

(assert (=> d!1195145 e!2503512))

(declare-fun res!1642932 () Bool)

(assert (=> d!1195145 (=> (not res!1642932) (not e!2503512))))

(assert (=> d!1195145 (= res!1642932 (= (content!6566 lt!1435226) ((_ map or) (content!6566 lt!1435037) (content!6566 lt!1435011))))))

(assert (=> d!1195145 (= lt!1435226 e!2503513)))

(declare-fun c!696775 () Bool)

(assert (=> d!1195145 (= c!696775 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195145 (= (++!11318 lt!1435037 lt!1435011) lt!1435226)))

(declare-fun b!4034642 () Bool)

(assert (=> b!4034642 (= e!2503513 lt!1435011)))

(assert (= (and d!1195145 c!696775) b!4034642))

(assert (= (and d!1195145 (not c!696775)) b!4034643))

(assert (= (and d!1195145 res!1642932) b!4034644))

(assert (= (and b!4034644 res!1642931) b!4034645))

(declare-fun m!4628245 () Bool)

(assert (=> b!4034644 m!4628245))

(assert (=> b!4034644 m!4627507))

(declare-fun m!4628247 () Bool)

(assert (=> b!4034644 m!4628247))

(declare-fun m!4628249 () Bool)

(assert (=> b!4034643 m!4628249))

(declare-fun m!4628251 () Bool)

(assert (=> d!1195145 m!4628251))

(assert (=> d!1195145 m!4627949))

(declare-fun m!4628253 () Bool)

(assert (=> d!1195145 m!4628253))

(assert (=> b!4034141 d!1195145))

(declare-fun d!1195147 () Bool)

(declare-fun lt!1435227 () List!43341)

(assert (=> d!1195147 (= (++!11318 lt!1435037 lt!1435227) lt!1435003)))

(declare-fun e!2503514 () List!43341)

(assert (=> d!1195147 (= lt!1435227 e!2503514)))

(declare-fun c!696776 () Bool)

(assert (=> d!1195147 (= c!696776 ((_ is Cons!43217) lt!1435037))))

(assert (=> d!1195147 (>= (size!32302 lt!1435003) (size!32302 lt!1435037))))

(assert (=> d!1195147 (= (getSuffix!2420 lt!1435003 lt!1435037) lt!1435227)))

(declare-fun b!4034646 () Bool)

(assert (=> b!4034646 (= e!2503514 (getSuffix!2420 (tail!6279 lt!1435003) (t!334404 lt!1435037)))))

(declare-fun b!4034647 () Bool)

(assert (=> b!4034647 (= e!2503514 lt!1435003)))

(assert (= (and d!1195147 c!696776) b!4034646))

(assert (= (and d!1195147 (not c!696776)) b!4034647))

(declare-fun m!4628255 () Bool)

(assert (=> d!1195147 m!4628255))

(assert (=> d!1195147 m!4627803))

(assert (=> d!1195147 m!4627507))

(assert (=> b!4034646 m!4628179))

(assert (=> b!4034646 m!4628179))

(declare-fun m!4628257 () Bool)

(assert (=> b!4034646 m!4628257))

(assert (=> b!4034141 d!1195147))

(declare-fun b!4034648 () Bool)

(declare-fun e!2503515 () Bool)

(declare-fun e!2503516 () Bool)

(assert (=> b!4034648 (= e!2503515 e!2503516)))

(declare-fun res!1642933 () Bool)

(assert (=> b!4034648 (=> (not res!1642933) (not e!2503516))))

(assert (=> b!4034648 (= res!1642933 (not ((_ is Nil!43217) lt!1435003)))))

(declare-fun b!4034649 () Bool)

(declare-fun res!1642936 () Bool)

(assert (=> b!4034649 (=> (not res!1642936) (not e!2503516))))

(assert (=> b!4034649 (= res!1642936 (= (head!8547 lt!1435003) (head!8547 lt!1435003)))))

(declare-fun d!1195149 () Bool)

(declare-fun e!2503517 () Bool)

(assert (=> d!1195149 e!2503517))

(declare-fun res!1642935 () Bool)

(assert (=> d!1195149 (=> res!1642935 e!2503517)))

(declare-fun lt!1435228 () Bool)

(assert (=> d!1195149 (= res!1642935 (not lt!1435228))))

(assert (=> d!1195149 (= lt!1435228 e!2503515)))

(declare-fun res!1642934 () Bool)

(assert (=> d!1195149 (=> res!1642934 e!2503515)))

(assert (=> d!1195149 (= res!1642934 ((_ is Nil!43217) lt!1435003))))

(assert (=> d!1195149 (= (isPrefix!4003 lt!1435003 lt!1435003) lt!1435228)))

(declare-fun b!4034650 () Bool)

(assert (=> b!4034650 (= e!2503516 (isPrefix!4003 (tail!6279 lt!1435003) (tail!6279 lt!1435003)))))

(declare-fun b!4034651 () Bool)

(assert (=> b!4034651 (= e!2503517 (>= (size!32302 lt!1435003) (size!32302 lt!1435003)))))

(assert (= (and d!1195149 (not res!1642934)) b!4034648))

(assert (= (and b!4034648 res!1642933) b!4034649))

(assert (= (and b!4034649 res!1642936) b!4034650))

(assert (= (and d!1195149 (not res!1642935)) b!4034651))

(assert (=> b!4034649 m!4628177))

(assert (=> b!4034649 m!4628177))

(assert (=> b!4034650 m!4628179))

(assert (=> b!4034650 m!4628179))

(assert (=> b!4034650 m!4628179))

(assert (=> b!4034650 m!4628179))

(declare-fun m!4628259 () Bool)

(assert (=> b!4034650 m!4628259))

(assert (=> b!4034651 m!4627803))

(assert (=> b!4034651 m!4627803))

(assert (=> b!4034141 d!1195149))

(declare-fun d!1195151 () Bool)

(assert (=> d!1195151 (isPrefix!4003 lt!1435003 lt!1435003)))

(declare-fun lt!1435231 () Unit!62397)

(declare-fun choose!24436 (List!43341 List!43341) Unit!62397)

(assert (=> d!1195151 (= lt!1435231 (choose!24436 lt!1435003 lt!1435003))))

(assert (=> d!1195151 (= (lemmaIsPrefixRefl!2570 lt!1435003 lt!1435003) lt!1435231)))

(declare-fun bs!590436 () Bool)

(assert (= bs!590436 d!1195151))

(assert (=> bs!590436 m!4627541))

(declare-fun m!4628261 () Bool)

(assert (=> bs!590436 m!4628261))

(assert (=> b!4034141 d!1195151))

(declare-fun d!1195153 () Bool)

(assert (=> d!1195153 (= (isEmpty!25789 rules!2999) ((_ is Nil!43219) rules!2999))))

(assert (=> b!4034130 d!1195153))

(declare-fun b!4034654 () Bool)

(declare-fun res!1642937 () Bool)

(declare-fun e!2503518 () Bool)

(assert (=> b!4034654 (=> (not res!1642937) (not e!2503518))))

(declare-fun lt!1435232 () List!43341)

(assert (=> b!4034654 (= res!1642937 (= (size!32302 lt!1435232) (+ (size!32302 lt!1435037) (size!32302 suffixResult!105))))))

(declare-fun b!4034655 () Bool)

(assert (=> b!4034655 (= e!2503518 (or (not (= suffixResult!105 Nil!43217)) (= lt!1435232 lt!1435037)))))

(declare-fun b!4034653 () Bool)

(declare-fun e!2503519 () List!43341)

(assert (=> b!4034653 (= e!2503519 (Cons!43217 (h!48637 lt!1435037) (++!11318 (t!334404 lt!1435037) suffixResult!105)))))

(declare-fun d!1195155 () Bool)

(assert (=> d!1195155 e!2503518))

(declare-fun res!1642938 () Bool)

(assert (=> d!1195155 (=> (not res!1642938) (not e!2503518))))

(assert (=> d!1195155 (= res!1642938 (= (content!6566 lt!1435232) ((_ map or) (content!6566 lt!1435037) (content!6566 suffixResult!105))))))

(assert (=> d!1195155 (= lt!1435232 e!2503519)))

(declare-fun c!696777 () Bool)

(assert (=> d!1195155 (= c!696777 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195155 (= (++!11318 lt!1435037 suffixResult!105) lt!1435232)))

(declare-fun b!4034652 () Bool)

(assert (=> b!4034652 (= e!2503519 suffixResult!105)))

(assert (= (and d!1195155 c!696777) b!4034652))

(assert (= (and d!1195155 (not c!696777)) b!4034653))

(assert (= (and d!1195155 res!1642938) b!4034654))

(assert (= (and b!4034654 res!1642937) b!4034655))

(declare-fun m!4628263 () Bool)

(assert (=> b!4034654 m!4628263))

(assert (=> b!4034654 m!4627507))

(declare-fun m!4628265 () Bool)

(assert (=> b!4034654 m!4628265))

(declare-fun m!4628267 () Bool)

(assert (=> b!4034653 m!4628267))

(declare-fun m!4628269 () Bool)

(assert (=> d!1195155 m!4628269))

(assert (=> d!1195155 m!4627949))

(declare-fun m!4628271 () Bool)

(assert (=> d!1195155 m!4628271))

(assert (=> b!4034151 d!1195155))

(declare-fun d!1195157 () Bool)

(declare-fun e!2503522 () Bool)

(assert (=> d!1195157 e!2503522))

(declare-fun res!1642941 () Bool)

(assert (=> d!1195157 (=> (not res!1642941) (not e!2503522))))

(assert (=> d!1195157 (= res!1642941 (semiInverseModEq!2952 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))))))

(declare-fun Unit!62403 () Unit!62397)

(assert (=> d!1195157 (= (lemmaInv!1125 (transformation!6916 (rule!9982 token!484))) Unit!62403)))

(declare-fun b!4034658 () Bool)

(assert (=> b!4034658 (= e!2503522 (equivClasses!2851 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))))))

(assert (= (and d!1195157 res!1642941) b!4034658))

(assert (=> d!1195157 m!4628241))

(assert (=> b!4034658 m!4628243))

(assert (=> b!4034151 d!1195157))

(declare-fun d!1195159 () Bool)

(declare-fun res!1642946 () Bool)

(declare-fun e!2503525 () Bool)

(assert (=> d!1195159 (=> (not res!1642946) (not e!2503525))))

(declare-fun validRegex!5344 (Regex!11821) Bool)

(assert (=> d!1195159 (= res!1642946 (validRegex!5344 (regex!6916 (rule!9982 token!484))))))

(assert (=> d!1195159 (= (ruleValid!2846 thiss!21717 (rule!9982 token!484)) e!2503525)))

(declare-fun b!4034663 () Bool)

(declare-fun res!1642947 () Bool)

(assert (=> b!4034663 (=> (not res!1642947) (not e!2503525))))

(declare-fun nullable!4144 (Regex!11821) Bool)

(assert (=> b!4034663 (= res!1642947 (not (nullable!4144 (regex!6916 (rule!9982 token!484)))))))

(declare-fun b!4034664 () Bool)

(assert (=> b!4034664 (= e!2503525 (not (= (tag!7776 (rule!9982 token!484)) (String!49449 ""))))))

(assert (= (and d!1195159 res!1642946) b!4034663))

(assert (= (and b!4034663 res!1642947) b!4034664))

(declare-fun m!4628273 () Bool)

(assert (=> d!1195159 m!4628273))

(declare-fun m!4628275 () Bool)

(assert (=> b!4034663 m!4628275))

(assert (=> b!4034151 d!1195159))

(declare-fun d!1195161 () Bool)

(assert (=> d!1195161 (ruleValid!2846 thiss!21717 (rule!9982 token!484))))

(declare-fun lt!1435235 () Unit!62397)

(declare-fun choose!24437 (LexerInterface!6505 Rule!13632 List!43343) Unit!62397)

(assert (=> d!1195161 (= lt!1435235 (choose!24437 thiss!21717 (rule!9982 token!484) rules!2999))))

(assert (=> d!1195161 (contains!8580 rules!2999 (rule!9982 token!484))))

(assert (=> d!1195161 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1916 thiss!21717 (rule!9982 token!484) rules!2999) lt!1435235)))

(declare-fun bs!590437 () Bool)

(assert (= bs!590437 d!1195161))

(assert (=> bs!590437 m!4627559))

(declare-fun m!4628277 () Bool)

(assert (=> bs!590437 m!4628277))

(declare-fun m!4628279 () Bool)

(assert (=> bs!590437 m!4628279))

(assert (=> b!4034151 d!1195161))

(declare-fun b!4034693 () Bool)

(declare-fun e!2503546 () Bool)

(declare-fun lt!1435238 () Bool)

(assert (=> b!4034693 (= e!2503546 (not lt!1435238))))

(declare-fun b!4034694 () Bool)

(declare-fun e!2503544 () Bool)

(declare-fun e!2503541 () Bool)

(assert (=> b!4034694 (= e!2503544 e!2503541)))

(declare-fun res!1642967 () Bool)

(assert (=> b!4034694 (=> (not res!1642967) (not e!2503541))))

(assert (=> b!4034694 (= res!1642967 (not lt!1435238))))

(declare-fun b!4034695 () Bool)

(declare-fun res!1642968 () Bool)

(assert (=> b!4034695 (=> res!1642968 e!2503544)))

(declare-fun e!2503540 () Bool)

(assert (=> b!4034695 (= res!1642968 e!2503540)))

(declare-fun res!1642969 () Bool)

(assert (=> b!4034695 (=> (not res!1642969) (not e!2503540))))

(assert (=> b!4034695 (= res!1642969 lt!1435238)))

(declare-fun b!4034696 () Bool)

(declare-fun res!1642970 () Bool)

(declare-fun e!2503545 () Bool)

(assert (=> b!4034696 (=> res!1642970 e!2503545)))

(assert (=> b!4034696 (= res!1642970 (not (isEmpty!25793 (tail!6279 lt!1435037))))))

(declare-fun b!4034697 () Bool)

(assert (=> b!4034697 (= e!2503540 (= (head!8547 lt!1435037) (c!696701 (regex!6916 (rule!9982 token!484)))))))

(declare-fun b!4034698 () Bool)

(declare-fun e!2503542 () Bool)

(assert (=> b!4034698 (= e!2503542 e!2503546)))

(declare-fun c!696786 () Bool)

(assert (=> b!4034698 (= c!696786 ((_ is EmptyLang!11821) (regex!6916 (rule!9982 token!484))))))

(declare-fun b!4034699 () Bool)

(declare-fun call!287020 () Bool)

(assert (=> b!4034699 (= e!2503542 (= lt!1435238 call!287020))))

(declare-fun b!4034700 () Bool)

(declare-fun res!1642966 () Bool)

(assert (=> b!4034700 (=> (not res!1642966) (not e!2503540))))

(assert (=> b!4034700 (= res!1642966 (isEmpty!25793 (tail!6279 lt!1435037)))))

(declare-fun b!4034701 () Bool)

(declare-fun res!1642964 () Bool)

(assert (=> b!4034701 (=> (not res!1642964) (not e!2503540))))

(assert (=> b!4034701 (= res!1642964 (not call!287020))))

(declare-fun b!4034702 () Bool)

(declare-fun e!2503543 () Bool)

(assert (=> b!4034702 (= e!2503543 (nullable!4144 (regex!6916 (rule!9982 token!484))))))

(declare-fun d!1195163 () Bool)

(assert (=> d!1195163 e!2503542))

(declare-fun c!696784 () Bool)

(assert (=> d!1195163 (= c!696784 ((_ is EmptyExpr!11821) (regex!6916 (rule!9982 token!484))))))

(assert (=> d!1195163 (= lt!1435238 e!2503543)))

(declare-fun c!696785 () Bool)

(assert (=> d!1195163 (= c!696785 (isEmpty!25793 lt!1435037))))

(assert (=> d!1195163 (validRegex!5344 (regex!6916 (rule!9982 token!484)))))

(assert (=> d!1195163 (= (matchR!5774 (regex!6916 (rule!9982 token!484)) lt!1435037) lt!1435238)))

(declare-fun b!4034703 () Bool)

(assert (=> b!4034703 (= e!2503545 (not (= (head!8547 lt!1435037) (c!696701 (regex!6916 (rule!9982 token!484))))))))

(declare-fun bm!287015 () Bool)

(assert (=> bm!287015 (= call!287020 (isEmpty!25793 lt!1435037))))

(declare-fun b!4034704 () Bool)

(assert (=> b!4034704 (= e!2503541 e!2503545)))

(declare-fun res!1642965 () Bool)

(assert (=> b!4034704 (=> res!1642965 e!2503545)))

(assert (=> b!4034704 (= res!1642965 call!287020)))

(declare-fun b!4034705 () Bool)

(declare-fun res!1642971 () Bool)

(assert (=> b!4034705 (=> res!1642971 e!2503544)))

(assert (=> b!4034705 (= res!1642971 (not ((_ is ElementMatch!11821) (regex!6916 (rule!9982 token!484)))))))

(assert (=> b!4034705 (= e!2503546 e!2503544)))

(declare-fun b!4034706 () Bool)

(declare-fun derivativeStep!3549 (Regex!11821 C!23828) Regex!11821)

(assert (=> b!4034706 (= e!2503543 (matchR!5774 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037)) (tail!6279 lt!1435037)))))

(assert (= (and d!1195163 c!696785) b!4034702))

(assert (= (and d!1195163 (not c!696785)) b!4034706))

(assert (= (and d!1195163 c!696784) b!4034699))

(assert (= (and d!1195163 (not c!696784)) b!4034698))

(assert (= (and b!4034698 c!696786) b!4034693))

(assert (= (and b!4034698 (not c!696786)) b!4034705))

(assert (= (and b!4034705 (not res!1642971)) b!4034695))

(assert (= (and b!4034695 res!1642969) b!4034701))

(assert (= (and b!4034701 res!1642964) b!4034700))

(assert (= (and b!4034700 res!1642966) b!4034697))

(assert (= (and b!4034695 (not res!1642968)) b!4034694))

(assert (= (and b!4034694 res!1642967) b!4034704))

(assert (= (and b!4034704 (not res!1642965)) b!4034696))

(assert (= (and b!4034696 (not res!1642970)) b!4034703))

(assert (= (or b!4034699 b!4034701 b!4034704) bm!287015))

(assert (=> b!4034700 m!4627911))

(assert (=> b!4034700 m!4627911))

(declare-fun m!4628281 () Bool)

(assert (=> b!4034700 m!4628281))

(assert (=> b!4034696 m!4627911))

(assert (=> b!4034696 m!4627911))

(assert (=> b!4034696 m!4628281))

(declare-fun m!4628283 () Bool)

(assert (=> d!1195163 m!4628283))

(assert (=> d!1195163 m!4628273))

(assert (=> b!4034703 m!4627907))

(assert (=> b!4034697 m!4627907))

(assert (=> b!4034702 m!4628275))

(assert (=> b!4034706 m!4627907))

(assert (=> b!4034706 m!4627907))

(declare-fun m!4628285 () Bool)

(assert (=> b!4034706 m!4628285))

(assert (=> b!4034706 m!4627911))

(assert (=> b!4034706 m!4628285))

(assert (=> b!4034706 m!4627911))

(declare-fun m!4628287 () Bool)

(assert (=> b!4034706 m!4628287))

(assert (=> bm!287015 m!4628283))

(assert (=> b!4034140 d!1195163))

(declare-fun b!4034707 () Bool)

(declare-fun e!2503547 () Bool)

(declare-fun e!2503548 () Bool)

(assert (=> b!4034707 (= e!2503547 e!2503548)))

(declare-fun res!1642972 () Bool)

(assert (=> b!4034707 (=> (not res!1642972) (not e!2503548))))

(assert (=> b!4034707 (= res!1642972 (not ((_ is Nil!43217) lt!1435033)))))

(declare-fun b!4034708 () Bool)

(declare-fun res!1642975 () Bool)

(assert (=> b!4034708 (=> (not res!1642975) (not e!2503548))))

(assert (=> b!4034708 (= res!1642975 (= (head!8547 lt!1435037) (head!8547 lt!1435033)))))

(declare-fun d!1195165 () Bool)

(declare-fun e!2503549 () Bool)

(assert (=> d!1195165 e!2503549))

(declare-fun res!1642974 () Bool)

(assert (=> d!1195165 (=> res!1642974 e!2503549)))

(declare-fun lt!1435239 () Bool)

(assert (=> d!1195165 (= res!1642974 (not lt!1435239))))

(assert (=> d!1195165 (= lt!1435239 e!2503547)))

(declare-fun res!1642973 () Bool)

(assert (=> d!1195165 (=> res!1642973 e!2503547)))

(assert (=> d!1195165 (= res!1642973 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195165 (= (isPrefix!4003 lt!1435037 lt!1435033) lt!1435239)))

(declare-fun b!4034709 () Bool)

(assert (=> b!4034709 (= e!2503548 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435033)))))

(declare-fun b!4034710 () Bool)

(assert (=> b!4034710 (= e!2503549 (>= (size!32302 lt!1435033) (size!32302 lt!1435037)))))

(assert (= (and d!1195165 (not res!1642973)) b!4034707))

(assert (= (and b!4034707 res!1642972) b!4034708))

(assert (= (and b!4034708 res!1642975) b!4034709))

(assert (= (and d!1195165 (not res!1642974)) b!4034710))

(assert (=> b!4034708 m!4627907))

(declare-fun m!4628289 () Bool)

(assert (=> b!4034708 m!4628289))

(assert (=> b!4034709 m!4627911))

(declare-fun m!4628291 () Bool)

(assert (=> b!4034709 m!4628291))

(assert (=> b!4034709 m!4627911))

(assert (=> b!4034709 m!4628291))

(declare-fun m!4628293 () Bool)

(assert (=> b!4034709 m!4628293))

(assert (=> b!4034710 m!4627891))

(assert (=> b!4034710 m!4627507))

(assert (=> b!4034140 d!1195165))

(declare-fun d!1195167 () Bool)

(assert (=> d!1195167 (isPrefix!4003 lt!1435037 (++!11318 prefix!494 newSuffix!27))))

(declare-fun lt!1435242 () Unit!62397)

(declare-fun choose!24438 (List!43341 List!43341 List!43341) Unit!62397)

(assert (=> d!1195167 (= lt!1435242 (choose!24438 lt!1435037 prefix!494 newSuffix!27))))

(assert (=> d!1195167 (isPrefix!4003 lt!1435037 prefix!494)))

(assert (=> d!1195167 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!796 lt!1435037 prefix!494 newSuffix!27) lt!1435242)))

(declare-fun bs!590438 () Bool)

(assert (= bs!590438 d!1195167))

(assert (=> bs!590438 m!4627527))

(assert (=> bs!590438 m!4627527))

(declare-fun m!4628295 () Bool)

(assert (=> bs!590438 m!4628295))

(declare-fun m!4628297 () Bool)

(assert (=> bs!590438 m!4628297))

(assert (=> bs!590438 m!4627523))

(assert (=> b!4034140 d!1195167))

(declare-fun d!1195169 () Bool)

(assert (=> d!1195169 (isPrefix!4003 lt!1435037 (++!11318 prefix!494 suffix!1299))))

(declare-fun lt!1435243 () Unit!62397)

(assert (=> d!1195169 (= lt!1435243 (choose!24438 lt!1435037 prefix!494 suffix!1299))))

(assert (=> d!1195169 (isPrefix!4003 lt!1435037 prefix!494)))

(assert (=> d!1195169 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!796 lt!1435037 prefix!494 suffix!1299) lt!1435243)))

(declare-fun bs!590439 () Bool)

(assert (= bs!590439 d!1195169))

(assert (=> bs!590439 m!4627469))

(assert (=> bs!590439 m!4627469))

(declare-fun m!4628299 () Bool)

(assert (=> bs!590439 m!4628299))

(declare-fun m!4628301 () Bool)

(assert (=> bs!590439 m!4628301))

(assert (=> bs!590439 m!4627523))

(assert (=> b!4034140 d!1195169))

(declare-fun d!1195171 () Bool)

(declare-fun lt!1435244 () Int)

(assert (=> d!1195171 (>= lt!1435244 0)))

(declare-fun e!2503550 () Int)

(assert (=> d!1195171 (= lt!1435244 e!2503550)))

(declare-fun c!696787 () Bool)

(assert (=> d!1195171 (= c!696787 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195171 (= (size!32302 lt!1435037) lt!1435244)))

(declare-fun b!4034711 () Bool)

(assert (=> b!4034711 (= e!2503550 0)))

(declare-fun b!4034712 () Bool)

(assert (=> b!4034712 (= e!2503550 (+ 1 (size!32302 (t!334404 lt!1435037))))))

(assert (= (and d!1195171 c!696787) b!4034711))

(assert (= (and d!1195171 (not c!696787)) b!4034712))

(declare-fun m!4628303 () Bool)

(assert (=> b!4034712 m!4628303))

(assert (=> b!4034150 d!1195171))

(declare-fun d!1195173 () Bool)

(declare-fun lt!1435245 () Int)

(assert (=> d!1195173 (>= lt!1435245 0)))

(declare-fun e!2503551 () Int)

(assert (=> d!1195173 (= lt!1435245 e!2503551)))

(declare-fun c!696788 () Bool)

(assert (=> d!1195173 (= c!696788 ((_ is Nil!43217) prefix!494))))

(assert (=> d!1195173 (= (size!32302 prefix!494) lt!1435245)))

(declare-fun b!4034713 () Bool)

(assert (=> b!4034713 (= e!2503551 0)))

(declare-fun b!4034714 () Bool)

(assert (=> b!4034714 (= e!2503551 (+ 1 (size!32302 (t!334404 prefix!494))))))

(assert (= (and d!1195173 c!696788) b!4034713))

(assert (= (and d!1195173 (not c!696788)) b!4034714))

(declare-fun m!4628305 () Bool)

(assert (=> b!4034714 m!4628305))

(assert (=> b!4034150 d!1195173))

(declare-fun d!1195175 () Bool)

(declare-fun list!16084 (Conc!13127) List!43341)

(assert (=> d!1195175 (= (list!16082 (charsOf!4732 token!484)) (list!16084 (c!696700 (charsOf!4732 token!484))))))

(declare-fun bs!590440 () Bool)

(assert (= bs!590440 d!1195175))

(declare-fun m!4628307 () Bool)

(assert (=> bs!590440 m!4628307))

(assert (=> b!4034150 d!1195175))

(declare-fun d!1195177 () Bool)

(declare-fun lt!1435248 () BalanceConc!25848)

(assert (=> d!1195177 (= (list!16082 lt!1435248) (originalCharacters!7516 token!484))))

(assert (=> d!1195177 (= lt!1435248 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))))

(assert (=> d!1195177 (= (charsOf!4732 token!484) lt!1435248)))

(declare-fun b_lambda!117705 () Bool)

(assert (=> (not b_lambda!117705) (not d!1195177)))

(assert (=> d!1195177 t!334430))

(declare-fun b_and!310039 () Bool)

(assert (= b_and!310035 (and (=> t!334430 result!293764) b_and!310039)))

(assert (=> d!1195177 t!334432))

(declare-fun b_and!310041 () Bool)

(assert (= b_and!310037 (and (=> t!334432 result!293768) b_and!310041)))

(declare-fun m!4628309 () Bool)

(assert (=> d!1195177 m!4628309))

(assert (=> d!1195177 m!4628217))

(assert (=> b!4034150 d!1195177))

(declare-fun d!1195179 () Bool)

(assert (=> d!1195179 (= (list!16082 (charsOf!4732 (_1!24283 (v!39723 lt!1435020)))) (list!16084 (c!696700 (charsOf!4732 (_1!24283 (v!39723 lt!1435020))))))))

(declare-fun bs!590441 () Bool)

(assert (= bs!590441 d!1195179))

(declare-fun m!4628311 () Bool)

(assert (=> bs!590441 m!4628311))

(assert (=> b!4034144 d!1195179))

(declare-fun d!1195181 () Bool)

(declare-fun lt!1435251 () Bool)

(declare-fun content!6567 (List!43343) (InoxSet Rule!13632))

(assert (=> d!1195181 (= lt!1435251 (select (content!6567 rules!2999) (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))

(declare-fun e!2503556 () Bool)

(assert (=> d!1195181 (= lt!1435251 e!2503556)))

(declare-fun res!1642980 () Bool)

(assert (=> d!1195181 (=> (not res!1642980) (not e!2503556))))

(assert (=> d!1195181 (= res!1642980 ((_ is Cons!43219) rules!2999))))

(assert (=> d!1195181 (= (contains!8580 rules!2999 (rule!9982 (_1!24283 (v!39723 lt!1435020)))) lt!1435251)))

(declare-fun b!4034719 () Bool)

(declare-fun e!2503557 () Bool)

(assert (=> b!4034719 (= e!2503556 e!2503557)))

(declare-fun res!1642981 () Bool)

(assert (=> b!4034719 (=> res!1642981 e!2503557)))

(assert (=> b!4034719 (= res!1642981 (= (h!48639 rules!2999) (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))

(declare-fun b!4034720 () Bool)

(assert (=> b!4034720 (= e!2503557 (contains!8580 (t!334406 rules!2999) (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))

(assert (= (and d!1195181 res!1642980) b!4034719))

(assert (= (and b!4034719 (not res!1642981)) b!4034720))

(declare-fun m!4628313 () Bool)

(assert (=> d!1195181 m!4628313))

(declare-fun m!4628315 () Bool)

(assert (=> d!1195181 m!4628315))

(declare-fun m!4628317 () Bool)

(assert (=> b!4034720 m!4628317))

(assert (=> b!4034144 d!1195181))

(declare-fun d!1195183 () Bool)

(declare-fun e!2503558 () Bool)

(assert (=> d!1195183 e!2503558))

(declare-fun res!1642982 () Bool)

(assert (=> d!1195183 (=> (not res!1642982) (not e!2503558))))

(assert (=> d!1195183 (= res!1642982 (semiInverseModEq!2952 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))))

(declare-fun Unit!62404 () Unit!62397)

(assert (=> d!1195183 (= (lemmaInv!1125 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) Unit!62404)))

(declare-fun b!4034721 () Bool)

(assert (=> b!4034721 (= e!2503558 (equivClasses!2851 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))))

(assert (= (and d!1195183 res!1642982) b!4034721))

(declare-fun m!4628319 () Bool)

(assert (=> d!1195183 m!4628319))

(declare-fun m!4628321 () Bool)

(assert (=> b!4034721 m!4628321))

(assert (=> b!4034144 d!1195183))

(declare-fun d!1195185 () Bool)

(declare-fun lt!1435252 () BalanceConc!25848)

(assert (=> d!1195185 (= (list!16082 lt!1435252) (originalCharacters!7516 (_1!24283 (v!39723 lt!1435020))))))

(assert (=> d!1195185 (= lt!1435252 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020)))))))

(assert (=> d!1195185 (= (charsOf!4732 (_1!24283 (v!39723 lt!1435020))) lt!1435252)))

(declare-fun b_lambda!117707 () Bool)

(assert (=> (not b_lambda!117707) (not d!1195185)))

(declare-fun tb!242331 () Bool)

(declare-fun t!334434 () Bool)

(assert (=> (and b!4034157 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) t!334434) tb!242331))

(declare-fun b!4034722 () Bool)

(declare-fun e!2503559 () Bool)

(declare-fun tp!1225854 () Bool)

(assert (=> b!4034722 (= e!2503559 (and (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020)))))) tp!1225854))))

(declare-fun result!293770 () Bool)

(assert (=> tb!242331 (= result!293770 (and (inv!57743 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020))))) e!2503559))))

(assert (= tb!242331 b!4034722))

(declare-fun m!4628323 () Bool)

(assert (=> b!4034722 m!4628323))

(declare-fun m!4628325 () Bool)

(assert (=> tb!242331 m!4628325))

(assert (=> d!1195185 t!334434))

(declare-fun b_and!310043 () Bool)

(assert (= b_and!310039 (and (=> t!334434 result!293770) b_and!310043)))

(declare-fun tb!242333 () Bool)

(declare-fun t!334436 () Bool)

(assert (=> (and b!4034142 (= (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) t!334436) tb!242333))

(declare-fun result!293772 () Bool)

(assert (= result!293772 result!293770))

(assert (=> d!1195185 t!334436))

(declare-fun b_and!310045 () Bool)

(assert (= b_and!310041 (and (=> t!334436 result!293772) b_and!310045)))

(declare-fun m!4628327 () Bool)

(assert (=> d!1195185 m!4628327))

(declare-fun m!4628329 () Bool)

(assert (=> d!1195185 m!4628329))

(assert (=> b!4034144 d!1195185))

(declare-fun d!1195187 () Bool)

(assert (=> d!1195187 (= (size!32301 token!484) (size!32302 (originalCharacters!7516 token!484)))))

(declare-fun Unit!62405 () Unit!62397)

(assert (=> d!1195187 (= (lemmaCharactersSize!1435 token!484) Unit!62405)))

(declare-fun bs!590442 () Bool)

(assert (= bs!590442 d!1195187))

(assert (=> bs!590442 m!4627531))

(assert (=> b!4034144 d!1195187))

(declare-fun d!1195189 () Bool)

(assert (=> d!1195189 (ruleValid!2846 thiss!21717 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))

(declare-fun lt!1435253 () Unit!62397)

(assert (=> d!1195189 (= lt!1435253 (choose!24437 thiss!21717 (rule!9982 (_1!24283 (v!39723 lt!1435020))) rules!2999))))

(assert (=> d!1195189 (contains!8580 rules!2999 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))

(assert (=> d!1195189 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1916 thiss!21717 (rule!9982 (_1!24283 (v!39723 lt!1435020))) rules!2999) lt!1435253)))

(declare-fun bs!590443 () Bool)

(assert (= bs!590443 d!1195189))

(assert (=> bs!590443 m!4627457))

(declare-fun m!4628331 () Bool)

(assert (=> bs!590443 m!4628331))

(assert (=> bs!590443 m!4627463))

(assert (=> b!4034144 d!1195189))

(declare-fun d!1195191 () Bool)

(assert (=> d!1195191 (= (size!32301 (_1!24283 (v!39723 lt!1435020))) (size!32302 (originalCharacters!7516 (_1!24283 (v!39723 lt!1435020)))))))

(declare-fun Unit!62406 () Unit!62397)

(assert (=> d!1195191 (= (lemmaCharactersSize!1435 (_1!24283 (v!39723 lt!1435020))) Unit!62406)))

(declare-fun bs!590444 () Bool)

(assert (= bs!590444 d!1195191))

(declare-fun m!4628333 () Bool)

(assert (=> bs!590444 m!4628333))

(assert (=> b!4034144 d!1195191))

(declare-fun d!1195193 () Bool)

(declare-fun res!1642983 () Bool)

(declare-fun e!2503560 () Bool)

(assert (=> d!1195193 (=> (not res!1642983) (not e!2503560))))

(assert (=> d!1195193 (= res!1642983 (validRegex!5344 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))

(assert (=> d!1195193 (= (ruleValid!2846 thiss!21717 (rule!9982 (_1!24283 (v!39723 lt!1435020)))) e!2503560)))

(declare-fun b!4034723 () Bool)

(declare-fun res!1642984 () Bool)

(assert (=> b!4034723 (=> (not res!1642984) (not e!2503560))))

(assert (=> b!4034723 (= res!1642984 (not (nullable!4144 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))))

(declare-fun b!4034724 () Bool)

(assert (=> b!4034724 (= e!2503560 (not (= (tag!7776 (rule!9982 (_1!24283 (v!39723 lt!1435020)))) (String!49449 ""))))))

(assert (= (and d!1195193 res!1642983) b!4034723))

(assert (= (and b!4034723 res!1642984) b!4034724))

(declare-fun m!4628335 () Bool)

(assert (=> d!1195193 m!4628335))

(declare-fun m!4628337 () Bool)

(assert (=> b!4034723 m!4628337))

(assert (=> b!4034144 d!1195193))

(declare-fun b!4034727 () Bool)

(declare-fun res!1642985 () Bool)

(declare-fun e!2503561 () Bool)

(assert (=> b!4034727 (=> (not res!1642985) (not e!2503561))))

(declare-fun lt!1435254 () List!43341)

(assert (=> b!4034727 (= res!1642985 (= (size!32302 lt!1435254) (+ (size!32302 prefix!494) (size!32302 newSuffix!27))))))

(declare-fun b!4034728 () Bool)

(assert (=> b!4034728 (= e!2503561 (or (not (= newSuffix!27 Nil!43217)) (= lt!1435254 prefix!494)))))

(declare-fun b!4034726 () Bool)

(declare-fun e!2503562 () List!43341)

(assert (=> b!4034726 (= e!2503562 (Cons!43217 (h!48637 prefix!494) (++!11318 (t!334404 prefix!494) newSuffix!27)))))

(declare-fun d!1195195 () Bool)

(assert (=> d!1195195 e!2503561))

(declare-fun res!1642986 () Bool)

(assert (=> d!1195195 (=> (not res!1642986) (not e!2503561))))

(assert (=> d!1195195 (= res!1642986 (= (content!6566 lt!1435254) ((_ map or) (content!6566 prefix!494) (content!6566 newSuffix!27))))))

(assert (=> d!1195195 (= lt!1435254 e!2503562)))

(declare-fun c!696789 () Bool)

(assert (=> d!1195195 (= c!696789 ((_ is Nil!43217) prefix!494))))

(assert (=> d!1195195 (= (++!11318 prefix!494 newSuffix!27) lt!1435254)))

(declare-fun b!4034725 () Bool)

(assert (=> b!4034725 (= e!2503562 newSuffix!27)))

(assert (= (and d!1195195 c!696789) b!4034725))

(assert (= (and d!1195195 (not c!696789)) b!4034726))

(assert (= (and d!1195195 res!1642986) b!4034727))

(assert (= (and b!4034727 res!1642985) b!4034728))

(declare-fun m!4628339 () Bool)

(assert (=> b!4034727 m!4628339))

(assert (=> b!4034727 m!4627509))

(assert (=> b!4034727 m!4627535))

(declare-fun m!4628341 () Bool)

(assert (=> b!4034726 m!4628341))

(declare-fun m!4628343 () Bool)

(assert (=> d!1195195 m!4628343))

(assert (=> d!1195195 m!4627847))

(declare-fun m!4628345 () Bool)

(assert (=> d!1195195 m!4628345))

(assert (=> b!4034154 d!1195195))

(declare-fun b!4034731 () Bool)

(declare-fun res!1642987 () Bool)

(declare-fun e!2503563 () Bool)

(assert (=> b!4034731 (=> (not res!1642987) (not e!2503563))))

(declare-fun lt!1435255 () List!43341)

(assert (=> b!4034731 (= res!1642987 (= (size!32302 lt!1435255) (+ (size!32302 lt!1435037) (size!32302 newSuffixResult!27))))))

(declare-fun b!4034732 () Bool)

(assert (=> b!4034732 (= e!2503563 (or (not (= newSuffixResult!27 Nil!43217)) (= lt!1435255 lt!1435037)))))

(declare-fun b!4034730 () Bool)

(declare-fun e!2503564 () List!43341)

(assert (=> b!4034730 (= e!2503564 (Cons!43217 (h!48637 lt!1435037) (++!11318 (t!334404 lt!1435037) newSuffixResult!27)))))

(declare-fun d!1195197 () Bool)

(assert (=> d!1195197 e!2503563))

(declare-fun res!1642988 () Bool)

(assert (=> d!1195197 (=> (not res!1642988) (not e!2503563))))

(assert (=> d!1195197 (= res!1642988 (= (content!6566 lt!1435255) ((_ map or) (content!6566 lt!1435037) (content!6566 newSuffixResult!27))))))

(assert (=> d!1195197 (= lt!1435255 e!2503564)))

(declare-fun c!696790 () Bool)

(assert (=> d!1195197 (= c!696790 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195197 (= (++!11318 lt!1435037 newSuffixResult!27) lt!1435255)))

(declare-fun b!4034729 () Bool)

(assert (=> b!4034729 (= e!2503564 newSuffixResult!27)))

(assert (= (and d!1195197 c!696790) b!4034729))

(assert (= (and d!1195197 (not c!696790)) b!4034730))

(assert (= (and d!1195197 res!1642988) b!4034731))

(assert (= (and b!4034731 res!1642987) b!4034732))

(declare-fun m!4628347 () Bool)

(assert (=> b!4034731 m!4628347))

(assert (=> b!4034731 m!4627507))

(declare-fun m!4628349 () Bool)

(assert (=> b!4034731 m!4628349))

(declare-fun m!4628351 () Bool)

(assert (=> b!4034730 m!4628351))

(declare-fun m!4628353 () Bool)

(assert (=> d!1195197 m!4628353))

(assert (=> d!1195197 m!4627949))

(declare-fun m!4628355 () Bool)

(assert (=> d!1195197 m!4628355))

(assert (=> b!4034154 d!1195197))

(declare-fun b!4034735 () Bool)

(declare-fun res!1642989 () Bool)

(declare-fun e!2503565 () Bool)

(assert (=> b!4034735 (=> (not res!1642989) (not e!2503565))))

(declare-fun lt!1435256 () List!43341)

(assert (=> b!4034735 (= res!1642989 (= (size!32302 lt!1435256) (+ (size!32302 lt!1435019) (size!32302 (_2!24283 (v!39723 lt!1435020))))))))

(declare-fun b!4034736 () Bool)

(assert (=> b!4034736 (= e!2503565 (or (not (= (_2!24283 (v!39723 lt!1435020)) Nil!43217)) (= lt!1435256 lt!1435019)))))

(declare-fun b!4034734 () Bool)

(declare-fun e!2503566 () List!43341)

(assert (=> b!4034734 (= e!2503566 (Cons!43217 (h!48637 lt!1435019) (++!11318 (t!334404 lt!1435019) (_2!24283 (v!39723 lt!1435020)))))))

(declare-fun d!1195199 () Bool)

(assert (=> d!1195199 e!2503565))

(declare-fun res!1642990 () Bool)

(assert (=> d!1195199 (=> (not res!1642990) (not e!2503565))))

(assert (=> d!1195199 (= res!1642990 (= (content!6566 lt!1435256) ((_ map or) (content!6566 lt!1435019) (content!6566 (_2!24283 (v!39723 lt!1435020))))))))

(assert (=> d!1195199 (= lt!1435256 e!2503566)))

(declare-fun c!696791 () Bool)

(assert (=> d!1195199 (= c!696791 ((_ is Nil!43217) lt!1435019))))

(assert (=> d!1195199 (= (++!11318 lt!1435019 (_2!24283 (v!39723 lt!1435020))) lt!1435256)))

(declare-fun b!4034733 () Bool)

(assert (=> b!4034733 (= e!2503566 (_2!24283 (v!39723 lt!1435020)))))

(assert (= (and d!1195199 c!696791) b!4034733))

(assert (= (and d!1195199 (not c!696791)) b!4034734))

(assert (= (and d!1195199 res!1642990) b!4034735))

(assert (= (and b!4034735 res!1642989) b!4034736))

(declare-fun m!4628357 () Bool)

(assert (=> b!4034735 m!4628357))

(declare-fun m!4628359 () Bool)

(assert (=> b!4034735 m!4628359))

(declare-fun m!4628361 () Bool)

(assert (=> b!4034735 m!4628361))

(declare-fun m!4628363 () Bool)

(assert (=> b!4034734 m!4628363))

(declare-fun m!4628365 () Bool)

(assert (=> d!1195199 m!4628365))

(declare-fun m!4628367 () Bool)

(assert (=> d!1195199 m!4628367))

(declare-fun m!4628369 () Bool)

(assert (=> d!1195199 m!4628369))

(assert (=> b!4034143 d!1195199))

(declare-fun d!1195201 () Bool)

(declare-fun res!1642993 () Bool)

(declare-fun e!2503569 () Bool)

(assert (=> d!1195201 (=> (not res!1642993) (not e!2503569))))

(declare-fun rulesValid!2686 (LexerInterface!6505 List!43343) Bool)

(assert (=> d!1195201 (= res!1642993 (rulesValid!2686 thiss!21717 rules!2999))))

(assert (=> d!1195201 (= (rulesInvariant!5848 thiss!21717 rules!2999) e!2503569)))

(declare-fun b!4034739 () Bool)

(declare-datatypes ((List!43345 0))(
  ( (Nil!43221) (Cons!43221 (h!48641 String!49448) (t!334444 List!43345)) )
))
(declare-fun noDuplicateTag!2687 (LexerInterface!6505 List!43343 List!43345) Bool)

(assert (=> b!4034739 (= e!2503569 (noDuplicateTag!2687 thiss!21717 rules!2999 Nil!43221))))

(assert (= (and d!1195201 res!1642993) b!4034739))

(declare-fun m!4628371 () Bool)

(assert (=> d!1195201 m!4628371))

(declare-fun m!4628373 () Bool)

(assert (=> b!4034739 m!4628373))

(assert (=> b!4034132 d!1195201))

(declare-fun b!4034740 () Bool)

(declare-fun e!2503570 () Bool)

(declare-fun e!2503571 () Bool)

(assert (=> b!4034740 (= e!2503570 e!2503571)))

(declare-fun res!1642994 () Bool)

(assert (=> b!4034740 (=> (not res!1642994) (not e!2503571))))

(assert (=> b!4034740 (= res!1642994 (not ((_ is Nil!43217) suffix!1299)))))

(declare-fun b!4034741 () Bool)

(declare-fun res!1642997 () Bool)

(assert (=> b!4034741 (=> (not res!1642997) (not e!2503571))))

(assert (=> b!4034741 (= res!1642997 (= (head!8547 newSuffix!27) (head!8547 suffix!1299)))))

(declare-fun d!1195203 () Bool)

(declare-fun e!2503572 () Bool)

(assert (=> d!1195203 e!2503572))

(declare-fun res!1642996 () Bool)

(assert (=> d!1195203 (=> res!1642996 e!2503572)))

(declare-fun lt!1435257 () Bool)

(assert (=> d!1195203 (= res!1642996 (not lt!1435257))))

(assert (=> d!1195203 (= lt!1435257 e!2503570)))

(declare-fun res!1642995 () Bool)

(assert (=> d!1195203 (=> res!1642995 e!2503570)))

(assert (=> d!1195203 (= res!1642995 ((_ is Nil!43217) newSuffix!27))))

(assert (=> d!1195203 (= (isPrefix!4003 newSuffix!27 suffix!1299) lt!1435257)))

(declare-fun b!4034742 () Bool)

(assert (=> b!4034742 (= e!2503571 (isPrefix!4003 (tail!6279 newSuffix!27) (tail!6279 suffix!1299)))))

(declare-fun b!4034743 () Bool)

(assert (=> b!4034743 (= e!2503572 (>= (size!32302 suffix!1299) (size!32302 newSuffix!27)))))

(assert (= (and d!1195203 (not res!1642995)) b!4034740))

(assert (= (and b!4034740 res!1642994) b!4034741))

(assert (= (and b!4034741 res!1642997) b!4034742))

(assert (= (and d!1195203 (not res!1642996)) b!4034743))

(declare-fun m!4628375 () Bool)

(assert (=> b!4034741 m!4628375))

(declare-fun m!4628377 () Bool)

(assert (=> b!4034741 m!4628377))

(declare-fun m!4628379 () Bool)

(assert (=> b!4034742 m!4628379))

(declare-fun m!4628381 () Bool)

(assert (=> b!4034742 m!4628381))

(assert (=> b!4034742 m!4628379))

(assert (=> b!4034742 m!4628381))

(declare-fun m!4628383 () Bool)

(assert (=> b!4034742 m!4628383))

(assert (=> b!4034743 m!4627533))

(assert (=> b!4034743 m!4627535))

(assert (=> b!4034153 d!1195203))

(declare-fun b!4034748 () Bool)

(declare-fun e!2503575 () Bool)

(declare-fun tp!1225857 () Bool)

(assert (=> b!4034748 (= e!2503575 (and tp_is_empty!20613 tp!1225857))))

(assert (=> b!4034147 (= tp!1225806 e!2503575)))

(assert (= (and b!4034147 ((_ is Cons!43217) (t!334404 newSuffix!27))) b!4034748))

(declare-fun b!4034749 () Bool)

(declare-fun e!2503576 () Bool)

(declare-fun tp!1225858 () Bool)

(assert (=> b!4034749 (= e!2503576 (and tp_is_empty!20613 tp!1225858))))

(assert (=> b!4034131 (= tp!1225799 e!2503576)))

(assert (= (and b!4034131 ((_ is Cons!43217) (t!334404 newSuffixResult!27))) b!4034749))

(declare-fun b!4034763 () Bool)

(declare-fun e!2503579 () Bool)

(declare-fun tp!1225870 () Bool)

(declare-fun tp!1225872 () Bool)

(assert (=> b!4034763 (= e!2503579 (and tp!1225870 tp!1225872))))

(assert (=> b!4034152 (= tp!1225798 e!2503579)))

(declare-fun b!4034762 () Bool)

(declare-fun tp!1225873 () Bool)

(assert (=> b!4034762 (= e!2503579 tp!1225873)))

(declare-fun b!4034760 () Bool)

(assert (=> b!4034760 (= e!2503579 tp_is_empty!20613)))

(declare-fun b!4034761 () Bool)

(declare-fun tp!1225869 () Bool)

(declare-fun tp!1225871 () Bool)

(assert (=> b!4034761 (= e!2503579 (and tp!1225869 tp!1225871))))

(assert (= (and b!4034152 ((_ is ElementMatch!11821) (regex!6916 (rule!9982 token!484)))) b!4034760))

(assert (= (and b!4034152 ((_ is Concat!18968) (regex!6916 (rule!9982 token!484)))) b!4034761))

(assert (= (and b!4034152 ((_ is Star!11821) (regex!6916 (rule!9982 token!484)))) b!4034762))

(assert (= (and b!4034152 ((_ is Union!11821) (regex!6916 (rule!9982 token!484)))) b!4034763))

(declare-fun b!4034774 () Bool)

(declare-fun b_free!112437 () Bool)

(declare-fun b_next!113141 () Bool)

(assert (=> b!4034774 (= b_free!112437 (not b_next!113141))))

(declare-fun tb!242335 () Bool)

(declare-fun t!334438 () Bool)

(assert (=> (and b!4034774 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) t!334438) tb!242335))

(declare-fun result!293780 () Bool)

(assert (= result!293780 result!293746))

(assert (=> d!1195091 t!334438))

(declare-fun tp!1225883 () Bool)

(declare-fun b_and!310047 () Bool)

(assert (=> b!4034774 (= tp!1225883 (and (=> t!334438 result!293780) b_and!310047))))

(declare-fun b_free!112439 () Bool)

(declare-fun b_next!113143 () Bool)

(assert (=> b!4034774 (= b_free!112439 (not b_next!113143))))

(declare-fun tb!242337 () Bool)

(declare-fun t!334440 () Bool)

(assert (=> (and b!4034774 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) t!334440) tb!242337))

(declare-fun result!293782 () Bool)

(assert (= result!293782 result!293764))

(assert (=> b!4034605 t!334440))

(assert (=> d!1195177 t!334440))

(declare-fun tb!242339 () Bool)

(declare-fun t!334442 () Bool)

(assert (=> (and b!4034774 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) t!334442) tb!242339))

(declare-fun result!293784 () Bool)

(assert (= result!293784 result!293770))

(assert (=> d!1195185 t!334442))

(declare-fun tp!1225885 () Bool)

(declare-fun b_and!310049 () Bool)

(assert (=> b!4034774 (= tp!1225885 (and (=> t!334440 result!293782) (=> t!334442 result!293784) b_and!310049))))

(declare-fun e!2503590 () Bool)

(assert (=> b!4034774 (= e!2503590 (and tp!1225883 tp!1225885))))

(declare-fun b!4034773 () Bool)

(declare-fun tp!1225884 () Bool)

(declare-fun e!2503589 () Bool)

(assert (=> b!4034773 (= e!2503589 (and tp!1225884 (inv!57735 (tag!7776 (h!48639 (t!334406 rules!2999)))) (inv!57738 (transformation!6916 (h!48639 (t!334406 rules!2999)))) e!2503590))))

(declare-fun b!4034772 () Bool)

(declare-fun e!2503588 () Bool)

(declare-fun tp!1225882 () Bool)

(assert (=> b!4034772 (= e!2503588 (and e!2503589 tp!1225882))))

(assert (=> b!4034129 (= tp!1225804 e!2503588)))

(assert (= b!4034773 b!4034774))

(assert (= b!4034772 b!4034773))

(assert (= (and b!4034129 ((_ is Cons!43219) (t!334406 rules!2999))) b!4034772))

(declare-fun m!4628385 () Bool)

(assert (=> b!4034773 m!4628385))

(declare-fun m!4628387 () Bool)

(assert (=> b!4034773 m!4628387))

(declare-fun b!4034775 () Bool)

(declare-fun e!2503592 () Bool)

(declare-fun tp!1225886 () Bool)

(assert (=> b!4034775 (= e!2503592 (and tp_is_empty!20613 tp!1225886))))

(assert (=> b!4034155 (= tp!1225803 e!2503592)))

(assert (= (and b!4034155 ((_ is Cons!43217) (t!334404 suffix!1299))) b!4034775))

(declare-fun b!4034776 () Bool)

(declare-fun e!2503593 () Bool)

(declare-fun tp!1225887 () Bool)

(assert (=> b!4034776 (= e!2503593 (and tp_is_empty!20613 tp!1225887))))

(assert (=> b!4034149 (= tp!1225795 e!2503593)))

(assert (= (and b!4034149 ((_ is Cons!43217) (t!334404 suffixResult!105))) b!4034776))

(declare-fun b!4034780 () Bool)

(declare-fun e!2503594 () Bool)

(declare-fun tp!1225889 () Bool)

(declare-fun tp!1225891 () Bool)

(assert (=> b!4034780 (= e!2503594 (and tp!1225889 tp!1225891))))

(assert (=> b!4034138 (= tp!1225796 e!2503594)))

(declare-fun b!4034779 () Bool)

(declare-fun tp!1225892 () Bool)

(assert (=> b!4034779 (= e!2503594 tp!1225892)))

(declare-fun b!4034777 () Bool)

(assert (=> b!4034777 (= e!2503594 tp_is_empty!20613)))

(declare-fun b!4034778 () Bool)

(declare-fun tp!1225888 () Bool)

(declare-fun tp!1225890 () Bool)

(assert (=> b!4034778 (= e!2503594 (and tp!1225888 tp!1225890))))

(assert (= (and b!4034138 ((_ is ElementMatch!11821) (regex!6916 (h!48639 rules!2999)))) b!4034777))

(assert (= (and b!4034138 ((_ is Concat!18968) (regex!6916 (h!48639 rules!2999)))) b!4034778))

(assert (= (and b!4034138 ((_ is Star!11821) (regex!6916 (h!48639 rules!2999)))) b!4034779))

(assert (= (and b!4034138 ((_ is Union!11821) (regex!6916 (h!48639 rules!2999)))) b!4034780))

(declare-fun b!4034781 () Bool)

(declare-fun e!2503595 () Bool)

(declare-fun tp!1225893 () Bool)

(assert (=> b!4034781 (= e!2503595 (and tp_is_empty!20613 tp!1225893))))

(assert (=> b!4034148 (= tp!1225800 e!2503595)))

(assert (= (and b!4034148 ((_ is Cons!43217) (t!334404 prefix!494))) b!4034781))

(declare-fun b!4034782 () Bool)

(declare-fun e!2503596 () Bool)

(declare-fun tp!1225894 () Bool)

(assert (=> b!4034782 (= e!2503596 (and tp_is_empty!20613 tp!1225894))))

(assert (=> b!4034137 (= tp!1225794 e!2503596)))

(assert (= (and b!4034137 ((_ is Cons!43217) (originalCharacters!7516 token!484))) b!4034782))

(declare-fun b_lambda!117709 () Bool)

(assert (= b_lambda!117695 (or (and b!4034157 b_free!112425 (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) (and b!4034142 b_free!112429) (and b!4034774 b_free!112437 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) b_lambda!117709)))

(declare-fun b_lambda!117711 () Bool)

(assert (= b_lambda!117705 (or (and b!4034157 b_free!112427 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 token!484))))) (and b!4034142 b_free!112431) (and b!4034774 b_free!112439 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 token!484))))) b_lambda!117711)))

(declare-fun b_lambda!117713 () Bool)

(assert (= b_lambda!117703 (or (and b!4034157 b_free!112427 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 token!484))))) (and b!4034142 b_free!112431) (and b!4034774 b_free!112439 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 token!484))))) b_lambda!117713)))

(check-sat (not b!4034581) (not b!4034582) (not b!4034734) (not b!4034723) (not b!4034700) (not b!4034351) (not b!4034438) (not b!4034360) (not d!1195157) (not b!4034651) (not b!4034708) (not d!1195107) (not d!1195051) (not b!4034597) (not b!4034762) tp_is_empty!20613 (not d!1195121) (not d!1195115) (not d!1195139) (not b!4034587) (not b!4034362) (not b!4034776) (not b!4034316) (not b_next!113135) (not d!1195127) (not b!4034594) (not d!1195187) (not b!4034435) (not b!4034720) (not b!4034413) (not b_lambda!117709) (not tb!242331) (not b!4034703) (not b!4034585) (not b!4034571) (not b!4034314) (not b!4034359) b_and!310043 (not b!4034412) (not d!1195167) (not b!4034743) (not b!4034443) (not b!4034357) (not b!4034624) (not b!4034586) (not b!4034731) (not d!1195177) (not b!4034641) (not d!1195019) (not d!1195179) (not d!1195027) (not b!4034589) (not d!1195133) (not b!4034595) (not b!4034572) (not b!4034414) (not b!4034782) (not b!4034643) (not b!4034434) (not d!1195085) (not d!1195155) (not d!1195191) (not b!4034741) (not b_lambda!117711) (not d!1195163) (not b!4034579) (not b!4034493) (not b!4034574) (not d!1195147) (not b!4034573) (not b!4034311) (not b_next!113141) (not b!4034442) (not b!4034763) (not d!1195199) (not b!4034611) (not d!1195169) (not b!4034709) (not d!1195145) b_and!310045 (not d!1195195) (not b!4034727) (not b!4034310) (not b!4034702) (not d!1195159) (not b!4034309) (not b!4034742) (not b_next!113133) (not b!4034650) (not b!4034635) (not d!1195151) (not d!1195041) (not b!4034590) (not b!4034712) (not d!1195181) (not b!4034714) (not d!1195143) (not d!1195043) (not b!4034710) (not d!1195089) (not tb!242327) (not b!4034739) (not d!1195185) (not b!4034748) (not bm!287015) (not b!4034591) (not b!4034575) (not b!4034696) (not b!4034315) (not b!4034749) (not b!4034780) (not d!1195161) (not b!4034308) (not d!1194963) (not d!1195183) (not b!4034583) (not d!1195201) b_and!310027 (not b!4034721) (not b!4034772) (not tb!242317) b_and!310029 (not b!4034646) (not b!4034623) (not b!4034663) (not b!4034644) (not b!4034638) (not d!1195135) (not b!4034761) (not d!1195003) (not b!4034605) (not b!4034735) (not b!4034775) (not b!4034773) (not b!4034649) (not b!4034726) (not b!4034358) (not d!1195111) (not b!4034628) b_and!310049 (not b!4034312) (not b!4034658) (not b!4034578) (not b!4034593) (not b!4034706) (not b!4034577) (not d!1195197) (not b!4034639) (not b!4034600) (not b!4034629) b_and!310047 (not b!4034781) (not d!1195193) (not b!4034640) (not bm!287007) (not b!4034363) (not b_next!113143) (not d!1195045) (not bm!287008) (not b!4034626) (not b!4034722) (not b!4034779) (not d!1195035) (not d!1195175) (not b_next!113131) (not b!4034356) (not d!1195095) (not b!4034489) (not b!4034654) (not b_lambda!117707) (not b_lambda!117713) (not b!4034439) (not b!4034606) (not d!1195189) (not b!4034697) (not b!4034653) (not d!1195129) (not b!4034730) (not b!4034778) (not b!4034352) (not b!4034364) (not b_next!113129))
(check-sat (not b_next!113135) b_and!310043 (not b_next!113141) b_and!310045 (not b_next!113133) b_and!310027 b_and!310029 b_and!310049 (not b_next!113131) (not b_next!113129) b_and!310047 (not b_next!113143))
(get-model)

(declare-fun d!1195219 () Bool)

(assert (=> d!1195219 true))

(declare-fun order!22591 () Int)

(declare-fun lambda!127266 () Int)

(declare-fun order!22593 () Int)

(declare-fun dynLambda!18319 (Int Int) Int)

(declare-fun dynLambda!18320 (Int Int) Int)

(assert (=> d!1195219 (< (dynLambda!18319 order!22591 (toChars!9303 (transformation!6916 (rule!9982 token!484)))) (dynLambda!18320 order!22593 lambda!127266))))

(assert (=> d!1195219 true))

(declare-fun order!22595 () Int)

(declare-fun dynLambda!18321 (Int Int) Int)

(assert (=> d!1195219 (< (dynLambda!18321 order!22595 (toValue!9444 (transformation!6916 (rule!9982 token!484)))) (dynLambda!18320 order!22593 lambda!127266))))

(declare-fun Forall!1484 (Int) Bool)

(assert (=> d!1195219 (= (semiInverseModEq!2952 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) (Forall!1484 lambda!127266))))

(declare-fun bs!590446 () Bool)

(assert (= bs!590446 d!1195219))

(declare-fun m!4628467 () Bool)

(assert (=> bs!590446 m!4628467))

(assert (=> d!1195157 d!1195219))

(declare-fun bs!590447 () Bool)

(declare-fun d!1195233 () Bool)

(assert (= bs!590447 (and d!1195233 d!1195219)))

(declare-fun lambda!127267 () Int)

(assert (=> bs!590447 (= (and (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) (= lambda!127267 lambda!127266))))

(assert (=> d!1195233 true))

(assert (=> d!1195233 (< (dynLambda!18319 order!22591 (toChars!9303 (transformation!6916 (h!48639 rules!2999)))) (dynLambda!18320 order!22593 lambda!127267))))

(assert (=> d!1195233 true))

(assert (=> d!1195233 (< (dynLambda!18321 order!22595 (toValue!9444 (transformation!6916 (h!48639 rules!2999)))) (dynLambda!18320 order!22593 lambda!127267))))

(assert (=> d!1195233 (= (semiInverseModEq!2952 (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (h!48639 rules!2999)))) (Forall!1484 lambda!127267))))

(declare-fun bs!590448 () Bool)

(assert (= bs!590448 d!1195233))

(declare-fun m!4628469 () Bool)

(assert (=> bs!590448 m!4628469))

(assert (=> d!1195127 d!1195233))

(declare-fun d!1195235 () Bool)

(declare-fun c!696826 () Bool)

(assert (=> d!1195235 (= c!696826 ((_ is Nil!43217) lt!1435218))))

(declare-fun e!2503659 () (InoxSet C!23828))

(assert (=> d!1195235 (= (content!6566 lt!1435218) e!2503659)))

(declare-fun b!4034888 () Bool)

(assert (=> b!4034888 (= e!2503659 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4034889 () Bool)

(assert (=> b!4034889 (= e!2503659 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435218) true) (content!6566 (t!334404 lt!1435218))))))

(assert (= (and d!1195235 c!696826) b!4034888))

(assert (= (and d!1195235 (not c!696826)) b!4034889))

(declare-fun m!4628471 () Bool)

(assert (=> b!4034889 m!4628471))

(declare-fun m!4628473 () Bool)

(assert (=> b!4034889 m!4628473))

(assert (=> d!1195133 d!1195235))

(declare-fun d!1195237 () Bool)

(declare-fun c!696827 () Bool)

(assert (=> d!1195237 (= c!696827 ((_ is Nil!43217) lt!1435037))))

(declare-fun e!2503660 () (InoxSet C!23828))

(assert (=> d!1195237 (= (content!6566 lt!1435037) e!2503660)))

(declare-fun b!4034890 () Bool)

(assert (=> b!4034890 (= e!2503660 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4034891 () Bool)

(assert (=> b!4034891 (= e!2503660 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435037) true) (content!6566 (t!334404 lt!1435037))))))

(assert (= (and d!1195237 c!696827) b!4034890))

(assert (= (and d!1195237 (not c!696827)) b!4034891))

(declare-fun m!4628475 () Bool)

(assert (=> b!4034891 m!4628475))

(declare-fun m!4628477 () Bool)

(assert (=> b!4034891 m!4628477))

(assert (=> d!1195133 d!1195237))

(declare-fun d!1195239 () Bool)

(declare-fun c!696828 () Bool)

(assert (=> d!1195239 (= c!696828 ((_ is Nil!43217) lt!1435038))))

(declare-fun e!2503661 () (InoxSet C!23828))

(assert (=> d!1195239 (= (content!6566 lt!1435038) e!2503661)))

(declare-fun b!4034892 () Bool)

(assert (=> b!4034892 (= e!2503661 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4034893 () Bool)

(assert (=> b!4034893 (= e!2503661 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435038) true) (content!6566 (t!334404 lt!1435038))))))

(assert (= (and d!1195239 c!696828) b!4034892))

(assert (= (and d!1195239 (not c!696828)) b!4034893))

(declare-fun m!4628479 () Bool)

(assert (=> b!4034893 m!4628479))

(declare-fun m!4628481 () Bool)

(assert (=> b!4034893 m!4628481))

(assert (=> d!1195133 d!1195239))

(declare-fun d!1195241 () Bool)

(declare-fun e!2503664 () Bool)

(assert (=> d!1195241 e!2503664))

(declare-fun res!1643033 () Bool)

(assert (=> d!1195241 (=> res!1643033 e!2503664)))

(assert (=> d!1195241 (= res!1643033 (isEmpty!25793 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(declare-fun lt!1435351 () Unit!62397)

(declare-fun choose!24439 (Regex!11821 List!43341) Unit!62397)

(assert (=> d!1195241 (= lt!1435351 (choose!24439 (regex!6916 (rule!9982 token!484)) lt!1435003))))

(assert (=> d!1195241 (validRegex!5344 (regex!6916 (rule!9982 token!484)))))

(assert (=> d!1195241 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1354 (regex!6916 (rule!9982 token!484)) lt!1435003) lt!1435351)))

(declare-fun b!4034896 () Bool)

(assert (=> b!4034896 (= e!2503664 (matchR!5774 (regex!6916 (rule!9982 token!484)) (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(assert (= (and d!1195241 (not res!1643033)) b!4034896))

(assert (=> d!1195241 m!4628161))

(assert (=> d!1195241 m!4627803))

(assert (=> d!1195241 m!4628125))

(assert (=> d!1195241 m!4627803))

(assert (=> d!1195241 m!4628127))

(declare-fun m!4628483 () Bool)

(assert (=> d!1195241 m!4628483))

(assert (=> d!1195241 m!4628273))

(assert (=> d!1195241 m!4628125))

(assert (=> b!4034896 m!4628125))

(assert (=> b!4034896 m!4627803))

(assert (=> b!4034896 m!4628125))

(assert (=> b!4034896 m!4627803))

(assert (=> b!4034896 m!4628127))

(assert (=> b!4034896 m!4628129))

(assert (=> b!4034573 d!1195241))

(declare-fun d!1195243 () Bool)

(assert (=> d!1195243 (= (isEmpty!25793 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))) ((_ is Nil!43217) (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(assert (=> b!4034573 d!1195243))

(declare-fun d!1195245 () Bool)

(assert (=> d!1195245 (= (seqFromList!5133 (_1!24285 lt!1435209)) (fromListB!2338 (_1!24285 lt!1435209)))))

(declare-fun bs!590449 () Bool)

(assert (= bs!590449 d!1195245))

(declare-fun m!4628485 () Bool)

(assert (=> bs!590449 m!4628485))

(assert (=> b!4034573 d!1195245))

(declare-fun b!4034925 () Bool)

(declare-fun e!2503682 () tuple2!42302)

(assert (=> b!4034925 (= e!2503682 (tuple2!42303 Nil!43217 lt!1435003))))

(declare-fun b!4034926 () Bool)

(declare-fun c!696845 () Bool)

(declare-fun call!287076 () Bool)

(assert (=> b!4034926 (= c!696845 call!287076)))

(declare-fun lt!1435414 () Unit!62397)

(declare-fun lt!1435423 () Unit!62397)

(assert (=> b!4034926 (= lt!1435414 lt!1435423)))

(assert (=> b!4034926 (= lt!1435003 Nil!43217)))

(declare-fun call!287071 () Unit!62397)

(assert (=> b!4034926 (= lt!1435423 call!287071)))

(declare-fun lt!1435408 () Unit!62397)

(declare-fun lt!1435428 () Unit!62397)

(assert (=> b!4034926 (= lt!1435408 lt!1435428)))

(declare-fun call!287075 () Bool)

(assert (=> b!4034926 call!287075))

(declare-fun call!287072 () Unit!62397)

(assert (=> b!4034926 (= lt!1435428 call!287072)))

(declare-fun e!2503685 () tuple2!42302)

(declare-fun e!2503681 () tuple2!42302)

(assert (=> b!4034926 (= e!2503685 e!2503681)))

(declare-fun b!4034927 () Bool)

(declare-fun e!2503686 () Bool)

(declare-fun e!2503683 () Bool)

(assert (=> b!4034927 (= e!2503686 e!2503683)))

(declare-fun res!1643039 () Bool)

(assert (=> b!4034927 (=> res!1643039 e!2503683)))

(declare-fun lt!1435434 () tuple2!42302)

(assert (=> b!4034927 (= res!1643039 (isEmpty!25793 (_1!24285 lt!1435434)))))

(declare-fun bm!287066 () Bool)

(declare-fun call!287073 () Regex!11821)

(declare-fun call!287078 () C!23828)

(assert (=> bm!287066 (= call!287073 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) call!287078))))

(declare-fun b!4034928 () Bool)

(assert (=> b!4034928 (= e!2503681 (tuple2!42303 Nil!43217 Nil!43217))))

(declare-fun bm!287067 () Bool)

(assert (=> bm!287067 (= call!287078 (head!8547 lt!1435003))))

(declare-fun b!4034929 () Bool)

(declare-fun lt!1435422 () tuple2!42302)

(assert (=> b!4034929 (= e!2503682 lt!1435422)))

(declare-fun b!4034930 () Bool)

(declare-fun e!2503688 () Unit!62397)

(declare-fun Unit!62407 () Unit!62397)

(assert (=> b!4034930 (= e!2503688 Unit!62407)))

(declare-fun b!4034931 () Bool)

(assert (=> b!4034931 (= e!2503683 (>= (size!32302 (_1!24285 lt!1435434)) (size!32302 Nil!43217)))))

(declare-fun b!4034932 () Bool)

(assert (=> b!4034932 (= e!2503681 (tuple2!42303 Nil!43217 lt!1435003))))

(declare-fun b!4034933 () Bool)

(declare-fun e!2503684 () tuple2!42302)

(assert (=> b!4034933 (= e!2503684 e!2503685)))

(declare-fun c!696844 () Bool)

(assert (=> b!4034933 (= c!696844 (= (size!32302 Nil!43217) (size!32302 lt!1435003)))))

(declare-fun d!1195247 () Bool)

(assert (=> d!1195247 e!2503686))

(declare-fun res!1643038 () Bool)

(assert (=> d!1195247 (=> (not res!1643038) (not e!2503686))))

(assert (=> d!1195247 (= res!1643038 (= (++!11318 (_1!24285 lt!1435434) (_2!24285 lt!1435434)) lt!1435003))))

(assert (=> d!1195247 (= lt!1435434 e!2503684)))

(declare-fun c!696843 () Bool)

(declare-fun lostCause!1004 (Regex!11821) Bool)

(assert (=> d!1195247 (= c!696843 (lostCause!1004 (regex!6916 (rule!9982 token!484))))))

(declare-fun lt!1435417 () Unit!62397)

(declare-fun Unit!62408 () Unit!62397)

(assert (=> d!1195247 (= lt!1435417 Unit!62408)))

(assert (=> d!1195247 (= (getSuffix!2420 lt!1435003 Nil!43217) lt!1435003)))

(declare-fun lt!1435433 () Unit!62397)

(declare-fun lt!1435424 () Unit!62397)

(assert (=> d!1195247 (= lt!1435433 lt!1435424)))

(declare-fun lt!1435421 () List!43341)

(assert (=> d!1195247 (= lt!1435003 lt!1435421)))

(assert (=> d!1195247 (= lt!1435424 (lemmaSamePrefixThenSameSuffix!2164 Nil!43217 lt!1435003 Nil!43217 lt!1435421 lt!1435003))))

(assert (=> d!1195247 (= lt!1435421 (getSuffix!2420 lt!1435003 Nil!43217))))

(declare-fun lt!1435409 () Unit!62397)

(declare-fun lt!1435411 () Unit!62397)

(assert (=> d!1195247 (= lt!1435409 lt!1435411)))

(assert (=> d!1195247 (isPrefix!4003 Nil!43217 (++!11318 Nil!43217 lt!1435003))))

(assert (=> d!1195247 (= lt!1435411 (lemmaConcatTwoListThenFirstIsPrefix!2838 Nil!43217 lt!1435003))))

(assert (=> d!1195247 (validRegex!5344 (regex!6916 (rule!9982 token!484)))))

(assert (=> d!1195247 (= (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)) lt!1435434)))

(declare-fun b!4034934 () Bool)

(declare-fun c!696842 () Bool)

(assert (=> b!4034934 (= c!696842 call!287076)))

(declare-fun lt!1435435 () Unit!62397)

(declare-fun lt!1435425 () Unit!62397)

(assert (=> b!4034934 (= lt!1435435 lt!1435425)))

(declare-fun lt!1435430 () C!23828)

(declare-fun lt!1435426 () List!43341)

(assert (=> b!4034934 (= (++!11318 (++!11318 Nil!43217 (Cons!43217 lt!1435430 Nil!43217)) lt!1435426) lt!1435003)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1248 (List!43341 C!23828 List!43341 List!43341) Unit!62397)

(assert (=> b!4034934 (= lt!1435425 (lemmaMoveElementToOtherListKeepsConcatEq!1248 Nil!43217 lt!1435430 lt!1435426 lt!1435003))))

(assert (=> b!4034934 (= lt!1435426 (tail!6279 lt!1435003))))

(assert (=> b!4034934 (= lt!1435430 (head!8547 lt!1435003))))

(declare-fun lt!1435429 () Unit!62397)

(declare-fun lt!1435413 () Unit!62397)

(assert (=> b!4034934 (= lt!1435429 lt!1435413)))

(assert (=> b!4034934 (isPrefix!4003 (++!11318 Nil!43217 (Cons!43217 (head!8547 (getSuffix!2420 lt!1435003 Nil!43217)) Nil!43217)) lt!1435003)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!630 (List!43341 List!43341) Unit!62397)

(assert (=> b!4034934 (= lt!1435413 (lemmaAddHeadSuffixToPrefixStillPrefix!630 Nil!43217 lt!1435003))))

(declare-fun lt!1435415 () Unit!62397)

(declare-fun lt!1435420 () Unit!62397)

(assert (=> b!4034934 (= lt!1435415 lt!1435420)))

(assert (=> b!4034934 (= lt!1435420 (lemmaAddHeadSuffixToPrefixStillPrefix!630 Nil!43217 lt!1435003))))

(declare-fun lt!1435416 () List!43341)

(assert (=> b!4034934 (= lt!1435416 (++!11318 Nil!43217 (Cons!43217 (head!8547 lt!1435003) Nil!43217)))))

(declare-fun lt!1435412 () Unit!62397)

(assert (=> b!4034934 (= lt!1435412 e!2503688)))

(declare-fun c!696841 () Bool)

(assert (=> b!4034934 (= c!696841 (= (size!32302 Nil!43217) (size!32302 lt!1435003)))))

(declare-fun lt!1435432 () Unit!62397)

(declare-fun lt!1435419 () Unit!62397)

(assert (=> b!4034934 (= lt!1435432 lt!1435419)))

(assert (=> b!4034934 (<= (size!32302 Nil!43217) (size!32302 lt!1435003))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!438 (List!43341 List!43341) Unit!62397)

(assert (=> b!4034934 (= lt!1435419 (lemmaIsPrefixThenSmallerEqSize!438 Nil!43217 lt!1435003))))

(declare-fun e!2503687 () tuple2!42302)

(assert (=> b!4034934 (= e!2503685 e!2503687)))

(declare-fun bm!287068 () Bool)

(assert (=> bm!287068 (= call!287076 (nullable!4144 (regex!6916 (rule!9982 token!484))))))

(declare-fun b!4034935 () Bool)

(declare-fun call!287077 () tuple2!42302)

(assert (=> b!4034935 (= e!2503687 call!287077)))

(declare-fun call!287074 () List!43341)

(declare-fun bm!287069 () Bool)

(assert (=> bm!287069 (= call!287077 (findLongestMatchInner!1381 call!287073 lt!1435416 (+ (size!32302 Nil!43217) 1) call!287074 lt!1435003 (size!32302 lt!1435003)))))

(declare-fun bm!287070 () Bool)

(assert (=> bm!287070 (= call!287072 (lemmaIsPrefixRefl!2570 lt!1435003 lt!1435003))))

(declare-fun b!4034936 () Bool)

(declare-fun Unit!62409 () Unit!62397)

(assert (=> b!4034936 (= e!2503688 Unit!62409)))

(declare-fun lt!1435431 () Unit!62397)

(assert (=> b!4034936 (= lt!1435431 call!287072)))

(assert (=> b!4034936 call!287075))

(declare-fun lt!1435418 () Unit!62397)

(assert (=> b!4034936 (= lt!1435418 lt!1435431)))

(declare-fun lt!1435427 () Unit!62397)

(assert (=> b!4034936 (= lt!1435427 call!287071)))

(assert (=> b!4034936 (= lt!1435003 Nil!43217)))

(declare-fun lt!1435410 () Unit!62397)

(assert (=> b!4034936 (= lt!1435410 lt!1435427)))

(assert (=> b!4034936 false))

(declare-fun bm!287071 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!914 (List!43341 List!43341 List!43341) Unit!62397)

(assert (=> bm!287071 (= call!287071 (lemmaIsPrefixSameLengthThenSameList!914 lt!1435003 Nil!43217 lt!1435003))))

(declare-fun b!4034937 () Bool)

(assert (=> b!4034937 (= e!2503687 e!2503682)))

(assert (=> b!4034937 (= lt!1435422 call!287077)))

(declare-fun c!696846 () Bool)

(assert (=> b!4034937 (= c!696846 (isEmpty!25793 (_1!24285 lt!1435422)))))

(declare-fun bm!287072 () Bool)

(assert (=> bm!287072 (= call!287075 (isPrefix!4003 lt!1435003 lt!1435003))))

(declare-fun b!4034938 () Bool)

(assert (=> b!4034938 (= e!2503684 (tuple2!42303 Nil!43217 lt!1435003))))

(declare-fun bm!287073 () Bool)

(assert (=> bm!287073 (= call!287074 (tail!6279 lt!1435003))))

(assert (= (and d!1195247 c!696843) b!4034938))

(assert (= (and d!1195247 (not c!696843)) b!4034933))

(assert (= (and b!4034933 c!696844) b!4034926))

(assert (= (and b!4034933 (not c!696844)) b!4034934))

(assert (= (and b!4034926 c!696845) b!4034928))

(assert (= (and b!4034926 (not c!696845)) b!4034932))

(assert (= (and b!4034934 c!696841) b!4034936))

(assert (= (and b!4034934 (not c!696841)) b!4034930))

(assert (= (and b!4034934 c!696842) b!4034937))

(assert (= (and b!4034934 (not c!696842)) b!4034935))

(assert (= (and b!4034937 c!696846) b!4034925))

(assert (= (and b!4034937 (not c!696846)) b!4034929))

(assert (= (or b!4034937 b!4034935) bm!287067))

(assert (= (or b!4034937 b!4034935) bm!287073))

(assert (= (or b!4034937 b!4034935) bm!287066))

(assert (= (or b!4034937 b!4034935) bm!287069))

(assert (= (or b!4034926 b!4034936) bm!287072))

(assert (= (or b!4034926 b!4034934) bm!287068))

(assert (= (or b!4034926 b!4034936) bm!287071))

(assert (= (or b!4034926 b!4034936) bm!287070))

(assert (= (and d!1195247 res!1643038) b!4034927))

(assert (= (and b!4034927 (not res!1643039)) b!4034931))

(declare-fun m!4628487 () Bool)

(assert (=> b!4034937 m!4628487))

(assert (=> bm!287068 m!4628275))

(assert (=> bm!287070 m!4627543))

(declare-fun m!4628489 () Bool)

(assert (=> b!4034927 m!4628489))

(declare-fun m!4628491 () Bool)

(assert (=> bm!287066 m!4628491))

(declare-fun m!4628493 () Bool)

(assert (=> b!4034934 m!4628493))

(declare-fun m!4628495 () Bool)

(assert (=> b!4034934 m!4628495))

(assert (=> b!4034934 m!4628179))

(declare-fun m!4628497 () Bool)

(assert (=> b!4034934 m!4628497))

(declare-fun m!4628499 () Bool)

(assert (=> b!4034934 m!4628499))

(declare-fun m!4628501 () Bool)

(assert (=> b!4034934 m!4628501))

(assert (=> b!4034934 m!4628495))

(declare-fun m!4628503 () Bool)

(assert (=> b!4034934 m!4628503))

(assert (=> b!4034934 m!4628125))

(declare-fun m!4628505 () Bool)

(assert (=> b!4034934 m!4628505))

(declare-fun m!4628507 () Bool)

(assert (=> b!4034934 m!4628507))

(declare-fun m!4628509 () Bool)

(assert (=> b!4034934 m!4628509))

(assert (=> b!4034934 m!4628499))

(assert (=> b!4034934 m!4628507))

(declare-fun m!4628511 () Bool)

(assert (=> b!4034934 m!4628511))

(assert (=> b!4034934 m!4628177))

(assert (=> b!4034934 m!4627803))

(declare-fun m!4628513 () Bool)

(assert (=> d!1195247 m!4628513))

(assert (=> d!1195247 m!4628273))

(assert (=> d!1195247 m!4628495))

(declare-fun m!4628515 () Bool)

(assert (=> d!1195247 m!4628515))

(declare-fun m!4628517 () Bool)

(assert (=> d!1195247 m!4628517))

(assert (=> d!1195247 m!4628515))

(declare-fun m!4628519 () Bool)

(assert (=> d!1195247 m!4628519))

(declare-fun m!4628521 () Bool)

(assert (=> d!1195247 m!4628521))

(declare-fun m!4628523 () Bool)

(assert (=> d!1195247 m!4628523))

(declare-fun m!4628525 () Bool)

(assert (=> b!4034931 m!4628525))

(assert (=> b!4034931 m!4628125))

(assert (=> bm!287073 m!4628179))

(assert (=> bm!287072 m!4627541))

(assert (=> bm!287069 m!4627803))

(declare-fun m!4628527 () Bool)

(assert (=> bm!287069 m!4628527))

(assert (=> bm!287067 m!4628177))

(declare-fun m!4628529 () Bool)

(assert (=> bm!287071 m!4628529))

(assert (=> b!4034573 d!1195247))

(declare-fun d!1195249 () Bool)

(declare-fun lt!1435438 () Int)

(assert (=> d!1195249 (= lt!1435438 (size!32302 (list!16082 (seqFromList!5133 (_1!24285 lt!1435209)))))))

(declare-fun size!32305 (Conc!13127) Int)

(assert (=> d!1195249 (= lt!1435438 (size!32305 (c!696700 (seqFromList!5133 (_1!24285 lt!1435209)))))))

(assert (=> d!1195249 (= (size!32304 (seqFromList!5133 (_1!24285 lt!1435209))) lt!1435438)))

(declare-fun bs!590450 () Bool)

(assert (= bs!590450 d!1195249))

(assert (=> bs!590450 m!4628153))

(declare-fun m!4628531 () Bool)

(assert (=> bs!590450 m!4628531))

(assert (=> bs!590450 m!4628531))

(declare-fun m!4628533 () Bool)

(assert (=> bs!590450 m!4628533))

(declare-fun m!4628535 () Bool)

(assert (=> bs!590450 m!4628535))

(assert (=> b!4034573 d!1195249))

(declare-fun d!1195251 () Bool)

(declare-fun lt!1435439 () Int)

(assert (=> d!1195251 (>= lt!1435439 0)))

(declare-fun e!2503689 () Int)

(assert (=> d!1195251 (= lt!1435439 e!2503689)))

(declare-fun c!696847 () Bool)

(assert (=> d!1195251 (= c!696847 ((_ is Nil!43217) Nil!43217))))

(assert (=> d!1195251 (= (size!32302 Nil!43217) lt!1435439)))

(declare-fun b!4034939 () Bool)

(assert (=> b!4034939 (= e!2503689 0)))

(declare-fun b!4034940 () Bool)

(assert (=> b!4034940 (= e!2503689 (+ 1 (size!32302 (t!334404 Nil!43217))))))

(assert (= (and d!1195251 c!696847) b!4034939))

(assert (= (and d!1195251 (not c!696847)) b!4034940))

(declare-fun m!4628537 () Bool)

(assert (=> b!4034940 m!4628537))

(assert (=> b!4034573 d!1195251))

(declare-fun bs!590451 () Bool)

(declare-fun d!1195253 () Bool)

(assert (= bs!590451 (and d!1195253 d!1195219)))

(declare-fun lambda!127270 () Int)

(assert (=> bs!590451 (= lambda!127270 lambda!127266)))

(declare-fun bs!590452 () Bool)

(assert (= bs!590452 (and d!1195253 d!1195233)))

(assert (=> bs!590452 (= (and (= (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toChars!9303 (transformation!6916 (h!48639 rules!2999)))) (= (toValue!9444 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (h!48639 rules!2999))))) (= lambda!127270 lambda!127267))))

(declare-fun b!4034945 () Bool)

(declare-fun e!2503692 () Bool)

(assert (=> b!4034945 (= e!2503692 true)))

(assert (=> d!1195253 e!2503692))

(assert (= d!1195253 b!4034945))

(assert (=> b!4034945 (< (dynLambda!18321 order!22595 (toValue!9444 (transformation!6916 (rule!9982 token!484)))) (dynLambda!18320 order!22593 lambda!127270))))

(assert (=> b!4034945 (< (dynLambda!18319 order!22591 (toChars!9303 (transformation!6916 (rule!9982 token!484)))) (dynLambda!18320 order!22593 lambda!127270))))

(assert (=> d!1195253 (= (list!16082 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 (_1!24285 lt!1435209))))) (list!16082 (seqFromList!5133 (_1!24285 lt!1435209))))))

(declare-fun lt!1435442 () Unit!62397)

(declare-fun ForallOf!818 (Int BalanceConc!25848) Unit!62397)

(assert (=> d!1195253 (= lt!1435442 (ForallOf!818 lambda!127270 (seqFromList!5133 (_1!24285 lt!1435209))))))

(assert (=> d!1195253 (= (lemmaSemiInverse!1901 (transformation!6916 (rule!9982 token!484)) (seqFromList!5133 (_1!24285 lt!1435209))) lt!1435442)))

(declare-fun b_lambda!117715 () Bool)

(assert (=> (not b_lambda!117715) (not d!1195253)))

(declare-fun tb!242341 () Bool)

(declare-fun t!334446 () Bool)

(assert (=> (and b!4034157 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) t!334446) tb!242341))

(declare-fun tp!1225895 () Bool)

(declare-fun e!2503693 () Bool)

(declare-fun b!4034946 () Bool)

(assert (=> b!4034946 (= e!2503693 (and (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 (_1!24285 lt!1435209)))))) tp!1225895))))

(declare-fun result!293786 () Bool)

(assert (=> tb!242341 (= result!293786 (and (inv!57743 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 (_1!24285 lt!1435209))))) e!2503693))))

(assert (= tb!242341 b!4034946))

(declare-fun m!4628539 () Bool)

(assert (=> b!4034946 m!4628539))

(declare-fun m!4628541 () Bool)

(assert (=> tb!242341 m!4628541))

(assert (=> d!1195253 t!334446))

(declare-fun b_and!310051 () Bool)

(assert (= b_and!310043 (and (=> t!334446 result!293786) b_and!310051)))

(declare-fun t!334448 () Bool)

(declare-fun tb!242343 () Bool)

(assert (=> (and b!4034142 (= (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) t!334448) tb!242343))

(declare-fun result!293788 () Bool)

(assert (= result!293788 result!293786))

(assert (=> d!1195253 t!334448))

(declare-fun b_and!310053 () Bool)

(assert (= b_and!310045 (and (=> t!334448 result!293788) b_and!310053)))

(declare-fun t!334450 () Bool)

(declare-fun tb!242345 () Bool)

(assert (=> (and b!4034774 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) t!334450) tb!242345))

(declare-fun result!293790 () Bool)

(assert (= result!293790 result!293786))

(assert (=> d!1195253 t!334450))

(declare-fun b_and!310055 () Bool)

(assert (= b_and!310049 (and (=> t!334450 result!293790) b_and!310055)))

(declare-fun b_lambda!117717 () Bool)

(assert (=> (not b_lambda!117717) (not d!1195253)))

(declare-fun tb!242347 () Bool)

(declare-fun t!334452 () Bool)

(assert (=> (and b!4034157 (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) t!334452) tb!242347))

(declare-fun result!293792 () Bool)

(assert (=> tb!242347 (= result!293792 (inv!21 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 (_1!24285 lt!1435209)))))))

(declare-fun m!4628543 () Bool)

(assert (=> tb!242347 m!4628543))

(assert (=> d!1195253 t!334452))

(declare-fun b_and!310057 () Bool)

(assert (= b_and!310027 (and (=> t!334452 result!293792) b_and!310057)))

(declare-fun t!334454 () Bool)

(declare-fun tb!242349 () Bool)

(assert (=> (and b!4034142 (= (toValue!9444 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) t!334454) tb!242349))

(declare-fun result!293794 () Bool)

(assert (= result!293794 result!293792))

(assert (=> d!1195253 t!334454))

(declare-fun b_and!310059 () Bool)

(assert (= b_and!310029 (and (=> t!334454 result!293794) b_and!310059)))

(declare-fun tb!242351 () Bool)

(declare-fun t!334456 () Bool)

(assert (=> (and b!4034774 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) t!334456) tb!242351))

(declare-fun result!293796 () Bool)

(assert (= result!293796 result!293792))

(assert (=> d!1195253 t!334456))

(declare-fun b_and!310061 () Bool)

(assert (= b_and!310047 (and (=> t!334456 result!293796) b_and!310061)))

(declare-fun m!4628545 () Bool)

(assert (=> d!1195253 m!4628545))

(declare-fun m!4628547 () Bool)

(assert (=> d!1195253 m!4628547))

(assert (=> d!1195253 m!4628153))

(assert (=> d!1195253 m!4628545))

(assert (=> d!1195253 m!4628153))

(declare-fun m!4628549 () Bool)

(assert (=> d!1195253 m!4628549))

(assert (=> d!1195253 m!4628547))

(declare-fun m!4628551 () Bool)

(assert (=> d!1195253 m!4628551))

(assert (=> d!1195253 m!4628153))

(assert (=> d!1195253 m!4628531))

(assert (=> b!4034573 d!1195253))

(declare-fun d!1195255 () Bool)

(declare-fun lt!1435443 () Int)

(assert (=> d!1195255 (>= lt!1435443 0)))

(declare-fun e!2503695 () Int)

(assert (=> d!1195255 (= lt!1435443 e!2503695)))

(declare-fun c!696849 () Bool)

(assert (=> d!1195255 (= c!696849 ((_ is Nil!43217) lt!1435003))))

(assert (=> d!1195255 (= (size!32302 lt!1435003) lt!1435443)))

(declare-fun b!4034947 () Bool)

(assert (=> b!4034947 (= e!2503695 0)))

(declare-fun b!4034948 () Bool)

(assert (=> b!4034948 (= e!2503695 (+ 1 (size!32302 (t!334404 lt!1435003))))))

(assert (= (and d!1195255 c!696849) b!4034947))

(assert (= (and d!1195255 (not c!696849)) b!4034948))

(declare-fun m!4628553 () Bool)

(assert (=> b!4034948 m!4628553))

(assert (=> b!4034573 d!1195255))

(declare-fun d!1195257 () Bool)

(assert (=> d!1195257 (= (apply!10105 (transformation!6916 (rule!9982 token!484)) (seqFromList!5133 (_1!24285 lt!1435209))) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 (_1!24285 lt!1435209))))))

(declare-fun b_lambda!117719 () Bool)

(assert (=> (not b_lambda!117719) (not d!1195257)))

(assert (=> d!1195257 t!334452))

(declare-fun b_and!310063 () Bool)

(assert (= b_and!310057 (and (=> t!334452 result!293792) b_and!310063)))

(assert (=> d!1195257 t!334454))

(declare-fun b_and!310065 () Bool)

(assert (= b_and!310059 (and (=> t!334454 result!293794) b_and!310065)))

(assert (=> d!1195257 t!334456))

(declare-fun b_and!310067 () Bool)

(assert (= b_and!310061 (and (=> t!334456 result!293796) b_and!310067)))

(assert (=> d!1195257 m!4628153))

(assert (=> d!1195257 m!4628545))

(assert (=> b!4034573 d!1195257))

(declare-fun d!1195259 () Bool)

(assert (=> d!1195259 (= (get!14180 lt!1435210) (v!39723 lt!1435210))))

(assert (=> b!4034577 d!1195259))

(declare-fun d!1195261 () Bool)

(declare-fun lt!1435444 () Int)

(assert (=> d!1195261 (>= lt!1435444 0)))

(declare-fun e!2503696 () Int)

(assert (=> d!1195261 (= lt!1435444 e!2503696)))

(declare-fun c!696850 () Bool)

(assert (=> d!1195261 (= c!696850 ((_ is Nil!43217) lt!1435256))))

(assert (=> d!1195261 (= (size!32302 lt!1435256) lt!1435444)))

(declare-fun b!4034949 () Bool)

(assert (=> b!4034949 (= e!2503696 0)))

(declare-fun b!4034950 () Bool)

(assert (=> b!4034950 (= e!2503696 (+ 1 (size!32302 (t!334404 lt!1435256))))))

(assert (= (and d!1195261 c!696850) b!4034949))

(assert (= (and d!1195261 (not c!696850)) b!4034950))

(declare-fun m!4628555 () Bool)

(assert (=> b!4034950 m!4628555))

(assert (=> b!4034735 d!1195261))

(declare-fun d!1195263 () Bool)

(declare-fun lt!1435445 () Int)

(assert (=> d!1195263 (>= lt!1435445 0)))

(declare-fun e!2503697 () Int)

(assert (=> d!1195263 (= lt!1435445 e!2503697)))

(declare-fun c!696851 () Bool)

(assert (=> d!1195263 (= c!696851 ((_ is Nil!43217) lt!1435019))))

(assert (=> d!1195263 (= (size!32302 lt!1435019) lt!1435445)))

(declare-fun b!4034951 () Bool)

(assert (=> b!4034951 (= e!2503697 0)))

(declare-fun b!4034952 () Bool)

(assert (=> b!4034952 (= e!2503697 (+ 1 (size!32302 (t!334404 lt!1435019))))))

(assert (= (and d!1195263 c!696851) b!4034951))

(assert (= (and d!1195263 (not c!696851)) b!4034952))

(declare-fun m!4628557 () Bool)

(assert (=> b!4034952 m!4628557))

(assert (=> b!4034735 d!1195263))

(declare-fun d!1195265 () Bool)

(declare-fun lt!1435446 () Int)

(assert (=> d!1195265 (>= lt!1435446 0)))

(declare-fun e!2503698 () Int)

(assert (=> d!1195265 (= lt!1435446 e!2503698)))

(declare-fun c!696852 () Bool)

(assert (=> d!1195265 (= c!696852 ((_ is Nil!43217) (_2!24283 (v!39723 lt!1435020))))))

(assert (=> d!1195265 (= (size!32302 (_2!24283 (v!39723 lt!1435020))) lt!1435446)))

(declare-fun b!4034953 () Bool)

(assert (=> b!4034953 (= e!2503698 0)))

(declare-fun b!4034954 () Bool)

(assert (=> b!4034954 (= e!2503698 (+ 1 (size!32302 (t!334404 (_2!24283 (v!39723 lt!1435020))))))))

(assert (= (and d!1195265 c!696852) b!4034953))

(assert (= (and d!1195265 (not c!696852)) b!4034954))

(declare-fun m!4628559 () Bool)

(assert (=> b!4034954 m!4628559))

(assert (=> b!4034735 d!1195265))

(declare-fun d!1195267 () Bool)

(declare-fun lt!1435447 () Int)

(assert (=> d!1195267 (>= lt!1435447 0)))

(declare-fun e!2503699 () Int)

(assert (=> d!1195267 (= lt!1435447 e!2503699)))

(declare-fun c!696853 () Bool)

(assert (=> d!1195267 (= c!696853 ((_ is Nil!43217) lt!1435254))))

(assert (=> d!1195267 (= (size!32302 lt!1435254) lt!1435447)))

(declare-fun b!4034955 () Bool)

(assert (=> b!4034955 (= e!2503699 0)))

(declare-fun b!4034956 () Bool)

(assert (=> b!4034956 (= e!2503699 (+ 1 (size!32302 (t!334404 lt!1435254))))))

(assert (= (and d!1195267 c!696853) b!4034955))

(assert (= (and d!1195267 (not c!696853)) b!4034956))

(declare-fun m!4628561 () Bool)

(assert (=> b!4034956 m!4628561))

(assert (=> b!4034727 d!1195267))

(assert (=> b!4034727 d!1195173))

(assert (=> b!4034727 d!1195081))

(declare-fun d!1195269 () Bool)

(assert (=> d!1195269 (= (head!8547 lt!1435037) (h!48637 lt!1435037))))

(assert (=> b!4034697 d!1195269))

(declare-fun d!1195271 () Bool)

(declare-fun lt!1435448 () Int)

(assert (=> d!1195271 (>= lt!1435448 0)))

(declare-fun e!2503700 () Int)

(assert (=> d!1195271 (= lt!1435448 e!2503700)))

(declare-fun c!696854 () Bool)

(assert (=> d!1195271 (= c!696854 ((_ is Nil!43217) (t!334404 newSuffix!27)))))

(assert (=> d!1195271 (= (size!32302 (t!334404 newSuffix!27)) lt!1435448)))

(declare-fun b!4034957 () Bool)

(assert (=> b!4034957 (= e!2503700 0)))

(declare-fun b!4034958 () Bool)

(assert (=> b!4034958 (= e!2503700 (+ 1 (size!32302 (t!334404 (t!334404 newSuffix!27)))))))

(assert (= (and d!1195271 c!696854) b!4034957))

(assert (= (and d!1195271 (not c!696854)) b!4034958))

(declare-fun m!4628563 () Bool)

(assert (=> b!4034958 m!4628563))

(assert (=> b!4034493 d!1195271))

(declare-fun d!1195273 () Bool)

(declare-fun c!696855 () Bool)

(assert (=> d!1195273 (= c!696855 ((_ is Nil!43217) lt!1435226))))

(declare-fun e!2503701 () (InoxSet C!23828))

(assert (=> d!1195273 (= (content!6566 lt!1435226) e!2503701)))

(declare-fun b!4034959 () Bool)

(assert (=> b!4034959 (= e!2503701 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4034960 () Bool)

(assert (=> b!4034960 (= e!2503701 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435226) true) (content!6566 (t!334404 lt!1435226))))))

(assert (= (and d!1195273 c!696855) b!4034959))

(assert (= (and d!1195273 (not c!696855)) b!4034960))

(declare-fun m!4628565 () Bool)

(assert (=> b!4034960 m!4628565))

(declare-fun m!4628567 () Bool)

(assert (=> b!4034960 m!4628567))

(assert (=> d!1195145 d!1195273))

(assert (=> d!1195145 d!1195237))

(declare-fun d!1195275 () Bool)

(declare-fun c!696856 () Bool)

(assert (=> d!1195275 (= c!696856 ((_ is Nil!43217) lt!1435011))))

(declare-fun e!2503702 () (InoxSet C!23828))

(assert (=> d!1195275 (= (content!6566 lt!1435011) e!2503702)))

(declare-fun b!4034961 () Bool)

(assert (=> b!4034961 (= e!2503702 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4034962 () Bool)

(assert (=> b!4034962 (= e!2503702 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435011) true) (content!6566 (t!334404 lt!1435011))))))

(assert (= (and d!1195275 c!696856) b!4034961))

(assert (= (and d!1195275 (not c!696856)) b!4034962))

(declare-fun m!4628569 () Bool)

(assert (=> b!4034962 m!4628569))

(declare-fun m!4628571 () Bool)

(assert (=> b!4034962 m!4628571))

(assert (=> d!1195145 d!1195275))

(assert (=> b!4034412 d!1195269))

(declare-fun d!1195277 () Bool)

(assert (=> d!1195277 (= (head!8547 lt!1435007) (h!48637 lt!1435007))))

(assert (=> b!4034412 d!1195277))

(declare-fun d!1195279 () Bool)

(declare-fun lt!1435449 () Int)

(assert (=> d!1195279 (>= lt!1435449 0)))

(declare-fun e!2503703 () Int)

(assert (=> d!1195279 (= lt!1435449 e!2503703)))

(declare-fun c!696857 () Bool)

(assert (=> d!1195279 (= c!696857 ((_ is Nil!43217) (originalCharacters!7516 (_1!24283 (v!39723 lt!1435020)))))))

(assert (=> d!1195279 (= (size!32302 (originalCharacters!7516 (_1!24283 (v!39723 lt!1435020)))) lt!1435449)))

(declare-fun b!4034963 () Bool)

(assert (=> b!4034963 (= e!2503703 0)))

(declare-fun b!4034964 () Bool)

(assert (=> b!4034964 (= e!2503703 (+ 1 (size!32302 (t!334404 (originalCharacters!7516 (_1!24283 (v!39723 lt!1435020)))))))))

(assert (= (and d!1195279 c!696857) b!4034963))

(assert (= (and d!1195279 (not c!696857)) b!4034964))

(declare-fun m!4628573 () Bool)

(assert (=> b!4034964 m!4628573))

(assert (=> d!1195191 d!1195279))

(assert (=> d!1195095 d!1195153))

(assert (=> d!1195095 d!1195091))

(declare-fun d!1195281 () Bool)

(assert (=> d!1195281 (= (maxPrefixOneRule!2815 thiss!21717 (rule!9982 token!484) lt!1435003) (Some!9329 (tuple2!42299 (Token!12971 (apply!10105 (transformation!6916 (rule!9982 token!484)) (seqFromList!5133 lt!1435037)) (rule!9982 token!484) (size!32302 lt!1435037) lt!1435037) suffixResult!105)))))

(assert (=> d!1195281 true))

(declare-fun _$59!674 () Unit!62397)

(assert (=> d!1195281 (= (choose!24433 thiss!21717 rules!2999 lt!1435037 lt!1435003 suffixResult!105 (rule!9982 token!484)) _$59!674)))

(declare-fun bs!590458 () Bool)

(assert (= bs!590458 d!1195281))

(assert (=> bs!590458 m!4627481))

(assert (=> bs!590458 m!4627475))

(assert (=> bs!590458 m!4627475))

(assert (=> bs!590458 m!4627477))

(assert (=> bs!590458 m!4627507))

(assert (=> d!1195095 d!1195281))

(assert (=> d!1195095 d!1195107))

(assert (=> d!1195095 d!1195171))

(assert (=> d!1195095 d!1195111))

(declare-fun d!1195303 () Bool)

(assert (=> d!1195303 (= (isEmpty!25792 lt!1435210) (not ((_ is Some!9329) lt!1435210)))))

(assert (=> d!1195107 d!1195303))

(declare-fun d!1195307 () Bool)

(assert (=> d!1195307 (= (isEmpty!25793 (_1!24285 lt!1435209)) ((_ is Nil!43217) (_1!24285 lt!1435209)))))

(assert (=> d!1195107 d!1195307))

(declare-fun d!1195309 () Bool)

(declare-fun lt!1435486 () tuple2!42302)

(assert (=> d!1195309 (= (++!11318 (_1!24285 lt!1435486) (_2!24285 lt!1435486)) lt!1435003)))

(declare-fun sizeTr!267 (List!43341 Int) Int)

(assert (=> d!1195309 (= lt!1435486 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 0 lt!1435003 lt!1435003 (sizeTr!267 lt!1435003 0)))))

(declare-fun lt!1435489 () Unit!62397)

(declare-fun lt!1435485 () Unit!62397)

(assert (=> d!1195309 (= lt!1435489 lt!1435485)))

(declare-fun lt!1435482 () List!43341)

(declare-fun lt!1435484 () Int)

(assert (=> d!1195309 (= (sizeTr!267 lt!1435482 lt!1435484) (+ (size!32302 lt!1435482) lt!1435484))))

(declare-fun lemmaSizeTrEqualsSize!266 (List!43341 Int) Unit!62397)

(assert (=> d!1195309 (= lt!1435485 (lemmaSizeTrEqualsSize!266 lt!1435482 lt!1435484))))

(assert (=> d!1195309 (= lt!1435484 0)))

(assert (=> d!1195309 (= lt!1435482 Nil!43217)))

(declare-fun lt!1435488 () Unit!62397)

(declare-fun lt!1435487 () Unit!62397)

(assert (=> d!1195309 (= lt!1435488 lt!1435487)))

(declare-fun lt!1435483 () Int)

(assert (=> d!1195309 (= (sizeTr!267 lt!1435003 lt!1435483) (+ (size!32302 lt!1435003) lt!1435483))))

(assert (=> d!1195309 (= lt!1435487 (lemmaSizeTrEqualsSize!266 lt!1435003 lt!1435483))))

(assert (=> d!1195309 (= lt!1435483 0)))

(assert (=> d!1195309 (validRegex!5344 (regex!6916 (rule!9982 token!484)))))

(assert (=> d!1195309 (= (findLongestMatch!1294 (regex!6916 (rule!9982 token!484)) lt!1435003) lt!1435486)))

(declare-fun bs!590464 () Bool)

(assert (= bs!590464 d!1195309))

(declare-fun m!4628683 () Bool)

(assert (=> bs!590464 m!4628683))

(declare-fun m!4628685 () Bool)

(assert (=> bs!590464 m!4628685))

(declare-fun m!4628687 () Bool)

(assert (=> bs!590464 m!4628687))

(assert (=> bs!590464 m!4627803))

(declare-fun m!4628689 () Bool)

(assert (=> bs!590464 m!4628689))

(declare-fun m!4628691 () Bool)

(assert (=> bs!590464 m!4628691))

(declare-fun m!4628693 () Bool)

(assert (=> bs!590464 m!4628693))

(declare-fun m!4628695 () Bool)

(assert (=> bs!590464 m!4628695))

(assert (=> bs!590464 m!4628273))

(assert (=> bs!590464 m!4628689))

(declare-fun m!4628697 () Bool)

(assert (=> bs!590464 m!4628697))

(assert (=> d!1195107 d!1195309))

(assert (=> d!1195107 d!1195159))

(declare-fun d!1195345 () Bool)

(assert (=> d!1195345 true))

(declare-fun lt!1435494 () Bool)

(assert (=> d!1195345 (= lt!1435494 (rulesValidInductive!2519 thiss!21717 rules!2999))))

(declare-fun lambda!127280 () Int)

(declare-fun forall!8367 (List!43343 Int) Bool)

(assert (=> d!1195345 (= lt!1435494 (forall!8367 rules!2999 lambda!127280))))

(assert (=> d!1195345 (= (rulesValid!2686 thiss!21717 rules!2999) lt!1435494)))

(declare-fun bs!590467 () Bool)

(assert (= bs!590467 d!1195345))

(assert (=> bs!590467 m!4627815))

(declare-fun m!4628713 () Bool)

(assert (=> bs!590467 m!4628713))

(assert (=> d!1195201 d!1195345))

(declare-fun d!1195355 () Bool)

(assert (=> d!1195355 true))

(declare-fun order!22605 () Int)

(declare-fun lambda!127283 () Int)

(declare-fun dynLambda!18325 (Int Int) Int)

(assert (=> d!1195355 (< (dynLambda!18321 order!22595 (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) (dynLambda!18325 order!22605 lambda!127283))))

(declare-fun Forall2!1084 (Int) Bool)

(assert (=> d!1195355 (= (equivClasses!2851 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) (Forall2!1084 lambda!127283))))

(declare-fun bs!590472 () Bool)

(assert (= bs!590472 d!1195355))

(declare-fun m!4628739 () Bool)

(assert (=> bs!590472 m!4628739))

(assert (=> b!4034721 d!1195355))

(assert (=> d!1195143 d!1195219))

(assert (=> b!4034593 d!1195269))

(declare-fun d!1195377 () Bool)

(assert (=> d!1195377 (= (head!8547 lt!1435001) (h!48637 lt!1435001))))

(assert (=> b!4034593 d!1195377))

(declare-fun b!4035040 () Bool)

(declare-fun e!2503749 () Bool)

(declare-fun e!2503750 () Bool)

(assert (=> b!4035040 (= e!2503749 e!2503750)))

(declare-fun res!1643082 () Bool)

(assert (=> b!4035040 (=> (not res!1643082) (not e!2503750))))

(assert (=> b!4035040 (= res!1643082 (not ((_ is Nil!43217) (++!11318 lt!1435037 lt!1435030))))))

(declare-fun b!4035041 () Bool)

(declare-fun res!1643085 () Bool)

(assert (=> b!4035041 (=> (not res!1643085) (not e!2503750))))

(assert (=> b!4035041 (= res!1643085 (= (head!8547 lt!1435037) (head!8547 (++!11318 lt!1435037 lt!1435030))))))

(declare-fun d!1195379 () Bool)

(declare-fun e!2503751 () Bool)

(assert (=> d!1195379 e!2503751))

(declare-fun res!1643084 () Bool)

(assert (=> d!1195379 (=> res!1643084 e!2503751)))

(declare-fun lt!1435498 () Bool)

(assert (=> d!1195379 (= res!1643084 (not lt!1435498))))

(assert (=> d!1195379 (= lt!1435498 e!2503749)))

(declare-fun res!1643083 () Bool)

(assert (=> d!1195379 (=> res!1643083 e!2503749)))

(assert (=> d!1195379 (= res!1643083 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195379 (= (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 lt!1435030)) lt!1435498)))

(declare-fun b!4035042 () Bool)

(assert (=> b!4035042 (= e!2503750 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 (++!11318 lt!1435037 lt!1435030))))))

(declare-fun b!4035043 () Bool)

(assert (=> b!4035043 (= e!2503751 (>= (size!32302 (++!11318 lt!1435037 lt!1435030)) (size!32302 lt!1435037)))))

(assert (= (and d!1195379 (not res!1643083)) b!4035040))

(assert (= (and b!4035040 res!1643082) b!4035041))

(assert (= (and b!4035041 res!1643085) b!4035042))

(assert (= (and d!1195379 (not res!1643084)) b!4035043))

(assert (=> b!4035041 m!4627907))

(assert (=> b!4035041 m!4627443))

(declare-fun m!4628755 () Bool)

(assert (=> b!4035041 m!4628755))

(assert (=> b!4035042 m!4627911))

(assert (=> b!4035042 m!4627443))

(declare-fun m!4628757 () Bool)

(assert (=> b!4035042 m!4628757))

(assert (=> b!4035042 m!4627911))

(assert (=> b!4035042 m!4628757))

(declare-fun m!4628759 () Bool)

(assert (=> b!4035042 m!4628759))

(assert (=> b!4035043 m!4627443))

(declare-fun m!4628761 () Bool)

(assert (=> b!4035043 m!4628761))

(assert (=> b!4035043 m!4627507))

(assert (=> d!1195085 d!1195379))

(assert (=> d!1195085 d!1195041))

(declare-fun d!1195387 () Bool)

(assert (=> d!1195387 (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 lt!1435030))))

(assert (=> d!1195387 true))

(declare-fun _$46!1731 () Unit!62397)

(assert (=> d!1195387 (= (choose!24430 lt!1435037 lt!1435030) _$46!1731)))

(declare-fun bs!590473 () Bool)

(assert (= bs!590473 d!1195387))

(assert (=> bs!590473 m!4627443))

(assert (=> bs!590473 m!4627443))

(assert (=> bs!590473 m!4628075))

(assert (=> d!1195085 d!1195387))

(assert (=> b!4034638 d!1195269))

(declare-fun d!1195395 () Bool)

(assert (=> d!1195395 (= (head!8547 prefix!494) (h!48637 prefix!494))))

(assert (=> b!4034638 d!1195395))

(declare-fun d!1195397 () Bool)

(declare-fun c!696871 () Bool)

(assert (=> d!1195397 (= c!696871 ((_ is Nil!43217) lt!1435256))))

(declare-fun e!2503756 () (InoxSet C!23828))

(assert (=> d!1195397 (= (content!6566 lt!1435256) e!2503756)))

(declare-fun b!4035052 () Bool)

(assert (=> b!4035052 (= e!2503756 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035053 () Bool)

(assert (=> b!4035053 (= e!2503756 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435256) true) (content!6566 (t!334404 lt!1435256))))))

(assert (= (and d!1195397 c!696871) b!4035052))

(assert (= (and d!1195397 (not c!696871)) b!4035053))

(declare-fun m!4628775 () Bool)

(assert (=> b!4035053 m!4628775))

(declare-fun m!4628777 () Bool)

(assert (=> b!4035053 m!4628777))

(assert (=> d!1195199 d!1195397))

(declare-fun d!1195399 () Bool)

(declare-fun c!696872 () Bool)

(assert (=> d!1195399 (= c!696872 ((_ is Nil!43217) lt!1435019))))

(declare-fun e!2503757 () (InoxSet C!23828))

(assert (=> d!1195399 (= (content!6566 lt!1435019) e!2503757)))

(declare-fun b!4035054 () Bool)

(assert (=> b!4035054 (= e!2503757 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035055 () Bool)

(assert (=> b!4035055 (= e!2503757 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435019) true) (content!6566 (t!334404 lt!1435019))))))

(assert (= (and d!1195399 c!696872) b!4035054))

(assert (= (and d!1195399 (not c!696872)) b!4035055))

(declare-fun m!4628779 () Bool)

(assert (=> b!4035055 m!4628779))

(declare-fun m!4628781 () Bool)

(assert (=> b!4035055 m!4628781))

(assert (=> d!1195199 d!1195399))

(declare-fun d!1195401 () Bool)

(declare-fun c!696873 () Bool)

(assert (=> d!1195401 (= c!696873 ((_ is Nil!43217) (_2!24283 (v!39723 lt!1435020))))))

(declare-fun e!2503758 () (InoxSet C!23828))

(assert (=> d!1195401 (= (content!6566 (_2!24283 (v!39723 lt!1435020))) e!2503758)))

(declare-fun b!4035056 () Bool)

(assert (=> b!4035056 (= e!2503758 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035057 () Bool)

(assert (=> b!4035057 (= e!2503758 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 (_2!24283 (v!39723 lt!1435020))) true) (content!6566 (t!334404 (_2!24283 (v!39723 lt!1435020))))))))

(assert (= (and d!1195401 c!696873) b!4035056))

(assert (= (and d!1195401 (not c!696873)) b!4035057))

(declare-fun m!4628783 () Bool)

(assert (=> b!4035057 m!4628783))

(declare-fun m!4628785 () Bool)

(assert (=> b!4035057 m!4628785))

(assert (=> d!1195199 d!1195401))

(declare-fun d!1195403 () Bool)

(assert (=> d!1195403 (= (isEmpty!25793 (tail!6279 lt!1435037)) ((_ is Nil!43217) (tail!6279 lt!1435037)))))

(assert (=> b!4034696 d!1195403))

(declare-fun d!1195405 () Bool)

(assert (=> d!1195405 (= (tail!6279 lt!1435037) (t!334404 lt!1435037))))

(assert (=> b!4034696 d!1195405))

(declare-fun b!4035058 () Bool)

(declare-fun e!2503759 () Bool)

(declare-fun e!2503760 () Bool)

(assert (=> b!4035058 (= e!2503759 e!2503760)))

(declare-fun res!1643090 () Bool)

(assert (=> b!4035058 (=> (not res!1643090) (not e!2503760))))

(assert (=> b!4035058 (= res!1643090 (not ((_ is Nil!43217) (++!11318 lt!1435037 lt!1435011))))))

(declare-fun b!4035059 () Bool)

(declare-fun res!1643093 () Bool)

(assert (=> b!4035059 (=> (not res!1643093) (not e!2503760))))

(assert (=> b!4035059 (= res!1643093 (= (head!8547 lt!1435037) (head!8547 (++!11318 lt!1435037 lt!1435011))))))

(declare-fun d!1195409 () Bool)

(declare-fun e!2503761 () Bool)

(assert (=> d!1195409 e!2503761))

(declare-fun res!1643092 () Bool)

(assert (=> d!1195409 (=> res!1643092 e!2503761)))

(declare-fun lt!1435501 () Bool)

(assert (=> d!1195409 (= res!1643092 (not lt!1435501))))

(assert (=> d!1195409 (= lt!1435501 e!2503759)))

(declare-fun res!1643091 () Bool)

(assert (=> d!1195409 (=> res!1643091 e!2503759)))

(assert (=> d!1195409 (= res!1643091 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195409 (= (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 lt!1435011)) lt!1435501)))

(declare-fun b!4035060 () Bool)

(assert (=> b!4035060 (= e!2503760 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 (++!11318 lt!1435037 lt!1435011))))))

(declare-fun b!4035061 () Bool)

(assert (=> b!4035061 (= e!2503761 (>= (size!32302 (++!11318 lt!1435037 lt!1435011)) (size!32302 lt!1435037)))))

(assert (= (and d!1195409 (not res!1643091)) b!4035058))

(assert (= (and b!4035058 res!1643090) b!4035059))

(assert (= (and b!4035059 res!1643093) b!4035060))

(assert (= (and d!1195409 (not res!1643092)) b!4035061))

(assert (=> b!4035059 m!4627907))

(assert (=> b!4035059 m!4627537))

(declare-fun m!4628789 () Bool)

(assert (=> b!4035059 m!4628789))

(assert (=> b!4035060 m!4627911))

(assert (=> b!4035060 m!4627537))

(declare-fun m!4628791 () Bool)

(assert (=> b!4035060 m!4628791))

(assert (=> b!4035060 m!4627911))

(assert (=> b!4035060 m!4628791))

(declare-fun m!4628793 () Bool)

(assert (=> b!4035060 m!4628793))

(assert (=> b!4035061 m!4627537))

(declare-fun m!4628795 () Bool)

(assert (=> b!4035061 m!4628795))

(assert (=> b!4035061 m!4627507))

(assert (=> d!1195035 d!1195409))

(assert (=> d!1195035 d!1195145))

(declare-fun d!1195411 () Bool)

(assert (=> d!1195411 (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 lt!1435011))))

(assert (=> d!1195411 true))

(declare-fun _$46!1732 () Unit!62397)

(assert (=> d!1195411 (= (choose!24430 lt!1435037 lt!1435011) _$46!1732)))

(declare-fun bs!590475 () Bool)

(assert (= bs!590475 d!1195411))

(assert (=> bs!590475 m!4627537))

(assert (=> bs!590475 m!4627537))

(assert (=> bs!590475 m!4627937))

(assert (=> d!1195035 d!1195411))

(declare-fun d!1195413 () Bool)

(declare-fun lt!1435502 () List!43341)

(assert (=> d!1195413 (= (++!11318 (t!334404 lt!1435037) lt!1435502) (tail!6279 prefix!494))))

(declare-fun e!2503764 () List!43341)

(assert (=> d!1195413 (= lt!1435502 e!2503764)))

(declare-fun c!696876 () Bool)

(assert (=> d!1195413 (= c!696876 ((_ is Cons!43217) (t!334404 lt!1435037)))))

(assert (=> d!1195413 (>= (size!32302 (tail!6279 prefix!494)) (size!32302 (t!334404 lt!1435037)))))

(assert (=> d!1195413 (= (getSuffix!2420 (tail!6279 prefix!494) (t!334404 lt!1435037)) lt!1435502)))

(declare-fun b!4035066 () Bool)

(assert (=> b!4035066 (= e!2503764 (getSuffix!2420 (tail!6279 (tail!6279 prefix!494)) (t!334404 (t!334404 lt!1435037))))))

(declare-fun b!4035067 () Bool)

(assert (=> b!4035067 (= e!2503764 (tail!6279 prefix!494))))

(assert (= (and d!1195413 c!696876) b!4035066))

(assert (= (and d!1195413 (not c!696876)) b!4035067))

(declare-fun m!4628797 () Bool)

(assert (=> d!1195413 m!4628797))

(assert (=> d!1195413 m!4628189))

(declare-fun m!4628799 () Bool)

(assert (=> d!1195413 m!4628799))

(assert (=> d!1195413 m!4628303))

(assert (=> b!4035066 m!4628189))

(declare-fun m!4628801 () Bool)

(assert (=> b!4035066 m!4628801))

(assert (=> b!4035066 m!4628801))

(declare-fun m!4628803 () Bool)

(assert (=> b!4035066 m!4628803))

(assert (=> b!4034635 d!1195413))

(declare-fun d!1195415 () Bool)

(assert (=> d!1195415 (= (tail!6279 prefix!494) (t!334404 prefix!494))))

(assert (=> b!4034635 d!1195415))

(declare-fun b!4035068 () Bool)

(declare-fun e!2503765 () Bool)

(declare-fun e!2503766 () Bool)

(assert (=> b!4035068 (= e!2503765 e!2503766)))

(declare-fun res!1643094 () Bool)

(assert (=> b!4035068 (=> (not res!1643094) (not e!2503766))))

(assert (=> b!4035068 (= res!1643094 (not ((_ is Nil!43217) (++!11318 lt!1435037 suffixResult!105))))))

(declare-fun b!4035069 () Bool)

(declare-fun res!1643097 () Bool)

(assert (=> b!4035069 (=> (not res!1643097) (not e!2503766))))

(assert (=> b!4035069 (= res!1643097 (= (head!8547 lt!1435037) (head!8547 (++!11318 lt!1435037 suffixResult!105))))))

(declare-fun d!1195417 () Bool)

(declare-fun e!2503767 () Bool)

(assert (=> d!1195417 e!2503767))

(declare-fun res!1643096 () Bool)

(assert (=> d!1195417 (=> res!1643096 e!2503767)))

(declare-fun lt!1435503 () Bool)

(assert (=> d!1195417 (= res!1643096 (not lt!1435503))))

(assert (=> d!1195417 (= lt!1435503 e!2503765)))

(declare-fun res!1643095 () Bool)

(assert (=> d!1195417 (=> res!1643095 e!2503765)))

(assert (=> d!1195417 (= res!1643095 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195417 (= (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 suffixResult!105)) lt!1435503)))

(declare-fun b!4035070 () Bool)

(assert (=> b!4035070 (= e!2503766 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 (++!11318 lt!1435037 suffixResult!105))))))

(declare-fun b!4035071 () Bool)

(assert (=> b!4035071 (= e!2503767 (>= (size!32302 (++!11318 lt!1435037 suffixResult!105)) (size!32302 lt!1435037)))))

(assert (= (and d!1195417 (not res!1643095)) b!4035068))

(assert (= (and b!4035068 res!1643094) b!4035069))

(assert (= (and b!4035069 res!1643097) b!4035070))

(assert (= (and d!1195417 (not res!1643096)) b!4035071))

(assert (=> b!4035069 m!4627907))

(assert (=> b!4035069 m!4627555))

(declare-fun m!4628809 () Bool)

(assert (=> b!4035069 m!4628809))

(assert (=> b!4035070 m!4627911))

(assert (=> b!4035070 m!4627555))

(declare-fun m!4628811 () Bool)

(assert (=> b!4035070 m!4628811))

(assert (=> b!4035070 m!4627911))

(assert (=> b!4035070 m!4628811))

(declare-fun m!4628813 () Bool)

(assert (=> b!4035070 m!4628813))

(assert (=> b!4035071 m!4627555))

(declare-fun m!4628815 () Bool)

(assert (=> b!4035071 m!4628815))

(assert (=> b!4035071 m!4627507))

(assert (=> d!1195115 d!1195417))

(assert (=> d!1195115 d!1195155))

(declare-fun d!1195421 () Bool)

(assert (=> d!1195421 (isPrefix!4003 lt!1435037 (++!11318 lt!1435037 suffixResult!105))))

(assert (=> d!1195421 true))

(declare-fun _$46!1733 () Unit!62397)

(assert (=> d!1195421 (= (choose!24430 lt!1435037 suffixResult!105) _$46!1733)))

(declare-fun bs!590476 () Bool)

(assert (= bs!590476 d!1195421))

(assert (=> bs!590476 m!4627555))

(assert (=> bs!590476 m!4627555))

(assert (=> bs!590476 m!4628183))

(assert (=> d!1195115 d!1195421))

(declare-fun d!1195423 () Bool)

(declare-fun c!696879 () Bool)

(assert (=> d!1195423 (= c!696879 ((_ is Nil!43217) lt!1435254))))

(declare-fun e!2503771 () (InoxSet C!23828))

(assert (=> d!1195423 (= (content!6566 lt!1435254) e!2503771)))

(declare-fun b!4035078 () Bool)

(assert (=> b!4035078 (= e!2503771 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035079 () Bool)

(assert (=> b!4035079 (= e!2503771 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435254) true) (content!6566 (t!334404 lt!1435254))))))

(assert (= (and d!1195423 c!696879) b!4035078))

(assert (= (and d!1195423 (not c!696879)) b!4035079))

(declare-fun m!4628827 () Bool)

(assert (=> b!4035079 m!4628827))

(declare-fun m!4628829 () Bool)

(assert (=> b!4035079 m!4628829))

(assert (=> d!1195195 d!1195423))

(declare-fun d!1195427 () Bool)

(declare-fun c!696880 () Bool)

(assert (=> d!1195427 (= c!696880 ((_ is Nil!43217) prefix!494))))

(declare-fun e!2503772 () (InoxSet C!23828))

(assert (=> d!1195427 (= (content!6566 prefix!494) e!2503772)))

(declare-fun b!4035080 () Bool)

(assert (=> b!4035080 (= e!2503772 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035081 () Bool)

(assert (=> b!4035081 (= e!2503772 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 prefix!494) true) (content!6566 (t!334404 prefix!494))))))

(assert (= (and d!1195427 c!696880) b!4035080))

(assert (= (and d!1195427 (not c!696880)) b!4035081))

(declare-fun m!4628831 () Bool)

(assert (=> b!4035081 m!4628831))

(declare-fun m!4628833 () Bool)

(assert (=> b!4035081 m!4628833))

(assert (=> d!1195195 d!1195427))

(declare-fun d!1195429 () Bool)

(declare-fun c!696881 () Bool)

(assert (=> d!1195429 (= c!696881 ((_ is Nil!43217) newSuffix!27))))

(declare-fun e!2503773 () (InoxSet C!23828))

(assert (=> d!1195429 (= (content!6566 newSuffix!27) e!2503773)))

(declare-fun b!4035082 () Bool)

(assert (=> b!4035082 (= e!2503773 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035083 () Bool)

(assert (=> b!4035083 (= e!2503773 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 newSuffix!27) true) (content!6566 (t!334404 newSuffix!27))))))

(assert (= (and d!1195429 c!696881) b!4035082))

(assert (= (and d!1195429 (not c!696881)) b!4035083))

(declare-fun m!4628835 () Bool)

(assert (=> b!4035083 m!4628835))

(declare-fun m!4628837 () Bool)

(assert (=> b!4035083 m!4628837))

(assert (=> d!1195195 d!1195429))

(declare-fun bs!590477 () Bool)

(declare-fun d!1195431 () Bool)

(assert (= bs!590477 (and d!1195431 d!1195355)))

(declare-fun lambda!127284 () Int)

(assert (=> bs!590477 (= (= (toValue!9444 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) (= lambda!127284 lambda!127283))))

(assert (=> d!1195431 true))

(assert (=> d!1195431 (< (dynLambda!18321 order!22595 (toValue!9444 (transformation!6916 (rule!9982 token!484)))) (dynLambda!18325 order!22605 lambda!127284))))

(assert (=> d!1195431 (= (equivClasses!2851 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) (Forall2!1084 lambda!127284))))

(declare-fun bs!590478 () Bool)

(assert (= bs!590478 d!1195431))

(declare-fun m!4628839 () Bool)

(assert (=> bs!590478 m!4628839))

(assert (=> b!4034658 d!1195431))

(declare-fun d!1195433 () Bool)

(declare-fun lt!1435505 () Int)

(assert (=> d!1195433 (>= lt!1435505 0)))

(declare-fun e!2503776 () Int)

(assert (=> d!1195433 (= lt!1435505 e!2503776)))

(declare-fun c!696884 () Bool)

(assert (=> d!1195433 (= c!696884 ((_ is Nil!43217) (t!334404 (originalCharacters!7516 token!484))))))

(assert (=> d!1195433 (= (size!32302 (t!334404 (originalCharacters!7516 token!484))) lt!1435505)))

(declare-fun b!4035088 () Bool)

(assert (=> b!4035088 (= e!2503776 0)))

(declare-fun b!4035089 () Bool)

(assert (=> b!4035089 (= e!2503776 (+ 1 (size!32302 (t!334404 (t!334404 (originalCharacters!7516 token!484))))))))

(assert (= (and d!1195433 c!696884) b!4035088))

(assert (= (and d!1195433 (not c!696884)) b!4035089))

(declare-fun m!4628841 () Bool)

(assert (=> b!4035089 m!4628841))

(assert (=> b!4034597 d!1195433))

(declare-fun bs!590479 () Bool)

(declare-fun d!1195435 () Bool)

(assert (= bs!590479 (and d!1195435 d!1195355)))

(declare-fun lambda!127285 () Int)

(assert (=> bs!590479 (= (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) (= lambda!127285 lambda!127283))))

(declare-fun bs!590480 () Bool)

(assert (= bs!590480 (and d!1195435 d!1195431)))

(assert (=> bs!590480 (= (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) (= lambda!127285 lambda!127284))))

(assert (=> d!1195435 true))

(assert (=> d!1195435 (< (dynLambda!18321 order!22595 (toValue!9444 (transformation!6916 (h!48639 rules!2999)))) (dynLambda!18325 order!22605 lambda!127285))))

(assert (=> d!1195435 (= (equivClasses!2851 (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (h!48639 rules!2999)))) (Forall2!1084 lambda!127285))))

(declare-fun bs!590481 () Bool)

(assert (= bs!590481 d!1195435))

(declare-fun m!4628851 () Bool)

(assert (=> bs!590481 m!4628851))

(assert (=> b!4034600 d!1195435))

(declare-fun d!1195443 () Bool)

(assert (=> d!1195443 (= (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112)))) (list!16084 (c!696700 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))))))

(declare-fun bs!590482 () Bool)

(assert (= bs!590482 d!1195443))

(declare-fun m!4628857 () Bool)

(assert (=> bs!590482 m!4628857))

(assert (=> b!4034310 d!1195443))

(declare-fun d!1195447 () Bool)

(declare-fun lt!1435506 () BalanceConc!25848)

(assert (=> d!1195447 (= (list!16082 lt!1435506) (originalCharacters!7516 (_1!24283 (get!14180 lt!1435112))))))

(assert (=> d!1195447 (= lt!1435506 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))) (value!217740 (_1!24283 (get!14180 lt!1435112)))))))

(assert (=> d!1195447 (= (charsOf!4732 (_1!24283 (get!14180 lt!1435112))) lt!1435506)))

(declare-fun b_lambda!117725 () Bool)

(assert (=> (not b_lambda!117725) (not d!1195447)))

(declare-fun t!334470 () Bool)

(declare-fun tb!242365 () Bool)

(assert (=> (and b!4034157 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))) t!334470) tb!242365))

(declare-fun b!4035102 () Bool)

(declare-fun e!2503783 () Bool)

(declare-fun tp!1225897 () Bool)

(assert (=> b!4035102 (= e!2503783 (and (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))) (value!217740 (_1!24283 (get!14180 lt!1435112)))))) tp!1225897))))

(declare-fun result!293810 () Bool)

(assert (=> tb!242365 (= result!293810 (and (inv!57743 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))) (value!217740 (_1!24283 (get!14180 lt!1435112))))) e!2503783))))

(assert (= tb!242365 b!4035102))

(declare-fun m!4628869 () Bool)

(assert (=> b!4035102 m!4628869))

(declare-fun m!4628871 () Bool)

(assert (=> tb!242365 m!4628871))

(assert (=> d!1195447 t!334470))

(declare-fun b_and!310081 () Bool)

(assert (= b_and!310051 (and (=> t!334470 result!293810) b_and!310081)))

(declare-fun t!334472 () Bool)

(declare-fun tb!242367 () Bool)

(assert (=> (and b!4034142 (= (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))) t!334472) tb!242367))

(declare-fun result!293812 () Bool)

(assert (= result!293812 result!293810))

(assert (=> d!1195447 t!334472))

(declare-fun b_and!310083 () Bool)

(assert (= b_and!310053 (and (=> t!334472 result!293812) b_and!310083)))

(declare-fun tb!242369 () Bool)

(declare-fun t!334474 () Bool)

(assert (=> (and b!4034774 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))) t!334474) tb!242369))

(declare-fun result!293814 () Bool)

(assert (= result!293814 result!293810))

(assert (=> d!1195447 t!334474))

(declare-fun b_and!310085 () Bool)

(assert (= b_and!310055 (and (=> t!334474 result!293814) b_and!310085)))

(declare-fun m!4628879 () Bool)

(assert (=> d!1195447 m!4628879))

(declare-fun m!4628883 () Bool)

(assert (=> d!1195447 m!4628883))

(assert (=> b!4034310 d!1195447))

(declare-fun d!1195459 () Bool)

(assert (=> d!1195459 (= (get!14180 lt!1435112) (v!39723 lt!1435112))))

(assert (=> b!4034310 d!1195459))

(declare-fun b!4035113 () Bool)

(declare-fun res!1643100 () Bool)

(declare-fun e!2503788 () Bool)

(assert (=> b!4035113 (=> (not res!1643100) (not e!2503788))))

(declare-fun lt!1435509 () List!43341)

(assert (=> b!4035113 (= res!1643100 (= (size!32302 lt!1435509) (+ (size!32302 (t!334404 lt!1435037)) (size!32302 lt!1435011))))))

(declare-fun b!4035114 () Bool)

(assert (=> b!4035114 (= e!2503788 (or (not (= lt!1435011 Nil!43217)) (= lt!1435509 (t!334404 lt!1435037))))))

(declare-fun b!4035112 () Bool)

(declare-fun e!2503789 () List!43341)

(assert (=> b!4035112 (= e!2503789 (Cons!43217 (h!48637 (t!334404 lt!1435037)) (++!11318 (t!334404 (t!334404 lt!1435037)) lt!1435011)))))

(declare-fun d!1195461 () Bool)

(assert (=> d!1195461 e!2503788))

(declare-fun res!1643101 () Bool)

(assert (=> d!1195461 (=> (not res!1643101) (not e!2503788))))

(assert (=> d!1195461 (= res!1643101 (= (content!6566 lt!1435509) ((_ map or) (content!6566 (t!334404 lt!1435037)) (content!6566 lt!1435011))))))

(assert (=> d!1195461 (= lt!1435509 e!2503789)))

(declare-fun c!696895 () Bool)

(assert (=> d!1195461 (= c!696895 ((_ is Nil!43217) (t!334404 lt!1435037)))))

(assert (=> d!1195461 (= (++!11318 (t!334404 lt!1435037) lt!1435011) lt!1435509)))

(declare-fun b!4035111 () Bool)

(assert (=> b!4035111 (= e!2503789 lt!1435011)))

(assert (= (and d!1195461 c!696895) b!4035111))

(assert (= (and d!1195461 (not c!696895)) b!4035112))

(assert (= (and d!1195461 res!1643101) b!4035113))

(assert (= (and b!4035113 res!1643100) b!4035114))

(declare-fun m!4628889 () Bool)

(assert (=> b!4035113 m!4628889))

(assert (=> b!4035113 m!4628303))

(assert (=> b!4035113 m!4628247))

(declare-fun m!4628891 () Bool)

(assert (=> b!4035112 m!4628891))

(declare-fun m!4628893 () Bool)

(assert (=> d!1195461 m!4628893))

(assert (=> d!1195461 m!4628477))

(assert (=> d!1195461 m!4628253))

(assert (=> b!4034643 d!1195461))

(declare-fun d!1195465 () Bool)

(assert (=> d!1195465 (= (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131)))) (list!16084 (c!696700 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))))))

(declare-fun bs!590483 () Bool)

(assert (= bs!590483 d!1195465))

(declare-fun m!4628895 () Bool)

(assert (=> bs!590483 m!4628895))

(assert (=> b!4034358 d!1195465))

(declare-fun d!1195467 () Bool)

(declare-fun lt!1435510 () BalanceConc!25848)

(assert (=> d!1195467 (= (list!16082 lt!1435510) (originalCharacters!7516 (_1!24283 (get!14180 lt!1435131))))))

(assert (=> d!1195467 (= lt!1435510 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))) (value!217740 (_1!24283 (get!14180 lt!1435131)))))))

(assert (=> d!1195467 (= (charsOf!4732 (_1!24283 (get!14180 lt!1435131))) lt!1435510)))

(declare-fun b_lambda!117729 () Bool)

(assert (=> (not b_lambda!117729) (not d!1195467)))

(declare-fun t!334482 () Bool)

(declare-fun tb!242377 () Bool)

(assert (=> (and b!4034157 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))) t!334482) tb!242377))

(declare-fun b!4035115 () Bool)

(declare-fun e!2503791 () Bool)

(declare-fun tp!1225898 () Bool)

(assert (=> b!4035115 (= e!2503791 (and (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))) (value!217740 (_1!24283 (get!14180 lt!1435131)))))) tp!1225898))))

(declare-fun result!293822 () Bool)

(assert (=> tb!242377 (= result!293822 (and (inv!57743 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))) (value!217740 (_1!24283 (get!14180 lt!1435131))))) e!2503791))))

(assert (= tb!242377 b!4035115))

(declare-fun m!4628901 () Bool)

(assert (=> b!4035115 m!4628901))

(declare-fun m!4628903 () Bool)

(assert (=> tb!242377 m!4628903))

(assert (=> d!1195467 t!334482))

(declare-fun b_and!310093 () Bool)

(assert (= b_and!310081 (and (=> t!334482 result!293822) b_and!310093)))

(declare-fun tb!242379 () Bool)

(declare-fun t!334484 () Bool)

(assert (=> (and b!4034142 (= (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))) t!334484) tb!242379))

(declare-fun result!293824 () Bool)

(assert (= result!293824 result!293822))

(assert (=> d!1195467 t!334484))

(declare-fun b_and!310095 () Bool)

(assert (= b_and!310083 (and (=> t!334484 result!293824) b_and!310095)))

(declare-fun t!334486 () Bool)

(declare-fun tb!242381 () Bool)

(assert (=> (and b!4034774 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))) t!334486) tb!242381))

(declare-fun result!293826 () Bool)

(assert (= result!293826 result!293822))

(assert (=> d!1195467 t!334486))

(declare-fun b_and!310097 () Bool)

(assert (= b_and!310085 (and (=> t!334486 result!293826) b_and!310097)))

(declare-fun m!4628907 () Bool)

(assert (=> d!1195467 m!4628907))

(declare-fun m!4628909 () Bool)

(assert (=> d!1195467 m!4628909))

(assert (=> b!4034358 d!1195467))

(declare-fun d!1195473 () Bool)

(assert (=> d!1195473 (= (get!14180 lt!1435131) (v!39723 lt!1435131))))

(assert (=> b!4034358 d!1195473))

(assert (=> b!4034587 d!1195255))

(assert (=> b!4034587 d!1195171))

(declare-fun d!1195475 () Bool)

(assert (=> d!1195475 (= (head!8547 newSuffix!27) (h!48637 newSuffix!27))))

(assert (=> b!4034741 d!1195475))

(declare-fun d!1195477 () Bool)

(assert (=> d!1195477 (= (head!8547 suffix!1299) (h!48637 suffix!1299))))

(assert (=> b!4034741 d!1195477))

(declare-fun d!1195479 () Bool)

(declare-fun c!696896 () Bool)

(assert (=> d!1195479 (= c!696896 ((_ is Nil!43217) lt!1435127))))

(declare-fun e!2503792 () (InoxSet C!23828))

(assert (=> d!1195479 (= (content!6566 lt!1435127) e!2503792)))

(declare-fun b!4035116 () Bool)

(assert (=> b!4035116 (= e!2503792 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035117 () Bool)

(assert (=> b!4035117 (= e!2503792 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435127) true) (content!6566 (t!334404 lt!1435127))))))

(assert (= (and d!1195479 c!696896) b!4035116))

(assert (= (and d!1195479 (not c!696896)) b!4035117))

(declare-fun m!4628911 () Bool)

(assert (=> b!4035117 m!4628911))

(declare-fun m!4628913 () Bool)

(assert (=> b!4035117 m!4628913))

(assert (=> d!1195003 d!1195479))

(assert (=> d!1195003 d!1195427))

(declare-fun d!1195481 () Bool)

(declare-fun c!696897 () Bool)

(assert (=> d!1195481 (= c!696897 ((_ is Nil!43217) suffix!1299))))

(declare-fun e!2503793 () (InoxSet C!23828))

(assert (=> d!1195481 (= (content!6566 suffix!1299) e!2503793)))

(declare-fun b!4035118 () Bool)

(assert (=> b!4035118 (= e!2503793 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035119 () Bool)

(assert (=> b!4035119 (= e!2503793 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 suffix!1299) true) (content!6566 (t!334404 suffix!1299))))))

(assert (= (and d!1195481 c!696897) b!4035118))

(assert (= (and d!1195481 (not c!696897)) b!4035119))

(declare-fun m!4628915 () Bool)

(assert (=> b!4035119 m!4628915))

(declare-fun m!4628917 () Bool)

(assert (=> b!4035119 m!4628917))

(assert (=> d!1195003 d!1195481))

(declare-fun d!1195485 () Bool)

(declare-fun lt!1435511 () Int)

(assert (=> d!1195485 (>= lt!1435511 0)))

(declare-fun e!2503795 () Int)

(assert (=> d!1195485 (= lt!1435511 e!2503795)))

(declare-fun c!696899 () Bool)

(assert (=> d!1195485 (= c!696899 ((_ is Nil!43217) lt!1435232))))

(assert (=> d!1195485 (= (size!32302 lt!1435232) lt!1435511)))

(declare-fun b!4035122 () Bool)

(assert (=> b!4035122 (= e!2503795 0)))

(declare-fun b!4035123 () Bool)

(assert (=> b!4035123 (= e!2503795 (+ 1 (size!32302 (t!334404 lt!1435232))))))

(assert (= (and d!1195485 c!696899) b!4035122))

(assert (= (and d!1195485 (not c!696899)) b!4035123))

(declare-fun m!4628923 () Bool)

(assert (=> b!4035123 m!4628923))

(assert (=> b!4034654 d!1195485))

(assert (=> b!4034654 d!1195171))

(declare-fun d!1195489 () Bool)

(declare-fun lt!1435512 () Int)

(assert (=> d!1195489 (>= lt!1435512 0)))

(declare-fun e!2503797 () Int)

(assert (=> d!1195489 (= lt!1435512 e!2503797)))

(declare-fun c!696901 () Bool)

(assert (=> d!1195489 (= c!696901 ((_ is Nil!43217) suffixResult!105))))

(assert (=> d!1195489 (= (size!32302 suffixResult!105) lt!1435512)))

(declare-fun b!4035126 () Bool)

(assert (=> b!4035126 (= e!2503797 0)))

(declare-fun b!4035127 () Bool)

(assert (=> b!4035127 (= e!2503797 (+ 1 (size!32302 (t!334404 suffixResult!105))))))

(assert (= (and d!1195489 c!696901) b!4035126))

(assert (= (and d!1195489 (not c!696901)) b!4035127))

(declare-fun m!4628927 () Bool)

(assert (=> b!4035127 m!4628927))

(assert (=> b!4034654 d!1195489))

(declare-fun b!4035130 () Bool)

(declare-fun res!1643102 () Bool)

(declare-fun e!2503798 () Bool)

(assert (=> b!4035130 (=> (not res!1643102) (not e!2503798))))

(declare-fun lt!1435513 () List!43341)

(assert (=> b!4035130 (= res!1643102 (= (size!32302 lt!1435513) (+ (size!32302 (t!334404 lt!1435037)) (size!32302 lt!1435038))))))

(declare-fun b!4035131 () Bool)

(assert (=> b!4035131 (= e!2503798 (or (not (= lt!1435038 Nil!43217)) (= lt!1435513 (t!334404 lt!1435037))))))

(declare-fun b!4035129 () Bool)

(declare-fun e!2503799 () List!43341)

(assert (=> b!4035129 (= e!2503799 (Cons!43217 (h!48637 (t!334404 lt!1435037)) (++!11318 (t!334404 (t!334404 lt!1435037)) lt!1435038)))))

(declare-fun d!1195491 () Bool)

(assert (=> d!1195491 e!2503798))

(declare-fun res!1643103 () Bool)

(assert (=> d!1195491 (=> (not res!1643103) (not e!2503798))))

(assert (=> d!1195491 (= res!1643103 (= (content!6566 lt!1435513) ((_ map or) (content!6566 (t!334404 lt!1435037)) (content!6566 lt!1435038))))))

(assert (=> d!1195491 (= lt!1435513 e!2503799)))

(declare-fun c!696902 () Bool)

(assert (=> d!1195491 (= c!696902 ((_ is Nil!43217) (t!334404 lt!1435037)))))

(assert (=> d!1195491 (= (++!11318 (t!334404 lt!1435037) lt!1435038) lt!1435513)))

(declare-fun b!4035128 () Bool)

(assert (=> b!4035128 (= e!2503799 lt!1435038)))

(assert (= (and d!1195491 c!696902) b!4035128))

(assert (= (and d!1195491 (not c!696902)) b!4035129))

(assert (= (and d!1195491 res!1643103) b!4035130))

(assert (= (and b!4035130 res!1643102) b!4035131))

(declare-fun m!4628931 () Bool)

(assert (=> b!4035130 m!4628931))

(assert (=> b!4035130 m!4628303))

(assert (=> b!4035130 m!4627969))

(declare-fun m!4628933 () Bool)

(assert (=> b!4035129 m!4628933))

(declare-fun m!4628935 () Bool)

(assert (=> d!1195491 m!4628935))

(assert (=> d!1195491 m!4628477))

(assert (=> d!1195491 m!4627979))

(assert (=> b!4034628 d!1195491))

(declare-fun b!4035132 () Bool)

(declare-fun e!2503806 () Bool)

(declare-fun lt!1435514 () Bool)

(assert (=> b!4035132 (= e!2503806 (not lt!1435514))))

(declare-fun b!4035133 () Bool)

(declare-fun e!2503804 () Bool)

(declare-fun e!2503801 () Bool)

(assert (=> b!4035133 (= e!2503804 e!2503801)))

(declare-fun res!1643107 () Bool)

(assert (=> b!4035133 (=> (not res!1643107) (not e!2503801))))

(assert (=> b!4035133 (= res!1643107 (not lt!1435514))))

(declare-fun b!4035134 () Bool)

(declare-fun res!1643108 () Bool)

(assert (=> b!4035134 (=> res!1643108 e!2503804)))

(declare-fun e!2503800 () Bool)

(assert (=> b!4035134 (= res!1643108 e!2503800)))

(declare-fun res!1643109 () Bool)

(assert (=> b!4035134 (=> (not res!1643109) (not e!2503800))))

(assert (=> b!4035134 (= res!1643109 lt!1435514)))

(declare-fun b!4035135 () Bool)

(declare-fun res!1643110 () Bool)

(declare-fun e!2503805 () Bool)

(assert (=> b!4035135 (=> res!1643110 e!2503805)))

(assert (=> b!4035135 (= res!1643110 (not (isEmpty!25793 (tail!6279 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))))

(declare-fun b!4035136 () Bool)

(assert (=> b!4035136 (= e!2503800 (= (head!8547 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))) (c!696701 (regex!6916 (rule!9982 token!484)))))))

(declare-fun b!4035137 () Bool)

(declare-fun e!2503802 () Bool)

(assert (=> b!4035137 (= e!2503802 e!2503806)))

(declare-fun c!696905 () Bool)

(assert (=> b!4035137 (= c!696905 ((_ is EmptyLang!11821) (regex!6916 (rule!9982 token!484))))))

(declare-fun b!4035138 () Bool)

(declare-fun call!287082 () Bool)

(assert (=> b!4035138 (= e!2503802 (= lt!1435514 call!287082))))

(declare-fun b!4035139 () Bool)

(declare-fun res!1643106 () Bool)

(assert (=> b!4035139 (=> (not res!1643106) (not e!2503800))))

(assert (=> b!4035139 (= res!1643106 (isEmpty!25793 (tail!6279 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003))))))))

(declare-fun b!4035140 () Bool)

(declare-fun res!1643104 () Bool)

(assert (=> b!4035140 (=> (not res!1643104) (not e!2503800))))

(assert (=> b!4035140 (= res!1643104 (not call!287082))))

(declare-fun b!4035141 () Bool)

(declare-fun e!2503803 () Bool)

(assert (=> b!4035141 (= e!2503803 (nullable!4144 (regex!6916 (rule!9982 token!484))))))

(declare-fun d!1195495 () Bool)

(assert (=> d!1195495 e!2503802))

(declare-fun c!696903 () Bool)

(assert (=> d!1195495 (= c!696903 ((_ is EmptyExpr!11821) (regex!6916 (rule!9982 token!484))))))

(assert (=> d!1195495 (= lt!1435514 e!2503803)))

(declare-fun c!696904 () Bool)

(assert (=> d!1195495 (= c!696904 (isEmpty!25793 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(assert (=> d!1195495 (validRegex!5344 (regex!6916 (rule!9982 token!484)))))

(assert (=> d!1195495 (= (matchR!5774 (regex!6916 (rule!9982 token!484)) (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))) lt!1435514)))

(declare-fun b!4035142 () Bool)

(assert (=> b!4035142 (= e!2503805 (not (= (head!8547 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))) (c!696701 (regex!6916 (rule!9982 token!484))))))))

(declare-fun bm!287077 () Bool)

(assert (=> bm!287077 (= call!287082 (isEmpty!25793 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(declare-fun b!4035143 () Bool)

(assert (=> b!4035143 (= e!2503801 e!2503805)))

(declare-fun res!1643105 () Bool)

(assert (=> b!4035143 (=> res!1643105 e!2503805)))

(assert (=> b!4035143 (= res!1643105 call!287082)))

(declare-fun b!4035144 () Bool)

(declare-fun res!1643111 () Bool)

(assert (=> b!4035144 (=> res!1643111 e!2503804)))

(assert (=> b!4035144 (= res!1643111 (not ((_ is ElementMatch!11821) (regex!6916 (rule!9982 token!484)))))))

(assert (=> b!4035144 (= e!2503806 e!2503804)))

(declare-fun b!4035145 () Bool)

(assert (=> b!4035145 (= e!2503803 (matchR!5774 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003))))) (tail!6279 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (rule!9982 token!484)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003))))))))

(assert (= (and d!1195495 c!696904) b!4035141))

(assert (= (and d!1195495 (not c!696904)) b!4035145))

(assert (= (and d!1195495 c!696903) b!4035138))

(assert (= (and d!1195495 (not c!696903)) b!4035137))

(assert (= (and b!4035137 c!696905) b!4035132))

(assert (= (and b!4035137 (not c!696905)) b!4035144))

(assert (= (and b!4035144 (not res!1643111)) b!4035134))

(assert (= (and b!4035134 res!1643109) b!4035140))

(assert (= (and b!4035140 res!1643104) b!4035139))

(assert (= (and b!4035139 res!1643106) b!4035136))

(assert (= (and b!4035134 (not res!1643108)) b!4035133))

(assert (= (and b!4035133 res!1643107) b!4035143))

(assert (= (and b!4035143 (not res!1643105)) b!4035135))

(assert (= (and b!4035135 (not res!1643110)) b!4035142))

(assert (= (or b!4035138 b!4035140 b!4035143) bm!287077))

(declare-fun m!4628937 () Bool)

(assert (=> b!4035139 m!4628937))

(assert (=> b!4035139 m!4628937))

(declare-fun m!4628939 () Bool)

(assert (=> b!4035139 m!4628939))

(assert (=> b!4035135 m!4628937))

(assert (=> b!4035135 m!4628937))

(assert (=> b!4035135 m!4628939))

(assert (=> d!1195495 m!4628161))

(assert (=> d!1195495 m!4628273))

(declare-fun m!4628941 () Bool)

(assert (=> b!4035142 m!4628941))

(assert (=> b!4035136 m!4628941))

(assert (=> b!4035141 m!4628275))

(assert (=> b!4035145 m!4628941))

(assert (=> b!4035145 m!4628941))

(declare-fun m!4628943 () Bool)

(assert (=> b!4035145 m!4628943))

(assert (=> b!4035145 m!4628937))

(assert (=> b!4035145 m!4628943))

(assert (=> b!4035145 m!4628937))

(declare-fun m!4628945 () Bool)

(assert (=> b!4035145 m!4628945))

(assert (=> bm!287077 m!4628161))

(assert (=> b!4034574 d!1195495))

(assert (=> b!4034574 d!1195247))

(assert (=> b!4034574 d!1195251))

(assert (=> b!4034574 d!1195255))

(declare-fun d!1195497 () Bool)

(declare-fun lt!1435517 () Bool)

(assert (=> d!1195497 (= lt!1435517 (select (content!6567 (t!334406 rules!2999)) (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))

(declare-fun e!2503807 () Bool)

(assert (=> d!1195497 (= lt!1435517 e!2503807)))

(declare-fun res!1643112 () Bool)

(assert (=> d!1195497 (=> (not res!1643112) (not e!2503807))))

(assert (=> d!1195497 (= res!1643112 ((_ is Cons!43219) (t!334406 rules!2999)))))

(assert (=> d!1195497 (= (contains!8580 (t!334406 rules!2999) (rule!9982 (_1!24283 (v!39723 lt!1435020)))) lt!1435517)))

(declare-fun b!4035146 () Bool)

(declare-fun e!2503808 () Bool)

(assert (=> b!4035146 (= e!2503807 e!2503808)))

(declare-fun res!1643113 () Bool)

(assert (=> b!4035146 (=> res!1643113 e!2503808)))

(assert (=> b!4035146 (= res!1643113 (= (h!48639 (t!334406 rules!2999)) (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))

(declare-fun b!4035147 () Bool)

(assert (=> b!4035147 (= e!2503808 (contains!8580 (t!334406 (t!334406 rules!2999)) (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))

(assert (= (and d!1195497 res!1643112) b!4035146))

(assert (= (and b!4035146 (not res!1643113)) b!4035147))

(declare-fun m!4628947 () Bool)

(assert (=> d!1195497 m!4628947))

(declare-fun m!4628949 () Bool)

(assert (=> d!1195497 m!4628949))

(declare-fun m!4628951 () Bool)

(assert (=> b!4035147 m!4628951))

(assert (=> b!4034720 d!1195497))

(declare-fun d!1195499 () Bool)

(declare-fun c!696906 () Bool)

(assert (=> d!1195499 (= c!696906 ((_ is Nil!43217) lt!1435157))))

(declare-fun e!2503809 () (InoxSet C!23828))

(assert (=> d!1195499 (= (content!6566 lt!1435157) e!2503809)))

(declare-fun b!4035150 () Bool)

(assert (=> b!4035150 (= e!2503809 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035151 () Bool)

(assert (=> b!4035151 (= e!2503809 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435157) true) (content!6566 (t!334404 lt!1435157))))))

(assert (= (and d!1195499 c!696906) b!4035150))

(assert (= (and d!1195499 (not c!696906)) b!4035151))

(declare-fun m!4628955 () Bool)

(assert (=> b!4035151 m!4628955))

(declare-fun m!4628957 () Bool)

(assert (=> b!4035151 m!4628957))

(assert (=> d!1195045 d!1195499))

(assert (=> d!1195045 d!1195239))

(assert (=> d!1195045 d!1195481))

(declare-fun d!1195503 () Bool)

(declare-fun isBalanced!3675 (Conc!13127) Bool)

(assert (=> d!1195503 (= (inv!57743 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))) (isBalanced!3675 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))))))

(declare-fun bs!590486 () Bool)

(assert (= bs!590486 d!1195503))

(declare-fun m!4628959 () Bool)

(assert (=> bs!590486 m!4628959))

(assert (=> tb!242327 d!1195503))

(declare-fun b!4035163 () Bool)

(declare-fun res!1643121 () Bool)

(declare-fun e!2503813 () Bool)

(assert (=> b!4035163 (=> (not res!1643121) (not e!2503813))))

(declare-fun lt!1435524 () List!43341)

(assert (=> b!4035163 (= res!1643121 (= (size!32302 lt!1435524) (+ (size!32302 (t!334404 lt!1435008)) (size!32302 suffix!1299))))))

(declare-fun b!4035164 () Bool)

(assert (=> b!4035164 (= e!2503813 (or (not (= suffix!1299 Nil!43217)) (= lt!1435524 (t!334404 lt!1435008))))))

(declare-fun b!4035162 () Bool)

(declare-fun e!2503814 () List!43341)

(assert (=> b!4035162 (= e!2503814 (Cons!43217 (h!48637 (t!334404 lt!1435008)) (++!11318 (t!334404 (t!334404 lt!1435008)) suffix!1299)))))

(declare-fun d!1195505 () Bool)

(assert (=> d!1195505 e!2503813))

(declare-fun res!1643122 () Bool)

(assert (=> d!1195505 (=> (not res!1643122) (not e!2503813))))

(assert (=> d!1195505 (= res!1643122 (= (content!6566 lt!1435524) ((_ map or) (content!6566 (t!334404 lt!1435008)) (content!6566 suffix!1299))))))

(assert (=> d!1195505 (= lt!1435524 e!2503814)))

(declare-fun c!696908 () Bool)

(assert (=> d!1195505 (= c!696908 ((_ is Nil!43217) (t!334404 lt!1435008)))))

(assert (=> d!1195505 (= (++!11318 (t!334404 lt!1435008) suffix!1299) lt!1435524)))

(declare-fun b!4035161 () Bool)

(assert (=> b!4035161 (= e!2503814 suffix!1299)))

(assert (= (and d!1195505 c!696908) b!4035161))

(assert (= (and d!1195505 (not c!696908)) b!4035162))

(assert (= (and d!1195505 res!1643122) b!4035163))

(assert (= (and b!4035163 res!1643121) b!4035164))

(declare-fun m!4628963 () Bool)

(assert (=> b!4035163 m!4628963))

(declare-fun m!4628965 () Bool)

(assert (=> b!4035163 m!4628965))

(assert (=> b!4035163 m!4627533))

(declare-fun m!4628969 () Bool)

(assert (=> b!4035162 m!4628969))

(declare-fun m!4628971 () Bool)

(assert (=> d!1195505 m!4628971))

(declare-fun m!4628975 () Bool)

(assert (=> d!1195505 m!4628975))

(assert (=> d!1195505 m!4627849))

(assert (=> b!4034438 d!1195505))

(declare-fun b!4035167 () Bool)

(declare-fun res!1643123 () Bool)

(declare-fun e!2503815 () Bool)

(assert (=> b!4035167 (=> (not res!1643123) (not e!2503815))))

(declare-fun lt!1435525 () List!43341)

(assert (=> b!4035167 (= res!1643123 (= (size!32302 lt!1435525) (+ (size!32302 (t!334404 prefix!494)) (size!32302 suffix!1299))))))

(declare-fun b!4035168 () Bool)

(assert (=> b!4035168 (= e!2503815 (or (not (= suffix!1299 Nil!43217)) (= lt!1435525 (t!334404 prefix!494))))))

(declare-fun b!4035166 () Bool)

(declare-fun e!2503816 () List!43341)

(assert (=> b!4035166 (= e!2503816 (Cons!43217 (h!48637 (t!334404 prefix!494)) (++!11318 (t!334404 (t!334404 prefix!494)) suffix!1299)))))

(declare-fun d!1195507 () Bool)

(assert (=> d!1195507 e!2503815))

(declare-fun res!1643124 () Bool)

(assert (=> d!1195507 (=> (not res!1643124) (not e!2503815))))

(assert (=> d!1195507 (= res!1643124 (= (content!6566 lt!1435525) ((_ map or) (content!6566 (t!334404 prefix!494)) (content!6566 suffix!1299))))))

(assert (=> d!1195507 (= lt!1435525 e!2503816)))

(declare-fun c!696909 () Bool)

(assert (=> d!1195507 (= c!696909 ((_ is Nil!43217) (t!334404 prefix!494)))))

(assert (=> d!1195507 (= (++!11318 (t!334404 prefix!494) suffix!1299) lt!1435525)))

(declare-fun b!4035165 () Bool)

(assert (=> b!4035165 (= e!2503816 suffix!1299)))

(assert (= (and d!1195507 c!696909) b!4035165))

(assert (= (and d!1195507 (not c!696909)) b!4035166))

(assert (= (and d!1195507 res!1643124) b!4035167))

(assert (= (and b!4035167 res!1643123) b!4035168))

(declare-fun m!4628985 () Bool)

(assert (=> b!4035167 m!4628985))

(assert (=> b!4035167 m!4628305))

(assert (=> b!4035167 m!4627533))

(declare-fun m!4628987 () Bool)

(assert (=> b!4035166 m!4628987))

(declare-fun m!4628989 () Bool)

(assert (=> d!1195507 m!4628989))

(assert (=> d!1195507 m!4628833))

(assert (=> d!1195507 m!4627849))

(assert (=> b!4034351 d!1195507))

(declare-fun bm!287086 () Bool)

(declare-fun call!287091 () Bool)

(declare-fun c!696923 () Bool)

(assert (=> bm!287086 (= call!287091 (validRegex!5344 (ite c!696923 (regTwo!24155 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (regTwo!24154 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))))

(declare-fun b!4035213 () Bool)

(declare-fun e!2503850 () Bool)

(assert (=> b!4035213 (= e!2503850 call!287091)))

(declare-fun b!4035214 () Bool)

(declare-fun e!2503848 () Bool)

(assert (=> b!4035214 (= e!2503848 e!2503850)))

(declare-fun res!1643147 () Bool)

(assert (=> b!4035214 (=> (not res!1643147) (not e!2503850))))

(declare-fun call!287092 () Bool)

(assert (=> b!4035214 (= res!1643147 call!287092)))

(declare-fun b!4035215 () Bool)

(declare-fun e!2503844 () Bool)

(declare-fun e!2503845 () Bool)

(assert (=> b!4035215 (= e!2503844 e!2503845)))

(assert (=> b!4035215 (= c!696923 ((_ is Union!11821) (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))

(declare-fun b!4035216 () Bool)

(declare-fun e!2503846 () Bool)

(assert (=> b!4035216 (= e!2503846 call!287091)))

(declare-fun d!1195509 () Bool)

(declare-fun res!1643143 () Bool)

(declare-fun e!2503849 () Bool)

(assert (=> d!1195509 (=> res!1643143 e!2503849)))

(assert (=> d!1195509 (= res!1643143 ((_ is ElementMatch!11821) (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))

(assert (=> d!1195509 (= (validRegex!5344 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) e!2503849)))

(declare-fun b!4035217 () Bool)

(declare-fun res!1643144 () Bool)

(assert (=> b!4035217 (=> res!1643144 e!2503848)))

(assert (=> b!4035217 (= res!1643144 (not ((_ is Concat!18968) (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))))

(assert (=> b!4035217 (= e!2503845 e!2503848)))

(declare-fun b!4035218 () Bool)

(assert (=> b!4035218 (= e!2503849 e!2503844)))

(declare-fun c!696924 () Bool)

(assert (=> b!4035218 (= c!696924 ((_ is Star!11821) (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))

(declare-fun b!4035219 () Bool)

(declare-fun e!2503847 () Bool)

(assert (=> b!4035219 (= e!2503844 e!2503847)))

(declare-fun res!1643146 () Bool)

(assert (=> b!4035219 (= res!1643146 (not (nullable!4144 (reg!12150 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))))

(assert (=> b!4035219 (=> (not res!1643146) (not e!2503847))))

(declare-fun call!287093 () Bool)

(declare-fun bm!287087 () Bool)

(assert (=> bm!287087 (= call!287093 (validRegex!5344 (ite c!696924 (reg!12150 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (ite c!696923 (regOne!24155 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (regOne!24154 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))))))))

(declare-fun b!4035220 () Bool)

(declare-fun res!1643145 () Bool)

(assert (=> b!4035220 (=> (not res!1643145) (not e!2503846))))

(assert (=> b!4035220 (= res!1643145 call!287092)))

(assert (=> b!4035220 (= e!2503845 e!2503846)))

(declare-fun b!4035221 () Bool)

(assert (=> b!4035221 (= e!2503847 call!287093)))

(declare-fun bm!287088 () Bool)

(assert (=> bm!287088 (= call!287092 call!287093)))

(assert (= (and d!1195509 (not res!1643143)) b!4035218))

(assert (= (and b!4035218 c!696924) b!4035219))

(assert (= (and b!4035218 (not c!696924)) b!4035215))

(assert (= (and b!4035219 res!1643146) b!4035221))

(assert (= (and b!4035215 c!696923) b!4035220))

(assert (= (and b!4035215 (not c!696923)) b!4035217))

(assert (= (and b!4035220 res!1643145) b!4035216))

(assert (= (and b!4035217 (not res!1643144)) b!4035214))

(assert (= (and b!4035214 res!1643147) b!4035213))

(assert (= (or b!4035216 b!4035213) bm!287086))

(assert (= (or b!4035220 b!4035214) bm!287088))

(assert (= (or b!4035221 bm!287088) bm!287087))

(declare-fun m!4629029 () Bool)

(assert (=> bm!287086 m!4629029))

(declare-fun m!4629031 () Bool)

(assert (=> b!4035219 m!4629031))

(declare-fun m!4629033 () Bool)

(assert (=> bm!287087 m!4629033))

(assert (=> d!1195193 d!1195509))

(declare-fun d!1195519 () Bool)

(declare-fun lt!1435527 () List!43341)

(assert (=> d!1195519 (= (++!11318 (t!334404 lt!1435037) lt!1435527) (tail!6279 lt!1435003))))

(declare-fun e!2503851 () List!43341)

(assert (=> d!1195519 (= lt!1435527 e!2503851)))

(declare-fun c!696925 () Bool)

(assert (=> d!1195519 (= c!696925 ((_ is Cons!43217) (t!334404 lt!1435037)))))

(assert (=> d!1195519 (>= (size!32302 (tail!6279 lt!1435003)) (size!32302 (t!334404 lt!1435037)))))

(assert (=> d!1195519 (= (getSuffix!2420 (tail!6279 lt!1435003) (t!334404 lt!1435037)) lt!1435527)))

(declare-fun b!4035222 () Bool)

(assert (=> b!4035222 (= e!2503851 (getSuffix!2420 (tail!6279 (tail!6279 lt!1435003)) (t!334404 (t!334404 lt!1435037))))))

(declare-fun b!4035223 () Bool)

(assert (=> b!4035223 (= e!2503851 (tail!6279 lt!1435003))))

(assert (= (and d!1195519 c!696925) b!4035222))

(assert (= (and d!1195519 (not c!696925)) b!4035223))

(declare-fun m!4629035 () Bool)

(assert (=> d!1195519 m!4629035))

(assert (=> d!1195519 m!4628179))

(declare-fun m!4629037 () Bool)

(assert (=> d!1195519 m!4629037))

(assert (=> d!1195519 m!4628303))

(assert (=> b!4035222 m!4628179))

(declare-fun m!4629039 () Bool)

(assert (=> b!4035222 m!4629039))

(assert (=> b!4035222 m!4629039))

(declare-fun m!4629041 () Bool)

(assert (=> b!4035222 m!4629041))

(assert (=> b!4034646 d!1195519))

(declare-fun d!1195521 () Bool)

(assert (=> d!1195521 (= (tail!6279 lt!1435003) (t!334404 lt!1435003))))

(assert (=> b!4034646 d!1195521))

(assert (=> b!4034708 d!1195269))

(declare-fun d!1195523 () Bool)

(assert (=> d!1195523 (= (head!8547 lt!1435033) (h!48637 lt!1435033))))

(assert (=> b!4034708 d!1195523))

(assert (=> d!1195139 d!1195137))

(declare-fun d!1195525 () Bool)

(assert (=> d!1195525 (isPrefix!4003 lt!1435037 prefix!494)))

(assert (=> d!1195525 true))

(declare-fun _$69!274 () Unit!62397)

(assert (=> d!1195525 (= (choose!24435 prefix!494 lt!1435037 lt!1435003) _$69!274)))

(declare-fun bs!590487 () Bool)

(assert (= bs!590487 d!1195525))

(assert (=> bs!590487 m!4627523))

(assert (=> d!1195139 d!1195525))

(assert (=> d!1195139 d!1195117))

(declare-fun b!4035230 () Bool)

(declare-fun res!1643152 () Bool)

(declare-fun e!2503856 () Bool)

(assert (=> b!4035230 (=> (not res!1643152) (not e!2503856))))

(declare-fun lt!1435528 () List!43341)

(assert (=> b!4035230 (= res!1643152 (= (size!32302 lt!1435528) (+ (size!32302 lt!1435037) (size!32302 lt!1435221))))))

(declare-fun b!4035231 () Bool)

(assert (=> b!4035231 (= e!2503856 (or (not (= lt!1435221 Nil!43217)) (= lt!1435528 lt!1435037)))))

(declare-fun b!4035229 () Bool)

(declare-fun e!2503857 () List!43341)

(assert (=> b!4035229 (= e!2503857 (Cons!43217 (h!48637 lt!1435037) (++!11318 (t!334404 lt!1435037) lt!1435221)))))

(declare-fun d!1195527 () Bool)

(assert (=> d!1195527 e!2503856))

(declare-fun res!1643153 () Bool)

(assert (=> d!1195527 (=> (not res!1643153) (not e!2503856))))

(assert (=> d!1195527 (= res!1643153 (= (content!6566 lt!1435528) ((_ map or) (content!6566 lt!1435037) (content!6566 lt!1435221))))))

(assert (=> d!1195527 (= lt!1435528 e!2503857)))

(declare-fun c!696926 () Bool)

(assert (=> d!1195527 (= c!696926 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195527 (= (++!11318 lt!1435037 lt!1435221) lt!1435528)))

(declare-fun b!4035228 () Bool)

(assert (=> b!4035228 (= e!2503857 lt!1435221)))

(assert (= (and d!1195527 c!696926) b!4035228))

(assert (= (and d!1195527 (not c!696926)) b!4035229))

(assert (= (and d!1195527 res!1643153) b!4035230))

(assert (= (and b!4035230 res!1643152) b!4035231))

(declare-fun m!4629043 () Bool)

(assert (=> b!4035230 m!4629043))

(assert (=> b!4035230 m!4627507))

(declare-fun m!4629045 () Bool)

(assert (=> b!4035230 m!4629045))

(declare-fun m!4629047 () Bool)

(assert (=> b!4035229 m!4629047))

(declare-fun m!4629049 () Bool)

(assert (=> d!1195527 m!4629049))

(assert (=> d!1195527 m!4627949))

(declare-fun m!4629051 () Bool)

(assert (=> d!1195527 m!4629051))

(assert (=> d!1195135 d!1195527))

(assert (=> d!1195135 d!1195173))

(assert (=> d!1195135 d!1195171))

(assert (=> b!4034581 d!1195269))

(declare-fun d!1195529 () Bool)

(assert (=> d!1195529 (= (head!8547 lt!1435002) (h!48637 lt!1435002))))

(assert (=> b!4034581 d!1195529))

(declare-fun d!1195531 () Bool)

(declare-fun lt!1435529 () Int)

(assert (=> d!1195531 (>= lt!1435529 0)))

(declare-fun e!2503860 () Int)

(assert (=> d!1195531 (= lt!1435529 e!2503860)))

(declare-fun c!696927 () Bool)

(assert (=> d!1195531 (= c!696927 ((_ is Nil!43217) (t!334404 lt!1435037)))))

(assert (=> d!1195531 (= (size!32302 (t!334404 lt!1435037)) lt!1435529)))

(declare-fun b!4035234 () Bool)

(assert (=> b!4035234 (= e!2503860 0)))

(declare-fun b!4035235 () Bool)

(assert (=> b!4035235 (= e!2503860 (+ 1 (size!32302 (t!334404 (t!334404 lt!1435037)))))))

(assert (= (and d!1195531 c!696927) b!4035234))

(assert (= (and d!1195531 (not c!696927)) b!4035235))

(declare-fun m!4629057 () Bool)

(assert (=> b!4035235 m!4629057))

(assert (=> b!4034712 d!1195531))

(declare-fun b!4035238 () Bool)

(declare-fun e!2503862 () Bool)

(declare-fun e!2503863 () Bool)

(assert (=> b!4035238 (= e!2503862 e!2503863)))

(declare-fun res!1643156 () Bool)

(assert (=> b!4035238 (=> (not res!1643156) (not e!2503863))))

(assert (=> b!4035238 (= res!1643156 (not ((_ is Nil!43217) (tail!6279 lt!1435007))))))

(declare-fun b!4035239 () Bool)

(declare-fun res!1643159 () Bool)

(assert (=> b!4035239 (=> (not res!1643159) (not e!2503863))))

(assert (=> b!4035239 (= res!1643159 (= (head!8547 (tail!6279 lt!1435037)) (head!8547 (tail!6279 lt!1435007))))))

(declare-fun d!1195535 () Bool)

(declare-fun e!2503864 () Bool)

(assert (=> d!1195535 e!2503864))

(declare-fun res!1643158 () Bool)

(assert (=> d!1195535 (=> res!1643158 e!2503864)))

(declare-fun lt!1435531 () Bool)

(assert (=> d!1195535 (= res!1643158 (not lt!1435531))))

(assert (=> d!1195535 (= lt!1435531 e!2503862)))

(declare-fun res!1643157 () Bool)

(assert (=> d!1195535 (=> res!1643157 e!2503862)))

(assert (=> d!1195535 (= res!1643157 ((_ is Nil!43217) (tail!6279 lt!1435037)))))

(assert (=> d!1195535 (= (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435007)) lt!1435531)))

(declare-fun b!4035240 () Bool)

(assert (=> b!4035240 (= e!2503863 (isPrefix!4003 (tail!6279 (tail!6279 lt!1435037)) (tail!6279 (tail!6279 lt!1435007))))))

(declare-fun b!4035241 () Bool)

(assert (=> b!4035241 (= e!2503864 (>= (size!32302 (tail!6279 lt!1435007)) (size!32302 (tail!6279 lt!1435037))))))

(assert (= (and d!1195535 (not res!1643157)) b!4035238))

(assert (= (and b!4035238 res!1643156) b!4035239))

(assert (= (and b!4035239 res!1643159) b!4035240))

(assert (= (and d!1195535 (not res!1643158)) b!4035241))

(assert (=> b!4035239 m!4627911))

(declare-fun m!4629063 () Bool)

(assert (=> b!4035239 m!4629063))

(assert (=> b!4035239 m!4627913))

(declare-fun m!4629065 () Bool)

(assert (=> b!4035239 m!4629065))

(assert (=> b!4035240 m!4627911))

(declare-fun m!4629067 () Bool)

(assert (=> b!4035240 m!4629067))

(assert (=> b!4035240 m!4627913))

(declare-fun m!4629069 () Bool)

(assert (=> b!4035240 m!4629069))

(assert (=> b!4035240 m!4629067))

(assert (=> b!4035240 m!4629069))

(declare-fun m!4629071 () Bool)

(assert (=> b!4035240 m!4629071))

(assert (=> b!4035241 m!4627913))

(declare-fun m!4629073 () Bool)

(assert (=> b!4035241 m!4629073))

(assert (=> b!4035241 m!4627911))

(declare-fun m!4629075 () Bool)

(assert (=> b!4035241 m!4629075))

(assert (=> b!4034413 d!1195535))

(assert (=> b!4034413 d!1195405))

(declare-fun d!1195539 () Bool)

(assert (=> d!1195539 (= (tail!6279 lt!1435007) (t!334404 lt!1435007))))

(assert (=> b!4034413 d!1195539))

(declare-fun d!1195541 () Bool)

(assert (=> d!1195541 (= (isEmpty!25793 (originalCharacters!7516 token!484)) ((_ is Nil!43217) (originalCharacters!7516 token!484)))))

(assert (=> d!1195129 d!1195541))

(declare-fun d!1195543 () Bool)

(assert (=> d!1195543 (= (head!8547 lt!1435003) (h!48637 lt!1435003))))

(assert (=> b!4034649 d!1195543))

(declare-fun b!4035247 () Bool)

(declare-fun res!1643160 () Bool)

(declare-fun e!2503866 () Bool)

(assert (=> b!4035247 (=> (not res!1643160) (not e!2503866))))

(declare-fun lt!1435533 () List!43341)

(assert (=> b!4035247 (= res!1643160 (= (size!32302 lt!1435533) (+ (size!32302 lt!1435037) (size!32302 lt!1435227))))))

(declare-fun b!4035249 () Bool)

(assert (=> b!4035249 (= e!2503866 (or (not (= lt!1435227 Nil!43217)) (= lt!1435533 lt!1435037)))))

(declare-fun b!4035245 () Bool)

(declare-fun e!2503869 () List!43341)

(assert (=> b!4035245 (= e!2503869 (Cons!43217 (h!48637 lt!1435037) (++!11318 (t!334404 lt!1435037) lt!1435227)))))

(declare-fun d!1195547 () Bool)

(assert (=> d!1195547 e!2503866))

(declare-fun res!1643162 () Bool)

(assert (=> d!1195547 (=> (not res!1643162) (not e!2503866))))

(assert (=> d!1195547 (= res!1643162 (= (content!6566 lt!1435533) ((_ map or) (content!6566 lt!1435037) (content!6566 lt!1435227))))))

(assert (=> d!1195547 (= lt!1435533 e!2503869)))

(declare-fun c!696930 () Bool)

(assert (=> d!1195547 (= c!696930 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195547 (= (++!11318 lt!1435037 lt!1435227) lt!1435533)))

(declare-fun b!4035244 () Bool)

(assert (=> b!4035244 (= e!2503869 lt!1435227)))

(assert (= (and d!1195547 c!696930) b!4035244))

(assert (= (and d!1195547 (not c!696930)) b!4035245))

(assert (= (and d!1195547 res!1643162) b!4035247))

(assert (= (and b!4035247 res!1643160) b!4035249))

(declare-fun m!4629079 () Bool)

(assert (=> b!4035247 m!4629079))

(assert (=> b!4035247 m!4627507))

(declare-fun m!4629081 () Bool)

(assert (=> b!4035247 m!4629081))

(declare-fun m!4629083 () Bool)

(assert (=> b!4035245 m!4629083))

(declare-fun m!4629085 () Bool)

(assert (=> d!1195547 m!4629085))

(assert (=> d!1195547 m!4627949))

(declare-fun m!4629087 () Bool)

(assert (=> d!1195547 m!4629087))

(assert (=> d!1195147 d!1195547))

(assert (=> d!1195147 d!1195255))

(assert (=> d!1195147 d!1195171))

(declare-fun d!1195549 () Bool)

(declare-fun nullableFct!1159 (Regex!11821) Bool)

(assert (=> d!1195549 (= (nullable!4144 (regex!6916 (rule!9982 token!484))) (nullableFct!1159 (regex!6916 (rule!9982 token!484))))))

(declare-fun bs!590489 () Bool)

(assert (= bs!590489 d!1195549))

(declare-fun m!4629103 () Bool)

(assert (=> bs!590489 m!4629103))

(assert (=> b!4034702 d!1195549))

(declare-fun d!1195555 () Bool)

(assert (=> d!1195555 (= suffixResult!105 lt!1435011)))

(assert (=> d!1195555 true))

(declare-fun _$63!1092 () Unit!62397)

(assert (=> d!1195555 (= (choose!24429 lt!1435037 suffixResult!105 lt!1435037 lt!1435011 lt!1435003) _$63!1092)))

(assert (=> d!1195027 d!1195555))

(assert (=> d!1195027 d!1195113))

(declare-fun d!1195557 () Bool)

(declare-fun c!696936 () Bool)

(assert (=> d!1195557 (= c!696936 ((_ is Nil!43219) rules!2999))))

(declare-fun e!2503876 () (InoxSet Rule!13632))

(assert (=> d!1195557 (= (content!6567 rules!2999) e!2503876)))

(declare-fun b!4035263 () Bool)

(assert (=> b!4035263 (= e!2503876 ((as const (Array Rule!13632 Bool)) false))))

(declare-fun b!4035264 () Bool)

(assert (=> b!4035264 (= e!2503876 ((_ map or) (store ((as const (Array Rule!13632 Bool)) false) (h!48639 rules!2999) true) (content!6567 (t!334406 rules!2999))))))

(assert (= (and d!1195557 c!696936) b!4035263))

(assert (= (and d!1195557 (not c!696936)) b!4035264))

(declare-fun m!4629121 () Bool)

(assert (=> b!4035264 m!4629121))

(assert (=> b!4035264 m!4628947))

(assert (=> d!1195181 d!1195557))

(declare-fun d!1195565 () Bool)

(declare-fun c!696940 () Bool)

(assert (=> d!1195565 (= c!696940 ((_ is Node!13127) (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))))))

(declare-fun e!2503882 () Bool)

(assert (=> d!1195565 (= (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))) e!2503882)))

(declare-fun b!4035273 () Bool)

(declare-fun inv!57744 (Conc!13127) Bool)

(assert (=> b!4035273 (= e!2503882 (inv!57744 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))))))

(declare-fun b!4035274 () Bool)

(declare-fun e!2503883 () Bool)

(assert (=> b!4035274 (= e!2503882 e!2503883)))

(declare-fun res!1643168 () Bool)

(assert (=> b!4035274 (= res!1643168 (not ((_ is Leaf!20292) (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))))))))

(assert (=> b!4035274 (=> res!1643168 e!2503883)))

(declare-fun b!4035275 () Bool)

(declare-fun inv!57745 (Conc!13127) Bool)

(assert (=> b!4035275 (= e!2503883 (inv!57745 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))))))

(assert (= (and d!1195565 c!696940) b!4035273))

(assert (= (and d!1195565 (not c!696940)) b!4035274))

(assert (= (and b!4035274 (not res!1643168)) b!4035275))

(declare-fun m!4629129 () Bool)

(assert (=> b!4035273 m!4629129))

(declare-fun m!4629131 () Bool)

(assert (=> b!4035275 m!4629131))

(assert (=> b!4034611 d!1195565))

(declare-fun d!1195573 () Bool)

(assert (=> d!1195573 (= (list!16082 lt!1435248) (list!16084 (c!696700 lt!1435248)))))

(declare-fun bs!590493 () Bool)

(assert (= bs!590493 d!1195573))

(declare-fun m!4629133 () Bool)

(assert (=> bs!590493 m!4629133))

(assert (=> d!1195177 d!1195573))

(declare-fun b!4035276 () Bool)

(declare-fun e!2503884 () Bool)

(declare-fun e!2503885 () Bool)

(assert (=> b!4035276 (= e!2503884 e!2503885)))

(declare-fun res!1643169 () Bool)

(assert (=> b!4035276 (=> (not res!1643169) (not e!2503885))))

(assert (=> b!4035276 (= res!1643169 (not ((_ is Nil!43217) (tail!6279 prefix!494))))))

(declare-fun b!4035277 () Bool)

(declare-fun res!1643172 () Bool)

(assert (=> b!4035277 (=> (not res!1643172) (not e!2503885))))

(assert (=> b!4035277 (= res!1643172 (= (head!8547 (tail!6279 lt!1435037)) (head!8547 (tail!6279 prefix!494))))))

(declare-fun d!1195575 () Bool)

(declare-fun e!2503886 () Bool)

(assert (=> d!1195575 e!2503886))

(declare-fun res!1643171 () Bool)

(assert (=> d!1195575 (=> res!1643171 e!2503886)))

(declare-fun lt!1435539 () Bool)

(assert (=> d!1195575 (= res!1643171 (not lt!1435539))))

(assert (=> d!1195575 (= lt!1435539 e!2503884)))

(declare-fun res!1643170 () Bool)

(assert (=> d!1195575 (=> res!1643170 e!2503884)))

(assert (=> d!1195575 (= res!1643170 ((_ is Nil!43217) (tail!6279 lt!1435037)))))

(assert (=> d!1195575 (= (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 prefix!494)) lt!1435539)))

(declare-fun b!4035278 () Bool)

(assert (=> b!4035278 (= e!2503885 (isPrefix!4003 (tail!6279 (tail!6279 lt!1435037)) (tail!6279 (tail!6279 prefix!494))))))

(declare-fun b!4035279 () Bool)

(assert (=> b!4035279 (= e!2503886 (>= (size!32302 (tail!6279 prefix!494)) (size!32302 (tail!6279 lt!1435037))))))

(assert (= (and d!1195575 (not res!1643170)) b!4035276))

(assert (= (and b!4035276 res!1643169) b!4035277))

(assert (= (and b!4035277 res!1643172) b!4035278))

(assert (= (and d!1195575 (not res!1643171)) b!4035279))

(assert (=> b!4035277 m!4627911))

(assert (=> b!4035277 m!4629063))

(assert (=> b!4035277 m!4628189))

(declare-fun m!4629135 () Bool)

(assert (=> b!4035277 m!4629135))

(assert (=> b!4035278 m!4627911))

(assert (=> b!4035278 m!4629067))

(assert (=> b!4035278 m!4628189))

(assert (=> b!4035278 m!4628801))

(assert (=> b!4035278 m!4629067))

(assert (=> b!4035278 m!4628801))

(declare-fun m!4629137 () Bool)

(assert (=> b!4035278 m!4629137))

(assert (=> b!4035279 m!4628189))

(assert (=> b!4035279 m!4628799))

(assert (=> b!4035279 m!4627911))

(assert (=> b!4035279 m!4629075))

(assert (=> b!4034639 d!1195575))

(assert (=> b!4034639 d!1195405))

(assert (=> b!4034639 d!1195415))

(assert (=> b!4034589 d!1195395))

(assert (=> b!4034589 d!1195543))

(declare-fun d!1195577 () Bool)

(declare-fun lt!1435540 () Bool)

(assert (=> d!1195577 (= lt!1435540 (select (content!6567 rules!2999) (rule!9982 (_1!24283 (get!14180 lt!1435131)))))))

(declare-fun e!2503887 () Bool)

(assert (=> d!1195577 (= lt!1435540 e!2503887)))

(declare-fun res!1643173 () Bool)

(assert (=> d!1195577 (=> (not res!1643173) (not e!2503887))))

(assert (=> d!1195577 (= res!1643173 ((_ is Cons!43219) rules!2999))))

(assert (=> d!1195577 (= (contains!8580 rules!2999 (rule!9982 (_1!24283 (get!14180 lt!1435131)))) lt!1435540)))

(declare-fun b!4035280 () Bool)

(declare-fun e!2503888 () Bool)

(assert (=> b!4035280 (= e!2503887 e!2503888)))

(declare-fun res!1643174 () Bool)

(assert (=> b!4035280 (=> res!1643174 e!2503888)))

(assert (=> b!4035280 (= res!1643174 (= (h!48639 rules!2999) (rule!9982 (_1!24283 (get!14180 lt!1435131)))))))

(declare-fun b!4035281 () Bool)

(assert (=> b!4035281 (= e!2503888 (contains!8580 (t!334406 rules!2999) (rule!9982 (_1!24283 (get!14180 lt!1435131)))))))

(assert (= (and d!1195577 res!1643173) b!4035280))

(assert (= (and b!4035280 (not res!1643174)) b!4035281))

(assert (=> d!1195577 m!4628313))

(declare-fun m!4629139 () Bool)

(assert (=> d!1195577 m!4629139))

(declare-fun m!4629141 () Bool)

(assert (=> b!4035281 m!4629141))

(assert (=> b!4034362 d!1195577))

(assert (=> b!4034362 d!1195473))

(declare-fun d!1195579 () Bool)

(declare-fun lt!1435541 () Bool)

(assert (=> d!1195579 (= lt!1435541 (select (content!6567 rules!2999) (rule!9982 (_1!24283 (get!14180 lt!1435112)))))))

(declare-fun e!2503889 () Bool)

(assert (=> d!1195579 (= lt!1435541 e!2503889)))

(declare-fun res!1643175 () Bool)

(assert (=> d!1195579 (=> (not res!1643175) (not e!2503889))))

(assert (=> d!1195579 (= res!1643175 ((_ is Cons!43219) rules!2999))))

(assert (=> d!1195579 (= (contains!8580 rules!2999 (rule!9982 (_1!24283 (get!14180 lt!1435112)))) lt!1435541)))

(declare-fun b!4035282 () Bool)

(declare-fun e!2503890 () Bool)

(assert (=> b!4035282 (= e!2503889 e!2503890)))

(declare-fun res!1643176 () Bool)

(assert (=> b!4035282 (=> res!1643176 e!2503890)))

(assert (=> b!4035282 (= res!1643176 (= (h!48639 rules!2999) (rule!9982 (_1!24283 (get!14180 lt!1435112)))))))

(declare-fun b!4035283 () Bool)

(assert (=> b!4035283 (= e!2503890 (contains!8580 (t!334406 rules!2999) (rule!9982 (_1!24283 (get!14180 lt!1435112)))))))

(assert (= (and d!1195579 res!1643175) b!4035282))

(assert (= (and b!4035282 (not res!1643176)) b!4035283))

(assert (=> d!1195579 m!4628313))

(declare-fun m!4629143 () Bool)

(assert (=> d!1195579 m!4629143))

(declare-fun m!4629145 () Bool)

(assert (=> b!4035283 m!4629145))

(assert (=> b!4034314 d!1195579))

(assert (=> b!4034314 d!1195459))

(declare-fun b!4035284 () Bool)

(declare-fun e!2503891 () Bool)

(declare-fun e!2503892 () Bool)

(assert (=> b!4035284 (= e!2503891 e!2503892)))

(declare-fun res!1643177 () Bool)

(assert (=> b!4035284 (=> (not res!1643177) (not e!2503892))))

(assert (=> b!4035284 (= res!1643177 (not ((_ is Nil!43217) (tail!6279 lt!1435001))))))

(declare-fun b!4035285 () Bool)

(declare-fun res!1643180 () Bool)

(assert (=> b!4035285 (=> (not res!1643180) (not e!2503892))))

(assert (=> b!4035285 (= res!1643180 (= (head!8547 (tail!6279 lt!1435037)) (head!8547 (tail!6279 lt!1435001))))))

(declare-fun d!1195581 () Bool)

(declare-fun e!2503893 () Bool)

(assert (=> d!1195581 e!2503893))

(declare-fun res!1643179 () Bool)

(assert (=> d!1195581 (=> res!1643179 e!2503893)))

(declare-fun lt!1435542 () Bool)

(assert (=> d!1195581 (= res!1643179 (not lt!1435542))))

(assert (=> d!1195581 (= lt!1435542 e!2503891)))

(declare-fun res!1643178 () Bool)

(assert (=> d!1195581 (=> res!1643178 e!2503891)))

(assert (=> d!1195581 (= res!1643178 ((_ is Nil!43217) (tail!6279 lt!1435037)))))

(assert (=> d!1195581 (= (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435001)) lt!1435542)))

(declare-fun b!4035286 () Bool)

(assert (=> b!4035286 (= e!2503892 (isPrefix!4003 (tail!6279 (tail!6279 lt!1435037)) (tail!6279 (tail!6279 lt!1435001))))))

(declare-fun b!4035287 () Bool)

(assert (=> b!4035287 (= e!2503893 (>= (size!32302 (tail!6279 lt!1435001)) (size!32302 (tail!6279 lt!1435037))))))

(assert (= (and d!1195581 (not res!1643178)) b!4035284))

(assert (= (and b!4035284 res!1643177) b!4035285))

(assert (= (and b!4035285 res!1643180) b!4035286))

(assert (= (and d!1195581 (not res!1643179)) b!4035287))

(assert (=> b!4035285 m!4627911))

(assert (=> b!4035285 m!4629063))

(assert (=> b!4035285 m!4628195))

(declare-fun m!4629147 () Bool)

(assert (=> b!4035285 m!4629147))

(assert (=> b!4035286 m!4627911))

(assert (=> b!4035286 m!4629067))

(assert (=> b!4035286 m!4628195))

(declare-fun m!4629149 () Bool)

(assert (=> b!4035286 m!4629149))

(assert (=> b!4035286 m!4629067))

(assert (=> b!4035286 m!4629149))

(declare-fun m!4629151 () Bool)

(assert (=> b!4035286 m!4629151))

(assert (=> b!4035287 m!4628195))

(declare-fun m!4629153 () Bool)

(assert (=> b!4035287 m!4629153))

(assert (=> b!4035287 m!4627911))

(assert (=> b!4035287 m!4629075))

(assert (=> b!4034594 d!1195581))

(assert (=> b!4034594 d!1195405))

(declare-fun d!1195583 () Bool)

(assert (=> d!1195583 (= (tail!6279 lt!1435001) (t!334404 lt!1435001))))

(assert (=> b!4034594 d!1195583))

(declare-fun d!1195585 () Bool)

(declare-fun res!1643185 () Bool)

(declare-fun e!2503898 () Bool)

(assert (=> d!1195585 (=> res!1643185 e!2503898)))

(assert (=> d!1195585 (= res!1643185 ((_ is Nil!43219) rules!2999))))

(assert (=> d!1195585 (= (noDuplicateTag!2687 thiss!21717 rules!2999 Nil!43221) e!2503898)))

(declare-fun b!4035292 () Bool)

(declare-fun e!2503899 () Bool)

(assert (=> b!4035292 (= e!2503898 e!2503899)))

(declare-fun res!1643186 () Bool)

(assert (=> b!4035292 (=> (not res!1643186) (not e!2503899))))

(declare-fun contains!8582 (List!43345 String!49448) Bool)

(assert (=> b!4035292 (= res!1643186 (not (contains!8582 Nil!43221 (tag!7776 (h!48639 rules!2999)))))))

(declare-fun b!4035293 () Bool)

(assert (=> b!4035293 (= e!2503899 (noDuplicateTag!2687 thiss!21717 (t!334406 rules!2999) (Cons!43221 (tag!7776 (h!48639 rules!2999)) Nil!43221)))))

(assert (= (and d!1195585 (not res!1643185)) b!4035292))

(assert (= (and b!4035292 res!1643186) b!4035293))

(declare-fun m!4629155 () Bool)

(assert (=> b!4035292 m!4629155))

(declare-fun m!4629157 () Bool)

(assert (=> b!4035293 m!4629157))

(assert (=> b!4034739 d!1195585))

(declare-fun d!1195587 () Bool)

(declare-fun charsToInt!0 (List!43342) (_ BitVec 32))

(assert (=> d!1195587 (= (inv!16 (value!217740 token!484)) (= (charsToInt!0 (text!50469 (value!217740 token!484))) (value!217731 (value!217740 token!484))))))

(declare-fun bs!590494 () Bool)

(assert (= bs!590494 d!1195587))

(declare-fun m!4629159 () Bool)

(assert (=> bs!590494 m!4629159))

(assert (=> b!4034626 d!1195587))

(declare-fun d!1195589 () Bool)

(assert (=> d!1195589 (= (isEmpty!25793 lt!1435037) ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195163 d!1195589))

(declare-fun bm!287089 () Bool)

(declare-fun call!287094 () Bool)

(declare-fun c!696941 () Bool)

(assert (=> bm!287089 (= call!287094 (validRegex!5344 (ite c!696941 (regTwo!24155 (regex!6916 (rule!9982 token!484))) (regTwo!24154 (regex!6916 (rule!9982 token!484))))))))

(declare-fun b!4035294 () Bool)

(declare-fun e!2503906 () Bool)

(assert (=> b!4035294 (= e!2503906 call!287094)))

(declare-fun b!4035295 () Bool)

(declare-fun e!2503904 () Bool)

(assert (=> b!4035295 (= e!2503904 e!2503906)))

(declare-fun res!1643191 () Bool)

(assert (=> b!4035295 (=> (not res!1643191) (not e!2503906))))

(declare-fun call!287095 () Bool)

(assert (=> b!4035295 (= res!1643191 call!287095)))

(declare-fun b!4035296 () Bool)

(declare-fun e!2503900 () Bool)

(declare-fun e!2503901 () Bool)

(assert (=> b!4035296 (= e!2503900 e!2503901)))

(assert (=> b!4035296 (= c!696941 ((_ is Union!11821) (regex!6916 (rule!9982 token!484))))))

(declare-fun b!4035297 () Bool)

(declare-fun e!2503902 () Bool)

(assert (=> b!4035297 (= e!2503902 call!287094)))

(declare-fun d!1195591 () Bool)

(declare-fun res!1643187 () Bool)

(declare-fun e!2503905 () Bool)

(assert (=> d!1195591 (=> res!1643187 e!2503905)))

(assert (=> d!1195591 (= res!1643187 ((_ is ElementMatch!11821) (regex!6916 (rule!9982 token!484))))))

(assert (=> d!1195591 (= (validRegex!5344 (regex!6916 (rule!9982 token!484))) e!2503905)))

(declare-fun b!4035298 () Bool)

(declare-fun res!1643188 () Bool)

(assert (=> b!4035298 (=> res!1643188 e!2503904)))

(assert (=> b!4035298 (= res!1643188 (not ((_ is Concat!18968) (regex!6916 (rule!9982 token!484)))))))

(assert (=> b!4035298 (= e!2503901 e!2503904)))

(declare-fun b!4035299 () Bool)

(assert (=> b!4035299 (= e!2503905 e!2503900)))

(declare-fun c!696942 () Bool)

(assert (=> b!4035299 (= c!696942 ((_ is Star!11821) (regex!6916 (rule!9982 token!484))))))

(declare-fun b!4035300 () Bool)

(declare-fun e!2503903 () Bool)

(assert (=> b!4035300 (= e!2503900 e!2503903)))

(declare-fun res!1643190 () Bool)

(assert (=> b!4035300 (= res!1643190 (not (nullable!4144 (reg!12150 (regex!6916 (rule!9982 token!484))))))))

(assert (=> b!4035300 (=> (not res!1643190) (not e!2503903))))

(declare-fun bm!287090 () Bool)

(declare-fun call!287096 () Bool)

(assert (=> bm!287090 (= call!287096 (validRegex!5344 (ite c!696942 (reg!12150 (regex!6916 (rule!9982 token!484))) (ite c!696941 (regOne!24155 (regex!6916 (rule!9982 token!484))) (regOne!24154 (regex!6916 (rule!9982 token!484)))))))))

(declare-fun b!4035301 () Bool)

(declare-fun res!1643189 () Bool)

(assert (=> b!4035301 (=> (not res!1643189) (not e!2503902))))

(assert (=> b!4035301 (= res!1643189 call!287095)))

(assert (=> b!4035301 (= e!2503901 e!2503902)))

(declare-fun b!4035302 () Bool)

(assert (=> b!4035302 (= e!2503903 call!287096)))

(declare-fun bm!287091 () Bool)

(assert (=> bm!287091 (= call!287095 call!287096)))

(assert (= (and d!1195591 (not res!1643187)) b!4035299))

(assert (= (and b!4035299 c!696942) b!4035300))

(assert (= (and b!4035299 (not c!696942)) b!4035296))

(assert (= (and b!4035300 res!1643190) b!4035302))

(assert (= (and b!4035296 c!696941) b!4035301))

(assert (= (and b!4035296 (not c!696941)) b!4035298))

(assert (= (and b!4035301 res!1643189) b!4035297))

(assert (= (and b!4035298 (not res!1643188)) b!4035295))

(assert (= (and b!4035295 res!1643191) b!4035294))

(assert (= (or b!4035297 b!4035294) bm!287089))

(assert (= (or b!4035301 b!4035295) bm!287091))

(assert (= (or b!4035302 bm!287091) bm!287090))

(declare-fun m!4629161 () Bool)

(assert (=> bm!287089 m!4629161))

(declare-fun m!4629163 () Bool)

(assert (=> b!4035300 m!4629163))

(declare-fun m!4629165 () Bool)

(assert (=> bm!287090 m!4629165))

(assert (=> d!1195163 d!1195591))

(declare-fun b!4035314 () Bool)

(declare-fun e!2503912 () List!43341)

(assert (=> b!4035314 (= e!2503912 (++!11318 (list!16084 (left!32547 (c!696700 (charsOf!4732 (_1!24283 (v!39723 lt!1435020)))))) (list!16084 (right!32877 (c!696700 (charsOf!4732 (_1!24283 (v!39723 lt!1435020))))))))))

(declare-fun b!4035311 () Bool)

(declare-fun e!2503911 () List!43341)

(assert (=> b!4035311 (= e!2503911 Nil!43217)))

(declare-fun d!1195593 () Bool)

(declare-fun c!696947 () Bool)

(assert (=> d!1195593 (= c!696947 ((_ is Empty!13127) (c!696700 (charsOf!4732 (_1!24283 (v!39723 lt!1435020))))))))

(assert (=> d!1195593 (= (list!16084 (c!696700 (charsOf!4732 (_1!24283 (v!39723 lt!1435020))))) e!2503911)))

(declare-fun b!4035313 () Bool)

(declare-fun list!16086 (IArray!26259) List!43341)

(assert (=> b!4035313 (= e!2503912 (list!16086 (xs!16433 (c!696700 (charsOf!4732 (_1!24283 (v!39723 lt!1435020)))))))))

(declare-fun b!4035312 () Bool)

(assert (=> b!4035312 (= e!2503911 e!2503912)))

(declare-fun c!696948 () Bool)

(assert (=> b!4035312 (= c!696948 ((_ is Leaf!20292) (c!696700 (charsOf!4732 (_1!24283 (v!39723 lt!1435020))))))))

(assert (= (and d!1195593 c!696947) b!4035311))

(assert (= (and d!1195593 (not c!696947)) b!4035312))

(assert (= (and b!4035312 c!696948) b!4035313))

(assert (= (and b!4035312 (not c!696948)) b!4035314))

(declare-fun m!4629167 () Bool)

(assert (=> b!4035314 m!4629167))

(declare-fun m!4629169 () Bool)

(assert (=> b!4035314 m!4629169))

(assert (=> b!4035314 m!4629167))

(assert (=> b!4035314 m!4629169))

(declare-fun m!4629171 () Bool)

(assert (=> b!4035314 m!4629171))

(declare-fun m!4629173 () Bool)

(assert (=> b!4035313 m!4629173))

(assert (=> d!1195179 d!1195593))

(declare-fun b!4035315 () Bool)

(declare-fun e!2503913 () Bool)

(declare-fun e!2503914 () Bool)

(assert (=> b!4035315 (= e!2503913 e!2503914)))

(declare-fun res!1643192 () Bool)

(assert (=> b!4035315 (=> (not res!1643192) (not e!2503914))))

(assert (=> b!4035315 (= res!1643192 (not ((_ is Nil!43217) (++!11318 prefix!494 suffix!1299))))))

(declare-fun b!4035316 () Bool)

(declare-fun res!1643195 () Bool)

(assert (=> b!4035316 (=> (not res!1643195) (not e!2503914))))

(assert (=> b!4035316 (= res!1643195 (= (head!8547 lt!1435037) (head!8547 (++!11318 prefix!494 suffix!1299))))))

(declare-fun d!1195597 () Bool)

(declare-fun e!2503915 () Bool)

(assert (=> d!1195597 e!2503915))

(declare-fun res!1643194 () Bool)

(assert (=> d!1195597 (=> res!1643194 e!2503915)))

(declare-fun lt!1435543 () Bool)

(assert (=> d!1195597 (= res!1643194 (not lt!1435543))))

(assert (=> d!1195597 (= lt!1435543 e!2503913)))

(declare-fun res!1643193 () Bool)

(assert (=> d!1195597 (=> res!1643193 e!2503913)))

(assert (=> d!1195597 (= res!1643193 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195597 (= (isPrefix!4003 lt!1435037 (++!11318 prefix!494 suffix!1299)) lt!1435543)))

(declare-fun b!4035317 () Bool)

(assert (=> b!4035317 (= e!2503914 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 (++!11318 prefix!494 suffix!1299))))))

(declare-fun b!4035318 () Bool)

(assert (=> b!4035318 (= e!2503915 (>= (size!32302 (++!11318 prefix!494 suffix!1299)) (size!32302 lt!1435037)))))

(assert (= (and d!1195597 (not res!1643193)) b!4035315))

(assert (= (and b!4035315 res!1643192) b!4035316))

(assert (= (and b!4035316 res!1643195) b!4035317))

(assert (= (and d!1195597 (not res!1643194)) b!4035318))

(assert (=> b!4035316 m!4627907))

(assert (=> b!4035316 m!4627469))

(declare-fun m!4629175 () Bool)

(assert (=> b!4035316 m!4629175))

(assert (=> b!4035317 m!4627911))

(assert (=> b!4035317 m!4627469))

(declare-fun m!4629177 () Bool)

(assert (=> b!4035317 m!4629177))

(assert (=> b!4035317 m!4627911))

(assert (=> b!4035317 m!4629177))

(declare-fun m!4629179 () Bool)

(assert (=> b!4035317 m!4629179))

(assert (=> b!4035318 m!4627469))

(declare-fun m!4629181 () Bool)

(assert (=> b!4035318 m!4629181))

(assert (=> b!4035318 m!4627507))

(assert (=> d!1195169 d!1195597))

(assert (=> d!1195169 d!1195003))

(declare-fun d!1195599 () Bool)

(assert (=> d!1195599 (isPrefix!4003 lt!1435037 (++!11318 prefix!494 suffix!1299))))

(assert (=> d!1195599 true))

(declare-fun _$58!564 () Unit!62397)

(assert (=> d!1195599 (= (choose!24438 lt!1435037 prefix!494 suffix!1299) _$58!564)))

(declare-fun bs!590496 () Bool)

(assert (= bs!590496 d!1195599))

(assert (=> bs!590496 m!4627469))

(assert (=> bs!590496 m!4627469))

(assert (=> bs!590496 m!4628299))

(assert (=> d!1195169 d!1195599))

(assert (=> d!1195169 d!1195137))

(declare-fun b!4035319 () Bool)

(declare-fun e!2503916 () Bool)

(declare-fun e!2503917 () Bool)

(assert (=> b!4035319 (= e!2503916 e!2503917)))

(declare-fun res!1643196 () Bool)

(assert (=> b!4035319 (=> (not res!1643196) (not e!2503917))))

(assert (=> b!4035319 (= res!1643196 (not ((_ is Nil!43217) (tail!6279 suffix!1299))))))

(declare-fun b!4035320 () Bool)

(declare-fun res!1643199 () Bool)

(assert (=> b!4035320 (=> (not res!1643199) (not e!2503917))))

(assert (=> b!4035320 (= res!1643199 (= (head!8547 (tail!6279 newSuffix!27)) (head!8547 (tail!6279 suffix!1299))))))

(declare-fun d!1195601 () Bool)

(declare-fun e!2503918 () Bool)

(assert (=> d!1195601 e!2503918))

(declare-fun res!1643198 () Bool)

(assert (=> d!1195601 (=> res!1643198 e!2503918)))

(declare-fun lt!1435544 () Bool)

(assert (=> d!1195601 (= res!1643198 (not lt!1435544))))

(assert (=> d!1195601 (= lt!1435544 e!2503916)))

(declare-fun res!1643197 () Bool)

(assert (=> d!1195601 (=> res!1643197 e!2503916)))

(assert (=> d!1195601 (= res!1643197 ((_ is Nil!43217) (tail!6279 newSuffix!27)))))

(assert (=> d!1195601 (= (isPrefix!4003 (tail!6279 newSuffix!27) (tail!6279 suffix!1299)) lt!1435544)))

(declare-fun b!4035321 () Bool)

(assert (=> b!4035321 (= e!2503917 (isPrefix!4003 (tail!6279 (tail!6279 newSuffix!27)) (tail!6279 (tail!6279 suffix!1299))))))

(declare-fun b!4035322 () Bool)

(assert (=> b!4035322 (= e!2503918 (>= (size!32302 (tail!6279 suffix!1299)) (size!32302 (tail!6279 newSuffix!27))))))

(assert (= (and d!1195601 (not res!1643197)) b!4035319))

(assert (= (and b!4035319 res!1643196) b!4035320))

(assert (= (and b!4035320 res!1643199) b!4035321))

(assert (= (and d!1195601 (not res!1643198)) b!4035322))

(assert (=> b!4035320 m!4628379))

(declare-fun m!4629183 () Bool)

(assert (=> b!4035320 m!4629183))

(assert (=> b!4035320 m!4628381))

(declare-fun m!4629185 () Bool)

(assert (=> b!4035320 m!4629185))

(assert (=> b!4035321 m!4628379))

(declare-fun m!4629187 () Bool)

(assert (=> b!4035321 m!4629187))

(assert (=> b!4035321 m!4628381))

(declare-fun m!4629189 () Bool)

(assert (=> b!4035321 m!4629189))

(assert (=> b!4035321 m!4629187))

(assert (=> b!4035321 m!4629189))

(declare-fun m!4629191 () Bool)

(assert (=> b!4035321 m!4629191))

(assert (=> b!4035322 m!4628381))

(declare-fun m!4629193 () Bool)

(assert (=> b!4035322 m!4629193))

(assert (=> b!4035322 m!4628379))

(declare-fun m!4629195 () Bool)

(assert (=> b!4035322 m!4629195))

(assert (=> b!4034742 d!1195601))

(declare-fun d!1195603 () Bool)

(assert (=> d!1195603 (= (tail!6279 newSuffix!27) (t!334404 newSuffix!27))))

(assert (=> b!4034742 d!1195603))

(declare-fun d!1195605 () Bool)

(assert (=> d!1195605 (= (tail!6279 suffix!1299) (t!334404 suffix!1299))))

(assert (=> b!4034742 d!1195605))

(declare-fun d!1195607 () Bool)

(declare-fun lt!1435545 () Int)

(assert (=> d!1195607 (>= lt!1435545 0)))

(declare-fun e!2503919 () Int)

(assert (=> d!1195607 (= lt!1435545 e!2503919)))

(declare-fun c!696949 () Bool)

(assert (=> d!1195607 (= c!696949 ((_ is Nil!43217) lt!1435226))))

(assert (=> d!1195607 (= (size!32302 lt!1435226) lt!1435545)))

(declare-fun b!4035323 () Bool)

(assert (=> b!4035323 (= e!2503919 0)))

(declare-fun b!4035324 () Bool)

(assert (=> b!4035324 (= e!2503919 (+ 1 (size!32302 (t!334404 lt!1435226))))))

(assert (= (and d!1195607 c!696949) b!4035323))

(assert (= (and d!1195607 (not c!696949)) b!4035324))

(declare-fun m!4629197 () Bool)

(assert (=> b!4035324 m!4629197))

(assert (=> b!4034644 d!1195607))

(assert (=> b!4034644 d!1195171))

(declare-fun d!1195609 () Bool)

(declare-fun lt!1435546 () Int)

(assert (=> d!1195609 (>= lt!1435546 0)))

(declare-fun e!2503920 () Int)

(assert (=> d!1195609 (= lt!1435546 e!2503920)))

(declare-fun c!696950 () Bool)

(assert (=> d!1195609 (= c!696950 ((_ is Nil!43217) lt!1435011))))

(assert (=> d!1195609 (= (size!32302 lt!1435011) lt!1435546)))

(declare-fun b!4035325 () Bool)

(assert (=> b!4035325 (= e!2503920 0)))

(declare-fun b!4035326 () Bool)

(assert (=> b!4035326 (= e!2503920 (+ 1 (size!32302 (t!334404 lt!1435011))))))

(assert (= (and d!1195609 c!696950) b!4035325))

(assert (= (and d!1195609 (not c!696950)) b!4035326))

(declare-fun m!4629199 () Bool)

(assert (=> b!4035326 m!4629199))

(assert (=> b!4034644 d!1195609))

(declare-fun b!4035327 () Bool)

(declare-fun e!2503927 () Bool)

(declare-fun lt!1435547 () Bool)

(assert (=> b!4035327 (= e!2503927 (not lt!1435547))))

(declare-fun b!4035328 () Bool)

(declare-fun e!2503925 () Bool)

(declare-fun e!2503922 () Bool)

(assert (=> b!4035328 (= e!2503925 e!2503922)))

(declare-fun res!1643203 () Bool)

(assert (=> b!4035328 (=> (not res!1643203) (not e!2503922))))

(assert (=> b!4035328 (= res!1643203 (not lt!1435547))))

(declare-fun b!4035329 () Bool)

(declare-fun res!1643204 () Bool)

(assert (=> b!4035329 (=> res!1643204 e!2503925)))

(declare-fun e!2503921 () Bool)

(assert (=> b!4035329 (= res!1643204 e!2503921)))

(declare-fun res!1643205 () Bool)

(assert (=> b!4035329 (=> (not res!1643205) (not e!2503921))))

(assert (=> b!4035329 (= res!1643205 lt!1435547)))

(declare-fun b!4035330 () Bool)

(declare-fun res!1643206 () Bool)

(declare-fun e!2503926 () Bool)

(assert (=> b!4035330 (=> res!1643206 e!2503926)))

(assert (=> b!4035330 (= res!1643206 (not (isEmpty!25793 (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))))))))

(declare-fun b!4035331 () Bool)

(assert (=> b!4035331 (= e!2503921 (= (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))) (c!696701 (regex!6916 (rule!9982 token!484)))))))

(declare-fun b!4035332 () Bool)

(declare-fun e!2503923 () Bool)

(assert (=> b!4035332 (= e!2503923 e!2503927)))

(declare-fun c!696953 () Bool)

(assert (=> b!4035332 (= c!696953 ((_ is EmptyLang!11821) (regex!6916 (rule!9982 token!484))))))

(declare-fun b!4035333 () Bool)

(declare-fun call!287097 () Bool)

(assert (=> b!4035333 (= e!2503923 (= lt!1435547 call!287097))))

(declare-fun b!4035334 () Bool)

(declare-fun res!1643202 () Bool)

(assert (=> b!4035334 (=> (not res!1643202) (not e!2503921))))

(assert (=> b!4035334 (= res!1643202 (isEmpty!25793 (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210)))))))))

(declare-fun b!4035335 () Bool)

(declare-fun res!1643200 () Bool)

(assert (=> b!4035335 (=> (not res!1643200) (not e!2503921))))

(assert (=> b!4035335 (= res!1643200 (not call!287097))))

(declare-fun b!4035336 () Bool)

(declare-fun e!2503924 () Bool)

(assert (=> b!4035336 (= e!2503924 (nullable!4144 (regex!6916 (rule!9982 token!484))))))

(declare-fun d!1195611 () Bool)

(assert (=> d!1195611 e!2503923))

(declare-fun c!696951 () Bool)

(assert (=> d!1195611 (= c!696951 ((_ is EmptyExpr!11821) (regex!6916 (rule!9982 token!484))))))

(assert (=> d!1195611 (= lt!1435547 e!2503924)))

(declare-fun c!696952 () Bool)

(assert (=> d!1195611 (= c!696952 (isEmpty!25793 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))))))

(assert (=> d!1195611 (validRegex!5344 (regex!6916 (rule!9982 token!484)))))

(assert (=> d!1195611 (= (matchR!5774 (regex!6916 (rule!9982 token!484)) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))) lt!1435547)))

(declare-fun b!4035337 () Bool)

(assert (=> b!4035337 (= e!2503926 (not (= (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))) (c!696701 (regex!6916 (rule!9982 token!484))))))))

(declare-fun bm!287092 () Bool)

(assert (=> bm!287092 (= call!287097 (isEmpty!25793 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))))))

(declare-fun b!4035338 () Bool)

(assert (=> b!4035338 (= e!2503922 e!2503926)))

(declare-fun res!1643201 () Bool)

(assert (=> b!4035338 (=> res!1643201 e!2503926)))

(assert (=> b!4035338 (= res!1643201 call!287097)))

(declare-fun b!4035339 () Bool)

(declare-fun res!1643207 () Bool)

(assert (=> b!4035339 (=> res!1643207 e!2503925)))

(assert (=> b!4035339 (= res!1643207 (not ((_ is ElementMatch!11821) (regex!6916 (rule!9982 token!484)))))))

(assert (=> b!4035339 (= e!2503927 e!2503925)))

(declare-fun b!4035340 () Bool)

(assert (=> b!4035340 (= e!2503924 (matchR!5774 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210)))))) (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210)))))))))

(assert (= (and d!1195611 c!696952) b!4035336))

(assert (= (and d!1195611 (not c!696952)) b!4035340))

(assert (= (and d!1195611 c!696951) b!4035333))

(assert (= (and d!1195611 (not c!696951)) b!4035332))

(assert (= (and b!4035332 c!696953) b!4035327))

(assert (= (and b!4035332 (not c!696953)) b!4035339))

(assert (= (and b!4035339 (not res!1643207)) b!4035329))

(assert (= (and b!4035329 res!1643205) b!4035335))

(assert (= (and b!4035335 res!1643200) b!4035334))

(assert (= (and b!4035334 res!1643202) b!4035331))

(assert (= (and b!4035329 (not res!1643204)) b!4035328))

(assert (= (and b!4035328 res!1643203) b!4035338))

(assert (= (and b!4035338 (not res!1643201)) b!4035330))

(assert (= (and b!4035330 (not res!1643206)) b!4035337))

(assert (= (or b!4035333 b!4035335 b!4035338) bm!287092))

(assert (=> b!4035334 m!4628135))

(declare-fun m!4629201 () Bool)

(assert (=> b!4035334 m!4629201))

(assert (=> b!4035334 m!4629201))

(declare-fun m!4629203 () Bool)

(assert (=> b!4035334 m!4629203))

(assert (=> b!4035330 m!4628135))

(assert (=> b!4035330 m!4629201))

(assert (=> b!4035330 m!4629201))

(assert (=> b!4035330 m!4629203))

(assert (=> d!1195611 m!4628135))

(declare-fun m!4629205 () Bool)

(assert (=> d!1195611 m!4629205))

(assert (=> d!1195611 m!4628273))

(assert (=> b!4035337 m!4628135))

(declare-fun m!4629207 () Bool)

(assert (=> b!4035337 m!4629207))

(assert (=> b!4035331 m!4628135))

(assert (=> b!4035331 m!4629207))

(assert (=> b!4035336 m!4628275))

(assert (=> b!4035340 m!4628135))

(assert (=> b!4035340 m!4629207))

(assert (=> b!4035340 m!4629207))

(declare-fun m!4629209 () Bool)

(assert (=> b!4035340 m!4629209))

(assert (=> b!4035340 m!4628135))

(assert (=> b!4035340 m!4629201))

(assert (=> b!4035340 m!4629209))

(assert (=> b!4035340 m!4629201))

(declare-fun m!4629211 () Bool)

(assert (=> b!4035340 m!4629211))

(assert (=> bm!287092 m!4628135))

(assert (=> bm!287092 m!4629205))

(assert (=> b!4034578 d!1195611))

(declare-fun d!1195613 () Bool)

(assert (=> d!1195613 (= (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210)))) (list!16084 (c!696700 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))))))

(declare-fun bs!590497 () Bool)

(assert (= bs!590497 d!1195613))

(declare-fun m!4629213 () Bool)

(assert (=> bs!590497 m!4629213))

(assert (=> b!4034578 d!1195613))

(declare-fun d!1195615 () Bool)

(declare-fun lt!1435550 () BalanceConc!25848)

(assert (=> d!1195615 (= (list!16082 lt!1435550) (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210))))))

(assert (=> d!1195615 (= lt!1435550 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210))))) (value!217740 (_1!24283 (get!14180 lt!1435210)))))))

(assert (=> d!1195615 (= (charsOf!4732 (_1!24283 (get!14180 lt!1435210))) lt!1435550)))

(declare-fun b_lambda!117733 () Bool)

(assert (=> (not b_lambda!117733) (not d!1195615)))

(declare-fun tb!242389 () Bool)

(declare-fun t!334496 () Bool)

(assert (=> (and b!4034157 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))))) t!334496) tb!242389))

(declare-fun b!4035343 () Bool)

(declare-fun e!2503930 () Bool)

(declare-fun tp!1225900 () Bool)

(assert (=> b!4035343 (= e!2503930 (and (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210))))) (value!217740 (_1!24283 (get!14180 lt!1435210)))))) tp!1225900))))

(declare-fun result!293834 () Bool)

(assert (=> tb!242389 (= result!293834 (and (inv!57743 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210))))) (value!217740 (_1!24283 (get!14180 lt!1435210))))) e!2503930))))

(assert (= tb!242389 b!4035343))

(declare-fun m!4629215 () Bool)

(assert (=> b!4035343 m!4629215))

(declare-fun m!4629217 () Bool)

(assert (=> tb!242389 m!4629217))

(assert (=> d!1195615 t!334496))

(declare-fun b_and!310105 () Bool)

(assert (= b_and!310093 (and (=> t!334496 result!293834) b_and!310105)))

(declare-fun t!334498 () Bool)

(declare-fun tb!242391 () Bool)

(assert (=> (and b!4034142 (= (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))))) t!334498) tb!242391))

(declare-fun result!293836 () Bool)

(assert (= result!293836 result!293834))

(assert (=> d!1195615 t!334498))

(declare-fun b_and!310107 () Bool)

(assert (= b_and!310095 (and (=> t!334498 result!293836) b_and!310107)))

(declare-fun tb!242393 () Bool)

(declare-fun t!334500 () Bool)

(assert (=> (and b!4034774 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))))) t!334500) tb!242393))

(declare-fun result!293838 () Bool)

(assert (= result!293838 result!293834))

(assert (=> d!1195615 t!334500))

(declare-fun b_and!310109 () Bool)

(assert (= b_and!310097 (and (=> t!334500 result!293838) b_and!310109)))

(declare-fun m!4629219 () Bool)

(assert (=> d!1195615 m!4629219))

(declare-fun m!4629221 () Bool)

(assert (=> d!1195615 m!4629221))

(assert (=> b!4034578 d!1195615))

(assert (=> b!4034578 d!1195259))

(declare-fun d!1195617 () Bool)

(assert (=> d!1195617 (= (inv!57743 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020))))) (isBalanced!3675 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020)))))))))

(declare-fun bs!590498 () Bool)

(assert (= bs!590498 d!1195617))

(declare-fun m!4629223 () Bool)

(assert (=> bs!590498 m!4629223))

(assert (=> tb!242331 d!1195617))

(declare-fun bs!590499 () Bool)

(declare-fun d!1195619 () Bool)

(assert (= bs!590499 (and d!1195619 d!1195219)))

(declare-fun lambda!127290 () Int)

(assert (=> bs!590499 (= (and (= (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) (= (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) (= lambda!127290 lambda!127266))))

(declare-fun bs!590501 () Bool)

(assert (= bs!590501 (and d!1195619 d!1195233)))

(assert (=> bs!590501 (= (and (= (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toChars!9303 (transformation!6916 (h!48639 rules!2999)))) (= (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toValue!9444 (transformation!6916 (h!48639 rules!2999))))) (= lambda!127290 lambda!127267))))

(declare-fun bs!590502 () Bool)

(assert (= bs!590502 (and d!1195619 d!1195253)))

(assert (=> bs!590502 (= (and (= (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) (= (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) (= lambda!127290 lambda!127270))))

(assert (=> d!1195619 true))

(assert (=> d!1195619 (< (dynLambda!18319 order!22591 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) (dynLambda!18320 order!22593 lambda!127290))))

(assert (=> d!1195619 true))

(assert (=> d!1195619 (< (dynLambda!18321 order!22595 (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) (dynLambda!18320 order!22593 lambda!127290))))

(assert (=> d!1195619 (= (semiInverseModEq!2952 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) (Forall!1484 lambda!127290))))

(declare-fun bs!590503 () Bool)

(assert (= bs!590503 d!1195619))

(declare-fun m!4629229 () Bool)

(assert (=> bs!590503 m!4629229))

(assert (=> d!1195183 d!1195619))

(declare-fun b!4035347 () Bool)

(declare-fun res!1643211 () Bool)

(declare-fun e!2503932 () Bool)

(assert (=> b!4035347 (=> (not res!1643211) (not e!2503932))))

(declare-fun lt!1435552 () List!43341)

(assert (=> b!4035347 (= res!1643211 (= (size!32302 lt!1435552) (+ (size!32302 (t!334404 lt!1435038)) (size!32302 suffix!1299))))))

(declare-fun b!4035348 () Bool)

(assert (=> b!4035348 (= e!2503932 (or (not (= suffix!1299 Nil!43217)) (= lt!1435552 (t!334404 lt!1435038))))))

(declare-fun b!4035346 () Bool)

(declare-fun e!2503933 () List!43341)

(assert (=> b!4035346 (= e!2503933 (Cons!43217 (h!48637 (t!334404 lt!1435038)) (++!11318 (t!334404 (t!334404 lt!1435038)) suffix!1299)))))

(declare-fun d!1195625 () Bool)

(assert (=> d!1195625 e!2503932))

(declare-fun res!1643212 () Bool)

(assert (=> d!1195625 (=> (not res!1643212) (not e!2503932))))

(assert (=> d!1195625 (= res!1643212 (= (content!6566 lt!1435552) ((_ map or) (content!6566 (t!334404 lt!1435038)) (content!6566 suffix!1299))))))

(assert (=> d!1195625 (= lt!1435552 e!2503933)))

(declare-fun c!696954 () Bool)

(assert (=> d!1195625 (= c!696954 ((_ is Nil!43217) (t!334404 lt!1435038)))))

(assert (=> d!1195625 (= (++!11318 (t!334404 lt!1435038) suffix!1299) lt!1435552)))

(declare-fun b!4035345 () Bool)

(assert (=> b!4035345 (= e!2503933 suffix!1299)))

(assert (= (and d!1195625 c!696954) b!4035345))

(assert (= (and d!1195625 (not c!696954)) b!4035346))

(assert (= (and d!1195625 res!1643212) b!4035347))

(assert (= (and b!4035347 res!1643211) b!4035348))

(declare-fun m!4629233 () Bool)

(assert (=> b!4035347 m!4629233))

(declare-fun m!4629235 () Bool)

(assert (=> b!4035347 m!4629235))

(assert (=> b!4035347 m!4627533))

(declare-fun m!4629237 () Bool)

(assert (=> b!4035346 m!4629237))

(declare-fun m!4629239 () Bool)

(assert (=> d!1195625 m!4629239))

(assert (=> d!1195625 m!4628481))

(assert (=> d!1195625 m!4627849))

(assert (=> b!4034442 d!1195625))

(declare-fun d!1195627 () Bool)

(assert (=> d!1195627 (= (isEmpty!25792 lt!1435112) (not ((_ is Some!9329) lt!1435112)))))

(assert (=> d!1194963 d!1195627))

(assert (=> d!1194963 d!1195149))

(assert (=> d!1194963 d!1195151))

(declare-fun bs!590505 () Bool)

(declare-fun d!1195631 () Bool)

(assert (= bs!590505 (and d!1195631 d!1195345)))

(declare-fun lambda!127293 () Int)

(assert (=> bs!590505 (= lambda!127293 lambda!127280)))

(assert (=> d!1195631 true))

(declare-fun lt!1435558 () Bool)

(assert (=> d!1195631 (= lt!1435558 (forall!8367 rules!2999 lambda!127293))))

(declare-fun e!2503939 () Bool)

(assert (=> d!1195631 (= lt!1435558 e!2503939)))

(declare-fun res!1643218 () Bool)

(assert (=> d!1195631 (=> res!1643218 e!2503939)))

(assert (=> d!1195631 (= res!1643218 (not ((_ is Cons!43219) rules!2999)))))

(assert (=> d!1195631 (= (rulesValidInductive!2519 thiss!21717 rules!2999) lt!1435558)))

(declare-fun b!4035353 () Bool)

(declare-fun e!2503940 () Bool)

(assert (=> b!4035353 (= e!2503939 e!2503940)))

(declare-fun res!1643217 () Bool)

(assert (=> b!4035353 (=> (not res!1643217) (not e!2503940))))

(assert (=> b!4035353 (= res!1643217 (ruleValid!2846 thiss!21717 (h!48639 rules!2999)))))

(declare-fun b!4035354 () Bool)

(assert (=> b!4035354 (= e!2503940 (rulesValidInductive!2519 thiss!21717 (t!334406 rules!2999)))))

(assert (= (and d!1195631 (not res!1643218)) b!4035353))

(assert (= (and b!4035353 res!1643217) b!4035354))

(declare-fun m!4629249 () Bool)

(assert (=> d!1195631 m!4629249))

(declare-fun m!4629251 () Bool)

(assert (=> b!4035353 m!4629251))

(declare-fun m!4629253 () Bool)

(assert (=> b!4035354 m!4629253))

(assert (=> d!1194963 d!1195631))

(assert (=> b!4034359 d!1195473))

(declare-fun d!1195637 () Bool)

(assert (=> d!1195637 (= (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435131))))) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435131))))))))

(declare-fun b_lambda!117737 () Bool)

(assert (=> (not b_lambda!117737) (not d!1195637)))

(declare-fun t!334508 () Bool)

(declare-fun tb!242401 () Bool)

(assert (=> (and b!4034157 (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))) t!334508) tb!242401))

(declare-fun result!293846 () Bool)

(assert (=> tb!242401 (= result!293846 (inv!21 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435131)))))))))

(declare-fun m!4629255 () Bool)

(assert (=> tb!242401 m!4629255))

(assert (=> d!1195637 t!334508))

(declare-fun b_and!310117 () Bool)

(assert (= b_and!310063 (and (=> t!334508 result!293846) b_and!310117)))

(declare-fun t!334510 () Bool)

(declare-fun tb!242403 () Bool)

(assert (=> (and b!4034142 (= (toValue!9444 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))) t!334510) tb!242403))

(declare-fun result!293848 () Bool)

(assert (= result!293848 result!293846))

(assert (=> d!1195637 t!334510))

(declare-fun b_and!310119 () Bool)

(assert (= b_and!310065 (and (=> t!334510 result!293848) b_and!310119)))

(declare-fun t!334512 () Bool)

(declare-fun tb!242405 () Bool)

(assert (=> (and b!4034774 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))) t!334512) tb!242405))

(declare-fun result!293850 () Bool)

(assert (= result!293850 result!293846))

(assert (=> d!1195637 t!334512))

(declare-fun b_and!310121 () Bool)

(assert (= b_and!310067 (and (=> t!334512 result!293850) b_and!310121)))

(assert (=> d!1195637 m!4627873))

(declare-fun m!4629257 () Bool)

(assert (=> d!1195637 m!4629257))

(assert (=> b!4034359 d!1195637))

(declare-fun d!1195639 () Bool)

(assert (=> d!1195639 (= (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435131)))) (fromListB!2338 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435131)))))))

(declare-fun bs!590506 () Bool)

(assert (= bs!590506 d!1195639))

(declare-fun m!4629259 () Bool)

(assert (=> bs!590506 m!4629259))

(assert (=> b!4034359 d!1195639))

(declare-fun d!1195641 () Bool)

(declare-fun lt!1435561 () Int)

(assert (=> d!1195641 (>= lt!1435561 0)))

(declare-fun e!2503942 () Int)

(assert (=> d!1195641 (= lt!1435561 e!2503942)))

(declare-fun c!696956 () Bool)

(assert (=> d!1195641 (= c!696956 ((_ is Nil!43217) lt!1435218))))

(assert (=> d!1195641 (= (size!32302 lt!1435218) lt!1435561)))

(declare-fun b!4035355 () Bool)

(assert (=> b!4035355 (= e!2503942 0)))

(declare-fun b!4035356 () Bool)

(assert (=> b!4035356 (= e!2503942 (+ 1 (size!32302 (t!334404 lt!1435218))))))

(assert (= (and d!1195641 c!696956) b!4035355))

(assert (= (and d!1195641 (not c!696956)) b!4035356))

(declare-fun m!4629261 () Bool)

(assert (=> b!4035356 m!4629261))

(assert (=> b!4034629 d!1195641))

(assert (=> b!4034629 d!1195171))

(declare-fun d!1195643 () Bool)

(declare-fun lt!1435562 () Int)

(assert (=> d!1195643 (>= lt!1435562 0)))

(declare-fun e!2503943 () Int)

(assert (=> d!1195643 (= lt!1435562 e!2503943)))

(declare-fun c!696957 () Bool)

(assert (=> d!1195643 (= c!696957 ((_ is Nil!43217) lt!1435038))))

(assert (=> d!1195643 (= (size!32302 lt!1435038) lt!1435562)))

(declare-fun b!4035357 () Bool)

(assert (=> b!4035357 (= e!2503943 0)))

(declare-fun b!4035358 () Bool)

(assert (=> b!4035358 (= e!2503943 (+ 1 (size!32302 (t!334404 lt!1435038))))))

(assert (= (and d!1195643 c!696957) b!4035357))

(assert (= (and d!1195643 (not c!696957)) b!4035358))

(assert (=> b!4035358 m!4629235))

(assert (=> b!4034629 d!1195643))

(declare-fun d!1195645 () Bool)

(assert (=> d!1195645 (= (nullable!4144 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (nullableFct!1159 (regex!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))))

(declare-fun bs!590507 () Bool)

(assert (= bs!590507 d!1195645))

(declare-fun m!4629263 () Bool)

(assert (=> bs!590507 m!4629263))

(assert (=> b!4034723 d!1195645))

(assert (=> b!4034311 d!1195459))

(declare-fun d!1195647 () Bool)

(assert (=> d!1195647 (= (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435112))))) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435112))))))))

(declare-fun b_lambda!117739 () Bool)

(assert (=> (not b_lambda!117739) (not d!1195647)))

(declare-fun t!334514 () Bool)

(declare-fun tb!242407 () Bool)

(assert (=> (and b!4034157 (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))) t!334514) tb!242407))

(declare-fun result!293852 () Bool)

(assert (=> tb!242407 (= result!293852 (inv!21 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435112)))))))))

(declare-fun m!4629265 () Bool)

(assert (=> tb!242407 m!4629265))

(assert (=> d!1195647 t!334514))

(declare-fun b_and!310123 () Bool)

(assert (= b_and!310117 (and (=> t!334514 result!293852) b_and!310123)))

(declare-fun tb!242409 () Bool)

(declare-fun t!334516 () Bool)

(assert (=> (and b!4034142 (= (toValue!9444 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))) t!334516) tb!242409))

(declare-fun result!293854 () Bool)

(assert (= result!293854 result!293852))

(assert (=> d!1195647 t!334516))

(declare-fun b_and!310125 () Bool)

(assert (= b_and!310119 (and (=> t!334516 result!293854) b_and!310125)))

(declare-fun t!334518 () Bool)

(declare-fun tb!242411 () Bool)

(assert (=> (and b!4034774 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))) t!334518) tb!242411))

(declare-fun result!293856 () Bool)

(assert (= result!293856 result!293852))

(assert (=> d!1195647 t!334518))

(declare-fun b_and!310127 () Bool)

(assert (= b_and!310121 (and (=> t!334518 result!293856) b_and!310127)))

(assert (=> d!1195647 m!4627789))

(declare-fun m!4629267 () Bool)

(assert (=> d!1195647 m!4629267))

(assert (=> b!4034311 d!1195647))

(declare-fun d!1195649 () Bool)

(assert (=> d!1195649 (= (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435112)))) (fromListB!2338 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435112)))))))

(declare-fun bs!590508 () Bool)

(assert (= bs!590508 d!1195649))

(declare-fun m!4629269 () Bool)

(assert (=> bs!590508 m!4629269))

(assert (=> b!4034311 d!1195649))

(declare-fun d!1195651 () Bool)

(assert (=> d!1195651 (= (isEmpty!25792 lt!1435131) (not ((_ is Some!9329) lt!1435131)))))

(assert (=> d!1195019 d!1195651))

(declare-fun b!4035363 () Bool)

(declare-fun e!2503947 () Bool)

(declare-fun e!2503948 () Bool)

(assert (=> b!4035363 (= e!2503947 e!2503948)))

(declare-fun res!1643219 () Bool)

(assert (=> b!4035363 (=> (not res!1643219) (not e!2503948))))

(assert (=> b!4035363 (= res!1643219 (not ((_ is Nil!43217) lt!1435033)))))

(declare-fun b!4035365 () Bool)

(declare-fun res!1643222 () Bool)

(assert (=> b!4035365 (=> (not res!1643222) (not e!2503948))))

(assert (=> b!4035365 (= res!1643222 (= (head!8547 lt!1435033) (head!8547 lt!1435033)))))

(declare-fun d!1195653 () Bool)

(declare-fun e!2503949 () Bool)

(assert (=> d!1195653 e!2503949))

(declare-fun res!1643221 () Bool)

(assert (=> d!1195653 (=> res!1643221 e!2503949)))

(declare-fun lt!1435564 () Bool)

(assert (=> d!1195653 (= res!1643221 (not lt!1435564))))

(assert (=> d!1195653 (= lt!1435564 e!2503947)))

(declare-fun res!1643220 () Bool)

(assert (=> d!1195653 (=> res!1643220 e!2503947)))

(assert (=> d!1195653 (= res!1643220 ((_ is Nil!43217) lt!1435033))))

(assert (=> d!1195653 (= (isPrefix!4003 lt!1435033 lt!1435033) lt!1435564)))

(declare-fun b!4035366 () Bool)

(assert (=> b!4035366 (= e!2503948 (isPrefix!4003 (tail!6279 lt!1435033) (tail!6279 lt!1435033)))))

(declare-fun b!4035367 () Bool)

(assert (=> b!4035367 (= e!2503949 (>= (size!32302 lt!1435033) (size!32302 lt!1435033)))))

(assert (= (and d!1195653 (not res!1643220)) b!4035363))

(assert (= (and b!4035363 res!1643219) b!4035365))

(assert (= (and b!4035365 res!1643222) b!4035366))

(assert (= (and d!1195653 (not res!1643221)) b!4035367))

(assert (=> b!4035365 m!4628289))

(assert (=> b!4035365 m!4628289))

(assert (=> b!4035366 m!4628291))

(assert (=> b!4035366 m!4628291))

(assert (=> b!4035366 m!4628291))

(assert (=> b!4035366 m!4628291))

(declare-fun m!4629271 () Bool)

(assert (=> b!4035366 m!4629271))

(assert (=> b!4035367 m!4627891))

(assert (=> b!4035367 m!4627891))

(assert (=> d!1195019 d!1195653))

(declare-fun d!1195655 () Bool)

(assert (=> d!1195655 (isPrefix!4003 lt!1435033 lt!1435033)))

(declare-fun lt!1435565 () Unit!62397)

(assert (=> d!1195655 (= lt!1435565 (choose!24436 lt!1435033 lt!1435033))))

(assert (=> d!1195655 (= (lemmaIsPrefixRefl!2570 lt!1435033 lt!1435033) lt!1435565)))

(declare-fun bs!590511 () Bool)

(assert (= bs!590511 d!1195655))

(assert (=> bs!590511 m!4627895))

(declare-fun m!4629273 () Bool)

(assert (=> bs!590511 m!4629273))

(assert (=> d!1195019 d!1195655))

(assert (=> d!1195019 d!1195631))

(declare-fun d!1195657 () Bool)

(declare-fun e!2503958 () Bool)

(assert (=> d!1195657 e!2503958))

(declare-fun res!1643229 () Bool)

(assert (=> d!1195657 (=> (not res!1643229) (not e!2503958))))

(declare-fun lt!1435570 () BalanceConc!25848)

(assert (=> d!1195657 (= res!1643229 (= (list!16082 lt!1435570) lt!1435037))))

(declare-fun fromList!855 (List!43341) Conc!13127)

(assert (=> d!1195657 (= lt!1435570 (BalanceConc!25849 (fromList!855 lt!1435037)))))

(assert (=> d!1195657 (= (fromListB!2338 lt!1435037) lt!1435570)))

(declare-fun b!4035377 () Bool)

(assert (=> b!4035377 (= e!2503958 (isBalanced!3675 (fromList!855 lt!1435037)))))

(assert (= (and d!1195657 res!1643229) b!4035377))

(declare-fun m!4629301 () Bool)

(assert (=> d!1195657 m!4629301))

(declare-fun m!4629303 () Bool)

(assert (=> d!1195657 m!4629303))

(assert (=> b!4035377 m!4629303))

(assert (=> b!4035377 m!4629303))

(declare-fun m!4629305 () Bool)

(assert (=> b!4035377 m!4629305))

(assert (=> d!1195111 d!1195657))

(assert (=> d!1195187 d!1195123))

(declare-fun d!1195667 () Bool)

(declare-fun lt!1435571 () Int)

(assert (=> d!1195667 (>= lt!1435571 0)))

(declare-fun e!2503959 () Int)

(assert (=> d!1195667 (= lt!1435571 e!2503959)))

(declare-fun c!696960 () Bool)

(assert (=> d!1195667 (= c!696960 ((_ is Nil!43217) lt!1435007))))

(assert (=> d!1195667 (= (size!32302 lt!1435007) lt!1435571)))

(declare-fun b!4035378 () Bool)

(assert (=> b!4035378 (= e!2503959 0)))

(declare-fun b!4035379 () Bool)

(assert (=> b!4035379 (= e!2503959 (+ 1 (size!32302 (t!334404 lt!1435007))))))

(assert (= (and d!1195667 c!696960) b!4035378))

(assert (= (and d!1195667 (not c!696960)) b!4035379))

(declare-fun m!4629307 () Bool)

(assert (=> b!4035379 m!4629307))

(assert (=> b!4034414 d!1195667))

(assert (=> b!4034414 d!1195171))

(declare-fun b!4035380 () Bool)

(declare-fun e!2503960 () Bool)

(declare-fun e!2503961 () Bool)

(assert (=> b!4035380 (= e!2503960 e!2503961)))

(declare-fun res!1643230 () Bool)

(assert (=> b!4035380 (=> (not res!1643230) (not e!2503961))))

(assert (=> b!4035380 (= res!1643230 (not ((_ is Nil!43217) (tail!6279 lt!1435003))))))

(declare-fun b!4035381 () Bool)

(declare-fun res!1643233 () Bool)

(assert (=> b!4035381 (=> (not res!1643233) (not e!2503961))))

(assert (=> b!4035381 (= res!1643233 (= (head!8547 (tail!6279 lt!1435003)) (head!8547 (tail!6279 lt!1435003))))))

(declare-fun d!1195669 () Bool)

(declare-fun e!2503962 () Bool)

(assert (=> d!1195669 e!2503962))

(declare-fun res!1643232 () Bool)

(assert (=> d!1195669 (=> res!1643232 e!2503962)))

(declare-fun lt!1435572 () Bool)

(assert (=> d!1195669 (= res!1643232 (not lt!1435572))))

(assert (=> d!1195669 (= lt!1435572 e!2503960)))

(declare-fun res!1643231 () Bool)

(assert (=> d!1195669 (=> res!1643231 e!2503960)))

(assert (=> d!1195669 (= res!1643231 ((_ is Nil!43217) (tail!6279 lt!1435003)))))

(assert (=> d!1195669 (= (isPrefix!4003 (tail!6279 lt!1435003) (tail!6279 lt!1435003)) lt!1435572)))

(declare-fun b!4035382 () Bool)

(assert (=> b!4035382 (= e!2503961 (isPrefix!4003 (tail!6279 (tail!6279 lt!1435003)) (tail!6279 (tail!6279 lt!1435003))))))

(declare-fun b!4035383 () Bool)

(assert (=> b!4035383 (= e!2503962 (>= (size!32302 (tail!6279 lt!1435003)) (size!32302 (tail!6279 lt!1435003))))))

(assert (= (and d!1195669 (not res!1643231)) b!4035380))

(assert (= (and b!4035380 res!1643230) b!4035381))

(assert (= (and b!4035381 res!1643233) b!4035382))

(assert (= (and d!1195669 (not res!1643232)) b!4035383))

(assert (=> b!4035381 m!4628179))

(declare-fun m!4629309 () Bool)

(assert (=> b!4035381 m!4629309))

(assert (=> b!4035381 m!4628179))

(assert (=> b!4035381 m!4629309))

(assert (=> b!4035382 m!4628179))

(assert (=> b!4035382 m!4629039))

(assert (=> b!4035382 m!4628179))

(assert (=> b!4035382 m!4629039))

(assert (=> b!4035382 m!4629039))

(assert (=> b!4035382 m!4629039))

(declare-fun m!4629311 () Bool)

(assert (=> b!4035382 m!4629311))

(assert (=> b!4035383 m!4628179))

(assert (=> b!4035383 m!4629037))

(assert (=> b!4035383 m!4628179))

(assert (=> b!4035383 m!4629037))

(assert (=> b!4034650 d!1195669))

(assert (=> b!4034650 d!1195521))

(assert (=> b!4034703 d!1195269))

(declare-fun b!4035386 () Bool)

(declare-fun res!1643234 () Bool)

(declare-fun e!2503963 () Bool)

(assert (=> b!4035386 (=> (not res!1643234) (not e!2503963))))

(declare-fun lt!1435573 () List!43341)

(assert (=> b!4035386 (= res!1643234 (= (size!32302 lt!1435573) (+ (size!32302 (t!334404 lt!1435037)) (size!32302 newSuffixResult!27))))))

(declare-fun b!4035387 () Bool)

(assert (=> b!4035387 (= e!2503963 (or (not (= newSuffixResult!27 Nil!43217)) (= lt!1435573 (t!334404 lt!1435037))))))

(declare-fun b!4035385 () Bool)

(declare-fun e!2503964 () List!43341)

(assert (=> b!4035385 (= e!2503964 (Cons!43217 (h!48637 (t!334404 lt!1435037)) (++!11318 (t!334404 (t!334404 lt!1435037)) newSuffixResult!27)))))

(declare-fun d!1195671 () Bool)

(assert (=> d!1195671 e!2503963))

(declare-fun res!1643235 () Bool)

(assert (=> d!1195671 (=> (not res!1643235) (not e!2503963))))

(assert (=> d!1195671 (= res!1643235 (= (content!6566 lt!1435573) ((_ map or) (content!6566 (t!334404 lt!1435037)) (content!6566 newSuffixResult!27))))))

(assert (=> d!1195671 (= lt!1435573 e!2503964)))

(declare-fun c!696962 () Bool)

(assert (=> d!1195671 (= c!696962 ((_ is Nil!43217) (t!334404 lt!1435037)))))

(assert (=> d!1195671 (= (++!11318 (t!334404 lt!1435037) newSuffixResult!27) lt!1435573)))

(declare-fun b!4035384 () Bool)

(assert (=> b!4035384 (= e!2503964 newSuffixResult!27)))

(assert (= (and d!1195671 c!696962) b!4035384))

(assert (= (and d!1195671 (not c!696962)) b!4035385))

(assert (= (and d!1195671 res!1643235) b!4035386))

(assert (= (and b!4035386 res!1643234) b!4035387))

(declare-fun m!4629313 () Bool)

(assert (=> b!4035386 m!4629313))

(assert (=> b!4035386 m!4628303))

(assert (=> b!4035386 m!4628349))

(declare-fun m!4629315 () Bool)

(assert (=> b!4035385 m!4629315))

(declare-fun m!4629317 () Bool)

(assert (=> d!1195671 m!4629317))

(assert (=> d!1195671 m!4628477))

(assert (=> d!1195671 m!4628355))

(assert (=> b!4034730 d!1195671))

(declare-fun b!4035392 () Bool)

(declare-fun res!1643238 () Bool)

(declare-fun e!2503967 () Bool)

(assert (=> b!4035392 (=> (not res!1643238) (not e!2503967))))

(declare-fun lt!1435576 () List!43341)

(assert (=> b!4035392 (= res!1643238 (= (size!32302 lt!1435576) (+ (size!32302 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))) (size!32302 (_2!24283 (get!14180 lt!1435131))))))))

(declare-fun b!4035393 () Bool)

(assert (=> b!4035393 (= e!2503967 (or (not (= (_2!24283 (get!14180 lt!1435131)) Nil!43217)) (= lt!1435576 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131)))))))))

(declare-fun b!4035391 () Bool)

(declare-fun e!2503968 () List!43341)

(assert (=> b!4035391 (= e!2503968 (Cons!43217 (h!48637 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))) (++!11318 (t!334404 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))) (_2!24283 (get!14180 lt!1435131)))))))

(declare-fun d!1195673 () Bool)

(assert (=> d!1195673 e!2503967))

(declare-fun res!1643239 () Bool)

(assert (=> d!1195673 (=> (not res!1643239) (not e!2503967))))

(assert (=> d!1195673 (= res!1643239 (= (content!6566 lt!1435576) ((_ map or) (content!6566 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))) (content!6566 (_2!24283 (get!14180 lt!1435131))))))))

(assert (=> d!1195673 (= lt!1435576 e!2503968)))

(declare-fun c!696963 () Bool)

(assert (=> d!1195673 (= c!696963 ((_ is Nil!43217) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))))))

(assert (=> d!1195673 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131)))) (_2!24283 (get!14180 lt!1435131))) lt!1435576)))

(declare-fun b!4035390 () Bool)

(assert (=> b!4035390 (= e!2503968 (_2!24283 (get!14180 lt!1435131)))))

(assert (= (and d!1195673 c!696963) b!4035390))

(assert (= (and d!1195673 (not c!696963)) b!4035391))

(assert (= (and d!1195673 res!1643239) b!4035392))

(assert (= (and b!4035392 res!1643238) b!4035393))

(declare-fun m!4629319 () Bool)

(assert (=> b!4035392 m!4629319))

(assert (=> b!4035392 m!4627861))

(declare-fun m!4629321 () Bool)

(assert (=> b!4035392 m!4629321))

(assert (=> b!4035392 m!4627889))

(declare-fun m!4629323 () Bool)

(assert (=> b!4035391 m!4629323))

(declare-fun m!4629325 () Bool)

(assert (=> d!1195673 m!4629325))

(assert (=> d!1195673 m!4627861))

(declare-fun m!4629327 () Bool)

(assert (=> d!1195673 m!4629327))

(declare-fun m!4629329 () Bool)

(assert (=> d!1195673 m!4629329))

(assert (=> b!4034356 d!1195673))

(assert (=> b!4034356 d!1195465))

(assert (=> b!4034356 d!1195467))

(assert (=> b!4034356 d!1195473))

(declare-fun b!4035395 () Bool)

(declare-fun e!2503970 () Bool)

(declare-fun e!2503971 () Bool)

(assert (=> b!4035395 (= e!2503970 e!2503971)))

(declare-fun res!1643241 () Bool)

(assert (=> b!4035395 (=> (not res!1643241) (not e!2503971))))

(assert (=> b!4035395 (= res!1643241 (not ((_ is Nil!43217) (tail!6279 lt!1435033))))))

(declare-fun b!4035396 () Bool)

(declare-fun res!1643244 () Bool)

(assert (=> b!4035396 (=> (not res!1643244) (not e!2503971))))

(assert (=> b!4035396 (= res!1643244 (= (head!8547 (tail!6279 lt!1435037)) (head!8547 (tail!6279 lt!1435033))))))

(declare-fun d!1195675 () Bool)

(declare-fun e!2503972 () Bool)

(assert (=> d!1195675 e!2503972))

(declare-fun res!1643243 () Bool)

(assert (=> d!1195675 (=> res!1643243 e!2503972)))

(declare-fun lt!1435578 () Bool)

(assert (=> d!1195675 (= res!1643243 (not lt!1435578))))

(assert (=> d!1195675 (= lt!1435578 e!2503970)))

(declare-fun res!1643242 () Bool)

(assert (=> d!1195675 (=> res!1643242 e!2503970)))

(assert (=> d!1195675 (= res!1643242 ((_ is Nil!43217) (tail!6279 lt!1435037)))))

(assert (=> d!1195675 (= (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435033)) lt!1435578)))

(declare-fun b!4035397 () Bool)

(assert (=> b!4035397 (= e!2503971 (isPrefix!4003 (tail!6279 (tail!6279 lt!1435037)) (tail!6279 (tail!6279 lt!1435033))))))

(declare-fun b!4035398 () Bool)

(assert (=> b!4035398 (= e!2503972 (>= (size!32302 (tail!6279 lt!1435033)) (size!32302 (tail!6279 lt!1435037))))))

(assert (= (and d!1195675 (not res!1643242)) b!4035395))

(assert (= (and b!4035395 res!1643241) b!4035396))

(assert (= (and b!4035396 res!1643244) b!4035397))

(assert (= (and d!1195675 (not res!1643243)) b!4035398))

(assert (=> b!4035396 m!4627911))

(assert (=> b!4035396 m!4629063))

(assert (=> b!4035396 m!4628291))

(declare-fun m!4629339 () Bool)

(assert (=> b!4035396 m!4629339))

(assert (=> b!4035397 m!4627911))

(assert (=> b!4035397 m!4629067))

(assert (=> b!4035397 m!4628291))

(declare-fun m!4629341 () Bool)

(assert (=> b!4035397 m!4629341))

(assert (=> b!4035397 m!4629067))

(assert (=> b!4035397 m!4629341))

(declare-fun m!4629345 () Bool)

(assert (=> b!4035397 m!4629345))

(assert (=> b!4035398 m!4628291))

(declare-fun m!4629347 () Bool)

(assert (=> b!4035398 m!4629347))

(assert (=> b!4035398 m!4627911))

(assert (=> b!4035398 m!4629075))

(assert (=> b!4034709 d!1195675))

(assert (=> b!4034709 d!1195405))

(declare-fun d!1195683 () Bool)

(assert (=> d!1195683 (= (tail!6279 lt!1435033) (t!334404 lt!1435033))))

(assert (=> b!4034709 d!1195683))

(declare-fun b!4035405 () Bool)

(declare-fun e!2503982 () Bool)

(declare-fun lt!1435582 () Bool)

(assert (=> b!4035405 (= e!2503982 (not lt!1435582))))

(declare-fun b!4035406 () Bool)

(declare-fun e!2503980 () Bool)

(declare-fun e!2503977 () Bool)

(assert (=> b!4035406 (= e!2503980 e!2503977)))

(declare-fun res!1643248 () Bool)

(assert (=> b!4035406 (=> (not res!1643248) (not e!2503977))))

(assert (=> b!4035406 (= res!1643248 (not lt!1435582))))

(declare-fun b!4035407 () Bool)

(declare-fun res!1643249 () Bool)

(assert (=> b!4035407 (=> res!1643249 e!2503980)))

(declare-fun e!2503976 () Bool)

(assert (=> b!4035407 (= res!1643249 e!2503976)))

(declare-fun res!1643250 () Bool)

(assert (=> b!4035407 (=> (not res!1643250) (not e!2503976))))

(assert (=> b!4035407 (= res!1643250 lt!1435582)))

(declare-fun b!4035408 () Bool)

(declare-fun res!1643251 () Bool)

(declare-fun e!2503981 () Bool)

(assert (=> b!4035408 (=> res!1643251 e!2503981)))

(assert (=> b!4035408 (= res!1643251 (not (isEmpty!25793 (tail!6279 (tail!6279 lt!1435037)))))))

(declare-fun b!4035409 () Bool)

(assert (=> b!4035409 (= e!2503976 (= (head!8547 (tail!6279 lt!1435037)) (c!696701 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037)))))))

(declare-fun b!4035410 () Bool)

(declare-fun e!2503978 () Bool)

(assert (=> b!4035410 (= e!2503978 e!2503982)))

(declare-fun c!696969 () Bool)

(assert (=> b!4035410 (= c!696969 ((_ is EmptyLang!11821) (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037))))))

(declare-fun b!4035411 () Bool)

(declare-fun call!287098 () Bool)

(assert (=> b!4035411 (= e!2503978 (= lt!1435582 call!287098))))

(declare-fun b!4035412 () Bool)

(declare-fun res!1643247 () Bool)

(assert (=> b!4035412 (=> (not res!1643247) (not e!2503976))))

(assert (=> b!4035412 (= res!1643247 (isEmpty!25793 (tail!6279 (tail!6279 lt!1435037))))))

(declare-fun b!4035413 () Bool)

(declare-fun res!1643245 () Bool)

(assert (=> b!4035413 (=> (not res!1643245) (not e!2503976))))

(assert (=> b!4035413 (= res!1643245 (not call!287098))))

(declare-fun b!4035414 () Bool)

(declare-fun e!2503979 () Bool)

(assert (=> b!4035414 (= e!2503979 (nullable!4144 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037))))))

(declare-fun d!1195687 () Bool)

(assert (=> d!1195687 e!2503978))

(declare-fun c!696967 () Bool)

(assert (=> d!1195687 (= c!696967 ((_ is EmptyExpr!11821) (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037))))))

(assert (=> d!1195687 (= lt!1435582 e!2503979)))

(declare-fun c!696968 () Bool)

(assert (=> d!1195687 (= c!696968 (isEmpty!25793 (tail!6279 lt!1435037)))))

(assert (=> d!1195687 (validRegex!5344 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037)))))

(assert (=> d!1195687 (= (matchR!5774 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037)) (tail!6279 lt!1435037)) lt!1435582)))

(declare-fun b!4035415 () Bool)

(assert (=> b!4035415 (= e!2503981 (not (= (head!8547 (tail!6279 lt!1435037)) (c!696701 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037))))))))

(declare-fun bm!287093 () Bool)

(assert (=> bm!287093 (= call!287098 (isEmpty!25793 (tail!6279 lt!1435037)))))

(declare-fun b!4035416 () Bool)

(assert (=> b!4035416 (= e!2503977 e!2503981)))

(declare-fun res!1643246 () Bool)

(assert (=> b!4035416 (=> res!1643246 e!2503981)))

(assert (=> b!4035416 (= res!1643246 call!287098)))

(declare-fun b!4035417 () Bool)

(declare-fun res!1643252 () Bool)

(assert (=> b!4035417 (=> res!1643252 e!2503980)))

(assert (=> b!4035417 (= res!1643252 (not ((_ is ElementMatch!11821) (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037)))))))

(assert (=> b!4035417 (= e!2503982 e!2503980)))

(declare-fun b!4035418 () Bool)

(assert (=> b!4035418 (= e!2503979 (matchR!5774 (derivativeStep!3549 (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037)) (head!8547 (tail!6279 lt!1435037))) (tail!6279 (tail!6279 lt!1435037))))))

(assert (= (and d!1195687 c!696968) b!4035414))

(assert (= (and d!1195687 (not c!696968)) b!4035418))

(assert (= (and d!1195687 c!696967) b!4035411))

(assert (= (and d!1195687 (not c!696967)) b!4035410))

(assert (= (and b!4035410 c!696969) b!4035405))

(assert (= (and b!4035410 (not c!696969)) b!4035417))

(assert (= (and b!4035417 (not res!1643252)) b!4035407))

(assert (= (and b!4035407 res!1643250) b!4035413))

(assert (= (and b!4035413 res!1643245) b!4035412))

(assert (= (and b!4035412 res!1643247) b!4035409))

(assert (= (and b!4035407 (not res!1643249)) b!4035406))

(assert (= (and b!4035406 res!1643248) b!4035416))

(assert (= (and b!4035416 (not res!1643246)) b!4035408))

(assert (= (and b!4035408 (not res!1643251)) b!4035415))

(assert (= (or b!4035411 b!4035413 b!4035416) bm!287093))

(assert (=> b!4035412 m!4627911))

(assert (=> b!4035412 m!4629067))

(assert (=> b!4035412 m!4629067))

(declare-fun m!4629353 () Bool)

(assert (=> b!4035412 m!4629353))

(assert (=> b!4035408 m!4627911))

(assert (=> b!4035408 m!4629067))

(assert (=> b!4035408 m!4629067))

(assert (=> b!4035408 m!4629353))

(assert (=> d!1195687 m!4627911))

(assert (=> d!1195687 m!4628281))

(assert (=> d!1195687 m!4628285))

(declare-fun m!4629355 () Bool)

(assert (=> d!1195687 m!4629355))

(assert (=> b!4035415 m!4627911))

(assert (=> b!4035415 m!4629063))

(assert (=> b!4035409 m!4627911))

(assert (=> b!4035409 m!4629063))

(assert (=> b!4035414 m!4628285))

(declare-fun m!4629357 () Bool)

(assert (=> b!4035414 m!4629357))

(assert (=> b!4035418 m!4627911))

(assert (=> b!4035418 m!4629063))

(assert (=> b!4035418 m!4628285))

(assert (=> b!4035418 m!4629063))

(declare-fun m!4629359 () Bool)

(assert (=> b!4035418 m!4629359))

(assert (=> b!4035418 m!4627911))

(assert (=> b!4035418 m!4629067))

(assert (=> b!4035418 m!4629359))

(assert (=> b!4035418 m!4629067))

(declare-fun m!4629361 () Bool)

(assert (=> b!4035418 m!4629361))

(assert (=> bm!287093 m!4627911))

(assert (=> bm!287093 m!4628281))

(assert (=> b!4034706 d!1195687))

(declare-fun bm!287102 () Bool)

(declare-fun call!287107 () Regex!11821)

(declare-fun call!287109 () Regex!11821)

(assert (=> bm!287102 (= call!287107 call!287109)))

(declare-fun b!4035480 () Bool)

(declare-fun e!2504018 () Regex!11821)

(declare-fun e!2504022 () Regex!11821)

(assert (=> b!4035480 (= e!2504018 e!2504022)))

(declare-fun c!696995 () Bool)

(assert (=> b!4035480 (= c!696995 ((_ is Star!11821) (regex!6916 (rule!9982 token!484))))))

(declare-fun b!4035481 () Bool)

(declare-fun e!2504021 () Regex!11821)

(assert (=> b!4035481 (= e!2504021 (Union!11821 (Concat!18968 call!287107 (regTwo!24154 (regex!6916 (rule!9982 token!484)))) EmptyLang!11821))))

(declare-fun b!4035482 () Bool)

(declare-fun call!287110 () Regex!11821)

(declare-fun call!287108 () Regex!11821)

(assert (=> b!4035482 (= e!2504018 (Union!11821 call!287110 call!287108))))

(declare-fun b!4035483 () Bool)

(declare-fun e!2504019 () Regex!11821)

(assert (=> b!4035483 (= e!2504019 (ite (= (head!8547 lt!1435037) (c!696701 (regex!6916 (rule!9982 token!484)))) EmptyExpr!11821 EmptyLang!11821))))

(declare-fun c!696992 () Bool)

(declare-fun bm!287103 () Bool)

(assert (=> bm!287103 (= call!287110 (derivativeStep!3549 (ite c!696992 (regOne!24155 (regex!6916 (rule!9982 token!484))) (ite c!696995 (reg!12150 (regex!6916 (rule!9982 token!484))) (regOne!24154 (regex!6916 (rule!9982 token!484))))) (head!8547 lt!1435037)))))

(declare-fun b!4035484 () Bool)

(assert (=> b!4035484 (= c!696992 ((_ is Union!11821) (regex!6916 (rule!9982 token!484))))))

(assert (=> b!4035484 (= e!2504019 e!2504018)))

(declare-fun b!4035485 () Bool)

(declare-fun c!696991 () Bool)

(assert (=> b!4035485 (= c!696991 (nullable!4144 (regOne!24154 (regex!6916 (rule!9982 token!484)))))))

(assert (=> b!4035485 (= e!2504022 e!2504021)))

(declare-fun d!1195695 () Bool)

(declare-fun lt!1435592 () Regex!11821)

(assert (=> d!1195695 (validRegex!5344 lt!1435592)))

(declare-fun e!2504020 () Regex!11821)

(assert (=> d!1195695 (= lt!1435592 e!2504020)))

(declare-fun c!696993 () Bool)

(assert (=> d!1195695 (= c!696993 (or ((_ is EmptyExpr!11821) (regex!6916 (rule!9982 token!484))) ((_ is EmptyLang!11821) (regex!6916 (rule!9982 token!484)))))))

(assert (=> d!1195695 (validRegex!5344 (regex!6916 (rule!9982 token!484)))))

(assert (=> d!1195695 (= (derivativeStep!3549 (regex!6916 (rule!9982 token!484)) (head!8547 lt!1435037)) lt!1435592)))

(declare-fun b!4035486 () Bool)

(assert (=> b!4035486 (= e!2504020 e!2504019)))

(declare-fun c!696994 () Bool)

(assert (=> b!4035486 (= c!696994 ((_ is ElementMatch!11821) (regex!6916 (rule!9982 token!484))))))

(declare-fun b!4035487 () Bool)

(assert (=> b!4035487 (= e!2504022 (Concat!18968 call!287109 (regex!6916 (rule!9982 token!484))))))

(declare-fun bm!287104 () Bool)

(assert (=> bm!287104 (= call!287109 call!287110)))

(declare-fun bm!287105 () Bool)

(assert (=> bm!287105 (= call!287108 (derivativeStep!3549 (ite c!696992 (regTwo!24155 (regex!6916 (rule!9982 token!484))) (regTwo!24154 (regex!6916 (rule!9982 token!484)))) (head!8547 lt!1435037)))))

(declare-fun b!4035488 () Bool)

(assert (=> b!4035488 (= e!2504020 EmptyLang!11821)))

(declare-fun b!4035489 () Bool)

(assert (=> b!4035489 (= e!2504021 (Union!11821 (Concat!18968 call!287107 (regTwo!24154 (regex!6916 (rule!9982 token!484)))) call!287108))))

(assert (= (and d!1195695 c!696993) b!4035488))

(assert (= (and d!1195695 (not c!696993)) b!4035486))

(assert (= (and b!4035486 c!696994) b!4035483))

(assert (= (and b!4035486 (not c!696994)) b!4035484))

(assert (= (and b!4035484 c!696992) b!4035482))

(assert (= (and b!4035484 (not c!696992)) b!4035480))

(assert (= (and b!4035480 c!696995) b!4035487))

(assert (= (and b!4035480 (not c!696995)) b!4035485))

(assert (= (and b!4035485 c!696991) b!4035489))

(assert (= (and b!4035485 (not c!696991)) b!4035481))

(assert (= (or b!4035489 b!4035481) bm!287102))

(assert (= (or b!4035487 bm!287102) bm!287104))

(assert (= (or b!4035482 bm!287104) bm!287103))

(assert (= (or b!4035482 b!4035489) bm!287105))

(assert (=> bm!287103 m!4627907))

(declare-fun m!4629443 () Bool)

(assert (=> bm!287103 m!4629443))

(declare-fun m!4629445 () Bool)

(assert (=> b!4035485 m!4629445))

(declare-fun m!4629447 () Bool)

(assert (=> d!1195695 m!4629447))

(assert (=> d!1195695 m!4628273))

(assert (=> bm!287105 m!4627907))

(declare-fun m!4629449 () Bool)

(assert (=> bm!287105 m!4629449))

(assert (=> b!4034706 d!1195695))

(assert (=> b!4034706 d!1195269))

(assert (=> b!4034706 d!1195405))

(declare-fun b!4035500 () Bool)

(declare-fun res!1643278 () Bool)

(declare-fun e!2504028 () Bool)

(assert (=> b!4035500 (=> (not res!1643278) (not e!2504028))))

(declare-fun lt!1435595 () List!43341)

(assert (=> b!4035500 (= res!1643278 (= (size!32302 lt!1435595) (+ (size!32302 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))) (size!32302 (_2!24283 (get!14180 lt!1435210))))))))

(declare-fun b!4035501 () Bool)

(assert (=> b!4035501 (= e!2504028 (or (not (= (_2!24283 (get!14180 lt!1435210)) Nil!43217)) (= lt!1435595 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210)))))))))

(declare-fun b!4035499 () Bool)

(declare-fun e!2504029 () List!43341)

(assert (=> b!4035499 (= e!2504029 (Cons!43217 (h!48637 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))) (++!11318 (t!334404 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))) (_2!24283 (get!14180 lt!1435210)))))))

(declare-fun d!1195731 () Bool)

(assert (=> d!1195731 e!2504028))

(declare-fun res!1643279 () Bool)

(assert (=> d!1195731 (=> (not res!1643279) (not e!2504028))))

(assert (=> d!1195731 (= res!1643279 (= (content!6566 lt!1435595) ((_ map or) (content!6566 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))) (content!6566 (_2!24283 (get!14180 lt!1435210))))))))

(assert (=> d!1195731 (= lt!1435595 e!2504029)))

(declare-fun c!696997 () Bool)

(assert (=> d!1195731 (= c!696997 ((_ is Nil!43217) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210))))))))

(assert (=> d!1195731 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435210)))) (_2!24283 (get!14180 lt!1435210))) lt!1435595)))

(declare-fun b!4035498 () Bool)

(assert (=> b!4035498 (= e!2504029 (_2!24283 (get!14180 lt!1435210)))))

(assert (= (and d!1195731 c!696997) b!4035498))

(assert (= (and d!1195731 (not c!696997)) b!4035499))

(assert (= (and d!1195731 res!1643279) b!4035500))

(assert (= (and b!4035500 res!1643278) b!4035501))

(declare-fun m!4629453 () Bool)

(assert (=> b!4035500 m!4629453))

(assert (=> b!4035500 m!4628135))

(declare-fun m!4629455 () Bool)

(assert (=> b!4035500 m!4629455))

(assert (=> b!4035500 m!4628165))

(declare-fun m!4629457 () Bool)

(assert (=> b!4035499 m!4629457))

(declare-fun m!4629459 () Bool)

(assert (=> d!1195731 m!4629459))

(assert (=> d!1195731 m!4628135))

(declare-fun m!4629461 () Bool)

(assert (=> d!1195731 m!4629461))

(declare-fun m!4629463 () Bool)

(assert (=> d!1195731 m!4629463))

(assert (=> b!4034575 d!1195731))

(assert (=> b!4034575 d!1195613))

(assert (=> b!4034575 d!1195615))

(assert (=> b!4034575 d!1195259))

(declare-fun d!1195737 () Bool)

(declare-fun lt!1435597 () Int)

(assert (=> d!1195737 (>= lt!1435597 0)))

(declare-fun e!2504032 () Int)

(assert (=> d!1195737 (= lt!1435597 e!2504032)))

(declare-fun c!696999 () Bool)

(assert (=> d!1195737 (= c!696999 ((_ is Nil!43217) lt!1435154))))

(assert (=> d!1195737 (= (size!32302 lt!1435154) lt!1435597)))

(declare-fun b!4035506 () Bool)

(assert (=> b!4035506 (= e!2504032 0)))

(declare-fun b!4035507 () Bool)

(assert (=> b!4035507 (= e!2504032 (+ 1 (size!32302 (t!334404 lt!1435154))))))

(assert (= (and d!1195737 c!696999) b!4035506))

(assert (= (and d!1195737 (not c!696999)) b!4035507))

(declare-fun m!4629467 () Bool)

(assert (=> b!4035507 m!4629467))

(assert (=> b!4034439 d!1195737))

(declare-fun d!1195739 () Bool)

(declare-fun lt!1435598 () Int)

(assert (=> d!1195739 (>= lt!1435598 0)))

(declare-fun e!2504033 () Int)

(assert (=> d!1195739 (= lt!1435598 e!2504033)))

(declare-fun c!697000 () Bool)

(assert (=> d!1195739 (= c!697000 ((_ is Nil!43217) lt!1435008))))

(assert (=> d!1195739 (= (size!32302 lt!1435008) lt!1435598)))

(declare-fun b!4035508 () Bool)

(assert (=> b!4035508 (= e!2504033 0)))

(declare-fun b!4035509 () Bool)

(assert (=> b!4035509 (= e!2504033 (+ 1 (size!32302 (t!334404 lt!1435008))))))

(assert (= (and d!1195739 c!697000) b!4035508))

(assert (= (and d!1195739 (not c!697000)) b!4035509))

(assert (=> b!4035509 m!4628965))

(assert (=> b!4034439 d!1195739))

(assert (=> b!4034439 d!1195063))

(declare-fun d!1195743 () Bool)

(assert (=> d!1195743 (= (list!16082 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))) (list!16084 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))))))

(declare-fun bs!590522 () Bool)

(assert (= bs!590522 d!1195743))

(declare-fun m!4629481 () Bool)

(assert (=> bs!590522 m!4629481))

(assert (=> b!4034605 d!1195743))

(assert (=> d!1195161 d!1195159))

(declare-fun d!1195747 () Bool)

(assert (=> d!1195747 (ruleValid!2846 thiss!21717 (rule!9982 token!484))))

(assert (=> d!1195747 true))

(declare-fun _$65!1483 () Unit!62397)

(assert (=> d!1195747 (= (choose!24437 thiss!21717 (rule!9982 token!484) rules!2999) _$65!1483)))

(declare-fun bs!590523 () Bool)

(assert (= bs!590523 d!1195747))

(assert (=> bs!590523 m!4627559))

(assert (=> d!1195161 d!1195747))

(declare-fun d!1195751 () Bool)

(declare-fun lt!1435600 () Bool)

(assert (=> d!1195751 (= lt!1435600 (select (content!6567 rules!2999) (rule!9982 token!484)))))

(declare-fun e!2504035 () Bool)

(assert (=> d!1195751 (= lt!1435600 e!2504035)))

(declare-fun res!1643282 () Bool)

(assert (=> d!1195751 (=> (not res!1643282) (not e!2504035))))

(assert (=> d!1195751 (= res!1643282 ((_ is Cons!43219) rules!2999))))

(assert (=> d!1195751 (= (contains!8580 rules!2999 (rule!9982 token!484)) lt!1435600)))

(declare-fun b!4035511 () Bool)

(declare-fun e!2504036 () Bool)

(assert (=> b!4035511 (= e!2504035 e!2504036)))

(declare-fun res!1643283 () Bool)

(assert (=> b!4035511 (=> res!1643283 e!2504036)))

(assert (=> b!4035511 (= res!1643283 (= (h!48639 rules!2999) (rule!9982 token!484)))))

(declare-fun b!4035512 () Bool)

(assert (=> b!4035512 (= e!2504036 (contains!8580 (t!334406 rules!2999) (rule!9982 token!484)))))

(assert (= (and d!1195751 res!1643282) b!4035511))

(assert (= (and b!4035511 (not res!1643283)) b!4035512))

(assert (=> d!1195751 m!4628313))

(declare-fun m!4629491 () Bool)

(assert (=> d!1195751 m!4629491))

(declare-fun m!4629493 () Bool)

(assert (=> b!4035512 m!4629493))

(assert (=> d!1195161 d!1195751))

(declare-fun d!1195753 () Bool)

(declare-fun lt!1435601 () Int)

(assert (=> d!1195753 (>= lt!1435601 0)))

(declare-fun e!2504037 () Int)

(assert (=> d!1195753 (= lt!1435601 e!2504037)))

(declare-fun c!697001 () Bool)

(assert (=> d!1195753 (= c!697001 ((_ is Nil!43217) (_2!24283 (get!14180 lt!1435210))))))

(assert (=> d!1195753 (= (size!32302 (_2!24283 (get!14180 lt!1435210))) lt!1435601)))

(declare-fun b!4035513 () Bool)

(assert (=> b!4035513 (= e!2504037 0)))

(declare-fun b!4035514 () Bool)

(assert (=> b!4035514 (= e!2504037 (+ 1 (size!32302 (t!334404 (_2!24283 (get!14180 lt!1435210))))))))

(assert (= (and d!1195753 c!697001) b!4035513))

(assert (= (and d!1195753 (not c!697001)) b!4035514))

(declare-fun m!4629495 () Bool)

(assert (=> b!4035514 m!4629495))

(assert (=> b!4034571 d!1195753))

(assert (=> b!4034571 d!1195259))

(assert (=> b!4034571 d!1195255))

(declare-fun b!4035521 () Bool)

(declare-fun res!1643288 () Bool)

(declare-fun e!2504041 () Bool)

(assert (=> b!4035521 (=> (not res!1643288) (not e!2504041))))

(declare-fun lt!1435603 () List!43341)

(assert (=> b!4035521 (= res!1643288 (= (size!32302 lt!1435603) (+ (size!32302 (t!334404 lt!1435037)) (size!32302 lt!1435030))))))

(declare-fun b!4035522 () Bool)

(assert (=> b!4035522 (= e!2504041 (or (not (= lt!1435030 Nil!43217)) (= lt!1435603 (t!334404 lt!1435037))))))

(declare-fun b!4035520 () Bool)

(declare-fun e!2504042 () List!43341)

(assert (=> b!4035520 (= e!2504042 (Cons!43217 (h!48637 (t!334404 lt!1435037)) (++!11318 (t!334404 (t!334404 lt!1435037)) lt!1435030)))))

(declare-fun d!1195757 () Bool)

(assert (=> d!1195757 e!2504041))

(declare-fun res!1643289 () Bool)

(assert (=> d!1195757 (=> (not res!1643289) (not e!2504041))))

(assert (=> d!1195757 (= res!1643289 (= (content!6566 lt!1435603) ((_ map or) (content!6566 (t!334404 lt!1435037)) (content!6566 lt!1435030))))))

(assert (=> d!1195757 (= lt!1435603 e!2504042)))

(declare-fun c!697002 () Bool)

(assert (=> d!1195757 (= c!697002 ((_ is Nil!43217) (t!334404 lt!1435037)))))

(assert (=> d!1195757 (= (++!11318 (t!334404 lt!1435037) lt!1435030) lt!1435603)))

(declare-fun b!4035519 () Bool)

(assert (=> b!4035519 (= e!2504042 lt!1435030)))

(assert (= (and d!1195757 c!697002) b!4035519))

(assert (= (and d!1195757 (not c!697002)) b!4035520))

(assert (= (and d!1195757 res!1643289) b!4035521))

(assert (= (and b!4035521 res!1643288) b!4035522))

(declare-fun m!4629499 () Bool)

(assert (=> b!4035521 m!4629499))

(assert (=> b!4035521 m!4628303))

(assert (=> b!4035521 m!4627943))

(declare-fun m!4629501 () Bool)

(assert (=> b!4035520 m!4629501))

(declare-fun m!4629503 () Bool)

(assert (=> d!1195757 m!4629503))

(assert (=> d!1195757 m!4628477))

(assert (=> d!1195757 m!4627951))

(assert (=> b!4034434 d!1195757))

(declare-fun b!4035523 () Bool)

(declare-fun e!2504043 () Bool)

(declare-fun e!2504044 () Bool)

(assert (=> b!4035523 (= e!2504043 e!2504044)))

(declare-fun res!1643290 () Bool)

(assert (=> b!4035523 (=> (not res!1643290) (not e!2504044))))

(assert (=> b!4035523 (= res!1643290 (not ((_ is Nil!43217) (tail!6279 lt!1435002))))))

(declare-fun b!4035524 () Bool)

(declare-fun res!1643293 () Bool)

(assert (=> b!4035524 (=> (not res!1643293) (not e!2504044))))

(assert (=> b!4035524 (= res!1643293 (= (head!8547 (tail!6279 lt!1435037)) (head!8547 (tail!6279 lt!1435002))))))

(declare-fun d!1195761 () Bool)

(declare-fun e!2504045 () Bool)

(assert (=> d!1195761 e!2504045))

(declare-fun res!1643292 () Bool)

(assert (=> d!1195761 (=> res!1643292 e!2504045)))

(declare-fun lt!1435605 () Bool)

(assert (=> d!1195761 (= res!1643292 (not lt!1435605))))

(assert (=> d!1195761 (= lt!1435605 e!2504043)))

(declare-fun res!1643291 () Bool)

(assert (=> d!1195761 (=> res!1643291 e!2504043)))

(assert (=> d!1195761 (= res!1643291 ((_ is Nil!43217) (tail!6279 lt!1435037)))))

(assert (=> d!1195761 (= (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435002)) lt!1435605)))

(declare-fun b!4035525 () Bool)

(assert (=> b!4035525 (= e!2504044 (isPrefix!4003 (tail!6279 (tail!6279 lt!1435037)) (tail!6279 (tail!6279 lt!1435002))))))

(declare-fun b!4035526 () Bool)

(assert (=> b!4035526 (= e!2504045 (>= (size!32302 (tail!6279 lt!1435002)) (size!32302 (tail!6279 lt!1435037))))))

(assert (= (and d!1195761 (not res!1643291)) b!4035523))

(assert (= (and b!4035523 res!1643290) b!4035524))

(assert (= (and b!4035524 res!1643293) b!4035525))

(assert (= (and d!1195761 (not res!1643292)) b!4035526))

(assert (=> b!4035524 m!4627911))

(assert (=> b!4035524 m!4629063))

(assert (=> b!4035524 m!4628169))

(declare-fun m!4629507 () Bool)

(assert (=> b!4035524 m!4629507))

(assert (=> b!4035525 m!4627911))

(assert (=> b!4035525 m!4629067))

(assert (=> b!4035525 m!4628169))

(declare-fun m!4629509 () Bool)

(assert (=> b!4035525 m!4629509))

(assert (=> b!4035525 m!4629067))

(assert (=> b!4035525 m!4629509))

(declare-fun m!4629511 () Bool)

(assert (=> b!4035525 m!4629511))

(assert (=> b!4035526 m!4628169))

(declare-fun m!4629513 () Bool)

(assert (=> b!4035526 m!4629513))

(assert (=> b!4035526 m!4627911))

(assert (=> b!4035526 m!4629075))

(assert (=> b!4034582 d!1195761))

(assert (=> b!4034582 d!1195405))

(declare-fun d!1195765 () Bool)

(assert (=> d!1195765 (= (tail!6279 lt!1435002) (t!334404 lt!1435002))))

(assert (=> b!4034582 d!1195765))

(declare-fun b!4035529 () Bool)

(declare-fun res!1643294 () Bool)

(declare-fun e!2504046 () Bool)

(assert (=> b!4035529 (=> (not res!1643294) (not e!2504046))))

(declare-fun lt!1435606 () List!43341)

(assert (=> b!4035529 (= res!1643294 (= (size!32302 lt!1435606) (+ (size!32302 (++!11318 lt!1435037 lt!1435038)) (size!32302 suffix!1299))))))

(declare-fun b!4035530 () Bool)

(assert (=> b!4035530 (= e!2504046 (or (not (= suffix!1299 Nil!43217)) (= lt!1435606 (++!11318 lt!1435037 lt!1435038))))))

(declare-fun e!2504047 () List!43341)

(declare-fun b!4035528 () Bool)

(assert (=> b!4035528 (= e!2504047 (Cons!43217 (h!48637 (++!11318 lt!1435037 lt!1435038)) (++!11318 (t!334404 (++!11318 lt!1435037 lt!1435038)) suffix!1299)))))

(declare-fun d!1195767 () Bool)

(assert (=> d!1195767 e!2504046))

(declare-fun res!1643295 () Bool)

(assert (=> d!1195767 (=> (not res!1643295) (not e!2504046))))

(assert (=> d!1195767 (= res!1643295 (= (content!6566 lt!1435606) ((_ map or) (content!6566 (++!11318 lt!1435037 lt!1435038)) (content!6566 suffix!1299))))))

(assert (=> d!1195767 (= lt!1435606 e!2504047)))

(declare-fun c!697003 () Bool)

(assert (=> d!1195767 (= c!697003 ((_ is Nil!43217) (++!11318 lt!1435037 lt!1435038)))))

(assert (=> d!1195767 (= (++!11318 (++!11318 lt!1435037 lt!1435038) suffix!1299) lt!1435606)))

(declare-fun b!4035527 () Bool)

(assert (=> b!4035527 (= e!2504047 suffix!1299)))

(assert (= (and d!1195767 c!697003) b!4035527))

(assert (= (and d!1195767 (not c!697003)) b!4035528))

(assert (= (and d!1195767 res!1643295) b!4035529))

(assert (= (and b!4035529 res!1643294) b!4035530))

(declare-fun m!4629515 () Bool)

(assert (=> b!4035529 m!4629515))

(assert (=> b!4035529 m!4627519))

(declare-fun m!4629517 () Bool)

(assert (=> b!4035529 m!4629517))

(assert (=> b!4035529 m!4627533))

(declare-fun m!4629519 () Bool)

(assert (=> b!4035528 m!4629519))

(declare-fun m!4629521 () Bool)

(assert (=> d!1195767 m!4629521))

(assert (=> d!1195767 m!4627519))

(declare-fun m!4629523 () Bool)

(assert (=> d!1195767 m!4629523))

(assert (=> d!1195767 m!4627849))

(assert (=> d!1195051 d!1195767))

(declare-fun d!1195769 () Bool)

(assert (=> d!1195769 (= (++!11318 (++!11318 lt!1435037 lt!1435038) suffix!1299) (++!11318 lt!1435037 (++!11318 lt!1435038 suffix!1299)))))

(assert (=> d!1195769 true))

(declare-fun _$52!2298 () Unit!62397)

(assert (=> d!1195769 (= (choose!24432 lt!1435037 lt!1435038 suffix!1299) _$52!2298)))

(declare-fun bs!590525 () Bool)

(assert (= bs!590525 d!1195769))

(assert (=> bs!590525 m!4627519))

(assert (=> bs!590525 m!4627519))

(assert (=> bs!590525 m!4628011))

(assert (=> bs!590525 m!4627447))

(assert (=> bs!590525 m!4627447))

(assert (=> bs!590525 m!4628003))

(assert (=> d!1195051 d!1195769))

(assert (=> d!1195051 d!1195133))

(declare-fun b!4035537 () Bool)

(declare-fun res!1643300 () Bool)

(declare-fun e!2504052 () Bool)

(assert (=> b!4035537 (=> (not res!1643300) (not e!2504052))))

(declare-fun lt!1435609 () List!43341)

(assert (=> b!4035537 (= res!1643300 (= (size!32302 lt!1435609) (+ (size!32302 lt!1435037) (size!32302 (++!11318 lt!1435038 suffix!1299)))))))

(declare-fun b!4035538 () Bool)

(assert (=> b!4035538 (= e!2504052 (or (not (= (++!11318 lt!1435038 suffix!1299) Nil!43217)) (= lt!1435609 lt!1435037)))))

(declare-fun e!2504053 () List!43341)

(declare-fun b!4035536 () Bool)

(assert (=> b!4035536 (= e!2504053 (Cons!43217 (h!48637 lt!1435037) (++!11318 (t!334404 lt!1435037) (++!11318 lt!1435038 suffix!1299))))))

(declare-fun d!1195771 () Bool)

(assert (=> d!1195771 e!2504052))

(declare-fun res!1643301 () Bool)

(assert (=> d!1195771 (=> (not res!1643301) (not e!2504052))))

(assert (=> d!1195771 (= res!1643301 (= (content!6566 lt!1435609) ((_ map or) (content!6566 lt!1435037) (content!6566 (++!11318 lt!1435038 suffix!1299)))))))

(assert (=> d!1195771 (= lt!1435609 e!2504053)))

(declare-fun c!697004 () Bool)

(assert (=> d!1195771 (= c!697004 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195771 (= (++!11318 lt!1435037 (++!11318 lt!1435038 suffix!1299)) lt!1435609)))

(declare-fun b!4035535 () Bool)

(assert (=> b!4035535 (= e!2504053 (++!11318 lt!1435038 suffix!1299))))

(assert (= (and d!1195771 c!697004) b!4035535))

(assert (= (and d!1195771 (not c!697004)) b!4035536))

(assert (= (and d!1195771 res!1643301) b!4035537))

(assert (= (and b!4035537 res!1643300) b!4035538))

(declare-fun m!4629525 () Bool)

(assert (=> b!4035537 m!4629525))

(assert (=> b!4035537 m!4627507))

(assert (=> b!4035537 m!4627447))

(declare-fun m!4629527 () Bool)

(assert (=> b!4035537 m!4629527))

(assert (=> b!4035536 m!4627447))

(declare-fun m!4629529 () Bool)

(assert (=> b!4035536 m!4629529))

(declare-fun m!4629531 () Bool)

(assert (=> d!1195771 m!4629531))

(assert (=> d!1195771 m!4627949))

(assert (=> d!1195771 m!4627447))

(declare-fun m!4629533 () Bool)

(assert (=> d!1195771 m!4629533))

(assert (=> d!1195051 d!1195771))

(assert (=> d!1195051 d!1195045))

(declare-fun d!1195773 () Bool)

(assert (=> d!1195773 (= (list!16082 lt!1435252) (list!16084 (c!696700 lt!1435252)))))

(declare-fun bs!590526 () Bool)

(assert (= bs!590526 d!1195773))

(declare-fun m!4629535 () Bool)

(assert (=> bs!590526 m!4629535))

(assert (=> d!1195185 d!1195773))

(declare-fun b!4035541 () Bool)

(declare-fun res!1643305 () Bool)

(declare-fun e!2504058 () Bool)

(assert (=> b!4035541 (=> (not res!1643305) (not e!2504058))))

(declare-fun lt!1435614 () Option!9330)

(assert (=> b!4035541 (= res!1643305 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435614)))) (_2!24283 (get!14180 lt!1435614))) lt!1435033))))

(declare-fun d!1195775 () Bool)

(declare-fun e!2504057 () Bool)

(assert (=> d!1195775 e!2504057))

(declare-fun res!1643304 () Bool)

(assert (=> d!1195775 (=> res!1643304 e!2504057)))

(assert (=> d!1195775 (= res!1643304 (isEmpty!25792 lt!1435614))))

(declare-fun e!2504056 () Option!9330)

(assert (=> d!1195775 (= lt!1435614 e!2504056)))

(declare-fun c!697005 () Bool)

(assert (=> d!1195775 (= c!697005 (and ((_ is Cons!43219) (t!334406 rules!2999)) ((_ is Nil!43219) (t!334406 (t!334406 rules!2999)))))))

(declare-fun lt!1435613 () Unit!62397)

(declare-fun lt!1435612 () Unit!62397)

(assert (=> d!1195775 (= lt!1435613 lt!1435612)))

(assert (=> d!1195775 (isPrefix!4003 lt!1435033 lt!1435033)))

(assert (=> d!1195775 (= lt!1435612 (lemmaIsPrefixRefl!2570 lt!1435033 lt!1435033))))

(assert (=> d!1195775 (rulesValidInductive!2519 thiss!21717 (t!334406 rules!2999))))

(assert (=> d!1195775 (= (maxPrefix!3803 thiss!21717 (t!334406 rules!2999) lt!1435033) lt!1435614)))

(declare-fun b!4035542 () Bool)

(declare-fun res!1643310 () Bool)

(assert (=> b!4035542 (=> (not res!1643310) (not e!2504058))))

(assert (=> b!4035542 (= res!1643310 (< (size!32302 (_2!24283 (get!14180 lt!1435614))) (size!32302 lt!1435033)))))

(declare-fun b!4035543 () Bool)

(declare-fun res!1643307 () Bool)

(assert (=> b!4035543 (=> (not res!1643307) (not e!2504058))))

(assert (=> b!4035543 (= res!1643307 (= (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435614)))) (originalCharacters!7516 (_1!24283 (get!14180 lt!1435614)))))))

(declare-fun b!4035544 () Bool)

(declare-fun res!1643309 () Bool)

(assert (=> b!4035544 (=> (not res!1643309) (not e!2504058))))

(assert (=> b!4035544 (= res!1643309 (= (value!217740 (_1!24283 (get!14180 lt!1435614))) (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435614)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435614)))))))))

(declare-fun b!4035545 () Bool)

(assert (=> b!4035545 (= e!2504057 e!2504058)))

(declare-fun res!1643306 () Bool)

(assert (=> b!4035545 (=> (not res!1643306) (not e!2504058))))

(assert (=> b!4035545 (= res!1643306 (isDefined!7098 lt!1435614))))

(declare-fun bm!287106 () Bool)

(declare-fun call!287111 () Option!9330)

(assert (=> bm!287106 (= call!287111 (maxPrefixOneRule!2815 thiss!21717 (h!48639 (t!334406 rules!2999)) lt!1435033))))

(declare-fun b!4035546 () Bool)

(assert (=> b!4035546 (= e!2504056 call!287111)))

(declare-fun b!4035547 () Bool)

(assert (=> b!4035547 (= e!2504058 (contains!8580 (t!334406 rules!2999) (rule!9982 (_1!24283 (get!14180 lt!1435614)))))))

(declare-fun b!4035548 () Bool)

(declare-fun lt!1435615 () Option!9330)

(declare-fun lt!1435611 () Option!9330)

(assert (=> b!4035548 (= e!2504056 (ite (and ((_ is None!9329) lt!1435615) ((_ is None!9329) lt!1435611)) None!9329 (ite ((_ is None!9329) lt!1435611) lt!1435615 (ite ((_ is None!9329) lt!1435615) lt!1435611 (ite (>= (size!32301 (_1!24283 (v!39723 lt!1435615))) (size!32301 (_1!24283 (v!39723 lt!1435611)))) lt!1435615 lt!1435611)))))))

(assert (=> b!4035548 (= lt!1435615 call!287111)))

(assert (=> b!4035548 (= lt!1435611 (maxPrefix!3803 thiss!21717 (t!334406 (t!334406 rules!2999)) lt!1435033))))

(declare-fun b!4035549 () Bool)

(declare-fun res!1643308 () Bool)

(assert (=> b!4035549 (=> (not res!1643308) (not e!2504058))))

(assert (=> b!4035549 (= res!1643308 (matchR!5774 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435614)))) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435614))))))))

(assert (= (and d!1195775 c!697005) b!4035546))

(assert (= (and d!1195775 (not c!697005)) b!4035548))

(assert (= (or b!4035546 b!4035548) bm!287106))

(assert (= (and d!1195775 (not res!1643304)) b!4035545))

(assert (= (and b!4035545 res!1643306) b!4035543))

(assert (= (and b!4035543 res!1643307) b!4035542))

(assert (= (and b!4035542 res!1643310) b!4035541))

(assert (= (and b!4035541 res!1643305) b!4035544))

(assert (= (and b!4035544 res!1643309) b!4035549))

(assert (= (and b!4035549 res!1643308) b!4035547))

(declare-fun m!4629539 () Bool)

(assert (=> b!4035541 m!4629539))

(declare-fun m!4629541 () Bool)

(assert (=> b!4035541 m!4629541))

(assert (=> b!4035541 m!4629541))

(declare-fun m!4629543 () Bool)

(assert (=> b!4035541 m!4629543))

(assert (=> b!4035541 m!4629543))

(declare-fun m!4629545 () Bool)

(assert (=> b!4035541 m!4629545))

(declare-fun m!4629547 () Bool)

(assert (=> bm!287106 m!4629547))

(assert (=> b!4035543 m!4629539))

(assert (=> b!4035543 m!4629541))

(assert (=> b!4035543 m!4629541))

(assert (=> b!4035543 m!4629543))

(assert (=> b!4035549 m!4629539))

(assert (=> b!4035549 m!4629541))

(assert (=> b!4035549 m!4629541))

(assert (=> b!4035549 m!4629543))

(assert (=> b!4035549 m!4629543))

(declare-fun m!4629549 () Bool)

(assert (=> b!4035549 m!4629549))

(declare-fun m!4629551 () Bool)

(assert (=> b!4035545 m!4629551))

(assert (=> b!4035544 m!4629539))

(declare-fun m!4629553 () Bool)

(assert (=> b!4035544 m!4629553))

(assert (=> b!4035544 m!4629553))

(declare-fun m!4629555 () Bool)

(assert (=> b!4035544 m!4629555))

(assert (=> b!4035547 m!4629539))

(declare-fun m!4629557 () Bool)

(assert (=> b!4035547 m!4629557))

(declare-fun m!4629559 () Bool)

(assert (=> b!4035548 m!4629559))

(assert (=> b!4035542 m!4629539))

(declare-fun m!4629561 () Bool)

(assert (=> b!4035542 m!4629561))

(assert (=> b!4035542 m!4627891))

(declare-fun m!4629563 () Bool)

(assert (=> d!1195775 m!4629563))

(assert (=> d!1195775 m!4627895))

(assert (=> d!1195775 m!4627897))

(assert (=> d!1195775 m!4629253))

(assert (=> b!4034363 d!1195775))

(declare-fun b!4035550 () Bool)

(declare-fun e!2504059 () Bool)

(declare-fun e!2504060 () Bool)

(assert (=> b!4035550 (= e!2504059 e!2504060)))

(declare-fun res!1643311 () Bool)

(assert (=> b!4035550 (=> (not res!1643311) (not e!2504060))))

(assert (=> b!4035550 (= res!1643311 (not ((_ is Nil!43217) (tail!6279 lt!1435003))))))

(declare-fun b!4035551 () Bool)

(declare-fun res!1643314 () Bool)

(assert (=> b!4035551 (=> (not res!1643314) (not e!2504060))))

(assert (=> b!4035551 (= res!1643314 (= (head!8547 (tail!6279 prefix!494)) (head!8547 (tail!6279 lt!1435003))))))

(declare-fun d!1195783 () Bool)

(declare-fun e!2504061 () Bool)

(assert (=> d!1195783 e!2504061))

(declare-fun res!1643313 () Bool)

(assert (=> d!1195783 (=> res!1643313 e!2504061)))

(declare-fun lt!1435616 () Bool)

(assert (=> d!1195783 (= res!1643313 (not lt!1435616))))

(assert (=> d!1195783 (= lt!1435616 e!2504059)))

(declare-fun res!1643312 () Bool)

(assert (=> d!1195783 (=> res!1643312 e!2504059)))

(assert (=> d!1195783 (= res!1643312 ((_ is Nil!43217) (tail!6279 prefix!494)))))

(assert (=> d!1195783 (= (isPrefix!4003 (tail!6279 prefix!494) (tail!6279 lt!1435003)) lt!1435616)))

(declare-fun b!4035552 () Bool)

(assert (=> b!4035552 (= e!2504060 (isPrefix!4003 (tail!6279 (tail!6279 prefix!494)) (tail!6279 (tail!6279 lt!1435003))))))

(declare-fun b!4035553 () Bool)

(assert (=> b!4035553 (= e!2504061 (>= (size!32302 (tail!6279 lt!1435003)) (size!32302 (tail!6279 prefix!494))))))

(assert (= (and d!1195783 (not res!1643312)) b!4035550))

(assert (= (and b!4035550 res!1643311) b!4035551))

(assert (= (and b!4035551 res!1643314) b!4035552))

(assert (= (and d!1195783 (not res!1643313)) b!4035553))

(assert (=> b!4035551 m!4628189))

(assert (=> b!4035551 m!4629135))

(assert (=> b!4035551 m!4628179))

(assert (=> b!4035551 m!4629309))

(assert (=> b!4035552 m!4628189))

(assert (=> b!4035552 m!4628801))

(assert (=> b!4035552 m!4628179))

(assert (=> b!4035552 m!4629039))

(assert (=> b!4035552 m!4628801))

(assert (=> b!4035552 m!4629039))

(declare-fun m!4629565 () Bool)

(assert (=> b!4035552 m!4629565))

(assert (=> b!4035553 m!4628179))

(assert (=> b!4035553 m!4629037))

(assert (=> b!4035553 m!4628189))

(assert (=> b!4035553 m!4628799))

(assert (=> b!4034590 d!1195783))

(assert (=> b!4034590 d!1195415))

(assert (=> b!4034590 d!1195521))

(declare-fun d!1195785 () Bool)

(declare-fun lt!1435617 () Int)

(assert (=> d!1195785 (>= lt!1435617 0)))

(declare-fun e!2504062 () Int)

(assert (=> d!1195785 (= lt!1435617 e!2504062)))

(declare-fun c!697006 () Bool)

(assert (=> d!1195785 (= c!697006 ((_ is Nil!43217) lt!1435001))))

(assert (=> d!1195785 (= (size!32302 lt!1435001) lt!1435617)))

(declare-fun b!4035554 () Bool)

(assert (=> b!4035554 (= e!2504062 0)))

(declare-fun b!4035555 () Bool)

(assert (=> b!4035555 (= e!2504062 (+ 1 (size!32302 (t!334404 lt!1435001))))))

(assert (= (and d!1195785 c!697006) b!4035554))

(assert (= (and d!1195785 (not c!697006)) b!4035555))

(declare-fun m!4629567 () Bool)

(assert (=> b!4035555 m!4629567))

(assert (=> b!4034595 d!1195785))

(assert (=> b!4034595 d!1195171))

(declare-fun b!4035559 () Bool)

(declare-fun e!2504064 () List!43341)

(assert (=> b!4035559 (= e!2504064 (++!11318 (list!16084 (left!32547 (c!696700 (charsOf!4732 token!484)))) (list!16084 (right!32877 (c!696700 (charsOf!4732 token!484))))))))

(declare-fun b!4035556 () Bool)

(declare-fun e!2504063 () List!43341)

(assert (=> b!4035556 (= e!2504063 Nil!43217)))

(declare-fun d!1195787 () Bool)

(declare-fun c!697007 () Bool)

(assert (=> d!1195787 (= c!697007 ((_ is Empty!13127) (c!696700 (charsOf!4732 token!484))))))

(assert (=> d!1195787 (= (list!16084 (c!696700 (charsOf!4732 token!484))) e!2504063)))

(declare-fun b!4035558 () Bool)

(assert (=> b!4035558 (= e!2504064 (list!16086 (xs!16433 (c!696700 (charsOf!4732 token!484)))))))

(declare-fun b!4035557 () Bool)

(assert (=> b!4035557 (= e!2504063 e!2504064)))

(declare-fun c!697008 () Bool)

(assert (=> b!4035557 (= c!697008 ((_ is Leaf!20292) (c!696700 (charsOf!4732 token!484))))))

(assert (= (and d!1195787 c!697007) b!4035556))

(assert (= (and d!1195787 (not c!697007)) b!4035557))

(assert (= (and b!4035557 c!697008) b!4035558))

(assert (= (and b!4035557 (not c!697008)) b!4035559))

(declare-fun m!4629569 () Bool)

(assert (=> b!4035559 m!4629569))

(declare-fun m!4629571 () Bool)

(assert (=> b!4035559 m!4629571))

(assert (=> b!4035559 m!4629569))

(assert (=> b!4035559 m!4629571))

(declare-fun m!4629573 () Bool)

(assert (=> b!4035559 m!4629573))

(declare-fun m!4629575 () Bool)

(assert (=> b!4035558 m!4629575))

(assert (=> d!1195175 d!1195787))

(assert (=> d!1195159 d!1195591))

(declare-fun d!1195789 () Bool)

(declare-fun c!697009 () Bool)

(assert (=> d!1195789 (= c!697009 ((_ is Nil!43217) lt!1435154))))

(declare-fun e!2504065 () (InoxSet C!23828))

(assert (=> d!1195789 (= (content!6566 lt!1435154) e!2504065)))

(declare-fun b!4035560 () Bool)

(assert (=> b!4035560 (= e!2504065 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035561 () Bool)

(assert (=> b!4035561 (= e!2504065 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435154) true) (content!6566 (t!334404 lt!1435154))))))

(assert (= (and d!1195789 c!697009) b!4035560))

(assert (= (and d!1195789 (not c!697009)) b!4035561))

(declare-fun m!4629577 () Bool)

(assert (=> b!4035561 m!4629577))

(declare-fun m!4629579 () Bool)

(assert (=> b!4035561 m!4629579))

(assert (=> d!1195043 d!1195789))

(declare-fun d!1195791 () Bool)

(declare-fun c!697010 () Bool)

(assert (=> d!1195791 (= c!697010 ((_ is Nil!43217) lt!1435008))))

(declare-fun e!2504066 () (InoxSet C!23828))

(assert (=> d!1195791 (= (content!6566 lt!1435008) e!2504066)))

(declare-fun b!4035562 () Bool)

(assert (=> b!4035562 (= e!2504066 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035563 () Bool)

(assert (=> b!4035563 (= e!2504066 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435008) true) (content!6566 (t!334404 lt!1435008))))))

(assert (= (and d!1195791 c!697010) b!4035562))

(assert (= (and d!1195791 (not c!697010)) b!4035563))

(declare-fun m!4629581 () Bool)

(assert (=> b!4035563 m!4629581))

(assert (=> b!4035563 m!4628975))

(assert (=> d!1195043 d!1195791))

(assert (=> d!1195043 d!1195481))

(assert (=> b!4034640 d!1195173))

(assert (=> b!4034640 d!1195171))

(declare-fun b!4035564 () Bool)

(declare-fun res!1643316 () Bool)

(declare-fun e!2504069 () Bool)

(assert (=> b!4035564 (=> (not res!1643316) (not e!2504069))))

(declare-fun lt!1435621 () Option!9330)

(assert (=> b!4035564 (= res!1643316 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435621)))) (_2!24283 (get!14180 lt!1435621))) lt!1435003))))

(declare-fun d!1195793 () Bool)

(declare-fun e!2504068 () Bool)

(assert (=> d!1195793 e!2504068))

(declare-fun res!1643315 () Bool)

(assert (=> d!1195793 (=> res!1643315 e!2504068)))

(assert (=> d!1195793 (= res!1643315 (isEmpty!25792 lt!1435621))))

(declare-fun e!2504067 () Option!9330)

(assert (=> d!1195793 (= lt!1435621 e!2504067)))

(declare-fun c!697011 () Bool)

(assert (=> d!1195793 (= c!697011 (and ((_ is Cons!43219) (t!334406 rules!2999)) ((_ is Nil!43219) (t!334406 (t!334406 rules!2999)))))))

(declare-fun lt!1435620 () Unit!62397)

(declare-fun lt!1435619 () Unit!62397)

(assert (=> d!1195793 (= lt!1435620 lt!1435619)))

(assert (=> d!1195793 (isPrefix!4003 lt!1435003 lt!1435003)))

(assert (=> d!1195793 (= lt!1435619 (lemmaIsPrefixRefl!2570 lt!1435003 lt!1435003))))

(assert (=> d!1195793 (rulesValidInductive!2519 thiss!21717 (t!334406 rules!2999))))

(assert (=> d!1195793 (= (maxPrefix!3803 thiss!21717 (t!334406 rules!2999) lt!1435003) lt!1435621)))

(declare-fun b!4035565 () Bool)

(declare-fun res!1643321 () Bool)

(assert (=> b!4035565 (=> (not res!1643321) (not e!2504069))))

(assert (=> b!4035565 (= res!1643321 (< (size!32302 (_2!24283 (get!14180 lt!1435621))) (size!32302 lt!1435003)))))

(declare-fun b!4035566 () Bool)

(declare-fun res!1643318 () Bool)

(assert (=> b!4035566 (=> (not res!1643318) (not e!2504069))))

(assert (=> b!4035566 (= res!1643318 (= (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435621)))) (originalCharacters!7516 (_1!24283 (get!14180 lt!1435621)))))))

(declare-fun b!4035567 () Bool)

(declare-fun res!1643320 () Bool)

(assert (=> b!4035567 (=> (not res!1643320) (not e!2504069))))

(assert (=> b!4035567 (= res!1643320 (= (value!217740 (_1!24283 (get!14180 lt!1435621))) (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435621)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435621)))))))))

(declare-fun b!4035568 () Bool)

(assert (=> b!4035568 (= e!2504068 e!2504069)))

(declare-fun res!1643317 () Bool)

(assert (=> b!4035568 (=> (not res!1643317) (not e!2504069))))

(assert (=> b!4035568 (= res!1643317 (isDefined!7098 lt!1435621))))

(declare-fun bm!287107 () Bool)

(declare-fun call!287112 () Option!9330)

(assert (=> bm!287107 (= call!287112 (maxPrefixOneRule!2815 thiss!21717 (h!48639 (t!334406 rules!2999)) lt!1435003))))

(declare-fun b!4035569 () Bool)

(assert (=> b!4035569 (= e!2504067 call!287112)))

(declare-fun b!4035570 () Bool)

(assert (=> b!4035570 (= e!2504069 (contains!8580 (t!334406 rules!2999) (rule!9982 (_1!24283 (get!14180 lt!1435621)))))))

(declare-fun b!4035571 () Bool)

(declare-fun lt!1435622 () Option!9330)

(declare-fun lt!1435618 () Option!9330)

(assert (=> b!4035571 (= e!2504067 (ite (and ((_ is None!9329) lt!1435622) ((_ is None!9329) lt!1435618)) None!9329 (ite ((_ is None!9329) lt!1435618) lt!1435622 (ite ((_ is None!9329) lt!1435622) lt!1435618 (ite (>= (size!32301 (_1!24283 (v!39723 lt!1435622))) (size!32301 (_1!24283 (v!39723 lt!1435618)))) lt!1435622 lt!1435618)))))))

(assert (=> b!4035571 (= lt!1435622 call!287112)))

(assert (=> b!4035571 (= lt!1435618 (maxPrefix!3803 thiss!21717 (t!334406 (t!334406 rules!2999)) lt!1435003))))

(declare-fun b!4035572 () Bool)

(declare-fun res!1643319 () Bool)

(assert (=> b!4035572 (=> (not res!1643319) (not e!2504069))))

(assert (=> b!4035572 (= res!1643319 (matchR!5774 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435621)))) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435621))))))))

(assert (= (and d!1195793 c!697011) b!4035569))

(assert (= (and d!1195793 (not c!697011)) b!4035571))

(assert (= (or b!4035569 b!4035571) bm!287107))

(assert (= (and d!1195793 (not res!1643315)) b!4035568))

(assert (= (and b!4035568 res!1643317) b!4035566))

(assert (= (and b!4035566 res!1643318) b!4035565))

(assert (= (and b!4035565 res!1643321) b!4035564))

(assert (= (and b!4035564 res!1643316) b!4035567))

(assert (= (and b!4035567 res!1643320) b!4035572))

(assert (= (and b!4035572 res!1643319) b!4035570))

(declare-fun m!4629583 () Bool)

(assert (=> b!4035564 m!4629583))

(declare-fun m!4629585 () Bool)

(assert (=> b!4035564 m!4629585))

(assert (=> b!4035564 m!4629585))

(declare-fun m!4629587 () Bool)

(assert (=> b!4035564 m!4629587))

(assert (=> b!4035564 m!4629587))

(declare-fun m!4629589 () Bool)

(assert (=> b!4035564 m!4629589))

(declare-fun m!4629591 () Bool)

(assert (=> bm!287107 m!4629591))

(assert (=> b!4035566 m!4629583))

(assert (=> b!4035566 m!4629585))

(assert (=> b!4035566 m!4629585))

(assert (=> b!4035566 m!4629587))

(assert (=> b!4035572 m!4629583))

(assert (=> b!4035572 m!4629585))

(assert (=> b!4035572 m!4629585))

(assert (=> b!4035572 m!4629587))

(assert (=> b!4035572 m!4629587))

(declare-fun m!4629593 () Bool)

(assert (=> b!4035572 m!4629593))

(declare-fun m!4629595 () Bool)

(assert (=> b!4035568 m!4629595))

(assert (=> b!4035567 m!4629583))

(declare-fun m!4629597 () Bool)

(assert (=> b!4035567 m!4629597))

(assert (=> b!4035567 m!4629597))

(declare-fun m!4629599 () Bool)

(assert (=> b!4035567 m!4629599))

(assert (=> b!4035570 m!4629583))

(declare-fun m!4629601 () Bool)

(assert (=> b!4035570 m!4629601))

(declare-fun m!4629603 () Bool)

(assert (=> b!4035571 m!4629603))

(assert (=> b!4035565 m!4629583))

(declare-fun m!4629605 () Bool)

(assert (=> b!4035565 m!4629605))

(assert (=> b!4035565 m!4627803))

(declare-fun m!4629607 () Bool)

(assert (=> d!1195793 m!4629607))

(assert (=> d!1195793 m!4627541))

(assert (=> d!1195793 m!4627543))

(assert (=> d!1195793 m!4629253))

(assert (=> b!4034315 d!1195793))

(declare-fun d!1195795 () Bool)

(declare-fun lt!1435623 () Int)

(assert (=> d!1195795 (>= lt!1435623 0)))

(declare-fun e!2504070 () Int)

(assert (=> d!1195795 (= lt!1435623 e!2504070)))

(declare-fun c!697012 () Bool)

(assert (=> d!1195795 (= c!697012 ((_ is Nil!43217) (t!334404 suffix!1299)))))

(assert (=> d!1195795 (= (size!32302 (t!334404 suffix!1299)) lt!1435623)))

(declare-fun b!4035573 () Bool)

(assert (=> b!4035573 (= e!2504070 0)))

(declare-fun b!4035574 () Bool)

(assert (=> b!4035574 (= e!2504070 (+ 1 (size!32302 (t!334404 (t!334404 suffix!1299)))))))

(assert (= (and d!1195795 c!697012) b!4035573))

(assert (= (and d!1195795 (not c!697012)) b!4035574))

(declare-fun m!4629609 () Bool)

(assert (=> b!4035574 m!4629609))

(assert (=> b!4034489 d!1195795))

(assert (=> b!4034579 d!1195259))

(declare-fun d!1195797 () Bool)

(assert (=> d!1195797 (= (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210))))) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210))))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210))))))))

(declare-fun b_lambda!117747 () Bool)

(assert (=> (not b_lambda!117747) (not d!1195797)))

(declare-fun tb!242425 () Bool)

(declare-fun t!334532 () Bool)

(assert (=> (and b!4034157 (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))))) t!334532) tb!242425))

(declare-fun result!293870 () Bool)

(assert (=> tb!242425 (= result!293870 (inv!21 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210))))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210)))))))))

(declare-fun m!4629611 () Bool)

(assert (=> tb!242425 m!4629611))

(assert (=> d!1195797 t!334532))

(declare-fun b_and!310147 () Bool)

(assert (= b_and!310123 (and (=> t!334532 result!293870) b_and!310147)))

(declare-fun tb!242427 () Bool)

(declare-fun t!334534 () Bool)

(assert (=> (and b!4034142 (= (toValue!9444 (transformation!6916 (rule!9982 token!484))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))))) t!334534) tb!242427))

(declare-fun result!293872 () Bool)

(assert (= result!293872 result!293870))

(assert (=> d!1195797 t!334534))

(declare-fun b_and!310149 () Bool)

(assert (= b_and!310125 (and (=> t!334534 result!293872) b_and!310149)))

(declare-fun tb!242429 () Bool)

(declare-fun t!334536 () Bool)

(assert (=> (and b!4034774 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))))) t!334536) tb!242429))

(declare-fun result!293874 () Bool)

(assert (= result!293874 result!293870))

(assert (=> d!1195797 t!334536))

(declare-fun b_and!310151 () Bool)

(assert (= b_and!310127 (and (=> t!334536 result!293874) b_and!310151)))

(assert (=> d!1195797 m!4628141))

(declare-fun m!4629613 () Bool)

(assert (=> d!1195797 m!4629613))

(assert (=> b!4034579 d!1195797))

(declare-fun d!1195799 () Bool)

(assert (=> d!1195799 (= (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210)))) (fromListB!2338 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210)))))))

(declare-fun bs!590528 () Bool)

(assert (= bs!590528 d!1195799))

(declare-fun m!4629615 () Bool)

(assert (=> bs!590528 m!4629615))

(assert (=> b!4034579 d!1195799))

(declare-fun d!1195801 () Bool)

(declare-fun lt!1435624 () Int)

(assert (=> d!1195801 (>= lt!1435624 0)))

(declare-fun e!2504072 () Int)

(assert (=> d!1195801 (= lt!1435624 e!2504072)))

(declare-fun c!697013 () Bool)

(assert (=> d!1195801 (= c!697013 ((_ is Nil!43217) (t!334404 prefix!494)))))

(assert (=> d!1195801 (= (size!32302 (t!334404 prefix!494)) lt!1435624)))

(declare-fun b!4035575 () Bool)

(assert (=> b!4035575 (= e!2504072 0)))

(declare-fun b!4035576 () Bool)

(assert (=> b!4035576 (= e!2504072 (+ 1 (size!32302 (t!334404 (t!334404 prefix!494)))))))

(assert (= (and d!1195801 c!697013) b!4035575))

(assert (= (and d!1195801 (not c!697013)) b!4035576))

(declare-fun m!4629617 () Bool)

(assert (=> b!4035576 m!4629617))

(assert (=> b!4034714 d!1195801))

(assert (=> b!4034585 d!1195269))

(assert (=> b!4034585 d!1195543))

(declare-fun b!4035579 () Bool)

(declare-fun res!1643322 () Bool)

(declare-fun e!2504073 () Bool)

(assert (=> b!4035579 (=> (not res!1643322) (not e!2504073))))

(declare-fun lt!1435625 () List!43341)

(assert (=> b!4035579 (= res!1643322 (= (size!32302 lt!1435625) (+ (size!32302 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))) (size!32302 (_2!24283 (get!14180 lt!1435112))))))))

(declare-fun b!4035580 () Bool)

(assert (=> b!4035580 (= e!2504073 (or (not (= (_2!24283 (get!14180 lt!1435112)) Nil!43217)) (= lt!1435625 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112)))))))))

(declare-fun b!4035578 () Bool)

(declare-fun e!2504074 () List!43341)

(assert (=> b!4035578 (= e!2504074 (Cons!43217 (h!48637 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))) (++!11318 (t!334404 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))) (_2!24283 (get!14180 lt!1435112)))))))

(declare-fun d!1195803 () Bool)

(assert (=> d!1195803 e!2504073))

(declare-fun res!1643323 () Bool)

(assert (=> d!1195803 (=> (not res!1643323) (not e!2504073))))

(assert (=> d!1195803 (= res!1643323 (= (content!6566 lt!1435625) ((_ map or) (content!6566 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))) (content!6566 (_2!24283 (get!14180 lt!1435112))))))))

(assert (=> d!1195803 (= lt!1435625 e!2504074)))

(declare-fun c!697014 () Bool)

(assert (=> d!1195803 (= c!697014 ((_ is Nil!43217) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))))))

(assert (=> d!1195803 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112)))) (_2!24283 (get!14180 lt!1435112))) lt!1435625)))

(declare-fun b!4035577 () Bool)

(assert (=> b!4035577 (= e!2504074 (_2!24283 (get!14180 lt!1435112)))))

(assert (= (and d!1195803 c!697014) b!4035577))

(assert (= (and d!1195803 (not c!697014)) b!4035578))

(assert (= (and d!1195803 res!1643323) b!4035579))

(assert (= (and b!4035579 res!1643322) b!4035580))

(declare-fun m!4629619 () Bool)

(assert (=> b!4035579 m!4629619))

(assert (=> b!4035579 m!4627777))

(declare-fun m!4629621 () Bool)

(assert (=> b!4035579 m!4629621))

(assert (=> b!4035579 m!4627801))

(declare-fun m!4629623 () Bool)

(assert (=> b!4035578 m!4629623))

(declare-fun m!4629625 () Bool)

(assert (=> d!1195803 m!4629625))

(assert (=> d!1195803 m!4627777))

(declare-fun m!4629627 () Bool)

(assert (=> d!1195803 m!4629627))

(declare-fun m!4629629 () Bool)

(assert (=> d!1195803 m!4629629))

(assert (=> b!4034308 d!1195803))

(assert (=> b!4034308 d!1195443))

(assert (=> b!4034308 d!1195447))

(assert (=> b!4034308 d!1195459))

(declare-fun d!1195805 () Bool)

(declare-fun lt!1435642 () Int)

(assert (=> d!1195805 (>= lt!1435642 0)))

(declare-fun e!2504075 () Int)

(assert (=> d!1195805 (= lt!1435642 e!2504075)))

(declare-fun c!697015 () Bool)

(assert (=> d!1195805 (= c!697015 ((_ is Nil!43217) lt!1435127))))

(assert (=> d!1195805 (= (size!32302 lt!1435127) lt!1435642)))

(declare-fun b!4035581 () Bool)

(assert (=> b!4035581 (= e!2504075 0)))

(declare-fun b!4035582 () Bool)

(assert (=> b!4035582 (= e!2504075 (+ 1 (size!32302 (t!334404 lt!1435127))))))

(assert (= (and d!1195805 c!697015) b!4035581))

(assert (= (and d!1195805 (not c!697015)) b!4035582))

(declare-fun m!4629631 () Bool)

(assert (=> b!4035582 m!4629631))

(assert (=> b!4034352 d!1195805))

(assert (=> b!4034352 d!1195173))

(assert (=> b!4034352 d!1195063))

(declare-fun d!1195807 () Bool)

(declare-fun lt!1435643 () Int)

(assert (=> d!1195807 (>= lt!1435643 0)))

(declare-fun e!2504076 () Int)

(assert (=> d!1195807 (= lt!1435643 e!2504076)))

(declare-fun c!697016 () Bool)

(assert (=> d!1195807 (= c!697016 ((_ is Nil!43217) lt!1435157))))

(assert (=> d!1195807 (= (size!32302 lt!1435157) lt!1435643)))

(declare-fun b!4035583 () Bool)

(assert (=> b!4035583 (= e!2504076 0)))

(declare-fun b!4035584 () Bool)

(assert (=> b!4035584 (= e!2504076 (+ 1 (size!32302 (t!334404 lt!1435157))))))

(assert (= (and d!1195807 c!697016) b!4035583))

(assert (= (and d!1195807 (not c!697016)) b!4035584))

(declare-fun m!4629633 () Bool)

(assert (=> b!4035584 m!4629633))

(assert (=> b!4034443 d!1195807))

(assert (=> b!4034443 d!1195643))

(assert (=> b!4034443 d!1195063))

(declare-fun d!1195809 () Bool)

(assert (=> d!1195809 (= (isDefined!7098 lt!1435112) (not (isEmpty!25792 lt!1435112)))))

(declare-fun bs!590529 () Bool)

(assert (= bs!590529 d!1195809))

(assert (=> bs!590529 m!4627805))

(assert (=> b!4034312 d!1195809))

(declare-fun d!1195811 () Bool)

(declare-fun charsToBigInt!1 (List!43342) Int)

(assert (=> d!1195811 (= (inv!17 (value!217740 token!484)) (= (charsToBigInt!1 (text!50470 (value!217740 token!484))) (value!217732 (value!217740 token!484))))))

(declare-fun bs!590531 () Bool)

(assert (= bs!590531 d!1195811))

(declare-fun m!4629639 () Bool)

(assert (=> bs!590531 m!4629639))

(assert (=> b!4034623 d!1195811))

(declare-fun d!1195813 () Bool)

(declare-fun c!697017 () Bool)

(assert (=> d!1195813 (= c!697017 ((_ is Node!13127) (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020)))))))))

(declare-fun e!2504077 () Bool)

(assert (=> d!1195813 (= (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020)))))) e!2504077)))

(declare-fun b!4035585 () Bool)

(assert (=> b!4035585 (= e!2504077 (inv!57744 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020)))))))))

(declare-fun b!4035586 () Bool)

(declare-fun e!2504078 () Bool)

(assert (=> b!4035586 (= e!2504077 e!2504078)))

(declare-fun res!1643324 () Bool)

(assert (=> b!4035586 (= res!1643324 (not ((_ is Leaf!20292) (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020))))))))))

(assert (=> b!4035586 (=> res!1643324 e!2504078)))

(declare-fun b!4035587 () Bool)

(assert (=> b!4035587 (= e!2504078 (inv!57745 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020)))))))))

(assert (= (and d!1195813 c!697017) b!4035585))

(assert (= (and d!1195813 (not c!697017)) b!4035586))

(assert (= (and b!4035586 (not res!1643324)) b!4035587))

(declare-fun m!4629653 () Bool)

(assert (=> b!4035585 m!4629653))

(declare-fun m!4629655 () Bool)

(assert (=> b!4035587 m!4629655))

(assert (=> b!4034722 d!1195813))

(assert (=> b!4034743 d!1195063))

(assert (=> b!4034743 d!1195081))

(declare-fun d!1195817 () Bool)

(assert (=> d!1195817 (= (isDefined!7098 lt!1435131) (not (isEmpty!25792 lt!1435131)))))

(declare-fun bs!590532 () Bool)

(assert (= bs!590532 d!1195817))

(assert (=> bs!590532 m!4627893))

(assert (=> b!4034360 d!1195817))

(declare-fun b!4035590 () Bool)

(declare-fun e!2504081 () Bool)

(declare-fun e!2504082 () Bool)

(assert (=> b!4035590 (= e!2504081 e!2504082)))

(declare-fun res!1643327 () Bool)

(assert (=> b!4035590 (=> (not res!1643327) (not e!2504082))))

(assert (=> b!4035590 (= res!1643327 (not ((_ is Nil!43217) (++!11318 prefix!494 suffix!1299))))))

(declare-fun b!4035591 () Bool)

(declare-fun res!1643330 () Bool)

(assert (=> b!4035591 (=> (not res!1643330) (not e!2504082))))

(assert (=> b!4035591 (= res!1643330 (= (head!8547 prefix!494) (head!8547 (++!11318 prefix!494 suffix!1299))))))

(declare-fun d!1195819 () Bool)

(declare-fun e!2504083 () Bool)

(assert (=> d!1195819 e!2504083))

(declare-fun res!1643329 () Bool)

(assert (=> d!1195819 (=> res!1643329 e!2504083)))

(declare-fun lt!1435653 () Bool)

(assert (=> d!1195819 (= res!1643329 (not lt!1435653))))

(assert (=> d!1195819 (= lt!1435653 e!2504081)))

(declare-fun res!1643328 () Bool)

(assert (=> d!1195819 (=> res!1643328 e!2504081)))

(assert (=> d!1195819 (= res!1643328 ((_ is Nil!43217) prefix!494))))

(assert (=> d!1195819 (= (isPrefix!4003 prefix!494 (++!11318 prefix!494 suffix!1299)) lt!1435653)))

(declare-fun b!4035592 () Bool)

(assert (=> b!4035592 (= e!2504082 (isPrefix!4003 (tail!6279 prefix!494) (tail!6279 (++!11318 prefix!494 suffix!1299))))))

(declare-fun b!4035593 () Bool)

(assert (=> b!4035593 (= e!2504083 (>= (size!32302 (++!11318 prefix!494 suffix!1299)) (size!32302 prefix!494)))))

(assert (= (and d!1195819 (not res!1643328)) b!4035590))

(assert (= (and b!4035590 res!1643327) b!4035591))

(assert (= (and b!4035591 res!1643330) b!4035592))

(assert (= (and d!1195819 (not res!1643329)) b!4035593))

(assert (=> b!4035591 m!4628187))

(assert (=> b!4035591 m!4627469))

(assert (=> b!4035591 m!4629175))

(assert (=> b!4035592 m!4628189))

(assert (=> b!4035592 m!4627469))

(assert (=> b!4035592 m!4629177))

(assert (=> b!4035592 m!4628189))

(assert (=> b!4035592 m!4629177))

(declare-fun m!4629661 () Bool)

(assert (=> b!4035592 m!4629661))

(assert (=> b!4035593 m!4627469))

(assert (=> b!4035593 m!4629181))

(assert (=> b!4035593 m!4627509))

(assert (=> d!1195121 d!1195819))

(assert (=> d!1195121 d!1195003))

(declare-fun d!1195829 () Bool)

(assert (=> d!1195829 (isPrefix!4003 prefix!494 (++!11318 prefix!494 suffix!1299))))

(assert (=> d!1195829 true))

(declare-fun _$46!1735 () Unit!62397)

(assert (=> d!1195829 (= (choose!24430 prefix!494 suffix!1299) _$46!1735)))

(declare-fun bs!590533 () Bool)

(assert (= bs!590533 d!1195829))

(assert (=> bs!590533 m!4627469))

(assert (=> bs!590533 m!4627469))

(assert (=> bs!590533 m!4628201))

(assert (=> d!1195121 d!1195829))

(declare-fun b!4035607 () Bool)

(declare-fun res!1643338 () Bool)

(declare-fun e!2504089 () Bool)

(assert (=> b!4035607 (=> (not res!1643338) (not e!2504089))))

(declare-fun lt!1435660 () List!43341)

(assert (=> b!4035607 (= res!1643338 (= (size!32302 lt!1435660) (+ (size!32302 (t!334404 lt!1435019)) (size!32302 (_2!24283 (v!39723 lt!1435020))))))))

(declare-fun b!4035608 () Bool)

(assert (=> b!4035608 (= e!2504089 (or (not (= (_2!24283 (v!39723 lt!1435020)) Nil!43217)) (= lt!1435660 (t!334404 lt!1435019))))))

(declare-fun b!4035606 () Bool)

(declare-fun e!2504090 () List!43341)

(assert (=> b!4035606 (= e!2504090 (Cons!43217 (h!48637 (t!334404 lt!1435019)) (++!11318 (t!334404 (t!334404 lt!1435019)) (_2!24283 (v!39723 lt!1435020)))))))

(declare-fun d!1195833 () Bool)

(assert (=> d!1195833 e!2504089))

(declare-fun res!1643339 () Bool)

(assert (=> d!1195833 (=> (not res!1643339) (not e!2504089))))

(assert (=> d!1195833 (= res!1643339 (= (content!6566 lt!1435660) ((_ map or) (content!6566 (t!334404 lt!1435019)) (content!6566 (_2!24283 (v!39723 lt!1435020))))))))

(assert (=> d!1195833 (= lt!1435660 e!2504090)))

(declare-fun c!697020 () Bool)

(assert (=> d!1195833 (= c!697020 ((_ is Nil!43217) (t!334404 lt!1435019)))))

(assert (=> d!1195833 (= (++!11318 (t!334404 lt!1435019) (_2!24283 (v!39723 lt!1435020))) lt!1435660)))

(declare-fun b!4035605 () Bool)

(assert (=> b!4035605 (= e!2504090 (_2!24283 (v!39723 lt!1435020)))))

(assert (= (and d!1195833 c!697020) b!4035605))

(assert (= (and d!1195833 (not c!697020)) b!4035606))

(assert (= (and d!1195833 res!1643339) b!4035607))

(assert (= (and b!4035607 res!1643338) b!4035608))

(declare-fun m!4629665 () Bool)

(assert (=> b!4035607 m!4629665))

(assert (=> b!4035607 m!4628557))

(assert (=> b!4035607 m!4628361))

(declare-fun m!4629667 () Bool)

(assert (=> b!4035606 m!4629667))

(declare-fun m!4629669 () Bool)

(assert (=> d!1195833 m!4629669))

(assert (=> d!1195833 m!4628781))

(assert (=> d!1195833 m!4628369))

(assert (=> b!4034734 d!1195833))

(assert (=> bm!287015 d!1195589))

(declare-fun d!1195835 () Bool)

(declare-fun lt!1435661 () Int)

(assert (=> d!1195835 (>= lt!1435661 0)))

(declare-fun e!2504091 () Int)

(assert (=> d!1195835 (= lt!1435661 e!2504091)))

(declare-fun c!697021 () Bool)

(assert (=> d!1195835 (= c!697021 ((_ is Nil!43217) lt!1435255))))

(assert (=> d!1195835 (= (size!32302 lt!1435255) lt!1435661)))

(declare-fun b!4035609 () Bool)

(assert (=> b!4035609 (= e!2504091 0)))

(declare-fun b!4035610 () Bool)

(assert (=> b!4035610 (= e!2504091 (+ 1 (size!32302 (t!334404 lt!1435255))))))

(assert (= (and d!1195835 c!697021) b!4035609))

(assert (= (and d!1195835 (not c!697021)) b!4035610))

(declare-fun m!4629671 () Bool)

(assert (=> b!4035610 m!4629671))

(assert (=> b!4034731 d!1195835))

(assert (=> b!4034731 d!1195171))

(declare-fun d!1195837 () Bool)

(declare-fun lt!1435662 () Int)

(assert (=> d!1195837 (>= lt!1435662 0)))

(declare-fun e!2504092 () Int)

(assert (=> d!1195837 (= lt!1435662 e!2504092)))

(declare-fun c!697022 () Bool)

(assert (=> d!1195837 (= c!697022 ((_ is Nil!43217) newSuffixResult!27))))

(assert (=> d!1195837 (= (size!32302 newSuffixResult!27) lt!1435662)))

(declare-fun b!4035611 () Bool)

(assert (=> b!4035611 (= e!2504092 0)))

(declare-fun b!4035612 () Bool)

(assert (=> b!4035612 (= e!2504092 (+ 1 (size!32302 (t!334404 newSuffixResult!27))))))

(assert (= (and d!1195837 c!697022) b!4035611))

(assert (= (and d!1195837 (not c!697022)) b!4035612))

(declare-fun m!4629673 () Bool)

(assert (=> b!4035612 m!4629673))

(assert (=> b!4034731 d!1195837))

(declare-fun d!1195839 () Bool)

(assert (=> d!1195839 (= lt!1435030 suffixResult!105)))

(assert (=> d!1195839 true))

(declare-fun _$63!1093 () Unit!62397)

(assert (=> d!1195839 (= (choose!24429 lt!1435037 lt!1435030 lt!1435037 suffixResult!105 lt!1435003) _$63!1093)))

(assert (=> d!1195089 d!1195839))

(assert (=> d!1195089 d!1195113))

(declare-fun b!4035615 () Bool)

(declare-fun res!1643340 () Bool)

(declare-fun e!2504093 () Bool)

(assert (=> b!4035615 (=> (not res!1643340) (not e!2504093))))

(declare-fun lt!1435663 () List!43341)

(assert (=> b!4035615 (= res!1643340 (= (size!32302 lt!1435663) (+ (size!32302 (t!334404 prefix!494)) (size!32302 newSuffix!27))))))

(declare-fun b!4035616 () Bool)

(assert (=> b!4035616 (= e!2504093 (or (not (= newSuffix!27 Nil!43217)) (= lt!1435663 (t!334404 prefix!494))))))

(declare-fun b!4035614 () Bool)

(declare-fun e!2504094 () List!43341)

(assert (=> b!4035614 (= e!2504094 (Cons!43217 (h!48637 (t!334404 prefix!494)) (++!11318 (t!334404 (t!334404 prefix!494)) newSuffix!27)))))

(declare-fun d!1195841 () Bool)

(assert (=> d!1195841 e!2504093))

(declare-fun res!1643341 () Bool)

(assert (=> d!1195841 (=> (not res!1643341) (not e!2504093))))

(assert (=> d!1195841 (= res!1643341 (= (content!6566 lt!1435663) ((_ map or) (content!6566 (t!334404 prefix!494)) (content!6566 newSuffix!27))))))

(assert (=> d!1195841 (= lt!1435663 e!2504094)))

(declare-fun c!697023 () Bool)

(assert (=> d!1195841 (= c!697023 ((_ is Nil!43217) (t!334404 prefix!494)))))

(assert (=> d!1195841 (= (++!11318 (t!334404 prefix!494) newSuffix!27) lt!1435663)))

(declare-fun b!4035613 () Bool)

(assert (=> b!4035613 (= e!2504094 newSuffix!27)))

(assert (= (and d!1195841 c!697023) b!4035613))

(assert (= (and d!1195841 (not c!697023)) b!4035614))

(assert (= (and d!1195841 res!1643341) b!4035615))

(assert (= (and b!4035615 res!1643340) b!4035616))

(declare-fun m!4629675 () Bool)

(assert (=> b!4035615 m!4629675))

(assert (=> b!4035615 m!4628305))

(assert (=> b!4035615 m!4627535))

(declare-fun m!4629677 () Bool)

(assert (=> b!4035614 m!4629677))

(declare-fun m!4629679 () Bool)

(assert (=> d!1195841 m!4629679))

(assert (=> d!1195841 m!4628833))

(assert (=> d!1195841 m!4628345))

(assert (=> b!4034726 d!1195841))

(declare-fun d!1195843 () Bool)

(declare-fun lt!1435664 () Int)

(assert (=> d!1195843 (>= lt!1435664 0)))

(declare-fun e!2504095 () Int)

(assert (=> d!1195843 (= lt!1435664 e!2504095)))

(declare-fun c!697024 () Bool)

(assert (=> d!1195843 (= c!697024 ((_ is Nil!43217) lt!1435153))))

(assert (=> d!1195843 (= (size!32302 lt!1435153) lt!1435664)))

(declare-fun b!4035617 () Bool)

(assert (=> b!4035617 (= e!2504095 0)))

(declare-fun b!4035618 () Bool)

(assert (=> b!4035618 (= e!2504095 (+ 1 (size!32302 (t!334404 lt!1435153))))))

(assert (= (and d!1195843 c!697024) b!4035617))

(assert (= (and d!1195843 (not c!697024)) b!4035618))

(declare-fun m!4629681 () Bool)

(assert (=> b!4035618 m!4629681))

(assert (=> b!4034435 d!1195843))

(assert (=> b!4034435 d!1195171))

(declare-fun d!1195845 () Bool)

(declare-fun lt!1435665 () Int)

(assert (=> d!1195845 (>= lt!1435665 0)))

(declare-fun e!2504096 () Int)

(assert (=> d!1195845 (= lt!1435665 e!2504096)))

(declare-fun c!697025 () Bool)

(assert (=> d!1195845 (= c!697025 ((_ is Nil!43217) lt!1435030))))

(assert (=> d!1195845 (= (size!32302 lt!1435030) lt!1435665)))

(declare-fun b!4035619 () Bool)

(assert (=> b!4035619 (= e!2504096 0)))

(declare-fun b!4035620 () Bool)

(assert (=> b!4035620 (= e!2504096 (+ 1 (size!32302 (t!334404 lt!1435030))))))

(assert (= (and d!1195845 c!697025) b!4035619))

(assert (= (and d!1195845 (not c!697025)) b!4035620))

(declare-fun m!4629687 () Bool)

(assert (=> b!4035620 m!4629687))

(assert (=> b!4034435 d!1195845))

(declare-fun d!1195847 () Bool)

(declare-fun c!697026 () Bool)

(assert (=> d!1195847 (= c!697026 ((_ is Nil!43217) lt!1435232))))

(declare-fun e!2504097 () (InoxSet C!23828))

(assert (=> d!1195847 (= (content!6566 lt!1435232) e!2504097)))

(declare-fun b!4035621 () Bool)

(assert (=> b!4035621 (= e!2504097 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035622 () Bool)

(assert (=> b!4035622 (= e!2504097 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435232) true) (content!6566 (t!334404 lt!1435232))))))

(assert (= (and d!1195847 c!697026) b!4035621))

(assert (= (and d!1195847 (not c!697026)) b!4035622))

(declare-fun m!4629693 () Bool)

(assert (=> b!4035622 m!4629693))

(declare-fun m!4629697 () Bool)

(assert (=> b!4035622 m!4629697))

(assert (=> d!1195155 d!1195847))

(assert (=> d!1195155 d!1195237))

(declare-fun d!1195849 () Bool)

(declare-fun c!697027 () Bool)

(assert (=> d!1195849 (= c!697027 ((_ is Nil!43217) suffixResult!105))))

(declare-fun e!2504098 () (InoxSet C!23828))

(assert (=> d!1195849 (= (content!6566 suffixResult!105) e!2504098)))

(declare-fun b!4035623 () Bool)

(assert (=> b!4035623 (= e!2504098 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035624 () Bool)

(assert (=> b!4035624 (= e!2504098 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 suffixResult!105) true) (content!6566 (t!334404 suffixResult!105))))))

(assert (= (and d!1195849 c!697027) b!4035623))

(assert (= (and d!1195849 (not c!697027)) b!4035624))

(declare-fun m!4629703 () Bool)

(assert (=> b!4035624 m!4629703))

(declare-fun m!4629707 () Bool)

(assert (=> b!4035624 m!4629707))

(assert (=> d!1195155 d!1195849))

(assert (=> b!4034651 d!1195255))

(assert (=> d!1195151 d!1195149))

(declare-fun d!1195851 () Bool)

(assert (=> d!1195851 (isPrefix!4003 lt!1435003 lt!1435003)))

(assert (=> d!1195851 true))

(declare-fun _$45!1970 () Unit!62397)

(assert (=> d!1195851 (= (choose!24436 lt!1435003 lt!1435003) _$45!1970)))

(declare-fun bs!590534 () Bool)

(assert (= bs!590534 d!1195851))

(assert (=> bs!590534 m!4627541))

(assert (=> d!1195151 d!1195851))

(declare-fun d!1195853 () Bool)

(assert (=> d!1195853 (= (inv!57735 (tag!7776 (h!48639 (t!334406 rules!2999)))) (= (mod (str.len (value!217739 (tag!7776 (h!48639 (t!334406 rules!2999))))) 2) 0))))

(assert (=> b!4034773 d!1195853))

(declare-fun d!1195857 () Bool)

(declare-fun res!1643342 () Bool)

(declare-fun e!2504100 () Bool)

(assert (=> d!1195857 (=> (not res!1643342) (not e!2504100))))

(assert (=> d!1195857 (= res!1643342 (semiInverseModEq!2952 (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999))))))))

(assert (=> d!1195857 (= (inv!57738 (transformation!6916 (h!48639 (t!334406 rules!2999)))) e!2504100)))

(declare-fun b!4035627 () Bool)

(assert (=> b!4035627 (= e!2504100 (equivClasses!2851 (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999))))))))

(assert (= (and d!1195857 res!1643342) b!4035627))

(declare-fun m!4629735 () Bool)

(assert (=> d!1195857 m!4629735))

(declare-fun m!4629737 () Bool)

(assert (=> b!4035627 m!4629737))

(assert (=> b!4034773 d!1195857))

(assert (=> b!4034606 d!1195123))

(declare-fun d!1195861 () Bool)

(declare-fun lt!1435667 () Int)

(assert (=> d!1195861 (>= lt!1435667 0)))

(declare-fun e!2504101 () Int)

(assert (=> d!1195861 (= lt!1435667 e!2504101)))

(declare-fun c!697029 () Bool)

(assert (=> d!1195861 (= c!697029 ((_ is Nil!43217) lt!1435002))))

(assert (=> d!1195861 (= (size!32302 lt!1435002) lt!1435667)))

(declare-fun b!4035628 () Bool)

(assert (=> b!4035628 (= e!2504101 0)))

(declare-fun b!4035629 () Bool)

(assert (=> b!4035629 (= e!2504101 (+ 1 (size!32302 (t!334404 lt!1435002))))))

(assert (= (and d!1195861 c!697029) b!4035628))

(assert (= (and d!1195861 (not c!697029)) b!4035629))

(declare-fun m!4629739 () Bool)

(assert (=> b!4035629 m!4629739))

(assert (=> b!4034583 d!1195861))

(assert (=> b!4034583 d!1195171))

(assert (=> b!4034572 d!1195259))

(declare-fun d!1195863 () Bool)

(declare-fun lt!1435668 () Int)

(assert (=> d!1195863 (>= lt!1435668 0)))

(declare-fun e!2504102 () Int)

(assert (=> d!1195863 (= lt!1435668 e!2504102)))

(declare-fun c!697030 () Bool)

(assert (=> d!1195863 (= c!697030 ((_ is Nil!43217) (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210)))))))

(assert (=> d!1195863 (= (size!32302 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210)))) lt!1435668)))

(declare-fun b!4035630 () Bool)

(assert (=> b!4035630 (= e!2504102 0)))

(declare-fun b!4035631 () Bool)

(assert (=> b!4035631 (= e!2504102 (+ 1 (size!32302 (t!334404 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435210)))))))))

(assert (= (and d!1195863 c!697030) b!4035630))

(assert (= (and d!1195863 (not c!697030)) b!4035631))

(declare-fun m!4629741 () Bool)

(assert (=> b!4035631 m!4629741))

(assert (=> b!4034572 d!1195863))

(assert (=> b!4034700 d!1195403))

(assert (=> b!4034700 d!1195405))

(assert (=> b!4034663 d!1195549))

(declare-fun d!1195865 () Bool)

(declare-fun c!697031 () Bool)

(assert (=> d!1195865 (= c!697031 ((_ is Nil!43217) lt!1435153))))

(declare-fun e!2504103 () (InoxSet C!23828))

(assert (=> d!1195865 (= (content!6566 lt!1435153) e!2504103)))

(declare-fun b!4035632 () Bool)

(assert (=> b!4035632 (= e!2504103 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035633 () Bool)

(assert (=> b!4035633 (= e!2504103 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435153) true) (content!6566 (t!334404 lt!1435153))))))

(assert (= (and d!1195865 c!697031) b!4035632))

(assert (= (and d!1195865 (not c!697031)) b!4035633))

(declare-fun m!4629743 () Bool)

(assert (=> b!4035633 m!4629743))

(declare-fun m!4629745 () Bool)

(assert (=> b!4035633 m!4629745))

(assert (=> d!1195041 d!1195865))

(assert (=> d!1195041 d!1195237))

(declare-fun d!1195867 () Bool)

(declare-fun c!697032 () Bool)

(assert (=> d!1195867 (= c!697032 ((_ is Nil!43217) lt!1435030))))

(declare-fun e!2504104 () (InoxSet C!23828))

(assert (=> d!1195867 (= (content!6566 lt!1435030) e!2504104)))

(declare-fun b!4035634 () Bool)

(assert (=> b!4035634 (= e!2504104 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035635 () Bool)

(assert (=> b!4035635 (= e!2504104 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435030) true) (content!6566 (t!334404 lt!1435030))))))

(assert (= (and d!1195867 c!697032) b!4035634))

(assert (= (and d!1195867 (not c!697032)) b!4035635))

(declare-fun m!4629747 () Bool)

(assert (=> b!4035635 m!4629747))

(declare-fun m!4629749 () Bool)

(assert (=> b!4035635 m!4629749))

(assert (=> d!1195041 d!1195867))

(declare-fun d!1195869 () Bool)

(declare-fun charsToBigInt!0 (List!43342 Int) Int)

(assert (=> d!1195869 (= (inv!15 (value!217740 token!484)) (= (charsToBigInt!0 (text!50471 (value!217740 token!484)) 0) (value!217735 (value!217740 token!484))))))

(declare-fun bs!590539 () Bool)

(assert (= bs!590539 d!1195869))

(declare-fun m!4629765 () Bool)

(assert (=> bs!590539 m!4629765))

(assert (=> b!4034624 d!1195869))

(assert (=> d!1195189 d!1195193))

(declare-fun d!1195881 () Bool)

(assert (=> d!1195881 (ruleValid!2846 thiss!21717 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))

(assert (=> d!1195881 true))

(declare-fun _$65!1484 () Unit!62397)

(assert (=> d!1195881 (= (choose!24437 thiss!21717 (rule!9982 (_1!24283 (v!39723 lt!1435020))) rules!2999) _$65!1484)))

(declare-fun bs!590540 () Bool)

(assert (= bs!590540 d!1195881))

(assert (=> bs!590540 m!4627457))

(assert (=> d!1195189 d!1195881))

(assert (=> d!1195189 d!1195181))

(declare-fun b!4035646 () Bool)

(declare-fun e!2504117 () Bool)

(declare-fun lt!1435670 () Bool)

(assert (=> b!4035646 (= e!2504117 (not lt!1435670))))

(declare-fun b!4035647 () Bool)

(declare-fun e!2504115 () Bool)

(declare-fun e!2504112 () Bool)

(assert (=> b!4035647 (= e!2504115 e!2504112)))

(declare-fun res!1643350 () Bool)

(assert (=> b!4035647 (=> (not res!1643350) (not e!2504112))))

(assert (=> b!4035647 (= res!1643350 (not lt!1435670))))

(declare-fun b!4035648 () Bool)

(declare-fun res!1643351 () Bool)

(assert (=> b!4035648 (=> res!1643351 e!2504115)))

(declare-fun e!2504111 () Bool)

(assert (=> b!4035648 (= res!1643351 e!2504111)))

(declare-fun res!1643352 () Bool)

(assert (=> b!4035648 (=> (not res!1643352) (not e!2504111))))

(assert (=> b!4035648 (= res!1643352 lt!1435670)))

(declare-fun b!4035649 () Bool)

(declare-fun res!1643353 () Bool)

(declare-fun e!2504116 () Bool)

(assert (=> b!4035649 (=> res!1643353 e!2504116)))

(assert (=> b!4035649 (= res!1643353 (not (isEmpty!25793 (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))))))))

(declare-fun b!4035650 () Bool)

(assert (=> b!4035650 (= e!2504111 (= (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))) (c!696701 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))))))

(declare-fun b!4035651 () Bool)

(declare-fun e!2504113 () Bool)

(assert (=> b!4035651 (= e!2504113 e!2504117)))

(declare-fun c!697038 () Bool)

(assert (=> b!4035651 (= c!697038 ((_ is EmptyLang!11821) (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))))))

(declare-fun b!4035652 () Bool)

(declare-fun call!287113 () Bool)

(assert (=> b!4035652 (= e!2504113 (= lt!1435670 call!287113))))

(declare-fun b!4035653 () Bool)

(declare-fun res!1643349 () Bool)

(assert (=> b!4035653 (=> (not res!1643349) (not e!2504111))))

(assert (=> b!4035653 (= res!1643349 (isEmpty!25793 (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131)))))))))

(declare-fun b!4035654 () Bool)

(declare-fun res!1643347 () Bool)

(assert (=> b!4035654 (=> (not res!1643347) (not e!2504111))))

(assert (=> b!4035654 (= res!1643347 (not call!287113))))

(declare-fun b!4035655 () Bool)

(declare-fun e!2504114 () Bool)

(assert (=> b!4035655 (= e!2504114 (nullable!4144 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))))))

(declare-fun d!1195883 () Bool)

(assert (=> d!1195883 e!2504113))

(declare-fun c!697036 () Bool)

(assert (=> d!1195883 (= c!697036 ((_ is EmptyExpr!11821) (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))))))

(assert (=> d!1195883 (= lt!1435670 e!2504114)))

(declare-fun c!697037 () Bool)

(assert (=> d!1195883 (= c!697037 (isEmpty!25793 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))))))

(assert (=> d!1195883 (validRegex!5344 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))))

(assert (=> d!1195883 (= (matchR!5774 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))) lt!1435670)))

(declare-fun b!4035656 () Bool)

(assert (=> b!4035656 (= e!2504116 (not (= (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))) (c!696701 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131))))))))))

(declare-fun bm!287108 () Bool)

(assert (=> bm!287108 (= call!287113 (isEmpty!25793 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131))))))))

(declare-fun b!4035657 () Bool)

(assert (=> b!4035657 (= e!2504112 e!2504116)))

(declare-fun res!1643348 () Bool)

(assert (=> b!4035657 (=> res!1643348 e!2504116)))

(assert (=> b!4035657 (= res!1643348 call!287113)))

(declare-fun b!4035658 () Bool)

(declare-fun res!1643354 () Bool)

(assert (=> b!4035658 (=> res!1643354 e!2504115)))

(assert (=> b!4035658 (= res!1643354 (not ((_ is ElementMatch!11821) (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))))))

(assert (=> b!4035658 (= e!2504117 e!2504115)))

(declare-fun b!4035659 () Bool)

(assert (=> b!4035659 (= e!2504114 (matchR!5774 (derivativeStep!3549 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))) (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131)))))) (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435131)))))))))

(assert (= (and d!1195883 c!697037) b!4035655))

(assert (= (and d!1195883 (not c!697037)) b!4035659))

(assert (= (and d!1195883 c!697036) b!4035652))

(assert (= (and d!1195883 (not c!697036)) b!4035651))

(assert (= (and b!4035651 c!697038) b!4035646))

(assert (= (and b!4035651 (not c!697038)) b!4035658))

(assert (= (and b!4035658 (not res!1643354)) b!4035648))

(assert (= (and b!4035648 res!1643352) b!4035654))

(assert (= (and b!4035654 res!1643347) b!4035653))

(assert (= (and b!4035653 res!1643349) b!4035650))

(assert (= (and b!4035648 (not res!1643351)) b!4035647))

(assert (= (and b!4035647 res!1643350) b!4035657))

(assert (= (and b!4035657 (not res!1643348)) b!4035649))

(assert (= (and b!4035649 (not res!1643353)) b!4035656))

(assert (= (or b!4035652 b!4035654 b!4035657) bm!287108))

(assert (=> b!4035653 m!4627861))

(declare-fun m!4629779 () Bool)

(assert (=> b!4035653 m!4629779))

(assert (=> b!4035653 m!4629779))

(declare-fun m!4629781 () Bool)

(assert (=> b!4035653 m!4629781))

(assert (=> b!4035649 m!4627861))

(assert (=> b!4035649 m!4629779))

(assert (=> b!4035649 m!4629779))

(assert (=> b!4035649 m!4629781))

(assert (=> d!1195883 m!4627861))

(declare-fun m!4629785 () Bool)

(assert (=> d!1195883 m!4629785))

(declare-fun m!4629787 () Bool)

(assert (=> d!1195883 m!4629787))

(assert (=> b!4035656 m!4627861))

(declare-fun m!4629789 () Bool)

(assert (=> b!4035656 m!4629789))

(assert (=> b!4035650 m!4627861))

(assert (=> b!4035650 m!4629789))

(declare-fun m!4629793 () Bool)

(assert (=> b!4035655 m!4629793))

(assert (=> b!4035659 m!4627861))

(assert (=> b!4035659 m!4629789))

(assert (=> b!4035659 m!4629789))

(declare-fun m!4629795 () Bool)

(assert (=> b!4035659 m!4629795))

(assert (=> b!4035659 m!4627861))

(assert (=> b!4035659 m!4629779))

(assert (=> b!4035659 m!4629795))

(assert (=> b!4035659 m!4629779))

(declare-fun m!4629799 () Bool)

(assert (=> b!4035659 m!4629799))

(assert (=> bm!287108 m!4627861))

(assert (=> bm!287108 m!4629785))

(assert (=> b!4034364 d!1195883))

(assert (=> b!4034364 d!1195473))

(assert (=> b!4034364 d!1195465))

(assert (=> b!4034364 d!1195467))

(declare-fun b!4035666 () Bool)

(declare-fun e!2504122 () Bool)

(declare-fun e!2504123 () Bool)

(assert (=> b!4035666 (= e!2504122 e!2504123)))

(declare-fun res!1643355 () Bool)

(assert (=> b!4035666 (=> (not res!1643355) (not e!2504123))))

(assert (=> b!4035666 (= res!1643355 (not ((_ is Nil!43217) (++!11318 prefix!494 newSuffix!27))))))

(declare-fun b!4035667 () Bool)

(declare-fun res!1643358 () Bool)

(assert (=> b!4035667 (=> (not res!1643358) (not e!2504123))))

(assert (=> b!4035667 (= res!1643358 (= (head!8547 lt!1435037) (head!8547 (++!11318 prefix!494 newSuffix!27))))))

(declare-fun d!1195893 () Bool)

(declare-fun e!2504124 () Bool)

(assert (=> d!1195893 e!2504124))

(declare-fun res!1643357 () Bool)

(assert (=> d!1195893 (=> res!1643357 e!2504124)))

(declare-fun lt!1435674 () Bool)

(assert (=> d!1195893 (= res!1643357 (not lt!1435674))))

(assert (=> d!1195893 (= lt!1435674 e!2504122)))

(declare-fun res!1643356 () Bool)

(assert (=> d!1195893 (=> res!1643356 e!2504122)))

(assert (=> d!1195893 (= res!1643356 ((_ is Nil!43217) lt!1435037))))

(assert (=> d!1195893 (= (isPrefix!4003 lt!1435037 (++!11318 prefix!494 newSuffix!27)) lt!1435674)))

(declare-fun b!4035668 () Bool)

(assert (=> b!4035668 (= e!2504123 (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 (++!11318 prefix!494 newSuffix!27))))))

(declare-fun b!4035669 () Bool)

(assert (=> b!4035669 (= e!2504124 (>= (size!32302 (++!11318 prefix!494 newSuffix!27)) (size!32302 lt!1435037)))))

(assert (= (and d!1195893 (not res!1643356)) b!4035666))

(assert (= (and b!4035666 res!1643355) b!4035667))

(assert (= (and b!4035667 res!1643358) b!4035668))

(assert (= (and d!1195893 (not res!1643357)) b!4035669))

(assert (=> b!4035667 m!4627907))

(assert (=> b!4035667 m!4627527))

(declare-fun m!4629805 () Bool)

(assert (=> b!4035667 m!4629805))

(assert (=> b!4035668 m!4627911))

(assert (=> b!4035668 m!4627527))

(declare-fun m!4629807 () Bool)

(assert (=> b!4035668 m!4629807))

(assert (=> b!4035668 m!4627911))

(assert (=> b!4035668 m!4629807))

(declare-fun m!4629809 () Bool)

(assert (=> b!4035668 m!4629809))

(assert (=> b!4035669 m!4627527))

(declare-fun m!4629811 () Bool)

(assert (=> b!4035669 m!4629811))

(assert (=> b!4035669 m!4627507))

(assert (=> d!1195167 d!1195893))

(assert (=> d!1195167 d!1195195))

(declare-fun d!1195901 () Bool)

(assert (=> d!1195901 (isPrefix!4003 lt!1435037 (++!11318 prefix!494 newSuffix!27))))

(assert (=> d!1195901 true))

(declare-fun _$58!566 () Unit!62397)

(assert (=> d!1195901 (= (choose!24438 lt!1435037 prefix!494 newSuffix!27) _$58!566)))

(declare-fun bs!590542 () Bool)

(assert (= bs!590542 d!1195901))

(assert (=> bs!590542 m!4627527))

(assert (=> bs!590542 m!4627527))

(assert (=> bs!590542 m!4628295))

(assert (=> d!1195167 d!1195901))

(assert (=> d!1195167 d!1195137))

(declare-fun b!4035676 () Bool)

(declare-fun e!2504134 () Bool)

(declare-fun lt!1435677 () Bool)

(assert (=> b!4035676 (= e!2504134 (not lt!1435677))))

(declare-fun b!4035677 () Bool)

(declare-fun e!2504132 () Bool)

(declare-fun e!2504129 () Bool)

(assert (=> b!4035677 (= e!2504132 e!2504129)))

(declare-fun res!1643364 () Bool)

(assert (=> b!4035677 (=> (not res!1643364) (not e!2504129))))

(assert (=> b!4035677 (= res!1643364 (not lt!1435677))))

(declare-fun b!4035678 () Bool)

(declare-fun res!1643365 () Bool)

(assert (=> b!4035678 (=> res!1643365 e!2504132)))

(declare-fun e!2504128 () Bool)

(assert (=> b!4035678 (= res!1643365 e!2504128)))

(declare-fun res!1643366 () Bool)

(assert (=> b!4035678 (=> (not res!1643366) (not e!2504128))))

(assert (=> b!4035678 (= res!1643366 lt!1435677)))

(declare-fun b!4035679 () Bool)

(declare-fun res!1643367 () Bool)

(declare-fun e!2504133 () Bool)

(assert (=> b!4035679 (=> res!1643367 e!2504133)))

(assert (=> b!4035679 (= res!1643367 (not (isEmpty!25793 (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))))))))

(declare-fun b!4035680 () Bool)

(assert (=> b!4035680 (= e!2504128 (= (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))) (c!696701 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))))))

(declare-fun b!4035681 () Bool)

(declare-fun e!2504130 () Bool)

(assert (=> b!4035681 (= e!2504130 e!2504134)))

(declare-fun c!697046 () Bool)

(assert (=> b!4035681 (= c!697046 ((_ is EmptyLang!11821) (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))))))

(declare-fun b!4035682 () Bool)

(declare-fun call!287114 () Bool)

(assert (=> b!4035682 (= e!2504130 (= lt!1435677 call!287114))))

(declare-fun b!4035683 () Bool)

(declare-fun res!1643363 () Bool)

(assert (=> b!4035683 (=> (not res!1643363) (not e!2504128))))

(assert (=> b!4035683 (= res!1643363 (isEmpty!25793 (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112)))))))))

(declare-fun b!4035684 () Bool)

(declare-fun res!1643361 () Bool)

(assert (=> b!4035684 (=> (not res!1643361) (not e!2504128))))

(assert (=> b!4035684 (= res!1643361 (not call!287114))))

(declare-fun b!4035685 () Bool)

(declare-fun e!2504131 () Bool)

(assert (=> b!4035685 (= e!2504131 (nullable!4144 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))))))

(declare-fun d!1195903 () Bool)

(assert (=> d!1195903 e!2504130))

(declare-fun c!697044 () Bool)

(assert (=> d!1195903 (= c!697044 ((_ is EmptyExpr!11821) (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))))))

(assert (=> d!1195903 (= lt!1435677 e!2504131)))

(declare-fun c!697045 () Bool)

(assert (=> d!1195903 (= c!697045 (isEmpty!25793 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))))))

(assert (=> d!1195903 (validRegex!5344 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))))

(assert (=> d!1195903 (= (matchR!5774 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))) lt!1435677)))

(declare-fun b!4035686 () Bool)

(assert (=> b!4035686 (= e!2504133 (not (= (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))) (c!696701 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112))))))))))

(declare-fun bm!287109 () Bool)

(assert (=> bm!287109 (= call!287114 (isEmpty!25793 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112))))))))

(declare-fun b!4035687 () Bool)

(assert (=> b!4035687 (= e!2504129 e!2504133)))

(declare-fun res!1643362 () Bool)

(assert (=> b!4035687 (=> res!1643362 e!2504133)))

(assert (=> b!4035687 (= res!1643362 call!287114)))

(declare-fun b!4035689 () Bool)

(declare-fun res!1643368 () Bool)

(assert (=> b!4035689 (=> res!1643368 e!2504132)))

(assert (=> b!4035689 (= res!1643368 (not ((_ is ElementMatch!11821) (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))))))

(assert (=> b!4035689 (= e!2504134 e!2504132)))

(declare-fun b!4035691 () Bool)

(assert (=> b!4035691 (= e!2504131 (matchR!5774 (derivativeStep!3549 (regex!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))) (head!8547 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112)))))) (tail!6279 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435112)))))))))

(assert (= (and d!1195903 c!697045) b!4035685))

(assert (= (and d!1195903 (not c!697045)) b!4035691))

(assert (= (and d!1195903 c!697044) b!4035682))

(assert (= (and d!1195903 (not c!697044)) b!4035681))

(assert (= (and b!4035681 c!697046) b!4035676))

(assert (= (and b!4035681 (not c!697046)) b!4035689))

(assert (= (and b!4035689 (not res!1643368)) b!4035678))

(assert (= (and b!4035678 res!1643366) b!4035684))

(assert (= (and b!4035684 res!1643361) b!4035683))

(assert (= (and b!4035683 res!1643363) b!4035680))

(assert (= (and b!4035678 (not res!1643365)) b!4035677))

(assert (= (and b!4035677 res!1643364) b!4035687))

(assert (= (and b!4035687 (not res!1643362)) b!4035679))

(assert (= (and b!4035679 (not res!1643367)) b!4035686))

(assert (= (or b!4035682 b!4035684 b!4035687) bm!287109))

(assert (=> b!4035683 m!4627777))

(declare-fun m!4629829 () Bool)

(assert (=> b!4035683 m!4629829))

(assert (=> b!4035683 m!4629829))

(declare-fun m!4629831 () Bool)

(assert (=> b!4035683 m!4629831))

(assert (=> b!4035679 m!4627777))

(assert (=> b!4035679 m!4629829))

(assert (=> b!4035679 m!4629829))

(assert (=> b!4035679 m!4629831))

(assert (=> d!1195903 m!4627777))

(declare-fun m!4629835 () Bool)

(assert (=> d!1195903 m!4629835))

(declare-fun m!4629837 () Bool)

(assert (=> d!1195903 m!4629837))

(assert (=> b!4035686 m!4627777))

(declare-fun m!4629839 () Bool)

(assert (=> b!4035686 m!4629839))

(assert (=> b!4035680 m!4627777))

(assert (=> b!4035680 m!4629839))

(declare-fun m!4629841 () Bool)

(assert (=> b!4035685 m!4629841))

(assert (=> b!4035691 m!4627777))

(assert (=> b!4035691 m!4629839))

(assert (=> b!4035691 m!4629839))

(declare-fun m!4629843 () Bool)

(assert (=> b!4035691 m!4629843))

(assert (=> b!4035691 m!4627777))

(assert (=> b!4035691 m!4629829))

(assert (=> b!4035691 m!4629843))

(assert (=> b!4035691 m!4629829))

(declare-fun m!4629845 () Bool)

(assert (=> b!4035691 m!4629845))

(assert (=> bm!287109 m!4627777))

(assert (=> bm!287109 m!4629835))

(assert (=> b!4034316 d!1195903))

(assert (=> b!4034316 d!1195459))

(assert (=> b!4034316 d!1195443))

(assert (=> b!4034316 d!1195447))

(assert (=> b!4034641 d!1195431))

(assert (=> b!4034591 d!1195255))

(assert (=> b!4034591 d!1195173))

(declare-fun d!1195915 () Bool)

(declare-fun c!697052 () Bool)

(assert (=> d!1195915 (= c!697052 ((_ is Nil!43217) lt!1435255))))

(declare-fun e!2504147 () (InoxSet C!23828))

(assert (=> d!1195915 (= (content!6566 lt!1435255) e!2504147)))

(declare-fun b!4035712 () Bool)

(assert (=> b!4035712 (= e!2504147 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035713 () Bool)

(assert (=> b!4035713 (= e!2504147 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 lt!1435255) true) (content!6566 (t!334404 lt!1435255))))))

(assert (= (and d!1195915 c!697052) b!4035712))

(assert (= (and d!1195915 (not c!697052)) b!4035713))

(declare-fun m!4629847 () Bool)

(assert (=> b!4035713 m!4629847))

(declare-fun m!4629849 () Bool)

(assert (=> b!4035713 m!4629849))

(assert (=> d!1195197 d!1195915))

(assert (=> d!1195197 d!1195237))

(declare-fun d!1195917 () Bool)

(declare-fun c!697053 () Bool)

(assert (=> d!1195917 (= c!697053 ((_ is Nil!43217) newSuffixResult!27))))

(declare-fun e!2504148 () (InoxSet C!23828))

(assert (=> d!1195917 (= (content!6566 newSuffixResult!27) e!2504148)))

(declare-fun b!4035714 () Bool)

(assert (=> b!4035714 (= e!2504148 ((as const (Array C!23828 Bool)) false))))

(declare-fun b!4035715 () Bool)

(assert (=> b!4035715 (= e!2504148 ((_ map or) (store ((as const (Array C!23828 Bool)) false) (h!48637 newSuffixResult!27) true) (content!6566 (t!334404 newSuffixResult!27))))))

(assert (= (and d!1195917 c!697053) b!4035714))

(assert (= (and d!1195917 (not c!697053)) b!4035715))

(declare-fun m!4629851 () Bool)

(assert (=> b!4035715 m!4629851))

(declare-fun m!4629853 () Bool)

(assert (=> b!4035715 m!4629853))

(assert (=> d!1195197 d!1195917))

(declare-fun d!1195919 () Bool)

(declare-fun lt!1435682 () Int)

(assert (=> d!1195919 (>= lt!1435682 0)))

(declare-fun e!2504149 () Int)

(assert (=> d!1195919 (= lt!1435682 e!2504149)))

(declare-fun c!697054 () Bool)

(assert (=> d!1195919 (= c!697054 ((_ is Nil!43217) (_2!24283 (get!14180 lt!1435131))))))

(assert (=> d!1195919 (= (size!32302 (_2!24283 (get!14180 lt!1435131))) lt!1435682)))

(declare-fun b!4035716 () Bool)

(assert (=> b!4035716 (= e!2504149 0)))

(declare-fun b!4035717 () Bool)

(assert (=> b!4035717 (= e!2504149 (+ 1 (size!32302 (t!334404 (_2!24283 (get!14180 lt!1435131))))))))

(assert (= (and d!1195919 c!697054) b!4035716))

(assert (= (and d!1195919 (not c!697054)) b!4035717))

(declare-fun m!4629859 () Bool)

(assert (=> b!4035717 m!4629859))

(assert (=> b!4034357 d!1195919))

(assert (=> b!4034357 d!1195473))

(declare-fun d!1195921 () Bool)

(declare-fun lt!1435683 () Int)

(assert (=> d!1195921 (>= lt!1435683 0)))

(declare-fun e!2504150 () Int)

(assert (=> d!1195921 (= lt!1435683 e!2504150)))

(declare-fun c!697055 () Bool)

(assert (=> d!1195921 (= c!697055 ((_ is Nil!43217) lt!1435033))))

(assert (=> d!1195921 (= (size!32302 lt!1435033) lt!1435683)))

(declare-fun b!4035718 () Bool)

(assert (=> b!4035718 (= e!2504150 0)))

(declare-fun b!4035719 () Bool)

(assert (=> b!4035719 (= e!2504150 (+ 1 (size!32302 (t!334404 lt!1435033))))))

(assert (= (and d!1195921 c!697055) b!4035718))

(assert (= (and d!1195921 (not c!697055)) b!4035719))

(declare-fun m!4629867 () Bool)

(assert (=> b!4035719 m!4629867))

(assert (=> b!4034357 d!1195921))

(declare-fun b!4035720 () Bool)

(declare-fun e!2504151 () Bool)

(declare-fun e!2504152 () Bool)

(assert (=> b!4035720 (= e!2504151 e!2504152)))

(declare-fun c!697056 () Bool)

(assert (=> b!4035720 (= c!697056 ((_ is IntegerValue!21439) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037))))))

(declare-fun b!4035721 () Bool)

(assert (=> b!4035721 (= e!2504152 (inv!17 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037))))))

(declare-fun b!4035722 () Bool)

(declare-fun e!2504153 () Bool)

(assert (=> b!4035722 (= e!2504153 (inv!15 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037))))))

(declare-fun b!4035723 () Bool)

(declare-fun res!1643381 () Bool)

(assert (=> b!4035723 (=> res!1643381 e!2504153)))

(assert (=> b!4035723 (= res!1643381 (not ((_ is IntegerValue!21440) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037)))))))

(assert (=> b!4035723 (= e!2504152 e!2504153)))

(declare-fun b!4035724 () Bool)

(assert (=> b!4035724 (= e!2504151 (inv!16 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037))))))

(declare-fun d!1195923 () Bool)

(declare-fun c!697057 () Bool)

(assert (=> d!1195923 (= c!697057 ((_ is IntegerValue!21438) (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037))))))

(assert (=> d!1195923 (= (inv!21 (dynLambda!18317 (toValue!9444 (transformation!6916 (rule!9982 token!484))) (seqFromList!5133 lt!1435037))) e!2504151)))

(assert (= (and d!1195923 c!697057) b!4035724))

(assert (= (and d!1195923 (not c!697057)) b!4035720))

(assert (= (and b!4035720 c!697056) b!4035721))

(assert (= (and b!4035720 (not c!697056)) b!4035723))

(assert (= (and b!4035723 (not res!1643381)) b!4035722))

(declare-fun m!4629869 () Bool)

(assert (=> b!4035721 m!4629869))

(declare-fun m!4629871 () Bool)

(assert (=> b!4035722 m!4629871))

(declare-fun m!4629873 () Bool)

(assert (=> b!4035724 m!4629873))

(assert (=> tb!242317 d!1195923))

(assert (=> b!4034710 d!1195921))

(assert (=> b!4034710 d!1195171))

(declare-fun d!1195927 () Bool)

(declare-fun lt!1435684 () Int)

(assert (=> d!1195927 (>= lt!1435684 0)))

(declare-fun e!2504154 () Int)

(assert (=> d!1195927 (= lt!1435684 e!2504154)))

(declare-fun c!697058 () Bool)

(assert (=> d!1195927 (= c!697058 ((_ is Nil!43217) (_2!24283 (get!14180 lt!1435112))))))

(assert (=> d!1195927 (= (size!32302 (_2!24283 (get!14180 lt!1435112))) lt!1435684)))

(declare-fun b!4035725 () Bool)

(assert (=> b!4035725 (= e!2504154 0)))

(declare-fun b!4035726 () Bool)

(assert (=> b!4035726 (= e!2504154 (+ 1 (size!32302 (t!334404 (_2!24283 (get!14180 lt!1435112))))))))

(assert (= (and d!1195927 c!697058) b!4035725))

(assert (= (and d!1195927 (not c!697058)) b!4035726))

(declare-fun m!4629875 () Bool)

(assert (=> b!4035726 m!4629875))

(assert (=> b!4034309 d!1195927))

(assert (=> b!4034309 d!1195459))

(assert (=> b!4034309 d!1195255))

(declare-fun b!4035727 () Bool)

(declare-fun e!2504155 () Bool)

(declare-fun e!2504156 () Bool)

(assert (=> b!4035727 (= e!2504155 e!2504156)))

(declare-fun res!1643382 () Bool)

(assert (=> b!4035727 (=> (not res!1643382) (not e!2504156))))

(assert (=> b!4035727 (= res!1643382 (not ((_ is Nil!43217) (tail!6279 lt!1435003))))))

(declare-fun b!4035728 () Bool)

(declare-fun res!1643385 () Bool)

(assert (=> b!4035728 (=> (not res!1643385) (not e!2504156))))

(assert (=> b!4035728 (= res!1643385 (= (head!8547 (tail!6279 lt!1435037)) (head!8547 (tail!6279 lt!1435003))))))

(declare-fun d!1195929 () Bool)

(declare-fun e!2504157 () Bool)

(assert (=> d!1195929 e!2504157))

(declare-fun res!1643384 () Bool)

(assert (=> d!1195929 (=> res!1643384 e!2504157)))

(declare-fun lt!1435685 () Bool)

(assert (=> d!1195929 (= res!1643384 (not lt!1435685))))

(assert (=> d!1195929 (= lt!1435685 e!2504155)))

(declare-fun res!1643383 () Bool)

(assert (=> d!1195929 (=> res!1643383 e!2504155)))

(assert (=> d!1195929 (= res!1643383 ((_ is Nil!43217) (tail!6279 lt!1435037)))))

(assert (=> d!1195929 (= (isPrefix!4003 (tail!6279 lt!1435037) (tail!6279 lt!1435003)) lt!1435685)))

(declare-fun b!4035729 () Bool)

(assert (=> b!4035729 (= e!2504156 (isPrefix!4003 (tail!6279 (tail!6279 lt!1435037)) (tail!6279 (tail!6279 lt!1435003))))))

(declare-fun b!4035730 () Bool)

(assert (=> b!4035730 (= e!2504157 (>= (size!32302 (tail!6279 lt!1435003)) (size!32302 (tail!6279 lt!1435037))))))

(assert (= (and d!1195929 (not res!1643383)) b!4035727))

(assert (= (and b!4035727 res!1643382) b!4035728))

(assert (= (and b!4035728 res!1643385) b!4035729))

(assert (= (and d!1195929 (not res!1643384)) b!4035730))

(assert (=> b!4035728 m!4627911))

(assert (=> b!4035728 m!4629063))

(assert (=> b!4035728 m!4628179))

(assert (=> b!4035728 m!4629309))

(assert (=> b!4035729 m!4627911))

(assert (=> b!4035729 m!4629067))

(assert (=> b!4035729 m!4628179))

(assert (=> b!4035729 m!4629039))

(assert (=> b!4035729 m!4629067))

(assert (=> b!4035729 m!4629039))

(declare-fun m!4629877 () Bool)

(assert (=> b!4035729 m!4629877))

(assert (=> b!4035730 m!4628179))

(assert (=> b!4035730 m!4629037))

(assert (=> b!4035730 m!4627911))

(assert (=> b!4035730 m!4629075))

(assert (=> b!4034586 d!1195929))

(assert (=> b!4034586 d!1195405))

(assert (=> b!4034586 d!1195521))

(declare-fun b!4035731 () Bool)

(declare-fun res!1643387 () Bool)

(declare-fun e!2504161 () Bool)

(assert (=> b!4035731 (=> (not res!1643387) (not e!2504161))))

(declare-fun lt!1435690 () Option!9330)

(assert (=> b!4035731 (= res!1643387 (< (size!32302 (_2!24283 (get!14180 lt!1435690))) (size!32302 lt!1435033)))))

(declare-fun b!4035732 () Bool)

(assert (=> b!4035732 (= e!2504161 (= (size!32301 (_1!24283 (get!14180 lt!1435690))) (size!32302 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435690))))))))

(declare-fun b!4035733 () Bool)

(declare-fun e!2504159 () Option!9330)

(declare-fun lt!1435689 () tuple2!42302)

(assert (=> b!4035733 (= e!2504159 (Some!9329 (tuple2!42299 (Token!12971 (apply!10105 (transformation!6916 (h!48639 rules!2999)) (seqFromList!5133 (_1!24285 lt!1435689))) (h!48639 rules!2999) (size!32304 (seqFromList!5133 (_1!24285 lt!1435689))) (_1!24285 lt!1435689)) (_2!24285 lt!1435689))))))

(declare-fun lt!1435686 () Unit!62397)

(assert (=> b!4035733 (= lt!1435686 (longestMatchIsAcceptedByMatchOrIsEmpty!1354 (regex!6916 (h!48639 rules!2999)) lt!1435033))))

(declare-fun res!1643392 () Bool)

(assert (=> b!4035733 (= res!1643392 (isEmpty!25793 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (h!48639 rules!2999)) Nil!43217 (size!32302 Nil!43217) lt!1435033 lt!1435033 (size!32302 lt!1435033)))))))

(declare-fun e!2504160 () Bool)

(assert (=> b!4035733 (=> res!1643392 e!2504160)))

(assert (=> b!4035733 e!2504160))

(declare-fun lt!1435687 () Unit!62397)

(assert (=> b!4035733 (= lt!1435687 lt!1435686)))

(declare-fun lt!1435688 () Unit!62397)

(assert (=> b!4035733 (= lt!1435688 (lemmaSemiInverse!1901 (transformation!6916 (h!48639 rules!2999)) (seqFromList!5133 (_1!24285 lt!1435689))))))

(declare-fun b!4035734 () Bool)

(assert (=> b!4035734 (= e!2504160 (matchR!5774 (regex!6916 (h!48639 rules!2999)) (_1!24285 (findLongestMatchInner!1381 (regex!6916 (h!48639 rules!2999)) Nil!43217 (size!32302 Nil!43217) lt!1435033 lt!1435033 (size!32302 lt!1435033)))))))

(declare-fun b!4035735 () Bool)

(declare-fun res!1643390 () Bool)

(assert (=> b!4035735 (=> (not res!1643390) (not e!2504161))))

(assert (=> b!4035735 (= res!1643390 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435690)))) (_2!24283 (get!14180 lt!1435690))) lt!1435033))))

(declare-fun b!4035736 () Bool)

(assert (=> b!4035736 (= e!2504159 None!9329)))

(declare-fun b!4035737 () Bool)

(declare-fun res!1643391 () Bool)

(assert (=> b!4035737 (=> (not res!1643391) (not e!2504161))))

(assert (=> b!4035737 (= res!1643391 (= (rule!9982 (_1!24283 (get!14180 lt!1435690))) (h!48639 rules!2999)))))

(declare-fun d!1195931 () Bool)

(declare-fun e!2504158 () Bool)

(assert (=> d!1195931 e!2504158))

(declare-fun res!1643389 () Bool)

(assert (=> d!1195931 (=> res!1643389 e!2504158)))

(assert (=> d!1195931 (= res!1643389 (isEmpty!25792 lt!1435690))))

(assert (=> d!1195931 (= lt!1435690 e!2504159)))

(declare-fun c!697059 () Bool)

(assert (=> d!1195931 (= c!697059 (isEmpty!25793 (_1!24285 lt!1435689)))))

(assert (=> d!1195931 (= lt!1435689 (findLongestMatch!1294 (regex!6916 (h!48639 rules!2999)) lt!1435033))))

(assert (=> d!1195931 (ruleValid!2846 thiss!21717 (h!48639 rules!2999))))

(assert (=> d!1195931 (= (maxPrefixOneRule!2815 thiss!21717 (h!48639 rules!2999) lt!1435033) lt!1435690)))

(declare-fun b!4035738 () Bool)

(assert (=> b!4035738 (= e!2504158 e!2504161)))

(declare-fun res!1643388 () Bool)

(assert (=> b!4035738 (=> (not res!1643388) (not e!2504161))))

(assert (=> b!4035738 (= res!1643388 (matchR!5774 (regex!6916 (h!48639 rules!2999)) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435690))))))))

(declare-fun b!4035739 () Bool)

(declare-fun res!1643386 () Bool)

(assert (=> b!4035739 (=> (not res!1643386) (not e!2504161))))

(assert (=> b!4035739 (= res!1643386 (= (value!217740 (_1!24283 (get!14180 lt!1435690))) (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435690)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435690)))))))))

(assert (= (and d!1195931 c!697059) b!4035736))

(assert (= (and d!1195931 (not c!697059)) b!4035733))

(assert (= (and b!4035733 (not res!1643392)) b!4035734))

(assert (= (and d!1195931 (not res!1643389)) b!4035738))

(assert (= (and b!4035738 res!1643388) b!4035735))

(assert (= (and b!4035735 res!1643390) b!4035731))

(assert (= (and b!4035731 res!1643387) b!4035737))

(assert (= (and b!4035737 res!1643391) b!4035739))

(assert (= (and b!4035739 res!1643386) b!4035732))

(assert (=> b!4035734 m!4628125))

(assert (=> b!4035734 m!4627891))

(assert (=> b!4035734 m!4628125))

(assert (=> b!4035734 m!4627891))

(declare-fun m!4629879 () Bool)

(assert (=> b!4035734 m!4629879))

(declare-fun m!4629881 () Bool)

(assert (=> b!4035734 m!4629881))

(declare-fun m!4629883 () Bool)

(assert (=> b!4035735 m!4629883))

(declare-fun m!4629885 () Bool)

(assert (=> b!4035735 m!4629885))

(assert (=> b!4035735 m!4629885))

(declare-fun m!4629887 () Bool)

(assert (=> b!4035735 m!4629887))

(assert (=> b!4035735 m!4629887))

(declare-fun m!4629889 () Bool)

(assert (=> b!4035735 m!4629889))

(assert (=> b!4035738 m!4629883))

(assert (=> b!4035738 m!4629885))

(assert (=> b!4035738 m!4629885))

(assert (=> b!4035738 m!4629887))

(assert (=> b!4035738 m!4629887))

(declare-fun m!4629891 () Bool)

(assert (=> b!4035738 m!4629891))

(assert (=> b!4035739 m!4629883))

(declare-fun m!4629893 () Bool)

(assert (=> b!4035739 m!4629893))

(assert (=> b!4035739 m!4629893))

(declare-fun m!4629895 () Bool)

(assert (=> b!4035739 m!4629895))

(assert (=> b!4035732 m!4629883))

(declare-fun m!4629897 () Bool)

(assert (=> b!4035732 m!4629897))

(declare-fun m!4629899 () Bool)

(assert (=> d!1195931 m!4629899))

(declare-fun m!4629901 () Bool)

(assert (=> d!1195931 m!4629901))

(declare-fun m!4629903 () Bool)

(assert (=> d!1195931 m!4629903))

(assert (=> d!1195931 m!4629251))

(declare-fun m!4629905 () Bool)

(assert (=> b!4035733 m!4629905))

(declare-fun m!4629907 () Bool)

(assert (=> b!4035733 m!4629907))

(declare-fun m!4629909 () Bool)

(assert (=> b!4035733 m!4629909))

(assert (=> b!4035733 m!4629905))

(assert (=> b!4035733 m!4629905))

(declare-fun m!4629911 () Bool)

(assert (=> b!4035733 m!4629911))

(declare-fun m!4629913 () Bool)

(assert (=> b!4035733 m!4629913))

(assert (=> b!4035733 m!4628125))

(assert (=> b!4035733 m!4627891))

(assert (=> b!4035733 m!4629879))

(assert (=> b!4035733 m!4628125))

(assert (=> b!4035733 m!4629905))

(declare-fun m!4629915 () Bool)

(assert (=> b!4035733 m!4629915))

(assert (=> b!4035733 m!4627891))

(assert (=> b!4035731 m!4629883))

(declare-fun m!4629917 () Bool)

(assert (=> b!4035731 m!4629917))

(assert (=> b!4035731 m!4627891))

(assert (=> b!4035737 m!4629883))

(assert (=> bm!287008 d!1195931))

(declare-fun b!4035740 () Bool)

(declare-fun res!1643394 () Bool)

(declare-fun e!2504165 () Bool)

(assert (=> b!4035740 (=> (not res!1643394) (not e!2504165))))

(declare-fun lt!1435695 () Option!9330)

(assert (=> b!4035740 (= res!1643394 (< (size!32302 (_2!24283 (get!14180 lt!1435695))) (size!32302 lt!1435003)))))

(declare-fun b!4035741 () Bool)

(assert (=> b!4035741 (= e!2504165 (= (size!32301 (_1!24283 (get!14180 lt!1435695))) (size!32302 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435695))))))))

(declare-fun b!4035742 () Bool)

(declare-fun e!2504163 () Option!9330)

(declare-fun lt!1435694 () tuple2!42302)

(assert (=> b!4035742 (= e!2504163 (Some!9329 (tuple2!42299 (Token!12971 (apply!10105 (transformation!6916 (h!48639 rules!2999)) (seqFromList!5133 (_1!24285 lt!1435694))) (h!48639 rules!2999) (size!32304 (seqFromList!5133 (_1!24285 lt!1435694))) (_1!24285 lt!1435694)) (_2!24285 lt!1435694))))))

(declare-fun lt!1435691 () Unit!62397)

(assert (=> b!4035742 (= lt!1435691 (longestMatchIsAcceptedByMatchOrIsEmpty!1354 (regex!6916 (h!48639 rules!2999)) lt!1435003))))

(declare-fun res!1643399 () Bool)

(assert (=> b!4035742 (= res!1643399 (isEmpty!25793 (_1!24285 (findLongestMatchInner!1381 (regex!6916 (h!48639 rules!2999)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(declare-fun e!2504164 () Bool)

(assert (=> b!4035742 (=> res!1643399 e!2504164)))

(assert (=> b!4035742 e!2504164))

(declare-fun lt!1435692 () Unit!62397)

(assert (=> b!4035742 (= lt!1435692 lt!1435691)))

(declare-fun lt!1435693 () Unit!62397)

(assert (=> b!4035742 (= lt!1435693 (lemmaSemiInverse!1901 (transformation!6916 (h!48639 rules!2999)) (seqFromList!5133 (_1!24285 lt!1435694))))))

(declare-fun b!4035743 () Bool)

(assert (=> b!4035743 (= e!2504164 (matchR!5774 (regex!6916 (h!48639 rules!2999)) (_1!24285 (findLongestMatchInner!1381 (regex!6916 (h!48639 rules!2999)) Nil!43217 (size!32302 Nil!43217) lt!1435003 lt!1435003 (size!32302 lt!1435003)))))))

(declare-fun b!4035744 () Bool)

(declare-fun res!1643397 () Bool)

(assert (=> b!4035744 (=> (not res!1643397) (not e!2504165))))

(assert (=> b!4035744 (= res!1643397 (= (++!11318 (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435695)))) (_2!24283 (get!14180 lt!1435695))) lt!1435003))))

(declare-fun b!4035745 () Bool)

(assert (=> b!4035745 (= e!2504163 None!9329)))

(declare-fun b!4035746 () Bool)

(declare-fun res!1643398 () Bool)

(assert (=> b!4035746 (=> (not res!1643398) (not e!2504165))))

(assert (=> b!4035746 (= res!1643398 (= (rule!9982 (_1!24283 (get!14180 lt!1435695))) (h!48639 rules!2999)))))

(declare-fun d!1195933 () Bool)

(declare-fun e!2504162 () Bool)

(assert (=> d!1195933 e!2504162))

(declare-fun res!1643396 () Bool)

(assert (=> d!1195933 (=> res!1643396 e!2504162)))

(assert (=> d!1195933 (= res!1643396 (isEmpty!25792 lt!1435695))))

(assert (=> d!1195933 (= lt!1435695 e!2504163)))

(declare-fun c!697060 () Bool)

(assert (=> d!1195933 (= c!697060 (isEmpty!25793 (_1!24285 lt!1435694)))))

(assert (=> d!1195933 (= lt!1435694 (findLongestMatch!1294 (regex!6916 (h!48639 rules!2999)) lt!1435003))))

(assert (=> d!1195933 (ruleValid!2846 thiss!21717 (h!48639 rules!2999))))

(assert (=> d!1195933 (= (maxPrefixOneRule!2815 thiss!21717 (h!48639 rules!2999) lt!1435003) lt!1435695)))

(declare-fun b!4035747 () Bool)

(assert (=> b!4035747 (= e!2504162 e!2504165)))

(declare-fun res!1643395 () Bool)

(assert (=> b!4035747 (=> (not res!1643395) (not e!2504165))))

(assert (=> b!4035747 (= res!1643395 (matchR!5774 (regex!6916 (h!48639 rules!2999)) (list!16082 (charsOf!4732 (_1!24283 (get!14180 lt!1435695))))))))

(declare-fun b!4035748 () Bool)

(declare-fun res!1643393 () Bool)

(assert (=> b!4035748 (=> (not res!1643393) (not e!2504165))))

(assert (=> b!4035748 (= res!1643393 (= (value!217740 (_1!24283 (get!14180 lt!1435695))) (apply!10105 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435695)))) (seqFromList!5133 (originalCharacters!7516 (_1!24283 (get!14180 lt!1435695)))))))))

(assert (= (and d!1195933 c!697060) b!4035745))

(assert (= (and d!1195933 (not c!697060)) b!4035742))

(assert (= (and b!4035742 (not res!1643399)) b!4035743))

(assert (= (and d!1195933 (not res!1643396)) b!4035747))

(assert (= (and b!4035747 res!1643395) b!4035744))

(assert (= (and b!4035744 res!1643397) b!4035740))

(assert (= (and b!4035740 res!1643394) b!4035746))

(assert (= (and b!4035746 res!1643398) b!4035748))

(assert (= (and b!4035748 res!1643393) b!4035741))

(assert (=> b!4035743 m!4628125))

(assert (=> b!4035743 m!4627803))

(assert (=> b!4035743 m!4628125))

(assert (=> b!4035743 m!4627803))

(declare-fun m!4629919 () Bool)

(assert (=> b!4035743 m!4629919))

(declare-fun m!4629921 () Bool)

(assert (=> b!4035743 m!4629921))

(declare-fun m!4629923 () Bool)

(assert (=> b!4035744 m!4629923))

(declare-fun m!4629925 () Bool)

(assert (=> b!4035744 m!4629925))

(assert (=> b!4035744 m!4629925))

(declare-fun m!4629927 () Bool)

(assert (=> b!4035744 m!4629927))

(assert (=> b!4035744 m!4629927))

(declare-fun m!4629929 () Bool)

(assert (=> b!4035744 m!4629929))

(assert (=> b!4035747 m!4629923))

(assert (=> b!4035747 m!4629925))

(assert (=> b!4035747 m!4629925))

(assert (=> b!4035747 m!4629927))

(assert (=> b!4035747 m!4629927))

(declare-fun m!4629931 () Bool)

(assert (=> b!4035747 m!4629931))

(assert (=> b!4035748 m!4629923))

(declare-fun m!4629933 () Bool)

(assert (=> b!4035748 m!4629933))

(assert (=> b!4035748 m!4629933))

(declare-fun m!4629935 () Bool)

(assert (=> b!4035748 m!4629935))

(assert (=> b!4035741 m!4629923))

(declare-fun m!4629937 () Bool)

(assert (=> b!4035741 m!4629937))

(declare-fun m!4629939 () Bool)

(assert (=> d!1195933 m!4629939))

(declare-fun m!4629941 () Bool)

(assert (=> d!1195933 m!4629941))

(declare-fun m!4629943 () Bool)

(assert (=> d!1195933 m!4629943))

(assert (=> d!1195933 m!4629251))

(declare-fun m!4629945 () Bool)

(assert (=> b!4035742 m!4629945))

(declare-fun m!4629947 () Bool)

(assert (=> b!4035742 m!4629947))

(declare-fun m!4629949 () Bool)

(assert (=> b!4035742 m!4629949))

(assert (=> b!4035742 m!4629945))

(assert (=> b!4035742 m!4629945))

(declare-fun m!4629951 () Bool)

(assert (=> b!4035742 m!4629951))

(declare-fun m!4629953 () Bool)

(assert (=> b!4035742 m!4629953))

(assert (=> b!4035742 m!4628125))

(assert (=> b!4035742 m!4627803))

(assert (=> b!4035742 m!4629919))

(assert (=> b!4035742 m!4628125))

(assert (=> b!4035742 m!4629945))

(declare-fun m!4629955 () Bool)

(assert (=> b!4035742 m!4629955))

(assert (=> b!4035742 m!4627803))

(assert (=> b!4035740 m!4629923))

(declare-fun m!4629957 () Bool)

(assert (=> b!4035740 m!4629957))

(assert (=> b!4035740 m!4627803))

(assert (=> b!4035746 m!4629923))

(assert (=> bm!287007 d!1195933))

(declare-fun b!4035771 () Bool)

(declare-fun res!1643400 () Bool)

(declare-fun e!2504176 () Bool)

(assert (=> b!4035771 (=> (not res!1643400) (not e!2504176))))

(declare-fun lt!1435698 () List!43341)

(assert (=> b!4035771 (= res!1643400 (= (size!32302 lt!1435698) (+ (size!32302 (t!334404 lt!1435037)) (size!32302 suffixResult!105))))))

(declare-fun b!4035772 () Bool)

(assert (=> b!4035772 (= e!2504176 (or (not (= suffixResult!105 Nil!43217)) (= lt!1435698 (t!334404 lt!1435037))))))

(declare-fun b!4035770 () Bool)

(declare-fun e!2504177 () List!43341)

(assert (=> b!4035770 (= e!2504177 (Cons!43217 (h!48637 (t!334404 lt!1435037)) (++!11318 (t!334404 (t!334404 lt!1435037)) suffixResult!105)))))

(declare-fun d!1195935 () Bool)

(assert (=> d!1195935 e!2504176))

(declare-fun res!1643401 () Bool)

(assert (=> d!1195935 (=> (not res!1643401) (not e!2504176))))

(assert (=> d!1195935 (= res!1643401 (= (content!6566 lt!1435698) ((_ map or) (content!6566 (t!334404 lt!1435037)) (content!6566 suffixResult!105))))))

(assert (=> d!1195935 (= lt!1435698 e!2504177)))

(declare-fun c!697071 () Bool)

(assert (=> d!1195935 (= c!697071 ((_ is Nil!43217) (t!334404 lt!1435037)))))

(assert (=> d!1195935 (= (++!11318 (t!334404 lt!1435037) suffixResult!105) lt!1435698)))

(declare-fun b!4035769 () Bool)

(assert (=> b!4035769 (= e!2504177 suffixResult!105)))

(assert (= (and d!1195935 c!697071) b!4035769))

(assert (= (and d!1195935 (not c!697071)) b!4035770))

(assert (= (and d!1195935 res!1643401) b!4035771))

(assert (= (and b!4035771 res!1643400) b!4035772))

(declare-fun m!4629959 () Bool)

(assert (=> b!4035771 m!4629959))

(assert (=> b!4035771 m!4628303))

(assert (=> b!4035771 m!4628265))

(declare-fun m!4629961 () Bool)

(assert (=> b!4035770 m!4629961))

(declare-fun m!4629963 () Bool)

(assert (=> d!1195935 m!4629963))

(assert (=> d!1195935 m!4628477))

(assert (=> d!1195935 m!4628271))

(assert (=> b!4034653 d!1195935))

(declare-fun b!4035773 () Bool)

(declare-fun e!2504178 () Bool)

(declare-fun tp!1225903 () Bool)

(assert (=> b!4035773 (= e!2504178 (and tp_is_empty!20613 tp!1225903))))

(assert (=> b!4034776 (= tp!1225887 e!2504178)))

(assert (= (and b!4034776 ((_ is Cons!43217) (t!334404 (t!334404 suffixResult!105)))) b!4035773))

(declare-fun b!4035776 () Bool)

(declare-fun b_free!112441 () Bool)

(declare-fun b_next!113145 () Bool)

(assert (=> b!4035776 (= b_free!112441 (not b_next!113145))))

(declare-fun tb!242437 () Bool)

(declare-fun t!334544 () Bool)

(assert (=> (and b!4035776 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) t!334544) tb!242437))

(declare-fun result!293882 () Bool)

(assert (= result!293882 result!293746))

(assert (=> d!1195091 t!334544))

(declare-fun t!334546 () Bool)

(declare-fun tb!242439 () Bool)

(assert (=> (and b!4035776 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))))) t!334546) tb!242439))

(declare-fun result!293884 () Bool)

(assert (= result!293884 result!293870))

(assert (=> d!1195797 t!334546))

(declare-fun t!334548 () Bool)

(declare-fun tb!242441 () Bool)

(assert (=> (and b!4035776 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))) t!334548) tb!242441))

(declare-fun result!293886 () Bool)

(assert (= result!293886 result!293852))

(assert (=> d!1195647 t!334548))

(declare-fun t!334550 () Bool)

(declare-fun tb!242443 () Bool)

(assert (=> (and b!4035776 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toValue!9444 (transformation!6916 (rule!9982 token!484)))) t!334550) tb!242443))

(declare-fun result!293888 () Bool)

(assert (= result!293888 result!293792))

(assert (=> d!1195257 t!334550))

(declare-fun t!334552 () Bool)

(declare-fun tb!242445 () Bool)

(assert (=> (and b!4035776 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toValue!9444 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))) t!334552) tb!242445))

(declare-fun result!293890 () Bool)

(assert (= result!293890 result!293846))

(assert (=> d!1195637 t!334552))

(assert (=> d!1195253 t!334550))

(declare-fun b_and!310159 () Bool)

(declare-fun tp!1225905 () Bool)

(assert (=> b!4035776 (= tp!1225905 (and (=> t!334550 result!293888) (=> t!334548 result!293886) (=> t!334544 result!293882) (=> t!334546 result!293884) (=> t!334552 result!293890) b_and!310159))))

(declare-fun b_free!112443 () Bool)

(declare-fun b_next!113147 () Bool)

(assert (=> b!4035776 (= b_free!112443 (not b_next!113147))))

(declare-fun tb!242447 () Bool)

(declare-fun t!334554 () Bool)

(assert (=> (and b!4035776 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) t!334554) tb!242447))

(declare-fun result!293892 () Bool)

(assert (= result!293892 result!293764))

(assert (=> b!4034605 t!334554))

(declare-fun tb!242449 () Bool)

(declare-fun t!334556 () Bool)

(assert (=> (and b!4035776 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435210)))))) t!334556) tb!242449))

(declare-fun result!293894 () Bool)

(assert (= result!293894 result!293834))

(assert (=> d!1195615 t!334556))

(declare-fun tb!242451 () Bool)

(declare-fun t!334558 () Bool)

(assert (=> (and b!4035776 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435112)))))) t!334558) tb!242451))

(declare-fun result!293896 () Bool)

(assert (= result!293896 result!293810))

(assert (=> d!1195447 t!334558))

(assert (=> d!1195177 t!334554))

(declare-fun tb!242453 () Bool)

(declare-fun t!334560 () Bool)

(assert (=> (and b!4035776 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (get!14180 lt!1435131)))))) t!334560) tb!242453))

(declare-fun result!293898 () Bool)

(assert (= result!293898 result!293822))

(assert (=> d!1195467 t!334560))

(declare-fun t!334562 () Bool)

(declare-fun tb!242455 () Bool)

(assert (=> (and b!4035776 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toChars!9303 (transformation!6916 (rule!9982 token!484)))) t!334562) tb!242455))

(declare-fun result!293900 () Bool)

(assert (= result!293900 result!293786))

(assert (=> d!1195253 t!334562))

(declare-fun t!334564 () Bool)

(declare-fun tb!242457 () Bool)

(assert (=> (and b!4035776 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020)))))) t!334564) tb!242457))

(declare-fun result!293902 () Bool)

(assert (= result!293902 result!293770))

(assert (=> d!1195185 t!334564))

(declare-fun tp!1225907 () Bool)

(declare-fun b_and!310161 () Bool)

(assert (=> b!4035776 (= tp!1225907 (and (=> t!334564 result!293902) (=> t!334558 result!293896) (=> t!334554 result!293892) (=> t!334556 result!293894) (=> t!334560 result!293898) (=> t!334562 result!293900) b_and!310161))))

(declare-fun e!2504181 () Bool)

(assert (=> b!4035776 (= e!2504181 (and tp!1225905 tp!1225907))))

(declare-fun tp!1225906 () Bool)

(declare-fun e!2504180 () Bool)

(declare-fun b!4035775 () Bool)

(assert (=> b!4035775 (= e!2504180 (and tp!1225906 (inv!57735 (tag!7776 (h!48639 (t!334406 (t!334406 rules!2999))))) (inv!57738 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) e!2504181))))

(declare-fun b!4035774 () Bool)

(declare-fun e!2504179 () Bool)

(declare-fun tp!1225904 () Bool)

(assert (=> b!4035774 (= e!2504179 (and e!2504180 tp!1225904))))

(assert (=> b!4034772 (= tp!1225882 e!2504179)))

(assert (= b!4035775 b!4035776))

(assert (= b!4035774 b!4035775))

(assert (= (and b!4034772 ((_ is Cons!43219) (t!334406 (t!334406 rules!2999)))) b!4035774))

(declare-fun m!4629965 () Bool)

(assert (=> b!4035775 m!4629965))

(declare-fun m!4629967 () Bool)

(assert (=> b!4035775 m!4629967))

(declare-fun b!4035790 () Bool)

(declare-fun e!2504188 () Bool)

(declare-fun tp!1225909 () Bool)

(declare-fun tp!1225911 () Bool)

(assert (=> b!4035790 (= e!2504188 (and tp!1225909 tp!1225911))))

(assert (=> b!4034779 (= tp!1225892 e!2504188)))

(declare-fun b!4035789 () Bool)

(declare-fun tp!1225912 () Bool)

(assert (=> b!4035789 (= e!2504188 tp!1225912)))

(declare-fun b!4035787 () Bool)

(assert (=> b!4035787 (= e!2504188 tp_is_empty!20613)))

(declare-fun b!4035788 () Bool)

(declare-fun tp!1225908 () Bool)

(declare-fun tp!1225910 () Bool)

(assert (=> b!4035788 (= e!2504188 (and tp!1225908 tp!1225910))))

(assert (= (and b!4034779 ((_ is ElementMatch!11821) (reg!12150 (regex!6916 (h!48639 rules!2999))))) b!4035787))

(assert (= (and b!4034779 ((_ is Concat!18968) (reg!12150 (regex!6916 (h!48639 rules!2999))))) b!4035788))

(assert (= (and b!4034779 ((_ is Star!11821) (reg!12150 (regex!6916 (h!48639 rules!2999))))) b!4035789))

(assert (= (and b!4034779 ((_ is Union!11821) (reg!12150 (regex!6916 (h!48639 rules!2999))))) b!4035790))

(declare-fun b!4035791 () Bool)

(declare-fun e!2504189 () Bool)

(declare-fun tp!1225913 () Bool)

(assert (=> b!4035791 (= e!2504189 (and tp_is_empty!20613 tp!1225913))))

(assert (=> b!4034748 (= tp!1225857 e!2504189)))

(assert (= (and b!4034748 ((_ is Cons!43217) (t!334404 (t!334404 newSuffix!27)))) b!4035791))

(declare-fun b!4035795 () Bool)

(declare-fun e!2504190 () Bool)

(declare-fun tp!1225915 () Bool)

(declare-fun tp!1225917 () Bool)

(assert (=> b!4035795 (= e!2504190 (and tp!1225915 tp!1225917))))

(assert (=> b!4034780 (= tp!1225889 e!2504190)))

(declare-fun b!4035794 () Bool)

(declare-fun tp!1225918 () Bool)

(assert (=> b!4035794 (= e!2504190 tp!1225918)))

(declare-fun b!4035792 () Bool)

(assert (=> b!4035792 (= e!2504190 tp_is_empty!20613)))

(declare-fun b!4035793 () Bool)

(declare-fun tp!1225914 () Bool)

(declare-fun tp!1225916 () Bool)

(assert (=> b!4035793 (= e!2504190 (and tp!1225914 tp!1225916))))

(assert (= (and b!4034780 ((_ is ElementMatch!11821) (regOne!24155 (regex!6916 (h!48639 rules!2999))))) b!4035792))

(assert (= (and b!4034780 ((_ is Concat!18968) (regOne!24155 (regex!6916 (h!48639 rules!2999))))) b!4035793))

(assert (= (and b!4034780 ((_ is Star!11821) (regOne!24155 (regex!6916 (h!48639 rules!2999))))) b!4035794))

(assert (= (and b!4034780 ((_ is Union!11821) (regOne!24155 (regex!6916 (h!48639 rules!2999))))) b!4035795))

(declare-fun b!4035799 () Bool)

(declare-fun e!2504191 () Bool)

(declare-fun tp!1225920 () Bool)

(declare-fun tp!1225922 () Bool)

(assert (=> b!4035799 (= e!2504191 (and tp!1225920 tp!1225922))))

(assert (=> b!4034780 (= tp!1225891 e!2504191)))

(declare-fun b!4035798 () Bool)

(declare-fun tp!1225923 () Bool)

(assert (=> b!4035798 (= e!2504191 tp!1225923)))

(declare-fun b!4035796 () Bool)

(assert (=> b!4035796 (= e!2504191 tp_is_empty!20613)))

(declare-fun b!4035797 () Bool)

(declare-fun tp!1225919 () Bool)

(declare-fun tp!1225921 () Bool)

(assert (=> b!4035797 (= e!2504191 (and tp!1225919 tp!1225921))))

(assert (= (and b!4034780 ((_ is ElementMatch!11821) (regTwo!24155 (regex!6916 (h!48639 rules!2999))))) b!4035796))

(assert (= (and b!4034780 ((_ is Concat!18968) (regTwo!24155 (regex!6916 (h!48639 rules!2999))))) b!4035797))

(assert (= (and b!4034780 ((_ is Star!11821) (regTwo!24155 (regex!6916 (h!48639 rules!2999))))) b!4035798))

(assert (= (and b!4034780 ((_ is Union!11821) (regTwo!24155 (regex!6916 (h!48639 rules!2999))))) b!4035799))

(declare-fun b!4035802 () Bool)

(declare-fun e!2504193 () Bool)

(declare-fun tp!1225924 () Bool)

(assert (=> b!4035802 (= e!2504193 (and tp_is_empty!20613 tp!1225924))))

(assert (=> b!4034749 (= tp!1225858 e!2504193)))

(assert (= (and b!4034749 ((_ is Cons!43217) (t!334404 (t!334404 newSuffixResult!27)))) b!4035802))

(declare-fun b!4035803 () Bool)

(declare-fun e!2504194 () Bool)

(declare-fun tp!1225925 () Bool)

(assert (=> b!4035803 (= e!2504194 (and tp_is_empty!20613 tp!1225925))))

(assert (=> b!4034781 (= tp!1225893 e!2504194)))

(assert (= (and b!4034781 ((_ is Cons!43217) (t!334404 (t!334404 prefix!494)))) b!4035803))

(declare-fun b!4035807 () Bool)

(declare-fun e!2504195 () Bool)

(declare-fun tp!1225927 () Bool)

(declare-fun tp!1225929 () Bool)

(assert (=> b!4035807 (= e!2504195 (and tp!1225927 tp!1225929))))

(assert (=> b!4034773 (= tp!1225884 e!2504195)))

(declare-fun b!4035806 () Bool)

(declare-fun tp!1225930 () Bool)

(assert (=> b!4035806 (= e!2504195 tp!1225930)))

(declare-fun b!4035804 () Bool)

(assert (=> b!4035804 (= e!2504195 tp_is_empty!20613)))

(declare-fun b!4035805 () Bool)

(declare-fun tp!1225926 () Bool)

(declare-fun tp!1225928 () Bool)

(assert (=> b!4035805 (= e!2504195 (and tp!1225926 tp!1225928))))

(assert (= (and b!4034773 ((_ is ElementMatch!11821) (regex!6916 (h!48639 (t!334406 rules!2999))))) b!4035804))

(assert (= (and b!4034773 ((_ is Concat!18968) (regex!6916 (h!48639 (t!334406 rules!2999))))) b!4035805))

(assert (= (and b!4034773 ((_ is Star!11821) (regex!6916 (h!48639 (t!334406 rules!2999))))) b!4035806))

(assert (= (and b!4034773 ((_ is Union!11821) (regex!6916 (h!48639 (t!334406 rules!2999))))) b!4035807))

(declare-fun b!4035813 () Bool)

(declare-fun e!2504197 () Bool)

(declare-fun tp!1225932 () Bool)

(declare-fun tp!1225934 () Bool)

(assert (=> b!4035813 (= e!2504197 (and tp!1225932 tp!1225934))))

(assert (=> b!4034762 (= tp!1225873 e!2504197)))

(declare-fun b!4035812 () Bool)

(declare-fun tp!1225935 () Bool)

(assert (=> b!4035812 (= e!2504197 tp!1225935)))

(declare-fun b!4035810 () Bool)

(assert (=> b!4035810 (= e!2504197 tp_is_empty!20613)))

(declare-fun b!4035811 () Bool)

(declare-fun tp!1225931 () Bool)

(declare-fun tp!1225933 () Bool)

(assert (=> b!4035811 (= e!2504197 (and tp!1225931 tp!1225933))))

(assert (= (and b!4034762 ((_ is ElementMatch!11821) (reg!12150 (regex!6916 (rule!9982 token!484))))) b!4035810))

(assert (= (and b!4034762 ((_ is Concat!18968) (reg!12150 (regex!6916 (rule!9982 token!484))))) b!4035811))

(assert (= (and b!4034762 ((_ is Star!11821) (reg!12150 (regex!6916 (rule!9982 token!484))))) b!4035812))

(assert (= (and b!4034762 ((_ is Union!11821) (reg!12150 (regex!6916 (rule!9982 token!484))))) b!4035813))

(declare-fun b!4035818 () Bool)

(declare-fun e!2504200 () Bool)

(declare-fun tp!1225936 () Bool)

(assert (=> b!4035818 (= e!2504200 (and tp_is_empty!20613 tp!1225936))))

(assert (=> b!4034782 (= tp!1225894 e!2504200)))

(assert (= (and b!4034782 ((_ is Cons!43217) (t!334404 (originalCharacters!7516 token!484)))) b!4035818))

(declare-fun b!4035822 () Bool)

(declare-fun e!2504201 () Bool)

(declare-fun tp!1225938 () Bool)

(declare-fun tp!1225940 () Bool)

(assert (=> b!4035822 (= e!2504201 (and tp!1225938 tp!1225940))))

(assert (=> b!4034761 (= tp!1225869 e!2504201)))

(declare-fun b!4035821 () Bool)

(declare-fun tp!1225941 () Bool)

(assert (=> b!4035821 (= e!2504201 tp!1225941)))

(declare-fun b!4035819 () Bool)

(assert (=> b!4035819 (= e!2504201 tp_is_empty!20613)))

(declare-fun b!4035820 () Bool)

(declare-fun tp!1225937 () Bool)

(declare-fun tp!1225939 () Bool)

(assert (=> b!4035820 (= e!2504201 (and tp!1225937 tp!1225939))))

(assert (= (and b!4034761 ((_ is ElementMatch!11821) (regOne!24154 (regex!6916 (rule!9982 token!484))))) b!4035819))

(assert (= (and b!4034761 ((_ is Concat!18968) (regOne!24154 (regex!6916 (rule!9982 token!484))))) b!4035820))

(assert (= (and b!4034761 ((_ is Star!11821) (regOne!24154 (regex!6916 (rule!9982 token!484))))) b!4035821))

(assert (= (and b!4034761 ((_ is Union!11821) (regOne!24154 (regex!6916 (rule!9982 token!484))))) b!4035822))

(declare-fun b!4035826 () Bool)

(declare-fun e!2504202 () Bool)

(declare-fun tp!1225943 () Bool)

(declare-fun tp!1225945 () Bool)

(assert (=> b!4035826 (= e!2504202 (and tp!1225943 tp!1225945))))

(assert (=> b!4034761 (= tp!1225871 e!2504202)))

(declare-fun b!4035825 () Bool)

(declare-fun tp!1225946 () Bool)

(assert (=> b!4035825 (= e!2504202 tp!1225946)))

(declare-fun b!4035823 () Bool)

(assert (=> b!4035823 (= e!2504202 tp_is_empty!20613)))

(declare-fun b!4035824 () Bool)

(declare-fun tp!1225942 () Bool)

(declare-fun tp!1225944 () Bool)

(assert (=> b!4035824 (= e!2504202 (and tp!1225942 tp!1225944))))

(assert (= (and b!4034761 ((_ is ElementMatch!11821) (regTwo!24154 (regex!6916 (rule!9982 token!484))))) b!4035823))

(assert (= (and b!4034761 ((_ is Concat!18968) (regTwo!24154 (regex!6916 (rule!9982 token!484))))) b!4035824))

(assert (= (and b!4034761 ((_ is Star!11821) (regTwo!24154 (regex!6916 (rule!9982 token!484))))) b!4035825))

(assert (= (and b!4034761 ((_ is Union!11821) (regTwo!24154 (regex!6916 (rule!9982 token!484))))) b!4035826))

(declare-fun b!4035827 () Bool)

(declare-fun e!2504203 () Bool)

(declare-fun tp!1225947 () Bool)

(assert (=> b!4035827 (= e!2504203 (and tp_is_empty!20613 tp!1225947))))

(assert (=> b!4034775 (= tp!1225886 e!2504203)))

(assert (= (and b!4034775 ((_ is Cons!43217) (t!334404 (t!334404 suffix!1299)))) b!4035827))

(declare-fun b!4035833 () Bool)

(declare-fun e!2504205 () Bool)

(declare-fun tp!1225949 () Bool)

(declare-fun tp!1225951 () Bool)

(assert (=> b!4035833 (= e!2504205 (and tp!1225949 tp!1225951))))

(assert (=> b!4034778 (= tp!1225888 e!2504205)))

(declare-fun b!4035832 () Bool)

(declare-fun tp!1225952 () Bool)

(assert (=> b!4035832 (= e!2504205 tp!1225952)))

(declare-fun b!4035830 () Bool)

(assert (=> b!4035830 (= e!2504205 tp_is_empty!20613)))

(declare-fun b!4035831 () Bool)

(declare-fun tp!1225948 () Bool)

(declare-fun tp!1225950 () Bool)

(assert (=> b!4035831 (= e!2504205 (and tp!1225948 tp!1225950))))

(assert (= (and b!4034778 ((_ is ElementMatch!11821) (regOne!24154 (regex!6916 (h!48639 rules!2999))))) b!4035830))

(assert (= (and b!4034778 ((_ is Concat!18968) (regOne!24154 (regex!6916 (h!48639 rules!2999))))) b!4035831))

(assert (= (and b!4034778 ((_ is Star!11821) (regOne!24154 (regex!6916 (h!48639 rules!2999))))) b!4035832))

(assert (= (and b!4034778 ((_ is Union!11821) (regOne!24154 (regex!6916 (h!48639 rules!2999))))) b!4035833))

(declare-fun b!4035837 () Bool)

(declare-fun e!2504206 () Bool)

(declare-fun tp!1225954 () Bool)

(declare-fun tp!1225956 () Bool)

(assert (=> b!4035837 (= e!2504206 (and tp!1225954 tp!1225956))))

(assert (=> b!4034778 (= tp!1225890 e!2504206)))

(declare-fun b!4035836 () Bool)

(declare-fun tp!1225957 () Bool)

(assert (=> b!4035836 (= e!2504206 tp!1225957)))

(declare-fun b!4035834 () Bool)

(assert (=> b!4035834 (= e!2504206 tp_is_empty!20613)))

(declare-fun b!4035835 () Bool)

(declare-fun tp!1225953 () Bool)

(declare-fun tp!1225955 () Bool)

(assert (=> b!4035835 (= e!2504206 (and tp!1225953 tp!1225955))))

(assert (= (and b!4034778 ((_ is ElementMatch!11821) (regTwo!24154 (regex!6916 (h!48639 rules!2999))))) b!4035834))

(assert (= (and b!4034778 ((_ is Concat!18968) (regTwo!24154 (regex!6916 (h!48639 rules!2999))))) b!4035835))

(assert (= (and b!4034778 ((_ is Star!11821) (regTwo!24154 (regex!6916 (h!48639 rules!2999))))) b!4035836))

(assert (= (and b!4034778 ((_ is Union!11821) (regTwo!24154 (regex!6916 (h!48639 rules!2999))))) b!4035837))

(declare-fun b!4035860 () Bool)

(declare-fun tp!1225965 () Bool)

(declare-fun tp!1225964 () Bool)

(declare-fun e!2504218 () Bool)

(assert (=> b!4035860 (= e!2504218 (and (inv!57742 (left!32547 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020))))))) tp!1225964 (inv!57742 (right!32877 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020))))))) tp!1225965))))

(declare-fun b!4035862 () Bool)

(declare-fun e!2504219 () Bool)

(declare-fun tp!1225966 () Bool)

(assert (=> b!4035862 (= e!2504219 tp!1225966)))

(declare-fun b!4035861 () Bool)

(declare-fun inv!57749 (IArray!26259) Bool)

(assert (=> b!4035861 (= e!2504218 (and (inv!57749 (xs!16433 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020))))))) e!2504219))))

(assert (=> b!4034722 (= tp!1225854 (and (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020)))))) e!2504218))))

(assert (= (and b!4034722 ((_ is Node!13127) (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020))))))) b!4035860))

(assert (= b!4035861 b!4035862))

(assert (= (and b!4034722 ((_ is Leaf!20292) (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))) (value!217740 (_1!24283 (v!39723 lt!1435020))))))) b!4035861))

(declare-fun m!4630013 () Bool)

(assert (=> b!4035860 m!4630013))

(declare-fun m!4630017 () Bool)

(assert (=> b!4035860 m!4630017))

(declare-fun m!4630019 () Bool)

(assert (=> b!4035861 m!4630019))

(assert (=> b!4034722 m!4628323))

(declare-fun b!4035870 () Bool)

(declare-fun e!2504223 () Bool)

(declare-fun tp!1225968 () Bool)

(declare-fun tp!1225970 () Bool)

(assert (=> b!4035870 (= e!2504223 (and tp!1225968 tp!1225970))))

(assert (=> b!4034763 (= tp!1225870 e!2504223)))

(declare-fun b!4035869 () Bool)

(declare-fun tp!1225971 () Bool)

(assert (=> b!4035869 (= e!2504223 tp!1225971)))

(declare-fun b!4035867 () Bool)

(assert (=> b!4035867 (= e!2504223 tp_is_empty!20613)))

(declare-fun b!4035868 () Bool)

(declare-fun tp!1225967 () Bool)

(declare-fun tp!1225969 () Bool)

(assert (=> b!4035868 (= e!2504223 (and tp!1225967 tp!1225969))))

(assert (= (and b!4034763 ((_ is ElementMatch!11821) (regOne!24155 (regex!6916 (rule!9982 token!484))))) b!4035867))

(assert (= (and b!4034763 ((_ is Concat!18968) (regOne!24155 (regex!6916 (rule!9982 token!484))))) b!4035868))

(assert (= (and b!4034763 ((_ is Star!11821) (regOne!24155 (regex!6916 (rule!9982 token!484))))) b!4035869))

(assert (= (and b!4034763 ((_ is Union!11821) (regOne!24155 (regex!6916 (rule!9982 token!484))))) b!4035870))

(declare-fun b!4035874 () Bool)

(declare-fun e!2504224 () Bool)

(declare-fun tp!1225973 () Bool)

(declare-fun tp!1225975 () Bool)

(assert (=> b!4035874 (= e!2504224 (and tp!1225973 tp!1225975))))

(assert (=> b!4034763 (= tp!1225872 e!2504224)))

(declare-fun b!4035873 () Bool)

(declare-fun tp!1225976 () Bool)

(assert (=> b!4035873 (= e!2504224 tp!1225976)))

(declare-fun b!4035871 () Bool)

(assert (=> b!4035871 (= e!2504224 tp_is_empty!20613)))

(declare-fun b!4035872 () Bool)

(declare-fun tp!1225972 () Bool)

(declare-fun tp!1225974 () Bool)

(assert (=> b!4035872 (= e!2504224 (and tp!1225972 tp!1225974))))

(assert (= (and b!4034763 ((_ is ElementMatch!11821) (regTwo!24155 (regex!6916 (rule!9982 token!484))))) b!4035871))

(assert (= (and b!4034763 ((_ is Concat!18968) (regTwo!24155 (regex!6916 (rule!9982 token!484))))) b!4035872))

(assert (= (and b!4034763 ((_ is Star!11821) (regTwo!24155 (regex!6916 (rule!9982 token!484))))) b!4035873))

(assert (= (and b!4034763 ((_ is Union!11821) (regTwo!24155 (regex!6916 (rule!9982 token!484))))) b!4035874))

(declare-fun b!4035879 () Bool)

(declare-fun e!2504228 () Bool)

(declare-fun tp!1225978 () Bool)

(declare-fun tp!1225977 () Bool)

(assert (=> b!4035879 (= e!2504228 (and (inv!57742 (left!32547 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))))) tp!1225977 (inv!57742 (right!32877 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))))) tp!1225978))))

(declare-fun b!4035881 () Bool)

(declare-fun e!2504229 () Bool)

(declare-fun tp!1225979 () Bool)

(assert (=> b!4035881 (= e!2504229 tp!1225979)))

(declare-fun b!4035880 () Bool)

(assert (=> b!4035880 (= e!2504228 (and (inv!57749 (xs!16433 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))))) e!2504229))))

(assert (=> b!4034611 (= tp!1225853 (and (inv!57742 (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484)))) e!2504228))))

(assert (= (and b!4034611 ((_ is Node!13127) (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))))) b!4035879))

(assert (= b!4035880 b!4035881))

(assert (= (and b!4034611 ((_ is Leaf!20292) (c!696700 (dynLambda!18318 (toChars!9303 (transformation!6916 (rule!9982 token!484))) (value!217740 token!484))))) b!4035880))

(declare-fun m!4630027 () Bool)

(assert (=> b!4035879 m!4630027))

(declare-fun m!4630029 () Bool)

(assert (=> b!4035879 m!4630029))

(declare-fun m!4630033 () Bool)

(assert (=> b!4035880 m!4630033))

(assert (=> b!4034611 m!4628211))

(declare-fun b_lambda!117751 () Bool)

(assert (= b_lambda!117719 (or (and b!4034157 b_free!112425 (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) (and b!4034142 b_free!112429) (and b!4034774 b_free!112437 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) (and b!4035776 b_free!112441 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) b_lambda!117751)))

(declare-fun b_lambda!117753 () Bool)

(assert (= b_lambda!117715 (or (and b!4034157 b_free!112427 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 token!484))))) (and b!4034142 b_free!112431) (and b!4034774 b_free!112439 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 token!484))))) (and b!4035776 b_free!112443 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toChars!9303 (transformation!6916 (rule!9982 token!484))))) b_lambda!117753)))

(declare-fun b_lambda!117755 () Bool)

(assert (= b_lambda!117707 (or (and b!4034157 b_free!112427 (= (toChars!9303 (transformation!6916 (h!48639 rules!2999))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))) (and b!4034142 b_free!112431 (= (toChars!9303 (transformation!6916 (rule!9982 token!484))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))) (and b!4034774 b_free!112439 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))) (and b!4035776 b_free!112443 (= (toChars!9303 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toChars!9303 (transformation!6916 (rule!9982 (_1!24283 (v!39723 lt!1435020))))))) b_lambda!117755)))

(declare-fun b_lambda!117757 () Bool)

(assert (= b_lambda!117717 (or (and b!4034157 b_free!112425 (= (toValue!9444 (transformation!6916 (h!48639 rules!2999))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) (and b!4034142 b_free!112429) (and b!4034774 b_free!112437 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 rules!2999)))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) (and b!4035776 b_free!112441 (= (toValue!9444 (transformation!6916 (h!48639 (t!334406 (t!334406 rules!2999))))) (toValue!9444 (transformation!6916 (rule!9982 token!484))))) b_lambda!117757)))

(check-sat (not b!4035356) (not b_lambda!117739) (not d!1195773) (not bm!287087) (not d!1195467) (not b!4035229) (not b!4035240) (not b_lambda!117737) (not b!4035334) (not b!4035379) (not b!4035728) (not b!4035860) (not b!4035264) (not b!4035136) (not b!4035551) (not b!4035521) (not b!4035414) (not b!4035525) (not b!4034889) (not b!4035873) (not b!4035042) (not b!4035659) (not b!4035083) (not tb!242407) (not tb!242365) (not b!4035618) (not d!1195579) (not b!4035649) (not b!4035680) (not b!4035293) (not b!4035320) (not bm!287077) (not b!4035821) (not tb!242341) (not b!4035570) (not d!1195869) (not b!4035832) (not b!4035811) (not d!1195495) (not b!4035572) (not b!4035650) (not b!4035574) (not b!4035802) tp_is_empty!20613 (not b!4035337) (not d!1195881) (not bm!287105) (not b!4035283) (not d!1195611) (not b!4035576) (not b!4035741) (not b!4035584) (not b!4035655) (not b!4035591) (not tb!242401) (not d!1195743) (not d!1195809) (not d!1195639) (not b!4035561) (not b!4035314) (not b_next!113135) (not b!4035826) (not b!4035112) (not d!1195615) (not d!1195799) (not d!1195443) (not bm!287072) (not b!4035627) (not b_lambda!117729) (not b!4035559) (not d!1195345) (not d!1195747) (not d!1195851) (not b!4035798) (not b!4035549) (not d!1195619) (not b!4035748) (not bm!287066) (not b_lambda!117709) (not b!4035805) (not b!4035824) (not b!4034927) (not bm!287108) (not b!4035825) (not b!4035316) (not d!1195253) (not b_lambda!117753) (not d!1195249) (not b!4035524) (not d!1195491) (not b!4035794) (not b!4035336) (not b!4035275) (not b!4035571) (not b_lambda!117747) (not b!4035066) (not d!1195857) (not b!4035536) (not b!4035713) (not b!4035567) (not b!4035548) (not b!4035139) (not b!4035813) (not b!4035537) (not b!4035396) (not d!1195411) (not b!4035683) (not b!4035656) (not b!4035770) (not b_lambda!117757) (not b!4035069) (not bm!287093) (not b!4034948) (not b!4035568) (not b!4035119) (not b!4035313) (not b!4035365) (not b!4035614) (not bm!287071) (not b!4035578) (not b!4035061) (not b!4035610) (not b!4035793) (not b!4035563) (not b!4035347) (not d!1195435) (not b!4035113) (not b!4034893) (not b!4035292) (not d!1195497) (not d!1195935) (not b!4035386) (not b!4035669) (not d!1195599) (not b!4035526) (not b_next!113145) (not b!4035653) (not b!4035135) (not bm!287107) (not b!4035520) (not b!4035868) (not b!4035340) (not b!4035277) (not d!1195695) (not b!4035381) (not b!4035835) (not tb!242377) (not d!1195933) (not b!4035322) (not b!4035499) b_and!310105 (not b!4035799) (not d!1195803) (not b!4035279) (not b!4035555) (not b!4035059) (not b!4035541) (not b!4035545) (not b!4035079) (not d!1195671) (not b!4035115) (not b!4035281) (not b!4035797) (not b!4035542) (not d!1195519) (not d!1195793) (not b!4035593) (not b!4035418) (not d!1195833) (not b!4034934) (not b!4035385) (not d!1195829) (not bm!287103) (not b!4035514) (not b!4035330) b_and!310149 (not b!4035789) (not b!4035398) (not b!4034950) (not b!4035358) (not b!4035543) (not b!4035631) (not b!4035732) (not b!4035147) (not b!4035724) (not b!4035544) (not d!1195883) (not bm!287092) (not tb!242389) (not d!1195771) (not b!4034964) (not b!4035836) (not b!4035735) (not b!4035731) (not b!4034956) (not b!4035089) (not b!4035579) (not b!4035509) (not b_lambda!117711) (not d!1195631) (not b!4035803) (not b!4035791) (not d!1195731) (not b!4035624) (not d!1195811) (not b!4035167) (not b!4035043) (not b!4034946) (not b!4035737) (not d!1195645) (not b!4035739) (not d!1195461) (not d!1195655) (not b_next!113141) (not tb!242347) (not b!4035485) (not b!4035377) (not d!1195309) (not b!4035747) (not bm!287106) (not b!4035142) (not b!4035566) (not b!4034611) (not b!4035512) (not b!4035686) (not b!4035881) (not b!4035740) (not b!4035585) (not d!1195247) (not d!1195817) (not b!4035354) (not b!4035130) (not d!1195931) (not d!1195281) (not b!4035818) (not b!4035606) (not b!4035239) (not b!4035353) (not b!4035287) (not d!1195673) (not d!1195447) (not b!4035102) (not d!1195657) (not b!4035870) (not b!4035691) b_and!310109 (not b!4035831) (not d!1195687) (not b!4035880) (not b!4035582) (not b!4035145) (not b_next!113133) (not b!4035820) (not d!1195233) (not d!1195767) (not b!4035382) (not d!1195841) (not b!4035392) (not d!1195901) (not b!4035633) (not b!4035861) (not b!4035070) (not b!4035391) (not b!4035565) (not b!4035529) b_and!310151 (not b!4035321) (not b!4034954) (not d!1195757) (not b!4034952) (not bm!287090) (not d!1195549) (not d!1195431) (not b!4034937) (not b!4035222) (not d!1195613) (not b!4035827) (not b!4035326) (not b_next!113147) (not b!4035273) (not b!4034958) (not b!4035300) (not b!4034962) (not b!4035668) (not bm!287109) (not b!4035615) (not b!4035721) (not b!4035869) (not b!4035872) (not b!4035412) (not b!4035667) (not d!1195465) (not b!4035060) (not d!1195387) (not b!4035607) (not d!1195577) (not b!4035734) (not d!1195649) (not d!1195507) (not b!4035722) (not b!4035331) (not d!1195241) (not b!4035775) (not b!4035053) (not b!4035057) (not b!4035129) (not b!4035715) (not d!1195625) (not b!4035507) (not b!4035547) (not d!1195775) (not d!1195245) (not d!1195769) (not b!4035117) (not b!4035230) (not d!1195503) (not d!1195573) (not b!4035790) (not b!4035552) (not b!4035795) (not b!4035730) (not b!4035833) (not bm!287067) (not b_lambda!117751) (not b!4035141) (not b!4035041) b_and!310161 (not d!1195751) (not b!4035219) (not b!4035278) (not b!4035592) (not b!4035383) (not b!4035397) (not tb!242425) (not d!1195527) (not b!4035620) (not b!4035771) (not b!4035685) (not b!4035235) (not b!4035366) (not b!4034960) b_and!310147 (not b!4035807) (not b!4035553) (not b!4035127) (not b!4035162) (not b_lambda!117733) (not b!4035812) (not d!1195617) (not d!1195547) (not b!4035409) (not b!4035679) (not b!4035408) (not d!1195525) (not bm!287086) (not b!4035635) (not b!4035733) (not b!4035324) (not b!4035738) (not b!4035071) (not b!4035822) (not b!4035415) (not d!1195355) (not b!4035874) (not b_next!113143) (not d!1195587) (not b!4035742) (not b!4035081) (not b!4035729) (not b!4035528) b_and!310159 (not b!4034722) (not b!4035245) (not b!4035862) b_and!310107 (not b!4035746) (not b!4034931) (not bm!287073) (not b!4035629) (not b!4035500) (not b!4035837) (not b!4035286) (not b!4035774) (not b!4035285) (not b!4035587) (not b!4035367) (not b!4035166) (not b!4034891) (not b!4035806) (not d!1195903) (not b!4035719) (not d!1195413) (not b!4035241) (not b_lambda!117725) (not b!4035773) (not b_next!113131) (not b!4035247) (not b!4035163) (not b!4035612) (not d!1195505) (not b!4034940) (not bm!287070) (not d!1195421) (not b!4035788) (not b_lambda!117713) (not b_lambda!117755) (not b!4035717) (not b!4035317) (not b!4035055) (not b!4035726) (not b!4035123) (not d!1195219) (not b!4035318) (not b!4035346) (not b!4035343) (not bm!287069) (not bm!287068) (not b!4035743) (not b_next!113129) (not b!4035564) (not b!4035622) (not b!4034896) (not b!4035151) (not bm!287089) (not b!4035558) (not b!4035879) (not b!4035744))
(check-sat (not b_next!113135) (not b_next!113145) b_and!310105 b_and!310149 (not b_next!113141) b_and!310109 (not b_next!113133) b_and!310151 (not b_next!113147) b_and!310161 b_and!310147 (not b_next!113129) b_and!310159 (not b_next!113143) b_and!310107 (not b_next!113131))
