; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341894 () Bool)

(assert start!341894)

(declare-fun b!3655293 () Bool)

(declare-fun b_free!96321 () Bool)

(declare-fun b_next!97025 () Bool)

(assert (=> b!3655293 (= b_free!96321 (not b_next!97025))))

(declare-fun tp!1114014 () Bool)

(declare-fun b_and!270731 () Bool)

(assert (=> b!3655293 (= tp!1114014 b_and!270731)))

(declare-fun b_free!96323 () Bool)

(declare-fun b_next!97027 () Bool)

(assert (=> b!3655293 (= b_free!96323 (not b_next!97027))))

(declare-fun tp!1114018 () Bool)

(declare-fun b_and!270733 () Bool)

(assert (=> b!3655293 (= tp!1114018 b_and!270733)))

(declare-fun b!3655308 () Bool)

(declare-fun b_free!96325 () Bool)

(declare-fun b_next!97029 () Bool)

(assert (=> b!3655308 (= b_free!96325 (not b_next!97029))))

(declare-fun tp!1114021 () Bool)

(declare-fun b_and!270735 () Bool)

(assert (=> b!3655308 (= tp!1114021 b_and!270735)))

(declare-fun b_free!96327 () Bool)

(declare-fun b_next!97031 () Bool)

(assert (=> b!3655308 (= b_free!96327 (not b_next!97031))))

(declare-fun tp!1114023 () Bool)

(declare-fun b_and!270737 () Bool)

(assert (=> b!3655308 (= tp!1114023 b_and!270737)))

(declare-fun b!3655306 () Bool)

(declare-fun b_free!96329 () Bool)

(declare-fun b_next!97033 () Bool)

(assert (=> b!3655306 (= b_free!96329 (not b_next!97033))))

(declare-fun tp!1114013 () Bool)

(declare-fun b_and!270739 () Bool)

(assert (=> b!3655306 (= tp!1114013 b_and!270739)))

(declare-fun b_free!96331 () Bool)

(declare-fun b_next!97035 () Bool)

(assert (=> b!3655306 (= b_free!96331 (not b_next!97035))))

(declare-fun tp!1114015 () Bool)

(declare-fun b_and!270741 () Bool)

(assert (=> b!3655306 (= tp!1114015 b_and!270741)))

(declare-fun b!3655317 () Bool)

(declare-fun b_free!96333 () Bool)

(declare-fun b_next!97037 () Bool)

(assert (=> b!3655317 (= b_free!96333 (not b_next!97037))))

(declare-fun tp!1114022 () Bool)

(declare-fun b_and!270743 () Bool)

(assert (=> b!3655317 (= tp!1114022 b_and!270743)))

(declare-fun b_free!96335 () Bool)

(declare-fun b_next!97039 () Bool)

(assert (=> b!3655317 (= b_free!96335 (not b_next!97039))))

(declare-fun tp!1114012 () Bool)

(declare-fun b_and!270745 () Bool)

(assert (=> b!3655317 (= tp!1114012 b_and!270745)))

(declare-fun b!3655279 () Bool)

(declare-fun e!2263249 () Bool)

(declare-fun e!2263255 () Bool)

(assert (=> b!3655279 (= e!2263249 e!2263255)))

(declare-fun res!1483390 () Bool)

(assert (=> b!3655279 (=> res!1483390 e!2263255)))

(declare-datatypes ((C!21268 0))(
  ( (C!21269 (val!12682 Int)) )
))
(declare-datatypes ((List!38685 0))(
  ( (Nil!38561) (Cons!38561 (h!43981 C!21268) (t!297908 List!38685)) )
))
(declare-fun lt!1269650 () List!38685)

(declare-datatypes ((Regex!10541 0))(
  ( (ElementMatch!10541 (c!631748 C!21268)) (Concat!16553 (regOne!21594 Regex!10541) (regTwo!21594 Regex!10541)) (EmptyExpr!10541) (Star!10541 (reg!10870 Regex!10541)) (EmptyLang!10541) (Union!10541 (regOne!21595 Regex!10541) (regTwo!21595 Regex!10541)) )
))
(declare-datatypes ((String!43393 0))(
  ( (String!43394 (value!185221 String)) )
))
(declare-datatypes ((List!38686 0))(
  ( (Nil!38562) (Cons!38562 (h!43982 (_ BitVec 16)) (t!297909 List!38686)) )
))
(declare-datatypes ((TokenValue!6012 0))(
  ( (FloatLiteralValue!12024 (text!42529 List!38686)) (TokenValueExt!6011 (__x!24241 Int)) (Broken!30060 (value!185222 List!38686)) (Object!6135) (End!6012) (Def!6012) (Underscore!6012) (Match!6012) (Else!6012) (Error!6012) (Case!6012) (If!6012) (Extends!6012) (Abstract!6012) (Class!6012) (Val!6012) (DelimiterValue!12024 (del!6072 List!38686)) (KeywordValue!6018 (value!185223 List!38686)) (CommentValue!12024 (value!185224 List!38686)) (WhitespaceValue!12024 (value!185225 List!38686)) (IndentationValue!6012 (value!185226 List!38686)) (String!43395) (Int32!6012) (Broken!30061 (value!185227 List!38686)) (Boolean!6013) (Unit!55694) (OperatorValue!6015 (op!6072 List!38686)) (IdentifierValue!12024 (value!185228 List!38686)) (IdentifierValue!12025 (value!185229 List!38686)) (WhitespaceValue!12025 (value!185230 List!38686)) (True!12024) (False!12024) (Broken!30062 (value!185231 List!38686)) (Broken!30063 (value!185232 List!38686)) (True!12025) (RightBrace!6012) (RightBracket!6012) (Colon!6012) (Null!6012) (Comma!6012) (LeftBracket!6012) (False!12025) (LeftBrace!6012) (ImaginaryLiteralValue!6012 (text!42530 List!38686)) (StringLiteralValue!18036 (value!185233 List!38686)) (EOFValue!6012 (value!185234 List!38686)) (IdentValue!6012 (value!185235 List!38686)) (DelimiterValue!12025 (value!185236 List!38686)) (DedentValue!6012 (value!185237 List!38686)) (NewLineValue!6012 (value!185238 List!38686)) (IntegerValue!18036 (value!185239 (_ BitVec 32)) (text!42531 List!38686)) (IntegerValue!18037 (value!185240 Int) (text!42532 List!38686)) (Times!6012) (Or!6012) (Equal!6012) (Minus!6012) (Broken!30064 (value!185241 List!38686)) (And!6012) (Div!6012) (LessEqual!6012) (Mod!6012) (Concat!16554) (Not!6012) (Plus!6012) (SpaceValue!6012 (value!185242 List!38686)) (IntegerValue!18038 (value!185243 Int) (text!42533 List!38686)) (StringLiteralValue!18037 (text!42534 List!38686)) (FloatLiteralValue!12025 (text!42535 List!38686)) (BytesLiteralValue!6012 (value!185244 List!38686)) (CommentValue!12025 (value!185245 List!38686)) (StringLiteralValue!18038 (value!185246 List!38686)) (ErrorTokenValue!6012 (msg!6073 List!38686)) )
))
(declare-datatypes ((IArray!23579 0))(
  ( (IArray!23580 (innerList!11847 List!38685)) )
))
(declare-datatypes ((Conc!11787 0))(
  ( (Node!11787 (left!30096 Conc!11787) (right!30426 Conc!11787) (csize!23804 Int) (cheight!11998 Int)) (Leaf!18289 (xs!14989 IArray!23579) (csize!23805 Int)) (Empty!11787) )
))
(declare-datatypes ((BalanceConc!23188 0))(
  ( (BalanceConc!23189 (c!631749 Conc!11787)) )
))
(declare-datatypes ((TokenValueInjection!11452 0))(
  ( (TokenValueInjection!11453 (toValue!8074 Int) (toChars!7933 Int)) )
))
(declare-datatypes ((Rule!11364 0))(
  ( (Rule!11365 (regex!5782 Regex!10541) (tag!6552 String!43393) (isSeparator!5782 Bool) (transformation!5782 TokenValueInjection!11452)) )
))
(declare-datatypes ((Token!10930 0))(
  ( (Token!10931 (value!185247 TokenValue!6012) (rule!8586 Rule!11364) (size!29455 Int) (originalCharacters!6496 List!38685)) )
))
(declare-datatypes ((tuple2!38424 0))(
  ( (tuple2!38425 (_1!22346 Token!10930) (_2!22346 List!38685)) )
))
(declare-fun lt!1269625 () tuple2!38424)

