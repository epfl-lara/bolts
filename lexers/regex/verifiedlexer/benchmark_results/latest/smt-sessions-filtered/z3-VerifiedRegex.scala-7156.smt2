; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379632 () Bool)

(assert start!379632)

(declare-fun b!4029693 () Bool)

(declare-fun b_free!112265 () Bool)

(declare-fun b_next!112969 () Bool)

(assert (=> b!4029693 (= b_free!112265 (not b_next!112969))))

(declare-fun tp!1224756 () Bool)

(declare-fun b_and!309655 () Bool)

(assert (=> b!4029693 (= tp!1224756 b_and!309655)))

(declare-fun b_free!112267 () Bool)

(declare-fun b_next!112971 () Bool)

(assert (=> b!4029693 (= b_free!112267 (not b_next!112971))))

(declare-fun tp!1224759 () Bool)

(declare-fun b_and!309657 () Bool)

(assert (=> b!4029693 (= tp!1224759 b_and!309657)))

(declare-fun b!4029694 () Bool)

(declare-fun b_free!112269 () Bool)

(declare-fun b_next!112973 () Bool)

(assert (=> b!4029694 (= b_free!112269 (not b_next!112973))))

(declare-fun tp!1224761 () Bool)

(declare-fun b_and!309659 () Bool)

(assert (=> b!4029694 (= tp!1224761 b_and!309659)))

(declare-fun b_free!112271 () Bool)

(declare-fun b_next!112975 () Bool)

(assert (=> b!4029694 (= b_free!112271 (not b_next!112975))))

(declare-fun tp!1224760 () Bool)

(declare-fun b_and!309661 () Bool)

(assert (=> b!4029694 (= tp!1224760 b_and!309661)))

(declare-fun b!4029676 () Bool)

(declare-fun res!1640235 () Bool)

(declare-fun e!2500233 () Bool)

(assert (=> b!4029676 (=> (not res!1640235) (not e!2500233))))

(declare-datatypes ((LexerInterface!6489 0))(
  ( (LexerInterfaceExt!6486 (__x!26477 Int)) (Lexer!6487) )
))
(declare-fun thiss!21717 () LexerInterface!6489)

