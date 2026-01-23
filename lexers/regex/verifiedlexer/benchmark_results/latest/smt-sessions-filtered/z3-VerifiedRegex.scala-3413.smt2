; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192280 () Bool)

(assert start!192280)

(declare-fun b!1919450 () Bool)

(declare-fun b_free!54721 () Bool)

(declare-fun b_next!55425 () Bool)

(assert (=> b!1919450 (= b_free!54721 (not b_next!55425))))

(declare-fun tp!548239 () Bool)

(declare-fun b_and!149927 () Bool)

(assert (=> b!1919450 (= tp!548239 b_and!149927)))

(declare-fun b_free!54723 () Bool)

(declare-fun b_next!55427 () Bool)

(assert (=> b!1919450 (= b_free!54723 (not b_next!55427))))

(declare-fun tp!548240 () Bool)

(declare-fun b_and!149929 () Bool)

(assert (=> b!1919450 (= tp!548240 b_and!149929)))

(declare-fun b!1919438 () Bool)

(declare-fun b_free!54725 () Bool)

(declare-fun b_next!55429 () Bool)

(assert (=> b!1919438 (= b_free!54725 (not b_next!55429))))

(declare-fun tp!548235 () Bool)

(declare-fun b_and!149931 () Bool)

(assert (=> b!1919438 (= tp!548235 b_and!149931)))

(declare-fun b_free!54727 () Bool)

(declare-fun b_next!55431 () Bool)

(assert (=> b!1919438 (= b_free!54727 (not b_next!55431))))

(declare-fun tp!548241 () Bool)

(declare-fun b_and!149933 () Bool)

(assert (=> b!1919438 (= tp!548241 b_and!149933)))

(declare-fun b!1919460 () Bool)

(declare-fun b_free!54729 () Bool)

(declare-fun b_next!55433 () Bool)

(assert (=> b!1919460 (= b_free!54729 (not b_next!55433))))

(declare-fun tp!548237 () Bool)

(declare-fun b_and!149935 () Bool)

(assert (=> b!1919460 (= tp!548237 b_and!149935)))

(declare-fun b_free!54731 () Bool)

(declare-fun b_next!55435 () Bool)

(assert (=> b!1919460 (= b_free!54731 (not b_next!55435))))

(declare-fun tp!548234 () Bool)

(declare-fun b_and!149937 () Bool)

(assert (=> b!1919460 (= tp!548234 b_and!149937)))

(declare-fun b!1919436 () Bool)

(declare-fun res!858381 () Bool)

(declare-fun e!1226788 () Bool)

(assert (=> b!1919436 (=> (not res!858381) (not e!1226788))))