(declare-datatypes ((Option!8192 0))(
  ( (None!8191) (Some!8191 (v!38063 tuple2!38424)) )
))
(declare-fun lt!1269645 () Option!8192)

(assert (=> b!3655279 (= res!1483390 (or (not (= lt!1269650 (_2!22346 lt!1269625))) (not (= lt!1269645 (Some!8191 (tuple2!38425 (_1!22346 lt!1269625) lt!1269650))))))))

(assert (=> b!3655279 (= (_2!22346 lt!1269625) lt!1269650)))

(declare-fun lt!1269640 () List!38685)

(declare-datatypes ((Unit!55695 0))(
  ( (Unit!55696) )
))
(declare-fun lt!1269668 () Unit!55695)

(declare-fun lt!1269630 () List!38685)

(declare-fun lemmaSamePrefixThenSameSuffix!1472 (List!38685 List!38685 List!38685 List!38685 List!38685) Unit!55695)

(assert (=> b!3655279 (= lt!1269668 (lemmaSamePrefixThenSameSuffix!1472 lt!1269630 (_2!22346 lt!1269625) lt!1269630 lt!1269650 lt!1269640))))

(declare-fun getSuffix!1698 (List!38685 List!38685) List!38685)

(assert (=> b!3655279 (= lt!1269650 (getSuffix!1698 lt!1269640 lt!1269630))))

(declare-fun lt!1269662 () Token!10930)

(assert (=> b!3655279 (= lt!1269645 (Some!8191 (tuple2!38425 lt!1269662 (_2!22346 lt!1269625))))))

(declare-datatypes ((LexerInterface!5371 0))(
  ( (LexerInterfaceExt!5368 (__x!24242 Int)) (Lexer!5369) )
))
(declare-fun thiss!23823 () LexerInterface!5371)

(declare-fun maxPrefixOneRule!2043 (LexerInterface!5371 Rule!11364 List!38685) Option!8192)

(assert (=> b!3655279 (= lt!1269645 (maxPrefixOneRule!2043 thiss!23823 (rule!8586 (_1!22346 lt!1269625)) lt!1269640))))

(declare-fun lt!1269666 () BalanceConc!23188)

(declare-fun apply!9284 (TokenValueInjection!11452 BalanceConc!23188) TokenValue!6012)

(declare-fun size!29456 (List!38685) Int)

(assert (=> b!3655279 (= lt!1269662 (Token!10931 (apply!9284 (transformation!5782 (rule!8586 (_1!22346 lt!1269625))) lt!1269666) (rule!8586 (_1!22346 lt!1269625)) (size!29456 lt!1269630) lt!1269630))))

(declare-fun seqFromList!4331 (List!38685) BalanceConc!23188)

(assert (=> b!3655279 (= lt!1269666 (seqFromList!4331 lt!1269630))))

(declare-datatypes ((List!38687 0))(
  ( (Nil!38563) (Cons!38563 (h!43983 Rule!11364) (t!297910 List!38687)) )
))
(declare-fun rules!3307 () List!38687)

(declare-fun lt!1269653 () Unit!55695)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1099 (LexerInterface!5371 List!38687 List!38685 List!38685 List!38685 Rule!11364) Unit!55695)

(assert (=> b!3655279 (= lt!1269653 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1099 thiss!23823 rules!3307 lt!1269630 lt!1269640 (_2!22346 lt!1269625) (rule!8586 (_1!22346 lt!1269625))))))

(declare-fun b!3655280 () Bool)

(declare-fun e!2263251 () Unit!55695)

(declare-fun Unit!55697 () Unit!55695)

(assert (=> b!3655280 (= e!2263251 Unit!55697)))

(declare-fun b!3655281 () Bool)

(declare-fun e!2263274 () Bool)

(assert (=> b!3655281 (= e!2263274 (= lt!1269645 (Some!8191 (tuple2!38425 lt!1269662 lt!1269650))))))

(declare-fun isPrefix!3145 (List!38685 List!38685) Bool)

(assert (=> b!3655281 (isPrefix!3145 lt!1269640 lt!1269640)))

(declare-fun lt!1269660 () Unit!55695)

(declare-fun lemmaIsPrefixRefl!1984 (List!38685 List!38685) Unit!55695)

(assert (=> b!3655281 (= lt!1269660 (lemmaIsPrefixRefl!1984 lt!1269640 lt!1269640))))

(declare-fun lt!1269651 () Unit!55695)

