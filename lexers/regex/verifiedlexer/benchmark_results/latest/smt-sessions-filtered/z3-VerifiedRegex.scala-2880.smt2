; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168130 () Bool)

(assert start!168130)

(declare-fun b!1717337 () Bool)

(declare-fun b_free!46691 () Bool)

(declare-fun b_next!47395 () Bool)

(assert (=> b!1717337 (= b_free!46691 (not b_next!47395))))

(declare-fun tp!490490 () Bool)

(declare-fun b_and!124871 () Bool)

(assert (=> b!1717337 (= tp!490490 b_and!124871)))

(declare-fun b_free!46693 () Bool)

(declare-fun b_next!47397 () Bool)

(assert (=> b!1717337 (= b_free!46693 (not b_next!47397))))

(declare-fun tp!490483 () Bool)

(declare-fun b_and!124873 () Bool)

(assert (=> b!1717337 (= tp!490483 b_and!124873)))

(declare-fun b!1717316 () Bool)

(declare-fun b_free!46695 () Bool)

(declare-fun b_next!47399 () Bool)

(assert (=> b!1717316 (= b_free!46695 (not b_next!47399))))

(declare-fun tp!490482 () Bool)

(declare-fun b_and!124875 () Bool)

(assert (=> b!1717316 (= tp!490482 b_and!124875)))

(declare-fun b_free!46697 () Bool)

(declare-fun b_next!47401 () Bool)

(assert (=> b!1717316 (= b_free!46697 (not b_next!47401))))

(declare-fun tp!490489 () Bool)

(declare-fun b_and!124877 () Bool)

(assert (=> b!1717316 (= tp!490489 b_and!124877)))

(declare-fun b!1717328 () Bool)

(declare-fun b_free!46699 () Bool)

(declare-fun b_next!47403 () Bool)

(assert (=> b!1717328 (= b_free!46699 (not b_next!47403))))

(declare-fun tp!490487 () Bool)

(declare-fun b_and!124879 () Bool)

(assert (=> b!1717328 (= tp!490487 b_and!124879)))

(declare-fun b_free!46701 () Bool)

(declare-fun b_next!47405 () Bool)

(assert (=> b!1717328 (= b_free!46701 (not b_next!47405))))

(declare-fun tp!490488 () Bool)

(declare-fun b_and!124881 () Bool)

(assert (=> b!1717328 (= tp!490488 b_and!124881)))

(declare-fun b!1717350 () Bool)

(declare-fun e!1098321 () Bool)

(assert (=> b!1717350 (= e!1098321 true)))

(declare-fun b!1717349 () Bool)

(declare-fun e!1098320 () Bool)

(assert (=> b!1717349 (= e!1098320 e!1098321)))

(declare-fun b!1717348 () Bool)

(declare-fun e!1098319 () Bool)

(assert (=> b!1717348 (= e!1098319 e!1098320)))

(declare-fun b!1717321 () Bool)

(assert (=> b!1717321 e!1098319))

(assert (= b!1717349 b!1717350))

(assert (= b!1717348 b!1717349))

(assert (= b!1717321 b!1717348))

(declare-fun order!11367 () Int)

