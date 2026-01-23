; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170506 () Bool)

(assert start!170506)

(declare-fun b!1733230 () Bool)

(declare-fun b_free!47443 () Bool)

(declare-fun b_next!48147 () Bool)

(assert (=> b!1733230 (= b_free!47443 (not b_next!48147))))

(declare-fun tp!494056 () Bool)

(declare-fun b_and!127999 () Bool)

(assert (=> b!1733230 (= tp!494056 b_and!127999)))

(declare-fun b_free!47445 () Bool)

(declare-fun b_next!48149 () Bool)

(assert (=> b!1733230 (= b_free!47445 (not b_next!48149))))

(declare-fun tp!494052 () Bool)

(declare-fun b_and!128001 () Bool)

(assert (=> b!1733230 (= tp!494052 b_and!128001)))

(declare-fun b!1733239 () Bool)

(declare-fun b_free!47447 () Bool)

(declare-fun b_next!48151 () Bool)

(assert (=> b!1733239 (= b_free!47447 (not b_next!48151))))

(declare-fun tp!494054 () Bool)

(declare-fun b_and!128003 () Bool)

(assert (=> b!1733239 (= tp!494054 b_and!128003)))

(declare-fun b_free!47449 () Bool)

(declare-fun b_next!48153 () Bool)

(assert (=> b!1733239 (= b_free!47449 (not b_next!48153))))

(declare-fun tp!494046 () Bool)

(declare-fun b_and!128005 () Bool)

(assert (=> b!1733239 (= tp!494046 b_and!128005)))

(declare-fun b!1733235 () Bool)

(declare-fun b_free!47451 () Bool)

(declare-fun b_next!48155 () Bool)

(assert (=> b!1733235 (= b_free!47451 (not b_next!48155))))

(declare-fun tp!494045 () Bool)

(declare-fun b_and!128007 () Bool)

(assert (=> b!1733235 (= tp!494045 b_and!128007)))

(declare-fun b_free!47453 () Bool)

(declare-fun b_next!48157 () Bool)

(assert (=> b!1733235 (= b_free!47453 (not b_next!48157))))

(declare-fun tp!494049 () Bool)

(declare-fun b_and!128009 () Bool)

(assert (=> b!1733235 (= tp!494049 b_and!128009)))

(declare-fun b!1733270 () Bool)

(declare-fun e!1108949 () Bool)

(assert (=> b!1733270 (= e!1108949 true)))

(declare-fun b!1733269 () Bool)

(declare-fun e!1108948 () Bool)

(assert (=> b!1733269 (= e!1108948 e!1108949)))

(declare-fun b!1733268 () Bool)

(declare-fun e!1108947 () Bool)

(assert (=> b!1733268 (= e!1108947 e!1108948)))

(declare-fun b!1733237 () Bool)

(assert (=> b!1733237 e!1108947))

(assert (= b!1733269 b!1733270))

(assert (= b!1733268 b!1733269))

(assert (= b!1733237 b!1733268))

(declare-fun order!11745 () Int)

(declare-fun order!11743 () Int)

(declare-datatypes ((List!19079 0))(
  ( (Nil!19009) (Cons!19009 (h!24410 (_ BitVec 16)) (t!160966 List!19079)) )
))
(declare-datatypes ((TokenValue!3465 0))(
  ( (FloatLiteralValue!6930 (text!24700 List!19079)) (TokenValueExt!3464 (__x!12232 Int)) (Broken!17325 (value!105834 List!19079)) (Object!3534) (End!3465) (Def!3465) (Underscore!3465) (Match!3465) (Else!3465) (Error!3465) (Case!3465) (If!3465) (Extends!3465) (Abstract!3465) (Class!3465) (Val!3465) (DelimiterValue!6930 (del!3525 List!19079)) (KeywordValue!3471 (value!105835 List!19079)) (CommentValue!6930 (value!105836 List!19079)) (WhitespaceValue!6930 (value!105837 List!19079)) (IndentationValue!3465 (value!105838 List!19079)) (String!21656) (Int32!3465) (Broken!17326 (value!105839 List!19079)) (Boolean!3466) (Unit!32870) (OperatorValue!3468 (op!3525 List!19079)) (IdentifierValue!6930 (value!105840 List!19079)) (IdentifierValue!6931 (value!105841 List!19079)) (WhitespaceValue!6931 (value!105842 List!19079)) (True!6930) (False!6930) (Broken!17327 (value!105843 List!19079)) (Broken!17328 (value!105844 List!19079)) (True!6931) (RightBrace!3465) (RightBracket!3465) (Colon!3465) (Null!3465) (Comma!3465) (LeftBracket!3465) (False!6931) (LeftBrace!3465) (ImaginaryLiteralValue!3465 (text!24701 List!19079)) (StringLiteralValue!10395 (value!105845 List!19079)) (EOFValue!3465 (value!105846 List!19079)) (IdentValue!3465 (value!105847 List!19079)) (DelimiterValue!6931 (value!105848 List!19079)) (DedentValue!3465 (value!105849 List!19079)) (NewLineValue!3465 (value!105850 List!19079)) (IntegerValue!10395 (value!105851 (_ BitVec 32)) (text!24702 List!19079)) (IntegerValue!10396 (value!105852 Int) (text!24703 List!19079)) (Times!3465) (Or!3465) (Equal!3465) (Minus!3465) (Broken!17329 (value!105853 List!19079)) (And!3465) (Div!3465) (LessEqual!3465) (Mod!3465) (Concat!8168) (Not!3465) (Plus!3465) (SpaceValue!3465 (value!105854 List!19079)) (IntegerValue!10397 (value!105855 Int) (text!24704 List!19079)) (StringLiteralValue!10396 (text!24705 List!19079)) (FloatLiteralValue!6931 (text!24706 List!19079)) (BytesLiteralValue!3465 (value!105856 List!19079)) (CommentValue!6931 (value!105857 List!19079)) (StringLiteralValue!10397 (value!105858 List!19079)) (ErrorTokenValue!3465 (msg!3526 List!19079)) )
))
(declare-datatypes ((C!9580 0))(
  ( (C!9581 (val!5386 Int)) )
))
(declare-datatypes ((Regex!4703 0))(
  ( (ElementMatch!4703 (c!283068 C!9580)) (Concat!8169 (regOne!9918 Regex!4703) (regTwo!9918 Regex!4703)) (EmptyExpr!4703) (Star!4703 (reg!5032 Regex!4703)) (EmptyLang!4703) (Union!4703 (regOne!9919 Regex!4703) (regTwo!9919 Regex!4703)) )
))
(declare-datatypes ((String!21657 0))(
  ( (String!21658 (value!105859 String)) )
))
(declare-datatypes ((List!19080 0))(
  ( (Nil!19010) (Cons!19010 (h!24411 C!9580) (t!160967 List!19080)) )
))
(declare-datatypes ((IArray!12651 0))(
  ( (IArray!12652 (innerList!6383 List!19080)) )
))
(declare-datatypes ((Conc!6323 0))(
  ( (Node!6323 (left!15184 Conc!6323) (right!15514 Conc!6323) (csize!12876 Int) (cheight!6534 Int)) (Leaf!9231 (xs!9199 IArray!12651) (csize!12877 Int)) (Empty!6323) )
))
(declare-datatypes ((BalanceConc!12590 0))(
  ( (BalanceConc!12591 (c!283069 Conc!6323)) )
))
(declare-datatypes ((TokenValueInjection!6590 0))(
  ( (TokenValueInjection!6591 (toValue!4882 Int) (toChars!4741 Int)) )
))
(declare-datatypes ((Rule!6550 0))(
  ( (Rule!6551 (regex!3375 Regex!4703) (tag!3705 String!21657) (isSeparator!3375 Bool) (transformation!3375 TokenValueInjection!6590)) )
))
(declare-datatypes ((Token!6316 0))(
  ( (Token!6317 (value!105860 TokenValue!3465) (rule!5361 Rule!6550) (size!15102 Int) (originalCharacters!4189 List!19080)) )
))
(declare-datatypes ((tuple2!18686 0))(
  ( (tuple2!18687 (_1!10745 Token!6316) (_2!10745 List!19080)) )
))
(declare-fun lt!665389 () tuple2!18686)

