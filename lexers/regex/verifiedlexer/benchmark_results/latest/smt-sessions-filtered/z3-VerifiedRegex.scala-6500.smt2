; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341890 () Bool)

(assert start!341890)

(declare-fun b!3655030 () Bool)

(declare-fun b_free!96289 () Bool)

(declare-fun b_next!96993 () Bool)

(assert (=> b!3655030 (= b_free!96289 (not b_next!96993))))

(declare-fun tp!1113926 () Bool)

(declare-fun b_and!270699 () Bool)

(assert (=> b!3655030 (= tp!1113926 b_and!270699)))

(declare-fun b_free!96291 () Bool)

(declare-fun b_next!96995 () Bool)

(assert (=> b!3655030 (= b_free!96291 (not b_next!96995))))

(declare-fun tp!1113936 () Bool)

(declare-fun b_and!270701 () Bool)

(assert (=> b!3655030 (= tp!1113936 b_and!270701)))

(declare-fun b!3655025 () Bool)

(declare-fun b_free!96293 () Bool)

(declare-fun b_next!96997 () Bool)

(assert (=> b!3655025 (= b_free!96293 (not b_next!96997))))

(declare-fun tp!1113928 () Bool)

(declare-fun b_and!270703 () Bool)

(assert (=> b!3655025 (= tp!1113928 b_and!270703)))

(declare-fun b_free!96295 () Bool)

(declare-fun b_next!96999 () Bool)

(assert (=> b!3655025 (= b_free!96295 (not b_next!96999))))

(declare-fun tp!1113929 () Bool)

(declare-fun b_and!270705 () Bool)

(assert (=> b!3655025 (= tp!1113929 b_and!270705)))

(declare-fun b!3655022 () Bool)

(declare-fun b_free!96297 () Bool)

(declare-fun b_next!97001 () Bool)

(assert (=> b!3655022 (= b_free!96297 (not b_next!97001))))

(declare-fun tp!1113925 () Bool)

(declare-fun b_and!270707 () Bool)

(assert (=> b!3655022 (= tp!1113925 b_and!270707)))

(declare-fun b_free!96299 () Bool)

(declare-fun b_next!97003 () Bool)

(assert (=> b!3655022 (= b_free!96299 (not b_next!97003))))

(declare-fun tp!1113932 () Bool)

(declare-fun b_and!270709 () Bool)

(assert (=> b!3655022 (= tp!1113932 b_and!270709)))

(declare-fun b!3655039 () Bool)

(declare-fun b_free!96301 () Bool)

(declare-fun b_next!97005 () Bool)

(assert (=> b!3655039 (= b_free!96301 (not b_next!97005))))

(declare-fun tp!1113927 () Bool)

(declare-fun b_and!270711 () Bool)

(assert (=> b!3655039 (= tp!1113927 b_and!270711)))

(declare-fun b_free!96303 () Bool)

(declare-fun b_next!97007 () Bool)

(assert (=> b!3655039 (= b_free!96303 (not b_next!97007))))

(declare-fun tp!1113922 () Bool)

(declare-fun b_and!270713 () Bool)

(assert (=> b!3655039 (= tp!1113922 b_and!270713)))

(declare-fun b!3655003 () Bool)

(declare-fun e!2263077 () Bool)

(declare-fun e!2263048 () Bool)

(assert (=> b!3655003 (= e!2263077 e!2263048)))

(declare-fun res!1483252 () Bool)

(assert (=> b!3655003 (=> res!1483252 e!2263048)))

(declare-datatypes ((List!38679 0))(
  ( (Nil!38555) (Cons!38555 (h!43975 (_ BitVec 16)) (t!297902 List!38679)) )
))
(declare-datatypes ((TokenValue!6010 0))(
  ( (FloatLiteralValue!12020 (text!42515 List!38679)) (TokenValueExt!6009 (__x!24237 Int)) (Broken!30050 (value!185164 List!38679)) (Object!6133) (End!6010) (Def!6010) (Underscore!6010) (Match!6010) (Else!6010) (Error!6010) (Case!6010) (If!6010) (Extends!6010) (Abstract!6010) (Class!6010) (Val!6010) (DelimiterValue!12020 (del!6070 List!38679)) (KeywordValue!6016 (value!185165 List!38679)) (CommentValue!12020 (value!185166 List!38679)) (WhitespaceValue!12020 (value!185167 List!38679)) (IndentationValue!6010 (value!185168 List!38679)) (String!43383) (Int32!6010) (Broken!30051 (value!185169 List!38679)) (Boolean!6011) (Unit!55670) (OperatorValue!6013 (op!6070 List!38679)) (IdentifierValue!12020 (value!185170 List!38679)) (IdentifierValue!12021 (value!185171 List!38679)) (WhitespaceValue!12021 (value!185172 List!38679)) (True!12020) (False!12020) (Broken!30052 (value!185173 List!38679)) (Broken!30053 (value!185174 List!38679)) (True!12021) (RightBrace!6010) (RightBracket!6010) (Colon!6010) (Null!6010) (Comma!6010) (LeftBracket!6010) (False!12021) (LeftBrace!6010) (ImaginaryLiteralValue!6010 (text!42516 List!38679)) (StringLiteralValue!18030 (value!185175 List!38679)) (EOFValue!6010 (value!185176 List!38679)) (IdentValue!6010 (value!185177 List!38679)) (DelimiterValue!12021 (value!185178 List!38679)) (DedentValue!6010 (value!185179 List!38679)) (NewLineValue!6010 (value!185180 List!38679)) (IntegerValue!18030 (value!185181 (_ BitVec 32)) (text!42517 List!38679)) (IntegerValue!18031 (value!185182 Int) (text!42518 List!38679)) (Times!6010) (Or!6010) (Equal!6010) (Minus!6010) (Broken!30054 (value!185183 List!38679)) (And!6010) (Div!6010) (LessEqual!6010) (Mod!6010) (Concat!16549) (Not!6010) (Plus!6010) (SpaceValue!6010 (value!185184 List!38679)) (IntegerValue!18032 (value!185185 Int) (text!42519 List!38679)) (StringLiteralValue!18031 (text!42520 List!38679)) (FloatLiteralValue!12021 (text!42521 List!38679)) (BytesLiteralValue!6010 (value!185186 List!38679)) (CommentValue!12021 (value!185187 List!38679)) (StringLiteralValue!18032 (value!185188 List!38679)) (ErrorTokenValue!6010 (msg!6071 List!38679)) )
))
(declare-datatypes ((C!21264 0))(
  ( (C!21265 (val!12680 Int)) )
))
(declare-datatypes ((Regex!10539 0))(
  ( (ElementMatch!10539 (c!631706 C!21264)) (Concat!16550 (regOne!21590 Regex!10539) (regTwo!21590 Regex!10539)) (EmptyExpr!10539) (Star!10539 (reg!10868 Regex!10539)) (EmptyLang!10539) (Union!10539 (regOne!21591 Regex!10539) (regTwo!21591 Regex!10539)) )
))
(declare-datatypes ((String!43384 0))(
  ( (String!43385 (value!185189 String)) )
))
(declare-datatypes ((List!38680 0))(
  ( (Nil!38556) (Cons!38556 (h!43976 C!21264) (t!297903 List!38680)) )
))
(declare-datatypes ((IArray!23575 0))(
  ( (IArray!23576 (innerList!11845 List!38680)) )
))
(declare-datatypes ((Conc!11785 0))(
  ( (Node!11785 (left!30093 Conc!11785) (right!30423 Conc!11785) (csize!23800 Int) (cheight!11996 Int)) (Leaf!18286 (xs!14987 IArray!23575) (csize!23801 Int)) (Empty!11785) )
))
(declare-datatypes ((BalanceConc!23184 0))(
  ( (BalanceConc!23185 (c!631707 Conc!11785)) )
))
(declare-datatypes ((TokenValueInjection!11448 0))(
  ( (TokenValueInjection!11449 (toValue!8072 Int) (toChars!7931 Int)) )
))
(declare-datatypes ((Rule!11360 0))(
  ( (Rule!11361 (regex!5780 Regex!10539) (tag!6550 String!43384) (isSeparator!5780 Bool) (transformation!5780 TokenValueInjection!11448)) )
))
(declare-datatypes ((Token!10926 0))(
  ( (Token!10927 (value!185190 TokenValue!6010) (rule!8584 Rule!11360) (size!29449 Int) (originalCharacters!6494 List!38680)) )
))
(declare-datatypes ((tuple2!38420 0))(
  ( (tuple2!38421 (_1!22344 Token!10926) (_2!22344 List!38680)) )
))
(declare-datatypes ((Option!8188 0))(
  ( (None!8187) (Some!8187 (v!38059 tuple2!38420)) )
))
(declare-fun lt!1269370 () Option!8188)