(declare-fun lemmaSemiInverse!1531 (TokenValueInjection!11452 BalanceConc!23188) Unit!55695)

(assert (=> b!3655281 (= lt!1269651 (lemmaSemiInverse!1531 (transformation!5782 (rule!8586 (_1!22346 lt!1269625))) lt!1269666))))

(declare-fun ruleValid!2046 (LexerInterface!5371 Rule!11364) Bool)

(assert (=> b!3655281 (ruleValid!2046 thiss!23823 (rule!8586 (_1!22346 lt!1269625)))))

(declare-fun lt!1269633 () Unit!55695)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1200 (LexerInterface!5371 Rule!11364 List!38687) Unit!55695)

(assert (=> b!3655281 (= lt!1269633 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1200 thiss!23823 (rule!8586 (_1!22346 lt!1269625)) rules!3307))))

(declare-fun b!3655282 () Bool)

(declare-fun e!2263269 () Bool)

(declare-fun tp_is_empty!18165 () Bool)

(declare-fun tp!1114017 () Bool)

(assert (=> b!3655282 (= e!2263269 (and tp_is_empty!18165 tp!1114017))))

(declare-fun b!3655283 () Bool)

(declare-fun e!2263252 () Bool)

(declare-fun e!2263273 () Bool)

(assert (=> b!3655283 (= e!2263252 e!2263273)))

(declare-fun res!1483387 () Bool)

(assert (=> b!3655283 (=> (not res!1483387) (not e!2263273))))

(declare-fun lt!1269643 () Rule!11364)

(declare-fun matchR!5110 (Regex!10541 List!38685) Bool)

(declare-fun list!14296 (BalanceConc!23188) List!38685)

(declare-fun charsOf!3796 (Token!10930) BalanceConc!23188)

(assert (=> b!3655283 (= res!1483387 (matchR!5110 (regex!5782 lt!1269643) (list!14296 (charsOf!3796 (_1!22346 lt!1269625)))))))

(declare-datatypes ((Option!8193 0))(
  ( (None!8192) (Some!8192 (v!38064 Rule!11364)) )
))
(declare-fun lt!1269649 () Option!8193)

(declare-fun get!12693 (Option!8193) Rule!11364)

(assert (=> b!3655283 (= lt!1269643 (get!12693 lt!1269649))))

(declare-fun b!3655284 () Bool)

(declare-fun res!1483384 () Bool)

(declare-fun e!2263270 () Bool)

(assert (=> b!3655284 (=> (not res!1483384) (not e!2263270))))

(declare-fun rule!403 () Rule!11364)

(declare-fun contains!7629 (List!38687 Rule!11364) Bool)

(assert (=> b!3655284 (= res!1483384 (contains!7629 rules!3307 rule!403))))

(declare-fun tp!1114016 () Bool)

(declare-fun e!2263262 () Bool)

(declare-fun e!2263264 () Bool)

(declare-fun b!3655285 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11364)

(declare-fun inv!52018 (String!43393) Bool)

(declare-fun inv!52021 (TokenValueInjection!11452) Bool)

(assert (=> b!3655285 (= e!2263262 (and tp!1114016 (inv!52018 (tag!6552 anOtherTypeRule!33)) (inv!52021 (transformation!5782 anOtherTypeRule!33)) e!2263264))))

(declare-fun b!3655286 () Bool)

(declare-fun res!1483382 () Bool)

(declare-fun e!2263260 () Bool)

(assert (=> b!3655286 (=> res!1483382 e!2263260)))

(declare-fun suffix!1395 () List!38685)

(declare-fun isEmpty!22860 (List!38685) Bool)

(assert (=> b!3655286 (= res!1483382 (isEmpty!22860 suffix!1395))))

(declare-fun e!2263268 () Bool)

(declare-fun e!2263261 () Bool)

(declare-fun b!3655287 () Bool)

(declare-fun tp!1114026 () Bool)

(assert (=> b!3655287 (= e!2263268 (and tp!1114026 (inv!52018 (tag!6552 (h!43983 rules!3307))) (inv!52021 (transformation!5782 (h!43983 rules!3307))) e!2263261))))

(declare-fun b!3655288 () Bool)

(declare-fun e!2263257 () Unit!55695)

(declare-fun e!2263278 () Unit!55695)

(assert (=> b!3655288 (= e!2263257 e!2263278)))

(declare-fun c!631742 () Bool)

(assert (=> b!3655288 (= c!631742 (isSeparator!5782 (rule!8586 (_1!22346 lt!1269625))))))

(declare-fun b!3655289 () Bool)

(declare-fun e!2263266 () Bool)

(assert (=> b!3655289 (= e!2263266 e!2263249)))

(declare-fun res!1483395 () Bool)

(assert (=> b!3655289 (=> res!1483395 e!2263249)))

(declare-fun lt!1269631 () TokenValue!6012)

(declare-fun lt!1269655 () Option!8192)

(declare-fun lt!1269661 () Int)

(assert (=> b!3655289 (= res!1483395 (not (= lt!1269655 (Some!8191 (tuple2!38425 (Token!10931 lt!1269631 (rule!8586 (_1!22346 lt!1269625)) lt!1269661 lt!1269630) (_2!22346 lt!1269625))))))))

(declare-fun lt!1269623 () BalanceConc!23188)

(declare-fun size!29457 (BalanceConc!23188) Int)

(assert (=> b!3655289 (= lt!1269661 (size!29457 lt!1269623))))

(assert (=> b!3655289 (= lt!1269631 (apply!9284 (transformation!5782 (rule!8586 (_1!22346 lt!1269625))) lt!1269623))))

(declare-fun lt!1269664 () Unit!55695)

(declare-fun lemmaCharactersSize!827 (Token!10930) Unit!55695)

(assert (=> b!3655289 (= lt!1269664 (lemmaCharactersSize!827 (_1!22346 lt!1269625)))))

(declare-fun lt!1269626 () Unit!55695)

(declare-fun lemmaEqSameImage!965 (TokenValueInjection!11452 BalanceConc!23188 BalanceConc!23188) Unit!55695)

(assert (=> b!3655289 (= lt!1269626 (lemmaEqSameImage!965 (transformation!5782 (rule!8586 (_1!22346 lt!1269625))) lt!1269623 (seqFromList!4331 (originalCharacters!6496 (_1!22346 lt!1269625)))))))

(declare-fun lt!1269663 () Unit!55695)

(assert (=> b!3655289 (= lt!1269663 (lemmaSemiInverse!1531 (transformation!5782 (rule!8586 (_1!22346 lt!1269625))) lt!1269623))))