(declare-fun lambda!69428 () Int)

(declare-fun dynLambda!8882 (Int Int) Int)

(declare-fun dynLambda!8883 (Int Int) Int)

(assert (=> b!1733270 (< (dynLambda!8882 order!11743 (toValue!4882 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) (dynLambda!8883 order!11745 lambda!69428))))

(declare-fun order!11747 () Int)

(declare-fun dynLambda!8884 (Int Int) Int)

(assert (=> b!1733270 (< (dynLambda!8884 order!11747 (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) (dynLambda!8883 order!11745 lambda!69428))))

(declare-fun b!1733228 () Bool)

(declare-fun e!1108933 () Bool)

(declare-fun e!1108937 () Bool)

(assert (=> b!1733228 (= e!1108933 e!1108937)))

(declare-fun res!778645 () Bool)

(assert (=> b!1733228 (=> res!778645 e!1108937)))

(declare-datatypes ((Option!3774 0))(
  ( (None!3773) (Some!3773 (v!25196 tuple2!18686)) )
))
(declare-fun lt!665373 () Option!3774)

(declare-fun lt!665400 () List!19080)

(assert (=> b!1733228 (= res!778645 (or (not (= lt!665400 (_2!10745 lt!665389))) (not (= lt!665373 (Some!3773 (tuple2!18687 (_1!10745 lt!665389) lt!665400))))))))

(assert (=> b!1733228 (= (_2!10745 lt!665389) lt!665400)))

(declare-fun lt!665387 () List!19080)

(declare-datatypes ((Unit!32871 0))(
  ( (Unit!32872) )
))
(declare-fun lt!665379 () Unit!32871)

(declare-fun lt!665385 () List!19080)

(declare-fun lemmaSamePrefixThenSameSuffix!760 (List!19080 List!19080 List!19080 List!19080 List!19080) Unit!32871)

(assert (=> b!1733228 (= lt!665379 (lemmaSamePrefixThenSameSuffix!760 lt!665385 (_2!10745 lt!665389) lt!665385 lt!665400 lt!665387))))

(declare-fun getSuffix!810 (List!19080 List!19080) List!19080)

(assert (=> b!1733228 (= lt!665400 (getSuffix!810 lt!665387 lt!665385))))

(declare-fun lt!665401 () TokenValue!3465)

(declare-fun lt!665374 () Int)

(assert (=> b!1733228 (= lt!665373 (Some!3773 (tuple2!18687 (Token!6317 lt!665401 (rule!5361 (_1!10745 lt!665389)) lt!665374 lt!665385) (_2!10745 lt!665389))))))

(declare-datatypes ((LexerInterface!3004 0))(
  ( (LexerInterfaceExt!3001 (__x!12233 Int)) (Lexer!3002) )
))
(declare-fun thiss!24550 () LexerInterface!3004)

(declare-fun maxPrefixOneRule!934 (LexerInterface!3004 Rule!6550 List!19080) Option!3774)

(assert (=> b!1733228 (= lt!665373 (maxPrefixOneRule!934 thiss!24550 (rule!5361 (_1!10745 lt!665389)) lt!665387))))

(declare-fun size!15103 (List!19080) Int)

(assert (=> b!1733228 (= lt!665374 (size!15103 lt!665385))))

(declare-fun apply!5180 (TokenValueInjection!6590 BalanceConc!12590) TokenValue!3465)

(declare-fun seqFromList!2349 (List!19080) BalanceConc!12590)

(assert (=> b!1733228 (= lt!665401 (apply!5180 (transformation!3375 (rule!5361 (_1!10745 lt!665389))) (seqFromList!2349 lt!665385)))))

(declare-datatypes ((List!19081 0))(
  ( (Nil!19011) (Cons!19011 (h!24412 Rule!6550) (t!160968 List!19081)) )
))
(declare-fun rules!3447 () List!19081)

(declare-fun lt!665402 () Unit!32871)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!333 (LexerInterface!3004 List!19081 List!19080 List!19080 List!19080 Rule!6550) Unit!32871)

(assert (=> b!1733228 (= lt!665402 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!333 thiss!24550 rules!3447 lt!665385 lt!665387 (_2!10745 lt!665389) (rule!5361 (_1!10745 lt!665389))))))

(declare-fun b!1733229 () Bool)