(declare-datatypes ((List!18840 0))(
  ( (Nil!18770) (Cons!18770 (h!24171 (_ BitVec 16)) (t!158975 List!18840)) )
))
(declare-datatypes ((TokenValue!3411 0))(
  ( (FloatLiteralValue!6822 (text!24322 List!18840)) (TokenValueExt!3410 (__x!12124 Int)) (Broken!17055 (value!104295 List!18840)) (Object!3480) (End!3411) (Def!3411) (Underscore!3411) (Match!3411) (Else!3411) (Error!3411) (Case!3411) (If!3411) (Extends!3411) (Abstract!3411) (Class!3411) (Val!3411) (DelimiterValue!6822 (del!3471 List!18840)) (KeywordValue!3417 (value!104296 List!18840)) (CommentValue!6822 (value!104297 List!18840)) (WhitespaceValue!6822 (value!104298 List!18840)) (IndentationValue!3411 (value!104299 List!18840)) (String!21386) (Int32!3411) (Broken!17056 (value!104300 List!18840)) (Boolean!3412) (Unit!32604) (OperatorValue!3414 (op!3471 List!18840)) (IdentifierValue!6822 (value!104301 List!18840)) (IdentifierValue!6823 (value!104302 List!18840)) (WhitespaceValue!6823 (value!104303 List!18840)) (True!6822) (False!6822) (Broken!17057 (value!104304 List!18840)) (Broken!17058 (value!104305 List!18840)) (True!6823) (RightBrace!3411) (RightBracket!3411) (Colon!3411) (Null!3411) (Comma!3411) (LeftBracket!3411) (False!6823) (LeftBrace!3411) (ImaginaryLiteralValue!3411 (text!24323 List!18840)) (StringLiteralValue!10233 (value!104306 List!18840)) (EOFValue!3411 (value!104307 List!18840)) (IdentValue!3411 (value!104308 List!18840)) (DelimiterValue!6823 (value!104309 List!18840)) (DedentValue!3411 (value!104310 List!18840)) (NewLineValue!3411 (value!104311 List!18840)) (IntegerValue!10233 (value!104312 (_ BitVec 32)) (text!24324 List!18840)) (IntegerValue!10234 (value!104313 Int) (text!24325 List!18840)) (Times!3411) (Or!3411) (Equal!3411) (Minus!3411) (Broken!17059 (value!104314 List!18840)) (And!3411) (Div!3411) (LessEqual!3411) (Mod!3411) (Concat!8060) (Not!3411) (Plus!3411) (SpaceValue!3411 (value!104315 List!18840)) (IntegerValue!10235 (value!104316 Int) (text!24326 List!18840)) (StringLiteralValue!10234 (text!24327 List!18840)) (FloatLiteralValue!6823 (text!24328 List!18840)) (BytesLiteralValue!3411 (value!104317 List!18840)) (CommentValue!6823 (value!104318 List!18840)) (StringLiteralValue!10235 (value!104319 List!18840)) (ErrorTokenValue!3411 (msg!3472 List!18840)) )
))
(declare-datatypes ((C!9472 0))(
  ( (C!9473 (val!5332 Int)) )
))
(declare-datatypes ((List!18841 0))(
  ( (Nil!18771) (Cons!18771 (h!24172 C!9472) (t!158976 List!18841)) )
))
(declare-datatypes ((String!21387 0))(
  ( (String!21388 (value!104320 String)) )
))
(declare-datatypes ((Regex!4649 0))(
  ( (ElementMatch!4649 (c!281210 C!9472)) (Concat!8061 (regOne!9810 Regex!4649) (regTwo!9810 Regex!4649)) (EmptyExpr!4649) (Star!4649 (reg!4978 Regex!4649)) (EmptyLang!4649) (Union!4649 (regOne!9811 Regex!4649) (regTwo!9811 Regex!4649)) )
))
(declare-datatypes ((IArray!12491 0))(
  ( (IArray!12492 (innerList!6303 List!18841)) )
))
(declare-datatypes ((Conc!6243 0))(
  ( (Node!6243 (left!14969 Conc!6243) (right!15299 Conc!6243) (csize!12716 Int) (cheight!6454 Int)) (Leaf!9124 (xs!9119 IArray!12491) (csize!12717 Int)) (Empty!6243) )
))
(declare-datatypes ((BalanceConc!12430 0))(
  ( (BalanceConc!12431 (c!281211 Conc!6243)) )
))
(declare-datatypes ((TokenValueInjection!6482 0))(
  ( (TokenValueInjection!6483 (toValue!4828 Int) (toChars!4687 Int)) )
))
(declare-datatypes ((Rule!6442 0))(
  ( (Rule!6443 (regex!3321 Regex!4649) (tag!3625 String!21387) (isSeparator!3321 Bool) (transformation!3321 TokenValueInjection!6482)) )
))
(declare-datatypes ((Token!6208 0))(
  ( (Token!6209 (value!104321 TokenValue!3411) (rule!5261 Rule!6442) (size!14914 Int) (originalCharacters!4135 List!18841)) )
))
(declare-datatypes ((tuple2!18474 0))(
  ( (tuple2!18475 (_1!10639 Token!6208) (_2!10639 List!18841)) )
))
(declare-fun lt!656316 () tuple2!18474)

(declare-fun order!11369 () Int)

(declare-fun lambda!69014 () Int)

(declare-fun dynLambda!8586 (Int Int) Int)

(declare-fun dynLambda!8587 (Int Int) Int)

