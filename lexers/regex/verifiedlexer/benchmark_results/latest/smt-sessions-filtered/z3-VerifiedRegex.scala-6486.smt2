; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340966 () Bool)

(assert start!340966)

(declare-fun b!3647408 () Bool)

(declare-fun b_free!95801 () Bool)

(declare-fun b_next!96505 () Bool)

(assert (=> b!3647408 (= b_free!95801 (not b_next!96505))))

(declare-fun tp!1112160 () Bool)

(declare-fun b_and!269491 () Bool)

(assert (=> b!3647408 (= tp!1112160 b_and!269491)))

(declare-fun b_free!95803 () Bool)

(declare-fun b_next!96507 () Bool)

(assert (=> b!3647408 (= b_free!95803 (not b_next!96507))))

(declare-fun tp!1112159 () Bool)

(declare-fun b_and!269493 () Bool)

(assert (=> b!3647408 (= tp!1112159 b_and!269493)))

(declare-fun b!3647433 () Bool)

(declare-fun b_free!95805 () Bool)

(declare-fun b_next!96509 () Bool)

(assert (=> b!3647433 (= b_free!95805 (not b_next!96509))))

(declare-fun tp!1112161 () Bool)

(declare-fun b_and!269495 () Bool)

(assert (=> b!3647433 (= tp!1112161 b_and!269495)))

(declare-fun b_free!95807 () Bool)

(declare-fun b_next!96511 () Bool)

(assert (=> b!3647433 (= b_free!95807 (not b_next!96511))))

(declare-fun tp!1112164 () Bool)

(declare-fun b_and!269497 () Bool)

(assert (=> b!3647433 (= tp!1112164 b_and!269497)))

(declare-fun b!3647429 () Bool)

(declare-fun b_free!95809 () Bool)

(declare-fun b_next!96513 () Bool)

(assert (=> b!3647429 (= b_free!95809 (not b_next!96513))))

(declare-fun tp!1112157 () Bool)

(declare-fun b_and!269499 () Bool)

(assert (=> b!3647429 (= tp!1112157 b_and!269499)))

(declare-fun b_free!95811 () Bool)

(declare-fun b_next!96515 () Bool)

(assert (=> b!3647429 (= b_free!95811 (not b_next!96515))))

(declare-fun tp!1112165 () Bool)

(declare-fun b_and!269501 () Bool)

(assert (=> b!3647429 (= tp!1112165 b_and!269501)))

(declare-fun b!3647409 () Bool)

(declare-fun b_free!95813 () Bool)

(declare-fun b_next!96517 () Bool)

(assert (=> b!3647409 (= b_free!95813 (not b_next!96517))))

(declare-fun tp!1112155 () Bool)

(declare-fun b_and!269503 () Bool)

(assert (=> b!3647409 (= tp!1112155 b_and!269503)))

(declare-fun b_free!95815 () Bool)

(declare-fun b_next!96519 () Bool)

(assert (=> b!3647409 (= b_free!95815 (not b_next!96519))))

(declare-fun tp!1112158 () Bool)

(declare-fun b_and!269505 () Bool)

(assert (=> b!3647409 (= tp!1112158 b_and!269505)))

(declare-fun bm!263587 () Bool)

(declare-fun call!263592 () Bool)

(declare-datatypes ((C!21208 0))(
  ( (C!21209 (val!12652 Int)) )
))
(declare-datatypes ((List!38575 0))(
  ( (Nil!38451) (Cons!38451 (h!43871 C!21208) (t!297198 List!38575)) )
))
(declare-fun call!263594 () List!38575)

(declare-fun lt!1264266 () C!21208)

(declare-fun contains!7569 (List!38575 C!21208) Bool)

(assert (=> bm!263587 (= call!263592 (contains!7569 call!263594 lt!1264266))))

(declare-fun e!2258039 () Bool)

(declare-fun b!3647402 () Bool)

(declare-fun e!2258043 () Bool)

(declare-fun tp!1112163 () Bool)