(declare-fun e!1108925 () Bool)

(declare-fun e!1108931 () Bool)

(assert (=> b!1733229 (= e!1108925 e!1108931)))

(declare-fun res!778636 () Bool)

(assert (=> b!1733229 (=> res!778636 e!1108931)))

(declare-fun isPrefix!1616 (List!19080 List!19080) Bool)

(assert (=> b!1733229 (= res!778636 (not (isPrefix!1616 lt!665385 lt!665387)))))

(declare-fun ++!5200 (List!19080 List!19080) List!19080)

(assert (=> b!1733229 (isPrefix!1616 lt!665385 (++!5200 lt!665385 (_2!10745 lt!665389)))))

(declare-fun lt!665368 () Unit!32871)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1126 (List!19080 List!19080) Unit!32871)

(assert (=> b!1733229 (= lt!665368 (lemmaConcatTwoListThenFirstIsPrefix!1126 lt!665385 (_2!10745 lt!665389)))))

(declare-fun lt!665371 () BalanceConc!12590)

(declare-fun list!7688 (BalanceConc!12590) List!19080)

(assert (=> b!1733229 (= lt!665385 (list!7688 lt!665371))))

(declare-fun charsOf!2024 (Token!6316) BalanceConc!12590)

(assert (=> b!1733229 (= lt!665371 (charsOf!2024 (_1!10745 lt!665389)))))

(declare-fun e!1108920 () Bool)

(assert (=> b!1733229 e!1108920))

(declare-fun res!778632 () Bool)

(assert (=> b!1733229 (=> (not res!778632) (not e!1108920))))

(declare-datatypes ((Option!3775 0))(
  ( (None!3774) (Some!3774 (v!25197 Rule!6550)) )
))
(declare-fun lt!665388 () Option!3775)

(declare-fun isDefined!3117 (Option!3775) Bool)

(assert (=> b!1733229 (= res!778632 (isDefined!3117 lt!665388))))

(declare-fun getRuleFromTag!425 (LexerInterface!3004 List!19081 String!21657) Option!3775)

(assert (=> b!1733229 (= lt!665388 (getRuleFromTag!425 thiss!24550 rules!3447 (tag!3705 (rule!5361 (_1!10745 lt!665389)))))))

(declare-fun lt!665390 () Unit!32871)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!425 (LexerInterface!3004 List!19081 List!19080 Token!6316) Unit!32871)

(assert (=> b!1733229 (= lt!665390 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!425 thiss!24550 rules!3447 lt!665387 (_1!10745 lt!665389)))))

(declare-fun lt!665394 () Option!3774)

(declare-fun get!5679 (Option!3774) tuple2!18686)

(assert (=> b!1733229 (= lt!665389 (get!5679 lt!665394))))

(declare-fun suffix!1421 () List!19080)

(declare-fun lt!665391 () List!19080)

(declare-fun lt!665377 () Unit!32871)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!528 (LexerInterface!3004 List!19081 List!19080 List!19080) Unit!32871)

(assert (=> b!1733229 (= lt!665377 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!528 thiss!24550 rules!3447 lt!665391 suffix!1421))))

(declare-fun maxPrefix!1558 (LexerInterface!3004 List!19081 List!19080) Option!3774)

(assert (=> b!1733229 (= lt!665394 (maxPrefix!1558 thiss!24550 rules!3447 lt!665387))))

(assert (=> b!1733229 (isPrefix!1616 lt!665391 lt!665387)))

(declare-fun lt!665381 () Unit!32871)

(assert (=> b!1733229 (= lt!665381 (lemmaConcatTwoListThenFirstIsPrefix!1126 lt!665391 suffix!1421))))

(assert (=> b!1733229 (= lt!665387 (++!5200 lt!665391 suffix!1421))))

(declare-fun e!1108927 () Bool)

(assert (=> b!1733230 (= e!1108927 (and tp!494056 tp!494052))))

(declare-fun token!523 () Token!6316)

(declare-fun e!1108922 () Bool)

(declare-fun tp!494048 () Bool)

(declare-fun e!1108924 () Bool)

(declare-fun b!1733231 () Bool)

(declare-fun inv!24590 (String!21657) Bool)

(declare-fun inv!24595 (TokenValueInjection!6590) Bool)

(assert (=> b!1733231 (= e!1108922 (and tp!494048 (inv!24590 (tag!3705 (rule!5361 token!523))) (inv!24595 (transformation!3375 (rule!5361 token!523))) e!1108924))))

(declare-fun b!1733233 () Bool)

(declare-fun res!778646 () Bool)

(declare-fun e!1108932 () Bool)

(assert (=> b!1733233 (=> (not res!778646) (not e!1108932))))

(declare-fun rule!422 () Rule!6550)

(assert (=> b!1733233 (= res!778646 (= (rule!5361 token!523) rule!422))))

(declare-fun b!1733234 () Bool)

(declare-fun e!1108914 () Bool)

(declare-fun e!1108928 () Bool)

(assert (=> b!1733234 (= e!1108914 e!1108928)))

(declare-fun res!778644 () Bool)

(assert (=> b!1733234 (=> res!778644 e!1108928)))

(declare-fun lt!665393 () List!19080)

(assert (=> b!1733234 (= res!778644 (not (isPrefix!1616 lt!665393 lt!665387)))))

(declare-fun lt!665367 () List!19080)

(declare-fun head!3948 (List!19080) C!9580)

(assert (=> b!1733234 (isPrefix!1616 (++!5200 lt!665391 (Cons!19010 (head!3948 lt!665367) Nil!19010)) lt!665387)))

(declare-fun lt!665386 () Unit!32871)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!211 (List!19080 List!19080) Unit!32871)

(assert (=> b!1733234 (= lt!665386 (lemmaAddHeadSuffixToPrefixStillPrefix!211 lt!665391 lt!665387))))

(declare-fun e!1108934 () Bool)

(assert (=> b!1733235 (= e!1108934 (and tp!494045 tp!494049))))

(declare-fun b!1733236 () Bool)

(declare-fun e!1108936 () Bool)

(assert (=> b!1733236 (= e!1108932 (not e!1108936))))

(declare-fun res!778633 () Bool)

(assert (=> b!1733236 (=> res!778633 e!1108936)))