(assert (=> b!1717350 (< (dynLambda!8586 order!11367 (toValue!4828 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) (dynLambda!8587 order!11369 lambda!69014))))

(declare-fun order!11371 () Int)

(declare-fun dynLambda!8588 (Int Int) Int)

(assert (=> b!1717350 (< (dynLambda!8588 order!11371 (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) (dynLambda!8587 order!11369 lambda!69014))))

(declare-fun b!1717311 () Bool)

(declare-fun e!1098289 () Bool)

(declare-fun lt!656321 () Rule!6442)

(assert (=> b!1717311 (= e!1098289 (= (rule!5261 (_1!10639 lt!656316)) lt!656321))))

(declare-fun b!1717312 () Bool)

(declare-fun res!770180 () Bool)

(declare-fun e!1098303 () Bool)

(assert (=> b!1717312 (=> res!770180 e!1098303)))

(declare-fun lt!656313 () List!18841)

(declare-fun matchR!2123 (Regex!4649 List!18841) Bool)

(assert (=> b!1717312 (= res!770180 (not (matchR!2123 (regex!3321 (rule!5261 (_1!10639 lt!656316))) lt!656313)))))

(declare-fun e!1098304 () Bool)

(declare-fun e!1098301 () Bool)

(declare-fun b!1717313 () Bool)

(declare-fun token!523 () Token!6208)

(declare-fun tp!490486 () Bool)

(declare-fun inv!21 (TokenValue!3411) Bool)

(assert (=> b!1717313 (= e!1098301 (and (inv!21 (value!104321 token!523)) e!1098304 tp!490486))))

(declare-fun b!1717314 () Bool)

(declare-fun res!770170 () Bool)

(declare-fun e!1098311 () Bool)

(assert (=> b!1717314 (=> (not res!770170) (not e!1098311))))

(declare-datatypes ((List!18842 0))(
  ( (Nil!18772) (Cons!18772 (h!24173 Rule!6442) (t!158977 List!18842)) )
))
(declare-fun rules!3447 () List!18842)

(declare-fun rule!422 () Rule!6442)

(declare-fun contains!3343 (List!18842 Rule!6442) Bool)

(assert (=> b!1717314 (= res!770170 (contains!3343 rules!3447 rule!422))))

(declare-fun b!1717315 () Bool)

(declare-fun res!770168 () Bool)

(declare-fun e!1098300 () Bool)

(assert (=> b!1717315 (=> res!770168 e!1098300)))

(declare-fun suffix!1421 () List!18841)

(declare-fun isEmpty!11801 (List!18841) Bool)

(assert (=> b!1717315 (= res!770168 (isEmpty!11801 suffix!1421))))

(declare-fun e!1098310 () Bool)

(assert (=> b!1717316 (= e!1098310 (and tp!490482 tp!490489))))

(declare-fun b!1717317 () Bool)

(declare-fun res!770167 () Bool)

(declare-fun e!1098292 () Bool)

(assert (=> b!1717317 (=> (not res!770167) (not e!1098292))))

(declare-fun lt!656306 () tuple2!18474)

(assert (=> b!1717317 (= res!770167 (isEmpty!11801 (_2!10639 lt!656306)))))

(declare-fun tp!490492 () Bool)

(declare-fun b!1717318 () Bool)

(declare-fun inv!24218 (String!21387) Bool)

(declare-fun inv!24223 (TokenValueInjection!6482) Bool)

(assert (=> b!1717318 (= e!1098304 (and tp!490492 (inv!24218 (tag!3625 (rule!5261 token!523))) (inv!24223 (transformation!3321 (rule!5261 token!523))) e!1098310))))

(declare-fun b!1717319 () Bool)

(declare-fun e!1098308 () Bool)

(declare-fun e!1098296 () Bool)

(assert (=> b!1717319 (= e!1098308 e!1098296)))

(declare-fun res!770176 () Bool)

(assert (=> b!1717319 (=> res!770176 e!1098296)))

(declare-fun lt!656317 () List!18841)

(declare-fun lt!656307 () List!18841)

(assert (=> b!1717319 (= res!770176 (not (= lt!656317 lt!656307)))))

(declare-fun lt!656315 () List!18841)

(declare-fun getSuffix!756 (List!18841 List!18841) List!18841)

(assert (=> b!1717319 (= lt!656315 (getSuffix!756 lt!656307 lt!656313))))

(declare-datatypes ((LexerInterface!2950 0))(
  ( (LexerInterfaceExt!2947 (__x!12125 Int)) (Lexer!2948) )
))
(declare-fun thiss!24550 () LexerInterface!2950)

(declare-datatypes ((Option!3666 0))(
  ( (None!3665) (Some!3665 (v!25062 tuple2!18474)) )
))
(declare-fun maxPrefixOneRule!880 (LexerInterface!2950 Rule!6442 List!18841) Option!3666)

(declare-fun apply!5126 (TokenValueInjection!6482 BalanceConc!12430) TokenValue!3411)

(declare-fun seqFromList!2295 (List!18841) BalanceConc!12430)

(declare-fun size!14915 (List!18841) Int)

(assert (=> b!1717319 (= (maxPrefixOneRule!880 thiss!24550 (rule!5261 (_1!10639 lt!656316)) lt!656307) (Some!3665 (tuple2!18475 (Token!6209 (apply!5126 (transformation!3321 (rule!5261 (_1!10639 lt!656316))) (seqFromList!2295 lt!656313)) (rule!5261 (_1!10639 lt!656316)) (size!14915 lt!656313) lt!656313) (_2!10639 lt!656316))))))

(declare-datatypes ((Unit!32605 0))(
  ( (Unit!32606) )
))
(declare-fun lt!656310 () Unit!32605)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!279 (LexerInterface!2950 List!18842 List!18841 List!18841 List!18841 Rule!6442) Unit!32605)

(assert (=> b!1717319 (= lt!656310 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!279 thiss!24550 rules!3447 lt!656313 lt!656307 (_2!10639 lt!656316) (rule!5261 (_1!10639 lt!656316))))))

(declare-fun e!1098295 () Bool)

(assert (=> b!1717321 (= e!1098303 e!1098295)))

(declare-fun res!770164 () Bool)

(assert (=> b!1717321 (=> res!770164 e!1098295)))

(declare-fun Forall!696 (Int) Bool)

(assert (=> b!1717321 (= res!770164 (not (Forall!696 lambda!69014)))))

(declare-fun lt!656319 () Unit!32605)

(declare-fun lemmaInv!528 (TokenValueInjection!6482) Unit!32605)

(assert (=> b!1717321 (= lt!656319 (lemmaInv!528 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))))))

(declare-fun b!1717322 () Bool)

(assert (=> b!1717322 (= e!1098300 e!1098303)))

(declare-fun res!770171 () Bool)

(assert (=> b!1717322 (=> res!770171 e!1098303)))

(declare-fun isPrefix!1562 (List!18841 List!18841) Bool)

(assert (=> b!1717322 (= res!770171 (not (isPrefix!1562 lt!656313 lt!656307)))))

(assert (=> b!1717322 (isPrefix!1562 lt!656313 lt!656317)))

(declare-fun ++!5146 (List!18841 List!18841) List!18841)

(assert (=> b!1717322 (= lt!656317 (++!5146 lt!656313 (_2!10639 lt!656316)))))

(declare-fun lt!656323 () Unit!32605)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1072 (List!18841 List!18841) Unit!32605)

(assert (=> b!1717322 (= lt!656323 (lemmaConcatTwoListThenFirstIsPrefix!1072 lt!656313 (_2!10639 lt!656316)))))

(declare-fun lt!656326 () BalanceConc!12430)

(declare-fun list!7582 (BalanceConc!12430) List!18841)

(assert (=> b!1717322 (= lt!656313 (list!7582 lt!656326))))

(declare-fun charsOf!1970 (Token!6208) BalanceConc!12430)