(declare-fun b!3655290 () Bool)

(declare-fun res!1483388 () Bool)

(assert (=> b!3655290 (=> (not res!1483388) (not e!2263270))))

(assert (=> b!3655290 (= res!1483388 (not (= (isSeparator!5782 anOtherTypeRule!33) (isSeparator!5782 rule!403))))))

(declare-fun b!3655291 () Bool)

(declare-fun res!1483385 () Bool)

(declare-fun e!2263246 () Bool)

(assert (=> b!3655291 (=> res!1483385 e!2263246)))

(declare-fun lt!1269629 () C!21268)

(declare-fun contains!7630 (List!38685 C!21268) Bool)

(declare-fun usedCharacters!994 (Regex!10541) List!38685)

(assert (=> b!3655291 (= res!1483385 (not (contains!7630 (usedCharacters!994 (regex!5782 anOtherTypeRule!33)) lt!1269629)))))

(declare-fun b!3655292 () Bool)

(declare-fun e!2263250 () Unit!55695)

(declare-fun Unit!55698 () Unit!55695)

(assert (=> b!3655292 (= e!2263250 Unit!55698)))

(declare-fun lt!1269657 () Unit!55695)

(declare-fun lt!1269665 () List!38685)

(declare-fun lt!1269641 () C!21268)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!730 (Regex!10541 List!38685 C!21268) Unit!55695)

(assert (=> b!3655292 (= lt!1269657 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!730 (regex!5782 rule!403) lt!1269665 lt!1269641))))

(assert (=> b!3655292 false))

(declare-fun e!2263272 () Bool)

(assert (=> b!3655293 (= e!2263272 (and tp!1114014 tp!1114018))))

(declare-fun b!3655294 () Bool)

(declare-fun e!2263259 () Unit!55695)

(declare-fun Unit!55699 () Unit!55695)

(assert (=> b!3655294 (= e!2263259 Unit!55699)))

(declare-fun b!3655295 () Bool)

(declare-fun res!1483380 () Bool)

(assert (=> b!3655295 (=> res!1483380 e!2263274)))

(assert (=> b!3655295 (= res!1483380 (not (contains!7629 rules!3307 (rule!8586 (_1!22346 lt!1269625)))))))

(declare-fun call!264277 () Unit!55695)

(declare-fun bm!264270 () Bool)

(assert (=> bm!264270 (= call!264277 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!730 (regex!5782 (rule!8586 (_1!22346 lt!1269625))) lt!1269630 lt!1269629))))

(declare-fun call!264280 () Unit!55695)

(declare-fun bm!264271 () Bool)

(assert (=> bm!264271 (= call!264280 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!730 (regex!5782 (rule!8586 (_1!22346 lt!1269625))) lt!1269630 lt!1269641))))

(declare-fun b!3655296 () Bool)

(declare-fun e!2263275 () Bool)

(assert (=> b!3655296 (= e!2263270 e!2263275)))

(declare-fun res!1483396 () Bool)

(assert (=> b!3655296 (=> (not res!1483396) (not e!2263275))))

(declare-fun lt!1269656 () Option!8192)

(declare-fun isDefined!6424 (Option!8192) Bool)

(assert (=> b!3655296 (= res!1483396 (isDefined!6424 lt!1269656))))

(declare-fun maxPrefix!2905 (LexerInterface!5371 List!38687 List!38685) Option!8192)

(assert (=> b!3655296 (= lt!1269656 (maxPrefix!2905 thiss!23823 rules!3307 lt!1269665))))

(declare-fun lt!1269622 () BalanceConc!23188)

(assert (=> b!3655296 (= lt!1269665 (list!14296 lt!1269622))))

(declare-fun token!511 () Token!10930)

(assert (=> b!3655296 (= lt!1269622 (charsOf!3796 token!511))))

(declare-fun b!3655297 () Bool)

(declare-fun e!2263271 () Bool)

(declare-fun tp!1114024 () Bool)

(assert (=> b!3655297 (= e!2263271 (and e!2263268 tp!1114024))))

(declare-fun b!3655298 () Bool)

(assert (=> b!3655298 (= e!2263255 e!2263274)))

(declare-fun res!1483376 () Bool)

(assert (=> b!3655298 (=> res!1483376 e!2263274)))

(declare-fun lt!1269627 () Int)

(assert (=> b!3655298 (= res!1483376 (>= lt!1269661 lt!1269627))))

(declare-fun lt!1269632 () Unit!55695)

(assert (=> b!3655298 (= lt!1269632 e!2263251)))

(declare-fun c!631745 () Bool)

(assert (=> b!3655298 (= c!631745 (> lt!1269661 lt!1269627))))

(assert (=> b!3655298 (= lt!1269627 (size!29457 lt!1269622))))

(declare-fun lt!1269639 () Unit!55695)

(assert (=> b!3655298 (= lt!1269639 e!2263257)))

(declare-fun c!631744 () Bool)

(assert (=> b!3655298 (= c!631744 (isSeparator!5782 rule!403))))

(declare-fun lt!1269667 () Unit!55695)

(assert (=> b!3655298 (= lt!1269667 e!2263250)))

(declare-fun c!631746 () Bool)

(declare-fun lt!1269652 () List!38685)

(assert (=> b!3655298 (= c!631746 (not (contains!7630 lt!1269652 lt!1269641)))))

(declare-fun head!7802 (List!38685) C!21268)

(assert (=> b!3655298 (= lt!1269641 (head!7802 lt!1269630))))

(declare-fun b!3655299 () Bool)

(declare-fun Unit!55700 () Unit!55695)

(assert (=> b!3655299 (= e!2263278 Unit!55700)))

(declare-fun b!3655300 () Bool)

(declare-fun Unit!55701 () Unit!55695)

(assert (=> b!3655300 (= e!2263250 Unit!55701)))

(declare-fun b!3655301 () Bool)

(declare-fun res!1483394 () Bool)

(declare-fun e!2263277 () Bool)

(assert (=> b!3655301 (=> (not res!1483394) (not e!2263277))))

(declare-fun lt!1269659 () tuple2!38424)

(assert (=> b!3655301 (= res!1483394 (isEmpty!22860 (_2!22346 lt!1269659)))))

(declare-fun res!1483386 () Bool)

(assert (=> start!341894 (=> (not res!1483386) (not e!2263270))))

(get-info :version)

(assert (=> start!341894 (= res!1483386 ((_ is Lexer!5369) thiss!23823))))