(declare-datatypes ((List!21876 0))(
  ( (Nil!21794) (Cons!21794 (h!27195 (_ BitVec 16)) (t!178669 List!21876)) )
))
(declare-datatypes ((TokenValue!4038 0))(
  ( (FloatLiteralValue!8076 (text!28711 List!21876)) (TokenValueExt!4037 (__x!13574 Int)) (Broken!20190 (value!122772 List!21876)) (Object!4119) (End!4038) (Def!4038) (Underscore!4038) (Match!4038) (Else!4038) (Error!4038) (Case!4038) (If!4038) (Extends!4038) (Abstract!4038) (Class!4038) (Val!4038) (DelimiterValue!8076 (del!4098 List!21876)) (KeywordValue!4044 (value!122773 List!21876)) (CommentValue!8076 (value!122774 List!21876)) (WhitespaceValue!8076 (value!122775 List!21876)) (IndentationValue!4038 (value!122776 List!21876)) (String!25307) (Int32!4038) (Broken!20191 (value!122777 List!21876)) (Boolean!4039) (Unit!36165) (OperatorValue!4041 (op!4098 List!21876)) (IdentifierValue!8076 (value!122778 List!21876)) (IdentifierValue!8077 (value!122779 List!21876)) (WhitespaceValue!8077 (value!122780 List!21876)) (True!8076) (False!8076) (Broken!20192 (value!122781 List!21876)) (Broken!20193 (value!122782 List!21876)) (True!8077) (RightBrace!4038) (RightBracket!4038) (Colon!4038) (Null!4038) (Comma!4038) (LeftBracket!4038) (False!8077) (LeftBrace!4038) (ImaginaryLiteralValue!4038 (text!28712 List!21876)) (StringLiteralValue!12114 (value!122783 List!21876)) (EOFValue!4038 (value!122784 List!21876)) (IdentValue!4038 (value!122785 List!21876)) (DelimiterValue!8077 (value!122786 List!21876)) (DedentValue!4038 (value!122787 List!21876)) (NewLineValue!4038 (value!122788 List!21876)) (IntegerValue!12114 (value!122789 (_ BitVec 32)) (text!28713 List!21876)) (IntegerValue!12115 (value!122790 Int) (text!28714 List!21876)) (Times!4038) (Or!4038) (Equal!4038) (Minus!4038) (Broken!20194 (value!122791 List!21876)) (And!4038) (Div!4038) (LessEqual!4038) (Mod!4038) (Concat!9365) (Not!4038) (Plus!4038) (SpaceValue!4038 (value!122792 List!21876)) (IntegerValue!12116 (value!122793 Int) (text!28715 List!21876)) (StringLiteralValue!12115 (text!28716 List!21876)) (FloatLiteralValue!8077 (text!28717 List!21876)) (BytesLiteralValue!4038 (value!122794 List!21876)) (CommentValue!8077 (value!122795 List!21876)) (StringLiteralValue!12116 (value!122796 List!21876)) (ErrorTokenValue!4038 (msg!4099 List!21876)) )
))
(declare-datatypes ((String!25308 0))(
  ( (String!25309 (value!122797 String)) )
))
(declare-datatypes ((C!10800 0))(
  ( (C!10801 (val!6352 Int)) )
))
(declare-datatypes ((List!21877 0))(
  ( (Nil!21795) (Cons!21795 (h!27196 C!10800) (t!178670 List!21877)) )
))
(declare-datatypes ((Regex!5327 0))(
  ( (ElementMatch!5327 (c!312131 C!10800)) (Concat!9366 (regOne!11166 Regex!5327) (regTwo!11166 Regex!5327)) (EmptyExpr!5327) (Star!5327 (reg!5656 Regex!5327)) (EmptyLang!5327) (Union!5327 (regOne!11167 Regex!5327) (regTwo!11167 Regex!5327)) )
))
(declare-datatypes ((IArray!14555 0))(
  ( (IArray!14556 (innerList!7335 List!21877)) )
))
(declare-datatypes ((Conc!7275 0))(
  ( (Node!7275 (left!17360 Conc!7275) (right!17690 Conc!7275) (csize!14780 Int) (cheight!7486 Int)) (Leaf!10689 (xs!10169 IArray!14555) (csize!14781 Int)) (Empty!7275) )
))
(declare-datatypes ((BalanceConc!14366 0))(
  ( (BalanceConc!14367 (c!312132 Conc!7275)) )
))
(declare-datatypes ((TokenValueInjection!7660 0))(
  ( (TokenValueInjection!7661 (toValue!5531 Int) (toChars!5390 Int)) )
))
(declare-datatypes ((Rule!7604 0))(
  ( (Rule!7605 (regex!3902 Regex!5327) (tag!4342 String!25308) (isSeparator!3902 Bool) (transformation!3902 TokenValueInjection!7660)) )
))
(declare-datatypes ((Token!7356 0))(
  ( (Token!7357 (value!122798 TokenValue!4038) (rule!6105 Rule!7604) (size!17048 Int) (originalCharacters!4709 List!21877)) )
))
(declare-datatypes ((List!21878 0))(
  ( (Nil!21796) (Cons!21796 (h!27197 Token!7356) (t!178671 List!21878)) )
))
(declare-fun tokens!598 () List!21878)

(get-info :version)

(assert (=> b!1919436 (= res!858381 ((_ is Cons!21796) tokens!598))))

(declare-fun e!1226786 () Bool)

(declare-fun e!1226784 () Bool)

(declare-fun b!1919437 () Bool)

(declare-fun tp!548236 () Bool)

(declare-fun inv!28872 (String!25308) Bool)

(declare-fun inv!28875 (TokenValueInjection!7660) Bool)