(declare-fun lt!1269376 () tuple2!38420)

(declare-fun lt!1269358 () TokenValue!6010)

(declare-fun lt!1269350 () Int)

(declare-fun lt!1269347 () List!38680)

(assert (=> b!3655003 (= res!1483252 (not (= lt!1269370 (Some!8187 (tuple2!38421 (Token!10927 lt!1269358 (rule!8584 (_1!22344 lt!1269376)) lt!1269350 lt!1269347) (_2!22344 lt!1269376))))))))

(declare-fun lt!1269363 () BalanceConc!23184)

(declare-fun size!29450 (BalanceConc!23184) Int)

(assert (=> b!3655003 (= lt!1269350 (size!29450 lt!1269363))))

(declare-fun apply!9282 (TokenValueInjection!11448 BalanceConc!23184) TokenValue!6010)

(assert (=> b!3655003 (= lt!1269358 (apply!9282 (transformation!5780 (rule!8584 (_1!22344 lt!1269376))) lt!1269363))))

(declare-datatypes ((Unit!55671 0))(
  ( (Unit!55672) )
))
(declare-fun lt!1269342 () Unit!55671)

(declare-fun lemmaCharactersSize!825 (Token!10926) Unit!55671)

(assert (=> b!3655003 (= lt!1269342 (lemmaCharactersSize!825 (_1!22344 lt!1269376)))))

(declare-fun lt!1269379 () Unit!55671)

(declare-fun lemmaEqSameImage!963 (TokenValueInjection!11448 BalanceConc!23184 BalanceConc!23184) Unit!55671)

(declare-fun seqFromList!4329 (List!38680) BalanceConc!23184)

(assert (=> b!3655003 (= lt!1269379 (lemmaEqSameImage!963 (transformation!5780 (rule!8584 (_1!22344 lt!1269376))) lt!1269363 (seqFromList!4329 (originalCharacters!6494 (_1!22344 lt!1269376)))))))

(declare-fun lt!1269353 () Unit!55671)

(declare-fun lemmaSemiInverse!1529 (TokenValueInjection!11448 BalanceConc!23184) Unit!55671)

(assert (=> b!3655003 (= lt!1269353 (lemmaSemiInverse!1529 (transformation!5780 (rule!8584 (_1!22344 lt!1269376))) lt!1269363))))

(declare-fun b!3655004 () Bool)

(assert (=> b!3655004 false))

(declare-fun lt!1269374 () Unit!55671)

(declare-fun call!264239 () Unit!55671)

(assert (=> b!3655004 (= lt!1269374 call!264239)))

(declare-fun call!264241 () Bool)

(assert (=> b!3655004 (not call!264241)))

(declare-datatypes ((List!38681 0))(
  ( (Nil!38557) (Cons!38557 (h!43977 Rule!11360) (t!297904 List!38681)) )
))
(declare-fun rules!3307 () List!38681)

(declare-fun lt!1269351 () Unit!55671)

(declare-datatypes ((LexerInterface!5369 0))(
  ( (LexerInterfaceExt!5366 (__x!24238 Int)) (Lexer!5367) )
))
(declare-fun thiss!23823 () LexerInterface!5369)

(declare-fun rule!403 () Rule!11360)

(declare-fun lt!1269352 () C!21264)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!308 (LexerInterface!5369 List!38681 List!38681 Rule!11360 Rule!11360 C!21264) Unit!55671)

(assert (=> b!3655004 (= lt!1269351 (lemmaSepRuleNotContainsCharContainedInANonSepRule!308 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8584 (_1!22344 lt!1269376)) lt!1269352))))

(declare-fun e!2263065 () Unit!55671)

(declare-fun Unit!55673 () Unit!55671)

(assert (=> b!3655004 (= e!2263065 Unit!55673)))

(declare-fun e!2263066 () Bool)

(declare-fun e!2263050 () Bool)

(declare-fun tp!1113934 () Bool)

(declare-fun b!3655005 () Bool)

(declare-fun inv!52011 (String!43384) Bool)