(assert (=> start!341894 e!2263270))

(assert (=> start!341894 e!2263271))

(assert (=> start!341894 e!2263269))

(assert (=> start!341894 true))

(declare-fun e!2263267 () Bool)

(declare-fun inv!52022 (Token!10930) Bool)

(assert (=> start!341894 (and (inv!52022 token!511) e!2263267)))

(declare-fun e!2263276 () Bool)

(assert (=> start!341894 e!2263276))

(assert (=> start!341894 e!2263262))

(declare-fun bm!264272 () Bool)

(declare-fun call!264278 () List!38685)

(assert (=> bm!264272 (= call!264278 (usedCharacters!994 (regex!5782 (rule!8586 (_1!22346 lt!1269625)))))))

(declare-fun b!3655302 () Bool)

(assert (=> b!3655302 false))

(declare-fun lt!1269634 () Unit!55695)

(assert (=> b!3655302 (= lt!1269634 call!264277)))

(declare-fun call!264279 () Bool)

(assert (=> b!3655302 (not call!264279)))

(declare-fun lt!1269642 () Unit!55695)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!428 (LexerInterface!5371 List!38687 List!38687 Rule!11364 Rule!11364 C!21268) Unit!55695)

(assert (=> b!3655302 (= lt!1269642 (lemmaNonSepRuleNotContainsCharContainedInASepRule!428 thiss!23823 rules!3307 rules!3307 (rule!8586 (_1!22346 lt!1269625)) anOtherTypeRule!33 lt!1269629))))

(declare-fun e!2263254 () Unit!55695)

(declare-fun Unit!55702 () Unit!55695)

(assert (=> b!3655302 (= e!2263254 Unit!55702)))

(declare-fun b!3655303 () Bool)

(assert (=> b!3655303 false))

(declare-fun lt!1269636 () Unit!55695)

(assert (=> b!3655303 (= lt!1269636 call!264280)))

(declare-fun call!264275 () Bool)

(assert (=> b!3655303 (not call!264275)))

(declare-fun lt!1269654 () Unit!55695)

(assert (=> b!3655303 (= lt!1269654 (lemmaNonSepRuleNotContainsCharContainedInASepRule!428 thiss!23823 rules!3307 rules!3307 (rule!8586 (_1!22346 lt!1269625)) rule!403 lt!1269641))))

(declare-fun Unit!55703 () Unit!55695)

(assert (=> b!3655303 (= e!2263259 Unit!55703)))

(declare-fun bm!264273 () Bool)

(declare-fun call!264276 () List!38685)

(assert (=> bm!264273 (= call!264275 (contains!7630 call!264276 lt!1269641))))

(declare-fun b!3655304 () Bool)

(declare-fun res!1483392 () Bool)

(assert (=> b!3655304 (=> (not res!1483392) (not e!2263277))))

(assert (=> b!3655304 (= res!1483392 (= (rule!8586 token!511) rule!403))))

(declare-fun e!2263256 () Bool)

(declare-fun tp!1114025 () Bool)

(declare-fun b!3655305 () Bool)

(declare-fun e!2263247 () Bool)

(assert (=> b!3655305 (= e!2263256 (and tp!1114025 (inv!52018 (tag!6552 (rule!8586 token!511))) (inv!52021 (transformation!5782 (rule!8586 token!511))) e!2263247))))

(assert (=> b!3655306 (= e!2263261 (and tp!1114013 tp!1114015))))

(declare-fun b!3655307 () Bool)

(assert (=> b!3655307 (= e!2263275 e!2263277)))

(declare-fun res!1483397 () Bool)

(assert (=> b!3655307 (=> (not res!1483397) (not e!2263277))))

(assert (=> b!3655307 (= res!1483397 (= (_1!22346 lt!1269659) token!511))))

(declare-fun get!12694 (Option!8192) tuple2!38424)

(assert (=> b!3655307 (= lt!1269659 (get!12694 lt!1269656))))

(assert (=> b!3655308 (= e!2263264 (and tp!1114021 tp!1114023))))

(declare-fun bm!264274 () Bool)

(assert (=> bm!264274 (= call!264276 (usedCharacters!994 (regex!5782 (rule!8586 (_1!22346 lt!1269625)))))))

(declare-fun tp!1114019 () Bool)

(declare-fun b!3655309 () Bool)

(assert (=> b!3655309 (= e!2263276 (and tp!1114019 (inv!52018 (tag!6552 rule!403)) (inv!52021 (transformation!5782 rule!403)) e!2263272))))

(declare-fun b!3655310 () Bool)

(assert (=> b!3655310 false))

(declare-fun lt!1269646 () Unit!55695)

(assert (=> b!3655310 (= lt!1269646 call!264277)))

(assert (=> b!3655310 (not call!264279)))

(declare-fun lt!1269644 () Unit!55695)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!310 (LexerInterface!5371 List!38687 List!38687 Rule!11364 Rule!11364 C!21268) Unit!55695)

(assert (=> b!3655310 (= lt!1269644 (lemmaSepRuleNotContainsCharContainedInANonSepRule!310 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8586 (_1!22346 lt!1269625)) lt!1269629))))

(declare-fun Unit!55704 () Unit!55695)

(assert (=> b!3655310 (= e!2263254 Unit!55704)))

(declare-fun b!3655311 () Bool)

(declare-fun res!1483379 () Bool)

(assert (=> b!3655311 (=> res!1483379 e!2263266)))

(assert (=> b!3655311 (= res!1483379 (not (matchR!5110 (regex!5782 (rule!8586 (_1!22346 lt!1269625))) lt!1269630)))))

(declare-fun b!3655312 () Bool)

(declare-fun res!1483378 () Bool)

(assert (=> b!3655312 (=> (not res!1483378) (not e!2263270))))

(declare-fun isEmpty!22861 (List!38687) Bool)

(assert (=> b!3655312 (= res!1483378 (not (isEmpty!22861 rules!3307)))))

(declare-fun b!3655313 () Bool)

(assert (=> b!3655313 (= e!2263260 e!2263246)))

(declare-fun res!1483383 () Bool)

(assert (=> b!3655313 (=> res!1483383 e!2263246)))

(assert (=> b!3655313 (= res!1483383 (contains!7630 lt!1269652 lt!1269629))))

(assert (=> b!3655313 (= lt!1269629 (head!7802 suffix!1395))))

(assert (=> b!3655313 (= lt!1269652 (usedCharacters!994 (regex!5782 rule!403)))))

(declare-fun b!3655314 () Bool)

(declare-fun res!1483391 () Bool)