(declare-datatypes ((List!38576 0))(
  ( (Nil!38452) (Cons!38452 (h!43872 (_ BitVec 16)) (t!297199 List!38576)) )
))
(declare-datatypes ((TokenValue!5982 0))(
  ( (FloatLiteralValue!11964 (text!42319 List!38576)) (TokenValueExt!5981 (__x!24181 Int)) (Broken!29910 (value!184366 List!38576)) (Object!6105) (End!5982) (Def!5982) (Underscore!5982) (Match!5982) (Else!5982) (Error!5982) (Case!5982) (If!5982) (Extends!5982) (Abstract!5982) (Class!5982) (Val!5982) (DelimiterValue!11964 (del!6042 List!38576)) (KeywordValue!5988 (value!184367 List!38576)) (CommentValue!11964 (value!184368 List!38576)) (WhitespaceValue!11964 (value!184369 List!38576)) (IndentationValue!5982 (value!184370 List!38576)) (String!43243) (Int32!5982) (Broken!29911 (value!184371 List!38576)) (Boolean!5983) (Unit!55367) (OperatorValue!5985 (op!6042 List!38576)) (IdentifierValue!11964 (value!184372 List!38576)) (IdentifierValue!11965 (value!184373 List!38576)) (WhitespaceValue!11965 (value!184374 List!38576)) (True!11964) (False!11964) (Broken!29912 (value!184375 List!38576)) (Broken!29913 (value!184376 List!38576)) (True!11965) (RightBrace!5982) (RightBracket!5982) (Colon!5982) (Null!5982) (Comma!5982) (LeftBracket!5982) (False!11965) (LeftBrace!5982) (ImaginaryLiteralValue!5982 (text!42320 List!38576)) (StringLiteralValue!17946 (value!184377 List!38576)) (EOFValue!5982 (value!184378 List!38576)) (IdentValue!5982 (value!184379 List!38576)) (DelimiterValue!11965 (value!184380 List!38576)) (DedentValue!5982 (value!184381 List!38576)) (NewLineValue!5982 (value!184382 List!38576)) (IntegerValue!17946 (value!184383 (_ BitVec 32)) (text!42321 List!38576)) (IntegerValue!17947 (value!184384 Int) (text!42322 List!38576)) (Times!5982) (Or!5982) (Equal!5982) (Minus!5982) (Broken!29914 (value!184385 List!38576)) (And!5982) (Div!5982) (LessEqual!5982) (Mod!5982) (Concat!16493) (Not!5982) (Plus!5982) (SpaceValue!5982 (value!184386 List!38576)) (IntegerValue!17948 (value!184387 Int) (text!42323 List!38576)) (StringLiteralValue!17947 (text!42324 List!38576)) (FloatLiteralValue!11965 (text!42325 List!38576)) (BytesLiteralValue!5982 (value!184388 List!38576)) (CommentValue!11965 (value!184389 List!38576)) (StringLiteralValue!17948 (value!184390 List!38576)) (ErrorTokenValue!5982 (msg!6043 List!38576)) )
))
(declare-datatypes ((Regex!10511 0))(
  ( (ElementMatch!10511 (c!630494 C!21208)) (Concat!16494 (regOne!21534 Regex!10511) (regTwo!21534 Regex!10511)) (EmptyExpr!10511) (Star!10511 (reg!10840 Regex!10511)) (EmptyLang!10511) (Union!10511 (regOne!21535 Regex!10511) (regTwo!21535 Regex!10511)) )
))
(declare-datatypes ((String!43244 0))(
  ( (String!43245 (value!184391 String)) )
))
(declare-datatypes ((IArray!23499 0))(
  ( (IArray!23500 (innerList!11807 List!38575)) )
))
(declare-datatypes ((Conc!11747 0))(
  ( (Node!11747 (left!30021 Conc!11747) (right!30351 Conc!11747) (csize!23724 Int) (cheight!11958 Int)) (Leaf!18234 (xs!14949 IArray!23499) (csize!23725 Int)) (Empty!11747) )
))
(declare-datatypes ((BalanceConc!23108 0))(
  ( (BalanceConc!23109 (c!630495 Conc!11747)) )
))
(declare-datatypes ((TokenValueInjection!11392 0))(
  ( (TokenValueInjection!11393 (toValue!8044 Int) (toChars!7903 Int)) )
))
(declare-datatypes ((Rule!11304 0))(
  ( (Rule!11305 (regex!5752 Regex!10511) (tag!6512 String!43244) (isSeparator!5752 Bool) (transformation!5752 TokenValueInjection!11392)) )
))
(declare-fun anOtherTypeRule!33 () Rule!11304)

(declare-fun inv!51893 (String!43244) Bool)

(declare-fun inv!51896 (TokenValueInjection!11392) Bool)

(assert (=> b!3647402 (= e!2258039 (and tp!1112163 (inv!51893 (tag!6512 anOtherTypeRule!33)) (inv!51896 (transformation!5752 anOtherTypeRule!33)) e!2258043))))

(declare-fun b!3647403 () Bool)

(declare-datatypes ((Unit!55368 0))(
  ( (Unit!55369) )
))
(declare-fun e!2258041 () Unit!55368)

(declare-fun Unit!55370 () Unit!55368)

(assert (=> b!3647403 (= e!2258041 Unit!55370)))

(declare-fun lt!1264280 () Unit!55368)

(declare-fun lt!1264293 () List!38575)

(declare-fun rule!403 () Rule!11304)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!700 (Regex!10511 List!38575 C!21208) Unit!55368)

(assert (=> b!3647403 (= lt!1264280 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!700 (regex!5752 rule!403) lt!1264293 lt!1264266))))

(assert (=> b!3647403 false))

(declare-fun b!3647404 () Bool)

(declare-fun res!1479289 () Bool)

(declare-fun e!2258042 () Bool)

(assert (=> b!3647404 (=> res!1479289 e!2258042)))

(declare-fun lt!1264265 () C!21208)

(declare-fun usedCharacters!964 (Regex!10511) List!38575)

(assert (=> b!3647404 (= res!1479289 (not (contains!7569 (usedCharacters!964 (regex!5752 anOtherTypeRule!33)) lt!1264265)))))

(declare-fun b!3647405 () Bool)

(declare-fun e!2258035 () Unit!55368)

(declare-fun e!2258045 () Unit!55368)

(assert (=> b!3647405 (= e!2258035 e!2258045)))

(declare-fun c!630493 () Bool)

(declare-datatypes ((Token!10870 0))(
  ( (Token!10871 (value!184392 TokenValue!5982) (rule!8546 Rule!11304) (size!29355 Int) (originalCharacters!6466 List!38575)) )
))
(declare-datatypes ((tuple2!38324 0))(
  ( (tuple2!38325 (_1!22296 Token!10870) (_2!22296 List!38575)) )
))
(declare-fun lt!1264283 () tuple2!38324)

(assert (=> b!3647405 (= c!630493 (not (isSeparator!5752 (rule!8546 (_1!22296 lt!1264283)))))))

(declare-fun b!3647406 () Bool)

(declare-fun e!2258028 () Bool)

(declare-fun lt!1264260 () Rule!11304)

(assert (=> b!3647406 (= e!2258028 (= (rule!8546 (_1!22296 lt!1264283)) lt!1264260))))

(declare-fun e!2258033 () Bool)

(declare-fun e!2258051 () Bool)

(declare-fun tp!1112156 () Bool)

(declare-fun b!3647407 () Bool)

(declare-datatypes ((List!38577 0))(
  ( (Nil!38453) (Cons!38453 (h!43873 Rule!11304) (t!297200 List!38577)) )
))
(declare-fun rules!3307 () List!38577)