(assert (=> b!1919437 (= e!1226786 (and tp!548236 (inv!28872 (tag!4342 (rule!6105 (h!27197 tokens!598)))) (inv!28875 (transformation!3902 (rule!6105 (h!27197 tokens!598)))) e!1226784))))

(assert (=> b!1919438 (= e!1226784 (and tp!548235 tp!548241))))

(declare-fun b!1919439 () Bool)

(declare-fun res!858380 () Bool)

(assert (=> b!1919439 (=> (not res!858380) (not e!1226788))))

(declare-datatypes ((LexerInterface!3515 0))(
  ( (LexerInterfaceExt!3512 (__x!13575 Int)) (Lexer!3513) )
))
(declare-fun thiss!23328 () LexerInterface!3515)

(declare-datatypes ((List!21879 0))(
  ( (Nil!21797) (Cons!21797 (h!27198 Rule!7604) (t!178672 List!21879)) )
))
(declare-fun rules!3198 () List!21879)

(declare-fun rulesInvariant!3122 (LexerInterface!3515 List!21879) Bool)

(assert (=> b!1919439 (= res!858380 (rulesInvariant!3122 thiss!23328 rules!3198))))

(declare-fun b!1919440 () Bool)

(declare-fun res!858390 () Bool)

(assert (=> b!1919440 (=> (not res!858390) (not e!1226788))))

(declare-fun separatorToken!354 () Token!7356)

(declare-fun rulesProduceIndividualToken!1687 (LexerInterface!3515 List!21879 Token!7356) Bool)