(assert (=> b!3655314 (=> (not res!1483391) (not e!2263270))))

(assert (=> b!3655314 (= res!1483391 (contains!7629 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3655315 () Bool)

(declare-fun res!1483377 () Bool)

(assert (=> b!3655315 (=> (not res!1483377) (not e!2263270))))

(declare-fun rulesInvariant!4768 (LexerInterface!5371 List!38687) Bool)

(assert (=> b!3655315 (= res!1483377 (rulesInvariant!4768 thiss!23823 rules!3307))))

(declare-fun b!3655316 () Bool)

(declare-fun tp!1114020 () Bool)

(declare-fun inv!21 (TokenValue!6012) Bool)

(assert (=> b!3655316 (= e!2263267 (and (inv!21 (value!185247 token!511)) e!2263256 tp!1114020))))

(assert (=> b!3655317 (= e!2263247 (and tp!1114022 tp!1114012))))

(declare-fun b!3655318 () Bool)

(assert (=> b!3655318 (= e!2263273 (= (rule!8586 (_1!22346 lt!1269625)) lt!1269643))))

(declare-fun b!3655319 () Bool)

(assert (=> b!3655319 (= e!2263246 e!2263266)))

(declare-fun res!1483389 () Bool)

(assert (=> b!3655319 (=> res!1483389 e!2263266)))

(assert (=> b!3655319 (= res!1483389 (not (isPrefix!3145 lt!1269630 lt!1269640)))))

(declare-fun ++!9598 (List!38685 List!38685) List!38685)

(assert (=> b!3655319 (isPrefix!3145 lt!1269630 (++!9598 lt!1269630 (_2!22346 lt!1269625)))))

(declare-fun lt!1269628 () Unit!55695)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2064 (List!38685 List!38685) Unit!55695)

(assert (=> b!3655319 (= lt!1269628 (lemmaConcatTwoListThenFirstIsPrefix!2064 lt!1269630 (_2!22346 lt!1269625)))))

(assert (=> b!3655319 (= lt!1269630 (list!14296 lt!1269623))))

(assert (=> b!3655319 (= lt!1269623 (charsOf!3796 (_1!22346 lt!1269625)))))

(assert (=> b!3655319 e!2263252))

(declare-fun res!1483381 () Bool)

(assert (=> b!3655319 (=> (not res!1483381) (not e!2263252))))

(declare-fun isDefined!6425 (Option!8193) Bool)

(assert (=> b!3655319 (= res!1483381 (isDefined!6425 lt!1269649))))

(declare-fun getRuleFromTag!1386 (LexerInterface!5371 List!38687 String!43393) Option!8193)

(assert (=> b!3655319 (= lt!1269649 (getRuleFromTag!1386 thiss!23823 rules!3307 (tag!6552 (rule!8586 (_1!22346 lt!1269625)))))))

(declare-fun lt!1269635 () Unit!55695)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1386 (LexerInterface!5371 List!38687 List!38685 Token!10930) Unit!55695)

(assert (=> b!3655319 (= lt!1269635 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1386 thiss!23823 rules!3307 lt!1269640 (_1!22346 lt!1269625)))))

(assert (=> b!3655319 (= lt!1269625 (get!12694 lt!1269655))))

(declare-fun lt!1269637 () Unit!55695)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1049 (LexerInterface!5371 List!38687 List!38685 List!38685) Unit!55695)

(assert (=> b!3655319 (= lt!1269637 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1049 thiss!23823 rules!3307 lt!1269665 suffix!1395))))

(assert (=> b!3655319 (= lt!1269655 (maxPrefix!2905 thiss!23823 rules!3307 lt!1269640))))

(assert (=> b!3655319 (isPrefix!3145 lt!1269665 lt!1269640)))

(declare-fun lt!1269647 () Unit!55695)

(assert (=> b!3655319 (= lt!1269647 (lemmaConcatTwoListThenFirstIsPrefix!2064 lt!1269665 suffix!1395))))

(assert (=> b!3655319 (= lt!1269640 (++!9598 lt!1269665 suffix!1395))))

(declare-fun b!3655320 () Bool)

(declare-fun res!1483393 () Bool)

(assert (=> b!3655320 (=> res!1483393 e!2263246)))

(declare-fun sepAndNonSepRulesDisjointChars!1950 (List!38687 List!38687) Bool)

(assert (=> b!3655320 (= res!1483393 (not (sepAndNonSepRulesDisjointChars!1950 rules!3307 rules!3307)))))

(declare-fun b!3655321 () Bool)

(assert (=> b!3655321 (= e!2263277 (not e!2263260))))

(declare-fun res!1483398 () Bool)

(assert (=> b!3655321 (=> res!1483398 e!2263260)))

(assert (=> b!3655321 (= res!1483398 (not (matchR!5110 (regex!5782 rule!403) lt!1269665)))))

(assert (=> b!3655321 (ruleValid!2046 thiss!23823 rule!403)))

(declare-fun lt!1269638 () Unit!55695)

(assert (=> b!3655321 (= lt!1269638 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1200 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3655322 () Bool)

(assert (=> b!3655322 false))

(declare-fun lt!1269648 () Unit!55695)

(assert (=> b!3655322 (= lt!1269648 call!264280)))

(assert (=> b!3655322 (not call!264275)))

(declare-fun lt!1269658 () Unit!55695)

(assert (=> b!3655322 (= lt!1269658 (lemmaSepRuleNotContainsCharContainedInANonSepRule!310 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8586 (_1!22346 lt!1269625)) lt!1269641))))

(declare-fun Unit!55705 () Unit!55695)

(assert (=> b!3655322 (= e!2263278 Unit!55705)))

(declare-fun b!3655323 () Bool)

(assert (=> b!3655323 (= e!2263257 e!2263259)))

(declare-fun c!631743 () Bool)

(assert (=> b!3655323 (= c!631743 (not (isSeparator!5782 (rule!8586 (_1!22346 lt!1269625)))))))

(declare-fun bm!264275 () Bool)

(assert (=> bm!264275 (= call!264279 (contains!7630 call!264278 lt!1269629))))

(declare-fun b!3655324 () Bool)

(assert (=> b!3655324 (= e!2263251 e!2263254)))

(declare-fun lt!1269624 () Unit!55695)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!90 (List!38685 List!38685 List!38685 List!38685) Unit!55695)

(assert (=> b!3655324 (= lt!1269624 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!90 lt!1269665 suffix!1395 lt!1269630 lt!1269640))))