(assert (=> b!1717322 (= lt!656326 (charsOf!1970 (_1!10639 lt!656316)))))

(declare-fun e!1098299 () Bool)

(assert (=> b!1717322 e!1098299))

(declare-fun res!770172 () Bool)

(assert (=> b!1717322 (=> (not res!770172) (not e!1098299))))

(declare-datatypes ((Option!3667 0))(
  ( (None!3666) (Some!3666 (v!25063 Rule!6442)) )
))
(declare-fun lt!656325 () Option!3667)

(declare-fun isDefined!3009 (Option!3667) Bool)

(assert (=> b!1717322 (= res!770172 (isDefined!3009 lt!656325))))

(declare-fun getRuleFromTag!371 (LexerInterface!2950 List!18842 String!21387) Option!3667)

(assert (=> b!1717322 (= lt!656325 (getRuleFromTag!371 thiss!24550 rules!3447 (tag!3625 (rule!5261 (_1!10639 lt!656316)))))))

(declare-fun lt!656320 () Unit!32605)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!371 (LexerInterface!2950 List!18842 List!18841 Token!6208) Unit!32605)

(assert (=> b!1717322 (= lt!656320 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!371 thiss!24550 rules!3447 lt!656307 (_1!10639 lt!656316)))))

(declare-fun lt!656318 () Option!3666)

(declare-fun get!5544 (Option!3666) tuple2!18474)

(assert (=> b!1717322 (= lt!656316 (get!5544 lt!656318))))

(declare-fun lt!656314 () List!18841)

(declare-fun lt!656324 () Unit!32605)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!474 (LexerInterface!2950 List!18842 List!18841 List!18841) Unit!32605)

(assert (=> b!1717322 (= lt!656324 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!474 thiss!24550 rules!3447 lt!656314 suffix!1421))))

(declare-fun maxPrefix!1504 (LexerInterface!2950 List!18842 List!18841) Option!3666)

(assert (=> b!1717322 (= lt!656318 (maxPrefix!1504 thiss!24550 rules!3447 lt!656307))))

(assert (=> b!1717322 (isPrefix!1562 lt!656314 lt!656307)))

(declare-fun lt!656328 () Unit!32605)

(assert (=> b!1717322 (= lt!656328 (lemmaConcatTwoListThenFirstIsPrefix!1072 lt!656314 suffix!1421))))

(assert (=> b!1717322 (= lt!656307 (++!5146 lt!656314 suffix!1421))))

(declare-fun b!1717323 () Bool)

(declare-fun e!1098306 () Bool)

(declare-fun e!1098294 () Bool)

(declare-fun tp!490481 () Bool)

(assert (=> b!1717323 (= e!1098306 (and e!1098294 tp!490481))))

(declare-fun b!1717324 () Bool)

(declare-fun e!1098307 () Bool)

(declare-fun tp_is_empty!7541 () Bool)

(declare-fun tp!490484 () Bool)

(assert (=> b!1717324 (= e!1098307 (and tp_is_empty!7541 tp!490484))))

(declare-fun b!1717325 () Bool)

(assert (=> b!1717325 (= e!1098296 true)))

(declare-fun lt!656309 () List!18841)

(assert (=> b!1717325 (= lt!656309 (++!5146 lt!656313 lt!656315))))

(declare-fun b!1717326 () Bool)

(declare-fun res!770165 () Bool)

(declare-fun e!1098312 () Bool)

(assert (=> b!1717326 (=> res!770165 e!1098312)))

(declare-fun dynLambda!8589 (Int TokenValue!3411) BalanceConc!12430)

(assert (=> b!1717326 (= res!770165 (not (= lt!656326 (dynLambda!8589 (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) (value!104321 (_1!10639 lt!656316))))))))

(declare-fun b!1717327 () Bool)

(declare-fun e!1098290 () Bool)

(assert (=> b!1717327 (= e!1098311 e!1098290)))

(declare-fun res!770166 () Bool)

(assert (=> b!1717327 (=> (not res!770166) (not e!1098290))))

(declare-fun lt!656322 () Option!3666)

(declare-fun isDefined!3010 (Option!3666) Bool)

(assert (=> b!1717327 (= res!770166 (isDefined!3010 lt!656322))))

(assert (=> b!1717327 (= lt!656322 (maxPrefix!1504 thiss!24550 rules!3447 lt!656314))))

(assert (=> b!1717327 (= lt!656314 (list!7582 (charsOf!1970 token!523)))))

(declare-fun e!1098302 () Bool)

(assert (=> b!1717328 (= e!1098302 (and tp!490487 tp!490488))))

(declare-fun b!1717329 () Bool)

(assert (=> b!1717329 (= e!1098312 e!1098308)))

(declare-fun res!770173 () Bool)

(assert (=> b!1717329 (=> res!770173 e!1098308)))

(declare-fun size!14916 (BalanceConc!12430) Int)

(assert (=> b!1717329 (= res!770173 (not (= lt!656318 (Some!3665 (tuple2!18475 (Token!6209 (apply!5126 (transformation!3321 (rule!5261 (_1!10639 lt!656316))) lt!656326) (rule!5261 (_1!10639 lt!656316)) (size!14916 lt!656326) lt!656313) (_2!10639 lt!656316))))))))

(declare-fun lt!656312 () Unit!32605)

(declare-fun lemmaCharactersSize!393 (Token!6208) Unit!32605)

(assert (=> b!1717329 (= lt!656312 (lemmaCharactersSize!393 (_1!10639 lt!656316)))))

(declare-fun lt!656327 () Unit!32605)