(declare-fun inv!52014 (TokenValueInjection!11448) Bool)

(assert (=> b!3655005 (= e!2263066 (and tp!1113934 (inv!52011 (tag!6550 rule!403)) (inv!52014 (transformation!5780 rule!403)) e!2263050))))

(declare-fun b!3655006 () Bool)

(declare-fun res!1483259 () Bool)

(declare-fun e!2263063 () Bool)

(assert (=> b!3655006 (=> res!1483259 e!2263063)))

(declare-fun suffix!1395 () List!38680)

(declare-fun isEmpty!22856 (List!38680) Bool)

(assert (=> b!3655006 (= res!1483259 (isEmpty!22856 suffix!1395))))

(declare-fun b!3655007 () Bool)

(declare-fun e!2263073 () Unit!55671)

(declare-fun e!2263052 () Unit!55671)

(assert (=> b!3655007 (= e!2263073 e!2263052)))

(declare-fun lt!1269385 () List!38680)

(declare-fun lt!1269371 () Unit!55671)

(declare-fun lt!1269344 () List!38680)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!88 (List!38680 List!38680 List!38680 List!38680) Unit!55671)

(assert (=> b!3655007 (= lt!1269371 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!88 lt!1269385 suffix!1395 lt!1269347 lt!1269344))))

(declare-fun lt!1269373 () C!21264)

(declare-fun contains!7625 (List!38680 C!21264) Bool)

(assert (=> b!3655007 (contains!7625 lt!1269347 lt!1269373)))

(declare-fun c!631700 () Bool)

(assert (=> b!3655007 (= c!631700 (isSeparator!5780 rule!403))))

(declare-fun bm!264234 () Bool)

(declare-fun call!264240 () List!38680)

(declare-fun usedCharacters!992 (Regex!10539) List!38680)

(assert (=> bm!264234 (= call!264240 (usedCharacters!992 (regex!5780 (rule!8584 (_1!22344 lt!1269376)))))))

(declare-fun b!3655008 () Bool)

(declare-fun res!1483251 () Bool)

(declare-fun e!2263064 () Bool)

(assert (=> b!3655008 (=> (not res!1483251) (not e!2263064))))

(declare-fun rulesInvariant!4766 (LexerInterface!5369 List!38681) Bool)

(assert (=> b!3655008 (= res!1483251 (rulesInvariant!4766 thiss!23823 rules!3307))))

(declare-fun b!3655009 () Bool)

(declare-fun Unit!55674 () Unit!55671)

(assert (=> b!3655009 (= e!2263073 Unit!55674)))

(declare-fun b!3655010 () Bool)

(declare-fun res!1483256 () Bool)

(assert (=> b!3655010 (=> res!1483256 e!2263077)))

(declare-fun matchR!5108 (Regex!10539 List!38680) Bool)

(assert (=> b!3655010 (= res!1483256 (not (matchR!5108 (regex!5780 (rule!8584 (_1!22344 lt!1269376))) lt!1269347)))))

(declare-fun bm!264235 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!728 (Regex!10539 List!38680 C!21264) Unit!55671)

(assert (=> bm!264235 (= call!264239 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!728 (regex!5780 (rule!8584 (_1!22344 lt!1269376))) lt!1269347 lt!1269352))))

(declare-fun b!3655011 () Bool)

(declare-fun e!2263074 () Bool)

(declare-fun tp_is_empty!18161 () Bool)

(declare-fun tp!1113930 () Bool)

(assert (=> b!3655011 (= e!2263074 (and tp_is_empty!18161 tp!1113930))))

(declare-fun b!3655012 () Bool)

(declare-fun e!2263079 () Bool)

(assert (=> b!3655012 (= e!2263048 e!2263079)))

(declare-fun res!1483258 () Bool)

(assert (=> b!3655012 (=> res!1483258 e!2263079)))

(declare-fun lt!1269357 () Option!8188)

(declare-fun lt!1269345 () List!38680)

(assert (=> b!3655012 (= res!1483258 (or (not (= lt!1269345 (_2!22344 lt!1269376))) (not (= lt!1269357 (Some!8187 (tuple2!38421 (_1!22344 lt!1269376) lt!1269345))))))))

(assert (=> b!3655012 (= (_2!22344 lt!1269376) lt!1269345)))

(declare-fun lt!1269346 () Unit!55671)

(declare-fun lemmaSamePrefixThenSameSuffix!1470 (List!38680 List!38680 List!38680 List!38680 List!38680) Unit!55671)

(assert (=> b!3655012 (= lt!1269346 (lemmaSamePrefixThenSameSuffix!1470 lt!1269347 (_2!22344 lt!1269376) lt!1269347 lt!1269345 lt!1269344))))

(declare-fun getSuffix!1696 (List!38680 List!38680) List!38680)

(assert (=> b!3655012 (= lt!1269345 (getSuffix!1696 lt!1269344 lt!1269347))))

(declare-fun lt!1269356 () Int)

(declare-fun lt!1269372 () TokenValue!6010)

(assert (=> b!3655012 (= lt!1269357 (Some!8187 (tuple2!38421 (Token!10927 lt!1269372 (rule!8584 (_1!22344 lt!1269376)) lt!1269356 lt!1269347) (_2!22344 lt!1269376))))))

(declare-fun maxPrefixOneRule!2041 (LexerInterface!5369 Rule!11360 List!38680) Option!8188)

(assert (=> b!3655012 (= lt!1269357 (maxPrefixOneRule!2041 thiss!23823 (rule!8584 (_1!22344 lt!1269376)) lt!1269344))))

(declare-fun size!29451 (List!38680) Int)

(assert (=> b!3655012 (= lt!1269356 (size!29451 lt!1269347))))

(assert (=> b!3655012 (= lt!1269372 (apply!9282 (transformation!5780 (rule!8584 (_1!22344 lt!1269376))) (seqFromList!4329 lt!1269347)))))

(declare-fun lt!1269365 () Unit!55671)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1097 (LexerInterface!5369 List!38681 List!38680 List!38680 List!38680 Rule!11360) Unit!55671)

(assert (=> b!3655012 (= lt!1269365 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1097 thiss!23823 rules!3307 lt!1269347 lt!1269344 (_2!22344 lt!1269376) (rule!8584 (_1!22344 lt!1269376))))))

(declare-fun call!264244 () Unit!55671)

(declare-fun bm!264236 () Bool)