(assert (=> b!1919440 (= res!858390 (rulesProduceIndividualToken!1687 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1919441 () Bool)

(declare-fun e!1226785 () Bool)

(declare-fun tp!548244 () Bool)

(declare-fun e!1226792 () Bool)

(declare-fun inv!28876 (Token!7356) Bool)

(assert (=> b!1919441 (= e!1226785 (and (inv!28876 (h!27197 tokens!598)) e!1226792 tp!548244))))

(declare-fun b!1919442 () Bool)

(declare-fun e!1226776 () Bool)

(declare-fun lt!736256 () Rule!7604)

(assert (=> b!1919442 (= e!1226776 (= (rule!6105 (h!27197 tokens!598)) lt!736256))))

(declare-fun b!1919443 () Bool)

(declare-fun res!858396 () Bool)

(assert (=> b!1919443 (=> (not res!858396) (not e!1226788))))

(assert (=> b!1919443 (= res!858396 (isSeparator!3902 (rule!6105 separatorToken!354)))))

(declare-fun b!1919444 () Bool)

(declare-fun res!858388 () Bool)

(declare-fun e!1226777 () Bool)

(assert (=> b!1919444 (=> res!858388 e!1226777)))

(declare-fun isEmpty!13409 (List!21878) Bool)

(assert (=> b!1919444 (= res!858388 (isEmpty!13409 tokens!598))))

(declare-fun b!1919445 () Bool)

(declare-fun e!1226782 () Bool)

(assert (=> b!1919445 (= e!1226782 e!1226776)))

(declare-fun res!858395 () Bool)

(assert (=> b!1919445 (=> (not res!858395) (not e!1226776))))

(declare-fun lt!736266 () List!21877)

(declare-fun matchR!2613 (Regex!5327 List!21877) Bool)

(assert (=> b!1919445 (= res!858395 (matchR!2613 (regex!3902 lt!736256) lt!736266))))

(declare-datatypes ((Option!4509 0))(
  ( (None!4508) (Some!4508 (v!26581 Rule!7604)) )
))
(declare-fun lt!736262 () Option!4509)

(declare-fun get!6867 (Option!4509) Rule!7604)

(assert (=> b!1919445 (= lt!736256 (get!6867 lt!736262))))

(declare-fun res!858387 () Bool)

(assert (=> start!192280 (=> (not res!858387) (not e!1226788))))

(assert (=> start!192280 (= res!858387 ((_ is Lexer!3513) thiss!23328))))

(assert (=> start!192280 e!1226788))

(assert (=> start!192280 true))

(declare-fun e!1226783 () Bool)

(assert (=> start!192280 e!1226783))

(assert (=> start!192280 e!1226785))

(declare-fun e!1226791 () Bool)

(assert (=> start!192280 (and (inv!28876 separatorToken!354) e!1226791)))

(declare-fun b!1919446 () Bool)

(declare-fun e!1226778 () Bool)

(declare-datatypes ((tuple2!20468 0))(
  ( (tuple2!20469 (_1!11703 Token!7356) (_2!11703 List!21877)) )
))
(declare-datatypes ((Option!4510 0))(
  ( (None!4509) (Some!4509 (v!26582 tuple2!20468)) )
))
(declare-fun lt!736258 () Option!4510)

(declare-fun get!6868 (Option!4510) tuple2!20468)

(assert (=> b!1919446 (= e!1226778 (= (_1!11703 (get!6868 lt!736258)) (h!27197 tokens!598)))))

(declare-fun b!1919447 () Bool)

(assert (=> b!1919447 (= e!1226788 (not e!1226777))))

(declare-fun res!858392 () Bool)

(assert (=> b!1919447 (=> res!858392 e!1226777)))

(declare-fun lt!736261 () Bool)

(declare-fun lt!736263 () Option!4510)

(assert (=> b!1919447 (= res!858392 (or (and (not lt!736261) (= (_1!11703 (v!26582 lt!736263)) (h!27197 tokens!598))) (and (not lt!736261) (not (= (_1!11703 (v!26582 lt!736263)) (h!27197 tokens!598)))) ((_ is None!4509) lt!736263)))))

(assert (=> b!1919447 (= lt!736261 (not ((_ is Some!4509) lt!736263)))))

(declare-fun maxPrefix!1961 (LexerInterface!3515 List!21879 List!21877) Option!4510)

(declare-fun ++!5857 (List!21877 List!21877) List!21877)

(declare-fun printWithSeparatorTokenWhenNeededList!558 (LexerInterface!3515 List!21879 List!21878 Token!7356) List!21877)

(assert (=> b!1919447 (= lt!736263 (maxPrefix!1961 thiss!23328 rules!3198 (++!5857 lt!736266 (printWithSeparatorTokenWhenNeededList!558 thiss!23328 rules!3198 (t!178671 tokens!598) separatorToken!354))))))

(assert (=> b!1919447 e!1226782))

(declare-fun res!858383 () Bool)

(assert (=> b!1919447 (=> (not res!858383) (not e!1226782))))

(declare-fun isDefined!3807 (Option!4509) Bool)

(assert (=> b!1919447 (= res!858383 (isDefined!3807 lt!736262))))

(declare-fun getRuleFromTag!745 (LexerInterface!3515 List!21879 String!25308) Option!4509)

(assert (=> b!1919447 (= lt!736262 (getRuleFromTag!745 thiss!23328 rules!3198 (tag!4342 (rule!6105 (h!27197 tokens!598)))))))

(declare-datatypes ((Unit!36166 0))(
  ( (Unit!36167) )
))
(declare-fun lt!736257 () Unit!36166)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!745 (LexerInterface!3515 List!21879 List!21877 Token!7356) Unit!36166)

(assert (=> b!1919447 (= lt!736257 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!745 thiss!23328 rules!3198 lt!736266 (h!27197 tokens!598)))))

(assert (=> b!1919447 e!1226778))

(declare-fun res!858389 () Bool)

(assert (=> b!1919447 (=> (not res!858389) (not e!1226778))))

(declare-fun isDefined!3808 (Option!4510) Bool)

(assert (=> b!1919447 (= res!858389 (isDefined!3808 lt!736258))))

(assert (=> b!1919447 (= lt!736258 (maxPrefix!1961 thiss!23328 rules!3198 lt!736266))))

(declare-fun lt!736259 () BalanceConc!14366)

(declare-fun list!8834 (BalanceConc!14366) List!21877)

(assert (=> b!1919447 (= lt!736266 (list!8834 lt!736259))))

(declare-fun e!1226773 () Bool)

(assert (=> b!1919447 e!1226773))

(declare-fun res!858384 () Bool)

(assert (=> b!1919447 (=> (not res!858384) (not e!1226773))))

(declare-fun lt!736264 () Option!4509)

(assert (=> b!1919447 (= res!858384 (isDefined!3807 lt!736264))))

(assert (=> b!1919447 (= lt!736264 (getRuleFromTag!745 thiss!23328 rules!3198 (tag!4342 (rule!6105 separatorToken!354))))))

(declare-fun lt!736255 () List!21877)

(declare-fun lt!736260 () Unit!36166)

(assert (=> b!1919447 (= lt!736260 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!745 thiss!23328 rules!3198 lt!736255 separatorToken!354))))