(declare-fun lemmaEqSameImage!246 (TokenValueInjection!6482 BalanceConc!12430 BalanceConc!12430) Unit!32605)

(assert (=> b!1717329 (= lt!656327 (lemmaEqSameImage!246 (transformation!3321 (rule!5261 (_1!10639 lt!656316))) lt!656326 (seqFromList!2295 (originalCharacters!4135 (_1!10639 lt!656316)))))))

(declare-fun tp!490491 () Bool)

(declare-fun b!1717330 () Bool)

(declare-fun e!1098291 () Bool)

(assert (=> b!1717330 (= e!1098294 (and tp!490491 (inv!24218 (tag!3625 (h!24173 rules!3447))) (inv!24223 (transformation!3321 (h!24173 rules!3447))) e!1098291))))

(declare-fun b!1717331 () Bool)

(assert (=> b!1717331 (= e!1098292 (not e!1098300))))

(declare-fun res!770169 () Bool)

(assert (=> b!1717331 (=> res!770169 e!1098300)))

(assert (=> b!1717331 (= res!770169 (not (matchR!2123 (regex!3321 rule!422) lt!656314)))))

(declare-fun ruleValid!820 (LexerInterface!2950 Rule!6442) Bool)

(assert (=> b!1717331 (ruleValid!820 thiss!24550 rule!422)))

(declare-fun lt!656311 () Unit!32605)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!344 (LexerInterface!2950 Rule!6442 List!18842) Unit!32605)