(declare-fun matchR!2177 (Regex!4703 List!19080) Bool)

(assert (=> b!1733236 (= res!778633 (not (matchR!2177 (regex!3375 rule!422) lt!665391)))))

(declare-fun ruleValid!874 (LexerInterface!3004 Rule!6550) Bool)

(assert (=> b!1733236 (ruleValid!874 thiss!24550 rule!422)))

(declare-fun lt!665378 () Unit!32871)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!398 (LexerInterface!3004 Rule!6550 List!19081) Unit!32871)

(assert (=> b!1733236 (= lt!665378 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!398 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1108921 () Bool)

(assert (=> b!1733237 (= e!1108931 e!1108921)))

(declare-fun res!778641 () Bool)

(assert (=> b!1733237 (=> res!778641 e!1108921)))

(declare-fun Forall!750 (Int) Bool)

(assert (=> b!1733237 (= res!778641 (not (Forall!750 lambda!69428)))))

(declare-fun lt!665372 () Unit!32871)

(declare-fun lemmaInv!582 (TokenValueInjection!6590) Unit!32871)

(assert (=> b!1733237 (= lt!665372 (lemmaInv!582 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))))))

(declare-fun b!1733238 () Bool)

(declare-fun res!778652 () Bool)

(assert (=> b!1733238 (=> res!778652 e!1108936)))

(declare-fun isEmpty!11961 (List!19080) Bool)

(assert (=> b!1733238 (= res!778652 (isEmpty!11961 suffix!1421))))

(assert (=> b!1733239 (= e!1108924 (and tp!494054 tp!494046))))

(declare-fun b!1733240 () Bool)

(declare-fun e!1108913 () Bool)

(declare-fun lt!665380 () Rule!6550)

(assert (=> b!1733240 (= e!1108913 (= (rule!5361 (_1!10745 lt!665389)) lt!665380))))

(declare-fun e!1108916 () Bool)

(declare-fun tp!494051 () Bool)

(declare-fun b!1733241 () Bool)

(declare-fun inv!21 (TokenValue!3465) Bool)

(assert (=> b!1733241 (= e!1108916 (and (inv!21 (value!105860 token!523)) e!1108922 tp!494051))))

(declare-fun b!1733242 () Bool)

(declare-fun e!1108926 () Bool)

(declare-fun tp_is_empty!7649 () Bool)

(declare-fun tp!494053 () Bool)

(assert (=> b!1733242 (= e!1108926 (and tp_is_empty!7649 tp!494053))))

(declare-fun b!1733243 () Bool)

(assert (=> b!1733243 (= e!1108928 true)))

(assert (=> b!1733243 (isPrefix!1616 lt!665393 lt!665385)))

(declare-fun lt!665396 () Unit!32871)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!91 (List!19080 List!19080 List!19080) Unit!32871)

(assert (=> b!1733243 (= lt!665396 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!91 lt!665385 lt!665393 lt!665387))))

(declare-fun b!1733244 () Bool)

(declare-fun res!778642 () Bool)

(declare-fun e!1108918 () Bool)

(assert (=> b!1733244 (=> (not res!778642) (not e!1108918))))

(declare-fun contains!3397 (List!19081 Rule!6550) Bool)

(assert (=> b!1733244 (= res!778642 (contains!3397 rules!3447 rule!422))))

(declare-fun b!1733245 () Bool)

(declare-fun e!1108923 () Bool)

(assert (=> b!1733245 (= e!1108937 e!1108923)))

(declare-fun res!778643 () Bool)

(assert (=> b!1733245 (=> res!778643 e!1108923)))

(declare-fun lt!665369 () Int)

(declare-fun lt!665383 () BalanceConc!12590)

(declare-fun size!15104 (BalanceConc!12590) Int)

(assert (=> b!1733245 (= res!778643 (<= lt!665369 (size!15104 lt!665383)))))

(declare-fun lt!665395 () Regex!4703)

(assert (=> b!1733245 (matchR!2177 lt!665395 lt!665391)))

(declare-fun lt!665382 () Unit!32871)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!124 (LexerInterface!3004 List!19081 List!19080 Token!6316 Rule!6550 List!19080) Unit!32871)

(assert (=> b!1733245 (= lt!665382 (lemmaMaxPrefixThenMatchesRulesRegex!124 thiss!24550 rules!3447 lt!665391 token!523 rule!422 Nil!19010))))

(declare-fun b!1733246 () Bool)

(declare-fun e!1108929 () Bool)

(declare-fun e!1108915 () Bool)

(declare-fun tp!494055 () Bool)

(assert (=> b!1733246 (= e!1108929 (and e!1108915 tp!494055))))

(declare-fun b!1733247 () Bool)

(assert (=> b!1733247 (= e!1108923 e!1108914)))

(declare-fun res!778640 () Bool)

(assert (=> b!1733247 (=> res!778640 e!1108914)))

(assert (=> b!1733247 (= res!778640 (not (= lt!665367 suffix!1421)))))

(assert (=> b!1733247 (= suffix!1421 lt!665367)))

(declare-fun lt!665399 () Unit!32871)

(assert (=> b!1733247 (= lt!665399 (lemmaSamePrefixThenSameSuffix!760 lt!665391 suffix!1421 lt!665391 lt!665367 lt!665387))))

(assert (=> b!1733247 (= lt!665367 (getSuffix!810 lt!665387 lt!665391))))

(assert (=> b!1733247 (matchR!2177 lt!665395 lt!665385)))

(declare-fun lt!665375 () Unit!32871)

(assert (=> b!1733247 (= lt!665375 (lemmaMaxPrefixThenMatchesRulesRegex!124 thiss!24550 rules!3447 lt!665387 (_1!10745 lt!665389) (rule!5361 (_1!10745 lt!665389)) (_2!10745 lt!665389)))))

(declare-fun b!1733248 () Bool)

(declare-fun e!1108930 () Bool)

(assert (=> b!1733248 (= e!1108921 e!1108930)))

(declare-fun res!778654 () Bool)

(assert (=> b!1733248 (=> res!778654 e!1108930)))

(declare-fun dynLambda!8885 (Int TokenValue!3465) BalanceConc!12590)

(declare-fun dynLambda!8886 (Int BalanceConc!12590) TokenValue!3465)