(assert (=> bm!264236 (= call!264244 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!728 (regex!5780 (rule!8584 (_1!22344 lt!1269376))) lt!1269347 lt!1269373))))

(declare-fun b!3655013 () Bool)

(declare-fun res!1483244 () Bool)

(declare-fun e!2263078 () Bool)

(assert (=> b!3655013 (=> res!1483244 e!2263078)))

(declare-fun sepAndNonSepRulesDisjointChars!1948 (List!38681 List!38681) Bool)

(assert (=> b!3655013 (= res!1483244 (not (sepAndNonSepRulesDisjointChars!1948 rules!3307 rules!3307)))))

(declare-fun b!3655014 () Bool)

(assert (=> b!3655014 false))

(declare-fun lt!1269349 () Unit!55671)

(assert (=> b!3655014 (= lt!1269349 call!264239)))

(assert (=> b!3655014 (not call!264241)))

(declare-fun lt!1269375 () Unit!55671)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!426 (LexerInterface!5369 List!38681 List!38681 Rule!11360 Rule!11360 C!21264) Unit!55671)

(assert (=> b!3655014 (= lt!1269375 (lemmaNonSepRuleNotContainsCharContainedInASepRule!426 thiss!23823 rules!3307 rules!3307 (rule!8584 (_1!22344 lt!1269376)) rule!403 lt!1269352))))

(declare-fun e!2263067 () Unit!55671)

(declare-fun Unit!55675 () Unit!55671)

(assert (=> b!3655014 (= e!2263067 Unit!55675)))

(declare-fun b!3655015 () Bool)

(declare-fun e!2263068 () Unit!55671)

(declare-fun Unit!55676 () Unit!55671)

(assert (=> b!3655015 (= e!2263068 Unit!55676)))

(declare-fun b!3655016 () Bool)

(declare-fun res!1483253 () Bool)

(declare-fun e!2263061 () Bool)

(assert (=> b!3655016 (=> (not res!1483253) (not e!2263061))))

(declare-fun token!511 () Token!10926)

(assert (=> b!3655016 (= res!1483253 (= (rule!8584 token!511) rule!403))))

(declare-fun b!3655017 () Bool)

(declare-fun res!1483245 () Bool)

(assert (=> b!3655017 (=> (not res!1483245) (not e!2263061))))

(declare-fun lt!1269378 () tuple2!38420)

(assert (=> b!3655017 (= res!1483245 (isEmpty!22856 (_2!22344 lt!1269378)))))

(declare-fun b!3655018 () Bool)

(assert (=> b!3655018 (= e!2263078 e!2263077)))

(declare-fun res!1483248 () Bool)

(assert (=> b!3655018 (=> res!1483248 e!2263077)))

(declare-fun isPrefix!3143 (List!38680 List!38680) Bool)

(assert (=> b!3655018 (= res!1483248 (not (isPrefix!3143 lt!1269347 lt!1269344)))))

(declare-fun ++!9596 (List!38680 List!38680) List!38680)

(assert (=> b!3655018 (isPrefix!3143 lt!1269347 (++!9596 lt!1269347 (_2!22344 lt!1269376)))))

(declare-fun lt!1269367 () Unit!55671)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2062 (List!38680 List!38680) Unit!55671)

(assert (=> b!3655018 (= lt!1269367 (lemmaConcatTwoListThenFirstIsPrefix!2062 lt!1269347 (_2!22344 lt!1269376)))))

(declare-fun list!14294 (BalanceConc!23184) List!38680)

(assert (=> b!3655018 (= lt!1269347 (list!14294 lt!1269363))))

(declare-fun charsOf!3794 (Token!10926) BalanceConc!23184)

(assert (=> b!3655018 (= lt!1269363 (charsOf!3794 (_1!22344 lt!1269376)))))

(declare-fun e!2263072 () Bool)

(assert (=> b!3655018 e!2263072))

(declare-fun res!1483249 () Bool)

(assert (=> b!3655018 (=> (not res!1483249) (not e!2263072))))

(declare-datatypes ((Option!8189 0))(
  ( (None!8188) (Some!8188 (v!38060 Rule!11360)) )
))
(declare-fun lt!1269348 () Option!8189)

(declare-fun isDefined!6420 (Option!8189) Bool)

(assert (=> b!3655018 (= res!1483249 (isDefined!6420 lt!1269348))))

(declare-fun getRuleFromTag!1384 (LexerInterface!5369 List!38681 String!43384) Option!8189)

(assert (=> b!3655018 (= lt!1269348 (getRuleFromTag!1384 thiss!23823 rules!3307 (tag!6550 (rule!8584 (_1!22344 lt!1269376)))))))

(declare-fun lt!1269368 () Unit!55671)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1384 (LexerInterface!5369 List!38681 List!38680 Token!10926) Unit!55671)

(assert (=> b!3655018 (= lt!1269368 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1384 thiss!23823 rules!3307 lt!1269344 (_1!22344 lt!1269376)))))

(declare-fun get!12688 (Option!8188) tuple2!38420)

(assert (=> b!3655018 (= lt!1269376 (get!12688 lt!1269370))))

(declare-fun lt!1269354 () Unit!55671)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1047 (LexerInterface!5369 List!38681 List!38680 List!38680) Unit!55671)

(assert (=> b!3655018 (= lt!1269354 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1047 thiss!23823 rules!3307 lt!1269385 suffix!1395))))

(declare-fun maxPrefix!2903 (LexerInterface!5369 List!38681 List!38680) Option!8188)

(assert (=> b!3655018 (= lt!1269370 (maxPrefix!2903 thiss!23823 rules!3307 lt!1269344))))

(assert (=> b!3655018 (isPrefix!3143 lt!1269385 lt!1269344)))

(declare-fun lt!1269383 () Unit!55671)

(assert (=> b!3655018 (= lt!1269383 (lemmaConcatTwoListThenFirstIsPrefix!2062 lt!1269385 suffix!1395))))

(assert (=> b!3655018 (= lt!1269344 (++!9596 lt!1269385 suffix!1395))))

(declare-fun b!3655019 () Bool)

(declare-fun e!2263051 () Unit!55671)

(assert (=> b!3655019 (= e!2263051 e!2263067)))

(declare-fun c!631703 () Bool)

(assert (=> b!3655019 (= c!631703 (not (isSeparator!5780 (rule!8584 (_1!22344 lt!1269376)))))))

(declare-fun e!2263053 () Bool)