(assert (=> b!1717331 (= lt!656311 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!344 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1717332 () Bool)

(declare-fun res!770163 () Bool)

(assert (=> b!1717332 (=> res!770163 e!1098300)))

(declare-fun prefixMatch!534 (Regex!4649 List!18841) Bool)

(declare-fun rulesRegex!679 (LexerInterface!2950 List!18842) Regex!4649)

(declare-fun head!3868 (List!18841) C!9472)

(assert (=> b!1717332 (= res!770163 (prefixMatch!534 (rulesRegex!679 thiss!24550 rules!3447) (++!5146 lt!656314 (Cons!18771 (head!3868 suffix!1421) Nil!18771))))))

(declare-fun b!1717333 () Bool)

(declare-fun res!770181 () Bool)

(assert (=> b!1717333 (=> (not res!770181) (not e!1098311))))

(declare-fun rulesInvariant!2619 (LexerInterface!2950 List!18842) Bool)

(assert (=> b!1717333 (= res!770181 (rulesInvariant!2619 thiss!24550 rules!3447))))

(declare-fun b!1717334 () Bool)

(assert (=> b!1717334 (= e!1098290 e!1098292)))

(declare-fun res!770178 () Bool)

(assert (=> b!1717334 (=> (not res!770178) (not e!1098292))))

(assert (=> b!1717334 (= res!770178 (= (_1!10639 lt!656306) token!523))))

(assert (=> b!1717334 (= lt!656306 (get!5544 lt!656322))))

(declare-fun b!1717335 () Bool)

(declare-fun res!770174 () Bool)

(assert (=> b!1717335 (=> (not res!770174) (not e!1098311))))

(declare-fun isEmpty!11802 (List!18842) Bool)

(assert (=> b!1717335 (= res!770174 (not (isEmpty!11802 rules!3447)))))

(declare-fun b!1717336 () Bool)

(assert (=> b!1717336 (= e!1098299 e!1098289)))

(declare-fun res!770177 () Bool)

(assert (=> b!1717336 (=> (not res!770177) (not e!1098289))))

(assert (=> b!1717336 (= res!770177 (matchR!2123 (regex!3321 lt!656321) (list!7582 (charsOf!1970 (_1!10639 lt!656316)))))))

(declare-fun get!5545 (Option!3667) Rule!6442)

(assert (=> b!1717336 (= lt!656321 (get!5545 lt!656325))))

(assert (=> b!1717337 (= e!1098291 (and tp!490490 tp!490483))))

(declare-fun res!770175 () Bool)

(assert (=> start!168130 (=> (not res!770175) (not e!1098311))))

(get-info :version)

(assert (=> start!168130 (= res!770175 ((_ is Lexer!2948) thiss!24550))))

(assert (=> start!168130 e!1098311))

(assert (=> start!168130 e!1098307))

(declare-fun e!1098298 () Bool)

(assert (=> start!168130 e!1098298))

(assert (=> start!168130 true))

(declare-fun inv!24224 (Token!6208) Bool)

(assert (=> start!168130 (and (inv!24224 token!523) e!1098301)))

(assert (=> start!168130 e!1098306))

(declare-fun b!1717320 () Bool)

(declare-fun res!770179 () Bool)

(assert (=> b!1717320 (=> (not res!770179) (not e!1098292))))

(assert (=> b!1717320 (= res!770179 (= (rule!5261 token!523) rule!422))))

(declare-fun b!1717338 () Bool)

(assert (=> b!1717338 (= e!1098295 e!1098312)))

(declare-fun res!770182 () Bool)

(assert (=> b!1717338 (=> res!770182 e!1098312)))

(declare-fun dynLambda!8590 (Int BalanceConc!12430) TokenValue!3411)

(assert (=> b!1717338 (= res!770182 (not (= (list!7582 (dynLambda!8589 (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) (dynLambda!8590 (toValue!4828 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) lt!656326))) lt!656313)))))

(declare-fun lt!656308 () Unit!32605)

(declare-fun lemmaSemiInverse!467 (TokenValueInjection!6482 BalanceConc!12430) Unit!32605)

(assert (=> b!1717338 (= lt!656308 (lemmaSemiInverse!467 (transformation!3321 (rule!5261 (_1!10639 lt!656316))) lt!656326))))

(declare-fun b!1717339 () Bool)

(declare-fun tp!490485 () Bool)

(assert (=> b!1717339 (= e!1098298 (and tp!490485 (inv!24218 (tag!3625 rule!422)) (inv!24223 (transformation!3321 rule!422)) e!1098302))))

(assert (= (and start!168130 res!770175) b!1717335))

(assert (= (and b!1717335 res!770174) b!1717333))

(assert (= (and b!1717333 res!770181) b!1717314))

(assert (= (and b!1717314 res!770170) b!1717327))

(assert (= (and b!1717327 res!770166) b!1717334))

(assert (= (and b!1717334 res!770178) b!1717317))

(assert (= (and b!1717317 res!770167) b!1717320))

(assert (= (and b!1717320 res!770179) b!1717331))

(assert (= (and b!1717331 (not res!770169)) b!1717315))

(assert (= (and b!1717315 (not res!770168)) b!1717332))

(assert (= (and b!1717332 (not res!770163)) b!1717322))

(assert (= (and b!1717322 res!770172) b!1717336))

(assert (= (and b!1717336 res!770177) b!1717311))

(assert (= (and b!1717322 (not res!770171)) b!1717312))

(assert (= (and b!1717312 (not res!770180)) b!1717321))

(assert (= (and b!1717321 (not res!770164)) b!1717338))

(assert (= (and b!1717338 (not res!770182)) b!1717326))

(assert (= (and b!1717326 (not res!770165)) b!1717329))

(assert (= (and b!1717329 (not res!770173)) b!1717319))

(assert (= (and b!1717319 (not res!770176)) b!1717325))

(assert (= (and start!168130 ((_ is Cons!18771) suffix!1421)) b!1717324))

(assert (= b!1717339 b!1717328))

(assert (= start!168130 b!1717339))

(assert (= b!1717318 b!1717316))

(assert (= b!1717313 b!1717318))

(assert (= start!168130 b!1717313))

(assert (= b!1717330 b!1717337))

(assert (= b!1717323 b!1717330))

(assert (= (and start!168130 ((_ is Cons!18772) rules!3447)) b!1717323))

(declare-fun b_lambda!54315 () Bool)

(assert (=> (not b_lambda!54315) (not b!1717326)))

(declare-fun tb!101553 () Bool)

(declare-fun t!158958 () Bool)

(assert (=> (and b!1717337 (= (toChars!4687 (transformation!3321 (h!24173 rules!3447))) (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158958) tb!101553))

(declare-fun b!1717355 () Bool)

(declare-fun e!1098324 () Bool)

(declare-fun tp!490495 () Bool)

(declare-fun inv!24225 (Conc!6243) Bool)

(assert (=> b!1717355 (= e!1098324 (and (inv!24225 (c!281211 (dynLambda!8589 (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) (value!104321 (_1!10639 lt!656316))))) tp!490495))))

(declare-fun result!122044 () Bool)

(declare-fun inv!24226 (BalanceConc!12430) Bool)

(assert (=> tb!101553 (= result!122044 (and (inv!24226 (dynLambda!8589 (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) (value!104321 (_1!10639 lt!656316)))) e!1098324))))

(assert (= tb!101553 b!1717355))

(declare-fun m!2121965 () Bool)

(assert (=> b!1717355 m!2121965))

(declare-fun m!2121967 () Bool)

(assert (=> tb!101553 m!2121967))

(assert (=> b!1717326 t!158958))

(declare-fun b_and!124883 () Bool)

(assert (= b_and!124873 (and (=> t!158958 result!122044) b_and!124883)))

(declare-fun t!158960 () Bool)

(declare-fun tb!101555 () Bool)

(assert (=> (and b!1717316 (= (toChars!4687 (transformation!3321 (rule!5261 token!523))) (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158960) tb!101555))

(declare-fun result!122048 () Bool)

(assert (= result!122048 result!122044))

(assert (=> b!1717326 t!158960))

(declare-fun b_and!124885 () Bool)

(assert (= b_and!124877 (and (=> t!158960 result!122048) b_and!124885)))

(declare-fun tb!101557 () Bool)

(declare-fun t!158962 () Bool)

(assert (=> (and b!1717328 (= (toChars!4687 (transformation!3321 rule!422)) (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158962) tb!101557))

(declare-fun result!122050 () Bool)

(assert (= result!122050 result!122044))

(assert (=> b!1717326 t!158962))

(declare-fun b_and!124887 () Bool)

(assert (= b_and!124881 (and (=> t!158962 result!122050) b_and!124887)))

(declare-fun b_lambda!54317 () Bool)

(assert (=> (not b_lambda!54317) (not b!1717338)))

(declare-fun tb!101559 () Bool)

(declare-fun t!158964 () Bool)

(assert (=> (and b!1717337 (= (toChars!4687 (transformation!3321 (h!24173 rules!3447))) (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158964) tb!101559))

(declare-fun b!1717356 () Bool)

(declare-fun tp!490496 () Bool)

(declare-fun e!1098325 () Bool)

(assert (=> b!1717356 (= e!1098325 (and (inv!24225 (c!281211 (dynLambda!8589 (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) (dynLambda!8590 (toValue!4828 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) lt!656326)))) tp!490496))))

(declare-fun result!122052 () Bool)

(assert (=> tb!101559 (= result!122052 (and (inv!24226 (dynLambda!8589 (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) (dynLambda!8590 (toValue!4828 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) lt!656326))) e!1098325))))

(assert (= tb!101559 b!1717356))

(declare-fun m!2121969 () Bool)

(assert (=> b!1717356 m!2121969))

(declare-fun m!2121971 () Bool)

(assert (=> tb!101559 m!2121971))

(assert (=> b!1717338 t!158964))

(declare-fun b_and!124889 () Bool)

(assert (= b_and!124883 (and (=> t!158964 result!122052) b_and!124889)))

(declare-fun tb!101561 () Bool)

(declare-fun t!158966 () Bool)

(assert (=> (and b!1717316 (= (toChars!4687 (transformation!3321 (rule!5261 token!523))) (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158966) tb!101561))

(declare-fun result!122054 () Bool)

(assert (= result!122054 result!122052))

(assert (=> b!1717338 t!158966))

(declare-fun b_and!124891 () Bool)

(assert (= b_and!124885 (and (=> t!158966 result!122054) b_and!124891)))

(declare-fun tb!101563 () Bool)

(declare-fun t!158968 () Bool)

(assert (=> (and b!1717328 (= (toChars!4687 (transformation!3321 rule!422)) (toChars!4687 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158968) tb!101563))

(declare-fun result!122056 () Bool)

(assert (= result!122056 result!122052))

(assert (=> b!1717338 t!158968))

(declare-fun b_and!124893 () Bool)

(assert (= b_and!124887 (and (=> t!158968 result!122056) b_and!124893)))

(declare-fun b_lambda!54319 () Bool)

(assert (=> (not b_lambda!54319) (not b!1717338)))

(declare-fun tb!101565 () Bool)

(declare-fun t!158970 () Bool)

(assert (=> (and b!1717337 (= (toValue!4828 (transformation!3321 (h!24173 rules!3447))) (toValue!4828 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158970) tb!101565))

(declare-fun result!122058 () Bool)

(assert (=> tb!101565 (= result!122058 (inv!21 (dynLambda!8590 (toValue!4828 (transformation!3321 (rule!5261 (_1!10639 lt!656316)))) lt!656326)))))

(declare-fun m!2121973 () Bool)

(assert (=> tb!101565 m!2121973))

(assert (=> b!1717338 t!158970))

(declare-fun b_and!124895 () Bool)

(assert (= b_and!124871 (and (=> t!158970 result!122058) b_and!124895)))

(declare-fun tb!101567 () Bool)

(declare-fun t!158972 () Bool)

(assert (=> (and b!1717316 (= (toValue!4828 (transformation!3321 (rule!5261 token!523))) (toValue!4828 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158972) tb!101567))

(declare-fun result!122062 () Bool)

(assert (= result!122062 result!122058))

(assert (=> b!1717338 t!158972))

(declare-fun b_and!124897 () Bool)

(assert (= b_and!124875 (and (=> t!158972 result!122062) b_and!124897)))

(declare-fun t!158974 () Bool)

(declare-fun tb!101569 () Bool)

(assert (=> (and b!1717328 (= (toValue!4828 (transformation!3321 rule!422)) (toValue!4828 (transformation!3321 (rule!5261 (_1!10639 lt!656316))))) t!158974) tb!101569))

(declare-fun result!122064 () Bool)

(assert (= result!122064 result!122058))

(assert (=> b!1717338 t!158974))

(declare-fun b_and!124899 () Bool)

(assert (= b_and!124879 (and (=> t!158974 result!122064) b_and!124899)))

(declare-fun m!2121975 () Bool)

(assert (=> b!1717329 m!2121975))

(declare-fun m!2121977 () Bool)

(assert (=> b!1717329 m!2121977))

(assert (=> b!1717329 m!2121975))

(declare-fun m!2121979 () Bool)

(assert (=> b!1717329 m!2121979))

(declare-fun m!2121981 () Bool)

(assert (=> b!1717329 m!2121981))

(declare-fun m!2121983 () Bool)

(assert (=> b!1717329 m!2121983))

(declare-fun m!2121985 () Bool)

(assert (=> b!1717331 m!2121985))

(declare-fun m!2121987 () Bool)

(assert (=> b!1717331 m!2121987))

(declare-fun m!2121989 () Bool)

(assert (=> b!1717331 m!2121989))

(declare-fun m!2121991 () Bool)

(assert (=> b!1717332 m!2121991))

(declare-fun m!2121993 () Bool)

(assert (=> b!1717332 m!2121993))

(declare-fun m!2121995 () Bool)

(assert (=> b!1717332 m!2121995))

(assert (=> b!1717332 m!2121991))

(assert (=> b!1717332 m!2121995))

(declare-fun m!2121997 () Bool)

(assert (=> b!1717332 m!2121997))

(declare-fun m!2121999 () Bool)

(assert (=> b!1717333 m!2121999))

(declare-fun m!2122001 () Bool)

(assert (=> b!1717312 m!2122001))

(declare-fun m!2122003 () Bool)

(assert (=> b!1717318 m!2122003))

(declare-fun m!2122005 () Bool)

(assert (=> b!1717318 m!2122005))

(declare-fun m!2122007 () Bool)

(assert (=> b!1717315 m!2122007))

(declare-fun m!2122009 () Bool)

(assert (=> b!1717326 m!2122009))

(declare-fun m!2122011 () Bool)

(assert (=> b!1717325 m!2122011))

(declare-fun m!2122013 () Bool)

(assert (=> b!1717327 m!2122013))

(declare-fun m!2122015 () Bool)

(assert (=> b!1717327 m!2122015))

(declare-fun m!2122017 () Bool)

(assert (=> b!1717327 m!2122017))

(assert (=> b!1717327 m!2122017))

(declare-fun m!2122019 () Bool)

(assert (=> b!1717327 m!2122019))

(declare-fun m!2122021 () Bool)

(assert (=> b!1717322 m!2122021))

(declare-fun m!2122023 () Bool)

(assert (=> b!1717322 m!2122023))

(declare-fun m!2122025 () Bool)

(assert (=> b!1717322 m!2122025))

(declare-fun m!2122027 () Bool)

(assert (=> b!1717322 m!2122027))

(declare-fun m!2122029 () Bool)

(assert (=> b!1717322 m!2122029))

(declare-fun m!2122031 () Bool)

(assert (=> b!1717322 m!2122031))

(declare-fun m!2122033 () Bool)

(assert (=> b!1717322 m!2122033))

(declare-fun m!2122035 () Bool)

(assert (=> b!1717322 m!2122035))

(declare-fun m!2122037 () Bool)

(assert (=> b!1717322 m!2122037))

(declare-fun m!2122039 () Bool)

(assert (=> b!1717322 m!2122039))

(declare-fun m!2122041 () Bool)

(assert (=> b!1717322 m!2122041))

(declare-fun m!2122043 () Bool)

(assert (=> b!1717322 m!2122043))

(declare-fun m!2122045 () Bool)

(assert (=> b!1717322 m!2122045))

(declare-fun m!2122047 () Bool)

(assert (=> b!1717322 m!2122047))

(declare-fun m!2122049 () Bool)

(assert (=> b!1717322 m!2122049))

(declare-fun m!2122051 () Bool)

(assert (=> start!168130 m!2122051))

(declare-fun m!2122053 () Bool)

(assert (=> b!1717339 m!2122053))

(declare-fun m!2122055 () Bool)

(assert (=> b!1717339 m!2122055))

(assert (=> b!1717336 m!2122031))

(assert (=> b!1717336 m!2122031))

(declare-fun m!2122057 () Bool)

(assert (=> b!1717336 m!2122057))

(assert (=> b!1717336 m!2122057))

(declare-fun m!2122059 () Bool)

(assert (=> b!1717336 m!2122059))

(declare-fun m!2122061 () Bool)

(assert (=> b!1717336 m!2122061))

(declare-fun m!2122063 () Bool)

(assert (=> b!1717313 m!2122063))

(declare-fun m!2122065 () Bool)

(assert (=> b!1717338 m!2122065))

(assert (=> b!1717338 m!2122065))

(declare-fun m!2122067 () Bool)

(assert (=> b!1717338 m!2122067))

(assert (=> b!1717338 m!2122067))

(declare-fun m!2122069 () Bool)

(assert (=> b!1717338 m!2122069))

(declare-fun m!2122071 () Bool)

(assert (=> b!1717338 m!2122071))

(declare-fun m!2122073 () Bool)

(assert (=> b!1717314 m!2122073))

(declare-fun m!2122075 () Bool)

(assert (=> b!1717321 m!2122075))

(declare-fun m!2122077 () Bool)

(assert (=> b!1717321 m!2122077))

(declare-fun m!2122079 () Bool)

(assert (=> b!1717330 m!2122079))

(declare-fun m!2122081 () Bool)

(assert (=> b!1717330 m!2122081))

(declare-fun m!2122083 () Bool)

(assert (=> b!1717335 m!2122083))

(declare-fun m!2122085 () Bool)

(assert (=> b!1717317 m!2122085))

(declare-fun m!2122087 () Bool)

(assert (=> b!1717334 m!2122087))

(declare-fun m!2122089 () Bool)

(assert (=> b!1717319 m!2122089))

(declare-fun m!2122091 () Bool)

(assert (=> b!1717319 m!2122091))

(declare-fun m!2122093 () Bool)

(assert (=> b!1717319 m!2122093))

(declare-fun m!2122095 () Bool)

(assert (=> b!1717319 m!2122095))

(declare-fun m!2122097 () Bool)

(assert (=> b!1717319 m!2122097))

(declare-fun m!2122099 () Bool)

(assert (=> b!1717319 m!2122099))

(assert (=> b!1717319 m!2122095))

(check-sat b_and!124893 (not b!1717356) (not b!1717314) (not b!1717335) (not b!1717317) (not start!168130) (not b!1717319) (not b!1717338) (not b_lambda!54315) (not b_next!47397) (not b_next!47399) (not b!1717339) (not b!1717324) (not b!1717312) (not b_next!47405) b_and!124891 (not b!1717325) (not b!1717336) (not b_lambda!54319) b_and!124899 (not b_next!47401) (not tb!101565) (not b!1717323) b_and!124897 (not b!1717330) (not b!1717333) (not b_next!47395) (not b!1717322) b_and!124895 (not b!1717313) (not b!1717331) b_and!124889 (not b!1717332) (not tb!101559) (not b!1717334) (not b_lambda!54317) (not b!1717321) (not tb!101553) (not b!1717355) (not b!1717318) (not b_next!47403) (not b!1717329) (not b!1717315) (not b!1717327) tp_is_empty!7541)
(check-sat b_and!124893 b_and!124897 (not b_next!47395) b_and!124895 b_and!124889 (not b_next!47397) (not b_next!47403) (not b_next!47399) (not b_next!47405) b_and!124891 b_and!124899 (not b_next!47401))