(assert (=> b!1733248 (= res!778654 (not (= (list!7688 (dynLambda!8885 (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) (dynLambda!8886 (toValue!4882 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) lt!665371))) lt!665385)))))

(declare-fun lt!665376 () Unit!32871)

(declare-fun lemmaSemiInverse!521 (TokenValueInjection!6590 BalanceConc!12590) Unit!32871)

(assert (=> b!1733248 (= lt!665376 (lemmaSemiInverse!521 (transformation!3375 (rule!5361 (_1!10745 lt!665389))) lt!665371))))

(declare-fun b!1733249 () Bool)

(assert (=> b!1733249 (= e!1108920 e!1108913)))

(declare-fun res!778639 () Bool)

(assert (=> b!1733249 (=> (not res!778639) (not e!1108913))))

(assert (=> b!1733249 (= res!778639 (matchR!2177 (regex!3375 lt!665380) (list!7688 (charsOf!2024 (_1!10745 lt!665389)))))))

(declare-fun get!5680 (Option!3775) Rule!6550)

(assert (=> b!1733249 (= lt!665380 (get!5680 lt!665388))))

(declare-fun b!1733250 () Bool)

(declare-fun res!778648 () Bool)

(assert (=> b!1733250 (=> (not res!778648) (not e!1108918))))

(declare-fun isEmpty!11962 (List!19081) Bool)

(assert (=> b!1733250 (= res!778648 (not (isEmpty!11962 rules!3447)))))

(declare-fun tp!494047 () Bool)

(declare-fun b!1733251 () Bool)

(assert (=> b!1733251 (= e!1108915 (and tp!494047 (inv!24590 (tag!3705 (h!24412 rules!3447))) (inv!24595 (transformation!3375 (h!24412 rules!3447))) e!1108934))))

(declare-fun e!1108940 () Bool)

(declare-fun tp!494050 () Bool)

(declare-fun b!1733232 () Bool)

(assert (=> b!1733232 (= e!1108940 (and tp!494050 (inv!24590 (tag!3705 rule!422)) (inv!24595 (transformation!3375 rule!422)) e!1108927))))

(declare-fun res!778650 () Bool)

(assert (=> start!170506 (=> (not res!778650) (not e!1108918))))

(get-info :version)

(assert (=> start!170506 (= res!778650 ((_ is Lexer!3002) thiss!24550))))

(assert (=> start!170506 e!1108918))

(assert (=> start!170506 e!1108926))

(assert (=> start!170506 e!1108940))

(assert (=> start!170506 true))

(declare-fun inv!24596 (Token!6316) Bool)

(assert (=> start!170506 (and (inv!24596 token!523) e!1108916)))

(assert (=> start!170506 e!1108929))

(declare-fun b!1733252 () Bool)

(assert (=> b!1733252 (= e!1108930 e!1108933)))

(declare-fun res!778651 () Bool)

(assert (=> b!1733252 (=> res!778651 e!1108933)))

(declare-fun lt!665397 () TokenValue!3465)

(assert (=> b!1733252 (= res!778651 (not (= lt!665394 (Some!3773 (tuple2!18687 (Token!6317 lt!665397 (rule!5361 (_1!10745 lt!665389)) lt!665369 lt!665385) (_2!10745 lt!665389))))))))

(assert (=> b!1733252 (= lt!665369 (size!15104 lt!665371))))

(assert (=> b!1733252 (= lt!665397 (apply!5180 (transformation!3375 (rule!5361 (_1!10745 lt!665389))) lt!665371))))

(declare-fun lt!665384 () Unit!32871)

(declare-fun lemmaCharactersSize!447 (Token!6316) Unit!32871)

(assert (=> b!1733252 (= lt!665384 (lemmaCharactersSize!447 (_1!10745 lt!665389)))))

(declare-fun lt!665398 () Unit!32871)

(declare-fun lemmaEqSameImage!300 (TokenValueInjection!6590 BalanceConc!12590 BalanceConc!12590) Unit!32871)

(assert (=> b!1733252 (= lt!665398 (lemmaEqSameImage!300 (transformation!3375 (rule!5361 (_1!10745 lt!665389))) lt!665371 (seqFromList!2349 (originalCharacters!4189 (_1!10745 lt!665389)))))))

(declare-fun b!1733253 () Bool)

(declare-fun res!778637 () Bool)

(assert (=> b!1733253 (=> (not res!778637) (not e!1108918))))

(declare-fun rulesInvariant!2673 (LexerInterface!3004 List!19081) Bool)

(assert (=> b!1733253 (= res!778637 (rulesInvariant!2673 thiss!24550 rules!3447))))

(declare-fun b!1733254 () Bool)

(declare-fun res!778635 () Bool)

(assert (=> b!1733254 (=> res!778635 e!1108931)))

(assert (=> b!1733254 (= res!778635 (not (matchR!2177 (regex!3375 (rule!5361 (_1!10745 lt!665389))) lt!665385)))))

(declare-fun b!1733255 () Bool)

(declare-fun e!1108939 () Bool)

(assert (=> b!1733255 (= e!1108939 e!1108932)))

(declare-fun res!778649 () Bool)

(assert (=> b!1733255 (=> (not res!778649) (not e!1108932))))

(declare-fun lt!665392 () tuple2!18686)

(assert (=> b!1733255 (= res!778649 (= (_1!10745 lt!665392) token!523))))

(declare-fun lt!665370 () Option!3774)

(assert (=> b!1733255 (= lt!665392 (get!5679 lt!665370))))

(declare-fun b!1733256 () Bool)

(assert (=> b!1733256 (= e!1108936 e!1108925)))

(declare-fun res!778647 () Bool)

(assert (=> b!1733256 (=> res!778647 e!1108925)))

(declare-fun prefixMatch!588 (Regex!4703 List!19080) Bool)

(assert (=> b!1733256 (= res!778647 (prefixMatch!588 lt!665395 lt!665393))))

(assert (=> b!1733256 (= lt!665393 (++!5200 lt!665391 (Cons!19010 (head!3948 suffix!1421) Nil!19010)))))

(declare-fun rulesRegex!733 (LexerInterface!3004 List!19081) Regex!4703)

(assert (=> b!1733256 (= lt!665395 (rulesRegex!733 thiss!24550 rules!3447))))