(assert (=> b!3647407 (= e!2258033 (and tp!1112156 (inv!51893 (tag!6512 (h!43873 rules!3307))) (inv!51896 (transformation!5752 (h!43873 rules!3307))) e!2258051))))

(assert (=> b!3647409 (= e!2258051 (and tp!1112155 tp!1112158))))

(declare-fun b!3647410 () Bool)

(declare-fun res!1479295 () Bool)

(declare-fun e!2258040 () Bool)

(assert (=> b!3647410 (=> (not res!1479295) (not e!2258040))))

(declare-datatypes ((LexerInterface!5341 0))(
  ( (LexerInterfaceExt!5338 (__x!24182 Int)) (Lexer!5339) )
))
(declare-fun thiss!23823 () LexerInterface!5341)

(declare-fun rulesInvariant!4738 (LexerInterface!5341 List!38577) Bool)

(assert (=> b!3647410 (= res!1479295 (rulesInvariant!4738 thiss!23823 rules!3307))))

(declare-fun b!3647411 () Bool)

(declare-fun res!1479283 () Bool)

(declare-fun e!2258055 () Bool)

(assert (=> b!3647411 (=> (not res!1479283) (not e!2258055))))

(declare-fun lt!1264288 () tuple2!38324)

(declare-fun isEmpty!22780 (List!38575) Bool)

(assert (=> b!3647411 (= res!1479283 (isEmpty!22780 (_2!22296 lt!1264288)))))

(declare-fun b!3647412 () Bool)

(declare-fun e!2258029 () Unit!55368)

(assert (=> b!3647412 (= e!2258035 e!2258029)))

(declare-fun c!630490 () Bool)

(assert (=> b!3647412 (= c!630490 (isSeparator!5752 (rule!8546 (_1!22296 lt!1264283))))))

(declare-fun b!3647413 () Bool)

(declare-fun e!2258052 () Bool)

(declare-fun e!2258050 () Bool)

(assert (=> b!3647413 (= e!2258052 e!2258050)))

(declare-fun res!1479281 () Bool)

(assert (=> b!3647413 (=> res!1479281 e!2258050)))

(declare-datatypes ((Option!8132 0))(
  ( (None!8131) (Some!8131 (v!37983 tuple2!38324)) )
))
(declare-fun lt!1264292 () Option!8132)

(declare-fun lt!1264278 () List!38575)

(assert (=> b!3647413 (= res!1479281 (or (not (= lt!1264278 (_2!22296 lt!1264283))) (not (= lt!1264292 (Some!8131 (tuple2!38325 (_1!22296 lt!1264283) lt!1264278))))))))

(assert (=> b!3647413 (= (_2!22296 lt!1264283) lt!1264278)))

(declare-fun lt!1264289 () List!38575)

(declare-fun lt!1264267 () Unit!55368)

(declare-fun lt!1264269 () List!38575)

(declare-fun lemmaSamePrefixThenSameSuffix!1442 (List!38575 List!38575 List!38575 List!38575 List!38575) Unit!55368)

(assert (=> b!3647413 (= lt!1264267 (lemmaSamePrefixThenSameSuffix!1442 lt!1264289 (_2!22296 lt!1264283) lt!1264289 lt!1264278 lt!1264269))))

(declare-fun getSuffix!1668 (List!38575 List!38575) List!38575)

(assert (=> b!3647413 (= lt!1264278 (getSuffix!1668 lt!1264269 lt!1264289))))

(declare-fun lt!1264259 () TokenValue!5982)

(declare-fun lt!1264286 () Int)

(assert (=> b!3647413 (= lt!1264292 (Some!8131 (tuple2!38325 (Token!10871 lt!1264259 (rule!8546 (_1!22296 lt!1264283)) lt!1264286 lt!1264289) (_2!22296 lt!1264283))))))

(declare-fun maxPrefixOneRule!2013 (LexerInterface!5341 Rule!11304 List!38575) Option!8132)

(assert (=> b!3647413 (= lt!1264292 (maxPrefixOneRule!2013 thiss!23823 (rule!8546 (_1!22296 lt!1264283)) lt!1264269))))

(declare-fun size!29356 (List!38575) Int)

(assert (=> b!3647413 (= lt!1264286 (size!29356 lt!1264289))))

(declare-fun apply!9254 (TokenValueInjection!11392 BalanceConc!23108) TokenValue!5982)

(declare-fun seqFromList!4301 (List!38575) BalanceConc!23108)

(assert (=> b!3647413 (= lt!1264259 (apply!9254 (transformation!5752 (rule!8546 (_1!22296 lt!1264283))) (seqFromList!4301 lt!1264289)))))

(declare-fun lt!1264272 () Unit!55368)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1069 (LexerInterface!5341 List!38577 List!38575 List!38575 List!38575 Rule!11304) Unit!55368)

(assert (=> b!3647413 (= lt!1264272 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1069 thiss!23823 rules!3307 lt!1264289 lt!1264269 (_2!22296 lt!1264283) (rule!8546 (_1!22296 lt!1264283))))))

(declare-fun b!3647414 () Bool)

(declare-fun res!1479299 () Bool)

(assert (=> b!3647414 (=> (not res!1479299) (not e!2258040))))

(declare-fun isEmpty!22781 (List!38577) Bool)

(assert (=> b!3647414 (= res!1479299 (not (isEmpty!22781 rules!3307)))))

(declare-fun tp!1112153 () Bool)

(declare-fun token!511 () Token!10870)

(declare-fun e!2258053 () Bool)

(declare-fun b!3647415 () Bool)

(declare-fun e!2258056 () Bool)

(assert (=> b!3647415 (= e!2258056 (and tp!1112153 (inv!51893 (tag!6512 (rule!8546 token!511))) (inv!51896 (transformation!5752 (rule!8546 token!511))) e!2258053))))