(declare-fun charsOf!2458 (Token!7356) BalanceConc!14366)

(assert (=> b!1919447 (= lt!736255 (list!8834 (charsOf!2458 separatorToken!354)))))

(declare-fun lt!736265 () Unit!36166)

(declare-fun lemmaEqSameImage!610 (TokenValueInjection!7660 BalanceConc!14366 BalanceConc!14366) Unit!36166)

(declare-fun seqFromList!2774 (List!21877) BalanceConc!14366)

(assert (=> b!1919447 (= lt!736265 (lemmaEqSameImage!610 (transformation!3902 (rule!6105 (h!27197 tokens!598))) lt!736259 (seqFromList!2774 (originalCharacters!4709 (h!27197 tokens!598)))))))

(declare-fun lt!736253 () Unit!36166)

(declare-fun lemmaSemiInverse!881 (TokenValueInjection!7660 BalanceConc!14366) Unit!36166)

(assert (=> b!1919447 (= lt!736253 (lemmaSemiInverse!881 (transformation!3902 (rule!6105 (h!27197 tokens!598))) lt!736259))))

(assert (=> b!1919447 (= lt!736259 (charsOf!2458 (h!27197 tokens!598)))))

(declare-fun b!1919448 () Bool)

(assert (=> b!1919448 (= e!1226777 (not (= tokens!598 Nil!21796)))))

(declare-fun b!1919449 () Bool)

(declare-fun e!1226794 () Bool)

(declare-fun tp!548243 () Bool)

(assert (=> b!1919449 (= e!1226783 (and e!1226794 tp!548243))))

(declare-fun e!1226793 () Bool)

(assert (=> b!1919450 (= e!1226793 (and tp!548239 tp!548240))))

(declare-fun tp!548232 () Bool)

(declare-fun b!1919451 () Bool)

(declare-fun e!1226790 () Bool)

(assert (=> b!1919451 (= e!1226794 (and tp!548232 (inv!28872 (tag!4342 (h!27198 rules!3198))) (inv!28875 (transformation!3902 (h!27198 rules!3198))) e!1226790))))

(declare-fun b!1919452 () Bool)

(declare-fun res!858386 () Bool)

(assert (=> b!1919452 (=> (not res!858386) (not e!1226788))))

(declare-fun rulesProduceEachTokenIndividuallyList!1246 (LexerInterface!3515 List!21879 List!21878) Bool)