(declare-datatypes ((C!23796 0))(
  ( (C!23797 (val!13992 Int)) )
))
(declare-datatypes ((List!43287 0))(
  ( (Nil!43163) (Cons!43163 (h!48583 C!23796) (t!334128 List!43287)) )
))
(declare-datatypes ((IArray!26227 0))(
  ( (IArray!26228 (innerList!13171 List!43287)) )
))
(declare-datatypes ((Conc!13111 0))(
  ( (Node!13111 (left!32515 Conc!13111) (right!32845 Conc!13111) (csize!26452 Int) (cheight!13322 Int)) (Leaf!20268 (xs!16417 IArray!26227) (csize!26453 Int)) (Empty!13111) )
))
(declare-datatypes ((BalanceConc!25816 0))(
  ( (BalanceConc!25817 (c!696100 Conc!13111)) )
))
(declare-datatypes ((List!43288 0))(
  ( (Nil!43164) (Cons!43164 (h!48584 (_ BitVec 16)) (t!334129 List!43288)) )
))
(declare-datatypes ((TokenValue!7130 0))(
  ( (FloatLiteralValue!14260 (text!50355 List!43288)) (TokenValueExt!7129 (__x!26478 Int)) (Broken!35650 (value!217258 List!43288)) (Object!7253) (End!7130) (Def!7130) (Underscore!7130) (Match!7130) (Else!7130) (Error!7130) (Case!7130) (If!7130) (Extends!7130) (Abstract!7130) (Class!7130) (Val!7130) (DelimiterValue!14260 (del!7190 List!43288)) (KeywordValue!7136 (value!217259 List!43288)) (CommentValue!14260 (value!217260 List!43288)) (WhitespaceValue!14260 (value!217261 List!43288)) (IndentationValue!7130 (value!217262 List!43288)) (String!49367) (Int32!7130) (Broken!35651 (value!217263 List!43288)) (Boolean!7131) (Unit!62325) (OperatorValue!7133 (op!7190 List!43288)) (IdentifierValue!14260 (value!217264 List!43288)) (IdentifierValue!14261 (value!217265 List!43288)) (WhitespaceValue!14261 (value!217266 List!43288)) (True!14260) (False!14260) (Broken!35652 (value!217267 List!43288)) (Broken!35653 (value!217268 List!43288)) (True!14261) (RightBrace!7130) (RightBracket!7130) (Colon!7130) (Null!7130) (Comma!7130) (LeftBracket!7130) (False!14261) (LeftBrace!7130) (ImaginaryLiteralValue!7130 (text!50356 List!43288)) (StringLiteralValue!21390 (value!217269 List!43288)) (EOFValue!7130 (value!217270 List!43288)) (IdentValue!7130 (value!217271 List!43288)) (DelimiterValue!14261 (value!217272 List!43288)) (DedentValue!7130 (value!217273 List!43288)) (NewLineValue!7130 (value!217274 List!43288)) (IntegerValue!21390 (value!217275 (_ BitVec 32)) (text!50357 List!43288)) (IntegerValue!21391 (value!217276 Int) (text!50358 List!43288)) (Times!7130) (Or!7130) (Equal!7130) (Minus!7130) (Broken!35654 (value!217277 List!43288)) (And!7130) (Div!7130) (LessEqual!7130) (Mod!7130) (Concat!18935) (Not!7130) (Plus!7130) (SpaceValue!7130 (value!217278 List!43288)) (IntegerValue!21392 (value!217279 Int) (text!50359 List!43288)) (StringLiteralValue!21391 (text!50360 List!43288)) (FloatLiteralValue!14261 (text!50361 List!43288)) (BytesLiteralValue!7130 (value!217280 List!43288)) (CommentValue!14261 (value!217281 List!43288)) (StringLiteralValue!21392 (value!217282 List!43288)) (ErrorTokenValue!7130 (msg!7191 List!43288)) )
))
(declare-datatypes ((Regex!11805 0))(
  ( (ElementMatch!11805 (c!696101 C!23796)) (Concat!18936 (regOne!24122 Regex!11805) (regTwo!24122 Regex!11805)) (EmptyExpr!11805) (Star!11805 (reg!12134 Regex!11805)) (EmptyLang!11805) (Union!11805 (regOne!24123 Regex!11805) (regTwo!24123 Regex!11805)) )
))
(declare-datatypes ((String!49368 0))(
  ( (String!49369 (value!217283 String)) )
))
(declare-datatypes ((TokenValueInjection!13688 0))(
  ( (TokenValueInjection!13689 (toValue!9424 Int) (toChars!9283 Int)) )
))
(declare-datatypes ((Rule!13600 0))(
  ( (Rule!13601 (regex!6900 Regex!11805) (tag!7760 String!49368) (isSeparator!6900 Bool) (transformation!6900 TokenValueInjection!13688)) )
))
(declare-datatypes ((List!43289 0))(
  ( (Nil!43165) (Cons!43165 (h!48585 Rule!13600) (t!334130 List!43289)) )
))
(declare-fun rules!2999 () List!43289)

(declare-fun rulesInvariant!5832 (LexerInterface!6489 List!43289) Bool)

(assert (=> b!4029676 (= res!1640235 (rulesInvariant!5832 thiss!21717 rules!2999))))

(declare-fun b!4029677 () Bool)

(declare-fun e!2500221 () Bool)

(assert (=> b!4029677 (= e!2500233 e!2500221)))

(declare-fun res!1640224 () Bool)

(assert (=> b!4029677 (=> (not res!1640224) (not e!2500221))))

(declare-fun lt!1432182 () Int)

(declare-fun lt!1432197 () Int)

(assert (=> b!4029677 (= res!1640224 (>= lt!1432182 lt!1432197))))

(declare-fun lt!1432173 () List!43287)

(declare-fun size!32261 (List!43287) Int)

(assert (=> b!4029677 (= lt!1432197 (size!32261 lt!1432173))))

(declare-fun prefix!494 () List!43287)

(assert (=> b!4029677 (= lt!1432182 (size!32261 prefix!494))))

(declare-datatypes ((Token!12938 0))(
  ( (Token!12939 (value!217284 TokenValue!7130) (rule!9960 Rule!13600) (size!32262 Int) (originalCharacters!7500 List!43287)) )
))
(declare-fun token!484 () Token!12938)

(declare-fun list!16058 (BalanceConc!25816) List!43287)

(declare-fun charsOf!4716 (Token!12938) BalanceConc!25816)

(assert (=> b!4029677 (= lt!1432173 (list!16058 (charsOf!4716 token!484)))))