(assert (=> b!3655324 (contains!7630 lt!1269630 lt!1269629)))

(declare-fun c!631747 () Bool)

(assert (=> b!3655324 (= c!631747 (isSeparator!5782 rule!403))))

(assert (= (and start!341894 res!1483386) b!3655312))

(assert (= (and b!3655312 res!1483378) b!3655315))

(assert (= (and b!3655315 res!1483377) b!3655284))

(assert (= (and b!3655284 res!1483384) b!3655314))

(assert (= (and b!3655314 res!1483391) b!3655290))

(assert (= (and b!3655290 res!1483388) b!3655296))

(assert (= (and b!3655296 res!1483396) b!3655307))

(assert (= (and b!3655307 res!1483397) b!3655301))

(assert (= (and b!3655301 res!1483394) b!3655304))

(assert (= (and b!3655304 res!1483392) b!3655321))

(assert (= (and b!3655321 (not res!1483398)) b!3655286))

(assert (= (and b!3655286 (not res!1483382)) b!3655313))

(assert (= (and b!3655313 (not res!1483383)) b!3655291))

(assert (= (and b!3655291 (not res!1483385)) b!3655320))

(assert (= (and b!3655320 (not res!1483393)) b!3655319))

(assert (= (and b!3655319 res!1483381) b!3655283))

(assert (= (and b!3655283 res!1483387) b!3655318))

(assert (= (and b!3655319 (not res!1483389)) b!3655311))

(assert (= (and b!3655311 (not res!1483379)) b!3655289))

(assert (= (and b!3655289 (not res!1483395)) b!3655279))

(assert (= (and b!3655279 (not res!1483390)) b!3655298))

(assert (= (and b!3655298 c!631746) b!3655292))

(assert (= (and b!3655298 (not c!631746)) b!3655300))

(assert (= (and b!3655298 c!631744) b!3655323))

(assert (= (and b!3655298 (not c!631744)) b!3655288))

(assert (= (and b!3655323 c!631743) b!3655303))

(assert (= (and b!3655323 (not c!631743)) b!3655294))

(assert (= (and b!3655288 c!631742) b!3655322))

(assert (= (and b!3655288 (not c!631742)) b!3655299))

(assert (= (or b!3655303 b!3655322) bm!264271))

(assert (= (or b!3655303 b!3655322) bm!264274))

(assert (= (or b!3655303 b!3655322) bm!264273))

(assert (= (and b!3655298 c!631745) b!3655324))

(assert (= (and b!3655298 (not c!631745)) b!3655280))

(assert (= (and b!3655324 c!631747) b!3655310))

(assert (= (and b!3655324 (not c!631747)) b!3655302))

(assert (= (or b!3655310 b!3655302) bm!264270))

(assert (= (or b!3655310 b!3655302) bm!264272))

(assert (= (or b!3655310 b!3655302) bm!264275))

(assert (= (and b!3655298 (not res!1483376)) b!3655295))

(assert (= (and b!3655295 (not res!1483380)) b!3655281))

(assert (= b!3655287 b!3655306))

(assert (= b!3655297 b!3655287))

(assert (= (and start!341894 ((_ is Cons!38563) rules!3307)) b!3655297))

(assert (= (and start!341894 ((_ is Cons!38561) suffix!1395)) b!3655282))

(assert (= b!3655305 b!3655317))

(assert (= b!3655316 b!3655305))

(assert (= start!341894 b!3655316))

(assert (= b!3655309 b!3655293))

(assert (= start!341894 b!3655309))

(assert (= b!3655285 b!3655308))

(assert (= start!341894 b!3655285))

(declare-fun m!4160627 () Bool)

(assert (=> b!3655295 m!4160627))

(declare-fun m!4160629 () Bool)

(assert (=> b!3655312 m!4160629))

(declare-fun m!4160631 () Bool)

(assert (=> b!3655289 m!4160631))

(declare-fun m!4160633 () Bool)

(assert (=> b!3655289 m!4160633))

(declare-fun m!4160635 () Bool)

(assert (=> b!3655289 m!4160635))

(assert (=> b!3655289 m!4160633))

(declare-fun m!4160637 () Bool)

(assert (=> b!3655289 m!4160637))

(declare-fun m!4160639 () Bool)

(assert (=> b!3655289 m!4160639))

(declare-fun m!4160641 () Bool)

(assert (=> b!3655289 m!4160641))

(declare-fun m!4160643 () Bool)

(assert (=> b!3655324 m!4160643))

(declare-fun m!4160645 () Bool)

(assert (=> b!3655324 m!4160645))

(declare-fun m!4160647 () Bool)

(assert (=> bm!264275 m!4160647))

(declare-fun m!4160649 () Bool)

(assert (=> b!3655296 m!4160649))

(declare-fun m!4160651 () Bool)

(assert (=> b!3655296 m!4160651))

(declare-fun m!4160653 () Bool)

(assert (=> b!3655296 m!4160653))

(declare-fun m!4160655 () Bool)

(assert (=> b!3655296 m!4160655))

(declare-fun m!4160657 () Bool)

(assert (=> b!3655307 m!4160657))

(declare-fun m!4160659 () Bool)

(assert (=> b!3655322 m!4160659))

(declare-fun m!4160661 () Bool)

(assert (=> b!3655320 m!4160661))

(declare-fun m!4160663 () Bool)

(assert (=> b!3655316 m!4160663))

(declare-fun m!4160665 () Bool)

(assert (=> b!3655291 m!4160665))

(assert (=> b!3655291 m!4160665))

(declare-fun m!4160667 () Bool)

(assert (=> b!3655291 m!4160667))

(declare-fun m!4160669 () Bool)

(assert (=> bm!264270 m!4160669))

(declare-fun m!4160671 () Bool)

(assert (=> b!3655279 m!4160671))

(declare-fun m!4160673 () Bool)

(assert (=> b!3655279 m!4160673))

(declare-fun m!4160675 () Bool)

(assert (=> b!3655279 m!4160675))

(declare-fun m!4160677 () Bool)

(assert (=> b!3655279 m!4160677))

(declare-fun m!4160679 () Bool)

(assert (=> b!3655279 m!4160679))

(declare-fun m!4160681 () Bool)

(assert (=> b!3655279 m!4160681))

(declare-fun m!4160683 () Bool)

(assert (=> b!3655279 m!4160683))

(declare-fun m!4160685 () Bool)

(assert (=> bm!264273 m!4160685))

(declare-fun m!4160687 () Bool)

(assert (=> b!3655313 m!4160687))