(declare-fun e!2258047 () Bool)

(declare-fun b!3647416 () Bool)

(declare-fun tp!1112162 () Bool)

(declare-fun inv!21 (TokenValue!5982) Bool)

(assert (=> b!3647416 (= e!2258047 (and (inv!21 (value!184392 token!511)) e!2258056 tp!1112162))))

(declare-fun b!3647417 () Bool)

(declare-fun e!2258034 () Bool)

(declare-fun tp_is_empty!18105 () Bool)

(declare-fun tp!1112152 () Bool)

(assert (=> b!3647417 (= e!2258034 (and tp_is_empty!18105 tp!1112152))))

(declare-fun b!3647418 () Bool)

(assert (=> b!3647418 false))

(declare-fun lt!1264291 () Unit!55368)

(declare-fun call!263593 () Unit!55368)

(assert (=> b!3647418 (= lt!1264291 call!263593)))

(assert (=> b!3647418 (not call!263592)))

(declare-fun lt!1264287 () Unit!55368)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!280 (LexerInterface!5341 List!38577 List!38577 Rule!11304 Rule!11304 C!21208) Unit!55368)

(assert (=> b!3647418 (= lt!1264287 (lemmaSepRuleNotContainsCharContainedInANonSepRule!280 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8546 (_1!22296 lt!1264283)) lt!1264266))))

(declare-fun Unit!55371 () Unit!55368)

(assert (=> b!3647418 (= e!2258029 Unit!55371)))

(declare-fun b!3647419 () Bool)

(declare-fun e!2258026 () Bool)

(assert (=> b!3647419 (= e!2258026 e!2258055)))

(declare-fun res!1479280 () Bool)

(assert (=> b!3647419 (=> (not res!1479280) (not e!2258055))))

(assert (=> b!3647419 (= res!1479280 (= (_1!22296 lt!1264288) token!511))))

(declare-fun lt!1264284 () Option!8132)

(declare-fun get!12618 (Option!8132) tuple2!38324)

(assert (=> b!3647419 (= lt!1264288 (get!12618 lt!1264284))))

(declare-fun b!3647420 () Bool)

(declare-fun res!1479290 () Bool)

(declare-fun e!2258044 () Bool)

(assert (=> b!3647420 (=> res!1479290 e!2258044)))

(declare-fun suffix!1395 () List!38575)

(assert (=> b!3647420 (= res!1479290 (isEmpty!22780 suffix!1395))))

(declare-fun b!3647421 () Bool)

(declare-fun e!2258032 () Bool)

(assert (=> b!3647421 (= e!2258032 e!2258028)))

(declare-fun res!1479294 () Bool)

(assert (=> b!3647421 (=> (not res!1479294) (not e!2258028))))

(declare-fun matchR!5080 (Regex!10511 List!38575) Bool)

(declare-fun list!14246 (BalanceConc!23108) List!38575)

(declare-fun charsOf!3766 (Token!10870) BalanceConc!23108)

(assert (=> b!3647421 (= res!1479294 (matchR!5080 (regex!5752 lt!1264260) (list!14246 (charsOf!3766 (_1!22296 lt!1264283)))))))

(declare-datatypes ((Option!8133 0))(
  ( (None!8132) (Some!8132 (v!37984 Rule!11304)) )
))
(declare-fun lt!1264273 () Option!8133)

(declare-fun get!12619 (Option!8133) Rule!11304)

(assert (=> b!3647421 (= lt!1264260 (get!12619 lt!1264273))))

(declare-fun b!3647422 () Bool)

(assert (=> b!3647422 (= e!2258044 e!2258042)))

(declare-fun res!1479297 () Bool)

(assert (=> b!3647422 (=> res!1479297 e!2258042)))

(declare-fun lt!1264285 () List!38575)

(assert (=> b!3647422 (= res!1479297 (contains!7569 lt!1264285 lt!1264265))))

(declare-fun head!7762 (List!38575) C!21208)

(assert (=> b!3647422 (= lt!1264265 (head!7762 suffix!1395))))

(assert (=> b!3647422 (= lt!1264285 (usedCharacters!964 (regex!5752 rule!403)))))

(declare-fun b!3647423 () Bool)

(declare-fun Unit!55372 () Unit!55368)

(assert (=> b!3647423 (= e!2258045 Unit!55372)))

(declare-fun b!3647424 () Bool)

(declare-fun e!2258049 () Bool)

(declare-fun tp!1112166 () Bool)

(assert (=> b!3647424 (= e!2258049 (and e!2258033 tp!1112166))))

(declare-fun b!3647425 () Bool)

(declare-fun res!1479298 () Bool)

(assert (=> b!3647425 (=> (not res!1479298) (not e!2258055))))

(assert (=> b!3647425 (= res!1479298 (= (rule!8546 token!511) rule!403))))

(declare-fun b!3647426 () Bool)

(declare-fun Unit!55373 () Unit!55368)

(assert (=> b!3647426 (= e!2258029 Unit!55373)))

(declare-fun b!3647427 () Bool)

(declare-fun Unit!55374 () Unit!55368)

(assert (=> b!3647427 (= e!2258041 Unit!55374)))

(declare-fun b!3647428 () Bool)

(declare-fun res!1479286 () Bool)

(declare-fun e!2258027 () Bool)

(assert (=> b!3647428 (=> res!1479286 e!2258027)))

(assert (=> b!3647428 (= res!1479286 (not (matchR!5080 (regex!5752 (rule!8546 (_1!22296 lt!1264283))) lt!1264289)))))

(declare-fun e!2258036 () Bool)

(assert (=> b!3647429 (= e!2258036 (and tp!1112157 tp!1112165))))

(declare-fun b!3647430 () Bool)

(assert (=> b!3647430 (= e!2258040 e!2258026)))