(declare-fun b!4029678 () Bool)

(declare-fun e!2500232 () Bool)

(declare-fun e!2500218 () Bool)

(assert (=> b!4029678 (= e!2500232 (not e!2500218))))

(declare-fun res!1640233 () Bool)

(assert (=> b!4029678 (=> res!1640233 e!2500218)))

(declare-fun lt!1432169 () List!43287)

(declare-fun lt!1432184 () List!43287)

(assert (=> b!4029678 (= res!1640233 (not (= lt!1432169 lt!1432184)))))

(declare-fun suffixResult!105 () List!43287)

(declare-fun ++!11302 (List!43287 List!43287) List!43287)

(assert (=> b!4029678 (= lt!1432169 (++!11302 lt!1432173 suffixResult!105))))

(declare-datatypes ((Unit!62326 0))(
  ( (Unit!62327) )
))
(declare-fun lt!1432183 () Unit!62326)

(declare-fun lemmaInv!1109 (TokenValueInjection!13688) Unit!62326)

(assert (=> b!4029678 (= lt!1432183 (lemmaInv!1109 (transformation!6900 (rule!9960 token!484))))))

(declare-fun ruleValid!2830 (LexerInterface!6489 Rule!13600) Bool)

(assert (=> b!4029678 (ruleValid!2830 thiss!21717 (rule!9960 token!484))))

(declare-fun lt!1432188 () Unit!62326)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1900 (LexerInterface!6489 Rule!13600 List!43289) Unit!62326)

(assert (=> b!4029678 (= lt!1432188 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1900 thiss!21717 (rule!9960 token!484) rules!2999))))

(declare-fun b!4029679 () Bool)

(declare-fun e!2500217 () Bool)

(declare-fun tp_is_empty!20581 () Bool)

(declare-fun tp!1224764 () Bool)

(assert (=> b!4029679 (= e!2500217 (and tp_is_empty!20581 tp!1224764))))

(declare-fun b!4029680 () Bool)

(declare-fun res!1640234 () Bool)

(declare-fun e!2500219 () Bool)

(assert (=> b!4029680 (=> (not res!1640234) (not e!2500219))))

(declare-fun lt!1432193 () TokenValue!7130)

(assert (=> b!4029680 (= res!1640234 (= (value!217284 token!484) lt!1432193))))

(declare-fun b!4029681 () Bool)

(declare-fun e!2500224 () Bool)

(assert (=> b!4029681 (= e!2500224 true)))

(declare-fun lt!1432177 () List!43287)

(assert (=> b!4029681 (= suffixResult!105 lt!1432177)))

(declare-fun lt!1432170 () Unit!62326)

(declare-fun lemmaSamePrefixThenSameSuffix!2148 (List!43287 List!43287 List!43287 List!43287 List!43287) Unit!62326)

(assert (=> b!4029681 (= lt!1432170 (lemmaSamePrefixThenSameSuffix!2148 lt!1432173 suffixResult!105 lt!1432173 lt!1432177 lt!1432184))))

(declare-fun lt!1432187 () List!43287)

(declare-fun isPrefix!3987 (List!43287 List!43287) Bool)

(assert (=> b!4029681 (isPrefix!3987 lt!1432173 lt!1432187)))

(declare-fun lt!1432178 () Unit!62326)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2822 (List!43287 List!43287) Unit!62326)

(assert (=> b!4029681 (= lt!1432178 (lemmaConcatTwoListThenFirstIsPrefix!2822 lt!1432173 lt!1432177))))

(declare-fun b!4029682 () Bool)

(declare-fun e!2500222 () Bool)

(declare-fun e!2500229 () Bool)

(declare-fun tp!1224766 () Bool)

(assert (=> b!4029682 (= e!2500222 (and e!2500229 tp!1224766))))

(declare-fun b!4029683 () Bool)

(declare-fun res!1640229 () Bool)

(assert (=> b!4029683 (=> (not res!1640229) (not e!2500233))))

(declare-fun isEmpty!25761 (List!43289) Bool)

(assert (=> b!4029683 (= res!1640229 (not (isEmpty!25761 rules!2999)))))

(declare-fun b!4029684 () Bool)

(declare-fun e!2500228 () Bool)

(declare-fun e!2500226 () Bool)

(assert (=> b!4029684 (= e!2500228 e!2500226)))

(declare-fun res!1640237 () Bool)

(assert (=> b!4029684 (=> res!1640237 e!2500226)))