(declare-fun m!4160689 () Bool)

(assert (=> b!3655313 m!4160689))

(declare-fun m!4160691 () Bool)

(assert (=> b!3655313 m!4160691))

(declare-fun m!4160693 () Bool)

(assert (=> b!3655281 m!4160693))

(declare-fun m!4160695 () Bool)

(assert (=> b!3655281 m!4160695))

(declare-fun m!4160697 () Bool)

(assert (=> b!3655281 m!4160697))

(declare-fun m!4160699 () Bool)

(assert (=> b!3655281 m!4160699))

(declare-fun m!4160701 () Bool)

(assert (=> b!3655281 m!4160701))

(declare-fun m!4160703 () Bool)

(assert (=> b!3655315 m!4160703))

(declare-fun m!4160705 () Bool)

(assert (=> b!3655321 m!4160705))

(declare-fun m!4160707 () Bool)

(assert (=> b!3655321 m!4160707))

(declare-fun m!4160709 () Bool)

(assert (=> b!3655321 m!4160709))

(declare-fun m!4160711 () Bool)

(assert (=> b!3655298 m!4160711))

(declare-fun m!4160713 () Bool)

(assert (=> b!3655298 m!4160713))

(declare-fun m!4160715 () Bool)

(assert (=> b!3655298 m!4160715))

(declare-fun m!4160717 () Bool)

(assert (=> b!3655292 m!4160717))

(declare-fun m!4160719 () Bool)

(assert (=> b!3655285 m!4160719))

(declare-fun m!4160721 () Bool)

(assert (=> b!3655285 m!4160721))

(declare-fun m!4160723 () Bool)

(assert (=> b!3655309 m!4160723))

(declare-fun m!4160725 () Bool)

(assert (=> b!3655309 m!4160725))

(declare-fun m!4160727 () Bool)

(assert (=> b!3655310 m!4160727))

(declare-fun m!4160729 () Bool)

(assert (=> b!3655305 m!4160729))

(declare-fun m!4160731 () Bool)

(assert (=> b!3655305 m!4160731))

(declare-fun m!4160733 () Bool)

(assert (=> b!3655287 m!4160733))

(declare-fun m!4160735 () Bool)

(assert (=> b!3655287 m!4160735))

(declare-fun m!4160737 () Bool)

(assert (=> b!3655284 m!4160737))

(declare-fun m!4160739 () Bool)

(assert (=> bm!264272 m!4160739))

(declare-fun m!4160741 () Bool)

(assert (=> b!3655302 m!4160741))

(declare-fun m!4160743 () Bool)

(assert (=> start!341894 m!4160743))

(assert (=> bm!264274 m!4160739))

(declare-fun m!4160745 () Bool)

(assert (=> b!3655301 m!4160745))

(declare-fun m!4160747 () Bool)

(assert (=> bm!264271 m!4160747))

(declare-fun m!4160749 () Bool)

(assert (=> b!3655303 m!4160749))

(declare-fun m!4160751 () Bool)

(assert (=> b!3655311 m!4160751))

(declare-fun m!4160753 () Bool)

(assert (=> b!3655286 m!4160753))

(declare-fun m!4160755 () Bool)

(assert (=> b!3655314 m!4160755))

(declare-fun m!4160757 () Bool)

(assert (=> b!3655319 m!4160757))

(declare-fun m!4160759 () Bool)

(assert (=> b!3655319 m!4160759))

(declare-fun m!4160761 () Bool)

(assert (=> b!3655319 m!4160761))

(declare-fun m!4160763 () Bool)

(assert (=> b!3655319 m!4160763))

(declare-fun m!4160765 () Bool)

(assert (=> b!3655319 m!4160765))

(declare-fun m!4160767 () Bool)

(assert (=> b!3655319 m!4160767))

(assert (=> b!3655319 m!4160757))

(declare-fun m!4160769 () Bool)

(assert (=> b!3655319 m!4160769))

(declare-fun m!4160771 () Bool)

(assert (=> b!3655319 m!4160771))

(declare-fun m!4160773 () Bool)

(assert (=> b!3655319 m!4160773))

(declare-fun m!4160775 () Bool)

(assert (=> b!3655319 m!4160775))

(declare-fun m!4160777 () Bool)

(assert (=> b!3655319 m!4160777))

(declare-fun m!4160779 () Bool)

(assert (=> b!3655319 m!4160779))

(declare-fun m!4160781 () Bool)

(assert (=> b!3655319 m!4160781))

(declare-fun m!4160783 () Bool)

(assert (=> b!3655319 m!4160783))

(declare-fun m!4160785 () Bool)

(assert (=> b!3655319 m!4160785))

(assert (=> b!3655283 m!4160779))

(assert (=> b!3655283 m!4160779))

(declare-fun m!4160787 () Bool)

(assert (=> b!3655283 m!4160787))

(assert (=> b!3655283 m!4160787))

(declare-fun m!4160789 () Bool)

(assert (=> b!3655283 m!4160789))

(declare-fun m!4160791 () Bool)

(assert (=> b!3655283 m!4160791))

(check-sat b_and!270737 (not b!3655313) (not b!3655311) (not b!3655307) (not b!3655314) tp_is_empty!18165 (not bm!264275) (not b!3655322) (not b!3655284) (not b!3655291) b_and!270739 (not b!3655279) b_and!270745 (not b!3655309) (not b!3655316) (not b!3655319) (not b!3655285) (not b!3655298) (not b!3655282) (not b_next!97025) b_and!270735 (not b_next!97027) (not b_next!97037) (not b!3655292) (not b!3655297) b_and!270741 b_and!270731 (not b!3655324) (not b!3655302) (not b!3655286) (not bm!264272) (not b!3655289) (not b!3655305) (not b!3655283) (not bm!264270) (not b!3655321) (not b_next!97035) b_and!270733 (not bm!264274) (not bm!264271) (not b!3655301) (not b!3655287) (not start!341894) (not b!3655315) (not b!3655312) (not bm!264273) (not b!3655320) (not b_next!97029) (not b!3655296) (not b!3655281) (not b_next!97033) (not b_next!97031) (not b!3655295) b_and!270743 (not b!3655310) (not b_next!97039) (not b!3655303))
(check-sat b_and!270737 (not b_next!97037) (not b_next!97029) b_and!270739 b_and!270745 (not b_next!97025) b_and!270735 (not b_next!97027) b_and!270741 b_and!270731 (not b_next!97035) b_and!270733 (not b_next!97033) (not b_next!97031) b_and!270743 (not b_next!97039))