(declare-fun b!1733257 () Bool)

(assert (=> b!1733257 (= e!1108918 e!1108939)))

(declare-fun res!778634 () Bool)

(assert (=> b!1733257 (=> (not res!778634) (not e!1108939))))

(declare-fun isDefined!3118 (Option!3774) Bool)

(assert (=> b!1733257 (= res!778634 (isDefined!3118 lt!665370))))

(assert (=> b!1733257 (= lt!665370 (maxPrefix!1558 thiss!24550 rules!3447 lt!665391))))

(assert (=> b!1733257 (= lt!665391 (list!7688 lt!665383))))

(assert (=> b!1733257 (= lt!665383 (charsOf!2024 token!523))))

(declare-fun b!1733258 () Bool)

(declare-fun res!778653 () Bool)

(assert (=> b!1733258 (=> res!778653 e!1108930)))

(assert (=> b!1733258 (= res!778653 (not (= lt!665371 (dynLambda!8885 (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) (value!105860 (_1!10745 lt!665389))))))))

(declare-fun b!1733259 () Bool)

(declare-fun res!778638 () Bool)

(assert (=> b!1733259 (=> (not res!778638) (not e!1108932))))

(assert (=> b!1733259 (= res!778638 (isEmpty!11961 (_2!10745 lt!665392)))))

(assert (= (and start!170506 res!778650) b!1733250))

(assert (= (and b!1733250 res!778648) b!1733253))

(assert (= (and b!1733253 res!778637) b!1733244))

(assert (= (and b!1733244 res!778642) b!1733257))

(assert (= (and b!1733257 res!778634) b!1733255))

(assert (= (and b!1733255 res!778649) b!1733259))

(assert (= (and b!1733259 res!778638) b!1733233))

(assert (= (and b!1733233 res!778646) b!1733236))

(assert (= (and b!1733236 (not res!778633)) b!1733238))

(assert (= (and b!1733238 (not res!778652)) b!1733256))

(assert (= (and b!1733256 (not res!778647)) b!1733229))

(assert (= (and b!1733229 res!778632) b!1733249))

(assert (= (and b!1733249 res!778639) b!1733240))

(assert (= (and b!1733229 (not res!778636)) b!1733254))

(assert (= (and b!1733254 (not res!778635)) b!1733237))

(assert (= (and b!1733237 (not res!778641)) b!1733248))

(assert (= (and b!1733248 (not res!778654)) b!1733258))

(assert (= (and b!1733258 (not res!778653)) b!1733252))

(assert (= (and b!1733252 (not res!778651)) b!1733228))

(assert (= (and b!1733228 (not res!778645)) b!1733245))

(assert (= (and b!1733245 (not res!778643)) b!1733247))

(assert (= (and b!1733247 (not res!778640)) b!1733234))

(assert (= (and b!1733234 (not res!778644)) b!1733243))

(assert (= (and start!170506 ((_ is Cons!19010) suffix!1421)) b!1733242))

(assert (= b!1733232 b!1733230))

(assert (= start!170506 b!1733232))

(assert (= b!1733231 b!1733239))

(assert (= b!1733241 b!1733231))

(assert (= start!170506 b!1733241))

(assert (= b!1733251 b!1733235))

(assert (= b!1733246 b!1733251))

(assert (= (and start!170506 ((_ is Cons!19011) rules!3447)) b!1733246))

(declare-fun b_lambda!55367 () Bool)

(assert (=> (not b_lambda!55367) (not b!1733248)))

(declare-fun tb!103305 () Bool)

(declare-fun t!160949 () Bool)