(declare-fun matchR!5758 (Regex!11805 List!43287) Bool)

(assert (=> b!4029684 (= res!1640237 (not (matchR!5758 (regex!6900 (rule!9960 token!484)) lt!1432173)))))

(declare-fun lt!1432198 () List!43287)

(assert (=> b!4029684 (isPrefix!3987 lt!1432173 lt!1432198)))

(declare-fun newSuffix!27 () List!43287)

(declare-fun lt!1432186 () Unit!62326)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!780 (List!43287 List!43287 List!43287) Unit!62326)

(assert (=> b!4029684 (= lt!1432186 (lemmaPrefixStaysPrefixWhenAddingToSuffix!780 lt!1432173 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!43287)

(declare-fun lt!1432175 () Unit!62326)

(assert (=> b!4029684 (= lt!1432175 (lemmaPrefixStaysPrefixWhenAddingToSuffix!780 lt!1432173 prefix!494 suffix!1299))))

(declare-fun b!4029685 () Bool)

(declare-fun res!1640232 () Bool)

(assert (=> b!4029685 (=> (not res!1640232) (not e!2500233))))

(assert (=> b!4029685 (= res!1640232 (isPrefix!3987 newSuffix!27 suffix!1299))))

(declare-fun b!4029686 () Bool)

(declare-fun e!2500220 () Bool)

(declare-fun tp!1224765 () Bool)

(declare-fun e!2500227 () Bool)

(declare-fun inv!21 (TokenValue!7130) Bool)

(assert (=> b!4029686 (= e!2500227 (and (inv!21 (value!217284 token!484)) e!2500220 tp!1224765))))

(declare-fun b!4029688 () Bool)

(assert (=> b!4029688 (= e!2500226 e!2500224)))

(declare-fun res!1640225 () Bool)

(assert (=> b!4029688 (=> res!1640225 e!2500224)))

(assert (=> b!4029688 (= res!1640225 (not (= lt!1432187 lt!1432184)))))

(assert (=> b!4029688 (= lt!1432187 (++!11302 lt!1432173 lt!1432177))))

(declare-fun getSuffix!2404 (List!43287 List!43287) List!43287)

(assert (=> b!4029688 (= lt!1432177 (getSuffix!2404 lt!1432184 lt!1432173))))

(assert (=> b!4029688 e!2500219))

(declare-fun res!1640238 () Bool)

(assert (=> b!4029688 (=> (not res!1640238) (not e!2500219))))

(assert (=> b!4029688 (= res!1640238 (isPrefix!3987 lt!1432184 lt!1432184))))

(declare-fun lt!1432171 () Unit!62326)

(declare-fun lemmaIsPrefixRefl!2554 (List!43287 List!43287) Unit!62326)

(assert (=> b!4029688 (= lt!1432171 (lemmaIsPrefixRefl!2554 lt!1432184 lt!1432184))))

(declare-fun b!4029689 () Bool)

(declare-fun e!2500240 () Bool)

(assert (=> b!4029689 (= e!2500221 e!2500240)))

(declare-fun res!1640228 () Bool)

(assert (=> b!4029689 (=> (not res!1640228) (not e!2500240))))

(declare-fun lt!1432172 () List!43287)

(assert (=> b!4029689 (= res!1640228 (= lt!1432172 lt!1432198))))

(assert (=> b!4029689 (= lt!1432198 (++!11302 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43287)

(assert (=> b!4029689 (= lt!1432172 (++!11302 lt!1432173 newSuffixResult!27))))

(declare-fun b!4029690 () Bool)

(assert (=> b!4029690 (= e!2500219 (and (= (size!32262 token!484) lt!1432197) (= (originalCharacters!7500 token!484) lt!1432173)))))

(declare-fun b!4029691 () Bool)

(declare-fun e!2500216 () Bool)

(declare-fun e!2500237 () Bool)

(assert (=> b!4029691 (= e!2500216 e!2500237)))

(declare-fun res!1640230 () Bool)

(assert (=> b!4029691 (=> res!1640230 e!2500237)))

(declare-fun lt!1432179 () List!43287)

(assert (=> b!4029691 (= res!1640230 (not (= lt!1432179 prefix!494)))))

(declare-fun lt!1432194 () List!43287)

(assert (=> b!4029691 (= lt!1432179 (++!11302 lt!1432173 lt!1432194))))

(assert (=> b!4029691 (= lt!1432194 (getSuffix!2404 prefix!494 lt!1432173))))

(assert (=> b!4029691 (isPrefix!3987 lt!1432173 prefix!494)))

(declare-fun lt!1432180 () Unit!62326)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!551 (List!43287 List!43287 List!43287) Unit!62326)

(assert (=> b!4029691 (= lt!1432180 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!551 prefix!494 lt!1432173 lt!1432184))))

(declare-fun b!4029692 () Bool)

(declare-fun res!1640226 () Bool)

(assert (=> b!4029692 (=> (not res!1640226) (not e!2500233))))

(assert (=> b!4029692 (= res!1640226 (>= (size!32261 suffix!1299) (size!32261 newSuffix!27)))))

(declare-fun e!2500239 () Bool)

(assert (=> b!4029693 (= e!2500239 (and tp!1224756 tp!1224759))))

(declare-fun e!2500223 () Bool)

(assert (=> b!4029694 (= e!2500223 (and tp!1224761 tp!1224760))))

(declare-fun b!4029695 () Bool)

(declare-fun e!2500231 () Bool)

(declare-fun tp!1224763 () Bool)

(assert (=> b!4029695 (= e!2500231 (and tp_is_empty!20581 tp!1224763))))

(declare-fun b!4029696 () Bool)

(declare-fun e!2500230 () Bool)

(declare-fun tp!1224758 () Bool)

(assert (=> b!4029696 (= e!2500230 (and tp_is_empty!20581 tp!1224758))))

(declare-fun b!4029697 () Bool)

(declare-fun e!2500234 () Bool)

(declare-fun tp!1224762 () Bool)

(assert (=> b!4029697 (= e!2500234 (and tp_is_empty!20581 tp!1224762))))

(declare-fun b!4029698 () Bool)

(declare-fun e!2500235 () Bool)

(assert (=> b!4029698 (= e!2500235 e!2500228)))

(declare-fun res!1640227 () Bool)

(assert (=> b!4029698 (=> res!1640227 e!2500228)))

(declare-datatypes ((tuple2!42254 0))(
  ( (tuple2!42255 (_1!24261 Token!12938) (_2!24261 List!43287)) )
))
(declare-datatypes ((Option!9314 0))(
  ( (None!9313) (Some!9313 (v!39701 tuple2!42254)) )
))
(declare-fun lt!1432196 () Option!9314)

(declare-fun lt!1432191 () Option!9314)

(assert (=> b!4029698 (= res!1640227 (not (= lt!1432196 lt!1432191)))))

(assert (=> b!4029698 (= lt!1432196 (Some!9313 (tuple2!42255 (Token!12939 lt!1432193 (rule!9960 token!484) lt!1432197 lt!1432173) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2799 (LexerInterface!6489 Rule!13600 List!43287) Option!9314)

(assert (=> b!4029698 (= lt!1432196 (maxPrefixOneRule!2799 thiss!21717 (rule!9960 token!484) lt!1432184))))

(declare-fun apply!10089 (TokenValueInjection!13688 BalanceConc!25816) TokenValue!7130)

(declare-fun seqFromList!5117 (List!43287) BalanceConc!25816)

(assert (=> b!4029698 (= lt!1432193 (apply!10089 (transformation!6900 (rule!9960 token!484)) (seqFromList!5117 lt!1432173)))))

(declare-fun lt!1432181 () Unit!62326)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1605 (LexerInterface!6489 List!43289 List!43287 List!43287 List!43287 Rule!13600) Unit!62326)

(assert (=> b!4029698 (= lt!1432181 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1605 thiss!21717 rules!2999 lt!1432173 lt!1432184 suffixResult!105 (rule!9960 token!484)))))

(declare-fun lt!1432189 () List!43287)

(assert (=> b!4029698 (= lt!1432189 suffixResult!105)))

(declare-fun lt!1432174 () Unit!62326)

(assert (=> b!4029698 (= lt!1432174 (lemmaSamePrefixThenSameSuffix!2148 lt!1432173 lt!1432189 lt!1432173 suffixResult!105 lt!1432184))))

(declare-fun lt!1432199 () List!43287)

(assert (=> b!4029698 (isPrefix!3987 lt!1432173 lt!1432199)))

(declare-fun lt!1432190 () Unit!62326)

(assert (=> b!4029698 (= lt!1432190 (lemmaConcatTwoListThenFirstIsPrefix!2822 lt!1432173 lt!1432189))))

(declare-fun b!4029699 () Bool)

(assert (=> b!4029699 (= e!2500240 e!2500232)))

(declare-fun res!1640240 () Bool)

(assert (=> b!4029699 (=> (not res!1640240) (not e!2500232))))

(declare-fun maxPrefix!3787 (LexerInterface!6489 List!43289 List!43287) Option!9314)

(assert (=> b!4029699 (= res!1640240 (= (maxPrefix!3787 thiss!21717 rules!2999 lt!1432184) lt!1432191))))

(assert (=> b!4029699 (= lt!1432191 (Some!9313 (tuple2!42255 token!484 suffixResult!105)))))

(assert (=> b!4029699 (= lt!1432184 (++!11302 prefix!494 suffix!1299))))

(declare-fun b!4029700 () Bool)

(declare-fun res!1640231 () Bool)

(assert (=> b!4029700 (=> (not res!1640231) (not e!2500219))))

(assert (=> b!4029700 (= res!1640231 (= (size!32262 token!484) (size!32261 (originalCharacters!7500 token!484))))))

(declare-fun b!4029701 () Bool)

(declare-fun tp!1224754 () Bool)

(declare-fun inv!57661 (String!49368) Bool)

(declare-fun inv!57664 (TokenValueInjection!13688) Bool)

(assert (=> b!4029701 (= e!2500229 (and tp!1224754 (inv!57661 (tag!7760 (h!48585 rules!2999))) (inv!57664 (transformation!6900 (h!48585 rules!2999))) e!2500239))))

(declare-fun res!1640236 () Bool)

(assert (=> start!379632 (=> (not res!1640236) (not e!2500233))))

(get-info :version)

(assert (=> start!379632 (= res!1640236 ((_ is Lexer!6487) thiss!21717))))

(assert (=> start!379632 e!2500233))

(assert (=> start!379632 e!2500234))

(declare-fun inv!57665 (Token!12938) Bool)

(assert (=> start!379632 (and (inv!57665 token!484) e!2500227)))

(declare-fun e!2500215 () Bool)

(assert (=> start!379632 e!2500215))

(assert (=> start!379632 e!2500230))

(assert (=> start!379632 e!2500231))

(assert (=> start!379632 true))

(assert (=> start!379632 e!2500222))

(assert (=> start!379632 e!2500217))

(declare-fun b!4029687 () Bool)

(assert (=> b!4029687 (= e!2500237 e!2500235)))

(declare-fun res!1640241 () Bool)

(assert (=> b!4029687 (=> res!1640241 e!2500235)))

(declare-fun lt!1432185 () List!43287)

(assert (=> b!4029687 (= res!1640241 (or (not (= lt!1432184 lt!1432185)) (not (= lt!1432184 lt!1432199))))))

(assert (=> b!4029687 (= lt!1432185 lt!1432199)))

(assert (=> b!4029687 (= lt!1432199 (++!11302 lt!1432173 lt!1432189))))

(assert (=> b!4029687 (= lt!1432185 (++!11302 lt!1432179 suffix!1299))))

(assert (=> b!4029687 (= lt!1432189 (++!11302 lt!1432194 suffix!1299))))

(declare-fun lt!1432195 () Unit!62326)

(declare-fun lemmaConcatAssociativity!2604 (List!43287 List!43287 List!43287) Unit!62326)

(assert (=> b!4029687 (= lt!1432195 (lemmaConcatAssociativity!2604 lt!1432173 lt!1432194 suffix!1299))))

(declare-fun b!4029702 () Bool)

(declare-fun tp!1224757 () Bool)

(assert (=> b!4029702 (= e!2500220 (and tp!1224757 (inv!57661 (tag!7760 (rule!9960 token!484))) (inv!57664 (transformation!6900 (rule!9960 token!484))) e!2500223))))

(declare-fun b!4029703 () Bool)

(assert (=> b!4029703 (= e!2500218 e!2500216)))

(declare-fun res!1640239 () Bool)

(assert (=> b!4029703 (=> res!1640239 e!2500216)))

(assert (=> b!4029703 (= res!1640239 (not (isPrefix!3987 lt!1432173 lt!1432184)))))

(assert (=> b!4029703 (isPrefix!3987 prefix!494 lt!1432184)))

(declare-fun lt!1432176 () Unit!62326)

(assert (=> b!4029703 (= lt!1432176 (lemmaConcatTwoListThenFirstIsPrefix!2822 prefix!494 suffix!1299))))

(assert (=> b!4029703 (isPrefix!3987 lt!1432173 lt!1432169)))

(declare-fun lt!1432192 () Unit!62326)

(assert (=> b!4029703 (= lt!1432192 (lemmaConcatTwoListThenFirstIsPrefix!2822 lt!1432173 suffixResult!105))))

(declare-fun b!4029704 () Bool)

(declare-fun tp!1224755 () Bool)

(assert (=> b!4029704 (= e!2500215 (and tp_is_empty!20581 tp!1224755))))

(assert (= (and start!379632 res!1640236) b!4029683))

(assert (= (and b!4029683 res!1640229) b!4029676))

(assert (= (and b!4029676 res!1640235) b!4029692))

(assert (= (and b!4029692 res!1640226) b!4029685))

(assert (= (and b!4029685 res!1640232) b!4029677))

(assert (= (and b!4029677 res!1640224) b!4029689))

(assert (= (and b!4029689 res!1640228) b!4029699))

(assert (= (and b!4029699 res!1640240) b!4029678))

(assert (= (and b!4029678 (not res!1640233)) b!4029703))

(assert (= (and b!4029703 (not res!1640239)) b!4029691))

(assert (= (and b!4029691 (not res!1640230)) b!4029687))

(assert (= (and b!4029687 (not res!1640241)) b!4029698))

(assert (= (and b!4029698 (not res!1640227)) b!4029684))

(assert (= (and b!4029684 (not res!1640237)) b!4029688))

(assert (= (and b!4029688 res!1640238) b!4029680))

(assert (= (and b!4029680 res!1640234) b!4029700))

(assert (= (and b!4029700 res!1640231) b!4029690))

(assert (= (and b!4029688 (not res!1640225)) b!4029681))

(assert (= (and start!379632 ((_ is Cons!43163) prefix!494)) b!4029697))

(assert (= b!4029702 b!4029694))

(assert (= b!4029686 b!4029702))

(assert (= start!379632 b!4029686))

(assert (= (and start!379632 ((_ is Cons!43163) suffixResult!105)) b!4029704))

(assert (= (and start!379632 ((_ is Cons!43163) suffix!1299)) b!4029696))

(assert (= (and start!379632 ((_ is Cons!43163) newSuffix!27)) b!4029695))

(assert (= b!4029701 b!4029693))

(assert (= b!4029682 b!4029701))

(assert (= (and start!379632 ((_ is Cons!43165) rules!2999)) b!4029682))

(assert (= (and start!379632 ((_ is Cons!43163) newSuffixResult!27)) b!4029679))

(declare-fun m!4621595 () Bool)

(assert (=> b!4029681 m!4621595))

(declare-fun m!4621597 () Bool)

(assert (=> b!4029681 m!4621597))

(declare-fun m!4621599 () Bool)

(assert (=> b!4029681 m!4621599))

(declare-fun m!4621601 () Bool)

(assert (=> b!4029691 m!4621601))

(declare-fun m!4621603 () Bool)

(assert (=> b!4029691 m!4621603))

(declare-fun m!4621605 () Bool)

(assert (=> b!4029691 m!4621605))

(declare-fun m!4621607 () Bool)

(assert (=> b!4029691 m!4621607))

(declare-fun m!4621609 () Bool)

(assert (=> b!4029701 m!4621609))

(declare-fun m!4621611 () Bool)

(assert (=> b!4029701 m!4621611))

(declare-fun m!4621613 () Bool)

(assert (=> b!4029700 m!4621613))

(declare-fun m!4621615 () Bool)

(assert (=> b!4029698 m!4621615))

(assert (=> b!4029698 m!4621615))

(declare-fun m!4621617 () Bool)

(assert (=> b!4029698 m!4621617))

(declare-fun m!4621619 () Bool)

(assert (=> b!4029698 m!4621619))

(declare-fun m!4621621 () Bool)

(assert (=> b!4029698 m!4621621))

(declare-fun m!4621623 () Bool)

(assert (=> b!4029698 m!4621623))

(declare-fun m!4621625 () Bool)

(assert (=> b!4029698 m!4621625))

(declare-fun m!4621627 () Bool)

(assert (=> b!4029698 m!4621627))

(declare-fun m!4621629 () Bool)

(assert (=> b!4029676 m!4621629))

(declare-fun m!4621631 () Bool)

(assert (=> start!379632 m!4621631))

(declare-fun m!4621633 () Bool)

(assert (=> b!4029692 m!4621633))

(declare-fun m!4621635 () Bool)

(assert (=> b!4029692 m!4621635))

(declare-fun m!4621637 () Bool)

(assert (=> b!4029703 m!4621637))

(declare-fun m!4621639 () Bool)

(assert (=> b!4029703 m!4621639))

(declare-fun m!4621641 () Bool)

(assert (=> b!4029703 m!4621641))

(declare-fun m!4621643 () Bool)

(assert (=> b!4029703 m!4621643))

(declare-fun m!4621645 () Bool)

(assert (=> b!4029703 m!4621645))

(declare-fun m!4621647 () Bool)

(assert (=> b!4029683 m!4621647))

(declare-fun m!4621649 () Bool)

(assert (=> b!4029678 m!4621649))

(declare-fun m!4621651 () Bool)

(assert (=> b!4029678 m!4621651))

(declare-fun m!4621653 () Bool)

(assert (=> b!4029678 m!4621653))

(declare-fun m!4621655 () Bool)

(assert (=> b!4029678 m!4621655))

(declare-fun m!4621657 () Bool)

(assert (=> b!4029677 m!4621657))

(declare-fun m!4621659 () Bool)

(assert (=> b!4029677 m!4621659))

(declare-fun m!4621661 () Bool)

(assert (=> b!4029677 m!4621661))

(assert (=> b!4029677 m!4621661))

(declare-fun m!4621663 () Bool)

(assert (=> b!4029677 m!4621663))

(declare-fun m!4621665 () Bool)

(assert (=> b!4029685 m!4621665))

(declare-fun m!4621667 () Bool)

(assert (=> b!4029688 m!4621667))

(declare-fun m!4621669 () Bool)

(assert (=> b!4029688 m!4621669))

(declare-fun m!4621671 () Bool)

(assert (=> b!4029688 m!4621671))

(declare-fun m!4621673 () Bool)

(assert (=> b!4029688 m!4621673))

(declare-fun m!4621675 () Bool)

(assert (=> b!4029687 m!4621675))

(declare-fun m!4621677 () Bool)

(assert (=> b!4029687 m!4621677))

(declare-fun m!4621679 () Bool)

(assert (=> b!4029687 m!4621679))

(declare-fun m!4621681 () Bool)

(assert (=> b!4029687 m!4621681))

(declare-fun m!4621683 () Bool)

(assert (=> b!4029684 m!4621683))

(declare-fun m!4621685 () Bool)

(assert (=> b!4029684 m!4621685))

(declare-fun m!4621687 () Bool)

(assert (=> b!4029684 m!4621687))

(declare-fun m!4621689 () Bool)

(assert (=> b!4029684 m!4621689))

(declare-fun m!4621691 () Bool)

(assert (=> b!4029686 m!4621691))

(declare-fun m!4621693 () Bool)

(assert (=> b!4029702 m!4621693))

(declare-fun m!4621695 () Bool)

(assert (=> b!4029702 m!4621695))

(declare-fun m!4621697 () Bool)

(assert (=> b!4029699 m!4621697))

(declare-fun m!4621699 () Bool)

(assert (=> b!4029699 m!4621699))

(declare-fun m!4621701 () Bool)

(assert (=> b!4029689 m!4621701))

(declare-fun m!4621703 () Bool)

(assert (=> b!4029689 m!4621703))

(check-sat (not b!4029685) b_and!309655 (not b!4029704) (not b!4029695) (not b!4029681) (not b_next!112971) (not b!4029700) (not b_next!112973) (not b!4029686) (not b!4029688) (not b!4029702) (not b!4029677) (not b!4029676) (not b!4029684) (not b_next!112975) (not b_next!112969) (not b!4029678) (not start!379632) (not b!4029699) (not b!4029692) b_and!309661 (not b!4029687) b_and!309657 (not b!4029701) (not b!4029703) (not b!4029682) tp_is_empty!20581 (not b!4029683) (not b!4029697) (not b!4029698) (not b!4029691) (not b!4029679) b_and!309659 (not b!4029689) (not b!4029696))
(check-sat b_and!309655 b_and!309661 (not b_next!112971) (not b_next!112973) b_and!309657 b_and!309659 (not b_next!112975) (not b_next!112969))