(declare-fun b!3655020 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11360)

(declare-fun tp!1113931 () Bool)

(declare-fun e!2263062 () Bool)

(assert (=> b!3655020 (= e!2263053 (and tp!1113931 (inv!52011 (tag!6550 anOtherTypeRule!33)) (inv!52014 (transformation!5780 anOtherTypeRule!33)) e!2263062))))

(declare-fun b!3655021 () Bool)

(declare-fun Unit!55677 () Unit!55671)

(assert (=> b!3655021 (= e!2263068 Unit!55677)))

(declare-fun lt!1269382 () Unit!55671)

(assert (=> b!3655021 (= lt!1269382 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!728 (regex!5780 rule!403) lt!1269385 lt!1269352))))

(assert (=> b!3655021 false))

(declare-fun e!2263075 () Bool)

(assert (=> b!3655022 (= e!2263075 (and tp!1113925 tp!1113932))))

(declare-fun b!3655023 () Bool)

(declare-fun e!2263049 () Bool)

(assert (=> b!3655023 (= e!2263049 true)))

(declare-fun ruleValid!2044 (LexerInterface!5369 Rule!11360) Bool)

(assert (=> b!3655023 (ruleValid!2044 thiss!23823 (rule!8584 (_1!22344 lt!1269376)))))

(declare-fun lt!1269355 () Unit!55671)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1198 (LexerInterface!5369 Rule!11360 List!38681) Unit!55671)

(assert (=> b!3655023 (= lt!1269355 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1198 thiss!23823 (rule!8584 (_1!22344 lt!1269376)) rules!3307))))

(declare-fun b!3655024 () Bool)

(declare-fun Unit!55678 () Unit!55671)

(assert (=> b!3655024 (= e!2263065 Unit!55678)))

(assert (=> b!3655025 (= e!2263062 (and tp!1113928 tp!1113929))))

(declare-fun b!3655026 () Bool)

(assert (=> b!3655026 (= e!2263063 e!2263078)))

(declare-fun res!1483241 () Bool)

(assert (=> b!3655026 (=> res!1483241 e!2263078)))

(declare-fun lt!1269366 () List!38680)

(assert (=> b!3655026 (= res!1483241 (contains!7625 lt!1269366 lt!1269373))))

(declare-fun head!7800 (List!38680) C!21264)

(assert (=> b!3655026 (= lt!1269373 (head!7800 suffix!1395))))

(assert (=> b!3655026 (= lt!1269366 (usedCharacters!992 (regex!5780 rule!403)))))

(declare-fun b!3655027 () Bool)

(declare-fun e!2263059 () Bool)

(assert (=> b!3655027 (= e!2263072 e!2263059)))

(declare-fun res!1483240 () Bool)

(assert (=> b!3655027 (=> (not res!1483240) (not e!2263059))))

(declare-fun lt!1269361 () Rule!11360)

(assert (=> b!3655027 (= res!1483240 (matchR!5108 (regex!5780 lt!1269361) (list!14294 (charsOf!3794 (_1!22344 lt!1269376)))))))

(declare-fun get!12689 (Option!8189) Rule!11360)

(assert (=> b!3655027 (= lt!1269361 (get!12689 lt!1269348))))

(declare-fun b!3655028 () Bool)

(declare-fun e!2263076 () Bool)

(declare-fun tp!1113923 () Bool)

(assert (=> b!3655028 (= e!2263076 (and tp!1113923 (inv!52011 (tag!6550 (h!43977 rules!3307))) (inv!52014 (transformation!5780 (h!43977 rules!3307))) e!2263075))))

(declare-fun b!3655029 () Bool)

(assert (=> b!3655029 (= e!2263059 (= (rule!8584 (_1!22344 lt!1269376)) lt!1269361))))

(declare-fun e!2263060 () Bool)

(assert (=> b!3655030 (= e!2263060 (and tp!1113926 tp!1113936))))

(declare-fun b!3655031 () Bool)

(declare-fun e!2263080 () Bool)

(declare-fun tp!1113935 () Bool)

(assert (=> b!3655031 (= e!2263080 (and e!2263076 tp!1113935))))

(declare-fun tp!1113933 () Bool)

(declare-fun e!2263055 () Bool)

(declare-fun b!3655032 () Bool)

(assert (=> b!3655032 (= e!2263055 (and tp!1113933 (inv!52011 (tag!6550 (rule!8584 token!511))) (inv!52014 (transformation!5780 (rule!8584 token!511))) e!2263060))))

(declare-fun b!3655033 () Bool)

(declare-fun res!1483260 () Bool)

(assert (=> b!3655033 (=> (not res!1483260) (not e!2263064))))

(assert (=> b!3655033 (= res!1483260 (not (= (isSeparator!5780 anOtherTypeRule!33) (isSeparator!5780 rule!403))))))

(declare-fun b!3655034 () Bool)

(declare-fun e!2263070 () Bool)

(assert (=> b!3655034 (= e!2263064 e!2263070)))

(declare-fun res!1483246 () Bool)

(assert (=> b!3655034 (=> (not res!1483246) (not e!2263070))))

(declare-fun lt!1269381 () Option!8188)

(declare-fun isDefined!6421 (Option!8188) Bool)

(assert (=> b!3655034 (= res!1483246 (isDefined!6421 lt!1269381))))

(assert (=> b!3655034 (= lt!1269381 (maxPrefix!2903 thiss!23823 rules!3307 lt!1269385))))

(declare-fun lt!1269364 () BalanceConc!23184)

(assert (=> b!3655034 (= lt!1269385 (list!14294 lt!1269364))))

(assert (=> b!3655034 (= lt!1269364 (charsOf!3794 token!511))))

(declare-fun b!3655035 () Bool)

(assert (=> b!3655035 (= e!2263061 (not e!2263063))))

(declare-fun res!1483238 () Bool)

(assert (=> b!3655035 (=> res!1483238 e!2263063)))

(assert (=> b!3655035 (= res!1483238 (not (matchR!5108 (regex!5780 rule!403) lt!1269385)))))

(assert (=> b!3655035 (ruleValid!2044 thiss!23823 rule!403)))

(declare-fun lt!1269386 () Unit!55671)