(assert (=> (and b!1733230 (= (toChars!4741 (transformation!3375 rule!422)) (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160949) tb!103305))

(declare-fun tp!494059 () Bool)

(declare-fun b!1733275 () Bool)

(declare-fun e!1108952 () Bool)

(declare-fun inv!24597 (Conc!6323) Bool)

(assert (=> b!1733275 (= e!1108952 (and (inv!24597 (c!283069 (dynLambda!8885 (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) (dynLambda!8886 (toValue!4882 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) lt!665371)))) tp!494059))))

(declare-fun result!124220 () Bool)

(declare-fun inv!24598 (BalanceConc!12590) Bool)

(assert (=> tb!103305 (= result!124220 (and (inv!24598 (dynLambda!8885 (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) (dynLambda!8886 (toValue!4882 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) lt!665371))) e!1108952))))

(assert (= tb!103305 b!1733275))

(declare-fun m!2142085 () Bool)

(assert (=> b!1733275 m!2142085))

(declare-fun m!2142087 () Bool)

(assert (=> tb!103305 m!2142087))

(assert (=> b!1733248 t!160949))

(declare-fun b_and!128011 () Bool)

(assert (= b_and!128001 (and (=> t!160949 result!124220) b_and!128011)))

(declare-fun tb!103307 () Bool)

(declare-fun t!160951 () Bool)

(assert (=> (and b!1733239 (= (toChars!4741 (transformation!3375 (rule!5361 token!523))) (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160951) tb!103307))

(declare-fun result!124224 () Bool)

(assert (= result!124224 result!124220))

(assert (=> b!1733248 t!160951))

(declare-fun b_and!128013 () Bool)

(assert (= b_and!128005 (and (=> t!160951 result!124224) b_and!128013)))

(declare-fun tb!103309 () Bool)

(declare-fun t!160953 () Bool)

(assert (=> (and b!1733235 (= (toChars!4741 (transformation!3375 (h!24412 rules!3447))) (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160953) tb!103309))

(declare-fun result!124226 () Bool)

(assert (= result!124226 result!124220))

(assert (=> b!1733248 t!160953))

(declare-fun b_and!128015 () Bool)

(assert (= b_and!128009 (and (=> t!160953 result!124226) b_and!128015)))

(declare-fun b_lambda!55369 () Bool)

(assert (=> (not b_lambda!55369) (not b!1733248)))

(declare-fun t!160955 () Bool)

(declare-fun tb!103311 () Bool)

(assert (=> (and b!1733230 (= (toValue!4882 (transformation!3375 rule!422)) (toValue!4882 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160955) tb!103311))

(declare-fun result!124228 () Bool)

(assert (=> tb!103311 (= result!124228 (inv!21 (dynLambda!8886 (toValue!4882 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) lt!665371)))))

(declare-fun m!2142089 () Bool)

(assert (=> tb!103311 m!2142089))

(assert (=> b!1733248 t!160955))

(declare-fun b_and!128017 () Bool)

(assert (= b_and!127999 (and (=> t!160955 result!124228) b_and!128017)))

(declare-fun t!160957 () Bool)

(declare-fun tb!103313 () Bool)

(assert (=> (and b!1733239 (= (toValue!4882 (transformation!3375 (rule!5361 token!523))) (toValue!4882 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160957) tb!103313))

(declare-fun result!124232 () Bool)

(assert (= result!124232 result!124228))

(assert (=> b!1733248 t!160957))

(declare-fun b_and!128019 () Bool)

(assert (= b_and!128003 (and (=> t!160957 result!124232) b_and!128019)))

(declare-fun tb!103315 () Bool)

(declare-fun t!160959 () Bool)

(assert (=> (and b!1733235 (= (toValue!4882 (transformation!3375 (h!24412 rules!3447))) (toValue!4882 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160959) tb!103315))

(declare-fun result!124234 () Bool)

(assert (= result!124234 result!124228))

(assert (=> b!1733248 t!160959))

(declare-fun b_and!128021 () Bool)

(assert (= b_and!128007 (and (=> t!160959 result!124234) b_and!128021)))

(declare-fun b_lambda!55371 () Bool)

(assert (=> (not b_lambda!55371) (not b!1733258)))

(declare-fun tb!103317 () Bool)

(declare-fun t!160961 () Bool)

(assert (=> (and b!1733230 (= (toChars!4741 (transformation!3375 rule!422)) (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160961) tb!103317))

(declare-fun b!1733278 () Bool)

(declare-fun e!1108956 () Bool)

(declare-fun tp!494060 () Bool)

(assert (=> b!1733278 (= e!1108956 (and (inv!24597 (c!283069 (dynLambda!8885 (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) (value!105860 (_1!10745 lt!665389))))) tp!494060))))

(declare-fun result!124236 () Bool)

(assert (=> tb!103317 (= result!124236 (and (inv!24598 (dynLambda!8885 (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389)))) (value!105860 (_1!10745 lt!665389)))) e!1108956))))

(assert (= tb!103317 b!1733278))

(declare-fun m!2142091 () Bool)

(assert (=> b!1733278 m!2142091))

(declare-fun m!2142093 () Bool)

(assert (=> tb!103317 m!2142093))

(assert (=> b!1733258 t!160961))

(declare-fun b_and!128023 () Bool)

(assert (= b_and!128011 (and (=> t!160961 result!124236) b_and!128023)))

(declare-fun tb!103319 () Bool)

(declare-fun t!160963 () Bool)

(assert (=> (and b!1733239 (= (toChars!4741 (transformation!3375 (rule!5361 token!523))) (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160963) tb!103319))

(declare-fun result!124238 () Bool)

(assert (= result!124238 result!124236))

(assert (=> b!1733258 t!160963))

(declare-fun b_and!128025 () Bool)

(assert (= b_and!128013 (and (=> t!160963 result!124238) b_and!128025)))

(declare-fun t!160965 () Bool)

(declare-fun tb!103321 () Bool)

(assert (=> (and b!1733235 (= (toChars!4741 (transformation!3375 (h!24412 rules!3447))) (toChars!4741 (transformation!3375 (rule!5361 (_1!10745 lt!665389))))) t!160965) tb!103321))

(declare-fun result!124240 () Bool)

(assert (= result!124240 result!124236))

(assert (=> b!1733258 t!160965))

(declare-fun b_and!128027 () Bool)

(assert (= b_and!128015 (and (=> t!160965 result!124240) b_and!128027)))

(declare-fun m!2142095 () Bool)

(assert (=> b!1733247 m!2142095))

(declare-fun m!2142097 () Bool)

(assert (=> b!1733247 m!2142097))

(declare-fun m!2142099 () Bool)

(assert (=> b!1733247 m!2142099))

(declare-fun m!2142101 () Bool)

(assert (=> b!1733247 m!2142101))

(declare-fun m!2142103 () Bool)

(assert (=> b!1733232 m!2142103))

(declare-fun m!2142105 () Bool)

(assert (=> b!1733232 m!2142105))

(declare-fun m!2142107 () Bool)

(assert (=> b!1733231 m!2142107))

(declare-fun m!2142109 () Bool)

(assert (=> b!1733231 m!2142109))

(declare-fun m!2142111 () Bool)

(assert (=> start!170506 m!2142111))

(declare-fun m!2142113 () Bool)

(assert (=> b!1733252 m!2142113))

(declare-fun m!2142115 () Bool)

(assert (=> b!1733252 m!2142115))

(declare-fun m!2142117 () Bool)

(assert (=> b!1733252 m!2142117))

(assert (=> b!1733252 m!2142115))

(declare-fun m!2142119 () Bool)

(assert (=> b!1733252 m!2142119))

(declare-fun m!2142121 () Bool)

(assert (=> b!1733252 m!2142121))

(declare-fun m!2142123 () Bool)

(assert (=> b!1733234 m!2142123))

(declare-fun m!2142125 () Bool)

(assert (=> b!1733234 m!2142125))

(assert (=> b!1733234 m!2142125))

(declare-fun m!2142127 () Bool)

(assert (=> b!1733234 m!2142127))

(declare-fun m!2142129 () Bool)

(assert (=> b!1733234 m!2142129))

(declare-fun m!2142131 () Bool)

(assert (=> b!1733234 m!2142131))

(declare-fun m!2142133 () Bool)

(assert (=> b!1733250 m!2142133))

(declare-fun m!2142135 () Bool)

(assert (=> b!1733241 m!2142135))

(declare-fun m!2142137 () Bool)

(assert (=> b!1733257 m!2142137))

(declare-fun m!2142139 () Bool)

(assert (=> b!1733257 m!2142139))

(declare-fun m!2142141 () Bool)

(assert (=> b!1733257 m!2142141))

(declare-fun m!2142143 () Bool)

(assert (=> b!1733257 m!2142143))

(declare-fun m!2142145 () Bool)

(assert (=> b!1733251 m!2142145))

(declare-fun m!2142147 () Bool)

(assert (=> b!1733251 m!2142147))

(declare-fun m!2142149 () Bool)

(assert (=> b!1733236 m!2142149))

(declare-fun m!2142151 () Bool)

(assert (=> b!1733236 m!2142151))

(declare-fun m!2142153 () Bool)

(assert (=> b!1733236 m!2142153))

(declare-fun m!2142155 () Bool)

(assert (=> b!1733248 m!2142155))

(assert (=> b!1733248 m!2142155))

(declare-fun m!2142157 () Bool)

(assert (=> b!1733248 m!2142157))

(assert (=> b!1733248 m!2142157))

(declare-fun m!2142159 () Bool)

(assert (=> b!1733248 m!2142159))

(declare-fun m!2142161 () Bool)

(assert (=> b!1733248 m!2142161))

(declare-fun m!2142163 () Bool)

(assert (=> b!1733259 m!2142163))

(declare-fun m!2142165 () Bool)

(assert (=> b!1733238 m!2142165))

(declare-fun m!2142167 () Bool)

(assert (=> b!1733237 m!2142167))

(declare-fun m!2142169 () Bool)

(assert (=> b!1733237 m!2142169))

(declare-fun m!2142171 () Bool)

(assert (=> b!1733245 m!2142171))

(declare-fun m!2142173 () Bool)

(assert (=> b!1733245 m!2142173))

(declare-fun m!2142175 () Bool)

(assert (=> b!1733245 m!2142175))

(declare-fun m!2142177 () Bool)

(assert (=> b!1733228 m!2142177))

(declare-fun m!2142179 () Bool)

(assert (=> b!1733228 m!2142179))

(declare-fun m!2142181 () Bool)

(assert (=> b!1733228 m!2142181))

(declare-fun m!2142183 () Bool)

(assert (=> b!1733228 m!2142183))

(declare-fun m!2142185 () Bool)

(assert (=> b!1733228 m!2142185))

(assert (=> b!1733228 m!2142177))

(declare-fun m!2142187 () Bool)

(assert (=> b!1733228 m!2142187))

(declare-fun m!2142189 () Bool)

(assert (=> b!1733228 m!2142189))

(declare-fun m!2142191 () Bool)

(assert (=> b!1733229 m!2142191))

(declare-fun m!2142193 () Bool)

(assert (=> b!1733229 m!2142193))

(declare-fun m!2142195 () Bool)

(assert (=> b!1733229 m!2142195))

(declare-fun m!2142197 () Bool)

(assert (=> b!1733229 m!2142197))

(declare-fun m!2142199 () Bool)

(assert (=> b!1733229 m!2142199))

(declare-fun m!2142201 () Bool)

(assert (=> b!1733229 m!2142201))

(declare-fun m!2142203 () Bool)

(assert (=> b!1733229 m!2142203))

(declare-fun m!2142205 () Bool)

(assert (=> b!1733229 m!2142205))

(declare-fun m!2142207 () Bool)

(assert (=> b!1733229 m!2142207))

(declare-fun m!2142209 () Bool)

(assert (=> b!1733229 m!2142209))

(declare-fun m!2142211 () Bool)

(assert (=> b!1733229 m!2142211))

(assert (=> b!1733229 m!2142207))

(declare-fun m!2142213 () Bool)

(assert (=> b!1733229 m!2142213))

(declare-fun m!2142215 () Bool)

(assert (=> b!1733229 m!2142215))

(declare-fun m!2142217 () Bool)

(assert (=> b!1733229 m!2142217))

(declare-fun m!2142219 () Bool)

(assert (=> b!1733229 m!2142219))

(assert (=> b!1733249 m!2142197))

(assert (=> b!1733249 m!2142197))

(declare-fun m!2142221 () Bool)

(assert (=> b!1733249 m!2142221))

(assert (=> b!1733249 m!2142221))

(declare-fun m!2142223 () Bool)

(assert (=> b!1733249 m!2142223))

(declare-fun m!2142225 () Bool)

(assert (=> b!1733249 m!2142225))

(declare-fun m!2142227 () Bool)

(assert (=> b!1733254 m!2142227))

(declare-fun m!2142229 () Bool)

(assert (=> b!1733256 m!2142229))

(declare-fun m!2142231 () Bool)

(assert (=> b!1733256 m!2142231))

(declare-fun m!2142233 () Bool)

(assert (=> b!1733256 m!2142233))

(declare-fun m!2142235 () Bool)

(assert (=> b!1733256 m!2142235))

(declare-fun m!2142237 () Bool)

(assert (=> b!1733253 m!2142237))

(declare-fun m!2142239 () Bool)

(assert (=> b!1733255 m!2142239))

(declare-fun m!2142241 () Bool)

(assert (=> b!1733258 m!2142241))

(declare-fun m!2142243 () Bool)

(assert (=> b!1733243 m!2142243))

(declare-fun m!2142245 () Bool)

(assert (=> b!1733243 m!2142245))

(declare-fun m!2142247 () Bool)

(assert (=> b!1733244 m!2142247))

(check-sat (not b!1733278) (not tb!103317) (not start!170506) (not b!1733232) (not b_lambda!55367) (not b_next!48149) b_and!128025 (not b_next!48157) (not b_lambda!55371) (not b!1733259) (not b!1733256) (not b!1733246) (not tb!103305) (not b!1733248) (not b!1733254) (not b!1733237) (not b!1733253) (not tb!103311) b_and!128027 (not b!1733243) (not b_next!48151) (not b!1733250) (not b_lambda!55369) (not b!1733231) b_and!128017 (not b!1733241) (not b!1733229) (not b!1733247) (not b!1733252) (not b!1733244) (not b_next!48155) tp_is_empty!7649 (not b!1733249) (not b_next!48147) (not b!1733255) (not b!1733238) b_and!128023 b_and!128021 (not b!1733236) (not b!1733245) (not b_next!48153) b_and!128019 (not b!1733251) (not b!1733234) (not b!1733275) (not b!1733228) (not b!1733242) (not b!1733257))
(check-sat b_and!128027 (not b_next!48151) b_and!128017 (not b_next!48155) (not b_next!48147) (not b_next!48149) b_and!128025 (not b_next!48157) (not b_next!48153) b_and!128019 b_and!128023 b_and!128021)
