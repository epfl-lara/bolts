; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344214 () Bool)

(assert start!344214)

(declare-fun b!3672269 () Bool)

(declare-fun b_free!97089 () Bool)

(declare-fun b_next!97793 () Bool)

(assert (=> b!3672269 (= b_free!97089 (not b_next!97793))))

(declare-fun tp!1117310 () Bool)

(declare-fun b_and!273635 () Bool)

(assert (=> b!3672269 (= tp!1117310 b_and!273635)))

(declare-fun b_free!97091 () Bool)

(declare-fun b_next!97795 () Bool)

(assert (=> b!3672269 (= b_free!97091 (not b_next!97795))))

(declare-fun tp!1117302 () Bool)

(declare-fun b_and!273637 () Bool)

(assert (=> b!3672269 (= tp!1117302 b_and!273637)))

(declare-fun b!3672291 () Bool)

(declare-fun b_free!97093 () Bool)

(declare-fun b_next!97797 () Bool)

(assert (=> b!3672291 (= b_free!97093 (not b_next!97797))))

(declare-fun tp!1117305 () Bool)

(declare-fun b_and!273639 () Bool)

(assert (=> b!3672291 (= tp!1117305 b_and!273639)))

(declare-fun b_free!97095 () Bool)

(declare-fun b_next!97799 () Bool)

(assert (=> b!3672291 (= b_free!97095 (not b_next!97799))))

(declare-fun tp!1117311 () Bool)

(declare-fun b_and!273641 () Bool)

(assert (=> b!3672291 (= tp!1117311 b_and!273641)))

(declare-fun b!3672282 () Bool)

(declare-fun b_free!97097 () Bool)

(declare-fun b_next!97801 () Bool)

(assert (=> b!3672282 (= b_free!97097 (not b_next!97801))))

(declare-fun tp!1117312 () Bool)

(declare-fun b_and!273643 () Bool)

(assert (=> b!3672282 (= tp!1117312 b_and!273643)))

(declare-fun b_free!97099 () Bool)

(declare-fun b_next!97803 () Bool)

(assert (=> b!3672282 (= b_free!97099 (not b_next!97803))))

(declare-fun tp!1117303 () Bool)

(declare-fun b_and!273645 () Bool)

(assert (=> b!3672282 (= tp!1117303 b_and!273645)))

(declare-fun b!3672310 () Bool)

(declare-fun b_free!97101 () Bool)

(declare-fun b_next!97805 () Bool)

(assert (=> b!3672310 (= b_free!97101 (not b_next!97805))))

(declare-fun tp!1117307 () Bool)

(declare-fun b_and!273647 () Bool)

(assert (=> b!3672310 (= tp!1117307 b_and!273647)))

(declare-fun b_free!97103 () Bool)

(declare-fun b_next!97807 () Bool)

(assert (=> b!3672310 (= b_free!97103 (not b_next!97807))))

(declare-fun tp!1117315 () Bool)

(declare-fun b_and!273649 () Bool)

(assert (=> b!3672310 (= tp!1117315 b_and!273649)))

(declare-fun b!3672267 () Bool)

(declare-datatypes ((Unit!56380 0))(
  ( (Unit!56381) )
))
(declare-fun e!2273885 () Unit!56380)

(declare-fun Unit!56382 () Unit!56380)

(assert (=> b!3672267 (= e!2273885 Unit!56382)))

(declare-fun b!3672268 () Bool)

(declare-fun e!2273888 () Bool)

(declare-datatypes ((List!38855 0))(
  ( (Nil!38731) (Cons!38731 (h!44151 (_ BitVec 16)) (t!299810 List!38855)) )
))
(declare-datatypes ((TokenValue!6054 0))(
  ( (FloatLiteralValue!12108 (text!42823 List!38855)) (TokenValueExt!6053 (__x!24325 Int)) (Broken!30270 (value!186418 List!38855)) (Object!6177) (End!6054) (Def!6054) (Underscore!6054) (Match!6054) (Else!6054) (Error!6054) (Case!6054) (If!6054) (Extends!6054) (Abstract!6054) (Class!6054) (Val!6054) (DelimiterValue!12108 (del!6114 List!38855)) (KeywordValue!6060 (value!186419 List!38855)) (CommentValue!12108 (value!186420 List!38855)) (WhitespaceValue!12108 (value!186421 List!38855)) (IndentationValue!6054 (value!186422 List!38855)) (String!43603) (Int32!6054) (Broken!30271 (value!186423 List!38855)) (Boolean!6055) (Unit!56383) (OperatorValue!6057 (op!6114 List!38855)) (IdentifierValue!12108 (value!186424 List!38855)) (IdentifierValue!12109 (value!186425 List!38855)) (WhitespaceValue!12109 (value!186426 List!38855)) (True!12108) (False!12108) (Broken!30272 (value!186427 List!38855)) (Broken!30273 (value!186428 List!38855)) (True!12109) (RightBrace!6054) (RightBracket!6054) (Colon!6054) (Null!6054) (Comma!6054) (LeftBracket!6054) (False!12109) (LeftBrace!6054) (ImaginaryLiteralValue!6054 (text!42824 List!38855)) (StringLiteralValue!18162 (value!186429 List!38855)) (EOFValue!6054 (value!186430 List!38855)) (IdentValue!6054 (value!186431 List!38855)) (DelimiterValue!12109 (value!186432 List!38855)) (DedentValue!6054 (value!186433 List!38855)) (NewLineValue!6054 (value!186434 List!38855)) (IntegerValue!18162 (value!186435 (_ BitVec 32)) (text!42825 List!38855)) (IntegerValue!18163 (value!186436 Int) (text!42826 List!38855)) (Times!6054) (Or!6054) (Equal!6054) (Minus!6054) (Broken!30274 (value!186437 List!38855)) (And!6054) (Div!6054) (LessEqual!6054) (Mod!6054) (Concat!16637) (Not!6054) (Plus!6054) (SpaceValue!6054 (value!186438 List!38855)) (IntegerValue!18164 (value!186439 Int) (text!42827 List!38855)) (StringLiteralValue!18163 (text!42828 List!38855)) (FloatLiteralValue!12109 (text!42829 List!38855)) (BytesLiteralValue!6054 (value!186440 List!38855)) (CommentValue!12109 (value!186441 List!38855)) (StringLiteralValue!18164 (value!186442 List!38855)) (ErrorTokenValue!6054 (msg!6115 List!38855)) )
))
(declare-datatypes ((C!21352 0))(
  ( (C!21353 (val!12724 Int)) )
))
(declare-datatypes ((Regex!10583 0))(
  ( (ElementMatch!10583 (c!634972 C!21352)) (Concat!16638 (regOne!21678 Regex!10583) (regTwo!21678 Regex!10583)) (EmptyExpr!10583) (Star!10583 (reg!10912 Regex!10583)) (EmptyLang!10583) (Union!10583 (regOne!21679 Regex!10583) (regTwo!21679 Regex!10583)) )
))
(declare-datatypes ((String!43604 0))(
  ( (String!43605 (value!186443 String)) )
))
(declare-datatypes ((List!38856 0))(
  ( (Nil!38732) (Cons!38732 (h!44152 C!21352) (t!299811 List!38856)) )
))
(declare-datatypes ((IArray!23707 0))(
  ( (IArray!23708 (innerList!11911 List!38856)) )
))
(declare-datatypes ((Conc!11851 0))(
  ( (Node!11851 (left!30225 Conc!11851) (right!30555 Conc!11851) (csize!23932 Int) (cheight!12062 Int)) (Leaf!18374 (xs!15053 IArray!23707) (csize!23933 Int)) (Empty!11851) )
))
(declare-datatypes ((BalanceConc!23316 0))(
  ( (BalanceConc!23317 (c!634973 Conc!11851)) )
))
(declare-datatypes ((TokenValueInjection!11536 0))(
  ( (TokenValueInjection!11537 (toValue!8120 Int) (toChars!7979 Int)) )
))
(declare-datatypes ((Rule!11448 0))(
  ( (Rule!11449 (regex!5824 Regex!10583) (tag!6616 String!43604) (isSeparator!5824 Bool) (transformation!5824 TokenValueInjection!11536)) )
))
(declare-datatypes ((Token!11014 0))(
  ( (Token!11015 (value!186444 TokenValue!6054) (rule!8650 Rule!11448) (size!29605 Int) (originalCharacters!6538 List!38856)) )
))
(declare-datatypes ((tuple2!38600 0))(
  ( (tuple2!38601 (_1!22434 Token!11014) (_2!22434 List!38856)) )
))
(declare-fun lt!1280654 () tuple2!38600)

(declare-fun lt!1280666 () Rule!11448)

(assert (=> b!3672268 (= e!2273888 (= (rule!8650 (_1!22434 lt!1280654)) lt!1280666))))

(declare-fun res!1491521 () Bool)

(declare-fun e!2273869 () Bool)

(assert (=> start!344214 (=> (not res!1491521) (not e!2273869))))

(declare-datatypes ((LexerInterface!5413 0))(
  ( (LexerInterfaceExt!5410 (__x!24326 Int)) (Lexer!5411) )
))
(declare-fun thiss!23823 () LexerInterface!5413)

(get-info :version)

(assert (=> start!344214 (= res!1491521 ((_ is Lexer!5411) thiss!23823))))

(assert (=> start!344214 e!2273869))

(declare-fun e!2273889 () Bool)

(assert (=> start!344214 e!2273889))

(declare-fun e!2273894 () Bool)

(assert (=> start!344214 e!2273894))

(assert (=> start!344214 true))

(declare-fun token!511 () Token!11014)

(declare-fun e!2273881 () Bool)

(declare-fun inv!52218 (Token!11014) Bool)

(assert (=> start!344214 (and (inv!52218 token!511) e!2273881)))

(declare-fun e!2273897 () Bool)

(assert (=> start!344214 e!2273897))

(declare-fun e!2273904 () Bool)

(assert (=> start!344214 e!2273904))

(declare-fun e!2273887 () Bool)

(assert (=> b!3672269 (= e!2273887 (and tp!1117310 tp!1117302))))

(declare-fun b!3672270 () Bool)

(declare-fun e!2273872 () Unit!56380)

(declare-fun Unit!56384 () Unit!56380)

(assert (=> b!3672270 (= e!2273872 Unit!56384)))

(declare-fun lt!1280697 () List!38856)

(declare-fun rule!403 () Rule!11448)

(declare-fun lt!1280690 () List!38856)

(declare-datatypes ((List!38857 0))(
  ( (Nil!38733) (Cons!38733 (h!44153 Rule!11448) (t!299812 List!38857)) )
))
(declare-fun rules!3307 () List!38857)

(declare-fun lt!1280675 () Unit!56380)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!232 (LexerInterface!5413 List!38857 Rule!11448 List!38856 List!38856 Rule!11448) Unit!56380)

(assert (=> b!3672270 (= lt!1280675 (lemmaMaxPrefNoSmallerRuleMatches!232 thiss!23823 rules!3307 (rule!8650 (_1!22434 lt!1280654)) lt!1280697 lt!1280690 rule!403))))

(assert (=> b!3672270 false))

(declare-fun b!3672271 () Bool)

(declare-fun Unit!56385 () Unit!56380)

(assert (=> b!3672271 (= e!2273872 Unit!56385)))

(declare-fun b!3672272 () Bool)

(declare-fun res!1491531 () Bool)

(declare-fun e!2273882 () Bool)

(assert (=> b!3672272 (=> res!1491531 e!2273882)))

(declare-fun sepAndNonSepRulesDisjointChars!1992 (List!38857 List!38857) Bool)

(assert (=> b!3672272 (= res!1491531 (not (sepAndNonSepRulesDisjointChars!1992 rules!3307 rules!3307)))))

(declare-fun b!3672273 () Bool)

(declare-fun res!1491522 () Bool)

(assert (=> b!3672273 (=> res!1491522 e!2273882)))

(declare-fun anOtherTypeRule!33 () Rule!11448)

(declare-fun lt!1280656 () C!21352)

(declare-fun contains!7715 (List!38856 C!21352) Bool)

(declare-fun usedCharacters!1036 (Regex!10583) List!38856)

(assert (=> b!3672273 (= res!1491522 (not (contains!7715 (usedCharacters!1036 (regex!5824 anOtherTypeRule!33)) lt!1280656)))))

(declare-fun bm!265870 () Bool)

(declare-fun call!265875 () Bool)

(declare-fun call!265876 () List!38856)

(declare-fun lt!1280700 () C!21352)

(assert (=> bm!265870 (= call!265875 (contains!7715 call!265876 lt!1280700))))

(declare-fun bm!265871 () Bool)

(assert (=> bm!265871 (= call!265876 (usedCharacters!1036 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672274 () Bool)

(declare-fun e!2273886 () Unit!56380)

(declare-fun e!2273890 () Unit!56380)

(assert (=> b!3672274 (= e!2273886 e!2273890)))

(declare-fun c!634969 () Bool)

(assert (=> b!3672274 (= c!634969 (not (isSeparator!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672275 () Bool)

(declare-fun e!2273874 () Bool)

(assert (=> b!3672275 (= e!2273882 e!2273874)))

(declare-fun res!1491524 () Bool)

(assert (=> b!3672275 (=> res!1491524 e!2273874)))

(declare-fun lt!1280693 () List!38856)

(declare-fun isPrefix!3187 (List!38856 List!38856) Bool)

(assert (=> b!3672275 (= res!1491524 (not (isPrefix!3187 lt!1280693 lt!1280690)))))

(declare-fun ++!9640 (List!38856 List!38856) List!38856)

(assert (=> b!3672275 (isPrefix!3187 lt!1280693 (++!9640 lt!1280693 (_2!22434 lt!1280654)))))

(declare-fun lt!1280674 () Unit!56380)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2106 (List!38856 List!38856) Unit!56380)

(assert (=> b!3672275 (= lt!1280674 (lemmaConcatTwoListThenFirstIsPrefix!2106 lt!1280693 (_2!22434 lt!1280654)))))

(declare-fun lt!1280687 () BalanceConc!23316)

(declare-fun list!14386 (BalanceConc!23316) List!38856)

(assert (=> b!3672275 (= lt!1280693 (list!14386 lt!1280687))))

(declare-fun charsOf!3838 (Token!11014) BalanceConc!23316)

(assert (=> b!3672275 (= lt!1280687 (charsOf!3838 (_1!22434 lt!1280654)))))

(declare-fun e!2273868 () Bool)

(assert (=> b!3672275 e!2273868))

(declare-fun res!1491517 () Bool)

(assert (=> b!3672275 (=> (not res!1491517) (not e!2273868))))

(declare-datatypes ((Option!8276 0))(
  ( (None!8275) (Some!8275 (v!38191 Rule!11448)) )
))
(declare-fun lt!1280694 () Option!8276)

(declare-fun isDefined!6508 (Option!8276) Bool)

(assert (=> b!3672275 (= res!1491517 (isDefined!6508 lt!1280694))))

(declare-fun getRuleFromTag!1428 (LexerInterface!5413 List!38857 String!43604) Option!8276)

(assert (=> b!3672275 (= lt!1280694 (getRuleFromTag!1428 thiss!23823 rules!3307 (tag!6616 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun lt!1280659 () Unit!56380)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1428 (LexerInterface!5413 List!38857 List!38856 Token!11014) Unit!56380)

(assert (=> b!3672275 (= lt!1280659 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1428 thiss!23823 rules!3307 lt!1280690 (_1!22434 lt!1280654)))))

(declare-datatypes ((Option!8277 0))(
  ( (None!8276) (Some!8276 (v!38192 tuple2!38600)) )
))
(declare-fun lt!1280673 () Option!8277)

(declare-fun get!12798 (Option!8277) tuple2!38600)

(assert (=> b!3672275 (= lt!1280654 (get!12798 lt!1280673))))

(declare-fun lt!1280695 () Unit!56380)

(declare-fun suffix!1395 () List!38856)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1091 (LexerInterface!5413 List!38857 List!38856 List!38856) Unit!56380)

(assert (=> b!3672275 (= lt!1280695 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1091 thiss!23823 rules!3307 lt!1280697 suffix!1395))))

(declare-fun maxPrefix!2947 (LexerInterface!5413 List!38857 List!38856) Option!8277)

(assert (=> b!3672275 (= lt!1280673 (maxPrefix!2947 thiss!23823 rules!3307 lt!1280690))))

(assert (=> b!3672275 (isPrefix!3187 lt!1280697 lt!1280690)))

(declare-fun lt!1280699 () Unit!56380)

(assert (=> b!3672275 (= lt!1280699 (lemmaConcatTwoListThenFirstIsPrefix!2106 lt!1280697 suffix!1395))))

(assert (=> b!3672275 (= lt!1280690 (++!9640 lt!1280697 suffix!1395))))

(declare-fun b!3672276 () Bool)

(declare-fun e!2273883 () Bool)

(declare-fun tp!1117304 () Bool)

(assert (=> b!3672276 (= e!2273889 (and e!2273883 tp!1117304))))

(declare-fun b!3672277 () Bool)

(declare-fun e!2273870 () Bool)

(declare-fun e!2273884 () Bool)

(assert (=> b!3672277 (= e!2273870 e!2273884)))

(declare-fun res!1491519 () Bool)

(assert (=> b!3672277 (=> res!1491519 e!2273884)))

(declare-fun lt!1280662 () Option!8277)

(declare-fun lt!1280676 () List!38856)

(assert (=> b!3672277 (= res!1491519 (or (not (= lt!1280676 (_2!22434 lt!1280654))) (not (= lt!1280662 (Some!8276 (tuple2!38601 (_1!22434 lt!1280654) lt!1280676))))))))

(assert (=> b!3672277 (= (_2!22434 lt!1280654) lt!1280676)))

(declare-fun lt!1280677 () Unit!56380)

(declare-fun lemmaSamePrefixThenSameSuffix!1514 (List!38856 List!38856 List!38856 List!38856 List!38856) Unit!56380)

(assert (=> b!3672277 (= lt!1280677 (lemmaSamePrefixThenSameSuffix!1514 lt!1280693 (_2!22434 lt!1280654) lt!1280693 lt!1280676 lt!1280690))))

(declare-fun getSuffix!1740 (List!38856 List!38856) List!38856)

(assert (=> b!3672277 (= lt!1280676 (getSuffix!1740 lt!1280690 lt!1280693))))

(declare-fun lt!1280652 () TokenValue!6054)

(declare-fun lt!1280655 () Int)

(assert (=> b!3672277 (= lt!1280662 (Some!8276 (tuple2!38601 (Token!11015 lt!1280652 (rule!8650 (_1!22434 lt!1280654)) lt!1280655 lt!1280693) (_2!22434 lt!1280654))))))

(declare-fun maxPrefixOneRule!2085 (LexerInterface!5413 Rule!11448 List!38856) Option!8277)

(assert (=> b!3672277 (= lt!1280662 (maxPrefixOneRule!2085 thiss!23823 (rule!8650 (_1!22434 lt!1280654)) lt!1280690))))

(declare-fun size!29606 (List!38856) Int)

(assert (=> b!3672277 (= lt!1280655 (size!29606 lt!1280693))))

(declare-fun apply!9326 (TokenValueInjection!11536 BalanceConc!23316) TokenValue!6054)

(declare-fun seqFromList!4373 (List!38856) BalanceConc!23316)

(assert (=> b!3672277 (= lt!1280652 (apply!9326 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) (seqFromList!4373 lt!1280693)))))

(declare-fun lt!1280664 () Unit!56380)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1141 (LexerInterface!5413 List!38857 List!38856 List!38856 List!38856 Rule!11448) Unit!56380)

(assert (=> b!3672277 (= lt!1280664 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1141 thiss!23823 rules!3307 lt!1280693 lt!1280690 (_2!22434 lt!1280654) (rule!8650 (_1!22434 lt!1280654))))))

(declare-fun b!3672278 () Bool)

(declare-fun e!2273892 () Bool)

(assert (=> b!3672278 (= e!2273869 e!2273892)))

(declare-fun res!1491529 () Bool)

(assert (=> b!3672278 (=> (not res!1491529) (not e!2273892))))

(declare-fun lt!1280648 () Option!8277)

(declare-fun isDefined!6509 (Option!8277) Bool)

(assert (=> b!3672278 (= res!1491529 (isDefined!6509 lt!1280648))))

(assert (=> b!3672278 (= lt!1280648 (maxPrefix!2947 thiss!23823 rules!3307 lt!1280697))))

(declare-fun lt!1280685 () BalanceConc!23316)

(assert (=> b!3672278 (= lt!1280697 (list!14386 lt!1280685))))

(assert (=> b!3672278 (= lt!1280685 (charsOf!3838 token!511))))

(declare-fun b!3672279 () Bool)

(declare-fun res!1491518 () Bool)

(assert (=> b!3672279 (=> (not res!1491518) (not e!2273869))))

(declare-fun rulesInvariant!4810 (LexerInterface!5413 List!38857) Bool)

(assert (=> b!3672279 (= res!1491518 (rulesInvariant!4810 thiss!23823 rules!3307))))

(declare-fun call!265878 () Unit!56380)

(declare-fun bm!265872 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!772 (Regex!10583 List!38856 C!21352) Unit!56380)

(assert (=> bm!265872 (= call!265878 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!772 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693 lt!1280656))))

(declare-fun b!3672280 () Bool)

(declare-fun res!1491512 () Bool)

(declare-fun e!2273896 () Bool)

(assert (=> b!3672280 (=> (not res!1491512) (not e!2273896))))

(declare-fun lt!1280665 () tuple2!38600)

(declare-fun isEmpty!22990 (List!38856) Bool)

(assert (=> b!3672280 (= res!1491512 (isEmpty!22990 (_2!22434 lt!1280665)))))

(declare-fun b!3672281 () Bool)

(declare-fun res!1491520 () Bool)

(assert (=> b!3672281 (=> (not res!1491520) (not e!2273869))))

(declare-fun contains!7716 (List!38857 Rule!11448) Bool)

(assert (=> b!3672281 (= res!1491520 (contains!7716 rules!3307 rule!403))))

(declare-fun e!2273902 () Bool)

(assert (=> b!3672282 (= e!2273902 (and tp!1117312 tp!1117303))))

(declare-fun b!3672283 () Bool)

(assert (=> b!3672283 (= e!2273874 e!2273870)))

(declare-fun res!1491516 () Bool)

(assert (=> b!3672283 (=> res!1491516 e!2273870)))

(declare-fun lt!1280671 () TokenValue!6054)

(declare-fun lt!1280688 () Int)

(assert (=> b!3672283 (= res!1491516 (not (= lt!1280673 (Some!8276 (tuple2!38601 (Token!11015 lt!1280671 (rule!8650 (_1!22434 lt!1280654)) lt!1280688 lt!1280693) (_2!22434 lt!1280654))))))))

(declare-fun size!29607 (BalanceConc!23316) Int)

(assert (=> b!3672283 (= lt!1280688 (size!29607 lt!1280687))))

(assert (=> b!3672283 (= lt!1280671 (apply!9326 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280687))))

(declare-fun lt!1280698 () Unit!56380)

(declare-fun lemmaCharactersSize!869 (Token!11014) Unit!56380)

(assert (=> b!3672283 (= lt!1280698 (lemmaCharactersSize!869 (_1!22434 lt!1280654)))))

(declare-fun lt!1280686 () Unit!56380)

(declare-fun lemmaEqSameImage!1007 (TokenValueInjection!11536 BalanceConc!23316 BalanceConc!23316) Unit!56380)

(assert (=> b!3672283 (= lt!1280686 (lemmaEqSameImage!1007 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280687 (seqFromList!4373 (originalCharacters!6538 (_1!22434 lt!1280654)))))))

(declare-fun lt!1280650 () Unit!56380)

(declare-fun lemmaSemiInverse!1573 (TokenValueInjection!11536 BalanceConc!23316) Unit!56380)

(assert (=> b!3672283 (= lt!1280650 (lemmaSemiInverse!1573 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280687))))

(declare-fun b!3672284 () Bool)

(assert (=> b!3672284 false))

(declare-fun lt!1280667 () Unit!56380)

(assert (=> b!3672284 (= lt!1280667 call!265878)))

(declare-fun call!265877 () Bool)

(assert (=> b!3672284 (not call!265877)))

(declare-fun lt!1280661 () Unit!56380)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!352 (LexerInterface!5413 List!38857 List!38857 Rule!11448 Rule!11448 C!21352) Unit!56380)

(assert (=> b!3672284 (= lt!1280661 (lemmaSepRuleNotContainsCharContainedInANonSepRule!352 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8650 (_1!22434 lt!1280654)) lt!1280656))))

(declare-fun e!2273879 () Unit!56380)

(declare-fun Unit!56386 () Unit!56380)

(assert (=> b!3672284 (= e!2273879 Unit!56386)))

(declare-fun b!3672285 () Bool)

(declare-fun e!2273878 () Unit!56380)

(declare-fun Unit!56387 () Unit!56380)

(assert (=> b!3672285 (= e!2273878 Unit!56387)))

(declare-fun lt!1280668 () Unit!56380)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!204 (List!38856) Unit!56380)

(assert (=> b!3672285 (= lt!1280668 (lemmaGetSuffixOnListWithItSelfIsEmpty!204 lt!1280697))))

(assert (=> b!3672285 (isEmpty!22990 (getSuffix!1740 lt!1280697 lt!1280697))))

(declare-fun lt!1280649 () Unit!56380)

(assert (=> b!3672285 (= lt!1280649 (lemmaMaxPrefNoSmallerRuleMatches!232 thiss!23823 rules!3307 rule!403 lt!1280697 lt!1280697 (rule!8650 (_1!22434 lt!1280654))))))

(declare-fun res!1491514 () Bool)

(declare-fun matchR!5152 (Regex!10583 List!38856) Bool)

(assert (=> b!3672285 (= res!1491514 (not (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280697)))))

(declare-fun e!2273898 () Bool)

(assert (=> b!3672285 (=> (not res!1491514) (not e!2273898))))

(assert (=> b!3672285 e!2273898))

(declare-fun bm!265873 () Bool)

(declare-fun call!265879 () List!38856)

(assert (=> bm!265873 (= call!265877 (contains!7715 call!265879 lt!1280656))))

(declare-fun b!3672286 () Bool)

(declare-fun tp!1117306 () Bool)

(declare-fun e!2273871 () Bool)

(declare-fun inv!21 (TokenValue!6054) Bool)

(assert (=> b!3672286 (= e!2273881 (and (inv!21 (value!186444 token!511)) e!2273871 tp!1117306))))

(declare-fun bm!265874 () Bool)

(declare-fun call!265880 () Unit!56380)

(assert (=> bm!265874 (= call!265880 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!772 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693 lt!1280700))))

(declare-fun b!3672287 () Bool)

(declare-fun e!2273875 () Unit!56380)

(declare-fun Unit!56388 () Unit!56380)

(assert (=> b!3672287 (= e!2273875 Unit!56388)))

(declare-fun lt!1280660 () Unit!56380)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!366 (LexerInterface!5413 List!38857 Rule!11448 List!38856 List!38856 List!38856 Rule!11448) Unit!56380)

(assert (=> b!3672287 (= lt!1280660 (lemmaMaxPrefixOutputsMaxPrefix!366 thiss!23823 rules!3307 (rule!8650 (_1!22434 lt!1280654)) lt!1280693 lt!1280690 lt!1280697 rule!403))))

(assert (=> b!3672287 false))

(declare-fun b!3672288 () Bool)

(declare-fun tp!1117309 () Bool)

(declare-fun inv!52215 (String!43604) Bool)

(declare-fun inv!52219 (TokenValueInjection!11536) Bool)

(assert (=> b!3672288 (= e!2273904 (and tp!1117309 (inv!52215 (tag!6616 anOtherTypeRule!33)) (inv!52219 (transformation!5824 anOtherTypeRule!33)) e!2273902))))

(declare-fun b!3672289 () Bool)

(assert (=> b!3672289 false))

(declare-fun lt!1280678 () Unit!56380)

(assert (=> b!3672289 (= lt!1280678 call!265878)))

(assert (=> b!3672289 (not call!265877)))

(declare-fun lt!1280647 () Unit!56380)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!470 (LexerInterface!5413 List!38857 List!38857 Rule!11448 Rule!11448 C!21352) Unit!56380)

(assert (=> b!3672289 (= lt!1280647 (lemmaNonSepRuleNotContainsCharContainedInASepRule!470 thiss!23823 rules!3307 rules!3307 (rule!8650 (_1!22434 lt!1280654)) anOtherTypeRule!33 lt!1280656))))

(declare-fun Unit!56389 () Unit!56380)

(assert (=> b!3672289 (= e!2273879 Unit!56389)))

(declare-fun e!2273901 () Bool)

(declare-fun b!3672290 () Bool)

(declare-fun tp!1117308 () Bool)

(assert (=> b!3672290 (= e!2273883 (and tp!1117308 (inv!52215 (tag!6616 (h!44153 rules!3307))) (inv!52219 (transformation!5824 (h!44153 rules!3307))) e!2273901))))

(assert (=> b!3672291 (= e!2273901 (and tp!1117305 tp!1117311))))

(declare-fun b!3672292 () Bool)

(assert (=> b!3672292 (= e!2273868 e!2273888)))

(declare-fun res!1491523 () Bool)

(assert (=> b!3672292 (=> (not res!1491523) (not e!2273888))))

(assert (=> b!3672292 (= res!1491523 (matchR!5152 (regex!5824 lt!1280666) (list!14386 (charsOf!3838 (_1!22434 lt!1280654)))))))

(declare-fun get!12799 (Option!8276) Rule!11448)

(assert (=> b!3672292 (= lt!1280666 (get!12799 lt!1280694))))

(declare-fun b!3672293 () Bool)

(declare-fun e!2273900 () Unit!56380)

(assert (=> b!3672293 (= e!2273886 e!2273900)))

(declare-fun c!634963 () Bool)

(assert (=> b!3672293 (= c!634963 (isSeparator!5824 (rule!8650 (_1!22434 lt!1280654))))))

(declare-fun bm!265875 () Bool)