(declare-fun res!1479291 () Bool)

(assert (=> b!3647430 (=> (not res!1479291) (not e!2258026))))

(declare-fun isDefined!6364 (Option!8132) Bool)

(assert (=> b!3647430 (= res!1479291 (isDefined!6364 lt!1264284))))

(declare-fun maxPrefix!2875 (LexerInterface!5341 List!38577 List!38575) Option!8132)

(assert (=> b!3647430 (= lt!1264284 (maxPrefix!2875 thiss!23823 rules!3307 lt!1264293))))

(declare-fun lt!1264261 () BalanceConc!23108)

(assert (=> b!3647430 (= lt!1264293 (list!14246 lt!1264261))))

(assert (=> b!3647430 (= lt!1264261 (charsOf!3766 token!511))))

(declare-fun bm!263588 () Bool)

(assert (=> bm!263588 (= call!263593 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!700 (regex!5752 (rule!8546 (_1!22296 lt!1264283))) lt!1264289 lt!1264266))))

(declare-fun b!3647431 () Bool)

(assert (=> b!3647431 (= e!2258055 (not e!2258044))))

(declare-fun res!1479287 () Bool)

(assert (=> b!3647431 (=> res!1479287 e!2258044)))

(assert (=> b!3647431 (= res!1479287 (not (matchR!5080 (regex!5752 rule!403) lt!1264293)))))

(declare-fun ruleValid!2016 (LexerInterface!5341 Rule!11304) Bool)

(assert (=> b!3647431 (ruleValid!2016 thiss!23823 rule!403)))

(declare-fun lt!1264295 () Unit!55368)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1170 (LexerInterface!5341 Rule!11304 List!38577) Unit!55368)

(assert (=> b!3647431 (= lt!1264295 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1170 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3647432 () Bool)

(assert (=> b!3647432 false))

(declare-fun lt!1264294 () Unit!55368)

(assert (=> b!3647432 (= lt!1264294 call!263593)))

(assert (=> b!3647432 (not call!263592)))

(declare-fun lt!1264279 () Unit!55368)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!398 (LexerInterface!5341 List!38577 List!38577 Rule!11304 Rule!11304 C!21208) Unit!55368)

(assert (=> b!3647432 (= lt!1264279 (lemmaNonSepRuleNotContainsCharContainedInASepRule!398 thiss!23823 rules!3307 rules!3307 (rule!8546 (_1!22296 lt!1264283)) rule!403 lt!1264266))))

(declare-fun Unit!55375 () Unit!55368)

(assert (=> b!3647432 (= e!2258045 Unit!55375)))

(declare-fun res!1479292 () Bool)

(assert (=> start!340966 (=> (not res!1479292) (not e!2258040))))

(get-info :version)

(assert (=> start!340966 (= res!1479292 ((_ is Lexer!5339) thiss!23823))))

(assert (=> start!340966 e!2258040))

(assert (=> start!340966 e!2258049))

(assert (=> start!340966 e!2258034))

(assert (=> start!340966 true))

(declare-fun inv!51897 (Token!10870) Bool)

(assert (=> start!340966 (and (inv!51897 token!511) e!2258047)))

(declare-fun e!2258030 () Bool)

(assert (=> start!340966 e!2258030))

(assert (=> start!340966 e!2258039))

(assert (=> b!3647408 (= e!2258053 (and tp!1112160 tp!1112159))))

(assert (=> b!3647433 (= e!2258043 (and tp!1112161 tp!1112164))))

(declare-fun b!3647434 () Bool)

(declare-fun e!2258038 () Bool)

(assert (=> b!3647434 (= e!2258038 true)))

(assert (=> b!3647434 (contains!7569 lt!1264289 lt!1264265)))

(declare-fun lt!1264290 () Unit!55368)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!60 (List!38575 List!38575 List!38575 List!38575) Unit!55368)

(assert (=> b!3647434 (= lt!1264290 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!60 lt!1264293 suffix!1395 lt!1264289 lt!1264269))))

(declare-fun b!3647435 () Bool)

(declare-fun res!1479296 () Bool)

(assert (=> b!3647435 (=> (not res!1479296) (not e!2258040))))

(declare-fun contains!7570 (List!38577 Rule!11304) Bool)

(assert (=> b!3647435 (= res!1479296 (contains!7570 rules!3307 anOtherTypeRule!33))))

(declare-fun bm!263589 () Bool)

(assert (=> bm!263589 (= call!263594 (usedCharacters!964 (regex!5752 (rule!8546 (_1!22296 lt!1264283)))))))

(declare-fun b!3647436 () Bool)

(declare-fun res!1479282 () Bool)

(assert (=> b!3647436 (=> res!1479282 e!2258042)))

(declare-fun sepAndNonSepRulesDisjointChars!1920 (List!38577 List!38577) Bool)

(assert (=> b!3647436 (= res!1479282 (not (sepAndNonSepRulesDisjointChars!1920 rules!3307 rules!3307)))))

(declare-fun b!3647437 () Bool)

(assert (=> b!3647437 (= e!2258027 e!2258052)))

(declare-fun res!1479288 () Bool)

(assert (=> b!3647437 (=> res!1479288 e!2258052)))

(declare-fun lt!1264282 () Int)

(declare-fun lt!1264276 () Option!8132)

(declare-fun lt!1264270 () TokenValue!5982)

(assert (=> b!3647437 (= res!1479288 (not (= lt!1264276 (Some!8131 (tuple2!38325 (Token!10871 lt!1264270 (rule!8546 (_1!22296 lt!1264283)) lt!1264282 lt!1264289) (_2!22296 lt!1264283))))))))

(declare-fun lt!1264274 () BalanceConc!23108)

(declare-fun size!29357 (BalanceConc!23108) Int)

(assert (=> b!3647437 (= lt!1264282 (size!29357 lt!1264274))))