(assert (=> b!3655035 (= lt!1269386 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1198 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3655036 () Bool)

(declare-fun res!1483250 () Bool)

(assert (=> b!3655036 (=> res!1483250 e!2263078)))

(assert (=> b!3655036 (= res!1483250 (not (contains!7625 (usedCharacters!992 (regex!5780 anOtherTypeRule!33)) lt!1269373)))))

(declare-fun res!1483247 () Bool)

(assert (=> start!341890 (=> (not res!1483247) (not e!2263064))))

(get-info :version)

(assert (=> start!341890 (= res!1483247 ((_ is Lexer!5367) thiss!23823))))

(assert (=> start!341890 e!2263064))

(assert (=> start!341890 e!2263080))

(assert (=> start!341890 e!2263074))

(assert (=> start!341890 true))

(declare-fun e!2263057 () Bool)

(declare-fun inv!52015 (Token!10926) Bool)

(assert (=> start!341890 (and (inv!52015 token!511) e!2263057)))

(assert (=> start!341890 e!2263066))

(assert (=> start!341890 e!2263053))

(declare-fun b!3655037 () Bool)

(declare-fun res!1483243 () Bool)

(assert (=> b!3655037 (=> (not res!1483243) (not e!2263064))))

(declare-fun contains!7626 (List!38681 Rule!11360) Bool)

(assert (=> b!3655037 (= res!1483243 (contains!7626 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3655038 () Bool)

(declare-fun res!1483254 () Bool)

(assert (=> b!3655038 (=> (not res!1483254) (not e!2263064))))

(declare-fun isEmpty!22857 (List!38681) Bool)

(assert (=> b!3655038 (= res!1483254 (not (isEmpty!22857 rules!3307)))))

(assert (=> b!3655039 (= e!2263050 (and tp!1113927 tp!1113922))))

(declare-fun bm!264237 () Bool)

(declare-fun call!264242 () List!38680)

(assert (=> bm!264237 (= call!264241 (contains!7625 call!264242 lt!1269352))))

(declare-fun b!3655040 () Bool)

(declare-fun res!1483242 () Bool)

(assert (=> b!3655040 (=> res!1483242 e!2263049)))

(assert (=> b!3655040 (= res!1483242 (not (contains!7626 rules!3307 (rule!8584 (_1!22344 lt!1269376)))))))

(declare-fun b!3655041 () Bool)

(assert (=> b!3655041 false))

(declare-fun lt!1269343 () Unit!55671)

(assert (=> b!3655041 (= lt!1269343 call!264244)))

(declare-fun call!264243 () Bool)

(assert (=> b!3655041 (not call!264243)))

(declare-fun lt!1269369 () Unit!55671)

(assert (=> b!3655041 (= lt!1269369 (lemmaSepRuleNotContainsCharContainedInANonSepRule!308 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8584 (_1!22344 lt!1269376)) lt!1269373))))

(declare-fun Unit!55679 () Unit!55671)

(assert (=> b!3655041 (= e!2263052 Unit!55679)))

(declare-fun bm!264238 () Bool)

(assert (=> bm!264238 (= call!264243 (contains!7625 call!264240 lt!1269373))))

(declare-fun b!3655042 () Bool)

(assert (=> b!3655042 (= e!2263070 e!2263061)))

(declare-fun res!1483255 () Bool)

(assert (=> b!3655042 (=> (not res!1483255) (not e!2263061))))

(assert (=> b!3655042 (= res!1483255 (= (_1!22344 lt!1269378) token!511))))

(assert (=> b!3655042 (= lt!1269378 (get!12688 lt!1269381))))

(declare-fun b!3655043 () Bool)

(assert (=> b!3655043 (= e!2263051 e!2263065)))

(declare-fun c!631701 () Bool)

(assert (=> b!3655043 (= c!631701 (isSeparator!5780 (rule!8584 (_1!22344 lt!1269376))))))

(declare-fun tp!1113924 () Bool)

(declare-fun b!3655044 () Bool)

(declare-fun inv!21 (TokenValue!6010) Bool)

(assert (=> b!3655044 (= e!2263057 (and (inv!21 (value!185190 token!511)) e!2263055 tp!1113924))))

(declare-fun b!3655045 () Bool)

(assert (=> b!3655045 false))

(declare-fun lt!1269380 () Unit!55671)

(assert (=> b!3655045 (= lt!1269380 call!264244)))

(assert (=> b!3655045 (not call!264243)))

(declare-fun lt!1269359 () Unit!55671)

(assert (=> b!3655045 (= lt!1269359 (lemmaNonSepRuleNotContainsCharContainedInASepRule!426 thiss!23823 rules!3307 rules!3307 (rule!8584 (_1!22344 lt!1269376)) anOtherTypeRule!33 lt!1269373))))

(declare-fun Unit!55680 () Unit!55671)

(assert (=> b!3655045 (= e!2263052 Unit!55680)))

(declare-fun b!3655046 () Bool)

(assert (=> b!3655046 (= e!2263079 e!2263049)))

(declare-fun res!1483257 () Bool)

(assert (=> b!3655046 (=> res!1483257 e!2263049)))

(declare-fun lt!1269377 () Int)

(assert (=> b!3655046 (= res!1483257 (>= lt!1269350 lt!1269377))))

(declare-fun lt!1269360 () Unit!55671)

(assert (=> b!3655046 (= lt!1269360 e!2263073)))

(declare-fun c!631704 () Bool)

(assert (=> b!3655046 (= c!631704 (> lt!1269350 lt!1269377))))

(assert (=> b!3655046 (= lt!1269377 (size!29450 lt!1269364))))

(declare-fun lt!1269384 () Unit!55671)

(assert (=> b!3655046 (= lt!1269384 e!2263051)))

(declare-fun c!631705 () Bool)

(assert (=> b!3655046 (= c!631705 (isSeparator!5780 rule!403))))

(declare-fun lt!1269362 () Unit!55671)

(assert (=> b!3655046 (= lt!1269362 e!2263068)))

(declare-fun c!631702 () Bool)

(assert (=> b!3655046 (= c!631702 (not (contains!7625 lt!1269366 lt!1269352)))))

(assert (=> b!3655046 (= lt!1269352 (head!7800 lt!1269347))))

(declare-fun b!3655047 () Bool)

(declare-fun Unit!55681 () Unit!55671)

(assert (=> b!3655047 (= e!2263067 Unit!55681)))

(declare-fun b!3655048 () Bool)

(declare-fun res!1483239 () Bool)

(assert (=> b!3655048 (=> (not res!1483239) (not e!2263064))))

(assert (=> b!3655048 (= res!1483239 (contains!7626 rules!3307 rule!403))))

(declare-fun bm!264239 () Bool)

(assert (=> bm!264239 (= call!264242 (usedCharacters!992 (regex!5780 (rule!8584 (_1!22344 lt!1269376)))))))

(assert (= (and start!341890 res!1483247) b!3655038))

(assert (= (and b!3655038 res!1483254) b!3655008))

(assert (= (and b!3655008 res!1483251) b!3655048))

(assert (= (and b!3655048 res!1483239) b!3655037))

(assert (= (and b!3655037 res!1483243) b!3655033))

(assert (= (and b!3655033 res!1483260) b!3655034))

(assert (= (and b!3655034 res!1483246) b!3655042))

(assert (= (and b!3655042 res!1483255) b!3655017))

(assert (= (and b!3655017 res!1483245) b!3655016))

(assert (= (and b!3655016 res!1483253) b!3655035))

(assert (= (and b!3655035 (not res!1483238)) b!3655006))

(assert (= (and b!3655006 (not res!1483259)) b!3655026))

(assert (= (and b!3655026 (not res!1483241)) b!3655036))

(assert (= (and b!3655036 (not res!1483250)) b!3655013))

(assert (= (and b!3655013 (not res!1483244)) b!3655018))

(assert (= (and b!3655018 res!1483249) b!3655027))

(assert (= (and b!3655027 res!1483240) b!3655029))

(assert (= (and b!3655018 (not res!1483248)) b!3655010))

(assert (= (and b!3655010 (not res!1483256)) b!3655003))

(assert (= (and b!3655003 (not res!1483252)) b!3655012))

(assert (= (and b!3655012 (not res!1483258)) b!3655046))

(assert (= (and b!3655046 c!631702) b!3655021))

(assert (= (and b!3655046 (not c!631702)) b!3655015))

(assert (= (and b!3655046 c!631705) b!3655019))

(assert (= (and b!3655046 (not c!631705)) b!3655043))

(assert (= (and b!3655019 c!631703) b!3655014))

(assert (= (and b!3655019 (not c!631703)) b!3655047))

(assert (= (and b!3655043 c!631701) b!3655004))

(assert (= (and b!3655043 (not c!631701)) b!3655024))

(assert (= (or b!3655014 b!3655004) bm!264235))

(assert (= (or b!3655014 b!3655004) bm!264239))

(assert (= (or b!3655014 b!3655004) bm!264237))

(assert (= (and b!3655046 c!631704) b!3655007))

(assert (= (and b!3655046 (not c!631704)) b!3655009))

(assert (= (and b!3655007 c!631700) b!3655041))

(assert (= (and b!3655007 (not c!631700)) b!3655045))

(assert (= (or b!3655041 b!3655045) bm!264236))

(assert (= (or b!3655041 b!3655045) bm!264234))

(assert (= (or b!3655041 b!3655045) bm!264238))

(assert (= (and b!3655046 (not res!1483257)) b!3655040))

(assert (= (and b!3655040 (not res!1483242)) b!3655023))

(assert (= b!3655028 b!3655022))

(assert (= b!3655031 b!3655028))

(assert (= (and start!341890 ((_ is Cons!38557) rules!3307)) b!3655031))

(assert (= (and start!341890 ((_ is Cons!38556) suffix!1395)) b!3655011))

(assert (= b!3655032 b!3655030))

(assert (= b!3655044 b!3655032))

(assert (= start!341890 b!3655044))

(assert (= b!3655005 b!3655039))

(assert (= start!341890 b!3655005))

(assert (= b!3655020 b!3655025))

(assert (= start!341890 b!3655020))

(declare-fun m!4160301 () Bool)

(assert (=> bm!264235 m!4160301))

(declare-fun m!4160303 () Bool)

(assert (=> b!3655036 m!4160303))

(assert (=> b!3655036 m!4160303))

(declare-fun m!4160305 () Bool)

(assert (=> b!3655036 m!4160305))

(declare-fun m!4160307 () Bool)

(assert (=> b!3655040 m!4160307))

(declare-fun m!4160309 () Bool)

(assert (=> start!341890 m!4160309))

(declare-fun m!4160311 () Bool)

(assert (=> bm!264237 m!4160311))

(declare-fun m!4160313 () Bool)

(assert (=> b!3655008 m!4160313))

(declare-fun m!4160315 () Bool)

(assert (=> b!3655010 m!4160315))

(declare-fun m!4160317 () Bool)

(assert (=> b!3655044 m!4160317))

(declare-fun m!4160319 () Bool)

(assert (=> b!3655003 m!4160319))

(declare-fun m!4160321 () Bool)

(assert (=> b!3655003 m!4160321))

(declare-fun m!4160323 () Bool)

(assert (=> b!3655003 m!4160323))

(declare-fun m!4160325 () Bool)

(assert (=> b!3655003 m!4160325))

(declare-fun m!4160327 () Bool)

(assert (=> b!3655003 m!4160327))

(declare-fun m!4160329 () Bool)

(assert (=> b!3655003 m!4160329))

(assert (=> b!3655003 m!4160327))

(declare-fun m!4160331 () Bool)

(assert (=> b!3655012 m!4160331))

(declare-fun m!4160333 () Bool)

(assert (=> b!3655012 m!4160333))

(declare-fun m!4160335 () Bool)

(assert (=> b!3655012 m!4160335))

(declare-fun m!4160337 () Bool)

(assert (=> b!3655012 m!4160337))

(declare-fun m!4160339 () Bool)

(assert (=> b!3655012 m!4160339))

(declare-fun m!4160341 () Bool)

(assert (=> b!3655012 m!4160341))

(assert (=> b!3655012 m!4160335))

(declare-fun m!4160343 () Bool)

(assert (=> b!3655012 m!4160343))

(declare-fun m!4160345 () Bool)

(assert (=> b!3655034 m!4160345))

(declare-fun m!4160347 () Bool)

(assert (=> b!3655034 m!4160347))

(declare-fun m!4160349 () Bool)

(assert (=> b!3655034 m!4160349))

(declare-fun m!4160351 () Bool)

(assert (=> b!3655034 m!4160351))

(declare-fun m!4160353 () Bool)

(assert (=> b!3655027 m!4160353))

(assert (=> b!3655027 m!4160353))

(declare-fun m!4160355 () Bool)

(assert (=> b!3655027 m!4160355))

(assert (=> b!3655027 m!4160355))

(declare-fun m!4160357 () Bool)

(assert (=> b!3655027 m!4160357))

(declare-fun m!4160359 () Bool)

(assert (=> b!3655027 m!4160359))

(declare-fun m!4160361 () Bool)

(assert (=> b!3655041 m!4160361))

(declare-fun m!4160363 () Bool)

(assert (=> b!3655006 m!4160363))

(declare-fun m!4160365 () Bool)

(assert (=> b!3655007 m!4160365))

(declare-fun m!4160367 () Bool)

(assert (=> b!3655007 m!4160367))

(declare-fun m!4160369 () Bool)

(assert (=> b!3655028 m!4160369))

(declare-fun m!4160371 () Bool)

(assert (=> b!3655028 m!4160371))

(declare-fun m!4160373 () Bool)

(assert (=> b!3655045 m!4160373))

(declare-fun m!4160375 () Bool)

(assert (=> bm!264236 m!4160375))

(declare-fun m!4160377 () Bool)

(assert (=> b!3655042 m!4160377))

(declare-fun m!4160379 () Bool)

(assert (=> b!3655048 m!4160379))

(declare-fun m!4160381 () Bool)

(assert (=> b!3655018 m!4160381))

(declare-fun m!4160383 () Bool)

(assert (=> b!3655018 m!4160383))

(declare-fun m!4160385 () Bool)

(assert (=> b!3655018 m!4160385))

(assert (=> b!3655018 m!4160383))

(declare-fun m!4160387 () Bool)

(assert (=> b!3655018 m!4160387))

(declare-fun m!4160389 () Bool)

(assert (=> b!3655018 m!4160389))

(declare-fun m!4160391 () Bool)

(assert (=> b!3655018 m!4160391))

(declare-fun m!4160393 () Bool)

(assert (=> b!3655018 m!4160393))

(declare-fun m!4160395 () Bool)

(assert (=> b!3655018 m!4160395))

(assert (=> b!3655018 m!4160353))

(declare-fun m!4160397 () Bool)

(assert (=> b!3655018 m!4160397))

(declare-fun m!4160399 () Bool)

(assert (=> b!3655018 m!4160399))

(declare-fun m!4160401 () Bool)

(assert (=> b!3655018 m!4160401))

(declare-fun m!4160403 () Bool)

(assert (=> b!3655018 m!4160403))

(declare-fun m!4160405 () Bool)

(assert (=> b!3655018 m!4160405))

(declare-fun m!4160407 () Bool)

(assert (=> b!3655018 m!4160407))

(declare-fun m!4160409 () Bool)

(assert (=> b!3655021 m!4160409))

(declare-fun m!4160411 () Bool)

(assert (=> bm!264238 m!4160411))

(declare-fun m!4160413 () Bool)

(assert (=> b!3655038 m!4160413))

(declare-fun m!4160415 () Bool)

(assert (=> b!3655046 m!4160415))

(declare-fun m!4160417 () Bool)

(assert (=> b!3655046 m!4160417))

(declare-fun m!4160419 () Bool)

(assert (=> b!3655046 m!4160419))

(declare-fun m!4160421 () Bool)

(assert (=> b!3655020 m!4160421))

(declare-fun m!4160423 () Bool)

(assert (=> b!3655020 m!4160423))

(declare-fun m!4160425 () Bool)

(assert (=> b!3655037 m!4160425))

(declare-fun m!4160427 () Bool)

(assert (=> bm!264234 m!4160427))

(declare-fun m!4160429 () Bool)

(assert (=> b!3655017 m!4160429))

(declare-fun m!4160431 () Bool)

(assert (=> b!3655026 m!4160431))

(declare-fun m!4160433 () Bool)

(assert (=> b!3655026 m!4160433))

(declare-fun m!4160435 () Bool)

(assert (=> b!3655026 m!4160435))

(declare-fun m!4160437 () Bool)

(assert (=> b!3655035 m!4160437))

(declare-fun m!4160439 () Bool)

(assert (=> b!3655035 m!4160439))

(declare-fun m!4160441 () Bool)

(assert (=> b!3655035 m!4160441))

(declare-fun m!4160443 () Bool)

(assert (=> b!3655005 m!4160443))

(declare-fun m!4160445 () Bool)

(assert (=> b!3655005 m!4160445))

(declare-fun m!4160447 () Bool)

(assert (=> b!3655032 m!4160447))

(declare-fun m!4160449 () Bool)

(assert (=> b!3655032 m!4160449))

(declare-fun m!4160451 () Bool)

(assert (=> b!3655023 m!4160451))

(declare-fun m!4160453 () Bool)

(assert (=> b!3655023 m!4160453))

(declare-fun m!4160455 () Bool)

(assert (=> b!3655013 m!4160455))

(assert (=> bm!264239 m!4160427))

(declare-fun m!4160457 () Bool)

(assert (=> b!3655014 m!4160457))

(declare-fun m!4160459 () Bool)

(assert (=> b!3655004 m!4160459))

(check-sat (not b!3655042) (not bm!264237) (not b!3655008) (not b!3655012) (not b!3655017) (not b!3655028) (not bm!264234) (not bm!264236) (not b!3655013) (not b!3655048) (not b_next!97001) (not b!3655023) (not bm!264238) (not b!3655027) b_and!270711 (not b_next!96995) (not b!3655005) (not b_next!96999) (not b_next!97007) (not b!3655018) (not b!3655003) (not b_next!96997) (not b!3655026) (not b!3655020) b_and!270703 b_and!270713 (not b!3655038) (not b!3655006) (not b!3655011) (not b_next!96993) (not b!3655010) (not b!3655004) b_and!270705 b_and!270707 b_and!270701 (not b!3655040) (not b!3655044) (not b!3655007) (not b_next!97003) (not b!3655036) (not bm!264235) (not b!3655014) b_and!270709 (not b_next!97005) (not b!3655034) (not b!3655041) b_and!270699 (not b!3655037) (not start!341890) (not b!3655032) (not b!3655031) (not b!3655046) (not bm!264239) (not b!3655045) tp_is_empty!18161 (not b!3655021) (not b!3655035))
(check-sat b_and!270711 (not b_next!96997) b_and!270703 b_and!270713 (not b_next!96993) b_and!270701 (not b_next!97003) b_and!270709 (not b_next!97005) b_and!270699 (not b_next!97001) (not b_next!96995) (not b_next!96999) (not b_next!97007) b_and!270705 b_and!270707)