(assert (=> bm!265875 (= call!265879 (usedCharacters!1036 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672294 () Bool)

(declare-fun Unit!56390 () Unit!56380)

(assert (=> b!3672294 (= e!2273890 Unit!56390)))

(declare-fun b!3672295 () Bool)

(declare-fun e!2273876 () Bool)

(assert (=> b!3672295 (= e!2273876 e!2273882)))

(declare-fun res!1491525 () Bool)

(assert (=> b!3672295 (=> res!1491525 e!2273882)))

(declare-fun lt!1280651 () List!38856)

(assert (=> b!3672295 (= res!1491525 (contains!7715 lt!1280651 lt!1280656))))

(declare-fun head!7866 (List!38856) C!21352)

(assert (=> b!3672295 (= lt!1280656 (head!7866 suffix!1395))))

(assert (=> b!3672295 (= lt!1280651 (usedCharacters!1036 (regex!5824 rule!403)))))

(declare-fun b!3672296 () Bool)

(declare-fun tp!1117316 () Bool)

(assert (=> b!3672296 (= e!2273871 (and tp!1117316 (inv!52215 (tag!6616 (rule!8650 token!511))) (inv!52219 (transformation!5824 (rule!8650 token!511))) e!2273887))))

(declare-fun b!3672297 () Bool)

(declare-fun res!1491530 () Bool)

(assert (=> b!3672297 (=> (not res!1491530) (not e!2273869))))

(assert (=> b!3672297 (= res!1491530 (contains!7716 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3672298 () Bool)

(declare-fun e!2273877 () Unit!56380)

(declare-fun Unit!56391 () Unit!56380)

(assert (=> b!3672298 (= e!2273877 Unit!56391)))

(declare-fun b!3672299 () Bool)

(declare-fun Unit!56392 () Unit!56380)

(assert (=> b!3672299 (= e!2273900 Unit!56392)))

(declare-fun b!3672300 () Bool)

(declare-fun res!1491513 () Bool)

(assert (=> b!3672300 (=> res!1491513 e!2273876)))

(assert (=> b!3672300 (= res!1491513 (isEmpty!22990 suffix!1395))))

(declare-fun tp!1117314 () Bool)

(declare-fun b!3672301 () Bool)

(declare-fun e!2273873 () Bool)

(assert (=> b!3672301 (= e!2273897 (and tp!1117314 (inv!52215 (tag!6616 rule!403)) (inv!52219 (transformation!5824 rule!403)) e!2273873))))

(declare-fun b!3672302 () Bool)

(declare-fun res!1491515 () Bool)

(assert (=> b!3672302 (=> (not res!1491515) (not e!2273869))))

(declare-fun isEmpty!22991 (List!38857) Bool)

(assert (=> b!3672302 (= res!1491515 (not (isEmpty!22991 rules!3307)))))

(declare-fun b!3672303 () Bool)

(assert (=> b!3672303 (= e!2273885 e!2273879)))

(declare-fun lt!1280692 () Unit!56380)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!132 (List!38856 List!38856 List!38856 List!38856) Unit!56380)

(assert (=> b!3672303 (= lt!1280692 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!132 lt!1280697 suffix!1395 lt!1280693 lt!1280690))))

(assert (=> b!3672303 (contains!7715 lt!1280693 lt!1280656)))

(declare-fun c!634970 () Bool)

(assert (=> b!3672303 (= c!634970 (isSeparator!5824 rule!403))))

(declare-fun b!3672304 () Bool)

(assert (=> b!3672304 (= e!2273898 false)))

(declare-fun b!3672305 () Bool)

(declare-fun Unit!56393 () Unit!56380)

(assert (=> b!3672305 (= e!2273877 Unit!56393)))

(declare-fun lt!1280683 () Unit!56380)

(assert (=> b!3672305 (= lt!1280683 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!772 (regex!5824 rule!403) lt!1280697 lt!1280700))))

(assert (=> b!3672305 false))

(declare-fun b!3672306 () Bool)

(declare-fun res!1491526 () Bool)

(assert (=> b!3672306 (=> res!1491526 e!2273874)))

(assert (=> b!3672306 (= res!1491526 (not (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693)))))

(declare-fun b!3672307 () Bool)

(declare-fun Unit!56394 () Unit!56380)

(assert (=> b!3672307 (= e!2273878 Unit!56394)))

(declare-fun b!3672308 () Bool)

(assert (=> b!3672308 false))

(declare-fun lt!1280658 () Unit!56380)

(assert (=> b!3672308 (= lt!1280658 call!265880)))

(assert (=> b!3672308 (not call!265875)))

(declare-fun lt!1280682 () Unit!56380)

(assert (=> b!3672308 (= lt!1280682 (lemmaNonSepRuleNotContainsCharContainedInASepRule!470 thiss!23823 rules!3307 rules!3307 (rule!8650 (_1!22434 lt!1280654)) rule!403 lt!1280700))))

(declare-fun Unit!56395 () Unit!56380)

(assert (=> b!3672308 (= e!2273890 Unit!56395)))

(declare-fun b!3672309 () Bool)

(declare-fun Unit!56396 () Unit!56380)

(assert (=> b!3672309 (= e!2273875 Unit!56396)))

(assert (=> b!3672310 (= e!2273873 (and tp!1117307 tp!1117315))))

(declare-fun b!3672311 () Bool)

(declare-fun e!2273893 () Bool)

(assert (=> b!3672311 (= e!2273893 (contains!7716 rules!3307 (rule!8650 (_1!22434 lt!1280654))))))

(declare-fun lt!1280657 () Unit!56380)

(assert (=> b!3672311 (= lt!1280657 e!2273872)))

(declare-fun c!634966 () Bool)

(declare-fun lt!1280653 () Int)

(declare-fun lt!1280670 () Int)

(assert (=> b!3672311 (= c!634966 (< lt!1280653 lt!1280670))))

(declare-fun lt!1280679 () Unit!56380)

(assert (=> b!3672311 (= lt!1280679 e!2273878)))

(declare-fun c!634968 () Bool)

(assert (=> b!3672311 (= c!634968 (< lt!1280670 lt!1280653))))

(declare-fun getIndex!492 (List!38857 Rule!11448) Int)

(assert (=> b!3672311 (= lt!1280653 (getIndex!492 rules!3307 rule!403))))

(assert (=> b!3672311 (= lt!1280670 (getIndex!492 rules!3307 (rule!8650 (_1!22434 lt!1280654))))))

(declare-fun b!3672312 () Bool)

(assert (=> b!3672312 (= e!2273892 e!2273896)))

(declare-fun res!1491533 () Bool)

(assert (=> b!3672312 (=> (not res!1491533) (not e!2273896))))

(assert (=> b!3672312 (= res!1491533 (= (_1!22434 lt!1280665) token!511))))

(assert (=> b!3672312 (= lt!1280665 (get!12798 lt!1280648))))

(declare-fun b!3672313 () Bool)

(declare-fun res!1491527 () Bool)

(assert (=> b!3672313 (=> (not res!1491527) (not e!2273869))))

(assert (=> b!3672313 (= res!1491527 (not (= (isSeparator!5824 anOtherTypeRule!33) (isSeparator!5824 rule!403))))))

(declare-fun b!3672314 () Bool)

(assert (=> b!3672314 false))

(declare-fun lt!1280669 () Unit!56380)

(assert (=> b!3672314 (= lt!1280669 call!265880)))

(assert (=> b!3672314 (not call!265875)))

(declare-fun lt!1280691 () Unit!56380)

(assert (=> b!3672314 (= lt!1280691 (lemmaSepRuleNotContainsCharContainedInANonSepRule!352 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8650 (_1!22434 lt!1280654)) lt!1280700))))

(declare-fun Unit!56397 () Unit!56380)

(assert (=> b!3672314 (= e!2273900 Unit!56397)))

(declare-fun b!3672315 () Bool)

(assert (=> b!3672315 (= e!2273896 (not e!2273876))))

(declare-fun res!1491528 () Bool)

(assert (=> b!3672315 (=> res!1491528 e!2273876)))

(assert (=> b!3672315 (= res!1491528 (not (matchR!5152 (regex!5824 rule!403) lt!1280697)))))

(declare-fun ruleValid!2088 (LexerInterface!5413 Rule!11448) Bool)

(assert (=> b!3672315 (ruleValid!2088 thiss!23823 rule!403)))

(declare-fun lt!1280689 () Unit!56380)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1242 (LexerInterface!5413 Rule!11448 List!38857) Unit!56380)

(assert (=> b!3672315 (= lt!1280689 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1242 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3672316 () Bool)

(declare-fun res!1491511 () Bool)

(assert (=> b!3672316 (=> (not res!1491511) (not e!2273896))))

(assert (=> b!3672316 (= res!1491511 (= (rule!8650 token!511) rule!403))))

(declare-fun b!3672317 () Bool)

(declare-fun tp_is_empty!18249 () Bool)

(declare-fun tp!1117313 () Bool)

(assert (=> b!3672317 (= e!2273894 (and tp_is_empty!18249 tp!1117313))))

(declare-fun b!3672318 () Bool)

(assert (=> b!3672318 (= e!2273884 e!2273893)))

(declare-fun res!1491532 () Bool)

(assert (=> b!3672318 (=> res!1491532 e!2273893)))

(assert (=> b!3672318 (= res!1491532 (= (rule!8650 (_1!22434 lt!1280654)) (rule!8650 token!511)))))

(assert (=> b!3672318 (= lt!1280693 lt!1280697)))

(declare-fun lt!1280684 () Unit!56380)

(declare-fun lemmaIsPrefixSameLengthThenSameList!649 (List!38856 List!38856 List!38856) Unit!56380)

(assert (=> b!3672318 (= lt!1280684 (lemmaIsPrefixSameLengthThenSameList!649 lt!1280693 lt!1280697 lt!1280690))))

(declare-fun lt!1280672 () Unit!56380)

(assert (=> b!3672318 (= lt!1280672 e!2273875)))

(declare-fun c!634965 () Bool)

(declare-fun lt!1280696 () Int)

(assert (=> b!3672318 (= c!634965 (< lt!1280688 lt!1280696))))

(declare-fun lt!1280681 () Unit!56380)

(assert (=> b!3672318 (= lt!1280681 e!2273885)))

(declare-fun c!634964 () Bool)

(assert (=> b!3672318 (= c!634964 (> lt!1280688 lt!1280696))))

(assert (=> b!3672318 (= lt!1280696 (size!29607 lt!1280685))))

(declare-fun lt!1280663 () Unit!56380)

(assert (=> b!3672318 (= lt!1280663 e!2273886)))

(declare-fun c!634967 () Bool)

(assert (=> b!3672318 (= c!634967 (isSeparator!5824 rule!403))))

(declare-fun lt!1280680 () Unit!56380)

(assert (=> b!3672318 (= lt!1280680 e!2273877)))

(declare-fun c!634971 () Bool)

(assert (=> b!3672318 (= c!634971 (not (contains!7715 lt!1280651 lt!1280700)))))

(assert (=> b!3672318 (= lt!1280700 (head!7866 lt!1280693))))

(assert (= (and start!344214 res!1491521) b!3672302))

(assert (= (and b!3672302 res!1491515) b!3672279))

(assert (= (and b!3672279 res!1491518) b!3672281))

(assert (= (and b!3672281 res!1491520) b!3672297))

(assert (= (and b!3672297 res!1491530) b!3672313))

(assert (= (and b!3672313 res!1491527) b!3672278))

(assert (= (and b!3672278 res!1491529) b!3672312))

(assert (= (and b!3672312 res!1491533) b!3672280))

(assert (= (and b!3672280 res!1491512) b!3672316))

(assert (= (and b!3672316 res!1491511) b!3672315))

(assert (= (and b!3672315 (not res!1491528)) b!3672300))

(assert (= (and b!3672300 (not res!1491513)) b!3672295))

(assert (= (and b!3672295 (not res!1491525)) b!3672273))

(assert (= (and b!3672273 (not res!1491522)) b!3672272))

(assert (= (and b!3672272 (not res!1491531)) b!3672275))

(assert (= (and b!3672275 res!1491517) b!3672292))

(assert (= (and b!3672292 res!1491523) b!3672268))

(assert (= (and b!3672275 (not res!1491524)) b!3672306))

(assert (= (and b!3672306 (not res!1491526)) b!3672283))

(assert (= (and b!3672283 (not res!1491516)) b!3672277))

(assert (= (and b!3672277 (not res!1491519)) b!3672318))

(assert (= (and b!3672318 c!634971) b!3672305))

(assert (= (and b!3672318 (not c!634971)) b!3672298))

(assert (= (and b!3672318 c!634967) b!3672274))

(assert (= (and b!3672318 (not c!634967)) b!3672293))

(assert (= (and b!3672274 c!634969) b!3672308))

(assert (= (and b!3672274 (not c!634969)) b!3672294))

(assert (= (and b!3672293 c!634963) b!3672314))

(assert (= (and b!3672293 (not c!634963)) b!3672299))

(assert (= (or b!3672308 b!3672314) bm!265874))

(assert (= (or b!3672308 b!3672314) bm!265871))

(assert (= (or b!3672308 b!3672314) bm!265870))

(assert (= (and b!3672318 c!634964) b!3672303))

(assert (= (and b!3672318 (not c!634964)) b!3672267))

(assert (= (and b!3672303 c!634970) b!3672284))

(assert (= (and b!3672303 (not c!634970)) b!3672289))

(assert (= (or b!3672284 b!3672289) bm!265872))

(assert (= (or b!3672284 b!3672289) bm!265875))

(assert (= (or b!3672284 b!3672289) bm!265873))

(assert (= (and b!3672318 c!634965) b!3672287))

(assert (= (and b!3672318 (not c!634965)) b!3672309))

(assert (= (and b!3672318 (not res!1491532)) b!3672311))

(assert (= (and b!3672311 c!634968) b!3672285))

(assert (= (and b!3672311 (not c!634968)) b!3672307))

(assert (= (and b!3672285 res!1491514) b!3672304))

(assert (= (and b!3672311 c!634966) b!3672270))

(assert (= (and b!3672311 (not c!634966)) b!3672271))

(assert (= b!3672290 b!3672291))

(assert (= b!3672276 b!3672290))

(assert (= (and start!344214 ((_ is Cons!38733) rules!3307)) b!3672276))

(assert (= (and start!344214 ((_ is Cons!38732) suffix!1395)) b!3672317))

(assert (= b!3672296 b!3672269))

(assert (= b!3672286 b!3672296))

(assert (= start!344214 b!3672286))

(assert (= b!3672301 b!3672310))

(assert (= start!344214 b!3672301))

(assert (= b!3672288 b!3672282))

(assert (= start!344214 b!3672288))

(declare-fun m!4181113 () Bool)

(assert (=> b!3672270 m!4181113))

(declare-fun m!4181115 () Bool)

(assert (=> bm!265870 m!4181115))

(declare-fun m!4181117 () Bool)

(assert (=> b!3672280 m!4181117))

(declare-fun m!4181119 () Bool)

(assert (=> b!3672302 m!4181119))

(declare-fun m!4181121 () Bool)

(assert (=> b!3672312 m!4181121))

(declare-fun m!4181123 () Bool)

(assert (=> b!3672277 m!4181123))

(declare-fun m!4181125 () Bool)

(assert (=> b!3672277 m!4181125))

(declare-fun m!4181127 () Bool)

(assert (=> b!3672277 m!4181127))

(assert (=> b!3672277 m!4181125))

(declare-fun m!4181129 () Bool)

(assert (=> b!3672277 m!4181129))

(declare-fun m!4181131 () Bool)

(assert (=> b!3672277 m!4181131))

(declare-fun m!4181133 () Bool)

(assert (=> b!3672277 m!4181133))

(declare-fun m!4181135 () Bool)

(assert (=> b!3672277 m!4181135))

(declare-fun m!4181137 () Bool)

(assert (=> b!3672289 m!4181137))

(declare-fun m!4181139 () Bool)

(assert (=> b!3672272 m!4181139))

(declare-fun m!4181141 () Bool)

(assert (=> b!3672314 m!4181141))

(declare-fun m!4181143 () Bool)

(assert (=> b!3672305 m!4181143))

(declare-fun m!4181145 () Bool)

(assert (=> b!3672283 m!4181145))

(declare-fun m!4181147 () Bool)

(assert (=> b!3672283 m!4181147))

(declare-fun m!4181149 () Bool)

(assert (=> b!3672283 m!4181149))

(declare-fun m!4181151 () Bool)

(assert (=> b!3672283 m!4181151))

(declare-fun m!4181153 () Bool)

(assert (=> b!3672283 m!4181153))

(assert (=> b!3672283 m!4181145))

(declare-fun m!4181155 () Bool)

(assert (=> b!3672283 m!4181155))

(declare-fun m!4181157 () Bool)

(assert (=> b!3672284 m!4181157))

(declare-fun m!4181159 () Bool)

(assert (=> b!3672275 m!4181159))

(declare-fun m!4181161 () Bool)

(assert (=> b!3672275 m!4181161))

(declare-fun m!4181163 () Bool)

(assert (=> b!3672275 m!4181163))

(declare-fun m!4181165 () Bool)

(assert (=> b!3672275 m!4181165))

(declare-fun m!4181167 () Bool)

(assert (=> b!3672275 m!4181167))

(declare-fun m!4181169 () Bool)

(assert (=> b!3672275 m!4181169))

(declare-fun m!4181171 () Bool)

(assert (=> b!3672275 m!4181171))

(declare-fun m!4181173 () Bool)

(assert (=> b!3672275 m!4181173))

(declare-fun m!4181175 () Bool)

(assert (=> b!3672275 m!4181175))

(declare-fun m!4181177 () Bool)

(assert (=> b!3672275 m!4181177))

(assert (=> b!3672275 m!4181169))

(declare-fun m!4181179 () Bool)

(assert (=> b!3672275 m!4181179))

(declare-fun m!4181181 () Bool)

(assert (=> b!3672275 m!4181181))

(declare-fun m!4181183 () Bool)

(assert (=> b!3672275 m!4181183))

(declare-fun m!4181185 () Bool)

(assert (=> b!3672275 m!4181185))

(declare-fun m!4181187 () Bool)

(assert (=> b!3672275 m!4181187))

(declare-fun m!4181189 () Bool)

(assert (=> b!3672308 m!4181189))

(declare-fun m!4181191 () Bool)

(assert (=> b!3672290 m!4181191))

(declare-fun m!4181193 () Bool)

(assert (=> b!3672290 m!4181193))

(declare-fun m!4181195 () Bool)

(assert (=> b!3672278 m!4181195))

(declare-fun m!4181197 () Bool)

(assert (=> b!3672278 m!4181197))

(declare-fun m!4181199 () Bool)

(assert (=> b!3672278 m!4181199))

(declare-fun m!4181201 () Bool)

(assert (=> b!3672278 m!4181201))

(declare-fun m!4181203 () Bool)

(assert (=> b!3672279 m!4181203))

(declare-fun m!4181205 () Bool)

(assert (=> b!3672288 m!4181205))

(declare-fun m!4181207 () Bool)

(assert (=> b!3672288 m!4181207))

(declare-fun m!4181209 () Bool)

(assert (=> b!3672300 m!4181209))

(declare-fun m!4181211 () Bool)

(assert (=> b!3672285 m!4181211))

(declare-fun m!4181213 () Bool)

(assert (=> b!3672285 m!4181213))

(declare-fun m!4181215 () Bool)

(assert (=> b!3672285 m!4181215))

(assert (=> b!3672285 m!4181215))

(declare-fun m!4181217 () Bool)

(assert (=> b!3672285 m!4181217))

(declare-fun m!4181219 () Bool)

(assert (=> b!3672285 m!4181219))

(declare-fun m!4181221 () Bool)

(assert (=> b!3672318 m!4181221))

(declare-fun m!4181223 () Bool)

(assert (=> b!3672318 m!4181223))

(declare-fun m!4181225 () Bool)

(assert (=> b!3672318 m!4181225))

(declare-fun m!4181227 () Bool)

(assert (=> b!3672318 m!4181227))

(declare-fun m!4181229 () Bool)

(assert (=> b!3672296 m!4181229))

(declare-fun m!4181231 () Bool)

(assert (=> b!3672296 m!4181231))

(assert (=> b!3672292 m!4181187))

(assert (=> b!3672292 m!4181187))

(declare-fun m!4181233 () Bool)

(assert (=> b!3672292 m!4181233))

(assert (=> b!3672292 m!4181233))

(declare-fun m!4181235 () Bool)

(assert (=> b!3672292 m!4181235))

(declare-fun m!4181237 () Bool)

(assert (=> b!3672292 m!4181237))

(declare-fun m!4181239 () Bool)

(assert (=> b!3672311 m!4181239))

(declare-fun m!4181241 () Bool)

(assert (=> b!3672311 m!4181241))

(declare-fun m!4181243 () Bool)

(assert (=> b!3672311 m!4181243))

(declare-fun m!4181245 () Bool)

(assert (=> bm!265875 m!4181245))

(declare-fun m!4181247 () Bool)

(assert (=> b!3672315 m!4181247))

(declare-fun m!4181249 () Bool)

(assert (=> b!3672315 m!4181249))

(declare-fun m!4181251 () Bool)

(assert (=> b!3672315 m!4181251))

(assert (=> bm!265871 m!4181245))

(declare-fun m!4181253 () Bool)

(assert (=> b!3672286 m!4181253))

(declare-fun m!4181255 () Bool)

(assert (=> b!3672303 m!4181255))

(declare-fun m!4181257 () Bool)

(assert (=> b!3672303 m!4181257))

(declare-fun m!4181259 () Bool)

(assert (=> b!3672273 m!4181259))

(assert (=> b!3672273 m!4181259))

(declare-fun m!4181261 () Bool)

(assert (=> b!3672273 m!4181261))

(declare-fun m!4181263 () Bool)

(assert (=> bm!265872 m!4181263))

(declare-fun m!4181265 () Bool)

(assert (=> start!344214 m!4181265))

(declare-fun m!4181267 () Bool)

(assert (=> b!3672295 m!4181267))

(declare-fun m!4181269 () Bool)

(assert (=> b!3672295 m!4181269))

(declare-fun m!4181271 () Bool)

(assert (=> b!3672295 m!4181271))

(declare-fun m!4181273 () Bool)

(assert (=> b!3672301 m!4181273))

(declare-fun m!4181275 () Bool)

(assert (=> b!3672301 m!4181275))

(declare-fun m!4181277 () Bool)

(assert (=> b!3672287 m!4181277))

(declare-fun m!4181279 () Bool)

(assert (=> b!3672306 m!4181279))

(declare-fun m!4181281 () Bool)

(assert (=> bm!265874 m!4181281))

(declare-fun m!4181283 () Bool)

(assert (=> bm!265873 m!4181283))

(declare-fun m!4181285 () Bool)

(assert (=> b!3672297 m!4181285))

(declare-fun m!4181287 () Bool)

(assert (=> b!3672281 m!4181287))

(check-sat (not b!3672306) (not b!3672278) (not b!3672275) (not b!3672308) (not b!3672280) (not b!3672295) (not b!3672270) (not b_next!97795) (not b_next!97799) (not b!3672296) (not b_next!97793) (not b!3672292) (not b_next!97803) (not bm!265870) (not bm!265875) (not b_next!97805) (not bm!265873) (not b!3672279) b_and!273637 (not b!3672276) (not b!3672301) (not b_next!97797) (not b!3672272) (not b!3672281) b_and!273647 (not b!3672273) (not b!3672318) (not b_next!97801) b_and!273643 (not b!3672300) (not b!3672277) (not b_next!97807) (not b!3672289) (not b!3672297) (not b!3672286) (not bm!265874) (not b!3672305) b_and!273635 (not b!3672311) b_and!273639 (not start!344214) (not b!3672312) (not b!3672314) (not b!3672302) (not b!3672290) b_and!273649 (not b!3672315) (not b!3672287) (not bm!265872) b_and!273641 (not b!3672284) (not b!3672288) (not b!3672285) (not bm!265871) tp_is_empty!18249 (not b!3672283) b_and!273645 (not b!3672317) (not b!3672303))
(check-sat (not b_next!97803) (not b_next!97805) b_and!273637 (not b_next!97797) b_and!273647 (not b_next!97807) (not b_next!97795) b_and!273635 (not b_next!97799) b_and!273639 b_and!273649 b_and!273641 (not b_next!97793) b_and!273645 (not b_next!97801) b_and!273643)
(get-model)

(declare-fun d!1078349 () Bool)

(assert (=> d!1078349 (= (inv!52215 (tag!6616 (h!44153 rules!3307))) (= (mod (str.len (value!186443 (tag!6616 (h!44153 rules!3307)))) 2) 0))))

(assert (=> b!3672290 d!1078349))

(declare-fun d!1078351 () Bool)

(declare-fun res!1491546 () Bool)

(declare-fun e!2273907 () Bool)

(assert (=> d!1078351 (=> (not res!1491546) (not e!2273907))))

(declare-fun semiInverseModEq!2484 (Int Int) Bool)

(assert (=> d!1078351 (= res!1491546 (semiInverseModEq!2484 (toChars!7979 (transformation!5824 (h!44153 rules!3307))) (toValue!8120 (transformation!5824 (h!44153 rules!3307)))))))

(assert (=> d!1078351 (= (inv!52219 (transformation!5824 (h!44153 rules!3307))) e!2273907)))

(declare-fun b!3672321 () Bool)

(declare-fun equivClasses!2383 (Int Int) Bool)

(assert (=> b!3672321 (= e!2273907 (equivClasses!2383 (toChars!7979 (transformation!5824 (h!44153 rules!3307))) (toValue!8120 (transformation!5824 (h!44153 rules!3307)))))))

(assert (= (and d!1078351 res!1491546) b!3672321))

(declare-fun m!4181289 () Bool)

(assert (=> d!1078351 m!4181289))

(declare-fun m!4181291 () Bool)

(assert (=> b!3672321 m!4181291))

(assert (=> b!3672290 d!1078351))

(declare-fun d!1078353 () Bool)

(assert (=> d!1078353 (not (contains!7715 (usedCharacters!1036 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280656))))

(declare-fun lt!1280703 () Unit!56380)

(declare-fun choose!21849 (LexerInterface!5413 List!38857 List!38857 Rule!11448 Rule!11448 C!21352) Unit!56380)

(assert (=> d!1078353 (= lt!1280703 (choose!21849 thiss!23823 rules!3307 rules!3307 (rule!8650 (_1!22434 lt!1280654)) anOtherTypeRule!33 lt!1280656))))

(assert (=> d!1078353 (rulesInvariant!4810 thiss!23823 rules!3307)))

(assert (=> d!1078353 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!470 thiss!23823 rules!3307 rules!3307 (rule!8650 (_1!22434 lt!1280654)) anOtherTypeRule!33 lt!1280656) lt!1280703)))

(declare-fun bs!573214 () Bool)

(assert (= bs!573214 d!1078353))

(assert (=> bs!573214 m!4181245))

(assert (=> bs!573214 m!4181245))

(declare-fun m!4181293 () Bool)

(assert (=> bs!573214 m!4181293))

(declare-fun m!4181295 () Bool)

(assert (=> bs!573214 m!4181295))

(assert (=> bs!573214 m!4181203))

(assert (=> b!3672289 d!1078353))

(declare-fun d!1078357 () Bool)

(declare-fun lt!1280709 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5609 (List!38856) (InoxSet C!21352))

(assert (=> d!1078357 (= lt!1280709 (select (content!5609 (usedCharacters!1036 (regex!5824 anOtherTypeRule!33))) lt!1280656))))

(declare-fun e!2273926 () Bool)

(assert (=> d!1078357 (= lt!1280709 e!2273926)))

(declare-fun res!1491557 () Bool)

(assert (=> d!1078357 (=> (not res!1491557) (not e!2273926))))

(assert (=> d!1078357 (= res!1491557 ((_ is Cons!38732) (usedCharacters!1036 (regex!5824 anOtherTypeRule!33))))))

(assert (=> d!1078357 (= (contains!7715 (usedCharacters!1036 (regex!5824 anOtherTypeRule!33)) lt!1280656) lt!1280709)))

(declare-fun b!3672348 () Bool)

(declare-fun e!2273927 () Bool)

(assert (=> b!3672348 (= e!2273926 e!2273927)))

(declare-fun res!1491558 () Bool)

(assert (=> b!3672348 (=> res!1491558 e!2273927)))

(assert (=> b!3672348 (= res!1491558 (= (h!44152 (usedCharacters!1036 (regex!5824 anOtherTypeRule!33))) lt!1280656))))

(declare-fun b!3672349 () Bool)

(assert (=> b!3672349 (= e!2273927 (contains!7715 (t!299811 (usedCharacters!1036 (regex!5824 anOtherTypeRule!33))) lt!1280656))))

(assert (= (and d!1078357 res!1491557) b!3672348))

(assert (= (and b!3672348 (not res!1491558)) b!3672349))

(assert (=> d!1078357 m!4181259))

(declare-fun m!4181303 () Bool)

(assert (=> d!1078357 m!4181303))

(declare-fun m!4181305 () Bool)

(assert (=> d!1078357 m!4181305))

(declare-fun m!4181307 () Bool)

(assert (=> b!3672349 m!4181307))

(assert (=> b!3672273 d!1078357))

(declare-fun b!3672400 () Bool)

(declare-fun e!2273959 () List!38856)

(declare-fun e!2273958 () List!38856)

(assert (=> b!3672400 (= e!2273959 e!2273958)))

(declare-fun c!635005 () Bool)

(assert (=> b!3672400 (= c!635005 ((_ is ElementMatch!10583) (regex!5824 anOtherTypeRule!33)))))

(declare-fun b!3672401 () Bool)

(declare-fun e!2273960 () List!38856)

(declare-fun call!265906 () List!38856)

(assert (=> b!3672401 (= e!2273960 call!265906)))

(declare-fun b!3672402 () Bool)

(assert (=> b!3672402 (= e!2273958 (Cons!38732 (c!634972 (regex!5824 anOtherTypeRule!33)) Nil!38732))))

(declare-fun bm!265900 () Bool)

(declare-fun call!265908 () List!38856)

(declare-fun c!635004 () Bool)

(declare-fun call!265907 () List!38856)

(declare-fun call!265905 () List!38856)

(assert (=> bm!265900 (= call!265908 (++!9640 (ite c!635004 call!265905 call!265907) (ite c!635004 call!265907 call!265905)))))

(declare-fun bm!265901 () Bool)

(assert (=> bm!265901 (= call!265905 call!265906)))

(declare-fun d!1078361 () Bool)

(declare-fun c!635006 () Bool)

(assert (=> d!1078361 (= c!635006 (or ((_ is EmptyExpr!10583) (regex!5824 anOtherTypeRule!33)) ((_ is EmptyLang!10583) (regex!5824 anOtherTypeRule!33))))))

(assert (=> d!1078361 (= (usedCharacters!1036 (regex!5824 anOtherTypeRule!33)) e!2273959)))

(declare-fun b!3672403 () Bool)

(declare-fun c!635003 () Bool)

(assert (=> b!3672403 (= c!635003 ((_ is Star!10583) (regex!5824 anOtherTypeRule!33)))))

(assert (=> b!3672403 (= e!2273958 e!2273960)))

(declare-fun b!3672404 () Bool)

(declare-fun e!2273961 () List!38856)

(assert (=> b!3672404 (= e!2273961 call!265908)))

(declare-fun b!3672405 () Bool)

(assert (=> b!3672405 (= e!2273959 Nil!38732)))

(declare-fun bm!265902 () Bool)

(assert (=> bm!265902 (= call!265906 (usedCharacters!1036 (ite c!635003 (reg!10912 (regex!5824 anOtherTypeRule!33)) (ite c!635004 (regOne!21679 (regex!5824 anOtherTypeRule!33)) (regTwo!21678 (regex!5824 anOtherTypeRule!33))))))))

(declare-fun bm!265903 () Bool)

(assert (=> bm!265903 (= call!265907 (usedCharacters!1036 (ite c!635004 (regTwo!21679 (regex!5824 anOtherTypeRule!33)) (regOne!21678 (regex!5824 anOtherTypeRule!33)))))))

(declare-fun b!3672406 () Bool)

(assert (=> b!3672406 (= e!2273961 call!265908)))

(declare-fun b!3672407 () Bool)

(assert (=> b!3672407 (= e!2273960 e!2273961)))

(assert (=> b!3672407 (= c!635004 ((_ is Union!10583) (regex!5824 anOtherTypeRule!33)))))

(assert (= (and d!1078361 c!635006) b!3672405))

(assert (= (and d!1078361 (not c!635006)) b!3672400))

(assert (= (and b!3672400 c!635005) b!3672402))

(assert (= (and b!3672400 (not c!635005)) b!3672403))

(assert (= (and b!3672403 c!635003) b!3672401))

(assert (= (and b!3672403 (not c!635003)) b!3672407))

(assert (= (and b!3672407 c!635004) b!3672406))

(assert (= (and b!3672407 (not c!635004)) b!3672404))

(assert (= (or b!3672406 b!3672404) bm!265901))

(assert (= (or b!3672406 b!3672404) bm!265903))

(assert (= (or b!3672406 b!3672404) bm!265900))

(assert (= (or b!3672401 bm!265901) bm!265902))

(declare-fun m!4181343 () Bool)

(assert (=> bm!265900 m!4181343))

(declare-fun m!4181345 () Bool)

(assert (=> bm!265902 m!4181345))

(declare-fun m!4181347 () Bool)

(assert (=> bm!265903 m!4181347))

(assert (=> b!3672273 d!1078361))

(declare-fun b!3672408 () Bool)

(declare-fun e!2273963 () List!38856)

(declare-fun e!2273962 () List!38856)

(assert (=> b!3672408 (= e!2273963 e!2273962)))

(declare-fun c!635009 () Bool)

(assert (=> b!3672408 (= c!635009 ((_ is ElementMatch!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672409 () Bool)

(declare-fun e!2273964 () List!38856)

(declare-fun call!265910 () List!38856)

(assert (=> b!3672409 (= e!2273964 call!265910)))

(declare-fun b!3672410 () Bool)

(assert (=> b!3672410 (= e!2273962 (Cons!38732 (c!634972 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) Nil!38732))))

(declare-fun call!265911 () List!38856)

(declare-fun call!265912 () List!38856)

(declare-fun c!635008 () Bool)

(declare-fun bm!265904 () Bool)

(declare-fun call!265909 () List!38856)

(assert (=> bm!265904 (= call!265912 (++!9640 (ite c!635008 call!265909 call!265911) (ite c!635008 call!265911 call!265909)))))

(declare-fun bm!265905 () Bool)

(assert (=> bm!265905 (= call!265909 call!265910)))

(declare-fun d!1078377 () Bool)

(declare-fun c!635010 () Bool)

(assert (=> d!1078377 (= c!635010 (or ((_ is EmptyExpr!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) ((_ is EmptyLang!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))))

(assert (=> d!1078377 (= (usedCharacters!1036 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) e!2273963)))

(declare-fun b!3672411 () Bool)

(declare-fun c!635007 () Bool)

(assert (=> b!3672411 (= c!635007 ((_ is Star!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(assert (=> b!3672411 (= e!2273962 e!2273964)))

(declare-fun b!3672412 () Bool)

(declare-fun e!2273965 () List!38856)

(assert (=> b!3672412 (= e!2273965 call!265912)))

(declare-fun b!3672413 () Bool)

(assert (=> b!3672413 (= e!2273963 Nil!38732)))

(declare-fun bm!265906 () Bool)

(assert (=> bm!265906 (= call!265910 (usedCharacters!1036 (ite c!635007 (reg!10912 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) (ite c!635008 (regOne!21679 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) (regTwo!21678 (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))))))

(declare-fun bm!265907 () Bool)

(assert (=> bm!265907 (= call!265911 (usedCharacters!1036 (ite c!635008 (regTwo!21679 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) (regOne!21678 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))))

(declare-fun b!3672414 () Bool)

(assert (=> b!3672414 (= e!2273965 call!265912)))

(declare-fun b!3672415 () Bool)

(assert (=> b!3672415 (= e!2273964 e!2273965)))

(assert (=> b!3672415 (= c!635008 ((_ is Union!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(assert (= (and d!1078377 c!635010) b!3672413))

(assert (= (and d!1078377 (not c!635010)) b!3672408))

(assert (= (and b!3672408 c!635009) b!3672410))

(assert (= (and b!3672408 (not c!635009)) b!3672411))

(assert (= (and b!3672411 c!635007) b!3672409))

(assert (= (and b!3672411 (not c!635007)) b!3672415))

(assert (= (and b!3672415 c!635008) b!3672414))

(assert (= (and b!3672415 (not c!635008)) b!3672412))

(assert (= (or b!3672414 b!3672412) bm!265905))

(assert (= (or b!3672414 b!3672412) bm!265907))

(assert (= (or b!3672414 b!3672412) bm!265904))

(assert (= (or b!3672409 bm!265905) bm!265906))

(declare-fun m!4181361 () Bool)

(assert (=> bm!265904 m!4181361))

(declare-fun m!4181363 () Bool)

(assert (=> bm!265906 m!4181363))

(declare-fun m!4181365 () Bool)

(assert (=> bm!265907 m!4181365))

(assert (=> bm!265871 d!1078377))

(declare-fun d!1078381 () Bool)

(declare-fun lt!1280725 () Bool)

(assert (=> d!1078381 (= lt!1280725 (select (content!5609 call!265876) lt!1280700))))

(declare-fun e!2273970 () Bool)

(assert (=> d!1078381 (= lt!1280725 e!2273970)))

(declare-fun res!1491571 () Bool)

(assert (=> d!1078381 (=> (not res!1491571) (not e!2273970))))

(assert (=> d!1078381 (= res!1491571 ((_ is Cons!38732) call!265876))))

(assert (=> d!1078381 (= (contains!7715 call!265876 lt!1280700) lt!1280725)))

(declare-fun b!3672422 () Bool)

(declare-fun e!2273971 () Bool)

(assert (=> b!3672422 (= e!2273970 e!2273971)))

(declare-fun res!1491572 () Bool)

(assert (=> b!3672422 (=> res!1491572 e!2273971)))

(assert (=> b!3672422 (= res!1491572 (= (h!44152 call!265876) lt!1280700))))

(declare-fun b!3672423 () Bool)

(assert (=> b!3672423 (= e!2273971 (contains!7715 (t!299811 call!265876) lt!1280700))))

(assert (= (and d!1078381 res!1491571) b!3672422))

(assert (= (and b!3672422 (not res!1491572)) b!3672423))

(declare-fun m!4181369 () Bool)

(assert (=> d!1078381 m!4181369))

(declare-fun m!4181371 () Bool)

(assert (=> d!1078381 m!4181371))

(declare-fun m!4181373 () Bool)

(assert (=> b!3672423 m!4181373))

(assert (=> bm!265870 d!1078381))

(declare-fun d!1078385 () Bool)

(declare-fun lt!1280730 () Bool)

(declare-fun content!5610 (List!38857) (InoxSet Rule!11448))

(assert (=> d!1078385 (= lt!1280730 (select (content!5610 rules!3307) (rule!8650 (_1!22434 lt!1280654))))))

(declare-fun e!2273979 () Bool)

(assert (=> d!1078385 (= lt!1280730 e!2273979)))

(declare-fun res!1491582 () Bool)

(assert (=> d!1078385 (=> (not res!1491582) (not e!2273979))))

(assert (=> d!1078385 (= res!1491582 ((_ is Cons!38733) rules!3307))))

(assert (=> d!1078385 (= (contains!7716 rules!3307 (rule!8650 (_1!22434 lt!1280654))) lt!1280730)))

(declare-fun b!3672432 () Bool)

(declare-fun e!2273978 () Bool)

(assert (=> b!3672432 (= e!2273979 e!2273978)))

(declare-fun res!1491581 () Bool)

(assert (=> b!3672432 (=> res!1491581 e!2273978)))

(assert (=> b!3672432 (= res!1491581 (= (h!44153 rules!3307) (rule!8650 (_1!22434 lt!1280654))))))

(declare-fun b!3672433 () Bool)

(assert (=> b!3672433 (= e!2273978 (contains!7716 (t!299812 rules!3307) (rule!8650 (_1!22434 lt!1280654))))))

(assert (= (and d!1078385 res!1491582) b!3672432))

(assert (= (and b!3672432 (not res!1491581)) b!3672433))

(declare-fun m!4181375 () Bool)

(assert (=> d!1078385 m!4181375))

(declare-fun m!4181377 () Bool)

(assert (=> d!1078385 m!4181377))

(declare-fun m!4181379 () Bool)

(assert (=> b!3672433 m!4181379))

(assert (=> b!3672311 d!1078385))

(declare-fun d!1078387 () Bool)

(declare-fun lt!1280740 () Int)

(assert (=> d!1078387 (>= lt!1280740 0)))

(declare-fun e!2273990 () Int)

(assert (=> d!1078387 (= lt!1280740 e!2273990)))

(declare-fun c!635017 () Bool)

(assert (=> d!1078387 (= c!635017 (and ((_ is Cons!38733) rules!3307) (= (h!44153 rules!3307) rule!403)))))

(assert (=> d!1078387 (contains!7716 rules!3307 rule!403)))

(assert (=> d!1078387 (= (getIndex!492 rules!3307 rule!403) lt!1280740)))

(declare-fun b!3672449 () Bool)

(assert (=> b!3672449 (= e!2273990 0)))

(declare-fun b!3672451 () Bool)

(declare-fun e!2273989 () Int)

(assert (=> b!3672451 (= e!2273989 (+ 1 (getIndex!492 (t!299812 rules!3307) rule!403)))))

(declare-fun b!3672452 () Bool)

(assert (=> b!3672452 (= e!2273989 (- 1))))

(declare-fun b!3672450 () Bool)

(assert (=> b!3672450 (= e!2273990 e!2273989)))

(declare-fun c!635018 () Bool)

(assert (=> b!3672450 (= c!635018 (and ((_ is Cons!38733) rules!3307) (not (= (h!44153 rules!3307) rule!403))))))

(assert (= (and d!1078387 c!635017) b!3672449))

(assert (= (and d!1078387 (not c!635017)) b!3672450))

(assert (= (and b!3672450 c!635018) b!3672451))

(assert (= (and b!3672450 (not c!635018)) b!3672452))

(assert (=> d!1078387 m!4181287))

(declare-fun m!4181401 () Bool)

(assert (=> b!3672451 m!4181401))

(assert (=> b!3672311 d!1078387))

(declare-fun d!1078397 () Bool)

(declare-fun lt!1280741 () Int)

(assert (=> d!1078397 (>= lt!1280741 0)))

(declare-fun e!2273992 () Int)

(assert (=> d!1078397 (= lt!1280741 e!2273992)))

(declare-fun c!635019 () Bool)

(assert (=> d!1078397 (= c!635019 (and ((_ is Cons!38733) rules!3307) (= (h!44153 rules!3307) (rule!8650 (_1!22434 lt!1280654)))))))

(assert (=> d!1078397 (contains!7716 rules!3307 (rule!8650 (_1!22434 lt!1280654)))))

(assert (=> d!1078397 (= (getIndex!492 rules!3307 (rule!8650 (_1!22434 lt!1280654))) lt!1280741)))

(declare-fun b!3672453 () Bool)

(assert (=> b!3672453 (= e!2273992 0)))

(declare-fun b!3672455 () Bool)

(declare-fun e!2273991 () Int)

(assert (=> b!3672455 (= e!2273991 (+ 1 (getIndex!492 (t!299812 rules!3307) (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672456 () Bool)

(assert (=> b!3672456 (= e!2273991 (- 1))))

(declare-fun b!3672454 () Bool)

(assert (=> b!3672454 (= e!2273992 e!2273991)))

(declare-fun c!635020 () Bool)

(assert (=> b!3672454 (= c!635020 (and ((_ is Cons!38733) rules!3307) (not (= (h!44153 rules!3307) (rule!8650 (_1!22434 lt!1280654))))))))

(assert (= (and d!1078397 c!635019) b!3672453))

(assert (= (and d!1078397 (not c!635019)) b!3672454))

(assert (= (and b!3672454 c!635020) b!3672455))

(assert (= (and b!3672454 (not c!635020)) b!3672456))

(assert (=> d!1078397 m!4181239))

(declare-fun m!4181403 () Bool)

(assert (=> b!3672455 m!4181403))

(assert (=> b!3672311 d!1078397))

(declare-fun d!1078399 () Bool)

(assert (=> d!1078399 (not (matchR!5152 (regex!5824 rule!403) lt!1280697))))

(declare-fun lt!1280748 () Unit!56380)

(declare-fun choose!21852 (LexerInterface!5413 List!38857 Rule!11448 List!38856 List!38856 List!38856 Rule!11448) Unit!56380)

(assert (=> d!1078399 (= lt!1280748 (choose!21852 thiss!23823 rules!3307 (rule!8650 (_1!22434 lt!1280654)) lt!1280693 lt!1280690 lt!1280697 rule!403))))

(assert (=> d!1078399 (isPrefix!3187 lt!1280693 lt!1280690)))

(assert (=> d!1078399 (= (lemmaMaxPrefixOutputsMaxPrefix!366 thiss!23823 rules!3307 (rule!8650 (_1!22434 lt!1280654)) lt!1280693 lt!1280690 lt!1280697 rule!403) lt!1280748)))

(declare-fun bs!573218 () Bool)

(assert (= bs!573218 d!1078399))

(assert (=> bs!573218 m!4181247))

(declare-fun m!4181429 () Bool)

(assert (=> bs!573218 m!4181429))

(assert (=> bs!573218 m!4181173))

(assert (=> b!3672287 d!1078399))

(declare-fun d!1078405 () Bool)

(assert (=> d!1078405 (not (matchR!5152 (regex!5824 rule!403) lt!1280697))))

(declare-fun lt!1280751 () Unit!56380)

(declare-fun choose!21853 (LexerInterface!5413 List!38857 Rule!11448 List!38856 List!38856 Rule!11448) Unit!56380)

(assert (=> d!1078405 (= lt!1280751 (choose!21853 thiss!23823 rules!3307 (rule!8650 (_1!22434 lt!1280654)) lt!1280697 lt!1280690 rule!403))))

(assert (=> d!1078405 (isPrefix!3187 lt!1280697 lt!1280690)))

(assert (=> d!1078405 (= (lemmaMaxPrefNoSmallerRuleMatches!232 thiss!23823 rules!3307 (rule!8650 (_1!22434 lt!1280654)) lt!1280697 lt!1280690 rule!403) lt!1280751)))

(declare-fun bs!573219 () Bool)

(assert (= bs!573219 d!1078405))

(assert (=> bs!573219 m!4181247))

(declare-fun m!4181431 () Bool)

(assert (=> bs!573219 m!4181431))

(assert (=> bs!573219 m!4181161))

(assert (=> b!3672270 d!1078405))

(declare-fun d!1078407 () Bool)

(declare-fun res!1491597 () Bool)

(declare-fun e!2274005 () Bool)

(assert (=> d!1078407 (=> res!1491597 e!2274005)))

(assert (=> d!1078407 (= res!1491597 (not ((_ is Cons!38733) rules!3307)))))

(assert (=> d!1078407 (= (sepAndNonSepRulesDisjointChars!1992 rules!3307 rules!3307) e!2274005)))

(declare-fun b!3672477 () Bool)

(declare-fun e!2274006 () Bool)

(assert (=> b!3672477 (= e!2274005 e!2274006)))

(declare-fun res!1491598 () Bool)

(assert (=> b!3672477 (=> (not res!1491598) (not e!2274006))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!908 (Rule!11448 List!38857) Bool)

(assert (=> b!3672477 (= res!1491598 (ruleDisjointCharsFromAllFromOtherType!908 (h!44153 rules!3307) rules!3307))))

(declare-fun b!3672478 () Bool)

(assert (=> b!3672478 (= e!2274006 (sepAndNonSepRulesDisjointChars!1992 rules!3307 (t!299812 rules!3307)))))

(assert (= (and d!1078407 (not res!1491597)) b!3672477))

(assert (= (and b!3672477 res!1491598) b!3672478))

(declare-fun m!4181433 () Bool)

(assert (=> b!3672477 m!4181433))

(declare-fun m!4181435 () Bool)

(assert (=> b!3672478 m!4181435))

(assert (=> b!3672272 d!1078407))

(declare-fun d!1078409 () Bool)

(assert (=> d!1078409 (not (contains!7715 (usedCharacters!1036 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280700))))

(declare-fun lt!1280752 () Unit!56380)

(assert (=> d!1078409 (= lt!1280752 (choose!21849 thiss!23823 rules!3307 rules!3307 (rule!8650 (_1!22434 lt!1280654)) rule!403 lt!1280700))))

(assert (=> d!1078409 (rulesInvariant!4810 thiss!23823 rules!3307)))

(assert (=> d!1078409 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!470 thiss!23823 rules!3307 rules!3307 (rule!8650 (_1!22434 lt!1280654)) rule!403 lt!1280700) lt!1280752)))

(declare-fun bs!573220 () Bool)

(assert (= bs!573220 d!1078409))

(assert (=> bs!573220 m!4181245))

(assert (=> bs!573220 m!4181245))

(declare-fun m!4181437 () Bool)

(assert (=> bs!573220 m!4181437))

(declare-fun m!4181439 () Bool)

(assert (=> bs!573220 m!4181439))

(assert (=> bs!573220 m!4181203))

(assert (=> b!3672308 d!1078409))

(declare-fun d!1078411 () Bool)

(assert (=> d!1078411 (= (inv!52215 (tag!6616 anOtherTypeRule!33)) (= (mod (str.len (value!186443 (tag!6616 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3672288 d!1078411))

(declare-fun d!1078413 () Bool)

(declare-fun res!1491599 () Bool)

(declare-fun e!2274007 () Bool)

(assert (=> d!1078413 (=> (not res!1491599) (not e!2274007))))

(assert (=> d!1078413 (= res!1491599 (semiInverseModEq!2484 (toChars!7979 (transformation!5824 anOtherTypeRule!33)) (toValue!8120 (transformation!5824 anOtherTypeRule!33))))))

(assert (=> d!1078413 (= (inv!52219 (transformation!5824 anOtherTypeRule!33)) e!2274007)))

(declare-fun b!3672479 () Bool)

(assert (=> b!3672479 (= e!2274007 (equivClasses!2383 (toChars!7979 (transformation!5824 anOtherTypeRule!33)) (toValue!8120 (transformation!5824 anOtherTypeRule!33))))))

(assert (= (and d!1078413 res!1491599) b!3672479))

(declare-fun m!4181441 () Bool)

(assert (=> d!1078413 m!4181441))

(declare-fun m!4181443 () Bool)

(assert (=> b!3672479 m!4181443))

(assert (=> b!3672288 d!1078413))

(declare-fun d!1078415 () Bool)

(assert (=> d!1078415 (not (matchR!5152 (regex!5824 rule!403) lt!1280697))))

(declare-fun lt!1280755 () Unit!56380)

(declare-fun choose!21854 (Regex!10583 List!38856 C!21352) Unit!56380)

(assert (=> d!1078415 (= lt!1280755 (choose!21854 (regex!5824 rule!403) lt!1280697 lt!1280700))))

(declare-fun validRegex!4846 (Regex!10583) Bool)

(assert (=> d!1078415 (validRegex!4846 (regex!5824 rule!403))))

(assert (=> d!1078415 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!772 (regex!5824 rule!403) lt!1280697 lt!1280700) lt!1280755)))

(declare-fun bs!573221 () Bool)

(assert (= bs!573221 d!1078415))

(assert (=> bs!573221 m!4181247))

(declare-fun m!4181445 () Bool)

(assert (=> bs!573221 m!4181445))

(declare-fun m!4181447 () Bool)

(assert (=> bs!573221 m!4181447))

(assert (=> b!3672305 d!1078415))

(declare-fun d!1078417 () Bool)

(declare-fun lt!1280756 () Bool)

(assert (=> d!1078417 (= lt!1280756 (select (content!5609 call!265879) lt!1280656))))

(declare-fun e!2274008 () Bool)

(assert (=> d!1078417 (= lt!1280756 e!2274008)))

(declare-fun res!1491600 () Bool)

(assert (=> d!1078417 (=> (not res!1491600) (not e!2274008))))

(assert (=> d!1078417 (= res!1491600 ((_ is Cons!38732) call!265879))))

(assert (=> d!1078417 (= (contains!7715 call!265879 lt!1280656) lt!1280756)))

(declare-fun b!3672480 () Bool)

(declare-fun e!2274009 () Bool)

(assert (=> b!3672480 (= e!2274008 e!2274009)))

(declare-fun res!1491601 () Bool)

(assert (=> b!3672480 (=> res!1491601 e!2274009)))

(assert (=> b!3672480 (= res!1491601 (= (h!44152 call!265879) lt!1280656))))

(declare-fun b!3672481 () Bool)

(assert (=> b!3672481 (= e!2274009 (contains!7715 (t!299811 call!265879) lt!1280656))))

(assert (= (and d!1078417 res!1491600) b!3672480))

(assert (= (and b!3672480 (not res!1491601)) b!3672481))

(declare-fun m!4181449 () Bool)

(assert (=> d!1078417 m!4181449))

(declare-fun m!4181451 () Bool)

(assert (=> d!1078417 m!4181451))

(declare-fun m!4181453 () Bool)

(assert (=> b!3672481 m!4181453))

(assert (=> bm!265873 d!1078417))

(declare-fun d!1078419 () Bool)

(declare-fun res!1491606 () Bool)

(declare-fun e!2274012 () Bool)

(assert (=> d!1078419 (=> (not res!1491606) (not e!2274012))))

(assert (=> d!1078419 (= res!1491606 (not (isEmpty!22990 (originalCharacters!6538 token!511))))))

(assert (=> d!1078419 (= (inv!52218 token!511) e!2274012)))

(declare-fun b!3672486 () Bool)

(declare-fun res!1491607 () Bool)

(assert (=> b!3672486 (=> (not res!1491607) (not e!2274012))))

(declare-fun dynLambda!16955 (Int TokenValue!6054) BalanceConc!23316)

(assert (=> b!3672486 (= res!1491607 (= (originalCharacters!6538 token!511) (list!14386 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 token!511))) (value!186444 token!511)))))))

(declare-fun b!3672487 () Bool)

(assert (=> b!3672487 (= e!2274012 (= (size!29605 token!511) (size!29606 (originalCharacters!6538 token!511))))))

(assert (= (and d!1078419 res!1491606) b!3672486))

(assert (= (and b!3672486 res!1491607) b!3672487))

(declare-fun b_lambda!109049 () Bool)

(assert (=> (not b_lambda!109049) (not b!3672486)))

(declare-fun t!299822 () Bool)

(declare-fun tb!212717 () Bool)

(assert (=> (and b!3672269 (= (toChars!7979 (transformation!5824 (rule!8650 token!511))) (toChars!7979 (transformation!5824 (rule!8650 token!511)))) t!299822) tb!212717))

(declare-fun b!3672492 () Bool)

(declare-fun e!2274015 () Bool)

(declare-fun tp!1117322 () Bool)

(declare-fun inv!52222 (Conc!11851) Bool)

(assert (=> b!3672492 (= e!2274015 (and (inv!52222 (c!634973 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 token!511))) (value!186444 token!511)))) tp!1117322))))

(declare-fun result!258864 () Bool)

(declare-fun inv!52223 (BalanceConc!23316) Bool)

(assert (=> tb!212717 (= result!258864 (and (inv!52223 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 token!511))) (value!186444 token!511))) e!2274015))))

(assert (= tb!212717 b!3672492))

(declare-fun m!4181455 () Bool)

(assert (=> b!3672492 m!4181455))

(declare-fun m!4181457 () Bool)

(assert (=> tb!212717 m!4181457))

(assert (=> b!3672486 t!299822))

(declare-fun b_and!273659 () Bool)

(assert (= b_and!273637 (and (=> t!299822 result!258864) b_and!273659)))

(declare-fun t!299824 () Bool)

(declare-fun tb!212719 () Bool)

(assert (=> (and b!3672291 (= (toChars!7979 (transformation!5824 (h!44153 rules!3307))) (toChars!7979 (transformation!5824 (rule!8650 token!511)))) t!299824) tb!212719))

(declare-fun result!258868 () Bool)

(assert (= result!258868 result!258864))

(assert (=> b!3672486 t!299824))

(declare-fun b_and!273661 () Bool)

(assert (= b_and!273641 (and (=> t!299824 result!258868) b_and!273661)))

(declare-fun tb!212721 () Bool)

(declare-fun t!299826 () Bool)

(assert (=> (and b!3672282 (= (toChars!7979 (transformation!5824 anOtherTypeRule!33)) (toChars!7979 (transformation!5824 (rule!8650 token!511)))) t!299826) tb!212721))

(declare-fun result!258870 () Bool)

(assert (= result!258870 result!258864))

(assert (=> b!3672486 t!299826))

(declare-fun b_and!273663 () Bool)

(assert (= b_and!273645 (and (=> t!299826 result!258870) b_and!273663)))

(declare-fun t!299828 () Bool)

(declare-fun tb!212723 () Bool)

(assert (=> (and b!3672310 (= (toChars!7979 (transformation!5824 rule!403)) (toChars!7979 (transformation!5824 (rule!8650 token!511)))) t!299828) tb!212723))

(declare-fun result!258872 () Bool)

(assert (= result!258872 result!258864))

(assert (=> b!3672486 t!299828))

(declare-fun b_and!273665 () Bool)

(assert (= b_and!273649 (and (=> t!299828 result!258872) b_and!273665)))

(declare-fun m!4181459 () Bool)

(assert (=> d!1078419 m!4181459))

(declare-fun m!4181461 () Bool)

(assert (=> b!3672486 m!4181461))

(assert (=> b!3672486 m!4181461))

(declare-fun m!4181463 () Bool)

(assert (=> b!3672486 m!4181463))

(declare-fun m!4181465 () Bool)

(assert (=> b!3672487 m!4181465))

(assert (=> start!344214 d!1078419))

(declare-fun b!3672521 () Bool)

(declare-fun res!1491624 () Bool)

(declare-fun e!2274032 () Bool)

(assert (=> b!3672521 (=> res!1491624 e!2274032)))

(assert (=> b!3672521 (= res!1491624 (not ((_ is ElementMatch!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))))

(declare-fun e!2274034 () Bool)

(assert (=> b!3672521 (= e!2274034 e!2274032)))

(declare-fun b!3672522 () Bool)

(declare-fun e!2274030 () Bool)

(assert (=> b!3672522 (= e!2274030 e!2274034)))

(declare-fun c!635033 () Bool)

(assert (=> b!3672522 (= c!635033 ((_ is EmptyLang!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672523 () Bool)

(declare-fun e!2274031 () Bool)

(assert (=> b!3672523 (= e!2274031 (not (= (head!7866 lt!1280693) (c!634972 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))))

(declare-fun d!1078421 () Bool)

(assert (=> d!1078421 e!2274030))

(declare-fun c!635034 () Bool)

(assert (=> d!1078421 (= c!635034 ((_ is EmptyExpr!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun lt!1280759 () Bool)

(declare-fun e!2274035 () Bool)

(assert (=> d!1078421 (= lt!1280759 e!2274035)))

(declare-fun c!635032 () Bool)

(assert (=> d!1078421 (= c!635032 (isEmpty!22990 lt!1280693))))

(assert (=> d!1078421 (validRegex!4846 (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))

(assert (=> d!1078421 (= (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693) lt!1280759)))

(declare-fun b!3672524 () Bool)

(declare-fun res!1491630 () Bool)

(assert (=> b!3672524 (=> res!1491630 e!2274032)))

(declare-fun e!2274033 () Bool)

(assert (=> b!3672524 (= res!1491630 e!2274033)))

(declare-fun res!1491628 () Bool)

(assert (=> b!3672524 (=> (not res!1491628) (not e!2274033))))

(assert (=> b!3672524 (= res!1491628 lt!1280759)))

(declare-fun b!3672525 () Bool)

(declare-fun res!1491631 () Bool)

(assert (=> b!3672525 (=> res!1491631 e!2274031)))

(declare-fun tail!5682 (List!38856) List!38856)

(assert (=> b!3672525 (= res!1491631 (not (isEmpty!22990 (tail!5682 lt!1280693))))))

(declare-fun bm!265910 () Bool)

(declare-fun call!265915 () Bool)

(assert (=> bm!265910 (= call!265915 (isEmpty!22990 lt!1280693))))

(declare-fun b!3672526 () Bool)

(declare-fun derivativeStep!3233 (Regex!10583 C!21352) Regex!10583)

(assert (=> b!3672526 (= e!2274035 (matchR!5152 (derivativeStep!3233 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) (head!7866 lt!1280693)) (tail!5682 lt!1280693)))))

(declare-fun b!3672527 () Bool)

(declare-fun res!1491627 () Bool)

(assert (=> b!3672527 (=> (not res!1491627) (not e!2274033))))

(assert (=> b!3672527 (= res!1491627 (isEmpty!22990 (tail!5682 lt!1280693)))))

(declare-fun b!3672528 () Bool)

(assert (=> b!3672528 (= e!2274030 (= lt!1280759 call!265915))))

(declare-fun b!3672529 () Bool)

(assert (=> b!3672529 (= e!2274033 (= (head!7866 lt!1280693) (c!634972 (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))))

(declare-fun b!3672530 () Bool)

(declare-fun nullable!3684 (Regex!10583) Bool)

(assert (=> b!3672530 (= e!2274035 (nullable!3684 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672531 () Bool)

(assert (=> b!3672531 (= e!2274034 (not lt!1280759))))

(declare-fun b!3672532 () Bool)

(declare-fun e!2274036 () Bool)

(assert (=> b!3672532 (= e!2274036 e!2274031)))

(declare-fun res!1491629 () Bool)

(assert (=> b!3672532 (=> res!1491629 e!2274031)))

(assert (=> b!3672532 (= res!1491629 call!265915)))

(declare-fun b!3672533 () Bool)

(assert (=> b!3672533 (= e!2274032 e!2274036)))

(declare-fun res!1491626 () Bool)

(assert (=> b!3672533 (=> (not res!1491626) (not e!2274036))))

(assert (=> b!3672533 (= res!1491626 (not lt!1280759))))

(declare-fun b!3672534 () Bool)

(declare-fun res!1491625 () Bool)

(assert (=> b!3672534 (=> (not res!1491625) (not e!2274033))))

(assert (=> b!3672534 (= res!1491625 (not call!265915))))

(assert (= (and d!1078421 c!635032) b!3672530))

(assert (= (and d!1078421 (not c!635032)) b!3672526))

(assert (= (and d!1078421 c!635034) b!3672528))

(assert (= (and d!1078421 (not c!635034)) b!3672522))

(assert (= (and b!3672522 c!635033) b!3672531))

(assert (= (and b!3672522 (not c!635033)) b!3672521))

(assert (= (and b!3672521 (not res!1491624)) b!3672524))

(assert (= (and b!3672524 res!1491628) b!3672534))

(assert (= (and b!3672534 res!1491625) b!3672527))

(assert (= (and b!3672527 res!1491627) b!3672529))

(assert (= (and b!3672524 (not res!1491630)) b!3672533))

(assert (= (and b!3672533 res!1491626) b!3672532))

(assert (= (and b!3672532 (not res!1491629)) b!3672525))

(assert (= (and b!3672525 (not res!1491631)) b!3672523))

(assert (= (or b!3672528 b!3672532 b!3672534) bm!265910))

(declare-fun m!4181467 () Bool)

(assert (=> bm!265910 m!4181467))

(declare-fun m!4181469 () Bool)

(assert (=> b!3672530 m!4181469))

(assert (=> b!3672523 m!4181227))

(assert (=> b!3672526 m!4181227))

(assert (=> b!3672526 m!4181227))

(declare-fun m!4181471 () Bool)

(assert (=> b!3672526 m!4181471))

(declare-fun m!4181473 () Bool)

(assert (=> b!3672526 m!4181473))

(assert (=> b!3672526 m!4181471))

(assert (=> b!3672526 m!4181473))

(declare-fun m!4181475 () Bool)

(assert (=> b!3672526 m!4181475))

(assert (=> b!3672525 m!4181473))

(assert (=> b!3672525 m!4181473))

(declare-fun m!4181477 () Bool)

(assert (=> b!3672525 m!4181477))

(assert (=> d!1078421 m!4181467))

(declare-fun m!4181479 () Bool)

(assert (=> d!1078421 m!4181479))

(assert (=> b!3672529 m!4181227))

(assert (=> b!3672527 m!4181473))

(assert (=> b!3672527 m!4181473))

(assert (=> b!3672527 m!4181477))

(assert (=> b!3672306 d!1078421))

(declare-fun d!1078423 () Bool)

(assert (=> d!1078423 (not (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693))))

(declare-fun lt!1280760 () Unit!56380)

(assert (=> d!1078423 (= lt!1280760 (choose!21854 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693 lt!1280700))))

(assert (=> d!1078423 (validRegex!4846 (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))

(assert (=> d!1078423 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!772 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693 lt!1280700) lt!1280760)))

(declare-fun bs!573222 () Bool)

(assert (= bs!573222 d!1078423))

(assert (=> bs!573222 m!4181279))

(declare-fun m!4181481 () Bool)

(assert (=> bs!573222 m!4181481))

(assert (=> bs!573222 m!4181479))

(assert (=> bm!265874 d!1078423))

(declare-fun b!3672545 () Bool)

(declare-fun e!2274043 () Bool)

(declare-fun inv!15 (TokenValue!6054) Bool)

(assert (=> b!3672545 (= e!2274043 (inv!15 (value!186444 token!511)))))

(declare-fun b!3672546 () Bool)

(declare-fun e!2274045 () Bool)

(declare-fun inv!17 (TokenValue!6054) Bool)

(assert (=> b!3672546 (= e!2274045 (inv!17 (value!186444 token!511)))))

(declare-fun b!3672547 () Bool)

(declare-fun e!2274044 () Bool)

(declare-fun inv!16 (TokenValue!6054) Bool)

(assert (=> b!3672547 (= e!2274044 (inv!16 (value!186444 token!511)))))

(declare-fun b!3672548 () Bool)

(declare-fun res!1491634 () Bool)

(assert (=> b!3672548 (=> res!1491634 e!2274043)))

(assert (=> b!3672548 (= res!1491634 (not ((_ is IntegerValue!18164) (value!186444 token!511))))))

(assert (=> b!3672548 (= e!2274045 e!2274043)))

(declare-fun d!1078425 () Bool)

(declare-fun c!635040 () Bool)

(assert (=> d!1078425 (= c!635040 ((_ is IntegerValue!18162) (value!186444 token!511)))))

(assert (=> d!1078425 (= (inv!21 (value!186444 token!511)) e!2274044)))

(declare-fun b!3672549 () Bool)

(assert (=> b!3672549 (= e!2274044 e!2274045)))

(declare-fun c!635039 () Bool)

(assert (=> b!3672549 (= c!635039 ((_ is IntegerValue!18163) (value!186444 token!511)))))

(assert (= (and d!1078425 c!635040) b!3672547))

(assert (= (and d!1078425 (not c!635040)) b!3672549))

(assert (= (and b!3672549 c!635039) b!3672546))

(assert (= (and b!3672549 (not c!635039)) b!3672548))

(assert (= (and b!3672548 (not res!1491634)) b!3672545))

(declare-fun m!4181483 () Bool)

(assert (=> b!3672545 m!4181483))

(declare-fun m!4181485 () Bool)

(assert (=> b!3672546 m!4181485))

(declare-fun m!4181487 () Bool)

(assert (=> b!3672547 m!4181487))

(assert (=> b!3672286 d!1078425))

(declare-fun d!1078427 () Bool)

(assert (=> d!1078427 (= (isEmpty!22991 rules!3307) ((_ is Nil!38733) rules!3307))))

(assert (=> b!3672302 d!1078427))

(declare-fun d!1078429 () Bool)

(assert (=> d!1078429 (not (contains!7715 (usedCharacters!1036 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280656))))

(declare-fun lt!1280763 () Unit!56380)

(declare-fun choose!21855 (LexerInterface!5413 List!38857 List!38857 Rule!11448 Rule!11448 C!21352) Unit!56380)

(assert (=> d!1078429 (= lt!1280763 (choose!21855 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8650 (_1!22434 lt!1280654)) lt!1280656))))

(assert (=> d!1078429 (rulesInvariant!4810 thiss!23823 rules!3307)))

(assert (=> d!1078429 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!352 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8650 (_1!22434 lt!1280654)) lt!1280656) lt!1280763)))

(declare-fun bs!573223 () Bool)

(assert (= bs!573223 d!1078429))

(assert (=> bs!573223 m!4181245))

(assert (=> bs!573223 m!4181245))

(assert (=> bs!573223 m!4181293))

(declare-fun m!4181489 () Bool)

(assert (=> bs!573223 m!4181489))

(assert (=> bs!573223 m!4181203))

(assert (=> b!3672284 d!1078429))

(declare-fun d!1078431 () Bool)

(declare-fun dynLambda!16956 (Int BalanceConc!23316) TokenValue!6054)

(assert (=> d!1078431 (= (apply!9326 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280687) (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280687))))

(declare-fun b_lambda!109051 () Bool)

(assert (=> (not b_lambda!109051) (not d!1078431)))

(declare-fun t!299830 () Bool)

(declare-fun tb!212725 () Bool)

(assert (=> (and b!3672269 (= (toValue!8120 (transformation!5824 (rule!8650 token!511))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299830) tb!212725))

(declare-fun result!258874 () Bool)

(assert (=> tb!212725 (= result!258874 (inv!21 (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280687)))))

(declare-fun m!4181491 () Bool)

(assert (=> tb!212725 m!4181491))

(assert (=> d!1078431 t!299830))

(declare-fun b_and!273667 () Bool)

(assert (= b_and!273635 (and (=> t!299830 result!258874) b_and!273667)))

(declare-fun tb!212727 () Bool)

(declare-fun t!299832 () Bool)

(assert (=> (and b!3672291 (= (toValue!8120 (transformation!5824 (h!44153 rules!3307))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299832) tb!212727))

(declare-fun result!258878 () Bool)

(assert (= result!258878 result!258874))

(assert (=> d!1078431 t!299832))

(declare-fun b_and!273669 () Bool)

(assert (= b_and!273639 (and (=> t!299832 result!258878) b_and!273669)))

(declare-fun tb!212729 () Bool)

(declare-fun t!299834 () Bool)

(assert (=> (and b!3672282 (= (toValue!8120 (transformation!5824 anOtherTypeRule!33)) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299834) tb!212729))

(declare-fun result!258880 () Bool)

(assert (= result!258880 result!258874))

(assert (=> d!1078431 t!299834))

(declare-fun b_and!273671 () Bool)

(assert (= b_and!273643 (and (=> t!299834 result!258880) b_and!273671)))

(declare-fun t!299836 () Bool)

(declare-fun tb!212731 () Bool)

(assert (=> (and b!3672310 (= (toValue!8120 (transformation!5824 rule!403)) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299836) tb!212731))

(declare-fun result!258882 () Bool)

(assert (= result!258882 result!258874))

(assert (=> d!1078431 t!299836))

(declare-fun b_and!273673 () Bool)

(assert (= b_and!273647 (and (=> t!299836 result!258882) b_and!273673)))

(declare-fun m!4181493 () Bool)

(assert (=> d!1078431 m!4181493))

(assert (=> b!3672283 d!1078431))

(declare-fun d!1078433 () Bool)

(declare-fun lt!1280766 () Int)

(assert (=> d!1078433 (= lt!1280766 (size!29606 (list!14386 lt!1280687)))))

(declare-fun size!29608 (Conc!11851) Int)

(assert (=> d!1078433 (= lt!1280766 (size!29608 (c!634973 lt!1280687)))))

(assert (=> d!1078433 (= (size!29607 lt!1280687) lt!1280766)))

(declare-fun bs!573224 () Bool)

(assert (= bs!573224 d!1078433))

(assert (=> bs!573224 m!4181165))

(assert (=> bs!573224 m!4181165))

(declare-fun m!4181495 () Bool)

(assert (=> bs!573224 m!4181495))

(declare-fun m!4181497 () Bool)

(assert (=> bs!573224 m!4181497))

(assert (=> b!3672283 d!1078433))

(declare-fun b!3672709 () Bool)

(declare-fun e!2274139 () Bool)

(assert (=> b!3672709 (= e!2274139 true)))

(declare-fun d!1078435 () Bool)

(assert (=> d!1078435 e!2274139))

(assert (= d!1078435 b!3672709))

(declare-fun lambda!124694 () Int)

(declare-fun order!21429 () Int)

(declare-fun order!21427 () Int)

(declare-fun dynLambda!16957 (Int Int) Int)

(declare-fun dynLambda!16958 (Int Int) Int)

(assert (=> b!3672709 (< (dynLambda!16957 order!21427 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) (dynLambda!16958 order!21429 lambda!124694))))

(declare-fun order!21431 () Int)

(declare-fun dynLambda!16959 (Int Int) Int)

(assert (=> b!3672709 (< (dynLambda!16959 order!21431 (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) (dynLambda!16958 order!21429 lambda!124694))))

(assert (=> d!1078435 (= (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280687) (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (seqFromList!4373 (originalCharacters!6538 (_1!22434 lt!1280654)))))))

(declare-fun lt!1280867 () Unit!56380)

(declare-fun Forall2of!399 (Int BalanceConc!23316 BalanceConc!23316) Unit!56380)

(assert (=> d!1078435 (= lt!1280867 (Forall2of!399 lambda!124694 lt!1280687 (seqFromList!4373 (originalCharacters!6538 (_1!22434 lt!1280654)))))))

(assert (=> d!1078435 (= (list!14386 lt!1280687) (list!14386 (seqFromList!4373 (originalCharacters!6538 (_1!22434 lt!1280654)))))))

(assert (=> d!1078435 (= (lemmaEqSameImage!1007 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280687 (seqFromList!4373 (originalCharacters!6538 (_1!22434 lt!1280654)))) lt!1280867)))

(declare-fun b_lambda!109057 () Bool)

(assert (=> (not b_lambda!109057) (not d!1078435)))

(assert (=> d!1078435 t!299830))

(declare-fun b_and!273691 () Bool)

(assert (= b_and!273667 (and (=> t!299830 result!258874) b_and!273691)))

(assert (=> d!1078435 t!299832))

(declare-fun b_and!273693 () Bool)

(assert (= b_and!273669 (and (=> t!299832 result!258878) b_and!273693)))

(assert (=> d!1078435 t!299834))

(declare-fun b_and!273695 () Bool)

(assert (= b_and!273671 (and (=> t!299834 result!258880) b_and!273695)))

(assert (=> d!1078435 t!299836))

(declare-fun b_and!273697 () Bool)

(assert (= b_and!273673 (and (=> t!299836 result!258882) b_and!273697)))

(declare-fun b_lambda!109059 () Bool)

(assert (=> (not b_lambda!109059) (not d!1078435)))

(declare-fun tb!212749 () Bool)

(declare-fun t!299854 () Bool)

(assert (=> (and b!3672269 (= (toValue!8120 (transformation!5824 (rule!8650 token!511))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299854) tb!212749))

(declare-fun result!258902 () Bool)

(assert (=> tb!212749 (= result!258902 (inv!21 (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (seqFromList!4373 (originalCharacters!6538 (_1!22434 lt!1280654))))))))

(declare-fun m!4181695 () Bool)

(assert (=> tb!212749 m!4181695))

(assert (=> d!1078435 t!299854))

(declare-fun b_and!273699 () Bool)

(assert (= b_and!273691 (and (=> t!299854 result!258902) b_and!273699)))

(declare-fun t!299856 () Bool)

(declare-fun tb!212751 () Bool)

(assert (=> (and b!3672291 (= (toValue!8120 (transformation!5824 (h!44153 rules!3307))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299856) tb!212751))

(declare-fun result!258904 () Bool)

(assert (= result!258904 result!258902))

(assert (=> d!1078435 t!299856))

(declare-fun b_and!273701 () Bool)

(assert (= b_and!273693 (and (=> t!299856 result!258904) b_and!273701)))

(declare-fun t!299858 () Bool)

(declare-fun tb!212753 () Bool)

(assert (=> (and b!3672282 (= (toValue!8120 (transformation!5824 anOtherTypeRule!33)) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299858) tb!212753))

(declare-fun result!258906 () Bool)

(assert (= result!258906 result!258902))

(assert (=> d!1078435 t!299858))

(declare-fun b_and!273703 () Bool)

(assert (= b_and!273695 (and (=> t!299858 result!258906) b_and!273703)))

(declare-fun tb!212755 () Bool)

(declare-fun t!299860 () Bool)

(assert (=> (and b!3672310 (= (toValue!8120 (transformation!5824 rule!403)) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299860) tb!212755))

(declare-fun result!258908 () Bool)

(assert (= result!258908 result!258902))

(assert (=> d!1078435 t!299860))

(declare-fun b_and!273705 () Bool)

(assert (= b_and!273697 (and (=> t!299860 result!258908) b_and!273705)))

(assert (=> d!1078435 m!4181493))

(assert (=> d!1078435 m!4181145))

(declare-fun m!4181697 () Bool)

(assert (=> d!1078435 m!4181697))

(assert (=> d!1078435 m!4181165))

(assert (=> d!1078435 m!4181145))

(declare-fun m!4181699 () Bool)

(assert (=> d!1078435 m!4181699))

(assert (=> d!1078435 m!4181145))

(declare-fun m!4181701 () Bool)

(assert (=> d!1078435 m!4181701))

(assert (=> b!3672283 d!1078435))

(declare-fun d!1078499 () Bool)

(assert (=> d!1078499 (= (size!29605 (_1!22434 lt!1280654)) (size!29606 (originalCharacters!6538 (_1!22434 lt!1280654))))))

(declare-fun Unit!56400 () Unit!56380)

(assert (=> d!1078499 (= (lemmaCharactersSize!869 (_1!22434 lt!1280654)) Unit!56400)))

(declare-fun bs!573236 () Bool)

(assert (= bs!573236 d!1078499))

(declare-fun m!4181703 () Bool)

(assert (=> bs!573236 m!4181703))

(assert (=> b!3672283 d!1078499))

(declare-fun d!1078501 () Bool)

(declare-fun fromListB!2020 (List!38856) BalanceConc!23316)

(assert (=> d!1078501 (= (seqFromList!4373 (originalCharacters!6538 (_1!22434 lt!1280654))) (fromListB!2020 (originalCharacters!6538 (_1!22434 lt!1280654))))))

(declare-fun bs!573237 () Bool)

(assert (= bs!573237 d!1078501))

(declare-fun m!4181705 () Bool)

(assert (=> bs!573237 m!4181705))

(assert (=> b!3672283 d!1078501))

(declare-fun b!3672714 () Bool)

(declare-fun e!2274143 () Bool)

(assert (=> b!3672714 (= e!2274143 true)))

(declare-fun d!1078503 () Bool)

(assert (=> d!1078503 e!2274143))

(assert (= d!1078503 b!3672714))

(declare-fun order!21433 () Int)

(declare-fun lambda!124697 () Int)

(declare-fun dynLambda!16960 (Int Int) Int)

(assert (=> b!3672714 (< (dynLambda!16957 order!21427 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) (dynLambda!16960 order!21433 lambda!124697))))

(assert (=> b!3672714 (< (dynLambda!16959 order!21431 (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) (dynLambda!16960 order!21433 lambda!124697))))

(assert (=> d!1078503 (= (list!14386 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280687))) (list!14386 lt!1280687))))

(declare-fun lt!1280870 () Unit!56380)

(declare-fun ForallOf!741 (Int BalanceConc!23316) Unit!56380)

(assert (=> d!1078503 (= lt!1280870 (ForallOf!741 lambda!124697 lt!1280687))))

(assert (=> d!1078503 (= (lemmaSemiInverse!1573 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280687) lt!1280870)))

(declare-fun b_lambda!109061 () Bool)

(assert (=> (not b_lambda!109061) (not d!1078503)))

(declare-fun t!299862 () Bool)

(declare-fun tb!212757 () Bool)

(assert (=> (and b!3672269 (= (toChars!7979 (transformation!5824 (rule!8650 token!511))) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299862) tb!212757))

(declare-fun tp!1117324 () Bool)

(declare-fun b!3672715 () Bool)

(declare-fun e!2274144 () Bool)

(assert (=> b!3672715 (= e!2274144 (and (inv!52222 (c!634973 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280687)))) tp!1117324))))

(declare-fun result!258910 () Bool)

(assert (=> tb!212757 (= result!258910 (and (inv!52223 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280687))) e!2274144))))

(assert (= tb!212757 b!3672715))

(declare-fun m!4181707 () Bool)

(assert (=> b!3672715 m!4181707))

(declare-fun m!4181709 () Bool)

(assert (=> tb!212757 m!4181709))

(assert (=> d!1078503 t!299862))

(declare-fun b_and!273707 () Bool)

(assert (= b_and!273659 (and (=> t!299862 result!258910) b_and!273707)))

(declare-fun tb!212759 () Bool)

(declare-fun t!299864 () Bool)

(assert (=> (and b!3672291 (= (toChars!7979 (transformation!5824 (h!44153 rules!3307))) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299864) tb!212759))

(declare-fun result!258912 () Bool)

(assert (= result!258912 result!258910))

(assert (=> d!1078503 t!299864))

(declare-fun b_and!273709 () Bool)

(assert (= b_and!273661 (and (=> t!299864 result!258912) b_and!273709)))

(declare-fun t!299866 () Bool)

(declare-fun tb!212761 () Bool)

(assert (=> (and b!3672282 (= (toChars!7979 (transformation!5824 anOtherTypeRule!33)) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299866) tb!212761))

(declare-fun result!258914 () Bool)

(assert (= result!258914 result!258910))

(assert (=> d!1078503 t!299866))

(declare-fun b_and!273711 () Bool)

(assert (= b_and!273663 (and (=> t!299866 result!258914) b_and!273711)))

(declare-fun tb!212763 () Bool)

(declare-fun t!299868 () Bool)

(assert (=> (and b!3672310 (= (toChars!7979 (transformation!5824 rule!403)) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299868) tb!212763))

(declare-fun result!258916 () Bool)

(assert (= result!258916 result!258910))

(assert (=> d!1078503 t!299868))

(declare-fun b_and!273713 () Bool)

(assert (= b_and!273665 (and (=> t!299868 result!258916) b_and!273713)))

(declare-fun b_lambda!109063 () Bool)

(assert (=> (not b_lambda!109063) (not d!1078503)))

(assert (=> d!1078503 t!299830))

(declare-fun b_and!273715 () Bool)

(assert (= b_and!273699 (and (=> t!299830 result!258874) b_and!273715)))

(assert (=> d!1078503 t!299832))

(declare-fun b_and!273717 () Bool)

(assert (= b_and!273701 (and (=> t!299832 result!258878) b_and!273717)))

(assert (=> d!1078503 t!299834))

(declare-fun b_and!273719 () Bool)

(assert (= b_and!273703 (and (=> t!299834 result!258880) b_and!273719)))

(assert (=> d!1078503 t!299836))

(declare-fun b_and!273721 () Bool)

(assert (= b_and!273705 (and (=> t!299836 result!258882) b_and!273721)))

(assert (=> d!1078503 m!4181165))

(assert (=> d!1078503 m!4181493))

(declare-fun m!4181711 () Bool)

(assert (=> d!1078503 m!4181711))

(assert (=> d!1078503 m!4181493))

(declare-fun m!4181713 () Bool)

(assert (=> d!1078503 m!4181713))

(assert (=> d!1078503 m!4181711))

(declare-fun m!4181715 () Bool)

(assert (=> d!1078503 m!4181715))

(assert (=> b!3672283 d!1078503))

(declare-fun b!3672716 () Bool)

(declare-fun res!1491735 () Bool)

(declare-fun e!2274147 () Bool)

(assert (=> b!3672716 (=> res!1491735 e!2274147)))

(assert (=> b!3672716 (= res!1491735 (not ((_ is ElementMatch!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))))

(declare-fun e!2274149 () Bool)

(assert (=> b!3672716 (= e!2274149 e!2274147)))

(declare-fun b!3672717 () Bool)

(declare-fun e!2274145 () Bool)

(assert (=> b!3672717 (= e!2274145 e!2274149)))

(declare-fun c!635071 () Bool)

(assert (=> b!3672717 (= c!635071 ((_ is EmptyLang!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672718 () Bool)

(declare-fun e!2274146 () Bool)

(assert (=> b!3672718 (= e!2274146 (not (= (head!7866 lt!1280697) (c!634972 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))))

(declare-fun d!1078505 () Bool)

(assert (=> d!1078505 e!2274145))

(declare-fun c!635072 () Bool)

(assert (=> d!1078505 (= c!635072 ((_ is EmptyExpr!10583) (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun lt!1280871 () Bool)

(declare-fun e!2274150 () Bool)

(assert (=> d!1078505 (= lt!1280871 e!2274150)))

(declare-fun c!635070 () Bool)

(assert (=> d!1078505 (= c!635070 (isEmpty!22990 lt!1280697))))

(assert (=> d!1078505 (validRegex!4846 (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))

(assert (=> d!1078505 (= (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280697) lt!1280871)))

(declare-fun b!3672719 () Bool)

(declare-fun res!1491741 () Bool)

(assert (=> b!3672719 (=> res!1491741 e!2274147)))

(declare-fun e!2274148 () Bool)

(assert (=> b!3672719 (= res!1491741 e!2274148)))

(declare-fun res!1491739 () Bool)

(assert (=> b!3672719 (=> (not res!1491739) (not e!2274148))))

(assert (=> b!3672719 (= res!1491739 lt!1280871)))

(declare-fun b!3672720 () Bool)

(declare-fun res!1491742 () Bool)

(assert (=> b!3672720 (=> res!1491742 e!2274146)))

(assert (=> b!3672720 (= res!1491742 (not (isEmpty!22990 (tail!5682 lt!1280697))))))

(declare-fun bm!265921 () Bool)

(declare-fun call!265926 () Bool)

(assert (=> bm!265921 (= call!265926 (isEmpty!22990 lt!1280697))))

(declare-fun b!3672721 () Bool)

(assert (=> b!3672721 (= e!2274150 (matchR!5152 (derivativeStep!3233 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) (head!7866 lt!1280697)) (tail!5682 lt!1280697)))))

(declare-fun b!3672722 () Bool)

(declare-fun res!1491738 () Bool)

(assert (=> b!3672722 (=> (not res!1491738) (not e!2274148))))

(assert (=> b!3672722 (= res!1491738 (isEmpty!22990 (tail!5682 lt!1280697)))))

(declare-fun b!3672723 () Bool)

(assert (=> b!3672723 (= e!2274145 (= lt!1280871 call!265926))))

(declare-fun b!3672724 () Bool)

(assert (=> b!3672724 (= e!2274148 (= (head!7866 lt!1280697) (c!634972 (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))))

(declare-fun b!3672725 () Bool)

(assert (=> b!3672725 (= e!2274150 (nullable!3684 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3672726 () Bool)

(assert (=> b!3672726 (= e!2274149 (not lt!1280871))))

(declare-fun b!3672727 () Bool)

(declare-fun e!2274151 () Bool)

(assert (=> b!3672727 (= e!2274151 e!2274146)))

(declare-fun res!1491740 () Bool)

(assert (=> b!3672727 (=> res!1491740 e!2274146)))

(assert (=> b!3672727 (= res!1491740 call!265926)))

(declare-fun b!3672728 () Bool)

(assert (=> b!3672728 (= e!2274147 e!2274151)))

(declare-fun res!1491737 () Bool)

(assert (=> b!3672728 (=> (not res!1491737) (not e!2274151))))

(assert (=> b!3672728 (= res!1491737 (not lt!1280871))))

(declare-fun b!3672729 () Bool)

(declare-fun res!1491736 () Bool)

(assert (=> b!3672729 (=> (not res!1491736) (not e!2274148))))

(assert (=> b!3672729 (= res!1491736 (not call!265926))))

(assert (= (and d!1078505 c!635070) b!3672725))

(assert (= (and d!1078505 (not c!635070)) b!3672721))

(assert (= (and d!1078505 c!635072) b!3672723))

(assert (= (and d!1078505 (not c!635072)) b!3672717))

(assert (= (and b!3672717 c!635071) b!3672726))

(assert (= (and b!3672717 (not c!635071)) b!3672716))

(assert (= (and b!3672716 (not res!1491735)) b!3672719))

(assert (= (and b!3672719 res!1491739) b!3672729))

(assert (= (and b!3672729 res!1491736) b!3672722))

(assert (= (and b!3672722 res!1491738) b!3672724))

(assert (= (and b!3672719 (not res!1491741)) b!3672728))

(assert (= (and b!3672728 res!1491737) b!3672727))

(assert (= (and b!3672727 (not res!1491740)) b!3672720))

(assert (= (and b!3672720 (not res!1491742)) b!3672718))

(assert (= (or b!3672723 b!3672727 b!3672729) bm!265921))

(declare-fun m!4181717 () Bool)

(assert (=> bm!265921 m!4181717))

(assert (=> b!3672725 m!4181469))

(declare-fun m!4181719 () Bool)

(assert (=> b!3672718 m!4181719))

(assert (=> b!3672721 m!4181719))

(assert (=> b!3672721 m!4181719))

(declare-fun m!4181721 () Bool)

(assert (=> b!3672721 m!4181721))

(declare-fun m!4181723 () Bool)

(assert (=> b!3672721 m!4181723))

(assert (=> b!3672721 m!4181721))

(assert (=> b!3672721 m!4181723))

(declare-fun m!4181725 () Bool)

(assert (=> b!3672721 m!4181725))

(assert (=> b!3672720 m!4181723))

(assert (=> b!3672720 m!4181723))

(declare-fun m!4181727 () Bool)

(assert (=> b!3672720 m!4181727))

(assert (=> d!1078505 m!4181717))

(assert (=> d!1078505 m!4181479))

(assert (=> b!3672724 m!4181719))

(assert (=> b!3672722 m!4181723))

(assert (=> b!3672722 m!4181723))

(assert (=> b!3672722 m!4181727))

(assert (=> b!3672285 d!1078505))

(declare-fun d!1078507 () Bool)

(declare-fun lt!1280874 () List!38856)

(assert (=> d!1078507 (= (++!9640 lt!1280697 lt!1280874) lt!1280697)))

(declare-fun e!2274154 () List!38856)

(assert (=> d!1078507 (= lt!1280874 e!2274154)))

(declare-fun c!635075 () Bool)

(assert (=> d!1078507 (= c!635075 ((_ is Cons!38732) lt!1280697))))

(assert (=> d!1078507 (>= (size!29606 lt!1280697) (size!29606 lt!1280697))))

(assert (=> d!1078507 (= (getSuffix!1740 lt!1280697 lt!1280697) lt!1280874)))

(declare-fun b!3672734 () Bool)

(assert (=> b!3672734 (= e!2274154 (getSuffix!1740 (tail!5682 lt!1280697) (t!299811 lt!1280697)))))

(declare-fun b!3672735 () Bool)

(assert (=> b!3672735 (= e!2274154 lt!1280697)))

(assert (= (and d!1078507 c!635075) b!3672734))

(assert (= (and d!1078507 (not c!635075)) b!3672735))

(declare-fun m!4181729 () Bool)

(assert (=> d!1078507 m!4181729))

(declare-fun m!4181731 () Bool)

(assert (=> d!1078507 m!4181731))

(assert (=> d!1078507 m!4181731))

(assert (=> b!3672734 m!4181723))

(assert (=> b!3672734 m!4181723))

(declare-fun m!4181733 () Bool)

(assert (=> b!3672734 m!4181733))

(assert (=> b!3672285 d!1078507))

(declare-fun d!1078509 () Bool)

(assert (=> d!1078509 (isEmpty!22990 (getSuffix!1740 lt!1280697 lt!1280697))))

(declare-fun lt!1280877 () Unit!56380)

(declare-fun choose!21859 (List!38856) Unit!56380)

(assert (=> d!1078509 (= lt!1280877 (choose!21859 lt!1280697))))

(assert (=> d!1078509 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!204 lt!1280697) lt!1280877)))

(declare-fun bs!573238 () Bool)

(assert (= bs!573238 d!1078509))

(assert (=> bs!573238 m!4181215))

(assert (=> bs!573238 m!4181215))

(assert (=> bs!573238 m!4181217))

(declare-fun m!4181735 () Bool)

(assert (=> bs!573238 m!4181735))

(assert (=> b!3672285 d!1078509))

(declare-fun d!1078511 () Bool)

(assert (=> d!1078511 (not (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280697))))

(declare-fun lt!1280878 () Unit!56380)

(assert (=> d!1078511 (= lt!1280878 (choose!21853 thiss!23823 rules!3307 rule!403 lt!1280697 lt!1280697 (rule!8650 (_1!22434 lt!1280654))))))

(assert (=> d!1078511 (isPrefix!3187 lt!1280697 lt!1280697)))

(assert (=> d!1078511 (= (lemmaMaxPrefNoSmallerRuleMatches!232 thiss!23823 rules!3307 rule!403 lt!1280697 lt!1280697 (rule!8650 (_1!22434 lt!1280654))) lt!1280878)))

(declare-fun bs!573239 () Bool)

(assert (= bs!573239 d!1078511))

(assert (=> bs!573239 m!4181219))

(declare-fun m!4181737 () Bool)

(assert (=> bs!573239 m!4181737))

(declare-fun m!4181739 () Bool)

(assert (=> bs!573239 m!4181739))

(assert (=> b!3672285 d!1078511))

(declare-fun d!1078513 () Bool)

(assert (=> d!1078513 (= (isEmpty!22990 (getSuffix!1740 lt!1280697 lt!1280697)) ((_ is Nil!38732) (getSuffix!1740 lt!1280697 lt!1280697)))))

(assert (=> b!3672285 d!1078513))

(declare-fun d!1078515 () Bool)

(assert (=> d!1078515 (contains!7715 lt!1280693 (head!7866 suffix!1395))))

(declare-fun lt!1280881 () Unit!56380)

(declare-fun choose!21860 (List!38856 List!38856 List!38856 List!38856) Unit!56380)

(assert (=> d!1078515 (= lt!1280881 (choose!21860 lt!1280697 suffix!1395 lt!1280693 lt!1280690))))

(assert (=> d!1078515 (isPrefix!3187 lt!1280693 lt!1280690)))

(assert (=> d!1078515 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!132 lt!1280697 suffix!1395 lt!1280693 lt!1280690) lt!1280881)))

(declare-fun bs!573240 () Bool)

(assert (= bs!573240 d!1078515))

(assert (=> bs!573240 m!4181269))

(assert (=> bs!573240 m!4181269))

(declare-fun m!4181741 () Bool)

(assert (=> bs!573240 m!4181741))

(declare-fun m!4181743 () Bool)

(assert (=> bs!573240 m!4181743))

(assert (=> bs!573240 m!4181173))

(assert (=> b!3672303 d!1078515))

(declare-fun d!1078517 () Bool)

(declare-fun lt!1280882 () Bool)

(assert (=> d!1078517 (= lt!1280882 (select (content!5609 lt!1280693) lt!1280656))))

(declare-fun e!2274155 () Bool)

(assert (=> d!1078517 (= lt!1280882 e!2274155)))

(declare-fun res!1491743 () Bool)

(assert (=> d!1078517 (=> (not res!1491743) (not e!2274155))))

(assert (=> d!1078517 (= res!1491743 ((_ is Cons!38732) lt!1280693))))

(assert (=> d!1078517 (= (contains!7715 lt!1280693 lt!1280656) lt!1280882)))

(declare-fun b!3672736 () Bool)

(declare-fun e!2274156 () Bool)

(assert (=> b!3672736 (= e!2274155 e!2274156)))

(declare-fun res!1491744 () Bool)

(assert (=> b!3672736 (=> res!1491744 e!2274156)))

(assert (=> b!3672736 (= res!1491744 (= (h!44152 lt!1280693) lt!1280656))))

(declare-fun b!3672737 () Bool)

(assert (=> b!3672737 (= e!2274156 (contains!7715 (t!299811 lt!1280693) lt!1280656))))

(assert (= (and d!1078517 res!1491743) b!3672736))

(assert (= (and b!3672736 (not res!1491744)) b!3672737))

(declare-fun m!4181745 () Bool)

(assert (=> d!1078517 m!4181745))

(declare-fun m!4181747 () Bool)

(assert (=> d!1078517 m!4181747))

(declare-fun m!4181749 () Bool)

(assert (=> b!3672737 m!4181749))

(assert (=> b!3672303 d!1078517))

(declare-fun d!1078519 () Bool)

(declare-fun lt!1280883 () Bool)

(assert (=> d!1078519 (= lt!1280883 (select (content!5610 rules!3307) rule!403))))

(declare-fun e!2274158 () Bool)

(assert (=> d!1078519 (= lt!1280883 e!2274158)))

(declare-fun res!1491746 () Bool)

(assert (=> d!1078519 (=> (not res!1491746) (not e!2274158))))

(assert (=> d!1078519 (= res!1491746 ((_ is Cons!38733) rules!3307))))

(assert (=> d!1078519 (= (contains!7716 rules!3307 rule!403) lt!1280883)))

(declare-fun b!3672738 () Bool)

(declare-fun e!2274157 () Bool)

(assert (=> b!3672738 (= e!2274158 e!2274157)))

(declare-fun res!1491745 () Bool)

(assert (=> b!3672738 (=> res!1491745 e!2274157)))

(assert (=> b!3672738 (= res!1491745 (= (h!44153 rules!3307) rule!403))))

(declare-fun b!3672739 () Bool)

(assert (=> b!3672739 (= e!2274157 (contains!7716 (t!299812 rules!3307) rule!403))))

(assert (= (and d!1078519 res!1491746) b!3672738))

(assert (= (and b!3672738 (not res!1491745)) b!3672739))

(assert (=> d!1078519 m!4181375))

(declare-fun m!4181751 () Bool)

(assert (=> d!1078519 m!4181751))

(declare-fun m!4181753 () Bool)

(assert (=> b!3672739 m!4181753))

(assert (=> b!3672281 d!1078519))

(declare-fun d!1078521 () Bool)

(assert (=> d!1078521 (= (inv!52215 (tag!6616 rule!403)) (= (mod (str.len (value!186443 (tag!6616 rule!403))) 2) 0))))

(assert (=> b!3672301 d!1078521))

(declare-fun d!1078523 () Bool)

(declare-fun res!1491747 () Bool)

(declare-fun e!2274159 () Bool)

(assert (=> d!1078523 (=> (not res!1491747) (not e!2274159))))

(assert (=> d!1078523 (= res!1491747 (semiInverseModEq!2484 (toChars!7979 (transformation!5824 rule!403)) (toValue!8120 (transformation!5824 rule!403))))))

(assert (=> d!1078523 (= (inv!52219 (transformation!5824 rule!403)) e!2274159)))

(declare-fun b!3672740 () Bool)

(assert (=> b!3672740 (= e!2274159 (equivClasses!2383 (toChars!7979 (transformation!5824 rule!403)) (toValue!8120 (transformation!5824 rule!403))))))

(assert (= (and d!1078523 res!1491747) b!3672740))

(declare-fun m!4181755 () Bool)

(assert (=> d!1078523 m!4181755))

(declare-fun m!4181757 () Bool)

(assert (=> b!3672740 m!4181757))

(assert (=> b!3672301 d!1078523))

(declare-fun d!1078525 () Bool)

(assert (=> d!1078525 (= (isEmpty!22990 suffix!1395) ((_ is Nil!38732) suffix!1395))))

(assert (=> b!3672300 d!1078525))

(declare-fun d!1078527 () Bool)

(assert (=> d!1078527 (= lt!1280693 lt!1280697)))

(declare-fun lt!1280886 () Unit!56380)

(declare-fun choose!21861 (List!38856 List!38856 List!38856) Unit!56380)

(assert (=> d!1078527 (= lt!1280886 (choose!21861 lt!1280693 lt!1280697 lt!1280690))))

(assert (=> d!1078527 (isPrefix!3187 lt!1280693 lt!1280690)))

(assert (=> d!1078527 (= (lemmaIsPrefixSameLengthThenSameList!649 lt!1280693 lt!1280697 lt!1280690) lt!1280886)))

(declare-fun bs!573241 () Bool)

(assert (= bs!573241 d!1078527))

(declare-fun m!4181759 () Bool)

(assert (=> bs!573241 m!4181759))

(assert (=> bs!573241 m!4181173))

(assert (=> b!3672318 d!1078527))

(declare-fun d!1078529 () Bool)

(declare-fun lt!1280887 () Int)

(assert (=> d!1078529 (= lt!1280887 (size!29606 (list!14386 lt!1280685)))))

(assert (=> d!1078529 (= lt!1280887 (size!29608 (c!634973 lt!1280685)))))

(assert (=> d!1078529 (= (size!29607 lt!1280685) lt!1280887)))

(declare-fun bs!573242 () Bool)

(assert (= bs!573242 d!1078529))

(assert (=> bs!573242 m!4181199))

(assert (=> bs!573242 m!4181199))

(declare-fun m!4181761 () Bool)

(assert (=> bs!573242 m!4181761))

(declare-fun m!4181763 () Bool)

(assert (=> bs!573242 m!4181763))

(assert (=> b!3672318 d!1078529))

(declare-fun d!1078531 () Bool)

(declare-fun lt!1280888 () Bool)

(assert (=> d!1078531 (= lt!1280888 (select (content!5609 lt!1280651) lt!1280700))))

(declare-fun e!2274160 () Bool)

(assert (=> d!1078531 (= lt!1280888 e!2274160)))

(declare-fun res!1491748 () Bool)

(assert (=> d!1078531 (=> (not res!1491748) (not e!2274160))))

(assert (=> d!1078531 (= res!1491748 ((_ is Cons!38732) lt!1280651))))

(assert (=> d!1078531 (= (contains!7715 lt!1280651 lt!1280700) lt!1280888)))

(declare-fun b!3672741 () Bool)

(declare-fun e!2274161 () Bool)

(assert (=> b!3672741 (= e!2274160 e!2274161)))

(declare-fun res!1491749 () Bool)

(assert (=> b!3672741 (=> res!1491749 e!2274161)))

(assert (=> b!3672741 (= res!1491749 (= (h!44152 lt!1280651) lt!1280700))))

(declare-fun b!3672742 () Bool)

(assert (=> b!3672742 (= e!2274161 (contains!7715 (t!299811 lt!1280651) lt!1280700))))

(assert (= (and d!1078531 res!1491748) b!3672741))

(assert (= (and b!3672741 (not res!1491749)) b!3672742))

(declare-fun m!4181765 () Bool)

(assert (=> d!1078531 m!4181765))

(declare-fun m!4181767 () Bool)

(assert (=> d!1078531 m!4181767))

(declare-fun m!4181769 () Bool)

(assert (=> b!3672742 m!4181769))

(assert (=> b!3672318 d!1078531))

(declare-fun d!1078533 () Bool)

(assert (=> d!1078533 (= (head!7866 lt!1280693) (h!44152 lt!1280693))))

(assert (=> b!3672318 d!1078533))

(declare-fun d!1078535 () Bool)

(declare-fun lt!1280889 () Bool)

(assert (=> d!1078535 (= lt!1280889 (select (content!5610 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2274163 () Bool)

(assert (=> d!1078535 (= lt!1280889 e!2274163)))

(declare-fun res!1491751 () Bool)

(assert (=> d!1078535 (=> (not res!1491751) (not e!2274163))))

(assert (=> d!1078535 (= res!1491751 ((_ is Cons!38733) rules!3307))))

(assert (=> d!1078535 (= (contains!7716 rules!3307 anOtherTypeRule!33) lt!1280889)))

(declare-fun b!3672743 () Bool)

(declare-fun e!2274162 () Bool)

(assert (=> b!3672743 (= e!2274163 e!2274162)))

(declare-fun res!1491750 () Bool)

(assert (=> b!3672743 (=> res!1491750 e!2274162)))

(assert (=> b!3672743 (= res!1491750 (= (h!44153 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3672744 () Bool)

(assert (=> b!3672744 (= e!2274162 (contains!7716 (t!299812 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1078535 res!1491751) b!3672743))

(assert (= (and b!3672743 (not res!1491750)) b!3672744))

(assert (=> d!1078535 m!4181375))

(declare-fun m!4181771 () Bool)

(assert (=> d!1078535 m!4181771))

(declare-fun m!4181773 () Bool)

(assert (=> b!3672744 m!4181773))

(assert (=> b!3672297 d!1078535))

(declare-fun d!1078537 () Bool)

(assert (=> d!1078537 (= (inv!52215 (tag!6616 (rule!8650 token!511))) (= (mod (str.len (value!186443 (tag!6616 (rule!8650 token!511)))) 2) 0))))

(assert (=> b!3672296 d!1078537))

(declare-fun d!1078539 () Bool)

(declare-fun res!1491752 () Bool)

(declare-fun e!2274164 () Bool)

(assert (=> d!1078539 (=> (not res!1491752) (not e!2274164))))

(assert (=> d!1078539 (= res!1491752 (semiInverseModEq!2484 (toChars!7979 (transformation!5824 (rule!8650 token!511))) (toValue!8120 (transformation!5824 (rule!8650 token!511)))))))

(assert (=> d!1078539 (= (inv!52219 (transformation!5824 (rule!8650 token!511))) e!2274164)))

(declare-fun b!3672745 () Bool)

(assert (=> b!3672745 (= e!2274164 (equivClasses!2383 (toChars!7979 (transformation!5824 (rule!8650 token!511))) (toValue!8120 (transformation!5824 (rule!8650 token!511)))))))

(assert (= (and d!1078539 res!1491752) b!3672745))

(declare-fun m!4181775 () Bool)

(assert (=> d!1078539 m!4181775))

(declare-fun m!4181777 () Bool)

(assert (=> b!3672745 m!4181777))

(assert (=> b!3672296 d!1078539))

(declare-fun d!1078541 () Bool)

(declare-fun res!1491755 () Bool)

(declare-fun e!2274167 () Bool)

(assert (=> d!1078541 (=> (not res!1491755) (not e!2274167))))

(declare-fun rulesValid!2241 (LexerInterface!5413 List!38857) Bool)

(assert (=> d!1078541 (= res!1491755 (rulesValid!2241 thiss!23823 rules!3307))))

(assert (=> d!1078541 (= (rulesInvariant!4810 thiss!23823 rules!3307) e!2274167)))

(declare-fun b!3672748 () Bool)

(declare-datatypes ((List!38859 0))(
  ( (Nil!38735) (Cons!38735 (h!44155 String!43604) (t!299934 List!38859)) )
))
(declare-fun noDuplicateTag!2237 (LexerInterface!5413 List!38857 List!38859) Bool)

(assert (=> b!3672748 (= e!2274167 (noDuplicateTag!2237 thiss!23823 rules!3307 Nil!38735))))

(assert (= (and d!1078541 res!1491755) b!3672748))

(declare-fun m!4181779 () Bool)

(assert (=> d!1078541 m!4181779))

(declare-fun m!4181781 () Bool)

(assert (=> b!3672748 m!4181781))

(assert (=> b!3672279 d!1078541))

(declare-fun d!1078543 () Bool)

(assert (=> d!1078543 (= (isEmpty!22990 (_2!22434 lt!1280665)) ((_ is Nil!38732) (_2!22434 lt!1280665)))))

(assert (=> b!3672280 d!1078543))

(declare-fun d!1078545 () Bool)

(assert (=> d!1078545 (not (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693))))

(declare-fun lt!1280890 () Unit!56380)

(assert (=> d!1078545 (= lt!1280890 (choose!21854 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693 lt!1280656))))

(assert (=> d!1078545 (validRegex!4846 (regex!5824 (rule!8650 (_1!22434 lt!1280654))))))

(assert (=> d!1078545 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!772 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280693 lt!1280656) lt!1280890)))

(declare-fun bs!573243 () Bool)

(assert (= bs!573243 d!1078545))

(assert (=> bs!573243 m!4181279))

(declare-fun m!4181783 () Bool)

(assert (=> bs!573243 m!4181783))

(assert (=> bs!573243 m!4181479))

(assert (=> bm!265872 d!1078545))

(declare-fun d!1078547 () Bool)

(declare-fun lt!1280893 () Int)

(assert (=> d!1078547 (>= lt!1280893 0)))

(declare-fun e!2274170 () Int)

(assert (=> d!1078547 (= lt!1280893 e!2274170)))

(declare-fun c!635078 () Bool)

(assert (=> d!1078547 (= c!635078 ((_ is Nil!38732) lt!1280693))))

(assert (=> d!1078547 (= (size!29606 lt!1280693) lt!1280893)))

(declare-fun b!3672753 () Bool)

(assert (=> b!3672753 (= e!2274170 0)))

(declare-fun b!3672754 () Bool)

(assert (=> b!3672754 (= e!2274170 (+ 1 (size!29606 (t!299811 lt!1280693))))))

(assert (= (and d!1078547 c!635078) b!3672753))

(assert (= (and d!1078547 (not c!635078)) b!3672754))

(declare-fun m!4181785 () Bool)

(assert (=> b!3672754 m!4181785))

(assert (=> b!3672277 d!1078547))

(declare-fun d!1078549 () Bool)

(assert (=> d!1078549 (= (seqFromList!4373 lt!1280693) (fromListB!2020 lt!1280693))))

(declare-fun bs!573244 () Bool)

(assert (= bs!573244 d!1078549))

(declare-fun m!4181787 () Bool)

(assert (=> bs!573244 m!4181787))

(assert (=> b!3672277 d!1078549))

(declare-fun d!1078551 () Bool)

(declare-fun lt!1280894 () List!38856)

(assert (=> d!1078551 (= (++!9640 lt!1280693 lt!1280894) lt!1280690)))

(declare-fun e!2274171 () List!38856)

(assert (=> d!1078551 (= lt!1280894 e!2274171)))

(declare-fun c!635079 () Bool)

(assert (=> d!1078551 (= c!635079 ((_ is Cons!38732) lt!1280693))))

(assert (=> d!1078551 (>= (size!29606 lt!1280690) (size!29606 lt!1280693))))

(assert (=> d!1078551 (= (getSuffix!1740 lt!1280690 lt!1280693) lt!1280894)))

(declare-fun b!3672755 () Bool)

(assert (=> b!3672755 (= e!2274171 (getSuffix!1740 (tail!5682 lt!1280690) (t!299811 lt!1280693)))))

(declare-fun b!3672756 () Bool)

(assert (=> b!3672756 (= e!2274171 lt!1280690)))

(assert (= (and d!1078551 c!635079) b!3672755))

(assert (= (and d!1078551 (not c!635079)) b!3672756))

(declare-fun m!4181789 () Bool)

(assert (=> d!1078551 m!4181789))

(declare-fun m!4181791 () Bool)

(assert (=> d!1078551 m!4181791))

(assert (=> d!1078551 m!4181133))

(declare-fun m!4181793 () Bool)

(assert (=> b!3672755 m!4181793))

(assert (=> b!3672755 m!4181793))

(declare-fun m!4181795 () Bool)

(assert (=> b!3672755 m!4181795))

(assert (=> b!3672277 d!1078551))

(declare-fun d!1078553 () Bool)

(assert (=> d!1078553 (= (_2!22434 lt!1280654) lt!1280676)))

(declare-fun lt!1280897 () Unit!56380)

(declare-fun choose!21863 (List!38856 List!38856 List!38856 List!38856 List!38856) Unit!56380)

(assert (=> d!1078553 (= lt!1280897 (choose!21863 lt!1280693 (_2!22434 lt!1280654) lt!1280693 lt!1280676 lt!1280690))))

(assert (=> d!1078553 (isPrefix!3187 lt!1280693 lt!1280690)))

(assert (=> d!1078553 (= (lemmaSamePrefixThenSameSuffix!1514 lt!1280693 (_2!22434 lt!1280654) lt!1280693 lt!1280676 lt!1280690) lt!1280897)))

(declare-fun bs!573245 () Bool)

(assert (= bs!573245 d!1078553))

(declare-fun m!4181797 () Bool)

(assert (=> bs!573245 m!4181797))

(assert (=> bs!573245 m!4181173))

(assert (=> b!3672277 d!1078553))

(declare-fun d!1078555 () Bool)

(assert (=> d!1078555 (= (maxPrefixOneRule!2085 thiss!23823 (rule!8650 (_1!22434 lt!1280654)) lt!1280690) (Some!8276 (tuple2!38601 (Token!11015 (apply!9326 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) (seqFromList!4373 lt!1280693)) (rule!8650 (_1!22434 lt!1280654)) (size!29606 lt!1280693) lt!1280693) (_2!22434 lt!1280654))))))

(declare-fun lt!1280900 () Unit!56380)

(declare-fun choose!21864 (LexerInterface!5413 List!38857 List!38856 List!38856 List!38856 Rule!11448) Unit!56380)

(assert (=> d!1078555 (= lt!1280900 (choose!21864 thiss!23823 rules!3307 lt!1280693 lt!1280690 (_2!22434 lt!1280654) (rule!8650 (_1!22434 lt!1280654))))))

(assert (=> d!1078555 (not (isEmpty!22991 rules!3307))))

(assert (=> d!1078555 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1141 thiss!23823 rules!3307 lt!1280693 lt!1280690 (_2!22434 lt!1280654) (rule!8650 (_1!22434 lt!1280654))) lt!1280900)))

(declare-fun bs!573246 () Bool)

(assert (= bs!573246 d!1078555))

(assert (=> bs!573246 m!4181125))

(assert (=> bs!573246 m!4181119))

(assert (=> bs!573246 m!4181125))

(assert (=> bs!573246 m!4181127))

(declare-fun m!4181799 () Bool)

(assert (=> bs!573246 m!4181799))

(assert (=> bs!573246 m!4181129))

(assert (=> bs!573246 m!4181133))

(assert (=> b!3672277 d!1078555))

(declare-fun d!1078557 () Bool)

(declare-fun e!2274180 () Bool)

(assert (=> d!1078557 e!2274180))

(declare-fun res!1491771 () Bool)

(assert (=> d!1078557 (=> res!1491771 e!2274180)))

(declare-fun lt!1280914 () Option!8277)

(declare-fun isEmpty!22994 (Option!8277) Bool)

(assert (=> d!1078557 (= res!1491771 (isEmpty!22994 lt!1280914))))

(declare-fun e!2274181 () Option!8277)

(assert (=> d!1078557 (= lt!1280914 e!2274181)))

(declare-fun c!635082 () Bool)

(declare-datatypes ((tuple2!38604 0))(
  ( (tuple2!38605 (_1!22436 List!38856) (_2!22436 List!38856)) )
))
(declare-fun lt!1280911 () tuple2!38604)

(assert (=> d!1078557 (= c!635082 (isEmpty!22990 (_1!22436 lt!1280911)))))

(declare-fun findLongestMatch!995 (Regex!10583 List!38856) tuple2!38604)

(assert (=> d!1078557 (= lt!1280911 (findLongestMatch!995 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280690))))

(assert (=> d!1078557 (ruleValid!2088 thiss!23823 (rule!8650 (_1!22434 lt!1280654)))))

(assert (=> d!1078557 (= (maxPrefixOneRule!2085 thiss!23823 (rule!8650 (_1!22434 lt!1280654)) lt!1280690) lt!1280914)))

(declare-fun b!3672775 () Bool)

(assert (=> b!3672775 (= e!2274181 None!8276)))

(declare-fun b!3672776 () Bool)

(declare-fun res!1491775 () Bool)

(declare-fun e!2274182 () Bool)

(assert (=> b!3672776 (=> (not res!1491775) (not e!2274182))))

(assert (=> b!3672776 (= res!1491775 (= (++!9640 (list!14386 (charsOf!3838 (_1!22434 (get!12798 lt!1280914)))) (_2!22434 (get!12798 lt!1280914))) lt!1280690))))

(declare-fun b!3672777 () Bool)

(declare-fun res!1491776 () Bool)

(assert (=> b!3672777 (=> (not res!1491776) (not e!2274182))))

(assert (=> b!3672777 (= res!1491776 (= (value!186444 (_1!22434 (get!12798 lt!1280914))) (apply!9326 (transformation!5824 (rule!8650 (_1!22434 (get!12798 lt!1280914)))) (seqFromList!4373 (originalCharacters!6538 (_1!22434 (get!12798 lt!1280914)))))))))

(declare-fun b!3672778 () Bool)

(assert (=> b!3672778 (= e!2274180 e!2274182)))

(declare-fun res!1491772 () Bool)

(assert (=> b!3672778 (=> (not res!1491772) (not e!2274182))))

(assert (=> b!3672778 (= res!1491772 (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) (list!14386 (charsOf!3838 (_1!22434 (get!12798 lt!1280914))))))))

(declare-fun b!3672779 () Bool)

(assert (=> b!3672779 (= e!2274181 (Some!8276 (tuple2!38601 (Token!11015 (apply!9326 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) (seqFromList!4373 (_1!22436 lt!1280911))) (rule!8650 (_1!22434 lt!1280654)) (size!29607 (seqFromList!4373 (_1!22436 lt!1280911))) (_1!22436 lt!1280911)) (_2!22436 lt!1280911))))))

(declare-fun lt!1280913 () Unit!56380)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1053 (Regex!10583 List!38856) Unit!56380)

(assert (=> b!3672779 (= lt!1280913 (longestMatchIsAcceptedByMatchOrIsEmpty!1053 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) lt!1280690))))

(declare-fun res!1491770 () Bool)

(declare-fun findLongestMatchInner!1080 (Regex!10583 List!38856 Int List!38856 List!38856 Int) tuple2!38604)

(assert (=> b!3672779 (= res!1491770 (isEmpty!22990 (_1!22436 (findLongestMatchInner!1080 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) Nil!38732 (size!29606 Nil!38732) lt!1280690 lt!1280690 (size!29606 lt!1280690)))))))

(declare-fun e!2274183 () Bool)

(assert (=> b!3672779 (=> res!1491770 e!2274183)))

(assert (=> b!3672779 e!2274183))

(declare-fun lt!1280915 () Unit!56380)

(assert (=> b!3672779 (= lt!1280915 lt!1280913)))

(declare-fun lt!1280912 () Unit!56380)

(assert (=> b!3672779 (= lt!1280912 (lemmaSemiInverse!1573 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) (seqFromList!4373 (_1!22436 lt!1280911))))))

(declare-fun b!3672780 () Bool)

(declare-fun res!1491773 () Bool)

(assert (=> b!3672780 (=> (not res!1491773) (not e!2274182))))

(assert (=> b!3672780 (= res!1491773 (= (rule!8650 (_1!22434 (get!12798 lt!1280914))) (rule!8650 (_1!22434 lt!1280654))))))

(declare-fun b!3672781 () Bool)

(declare-fun res!1491774 () Bool)

(assert (=> b!3672781 (=> (not res!1491774) (not e!2274182))))

(assert (=> b!3672781 (= res!1491774 (< (size!29606 (_2!22434 (get!12798 lt!1280914))) (size!29606 lt!1280690)))))

(declare-fun b!3672782 () Bool)

(assert (=> b!3672782 (= e!2274183 (matchR!5152 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) (_1!22436 (findLongestMatchInner!1080 (regex!5824 (rule!8650 (_1!22434 lt!1280654))) Nil!38732 (size!29606 Nil!38732) lt!1280690 lt!1280690 (size!29606 lt!1280690)))))))

(declare-fun b!3672783 () Bool)

(assert (=> b!3672783 (= e!2274182 (= (size!29605 (_1!22434 (get!12798 lt!1280914))) (size!29606 (originalCharacters!6538 (_1!22434 (get!12798 lt!1280914))))))))

(assert (= (and d!1078557 c!635082) b!3672775))

(assert (= (and d!1078557 (not c!635082)) b!3672779))

(assert (= (and b!3672779 (not res!1491770)) b!3672782))

(assert (= (and d!1078557 (not res!1491771)) b!3672778))

(assert (= (and b!3672778 res!1491772) b!3672776))

(assert (= (and b!3672776 res!1491775) b!3672781))

(assert (= (and b!3672781 res!1491774) b!3672780))

(assert (= (and b!3672780 res!1491773) b!3672777))

(assert (= (and b!3672777 res!1491776) b!3672783))

(declare-fun m!4181801 () Bool)

(assert (=> b!3672780 m!4181801))

(declare-fun m!4181803 () Bool)

(assert (=> b!3672782 m!4181803))

(assert (=> b!3672782 m!4181791))

(assert (=> b!3672782 m!4181803))

(assert (=> b!3672782 m!4181791))

(declare-fun m!4181805 () Bool)

(assert (=> b!3672782 m!4181805))

(declare-fun m!4181807 () Bool)

(assert (=> b!3672782 m!4181807))

(assert (=> b!3672776 m!4181801))

(declare-fun m!4181809 () Bool)

(assert (=> b!3672776 m!4181809))

(assert (=> b!3672776 m!4181809))

(declare-fun m!4181811 () Bool)

(assert (=> b!3672776 m!4181811))

(assert (=> b!3672776 m!4181811))

(declare-fun m!4181813 () Bool)

(assert (=> b!3672776 m!4181813))

(declare-fun m!4181815 () Bool)

(assert (=> b!3672779 m!4181815))

(declare-fun m!4181817 () Bool)

(assert (=> b!3672779 m!4181817))

(assert (=> b!3672779 m!4181815))

(assert (=> b!3672779 m!4181815))

(declare-fun m!4181819 () Bool)

(assert (=> b!3672779 m!4181819))

(assert (=> b!3672779 m!4181815))

(declare-fun m!4181821 () Bool)

(assert (=> b!3672779 m!4181821))

(assert (=> b!3672779 m!4181803))

(assert (=> b!3672779 m!4181791))

(assert (=> b!3672779 m!4181805))

(declare-fun m!4181823 () Bool)

(assert (=> b!3672779 m!4181823))

(assert (=> b!3672779 m!4181791))

(declare-fun m!4181825 () Bool)

(assert (=> b!3672779 m!4181825))

(assert (=> b!3672779 m!4181803))

(assert (=> b!3672783 m!4181801))

(declare-fun m!4181827 () Bool)

(assert (=> b!3672783 m!4181827))

(assert (=> b!3672777 m!4181801))

(declare-fun m!4181829 () Bool)

(assert (=> b!3672777 m!4181829))

(assert (=> b!3672777 m!4181829))

(declare-fun m!4181831 () Bool)

(assert (=> b!3672777 m!4181831))

(declare-fun m!4181833 () Bool)

(assert (=> d!1078557 m!4181833))

(declare-fun m!4181835 () Bool)

(assert (=> d!1078557 m!4181835))

(declare-fun m!4181837 () Bool)

(assert (=> d!1078557 m!4181837))

(declare-fun m!4181839 () Bool)

(assert (=> d!1078557 m!4181839))

(assert (=> b!3672781 m!4181801))

(declare-fun m!4181841 () Bool)

(assert (=> b!3672781 m!4181841))

(assert (=> b!3672781 m!4181791))

(assert (=> b!3672778 m!4181801))

(assert (=> b!3672778 m!4181809))

(assert (=> b!3672778 m!4181809))

(assert (=> b!3672778 m!4181811))

(assert (=> b!3672778 m!4181811))

(declare-fun m!4181843 () Bool)

(assert (=> b!3672778 m!4181843))

(assert (=> b!3672277 d!1078557))

(declare-fun d!1078559 () Bool)

(assert (=> d!1078559 (= (apply!9326 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))) (seqFromList!4373 lt!1280693)) (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (seqFromList!4373 lt!1280693)))))

(declare-fun b_lambda!109065 () Bool)

(assert (=> (not b_lambda!109065) (not d!1078559)))

(declare-fun tb!212765 () Bool)

(declare-fun t!299870 () Bool)

(assert (=> (and b!3672269 (= (toValue!8120 (transformation!5824 (rule!8650 token!511))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299870) tb!212765))

(declare-fun result!258918 () Bool)

(assert (=> tb!212765 (= result!258918 (inv!21 (dynLambda!16956 (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (seqFromList!4373 lt!1280693))))))

(declare-fun m!4181845 () Bool)

(assert (=> tb!212765 m!4181845))

(assert (=> d!1078559 t!299870))

(declare-fun b_and!273723 () Bool)

(assert (= b_and!273715 (and (=> t!299870 result!258918) b_and!273723)))

(declare-fun t!299872 () Bool)

(declare-fun tb!212767 () Bool)

(assert (=> (and b!3672291 (= (toValue!8120 (transformation!5824 (h!44153 rules!3307))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299872) tb!212767))

(declare-fun result!258920 () Bool)

(assert (= result!258920 result!258918))

(assert (=> d!1078559 t!299872))

(declare-fun b_and!273725 () Bool)

(assert (= b_and!273717 (and (=> t!299872 result!258920) b_and!273725)))

(declare-fun t!299874 () Bool)

(declare-fun tb!212769 () Bool)

(assert (=> (and b!3672282 (= (toValue!8120 (transformation!5824 anOtherTypeRule!33)) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299874) tb!212769))

(declare-fun result!258922 () Bool)

(assert (= result!258922 result!258918))

(assert (=> d!1078559 t!299874))

(declare-fun b_and!273727 () Bool)

(assert (= b_and!273719 (and (=> t!299874 result!258922) b_and!273727)))

(declare-fun t!299876 () Bool)

(declare-fun tb!212771 () Bool)

(assert (=> (and b!3672310 (= (toValue!8120 (transformation!5824 rule!403)) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299876) tb!212771))

(declare-fun result!258924 () Bool)

(assert (= result!258924 result!258918))

(assert (=> d!1078559 t!299876))

(declare-fun b_and!273729 () Bool)

(assert (= b_and!273721 (and (=> t!299876 result!258924) b_and!273729)))

(assert (=> d!1078559 m!4181125))

(declare-fun m!4181847 () Bool)

(assert (=> d!1078559 m!4181847))

(assert (=> b!3672277 d!1078559))

(declare-fun b!3672784 () Bool)

(declare-fun res!1491777 () Bool)

(declare-fun e!2274187 () Bool)

(assert (=> b!3672784 (=> res!1491777 e!2274187)))

(assert (=> b!3672784 (= res!1491777 (not ((_ is ElementMatch!10583) (regex!5824 rule!403))))))

(declare-fun e!2274189 () Bool)

(assert (=> b!3672784 (= e!2274189 e!2274187)))

(declare-fun b!3672785 () Bool)

(declare-fun e!2274185 () Bool)

(assert (=> b!3672785 (= e!2274185 e!2274189)))

(declare-fun c!635084 () Bool)

(assert (=> b!3672785 (= c!635084 ((_ is EmptyLang!10583) (regex!5824 rule!403)))))

(declare-fun b!3672786 () Bool)

(declare-fun e!2274186 () Bool)

(assert (=> b!3672786 (= e!2274186 (not (= (head!7866 lt!1280697) (c!634972 (regex!5824 rule!403)))))))

(declare-fun d!1078561 () Bool)

(assert (=> d!1078561 e!2274185))

(declare-fun c!635085 () Bool)

(assert (=> d!1078561 (= c!635085 ((_ is EmptyExpr!10583) (regex!5824 rule!403)))))

(declare-fun lt!1280916 () Bool)

(declare-fun e!2274190 () Bool)

(assert (=> d!1078561 (= lt!1280916 e!2274190)))

(declare-fun c!635083 () Bool)

(assert (=> d!1078561 (= c!635083 (isEmpty!22990 lt!1280697))))

(assert (=> d!1078561 (validRegex!4846 (regex!5824 rule!403))))

(assert (=> d!1078561 (= (matchR!5152 (regex!5824 rule!403) lt!1280697) lt!1280916)))

(declare-fun b!3672787 () Bool)

(declare-fun res!1491783 () Bool)

(assert (=> b!3672787 (=> res!1491783 e!2274187)))

(declare-fun e!2274188 () Bool)

(assert (=> b!3672787 (= res!1491783 e!2274188)))

(declare-fun res!1491781 () Bool)

(assert (=> b!3672787 (=> (not res!1491781) (not e!2274188))))

(assert (=> b!3672787 (= res!1491781 lt!1280916)))

(declare-fun b!3672788 () Bool)

(declare-fun res!1491784 () Bool)

(assert (=> b!3672788 (=> res!1491784 e!2274186)))

(assert (=> b!3672788 (= res!1491784 (not (isEmpty!22990 (tail!5682 lt!1280697))))))

(declare-fun bm!265922 () Bool)

(declare-fun call!265927 () Bool)

(assert (=> bm!265922 (= call!265927 (isEmpty!22990 lt!1280697))))

(declare-fun b!3672789 () Bool)

(assert (=> b!3672789 (= e!2274190 (matchR!5152 (derivativeStep!3233 (regex!5824 rule!403) (head!7866 lt!1280697)) (tail!5682 lt!1280697)))))

(declare-fun b!3672790 () Bool)

(declare-fun res!1491780 () Bool)

(assert (=> b!3672790 (=> (not res!1491780) (not e!2274188))))

(assert (=> b!3672790 (= res!1491780 (isEmpty!22990 (tail!5682 lt!1280697)))))

(declare-fun b!3672791 () Bool)

(assert (=> b!3672791 (= e!2274185 (= lt!1280916 call!265927))))

(declare-fun b!3672792 () Bool)

(assert (=> b!3672792 (= e!2274188 (= (head!7866 lt!1280697) (c!634972 (regex!5824 rule!403))))))

(declare-fun b!3672793 () Bool)

(assert (=> b!3672793 (= e!2274190 (nullable!3684 (regex!5824 rule!403)))))

(declare-fun b!3672794 () Bool)

(assert (=> b!3672794 (= e!2274189 (not lt!1280916))))

(declare-fun b!3672795 () Bool)

(declare-fun e!2274191 () Bool)

(assert (=> b!3672795 (= e!2274191 e!2274186)))

(declare-fun res!1491782 () Bool)

(assert (=> b!3672795 (=> res!1491782 e!2274186)))

(assert (=> b!3672795 (= res!1491782 call!265927)))

(declare-fun b!3672796 () Bool)

(assert (=> b!3672796 (= e!2274187 e!2274191)))

(declare-fun res!1491779 () Bool)

(assert (=> b!3672796 (=> (not res!1491779) (not e!2274191))))

(assert (=> b!3672796 (= res!1491779 (not lt!1280916))))

(declare-fun b!3672797 () Bool)

(declare-fun res!1491778 () Bool)

(assert (=> b!3672797 (=> (not res!1491778) (not e!2274188))))

(assert (=> b!3672797 (= res!1491778 (not call!265927))))

(assert (= (and d!1078561 c!635083) b!3672793))

(assert (= (and d!1078561 (not c!635083)) b!3672789))

(assert (= (and d!1078561 c!635085) b!3672791))

(assert (= (and d!1078561 (not c!635085)) b!3672785))

(assert (= (and b!3672785 c!635084) b!3672794))

(assert (= (and b!3672785 (not c!635084)) b!3672784))

(assert (= (and b!3672784 (not res!1491777)) b!3672787))

(assert (= (and b!3672787 res!1491781) b!3672797))

(assert (= (and b!3672797 res!1491778) b!3672790))

(assert (= (and b!3672790 res!1491780) b!3672792))

(assert (= (and b!3672787 (not res!1491783)) b!3672796))

(assert (= (and b!3672796 res!1491779) b!3672795))

(assert (= (and b!3672795 (not res!1491782)) b!3672788))

(assert (= (and b!3672788 (not res!1491784)) b!3672786))

(assert (= (or b!3672791 b!3672795 b!3672797) bm!265922))

(assert (=> bm!265922 m!4181717))

(declare-fun m!4181849 () Bool)

(assert (=> b!3672793 m!4181849))

(assert (=> b!3672786 m!4181719))

(assert (=> b!3672789 m!4181719))

(assert (=> b!3672789 m!4181719))

(declare-fun m!4181851 () Bool)

(assert (=> b!3672789 m!4181851))

(assert (=> b!3672789 m!4181723))

(assert (=> b!3672789 m!4181851))

(assert (=> b!3672789 m!4181723))

(declare-fun m!4181853 () Bool)

(assert (=> b!3672789 m!4181853))

(assert (=> b!3672788 m!4181723))

(assert (=> b!3672788 m!4181723))

(assert (=> b!3672788 m!4181727))

(assert (=> d!1078561 m!4181717))

(assert (=> d!1078561 m!4181447))

(assert (=> b!3672792 m!4181719))

(assert (=> b!3672790 m!4181723))

(assert (=> b!3672790 m!4181723))

(assert (=> b!3672790 m!4181727))

(assert (=> b!3672315 d!1078561))

(declare-fun d!1078563 () Bool)

(declare-fun res!1491789 () Bool)

(declare-fun e!2274194 () Bool)

(assert (=> d!1078563 (=> (not res!1491789) (not e!2274194))))

(assert (=> d!1078563 (= res!1491789 (validRegex!4846 (regex!5824 rule!403)))))

(assert (=> d!1078563 (= (ruleValid!2088 thiss!23823 rule!403) e!2274194)))

(declare-fun b!3672802 () Bool)

(declare-fun res!1491790 () Bool)

(assert (=> b!3672802 (=> (not res!1491790) (not e!2274194))))

(assert (=> b!3672802 (= res!1491790 (not (nullable!3684 (regex!5824 rule!403))))))

(declare-fun b!3672803 () Bool)

(assert (=> b!3672803 (= e!2274194 (not (= (tag!6616 rule!403) (String!43605 ""))))))

(assert (= (and d!1078563 res!1491789) b!3672802))

(assert (= (and b!3672802 res!1491790) b!3672803))

(assert (=> d!1078563 m!4181447))

(assert (=> b!3672802 m!4181849))

(assert (=> b!3672315 d!1078563))

(declare-fun d!1078565 () Bool)

(assert (=> d!1078565 (ruleValid!2088 thiss!23823 rule!403)))

(declare-fun lt!1280919 () Unit!56380)

(declare-fun choose!21866 (LexerInterface!5413 Rule!11448 List!38857) Unit!56380)

(assert (=> d!1078565 (= lt!1280919 (choose!21866 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1078565 (contains!7716 rules!3307 rule!403)))

(assert (=> d!1078565 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1242 thiss!23823 rule!403 rules!3307) lt!1280919)))

(declare-fun bs!573247 () Bool)

(assert (= bs!573247 d!1078565))

(assert (=> bs!573247 m!4181249))

(declare-fun m!4181855 () Bool)

(assert (=> bs!573247 m!4181855))

(assert (=> bs!573247 m!4181287))

(assert (=> b!3672315 d!1078565))

(declare-fun d!1078567 () Bool)

(assert (=> d!1078567 (= (isDefined!6509 lt!1280648) (not (isEmpty!22994 lt!1280648)))))

(declare-fun bs!573248 () Bool)

(assert (= bs!573248 d!1078567))

(declare-fun m!4181857 () Bool)

(assert (=> bs!573248 m!4181857))

(assert (=> b!3672278 d!1078567))

(declare-fun b!3672824 () Bool)

(declare-fun res!1491811 () Bool)

(declare-fun e!2274204 () Bool)

(assert (=> b!3672824 (=> (not res!1491811) (not e!2274204))))

(declare-fun lt!1280931 () Option!8277)

(assert (=> b!3672824 (= res!1491811 (= (list!14386 (charsOf!3838 (_1!22434 (get!12798 lt!1280931)))) (originalCharacters!6538 (_1!22434 (get!12798 lt!1280931)))))))

(declare-fun b!3672825 () Bool)

(declare-fun e!2274203 () Option!8277)

(declare-fun call!265930 () Option!8277)

(assert (=> b!3672825 (= e!2274203 call!265930)))

(declare-fun d!1078569 () Bool)

(declare-fun e!2274205 () Bool)

(assert (=> d!1078569 e!2274205))

(declare-fun res!1491812 () Bool)

(assert (=> d!1078569 (=> res!1491812 e!2274205)))

(assert (=> d!1078569 (= res!1491812 (isEmpty!22994 lt!1280931))))

(assert (=> d!1078569 (= lt!1280931 e!2274203)))

(declare-fun c!635088 () Bool)

(assert (=> d!1078569 (= c!635088 (and ((_ is Cons!38733) rules!3307) ((_ is Nil!38733) (t!299812 rules!3307))))))

(declare-fun lt!1280934 () Unit!56380)

(declare-fun lt!1280933 () Unit!56380)

(assert (=> d!1078569 (= lt!1280934 lt!1280933)))

(assert (=> d!1078569 (isPrefix!3187 lt!1280697 lt!1280697)))

(declare-fun lemmaIsPrefixRefl!2008 (List!38856 List!38856) Unit!56380)

(assert (=> d!1078569 (= lt!1280933 (lemmaIsPrefixRefl!2008 lt!1280697 lt!1280697))))

(declare-fun rulesValidInductive!2071 (LexerInterface!5413 List!38857) Bool)

(assert (=> d!1078569 (rulesValidInductive!2071 thiss!23823 rules!3307)))

(assert (=> d!1078569 (= (maxPrefix!2947 thiss!23823 rules!3307 lt!1280697) lt!1280931)))

(declare-fun b!3672826 () Bool)

(declare-fun res!1491813 () Bool)

(assert (=> b!3672826 (=> (not res!1491813) (not e!2274204))))

(assert (=> b!3672826 (= res!1491813 (< (size!29606 (_2!22434 (get!12798 lt!1280931))) (size!29606 lt!1280697)))))

(declare-fun bm!265925 () Bool)

(assert (=> bm!265925 (= call!265930 (maxPrefixOneRule!2085 thiss!23823 (h!44153 rules!3307) lt!1280697))))

(declare-fun b!3672827 () Bool)

(assert (=> b!3672827 (= e!2274204 (contains!7716 rules!3307 (rule!8650 (_1!22434 (get!12798 lt!1280931)))))))

(declare-fun b!3672828 () Bool)

(declare-fun lt!1280932 () Option!8277)

(declare-fun lt!1280935 () Option!8277)

(assert (=> b!3672828 (= e!2274203 (ite (and ((_ is None!8276) lt!1280932) ((_ is None!8276) lt!1280935)) None!8276 (ite ((_ is None!8276) lt!1280935) lt!1280932 (ite ((_ is None!8276) lt!1280932) lt!1280935 (ite (>= (size!29605 (_1!22434 (v!38192 lt!1280932))) (size!29605 (_1!22434 (v!38192 lt!1280935)))) lt!1280932 lt!1280935)))))))

(assert (=> b!3672828 (= lt!1280932 call!265930)))

(assert (=> b!3672828 (= lt!1280935 (maxPrefix!2947 thiss!23823 (t!299812 rules!3307) lt!1280697))))

(declare-fun b!3672829 () Bool)

(declare-fun res!1491809 () Bool)

(assert (=> b!3672829 (=> (not res!1491809) (not e!2274204))))

(assert (=> b!3672829 (= res!1491809 (= (value!186444 (_1!22434 (get!12798 lt!1280931))) (apply!9326 (transformation!5824 (rule!8650 (_1!22434 (get!12798 lt!1280931)))) (seqFromList!4373 (originalCharacters!6538 (_1!22434 (get!12798 lt!1280931)))))))))

(declare-fun b!3672830 () Bool)

(declare-fun res!1491808 () Bool)

(assert (=> b!3672830 (=> (not res!1491808) (not e!2274204))))

(assert (=> b!3672830 (= res!1491808 (matchR!5152 (regex!5824 (rule!8650 (_1!22434 (get!12798 lt!1280931)))) (list!14386 (charsOf!3838 (_1!22434 (get!12798 lt!1280931))))))))

(declare-fun b!3672831 () Bool)

(declare-fun res!1491807 () Bool)

(assert (=> b!3672831 (=> (not res!1491807) (not e!2274204))))

(assert (=> b!3672831 (= res!1491807 (= (++!9640 (list!14386 (charsOf!3838 (_1!22434 (get!12798 lt!1280931)))) (_2!22434 (get!12798 lt!1280931))) lt!1280697))))

(declare-fun b!3672832 () Bool)

(assert (=> b!3672832 (= e!2274205 e!2274204)))

(declare-fun res!1491810 () Bool)

(assert (=> b!3672832 (=> (not res!1491810) (not e!2274204))))

(assert (=> b!3672832 (= res!1491810 (isDefined!6509 lt!1280931))))

(assert (= (and d!1078569 c!635088) b!3672825))

(assert (= (and d!1078569 (not c!635088)) b!3672828))

(assert (= (or b!3672825 b!3672828) bm!265925))

(assert (= (and d!1078569 (not res!1491812)) b!3672832))

(assert (= (and b!3672832 res!1491810) b!3672824))

(assert (= (and b!3672824 res!1491811) b!3672826))

(assert (= (and b!3672826 res!1491813) b!3672831))

(assert (= (and b!3672831 res!1491807) b!3672829))

(assert (= (and b!3672829 res!1491809) b!3672830))

(assert (= (and b!3672830 res!1491808) b!3672827))

(declare-fun m!4181859 () Bool)

(assert (=> b!3672832 m!4181859))

(declare-fun m!4181861 () Bool)

(assert (=> b!3672830 m!4181861))

(declare-fun m!4181863 () Bool)

(assert (=> b!3672830 m!4181863))

(assert (=> b!3672830 m!4181863))

(declare-fun m!4181865 () Bool)

(assert (=> b!3672830 m!4181865))

(assert (=> b!3672830 m!4181865))

(declare-fun m!4181867 () Bool)

(assert (=> b!3672830 m!4181867))

(assert (=> b!3672831 m!4181861))

(assert (=> b!3672831 m!4181863))

(assert (=> b!3672831 m!4181863))

(assert (=> b!3672831 m!4181865))

(assert (=> b!3672831 m!4181865))

(declare-fun m!4181871 () Bool)

(assert (=> b!3672831 m!4181871))

(declare-fun m!4181873 () Bool)

(assert (=> bm!265925 m!4181873))

(assert (=> b!3672829 m!4181861))

(declare-fun m!4181875 () Bool)

(assert (=> b!3672829 m!4181875))

(assert (=> b!3672829 m!4181875))

(declare-fun m!4181877 () Bool)

(assert (=> b!3672829 m!4181877))

(declare-fun m!4181879 () Bool)

(assert (=> d!1078569 m!4181879))

(assert (=> d!1078569 m!4181739))

(declare-fun m!4181881 () Bool)

(assert (=> d!1078569 m!4181881))

(declare-fun m!4181883 () Bool)

(assert (=> d!1078569 m!4181883))

(assert (=> b!3672827 m!4181861))

(declare-fun m!4181885 () Bool)

(assert (=> b!3672827 m!4181885))

(assert (=> b!3672826 m!4181861))

(declare-fun m!4181887 () Bool)

(assert (=> b!3672826 m!4181887))

(assert (=> b!3672826 m!4181731))

(declare-fun m!4181889 () Bool)

(assert (=> b!3672828 m!4181889))

(assert (=> b!3672824 m!4181861))

(assert (=> b!3672824 m!4181863))

(assert (=> b!3672824 m!4181863))

(assert (=> b!3672824 m!4181865))

(assert (=> b!3672278 d!1078569))

(declare-fun d!1078571 () Bool)

(declare-fun list!14389 (Conc!11851) List!38856)

(assert (=> d!1078571 (= (list!14386 lt!1280685) (list!14389 (c!634973 lt!1280685)))))

(declare-fun bs!573249 () Bool)

(assert (= bs!573249 d!1078571))

(declare-fun m!4181897 () Bool)

(assert (=> bs!573249 m!4181897))

(assert (=> b!3672278 d!1078571))

(declare-fun d!1078575 () Bool)

(declare-fun lt!1280940 () BalanceConc!23316)

(assert (=> d!1078575 (= (list!14386 lt!1280940) (originalCharacters!6538 token!511))))

(assert (=> d!1078575 (= lt!1280940 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 token!511))) (value!186444 token!511)))))

(assert (=> d!1078575 (= (charsOf!3838 token!511) lt!1280940)))

(declare-fun b_lambda!109071 () Bool)

(assert (=> (not b_lambda!109071) (not d!1078575)))

(assert (=> d!1078575 t!299822))

(declare-fun b_and!273747 () Bool)

(assert (= b_and!273707 (and (=> t!299822 result!258864) b_and!273747)))

(assert (=> d!1078575 t!299824))

(declare-fun b_and!273749 () Bool)

(assert (= b_and!273709 (and (=> t!299824 result!258868) b_and!273749)))

(assert (=> d!1078575 t!299826))

(declare-fun b_and!273751 () Bool)

(assert (= b_and!273711 (and (=> t!299826 result!258870) b_and!273751)))

(assert (=> d!1078575 t!299828))

(declare-fun b_and!273753 () Bool)

(assert (= b_and!273713 (and (=> t!299828 result!258872) b_and!273753)))

(declare-fun m!4181899 () Bool)

(assert (=> d!1078575 m!4181899))

(assert (=> d!1078575 m!4181461))

(assert (=> b!3672278 d!1078575))

(declare-fun d!1078577 () Bool)

(declare-fun lt!1280941 () Bool)

(assert (=> d!1078577 (= lt!1280941 (select (content!5609 lt!1280651) lt!1280656))))

(declare-fun e!2274210 () Bool)

(assert (=> d!1078577 (= lt!1280941 e!2274210)))

(declare-fun res!1491814 () Bool)

(assert (=> d!1078577 (=> (not res!1491814) (not e!2274210))))

(assert (=> d!1078577 (= res!1491814 ((_ is Cons!38732) lt!1280651))))

(assert (=> d!1078577 (= (contains!7715 lt!1280651 lt!1280656) lt!1280941)))

(declare-fun b!3672838 () Bool)

(declare-fun e!2274211 () Bool)

(assert (=> b!3672838 (= e!2274210 e!2274211)))

(declare-fun res!1491815 () Bool)

(assert (=> b!3672838 (=> res!1491815 e!2274211)))

(assert (=> b!3672838 (= res!1491815 (= (h!44152 lt!1280651) lt!1280656))))

(declare-fun b!3672839 () Bool)

(assert (=> b!3672839 (= e!2274211 (contains!7715 (t!299811 lt!1280651) lt!1280656))))

(assert (= (and d!1078577 res!1491814) b!3672838))

(assert (= (and b!3672838 (not res!1491815)) b!3672839))

(assert (=> d!1078577 m!4181765))

(declare-fun m!4181901 () Bool)

(assert (=> d!1078577 m!4181901))

(declare-fun m!4181903 () Bool)

(assert (=> b!3672839 m!4181903))

(assert (=> b!3672295 d!1078577))

(declare-fun d!1078579 () Bool)

(assert (=> d!1078579 (= (head!7866 suffix!1395) (h!44152 suffix!1395))))

(assert (=> b!3672295 d!1078579))

(declare-fun b!3672840 () Bool)

(declare-fun e!2274213 () List!38856)

(declare-fun e!2274212 () List!38856)

(assert (=> b!3672840 (= e!2274213 e!2274212)))

(declare-fun c!635092 () Bool)

(assert (=> b!3672840 (= c!635092 ((_ is ElementMatch!10583) (regex!5824 rule!403)))))

(declare-fun b!3672841 () Bool)

(declare-fun e!2274214 () List!38856)

(declare-fun call!265932 () List!38856)

(assert (=> b!3672841 (= e!2274214 call!265932)))

(declare-fun b!3672842 () Bool)

(assert (=> b!3672842 (= e!2274212 (Cons!38732 (c!634972 (regex!5824 rule!403)) Nil!38732))))

(declare-fun call!265934 () List!38856)

(declare-fun c!635091 () Bool)

(declare-fun call!265933 () List!38856)

(declare-fun call!265931 () List!38856)

(declare-fun bm!265926 () Bool)

(assert (=> bm!265926 (= call!265934 (++!9640 (ite c!635091 call!265931 call!265933) (ite c!635091 call!265933 call!265931)))))

(declare-fun bm!265927 () Bool)

(assert (=> bm!265927 (= call!265931 call!265932)))

(declare-fun d!1078581 () Bool)

(declare-fun c!635093 () Bool)

(assert (=> d!1078581 (= c!635093 (or ((_ is EmptyExpr!10583) (regex!5824 rule!403)) ((_ is EmptyLang!10583) (regex!5824 rule!403))))))

(assert (=> d!1078581 (= (usedCharacters!1036 (regex!5824 rule!403)) e!2274213)))

(declare-fun b!3672843 () Bool)

(declare-fun c!635090 () Bool)

(assert (=> b!3672843 (= c!635090 ((_ is Star!10583) (regex!5824 rule!403)))))

(assert (=> b!3672843 (= e!2274212 e!2274214)))

(declare-fun b!3672844 () Bool)

(declare-fun e!2274215 () List!38856)

(assert (=> b!3672844 (= e!2274215 call!265934)))

(declare-fun b!3672845 () Bool)

(assert (=> b!3672845 (= e!2274213 Nil!38732)))

(declare-fun bm!265928 () Bool)

(assert (=> bm!265928 (= call!265932 (usedCharacters!1036 (ite c!635090 (reg!10912 (regex!5824 rule!403)) (ite c!635091 (regOne!21679 (regex!5824 rule!403)) (regTwo!21678 (regex!5824 rule!403))))))))

(declare-fun bm!265929 () Bool)

(assert (=> bm!265929 (= call!265933 (usedCharacters!1036 (ite c!635091 (regTwo!21679 (regex!5824 rule!403)) (regOne!21678 (regex!5824 rule!403)))))))

(declare-fun b!3672846 () Bool)

(assert (=> b!3672846 (= e!2274215 call!265934)))

(declare-fun b!3672847 () Bool)

(assert (=> b!3672847 (= e!2274214 e!2274215)))

(assert (=> b!3672847 (= c!635091 ((_ is Union!10583) (regex!5824 rule!403)))))

(assert (= (and d!1078581 c!635093) b!3672845))

(assert (= (and d!1078581 (not c!635093)) b!3672840))

(assert (= (and b!3672840 c!635092) b!3672842))

(assert (= (and b!3672840 (not c!635092)) b!3672843))

(assert (= (and b!3672843 c!635090) b!3672841))

(assert (= (and b!3672843 (not c!635090)) b!3672847))

(assert (= (and b!3672847 c!635091) b!3672846))

(assert (= (and b!3672847 (not c!635091)) b!3672844))

(assert (= (or b!3672846 b!3672844) bm!265927))

(assert (= (or b!3672846 b!3672844) bm!265929))

(assert (= (or b!3672846 b!3672844) bm!265926))

(assert (= (or b!3672841 bm!265927) bm!265928))

(declare-fun m!4181905 () Bool)

(assert (=> bm!265926 m!4181905))

(declare-fun m!4181907 () Bool)

(assert (=> bm!265928 m!4181907))

(declare-fun m!4181909 () Bool)

(assert (=> bm!265929 m!4181909))

(assert (=> b!3672295 d!1078581))

(declare-fun d!1078583 () Bool)

(assert (=> d!1078583 (= (get!12798 lt!1280648) (v!38192 lt!1280648))))

(assert (=> b!3672312 d!1078583))

(declare-fun b!3672850 () Bool)

(declare-fun res!1491816 () Bool)

(declare-fun e!2274218 () Bool)

(assert (=> b!3672850 (=> res!1491816 e!2274218)))

(assert (=> b!3672850 (= res!1491816 (not ((_ is ElementMatch!10583) (regex!5824 lt!1280666))))))

(declare-fun e!2274220 () Bool)

(assert (=> b!3672850 (= e!2274220 e!2274218)))

(declare-fun b!3672851 () Bool)

(declare-fun e!2274216 () Bool)

(assert (=> b!3672851 (= e!2274216 e!2274220)))

(declare-fun c!635095 () Bool)

(assert (=> b!3672851 (= c!635095 ((_ is EmptyLang!10583) (regex!5824 lt!1280666)))))

(declare-fun b!3672852 () Bool)

(declare-fun e!2274217 () Bool)

(assert (=> b!3672852 (= e!2274217 (not (= (head!7866 (list!14386 (charsOf!3838 (_1!22434 lt!1280654)))) (c!634972 (regex!5824 lt!1280666)))))))

(declare-fun d!1078585 () Bool)

(assert (=> d!1078585 e!2274216))

(declare-fun c!635096 () Bool)

(assert (=> d!1078585 (= c!635096 ((_ is EmptyExpr!10583) (regex!5824 lt!1280666)))))

(declare-fun lt!1280943 () Bool)

(declare-fun e!2274221 () Bool)

(assert (=> d!1078585 (= lt!1280943 e!2274221)))

(declare-fun c!635094 () Bool)

(assert (=> d!1078585 (= c!635094 (isEmpty!22990 (list!14386 (charsOf!3838 (_1!22434 lt!1280654)))))))

(assert (=> d!1078585 (validRegex!4846 (regex!5824 lt!1280666))))

(assert (=> d!1078585 (= (matchR!5152 (regex!5824 lt!1280666) (list!14386 (charsOf!3838 (_1!22434 lt!1280654)))) lt!1280943)))

(declare-fun b!3672853 () Bool)

(declare-fun res!1491822 () Bool)

(assert (=> b!3672853 (=> res!1491822 e!2274218)))

(declare-fun e!2274219 () Bool)

(assert (=> b!3672853 (= res!1491822 e!2274219)))

(declare-fun res!1491820 () Bool)

(assert (=> b!3672853 (=> (not res!1491820) (not e!2274219))))

(assert (=> b!3672853 (= res!1491820 lt!1280943)))

(declare-fun b!3672854 () Bool)

(declare-fun res!1491823 () Bool)

(assert (=> b!3672854 (=> res!1491823 e!2274217)))

(assert (=> b!3672854 (= res!1491823 (not (isEmpty!22990 (tail!5682 (list!14386 (charsOf!3838 (_1!22434 lt!1280654)))))))))

(declare-fun bm!265930 () Bool)

(declare-fun call!265935 () Bool)

(assert (=> bm!265930 (= call!265935 (isEmpty!22990 (list!14386 (charsOf!3838 (_1!22434 lt!1280654)))))))

(declare-fun b!3672855 () Bool)

(assert (=> b!3672855 (= e!2274221 (matchR!5152 (derivativeStep!3233 (regex!5824 lt!1280666) (head!7866 (list!14386 (charsOf!3838 (_1!22434 lt!1280654))))) (tail!5682 (list!14386 (charsOf!3838 (_1!22434 lt!1280654))))))))

(declare-fun b!3672856 () Bool)

(declare-fun res!1491819 () Bool)

(assert (=> b!3672856 (=> (not res!1491819) (not e!2274219))))

(assert (=> b!3672856 (= res!1491819 (isEmpty!22990 (tail!5682 (list!14386 (charsOf!3838 (_1!22434 lt!1280654))))))))

(declare-fun b!3672857 () Bool)

(assert (=> b!3672857 (= e!2274216 (= lt!1280943 call!265935))))

(declare-fun b!3672858 () Bool)

(assert (=> b!3672858 (= e!2274219 (= (head!7866 (list!14386 (charsOf!3838 (_1!22434 lt!1280654)))) (c!634972 (regex!5824 lt!1280666))))))

(declare-fun b!3672859 () Bool)

(assert (=> b!3672859 (= e!2274221 (nullable!3684 (regex!5824 lt!1280666)))))

(declare-fun b!3672860 () Bool)

(assert (=> b!3672860 (= e!2274220 (not lt!1280943))))

(declare-fun b!3672861 () Bool)

(declare-fun e!2274222 () Bool)

(assert (=> b!3672861 (= e!2274222 e!2274217)))

(declare-fun res!1491821 () Bool)

(assert (=> b!3672861 (=> res!1491821 e!2274217)))

(assert (=> b!3672861 (= res!1491821 call!265935)))

(declare-fun b!3672862 () Bool)

(assert (=> b!3672862 (= e!2274218 e!2274222)))

(declare-fun res!1491818 () Bool)

(assert (=> b!3672862 (=> (not res!1491818) (not e!2274222))))

(assert (=> b!3672862 (= res!1491818 (not lt!1280943))))

(declare-fun b!3672863 () Bool)

(declare-fun res!1491817 () Bool)

(assert (=> b!3672863 (=> (not res!1491817) (not e!2274219))))

(assert (=> b!3672863 (= res!1491817 (not call!265935))))

(assert (= (and d!1078585 c!635094) b!3672859))

(assert (= (and d!1078585 (not c!635094)) b!3672855))

(assert (= (and d!1078585 c!635096) b!3672857))

(assert (= (and d!1078585 (not c!635096)) b!3672851))

(assert (= (and b!3672851 c!635095) b!3672860))

(assert (= (and b!3672851 (not c!635095)) b!3672850))

(assert (= (and b!3672850 (not res!1491816)) b!3672853))

(assert (= (and b!3672853 res!1491820) b!3672863))

(assert (= (and b!3672863 res!1491817) b!3672856))

(assert (= (and b!3672856 res!1491819) b!3672858))

(assert (= (and b!3672853 (not res!1491822)) b!3672862))

(assert (= (and b!3672862 res!1491818) b!3672861))

(assert (= (and b!3672861 (not res!1491821)) b!3672854))

(assert (= (and b!3672854 (not res!1491823)) b!3672852))

(assert (= (or b!3672857 b!3672861 b!3672863) bm!265930))

(assert (=> bm!265930 m!4181233))

(declare-fun m!4181911 () Bool)

(assert (=> bm!265930 m!4181911))

(declare-fun m!4181913 () Bool)

(assert (=> b!3672859 m!4181913))

(assert (=> b!3672852 m!4181233))

(declare-fun m!4181915 () Bool)

(assert (=> b!3672852 m!4181915))

(assert (=> b!3672855 m!4181233))

(assert (=> b!3672855 m!4181915))

(assert (=> b!3672855 m!4181915))

(declare-fun m!4181917 () Bool)

(assert (=> b!3672855 m!4181917))

(assert (=> b!3672855 m!4181233))

(declare-fun m!4181919 () Bool)

(assert (=> b!3672855 m!4181919))

(assert (=> b!3672855 m!4181917))

(assert (=> b!3672855 m!4181919))

(declare-fun m!4181921 () Bool)

(assert (=> b!3672855 m!4181921))

(assert (=> b!3672854 m!4181233))

(assert (=> b!3672854 m!4181919))

(assert (=> b!3672854 m!4181919))

(declare-fun m!4181923 () Bool)

(assert (=> b!3672854 m!4181923))

(assert (=> d!1078585 m!4181233))

(assert (=> d!1078585 m!4181911))

(declare-fun m!4181925 () Bool)

(assert (=> d!1078585 m!4181925))

(assert (=> b!3672858 m!4181233))

(assert (=> b!3672858 m!4181915))

(assert (=> b!3672856 m!4181233))

(assert (=> b!3672856 m!4181919))

(assert (=> b!3672856 m!4181919))

(assert (=> b!3672856 m!4181923))

(assert (=> b!3672292 d!1078585))

(declare-fun d!1078587 () Bool)

(assert (=> d!1078587 (= (list!14386 (charsOf!3838 (_1!22434 lt!1280654))) (list!14389 (c!634973 (charsOf!3838 (_1!22434 lt!1280654)))))))

(declare-fun bs!573250 () Bool)

(assert (= bs!573250 d!1078587))

(declare-fun m!4181931 () Bool)

(assert (=> bs!573250 m!4181931))

(assert (=> b!3672292 d!1078587))

(declare-fun d!1078589 () Bool)

(declare-fun lt!1280944 () BalanceConc!23316)

(assert (=> d!1078589 (= (list!14386 lt!1280944) (originalCharacters!6538 (_1!22434 lt!1280654)))))

(assert (=> d!1078589 (= lt!1280944 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (value!186444 (_1!22434 lt!1280654))))))

(assert (=> d!1078589 (= (charsOf!3838 (_1!22434 lt!1280654)) lt!1280944)))

(declare-fun b_lambda!109075 () Bool)

(assert (=> (not b_lambda!109075) (not d!1078589)))

(declare-fun tb!212789 () Bool)

(declare-fun t!299894 () Bool)

(assert (=> (and b!3672269 (= (toChars!7979 (transformation!5824 (rule!8650 token!511))) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299894) tb!212789))

(declare-fun b!3672868 () Bool)

(declare-fun e!2274227 () Bool)

(declare-fun tp!1117326 () Bool)

(assert (=> b!3672868 (= e!2274227 (and (inv!52222 (c!634973 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (value!186444 (_1!22434 lt!1280654))))) tp!1117326))))

(declare-fun result!258942 () Bool)

(assert (=> tb!212789 (= result!258942 (and (inv!52223 (dynLambda!16955 (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654)))) (value!186444 (_1!22434 lt!1280654)))) e!2274227))))

(assert (= tb!212789 b!3672868))

(declare-fun m!4181937 () Bool)

(assert (=> b!3672868 m!4181937))

(declare-fun m!4181941 () Bool)

(assert (=> tb!212789 m!4181941))

(assert (=> d!1078589 t!299894))

(declare-fun b_and!273771 () Bool)

(assert (= b_and!273747 (and (=> t!299894 result!258942) b_and!273771)))

(declare-fun tb!212791 () Bool)

(declare-fun t!299896 () Bool)

(assert (=> (and b!3672291 (= (toChars!7979 (transformation!5824 (h!44153 rules!3307))) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299896) tb!212791))

(declare-fun result!258944 () Bool)

(assert (= result!258944 result!258942))

(assert (=> d!1078589 t!299896))

(declare-fun b_and!273773 () Bool)

(assert (= b_and!273749 (and (=> t!299896 result!258944) b_and!273773)))

(declare-fun t!299898 () Bool)

(declare-fun tb!212793 () Bool)

(assert (=> (and b!3672282 (= (toChars!7979 (transformation!5824 anOtherTypeRule!33)) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299898) tb!212793))

(declare-fun result!258946 () Bool)

(assert (= result!258946 result!258942))

(assert (=> d!1078589 t!299898))

(declare-fun b_and!273775 () Bool)

(assert (= b_and!273751 (and (=> t!299898 result!258946) b_and!273775)))

(declare-fun t!299900 () Bool)

(declare-fun tb!212795 () Bool)

(assert (=> (and b!3672310 (= (toChars!7979 (transformation!5824 rule!403)) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299900) tb!212795))

(declare-fun result!258948 () Bool)

(assert (= result!258948 result!258942))

(assert (=> d!1078589 t!299900))

(declare-fun b_and!273777 () Bool)

(assert (= b_and!273753 (and (=> t!299900 result!258948) b_and!273777)))

(declare-fun m!4181943 () Bool)

(assert (=> d!1078589 m!4181943))

(declare-fun m!4181945 () Bool)

(assert (=> d!1078589 m!4181945))

(assert (=> b!3672292 d!1078589))

(declare-fun d!1078593 () Bool)

(assert (=> d!1078593 (= (get!12799 lt!1280694) (v!38191 lt!1280694))))

(assert (=> b!3672292 d!1078593))

(declare-fun d!1078595 () Bool)

(assert (=> d!1078595 (not (contains!7715 (usedCharacters!1036 (regex!5824 (rule!8650 (_1!22434 lt!1280654)))) lt!1280700))))

(declare-fun lt!1280946 () Unit!56380)

(assert (=> d!1078595 (= lt!1280946 (choose!21855 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8650 (_1!22434 lt!1280654)) lt!1280700))))

(assert (=> d!1078595 (rulesInvariant!4810 thiss!23823 rules!3307)))

(assert (=> d!1078595 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!352 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8650 (_1!22434 lt!1280654)) lt!1280700) lt!1280946)))

(declare-fun bs!573251 () Bool)

(assert (= bs!573251 d!1078595))

(assert (=> bs!573251 m!4181245))

(assert (=> bs!573251 m!4181245))

(assert (=> bs!573251 m!4181437))

(declare-fun m!4181947 () Bool)

(assert (=> bs!573251 m!4181947))

(assert (=> bs!573251 m!4181203))

(assert (=> b!3672314 d!1078595))

(assert (=> bm!265875 d!1078377))

(declare-fun d!1078597 () Bool)

(declare-fun e!2274237 () Bool)

(assert (=> d!1078597 e!2274237))

(declare-fun res!1491836 () Bool)

(assert (=> d!1078597 (=> (not res!1491836) (not e!2274237))))

(assert (=> d!1078597 (= res!1491836 (isDefined!6508 (getRuleFromTag!1428 thiss!23823 rules!3307 (tag!6616 (rule!8650 (_1!22434 lt!1280654))))))))

(declare-fun lt!1280955 () Unit!56380)

(declare-fun choose!21871 (LexerInterface!5413 List!38857 List!38856 Token!11014) Unit!56380)

(assert (=> d!1078597 (= lt!1280955 (choose!21871 thiss!23823 rules!3307 lt!1280690 (_1!22434 lt!1280654)))))

(assert (=> d!1078597 (rulesInvariant!4810 thiss!23823 rules!3307)))

(assert (=> d!1078597 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1428 thiss!23823 rules!3307 lt!1280690 (_1!22434 lt!1280654)) lt!1280955)))

(declare-fun b!3672887 () Bool)

(declare-fun res!1491837 () Bool)

(assert (=> b!3672887 (=> (not res!1491837) (not e!2274237))))

(assert (=> b!3672887 (= res!1491837 (matchR!5152 (regex!5824 (get!12799 (getRuleFromTag!1428 thiss!23823 rules!3307 (tag!6616 (rule!8650 (_1!22434 lt!1280654)))))) (list!14386 (charsOf!3838 (_1!22434 lt!1280654)))))))

(declare-fun b!3672888 () Bool)

(assert (=> b!3672888 (= e!2274237 (= (rule!8650 (_1!22434 lt!1280654)) (get!12799 (getRuleFromTag!1428 thiss!23823 rules!3307 (tag!6616 (rule!8650 (_1!22434 lt!1280654)))))))))

(assert (= (and d!1078597 res!1491836) b!3672887))

(assert (= (and b!3672887 res!1491837) b!3672888))

(assert (=> d!1078597 m!4181177))

(assert (=> d!1078597 m!4181177))

(declare-fun m!4181963 () Bool)

(assert (=> d!1078597 m!4181963))

(declare-fun m!4181965 () Bool)

(assert (=> d!1078597 m!4181965))

(assert (=> d!1078597 m!4181203))

(assert (=> b!3672887 m!4181177))

(assert (=> b!3672887 m!4181187))

(assert (=> b!3672887 m!4181233))

(declare-fun m!4181967 () Bool)

(assert (=> b!3672887 m!4181967))

(assert (=> b!3672887 m!4181177))

(declare-fun m!4181969 () Bool)

(assert (=> b!3672887 m!4181969))

(assert (=> b!3672887 m!4181187))

(assert (=> b!3672887 m!4181233))

(assert (=> b!3672888 m!4181177))

(assert (=> b!3672888 m!4181177))

(assert (=> b!3672888 m!4181969))

(assert (=> b!3672275 d!1078597))

(declare-fun d!1078605 () Bool)

(declare-fun isEmpty!22995 (Option!8276) Bool)

(assert (=> d!1078605 (= (isDefined!6508 lt!1280694) (not (isEmpty!22995 lt!1280694)))))

(declare-fun bs!573254 () Bool)

(assert (= bs!573254 d!1078605))

(declare-fun m!4181971 () Bool)

(assert (=> bs!573254 m!4181971))

(assert (=> b!3672275 d!1078605))

(declare-fun d!1078607 () Bool)

(assert (=> d!1078607 (= (get!12798 lt!1280673) (v!38192 lt!1280673))))

(assert (=> b!3672275 d!1078607))

(declare-fun d!1078609 () Bool)

(assert (=> d!1078609 (= (list!14386 lt!1280687) (list!14389 (c!634973 lt!1280687)))))

(declare-fun bs!573255 () Bool)

(assert (= bs!573255 d!1078609))

(declare-fun m!4181973 () Bool)

(assert (=> bs!573255 m!4181973))

(assert (=> b!3672275 d!1078609))

(declare-fun b!3672897 () Bool)

(declare-fun e!2274244 () Bool)

(declare-fun e!2274245 () Bool)

(assert (=> b!3672897 (= e!2274244 e!2274245)))

(declare-fun res!1491847 () Bool)

(assert (=> b!3672897 (=> (not res!1491847) (not e!2274245))))

(assert (=> b!3672897 (= res!1491847 (not ((_ is Nil!38732) lt!1280690)))))

(declare-fun b!3672898 () Bool)

(declare-fun res!1491848 () Bool)

(assert (=> b!3672898 (=> (not res!1491848) (not e!2274245))))

(assert (=> b!3672898 (= res!1491848 (= (head!7866 lt!1280697) (head!7866 lt!1280690)))))

(declare-fun d!1078611 () Bool)

(declare-fun e!2274246 () Bool)

(assert (=> d!1078611 e!2274246))

(declare-fun res!1491849 () Bool)

(assert (=> d!1078611 (=> res!1491849 e!2274246)))

(declare-fun lt!1280958 () Bool)

(assert (=> d!1078611 (= res!1491849 (not lt!1280958))))

(assert (=> d!1078611 (= lt!1280958 e!2274244)))

(declare-fun res!1491846 () Bool)

(assert (=> d!1078611 (=> res!1491846 e!2274244)))

(assert (=> d!1078611 (= res!1491846 ((_ is Nil!38732) lt!1280697))))

(assert (=> d!1078611 (= (isPrefix!3187 lt!1280697 lt!1280690) lt!1280958)))

(declare-fun b!3672900 () Bool)

(assert (=> b!3672900 (= e!2274246 (>= (size!29606 lt!1280690) (size!29606 lt!1280697)))))

(declare-fun b!3672899 () Bool)

(assert (=> b!3672899 (= e!2274245 (isPrefix!3187 (tail!5682 lt!1280697) (tail!5682 lt!1280690)))))

(assert (= (and d!1078611 (not res!1491846)) b!3672897))

(assert (= (and b!3672897 res!1491847) b!3672898))

(assert (= (and b!3672898 res!1491848) b!3672899))

(assert (= (and d!1078611 (not res!1491849)) b!3672900))

(assert (=> b!3672898 m!4181719))

(declare-fun m!4181975 () Bool)

(assert (=> b!3672898 m!4181975))

(assert (=> b!3672900 m!4181791))

(assert (=> b!3672900 m!4181731))

(assert (=> b!3672899 m!4181723))

(assert (=> b!3672899 m!4181793))

(assert (=> b!3672899 m!4181723))

(assert (=> b!3672899 m!4181793))

(declare-fun m!4181977 () Bool)

(assert (=> b!3672899 m!4181977))

(assert (=> b!3672275 d!1078611))

(declare-fun b!3672901 () Bool)

(declare-fun res!1491854 () Bool)

(declare-fun e!2274248 () Bool)

(assert (=> b!3672901 (=> (not res!1491854) (not e!2274248))))

(declare-fun lt!1280959 () Option!8277)

(assert (=> b!3672901 (= res!1491854 (= (list!14386 (charsOf!3838 (_1!22434 (get!12798 lt!1280959)))) (originalCharacters!6538 (_1!22434 (get!12798 lt!1280959)))))))

(declare-fun b!3672902 () Bool)

(declare-fun e!2274247 () Option!8277)

(declare-fun call!265937 () Option!8277)

(assert (=> b!3672902 (= e!2274247 call!265937)))

(declare-fun d!1078613 () Bool)

(declare-fun e!2274249 () Bool)

(assert (=> d!1078613 e!2274249))

(declare-fun res!1491855 () Bool)

(assert (=> d!1078613 (=> res!1491855 e!2274249)))

(assert (=> d!1078613 (= res!1491855 (isEmpty!22994 lt!1280959))))

(assert (=> d!1078613 (= lt!1280959 e!2274247)))

(declare-fun c!635100 () Bool)

(assert (=> d!1078613 (= c!635100 (and ((_ is Cons!38733) rules!3307) ((_ is Nil!38733) (t!299812 rules!3307))))))

(declare-fun lt!1280962 () Unit!56380)

(declare-fun lt!1280961 () Unit!56380)

(assert (=> d!1078613 (= lt!1280962 lt!1280961)))

(assert (=> d!1078613 (isPrefix!3187 lt!1280690 lt!1280690)))

(assert (=> d!1078613 (= lt!1280961 (lemmaIsPrefixRefl!2008 lt!1280690 lt!1280690))))

(assert (=> d!1078613 (rulesValidInductive!2071 thiss!23823 rules!3307)))

(assert (=> d!1078613 (= (maxPrefix!2947 thiss!23823 rules!3307 lt!1280690) lt!1280959)))

(declare-fun b!3672903 () Bool)

(declare-fun res!1491856 () Bool)

(assert (=> b!3672903 (=> (not res!1491856) (not e!2274248))))

(assert (=> b!3672903 (= res!1491856 (< (size!29606 (_2!22434 (get!12798 lt!1280959))) (size!29606 lt!1280690)))))

(declare-fun bm!265932 () Bool)

(assert (=> bm!265932 (= call!265937 (maxPrefixOneRule!2085 thiss!23823 (h!44153 rules!3307) lt!1280690))))

(declare-fun b!3672904 () Bool)

(assert (=> b!3672904 (= e!2274248 (contains!7716 rules!3307 (rule!8650 (_1!22434 (get!12798 lt!1280959)))))))

(declare-fun b!3672905 () Bool)

(declare-fun lt!1280960 () Option!8277)

(declare-fun lt!1280963 () Option!8277)

(assert (=> b!3672905 (= e!2274247 (ite (and ((_ is None!8276) lt!1280960) ((_ is None!8276) lt!1280963)) None!8276 (ite ((_ is None!8276) lt!1280963) lt!1280960 (ite ((_ is None!8276) lt!1280960) lt!1280963 (ite (>= (size!29605 (_1!22434 (v!38192 lt!1280960))) (size!29605 (_1!22434 (v!38192 lt!1280963)))) lt!1280960 lt!1280963)))))))

(assert (=> b!3672905 (= lt!1280960 call!265937)))

(assert (=> b!3672905 (= lt!1280963 (maxPrefix!2947 thiss!23823 (t!299812 rules!3307) lt!1280690))))

(declare-fun b!3672906 () Bool)

(declare-fun res!1491852 () Bool)

(assert (=> b!3672906 (=> (not res!1491852) (not e!2274248))))

(assert (=> b!3672906 (= res!1491852 (= (value!186444 (_1!22434 (get!12798 lt!1280959))) (apply!9326 (transformation!5824 (rule!8650 (_1!22434 (get!12798 lt!1280959)))) (seqFromList!4373 (originalCharacters!6538 (_1!22434 (get!12798 lt!1280959)))))))))

(declare-fun b!3672907 () Bool)

(declare-fun res!1491851 () Bool)

(assert (=> b!3672907 (=> (not res!1491851) (not e!2274248))))

(assert (=> b!3672907 (= res!1491851 (matchR!5152 (regex!5824 (rule!8650 (_1!22434 (get!12798 lt!1280959)))) (list!14386 (charsOf!3838 (_1!22434 (get!12798 lt!1280959))))))))

(declare-fun b!3672908 () Bool)

(declare-fun res!1491850 () Bool)

(assert (=> b!3672908 (=> (not res!1491850) (not e!2274248))))

(assert (=> b!3672908 (= res!1491850 (= (++!9640 (list!14386 (charsOf!3838 (_1!22434 (get!12798 lt!1280959)))) (_2!22434 (get!12798 lt!1280959))) lt!1280690))))

(declare-fun b!3672909 () Bool)

(assert (=> b!3672909 (= e!2274249 e!2274248)))

(declare-fun res!1491853 () Bool)

(assert (=> b!3672909 (=> (not res!1491853) (not e!2274248))))

(assert (=> b!3672909 (= res!1491853 (isDefined!6509 lt!1280959))))

(assert (= (and d!1078613 c!635100) b!3672902))

(assert (= (and d!1078613 (not c!635100)) b!3672905))

(assert (= (or b!3672902 b!3672905) bm!265932))

(assert (= (and d!1078613 (not res!1491855)) b!3672909))

(assert (= (and b!3672909 res!1491853) b!3672901))

(assert (= (and b!3672901 res!1491854) b!3672903))

(assert (= (and b!3672903 res!1491856) b!3672908))

(assert (= (and b!3672908 res!1491850) b!3672906))

(assert (= (and b!3672906 res!1491852) b!3672907))

(assert (= (and b!3672907 res!1491851) b!3672904))

(declare-fun m!4181979 () Bool)

(assert (=> b!3672909 m!4181979))

(declare-fun m!4181981 () Bool)

(assert (=> b!3672907 m!4181981))

(declare-fun m!4181983 () Bool)

(assert (=> b!3672907 m!4181983))

(assert (=> b!3672907 m!4181983))

(declare-fun m!4181985 () Bool)

(assert (=> b!3672907 m!4181985))

(assert (=> b!3672907 m!4181985))

(declare-fun m!4181987 () Bool)

(assert (=> b!3672907 m!4181987))

(assert (=> b!3672908 m!4181981))

(assert (=> b!3672908 m!4181983))

(assert (=> b!3672908 m!4181983))

(assert (=> b!3672908 m!4181985))

(assert (=> b!3672908 m!4181985))

(declare-fun m!4181989 () Bool)

(assert (=> b!3672908 m!4181989))

(declare-fun m!4181991 () Bool)

(assert (=> bm!265932 m!4181991))

(assert (=> b!3672906 m!4181981))

(declare-fun m!4181993 () Bool)

(assert (=> b!3672906 m!4181993))

(assert (=> b!3672906 m!4181993))

(declare-fun m!4181995 () Bool)

(assert (=> b!3672906 m!4181995))

(declare-fun m!4181997 () Bool)

(assert (=> d!1078613 m!4181997))

(declare-fun m!4181999 () Bool)

(assert (=> d!1078613 m!4181999))

(declare-fun m!4182001 () Bool)

(assert (=> d!1078613 m!4182001))

(assert (=> d!1078613 m!4181883))

(assert (=> b!3672904 m!4181981))

(declare-fun m!4182003 () Bool)

(assert (=> b!3672904 m!4182003))

(assert (=> b!3672903 m!4181981))

(declare-fun m!4182005 () Bool)

(assert (=> b!3672903 m!4182005))

(assert (=> b!3672903 m!4181791))

(declare-fun m!4182007 () Bool)

(assert (=> b!3672905 m!4182007))

(assert (=> b!3672901 m!4181981))

(assert (=> b!3672901 m!4181983))

(assert (=> b!3672901 m!4181983))

(assert (=> b!3672901 m!4181985))

(assert (=> b!3672275 d!1078613))

(declare-fun d!1078615 () Bool)

(assert (=> d!1078615 (isDefined!6509 (maxPrefix!2947 thiss!23823 rules!3307 (++!9640 lt!1280697 suffix!1395)))))

(declare-fun lt!1281054 () Unit!56380)

(declare-fun e!2274339 () Unit!56380)

(assert (=> d!1078615 (= lt!1281054 e!2274339)))

(declare-fun c!635129 () Bool)

(assert (=> d!1078615 (= c!635129 (isEmpty!22994 (maxPrefix!2947 thiss!23823 rules!3307 (++!9640 lt!1280697 suffix!1395))))))

(declare-fun lt!1281055 () Unit!56380)

(declare-fun lt!1281060 () Unit!56380)

(assert (=> d!1078615 (= lt!1281055 lt!1281060)))

(declare-fun e!2274340 () Bool)

(assert (=> d!1078615 e!2274340))

(declare-fun res!1491923 () Bool)

(assert (=> d!1078615 (=> (not res!1491923) (not e!2274340))))

(declare-fun lt!1281064 () Token!11014)

(assert (=> d!1078615 (= res!1491923 (isDefined!6508 (getRuleFromTag!1428 thiss!23823 rules!3307 (tag!6616 (rule!8650 lt!1281064)))))))

(assert (=> d!1078615 (= lt!1281060 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1428 thiss!23823 rules!3307 lt!1280697 lt!1281064))))

(declare-fun lt!1281061 () Unit!56380)

(declare-fun lt!1281051 () Unit!56380)

(assert (=> d!1078615 (= lt!1281061 lt!1281051)))

(declare-fun lt!1281059 () List!38856)

(assert (=> d!1078615 (isPrefix!3187 lt!1281059 (++!9640 lt!1280697 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!536 (List!38856 List!38856 List!38856) Unit!56380)

(assert (=> d!1078615 (= lt!1281051 (lemmaPrefixStaysPrefixWhenAddingToSuffix!536 lt!1281059 lt!1280697 suffix!1395))))

(assert (=> d!1078615 (= lt!1281059 (list!14386 (charsOf!3838 lt!1281064)))))

(declare-fun lt!1281052 () Unit!56380)

(declare-fun lt!1281062 () Unit!56380)

(assert (=> d!1078615 (= lt!1281052 lt!1281062)))

(declare-fun lt!1281065 () List!38856)

(declare-fun lt!1281063 () List!38856)

(assert (=> d!1078615 (isPrefix!3187 lt!1281065 (++!9640 lt!1281065 lt!1281063))))

(assert (=> d!1078615 (= lt!1281062 (lemmaConcatTwoListThenFirstIsPrefix!2106 lt!1281065 lt!1281063))))

(assert (=> d!1078615 (= lt!1281063 (_2!22434 (get!12798 (maxPrefix!2947 thiss!23823 rules!3307 lt!1280697))))))

(assert (=> d!1078615 (= lt!1281065 (list!14386 (charsOf!3838 lt!1281064)))))

(declare-datatypes ((List!38860 0))(
  ( (Nil!38736) (Cons!38736 (h!44156 Token!11014) (t!299935 List!38860)) )
))
(declare-fun head!7868 (List!38860) Token!11014)

(declare-datatypes ((IArray!23711 0))(
  ( (IArray!23712 (innerList!11913 List!38860)) )
))
(declare-datatypes ((Conc!11853 0))(
  ( (Node!11853 (left!30231 Conc!11853) (right!30561 Conc!11853) (csize!23936 Int) (cheight!12064 Int)) (Leaf!18376 (xs!15055 IArray!23711) (csize!23937 Int)) (Empty!11853) )
))
(declare-datatypes ((BalanceConc!23320 0))(
  ( (BalanceConc!23321 (c!635141 Conc!11853)) )
))
(declare-fun list!14390 (BalanceConc!23320) List!38860)

(declare-datatypes ((tuple2!38608 0))(
  ( (tuple2!38609 (_1!22438 BalanceConc!23320) (_2!22438 BalanceConc!23316)) )
))
(declare-fun lex!2568 (LexerInterface!5413 List!38857 BalanceConc!23316) tuple2!38608)

(assert (=> d!1078615 (= lt!1281064 (head!7868 (list!14390 (_1!22438 (lex!2568 thiss!23823 rules!3307 (seqFromList!4373 lt!1280697))))))))

(assert (=> d!1078615 (not (isEmpty!22991 rules!3307))))

(assert (=> d!1078615 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1091 thiss!23823 rules!3307 lt!1280697 suffix!1395) lt!1281054)))

(declare-fun b!3673072 () Bool)

(declare-fun res!1491922 () Bool)

(assert (=> b!3673072 (=> (not res!1491922) (not e!2274340))))

(assert (=> b!3673072 (= res!1491922 (matchR!5152 (regex!5824 (get!12799 (getRuleFromTag!1428 thiss!23823 rules!3307 (tag!6616 (rule!8650 lt!1281064))))) (list!14386 (charsOf!3838 lt!1281064))))))

(declare-fun b!3673074 () Bool)

(declare-fun Unit!56402 () Unit!56380)

(assert (=> b!3673074 (= e!2274339 Unit!56402)))

(declare-fun lt!1281066 () List!38856)

(assert (=> b!3673074 (= lt!1281066 (++!9640 lt!1280697 suffix!1395))))

(declare-fun lt!1281053 () Unit!56380)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!572 (LexerInterface!5413 Rule!11448 List!38857 List!38856) Unit!56380)

(assert (=> b!3673074 (= lt!1281053 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!572 thiss!23823 (rule!8650 lt!1281064) rules!3307 lt!1281066))))

(assert (=> b!3673074 (isEmpty!22994 (maxPrefixOneRule!2085 thiss!23823 (rule!8650 lt!1281064) lt!1281066))))

(declare-fun lt!1281056 () Unit!56380)

(assert (=> b!3673074 (= lt!1281056 lt!1281053)))

(declare-fun lt!1281057 () List!38856)

(assert (=> b!3673074 (= lt!1281057 (list!14386 (charsOf!3838 lt!1281064)))))

(declare-fun lt!1281058 () Unit!56380)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!560 (LexerInterface!5413 Rule!11448 List!38856 List!38856) Unit!56380)

(assert (=> b!3673074 (= lt!1281058 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!560 thiss!23823 (rule!8650 lt!1281064) lt!1281057 (++!9640 lt!1280697 suffix!1395)))))

(assert (=> b!3673074 (not (matchR!5152 (regex!5824 (rule!8650 lt!1281064)) lt!1281057))))

(declare-fun lt!1281067 () Unit!56380)

(assert (=> b!3673074 (= lt!1281067 lt!1281058)))

(assert (=> b!3673074 false))

(declare-fun b!3673073 () Bool)

(assert (=> b!3673073 (= e!2274340 (= (rule!8650 lt!1281064) (get!12799 (getRuleFromTag!1428 thiss!23823 rules!3307 (tag!6616 (rule!8650 lt!1281064))))))))

(declare-fun b!3673075 () Bool)

(declare-fun Unit!56403 () Unit!56380)

(assert (=> b!3673075 (= e!2274339 Unit!56403)))

(assert (= (and d!1078615 res!1491923) b!3673072))

(assert (= (and b!3673072 res!1491922) b!3673073))

(assert (= (and d!1078615 c!635129) b!3673074))

(assert (= (and d!1078615 (not c!635129)) b!3673075))

(assert (=> d!1078615 m!4181159))

(declare-fun m!4182181 () Bool)

(assert (=> d!1078615 m!4182181))

(assert (=> d!1078615 m!4181159))

(declare-fun m!4182183 () Bool)

(assert (=> d!1078615 m!4182183))

(assert (=> d!1078615 m!4181197))

(declare-fun m!4182185 () Bool)

(assert (=> d!1078615 m!4182185))

(assert (=> d!1078615 m!4181197))

(assert (=> d!1078615 m!4181119))

(assert (=> d!1078615 m!4181159))

(declare-fun m!4182187 () Bool)

(assert (=> d!1078615 m!4182187))

(declare-fun m!4182189 () Bool)

(assert (=> d!1078615 m!4182189))

(declare-fun m!4182191 () Bool)

(assert (=> d!1078615 m!4182191))

(declare-fun m!4182193 () Bool)

(assert (=> d!1078615 m!4182193))

(declare-fun m!4182195 () Bool)

(assert (=> d!1078615 m!4182195))

(assert (=> d!1078615 m!4182183))

(declare-fun m!4182197 () Bool)

(assert (=> d!1078615 m!4182197))

(declare-fun m!4182199 () Bool)

(assert (=> d!1078615 m!4182199))

(declare-fun m!4182201 () Bool)

(assert (=> d!1078615 m!4182201))

(assert (=> d!1078615 m!4182187))

(assert (=> d!1078615 m!4182195))

(declare-fun m!4182203 () Bool)

(assert (=> d!1078615 m!4182203))

(assert (=> d!1078615 m!4182199))

(declare-fun m!4182205 () Bool)

(assert (=> d!1078615 m!4182205))

(declare-fun m!4182207 () Bool)

(assert (=> d!1078615 m!4182207))

(assert (=> d!1078615 m!4182183))

(declare-fun m!4182209 () Bool)

(assert (=> d!1078615 m!4182209))

(assert (=> d!1078615 m!4182191))

(declare-fun m!4182211 () Bool)

(assert (=> d!1078615 m!4182211))

(assert (=> d!1078615 m!4182201))

(declare-fun m!4182213 () Bool)

(assert (=> d!1078615 m!4182213))

(declare-fun m!4182215 () Bool)

(assert (=> d!1078615 m!4182215))

(assert (=> b!3673072 m!4182195))

(declare-fun m!4182217 () Bool)

(assert (=> b!3673072 m!4182217))

(assert (=> b!3673072 m!4182195))

(assert (=> b!3673072 m!4182199))

(assert (=> b!3673072 m!4182199))

(assert (=> b!3673072 m!4182205))

(assert (=> b!3673072 m!4182205))

(declare-fun m!4182219 () Bool)

(assert (=> b!3673072 m!4182219))

(assert (=> b!3673074 m!4181159))

(declare-fun m!4182221 () Bool)

(assert (=> b!3673074 m!4182221))

(declare-fun m!4182223 () Bool)

(assert (=> b!3673074 m!4182223))

(assert (=> b!3673074 m!4182221))

(declare-fun m!4182225 () Bool)

(assert (=> b!3673074 m!4182225))

(assert (=> b!3673074 m!4182199))

(assert (=> b!3673074 m!4182199))

(assert (=> b!3673074 m!4182205))

(assert (=> b!3673074 m!4181159))

(declare-fun m!4182227 () Bool)

(assert (=> b!3673074 m!4182227))

(declare-fun m!4182229 () Bool)

(assert (=> b!3673074 m!4182229))

(assert (=> b!3673073 m!4182195))

(assert (=> b!3673073 m!4182195))

(assert (=> b!3673073 m!4182217))

(assert (=> b!3672275 d!1078615))

(declare-fun b!3673087 () Bool)

(declare-fun lt!1281070 () List!38856)

(declare-fun e!2274346 () Bool)

(assert (=> b!3673087 (= e!2274346 (or (not (= suffix!1395 Nil!38732)) (= lt!1281070 lt!1280697)))))

(declare-fun b!3673085 () Bool)

(declare-fun e!2274345 () List!38856)

(assert (=> b!3673085 (= e!2274345 (Cons!38732 (h!44152 lt!1280697) (++!9640 (t!299811 lt!1280697) suffix!1395)))))

(declare-fun d!1078687 () Bool)

(assert (=> d!1078687 e!2274346))

(declare-fun res!1491928 () Bool)

(assert (=> d!1078687 (=> (not res!1491928) (not e!2274346))))

(assert (=> d!1078687 (= res!1491928 (= (content!5609 lt!1281070) ((_ map or) (content!5609 lt!1280697) (content!5609 suffix!1395))))))

(assert (=> d!1078687 (= lt!1281070 e!2274345)))

(declare-fun c!635132 () Bool)

(assert (=> d!1078687 (= c!635132 ((_ is Nil!38732) lt!1280697))))

(assert (=> d!1078687 (= (++!9640 lt!1280697 suffix!1395) lt!1281070)))

(declare-fun b!3673084 () Bool)

(assert (=> b!3673084 (= e!2274345 suffix!1395)))

(declare-fun b!3673086 () Bool)

(declare-fun res!1491929 () Bool)

(assert (=> b!3673086 (=> (not res!1491929) (not e!2274346))))

(assert (=> b!3673086 (= res!1491929 (= (size!29606 lt!1281070) (+ (size!29606 lt!1280697) (size!29606 suffix!1395))))))

(assert (= (and d!1078687 c!635132) b!3673084))

(assert (= (and d!1078687 (not c!635132)) b!3673085))

(assert (= (and d!1078687 res!1491928) b!3673086))

(assert (= (and b!3673086 res!1491929) b!3673087))

(declare-fun m!4182231 () Bool)

(assert (=> b!3673085 m!4182231))

(declare-fun m!4182233 () Bool)

(assert (=> d!1078687 m!4182233))

(declare-fun m!4182235 () Bool)

(assert (=> d!1078687 m!4182235))

(declare-fun m!4182237 () Bool)

(assert (=> d!1078687 m!4182237))

(declare-fun m!4182239 () Bool)

(assert (=> b!3673086 m!4182239))

(assert (=> b!3673086 m!4181731))

(declare-fun m!4182241 () Bool)

(assert (=> b!3673086 m!4182241))

(assert (=> b!3672275 d!1078687))

(declare-fun lt!1281071 () List!38856)

(declare-fun b!3673091 () Bool)

(declare-fun e!2274348 () Bool)

(assert (=> b!3673091 (= e!2274348 (or (not (= (_2!22434 lt!1280654) Nil!38732)) (= lt!1281071 lt!1280693)))))

(declare-fun b!3673089 () Bool)

(declare-fun e!2274347 () List!38856)

(assert (=> b!3673089 (= e!2274347 (Cons!38732 (h!44152 lt!1280693) (++!9640 (t!299811 lt!1280693) (_2!22434 lt!1280654))))))

(declare-fun d!1078689 () Bool)

(assert (=> d!1078689 e!2274348))

(declare-fun res!1491930 () Bool)

(assert (=> d!1078689 (=> (not res!1491930) (not e!2274348))))

(assert (=> d!1078689 (= res!1491930 (= (content!5609 lt!1281071) ((_ map or) (content!5609 lt!1280693) (content!5609 (_2!22434 lt!1280654)))))))

(assert (=> d!1078689 (= lt!1281071 e!2274347)))

(declare-fun c!635133 () Bool)

(assert (=> d!1078689 (= c!635133 ((_ is Nil!38732) lt!1280693))))

(assert (=> d!1078689 (= (++!9640 lt!1280693 (_2!22434 lt!1280654)) lt!1281071)))

(declare-fun b!3673088 () Bool)

(assert (=> b!3673088 (= e!2274347 (_2!22434 lt!1280654))))

(declare-fun b!3673090 () Bool)

(declare-fun res!1491931 () Bool)

(assert (=> b!3673090 (=> (not res!1491931) (not e!2274348))))

(assert (=> b!3673090 (= res!1491931 (= (size!29606 lt!1281071) (+ (size!29606 lt!1280693) (size!29606 (_2!22434 lt!1280654)))))))

(assert (= (and d!1078689 c!635133) b!3673088))

(assert (= (and d!1078689 (not c!635133)) b!3673089))

(assert (= (and d!1078689 res!1491930) b!3673090))

(assert (= (and b!3673090 res!1491931) b!3673091))

(declare-fun m!4182243 () Bool)

(assert (=> b!3673089 m!4182243))

(declare-fun m!4182245 () Bool)

(assert (=> d!1078689 m!4182245))

(assert (=> d!1078689 m!4181745))

(declare-fun m!4182247 () Bool)

(assert (=> d!1078689 m!4182247))

(declare-fun m!4182249 () Bool)

(assert (=> b!3673090 m!4182249))

(assert (=> b!3673090 m!4181133))

(declare-fun m!4182251 () Bool)

(assert (=> b!3673090 m!4182251))

(assert (=> b!3672275 d!1078689))

(declare-fun b!3673092 () Bool)

(declare-fun e!2274349 () Bool)

(declare-fun e!2274350 () Bool)

(assert (=> b!3673092 (= e!2274349 e!2274350)))

(declare-fun res!1491933 () Bool)

(assert (=> b!3673092 (=> (not res!1491933) (not e!2274350))))

(assert (=> b!3673092 (= res!1491933 (not ((_ is Nil!38732) lt!1280690)))))

(declare-fun b!3673093 () Bool)

(declare-fun res!1491934 () Bool)

(assert (=> b!3673093 (=> (not res!1491934) (not e!2274350))))

(assert (=> b!3673093 (= res!1491934 (= (head!7866 lt!1280693) (head!7866 lt!1280690)))))

(declare-fun d!1078691 () Bool)

(declare-fun e!2274351 () Bool)

(assert (=> d!1078691 e!2274351))

(declare-fun res!1491935 () Bool)

(assert (=> d!1078691 (=> res!1491935 e!2274351)))

(declare-fun lt!1281072 () Bool)

(assert (=> d!1078691 (= res!1491935 (not lt!1281072))))

(assert (=> d!1078691 (= lt!1281072 e!2274349)))

(declare-fun res!1491932 () Bool)

(assert (=> d!1078691 (=> res!1491932 e!2274349)))

(assert (=> d!1078691 (= res!1491932 ((_ is Nil!38732) lt!1280693))))

(assert (=> d!1078691 (= (isPrefix!3187 lt!1280693 lt!1280690) lt!1281072)))

(declare-fun b!3673095 () Bool)

(assert (=> b!3673095 (= e!2274351 (>= (size!29606 lt!1280690) (size!29606 lt!1280693)))))

(declare-fun b!3673094 () Bool)

(assert (=> b!3673094 (= e!2274350 (isPrefix!3187 (tail!5682 lt!1280693) (tail!5682 lt!1280690)))))

(assert (= (and d!1078691 (not res!1491932)) b!3673092))

(assert (= (and b!3673092 res!1491933) b!3673093))

(assert (= (and b!3673093 res!1491934) b!3673094))

(assert (= (and d!1078691 (not res!1491935)) b!3673095))

(assert (=> b!3673093 m!4181227))

(assert (=> b!3673093 m!4181975))

(assert (=> b!3673095 m!4181791))

(assert (=> b!3673095 m!4181133))

(assert (=> b!3673094 m!4181473))

(assert (=> b!3673094 m!4181793))

(assert (=> b!3673094 m!4181473))

(assert (=> b!3673094 m!4181793))

(declare-fun m!4182253 () Bool)

(assert (=> b!3673094 m!4182253))

(assert (=> b!3672275 d!1078691))

(declare-fun d!1078693 () Bool)

(assert (=> d!1078693 (isPrefix!3187 lt!1280697 (++!9640 lt!1280697 suffix!1395))))

(declare-fun lt!1281075 () Unit!56380)

(declare-fun choose!21873 (List!38856 List!38856) Unit!56380)

(assert (=> d!1078693 (= lt!1281075 (choose!21873 lt!1280697 suffix!1395))))

(assert (=> d!1078693 (= (lemmaConcatTwoListThenFirstIsPrefix!2106 lt!1280697 suffix!1395) lt!1281075)))

(declare-fun bs!573268 () Bool)

(assert (= bs!573268 d!1078693))

(assert (=> bs!573268 m!4181159))

(assert (=> bs!573268 m!4181159))

(declare-fun m!4182255 () Bool)

(assert (=> bs!573268 m!4182255))

(declare-fun m!4182257 () Bool)

(assert (=> bs!573268 m!4182257))

(assert (=> b!3672275 d!1078693))

(declare-fun b!3673096 () Bool)

(declare-fun e!2274352 () Bool)

(declare-fun e!2274353 () Bool)

(assert (=> b!3673096 (= e!2274352 e!2274353)))

(declare-fun res!1491937 () Bool)

(assert (=> b!3673096 (=> (not res!1491937) (not e!2274353))))

(assert (=> b!3673096 (= res!1491937 (not ((_ is Nil!38732) (++!9640 lt!1280693 (_2!22434 lt!1280654)))))))

(declare-fun b!3673097 () Bool)

(declare-fun res!1491938 () Bool)

(assert (=> b!3673097 (=> (not res!1491938) (not e!2274353))))

(assert (=> b!3673097 (= res!1491938 (= (head!7866 lt!1280693) (head!7866 (++!9640 lt!1280693 (_2!22434 lt!1280654)))))))

(declare-fun d!1078695 () Bool)

(declare-fun e!2274354 () Bool)

(assert (=> d!1078695 e!2274354))

(declare-fun res!1491939 () Bool)

(assert (=> d!1078695 (=> res!1491939 e!2274354)))

(declare-fun lt!1281076 () Bool)

(assert (=> d!1078695 (= res!1491939 (not lt!1281076))))

(assert (=> d!1078695 (= lt!1281076 e!2274352)))

(declare-fun res!1491936 () Bool)

(assert (=> d!1078695 (=> res!1491936 e!2274352)))

(assert (=> d!1078695 (= res!1491936 ((_ is Nil!38732) lt!1280693))))

(assert (=> d!1078695 (= (isPrefix!3187 lt!1280693 (++!9640 lt!1280693 (_2!22434 lt!1280654))) lt!1281076)))

(declare-fun b!3673099 () Bool)

(assert (=> b!3673099 (= e!2274354 (>= (size!29606 (++!9640 lt!1280693 (_2!22434 lt!1280654))) (size!29606 lt!1280693)))))

(declare-fun b!3673098 () Bool)

(assert (=> b!3673098 (= e!2274353 (isPrefix!3187 (tail!5682 lt!1280693) (tail!5682 (++!9640 lt!1280693 (_2!22434 lt!1280654)))))))

(assert (= (and d!1078695 (not res!1491936)) b!3673096))

(assert (= (and b!3673096 res!1491937) b!3673097))

(assert (= (and b!3673097 res!1491938) b!3673098))

(assert (= (and d!1078695 (not res!1491939)) b!3673099))

(assert (=> b!3673097 m!4181227))

(assert (=> b!3673097 m!4181169))

(declare-fun m!4182259 () Bool)

(assert (=> b!3673097 m!4182259))

(assert (=> b!3673099 m!4181169))

(declare-fun m!4182261 () Bool)

(assert (=> b!3673099 m!4182261))

(assert (=> b!3673099 m!4181133))

(assert (=> b!3673098 m!4181473))

(assert (=> b!3673098 m!4181169))

(declare-fun m!4182263 () Bool)

(assert (=> b!3673098 m!4182263))

(assert (=> b!3673098 m!4181473))

(assert (=> b!3673098 m!4182263))

(declare-fun m!4182265 () Bool)

(assert (=> b!3673098 m!4182265))

(assert (=> b!3672275 d!1078695))

(declare-fun d!1078697 () Bool)

(assert (=> d!1078697 (isPrefix!3187 lt!1280693 (++!9640 lt!1280693 (_2!22434 lt!1280654)))))

(declare-fun lt!1281077 () Unit!56380)

(assert (=> d!1078697 (= lt!1281077 (choose!21873 lt!1280693 (_2!22434 lt!1280654)))))

(assert (=> d!1078697 (= (lemmaConcatTwoListThenFirstIsPrefix!2106 lt!1280693 (_2!22434 lt!1280654)) lt!1281077)))

(declare-fun bs!573269 () Bool)

(assert (= bs!573269 d!1078697))

(assert (=> bs!573269 m!4181169))

(assert (=> bs!573269 m!4181169))

(assert (=> bs!573269 m!4181171))

(declare-fun m!4182267 () Bool)

(assert (=> bs!573269 m!4182267))

(assert (=> b!3672275 d!1078697))

(declare-fun b!3673112 () Bool)

(declare-fun e!2274366 () Bool)

(declare-fun lt!1281085 () Option!8276)

(assert (=> b!3673112 (= e!2274366 (= (tag!6616 (get!12799 lt!1281085)) (tag!6616 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun d!1078699 () Bool)

(declare-fun e!2274365 () Bool)

(assert (=> d!1078699 e!2274365))

(declare-fun res!1491944 () Bool)

(assert (=> d!1078699 (=> res!1491944 e!2274365)))

(assert (=> d!1078699 (= res!1491944 (isEmpty!22995 lt!1281085))))

(declare-fun e!2274363 () Option!8276)

(assert (=> d!1078699 (= lt!1281085 e!2274363)))

(declare-fun c!635138 () Bool)

(assert (=> d!1078699 (= c!635138 (and ((_ is Cons!38733) rules!3307) (= (tag!6616 (h!44153 rules!3307)) (tag!6616 (rule!8650 (_1!22434 lt!1280654))))))))

(assert (=> d!1078699 (rulesInvariant!4810 thiss!23823 rules!3307)))

(assert (=> d!1078699 (= (getRuleFromTag!1428 thiss!23823 rules!3307 (tag!6616 (rule!8650 (_1!22434 lt!1280654)))) lt!1281085)))

(declare-fun b!3673113 () Bool)

(assert (=> b!3673113 (= e!2274363 (Some!8275 (h!44153 rules!3307)))))

(declare-fun b!3673114 () Bool)

(assert (=> b!3673114 (= e!2274365 e!2274366)))

(declare-fun res!1491945 () Bool)

(assert (=> b!3673114 (=> (not res!1491945) (not e!2274366))))

(assert (=> b!3673114 (= res!1491945 (contains!7716 rules!3307 (get!12799 lt!1281085)))))

(declare-fun b!3673115 () Bool)

(declare-fun lt!1281084 () Unit!56380)

(declare-fun lt!1281086 () Unit!56380)

(assert (=> b!3673115 (= lt!1281084 lt!1281086)))

(assert (=> b!3673115 (rulesInvariant!4810 thiss!23823 (t!299812 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!615 (LexerInterface!5413 Rule!11448 List!38857) Unit!56380)

(assert (=> b!3673115 (= lt!1281086 (lemmaInvariantOnRulesThenOnTail!615 thiss!23823 (h!44153 rules!3307) (t!299812 rules!3307)))))

(declare-fun e!2274364 () Option!8276)

(assert (=> b!3673115 (= e!2274364 (getRuleFromTag!1428 thiss!23823 (t!299812 rules!3307) (tag!6616 (rule!8650 (_1!22434 lt!1280654)))))))

(declare-fun b!3673116 () Bool)

(assert (=> b!3673116 (= e!2274363 e!2274364)))

(declare-fun c!635139 () Bool)

(assert (=> b!3673116 (= c!635139 (and ((_ is Cons!38733) rules!3307) (not (= (tag!6616 (h!44153 rules!3307)) (tag!6616 (rule!8650 (_1!22434 lt!1280654)))))))))

(declare-fun b!3673117 () Bool)

(assert (=> b!3673117 (= e!2274364 None!8275)))

(assert (= (and d!1078699 c!635138) b!3673113))

(assert (= (and d!1078699 (not c!635138)) b!3673116))

(assert (= (and b!3673116 c!635139) b!3673115))

(assert (= (and b!3673116 (not c!635139)) b!3673117))

(assert (= (and d!1078699 (not res!1491944)) b!3673114))

(assert (= (and b!3673114 res!1491945) b!3673112))

(declare-fun m!4182269 () Bool)

(assert (=> b!3673112 m!4182269))

(declare-fun m!4182271 () Bool)

(assert (=> d!1078699 m!4182271))

(assert (=> d!1078699 m!4181203))

(assert (=> b!3673114 m!4182269))

(assert (=> b!3673114 m!4182269))

(declare-fun m!4182273 () Bool)

(assert (=> b!3673114 m!4182273))

(declare-fun m!4182275 () Bool)

(assert (=> b!3673115 m!4182275))

(declare-fun m!4182277 () Bool)

(assert (=> b!3673115 m!4182277))

(declare-fun m!4182279 () Bool)

(assert (=> b!3673115 m!4182279))

(assert (=> b!3672275 d!1078699))

(assert (=> b!3672275 d!1078589))

(declare-fun b!3673128 () Bool)

(declare-fun e!2274369 () Bool)

(assert (=> b!3673128 (= e!2274369 tp_is_empty!18249)))

(assert (=> b!3672290 (= tp!1117308 e!2274369)))

(declare-fun b!3673130 () Bool)

(declare-fun tp!1117383 () Bool)

(assert (=> b!3673130 (= e!2274369 tp!1117383)))

(declare-fun b!3673129 () Bool)

(declare-fun tp!1117384 () Bool)

(declare-fun tp!1117387 () Bool)

(assert (=> b!3673129 (= e!2274369 (and tp!1117384 tp!1117387))))

(declare-fun b!3673131 () Bool)

(declare-fun tp!1117385 () Bool)

(declare-fun tp!1117386 () Bool)

(assert (=> b!3673131 (= e!2274369 (and tp!1117385 tp!1117386))))

(assert (= (and b!3672290 ((_ is ElementMatch!10583) (regex!5824 (h!44153 rules!3307)))) b!3673128))

(assert (= (and b!3672290 ((_ is Concat!16638) (regex!5824 (h!44153 rules!3307)))) b!3673129))

(assert (= (and b!3672290 ((_ is Star!10583) (regex!5824 (h!44153 rules!3307)))) b!3673130))

(assert (= (and b!3672290 ((_ is Union!10583) (regex!5824 (h!44153 rules!3307)))) b!3673131))

(declare-fun b!3673142 () Bool)

(declare-fun b_free!97109 () Bool)

(declare-fun b_next!97813 () Bool)

(assert (=> b!3673142 (= b_free!97109 (not b_next!97813))))

(declare-fun tb!212817 () Bool)

(declare-fun t!299922 () Bool)

(assert (=> (and b!3673142 (= (toValue!8120 (transformation!5824 (h!44153 (t!299812 rules!3307)))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299922) tb!212817))

(declare-fun result!258980 () Bool)

(assert (= result!258980 result!258902))

(assert (=> d!1078435 t!299922))

(declare-fun tb!212819 () Bool)

(declare-fun t!299924 () Bool)

(assert (=> (and b!3673142 (= (toValue!8120 (transformation!5824 (h!44153 (t!299812 rules!3307)))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299924) tb!212819))

(declare-fun result!258982 () Bool)

(assert (= result!258982 result!258918))

(assert (=> d!1078559 t!299924))

(declare-fun t!299926 () Bool)

(declare-fun tb!212821 () Bool)

(assert (=> (and b!3673142 (= (toValue!8120 (transformation!5824 (h!44153 (t!299812 rules!3307)))) (toValue!8120 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299926) tb!212821))

(declare-fun result!258984 () Bool)

(assert (= result!258984 result!258874))

(assert (=> d!1078503 t!299926))

(assert (=> d!1078435 t!299926))

(assert (=> d!1078431 t!299926))

(declare-fun tp!1117398 () Bool)

(declare-fun b_and!273799 () Bool)

(assert (=> b!3673142 (= tp!1117398 (and (=> t!299924 result!258982) (=> t!299926 result!258984) (=> t!299922 result!258980) b_and!273799))))

(declare-fun b_free!97111 () Bool)

(declare-fun b_next!97815 () Bool)

(assert (=> b!3673142 (= b_free!97111 (not b_next!97815))))

(declare-fun t!299928 () Bool)

(declare-fun tb!212823 () Bool)

(assert (=> (and b!3673142 (= (toChars!7979 (transformation!5824 (h!44153 (t!299812 rules!3307)))) (toChars!7979 (transformation!5824 (rule!8650 token!511)))) t!299928) tb!212823))

(declare-fun result!258986 () Bool)

(assert (= result!258986 result!258864))

(assert (=> b!3672486 t!299928))

(declare-fun t!299930 () Bool)

(declare-fun tb!212825 () Bool)

(assert (=> (and b!3673142 (= (toChars!7979 (transformation!5824 (h!44153 (t!299812 rules!3307)))) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299930) tb!212825))

(declare-fun result!258988 () Bool)

(assert (= result!258988 result!258910))

(assert (=> d!1078503 t!299930))

(assert (=> d!1078575 t!299928))

(declare-fun t!299932 () Bool)

(declare-fun tb!212827 () Bool)

(assert (=> (and b!3673142 (= (toChars!7979 (transformation!5824 (h!44153 (t!299812 rules!3307)))) (toChars!7979 (transformation!5824 (rule!8650 (_1!22434 lt!1280654))))) t!299932) tb!212827))

(declare-fun result!258990 () Bool)

(assert (= result!258990 result!258942))

(assert (=> d!1078589 t!299932))

(declare-fun tp!1117399 () Bool)

(declare-fun b_and!273801 () Bool)

(assert (=> b!3673142 (= tp!1117399 (and (=> t!299928 result!258986) (=> t!299930 result!258988) (=> t!299932 result!258990) b_and!273801))))

(declare-fun e!2274378 () Bool)

(assert (=> b!3673142 (= e!2274378 (and tp!1117398 tp!1117399))))

(declare-fun e!2274379 () Bool)

(declare-fun tp!1117397 () Bool)

(declare-fun b!3673141 () Bool)

(assert (=> b!3673141 (= e!2274379 (and tp!1117397 (inv!52215 (tag!6616 (h!44153 (t!299812 rules!3307)))) (inv!52219 (transformation!5824 (h!44153 (t!299812 rules!3307)))) e!2274378))))

(declare-fun b!3673140 () Bool)

(declare-fun e!2274381 () Bool)

(declare-fun tp!1117396 () Bool)

(assert (=> b!3673140 (= e!2274381 (and e!2274379 tp!1117396))))

(assert (=> b!3672276 (= tp!1117304 e!2274381)))

(assert (= b!3673141 b!3673142))

(assert (= b!3673140 b!3673141))

(assert (= (and b!3672276 ((_ is Cons!38733) (t!299812 rules!3307))) b!3673140))

(declare-fun m!4182281 () Bool)

(assert (=> b!3673141 m!4182281))

(declare-fun m!4182283 () Bool)

(assert (=> b!3673141 m!4182283))

(declare-fun b!3673143 () Bool)

(declare-fun e!2274382 () Bool)

(assert (=> b!3673143 (= e!2274382 tp_is_empty!18249)))

(assert (=> b!3672301 (= tp!1117314 e!2274382)))

(declare-fun b!3673145 () Bool)

(declare-fun tp!1117400 () Bool)

(assert (=> b!3673145 (= e!2274382 tp!1117400)))

(declare-fun b!3673144 () Bool)

(declare-fun tp!1117401 () Bool)

(declare-fun tp!1117404 () Bool)

(assert (=> b!3673144 (= e!2274382 (and tp!1117401 tp!1117404))))

(declare-fun b!3673146 () Bool)

(declare-fun tp!1117402 () Bool)

(declare-fun tp!1117403 () Bool)

(assert (=> b!3673146 (= e!2274382 (and tp!1117402 tp!1117403))))

(assert (= (and b!3672301 ((_ is ElementMatch!10583) (regex!5824 rule!403))) b!3673143))

(assert (= (and b!3672301 ((_ is Concat!16638) (regex!5824 rule!403))) b!3673144))

(assert (= (and b!3672301 ((_ is Star!10583) (regex!5824 rule!403))) b!3673145))

(assert (= (and b!3672301 ((_ is Union!10583) (regex!5824 rule!403))) b!3673146))

(declare-fun b!3673151 () Bool)

(declare-fun e!2274385 () Bool)

(declare-fun tp!1117407 () Bool)

(assert (=> b!3673151 (= e!2274385 (and tp_is_empty!18249 tp!1117407))))

(assert (=> b!3672317 (= tp!1117313 e!2274385)))

(assert (= (and b!3672317 ((_ is Cons!38732) (t!299811 suffix!1395))) b!3673151))

(declare-fun b!3673152 () Bool)

(declare-fun e!2274386 () Bool)

(declare-fun tp!1117408 () Bool)

(assert (=> b!3673152 (= e!2274386 (and tp_is_empty!18249 tp!1117408))))

(assert (=> b!3672286 (= tp!1117306 e!2274386)))

(assert (= (and b!3672286 ((_ is Cons!38732) (originalCharacters!6538 token!511))) b!3673152))

(declare-fun b!3673153 () Bool)

(declare-fun e!2274387 () Bool)

(assert (=> b!3673153 (= e!2274387 tp_is_empty!18249)))

(assert (=> b!3672296 (= tp!1117316 e!2274387)))

(declare-fun b!3673155 () Bool)

(declare-fun tp!1117409 () Bool)

(assert (=> b!3673155 (= e!2274387 tp!1117409)))

(declare-fun b!3673154 () Bool)

(declare-fun tp!1117410 () Bool)

(declare-fun tp!1117413 () Bool)

(assert (=> b!3673154 (= e!2274387 (and tp!1117410 tp!1117413))))

(declare-fun b!3673156 () Bool)

(declare-fun tp!1117411 () Bool)

(declare-fun tp!1117412 () Bool)

(assert (=> b!3673156 (= e!2274387 (and tp!1117411 tp!1117412))))

(assert (= (and b!3672296 ((_ is ElementMatch!10583) (regex!5824 (rule!8650 token!511)))) b!3673153))

(assert (= (and b!3672296 ((_ is Concat!16638) (regex!5824 (rule!8650 token!511)))) b!3673154))

(assert (= (and b!3672296 ((_ is Star!10583) (regex!5824 (rule!8650 token!511)))) b!3673155))

(assert (= (and b!3672296 ((_ is Union!10583) (regex!5824 (rule!8650 token!511)))) b!3673156))

(declare-fun b!3673157 () Bool)

(declare-fun e!2274388 () Bool)

(assert (=> b!3673157 (= e!2274388 tp_is_empty!18249)))

(assert (=> b!3672288 (= tp!1117309 e!2274388)))

(declare-fun b!3673159 () Bool)

(declare-fun tp!1117414 () Bool)

(assert (=> b!3673159 (= e!2274388 tp!1117414)))

(declare-fun b!3673158 () Bool)

(declare-fun tp!1117415 () Bool)

(declare-fun tp!1117418 () Bool)

(assert (=> b!3673158 (= e!2274388 (and tp!1117415 tp!1117418))))

(declare-fun b!3673160 () Bool)

(declare-fun tp!1117416 () Bool)

(declare-fun tp!1117417 () Bool)

(assert (=> b!3673160 (= e!2274388 (and tp!1117416 tp!1117417))))

(assert (= (and b!3672288 ((_ is ElementMatch!10583) (regex!5824 anOtherTypeRule!33))) b!3673157))

(assert (= (and b!3672288 ((_ is Concat!16638) (regex!5824 anOtherTypeRule!33))) b!3673158))

(assert (= (and b!3672288 ((_ is Star!10583) (regex!5824 anOtherTypeRule!33))) b!3673159))

(assert (= (and b!3672288 ((_ is Union!10583) (regex!5824 anOtherTypeRule!33))) b!3673160))

(declare-fun b_lambda!109087 () Bool)

(assert (= b_lambda!109049 (or (and b!3672291 b_free!97095 (= (toChars!7979 (transformation!5824 (h!44153 rules!3307))) (toChars!7979 (transformation!5824 (rule!8650 token!511))))) (and b!3673142 b_free!97111 (= (toChars!7979 (transformation!5824 (h!44153 (t!299812 rules!3307)))) (toChars!7979 (transformation!5824 (rule!8650 token!511))))) (and b!3672282 b_free!97099 (= (toChars!7979 (transformation!5824 anOtherTypeRule!33)) (toChars!7979 (transformation!5824 (rule!8650 token!511))))) (and b!3672269 b_free!97091) (and b!3672310 b_free!97103 (= (toChars!7979 (transformation!5824 rule!403)) (toChars!7979 (transformation!5824 (rule!8650 token!511))))) b_lambda!109087)))

(declare-fun b_lambda!109089 () Bool)

(assert (= b_lambda!109071 (or (and b!3672291 b_free!97095 (= (toChars!7979 (transformation!5824 (h!44153 rules!3307))) (toChars!7979 (transformation!5824 (rule!8650 token!511))))) (and b!3673142 b_free!97111 (= (toChars!7979 (transformation!5824 (h!44153 (t!299812 rules!3307)))) (toChars!7979 (transformation!5824 (rule!8650 token!511))))) (and b!3672282 b_free!97099 (= (toChars!7979 (transformation!5824 anOtherTypeRule!33)) (toChars!7979 (transformation!5824 (rule!8650 token!511))))) (and b!3672269 b_free!97091) (and b!3672310 b_free!97103 (= (toChars!7979 (transformation!5824 rule!403)) (toChars!7979 (transformation!5824 (rule!8650 token!511))))) b_lambda!109089)))

(check-sat (not d!1078409) (not b_next!97803) (not d!1078505) (not b!3673144) (not b!3672790) (not bm!265921) (not d!1078561) (not d!1078415) (not b!3672830) (not b!3672492) (not b!3672905) b_and!273799 (not b!3672744) (not b!3672802) (not b!3673090) (not b!3672900) (not b!3672478) (not bm!265928) (not b!3673072) (not d!1078545) (not bm!265907) (not b!3672854) (not tb!212725) (not d!1078433) (not b_next!97805) (not d!1078589) (not d!1078421) (not b_lambda!109059) (not b!3672349) (not b!3673085) (not b_lambda!109089) (not d!1078693) (not b!3672546) (not b!3672827) b_and!273723 (not d!1078353) (not d!1078503) (not d!1078523) (not b!3672788) (not d!1078551) (not d!1078585) (not b!3672888) (not b!3672778) (not b_next!97813) (not d!1078549) (not bm!265902) (not b!3673115) (not bm!265922) (not bm!265932) (not b_lambda!109057) (not b_next!97797) (not b!3672852) (not b!3673114) (not b!3672722) (not tb!212749) (not b_next!97801) (not b!3672530) (not b!3672734) (not b!3672908) (not b!3672856) (not d!1078595) (not bm!265906) (not d!1078423) (not d!1078519) (not b!3672901) (not b!3673129) (not d!1078555) (not bm!265910) (not b!3672525) (not b!3672906) (not bm!265929) (not d!1078577) (not b!3672783) (not d!1078569) (not b!3673131) (not b!3673097) (not b!3672903) (not b_lambda!109075) (not b!3672740) (not b!3672755) (not b!3672423) (not d!1078399) (not b_next!97815) (not d!1078397) (not b!3672826) (not b!3672776) (not b!3672781) (not d!1078509) (not b!3672718) (not b!3673112) (not b_lambda!109065) (not b!3672545) (not b!3673086) (not b!3672529) (not d!1078511) (not d!1078419) (not b!3672547) (not b_next!97807) (not b!3673098) (not b!3672739) (not b!3672715) (not b!3672451) (not b!3672779) (not d!1078605) (not d!1078687) (not b!3672780) (not b!3673130) (not b_next!97795) (not b!3672433) (not b!3672724) b_and!273729 (not d!1078535) (not b!3672907) (not b!3673158) (not b!3672858) (not b!3673151) (not b!3672748) (not b_lambda!109063) (not b!3673155) (not d!1078381) (not d!1078529) (not b!3672725) b_and!273777 (not b_next!97799) (not d!1078689) (not b!3672745) (not d!1078615) (not b!3672793) (not b!3672868) (not b!3672526) (not tb!212765) (not b!3672777) (not b!3672737) (not d!1078405) (not b!3672786) (not bm!265930) (not b!3672792) (not d!1078567) (not b!3673140) (not b!3672477) (not d!1078563) (not b!3673159) (not b!3672523) (not bm!265900) b_and!273725 (not b!3672481) (not d!1078507) (not b!3672859) (not b!3672479) (not b!3673099) (not b!3672904) (not bm!265904) (not d!1078613) (not d!1078565) (not b!3672831) (not b!3672839) (not d!1078531) (not b!3672789) (not d!1078357) b_and!273801 (not b!3673160) (not d!1078517) (not b!3672321) (not b!3672898) (not b!3673095) (not d!1078597) (not b!3672824) (not d!1078699) (not bm!265926) (not b_lambda!109061) (not b!3673141) (not d!1078385) (not b!3672829) (not b!3672887) (not b!3672742) (not d!1078387) b_and!273771 (not d!1078541) (not b!3672486) (not d!1078587) (not d!1078557) (not b!3672832) b_and!273775 (not d!1078501) (not b!3672754) (not b_next!97793) (not d!1078435) b_and!273727 (not d!1078609) (not b!3673145) (not b!3672720) (not b!3672782) (not bm!265903) (not b_lambda!109087) (not d!1078417) (not d!1078575) (not b!3672487) (not b!3672828) (not b!3673152) (not d!1078429) (not d!1078553) (not d!1078413) (not tb!212757) (not b!3673089) (not tb!212789) (not b!3673146) (not b!3673073) (not tb!212717) tp_is_empty!18249 (not b!3673093) (not b!3673074) b_and!273773 (not b!3673094) (not b!3672721) (not b!3673156) (not d!1078571) (not b!3672909) (not d!1078539) (not d!1078351) (not b_lambda!109051) (not b!3672527) (not b!3672899) (not bm!265925) (not b!3672455) (not d!1078515) (not d!1078527) (not d!1078499) (not d!1078697) (not b!3673154) (not b!3672855))
(check-sat (not b_next!97803) b_and!273799 (not b_next!97805) b_and!273723 (not b_next!97801) (not b_next!97815) (not b_next!97807) b_and!273725 b_and!273801 b_and!273771 b_and!273727 b_and!273773 (not b_next!97813) (not b_next!97797) b_and!273729 (not b_next!97795) b_and!273777 (not b_next!97799) (not b_next!97793) b_and!273775)