(assert (=> b!3647437 (= lt!1264270 (apply!9254 (transformation!5752 (rule!8546 (_1!22296 lt!1264283))) lt!1264274))))

(declare-fun lt!1264271 () Unit!55368)

(declare-fun lemmaCharactersSize!797 (Token!10870) Unit!55368)

(assert (=> b!3647437 (= lt!1264271 (lemmaCharactersSize!797 (_1!22296 lt!1264283)))))

(declare-fun lt!1264281 () Unit!55368)

(declare-fun lemmaEqSameImage!935 (TokenValueInjection!11392 BalanceConc!23108 BalanceConc!23108) Unit!55368)

(assert (=> b!3647437 (= lt!1264281 (lemmaEqSameImage!935 (transformation!5752 (rule!8546 (_1!22296 lt!1264283))) lt!1264274 (seqFromList!4301 (originalCharacters!6466 (_1!22296 lt!1264283)))))))

(declare-fun lt!1264263 () Unit!55368)

(declare-fun lemmaSemiInverse!1501 (TokenValueInjection!11392 BalanceConc!23108) Unit!55368)

(assert (=> b!3647437 (= lt!1264263 (lemmaSemiInverse!1501 (transformation!5752 (rule!8546 (_1!22296 lt!1264283))) lt!1264274))))

(declare-fun b!3647438 () Bool)

(declare-fun res!1479284 () Bool)

(assert (=> b!3647438 (=> (not res!1479284) (not e!2258040))))

(assert (=> b!3647438 (= res!1479284 (contains!7570 rules!3307 rule!403))))

(declare-fun b!3647439 () Bool)

(assert (=> b!3647439 (= e!2258050 e!2258038)))

(declare-fun res!1479278 () Bool)

(assert (=> b!3647439 (=> res!1479278 e!2258038)))

(assert (=> b!3647439 (= res!1479278 (<= lt!1264282 (size!29357 lt!1264261)))))

(declare-fun lt!1264275 () Unit!55368)

(assert (=> b!3647439 (= lt!1264275 e!2258035)))

(declare-fun c!630492 () Bool)

(assert (=> b!3647439 (= c!630492 (isSeparator!5752 rule!403))))

(declare-fun lt!1264268 () Unit!55368)

(assert (=> b!3647439 (= lt!1264268 e!2258041)))

(declare-fun c!630491 () Bool)

(assert (=> b!3647439 (= c!630491 (not (contains!7569 lt!1264285 lt!1264266)))))

(assert (=> b!3647439 (= lt!1264266 (head!7762 lt!1264289))))

(declare-fun b!3647440 () Bool)

(declare-fun tp!1112154 () Bool)

(assert (=> b!3647440 (= e!2258030 (and tp!1112154 (inv!51893 (tag!6512 rule!403)) (inv!51896 (transformation!5752 rule!403)) e!2258036))))

(declare-fun b!3647441 () Bool)

(declare-fun res!1479285 () Bool)

(assert (=> b!3647441 (=> (not res!1479285) (not e!2258040))))

(assert (=> b!3647441 (= res!1479285 (not (= (isSeparator!5752 anOtherTypeRule!33) (isSeparator!5752 rule!403))))))

(declare-fun b!3647442 () Bool)

(assert (=> b!3647442 (= e!2258042 e!2258027)))

(declare-fun res!1479279 () Bool)

(assert (=> b!3647442 (=> res!1479279 e!2258027)))

(declare-fun isPrefix!3115 (List!38575 List!38575) Bool)

(assert (=> b!3647442 (= res!1479279 (not (isPrefix!3115 lt!1264289 lt!1264269)))))

(declare-fun ++!9568 (List!38575 List!38575) List!38575)

(assert (=> b!3647442 (isPrefix!3115 lt!1264289 (++!9568 lt!1264289 (_2!22296 lt!1264283)))))

(declare-fun lt!1264262 () Unit!55368)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2034 (List!38575 List!38575) Unit!55368)

(assert (=> b!3647442 (= lt!1264262 (lemmaConcatTwoListThenFirstIsPrefix!2034 lt!1264289 (_2!22296 lt!1264283)))))

(assert (=> b!3647442 (= lt!1264289 (list!14246 lt!1264274))))

(assert (=> b!3647442 (= lt!1264274 (charsOf!3766 (_1!22296 lt!1264283)))))

(assert (=> b!3647442 e!2258032))

(declare-fun res!1479293 () Bool)

(assert (=> b!3647442 (=> (not res!1479293) (not e!2258032))))

(declare-fun isDefined!6365 (Option!8133) Bool)

(assert (=> b!3647442 (= res!1479293 (isDefined!6365 lt!1264273))))

(declare-fun getRuleFromTag!1356 (LexerInterface!5341 List!38577 String!43244) Option!8133)

(assert (=> b!3647442 (= lt!1264273 (getRuleFromTag!1356 thiss!23823 rules!3307 (tag!6512 (rule!8546 (_1!22296 lt!1264283)))))))

(declare-fun lt!1264264 () Unit!55368)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1356 (LexerInterface!5341 List!38577 List!38575 Token!10870) Unit!55368)

(assert (=> b!3647442 (= lt!1264264 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1356 thiss!23823 rules!3307 lt!1264269 (_1!22296 lt!1264283)))))

(assert (=> b!3647442 (= lt!1264283 (get!12618 lt!1264276))))

(declare-fun lt!1264296 () Unit!55368)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1019 (LexerInterface!5341 List!38577 List!38575 List!38575) Unit!55368)

(assert (=> b!3647442 (= lt!1264296 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1019 thiss!23823 rules!3307 lt!1264293 suffix!1395))))

(assert (=> b!3647442 (= lt!1264276 (maxPrefix!2875 thiss!23823 rules!3307 lt!1264269))))