(assert (=> b!1919452 (= res!858386 (rulesProduceEachTokenIndividuallyList!1246 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1919453 () Bool)

(declare-fun e!1226787 () Bool)

(assert (=> b!1919453 (= e!1226773 e!1226787)))

(declare-fun res!858391 () Bool)

(assert (=> b!1919453 (=> (not res!858391) (not e!1226787))))

(declare-fun lt!736254 () Rule!7604)

(assert (=> b!1919453 (= res!858391 (matchR!2613 (regex!3902 lt!736254) lt!736255))))

(assert (=> b!1919453 (= lt!736254 (get!6867 lt!736264))))

(declare-fun e!1226780 () Bool)

(declare-fun b!1919454 () Bool)

(declare-fun tp!548233 () Bool)

(declare-fun inv!21 (TokenValue!4038) Bool)

(assert (=> b!1919454 (= e!1226791 (and (inv!21 (value!122798 separatorToken!354)) e!1226780 tp!548233))))

(declare-fun b!1919455 () Bool)

(declare-fun res!858393 () Bool)

(assert (=> b!1919455 (=> res!858393 e!1226777)))

(assert (=> b!1919455 (= res!858393 (not (isDefined!3808 (maxPrefix!1961 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!558 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1919456 () Bool)

(declare-fun res!858394 () Bool)

(assert (=> b!1919456 (=> (not res!858394) (not e!1226788))))

(declare-fun lambda!74913 () Int)

(declare-fun forall!4598 (List!21878 Int) Bool)

(assert (=> b!1919456 (= res!858394 (forall!4598 tokens!598 lambda!74913))))

(declare-fun b!1919457 () Bool)

(assert (=> b!1919457 (= e!1226787 (= (rule!6105 separatorToken!354) lt!736254))))

(declare-fun b!1919458 () Bool)

(declare-fun tp!548238 () Bool)

(assert (=> b!1919458 (= e!1226780 (and tp!548238 (inv!28872 (tag!4342 (rule!6105 separatorToken!354))) (inv!28875 (transformation!3902 (rule!6105 separatorToken!354))) e!1226793))))

(declare-fun b!1919459 () Bool)

(declare-fun res!858382 () Bool)

(assert (=> b!1919459 (=> (not res!858382) (not e!1226788))))

(declare-fun sepAndNonSepRulesDisjointChars!1000 (List!21879 List!21879) Bool)

(assert (=> b!1919459 (= res!858382 (sepAndNonSepRulesDisjointChars!1000 rules!3198 rules!3198))))

(assert (=> b!1919460 (= e!1226790 (and tp!548237 tp!548234))))

(declare-fun b!1919461 () Bool)

(declare-fun res!858385 () Bool)

(assert (=> b!1919461 (=> (not res!858385) (not e!1226788))))

(declare-fun isEmpty!13410 (List!21879) Bool)

(assert (=> b!1919461 (= res!858385 (not (isEmpty!13410 rules!3198)))))

(declare-fun tp!548242 () Bool)

(declare-fun b!1919462 () Bool)

(assert (=> b!1919462 (= e!1226792 (and (inv!21 (value!122798 (h!27197 tokens!598))) e!1226786 tp!548242))))

(assert (= (and start!192280 res!858387) b!1919461))

(assert (= (and b!1919461 res!858385) b!1919439))

(assert (= (and b!1919439 res!858380) b!1919452))

(assert (= (and b!1919452 res!858386) b!1919440))

(assert (= (and b!1919440 res!858390) b!1919443))

(assert (= (and b!1919443 res!858396) b!1919456))

(assert (= (and b!1919456 res!858394) b!1919459))

(assert (= (and b!1919459 res!858382) b!1919436))

(assert (= (and b!1919436 res!858381) b!1919447))

(assert (= (and b!1919447 res!858384) b!1919453))

(assert (= (and b!1919453 res!858391) b!1919457))

(assert (= (and b!1919447 res!858389) b!1919446))

(assert (= (and b!1919447 res!858383) b!1919445))

(assert (= (and b!1919445 res!858395) b!1919442))

(assert (= (and b!1919447 (not res!858392)) b!1919444))

(assert (= (and b!1919444 (not res!858388)) b!1919455))

(assert (= (and b!1919455 (not res!858393)) b!1919448))

(assert (= b!1919451 b!1919460))

(assert (= b!1919449 b!1919451))

(assert (= (and start!192280 ((_ is Cons!21797) rules!3198)) b!1919449))

(assert (= b!1919437 b!1919438))

(assert (= b!1919462 b!1919437))

(assert (= b!1919441 b!1919462))

(assert (= (and start!192280 ((_ is Cons!21796) tokens!598)) b!1919441))

(assert (= b!1919458 b!1919450))

(assert (= b!1919454 b!1919458))

(assert (= start!192280 b!1919454))

(declare-fun m!2354905 () Bool)

(assert (=> b!1919462 m!2354905))

(declare-fun m!2354907 () Bool)

(assert (=> b!1919446 m!2354907))

(declare-fun m!2354909 () Bool)

(assert (=> start!192280 m!2354909))

(declare-fun m!2354911 () Bool)

(assert (=> b!1919456 m!2354911))

(declare-fun m!2354913 () Bool)

(assert (=> b!1919454 m!2354913))

(declare-fun m!2354915 () Bool)

(assert (=> b!1919445 m!2354915))

(declare-fun m!2354917 () Bool)

(assert (=> b!1919445 m!2354917))

(declare-fun m!2354919 () Bool)

(assert (=> b!1919440 m!2354919))

(declare-fun m!2354921 () Bool)

(assert (=> b!1919437 m!2354921))

(declare-fun m!2354923 () Bool)

(assert (=> b!1919437 m!2354923))

(declare-fun m!2354925 () Bool)

(assert (=> b!1919455 m!2354925))

(assert (=> b!1919455 m!2354925))

(declare-fun m!2354927 () Bool)

(assert (=> b!1919455 m!2354927))

(assert (=> b!1919455 m!2354927))

(declare-fun m!2354929 () Bool)

(assert (=> b!1919455 m!2354929))

(declare-fun m!2354931 () Bool)

(assert (=> b!1919459 m!2354931))

(declare-fun m!2354933 () Bool)

(assert (=> b!1919439 m!2354933))

(declare-fun m!2354935 () Bool)

(assert (=> b!1919444 m!2354935))

(declare-fun m!2354937 () Bool)

(assert (=> b!1919447 m!2354937))

(declare-fun m!2354939 () Bool)

(assert (=> b!1919447 m!2354939))

(declare-fun m!2354941 () Bool)

(assert (=> b!1919447 m!2354941))

(declare-fun m!2354943 () Bool)

(assert (=> b!1919447 m!2354943))

(assert (=> b!1919447 m!2354943))

(declare-fun m!2354945 () Bool)

(assert (=> b!1919447 m!2354945))

(declare-fun m!2354947 () Bool)

(assert (=> b!1919447 m!2354947))

(declare-fun m!2354949 () Bool)

(assert (=> b!1919447 m!2354949))

(declare-fun m!2354951 () Bool)

(assert (=> b!1919447 m!2354951))

(declare-fun m!2354953 () Bool)

(assert (=> b!1919447 m!2354953))

(declare-fun m!2354955 () Bool)

(assert (=> b!1919447 m!2354955))

(declare-fun m!2354957 () Bool)

(assert (=> b!1919447 m!2354957))

(declare-fun m!2354959 () Bool)

(assert (=> b!1919447 m!2354959))

(assert (=> b!1919447 m!2354955))

(declare-fun m!2354961 () Bool)

(assert (=> b!1919447 m!2354961))

(declare-fun m!2354963 () Bool)

(assert (=> b!1919447 m!2354963))

(declare-fun m!2354965 () Bool)

(assert (=> b!1919447 m!2354965))

(declare-fun m!2354967 () Bool)

(assert (=> b!1919447 m!2354967))

(assert (=> b!1919447 m!2354953))

(assert (=> b!1919447 m!2354949))

(declare-fun m!2354969 () Bool)

(assert (=> b!1919447 m!2354969))

(declare-fun m!2354971 () Bool)

(assert (=> b!1919447 m!2354971))

(declare-fun m!2354973 () Bool)

(assert (=> b!1919453 m!2354973))

(declare-fun m!2354975 () Bool)

(assert (=> b!1919453 m!2354975))

(declare-fun m!2354977 () Bool)

(assert (=> b!1919461 m!2354977))

(declare-fun m!2354979 () Bool)

(assert (=> b!1919452 m!2354979))

(declare-fun m!2354981 () Bool)

(assert (=> b!1919451 m!2354981))

(declare-fun m!2354983 () Bool)

(assert (=> b!1919451 m!2354983))

(declare-fun m!2354985 () Bool)

(assert (=> b!1919458 m!2354985))

(declare-fun m!2354987 () Bool)

(assert (=> b!1919458 m!2354987))

(declare-fun m!2354989 () Bool)

(assert (=> b!1919441 m!2354989))

(check-sat (not b!1919439) (not b!1919453) b_and!149929 (not b!1919462) (not b!1919437) (not b!1919444) (not b!1919445) (not b_next!55429) (not b_next!55427) (not b!1919454) (not b!1919449) (not b!1919447) (not b!1919459) (not b_next!55435) (not b!1919452) b_and!149937 (not b_next!55433) (not b!1919446) b_and!149935 (not b!1919451) (not b!1919455) (not b!1919458) b_and!149927 b_and!149933 (not b!1919440) b_and!149931 (not start!192280) (not b!1919461) (not b_next!55425) (not b!1919456) (not b_next!55431) (not b!1919441))
(check-sat b_and!149935 b_and!149929 (not b_next!55429) (not b_next!55427) b_and!149927 b_and!149933 b_and!149931 (not b_next!55425) (not b_next!55431) (not b_next!55435) b_and!149937 (not b_next!55433))