(assert (=> b!3647442 (isPrefix!3115 lt!1264293 lt!1264269)))

(declare-fun lt!1264277 () Unit!55368)

(assert (=> b!3647442 (= lt!1264277 (lemmaConcatTwoListThenFirstIsPrefix!2034 lt!1264293 suffix!1395))))

(assert (=> b!3647442 (= lt!1264269 (++!9568 lt!1264293 suffix!1395))))

(assert (= (and start!340966 res!1479292) b!3647414))

(assert (= (and b!3647414 res!1479299) b!3647410))

(assert (= (and b!3647410 res!1479295) b!3647438))

(assert (= (and b!3647438 res!1479284) b!3647435))

(assert (= (and b!3647435 res!1479296) b!3647441))

(assert (= (and b!3647441 res!1479285) b!3647430))

(assert (= (and b!3647430 res!1479291) b!3647419))

(assert (= (and b!3647419 res!1479280) b!3647411))

(assert (= (and b!3647411 res!1479283) b!3647425))

(assert (= (and b!3647425 res!1479298) b!3647431))

(assert (= (and b!3647431 (not res!1479287)) b!3647420))

(assert (= (and b!3647420 (not res!1479290)) b!3647422))

(assert (= (and b!3647422 (not res!1479297)) b!3647404))

(assert (= (and b!3647404 (not res!1479289)) b!3647436))

(assert (= (and b!3647436 (not res!1479282)) b!3647442))

(assert (= (and b!3647442 res!1479293) b!3647421))

(assert (= (and b!3647421 res!1479294) b!3647406))

(assert (= (and b!3647442 (not res!1479279)) b!3647428))

(assert (= (and b!3647428 (not res!1479286)) b!3647437))

(assert (= (and b!3647437 (not res!1479288)) b!3647413))

(assert (= (and b!3647413 (not res!1479281)) b!3647439))

(assert (= (and b!3647439 c!630491) b!3647403))

(assert (= (and b!3647439 (not c!630491)) b!3647427))

(assert (= (and b!3647439 c!630492) b!3647405))

(assert (= (and b!3647439 (not c!630492)) b!3647412))

(assert (= (and b!3647405 c!630493) b!3647432))

(assert (= (and b!3647405 (not c!630493)) b!3647423))

(assert (= (and b!3647412 c!630490) b!3647418))

(assert (= (and b!3647412 (not c!630490)) b!3647426))

(assert (= (or b!3647432 b!3647418) bm!263588))

(assert (= (or b!3647432 b!3647418) bm!263589))

(assert (= (or b!3647432 b!3647418) bm!263587))

(assert (= (and b!3647439 (not res!1479278)) b!3647434))

(assert (= b!3647407 b!3647409))

(assert (= b!3647424 b!3647407))

(assert (= (and start!340966 ((_ is Cons!38453) rules!3307)) b!3647424))

(assert (= (and start!340966 ((_ is Cons!38451) suffix!1395)) b!3647417))

(assert (= b!3647415 b!3647408))

(assert (= b!3647416 b!3647415))

(assert (= start!340966 b!3647416))

(assert (= b!3647440 b!3647429))

(assert (= start!340966 b!3647440))

(assert (= b!3647402 b!3647433))

(assert (= start!340966 b!3647402))

(declare-fun m!4151391 () Bool)

(assert (=> b!3647421 m!4151391))

(assert (=> b!3647421 m!4151391))

(declare-fun m!4151393 () Bool)

(assert (=> b!3647421 m!4151393))

(assert (=> b!3647421 m!4151393))

(declare-fun m!4151395 () Bool)

(assert (=> b!3647421 m!4151395))

(declare-fun m!4151397 () Bool)

(assert (=> b!3647421 m!4151397))

(declare-fun m!4151399 () Bool)

(assert (=> b!3647403 m!4151399))

(declare-fun m!4151401 () Bool)

(assert (=> b!3647442 m!4151401))

(declare-fun m!4151403 () Bool)

(assert (=> b!3647442 m!4151403))

(declare-fun m!4151405 () Bool)

(assert (=> b!3647442 m!4151405))

(declare-fun m!4151407 () Bool)

(assert (=> b!3647442 m!4151407))

(declare-fun m!4151409 () Bool)

(assert (=> b!3647442 m!4151409))

(declare-fun m!4151411 () Bool)

(assert (=> b!3647442 m!4151411))

(declare-fun m!4151413 () Bool)

(assert (=> b!3647442 m!4151413))

(declare-fun m!4151415 () Bool)

(assert (=> b!3647442 m!4151415))

(assert (=> b!3647442 m!4151403))

(declare-fun m!4151417 () Bool)

(assert (=> b!3647442 m!4151417))

(declare-fun m!4151419 () Bool)

(assert (=> b!3647442 m!4151419))

(declare-fun m!4151421 () Bool)

(assert (=> b!3647442 m!4151421))

(declare-fun m!4151423 () Bool)

(assert (=> b!3647442 m!4151423))

(assert (=> b!3647442 m!4151391))

(declare-fun m!4151425 () Bool)

(assert (=> b!3647442 m!4151425))

(declare-fun m!4151427 () Bool)

(assert (=> b!3647442 m!4151427))

(declare-fun m!4151429 () Bool)

(assert (=> b!3647415 m!4151429))

(declare-fun m!4151431 () Bool)

(assert (=> b!3647415 m!4151431))

(declare-fun m!4151433 () Bool)

(assert (=> b!3647411 m!4151433))

(declare-fun m!4151435 () Bool)

(assert (=> b!3647437 m!4151435))

(declare-fun m!4151437 () Bool)

(assert (=> b!3647437 m!4151437))

(declare-fun m!4151439 () Bool)

(assert (=> b!3647437 m!4151439))

(declare-fun m!4151441 () Bool)

(assert (=> b!3647437 m!4151441))

(declare-fun m!4151443 () Bool)

(assert (=> b!3647437 m!4151443))

(assert (=> b!3647437 m!4151437))

(declare-fun m!4151445 () Bool)

(assert (=> b!3647437 m!4151445))

(declare-fun m!4151447 () Bool)

(assert (=> b!3647434 m!4151447))

(declare-fun m!4151449 () Bool)

(assert (=> b!3647434 m!4151449))

(declare-fun m!4151451 () Bool)

(assert (=> b!3647418 m!4151451))

(declare-fun m!4151453 () Bool)

(assert (=> b!3647440 m!4151453))

(declare-fun m!4151455 () Bool)

(assert (=> b!3647440 m!4151455))

(declare-fun m!4151457 () Bool)

(assert (=> b!3647431 m!4151457))

(declare-fun m!4151459 () Bool)

(assert (=> b!3647431 m!4151459))

(declare-fun m!4151461 () Bool)

(assert (=> b!3647431 m!4151461))

(declare-fun m!4151463 () Bool)

(assert (=> b!3647413 m!4151463))

(declare-fun m!4151465 () Bool)

(assert (=> b!3647413 m!4151465))

(declare-fun m!4151467 () Bool)

(assert (=> b!3647413 m!4151467))

(declare-fun m!4151469 () Bool)

(assert (=> b!3647413 m!4151469))

(assert (=> b!3647413 m!4151465))

(declare-fun m!4151471 () Bool)

(assert (=> b!3647413 m!4151471))

(declare-fun m!4151473 () Bool)

(assert (=> b!3647413 m!4151473))

(declare-fun m!4151475 () Bool)

(assert (=> b!3647413 m!4151475))

(declare-fun m!4151477 () Bool)

(assert (=> bm!263589 m!4151477))

(declare-fun m!4151479 () Bool)

(assert (=> b!3647416 m!4151479))

(declare-fun m!4151481 () Bool)

(assert (=> b!3647410 m!4151481))

(declare-fun m!4151483 () Bool)

(assert (=> b!3647439 m!4151483))

(declare-fun m!4151485 () Bool)

(assert (=> b!3647439 m!4151485))

(declare-fun m!4151487 () Bool)

(assert (=> b!3647439 m!4151487))

(declare-fun m!4151489 () Bool)

(assert (=> b!3647430 m!4151489))

(declare-fun m!4151491 () Bool)

(assert (=> b!3647430 m!4151491))

(declare-fun m!4151493 () Bool)

(assert (=> b!3647430 m!4151493))

(declare-fun m!4151495 () Bool)

(assert (=> b!3647430 m!4151495))

(declare-fun m!4151497 () Bool)

(assert (=> b!3647419 m!4151497))

(declare-fun m!4151499 () Bool)

(assert (=> b!3647414 m!4151499))

(declare-fun m!4151501 () Bool)

(assert (=> start!340966 m!4151501))

(declare-fun m!4151503 () Bool)

(assert (=> b!3647435 m!4151503))

(declare-fun m!4151505 () Bool)

(assert (=> b!3647420 m!4151505))

(declare-fun m!4151507 () Bool)

(assert (=> b!3647407 m!4151507))

(declare-fun m!4151509 () Bool)

(assert (=> b!3647407 m!4151509))

(declare-fun m!4151511 () Bool)

(assert (=> bm!263588 m!4151511))

(declare-fun m!4151513 () Bool)

(assert (=> b!3647428 m!4151513))

(declare-fun m!4151515 () Bool)

(assert (=> b!3647438 m!4151515))

(declare-fun m!4151517 () Bool)

(assert (=> bm!263587 m!4151517))

(declare-fun m!4151519 () Bool)

(assert (=> b!3647404 m!4151519))

(assert (=> b!3647404 m!4151519))

(declare-fun m!4151521 () Bool)

(assert (=> b!3647404 m!4151521))

(declare-fun m!4151523 () Bool)

(assert (=> b!3647402 m!4151523))

(declare-fun m!4151525 () Bool)

(assert (=> b!3647402 m!4151525))

(declare-fun m!4151527 () Bool)

(assert (=> b!3647422 m!4151527))

(declare-fun m!4151529 () Bool)

(assert (=> b!3647422 m!4151529))

(declare-fun m!4151531 () Bool)

(assert (=> b!3647422 m!4151531))

(declare-fun m!4151533 () Bool)

(assert (=> b!3647436 m!4151533))

(declare-fun m!4151535 () Bool)

(assert (=> b!3647432 m!4151535))

(check-sat (not b!3647424) (not b!3647431) (not b!3647420) (not b!3647403) (not b!3647435) b_and!269501 (not b!3647404) (not b_next!96507) (not b!3647418) tp_is_empty!18105 b_and!269493 (not b!3647430) (not b!3647413) (not b_next!96519) (not b!3647421) b_and!269497 (not b_next!96509) (not b_next!96513) (not b!3647436) (not b!3647438) b_and!269499 (not b!3647416) (not b!3647437) (not b_next!96511) b_and!269505 (not b!3647417) (not b!3647410) (not b!3647411) (not b!3647419) (not b_next!96515) (not b!3647407) (not b_next!96517) (not b_next!96505) (not b!3647434) (not start!340966) (not b!3647440) (not bm!263587) (not b!3647432) (not b!3647402) b_and!269503 (not b!3647428) (not b!3647414) (not bm!263588) (not b!3647415) b_and!269491 (not b!3647442) (not b!3647439) b_and!269495 (not bm!263589) (not b!3647422))
(check-sat b_and!269501 b_and!269499 (not b_next!96511) b_and!269505 (not b_next!96507) (not b_next!96515) b_and!269493 b_and!269503 (not b_next!96519) b_and!269497 (not b_next!96509) (not b_next!96513) (not b_next!96517) (not b_next!96505) b_and!269491 b_and!269495)
