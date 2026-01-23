; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192640 () Bool)

(assert start!192640)

(declare-fun b!1923049 () Bool)

(declare-fun b_free!55097 () Bool)

(declare-fun b_next!55801 () Bool)

(assert (=> b!1923049 (= b_free!55097 (not b_next!55801))))

(declare-fun tp!549736 () Bool)

(declare-fun b_and!150471 () Bool)

(assert (=> b!1923049 (= tp!549736 b_and!150471)))

(declare-fun b_free!55099 () Bool)

(declare-fun b_next!55803 () Bool)

(assert (=> b!1923049 (= b_free!55099 (not b_next!55803))))

(declare-fun tp!549739 () Bool)

(declare-fun b_and!150473 () Bool)

(assert (=> b!1923049 (= tp!549739 b_and!150473)))

(declare-fun b!1923035 () Bool)

(declare-fun b_free!55101 () Bool)

(declare-fun b_next!55805 () Bool)

(assert (=> b!1923035 (= b_free!55101 (not b_next!55805))))

(declare-fun tp!549737 () Bool)

(declare-fun b_and!150475 () Bool)

(assert (=> b!1923035 (= tp!549737 b_and!150475)))

(declare-fun b_free!55103 () Bool)

(declare-fun b_next!55807 () Bool)

(assert (=> b!1923035 (= b_free!55103 (not b_next!55807))))

(declare-fun tp!549728 () Bool)

(declare-fun b_and!150477 () Bool)

(assert (=> b!1923035 (= tp!549728 b_and!150477)))

(declare-fun b!1923039 () Bool)

(declare-fun b_free!55105 () Bool)

(declare-fun b_next!55809 () Bool)

(assert (=> b!1923039 (= b_free!55105 (not b_next!55809))))

(declare-fun tp!549731 () Bool)

(declare-fun b_and!150479 () Bool)

(assert (=> b!1923039 (= tp!549731 b_and!150479)))

(declare-fun b_free!55107 () Bool)

(declare-fun b_next!55811 () Bool)

(assert (=> b!1923039 (= b_free!55107 (not b_next!55811))))

(declare-fun tp!549734 () Bool)

(declare-fun b_and!150481 () Bool)

(assert (=> b!1923039 (= tp!549734 b_and!150481)))

(declare-fun b!1923023 () Bool)

(declare-fun e!1229375 () Bool)

(declare-fun e!1229364 () Bool)

(assert (=> b!1923023 (= e!1229375 e!1229364)))

(declare-fun res!859998 () Bool)

(assert (=> b!1923023 (=> (not res!859998) (not e!1229364))))

(declare-datatypes ((C!10852 0))(
  ( (C!10853 (val!6378 Int)) )
))
(declare-datatypes ((List!21988 0))(
  ( (Nil!21906) (Cons!21906 (h!27307 C!10852) (t!179043 List!21988)) )
))
(declare-datatypes ((List!21989 0))(
  ( (Nil!21907) (Cons!21907 (h!27308 (_ BitVec 16)) (t!179044 List!21989)) )
))
(declare-datatypes ((TokenValue!4064 0))(
  ( (FloatLiteralValue!8128 (text!28893 List!21989)) (TokenValueExt!4063 (__x!13626 Int)) (Broken!20320 (value!123513 List!21989)) (Object!4145) (End!4064) (Def!4064) (Underscore!4064) (Match!4064) (Else!4064) (Error!4064) (Case!4064) (If!4064) (Extends!4064) (Abstract!4064) (Class!4064) (Val!4064) (DelimiterValue!8128 (del!4124 List!21989)) (KeywordValue!4070 (value!123514 List!21989)) (CommentValue!8128 (value!123515 List!21989)) (WhitespaceValue!8128 (value!123516 List!21989)) (IndentationValue!4064 (value!123517 List!21989)) (String!25437) (Int32!4064) (Broken!20321 (value!123518 List!21989)) (Boolean!4065) (Unit!36231) (OperatorValue!4067 (op!4124 List!21989)) (IdentifierValue!8128 (value!123519 List!21989)) (IdentifierValue!8129 (value!123520 List!21989)) (WhitespaceValue!8129 (value!123521 List!21989)) (True!8128) (False!8128) (Broken!20322 (value!123522 List!21989)) (Broken!20323 (value!123523 List!21989)) (True!8129) (RightBrace!4064) (RightBracket!4064) (Colon!4064) (Null!4064) (Comma!4064) (LeftBracket!4064) (False!8129) (LeftBrace!4064) (ImaginaryLiteralValue!4064 (text!28894 List!21989)) (StringLiteralValue!12192 (value!123524 List!21989)) (EOFValue!4064 (value!123525 List!21989)) (IdentValue!4064 (value!123526 List!21989)) (DelimiterValue!8129 (value!123527 List!21989)) (DedentValue!4064 (value!123528 List!21989)) (NewLineValue!4064 (value!123529 List!21989)) (IntegerValue!12192 (value!123530 (_ BitVec 32)) (text!28895 List!21989)) (IntegerValue!12193 (value!123531 Int) (text!28896 List!21989)) (Times!4064) (Or!4064) (Equal!4064) (Minus!4064) (Broken!20324 (value!123532 List!21989)) (And!4064) (Div!4064) (LessEqual!4064) (Mod!4064) (Concat!9417) (Not!4064) (Plus!4064) (SpaceValue!4064 (value!123533 List!21989)) (IntegerValue!12194 (value!123534 Int) (text!28897 List!21989)) (StringLiteralValue!12193 (text!28898 List!21989)) (FloatLiteralValue!8129 (text!28899 List!21989)) (BytesLiteralValue!4064 (value!123535 List!21989)) (CommentValue!8129 (value!123536 List!21989)) (StringLiteralValue!12194 (value!123537 List!21989)) (ErrorTokenValue!4064 (msg!4125 List!21989)) )
))
(declare-datatypes ((IArray!14625 0))(
  ( (IArray!14626 (innerList!7370 List!21988)) )
))
(declare-datatypes ((Conc!7310 0))(
  ( (Node!7310 (left!17424 Conc!7310) (right!17754 Conc!7310) (csize!14850 Int) (cheight!7521 Int)) (Leaf!10737 (xs!10204 IArray!14625) (csize!14851 Int)) (Empty!7310) )
))
(declare-datatypes ((BalanceConc!14436 0))(
  ( (BalanceConc!14437 (c!312512 Conc!7310)) )
))
(declare-datatypes ((TokenValueInjection!7712 0))(
  ( (TokenValueInjection!7713 (toValue!5557 Int) (toChars!5416 Int)) )
))
(declare-datatypes ((String!25438 0))(
  ( (String!25439 (value!123538 String)) )
))
(declare-datatypes ((Regex!5353 0))(
  ( (ElementMatch!5353 (c!312513 C!10852)) (Concat!9418 (regOne!11218 Regex!5353) (regTwo!11218 Regex!5353)) (EmptyExpr!5353) (Star!5353 (reg!5682 Regex!5353)) (EmptyLang!5353) (Union!5353 (regOne!11219 Regex!5353) (regTwo!11219 Regex!5353)) )
))
(declare-datatypes ((Rule!7656 0))(
  ( (Rule!7657 (regex!3928 Regex!5353) (tag!4370 String!25438) (isSeparator!3928 Bool) (transformation!3928 TokenValueInjection!7712)) )
))
(declare-fun lt!737042 () Rule!7656)

(declare-fun lt!737043 () List!21988)

(declare-fun matchR!2621 (Regex!5353 List!21988) Bool)

(assert (=> b!1923023 (= res!859998 (matchR!2621 (regex!3928 lt!737042) lt!737043))))

(declare-datatypes ((Option!4531 0))(
  ( (None!4530) (Some!4530 (v!26609 Rule!7656)) )
))
(declare-fun lt!737050 () Option!4531)

(declare-fun get!6892 (Option!4531) Rule!7656)

(assert (=> b!1923023 (= lt!737042 (get!6892 lt!737050))))

(declare-fun b!1923024 () Bool)

(declare-fun res!859992 () Bool)

(declare-fun e!1229361 () Bool)

(assert (=> b!1923024 (=> (not res!859992) (not e!1229361))))

(declare-datatypes ((Token!7408 0))(
  ( (Token!7409 (value!123539 TokenValue!4064) (rule!6131 Rule!7656) (size!17088 Int) (originalCharacters!4735 List!21988)) )
))
(declare-datatypes ((List!21990 0))(
  ( (Nil!21908) (Cons!21908 (h!27309 Token!7408) (t!179045 List!21990)) )
))
(declare-fun tokens!598 () List!21990)

(get-info :version)

(assert (=> b!1923024 (= res!859992 ((_ is Cons!21908) tokens!598))))

(declare-fun e!1229355 () Bool)

(declare-fun b!1923025 () Bool)

(declare-fun e!1229369 () Bool)

(declare-fun tp!549730 () Bool)

(declare-fun inv!28980 (Token!7408) Bool)

(assert (=> b!1923025 (= e!1229355 (and (inv!28980 (h!27309 tokens!598)) e!1229369 tp!549730))))

(declare-fun b!1923026 () Bool)

(declare-fun e!1229378 () Bool)

(declare-fun e!1229367 () Bool)

(assert (=> b!1923026 (= e!1229378 e!1229367)))

(declare-fun res!859987 () Bool)

(assert (=> b!1923026 (=> (not res!859987) (not e!1229367))))

(declare-fun lt!737053 () Rule!7656)

(declare-fun lt!737051 () List!21988)

(assert (=> b!1923026 (= res!859987 (matchR!2621 (regex!3928 lt!737053) lt!737051))))

(declare-fun lt!737041 () Option!4531)

(assert (=> b!1923026 (= lt!737053 (get!6892 lt!737041))))

(declare-fun separatorToken!354 () Token!7408)

(declare-fun tp!549738 () Bool)

(declare-fun e!1229360 () Bool)

(declare-fun b!1923028 () Bool)

(declare-fun e!1229368 () Bool)

(declare-fun inv!21 (TokenValue!4064) Bool)

(assert (=> b!1923028 (= e!1229360 (and (inv!21 (value!123539 separatorToken!354)) e!1229368 tp!549738))))

(declare-fun b!1923029 () Bool)

(declare-fun e!1229356 () Bool)

(assert (=> b!1923029 (= e!1229356 false)))

(declare-fun b!1923030 () Bool)

(declare-fun res!859988 () Bool)

(assert (=> b!1923030 (=> (not res!859988) (not e!1229361))))

(declare-datatypes ((LexerInterface!3541 0))(
  ( (LexerInterfaceExt!3538 (__x!13627 Int)) (Lexer!3539) )
))
(declare-fun thiss!23328 () LexerInterface!3541)

(declare-datatypes ((List!21991 0))(
  ( (Nil!21909) (Cons!21909 (h!27310 Rule!7656) (t!179046 List!21991)) )
))
(declare-fun rules!3198 () List!21991)

(declare-fun rulesInvariant!3148 (LexerInterface!3541 List!21991) Bool)

(assert (=> b!1923030 (= res!859988 (rulesInvariant!3148 thiss!23328 rules!3198))))

(declare-fun b!1923031 () Bool)

(assert (=> b!1923031 (= e!1229367 (= (rule!6131 (h!27309 tokens!598)) lt!737053))))

(declare-fun b!1923032 () Bool)

(declare-datatypes ((Unit!36232 0))(
  ( (Unit!36233) )
))
(declare-fun e!1229359 () Unit!36232)

(declare-fun Unit!36234 () Unit!36232)

(assert (=> b!1923032 (= e!1229359 Unit!36234)))

(declare-fun lt!737044 () Unit!36232)

(declare-fun lt!737055 () C!10852)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!280 (Regex!5353 List!21988 C!10852) Unit!36232)

(assert (=> b!1923032 (= lt!737044 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!280 (regex!3928 (rule!6131 separatorToken!354)) lt!737043 lt!737055))))

(declare-fun res!859996 () Bool)

(assert (=> b!1923032 (= res!859996 (not (matchR!2621 (regex!3928 (rule!6131 separatorToken!354)) lt!737043)))))

(assert (=> b!1923032 (=> (not res!859996) (not e!1229356))))

(assert (=> b!1923032 e!1229356))

(declare-fun b!1923033 () Bool)

(declare-fun Unit!36235 () Unit!36232)

(assert (=> b!1923033 (= e!1229359 Unit!36235)))

(declare-fun b!1923034 () Bool)

(assert (=> b!1923034 (= e!1229364 (= (rule!6131 separatorToken!354) lt!737042))))

(declare-fun e!1229370 () Bool)

(assert (=> b!1923035 (= e!1229370 (and tp!549737 tp!549728))))

(declare-fun e!1229373 () Bool)

(declare-fun tp!549732 () Bool)

(declare-fun b!1923036 () Bool)

(declare-fun inv!28977 (String!25438) Bool)

(declare-fun inv!28981 (TokenValueInjection!7712) Bool)

(assert (=> b!1923036 (= e!1229373 (and tp!549732 (inv!28977 (tag!4370 (rule!6131 (h!27309 tokens!598)))) (inv!28981 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) e!1229370))))

(declare-fun b!1923027 () Bool)

(declare-fun res!859994 () Bool)

(assert (=> b!1923027 (=> (not res!859994) (not e!1229361))))

(declare-fun rulesProduceIndividualToken!1713 (LexerInterface!3541 List!21991 Token!7408) Bool)

(assert (=> b!1923027 (= res!859994 (rulesProduceIndividualToken!1713 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun res!859985 () Bool)

(assert (=> start!192640 (=> (not res!859985) (not e!1229361))))

(assert (=> start!192640 (= res!859985 ((_ is Lexer!3539) thiss!23328))))

(assert (=> start!192640 e!1229361))

(assert (=> start!192640 true))

(declare-fun e!1229377 () Bool)

(assert (=> start!192640 e!1229377))

(assert (=> start!192640 e!1229355))

(assert (=> start!192640 (and (inv!28980 separatorToken!354) e!1229360)))

(declare-fun tp!549740 () Bool)

(declare-fun e!1229371 () Bool)

(declare-fun b!1923037 () Bool)

(assert (=> b!1923037 (= e!1229368 (and tp!549740 (inv!28977 (tag!4370 (rule!6131 separatorToken!354))) (inv!28981 (transformation!3928 (rule!6131 separatorToken!354))) e!1229371))))

(declare-fun b!1923038 () Bool)

(declare-fun e!1229372 () Bool)

(assert (=> b!1923038 (= e!1229361 (not e!1229372))))

(declare-fun res!859990 () Bool)

(assert (=> b!1923038 (=> res!859990 e!1229372)))

(declare-fun lt!737046 () Bool)

(declare-datatypes ((tuple2!20518 0))(
  ( (tuple2!20519 (_1!11728 Token!7408) (_2!11728 List!21988)) )
))
(declare-datatypes ((Option!4532 0))(
  ( (None!4531) (Some!4531 (v!26610 tuple2!20518)) )
))
(declare-fun lt!737047 () Option!4532)

(assert (=> b!1923038 (= res!859990 (or (and (not lt!737046) (= (_1!11728 (v!26610 lt!737047)) (h!27309 tokens!598))) lt!737046 (= (_1!11728 (v!26610 lt!737047)) (h!27309 tokens!598))))))

(assert (=> b!1923038 (= lt!737046 (not ((_ is Some!4531) lt!737047)))))

(declare-fun lt!737059 () List!21988)

(declare-fun maxPrefix!1979 (LexerInterface!3541 List!21991 List!21988) Option!4532)

(declare-fun ++!5869 (List!21988 List!21988) List!21988)

(assert (=> b!1923038 (= lt!737047 (maxPrefix!1979 thiss!23328 rules!3198 (++!5869 lt!737051 lt!737059)))))

(declare-fun printWithSeparatorTokenWhenNeededList!580 (LexerInterface!3541 List!21991 List!21990 Token!7408) List!21988)

(assert (=> b!1923038 (= lt!737059 (printWithSeparatorTokenWhenNeededList!580 thiss!23328 rules!3198 (t!179045 tokens!598) separatorToken!354))))

(assert (=> b!1923038 e!1229378))

(declare-fun res!859991 () Bool)

(assert (=> b!1923038 (=> (not res!859991) (not e!1229378))))

(declare-fun isDefined!3825 (Option!4531) Bool)

(assert (=> b!1923038 (= res!859991 (isDefined!3825 lt!737041))))

(declare-fun getRuleFromTag!749 (LexerInterface!3541 List!21991 String!25438) Option!4531)

(assert (=> b!1923038 (= lt!737041 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))))

(declare-fun lt!737056 () Unit!36232)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!749 (LexerInterface!3541 List!21991 List!21988 Token!7408) Unit!36232)

(assert (=> b!1923038 (= lt!737056 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!749 thiss!23328 rules!3198 lt!737051 (h!27309 tokens!598)))))

(declare-fun e!1229362 () Bool)

(assert (=> b!1923038 e!1229362))

(declare-fun res!859989 () Bool)

(assert (=> b!1923038 (=> (not res!859989) (not e!1229362))))

(declare-fun lt!737052 () Option!4532)

(declare-fun isDefined!3826 (Option!4532) Bool)

(assert (=> b!1923038 (= res!859989 (isDefined!3826 lt!737052))))

(assert (=> b!1923038 (= lt!737052 (maxPrefix!1979 thiss!23328 rules!3198 lt!737051))))

(declare-fun lt!737049 () BalanceConc!14436)

(declare-fun list!8853 (BalanceConc!14436) List!21988)

(assert (=> b!1923038 (= lt!737051 (list!8853 lt!737049))))

(assert (=> b!1923038 e!1229375))

(declare-fun res!859997 () Bool)

(assert (=> b!1923038 (=> (not res!859997) (not e!1229375))))

(assert (=> b!1923038 (= res!859997 (isDefined!3825 lt!737050))))

(assert (=> b!1923038 (= lt!737050 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))))

(declare-fun lt!737040 () Unit!36232)

(assert (=> b!1923038 (= lt!737040 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!749 thiss!23328 rules!3198 lt!737043 separatorToken!354))))

(declare-fun charsOf!2468 (Token!7408) BalanceConc!14436)

(assert (=> b!1923038 (= lt!737043 (list!8853 (charsOf!2468 separatorToken!354)))))

(declare-fun lt!737058 () Unit!36232)

(declare-fun lemmaEqSameImage!614 (TokenValueInjection!7712 BalanceConc!14436 BalanceConc!14436) Unit!36232)

(declare-fun seqFromList!2782 (List!21988) BalanceConc!14436)

(assert (=> b!1923038 (= lt!737058 (lemmaEqSameImage!614 (transformation!3928 (rule!6131 (h!27309 tokens!598))) lt!737049 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))))))

(declare-fun lt!737060 () Unit!36232)

(declare-fun lemmaSemiInverse!885 (TokenValueInjection!7712 BalanceConc!14436) Unit!36232)

(assert (=> b!1923038 (= lt!737060 (lemmaSemiInverse!885 (transformation!3928 (rule!6131 (h!27309 tokens!598))) lt!737049))))

(assert (=> b!1923038 (= lt!737049 (charsOf!2468 (h!27309 tokens!598)))))

(declare-fun e!1229376 () Bool)

(assert (=> b!1923039 (= e!1229376 (and tp!549731 tp!549734))))

(declare-fun b!1923040 () Bool)

(declare-fun res!860000 () Bool)

(assert (=> b!1923040 (=> (not res!860000) (not e!1229361))))

(declare-fun lambda!75071 () Int)

(declare-fun forall!4628 (List!21990 Int) Bool)

(assert (=> b!1923040 (= res!860000 (forall!4628 tokens!598 lambda!75071))))

(declare-fun b!1923041 () Bool)

(declare-fun res!859986 () Bool)

(assert (=> b!1923041 (=> (not res!859986) (not e!1229361))))

(declare-fun rulesProduceEachTokenIndividuallyList!1272 (LexerInterface!3541 List!21991 List!21990) Bool)

(assert (=> b!1923041 (= res!859986 (rulesProduceEachTokenIndividuallyList!1272 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1923042 () Bool)

(declare-fun tp!549735 () Bool)

(declare-fun e!1229358 () Bool)

(assert (=> b!1923042 (= e!1229358 (and tp!549735 (inv!28977 (tag!4370 (h!27310 rules!3198))) (inv!28981 (transformation!3928 (h!27310 rules!3198))) e!1229376))))

(declare-fun b!1923043 () Bool)

(declare-fun res!859995 () Bool)

(assert (=> b!1923043 (=> (not res!859995) (not e!1229361))))

(declare-fun isEmpty!13478 (List!21991) Bool)

(assert (=> b!1923043 (= res!859995 (not (isEmpty!13478 rules!3198)))))

(declare-fun b!1923044 () Bool)

(declare-fun res!859999 () Bool)

(assert (=> b!1923044 (=> (not res!859999) (not e!1229361))))

(assert (=> b!1923044 (= res!859999 (isSeparator!3928 (rule!6131 separatorToken!354)))))

(declare-fun b!1923045 () Bool)

(declare-fun tp!549729 () Bool)

(assert (=> b!1923045 (= e!1229377 (and e!1229358 tp!549729))))

(declare-fun tp!549733 () Bool)

(declare-fun b!1923046 () Bool)

(assert (=> b!1923046 (= e!1229369 (and (inv!21 (value!123539 (h!27309 tokens!598))) e!1229373 tp!549733))))

(declare-fun b!1923047 () Bool)

(declare-fun res!859993 () Bool)

(assert (=> b!1923047 (=> (not res!859993) (not e!1229361))))

(declare-fun sepAndNonSepRulesDisjointChars!1026 (List!21991 List!21991) Bool)

(assert (=> b!1923047 (= res!859993 (sepAndNonSepRulesDisjointChars!1026 rules!3198 rules!3198))))

(declare-fun b!1923048 () Bool)

(declare-fun lt!737045 () List!21988)

(declare-fun lt!737054 () List!21988)

(assert (=> b!1923048 (= e!1229372 (or (not (= lt!737045 lt!737054)) (= lt!737054 lt!737051)))))

(declare-fun printList!1076 (LexerInterface!3541 List!21990) List!21988)

(assert (=> b!1923048 (= lt!737054 (printList!1076 thiss!23328 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))

(declare-fun lt!737039 () BalanceConc!14436)

(assert (=> b!1923048 (= lt!737045 (list!8853 lt!737039))))

(declare-datatypes ((IArray!14627 0))(
  ( (IArray!14628 (innerList!7371 List!21990)) )
))
(declare-datatypes ((Conc!7311 0))(
  ( (Node!7311 (left!17425 Conc!7311) (right!17755 Conc!7311) (csize!14852 Int) (cheight!7522 Int)) (Leaf!10738 (xs!10205 IArray!14627) (csize!14853 Int)) (Empty!7311) )
))
(declare-datatypes ((BalanceConc!14438 0))(
  ( (BalanceConc!14439 (c!312514 Conc!7311)) )
))
(declare-fun lt!737061 () BalanceConc!14438)

(declare-fun printTailRec!1017 (LexerInterface!3541 BalanceConc!14438 Int BalanceConc!14436) BalanceConc!14436)

(assert (=> b!1923048 (= lt!737039 (printTailRec!1017 thiss!23328 lt!737061 0 (BalanceConc!14437 Empty!7310)))))

(declare-fun print!1511 (LexerInterface!3541 BalanceConc!14438) BalanceConc!14436)

(assert (=> b!1923048 (= lt!737039 (print!1511 thiss!23328 lt!737061))))

(declare-fun singletonSeq!1912 (Token!7408) BalanceConc!14438)

(assert (=> b!1923048 (= lt!737061 (singletonSeq!1912 (h!27309 tokens!598)))))

(declare-fun contains!3951 (List!21988 C!10852) Bool)

(declare-fun usedCharacters!380 (Regex!5353) List!21988)

(assert (=> b!1923048 (not (contains!3951 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))) lt!737055))))

(declare-fun lt!737048 () Unit!36232)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!76 (LexerInterface!3541 List!21991 List!21991 Rule!7656 Rule!7656 C!10852) Unit!36232)

(assert (=> b!1923048 (= lt!737048 (lemmaNonSepRuleNotContainsCharContainedInASepRule!76 thiss!23328 rules!3198 rules!3198 (rule!6131 (h!27309 tokens!598)) (rule!6131 separatorToken!354) lt!737055))))

(declare-fun lt!737062 () Unit!36232)

(assert (=> b!1923048 (= lt!737062 e!1229359)))

(declare-fun c!312511 () Bool)

(assert (=> b!1923048 (= c!312511 (not (contains!3951 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354))) lt!737055)))))

(declare-fun head!4484 (List!21988) C!10852)

(assert (=> b!1923048 (= lt!737055 (head!4484 lt!737043))))

(assert (=> b!1923048 (= (++!5869 (++!5869 lt!737051 lt!737043) lt!737059) (++!5869 lt!737051 (++!5869 lt!737043 lt!737059)))))

(declare-fun lt!737057 () Unit!36232)

(declare-fun lemmaConcatAssociativity!1187 (List!21988 List!21988 List!21988) Unit!36232)

(assert (=> b!1923048 (= lt!737057 (lemmaConcatAssociativity!1187 lt!737051 lt!737043 lt!737059))))

(assert (=> b!1923049 (= e!1229371 (and tp!549736 tp!549739))))

(declare-fun b!1923050 () Bool)

(declare-fun get!6893 (Option!4532) tuple2!20518)

(assert (=> b!1923050 (= e!1229362 (= (_1!11728 (get!6893 lt!737052)) (h!27309 tokens!598)))))

(assert (= (and start!192640 res!859985) b!1923043))

(assert (= (and b!1923043 res!859995) b!1923030))

(assert (= (and b!1923030 res!859988) b!1923041))

(assert (= (and b!1923041 res!859986) b!1923027))

(assert (= (and b!1923027 res!859994) b!1923044))

(assert (= (and b!1923044 res!859999) b!1923040))

(assert (= (and b!1923040 res!860000) b!1923047))

(assert (= (and b!1923047 res!859993) b!1923024))

(assert (= (and b!1923024 res!859992) b!1923038))

(assert (= (and b!1923038 res!859997) b!1923023))

(assert (= (and b!1923023 res!859998) b!1923034))

(assert (= (and b!1923038 res!859989) b!1923050))

(assert (= (and b!1923038 res!859991) b!1923026))

(assert (= (and b!1923026 res!859987) b!1923031))

(assert (= (and b!1923038 (not res!859990)) b!1923048))

(assert (= (and b!1923048 c!312511) b!1923032))

(assert (= (and b!1923048 (not c!312511)) b!1923033))

(assert (= (and b!1923032 res!859996) b!1923029))

(assert (= b!1923042 b!1923039))

(assert (= b!1923045 b!1923042))

(assert (= (and start!192640 ((_ is Cons!21909) rules!3198)) b!1923045))

(assert (= b!1923036 b!1923035))

(assert (= b!1923046 b!1923036))

(assert (= b!1923025 b!1923046))

(assert (= (and start!192640 ((_ is Cons!21908) tokens!598)) b!1923025))

(assert (= b!1923037 b!1923049))

(assert (= b!1923028 b!1923037))

(assert (= start!192640 b!1923028))

(declare-fun m!2357959 () Bool)

(assert (=> b!1923030 m!2357959))

(declare-fun m!2357961 () Bool)

(assert (=> b!1923050 m!2357961))

(declare-fun m!2357963 () Bool)

(assert (=> b!1923036 m!2357963))

(declare-fun m!2357965 () Bool)

(assert (=> b!1923036 m!2357965))

(declare-fun m!2357967 () Bool)

(assert (=> b!1923043 m!2357967))

(declare-fun m!2357969 () Bool)

(assert (=> b!1923040 m!2357969))

(declare-fun m!2357971 () Bool)

(assert (=> b!1923028 m!2357971))

(declare-fun m!2357973 () Bool)

(assert (=> b!1923047 m!2357973))

(declare-fun m!2357975 () Bool)

(assert (=> b!1923026 m!2357975))

(declare-fun m!2357977 () Bool)

(assert (=> b!1923026 m!2357977))

(declare-fun m!2357979 () Bool)

(assert (=> b!1923041 m!2357979))

(declare-fun m!2357981 () Bool)

(assert (=> b!1923048 m!2357981))

(declare-fun m!2357983 () Bool)

(assert (=> b!1923048 m!2357983))

(declare-fun m!2357985 () Bool)

(assert (=> b!1923048 m!2357985))

(assert (=> b!1923048 m!2357983))

(declare-fun m!2357987 () Bool)

(assert (=> b!1923048 m!2357987))

(declare-fun m!2357989 () Bool)

(assert (=> b!1923048 m!2357989))

(declare-fun m!2357991 () Bool)

(assert (=> b!1923048 m!2357991))

(declare-fun m!2357993 () Bool)

(assert (=> b!1923048 m!2357993))

(declare-fun m!2357995 () Bool)

(assert (=> b!1923048 m!2357995))

(declare-fun m!2357997 () Bool)

(assert (=> b!1923048 m!2357997))

(assert (=> b!1923048 m!2357995))

(declare-fun m!2357999 () Bool)

(assert (=> b!1923048 m!2357999))

(declare-fun m!2358001 () Bool)

(assert (=> b!1923048 m!2358001))

(declare-fun m!2358003 () Bool)

(assert (=> b!1923048 m!2358003))

(declare-fun m!2358005 () Bool)

(assert (=> b!1923048 m!2358005))

(declare-fun m!2358007 () Bool)

(assert (=> b!1923048 m!2358007))

(assert (=> b!1923048 m!2357989))

(assert (=> b!1923048 m!2357993))

(declare-fun m!2358009 () Bool)

(assert (=> b!1923048 m!2358009))

(declare-fun m!2358011 () Bool)

(assert (=> b!1923048 m!2358011))

(declare-fun m!2358013 () Bool)

(assert (=> b!1923023 m!2358013))

(declare-fun m!2358015 () Bool)

(assert (=> b!1923023 m!2358015))

(declare-fun m!2358017 () Bool)

(assert (=> b!1923038 m!2358017))

(declare-fun m!2358019 () Bool)

(assert (=> b!1923038 m!2358019))

(declare-fun m!2358021 () Bool)

(assert (=> b!1923038 m!2358021))

(declare-fun m!2358023 () Bool)

(assert (=> b!1923038 m!2358023))

(assert (=> b!1923038 m!2358023))

(declare-fun m!2358025 () Bool)

(assert (=> b!1923038 m!2358025))

(declare-fun m!2358027 () Bool)

(assert (=> b!1923038 m!2358027))

(declare-fun m!2358029 () Bool)

(assert (=> b!1923038 m!2358029))

(assert (=> b!1923038 m!2358019))

(declare-fun m!2358031 () Bool)

(assert (=> b!1923038 m!2358031))

(declare-fun m!2358033 () Bool)

(assert (=> b!1923038 m!2358033))

(declare-fun m!2358035 () Bool)

(assert (=> b!1923038 m!2358035))

(declare-fun m!2358037 () Bool)

(assert (=> b!1923038 m!2358037))

(declare-fun m!2358039 () Bool)

(assert (=> b!1923038 m!2358039))

(declare-fun m!2358041 () Bool)

(assert (=> b!1923038 m!2358041))

(declare-fun m!2358043 () Bool)

(assert (=> b!1923038 m!2358043))

(declare-fun m!2358045 () Bool)

(assert (=> b!1923038 m!2358045))

(declare-fun m!2358047 () Bool)

(assert (=> b!1923038 m!2358047))

(declare-fun m!2358049 () Bool)

(assert (=> b!1923038 m!2358049))

(assert (=> b!1923038 m!2358045))

(declare-fun m!2358051 () Bool)

(assert (=> b!1923038 m!2358051))

(declare-fun m!2358053 () Bool)

(assert (=> b!1923025 m!2358053))

(declare-fun m!2358055 () Bool)

(assert (=> b!1923046 m!2358055))

(declare-fun m!2358057 () Bool)

(assert (=> start!192640 m!2358057))

(declare-fun m!2358059 () Bool)

(assert (=> b!1923027 m!2358059))

(declare-fun m!2358061 () Bool)

(assert (=> b!1923037 m!2358061))

(declare-fun m!2358063 () Bool)

(assert (=> b!1923037 m!2358063))

(declare-fun m!2358065 () Bool)

(assert (=> b!1923042 m!2358065))

(declare-fun m!2358067 () Bool)

(assert (=> b!1923042 m!2358067))

(declare-fun m!2358069 () Bool)

(assert (=> b!1923032 m!2358069))

(declare-fun m!2358071 () Bool)

(assert (=> b!1923032 m!2358071))

(check-sat (not b!1923030) b_and!150471 b_and!150481 (not b!1923047) (not b!1923046) (not b!1923045) (not b!1923023) b_and!150479 b_and!150477 (not b!1923038) (not b_next!55811) (not b!1923028) (not b!1923037) (not b_next!55807) b_and!150475 b_and!150473 (not b!1923040) (not b!1923026) (not b!1923036) (not b!1923032) (not b!1923050) (not b!1923025) (not b!1923041) (not b_next!55801) (not b_next!55803) (not start!192640) (not b!1923043) (not b_next!55805) (not b!1923048) (not b!1923042) (not b!1923027) (not b_next!55809))
(check-sat b_and!150471 b_and!150481 b_and!150473 b_and!150479 b_and!150477 (not b_next!55805) (not b_next!55811) (not b_next!55809) (not b_next!55807) b_and!150475 (not b_next!55801) (not b_next!55803))
(get-model)

(declare-fun d!585841 () Bool)

(assert (=> d!585841 (= (get!6893 lt!737052) (v!26610 lt!737052))))

(assert (=> b!1923050 d!585841))

(declare-fun d!585843 () Bool)

(declare-fun res!860015 () Bool)

(declare-fun e!1229383 () Bool)

(assert (=> d!585843 (=> res!860015 e!1229383)))

(assert (=> d!585843 (= res!860015 ((_ is Nil!21908) tokens!598))))

(assert (=> d!585843 (= (forall!4628 tokens!598 lambda!75071) e!1229383)))

(declare-fun b!1923055 () Bool)

(declare-fun e!1229384 () Bool)

(assert (=> b!1923055 (= e!1229383 e!1229384)))

(declare-fun res!860016 () Bool)

(assert (=> b!1923055 (=> (not res!860016) (not e!1229384))))

(declare-fun dynLambda!10587 (Int Token!7408) Bool)

(assert (=> b!1923055 (= res!860016 (dynLambda!10587 lambda!75071 (h!27309 tokens!598)))))

(declare-fun b!1923056 () Bool)

(assert (=> b!1923056 (= e!1229384 (forall!4628 (t!179045 tokens!598) lambda!75071))))

(assert (= (and d!585843 (not res!860015)) b!1923055))

(assert (= (and b!1923055 res!860016) b!1923056))

(declare-fun b_lambda!63569 () Bool)

(assert (=> (not b_lambda!63569) (not b!1923055)))

(declare-fun m!2358073 () Bool)

(assert (=> b!1923055 m!2358073))

(declare-fun m!2358075 () Bool)

(assert (=> b!1923056 m!2358075))

(assert (=> b!1923040 d!585843))

(declare-fun d!585845 () Bool)

(declare-fun isEmpty!13483 (Option!4532) Bool)

(assert (=> d!585845 (= (isDefined!3826 lt!737052) (not (isEmpty!13483 lt!737052)))))

(declare-fun bs!414427 () Bool)

(assert (= bs!414427 d!585845))

(declare-fun m!2358077 () Bool)

(assert (=> bs!414427 m!2358077))

(assert (=> b!1923038 d!585845))

(declare-fun b!1923164 () Bool)

(declare-fun e!1229437 () Bool)

(assert (=> b!1923164 (= e!1229437 true)))

(declare-fun d!585847 () Bool)

(assert (=> d!585847 e!1229437))

(assert (= d!585847 b!1923164))

(declare-fun order!13719 () Int)

(declare-fun order!13717 () Int)

(declare-fun lambda!75074 () Int)

(declare-fun dynLambda!10588 (Int Int) Int)

(declare-fun dynLambda!10589 (Int Int) Int)

(assert (=> b!1923164 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (dynLambda!10589 order!13719 lambda!75074))))

(declare-fun order!13721 () Int)

(declare-fun dynLambda!10590 (Int Int) Int)

(assert (=> b!1923164 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (dynLambda!10589 order!13719 lambda!75074))))

(declare-fun dynLambda!10591 (Int TokenValue!4064) BalanceConc!14436)

(declare-fun dynLambda!10592 (Int BalanceConc!14436) TokenValue!4064)

(assert (=> d!585847 (= (list!8853 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))) (list!8853 lt!737049))))

(declare-fun lt!737097 () Unit!36232)

(declare-fun ForallOf!401 (Int BalanceConc!14436) Unit!36232)

(assert (=> d!585847 (= lt!737097 (ForallOf!401 lambda!75074 lt!737049))))

(assert (=> d!585847 (= (lemmaSemiInverse!885 (transformation!3928 (rule!6131 (h!27309 tokens!598))) lt!737049) lt!737097)))

(declare-fun b_lambda!63571 () Bool)

(assert (=> (not b_lambda!63571) (not d!585847)))

(declare-fun tb!117493 () Bool)

(declare-fun t!179051 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179051) tb!117493))

(declare-fun e!1229440 () Bool)

(declare-fun b!1923169 () Bool)

(declare-fun tp!549743 () Bool)

(declare-fun inv!28984 (Conc!7310) Bool)

(assert (=> b!1923169 (= e!1229440 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))) tp!549743))))

(declare-fun result!142008 () Bool)

(declare-fun inv!28985 (BalanceConc!14436) Bool)

(assert (=> tb!117493 (= result!142008 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))) e!1229440))))

(assert (= tb!117493 b!1923169))

(declare-fun m!2358175 () Bool)

(assert (=> b!1923169 m!2358175))

(declare-fun m!2358177 () Bool)

(assert (=> tb!117493 m!2358177))

(assert (=> d!585847 t!179051))

(declare-fun b_and!150483 () Bool)

(assert (= b_and!150473 (and (=> t!179051 result!142008) b_and!150483)))

(declare-fun t!179053 () Bool)

(declare-fun tb!117495 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179053) tb!117495))

(declare-fun result!142012 () Bool)

(assert (= result!142012 result!142008))

(assert (=> d!585847 t!179053))

(declare-fun b_and!150485 () Bool)

(assert (= b_and!150477 (and (=> t!179053 result!142012) b_and!150485)))

(declare-fun tb!117497 () Bool)

(declare-fun t!179055 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179055) tb!117497))

(declare-fun result!142014 () Bool)

(assert (= result!142014 result!142008))

(assert (=> d!585847 t!179055))

(declare-fun b_and!150487 () Bool)

(assert (= b_and!150481 (and (=> t!179055 result!142014) b_and!150487)))

(declare-fun b_lambda!63573 () Bool)

(assert (=> (not b_lambda!63573) (not d!585847)))

(declare-fun tb!117499 () Bool)

(declare-fun t!179057 () Bool)

(assert (=> (and b!1923049 (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179057) tb!117499))

(declare-fun result!142016 () Bool)

(assert (=> tb!117499 (= result!142016 (inv!21 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))

(declare-fun m!2358179 () Bool)

(assert (=> tb!117499 m!2358179))

(assert (=> d!585847 t!179057))

(declare-fun b_and!150489 () Bool)

(assert (= b_and!150471 (and (=> t!179057 result!142016) b_and!150489)))

(declare-fun t!179059 () Bool)

(declare-fun tb!117501 () Bool)

(assert (=> (and b!1923035 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179059) tb!117501))

(declare-fun result!142020 () Bool)

(assert (= result!142020 result!142016))

(assert (=> d!585847 t!179059))

(declare-fun b_and!150491 () Bool)

(assert (= b_and!150475 (and (=> t!179059 result!142020) b_and!150491)))

(declare-fun tb!117503 () Bool)

(declare-fun t!179061 () Bool)

(assert (=> (and b!1923039 (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179061) tb!117503))

(declare-fun result!142022 () Bool)

(assert (= result!142022 result!142016))

(assert (=> d!585847 t!179061))

(declare-fun b_and!150493 () Bool)

(assert (= b_and!150479 (and (=> t!179061 result!142022) b_and!150493)))

(declare-fun m!2358181 () Bool)

(assert (=> d!585847 m!2358181))

(declare-fun m!2358183 () Bool)

(assert (=> d!585847 m!2358183))

(declare-fun m!2358185 () Bool)

(assert (=> d!585847 m!2358185))

(assert (=> d!585847 m!2358039))

(declare-fun m!2358187 () Bool)

(assert (=> d!585847 m!2358187))

(assert (=> d!585847 m!2358187))

(assert (=> d!585847 m!2358181))

(assert (=> b!1923038 d!585847))

(declare-fun bm!118154 () Bool)

(declare-fun call!118159 () Option!4532)

(declare-fun maxPrefixOneRule!1219 (LexerInterface!3541 Rule!7656 List!21988) Option!4532)

(assert (=> bm!118154 (= call!118159 (maxPrefixOneRule!1219 thiss!23328 (h!27310 rules!3198) (++!5869 lt!737051 lt!737059)))))

(declare-fun d!585865 () Bool)

(declare-fun e!1229450 () Bool)

(assert (=> d!585865 e!1229450))

(declare-fun res!860103 () Bool)

(assert (=> d!585865 (=> res!860103 e!1229450)))

(declare-fun lt!737108 () Option!4532)

(assert (=> d!585865 (= res!860103 (isEmpty!13483 lt!737108))))

(declare-fun e!1229452 () Option!4532)

(assert (=> d!585865 (= lt!737108 e!1229452)))

(declare-fun c!312535 () Bool)

(assert (=> d!585865 (= c!312535 (and ((_ is Cons!21909) rules!3198) ((_ is Nil!21909) (t!179046 rules!3198))))))

(declare-fun lt!737110 () Unit!36232)

(declare-fun lt!737111 () Unit!36232)

(assert (=> d!585865 (= lt!737110 lt!737111)))

(declare-fun isPrefix!1937 (List!21988 List!21988) Bool)

(assert (=> d!585865 (isPrefix!1937 (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059))))

(declare-fun lemmaIsPrefixRefl!1255 (List!21988 List!21988) Unit!36232)

(assert (=> d!585865 (= lt!737111 (lemmaIsPrefixRefl!1255 (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059)))))

(declare-fun rulesValidInductive!1336 (LexerInterface!3541 List!21991) Bool)

(assert (=> d!585865 (rulesValidInductive!1336 thiss!23328 rules!3198)))

(assert (=> d!585865 (= (maxPrefix!1979 thiss!23328 rules!3198 (++!5869 lt!737051 lt!737059)) lt!737108)))

(declare-fun b!1923190 () Bool)

(declare-fun lt!737109 () Option!4532)

(declare-fun lt!737112 () Option!4532)

(assert (=> b!1923190 (= e!1229452 (ite (and ((_ is None!4531) lt!737109) ((_ is None!4531) lt!737112)) None!4531 (ite ((_ is None!4531) lt!737112) lt!737109 (ite ((_ is None!4531) lt!737109) lt!737112 (ite (>= (size!17088 (_1!11728 (v!26610 lt!737109))) (size!17088 (_1!11728 (v!26610 lt!737112)))) lt!737109 lt!737112)))))))

(assert (=> b!1923190 (= lt!737109 call!118159)))

(assert (=> b!1923190 (= lt!737112 (maxPrefix!1979 thiss!23328 (t!179046 rules!3198) (++!5869 lt!737051 lt!737059)))))

(declare-fun b!1923191 () Bool)

(declare-fun res!860104 () Bool)

(declare-fun e!1229451 () Bool)

(assert (=> b!1923191 (=> (not res!860104) (not e!1229451))))

(declare-fun apply!5680 (TokenValueInjection!7712 BalanceConc!14436) TokenValue!4064)

(assert (=> b!1923191 (= res!860104 (= (value!123539 (_1!11728 (get!6893 lt!737108))) (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737108)))))))))

(declare-fun b!1923192 () Bool)

(declare-fun contains!3953 (List!21991 Rule!7656) Bool)

(assert (=> b!1923192 (= e!1229451 (contains!3953 rules!3198 (rule!6131 (_1!11728 (get!6893 lt!737108)))))))

(declare-fun b!1923193 () Bool)

(assert (=> b!1923193 (= e!1229452 call!118159)))

(declare-fun b!1923194 () Bool)

(assert (=> b!1923194 (= e!1229450 e!1229451)))

(declare-fun res!860102 () Bool)

(assert (=> b!1923194 (=> (not res!860102) (not e!1229451))))

(assert (=> b!1923194 (= res!860102 (isDefined!3826 lt!737108))))

(declare-fun b!1923195 () Bool)

(declare-fun res!860100 () Bool)

(assert (=> b!1923195 (=> (not res!860100) (not e!1229451))))

(assert (=> b!1923195 (= res!860100 (matchR!2621 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))))))

(declare-fun b!1923196 () Bool)

(declare-fun res!860106 () Bool)

(assert (=> b!1923196 (=> (not res!860106) (not e!1229451))))

(assert (=> b!1923196 (= res!860106 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108)))) (_2!11728 (get!6893 lt!737108))) (++!5869 lt!737051 lt!737059)))))

(declare-fun b!1923197 () Bool)

(declare-fun res!860105 () Bool)

(assert (=> b!1923197 (=> (not res!860105) (not e!1229451))))

(assert (=> b!1923197 (= res!860105 (= (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108)))) (originalCharacters!4735 (_1!11728 (get!6893 lt!737108)))))))

(declare-fun b!1923198 () Bool)

(declare-fun res!860101 () Bool)

(assert (=> b!1923198 (=> (not res!860101) (not e!1229451))))

(declare-fun size!17091 (List!21988) Int)

(assert (=> b!1923198 (= res!860101 (< (size!17091 (_2!11728 (get!6893 lt!737108))) (size!17091 (++!5869 lt!737051 lt!737059))))))

(assert (= (and d!585865 c!312535) b!1923193))

(assert (= (and d!585865 (not c!312535)) b!1923190))

(assert (= (or b!1923193 b!1923190) bm!118154))

(assert (= (and d!585865 (not res!860103)) b!1923194))

(assert (= (and b!1923194 res!860102) b!1923197))

(assert (= (and b!1923197 res!860105) b!1923198))

(assert (= (and b!1923198 res!860101) b!1923196))

(assert (= (and b!1923196 res!860106) b!1923191))

(assert (= (and b!1923191 res!860104) b!1923195))

(assert (= (and b!1923195 res!860100) b!1923192))

(declare-fun m!2358189 () Bool)

(assert (=> b!1923194 m!2358189))

(declare-fun m!2358191 () Bool)

(assert (=> b!1923195 m!2358191))

(declare-fun m!2358193 () Bool)

(assert (=> b!1923195 m!2358193))

(assert (=> b!1923195 m!2358193))

(declare-fun m!2358195 () Bool)

(assert (=> b!1923195 m!2358195))

(assert (=> b!1923195 m!2358195))

(declare-fun m!2358197 () Bool)

(assert (=> b!1923195 m!2358197))

(assert (=> b!1923197 m!2358191))

(assert (=> b!1923197 m!2358193))

(assert (=> b!1923197 m!2358193))

(assert (=> b!1923197 m!2358195))

(assert (=> b!1923190 m!2358019))

(declare-fun m!2358199 () Bool)

(assert (=> b!1923190 m!2358199))

(assert (=> bm!118154 m!2358019))

(declare-fun m!2358201 () Bool)

(assert (=> bm!118154 m!2358201))

(assert (=> b!1923192 m!2358191))

(declare-fun m!2358203 () Bool)

(assert (=> b!1923192 m!2358203))

(assert (=> b!1923198 m!2358191))

(declare-fun m!2358205 () Bool)

(assert (=> b!1923198 m!2358205))

(assert (=> b!1923198 m!2358019))

(declare-fun m!2358207 () Bool)

(assert (=> b!1923198 m!2358207))

(assert (=> b!1923196 m!2358191))

(assert (=> b!1923196 m!2358193))

(assert (=> b!1923196 m!2358193))

(assert (=> b!1923196 m!2358195))

(assert (=> b!1923196 m!2358195))

(declare-fun m!2358209 () Bool)

(assert (=> b!1923196 m!2358209))

(assert (=> b!1923191 m!2358191))

(declare-fun m!2358211 () Bool)

(assert (=> b!1923191 m!2358211))

(assert (=> b!1923191 m!2358211))

(declare-fun m!2358213 () Bool)

(assert (=> b!1923191 m!2358213))

(declare-fun m!2358215 () Bool)

(assert (=> d!585865 m!2358215))

(assert (=> d!585865 m!2358019))

(assert (=> d!585865 m!2358019))

(declare-fun m!2358217 () Bool)

(assert (=> d!585865 m!2358217))

(assert (=> d!585865 m!2358019))

(assert (=> d!585865 m!2358019))

(declare-fun m!2358219 () Bool)

(assert (=> d!585865 m!2358219))

(declare-fun m!2358221 () Bool)

(assert (=> d!585865 m!2358221))

(assert (=> b!1923038 d!585865))

(declare-fun b!1923208 () Bool)

(declare-fun e!1229457 () List!21988)

(assert (=> b!1923208 (= e!1229457 (Cons!21906 (h!27307 lt!737051) (++!5869 (t!179043 lt!737051) lt!737059)))))

(declare-fun b!1923210 () Bool)

(declare-fun e!1229458 () Bool)

(declare-fun lt!737115 () List!21988)

(assert (=> b!1923210 (= e!1229458 (or (not (= lt!737059 Nil!21906)) (= lt!737115 lt!737051)))))

(declare-fun b!1923209 () Bool)

(declare-fun res!860111 () Bool)

(assert (=> b!1923209 (=> (not res!860111) (not e!1229458))))

(assert (=> b!1923209 (= res!860111 (= (size!17091 lt!737115) (+ (size!17091 lt!737051) (size!17091 lt!737059))))))

(declare-fun b!1923207 () Bool)

(assert (=> b!1923207 (= e!1229457 lt!737059)))

(declare-fun d!585867 () Bool)

(assert (=> d!585867 e!1229458))

(declare-fun res!860112 () Bool)

(assert (=> d!585867 (=> (not res!860112) (not e!1229458))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3163 (List!21988) (InoxSet C!10852))

(assert (=> d!585867 (= res!860112 (= (content!3163 lt!737115) ((_ map or) (content!3163 lt!737051) (content!3163 lt!737059))))))

(assert (=> d!585867 (= lt!737115 e!1229457)))

(declare-fun c!312538 () Bool)

(assert (=> d!585867 (= c!312538 ((_ is Nil!21906) lt!737051))))

(assert (=> d!585867 (= (++!5869 lt!737051 lt!737059) lt!737115)))

(assert (= (and d!585867 c!312538) b!1923207))

(assert (= (and d!585867 (not c!312538)) b!1923208))

(assert (= (and d!585867 res!860112) b!1923209))

(assert (= (and b!1923209 res!860111) b!1923210))

(declare-fun m!2358223 () Bool)

(assert (=> b!1923208 m!2358223))

(declare-fun m!2358225 () Bool)

(assert (=> b!1923209 m!2358225))

(declare-fun m!2358227 () Bool)

(assert (=> b!1923209 m!2358227))

(declare-fun m!2358229 () Bool)

(assert (=> b!1923209 m!2358229))

(declare-fun m!2358231 () Bool)

(assert (=> d!585867 m!2358231))

(declare-fun m!2358233 () Bool)

(assert (=> d!585867 m!2358233))

(declare-fun m!2358235 () Bool)

(assert (=> d!585867 m!2358235))

(assert (=> b!1923038 d!585867))

(declare-fun b!1923217 () Bool)

(declare-fun e!1229463 () Bool)

(assert (=> b!1923217 (= e!1229463 true)))

(declare-fun d!585869 () Bool)

(assert (=> d!585869 e!1229463))

(assert (= d!585869 b!1923217))

(declare-fun order!13723 () Int)

(declare-fun lambda!75077 () Int)

(declare-fun dynLambda!10594 (Int Int) Int)

(assert (=> b!1923217 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (dynLambda!10594 order!13723 lambda!75077))))

(assert (=> b!1923217 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (dynLambda!10594 order!13723 lambda!75077))))

(assert (=> d!585869 (= (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))))))

(declare-fun lt!737118 () Unit!36232)

(declare-fun Forall2of!197 (Int BalanceConc!14436 BalanceConc!14436) Unit!36232)

(assert (=> d!585869 (= lt!737118 (Forall2of!197 lambda!75077 lt!737049 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))))))

(assert (=> d!585869 (= (list!8853 lt!737049) (list!8853 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))))))

(assert (=> d!585869 (= (lemmaEqSameImage!614 (transformation!3928 (rule!6131 (h!27309 tokens!598))) lt!737049 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))) lt!737118)))

(declare-fun b_lambda!63575 () Bool)

(assert (=> (not b_lambda!63575) (not d!585869)))

(assert (=> d!585869 t!179057))

(declare-fun b_and!150495 () Bool)

(assert (= b_and!150489 (and (=> t!179057 result!142016) b_and!150495)))

(assert (=> d!585869 t!179059))

(declare-fun b_and!150497 () Bool)

(assert (= b_and!150491 (and (=> t!179059 result!142020) b_and!150497)))

(assert (=> d!585869 t!179061))

(declare-fun b_and!150499 () Bool)

(assert (= b_and!150493 (and (=> t!179061 result!142022) b_and!150499)))

(declare-fun b_lambda!63577 () Bool)

(assert (=> (not b_lambda!63577) (not d!585869)))

(declare-fun t!179063 () Bool)

(declare-fun tb!117505 () Bool)

(assert (=> (and b!1923049 (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179063) tb!117505))

(declare-fun result!142024 () Bool)

(assert (=> tb!117505 (= result!142024 (inv!21 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))))

(declare-fun m!2358237 () Bool)

(assert (=> tb!117505 m!2358237))

(assert (=> d!585869 t!179063))

(declare-fun b_and!150501 () Bool)

(assert (= b_and!150495 (and (=> t!179063 result!142024) b_and!150501)))

(declare-fun t!179065 () Bool)

(declare-fun tb!117507 () Bool)

(assert (=> (and b!1923035 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179065) tb!117507))

(declare-fun result!142026 () Bool)

(assert (= result!142026 result!142024))

(assert (=> d!585869 t!179065))

(declare-fun b_and!150503 () Bool)

(assert (= b_and!150497 (and (=> t!179065 result!142026) b_and!150503)))

(declare-fun tb!117509 () Bool)

(declare-fun t!179067 () Bool)

(assert (=> (and b!1923039 (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179067) tb!117509))

(declare-fun result!142028 () Bool)

(assert (= result!142028 result!142024))

(assert (=> d!585869 t!179067))

(declare-fun b_and!150505 () Bool)

(assert (= b_and!150499 (and (=> t!179067 result!142028) b_and!150505)))

(assert (=> d!585869 m!2358187))

(assert (=> d!585869 m!2358023))

(declare-fun m!2358239 () Bool)

(assert (=> d!585869 m!2358239))

(assert (=> d!585869 m!2358023))

(declare-fun m!2358241 () Bool)

(assert (=> d!585869 m!2358241))

(assert (=> d!585869 m!2358023))

(declare-fun m!2358243 () Bool)

(assert (=> d!585869 m!2358243))

(assert (=> d!585869 m!2358039))

(assert (=> b!1923038 d!585869))

(declare-fun bs!414430 () Bool)

(declare-fun b!1923285 () Bool)

(assert (= bs!414430 (and b!1923285 b!1923040)))

(declare-fun lambda!75089 () Int)

(assert (=> bs!414430 (not (= lambda!75089 lambda!75071))))

(declare-fun b!1923305 () Bool)

(declare-fun e!1229520 () Bool)

(assert (=> b!1923305 (= e!1229520 true)))

(declare-fun b!1923304 () Bool)

(declare-fun e!1229519 () Bool)

(assert (=> b!1923304 (= e!1229519 e!1229520)))

(declare-fun b!1923303 () Bool)

(declare-fun e!1229518 () Bool)

(assert (=> b!1923303 (= e!1229518 e!1229519)))

(assert (=> b!1923285 e!1229518))

(assert (= b!1923304 b!1923305))

(assert (= b!1923303 b!1923304))

(assert (= (and b!1923285 ((_ is Cons!21909) rules!3198)) b!1923303))

(declare-fun order!13735 () Int)

(declare-fun dynLambda!10595 (Int Int) Int)

(assert (=> b!1923305 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10595 order!13735 lambda!75089))))

(assert (=> b!1923305 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10595 order!13735 lambda!75089))))

(assert (=> b!1923285 true))

(declare-fun b!1923284 () Bool)

(declare-fun e!1229507 () List!21988)

(declare-fun call!118185 () List!21988)

(assert (=> b!1923284 (= e!1229507 call!118185)))

(declare-fun e!1229504 () List!21988)

(declare-fun e!1229506 () List!21988)

(assert (=> b!1923285 (= e!1229504 e!1229506)))

(declare-fun lt!737158 () Unit!36232)

(declare-fun forallContained!708 (List!21990 Int Token!7408) Unit!36232)

(assert (=> b!1923285 (= lt!737158 (forallContained!708 (t!179045 tokens!598) lambda!75089 (h!27309 (t!179045 tokens!598))))))

(declare-fun lt!737156 () List!21988)

(assert (=> b!1923285 (= lt!737156 (printWithSeparatorTokenWhenNeededList!580 thiss!23328 rules!3198 (t!179045 (t!179045 tokens!598)) separatorToken!354))))

(declare-fun lt!737159 () Option!4532)

(assert (=> b!1923285 (= lt!737159 (maxPrefix!1979 thiss!23328 rules!3198 (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156)))))

(declare-fun c!312561 () Bool)

(assert (=> b!1923285 (= c!312561 (and ((_ is Some!4531) lt!737159) (= (_1!11728 (v!26610 lt!737159)) (h!27309 (t!179045 tokens!598)))))))

(declare-fun bm!118180 () Bool)

(declare-fun call!118189 () List!21988)

(assert (=> bm!118180 (= call!118189 call!118185)))

(declare-fun call!118187 () BalanceConc!14436)

(declare-fun bm!118181 () Bool)

(declare-fun c!312558 () Bool)

(assert (=> bm!118181 (= call!118187 (charsOf!2468 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598))))))))

(declare-fun b!1923286 () Bool)

(declare-fun e!1229505 () List!21988)

(declare-fun call!118186 () List!21988)

(assert (=> b!1923286 (= e!1229505 (++!5869 call!118186 lt!737156))))

(declare-fun b!1923287 () Bool)

(assert (=> b!1923287 (= e!1229506 call!118186)))

(declare-fun d!585871 () Bool)

(declare-fun c!312560 () Bool)

(assert (=> d!585871 (= c!312560 ((_ is Cons!21908) (t!179045 tokens!598)))))

(assert (=> d!585871 (= (printWithSeparatorTokenWhenNeededList!580 thiss!23328 rules!3198 (t!179045 tokens!598) separatorToken!354) e!1229504)))

(declare-fun bm!118182 () Bool)

(declare-fun call!118188 () BalanceConc!14436)

(assert (=> bm!118182 (= call!118188 call!118187)))

(declare-fun b!1923288 () Bool)

(assert (=> b!1923288 (= e!1229505 Nil!21906)))

(assert (=> b!1923288 (= (print!1511 thiss!23328 (singletonSeq!1912 (h!27309 (t!179045 tokens!598)))) (printTailRec!1017 thiss!23328 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))) 0 (BalanceConc!14437 Empty!7310)))))

(declare-fun lt!737160 () Unit!36232)

(declare-fun Unit!36238 () Unit!36232)

(assert (=> b!1923288 (= lt!737160 Unit!36238)))

(declare-fun lt!737157 () Unit!36232)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!739 (LexerInterface!3541 List!21991 List!21988 List!21988) Unit!36232)

(assert (=> b!1923288 (= lt!737157 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!739 thiss!23328 rules!3198 call!118189 lt!737156))))

(assert (=> b!1923288 false))

(declare-fun lt!737161 () Unit!36232)

(declare-fun Unit!36239 () Unit!36232)

(assert (=> b!1923288 (= lt!737161 Unit!36239)))

(declare-fun b!1923289 () Bool)

(assert (=> b!1923289 (= c!312558 (and ((_ is Some!4531) lt!737159) (not (= (_1!11728 (v!26610 lt!737159)) (h!27309 (t!179045 tokens!598))))))))

(assert (=> b!1923289 (= e!1229506 e!1229505)))

(declare-fun b!1923290 () Bool)

(assert (=> b!1923290 (= e!1229507 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))))))

(declare-fun bm!118183 () Bool)

(assert (=> bm!118183 (= call!118185 (list!8853 (ite c!312561 call!118187 call!118188)))))

(declare-fun b!1923291 () Bool)

(assert (=> b!1923291 (= e!1229504 Nil!21906)))

(declare-fun bm!118184 () Bool)

(declare-fun c!312559 () Bool)

(assert (=> bm!118184 (= c!312559 c!312561)))

(assert (=> bm!118184 (= call!118186 (++!5869 e!1229507 (ite c!312561 lt!737156 call!118189)))))

(assert (= (and d!585871 c!312560) b!1923285))

(assert (= (and d!585871 (not c!312560)) b!1923291))

(assert (= (and b!1923285 c!312561) b!1923287))

(assert (= (and b!1923285 (not c!312561)) b!1923289))

(assert (= (and b!1923289 c!312558) b!1923286))

(assert (= (and b!1923289 (not c!312558)) b!1923288))

(assert (= (or b!1923286 b!1923288) bm!118182))

(assert (= (or b!1923286 b!1923288) bm!118180))

(assert (= (or b!1923287 bm!118182) bm!118181))

(assert (= (or b!1923287 bm!118180) bm!118183))

(assert (= (or b!1923287 b!1923286) bm!118184))

(assert (= (and bm!118184 c!312559) b!1923284))

(assert (= (and bm!118184 (not c!312559)) b!1923290))

(declare-fun m!2358311 () Bool)

(assert (=> b!1923288 m!2358311))

(assert (=> b!1923288 m!2358311))

(declare-fun m!2358313 () Bool)

(assert (=> b!1923288 m!2358313))

(assert (=> b!1923288 m!2358311))

(declare-fun m!2358315 () Bool)

(assert (=> b!1923288 m!2358315))

(declare-fun m!2358317 () Bool)

(assert (=> b!1923288 m!2358317))

(declare-fun m!2358319 () Bool)

(assert (=> b!1923290 m!2358319))

(assert (=> b!1923290 m!2358319))

(declare-fun m!2358321 () Bool)

(assert (=> b!1923290 m!2358321))

(declare-fun m!2358323 () Bool)

(assert (=> b!1923286 m!2358323))

(declare-fun m!2358325 () Bool)

(assert (=> bm!118183 m!2358325))

(assert (=> b!1923285 m!2358319))

(assert (=> b!1923285 m!2358321))

(declare-fun m!2358327 () Bool)

(assert (=> b!1923285 m!2358327))

(declare-fun m!2358329 () Bool)

(assert (=> b!1923285 m!2358329))

(declare-fun m!2358331 () Bool)

(assert (=> b!1923285 m!2358331))

(assert (=> b!1923285 m!2358321))

(assert (=> b!1923285 m!2358329))

(declare-fun m!2358333 () Bool)

(assert (=> b!1923285 m!2358333))

(assert (=> b!1923285 m!2358319))

(declare-fun m!2358335 () Bool)

(assert (=> bm!118181 m!2358335))

(declare-fun m!2358337 () Bool)

(assert (=> bm!118184 m!2358337))

(assert (=> b!1923038 d!585871))

(declare-fun d!585883 () Bool)

(declare-fun list!8856 (Conc!7310) List!21988)

(assert (=> d!585883 (= (list!8853 (charsOf!2468 separatorToken!354)) (list!8856 (c!312512 (charsOf!2468 separatorToken!354))))))

(declare-fun bs!414432 () Bool)

(assert (= bs!414432 d!585883))

(declare-fun m!2358349 () Bool)

(assert (=> bs!414432 m!2358349))

(assert (=> b!1923038 d!585883))

(declare-fun bm!118185 () Bool)

(declare-fun call!118190 () Option!4532)

(assert (=> bm!118185 (= call!118190 (maxPrefixOneRule!1219 thiss!23328 (h!27310 rules!3198) lt!737051))))

(declare-fun d!585889 () Bool)

(declare-fun e!1229523 () Bool)

(assert (=> d!585889 e!1229523))

(declare-fun res!860122 () Bool)

(assert (=> d!585889 (=> res!860122 e!1229523)))

(declare-fun lt!737164 () Option!4532)

(assert (=> d!585889 (= res!860122 (isEmpty!13483 lt!737164))))

(declare-fun e!1229525 () Option!4532)

(assert (=> d!585889 (= lt!737164 e!1229525)))

(declare-fun c!312562 () Bool)

(assert (=> d!585889 (= c!312562 (and ((_ is Cons!21909) rules!3198) ((_ is Nil!21909) (t!179046 rules!3198))))))

(declare-fun lt!737166 () Unit!36232)

(declare-fun lt!737167 () Unit!36232)

(assert (=> d!585889 (= lt!737166 lt!737167)))

(assert (=> d!585889 (isPrefix!1937 lt!737051 lt!737051)))

(assert (=> d!585889 (= lt!737167 (lemmaIsPrefixRefl!1255 lt!737051 lt!737051))))

(assert (=> d!585889 (rulesValidInductive!1336 thiss!23328 rules!3198)))

(assert (=> d!585889 (= (maxPrefix!1979 thiss!23328 rules!3198 lt!737051) lt!737164)))

(declare-fun b!1923311 () Bool)

(declare-fun lt!737165 () Option!4532)

(declare-fun lt!737168 () Option!4532)

(assert (=> b!1923311 (= e!1229525 (ite (and ((_ is None!4531) lt!737165) ((_ is None!4531) lt!737168)) None!4531 (ite ((_ is None!4531) lt!737168) lt!737165 (ite ((_ is None!4531) lt!737165) lt!737168 (ite (>= (size!17088 (_1!11728 (v!26610 lt!737165))) (size!17088 (_1!11728 (v!26610 lt!737168)))) lt!737165 lt!737168)))))))

(assert (=> b!1923311 (= lt!737165 call!118190)))

(assert (=> b!1923311 (= lt!737168 (maxPrefix!1979 thiss!23328 (t!179046 rules!3198) lt!737051))))

(declare-fun b!1923312 () Bool)

(declare-fun res!860123 () Bool)

(declare-fun e!1229524 () Bool)

(assert (=> b!1923312 (=> (not res!860123) (not e!1229524))))

(assert (=> b!1923312 (= res!860123 (= (value!123539 (_1!11728 (get!6893 lt!737164))) (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737164)))))))))

(declare-fun b!1923313 () Bool)

(assert (=> b!1923313 (= e!1229524 (contains!3953 rules!3198 (rule!6131 (_1!11728 (get!6893 lt!737164)))))))

(declare-fun b!1923314 () Bool)

(assert (=> b!1923314 (= e!1229525 call!118190)))

(declare-fun b!1923315 () Bool)

(assert (=> b!1923315 (= e!1229523 e!1229524)))

(declare-fun res!860121 () Bool)

(assert (=> b!1923315 (=> (not res!860121) (not e!1229524))))

(assert (=> b!1923315 (= res!860121 (isDefined!3826 lt!737164))))

(declare-fun b!1923316 () Bool)

(declare-fun res!860119 () Bool)

(assert (=> b!1923316 (=> (not res!860119) (not e!1229524))))

(assert (=> b!1923316 (= res!860119 (matchR!2621 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))))))

(declare-fun b!1923317 () Bool)

(declare-fun res!860125 () Bool)

(assert (=> b!1923317 (=> (not res!860125) (not e!1229524))))

(assert (=> b!1923317 (= res!860125 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164)))) (_2!11728 (get!6893 lt!737164))) lt!737051))))

(declare-fun b!1923318 () Bool)

(declare-fun res!860124 () Bool)

(assert (=> b!1923318 (=> (not res!860124) (not e!1229524))))

(assert (=> b!1923318 (= res!860124 (= (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164)))) (originalCharacters!4735 (_1!11728 (get!6893 lt!737164)))))))

(declare-fun b!1923319 () Bool)

(declare-fun res!860120 () Bool)

(assert (=> b!1923319 (=> (not res!860120) (not e!1229524))))

(assert (=> b!1923319 (= res!860120 (< (size!17091 (_2!11728 (get!6893 lt!737164))) (size!17091 lt!737051)))))

(assert (= (and d!585889 c!312562) b!1923314))

(assert (= (and d!585889 (not c!312562)) b!1923311))

(assert (= (or b!1923314 b!1923311) bm!118185))

(assert (= (and d!585889 (not res!860122)) b!1923315))

(assert (= (and b!1923315 res!860121) b!1923318))

(assert (= (and b!1923318 res!860124) b!1923319))

(assert (= (and b!1923319 res!860120) b!1923317))

(assert (= (and b!1923317 res!860125) b!1923312))

(assert (= (and b!1923312 res!860123) b!1923316))

(assert (= (and b!1923316 res!860119) b!1923313))

(declare-fun m!2358353 () Bool)

(assert (=> b!1923315 m!2358353))

(declare-fun m!2358355 () Bool)

(assert (=> b!1923316 m!2358355))

(declare-fun m!2358357 () Bool)

(assert (=> b!1923316 m!2358357))

(assert (=> b!1923316 m!2358357))

(declare-fun m!2358359 () Bool)

(assert (=> b!1923316 m!2358359))

(assert (=> b!1923316 m!2358359))

(declare-fun m!2358363 () Bool)

(assert (=> b!1923316 m!2358363))

(assert (=> b!1923318 m!2358355))

(assert (=> b!1923318 m!2358357))

(assert (=> b!1923318 m!2358357))

(assert (=> b!1923318 m!2358359))

(declare-fun m!2358367 () Bool)

(assert (=> b!1923311 m!2358367))

(declare-fun m!2358371 () Bool)

(assert (=> bm!118185 m!2358371))

(assert (=> b!1923313 m!2358355))

(declare-fun m!2358373 () Bool)

(assert (=> b!1923313 m!2358373))

(assert (=> b!1923319 m!2358355))

(declare-fun m!2358375 () Bool)

(assert (=> b!1923319 m!2358375))

(assert (=> b!1923319 m!2358227))

(assert (=> b!1923317 m!2358355))

(assert (=> b!1923317 m!2358357))

(assert (=> b!1923317 m!2358357))

(assert (=> b!1923317 m!2358359))

(assert (=> b!1923317 m!2358359))

(declare-fun m!2358377 () Bool)

(assert (=> b!1923317 m!2358377))

(assert (=> b!1923312 m!2358355))

(declare-fun m!2358379 () Bool)

(assert (=> b!1923312 m!2358379))

(assert (=> b!1923312 m!2358379))

(declare-fun m!2358381 () Bool)

(assert (=> b!1923312 m!2358381))

(declare-fun m!2358383 () Bool)

(assert (=> d!585889 m!2358383))

(declare-fun m!2358385 () Bool)

(assert (=> d!585889 m!2358385))

(declare-fun m!2358387 () Bool)

(assert (=> d!585889 m!2358387))

(assert (=> d!585889 m!2358221))

(assert (=> b!1923038 d!585889))

(declare-fun d!585899 () Bool)

(declare-fun e!1229536 () Bool)

(assert (=> d!585899 e!1229536))

(declare-fun res!860134 () Bool)

(assert (=> d!585899 (=> (not res!860134) (not e!1229536))))

(assert (=> d!585899 (= res!860134 (isDefined!3825 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))))))

(declare-fun lt!737177 () Unit!36232)

(declare-fun choose!11935 (LexerInterface!3541 List!21991 List!21988 Token!7408) Unit!36232)

(assert (=> d!585899 (= lt!737177 (choose!11935 thiss!23328 rules!3198 lt!737043 separatorToken!354))))

(assert (=> d!585899 (rulesInvariant!3148 thiss!23328 rules!3198)))

(assert (=> d!585899 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!749 thiss!23328 rules!3198 lt!737043 separatorToken!354) lt!737177)))

(declare-fun b!1923336 () Bool)

(declare-fun res!860135 () Bool)

(assert (=> b!1923336 (=> (not res!860135) (not e!1229536))))

(assert (=> b!1923336 (= res!860135 (matchR!2621 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))) (list!8853 (charsOf!2468 separatorToken!354))))))

(declare-fun b!1923337 () Bool)

(assert (=> b!1923337 (= e!1229536 (= (rule!6131 separatorToken!354) (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))))))

(assert (= (and d!585899 res!860134) b!1923336))

(assert (= (and b!1923336 res!860135) b!1923337))

(assert (=> d!585899 m!2358033))

(assert (=> d!585899 m!2358033))

(declare-fun m!2358389 () Bool)

(assert (=> d!585899 m!2358389))

(declare-fun m!2358391 () Bool)

(assert (=> d!585899 m!2358391))

(assert (=> d!585899 m!2357959))

(assert (=> b!1923336 m!2358033))

(assert (=> b!1923336 m!2358045))

(assert (=> b!1923336 m!2358045))

(assert (=> b!1923336 m!2358051))

(assert (=> b!1923336 m!2358033))

(declare-fun m!2358393 () Bool)

(assert (=> b!1923336 m!2358393))

(assert (=> b!1923336 m!2358051))

(declare-fun m!2358395 () Bool)

(assert (=> b!1923336 m!2358395))

(assert (=> b!1923337 m!2358033))

(assert (=> b!1923337 m!2358033))

(assert (=> b!1923337 m!2358393))

(assert (=> b!1923038 d!585899))

(declare-fun b!1923375 () Bool)

(declare-fun e!1229561 () Bool)

(declare-fun lt!737196 () Option!4531)

(assert (=> b!1923375 (= e!1229561 (= (tag!4370 (get!6892 lt!737196)) (tag!4370 (rule!6131 separatorToken!354))))))

(declare-fun b!1923376 () Bool)

(declare-fun e!1229562 () Bool)

(assert (=> b!1923376 (= e!1229562 e!1229561)))

(declare-fun res!860155 () Bool)

(assert (=> b!1923376 (=> (not res!860155) (not e!1229561))))

(assert (=> b!1923376 (= res!860155 (contains!3953 rules!3198 (get!6892 lt!737196)))))

(declare-fun b!1923377 () Bool)

(declare-fun e!1229560 () Option!4531)

(assert (=> b!1923377 (= e!1229560 (Some!4530 (h!27310 rules!3198)))))

(declare-fun b!1923378 () Bool)

(declare-fun e!1229559 () Option!4531)

(assert (=> b!1923378 (= e!1229560 e!1229559)))

(declare-fun c!312576 () Bool)

(assert (=> b!1923378 (= c!312576 (and ((_ is Cons!21909) rules!3198) (not (= (tag!4370 (h!27310 rules!3198)) (tag!4370 (rule!6131 separatorToken!354))))))))

(declare-fun b!1923379 () Bool)

(assert (=> b!1923379 (= e!1229559 None!4530)))

(declare-fun d!585901 () Bool)

(assert (=> d!585901 e!1229562))

(declare-fun res!860154 () Bool)

(assert (=> d!585901 (=> res!860154 e!1229562)))

(declare-fun isEmpty!13484 (Option!4531) Bool)

(assert (=> d!585901 (= res!860154 (isEmpty!13484 lt!737196))))

(assert (=> d!585901 (= lt!737196 e!1229560)))

(declare-fun c!312577 () Bool)

(assert (=> d!585901 (= c!312577 (and ((_ is Cons!21909) rules!3198) (= (tag!4370 (h!27310 rules!3198)) (tag!4370 (rule!6131 separatorToken!354)))))))

(assert (=> d!585901 (rulesInvariant!3148 thiss!23328 rules!3198)))

(assert (=> d!585901 (= (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))) lt!737196)))

(declare-fun b!1923374 () Bool)

(declare-fun lt!737197 () Unit!36232)

(declare-fun lt!737195 () Unit!36232)

(assert (=> b!1923374 (= lt!737197 lt!737195)))

(assert (=> b!1923374 (rulesInvariant!3148 thiss!23328 (t!179046 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!266 (LexerInterface!3541 Rule!7656 List!21991) Unit!36232)

(assert (=> b!1923374 (= lt!737195 (lemmaInvariantOnRulesThenOnTail!266 thiss!23328 (h!27310 rules!3198) (t!179046 rules!3198)))))

(assert (=> b!1923374 (= e!1229559 (getRuleFromTag!749 thiss!23328 (t!179046 rules!3198) (tag!4370 (rule!6131 separatorToken!354))))))

(assert (= (and d!585901 c!312577) b!1923377))

(assert (= (and d!585901 (not c!312577)) b!1923378))

(assert (= (and b!1923378 c!312576) b!1923374))

(assert (= (and b!1923378 (not c!312576)) b!1923379))

(assert (= (and d!585901 (not res!860154)) b!1923376))

(assert (= (and b!1923376 res!860155) b!1923375))

(declare-fun m!2358453 () Bool)

(assert (=> b!1923375 m!2358453))

(assert (=> b!1923376 m!2358453))

(assert (=> b!1923376 m!2358453))

(declare-fun m!2358455 () Bool)

(assert (=> b!1923376 m!2358455))

(declare-fun m!2358457 () Bool)

(assert (=> d!585901 m!2358457))

(assert (=> d!585901 m!2357959))

(declare-fun m!2358459 () Bool)

(assert (=> b!1923374 m!2358459))

(declare-fun m!2358461 () Bool)

(assert (=> b!1923374 m!2358461))

(declare-fun m!2358463 () Bool)

(assert (=> b!1923374 m!2358463))

(assert (=> b!1923038 d!585901))

(declare-fun b!1923381 () Bool)

(declare-fun e!1229565 () Bool)

(declare-fun lt!737199 () Option!4531)

(assert (=> b!1923381 (= e!1229565 (= (tag!4370 (get!6892 lt!737199)) (tag!4370 (rule!6131 (h!27309 tokens!598)))))))

(declare-fun b!1923382 () Bool)

(declare-fun e!1229566 () Bool)

(assert (=> b!1923382 (= e!1229566 e!1229565)))

(declare-fun res!860157 () Bool)

(assert (=> b!1923382 (=> (not res!860157) (not e!1229565))))

(assert (=> b!1923382 (= res!860157 (contains!3953 rules!3198 (get!6892 lt!737199)))))

(declare-fun b!1923383 () Bool)

(declare-fun e!1229564 () Option!4531)

(assert (=> b!1923383 (= e!1229564 (Some!4530 (h!27310 rules!3198)))))

(declare-fun b!1923384 () Bool)

(declare-fun e!1229563 () Option!4531)

(assert (=> b!1923384 (= e!1229564 e!1229563)))

(declare-fun c!312578 () Bool)

(assert (=> b!1923384 (= c!312578 (and ((_ is Cons!21909) rules!3198) (not (= (tag!4370 (h!27310 rules!3198)) (tag!4370 (rule!6131 (h!27309 tokens!598)))))))))

(declare-fun b!1923385 () Bool)

(assert (=> b!1923385 (= e!1229563 None!4530)))

(declare-fun d!585913 () Bool)

(assert (=> d!585913 e!1229566))

(declare-fun res!860156 () Bool)

(assert (=> d!585913 (=> res!860156 e!1229566)))

(assert (=> d!585913 (= res!860156 (isEmpty!13484 lt!737199))))

(assert (=> d!585913 (= lt!737199 e!1229564)))

(declare-fun c!312579 () Bool)

(assert (=> d!585913 (= c!312579 (and ((_ is Cons!21909) rules!3198) (= (tag!4370 (h!27310 rules!3198)) (tag!4370 (rule!6131 (h!27309 tokens!598))))))))

(assert (=> d!585913 (rulesInvariant!3148 thiss!23328 rules!3198)))

(assert (=> d!585913 (= (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))) lt!737199)))

(declare-fun b!1923380 () Bool)

(declare-fun lt!737200 () Unit!36232)

(declare-fun lt!737198 () Unit!36232)

(assert (=> b!1923380 (= lt!737200 lt!737198)))

(assert (=> b!1923380 (rulesInvariant!3148 thiss!23328 (t!179046 rules!3198))))

(assert (=> b!1923380 (= lt!737198 (lemmaInvariantOnRulesThenOnTail!266 thiss!23328 (h!27310 rules!3198) (t!179046 rules!3198)))))

(assert (=> b!1923380 (= e!1229563 (getRuleFromTag!749 thiss!23328 (t!179046 rules!3198) (tag!4370 (rule!6131 (h!27309 tokens!598)))))))

(assert (= (and d!585913 c!312579) b!1923383))

(assert (= (and d!585913 (not c!312579)) b!1923384))

(assert (= (and b!1923384 c!312578) b!1923380))

(assert (= (and b!1923384 (not c!312578)) b!1923385))

(assert (= (and d!585913 (not res!860156)) b!1923382))

(assert (= (and b!1923382 res!860157) b!1923381))

(declare-fun m!2358465 () Bool)

(assert (=> b!1923381 m!2358465))

(assert (=> b!1923382 m!2358465))

(assert (=> b!1923382 m!2358465))

(declare-fun m!2358467 () Bool)

(assert (=> b!1923382 m!2358467))

(declare-fun m!2358469 () Bool)

(assert (=> d!585913 m!2358469))

(assert (=> d!585913 m!2357959))

(assert (=> b!1923380 m!2358459))

(assert (=> b!1923380 m!2358461))

(declare-fun m!2358471 () Bool)

(assert (=> b!1923380 m!2358471))

(assert (=> b!1923038 d!585913))

(declare-fun d!585915 () Bool)

(assert (=> d!585915 (= (isDefined!3825 lt!737050) (not (isEmpty!13484 lt!737050)))))

(declare-fun bs!414438 () Bool)

(assert (= bs!414438 d!585915))

(declare-fun m!2358477 () Bool)

(assert (=> bs!414438 m!2358477))

(assert (=> b!1923038 d!585915))

(declare-fun d!585919 () Bool)

(declare-fun e!1229574 () Bool)

(assert (=> d!585919 e!1229574))

(declare-fun res!860166 () Bool)

(assert (=> d!585919 (=> (not res!860166) (not e!1229574))))

(assert (=> d!585919 (= res!860166 (isDefined!3825 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))))))

(declare-fun lt!737205 () Unit!36232)

(assert (=> d!585919 (= lt!737205 (choose!11935 thiss!23328 rules!3198 lt!737051 (h!27309 tokens!598)))))

(assert (=> d!585919 (rulesInvariant!3148 thiss!23328 rules!3198)))

(assert (=> d!585919 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!749 thiss!23328 rules!3198 lt!737051 (h!27309 tokens!598)) lt!737205)))

(declare-fun b!1923400 () Bool)

(declare-fun res!860167 () Bool)

(assert (=> b!1923400 (=> (not res!860167) (not e!1229574))))

(assert (=> b!1923400 (= res!860167 (matchR!2621 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))) (list!8853 (charsOf!2468 (h!27309 tokens!598)))))))

(declare-fun b!1923401 () Bool)

(assert (=> b!1923401 (= e!1229574 (= (rule!6131 (h!27309 tokens!598)) (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))))))

(assert (= (and d!585919 res!860166) b!1923400))

(assert (= (and b!1923400 res!860167) b!1923401))

(assert (=> d!585919 m!2358041))

(assert (=> d!585919 m!2358041))

(declare-fun m!2358479 () Bool)

(assert (=> d!585919 m!2358479))

(declare-fun m!2358481 () Bool)

(assert (=> d!585919 m!2358481))

(assert (=> d!585919 m!2357959))

(assert (=> b!1923400 m!2358041))

(assert (=> b!1923400 m!2358037))

(assert (=> b!1923400 m!2358037))

(declare-fun m!2358487 () Bool)

(assert (=> b!1923400 m!2358487))

(assert (=> b!1923400 m!2358041))

(declare-fun m!2358489 () Bool)

(assert (=> b!1923400 m!2358489))

(assert (=> b!1923400 m!2358487))

(declare-fun m!2358497 () Bool)

(assert (=> b!1923400 m!2358497))

(assert (=> b!1923401 m!2358041))

(assert (=> b!1923401 m!2358041))

(assert (=> b!1923401 m!2358489))

(assert (=> b!1923038 d!585919))

(declare-fun d!585921 () Bool)

(assert (=> d!585921 (= (isDefined!3825 lt!737041) (not (isEmpty!13484 lt!737041)))))

(declare-fun bs!414439 () Bool)

(assert (= bs!414439 d!585921))

(declare-fun m!2358501 () Bool)

(assert (=> bs!414439 m!2358501))

(assert (=> b!1923038 d!585921))

(declare-fun d!585925 () Bool)

(declare-fun lt!737208 () BalanceConc!14436)

(assert (=> d!585925 (= (list!8853 lt!737208) (originalCharacters!4735 (h!27309 tokens!598)))))

(assert (=> d!585925 (= lt!737208 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))))

(assert (=> d!585925 (= (charsOf!2468 (h!27309 tokens!598)) lt!737208)))

(declare-fun b_lambda!63591 () Bool)

(assert (=> (not b_lambda!63591) (not d!585925)))

(declare-fun tb!117541 () Bool)

(declare-fun t!179101 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179101) tb!117541))

(declare-fun b!1923403 () Bool)

(declare-fun e!1229576 () Bool)

(declare-fun tp!549749 () Bool)

(assert (=> b!1923403 (= e!1229576 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))) tp!549749))))

(declare-fun result!142064 () Bool)

(assert (=> tb!117541 (= result!142064 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))) e!1229576))))

(assert (= tb!117541 b!1923403))

(declare-fun m!2358507 () Bool)

(assert (=> b!1923403 m!2358507))

(declare-fun m!2358509 () Bool)

(assert (=> tb!117541 m!2358509))

(assert (=> d!585925 t!179101))

(declare-fun b_and!150543 () Bool)

(assert (= b_and!150483 (and (=> t!179101 result!142064) b_and!150543)))

(declare-fun t!179103 () Bool)

(declare-fun tb!117543 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179103) tb!117543))

(declare-fun result!142066 () Bool)

(assert (= result!142066 result!142064))

(assert (=> d!585925 t!179103))

(declare-fun b_and!150545 () Bool)

(assert (= b_and!150485 (and (=> t!179103 result!142066) b_and!150545)))

(declare-fun t!179105 () Bool)

(declare-fun tb!117545 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179105) tb!117545))

(declare-fun result!142068 () Bool)

(assert (= result!142068 result!142064))

(assert (=> d!585925 t!179105))

(declare-fun b_and!150547 () Bool)

(assert (= b_and!150487 (and (=> t!179105 result!142068) b_and!150547)))

(declare-fun m!2358511 () Bool)

(assert (=> d!585925 m!2358511))

(declare-fun m!2358513 () Bool)

(assert (=> d!585925 m!2358513))

(assert (=> b!1923038 d!585925))

(declare-fun d!585933 () Bool)

(declare-fun fromListB!1234 (List!21988) BalanceConc!14436)

(assert (=> d!585933 (= (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))) (fromListB!1234 (originalCharacters!4735 (h!27309 tokens!598))))))

(declare-fun bs!414440 () Bool)

(assert (= bs!414440 d!585933))

(declare-fun m!2358521 () Bool)

(assert (=> bs!414440 m!2358521))

(assert (=> b!1923038 d!585933))

(declare-fun d!585937 () Bool)

(assert (=> d!585937 (= (list!8853 lt!737049) (list!8856 (c!312512 lt!737049)))))

(declare-fun bs!414441 () Bool)

(assert (= bs!414441 d!585937))

(declare-fun m!2358523 () Bool)

(assert (=> bs!414441 m!2358523))

(assert (=> b!1923038 d!585937))

(declare-fun d!585939 () Bool)

(declare-fun lt!737209 () BalanceConc!14436)

(assert (=> d!585939 (= (list!8853 lt!737209) (originalCharacters!4735 separatorToken!354))))

(assert (=> d!585939 (= lt!737209 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))))

(assert (=> d!585939 (= (charsOf!2468 separatorToken!354) lt!737209)))

(declare-fun b_lambda!63595 () Bool)

(assert (=> (not b_lambda!63595) (not d!585939)))

(declare-fun t!179107 () Bool)

(declare-fun tb!117547 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) t!179107) tb!117547))

(declare-fun b!1923410 () Bool)

(declare-fun e!1229580 () Bool)

(declare-fun tp!549750 () Bool)

(assert (=> b!1923410 (= e!1229580 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))) tp!549750))))

(declare-fun result!142070 () Bool)

(assert (=> tb!117547 (= result!142070 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))) e!1229580))))

(assert (= tb!117547 b!1923410))

(declare-fun m!2358525 () Bool)

(assert (=> b!1923410 m!2358525))

(declare-fun m!2358527 () Bool)

(assert (=> tb!117547 m!2358527))

(assert (=> d!585939 t!179107))

(declare-fun b_and!150555 () Bool)

(assert (= b_and!150543 (and (=> t!179107 result!142070) b_and!150555)))

(declare-fun t!179109 () Bool)

(declare-fun tb!117549 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) t!179109) tb!117549))

(declare-fun result!142072 () Bool)

(assert (= result!142072 result!142070))

(assert (=> d!585939 t!179109))

(declare-fun b_and!150557 () Bool)

(assert (= b_and!150545 (and (=> t!179109 result!142072) b_and!150557)))

(declare-fun t!179111 () Bool)

(declare-fun tb!117551 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) t!179111) tb!117551))

(declare-fun result!142074 () Bool)

(assert (= result!142074 result!142070))

(assert (=> d!585939 t!179111))

(declare-fun b_and!150559 () Bool)

(assert (= b_and!150547 (and (=> t!179111 result!142074) b_and!150559)))

(declare-fun m!2358529 () Bool)

(assert (=> d!585939 m!2358529))

(declare-fun m!2358531 () Bool)

(assert (=> d!585939 m!2358531))

(assert (=> b!1923038 d!585939))

(declare-fun d!585941 () Bool)

(declare-fun c!312597 () Bool)

(assert (=> d!585941 (= c!312597 ((_ is IntegerValue!12192) (value!123539 separatorToken!354)))))

(declare-fun e!1229601 () Bool)

(assert (=> d!585941 (= (inv!21 (value!123539 separatorToken!354)) e!1229601)))

(declare-fun b!1923441 () Bool)

(declare-fun e!1229599 () Bool)

(assert (=> b!1923441 (= e!1229601 e!1229599)))

(declare-fun c!312596 () Bool)

(assert (=> b!1923441 (= c!312596 ((_ is IntegerValue!12193) (value!123539 separatorToken!354)))))

(declare-fun b!1923442 () Bool)

(declare-fun e!1229600 () Bool)

(declare-fun inv!15 (TokenValue!4064) Bool)

(assert (=> b!1923442 (= e!1229600 (inv!15 (value!123539 separatorToken!354)))))

(declare-fun b!1923443 () Bool)

(declare-fun inv!17 (TokenValue!4064) Bool)

(assert (=> b!1923443 (= e!1229599 (inv!17 (value!123539 separatorToken!354)))))

(declare-fun b!1923444 () Bool)

(declare-fun res!860181 () Bool)

(assert (=> b!1923444 (=> res!860181 e!1229600)))

(assert (=> b!1923444 (= res!860181 (not ((_ is IntegerValue!12194) (value!123539 separatorToken!354))))))

(assert (=> b!1923444 (= e!1229599 e!1229600)))

(declare-fun b!1923445 () Bool)

(declare-fun inv!16 (TokenValue!4064) Bool)

(assert (=> b!1923445 (= e!1229601 (inv!16 (value!123539 separatorToken!354)))))

(assert (= (and d!585941 c!312597) b!1923445))

(assert (= (and d!585941 (not c!312597)) b!1923441))

(assert (= (and b!1923441 c!312596) b!1923443))

(assert (= (and b!1923441 (not c!312596)) b!1923444))

(assert (= (and b!1923444 (not res!860181)) b!1923442))

(declare-fun m!2358545 () Bool)

(assert (=> b!1923442 m!2358545))

(declare-fun m!2358547 () Bool)

(assert (=> b!1923443 m!2358547))

(declare-fun m!2358549 () Bool)

(assert (=> b!1923445 m!2358549))

(assert (=> b!1923028 d!585941))

(declare-fun b!1923502 () Bool)

(declare-fun e!1229636 () Bool)

(declare-fun e!1229634 () Bool)

(assert (=> b!1923502 (= e!1229636 e!1229634)))

(declare-fun res!860204 () Bool)

(assert (=> b!1923502 (=> res!860204 e!1229634)))

(declare-fun call!118203 () Bool)

(assert (=> b!1923502 (= res!860204 call!118203)))

(declare-fun b!1923503 () Bool)

(declare-fun e!1229639 () Bool)

(declare-fun nullable!1605 (Regex!5353) Bool)

(assert (=> b!1923503 (= e!1229639 (nullable!1605 (regex!3928 lt!737053)))))

(declare-fun bm!118198 () Bool)

(declare-fun isEmpty!13485 (List!21988) Bool)

(assert (=> bm!118198 (= call!118203 (isEmpty!13485 lt!737051))))

(declare-fun b!1923504 () Bool)

(declare-fun res!860211 () Bool)

(declare-fun e!1229637 () Bool)

(assert (=> b!1923504 (=> res!860211 e!1229637)))

(declare-fun e!1229633 () Bool)

(assert (=> b!1923504 (= res!860211 e!1229633)))

(declare-fun res!860210 () Bool)

(assert (=> b!1923504 (=> (not res!860210) (not e!1229633))))

(declare-fun lt!737215 () Bool)

(assert (=> b!1923504 (= res!860210 lt!737215)))

(declare-fun b!1923505 () Bool)

(declare-fun res!860205 () Bool)

(assert (=> b!1923505 (=> (not res!860205) (not e!1229633))))

(declare-fun tail!2972 (List!21988) List!21988)

(assert (=> b!1923505 (= res!860205 (isEmpty!13485 (tail!2972 lt!737051)))))

(declare-fun b!1923506 () Bool)

(assert (=> b!1923506 (= e!1229637 e!1229636)))

(declare-fun res!860209 () Bool)

(assert (=> b!1923506 (=> (not res!860209) (not e!1229636))))

(assert (=> b!1923506 (= res!860209 (not lt!737215))))

(declare-fun b!1923507 () Bool)

(declare-fun derivativeStep!1364 (Regex!5353 C!10852) Regex!5353)

(assert (=> b!1923507 (= e!1229639 (matchR!2621 (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051)) (tail!2972 lt!737051)))))

(declare-fun b!1923508 () Bool)

(assert (=> b!1923508 (= e!1229634 (not (= (head!4484 lt!737051) (c!312513 (regex!3928 lt!737053)))))))

(declare-fun d!585947 () Bool)

(declare-fun e!1229635 () Bool)

(assert (=> d!585947 e!1229635))

(declare-fun c!312615 () Bool)

(assert (=> d!585947 (= c!312615 ((_ is EmptyExpr!5353) (regex!3928 lt!737053)))))

(assert (=> d!585947 (= lt!737215 e!1229639)))

(declare-fun c!312616 () Bool)

(assert (=> d!585947 (= c!312616 (isEmpty!13485 lt!737051))))

(declare-fun validRegex!2131 (Regex!5353) Bool)

(assert (=> d!585947 (validRegex!2131 (regex!3928 lt!737053))))

(assert (=> d!585947 (= (matchR!2621 (regex!3928 lt!737053) lt!737051) lt!737215)))

(declare-fun b!1923509 () Bool)

(declare-fun res!860206 () Bool)

(assert (=> b!1923509 (=> res!860206 e!1229634)))

(assert (=> b!1923509 (= res!860206 (not (isEmpty!13485 (tail!2972 lt!737051))))))

(declare-fun b!1923510 () Bool)

(declare-fun res!860208 () Bool)

(assert (=> b!1923510 (=> (not res!860208) (not e!1229633))))

(assert (=> b!1923510 (= res!860208 (not call!118203))))

(declare-fun b!1923511 () Bool)

(declare-fun e!1229638 () Bool)

(assert (=> b!1923511 (= e!1229635 e!1229638)))

(declare-fun c!312617 () Bool)

(assert (=> b!1923511 (= c!312617 ((_ is EmptyLang!5353) (regex!3928 lt!737053)))))

(declare-fun b!1923512 () Bool)

(assert (=> b!1923512 (= e!1229633 (= (head!4484 lt!737051) (c!312513 (regex!3928 lt!737053))))))

(declare-fun b!1923513 () Bool)

(declare-fun res!860207 () Bool)

(assert (=> b!1923513 (=> res!860207 e!1229637)))

(assert (=> b!1923513 (= res!860207 (not ((_ is ElementMatch!5353) (regex!3928 lt!737053))))))

(assert (=> b!1923513 (= e!1229638 e!1229637)))

(declare-fun b!1923514 () Bool)

(assert (=> b!1923514 (= e!1229638 (not lt!737215))))

(declare-fun b!1923515 () Bool)

(assert (=> b!1923515 (= e!1229635 (= lt!737215 call!118203))))

(assert (= (and d!585947 c!312616) b!1923503))

(assert (= (and d!585947 (not c!312616)) b!1923507))

(assert (= (and d!585947 c!312615) b!1923515))

(assert (= (and d!585947 (not c!312615)) b!1923511))

(assert (= (and b!1923511 c!312617) b!1923514))

(assert (= (and b!1923511 (not c!312617)) b!1923513))

(assert (= (and b!1923513 (not res!860207)) b!1923504))

(assert (= (and b!1923504 res!860210) b!1923510))

(assert (= (and b!1923510 res!860208) b!1923505))

(assert (= (and b!1923505 res!860205) b!1923512))

(assert (= (and b!1923504 (not res!860211)) b!1923506))

(assert (= (and b!1923506 res!860209) b!1923502))

(assert (= (and b!1923502 (not res!860204)) b!1923509))

(assert (= (and b!1923509 (not res!860206)) b!1923508))

(assert (= (or b!1923515 b!1923502 b!1923510) bm!118198))

(declare-fun m!2358569 () Bool)

(assert (=> b!1923507 m!2358569))

(assert (=> b!1923507 m!2358569))

(declare-fun m!2358573 () Bool)

(assert (=> b!1923507 m!2358573))

(declare-fun m!2358575 () Bool)

(assert (=> b!1923507 m!2358575))

(assert (=> b!1923507 m!2358573))

(assert (=> b!1923507 m!2358575))

(declare-fun m!2358577 () Bool)

(assert (=> b!1923507 m!2358577))

(declare-fun m!2358579 () Bool)

(assert (=> b!1923503 m!2358579))

(assert (=> b!1923508 m!2358569))

(assert (=> b!1923509 m!2358575))

(assert (=> b!1923509 m!2358575))

(declare-fun m!2358581 () Bool)

(assert (=> b!1923509 m!2358581))

(declare-fun m!2358583 () Bool)

(assert (=> d!585947 m!2358583))

(declare-fun m!2358585 () Bool)

(assert (=> d!585947 m!2358585))

(assert (=> b!1923505 m!2358575))

(assert (=> b!1923505 m!2358575))

(assert (=> b!1923505 m!2358581))

(assert (=> b!1923512 m!2358569))

(assert (=> bm!118198 m!2358583))

(assert (=> b!1923026 d!585947))

(declare-fun d!585955 () Bool)

(assert (=> d!585955 (= (get!6892 lt!737041) (v!26609 lt!737041))))

(assert (=> b!1923026 d!585955))

(declare-fun d!585959 () Bool)

(assert (=> d!585959 (= (inv!28977 (tag!4370 (rule!6131 separatorToken!354))) (= (mod (str.len (value!123538 (tag!4370 (rule!6131 separatorToken!354)))) 2) 0))))

(assert (=> b!1923037 d!585959))

(declare-fun d!585963 () Bool)

(declare-fun res!860218 () Bool)

(declare-fun e!1229650 () Bool)

(assert (=> d!585963 (=> (not res!860218) (not e!1229650))))

(declare-fun semiInverseModEq!1561 (Int Int) Bool)

(assert (=> d!585963 (= res!860218 (semiInverseModEq!1561 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354)))))))

(assert (=> d!585963 (= (inv!28981 (transformation!3928 (rule!6131 separatorToken!354))) e!1229650)))

(declare-fun b!1923532 () Bool)

(declare-fun equivClasses!1488 (Int Int) Bool)

(assert (=> b!1923532 (= e!1229650 (equivClasses!1488 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354)))))))

(assert (= (and d!585963 res!860218) b!1923532))

(declare-fun m!2358603 () Bool)

(assert (=> d!585963 m!2358603))

(declare-fun m!2358605 () Bool)

(assert (=> b!1923532 m!2358605))

(assert (=> b!1923037 d!585963))

(declare-fun d!585965 () Bool)

(declare-fun lt!737220 () Bool)

(assert (=> d!585965 (= lt!737220 (select (content!3163 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))) lt!737055))))

(declare-fun e!1229656 () Bool)

(assert (=> d!585965 (= lt!737220 e!1229656)))

(declare-fun res!860223 () Bool)

(assert (=> d!585965 (=> (not res!860223) (not e!1229656))))

(assert (=> d!585965 (= res!860223 ((_ is Cons!21906) (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))))))

(assert (=> d!585965 (= (contains!3951 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354))) lt!737055) lt!737220)))

(declare-fun b!1923537 () Bool)

(declare-fun e!1229655 () Bool)

(assert (=> b!1923537 (= e!1229656 e!1229655)))

(declare-fun res!860224 () Bool)

(assert (=> b!1923537 (=> res!860224 e!1229655)))

(assert (=> b!1923537 (= res!860224 (= (h!27307 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))) lt!737055))))

(declare-fun b!1923538 () Bool)

(assert (=> b!1923538 (= e!1229655 (contains!3951 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))) lt!737055))))

(assert (= (and d!585965 res!860223) b!1923537))

(assert (= (and b!1923537 (not res!860224)) b!1923538))

(assert (=> d!585965 m!2357993))

(declare-fun m!2358607 () Bool)

(assert (=> d!585965 m!2358607))

(declare-fun m!2358609 () Bool)

(assert (=> d!585965 m!2358609))

(declare-fun m!2358611 () Bool)

(assert (=> b!1923538 m!2358611))

(assert (=> b!1923048 d!585965))

(declare-fun d!585967 () Bool)

(declare-fun c!312625 () Bool)

(assert (=> d!585967 (= c!312625 ((_ is Cons!21908) (Cons!21908 (h!27309 tokens!598) Nil!21908)))))

(declare-fun e!1229659 () List!21988)

(assert (=> d!585967 (= (printList!1076 thiss!23328 (Cons!21908 (h!27309 tokens!598) Nil!21908)) e!1229659)))

(declare-fun b!1923543 () Bool)

(assert (=> b!1923543 (= e!1229659 (++!5869 (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))) (printList!1076 thiss!23328 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))))

(declare-fun b!1923544 () Bool)

(assert (=> b!1923544 (= e!1229659 Nil!21906)))

(assert (= (and d!585967 c!312625) b!1923543))

(assert (= (and d!585967 (not c!312625)) b!1923544))

(declare-fun m!2358613 () Bool)

(assert (=> b!1923543 m!2358613))

(assert (=> b!1923543 m!2358613))

(declare-fun m!2358615 () Bool)

(assert (=> b!1923543 m!2358615))

(declare-fun m!2358617 () Bool)

(assert (=> b!1923543 m!2358617))

(assert (=> b!1923543 m!2358615))

(assert (=> b!1923543 m!2358617))

(declare-fun m!2358619 () Bool)

(assert (=> b!1923543 m!2358619))

(assert (=> b!1923048 d!585967))

(declare-fun b!1923546 () Bool)

(declare-fun e!1229660 () List!21988)

(assert (=> b!1923546 (= e!1229660 (Cons!21906 (h!27307 lt!737051) (++!5869 (t!179043 lt!737051) lt!737043)))))

(declare-fun b!1923548 () Bool)

(declare-fun e!1229661 () Bool)

(declare-fun lt!737221 () List!21988)

(assert (=> b!1923548 (= e!1229661 (or (not (= lt!737043 Nil!21906)) (= lt!737221 lt!737051)))))

(declare-fun b!1923547 () Bool)

(declare-fun res!860225 () Bool)

(assert (=> b!1923547 (=> (not res!860225) (not e!1229661))))

(assert (=> b!1923547 (= res!860225 (= (size!17091 lt!737221) (+ (size!17091 lt!737051) (size!17091 lt!737043))))))

(declare-fun b!1923545 () Bool)

(assert (=> b!1923545 (= e!1229660 lt!737043)))

(declare-fun d!585969 () Bool)

(assert (=> d!585969 e!1229661))

(declare-fun res!860226 () Bool)

(assert (=> d!585969 (=> (not res!860226) (not e!1229661))))

(assert (=> d!585969 (= res!860226 (= (content!3163 lt!737221) ((_ map or) (content!3163 lt!737051) (content!3163 lt!737043))))))

(assert (=> d!585969 (= lt!737221 e!1229660)))

(declare-fun c!312626 () Bool)

(assert (=> d!585969 (= c!312626 ((_ is Nil!21906) lt!737051))))

(assert (=> d!585969 (= (++!5869 lt!737051 lt!737043) lt!737221)))

(assert (= (and d!585969 c!312626) b!1923545))

(assert (= (and d!585969 (not c!312626)) b!1923546))

(assert (= (and d!585969 res!860226) b!1923547))

(assert (= (and b!1923547 res!860225) b!1923548))

(declare-fun m!2358621 () Bool)

(assert (=> b!1923546 m!2358621))

(declare-fun m!2358623 () Bool)

(assert (=> b!1923547 m!2358623))

(assert (=> b!1923547 m!2358227))

(declare-fun m!2358625 () Bool)

(assert (=> b!1923547 m!2358625))

(declare-fun m!2358627 () Bool)

(assert (=> d!585969 m!2358627))

(assert (=> d!585969 m!2358233))

(declare-fun m!2358629 () Bool)

(assert (=> d!585969 m!2358629))

(assert (=> b!1923048 d!585969))

(declare-fun bm!118211 () Bool)

(declare-fun call!118216 () List!21988)

(declare-fun c!312635 () Bool)

(assert (=> bm!118211 (= call!118216 (usedCharacters!380 (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))))))

(declare-fun b!1923567 () Bool)

(declare-fun e!1229673 () List!21988)

(declare-fun e!1229674 () List!21988)

(assert (=> b!1923567 (= e!1229673 e!1229674)))

(assert (=> b!1923567 (= c!312635 ((_ is Union!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun b!1923568 () Bool)

(declare-fun e!1229675 () List!21988)

(assert (=> b!1923568 (= e!1229675 (Cons!21906 (c!312513 (regex!3928 (rule!6131 separatorToken!354))) Nil!21906))))

(declare-fun call!118217 () List!21988)

(declare-fun c!312637 () Bool)

(declare-fun bm!118212 () Bool)

(assert (=> bm!118212 (= call!118217 (usedCharacters!380 (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))))))

(declare-fun b!1923569 () Bool)

(declare-fun e!1229672 () List!21988)

(assert (=> b!1923569 (= e!1229672 Nil!21906)))

(declare-fun bm!118213 () Bool)

(declare-fun call!118218 () List!21988)

(assert (=> bm!118213 (= call!118218 call!118217)))

(declare-fun bm!118214 () Bool)

(declare-fun call!118219 () List!21988)

(assert (=> bm!118214 (= call!118219 (++!5869 (ite c!312635 call!118216 call!118218) (ite c!312635 call!118218 call!118216)))))

(declare-fun b!1923571 () Bool)

(assert (=> b!1923571 (= e!1229674 call!118219)))

(declare-fun b!1923572 () Bool)

(assert (=> b!1923572 (= e!1229673 call!118217)))

(declare-fun d!585971 () Bool)

(declare-fun c!312638 () Bool)

(assert (=> d!585971 (= c!312638 (or ((_ is EmptyExpr!5353) (regex!3928 (rule!6131 separatorToken!354))) ((_ is EmptyLang!5353) (regex!3928 (rule!6131 separatorToken!354)))))))

(assert (=> d!585971 (= (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354))) e!1229672)))

(declare-fun b!1923570 () Bool)

(assert (=> b!1923570 (= c!312637 ((_ is Star!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(assert (=> b!1923570 (= e!1229675 e!1229673)))

(declare-fun b!1923573 () Bool)

(assert (=> b!1923573 (= e!1229674 call!118219)))

(declare-fun b!1923574 () Bool)

(assert (=> b!1923574 (= e!1229672 e!1229675)))

(declare-fun c!312636 () Bool)

(assert (=> b!1923574 (= c!312636 ((_ is ElementMatch!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(assert (= (and d!585971 c!312638) b!1923569))

(assert (= (and d!585971 (not c!312638)) b!1923574))

(assert (= (and b!1923574 c!312636) b!1923568))

(assert (= (and b!1923574 (not c!312636)) b!1923570))

(assert (= (and b!1923570 c!312637) b!1923572))

(assert (= (and b!1923570 (not c!312637)) b!1923567))

(assert (= (and b!1923567 c!312635) b!1923573))

(assert (= (and b!1923567 (not c!312635)) b!1923571))

(assert (= (or b!1923573 b!1923571) bm!118211))

(assert (= (or b!1923573 b!1923571) bm!118213))

(assert (= (or b!1923573 b!1923571) bm!118214))

(assert (= (or b!1923572 bm!118213) bm!118212))

(declare-fun m!2358639 () Bool)

(assert (=> bm!118211 m!2358639))

(declare-fun m!2358641 () Bool)

(assert (=> bm!118212 m!2358641))

(declare-fun m!2358643 () Bool)

(assert (=> bm!118214 m!2358643))

(assert (=> b!1923048 d!585971))

(declare-fun e!1229677 () List!21988)

(declare-fun b!1923577 () Bool)

(assert (=> b!1923577 (= e!1229677 (Cons!21906 (h!27307 lt!737051) (++!5869 (t!179043 lt!737051) (++!5869 lt!737043 lt!737059))))))

(declare-fun lt!737231 () List!21988)

(declare-fun b!1923579 () Bool)

(declare-fun e!1229678 () Bool)

(assert (=> b!1923579 (= e!1229678 (or (not (= (++!5869 lt!737043 lt!737059) Nil!21906)) (= lt!737231 lt!737051)))))

(declare-fun b!1923578 () Bool)

(declare-fun res!860230 () Bool)

(assert (=> b!1923578 (=> (not res!860230) (not e!1229678))))

(assert (=> b!1923578 (= res!860230 (= (size!17091 lt!737231) (+ (size!17091 lt!737051) (size!17091 (++!5869 lt!737043 lt!737059)))))))

(declare-fun b!1923576 () Bool)

(assert (=> b!1923576 (= e!1229677 (++!5869 lt!737043 lt!737059))))

(declare-fun d!585977 () Bool)

(assert (=> d!585977 e!1229678))

(declare-fun res!860231 () Bool)

(assert (=> d!585977 (=> (not res!860231) (not e!1229678))))

(assert (=> d!585977 (= res!860231 (= (content!3163 lt!737231) ((_ map or) (content!3163 lt!737051) (content!3163 (++!5869 lt!737043 lt!737059)))))))

(assert (=> d!585977 (= lt!737231 e!1229677)))

(declare-fun c!312639 () Bool)

(assert (=> d!585977 (= c!312639 ((_ is Nil!21906) lt!737051))))

(assert (=> d!585977 (= (++!5869 lt!737051 (++!5869 lt!737043 lt!737059)) lt!737231)))

(assert (= (and d!585977 c!312639) b!1923576))

(assert (= (and d!585977 (not c!312639)) b!1923577))

(assert (= (and d!585977 res!860231) b!1923578))

(assert (= (and b!1923578 res!860230) b!1923579))

(assert (=> b!1923577 m!2357989))

(declare-fun m!2358653 () Bool)

(assert (=> b!1923577 m!2358653))

(declare-fun m!2358655 () Bool)

(assert (=> b!1923578 m!2358655))

(assert (=> b!1923578 m!2358227))

(assert (=> b!1923578 m!2357989))

(declare-fun m!2358657 () Bool)

(assert (=> b!1923578 m!2358657))

(declare-fun m!2358659 () Bool)

(assert (=> d!585977 m!2358659))

(assert (=> d!585977 m!2358233))

(assert (=> d!585977 m!2357989))

(declare-fun m!2358661 () Bool)

(assert (=> d!585977 m!2358661))

(assert (=> b!1923048 d!585977))

(declare-fun b!1923581 () Bool)

(declare-fun e!1229679 () List!21988)

(assert (=> b!1923581 (= e!1229679 (Cons!21906 (h!27307 (++!5869 lt!737051 lt!737043)) (++!5869 (t!179043 (++!5869 lt!737051 lt!737043)) lt!737059)))))

(declare-fun b!1923583 () Bool)

(declare-fun e!1229680 () Bool)

(declare-fun lt!737232 () List!21988)

(assert (=> b!1923583 (= e!1229680 (or (not (= lt!737059 Nil!21906)) (= lt!737232 (++!5869 lt!737051 lt!737043))))))

(declare-fun b!1923582 () Bool)

(declare-fun res!860232 () Bool)

(assert (=> b!1923582 (=> (not res!860232) (not e!1229680))))

(assert (=> b!1923582 (= res!860232 (= (size!17091 lt!737232) (+ (size!17091 (++!5869 lt!737051 lt!737043)) (size!17091 lt!737059))))))

(declare-fun b!1923580 () Bool)

(assert (=> b!1923580 (= e!1229679 lt!737059)))

(declare-fun d!585983 () Bool)

(assert (=> d!585983 e!1229680))

(declare-fun res!860233 () Bool)

(assert (=> d!585983 (=> (not res!860233) (not e!1229680))))

(assert (=> d!585983 (= res!860233 (= (content!3163 lt!737232) ((_ map or) (content!3163 (++!5869 lt!737051 lt!737043)) (content!3163 lt!737059))))))

(assert (=> d!585983 (= lt!737232 e!1229679)))

(declare-fun c!312640 () Bool)

(assert (=> d!585983 (= c!312640 ((_ is Nil!21906) (++!5869 lt!737051 lt!737043)))))

(assert (=> d!585983 (= (++!5869 (++!5869 lt!737051 lt!737043) lt!737059) lt!737232)))

(assert (= (and d!585983 c!312640) b!1923580))

(assert (= (and d!585983 (not c!312640)) b!1923581))

(assert (= (and d!585983 res!860233) b!1923582))

(assert (= (and b!1923582 res!860232) b!1923583))

(declare-fun m!2358663 () Bool)

(assert (=> b!1923581 m!2358663))

(declare-fun m!2358665 () Bool)

(assert (=> b!1923582 m!2358665))

(assert (=> b!1923582 m!2357995))

(declare-fun m!2358667 () Bool)

(assert (=> b!1923582 m!2358667))

(assert (=> b!1923582 m!2358229))

(declare-fun m!2358671 () Bool)

(assert (=> d!585983 m!2358671))

(assert (=> d!585983 m!2357995))

(declare-fun m!2358675 () Bool)

(assert (=> d!585983 m!2358675))

(assert (=> d!585983 m!2358235))

(assert (=> b!1923048 d!585983))

(declare-fun b!1923589 () Bool)

(declare-fun e!1229683 () List!21988)

(assert (=> b!1923589 (= e!1229683 (Cons!21906 (h!27307 lt!737043) (++!5869 (t!179043 lt!737043) lt!737059)))))

(declare-fun b!1923591 () Bool)

(declare-fun e!1229684 () Bool)

(declare-fun lt!737234 () List!21988)

(assert (=> b!1923591 (= e!1229684 (or (not (= lt!737059 Nil!21906)) (= lt!737234 lt!737043)))))

(declare-fun b!1923590 () Bool)

(declare-fun res!860236 () Bool)

(assert (=> b!1923590 (=> (not res!860236) (not e!1229684))))

(assert (=> b!1923590 (= res!860236 (= (size!17091 lt!737234) (+ (size!17091 lt!737043) (size!17091 lt!737059))))))

(declare-fun b!1923588 () Bool)

(assert (=> b!1923588 (= e!1229683 lt!737059)))

(declare-fun d!585987 () Bool)

(assert (=> d!585987 e!1229684))

(declare-fun res!860237 () Bool)

(assert (=> d!585987 (=> (not res!860237) (not e!1229684))))

(assert (=> d!585987 (= res!860237 (= (content!3163 lt!737234) ((_ map or) (content!3163 lt!737043) (content!3163 lt!737059))))))

(assert (=> d!585987 (= lt!737234 e!1229683)))

(declare-fun c!312642 () Bool)

(assert (=> d!585987 (= c!312642 ((_ is Nil!21906) lt!737043))))

(assert (=> d!585987 (= (++!5869 lt!737043 lt!737059) lt!737234)))

(assert (= (and d!585987 c!312642) b!1923588))

(assert (= (and d!585987 (not c!312642)) b!1923589))

(assert (= (and d!585987 res!860237) b!1923590))

(assert (= (and b!1923590 res!860236) b!1923591))

(declare-fun m!2358683 () Bool)

(assert (=> b!1923589 m!2358683))

(declare-fun m!2358685 () Bool)

(assert (=> b!1923590 m!2358685))

(assert (=> b!1923590 m!2358625))

(assert (=> b!1923590 m!2358229))

(declare-fun m!2358687 () Bool)

(assert (=> d!585987 m!2358687))

(assert (=> d!585987 m!2358629))

(assert (=> d!585987 m!2358235))

(assert (=> b!1923048 d!585987))

(declare-fun d!585991 () Bool)

(declare-fun lt!737242 () BalanceConc!14436)

(declare-fun list!8857 (BalanceConc!14438) List!21990)

(assert (=> d!585991 (= (list!8853 lt!737242) (printList!1076 thiss!23328 (list!8857 lt!737061)))))

(assert (=> d!585991 (= lt!737242 (printTailRec!1017 thiss!23328 lt!737061 0 (BalanceConc!14437 Empty!7310)))))

(assert (=> d!585991 (= (print!1511 thiss!23328 lt!737061) lt!737242)))

(declare-fun bs!414446 () Bool)

(assert (= bs!414446 d!585991))

(declare-fun m!2358713 () Bool)

(assert (=> bs!414446 m!2358713))

(declare-fun m!2358715 () Bool)

(assert (=> bs!414446 m!2358715))

(assert (=> bs!414446 m!2358715))

(declare-fun m!2358717 () Bool)

(assert (=> bs!414446 m!2358717))

(assert (=> bs!414446 m!2357981))

(assert (=> b!1923048 d!585991))

(declare-fun d!586001 () Bool)

(assert (=> d!586001 (= (head!4484 lt!737043) (h!27307 lt!737043))))

(assert (=> b!1923048 d!586001))

(declare-fun bm!118219 () Bool)

(declare-fun call!118224 () List!21988)

(declare-fun c!312650 () Bool)

(assert (=> bm!118219 (= call!118224 (usedCharacters!380 (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))))))

(declare-fun b!1923608 () Bool)

(declare-fun e!1229694 () List!21988)

(declare-fun e!1229695 () List!21988)

(assert (=> b!1923608 (= e!1229694 e!1229695)))

(assert (=> b!1923608 (= c!312650 ((_ is Union!5353) (regex!3928 (rule!6131 (h!27309 tokens!598)))))))

(declare-fun b!1923609 () Bool)

(declare-fun e!1229696 () List!21988)

(assert (=> b!1923609 (= e!1229696 (Cons!21906 (c!312513 (regex!3928 (rule!6131 (h!27309 tokens!598)))) Nil!21906))))

(declare-fun call!118225 () List!21988)

(declare-fun bm!118220 () Bool)

(declare-fun c!312652 () Bool)

(assert (=> bm!118220 (= call!118225 (usedCharacters!380 (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))))

(declare-fun b!1923610 () Bool)

(declare-fun e!1229693 () List!21988)

(assert (=> b!1923610 (= e!1229693 Nil!21906)))

(declare-fun bm!118221 () Bool)

(declare-fun call!118226 () List!21988)

(assert (=> bm!118221 (= call!118226 call!118225)))

(declare-fun bm!118222 () Bool)

(declare-fun call!118227 () List!21988)

(assert (=> bm!118222 (= call!118227 (++!5869 (ite c!312650 call!118224 call!118226) (ite c!312650 call!118226 call!118224)))))

(declare-fun b!1923612 () Bool)

(assert (=> b!1923612 (= e!1229695 call!118227)))

(declare-fun b!1923613 () Bool)

(assert (=> b!1923613 (= e!1229694 call!118225)))

(declare-fun d!586003 () Bool)

(declare-fun c!312653 () Bool)

(assert (=> d!586003 (= c!312653 (or ((_ is EmptyExpr!5353) (regex!3928 (rule!6131 (h!27309 tokens!598)))) ((_ is EmptyLang!5353) (regex!3928 (rule!6131 (h!27309 tokens!598))))))))

(assert (=> d!586003 (= (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))) e!1229693)))

(declare-fun b!1923611 () Bool)

(assert (=> b!1923611 (= c!312652 ((_ is Star!5353) (regex!3928 (rule!6131 (h!27309 tokens!598)))))))

(assert (=> b!1923611 (= e!1229696 e!1229694)))

(declare-fun b!1923614 () Bool)

(assert (=> b!1923614 (= e!1229695 call!118227)))

(declare-fun b!1923615 () Bool)

(assert (=> b!1923615 (= e!1229693 e!1229696)))

(declare-fun c!312651 () Bool)

(assert (=> b!1923615 (= c!312651 ((_ is ElementMatch!5353) (regex!3928 (rule!6131 (h!27309 tokens!598)))))))

(assert (= (and d!586003 c!312653) b!1923610))

(assert (= (and d!586003 (not c!312653)) b!1923615))

(assert (= (and b!1923615 c!312651) b!1923609))

(assert (= (and b!1923615 (not c!312651)) b!1923611))

(assert (= (and b!1923611 c!312652) b!1923613))

(assert (= (and b!1923611 (not c!312652)) b!1923608))

(assert (= (and b!1923608 c!312650) b!1923614))

(assert (= (and b!1923608 (not c!312650)) b!1923612))

(assert (= (or b!1923614 b!1923612) bm!118219))

(assert (= (or b!1923614 b!1923612) bm!118221))

(assert (= (or b!1923614 b!1923612) bm!118222))

(assert (= (or b!1923613 bm!118221) bm!118220))

(declare-fun m!2358719 () Bool)

(assert (=> bm!118219 m!2358719))

(declare-fun m!2358721 () Bool)

(assert (=> bm!118220 m!2358721))

(declare-fun m!2358723 () Bool)

(assert (=> bm!118222 m!2358723))

(assert (=> b!1923048 d!586003))

(declare-fun d!586005 () Bool)

(assert (=> d!586005 (= (list!8853 lt!737039) (list!8856 (c!312512 lt!737039)))))

(declare-fun bs!414447 () Bool)

(assert (= bs!414447 d!586005))

(declare-fun m!2358725 () Bool)

(assert (=> bs!414447 m!2358725))

(assert (=> b!1923048 d!586005))

(declare-fun d!586007 () Bool)

(declare-fun lt!737243 () Bool)

(assert (=> d!586007 (= lt!737243 (select (content!3163 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))) lt!737055))))

(declare-fun e!1229698 () Bool)

(assert (=> d!586007 (= lt!737243 e!1229698)))

(declare-fun res!860242 () Bool)

(assert (=> d!586007 (=> (not res!860242) (not e!1229698))))

(assert (=> d!586007 (= res!860242 ((_ is Cons!21906) (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))

(assert (=> d!586007 (= (contains!3951 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))) lt!737055) lt!737243)))

(declare-fun b!1923616 () Bool)

(declare-fun e!1229697 () Bool)

(assert (=> b!1923616 (= e!1229698 e!1229697)))

(declare-fun res!860243 () Bool)

(assert (=> b!1923616 (=> res!860243 e!1229697)))

(assert (=> b!1923616 (= res!860243 (= (h!27307 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))) lt!737055))))

(declare-fun b!1923617 () Bool)

(assert (=> b!1923617 (= e!1229697 (contains!3951 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))) lt!737055))))

(assert (= (and d!586007 res!860242) b!1923616))

(assert (= (and b!1923616 (not res!860243)) b!1923617))

(assert (=> d!586007 m!2357983))

(declare-fun m!2358727 () Bool)

(assert (=> d!586007 m!2358727))

(declare-fun m!2358729 () Bool)

(assert (=> d!586007 m!2358729))

(declare-fun m!2358731 () Bool)

(assert (=> b!1923617 m!2358731))

(assert (=> b!1923048 d!586007))

(declare-fun d!586009 () Bool)

(assert (=> d!586009 (= (++!5869 (++!5869 lt!737051 lt!737043) lt!737059) (++!5869 lt!737051 (++!5869 lt!737043 lt!737059)))))

(declare-fun lt!737246 () Unit!36232)

(declare-fun choose!11938 (List!21988 List!21988 List!21988) Unit!36232)

(assert (=> d!586009 (= lt!737246 (choose!11938 lt!737051 lt!737043 lt!737059))))

(assert (=> d!586009 (= (lemmaConcatAssociativity!1187 lt!737051 lt!737043 lt!737059) lt!737246)))

(declare-fun bs!414448 () Bool)

(assert (= bs!414448 d!586009))

(assert (=> bs!414448 m!2357989))

(assert (=> bs!414448 m!2357991))

(declare-fun m!2358733 () Bool)

(assert (=> bs!414448 m!2358733))

(assert (=> bs!414448 m!2357995))

(assert (=> bs!414448 m!2357999))

(assert (=> bs!414448 m!2357989))

(assert (=> bs!414448 m!2357995))

(assert (=> b!1923048 d!586009))

(declare-fun d!586011 () Bool)

(assert (=> d!586011 (not (contains!3951 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))) lt!737055))))

(declare-fun lt!737249 () Unit!36232)

(declare-fun choose!11939 (LexerInterface!3541 List!21991 List!21991 Rule!7656 Rule!7656 C!10852) Unit!36232)

(assert (=> d!586011 (= lt!737249 (choose!11939 thiss!23328 rules!3198 rules!3198 (rule!6131 (h!27309 tokens!598)) (rule!6131 separatorToken!354) lt!737055))))

(assert (=> d!586011 (rulesInvariant!3148 thiss!23328 rules!3198)))

(assert (=> d!586011 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!76 thiss!23328 rules!3198 rules!3198 (rule!6131 (h!27309 tokens!598)) (rule!6131 separatorToken!354) lt!737055) lt!737249)))

(declare-fun bs!414449 () Bool)

(assert (= bs!414449 d!586011))

(assert (=> bs!414449 m!2357983))

(assert (=> bs!414449 m!2357983))

(assert (=> bs!414449 m!2357985))

(declare-fun m!2358735 () Bool)

(assert (=> bs!414449 m!2358735))

(assert (=> bs!414449 m!2357959))

(assert (=> b!1923048 d!586011))

(declare-fun d!586013 () Bool)

(declare-fun e!1229701 () Bool)

(assert (=> d!586013 e!1229701))

(declare-fun res!860246 () Bool)

(assert (=> d!586013 (=> (not res!860246) (not e!1229701))))

(declare-fun lt!737252 () BalanceConc!14438)

(assert (=> d!586013 (= res!860246 (= (list!8857 lt!737252) (Cons!21908 (h!27309 tokens!598) Nil!21908)))))

(declare-fun singleton!844 (Token!7408) BalanceConc!14438)

(assert (=> d!586013 (= lt!737252 (singleton!844 (h!27309 tokens!598)))))

(assert (=> d!586013 (= (singletonSeq!1912 (h!27309 tokens!598)) lt!737252)))

(declare-fun b!1923620 () Bool)

(declare-fun isBalanced!2253 (Conc!7311) Bool)

(assert (=> b!1923620 (= e!1229701 (isBalanced!2253 (c!312514 lt!737252)))))

(assert (= (and d!586013 res!860246) b!1923620))

(declare-fun m!2358737 () Bool)

(assert (=> d!586013 m!2358737))

(declare-fun m!2358739 () Bool)

(assert (=> d!586013 m!2358739))

(declare-fun m!2358741 () Bool)

(assert (=> b!1923620 m!2358741))

(assert (=> b!1923048 d!586013))

(declare-fun d!586015 () Bool)

(declare-fun lt!737294 () BalanceConc!14436)

(declare-fun printListTailRec!449 (LexerInterface!3541 List!21990 List!21988) List!21988)

(declare-fun dropList!780 (BalanceConc!14438 Int) List!21990)

(assert (=> d!586015 (= (list!8853 lt!737294) (printListTailRec!449 thiss!23328 (dropList!780 lt!737061 0) (list!8853 (BalanceConc!14437 Empty!7310))))))

(declare-fun e!1229720 () BalanceConc!14436)

(assert (=> d!586015 (= lt!737294 e!1229720)))

(declare-fun c!312663 () Bool)

(declare-fun size!17092 (BalanceConc!14438) Int)

(assert (=> d!586015 (= c!312663 (>= 0 (size!17092 lt!737061)))))

(declare-fun e!1229719 () Bool)

(assert (=> d!586015 e!1229719))

(declare-fun res!860260 () Bool)

(assert (=> d!586015 (=> (not res!860260) (not e!1229719))))

(assert (=> d!586015 (= res!860260 (>= 0 0))))

(assert (=> d!586015 (= (printTailRec!1017 thiss!23328 lt!737061 0 (BalanceConc!14437 Empty!7310)) lt!737294)))

(declare-fun b!1923650 () Bool)

(assert (=> b!1923650 (= e!1229719 (<= 0 (size!17092 lt!737061)))))

(declare-fun b!1923651 () Bool)

(assert (=> b!1923651 (= e!1229720 (BalanceConc!14437 Empty!7310))))

(declare-fun b!1923652 () Bool)

(declare-fun ++!5871 (BalanceConc!14436 BalanceConc!14436) BalanceConc!14436)

(declare-fun apply!5682 (BalanceConc!14438 Int) Token!7408)

(assert (=> b!1923652 (= e!1229720 (printTailRec!1017 thiss!23328 lt!737061 (+ 0 1) (++!5871 (BalanceConc!14437 Empty!7310) (charsOf!2468 (apply!5682 lt!737061 0)))))))

(declare-fun lt!737289 () List!21990)

(assert (=> b!1923652 (= lt!737289 (list!8857 lt!737061))))

(declare-fun lt!737295 () Unit!36232)

(declare-fun lemmaDropApply!704 (List!21990 Int) Unit!36232)

(assert (=> b!1923652 (= lt!737295 (lemmaDropApply!704 lt!737289 0))))

(declare-fun head!4486 (List!21990) Token!7408)

(declare-fun drop!1071 (List!21990 Int) List!21990)

(declare-fun apply!5683 (List!21990 Int) Token!7408)

(assert (=> b!1923652 (= (head!4486 (drop!1071 lt!737289 0)) (apply!5683 lt!737289 0))))

(declare-fun lt!737292 () Unit!36232)

(assert (=> b!1923652 (= lt!737292 lt!737295)))

(declare-fun lt!737291 () List!21990)

(assert (=> b!1923652 (= lt!737291 (list!8857 lt!737061))))

(declare-fun lt!737293 () Unit!36232)

(declare-fun lemmaDropTail!680 (List!21990 Int) Unit!36232)

(assert (=> b!1923652 (= lt!737293 (lemmaDropTail!680 lt!737291 0))))

(declare-fun tail!2974 (List!21990) List!21990)

(assert (=> b!1923652 (= (tail!2974 (drop!1071 lt!737291 0)) (drop!1071 lt!737291 (+ 0 1)))))

(declare-fun lt!737290 () Unit!36232)

(assert (=> b!1923652 (= lt!737290 lt!737293)))

(assert (= (and d!586015 res!860260) b!1923650))

(assert (= (and d!586015 c!312663) b!1923651))

(assert (= (and d!586015 (not c!312663)) b!1923652))

(declare-fun m!2358785 () Bool)

(assert (=> d!586015 m!2358785))

(declare-fun m!2358787 () Bool)

(assert (=> d!586015 m!2358787))

(declare-fun m!2358789 () Bool)

(assert (=> d!586015 m!2358789))

(declare-fun m!2358791 () Bool)

(assert (=> d!586015 m!2358791))

(assert (=> d!586015 m!2358787))

(declare-fun m!2358793 () Bool)

(assert (=> d!586015 m!2358793))

(assert (=> d!586015 m!2358785))

(assert (=> b!1923650 m!2358793))

(declare-fun m!2358795 () Bool)

(assert (=> b!1923652 m!2358795))

(declare-fun m!2358797 () Bool)

(assert (=> b!1923652 m!2358797))

(declare-fun m!2358799 () Bool)

(assert (=> b!1923652 m!2358799))

(declare-fun m!2358801 () Bool)

(assert (=> b!1923652 m!2358801))

(declare-fun m!2358803 () Bool)

(assert (=> b!1923652 m!2358803))

(assert (=> b!1923652 m!2358797))

(declare-fun m!2358805 () Bool)

(assert (=> b!1923652 m!2358805))

(declare-fun m!2358807 () Bool)

(assert (=> b!1923652 m!2358807))

(declare-fun m!2358809 () Bool)

(assert (=> b!1923652 m!2358809))

(declare-fun m!2358811 () Bool)

(assert (=> b!1923652 m!2358811))

(assert (=> b!1923652 m!2358805))

(assert (=> b!1923652 m!2358801))

(assert (=> b!1923652 m!2358715))

(declare-fun m!2358813 () Bool)

(assert (=> b!1923652 m!2358813))

(declare-fun m!2358815 () Bool)

(assert (=> b!1923652 m!2358815))

(assert (=> b!1923652 m!2358807))

(assert (=> b!1923652 m!2358813))

(declare-fun m!2358817 () Bool)

(assert (=> b!1923652 m!2358817))

(assert (=> b!1923048 d!586015))

(declare-fun d!586025 () Bool)

(declare-fun lt!737303 () Bool)

(declare-fun e!1229751 () Bool)

(assert (=> d!586025 (= lt!737303 e!1229751)))

(declare-fun res!860288 () Bool)

(assert (=> d!586025 (=> (not res!860288) (not e!1229751))))

(declare-datatypes ((tuple2!20522 0))(
  ( (tuple2!20523 (_1!11730 BalanceConc!14438) (_2!11730 BalanceConc!14436)) )
))
(declare-fun lex!1569 (LexerInterface!3541 List!21991 BalanceConc!14436) tuple2!20522)

(assert (=> d!586025 (= res!860288 (= (list!8857 (_1!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354))))) (list!8857 (singletonSeq!1912 separatorToken!354))))))

(declare-fun e!1229750 () Bool)

(assert (=> d!586025 (= lt!737303 e!1229750)))

(declare-fun res!860290 () Bool)

(assert (=> d!586025 (=> (not res!860290) (not e!1229750))))

(declare-fun lt!737304 () tuple2!20522)

(assert (=> d!586025 (= res!860290 (= (size!17092 (_1!11730 lt!737304)) 1))))

(assert (=> d!586025 (= lt!737304 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354))))))

(assert (=> d!586025 (not (isEmpty!13478 rules!3198))))

(assert (=> d!586025 (= (rulesProduceIndividualToken!1713 thiss!23328 rules!3198 separatorToken!354) lt!737303)))

(declare-fun b!1923693 () Bool)

(declare-fun res!860289 () Bool)

(assert (=> b!1923693 (=> (not res!860289) (not e!1229750))))

(assert (=> b!1923693 (= res!860289 (= (apply!5682 (_1!11730 lt!737304) 0) separatorToken!354))))

(declare-fun b!1923694 () Bool)

(declare-fun isEmpty!13486 (BalanceConc!14436) Bool)

(assert (=> b!1923694 (= e!1229750 (isEmpty!13486 (_2!11730 lt!737304)))))

(declare-fun b!1923695 () Bool)

(assert (=> b!1923695 (= e!1229751 (isEmpty!13486 (_2!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354))))))))

(assert (= (and d!586025 res!860290) b!1923693))

(assert (= (and b!1923693 res!860289) b!1923694))

(assert (= (and d!586025 res!860288) b!1923695))

(assert (=> d!586025 m!2357967))

(declare-fun m!2358843 () Bool)

(assert (=> d!586025 m!2358843))

(declare-fun m!2358845 () Bool)

(assert (=> d!586025 m!2358845))

(declare-fun m!2358847 () Bool)

(assert (=> d!586025 m!2358847))

(assert (=> d!586025 m!2358845))

(declare-fun m!2358849 () Bool)

(assert (=> d!586025 m!2358849))

(assert (=> d!586025 m!2358845))

(declare-fun m!2358851 () Bool)

(assert (=> d!586025 m!2358851))

(assert (=> d!586025 m!2358851))

(declare-fun m!2358853 () Bool)

(assert (=> d!586025 m!2358853))

(declare-fun m!2358855 () Bool)

(assert (=> b!1923693 m!2358855))

(declare-fun m!2358857 () Bool)

(assert (=> b!1923694 m!2358857))

(assert (=> b!1923695 m!2358845))

(assert (=> b!1923695 m!2358845))

(assert (=> b!1923695 m!2358851))

(assert (=> b!1923695 m!2358851))

(assert (=> b!1923695 m!2358853))

(declare-fun m!2358859 () Bool)

(assert (=> b!1923695 m!2358859))

(assert (=> b!1923027 d!586025))

(declare-fun d!586037 () Bool)

(declare-fun c!312665 () Bool)

(assert (=> d!586037 (= c!312665 ((_ is IntegerValue!12192) (value!123539 (h!27309 tokens!598))))))

(declare-fun e!1229761 () Bool)

(assert (=> d!586037 (= (inv!21 (value!123539 (h!27309 tokens!598))) e!1229761)))

(declare-fun b!1923706 () Bool)

(declare-fun e!1229759 () Bool)

(assert (=> b!1923706 (= e!1229761 e!1229759)))

(declare-fun c!312664 () Bool)

(assert (=> b!1923706 (= c!312664 ((_ is IntegerValue!12193) (value!123539 (h!27309 tokens!598))))))

(declare-fun b!1923707 () Bool)

(declare-fun e!1229760 () Bool)

(assert (=> b!1923707 (= e!1229760 (inv!15 (value!123539 (h!27309 tokens!598))))))

(declare-fun b!1923708 () Bool)

(assert (=> b!1923708 (= e!1229759 (inv!17 (value!123539 (h!27309 tokens!598))))))

(declare-fun b!1923709 () Bool)

(declare-fun res!860291 () Bool)

(assert (=> b!1923709 (=> res!860291 e!1229760)))

(assert (=> b!1923709 (= res!860291 (not ((_ is IntegerValue!12194) (value!123539 (h!27309 tokens!598)))))))

(assert (=> b!1923709 (= e!1229759 e!1229760)))

(declare-fun b!1923710 () Bool)

(assert (=> b!1923710 (= e!1229761 (inv!16 (value!123539 (h!27309 tokens!598))))))

(assert (= (and d!586037 c!312665) b!1923710))

(assert (= (and d!586037 (not c!312665)) b!1923706))

(assert (= (and b!1923706 c!312664) b!1923708))

(assert (= (and b!1923706 (not c!312664)) b!1923709))

(assert (= (and b!1923709 (not res!860291)) b!1923707))

(declare-fun m!2358861 () Bool)

(assert (=> b!1923707 m!2358861))

(declare-fun m!2358863 () Bool)

(assert (=> b!1923708 m!2358863))

(declare-fun m!2358865 () Bool)

(assert (=> b!1923710 m!2358865))

(assert (=> b!1923046 d!586037))

(declare-fun d!586039 () Bool)

(declare-fun res!860296 () Bool)

(declare-fun e!1229776 () Bool)

(assert (=> d!586039 (=> (not res!860296) (not e!1229776))))

(assert (=> d!586039 (= res!860296 (not (isEmpty!13485 (originalCharacters!4735 (h!27309 tokens!598)))))))

(assert (=> d!586039 (= (inv!28980 (h!27309 tokens!598)) e!1229776)))

(declare-fun b!1923734 () Bool)

(declare-fun res!860297 () Bool)

(assert (=> b!1923734 (=> (not res!860297) (not e!1229776))))

(assert (=> b!1923734 (= res!860297 (= (originalCharacters!4735 (h!27309 tokens!598)) (list!8853 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))))))

(declare-fun b!1923735 () Bool)

(assert (=> b!1923735 (= e!1229776 (= (size!17088 (h!27309 tokens!598)) (size!17091 (originalCharacters!4735 (h!27309 tokens!598)))))))

(assert (= (and d!586039 res!860296) b!1923734))

(assert (= (and b!1923734 res!860297) b!1923735))

(declare-fun b_lambda!63601 () Bool)

(assert (=> (not b_lambda!63601) (not b!1923734)))

(assert (=> b!1923734 t!179101))

(declare-fun b_and!150571 () Bool)

(assert (= b_and!150555 (and (=> t!179101 result!142064) b_and!150571)))

(assert (=> b!1923734 t!179103))

(declare-fun b_and!150573 () Bool)

(assert (= b_and!150557 (and (=> t!179103 result!142066) b_and!150573)))

(assert (=> b!1923734 t!179105))

(declare-fun b_and!150575 () Bool)

(assert (= b_and!150559 (and (=> t!179105 result!142068) b_and!150575)))

(declare-fun m!2358871 () Bool)

(assert (=> d!586039 m!2358871))

(assert (=> b!1923734 m!2358513))

(assert (=> b!1923734 m!2358513))

(declare-fun m!2358873 () Bool)

(assert (=> b!1923734 m!2358873))

(declare-fun m!2358875 () Bool)

(assert (=> b!1923735 m!2358875))

(assert (=> b!1923025 d!586039))

(declare-fun d!586041 () Bool)

(assert (=> d!586041 (= (inv!28977 (tag!4370 (rule!6131 (h!27309 tokens!598)))) (= (mod (str.len (value!123538 (tag!4370 (rule!6131 (h!27309 tokens!598))))) 2) 0))))

(assert (=> b!1923036 d!586041))

(declare-fun d!586043 () Bool)

(declare-fun res!860298 () Bool)

(declare-fun e!1229783 () Bool)

(assert (=> d!586043 (=> (not res!860298) (not e!1229783))))

(assert (=> d!586043 (= res!860298 (semiInverseModEq!1561 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))))))

(assert (=> d!586043 (= (inv!28981 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) e!1229783)))

(declare-fun b!1923742 () Bool)

(assert (=> b!1923742 (= e!1229783 (equivClasses!1488 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))))))

(assert (= (and d!586043 res!860298) b!1923742))

(declare-fun m!2358877 () Bool)

(assert (=> d!586043 m!2358877))

(declare-fun m!2358879 () Bool)

(assert (=> b!1923742 m!2358879))

(assert (=> b!1923036 d!586043))

(declare-fun d!586045 () Bool)

(declare-fun res!860303 () Bool)

(declare-fun e!1229800 () Bool)

(assert (=> d!586045 (=> res!860303 e!1229800)))

(assert (=> d!586045 (= res!860303 (not ((_ is Cons!21909) rules!3198)))))

(assert (=> d!586045 (= (sepAndNonSepRulesDisjointChars!1026 rules!3198 rules!3198) e!1229800)))

(declare-fun b!1923755 () Bool)

(declare-fun e!1229801 () Bool)

(assert (=> b!1923755 (= e!1229800 e!1229801)))

(declare-fun res!860304 () Bool)

(assert (=> b!1923755 (=> (not res!860304) (not e!1229801))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!445 (Rule!7656 List!21991) Bool)

(assert (=> b!1923755 (= res!860304 (ruleDisjointCharsFromAllFromOtherType!445 (h!27310 rules!3198) rules!3198))))

(declare-fun b!1923756 () Bool)

(assert (=> b!1923756 (= e!1229801 (sepAndNonSepRulesDisjointChars!1026 rules!3198 (t!179046 rules!3198)))))

(assert (= (and d!586045 (not res!860303)) b!1923755))

(assert (= (and b!1923755 res!860304) b!1923756))

(declare-fun m!2358881 () Bool)

(assert (=> b!1923755 m!2358881))

(declare-fun m!2358883 () Bool)

(assert (=> b!1923756 m!2358883))

(assert (=> b!1923047 d!586045))

(declare-fun b!1923757 () Bool)

(declare-fun e!1229805 () Bool)

(declare-fun e!1229803 () Bool)

(assert (=> b!1923757 (= e!1229805 e!1229803)))

(declare-fun res!860305 () Bool)

(assert (=> b!1923757 (=> res!860305 e!1229803)))

(declare-fun call!118229 () Bool)

(assert (=> b!1923757 (= res!860305 call!118229)))

(declare-fun b!1923758 () Bool)

(declare-fun e!1229808 () Bool)

(assert (=> b!1923758 (= e!1229808 (nullable!1605 (regex!3928 lt!737042)))))

(declare-fun bm!118224 () Bool)

(assert (=> bm!118224 (= call!118229 (isEmpty!13485 lt!737043))))

(declare-fun b!1923759 () Bool)

(declare-fun res!860312 () Bool)

(declare-fun e!1229806 () Bool)

(assert (=> b!1923759 (=> res!860312 e!1229806)))

(declare-fun e!1229802 () Bool)

(assert (=> b!1923759 (= res!860312 e!1229802)))

(declare-fun res!860311 () Bool)

(assert (=> b!1923759 (=> (not res!860311) (not e!1229802))))

(declare-fun lt!737305 () Bool)

(assert (=> b!1923759 (= res!860311 lt!737305)))

(declare-fun b!1923760 () Bool)

(declare-fun res!860306 () Bool)

(assert (=> b!1923760 (=> (not res!860306) (not e!1229802))))

(assert (=> b!1923760 (= res!860306 (isEmpty!13485 (tail!2972 lt!737043)))))

(declare-fun b!1923761 () Bool)

(assert (=> b!1923761 (= e!1229806 e!1229805)))

(declare-fun res!860310 () Bool)

(assert (=> b!1923761 (=> (not res!860310) (not e!1229805))))

(assert (=> b!1923761 (= res!860310 (not lt!737305))))

(declare-fun b!1923762 () Bool)

(assert (=> b!1923762 (= e!1229808 (matchR!2621 (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043)) (tail!2972 lt!737043)))))

(declare-fun b!1923763 () Bool)

(assert (=> b!1923763 (= e!1229803 (not (= (head!4484 lt!737043) (c!312513 (regex!3928 lt!737042)))))))

(declare-fun d!586047 () Bool)

(declare-fun e!1229804 () Bool)

(assert (=> d!586047 e!1229804))

(declare-fun c!312666 () Bool)

(assert (=> d!586047 (= c!312666 ((_ is EmptyExpr!5353) (regex!3928 lt!737042)))))

(assert (=> d!586047 (= lt!737305 e!1229808)))

(declare-fun c!312667 () Bool)

(assert (=> d!586047 (= c!312667 (isEmpty!13485 lt!737043))))

(assert (=> d!586047 (validRegex!2131 (regex!3928 lt!737042))))

(assert (=> d!586047 (= (matchR!2621 (regex!3928 lt!737042) lt!737043) lt!737305)))

(declare-fun b!1923764 () Bool)

(declare-fun res!860307 () Bool)

(assert (=> b!1923764 (=> res!860307 e!1229803)))

(assert (=> b!1923764 (= res!860307 (not (isEmpty!13485 (tail!2972 lt!737043))))))

(declare-fun b!1923765 () Bool)

(declare-fun res!860309 () Bool)

(assert (=> b!1923765 (=> (not res!860309) (not e!1229802))))

(assert (=> b!1923765 (= res!860309 (not call!118229))))

(declare-fun b!1923766 () Bool)

(declare-fun e!1229807 () Bool)

(assert (=> b!1923766 (= e!1229804 e!1229807)))

(declare-fun c!312668 () Bool)

(assert (=> b!1923766 (= c!312668 ((_ is EmptyLang!5353) (regex!3928 lt!737042)))))

(declare-fun b!1923767 () Bool)

(assert (=> b!1923767 (= e!1229802 (= (head!4484 lt!737043) (c!312513 (regex!3928 lt!737042))))))

(declare-fun b!1923768 () Bool)

(declare-fun res!860308 () Bool)

(assert (=> b!1923768 (=> res!860308 e!1229806)))

(assert (=> b!1923768 (= res!860308 (not ((_ is ElementMatch!5353) (regex!3928 lt!737042))))))

(assert (=> b!1923768 (= e!1229807 e!1229806)))

(declare-fun b!1923769 () Bool)

(assert (=> b!1923769 (= e!1229807 (not lt!737305))))

(declare-fun b!1923770 () Bool)

(assert (=> b!1923770 (= e!1229804 (= lt!737305 call!118229))))

(assert (= (and d!586047 c!312667) b!1923758))

(assert (= (and d!586047 (not c!312667)) b!1923762))

(assert (= (and d!586047 c!312666) b!1923770))

(assert (= (and d!586047 (not c!312666)) b!1923766))

(assert (= (and b!1923766 c!312668) b!1923769))

(assert (= (and b!1923766 (not c!312668)) b!1923768))

(assert (= (and b!1923768 (not res!860308)) b!1923759))

(assert (= (and b!1923759 res!860311) b!1923765))

(assert (= (and b!1923765 res!860309) b!1923760))

(assert (= (and b!1923760 res!860306) b!1923767))

(assert (= (and b!1923759 (not res!860312)) b!1923761))

(assert (= (and b!1923761 res!860310) b!1923757))

(assert (= (and b!1923757 (not res!860305)) b!1923764))

(assert (= (and b!1923764 (not res!860307)) b!1923763))

(assert (= (or b!1923770 b!1923757 b!1923765) bm!118224))

(assert (=> b!1923762 m!2358001))

(assert (=> b!1923762 m!2358001))

(declare-fun m!2358893 () Bool)

(assert (=> b!1923762 m!2358893))

(declare-fun m!2358895 () Bool)

(assert (=> b!1923762 m!2358895))

(assert (=> b!1923762 m!2358893))

(assert (=> b!1923762 m!2358895))

(declare-fun m!2358897 () Bool)

(assert (=> b!1923762 m!2358897))

(declare-fun m!2358899 () Bool)

(assert (=> b!1923758 m!2358899))

(assert (=> b!1923763 m!2358001))

(assert (=> b!1923764 m!2358895))

(assert (=> b!1923764 m!2358895))

(declare-fun m!2358901 () Bool)

(assert (=> b!1923764 m!2358901))

(declare-fun m!2358903 () Bool)

(assert (=> d!586047 m!2358903))

(declare-fun m!2358905 () Bool)

(assert (=> d!586047 m!2358905))

(assert (=> b!1923760 m!2358895))

(assert (=> b!1923760 m!2358895))

(assert (=> b!1923760 m!2358901))

(assert (=> b!1923767 m!2358001))

(assert (=> bm!118224 m!2358903))

(assert (=> b!1923023 d!586047))

(declare-fun d!586051 () Bool)

(assert (=> d!586051 (= (get!6892 lt!737050) (v!26609 lt!737050))))

(assert (=> b!1923023 d!586051))

(declare-fun d!586053 () Bool)

(assert (=> d!586053 (= (inv!28977 (tag!4370 (h!27310 rules!3198))) (= (mod (str.len (value!123538 (tag!4370 (h!27310 rules!3198)))) 2) 0))))

(assert (=> b!1923042 d!586053))

(declare-fun d!586055 () Bool)

(declare-fun res!860313 () Bool)

(declare-fun e!1229809 () Bool)

(assert (=> d!586055 (=> (not res!860313) (not e!1229809))))

(assert (=> d!586055 (= res!860313 (semiInverseModEq!1561 (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (h!27310 rules!3198)))))))

(assert (=> d!586055 (= (inv!28981 (transformation!3928 (h!27310 rules!3198))) e!1229809)))

(declare-fun b!1923771 () Bool)

(assert (=> b!1923771 (= e!1229809 (equivClasses!1488 (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (h!27310 rules!3198)))))))

(assert (= (and d!586055 res!860313) b!1923771))

(declare-fun m!2358907 () Bool)

(assert (=> d!586055 m!2358907))

(declare-fun m!2358909 () Bool)

(assert (=> b!1923771 m!2358909))

(assert (=> b!1923042 d!586055))

(declare-fun d!586057 () Bool)

(assert (=> d!586057 (not (matchR!2621 (regex!3928 (rule!6131 separatorToken!354)) lt!737043))))

(declare-fun lt!737308 () Unit!36232)

(declare-fun choose!11940 (Regex!5353 List!21988 C!10852) Unit!36232)

(assert (=> d!586057 (= lt!737308 (choose!11940 (regex!3928 (rule!6131 separatorToken!354)) lt!737043 lt!737055))))

(assert (=> d!586057 (validRegex!2131 (regex!3928 (rule!6131 separatorToken!354)))))

(assert (=> d!586057 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!280 (regex!3928 (rule!6131 separatorToken!354)) lt!737043 lt!737055) lt!737308)))

(declare-fun bs!414453 () Bool)

(assert (= bs!414453 d!586057))

(assert (=> bs!414453 m!2358071))

(declare-fun m!2358911 () Bool)

(assert (=> bs!414453 m!2358911))

(declare-fun m!2358913 () Bool)

(assert (=> bs!414453 m!2358913))

(assert (=> b!1923032 d!586057))

(declare-fun b!1923772 () Bool)

(declare-fun e!1229813 () Bool)

(declare-fun e!1229811 () Bool)

(assert (=> b!1923772 (= e!1229813 e!1229811)))

(declare-fun res!860314 () Bool)

(assert (=> b!1923772 (=> res!860314 e!1229811)))

(declare-fun call!118230 () Bool)

(assert (=> b!1923772 (= res!860314 call!118230)))

(declare-fun b!1923773 () Bool)

(declare-fun e!1229816 () Bool)

(assert (=> b!1923773 (= e!1229816 (nullable!1605 (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun bm!118225 () Bool)

(assert (=> bm!118225 (= call!118230 (isEmpty!13485 lt!737043))))

(declare-fun b!1923774 () Bool)

(declare-fun res!860321 () Bool)

(declare-fun e!1229814 () Bool)

(assert (=> b!1923774 (=> res!860321 e!1229814)))

(declare-fun e!1229810 () Bool)

(assert (=> b!1923774 (= res!860321 e!1229810)))

(declare-fun res!860320 () Bool)

(assert (=> b!1923774 (=> (not res!860320) (not e!1229810))))

(declare-fun lt!737309 () Bool)

(assert (=> b!1923774 (= res!860320 lt!737309)))

(declare-fun b!1923775 () Bool)

(declare-fun res!860315 () Bool)

(assert (=> b!1923775 (=> (not res!860315) (not e!1229810))))

(assert (=> b!1923775 (= res!860315 (isEmpty!13485 (tail!2972 lt!737043)))))

(declare-fun b!1923776 () Bool)

(assert (=> b!1923776 (= e!1229814 e!1229813)))

(declare-fun res!860319 () Bool)

(assert (=> b!1923776 (=> (not res!860319) (not e!1229813))))

(assert (=> b!1923776 (= res!860319 (not lt!737309))))

(declare-fun b!1923777 () Bool)

(assert (=> b!1923777 (= e!1229816 (matchR!2621 (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043)) (tail!2972 lt!737043)))))

(declare-fun b!1923778 () Bool)

(assert (=> b!1923778 (= e!1229811 (not (= (head!4484 lt!737043) (c!312513 (regex!3928 (rule!6131 separatorToken!354))))))))

(declare-fun d!586059 () Bool)

(declare-fun e!1229812 () Bool)

(assert (=> d!586059 e!1229812))

(declare-fun c!312670 () Bool)

(assert (=> d!586059 (= c!312670 ((_ is EmptyExpr!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(assert (=> d!586059 (= lt!737309 e!1229816)))

(declare-fun c!312671 () Bool)

(assert (=> d!586059 (= c!312671 (isEmpty!13485 lt!737043))))

(assert (=> d!586059 (validRegex!2131 (regex!3928 (rule!6131 separatorToken!354)))))

(assert (=> d!586059 (= (matchR!2621 (regex!3928 (rule!6131 separatorToken!354)) lt!737043) lt!737309)))

(declare-fun b!1923779 () Bool)

(declare-fun res!860316 () Bool)

(assert (=> b!1923779 (=> res!860316 e!1229811)))

(assert (=> b!1923779 (= res!860316 (not (isEmpty!13485 (tail!2972 lt!737043))))))

(declare-fun b!1923780 () Bool)

(declare-fun res!860318 () Bool)

(assert (=> b!1923780 (=> (not res!860318) (not e!1229810))))

(assert (=> b!1923780 (= res!860318 (not call!118230))))

(declare-fun b!1923781 () Bool)

(declare-fun e!1229815 () Bool)

(assert (=> b!1923781 (= e!1229812 e!1229815)))

(declare-fun c!312672 () Bool)

(assert (=> b!1923781 (= c!312672 ((_ is EmptyLang!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun b!1923782 () Bool)

(assert (=> b!1923782 (= e!1229810 (= (head!4484 lt!737043) (c!312513 (regex!3928 (rule!6131 separatorToken!354)))))))

(declare-fun b!1923783 () Bool)

(declare-fun res!860317 () Bool)

(assert (=> b!1923783 (=> res!860317 e!1229814)))

(assert (=> b!1923783 (= res!860317 (not ((_ is ElementMatch!5353) (regex!3928 (rule!6131 separatorToken!354)))))))

(assert (=> b!1923783 (= e!1229815 e!1229814)))

(declare-fun b!1923784 () Bool)

(assert (=> b!1923784 (= e!1229815 (not lt!737309))))

(declare-fun b!1923785 () Bool)

(assert (=> b!1923785 (= e!1229812 (= lt!737309 call!118230))))

(assert (= (and d!586059 c!312671) b!1923773))

(assert (= (and d!586059 (not c!312671)) b!1923777))

(assert (= (and d!586059 c!312670) b!1923785))

(assert (= (and d!586059 (not c!312670)) b!1923781))

(assert (= (and b!1923781 c!312672) b!1923784))

(assert (= (and b!1923781 (not c!312672)) b!1923783))

(assert (= (and b!1923783 (not res!860317)) b!1923774))

(assert (= (and b!1923774 res!860320) b!1923780))

(assert (= (and b!1923780 res!860318) b!1923775))

(assert (= (and b!1923775 res!860315) b!1923782))

(assert (= (and b!1923774 (not res!860321)) b!1923776))

(assert (= (and b!1923776 res!860319) b!1923772))

(assert (= (and b!1923772 (not res!860314)) b!1923779))

(assert (= (and b!1923779 (not res!860316)) b!1923778))

(assert (= (or b!1923785 b!1923772 b!1923780) bm!118225))

(assert (=> b!1923777 m!2358001))

(assert (=> b!1923777 m!2358001))

(declare-fun m!2358915 () Bool)

(assert (=> b!1923777 m!2358915))

(assert (=> b!1923777 m!2358895))

(assert (=> b!1923777 m!2358915))

(assert (=> b!1923777 m!2358895))

(declare-fun m!2358917 () Bool)

(assert (=> b!1923777 m!2358917))

(declare-fun m!2358919 () Bool)

(assert (=> b!1923773 m!2358919))

(assert (=> b!1923778 m!2358001))

(assert (=> b!1923779 m!2358895))

(assert (=> b!1923779 m!2358895))

(assert (=> b!1923779 m!2358901))

(assert (=> d!586059 m!2358903))

(assert (=> d!586059 m!2358913))

(assert (=> b!1923775 m!2358895))

(assert (=> b!1923775 m!2358895))

(assert (=> b!1923775 m!2358901))

(assert (=> b!1923782 m!2358001))

(assert (=> bm!118225 m!2358903))

(assert (=> b!1923032 d!586059))

(declare-fun d!586061 () Bool)

(assert (=> d!586061 (= (isEmpty!13478 rules!3198) ((_ is Nil!21909) rules!3198))))

(assert (=> b!1923043 d!586061))

(declare-fun d!586063 () Bool)

(declare-fun res!860324 () Bool)

(declare-fun e!1229819 () Bool)

(assert (=> d!586063 (=> (not res!860324) (not e!1229819))))

(declare-fun rulesValid!1448 (LexerInterface!3541 List!21991) Bool)

(assert (=> d!586063 (= res!860324 (rulesValid!1448 thiss!23328 rules!3198))))

(assert (=> d!586063 (= (rulesInvariant!3148 thiss!23328 rules!3198) e!1229819)))

(declare-fun b!1923788 () Bool)

(declare-datatypes ((List!21993 0))(
  ( (Nil!21911) (Cons!21911 (h!27312 String!25438) (t!179160 List!21993)) )
))
(declare-fun noDuplicateTag!1446 (LexerInterface!3541 List!21991 List!21993) Bool)

(assert (=> b!1923788 (= e!1229819 (noDuplicateTag!1446 thiss!23328 rules!3198 Nil!21911))))

(assert (= (and d!586063 res!860324) b!1923788))

(declare-fun m!2358921 () Bool)

(assert (=> d!586063 m!2358921))

(declare-fun m!2358923 () Bool)

(assert (=> b!1923788 m!2358923))

(assert (=> b!1923030 d!586063))

(declare-fun d!586065 () Bool)

(declare-fun res!860325 () Bool)

(declare-fun e!1229820 () Bool)

(assert (=> d!586065 (=> (not res!860325) (not e!1229820))))

(assert (=> d!586065 (= res!860325 (not (isEmpty!13485 (originalCharacters!4735 separatorToken!354))))))

(assert (=> d!586065 (= (inv!28980 separatorToken!354) e!1229820)))

(declare-fun b!1923789 () Bool)

(declare-fun res!860326 () Bool)

(assert (=> b!1923789 (=> (not res!860326) (not e!1229820))))

(assert (=> b!1923789 (= res!860326 (= (originalCharacters!4735 separatorToken!354) (list!8853 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))))))

(declare-fun b!1923790 () Bool)

(assert (=> b!1923790 (= e!1229820 (= (size!17088 separatorToken!354) (size!17091 (originalCharacters!4735 separatorToken!354))))))

(assert (= (and d!586065 res!860325) b!1923789))

(assert (= (and b!1923789 res!860326) b!1923790))

(declare-fun b_lambda!63621 () Bool)

(assert (=> (not b_lambda!63621) (not b!1923789)))

(assert (=> b!1923789 t!179107))

(declare-fun b_and!150581 () Bool)

(assert (= b_and!150571 (and (=> t!179107 result!142070) b_and!150581)))

(assert (=> b!1923789 t!179109))

(declare-fun b_and!150583 () Bool)

(assert (= b_and!150573 (and (=> t!179109 result!142072) b_and!150583)))

(assert (=> b!1923789 t!179111))

(declare-fun b_and!150585 () Bool)

(assert (= b_and!150575 (and (=> t!179111 result!142074) b_and!150585)))

(declare-fun m!2358925 () Bool)

(assert (=> d!586065 m!2358925))

(assert (=> b!1923789 m!2358531))

(assert (=> b!1923789 m!2358531))

(declare-fun m!2358927 () Bool)

(assert (=> b!1923789 m!2358927))

(declare-fun m!2358929 () Bool)

(assert (=> b!1923790 m!2358929))

(assert (=> start!192640 d!586065))

(declare-fun bs!414454 () Bool)

(declare-fun d!586067 () Bool)

(assert (= bs!414454 (and d!586067 b!1923040)))

(declare-fun lambda!75095 () Int)

(assert (=> bs!414454 (not (= lambda!75095 lambda!75071))))

(declare-fun bs!414455 () Bool)

(assert (= bs!414455 (and d!586067 b!1923285)))

(assert (=> bs!414455 (= lambda!75095 lambda!75089)))

(declare-fun b!1923799 () Bool)

(declare-fun e!1229829 () Bool)

(assert (=> b!1923799 (= e!1229829 true)))

(declare-fun b!1923798 () Bool)

(declare-fun e!1229828 () Bool)

(assert (=> b!1923798 (= e!1229828 e!1229829)))

(declare-fun b!1923797 () Bool)

(declare-fun e!1229827 () Bool)

(assert (=> b!1923797 (= e!1229827 e!1229828)))

(assert (=> d!586067 e!1229827))

(assert (= b!1923798 b!1923799))

(assert (= b!1923797 b!1923798))

(assert (= (and d!586067 ((_ is Cons!21909) rules!3198)) b!1923797))

(assert (=> b!1923799 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10595 order!13735 lambda!75095))))

(assert (=> b!1923799 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10595 order!13735 lambda!75095))))

(assert (=> d!586067 true))

(declare-fun lt!737312 () Bool)

(assert (=> d!586067 (= lt!737312 (forall!4628 tokens!598 lambda!75095))))

(declare-fun e!1229825 () Bool)

(assert (=> d!586067 (= lt!737312 e!1229825)))

(declare-fun res!860332 () Bool)

(assert (=> d!586067 (=> res!860332 e!1229825)))

(assert (=> d!586067 (= res!860332 (not ((_ is Cons!21908) tokens!598)))))

(assert (=> d!586067 (not (isEmpty!13478 rules!3198))))

(assert (=> d!586067 (= (rulesProduceEachTokenIndividuallyList!1272 thiss!23328 rules!3198 tokens!598) lt!737312)))

(declare-fun b!1923795 () Bool)

(declare-fun e!1229826 () Bool)

(assert (=> b!1923795 (= e!1229825 e!1229826)))

(declare-fun res!860331 () Bool)

(assert (=> b!1923795 (=> (not res!860331) (not e!1229826))))

(assert (=> b!1923795 (= res!860331 (rulesProduceIndividualToken!1713 thiss!23328 rules!3198 (h!27309 tokens!598)))))

(declare-fun b!1923796 () Bool)

(assert (=> b!1923796 (= e!1229826 (rulesProduceEachTokenIndividuallyList!1272 thiss!23328 rules!3198 (t!179045 tokens!598)))))

(assert (= (and d!586067 (not res!860332)) b!1923795))

(assert (= (and b!1923795 res!860331) b!1923796))

(declare-fun m!2358931 () Bool)

(assert (=> d!586067 m!2358931))

(assert (=> d!586067 m!2357967))

(declare-fun m!2358933 () Bool)

(assert (=> b!1923795 m!2358933))

(declare-fun m!2358935 () Bool)

(assert (=> b!1923796 m!2358935))

(assert (=> b!1923041 d!586067))

(declare-fun b!1923804 () Bool)

(declare-fun e!1229832 () Bool)

(declare-fun tp_is_empty!9129 () Bool)

(declare-fun tp!549809 () Bool)

(assert (=> b!1923804 (= e!1229832 (and tp_is_empty!9129 tp!549809))))

(assert (=> b!1923028 (= tp!549738 e!1229832)))

(assert (= (and b!1923028 ((_ is Cons!21906) (originalCharacters!4735 separatorToken!354))) b!1923804))

(declare-fun b!1923815 () Bool)

(declare-fun e!1229835 () Bool)

(assert (=> b!1923815 (= e!1229835 tp_is_empty!9129)))

(declare-fun b!1923816 () Bool)

(declare-fun tp!549821 () Bool)

(declare-fun tp!549824 () Bool)

(assert (=> b!1923816 (= e!1229835 (and tp!549821 tp!549824))))

(declare-fun b!1923817 () Bool)

(declare-fun tp!549822 () Bool)

(assert (=> b!1923817 (= e!1229835 tp!549822)))

(declare-fun b!1923818 () Bool)

(declare-fun tp!549820 () Bool)

(declare-fun tp!549823 () Bool)

(assert (=> b!1923818 (= e!1229835 (and tp!549820 tp!549823))))

(assert (=> b!1923037 (= tp!549740 e!1229835)))

(assert (= (and b!1923037 ((_ is ElementMatch!5353) (regex!3928 (rule!6131 separatorToken!354)))) b!1923815))

(assert (= (and b!1923037 ((_ is Concat!9418) (regex!3928 (rule!6131 separatorToken!354)))) b!1923816))

(assert (= (and b!1923037 ((_ is Star!5353) (regex!3928 (rule!6131 separatorToken!354)))) b!1923817))

(assert (= (and b!1923037 ((_ is Union!5353) (regex!3928 (rule!6131 separatorToken!354)))) b!1923818))

(declare-fun b!1923819 () Bool)

(declare-fun e!1229836 () Bool)

(declare-fun tp!549825 () Bool)

(assert (=> b!1923819 (= e!1229836 (and tp_is_empty!9129 tp!549825))))

(assert (=> b!1923046 (= tp!549733 e!1229836)))

(assert (= (and b!1923046 ((_ is Cons!21906) (originalCharacters!4735 (h!27309 tokens!598)))) b!1923819))

(declare-fun b!1923833 () Bool)

(declare-fun b_free!55117 () Bool)

(declare-fun b_next!55821 () Bool)

(assert (=> b!1923833 (= b_free!55117 (not b_next!55821))))

(declare-fun t!179141 () Bool)

(declare-fun tb!117573 () Bool)

(assert (=> (and b!1923833 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179141) tb!117573))

(declare-fun result!142110 () Bool)

(assert (= result!142110 result!142016))

(assert (=> d!585847 t!179141))

(assert (=> d!585869 t!179141))

(declare-fun t!179143 () Bool)

(declare-fun tb!117575 () Bool)

(assert (=> (and b!1923833 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179143) tb!117575))

(declare-fun result!142112 () Bool)

(assert (= result!142112 result!142024))

(assert (=> d!585869 t!179143))

(declare-fun b_and!150587 () Bool)

(declare-fun tp!549836 () Bool)

(assert (=> b!1923833 (= tp!549836 (and (=> t!179141 result!142110) (=> t!179143 result!142112) b_and!150587))))

(declare-fun b_free!55119 () Bool)

(declare-fun b_next!55823 () Bool)

(assert (=> b!1923833 (= b_free!55119 (not b_next!55823))))

(declare-fun t!179145 () Bool)

(declare-fun tb!117577 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179145) tb!117577))

(declare-fun result!142114 () Bool)

(assert (= result!142114 result!142064))

(assert (=> b!1923734 t!179145))

(declare-fun t!179147 () Bool)

(declare-fun tb!117579 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179147) tb!117579))

(declare-fun result!142116 () Bool)

(assert (= result!142116 result!142008))

(assert (=> d!585847 t!179147))

(declare-fun tb!117581 () Bool)

(declare-fun t!179149 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) t!179149) tb!117581))

(declare-fun result!142118 () Bool)

(assert (= result!142118 result!142070))

(assert (=> d!585939 t!179149))

(assert (=> b!1923789 t!179149))

(assert (=> d!585925 t!179145))

(declare-fun b_and!150589 () Bool)

(declare-fun tp!549840 () Bool)

(assert (=> b!1923833 (= tp!549840 (and (=> t!179145 result!142114) (=> t!179149 result!142118) (=> t!179147 result!142116) b_and!150589))))

(declare-fun e!1229852 () Bool)

(assert (=> b!1923025 (= tp!549730 e!1229852)))

(declare-fun tp!549839 () Bool)

(declare-fun e!1229853 () Bool)

(declare-fun b!1923831 () Bool)

(declare-fun e!1229849 () Bool)

(assert (=> b!1923831 (= e!1229849 (and (inv!21 (value!123539 (h!27309 (t!179045 tokens!598)))) e!1229853 tp!549839))))

(declare-fun e!1229854 () Bool)

(assert (=> b!1923833 (= e!1229854 (and tp!549836 tp!549840))))

(declare-fun tp!549837 () Bool)

(declare-fun b!1923832 () Bool)

(assert (=> b!1923832 (= e!1229853 (and tp!549837 (inv!28977 (tag!4370 (rule!6131 (h!27309 (t!179045 tokens!598))))) (inv!28981 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) e!1229854))))

(declare-fun tp!549838 () Bool)

(declare-fun b!1923830 () Bool)

(assert (=> b!1923830 (= e!1229852 (and (inv!28980 (h!27309 (t!179045 tokens!598))) e!1229849 tp!549838))))

(assert (= b!1923832 b!1923833))

(assert (= b!1923831 b!1923832))

(assert (= b!1923830 b!1923831))

(assert (= (and b!1923025 ((_ is Cons!21908) (t!179045 tokens!598))) b!1923830))

(declare-fun m!2358937 () Bool)

(assert (=> b!1923831 m!2358937))

(declare-fun m!2358939 () Bool)

(assert (=> b!1923832 m!2358939))

(declare-fun m!2358941 () Bool)

(assert (=> b!1923832 m!2358941))

(declare-fun m!2358943 () Bool)

(assert (=> b!1923830 m!2358943))

(declare-fun b!1923834 () Bool)

(declare-fun e!1229855 () Bool)

(assert (=> b!1923834 (= e!1229855 tp_is_empty!9129)))

(declare-fun b!1923835 () Bool)

(declare-fun tp!549842 () Bool)

(declare-fun tp!549845 () Bool)

(assert (=> b!1923835 (= e!1229855 (and tp!549842 tp!549845))))

(declare-fun b!1923836 () Bool)

(declare-fun tp!549843 () Bool)

(assert (=> b!1923836 (= e!1229855 tp!549843)))

(declare-fun b!1923837 () Bool)

(declare-fun tp!549841 () Bool)

(declare-fun tp!549844 () Bool)

(assert (=> b!1923837 (= e!1229855 (and tp!549841 tp!549844))))

(assert (=> b!1923036 (= tp!549732 e!1229855)))

(assert (= (and b!1923036 ((_ is ElementMatch!5353) (regex!3928 (rule!6131 (h!27309 tokens!598))))) b!1923834))

(assert (= (and b!1923036 ((_ is Concat!9418) (regex!3928 (rule!6131 (h!27309 tokens!598))))) b!1923835))

(assert (= (and b!1923036 ((_ is Star!5353) (regex!3928 (rule!6131 (h!27309 tokens!598))))) b!1923836))

(assert (= (and b!1923036 ((_ is Union!5353) (regex!3928 (rule!6131 (h!27309 tokens!598))))) b!1923837))

(declare-fun b!1923848 () Bool)

(declare-fun b_free!55121 () Bool)

(declare-fun b_next!55825 () Bool)

(assert (=> b!1923848 (= b_free!55121 (not b_next!55825))))

(declare-fun tb!117583 () Bool)

(declare-fun t!179151 () Bool)

(assert (=> (and b!1923848 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179151) tb!117583))

(declare-fun result!142122 () Bool)

(assert (= result!142122 result!142016))

(assert (=> d!585847 t!179151))

(assert (=> d!585869 t!179151))

(declare-fun tb!117585 () Bool)

(declare-fun t!179153 () Bool)

(assert (=> (and b!1923848 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179153) tb!117585))

(declare-fun result!142124 () Bool)

(assert (= result!142124 result!142024))

(assert (=> d!585869 t!179153))

(declare-fun tp!549856 () Bool)

(declare-fun b_and!150591 () Bool)

(assert (=> b!1923848 (= tp!549856 (and (=> t!179151 result!142122) (=> t!179153 result!142124) b_and!150591))))

(declare-fun b_free!55123 () Bool)

(declare-fun b_next!55827 () Bool)

(assert (=> b!1923848 (= b_free!55123 (not b_next!55827))))

(declare-fun t!179155 () Bool)

(declare-fun tb!117587 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179155) tb!117587))

(declare-fun result!142126 () Bool)

(assert (= result!142126 result!142064))

(assert (=> b!1923734 t!179155))

(declare-fun t!179157 () Bool)

(declare-fun tb!117589 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179157) tb!117589))

(declare-fun result!142128 () Bool)

(assert (= result!142128 result!142008))

(assert (=> d!585847 t!179157))

(declare-fun tb!117591 () Bool)

(declare-fun t!179159 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) t!179159) tb!117591))

(declare-fun result!142130 () Bool)

(assert (= result!142130 result!142070))

(assert (=> d!585939 t!179159))

(assert (=> b!1923789 t!179159))

(assert (=> d!585925 t!179155))

(declare-fun tp!549854 () Bool)

(declare-fun b_and!150593 () Bool)

(assert (=> b!1923848 (= tp!549854 (and (=> t!179159 result!142130) (=> t!179157 result!142128) (=> t!179155 result!142126) b_and!150593))))

(declare-fun e!1229864 () Bool)

(assert (=> b!1923848 (= e!1229864 (and tp!549856 tp!549854))))

(declare-fun e!1229865 () Bool)

(declare-fun b!1923847 () Bool)

(declare-fun tp!549857 () Bool)

(assert (=> b!1923847 (= e!1229865 (and tp!549857 (inv!28977 (tag!4370 (h!27310 (t!179046 rules!3198)))) (inv!28981 (transformation!3928 (h!27310 (t!179046 rules!3198)))) e!1229864))))

(declare-fun b!1923846 () Bool)

(declare-fun e!1229866 () Bool)

(declare-fun tp!549855 () Bool)

(assert (=> b!1923846 (= e!1229866 (and e!1229865 tp!549855))))

(assert (=> b!1923045 (= tp!549729 e!1229866)))

(assert (= b!1923847 b!1923848))

(assert (= b!1923846 b!1923847))

(assert (= (and b!1923045 ((_ is Cons!21909) (t!179046 rules!3198))) b!1923846))

(declare-fun m!2358945 () Bool)

(assert (=> b!1923847 m!2358945))

(declare-fun m!2358947 () Bool)

(assert (=> b!1923847 m!2358947))

(declare-fun b!1923849 () Bool)

(declare-fun e!1229868 () Bool)

(assert (=> b!1923849 (= e!1229868 tp_is_empty!9129)))

(declare-fun b!1923850 () Bool)

(declare-fun tp!549859 () Bool)

(declare-fun tp!549862 () Bool)

(assert (=> b!1923850 (= e!1229868 (and tp!549859 tp!549862))))

(declare-fun b!1923851 () Bool)

(declare-fun tp!549860 () Bool)

(assert (=> b!1923851 (= e!1229868 tp!549860)))

(declare-fun b!1923852 () Bool)

(declare-fun tp!549858 () Bool)

(declare-fun tp!549861 () Bool)

(assert (=> b!1923852 (= e!1229868 (and tp!549858 tp!549861))))

(assert (=> b!1923042 (= tp!549735 e!1229868)))

(assert (= (and b!1923042 ((_ is ElementMatch!5353) (regex!3928 (h!27310 rules!3198)))) b!1923849))

(assert (= (and b!1923042 ((_ is Concat!9418) (regex!3928 (h!27310 rules!3198)))) b!1923850))

(assert (= (and b!1923042 ((_ is Star!5353) (regex!3928 (h!27310 rules!3198)))) b!1923851))

(assert (= (and b!1923042 ((_ is Union!5353) (regex!3928 (h!27310 rules!3198)))) b!1923852))

(declare-fun b_lambda!63623 () Bool)

(assert (= b_lambda!63573 (or (and b!1923833 b_free!55117 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923049 b_free!55097 (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923039 b_free!55105 (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923848 b_free!55121 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923035 b_free!55101) b_lambda!63623)))

(declare-fun b_lambda!63625 () Bool)

(assert (= b_lambda!63577 (or (and b!1923833 b_free!55117 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923049 b_free!55097 (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923039 b_free!55105 (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923848 b_free!55121 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923035 b_free!55101) b_lambda!63625)))

(declare-fun b_lambda!63627 () Bool)

(assert (= b_lambda!63571 (or (and b!1923833 b_free!55119 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923035 b_free!55103) (and b!1923848 b_free!55123 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923039 b_free!55107 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923049 b_free!55099 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) b_lambda!63627)))

(declare-fun b_lambda!63629 () Bool)

(assert (= b_lambda!63621 (or (and b!1923049 b_free!55099) (and b!1923039 b_free!55107 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))))) (and b!1923035 b_free!55103 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))))) (and b!1923848 b_free!55123 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))))) (and b!1923833 b_free!55119 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))))) b_lambda!63629)))

(declare-fun b_lambda!63631 () Bool)

(assert (= b_lambda!63591 (or (and b!1923833 b_free!55119 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923035 b_free!55103) (and b!1923848 b_free!55123 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923039 b_free!55107 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923049 b_free!55099 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) b_lambda!63631)))

(declare-fun b_lambda!63633 () Bool)

(assert (= b_lambda!63569 (or b!1923040 b_lambda!63633)))

(declare-fun bs!414456 () Bool)

(declare-fun d!586069 () Bool)

(assert (= bs!414456 (and d!586069 b!1923040)))

(assert (=> bs!414456 (= (dynLambda!10587 lambda!75071 (h!27309 tokens!598)) (not (isSeparator!3928 (rule!6131 (h!27309 tokens!598)))))))

(assert (=> b!1923055 d!586069))

(declare-fun b_lambda!63635 () Bool)

(assert (= b_lambda!63595 (or (and b!1923049 b_free!55099) (and b!1923039 b_free!55107 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))))) (and b!1923035 b_free!55103 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))))) (and b!1923848 b_free!55123 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))))) (and b!1923833 b_free!55119 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))))) b_lambda!63635)))

(declare-fun b_lambda!63637 () Bool)

(assert (= b_lambda!63575 (or (and b!1923833 b_free!55117 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923049 b_free!55097 (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923039 b_free!55105 (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923848 b_free!55121 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923035 b_free!55101) b_lambda!63637)))

(declare-fun b_lambda!63639 () Bool)

(assert (= b_lambda!63601 (or (and b!1923833 b_free!55119 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923035 b_free!55103) (and b!1923848 b_free!55123 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923039 b_free!55107 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (and b!1923049 b_free!55099 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) b_lambda!63639)))

(check-sat (not b!1923169) (not d!585939) (not b!1923317) (not d!585883) (not d!585869) (not b!1923708) (not b!1923617) (not b!1923796) (not d!585963) (not b!1923380) (not b!1923318) (not b_next!55807) (not b!1923401) (not b!1923763) b_and!150581 (not b!1923547) (not b!1923316) (not b!1923735) (not b!1923775) tp_is_empty!9129 (not d!586057) (not bm!118198) (not b_next!55827) (not b!1923507) (not b!1923816) (not b!1923847) (not b_lambda!63639) (not b!1923303) b_and!150593 (not b_lambda!63633) (not b!1923852) (not b!1923764) (not b!1923546) (not d!586067) (not b!1923194) (not bm!118219) (not bm!118184) (not b!1923442) (not b!1923779) (not b!1923288) (not b!1923209) (not d!585867) (not b!1923208) b_and!150587 (not b!1923197) (not b!1923756) b_and!150503 (not b_next!55823) (not d!585847) (not b_next!55821) (not b!1923198) (not d!585915) (not b!1923836) (not bm!118185) (not tb!117493) (not d!586009) (not d!586015) (not d!585845) (not d!585977) (not b!1923790) (not b!1923337) (not b!1923503) (not b!1923196) (not b!1923400) (not d!585965) (not b!1923767) (not b!1923817) (not b!1923778) (not bm!118212) (not b!1923538) (not b!1923445) (not b!1923788) (not bm!118214) (not b!1923830) (not b_lambda!63627) (not d!585983) (not b!1923650) (not tb!117547) (not d!586039) (not b!1923311) (not d!585901) (not b_next!55825) (not b!1923056) (not b!1923312) (not b!1923505) (not b!1923589) (not b!1923410) (not b!1923734) (not d!586025) (not d!585889) (not bm!118183) (not b!1923832) (not tb!117499) (not b!1923375) (not b!1923195) (not b!1923846) (not b!1923760) b_and!150585 (not b!1923620) (not bm!118154) (not b!1923190) (not d!586063) (not b!1923850) (not b!1923818) (not d!586011) (not d!585921) (not b!1923286) (not bm!118224) (not bm!118211) b_and!150589 (not bm!118220) (not bm!118222) (not d!585919) (not b!1923508) (not b!1923795) (not b_next!55801) (not d!585937) (not b_next!55803) (not d!585947) (not d!585933) (not b!1923290) b_and!150591 (not b!1923285) b_and!150505 (not b!1923382) (not b!1923192) (not d!585991) (not b!1923837) b_and!150501 (not b!1923710) (not d!586065) (not b!1923374) (not b_lambda!63635) (not b!1923319) (not b!1923755) (not bm!118225) (not b!1923771) (not b!1923313) (not d!586005) (not b!1923693) (not b!1923777) (not b_next!55805) (not b_lambda!63637) (not b!1923695) (not b!1923191) (not b!1923789) (not b!1923707) (not b!1923762) (not b!1923532) (not b!1923582) (not b_next!55811) (not b!1923315) (not bm!118181) (not d!586043) (not tb!117541) (not b!1923831) (not b!1923578) (not b!1923742) b_and!150583 (not b_lambda!63625) (not b_lambda!63629) (not b!1923512) (not b!1923773) (not d!585913) (not b!1923782) (not d!586055) (not b_lambda!63623) (not b!1923376) (not d!585987) (not b!1923804) (not d!586047) (not b!1923652) (not b_lambda!63631) (not d!585925) (not d!585969) (not b!1923590) (not b_next!55809) (not b!1923577) (not b!1923797) (not b!1923381) (not b!1923336) (not b!1923509) (not b!1923758) (not b!1923403) (not d!585865) (not tb!117505) (not d!585899) (not d!586007) (not b!1923581) (not d!586059) (not b!1923443) (not b!1923543) (not b!1923835) (not b!1923694) (not d!586013) (not b!1923819) (not b!1923851))
(check-sat (not b_next!55825) b_and!150585 b_and!150589 b_and!150501 (not b_next!55805) (not b_next!55811) b_and!150583 (not b_next!55809) (not b_next!55807) b_and!150581 (not b_next!55827) b_and!150593 b_and!150587 b_and!150503 (not b_next!55823) (not b_next!55821) (not b_next!55801) (not b_next!55803) b_and!150591 b_and!150505)
(get-model)

(declare-fun d!586111 () Bool)

(assert (=> d!586111 (= (list!8853 lt!737208) (list!8856 (c!312512 lt!737208)))))

(declare-fun bs!414465 () Bool)

(assert (= bs!414465 d!586111))

(declare-fun m!2359203 () Bool)

(assert (=> bs!414465 m!2359203))

(assert (=> d!585925 d!586111))

(declare-fun d!586113 () Bool)

(declare-fun lt!737363 () Int)

(assert (=> d!586113 (>= lt!737363 0)))

(declare-fun e!1229924 () Int)

(assert (=> d!586113 (= lt!737363 e!1229924)))

(declare-fun c!312699 () Bool)

(assert (=> d!586113 (= c!312699 ((_ is Nil!21906) lt!737115))))

(assert (=> d!586113 (= (size!17091 lt!737115) lt!737363)))

(declare-fun b!1923956 () Bool)

(assert (=> b!1923956 (= e!1229924 0)))

(declare-fun b!1923957 () Bool)

(assert (=> b!1923957 (= e!1229924 (+ 1 (size!17091 (t!179043 lt!737115))))))

(assert (= (and d!586113 c!312699) b!1923956))

(assert (= (and d!586113 (not c!312699)) b!1923957))

(declare-fun m!2359205 () Bool)

(assert (=> b!1923957 m!2359205))

(assert (=> b!1923209 d!586113))

(declare-fun d!586115 () Bool)

(declare-fun lt!737364 () Int)

(assert (=> d!586115 (>= lt!737364 0)))

(declare-fun e!1229925 () Int)

(assert (=> d!586115 (= lt!737364 e!1229925)))

(declare-fun c!312700 () Bool)

(assert (=> d!586115 (= c!312700 ((_ is Nil!21906) lt!737051))))

(assert (=> d!586115 (= (size!17091 lt!737051) lt!737364)))

(declare-fun b!1923958 () Bool)

(assert (=> b!1923958 (= e!1229925 0)))

(declare-fun b!1923959 () Bool)

(assert (=> b!1923959 (= e!1229925 (+ 1 (size!17091 (t!179043 lt!737051))))))

(assert (= (and d!586115 c!312700) b!1923958))

(assert (= (and d!586115 (not c!312700)) b!1923959))

(declare-fun m!2359207 () Bool)

(assert (=> b!1923959 m!2359207))

(assert (=> b!1923209 d!586115))

(declare-fun d!586117 () Bool)

(declare-fun lt!737365 () Int)

(assert (=> d!586117 (>= lt!737365 0)))

(declare-fun e!1229926 () Int)

(assert (=> d!586117 (= lt!737365 e!1229926)))

(declare-fun c!312701 () Bool)

(assert (=> d!586117 (= c!312701 ((_ is Nil!21906) lt!737059))))

(assert (=> d!586117 (= (size!17091 lt!737059) lt!737365)))

(declare-fun b!1923960 () Bool)

(assert (=> b!1923960 (= e!1229926 0)))

(declare-fun b!1923961 () Bool)

(assert (=> b!1923961 (= e!1229926 (+ 1 (size!17091 (t!179043 lt!737059))))))

(assert (= (and d!586117 c!312701) b!1923960))

(assert (= (and d!586117 (not c!312701)) b!1923961))

(declare-fun m!2359209 () Bool)

(assert (=> b!1923961 m!2359209))

(assert (=> b!1923209 d!586117))

(declare-fun d!586119 () Bool)

(assert (=> d!586119 (= (list!8853 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))) (list!8856 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))))))

(declare-fun bs!414466 () Bool)

(assert (= bs!414466 d!586119))

(declare-fun m!2359211 () Bool)

(assert (=> bs!414466 m!2359211))

(assert (=> b!1923734 d!586119))

(assert (=> b!1923767 d!586001))

(declare-fun d!586121 () Bool)

(declare-fun c!312704 () Bool)

(assert (=> d!586121 (= c!312704 ((_ is Nil!21906) lt!737234))))

(declare-fun e!1229929 () (InoxSet C!10852))

(assert (=> d!586121 (= (content!3163 lt!737234) e!1229929)))

(declare-fun b!1923966 () Bool)

(assert (=> b!1923966 (= e!1229929 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1923967 () Bool)

(assert (=> b!1923967 (= e!1229929 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 lt!737234) true) (content!3163 (t!179043 lt!737234))))))

(assert (= (and d!586121 c!312704) b!1923966))

(assert (= (and d!586121 (not c!312704)) b!1923967))

(declare-fun m!2359213 () Bool)

(assert (=> b!1923967 m!2359213))

(declare-fun m!2359215 () Bool)

(assert (=> b!1923967 m!2359215))

(assert (=> d!585987 d!586121))

(declare-fun d!586123 () Bool)

(declare-fun c!312705 () Bool)

(assert (=> d!586123 (= c!312705 ((_ is Nil!21906) lt!737043))))

(declare-fun e!1229930 () (InoxSet C!10852))

(assert (=> d!586123 (= (content!3163 lt!737043) e!1229930)))

(declare-fun b!1923968 () Bool)

(assert (=> b!1923968 (= e!1229930 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1923969 () Bool)

(assert (=> b!1923969 (= e!1229930 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 lt!737043) true) (content!3163 (t!179043 lt!737043))))))

(assert (= (and d!586123 c!312705) b!1923968))

(assert (= (and d!586123 (not c!312705)) b!1923969))

(declare-fun m!2359217 () Bool)

(assert (=> b!1923969 m!2359217))

(declare-fun m!2359219 () Bool)

(assert (=> b!1923969 m!2359219))

(assert (=> d!585987 d!586123))

(declare-fun d!586125 () Bool)

(declare-fun c!312706 () Bool)

(assert (=> d!586125 (= c!312706 ((_ is Nil!21906) lt!737059))))

(declare-fun e!1229931 () (InoxSet C!10852))

(assert (=> d!586125 (= (content!3163 lt!737059) e!1229931)))

(declare-fun b!1923970 () Bool)

(assert (=> b!1923970 (= e!1229931 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1923971 () Bool)

(assert (=> b!1923971 (= e!1229931 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 lt!737059) true) (content!3163 (t!179043 lt!737059))))))

(assert (= (and d!586125 c!312706) b!1923970))

(assert (= (and d!586125 (not c!312706)) b!1923971))

(declare-fun m!2359221 () Bool)

(assert (=> b!1923971 m!2359221))

(declare-fun m!2359223 () Bool)

(assert (=> b!1923971 m!2359223))

(assert (=> d!585987 d!586125))

(declare-fun d!586127 () Bool)

(assert (=> d!586127 (= (get!6892 lt!737199) (v!26609 lt!737199))))

(assert (=> b!1923381 d!586127))

(declare-fun d!586129 () Bool)

(assert (=> d!586129 (= (isDefined!3825 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))) (not (isEmpty!13484 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))))))

(declare-fun bs!414467 () Bool)

(assert (= bs!414467 d!586129))

(assert (=> bs!414467 m!2358033))

(declare-fun m!2359225 () Bool)

(assert (=> bs!414467 m!2359225))

(assert (=> d!585899 d!586129))

(assert (=> d!585899 d!585901))

(declare-fun d!586131 () Bool)

(declare-fun e!1229934 () Bool)

(assert (=> d!586131 e!1229934))

(declare-fun res!860384 () Bool)

(assert (=> d!586131 (=> (not res!860384) (not e!1229934))))

(assert (=> d!586131 (= res!860384 (isDefined!3825 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))))))

(assert (=> d!586131 true))

(declare-fun _$52!1211 () Unit!36232)

(assert (=> d!586131 (= (choose!11935 thiss!23328 rules!3198 lt!737043 separatorToken!354) _$52!1211)))

(declare-fun b!1923976 () Bool)

(declare-fun res!860385 () Bool)

(assert (=> b!1923976 (=> (not res!860385) (not e!1229934))))

(assert (=> b!1923976 (= res!860385 (matchR!2621 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))) (list!8853 (charsOf!2468 separatorToken!354))))))

(declare-fun b!1923977 () Bool)

(assert (=> b!1923977 (= e!1229934 (= (rule!6131 separatorToken!354) (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))))))

(assert (= (and d!586131 res!860384) b!1923976))

(assert (= (and b!1923976 res!860385) b!1923977))

(assert (=> d!586131 m!2358033))

(assert (=> d!586131 m!2358033))

(assert (=> d!586131 m!2358389))

(assert (=> b!1923976 m!2358033))

(assert (=> b!1923976 m!2358051))

(assert (=> b!1923976 m!2358395))

(assert (=> b!1923976 m!2358045))

(assert (=> b!1923976 m!2358033))

(assert (=> b!1923976 m!2358393))

(assert (=> b!1923976 m!2358045))

(assert (=> b!1923976 m!2358051))

(assert (=> b!1923977 m!2358033))

(assert (=> b!1923977 m!2358033))

(assert (=> b!1923977 m!2358393))

(assert (=> d!585899 d!586131))

(assert (=> d!585899 d!586063))

(declare-fun d!586133 () Bool)

(assert (=> d!586133 (= (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))) (v!26609 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))))))

(assert (=> b!1923337 d!586133))

(assert (=> b!1923337 d!585901))

(declare-fun d!586135 () Bool)

(declare-fun charsToInt!0 (List!21989) (_ BitVec 32))

(assert (=> d!586135 (= (inv!16 (value!123539 (h!27309 tokens!598))) (= (charsToInt!0 (text!28895 (value!123539 (h!27309 tokens!598)))) (value!123530 (value!123539 (h!27309 tokens!598)))))))

(declare-fun bs!414468 () Bool)

(assert (= bs!414468 d!586135))

(declare-fun m!2359227 () Bool)

(assert (=> bs!414468 m!2359227))

(assert (=> b!1923710 d!586135))

(assert (=> d!586009 d!585969))

(assert (=> d!586009 d!585977))

(assert (=> d!586009 d!585983))

(declare-fun d!586137 () Bool)

(assert (=> d!586137 (= (++!5869 (++!5869 lt!737051 lt!737043) lt!737059) (++!5869 lt!737051 (++!5869 lt!737043 lt!737059)))))

(assert (=> d!586137 true))

(declare-fun _$52!1214 () Unit!36232)

(assert (=> d!586137 (= (choose!11938 lt!737051 lt!737043 lt!737059) _$52!1214)))

(declare-fun bs!414469 () Bool)

(assert (= bs!414469 d!586137))

(assert (=> bs!414469 m!2357995))

(assert (=> bs!414469 m!2357995))

(assert (=> bs!414469 m!2357999))

(assert (=> bs!414469 m!2357989))

(assert (=> bs!414469 m!2357989))

(assert (=> bs!414469 m!2357991))

(assert (=> d!586009 d!586137))

(assert (=> d!586009 d!585987))

(declare-fun d!586139 () Bool)

(declare-fun e!1229945 () Bool)

(assert (=> d!586139 e!1229945))

(declare-fun res!860406 () Bool)

(assert (=> d!586139 (=> res!860406 e!1229945)))

(declare-fun lt!737379 () Option!4532)

(assert (=> d!586139 (= res!860406 (isEmpty!13483 lt!737379))))

(declare-fun e!1229944 () Option!4532)

(assert (=> d!586139 (= lt!737379 e!1229944)))

(declare-fun c!312709 () Bool)

(declare-datatypes ((tuple2!20526 0))(
  ( (tuple2!20527 (_1!11732 List!21988) (_2!11732 List!21988)) )
))
(declare-fun lt!737378 () tuple2!20526)

(assert (=> d!586139 (= c!312709 (isEmpty!13485 (_1!11732 lt!737378)))))

(declare-fun findLongestMatch!460 (Regex!5353 List!21988) tuple2!20526)

(assert (=> d!586139 (= lt!737378 (findLongestMatch!460 (regex!3928 (h!27310 rules!3198)) lt!737051))))

(declare-fun ruleValid!1193 (LexerInterface!3541 Rule!7656) Bool)

(assert (=> d!586139 (ruleValid!1193 thiss!23328 (h!27310 rules!3198))))

(assert (=> d!586139 (= (maxPrefixOneRule!1219 thiss!23328 (h!27310 rules!3198) lt!737051) lt!737379)))

(declare-fun b!1923996 () Bool)

(declare-fun e!1229943 () Bool)

(declare-fun findLongestMatchInner!533 (Regex!5353 List!21988 Int List!21988 List!21988 Int) tuple2!20526)

(assert (=> b!1923996 (= e!1229943 (matchR!2621 (regex!3928 (h!27310 rules!3198)) (_1!11732 (findLongestMatchInner!533 (regex!3928 (h!27310 rules!3198)) Nil!21906 (size!17091 Nil!21906) lt!737051 lt!737051 (size!17091 lt!737051)))))))

(declare-fun b!1923997 () Bool)

(declare-fun res!860403 () Bool)

(declare-fun e!1229946 () Bool)

(assert (=> b!1923997 (=> (not res!860403) (not e!1229946))))

(assert (=> b!1923997 (= res!860403 (= (rule!6131 (_1!11728 (get!6893 lt!737379))) (h!27310 rules!3198)))))

(declare-fun b!1923998 () Bool)

(declare-fun res!860404 () Bool)

(assert (=> b!1923998 (=> (not res!860404) (not e!1229946))))

(assert (=> b!1923998 (= res!860404 (= (value!123539 (_1!11728 (get!6893 lt!737379))) (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737379)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737379)))))))))

(declare-fun b!1923999 () Bool)

(declare-fun res!860401 () Bool)

(assert (=> b!1923999 (=> (not res!860401) (not e!1229946))))

(assert (=> b!1923999 (= res!860401 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737379)))) (_2!11728 (get!6893 lt!737379))) lt!737051))))

(declare-fun b!1924000 () Bool)

(declare-fun res!860402 () Bool)

(assert (=> b!1924000 (=> (not res!860402) (not e!1229946))))

(assert (=> b!1924000 (= res!860402 (< (size!17091 (_2!11728 (get!6893 lt!737379))) (size!17091 lt!737051)))))

(declare-fun b!1924001 () Bool)

(assert (=> b!1924001 (= e!1229946 (= (size!17088 (_1!11728 (get!6893 lt!737379))) (size!17091 (originalCharacters!4735 (_1!11728 (get!6893 lt!737379))))))))

(declare-fun b!1924002 () Bool)

(assert (=> b!1924002 (= e!1229944 None!4531)))

(declare-fun b!1924003 () Bool)

(declare-fun size!17094 (BalanceConc!14436) Int)

(assert (=> b!1924003 (= e!1229944 (Some!4531 (tuple2!20519 (Token!7409 (apply!5680 (transformation!3928 (h!27310 rules!3198)) (seqFromList!2782 (_1!11732 lt!737378))) (h!27310 rules!3198) (size!17094 (seqFromList!2782 (_1!11732 lt!737378))) (_1!11732 lt!737378)) (_2!11732 lt!737378))))))

(declare-fun lt!737377 () Unit!36232)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!517 (Regex!5353 List!21988) Unit!36232)

(assert (=> b!1924003 (= lt!737377 (longestMatchIsAcceptedByMatchOrIsEmpty!517 (regex!3928 (h!27310 rules!3198)) lt!737051))))

(declare-fun res!860405 () Bool)

(assert (=> b!1924003 (= res!860405 (isEmpty!13485 (_1!11732 (findLongestMatchInner!533 (regex!3928 (h!27310 rules!3198)) Nil!21906 (size!17091 Nil!21906) lt!737051 lt!737051 (size!17091 lt!737051)))))))

(assert (=> b!1924003 (=> res!860405 e!1229943)))

(assert (=> b!1924003 e!1229943))

(declare-fun lt!737380 () Unit!36232)

(assert (=> b!1924003 (= lt!737380 lt!737377)))

(declare-fun lt!737376 () Unit!36232)

(assert (=> b!1924003 (= lt!737376 (lemmaSemiInverse!885 (transformation!3928 (h!27310 rules!3198)) (seqFromList!2782 (_1!11732 lt!737378))))))

(declare-fun b!1924004 () Bool)

(assert (=> b!1924004 (= e!1229945 e!1229946)))

(declare-fun res!860400 () Bool)

(assert (=> b!1924004 (=> (not res!860400) (not e!1229946))))

(assert (=> b!1924004 (= res!860400 (matchR!2621 (regex!3928 (h!27310 rules!3198)) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737379))))))))

(assert (= (and d!586139 c!312709) b!1924002))

(assert (= (and d!586139 (not c!312709)) b!1924003))

(assert (= (and b!1924003 (not res!860405)) b!1923996))

(assert (= (and d!586139 (not res!860406)) b!1924004))

(assert (= (and b!1924004 res!860400) b!1923999))

(assert (= (and b!1923999 res!860401) b!1924000))

(assert (= (and b!1924000 res!860402) b!1923997))

(assert (= (and b!1923997 res!860403) b!1923998))

(assert (= (and b!1923998 res!860404) b!1924001))

(declare-fun m!2359229 () Bool)

(assert (=> b!1924000 m!2359229))

(declare-fun m!2359231 () Bool)

(assert (=> b!1924000 m!2359231))

(assert (=> b!1924000 m!2358227))

(assert (=> b!1923997 m!2359229))

(declare-fun m!2359233 () Bool)

(assert (=> d!586139 m!2359233))

(declare-fun m!2359235 () Bool)

(assert (=> d!586139 m!2359235))

(declare-fun m!2359237 () Bool)

(assert (=> d!586139 m!2359237))

(declare-fun m!2359239 () Bool)

(assert (=> d!586139 m!2359239))

(assert (=> b!1923998 m!2359229))

(declare-fun m!2359241 () Bool)

(assert (=> b!1923998 m!2359241))

(assert (=> b!1923998 m!2359241))

(declare-fun m!2359243 () Bool)

(assert (=> b!1923998 m!2359243))

(assert (=> b!1923999 m!2359229))

(declare-fun m!2359245 () Bool)

(assert (=> b!1923999 m!2359245))

(assert (=> b!1923999 m!2359245))

(declare-fun m!2359247 () Bool)

(assert (=> b!1923999 m!2359247))

(assert (=> b!1923999 m!2359247))

(declare-fun m!2359249 () Bool)

(assert (=> b!1923999 m!2359249))

(assert (=> b!1924004 m!2359229))

(assert (=> b!1924004 m!2359245))

(assert (=> b!1924004 m!2359245))

(assert (=> b!1924004 m!2359247))

(assert (=> b!1924004 m!2359247))

(declare-fun m!2359251 () Bool)

(assert (=> b!1924004 m!2359251))

(declare-fun m!2359253 () Bool)

(assert (=> b!1923996 m!2359253))

(assert (=> b!1923996 m!2358227))

(assert (=> b!1923996 m!2359253))

(assert (=> b!1923996 m!2358227))

(declare-fun m!2359255 () Bool)

(assert (=> b!1923996 m!2359255))

(declare-fun m!2359257 () Bool)

(assert (=> b!1923996 m!2359257))

(declare-fun m!2359259 () Bool)

(assert (=> b!1924003 m!2359259))

(declare-fun m!2359261 () Bool)

(assert (=> b!1924003 m!2359261))

(declare-fun m!2359263 () Bool)

(assert (=> b!1924003 m!2359263))

(assert (=> b!1924003 m!2359253))

(assert (=> b!1924003 m!2359263))

(declare-fun m!2359265 () Bool)

(assert (=> b!1924003 m!2359265))

(assert (=> b!1924003 m!2359253))

(assert (=> b!1924003 m!2358227))

(assert (=> b!1924003 m!2359255))

(assert (=> b!1924003 m!2358227))

(assert (=> b!1924003 m!2359263))

(declare-fun m!2359267 () Bool)

(assert (=> b!1924003 m!2359267))

(assert (=> b!1924003 m!2359263))

(declare-fun m!2359269 () Bool)

(assert (=> b!1924003 m!2359269))

(assert (=> b!1924001 m!2359229))

(declare-fun m!2359271 () Bool)

(assert (=> b!1924001 m!2359271))

(assert (=> bm!118185 d!586139))

(declare-fun bs!414470 () Bool)

(declare-fun d!586141 () Bool)

(assert (= bs!414470 (and d!586141 d!585847)))

(declare-fun lambda!75099 () Int)

(assert (=> bs!414470 (= (and (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (= lambda!75099 lambda!75074))))

(assert (=> d!586141 true))

(assert (=> d!586141 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) (dynLambda!10589 order!13719 lambda!75099))))

(assert (=> d!586141 true))

(assert (=> d!586141 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354)))) (dynLambda!10589 order!13719 lambda!75099))))

(declare-fun Forall!998 (Int) Bool)

(assert (=> d!586141 (= (semiInverseModEq!1561 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354)))) (Forall!998 lambda!75099))))

(declare-fun bs!414471 () Bool)

(assert (= bs!414471 d!586141))

(declare-fun m!2359273 () Bool)

(assert (=> bs!414471 m!2359273))

(assert (=> d!585963 d!586141))

(declare-fun d!586143 () Bool)

(declare-fun dynLambda!10598 (Int BalanceConc!14436 BalanceConc!14436) Bool)

(assert (=> d!586143 (dynLambda!10598 lambda!75077 lt!737049 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))

(declare-fun lt!737383 () Unit!36232)

(declare-fun choose!11943 (Int BalanceConc!14436 BalanceConc!14436) Unit!36232)

(assert (=> d!586143 (= lt!737383 (choose!11943 lambda!75077 lt!737049 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))))))

(declare-fun Forall2!622 (Int) Bool)

(assert (=> d!586143 (Forall2!622 lambda!75077)))

(assert (=> d!586143 (= (Forall2of!197 lambda!75077 lt!737049 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))) lt!737383)))

(declare-fun b_lambda!63647 () Bool)

(assert (=> (not b_lambda!63647) (not d!586143)))

(declare-fun bs!414472 () Bool)

(assert (= bs!414472 d!586143))

(assert (=> bs!414472 m!2358023))

(declare-fun m!2359275 () Bool)

(assert (=> bs!414472 m!2359275))

(assert (=> bs!414472 m!2358023))

(declare-fun m!2359277 () Bool)

(assert (=> bs!414472 m!2359277))

(declare-fun m!2359279 () Bool)

(assert (=> bs!414472 m!2359279))

(assert (=> d!585869 d!586143))

(assert (=> d!585869 d!585937))

(declare-fun d!586145 () Bool)

(assert (=> d!586145 (= (list!8853 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))) (list!8856 (c!312512 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))))

(declare-fun bs!414473 () Bool)

(assert (= bs!414473 d!586145))

(declare-fun m!2359281 () Bool)

(assert (=> bs!414473 m!2359281))

(assert (=> d!585869 d!586145))

(declare-fun d!586147 () Bool)

(assert (=> d!586147 (= (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) (list!8856 (c!312512 (charsOf!2468 (h!27309 (t!179045 tokens!598))))))))

(declare-fun bs!414474 () Bool)

(assert (= bs!414474 d!586147))

(declare-fun m!2359283 () Bool)

(assert (=> bs!414474 m!2359283))

(assert (=> b!1923290 d!586147))

(declare-fun d!586149 () Bool)

(declare-fun lt!737384 () BalanceConc!14436)

(assert (=> d!586149 (= (list!8853 lt!737384) (originalCharacters!4735 (h!27309 (t!179045 tokens!598))))))

(assert (=> d!586149 (= lt!737384 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (value!123539 (h!27309 (t!179045 tokens!598)))))))

(assert (=> d!586149 (= (charsOf!2468 (h!27309 (t!179045 tokens!598))) lt!737384)))

(declare-fun b_lambda!63649 () Bool)

(assert (=> (not b_lambda!63649) (not d!586149)))

(declare-fun t!179172 () Bool)

(declare-fun tb!117603 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) t!179172) tb!117603))

(declare-fun b!1924010 () Bool)

(declare-fun e!1229947 () Bool)

(declare-fun tp!549864 () Bool)

(assert (=> b!1924010 (= e!1229947 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (value!123539 (h!27309 (t!179045 tokens!598)))))) tp!549864))))

(declare-fun result!142142 () Bool)

(assert (=> tb!117603 (= result!142142 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (value!123539 (h!27309 (t!179045 tokens!598))))) e!1229947))))

(assert (= tb!117603 b!1924010))

(declare-fun m!2359285 () Bool)

(assert (=> b!1924010 m!2359285))

(declare-fun m!2359287 () Bool)

(assert (=> tb!117603 m!2359287))

(assert (=> d!586149 t!179172))

(declare-fun b_and!150605 () Bool)

(assert (= b_and!150581 (and (=> t!179172 result!142142) b_and!150605)))

(declare-fun tb!117605 () Bool)

(declare-fun t!179174 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) t!179174) tb!117605))

(declare-fun result!142144 () Bool)

(assert (= result!142144 result!142142))

(assert (=> d!586149 t!179174))

(declare-fun b_and!150607 () Bool)

(assert (= b_and!150585 (and (=> t!179174 result!142144) b_and!150607)))

(declare-fun t!179176 () Bool)

(declare-fun tb!117607 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) t!179176) tb!117607))

(declare-fun result!142146 () Bool)

(assert (= result!142146 result!142142))

(assert (=> d!586149 t!179176))

(declare-fun b_and!150609 () Bool)

(assert (= b_and!150583 (and (=> t!179176 result!142146) b_and!150609)))

(declare-fun t!179178 () Bool)

(declare-fun tb!117609 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) t!179178) tb!117609))

(declare-fun result!142148 () Bool)

(assert (= result!142148 result!142142))

(assert (=> d!586149 t!179178))

(declare-fun b_and!150611 () Bool)

(assert (= b_and!150593 (and (=> t!179178 result!142148) b_and!150611)))

(declare-fun t!179180 () Bool)

(declare-fun tb!117611 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) t!179180) tb!117611))

(declare-fun result!142150 () Bool)

(assert (= result!142150 result!142142))

(assert (=> d!586149 t!179180))

(declare-fun b_and!150613 () Bool)

(assert (= b_and!150589 (and (=> t!179180 result!142150) b_and!150613)))

(declare-fun m!2359289 () Bool)

(assert (=> d!586149 m!2359289))

(declare-fun m!2359291 () Bool)

(assert (=> d!586149 m!2359291))

(assert (=> b!1923290 d!586149))

(assert (=> b!1923782 d!586001))

(declare-fun b!1924011 () Bool)

(declare-fun e!1229951 () Bool)

(declare-fun e!1229949 () Bool)

(assert (=> b!1924011 (= e!1229951 e!1229949)))

(declare-fun res!860407 () Bool)

(assert (=> b!1924011 (=> res!860407 e!1229949)))

(declare-fun call!118241 () Bool)

(assert (=> b!1924011 (= res!860407 call!118241)))

(declare-fun b!1924012 () Bool)

(declare-fun e!1229954 () Bool)

(assert (=> b!1924012 (= e!1229954 (nullable!1605 (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051))))))

(declare-fun bm!118236 () Bool)

(assert (=> bm!118236 (= call!118241 (isEmpty!13485 (tail!2972 lt!737051)))))

(declare-fun b!1924013 () Bool)

(declare-fun res!860414 () Bool)

(declare-fun e!1229952 () Bool)

(assert (=> b!1924013 (=> res!860414 e!1229952)))

(declare-fun e!1229948 () Bool)

(assert (=> b!1924013 (= res!860414 e!1229948)))

(declare-fun res!860413 () Bool)

(assert (=> b!1924013 (=> (not res!860413) (not e!1229948))))

(declare-fun lt!737385 () Bool)

(assert (=> b!1924013 (= res!860413 lt!737385)))

(declare-fun b!1924014 () Bool)

(declare-fun res!860408 () Bool)

(assert (=> b!1924014 (=> (not res!860408) (not e!1229948))))

(assert (=> b!1924014 (= res!860408 (isEmpty!13485 (tail!2972 (tail!2972 lt!737051))))))

(declare-fun b!1924015 () Bool)

(assert (=> b!1924015 (= e!1229952 e!1229951)))

(declare-fun res!860412 () Bool)

(assert (=> b!1924015 (=> (not res!860412) (not e!1229951))))

(assert (=> b!1924015 (= res!860412 (not lt!737385))))

(declare-fun b!1924016 () Bool)

(assert (=> b!1924016 (= e!1229954 (matchR!2621 (derivativeStep!1364 (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051)) (head!4484 (tail!2972 lt!737051))) (tail!2972 (tail!2972 lt!737051))))))

(declare-fun b!1924017 () Bool)

(assert (=> b!1924017 (= e!1229949 (not (= (head!4484 (tail!2972 lt!737051)) (c!312513 (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051))))))))

(declare-fun d!586151 () Bool)

(declare-fun e!1229950 () Bool)

(assert (=> d!586151 e!1229950))

(declare-fun c!312710 () Bool)

(assert (=> d!586151 (= c!312710 ((_ is EmptyExpr!5353) (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051))))))

(assert (=> d!586151 (= lt!737385 e!1229954)))

(declare-fun c!312711 () Bool)

(assert (=> d!586151 (= c!312711 (isEmpty!13485 (tail!2972 lt!737051)))))

(assert (=> d!586151 (validRegex!2131 (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051)))))

(assert (=> d!586151 (= (matchR!2621 (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051)) (tail!2972 lt!737051)) lt!737385)))

(declare-fun b!1924018 () Bool)

(declare-fun res!860409 () Bool)

(assert (=> b!1924018 (=> res!860409 e!1229949)))

(assert (=> b!1924018 (= res!860409 (not (isEmpty!13485 (tail!2972 (tail!2972 lt!737051)))))))

(declare-fun b!1924019 () Bool)

(declare-fun res!860411 () Bool)

(assert (=> b!1924019 (=> (not res!860411) (not e!1229948))))

(assert (=> b!1924019 (= res!860411 (not call!118241))))

(declare-fun b!1924020 () Bool)

(declare-fun e!1229953 () Bool)

(assert (=> b!1924020 (= e!1229950 e!1229953)))

(declare-fun c!312712 () Bool)

(assert (=> b!1924020 (= c!312712 ((_ is EmptyLang!5353) (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051))))))

(declare-fun b!1924021 () Bool)

(assert (=> b!1924021 (= e!1229948 (= (head!4484 (tail!2972 lt!737051)) (c!312513 (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051)))))))

(declare-fun b!1924022 () Bool)

(declare-fun res!860410 () Bool)

(assert (=> b!1924022 (=> res!860410 e!1229952)))

(assert (=> b!1924022 (= res!860410 (not ((_ is ElementMatch!5353) (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051)))))))

(assert (=> b!1924022 (= e!1229953 e!1229952)))

(declare-fun b!1924023 () Bool)

(assert (=> b!1924023 (= e!1229953 (not lt!737385))))

(declare-fun b!1924024 () Bool)

(assert (=> b!1924024 (= e!1229950 (= lt!737385 call!118241))))

(assert (= (and d!586151 c!312711) b!1924012))

(assert (= (and d!586151 (not c!312711)) b!1924016))

(assert (= (and d!586151 c!312710) b!1924024))

(assert (= (and d!586151 (not c!312710)) b!1924020))

(assert (= (and b!1924020 c!312712) b!1924023))

(assert (= (and b!1924020 (not c!312712)) b!1924022))

(assert (= (and b!1924022 (not res!860410)) b!1924013))

(assert (= (and b!1924013 res!860413) b!1924019))

(assert (= (and b!1924019 res!860411) b!1924014))

(assert (= (and b!1924014 res!860408) b!1924021))

(assert (= (and b!1924013 (not res!860414)) b!1924015))

(assert (= (and b!1924015 res!860412) b!1924011))

(assert (= (and b!1924011 (not res!860407)) b!1924018))

(assert (= (and b!1924018 (not res!860409)) b!1924017))

(assert (= (or b!1924024 b!1924011 b!1924019) bm!118236))

(assert (=> b!1924016 m!2358575))

(declare-fun m!2359293 () Bool)

(assert (=> b!1924016 m!2359293))

(assert (=> b!1924016 m!2358573))

(assert (=> b!1924016 m!2359293))

(declare-fun m!2359295 () Bool)

(assert (=> b!1924016 m!2359295))

(assert (=> b!1924016 m!2358575))

(declare-fun m!2359297 () Bool)

(assert (=> b!1924016 m!2359297))

(assert (=> b!1924016 m!2359295))

(assert (=> b!1924016 m!2359297))

(declare-fun m!2359299 () Bool)

(assert (=> b!1924016 m!2359299))

(assert (=> b!1924012 m!2358573))

(declare-fun m!2359301 () Bool)

(assert (=> b!1924012 m!2359301))

(assert (=> b!1924017 m!2358575))

(assert (=> b!1924017 m!2359293))

(assert (=> b!1924018 m!2358575))

(assert (=> b!1924018 m!2359297))

(assert (=> b!1924018 m!2359297))

(declare-fun m!2359303 () Bool)

(assert (=> b!1924018 m!2359303))

(assert (=> d!586151 m!2358575))

(assert (=> d!586151 m!2358581))

(assert (=> d!586151 m!2358573))

(declare-fun m!2359305 () Bool)

(assert (=> d!586151 m!2359305))

(assert (=> b!1924014 m!2358575))

(assert (=> b!1924014 m!2359297))

(assert (=> b!1924014 m!2359297))

(assert (=> b!1924014 m!2359303))

(assert (=> b!1924021 m!2358575))

(assert (=> b!1924021 m!2359293))

(assert (=> bm!118236 m!2358575))

(assert (=> bm!118236 m!2358581))

(assert (=> b!1923507 d!586151))

(declare-fun bm!118245 () Bool)

(declare-fun call!118250 () Regex!5353)

(declare-fun call!118251 () Regex!5353)

(assert (=> bm!118245 (= call!118250 call!118251)))

(declare-fun bm!118246 () Bool)

(declare-fun c!312727 () Bool)

(declare-fun c!312724 () Bool)

(declare-fun c!312723 () Bool)

(assert (=> bm!118246 (= call!118251 (derivativeStep!1364 (ite c!312724 (regOne!11219 (regex!3928 lt!737053)) (ite c!312723 (reg!5682 (regex!3928 lt!737053)) (ite c!312727 (regTwo!11218 (regex!3928 lt!737053)) (regOne!11218 (regex!3928 lt!737053))))) (head!4484 lt!737051)))))

(declare-fun b!1924045 () Bool)

(assert (=> b!1924045 (= c!312727 (nullable!1605 (regOne!11218 (regex!3928 lt!737053))))))

(declare-fun e!1229965 () Regex!5353)

(declare-fun e!1229968 () Regex!5353)

(assert (=> b!1924045 (= e!1229965 e!1229968)))

(declare-fun b!1924046 () Bool)

(declare-fun e!1229966 () Regex!5353)

(assert (=> b!1924046 (= e!1229966 e!1229965)))

(assert (=> b!1924046 (= c!312723 ((_ is Star!5353) (regex!3928 lt!737053)))))

(declare-fun b!1924047 () Bool)

(declare-fun e!1229969 () Regex!5353)

(declare-fun e!1229967 () Regex!5353)

(assert (=> b!1924047 (= e!1229969 e!1229967)))

(declare-fun c!312726 () Bool)

(assert (=> b!1924047 (= c!312726 ((_ is ElementMatch!5353) (regex!3928 lt!737053)))))

(declare-fun b!1924048 () Bool)

(assert (=> b!1924048 (= e!1229969 EmptyLang!5353)))

(declare-fun b!1924049 () Bool)

(assert (=> b!1924049 (= c!312724 ((_ is Union!5353) (regex!3928 lt!737053)))))

(assert (=> b!1924049 (= e!1229967 e!1229966)))

(declare-fun bm!118247 () Bool)

(declare-fun call!118252 () Regex!5353)

(assert (=> bm!118247 (= call!118252 call!118250)))

(declare-fun d!586153 () Bool)

(declare-fun lt!737388 () Regex!5353)

(assert (=> d!586153 (validRegex!2131 lt!737388)))

(assert (=> d!586153 (= lt!737388 e!1229969)))

(declare-fun c!312725 () Bool)

(assert (=> d!586153 (= c!312725 (or ((_ is EmptyExpr!5353) (regex!3928 lt!737053)) ((_ is EmptyLang!5353) (regex!3928 lt!737053))))))

(assert (=> d!586153 (validRegex!2131 (regex!3928 lt!737053))))

(assert (=> d!586153 (= (derivativeStep!1364 (regex!3928 lt!737053) (head!4484 lt!737051)) lt!737388)))

(declare-fun b!1924050 () Bool)

(assert (=> b!1924050 (= e!1229965 (Concat!9418 call!118250 (regex!3928 lt!737053)))))

(declare-fun b!1924051 () Bool)

(assert (=> b!1924051 (= e!1229967 (ite (= (head!4484 lt!737051) (c!312513 (regex!3928 lt!737053))) EmptyExpr!5353 EmptyLang!5353))))

(declare-fun call!118253 () Regex!5353)

(declare-fun b!1924052 () Bool)

(assert (=> b!1924052 (= e!1229968 (Union!5353 (Concat!9418 call!118253 (regTwo!11218 (regex!3928 lt!737053))) call!118252))))

(declare-fun b!1924053 () Bool)

(assert (=> b!1924053 (= e!1229968 (Union!5353 (Concat!9418 call!118252 (regTwo!11218 (regex!3928 lt!737053))) EmptyLang!5353))))

(declare-fun bm!118248 () Bool)

(assert (=> bm!118248 (= call!118253 (derivativeStep!1364 (ite c!312724 (regTwo!11219 (regex!3928 lt!737053)) (regOne!11218 (regex!3928 lt!737053))) (head!4484 lt!737051)))))

(declare-fun b!1924054 () Bool)

(assert (=> b!1924054 (= e!1229966 (Union!5353 call!118251 call!118253))))

(assert (= (and d!586153 c!312725) b!1924048))

(assert (= (and d!586153 (not c!312725)) b!1924047))

(assert (= (and b!1924047 c!312726) b!1924051))

(assert (= (and b!1924047 (not c!312726)) b!1924049))

(assert (= (and b!1924049 c!312724) b!1924054))

(assert (= (and b!1924049 (not c!312724)) b!1924046))

(assert (= (and b!1924046 c!312723) b!1924050))

(assert (= (and b!1924046 (not c!312723)) b!1924045))

(assert (= (and b!1924045 c!312727) b!1924052))

(assert (= (and b!1924045 (not c!312727)) b!1924053))

(assert (= (or b!1924052 b!1924053) bm!118247))

(assert (= (or b!1924050 bm!118247) bm!118245))

(assert (= (or b!1924054 bm!118245) bm!118246))

(assert (= (or b!1924054 b!1924052) bm!118248))

(assert (=> bm!118246 m!2358569))

(declare-fun m!2359307 () Bool)

(assert (=> bm!118246 m!2359307))

(declare-fun m!2359309 () Bool)

(assert (=> b!1924045 m!2359309))

(declare-fun m!2359311 () Bool)

(assert (=> d!586153 m!2359311))

(assert (=> d!586153 m!2358585))

(assert (=> bm!118248 m!2358569))

(declare-fun m!2359313 () Bool)

(assert (=> bm!118248 m!2359313))

(assert (=> b!1923507 d!586153))

(declare-fun d!586155 () Bool)

(assert (=> d!586155 (= (head!4484 lt!737051) (h!27307 lt!737051))))

(assert (=> b!1923507 d!586155))

(declare-fun d!586157 () Bool)

(assert (=> d!586157 (= (tail!2972 lt!737051) (t!179043 lt!737051))))

(assert (=> b!1923507 d!586157))

(declare-fun d!586159 () Bool)

(assert (=> d!586159 true))

(declare-fun lt!737391 () Bool)

(assert (=> d!586159 (= lt!737391 (rulesValidInductive!1336 thiss!23328 rules!3198))))

(declare-fun lambda!75102 () Int)

(declare-fun forall!4629 (List!21991 Int) Bool)

(assert (=> d!586159 (= lt!737391 (forall!4629 rules!3198 lambda!75102))))

(assert (=> d!586159 (= (rulesValid!1448 thiss!23328 rules!3198) lt!737391)))

(declare-fun bs!414475 () Bool)

(assert (= bs!414475 d!586159))

(assert (=> bs!414475 m!2358221))

(declare-fun m!2359315 () Bool)

(assert (=> bs!414475 m!2359315))

(assert (=> d!586063 d!586159))

(declare-fun b!1924058 () Bool)

(declare-fun e!1229970 () List!21988)

(assert (=> b!1924058 (= e!1229970 (Cons!21906 (h!27307 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))) (++!5869 (t!179043 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))) (_2!11728 (get!6893 lt!737108)))))))

(declare-fun b!1924060 () Bool)

(declare-fun e!1229971 () Bool)

(declare-fun lt!737392 () List!21988)

(assert (=> b!1924060 (= e!1229971 (or (not (= (_2!11728 (get!6893 lt!737108)) Nil!21906)) (= lt!737392 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108)))))))))

(declare-fun b!1924059 () Bool)

(declare-fun res!860415 () Bool)

(assert (=> b!1924059 (=> (not res!860415) (not e!1229971))))

(assert (=> b!1924059 (= res!860415 (= (size!17091 lt!737392) (+ (size!17091 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))) (size!17091 (_2!11728 (get!6893 lt!737108))))))))

(declare-fun b!1924057 () Bool)

(assert (=> b!1924057 (= e!1229970 (_2!11728 (get!6893 lt!737108)))))

(declare-fun d!586161 () Bool)

(assert (=> d!586161 e!1229971))

(declare-fun res!860416 () Bool)

(assert (=> d!586161 (=> (not res!860416) (not e!1229971))))

(assert (=> d!586161 (= res!860416 (= (content!3163 lt!737392) ((_ map or) (content!3163 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))) (content!3163 (_2!11728 (get!6893 lt!737108))))))))

(assert (=> d!586161 (= lt!737392 e!1229970)))

(declare-fun c!312728 () Bool)

(assert (=> d!586161 (= c!312728 ((_ is Nil!21906) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))))))

(assert (=> d!586161 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108)))) (_2!11728 (get!6893 lt!737108))) lt!737392)))

(assert (= (and d!586161 c!312728) b!1924057))

(assert (= (and d!586161 (not c!312728)) b!1924058))

(assert (= (and d!586161 res!860416) b!1924059))

(assert (= (and b!1924059 res!860415) b!1924060))

(declare-fun m!2359317 () Bool)

(assert (=> b!1924058 m!2359317))

(declare-fun m!2359319 () Bool)

(assert (=> b!1924059 m!2359319))

(assert (=> b!1924059 m!2358195))

(declare-fun m!2359321 () Bool)

(assert (=> b!1924059 m!2359321))

(assert (=> b!1924059 m!2358205))

(declare-fun m!2359323 () Bool)

(assert (=> d!586161 m!2359323))

(assert (=> d!586161 m!2358195))

(declare-fun m!2359325 () Bool)

(assert (=> d!586161 m!2359325))

(declare-fun m!2359327 () Bool)

(assert (=> d!586161 m!2359327))

(assert (=> b!1923196 d!586161))

(declare-fun d!586163 () Bool)

(assert (=> d!586163 (= (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108)))) (list!8856 (c!312512 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))))))

(declare-fun bs!414476 () Bool)

(assert (= bs!414476 d!586163))

(declare-fun m!2359329 () Bool)

(assert (=> bs!414476 m!2359329))

(assert (=> b!1923196 d!586163))

(declare-fun d!586165 () Bool)

(declare-fun lt!737393 () BalanceConc!14436)

(assert (=> d!586165 (= (list!8853 lt!737393) (originalCharacters!4735 (_1!11728 (get!6893 lt!737108))))))

(assert (=> d!586165 (= lt!737393 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))) (value!123539 (_1!11728 (get!6893 lt!737108)))))))

(assert (=> d!586165 (= (charsOf!2468 (_1!11728 (get!6893 lt!737108))) lt!737393)))

(declare-fun b_lambda!63651 () Bool)

(assert (=> (not b_lambda!63651) (not d!586165)))

(declare-fun tb!117613 () Bool)

(declare-fun t!179182 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179182) tb!117613))

(declare-fun b!1924061 () Bool)

(declare-fun e!1229972 () Bool)

(declare-fun tp!549865 () Bool)

(assert (=> b!1924061 (= e!1229972 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))) (value!123539 (_1!11728 (get!6893 lt!737108)))))) tp!549865))))

(declare-fun result!142152 () Bool)

(assert (=> tb!117613 (= result!142152 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))) (value!123539 (_1!11728 (get!6893 lt!737108))))) e!1229972))))

(assert (= tb!117613 b!1924061))

(declare-fun m!2359331 () Bool)

(assert (=> b!1924061 m!2359331))

(declare-fun m!2359333 () Bool)

(assert (=> tb!117613 m!2359333))

(assert (=> d!586165 t!179182))

(declare-fun b_and!150615 () Bool)

(assert (= b_and!150605 (and (=> t!179182 result!142152) b_and!150615)))

(declare-fun tb!117615 () Bool)

(declare-fun t!179184 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179184) tb!117615))

(declare-fun result!142154 () Bool)

(assert (= result!142154 result!142152))

(assert (=> d!586165 t!179184))

(declare-fun b_and!150617 () Bool)

(assert (= b_and!150609 (and (=> t!179184 result!142154) b_and!150617)))

(declare-fun tb!117617 () Bool)

(declare-fun t!179186 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179186) tb!117617))

(declare-fun result!142156 () Bool)

(assert (= result!142156 result!142152))

(assert (=> d!586165 t!179186))

(declare-fun b_and!150619 () Bool)

(assert (= b_and!150611 (and (=> t!179186 result!142156) b_and!150619)))

(declare-fun t!179188 () Bool)

(declare-fun tb!117619 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179188) tb!117619))

(declare-fun result!142158 () Bool)

(assert (= result!142158 result!142152))

(assert (=> d!586165 t!179188))

(declare-fun b_and!150621 () Bool)

(assert (= b_and!150607 (and (=> t!179188 result!142158) b_and!150621)))

(declare-fun tb!117621 () Bool)

(declare-fun t!179190 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179190) tb!117621))

(declare-fun result!142160 () Bool)

(assert (= result!142160 result!142152))

(assert (=> d!586165 t!179190))

(declare-fun b_and!150623 () Bool)

(assert (= b_and!150613 (and (=> t!179190 result!142160) b_and!150623)))

(declare-fun m!2359335 () Bool)

(assert (=> d!586165 m!2359335))

(declare-fun m!2359337 () Bool)

(assert (=> d!586165 m!2359337))

(assert (=> b!1923196 d!586165))

(declare-fun d!586167 () Bool)

(assert (=> d!586167 (= (get!6893 lt!737108) (v!26610 lt!737108))))

(assert (=> b!1923196 d!586167))

(declare-fun bs!414477 () Bool)

(declare-fun d!586169 () Bool)

(assert (= bs!414477 (and d!586169 d!585869)))

(declare-fun lambda!75105 () Int)

(assert (=> bs!414477 (= lambda!75105 lambda!75077)))

(assert (=> d!586169 true))

(assert (=> d!586169 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (dynLambda!10594 order!13723 lambda!75105))))

(assert (=> d!586169 (= (equivClasses!1488 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (Forall2!622 lambda!75105))))

(declare-fun bs!414478 () Bool)

(assert (= bs!414478 d!586169))

(declare-fun m!2359339 () Bool)

(assert (=> bs!414478 m!2359339))

(assert (=> b!1923742 d!586169))

(declare-fun d!586171 () Bool)

(assert (=> d!586171 (= (isEmpty!13485 lt!737051) ((_ is Nil!21906) lt!737051))))

(assert (=> bm!118198 d!586171))

(declare-fun d!586173 () Bool)

(declare-fun lt!737428 () Int)

(assert (=> d!586173 (>= lt!737428 0)))

(declare-fun e!1229979 () Int)

(assert (=> d!586173 (= lt!737428 e!1229979)))

(declare-fun c!312731 () Bool)

(assert (=> d!586173 (= c!312731 ((_ is Nil!21906) (originalCharacters!4735 separatorToken!354)))))

(assert (=> d!586173 (= (size!17091 (originalCharacters!4735 separatorToken!354)) lt!737428)))

(declare-fun b!1924074 () Bool)

(assert (=> b!1924074 (= e!1229979 0)))

(declare-fun b!1924075 () Bool)

(assert (=> b!1924075 (= e!1229979 (+ 1 (size!17091 (t!179043 (originalCharacters!4735 separatorToken!354)))))))

(assert (= (and d!586173 c!312731) b!1924074))

(assert (= (and d!586173 (not c!312731)) b!1924075))

(declare-fun m!2359341 () Bool)

(assert (=> b!1924075 m!2359341))

(assert (=> b!1923790 d!586173))

(declare-fun d!586175 () Bool)

(assert (=> d!586175 (= (isEmpty!13483 lt!737108) (not ((_ is Some!4531) lt!737108)))))

(assert (=> d!585865 d!586175))

(declare-fun b!1924089 () Bool)

(declare-fun res!860435 () Bool)

(declare-fun e!1229990 () Bool)

(assert (=> b!1924089 (=> (not res!860435) (not e!1229990))))

(assert (=> b!1924089 (= res!860435 (= (head!4484 (++!5869 lt!737051 lt!737059)) (head!4484 (++!5869 lt!737051 lt!737059))))))

(declare-fun b!1924090 () Bool)

(assert (=> b!1924090 (= e!1229990 (isPrefix!1937 (tail!2972 (++!5869 lt!737051 lt!737059)) (tail!2972 (++!5869 lt!737051 lt!737059))))))

(declare-fun b!1924088 () Bool)

(declare-fun e!1229989 () Bool)

(assert (=> b!1924088 (= e!1229989 e!1229990)))

(declare-fun res!860436 () Bool)

(assert (=> b!1924088 (=> (not res!860436) (not e!1229990))))

(assert (=> b!1924088 (= res!860436 (not ((_ is Nil!21906) (++!5869 lt!737051 lt!737059))))))

(declare-fun b!1924091 () Bool)

(declare-fun e!1229988 () Bool)

(assert (=> b!1924091 (= e!1229988 (>= (size!17091 (++!5869 lt!737051 lt!737059)) (size!17091 (++!5869 lt!737051 lt!737059))))))

(declare-fun d!586177 () Bool)

(assert (=> d!586177 e!1229988))

(declare-fun res!860433 () Bool)

(assert (=> d!586177 (=> res!860433 e!1229988)))

(declare-fun lt!737448 () Bool)

(assert (=> d!586177 (= res!860433 (not lt!737448))))

(assert (=> d!586177 (= lt!737448 e!1229989)))

(declare-fun res!860434 () Bool)

(assert (=> d!586177 (=> res!860434 e!1229989)))

(assert (=> d!586177 (= res!860434 ((_ is Nil!21906) (++!5869 lt!737051 lt!737059)))))

(assert (=> d!586177 (= (isPrefix!1937 (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059)) lt!737448)))

(assert (= (and d!586177 (not res!860434)) b!1924088))

(assert (= (and b!1924088 res!860436) b!1924089))

(assert (= (and b!1924089 res!860435) b!1924090))

(assert (= (and d!586177 (not res!860433)) b!1924091))

(assert (=> b!1924089 m!2358019))

(declare-fun m!2359397 () Bool)

(assert (=> b!1924089 m!2359397))

(assert (=> b!1924089 m!2358019))

(assert (=> b!1924089 m!2359397))

(assert (=> b!1924090 m!2358019))

(declare-fun m!2359399 () Bool)

(assert (=> b!1924090 m!2359399))

(assert (=> b!1924090 m!2358019))

(assert (=> b!1924090 m!2359399))

(assert (=> b!1924090 m!2359399))

(assert (=> b!1924090 m!2359399))

(declare-fun m!2359401 () Bool)

(assert (=> b!1924090 m!2359401))

(assert (=> b!1924091 m!2358019))

(assert (=> b!1924091 m!2358207))

(assert (=> b!1924091 m!2358019))

(assert (=> b!1924091 m!2358207))

(assert (=> d!585865 d!586177))

(declare-fun d!586181 () Bool)

(assert (=> d!586181 (isPrefix!1937 (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059))))

(declare-fun lt!737451 () Unit!36232)

(declare-fun choose!11946 (List!21988 List!21988) Unit!36232)

(assert (=> d!586181 (= lt!737451 (choose!11946 (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059)))))

(assert (=> d!586181 (= (lemmaIsPrefixRefl!1255 (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059)) lt!737451)))

(declare-fun bs!414479 () Bool)

(assert (= bs!414479 d!586181))

(assert (=> bs!414479 m!2358019))

(assert (=> bs!414479 m!2358019))

(assert (=> bs!414479 m!2358217))

(assert (=> bs!414479 m!2358019))

(assert (=> bs!414479 m!2358019))

(declare-fun m!2359405 () Bool)

(assert (=> bs!414479 m!2359405))

(assert (=> d!585865 d!586181))

(declare-fun bs!414481 () Bool)

(declare-fun d!586187 () Bool)

(assert (= bs!414481 (and d!586187 d!586159)))

(declare-fun lambda!75108 () Int)

(assert (=> bs!414481 (= lambda!75108 lambda!75102)))

(assert (=> d!586187 true))

(declare-fun lt!737454 () Bool)

(assert (=> d!586187 (= lt!737454 (forall!4629 rules!3198 lambda!75108))))

(declare-fun e!1230010 () Bool)

(assert (=> d!586187 (= lt!737454 e!1230010)))

(declare-fun res!860451 () Bool)

(assert (=> d!586187 (=> res!860451 e!1230010)))

(assert (=> d!586187 (= res!860451 (not ((_ is Cons!21909) rules!3198)))))

(assert (=> d!586187 (= (rulesValidInductive!1336 thiss!23328 rules!3198) lt!737454)))

(declare-fun b!1924114 () Bool)

(declare-fun e!1230009 () Bool)

(assert (=> b!1924114 (= e!1230010 e!1230009)))

(declare-fun res!860452 () Bool)

(assert (=> b!1924114 (=> (not res!860452) (not e!1230009))))

(assert (=> b!1924114 (= res!860452 (ruleValid!1193 thiss!23328 (h!27310 rules!3198)))))

(declare-fun b!1924115 () Bool)

(assert (=> b!1924115 (= e!1230009 (rulesValidInductive!1336 thiss!23328 (t!179046 rules!3198)))))

(assert (= (and d!586187 (not res!860451)) b!1924114))

(assert (= (and b!1924114 res!860452) b!1924115))

(declare-fun m!2359407 () Bool)

(assert (=> d!586187 m!2359407))

(assert (=> b!1924114 m!2359239))

(declare-fun m!2359409 () Bool)

(assert (=> b!1924115 m!2359409))

(assert (=> d!585865 d!586187))

(declare-fun d!586193 () Bool)

(declare-fun res!860453 () Bool)

(declare-fun e!1230011 () Bool)

(assert (=> d!586193 (=> res!860453 e!1230011)))

(assert (=> d!586193 (= res!860453 (not ((_ is Cons!21909) (t!179046 rules!3198))))))

(assert (=> d!586193 (= (sepAndNonSepRulesDisjointChars!1026 rules!3198 (t!179046 rules!3198)) e!1230011)))

(declare-fun b!1924116 () Bool)

(declare-fun e!1230012 () Bool)

(assert (=> b!1924116 (= e!1230011 e!1230012)))

(declare-fun res!860454 () Bool)

(assert (=> b!1924116 (=> (not res!860454) (not e!1230012))))

(assert (=> b!1924116 (= res!860454 (ruleDisjointCharsFromAllFromOtherType!445 (h!27310 (t!179046 rules!3198)) rules!3198))))

(declare-fun b!1924117 () Bool)

(assert (=> b!1924117 (= e!1230012 (sepAndNonSepRulesDisjointChars!1026 rules!3198 (t!179046 (t!179046 rules!3198))))))

(assert (= (and d!586193 (not res!860453)) b!1924116))

(assert (= (and b!1924116 res!860454) b!1924117))

(declare-fun m!2359411 () Bool)

(assert (=> b!1924116 m!2359411))

(declare-fun m!2359413 () Bool)

(assert (=> b!1924117 m!2359413))

(assert (=> b!1923756 d!586193))

(assert (=> b!1923778 d!586001))

(assert (=> d!586011 d!586007))

(assert (=> d!586011 d!586003))

(declare-fun d!586195 () Bool)

(assert (=> d!586195 (not (contains!3951 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))) lt!737055))))

(assert (=> d!586195 true))

(declare-fun _$73!136 () Unit!36232)

(assert (=> d!586195 (= (choose!11939 thiss!23328 rules!3198 rules!3198 (rule!6131 (h!27309 tokens!598)) (rule!6131 separatorToken!354) lt!737055) _$73!136)))

(declare-fun bs!414482 () Bool)

(assert (= bs!414482 d!586195))

(assert (=> bs!414482 m!2357983))

(assert (=> bs!414482 m!2357983))

(assert (=> bs!414482 m!2357985))

(assert (=> d!586011 d!586195))

(assert (=> d!586011 d!586063))

(declare-fun d!586197 () Bool)

(declare-fun lt!737455 () Bool)

(assert (=> d!586197 (= lt!737455 (select (content!3163 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) lt!737055))))

(declare-fun e!1230021 () Bool)

(assert (=> d!586197 (= lt!737455 e!1230021)))

(declare-fun res!860460 () Bool)

(assert (=> d!586197 (=> (not res!860460) (not e!1230021))))

(assert (=> d!586197 (= res!860460 ((_ is Cons!21906) (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))))))))

(assert (=> d!586197 (= (contains!3951 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))) lt!737055) lt!737455)))

(declare-fun b!1924127 () Bool)

(declare-fun e!1230020 () Bool)

(assert (=> b!1924127 (= e!1230021 e!1230020)))

(declare-fun res!860461 () Bool)

(assert (=> b!1924127 (=> res!860461 e!1230020)))

(assert (=> b!1924127 (= res!860461 (= (h!27307 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) lt!737055))))

(declare-fun b!1924128 () Bool)

(assert (=> b!1924128 (= e!1230020 (contains!3951 (t!179043 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) lt!737055))))

(assert (= (and d!586197 res!860460) b!1924127))

(assert (= (and b!1924127 (not res!860461)) b!1924128))

(declare-fun m!2359417 () Bool)

(assert (=> d!586197 m!2359417))

(declare-fun m!2359421 () Bool)

(assert (=> d!586197 m!2359421))

(declare-fun m!2359423 () Bool)

(assert (=> b!1924128 m!2359423))

(assert (=> b!1923617 d!586197))

(declare-fun d!586199 () Bool)

(declare-fun res!860462 () Bool)

(declare-fun e!1230022 () Bool)

(assert (=> d!586199 (=> res!860462 e!1230022)))

(assert (=> d!586199 (= res!860462 ((_ is Nil!21908) tokens!598))))

(assert (=> d!586199 (= (forall!4628 tokens!598 lambda!75095) e!1230022)))

(declare-fun b!1924129 () Bool)

(declare-fun e!1230023 () Bool)

(assert (=> b!1924129 (= e!1230022 e!1230023)))

(declare-fun res!860463 () Bool)

(assert (=> b!1924129 (=> (not res!860463) (not e!1230023))))

(assert (=> b!1924129 (= res!860463 (dynLambda!10587 lambda!75095 (h!27309 tokens!598)))))

(declare-fun b!1924130 () Bool)

(assert (=> b!1924130 (= e!1230023 (forall!4628 (t!179045 tokens!598) lambda!75095))))

(assert (= (and d!586199 (not res!860462)) b!1924129))

(assert (= (and b!1924129 res!860463) b!1924130))

(declare-fun b_lambda!63653 () Bool)

(assert (=> (not b_lambda!63653) (not b!1924129)))

(declare-fun m!2359427 () Bool)

(assert (=> b!1924129 m!2359427))

(declare-fun m!2359429 () Bool)

(assert (=> b!1924130 m!2359429))

(assert (=> d!586067 d!586199))

(assert (=> d!586067 d!586061))

(declare-fun d!586203 () Bool)

(assert (=> d!586203 (dynLambda!10587 lambda!75089 (h!27309 (t!179045 tokens!598)))))

(declare-fun lt!737458 () Unit!36232)

(declare-fun choose!11947 (List!21990 Int Token!7408) Unit!36232)

(assert (=> d!586203 (= lt!737458 (choose!11947 (t!179045 tokens!598) lambda!75089 (h!27309 (t!179045 tokens!598))))))

(declare-fun e!1230030 () Bool)

(assert (=> d!586203 e!1230030))

(declare-fun res!860466 () Bool)

(assert (=> d!586203 (=> (not res!860466) (not e!1230030))))

(assert (=> d!586203 (= res!860466 (forall!4628 (t!179045 tokens!598) lambda!75089))))

(assert (=> d!586203 (= (forallContained!708 (t!179045 tokens!598) lambda!75089 (h!27309 (t!179045 tokens!598))) lt!737458)))

(declare-fun b!1924141 () Bool)

(declare-fun contains!3955 (List!21990 Token!7408) Bool)

(assert (=> b!1924141 (= e!1230030 (contains!3955 (t!179045 tokens!598) (h!27309 (t!179045 tokens!598))))))

(assert (= (and d!586203 res!860466) b!1924141))

(declare-fun b_lambda!63655 () Bool)

(assert (=> (not b_lambda!63655) (not d!586203)))

(declare-fun m!2359437 () Bool)

(assert (=> d!586203 m!2359437))

(declare-fun m!2359439 () Bool)

(assert (=> d!586203 m!2359439))

(declare-fun m!2359441 () Bool)

(assert (=> d!586203 m!2359441))

(declare-fun m!2359443 () Bool)

(assert (=> b!1924141 m!2359443))

(assert (=> b!1923285 d!586203))

(assert (=> b!1923285 d!586149))

(declare-fun bs!414483 () Bool)

(declare-fun b!1924143 () Bool)

(assert (= bs!414483 (and b!1924143 b!1923040)))

(declare-fun lambda!75111 () Int)

(assert (=> bs!414483 (not (= lambda!75111 lambda!75071))))

(declare-fun bs!414484 () Bool)

(assert (= bs!414484 (and b!1924143 b!1923285)))

(assert (=> bs!414484 (= lambda!75111 lambda!75089)))

(declare-fun bs!414485 () Bool)

(assert (= bs!414485 (and b!1924143 d!586067)))

(assert (=> bs!414485 (= lambda!75111 lambda!75095)))

(declare-fun b!1924154 () Bool)

(declare-fun e!1230039 () Bool)

(assert (=> b!1924154 (= e!1230039 true)))

(declare-fun b!1924153 () Bool)

(declare-fun e!1230038 () Bool)

(assert (=> b!1924153 (= e!1230038 e!1230039)))

(declare-fun b!1924152 () Bool)

(declare-fun e!1230037 () Bool)

(assert (=> b!1924152 (= e!1230037 e!1230038)))

(assert (=> b!1924143 e!1230037))

(assert (= b!1924153 b!1924154))

(assert (= b!1924152 b!1924153))

(assert (= (and b!1924143 ((_ is Cons!21909) rules!3198)) b!1924152))

(assert (=> b!1924154 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10595 order!13735 lambda!75111))))

(assert (=> b!1924154 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10595 order!13735 lambda!75111))))

(assert (=> b!1924143 true))

(declare-fun b!1924142 () Bool)

(declare-fun e!1230034 () List!21988)

(declare-fun call!118267 () List!21988)

(assert (=> b!1924142 (= e!1230034 call!118267)))

(declare-fun e!1230031 () List!21988)

(declare-fun e!1230033 () List!21988)

(assert (=> b!1924143 (= e!1230031 e!1230033)))

(declare-fun lt!737461 () Unit!36232)

(assert (=> b!1924143 (= lt!737461 (forallContained!708 (t!179045 (t!179045 tokens!598)) lambda!75111 (h!27309 (t!179045 (t!179045 tokens!598)))))))

(declare-fun lt!737459 () List!21988)

(assert (=> b!1924143 (= lt!737459 (printWithSeparatorTokenWhenNeededList!580 thiss!23328 rules!3198 (t!179045 (t!179045 (t!179045 tokens!598))) separatorToken!354))))

(declare-fun lt!737462 () Option!4532)

(assert (=> b!1924143 (= lt!737462 (maxPrefix!1979 thiss!23328 rules!3198 (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 (t!179045 tokens!598))))) lt!737459)))))

(declare-fun c!312747 () Bool)

(assert (=> b!1924143 (= c!312747 (and ((_ is Some!4531) lt!737462) (= (_1!11728 (v!26610 lt!737462)) (h!27309 (t!179045 (t!179045 tokens!598))))))))

(declare-fun bm!118262 () Bool)

(declare-fun call!118271 () List!21988)

(assert (=> bm!118262 (= call!118271 call!118267)))

(declare-fun c!312744 () Bool)

(declare-fun call!118269 () BalanceConc!14436)

(declare-fun bm!118263 () Bool)

(assert (=> bm!118263 (= call!118269 (charsOf!2468 (ite c!312747 (h!27309 (t!179045 (t!179045 tokens!598))) (ite c!312744 separatorToken!354 (h!27309 (t!179045 (t!179045 tokens!598)))))))))

(declare-fun b!1924144 () Bool)

(declare-fun e!1230032 () List!21988)

(declare-fun call!118268 () List!21988)

(assert (=> b!1924144 (= e!1230032 (++!5869 call!118268 lt!737459))))

(declare-fun b!1924145 () Bool)

(assert (=> b!1924145 (= e!1230033 call!118268)))

(declare-fun d!586207 () Bool)

(declare-fun c!312746 () Bool)

(assert (=> d!586207 (= c!312746 ((_ is Cons!21908) (t!179045 (t!179045 tokens!598))))))

(assert (=> d!586207 (= (printWithSeparatorTokenWhenNeededList!580 thiss!23328 rules!3198 (t!179045 (t!179045 tokens!598)) separatorToken!354) e!1230031)))

(declare-fun bm!118264 () Bool)

(declare-fun call!118270 () BalanceConc!14436)

(assert (=> bm!118264 (= call!118270 call!118269)))

(declare-fun b!1924146 () Bool)

(assert (=> b!1924146 (= e!1230032 Nil!21906)))

(assert (=> b!1924146 (= (print!1511 thiss!23328 (singletonSeq!1912 (h!27309 (t!179045 (t!179045 tokens!598))))) (printTailRec!1017 thiss!23328 (singletonSeq!1912 (h!27309 (t!179045 (t!179045 tokens!598)))) 0 (BalanceConc!14437 Empty!7310)))))

(declare-fun lt!737463 () Unit!36232)

(declare-fun Unit!36244 () Unit!36232)

(assert (=> b!1924146 (= lt!737463 Unit!36244)))

(declare-fun lt!737460 () Unit!36232)

(assert (=> b!1924146 (= lt!737460 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!739 thiss!23328 rules!3198 call!118271 lt!737459))))

(assert (=> b!1924146 false))

(declare-fun lt!737464 () Unit!36232)

(declare-fun Unit!36245 () Unit!36232)

(assert (=> b!1924146 (= lt!737464 Unit!36245)))

(declare-fun b!1924147 () Bool)

(assert (=> b!1924147 (= c!312744 (and ((_ is Some!4531) lt!737462) (not (= (_1!11728 (v!26610 lt!737462)) (h!27309 (t!179045 (t!179045 tokens!598)))))))))

(assert (=> b!1924147 (= e!1230033 e!1230032)))

(declare-fun b!1924148 () Bool)

(assert (=> b!1924148 (= e!1230034 (list!8853 (charsOf!2468 (h!27309 (t!179045 (t!179045 tokens!598))))))))

(declare-fun bm!118265 () Bool)

(assert (=> bm!118265 (= call!118267 (list!8853 (ite c!312747 call!118269 call!118270)))))

(declare-fun b!1924149 () Bool)

(assert (=> b!1924149 (= e!1230031 Nil!21906)))

(declare-fun bm!118266 () Bool)

(declare-fun c!312745 () Bool)

(assert (=> bm!118266 (= c!312745 c!312747)))

(assert (=> bm!118266 (= call!118268 (++!5869 e!1230034 (ite c!312747 lt!737459 call!118271)))))

(assert (= (and d!586207 c!312746) b!1924143))

(assert (= (and d!586207 (not c!312746)) b!1924149))

(assert (= (and b!1924143 c!312747) b!1924145))

(assert (= (and b!1924143 (not c!312747)) b!1924147))

(assert (= (and b!1924147 c!312744) b!1924144))

(assert (= (and b!1924147 (not c!312744)) b!1924146))

(assert (= (or b!1924144 b!1924146) bm!118264))

(assert (= (or b!1924144 b!1924146) bm!118262))

(assert (= (or b!1924145 bm!118264) bm!118263))

(assert (= (or b!1924145 bm!118262) bm!118265))

(assert (= (or b!1924145 b!1924144) bm!118266))

(assert (= (and bm!118266 c!312745) b!1924142))

(assert (= (and bm!118266 (not c!312745)) b!1924148))

(declare-fun m!2359447 () Bool)

(assert (=> b!1924146 m!2359447))

(assert (=> b!1924146 m!2359447))

(declare-fun m!2359449 () Bool)

(assert (=> b!1924146 m!2359449))

(assert (=> b!1924146 m!2359447))

(declare-fun m!2359451 () Bool)

(assert (=> b!1924146 m!2359451))

(declare-fun m!2359453 () Bool)

(assert (=> b!1924146 m!2359453))

(declare-fun m!2359455 () Bool)

(assert (=> b!1924148 m!2359455))

(assert (=> b!1924148 m!2359455))

(declare-fun m!2359457 () Bool)

(assert (=> b!1924148 m!2359457))

(declare-fun m!2359459 () Bool)

(assert (=> b!1924144 m!2359459))

(declare-fun m!2359461 () Bool)

(assert (=> bm!118265 m!2359461))

(assert (=> b!1924143 m!2359455))

(assert (=> b!1924143 m!2359457))

(declare-fun m!2359463 () Bool)

(assert (=> b!1924143 m!2359463))

(declare-fun m!2359465 () Bool)

(assert (=> b!1924143 m!2359465))

(declare-fun m!2359467 () Bool)

(assert (=> b!1924143 m!2359467))

(assert (=> b!1924143 m!2359457))

(assert (=> b!1924143 m!2359465))

(declare-fun m!2359469 () Bool)

(assert (=> b!1924143 m!2359469))

(assert (=> b!1924143 m!2359455))

(declare-fun m!2359471 () Bool)

(assert (=> bm!118263 m!2359471))

(declare-fun m!2359473 () Bool)

(assert (=> bm!118266 m!2359473))

(assert (=> b!1923285 d!586207))

(assert (=> b!1923285 d!586147))

(declare-fun b!1924158 () Bool)

(declare-fun e!1230040 () List!21988)

(assert (=> b!1924158 (= e!1230040 (Cons!21906 (h!27307 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598))))) (++!5869 (t!179043 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598))))) lt!737156)))))

(declare-fun e!1230041 () Bool)

(declare-fun b!1924160 () Bool)

(declare-fun lt!737465 () List!21988)

(assert (=> b!1924160 (= e!1230041 (or (not (= lt!737156 Nil!21906)) (= lt!737465 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))))))))

(declare-fun b!1924159 () Bool)

(declare-fun res!860469 () Bool)

(assert (=> b!1924159 (=> (not res!860469) (not e!1230041))))

(assert (=> b!1924159 (= res!860469 (= (size!17091 lt!737465) (+ (size!17091 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598))))) (size!17091 lt!737156))))))

(declare-fun b!1924157 () Bool)

(assert (=> b!1924157 (= e!1230040 lt!737156)))

(declare-fun d!586211 () Bool)

(assert (=> d!586211 e!1230041))

(declare-fun res!860470 () Bool)

(assert (=> d!586211 (=> (not res!860470) (not e!1230041))))

(assert (=> d!586211 (= res!860470 (= (content!3163 lt!737465) ((_ map or) (content!3163 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598))))) (content!3163 lt!737156))))))

(assert (=> d!586211 (= lt!737465 e!1230040)))

(declare-fun c!312748 () Bool)

(assert (=> d!586211 (= c!312748 ((_ is Nil!21906) (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598))))))))

(assert (=> d!586211 (= (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156) lt!737465)))

(assert (= (and d!586211 c!312748) b!1924157))

(assert (= (and d!586211 (not c!312748)) b!1924158))

(assert (= (and d!586211 res!860470) b!1924159))

(assert (= (and b!1924159 res!860469) b!1924160))

(declare-fun m!2359475 () Bool)

(assert (=> b!1924158 m!2359475))

(declare-fun m!2359477 () Bool)

(assert (=> b!1924159 m!2359477))

(assert (=> b!1924159 m!2358321))

(declare-fun m!2359479 () Bool)

(assert (=> b!1924159 m!2359479))

(declare-fun m!2359481 () Bool)

(assert (=> b!1924159 m!2359481))

(declare-fun m!2359483 () Bool)

(assert (=> d!586211 m!2359483))

(assert (=> d!586211 m!2358321))

(declare-fun m!2359485 () Bool)

(assert (=> d!586211 m!2359485))

(declare-fun m!2359487 () Bool)

(assert (=> d!586211 m!2359487))

(assert (=> b!1923285 d!586211))

(declare-fun call!118272 () Option!4532)

(declare-fun bm!118267 () Bool)

(assert (=> bm!118267 (= call!118272 (maxPrefixOneRule!1219 thiss!23328 (h!27310 rules!3198) (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156)))))

(declare-fun d!586213 () Bool)

(declare-fun e!1230044 () Bool)

(assert (=> d!586213 e!1230044))

(declare-fun res!860474 () Bool)

(assert (=> d!586213 (=> res!860474 e!1230044)))

(declare-fun lt!737468 () Option!4532)

(assert (=> d!586213 (= res!860474 (isEmpty!13483 lt!737468))))

(declare-fun e!1230046 () Option!4532)

(assert (=> d!586213 (= lt!737468 e!1230046)))

(declare-fun c!312751 () Bool)

(assert (=> d!586213 (= c!312751 (and ((_ is Cons!21909) rules!3198) ((_ is Nil!21909) (t!179046 rules!3198))))))

(declare-fun lt!737470 () Unit!36232)

(declare-fun lt!737471 () Unit!36232)

(assert (=> d!586213 (= lt!737470 lt!737471)))

(assert (=> d!586213 (isPrefix!1937 (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156) (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156))))

(assert (=> d!586213 (= lt!737471 (lemmaIsPrefixRefl!1255 (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156) (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156)))))

(assert (=> d!586213 (rulesValidInductive!1336 thiss!23328 rules!3198)))

(assert (=> d!586213 (= (maxPrefix!1979 thiss!23328 rules!3198 (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156)) lt!737468)))

(declare-fun b!1924165 () Bool)

(declare-fun lt!737469 () Option!4532)

(declare-fun lt!737472 () Option!4532)

(assert (=> b!1924165 (= e!1230046 (ite (and ((_ is None!4531) lt!737469) ((_ is None!4531) lt!737472)) None!4531 (ite ((_ is None!4531) lt!737472) lt!737469 (ite ((_ is None!4531) lt!737469) lt!737472 (ite (>= (size!17088 (_1!11728 (v!26610 lt!737469))) (size!17088 (_1!11728 (v!26610 lt!737472)))) lt!737469 lt!737472)))))))

(assert (=> b!1924165 (= lt!737469 call!118272)))

(assert (=> b!1924165 (= lt!737472 (maxPrefix!1979 thiss!23328 (t!179046 rules!3198) (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156)))))

(declare-fun b!1924166 () Bool)

(declare-fun res!860475 () Bool)

(declare-fun e!1230045 () Bool)

(assert (=> b!1924166 (=> (not res!860475) (not e!1230045))))

(assert (=> b!1924166 (= res!860475 (= (value!123539 (_1!11728 (get!6893 lt!737468))) (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737468)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737468)))))))))

(declare-fun b!1924167 () Bool)

(assert (=> b!1924167 (= e!1230045 (contains!3953 rules!3198 (rule!6131 (_1!11728 (get!6893 lt!737468)))))))

(declare-fun b!1924168 () Bool)

(assert (=> b!1924168 (= e!1230046 call!118272)))

(declare-fun b!1924169 () Bool)

(assert (=> b!1924169 (= e!1230044 e!1230045)))

(declare-fun res!860473 () Bool)

(assert (=> b!1924169 (=> (not res!860473) (not e!1230045))))

(assert (=> b!1924169 (= res!860473 (isDefined!3826 lt!737468))))

(declare-fun b!1924170 () Bool)

(declare-fun res!860471 () Bool)

(assert (=> b!1924170 (=> (not res!860471) (not e!1230045))))

(assert (=> b!1924170 (= res!860471 (matchR!2621 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737468)))) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737468))))))))

(declare-fun b!1924171 () Bool)

(declare-fun res!860477 () Bool)

(assert (=> b!1924171 (=> (not res!860477) (not e!1230045))))

(assert (=> b!1924171 (= res!860477 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737468)))) (_2!11728 (get!6893 lt!737468))) (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156)))))

(declare-fun b!1924172 () Bool)

(declare-fun res!860476 () Bool)

(assert (=> b!1924172 (=> (not res!860476) (not e!1230045))))

(assert (=> b!1924172 (= res!860476 (= (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737468)))) (originalCharacters!4735 (_1!11728 (get!6893 lt!737468)))))))

(declare-fun b!1924173 () Bool)

(declare-fun res!860472 () Bool)

(assert (=> b!1924173 (=> (not res!860472) (not e!1230045))))

(assert (=> b!1924173 (= res!860472 (< (size!17091 (_2!11728 (get!6893 lt!737468))) (size!17091 (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 tokens!598)))) lt!737156))))))

(assert (= (and d!586213 c!312751) b!1924168))

(assert (= (and d!586213 (not c!312751)) b!1924165))

(assert (= (or b!1924168 b!1924165) bm!118267))

(assert (= (and d!586213 (not res!860474)) b!1924169))

(assert (= (and b!1924169 res!860473) b!1924172))

(assert (= (and b!1924172 res!860476) b!1924173))

(assert (= (and b!1924173 res!860472) b!1924171))

(assert (= (and b!1924171 res!860477) b!1924166))

(assert (= (and b!1924166 res!860475) b!1924170))

(assert (= (and b!1924170 res!860471) b!1924167))

(declare-fun m!2359495 () Bool)

(assert (=> b!1924169 m!2359495))

(declare-fun m!2359497 () Bool)

(assert (=> b!1924170 m!2359497))

(declare-fun m!2359499 () Bool)

(assert (=> b!1924170 m!2359499))

(assert (=> b!1924170 m!2359499))

(declare-fun m!2359501 () Bool)

(assert (=> b!1924170 m!2359501))

(assert (=> b!1924170 m!2359501))

(declare-fun m!2359503 () Bool)

(assert (=> b!1924170 m!2359503))

(assert (=> b!1924172 m!2359497))

(assert (=> b!1924172 m!2359499))

(assert (=> b!1924172 m!2359499))

(assert (=> b!1924172 m!2359501))

(assert (=> b!1924165 m!2358329))

(declare-fun m!2359505 () Bool)

(assert (=> b!1924165 m!2359505))

(assert (=> bm!118267 m!2358329))

(declare-fun m!2359507 () Bool)

(assert (=> bm!118267 m!2359507))

(assert (=> b!1924167 m!2359497))

(declare-fun m!2359509 () Bool)

(assert (=> b!1924167 m!2359509))

(assert (=> b!1924173 m!2359497))

(declare-fun m!2359511 () Bool)

(assert (=> b!1924173 m!2359511))

(assert (=> b!1924173 m!2358329))

(declare-fun m!2359513 () Bool)

(assert (=> b!1924173 m!2359513))

(assert (=> b!1924171 m!2359497))

(assert (=> b!1924171 m!2359499))

(assert (=> b!1924171 m!2359499))

(assert (=> b!1924171 m!2359501))

(assert (=> b!1924171 m!2359501))

(declare-fun m!2359515 () Bool)

(assert (=> b!1924171 m!2359515))

(assert (=> b!1924166 m!2359497))

(declare-fun m!2359517 () Bool)

(assert (=> b!1924166 m!2359517))

(assert (=> b!1924166 m!2359517))

(declare-fun m!2359519 () Bool)

(assert (=> b!1924166 m!2359519))

(declare-fun m!2359521 () Bool)

(assert (=> d!586213 m!2359521))

(assert (=> d!586213 m!2358329))

(assert (=> d!586213 m!2358329))

(declare-fun m!2359523 () Bool)

(assert (=> d!586213 m!2359523))

(assert (=> d!586213 m!2358329))

(assert (=> d!586213 m!2358329))

(declare-fun m!2359525 () Bool)

(assert (=> d!586213 m!2359525))

(assert (=> d!586213 m!2358221))

(assert (=> b!1923285 d!586213))

(declare-fun e!1230050 () List!21988)

(declare-fun b!1924181 () Bool)

(assert (=> b!1924181 (= e!1230050 (Cons!21906 (h!27307 (ite c!312650 call!118224 call!118226)) (++!5869 (t!179043 (ite c!312650 call!118224 call!118226)) (ite c!312650 call!118226 call!118224))))))

(declare-fun b!1924183 () Bool)

(declare-fun lt!737476 () List!21988)

(declare-fun e!1230051 () Bool)

(assert (=> b!1924183 (= e!1230051 (or (not (= (ite c!312650 call!118226 call!118224) Nil!21906)) (= lt!737476 (ite c!312650 call!118224 call!118226))))))

(declare-fun b!1924182 () Bool)

(declare-fun res!860478 () Bool)

(assert (=> b!1924182 (=> (not res!860478) (not e!1230051))))

(assert (=> b!1924182 (= res!860478 (= (size!17091 lt!737476) (+ (size!17091 (ite c!312650 call!118224 call!118226)) (size!17091 (ite c!312650 call!118226 call!118224)))))))

(declare-fun b!1924180 () Bool)

(assert (=> b!1924180 (= e!1230050 (ite c!312650 call!118226 call!118224))))

(declare-fun d!586221 () Bool)

(assert (=> d!586221 e!1230051))

(declare-fun res!860479 () Bool)

(assert (=> d!586221 (=> (not res!860479) (not e!1230051))))

(assert (=> d!586221 (= res!860479 (= (content!3163 lt!737476) ((_ map or) (content!3163 (ite c!312650 call!118224 call!118226)) (content!3163 (ite c!312650 call!118226 call!118224)))))))

(assert (=> d!586221 (= lt!737476 e!1230050)))

(declare-fun c!312755 () Bool)

(assert (=> d!586221 (= c!312755 ((_ is Nil!21906) (ite c!312650 call!118224 call!118226)))))

(assert (=> d!586221 (= (++!5869 (ite c!312650 call!118224 call!118226) (ite c!312650 call!118226 call!118224)) lt!737476)))

(assert (= (and d!586221 c!312755) b!1924180))

(assert (= (and d!586221 (not c!312755)) b!1924181))

(assert (= (and d!586221 res!860479) b!1924182))

(assert (= (and b!1924182 res!860478) b!1924183))

(declare-fun m!2359527 () Bool)

(assert (=> b!1924181 m!2359527))

(declare-fun m!2359529 () Bool)

(assert (=> b!1924182 m!2359529))

(declare-fun m!2359531 () Bool)

(assert (=> b!1924182 m!2359531))

(declare-fun m!2359533 () Bool)

(assert (=> b!1924182 m!2359533))

(declare-fun m!2359535 () Bool)

(assert (=> d!586221 m!2359535))

(declare-fun m!2359537 () Bool)

(assert (=> d!586221 m!2359537))

(declare-fun m!2359539 () Bool)

(assert (=> d!586221 m!2359539))

(assert (=> bm!118222 d!586221))

(declare-fun bs!414488 () Bool)

(declare-fun d!586223 () Bool)

(assert (= bs!414488 (and d!586223 b!1923040)))

(declare-fun lambda!75113 () Int)

(assert (=> bs!414488 (not (= lambda!75113 lambda!75071))))

(declare-fun bs!414489 () Bool)

(assert (= bs!414489 (and d!586223 b!1923285)))

(assert (=> bs!414489 (= lambda!75113 lambda!75089)))

(declare-fun bs!414490 () Bool)

(assert (= bs!414490 (and d!586223 d!586067)))

(assert (=> bs!414490 (= lambda!75113 lambda!75095)))

(declare-fun bs!414491 () Bool)

(assert (= bs!414491 (and d!586223 b!1924143)))

(assert (=> bs!414491 (= lambda!75113 lambda!75111)))

(declare-fun b!1924188 () Bool)

(declare-fun e!1230056 () Bool)

(assert (=> b!1924188 (= e!1230056 true)))

(declare-fun b!1924187 () Bool)

(declare-fun e!1230055 () Bool)

(assert (=> b!1924187 (= e!1230055 e!1230056)))

(declare-fun b!1924186 () Bool)

(declare-fun e!1230054 () Bool)

(assert (=> b!1924186 (= e!1230054 e!1230055)))

(assert (=> d!586223 e!1230054))

(assert (= b!1924187 b!1924188))

(assert (= b!1924186 b!1924187))

(assert (= (and d!586223 ((_ is Cons!21909) rules!3198)) b!1924186))

(assert (=> b!1924188 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10595 order!13735 lambda!75113))))

(assert (=> b!1924188 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10595 order!13735 lambda!75113))))

(assert (=> d!586223 true))

(declare-fun lt!737477 () Bool)

(assert (=> d!586223 (= lt!737477 (forall!4628 (t!179045 tokens!598) lambda!75113))))

(declare-fun e!1230052 () Bool)

(assert (=> d!586223 (= lt!737477 e!1230052)))

(declare-fun res!860481 () Bool)

(assert (=> d!586223 (=> res!860481 e!1230052)))

(assert (=> d!586223 (= res!860481 (not ((_ is Cons!21908) (t!179045 tokens!598))))))

(assert (=> d!586223 (not (isEmpty!13478 rules!3198))))

(assert (=> d!586223 (= (rulesProduceEachTokenIndividuallyList!1272 thiss!23328 rules!3198 (t!179045 tokens!598)) lt!737477)))

(declare-fun b!1924184 () Bool)

(declare-fun e!1230053 () Bool)

(assert (=> b!1924184 (= e!1230052 e!1230053)))

(declare-fun res!860480 () Bool)

(assert (=> b!1924184 (=> (not res!860480) (not e!1230053))))

(assert (=> b!1924184 (= res!860480 (rulesProduceIndividualToken!1713 thiss!23328 rules!3198 (h!27309 (t!179045 tokens!598))))))

(declare-fun b!1924185 () Bool)

(assert (=> b!1924185 (= e!1230053 (rulesProduceEachTokenIndividuallyList!1272 thiss!23328 rules!3198 (t!179045 (t!179045 tokens!598))))))

(assert (= (and d!586223 (not res!860481)) b!1924184))

(assert (= (and b!1924184 res!860480) b!1924185))

(declare-fun m!2359541 () Bool)

(assert (=> d!586223 m!2359541))

(assert (=> d!586223 m!2357967))

(declare-fun m!2359543 () Bool)

(assert (=> b!1924184 m!2359543))

(declare-fun m!2359545 () Bool)

(assert (=> b!1924185 m!2359545))

(assert (=> b!1923796 d!586223))

(declare-fun d!586225 () Bool)

(declare-fun lt!737483 () Bool)

(declare-fun content!3165 (List!21991) (InoxSet Rule!7656))

(assert (=> d!586225 (= lt!737483 (select (content!3165 rules!3198) (rule!6131 (_1!11728 (get!6893 lt!737108)))))))

(declare-fun e!1230066 () Bool)

(assert (=> d!586225 (= lt!737483 e!1230066)))

(declare-fun res!860492 () Bool)

(assert (=> d!586225 (=> (not res!860492) (not e!1230066))))

(assert (=> d!586225 (= res!860492 ((_ is Cons!21909) rules!3198))))

(assert (=> d!586225 (= (contains!3953 rules!3198 (rule!6131 (_1!11728 (get!6893 lt!737108)))) lt!737483)))

(declare-fun b!1924198 () Bool)

(declare-fun e!1230065 () Bool)

(assert (=> b!1924198 (= e!1230066 e!1230065)))

(declare-fun res!860491 () Bool)

(assert (=> b!1924198 (=> res!860491 e!1230065)))

(assert (=> b!1924198 (= res!860491 (= (h!27310 rules!3198) (rule!6131 (_1!11728 (get!6893 lt!737108)))))))

(declare-fun b!1924199 () Bool)

(assert (=> b!1924199 (= e!1230065 (contains!3953 (t!179046 rules!3198) (rule!6131 (_1!11728 (get!6893 lt!737108)))))))

(assert (= (and d!586225 res!860492) b!1924198))

(assert (= (and b!1924198 (not res!860491)) b!1924199))

(declare-fun m!2359559 () Bool)

(assert (=> d!586225 m!2359559))

(declare-fun m!2359561 () Bool)

(assert (=> d!586225 m!2359561))

(declare-fun m!2359563 () Bool)

(assert (=> b!1924199 m!2359563))

(assert (=> b!1923192 d!586225))

(assert (=> b!1923192 d!586167))

(declare-fun d!586235 () Bool)

(declare-fun charsToBigInt!0 (List!21989 Int) Int)

(assert (=> d!586235 (= (inv!15 (value!123539 separatorToken!354)) (= (charsToBigInt!0 (text!28897 (value!123539 separatorToken!354)) 0) (value!123534 (value!123539 separatorToken!354))))))

(declare-fun bs!414492 () Bool)

(assert (= bs!414492 d!586235))

(declare-fun m!2359565 () Bool)

(assert (=> bs!414492 m!2359565))

(assert (=> b!1923442 d!586235))

(declare-fun d!586237 () Bool)

(declare-fun c!312756 () Bool)

(assert (=> d!586237 (= c!312756 ((_ is Nil!21906) lt!737115))))

(declare-fun e!1230073 () (InoxSet C!10852))

(assert (=> d!586237 (= (content!3163 lt!737115) e!1230073)))

(declare-fun b!1924208 () Bool)

(assert (=> b!1924208 (= e!1230073 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924209 () Bool)

(assert (=> b!1924209 (= e!1230073 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 lt!737115) true) (content!3163 (t!179043 lt!737115))))))

(assert (= (and d!586237 c!312756) b!1924208))

(assert (= (and d!586237 (not c!312756)) b!1924209))

(declare-fun m!2359567 () Bool)

(assert (=> b!1924209 m!2359567))

(declare-fun m!2359569 () Bool)

(assert (=> b!1924209 m!2359569))

(assert (=> d!585867 d!586237))

(declare-fun d!586239 () Bool)

(declare-fun c!312757 () Bool)

(assert (=> d!586239 (= c!312757 ((_ is Nil!21906) lt!737051))))

(declare-fun e!1230074 () (InoxSet C!10852))

(assert (=> d!586239 (= (content!3163 lt!737051) e!1230074)))

(declare-fun b!1924210 () Bool)

(assert (=> b!1924210 (= e!1230074 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924211 () Bool)

(assert (=> b!1924211 (= e!1230074 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 lt!737051) true) (content!3163 (t!179043 lt!737051))))))

(assert (= (and d!586239 c!312757) b!1924210))

(assert (= (and d!586239 (not c!312757)) b!1924211))

(declare-fun m!2359571 () Bool)

(assert (=> b!1924211 m!2359571))

(declare-fun m!2359573 () Bool)

(assert (=> b!1924211 m!2359573))

(assert (=> d!585867 d!586239))

(assert (=> d!585867 d!586125))

(declare-fun d!586241 () Bool)

(assert (=> d!586241 (= (isDefined!3825 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))) (not (isEmpty!13484 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))))))

(declare-fun bs!414493 () Bool)

(assert (= bs!414493 d!586241))

(assert (=> bs!414493 m!2358041))

(declare-fun m!2359575 () Bool)

(assert (=> bs!414493 m!2359575))

(assert (=> d!585919 d!586241))

(assert (=> d!585919 d!585913))

(declare-fun d!586243 () Bool)

(declare-fun e!1230075 () Bool)

(assert (=> d!586243 e!1230075))

(declare-fun res!860501 () Bool)

(assert (=> d!586243 (=> (not res!860501) (not e!1230075))))

(assert (=> d!586243 (= res!860501 (isDefined!3825 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))))))

(assert (=> d!586243 true))

(declare-fun _$52!1215 () Unit!36232)

(assert (=> d!586243 (= (choose!11935 thiss!23328 rules!3198 lt!737051 (h!27309 tokens!598)) _$52!1215)))

(declare-fun b!1924212 () Bool)

(declare-fun res!860502 () Bool)

(assert (=> b!1924212 (=> (not res!860502) (not e!1230075))))

(assert (=> b!1924212 (= res!860502 (matchR!2621 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))) (list!8853 (charsOf!2468 (h!27309 tokens!598)))))))

(declare-fun b!1924213 () Bool)

(assert (=> b!1924213 (= e!1230075 (= (rule!6131 (h!27309 tokens!598)) (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))))))

(assert (= (and d!586243 res!860501) b!1924212))

(assert (= (and b!1924212 res!860502) b!1924213))

(assert (=> d!586243 m!2358041))

(assert (=> d!586243 m!2358041))

(assert (=> d!586243 m!2358479))

(assert (=> b!1924212 m!2358041))

(assert (=> b!1924212 m!2358487))

(assert (=> b!1924212 m!2358497))

(assert (=> b!1924212 m!2358037))

(assert (=> b!1924212 m!2358041))

(assert (=> b!1924212 m!2358489))

(assert (=> b!1924212 m!2358037))

(assert (=> b!1924212 m!2358487))

(assert (=> b!1924213 m!2358041))

(assert (=> b!1924213 m!2358041))

(assert (=> b!1924213 m!2358489))

(assert (=> d!585919 d!586243))

(assert (=> d!585919 d!586063))

(declare-fun d!586245 () Bool)

(declare-fun nullableFct!359 (Regex!5353) Bool)

(assert (=> d!586245 (= (nullable!1605 (regex!3928 lt!737042)) (nullableFct!359 (regex!3928 lt!737042)))))

(declare-fun bs!414494 () Bool)

(assert (= bs!414494 d!586245))

(declare-fun m!2359579 () Bool)

(assert (=> bs!414494 m!2359579))

(assert (=> b!1923758 d!586245))

(declare-fun d!586249 () Bool)

(declare-fun lt!737487 () Int)

(assert (=> d!586249 (>= lt!737487 0)))

(declare-fun e!1230079 () Int)

(assert (=> d!586249 (= lt!737487 e!1230079)))

(declare-fun c!312758 () Bool)

(assert (=> d!586249 (= c!312758 ((_ is Nil!21906) (_2!11728 (get!6893 lt!737164))))))

(assert (=> d!586249 (= (size!17091 (_2!11728 (get!6893 lt!737164))) lt!737487)))

(declare-fun b!1924218 () Bool)

(assert (=> b!1924218 (= e!1230079 0)))

(declare-fun b!1924219 () Bool)

(assert (=> b!1924219 (= e!1230079 (+ 1 (size!17091 (t!179043 (_2!11728 (get!6893 lt!737164))))))))

(assert (= (and d!586249 c!312758) b!1924218))

(assert (= (and d!586249 (not c!312758)) b!1924219))

(declare-fun m!2359581 () Bool)

(assert (=> b!1924219 m!2359581))

(assert (=> b!1923319 d!586249))

(declare-fun d!586251 () Bool)

(assert (=> d!586251 (= (get!6893 lt!737164) (v!26610 lt!737164))))

(assert (=> b!1923319 d!586251))

(assert (=> b!1923319 d!586115))

(declare-fun e!1230080 () List!21988)

(declare-fun b!1924221 () Bool)

(assert (=> b!1924221 (= e!1230080 (Cons!21906 (h!27307 (t!179043 lt!737051)) (++!5869 (t!179043 (t!179043 lt!737051)) (++!5869 lt!737043 lt!737059))))))

(declare-fun e!1230081 () Bool)

(declare-fun lt!737490 () List!21988)

(declare-fun b!1924223 () Bool)

(assert (=> b!1924223 (= e!1230081 (or (not (= (++!5869 lt!737043 lt!737059) Nil!21906)) (= lt!737490 (t!179043 lt!737051))))))

(declare-fun b!1924222 () Bool)

(declare-fun res!860507 () Bool)

(assert (=> b!1924222 (=> (not res!860507) (not e!1230081))))

(assert (=> b!1924222 (= res!860507 (= (size!17091 lt!737490) (+ (size!17091 (t!179043 lt!737051)) (size!17091 (++!5869 lt!737043 lt!737059)))))))

(declare-fun b!1924220 () Bool)

(assert (=> b!1924220 (= e!1230080 (++!5869 lt!737043 lt!737059))))

(declare-fun d!586253 () Bool)

(assert (=> d!586253 e!1230081))

(declare-fun res!860508 () Bool)

(assert (=> d!586253 (=> (not res!860508) (not e!1230081))))

(assert (=> d!586253 (= res!860508 (= (content!3163 lt!737490) ((_ map or) (content!3163 (t!179043 lt!737051)) (content!3163 (++!5869 lt!737043 lt!737059)))))))

(assert (=> d!586253 (= lt!737490 e!1230080)))

(declare-fun c!312759 () Bool)

(assert (=> d!586253 (= c!312759 ((_ is Nil!21906) (t!179043 lt!737051)))))

(assert (=> d!586253 (= (++!5869 (t!179043 lt!737051) (++!5869 lt!737043 lt!737059)) lt!737490)))

(assert (= (and d!586253 c!312759) b!1924220))

(assert (= (and d!586253 (not c!312759)) b!1924221))

(assert (= (and d!586253 res!860508) b!1924222))

(assert (= (and b!1924222 res!860507) b!1924223))

(assert (=> b!1924221 m!2357989))

(declare-fun m!2359583 () Bool)

(assert (=> b!1924221 m!2359583))

(declare-fun m!2359585 () Bool)

(assert (=> b!1924222 m!2359585))

(assert (=> b!1924222 m!2359207))

(assert (=> b!1924222 m!2357989))

(assert (=> b!1924222 m!2358657))

(declare-fun m!2359589 () Bool)

(assert (=> d!586253 m!2359589))

(assert (=> d!586253 m!2359573))

(assert (=> d!586253 m!2357989))

(assert (=> d!586253 m!2358661))

(assert (=> b!1923577 d!586253))

(declare-fun b!1924237 () Bool)

(declare-fun e!1230090 () List!21988)

(declare-fun e!1230091 () List!21988)

(assert (=> b!1924237 (= e!1230090 e!1230091)))

(declare-fun c!312765 () Bool)

(assert (=> b!1924237 (= c!312765 ((_ is Leaf!10737) (c!312512 lt!737039)))))

(declare-fun d!586257 () Bool)

(declare-fun c!312764 () Bool)

(assert (=> d!586257 (= c!312764 ((_ is Empty!7310) (c!312512 lt!737039)))))

(assert (=> d!586257 (= (list!8856 (c!312512 lt!737039)) e!1230090)))

(declare-fun b!1924236 () Bool)

(assert (=> b!1924236 (= e!1230090 Nil!21906)))

(declare-fun b!1924239 () Bool)

(assert (=> b!1924239 (= e!1230091 (++!5869 (list!8856 (left!17424 (c!312512 lt!737039))) (list!8856 (right!17754 (c!312512 lt!737039)))))))

(declare-fun b!1924238 () Bool)

(declare-fun list!8859 (IArray!14625) List!21988)

(assert (=> b!1924238 (= e!1230091 (list!8859 (xs!10204 (c!312512 lt!737039))))))

(assert (= (and d!586257 c!312764) b!1924236))

(assert (= (and d!586257 (not c!312764)) b!1924237))

(assert (= (and b!1924237 c!312765) b!1924238))

(assert (= (and b!1924237 (not c!312765)) b!1924239))

(declare-fun m!2359591 () Bool)

(assert (=> b!1924239 m!2359591))

(declare-fun m!2359593 () Bool)

(assert (=> b!1924239 m!2359593))

(assert (=> b!1924239 m!2359591))

(assert (=> b!1924239 m!2359593))

(declare-fun m!2359595 () Bool)

(assert (=> b!1924239 m!2359595))

(declare-fun m!2359597 () Bool)

(assert (=> b!1924238 m!2359597))

(assert (=> d!586005 d!586257))

(declare-fun d!586259 () Bool)

(declare-fun lt!737498 () Int)

(declare-fun size!17095 (List!21990) Int)

(assert (=> d!586259 (= lt!737498 (size!17095 (list!8857 lt!737061)))))

(declare-fun size!17096 (Conc!7311) Int)

(assert (=> d!586259 (= lt!737498 (size!17096 (c!312514 lt!737061)))))

(assert (=> d!586259 (= (size!17092 lt!737061) lt!737498)))

(declare-fun bs!414496 () Bool)

(assert (= bs!414496 d!586259))

(assert (=> bs!414496 m!2358715))

(assert (=> bs!414496 m!2358715))

(declare-fun m!2359613 () Bool)

(assert (=> bs!414496 m!2359613))

(declare-fun m!2359615 () Bool)

(assert (=> bs!414496 m!2359615))

(assert (=> b!1923650 d!586259))

(declare-fun d!586267 () Bool)

(assert (=> d!586267 (= (isDefined!3826 lt!737164) (not (isEmpty!13483 lt!737164)))))

(declare-fun bs!414497 () Bool)

(assert (= bs!414497 d!586267))

(assert (=> bs!414497 m!2358383))

(assert (=> b!1923315 d!586267))

(assert (=> b!1923512 d!586155))

(declare-fun d!586269 () Bool)

(declare-fun lt!737499 () Int)

(assert (=> d!586269 (>= lt!737499 0)))

(declare-fun e!1230096 () Int)

(assert (=> d!586269 (= lt!737499 e!1230096)))

(declare-fun c!312767 () Bool)

(assert (=> d!586269 (= c!312767 ((_ is Nil!21906) (originalCharacters!4735 (h!27309 tokens!598))))))

(assert (=> d!586269 (= (size!17091 (originalCharacters!4735 (h!27309 tokens!598))) lt!737499)))

(declare-fun b!1924248 () Bool)

(assert (=> b!1924248 (= e!1230096 0)))

(declare-fun b!1924249 () Bool)

(assert (=> b!1924249 (= e!1230096 (+ 1 (size!17091 (t!179043 (originalCharacters!4735 (h!27309 tokens!598))))))))

(assert (= (and d!586269 c!312767) b!1924248))

(assert (= (and d!586269 (not c!312767)) b!1924249))

(declare-fun m!2359617 () Bool)

(assert (=> b!1924249 m!2359617))

(assert (=> b!1923735 d!586269))

(assert (=> b!1923508 d!586155))

(declare-fun bs!414499 () Bool)

(declare-fun d!586271 () Bool)

(assert (= bs!414499 (and d!586271 d!585869)))

(declare-fun lambda!75117 () Int)

(assert (=> bs!414499 (= (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (= lambda!75117 lambda!75077))))

(declare-fun bs!414500 () Bool)

(assert (= bs!414500 (and d!586271 d!586169)))

(assert (=> bs!414500 (= (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (= lambda!75117 lambda!75105))))

(assert (=> d!586271 true))

(assert (=> d!586271 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10594 order!13723 lambda!75117))))

(assert (=> d!586271 (= (equivClasses!1488 (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (Forall2!622 lambda!75117))))

(declare-fun bs!414501 () Bool)

(assert (= bs!414501 d!586271))

(declare-fun m!2359621 () Bool)

(assert (=> bs!414501 m!2359621))

(assert (=> b!1923771 d!586271))

(declare-fun d!586275 () Bool)

(assert (=> d!586275 (= (isEmpty!13484 lt!737050) (not ((_ is Some!4530) lt!737050)))))

(assert (=> d!585915 d!586275))

(declare-fun d!586277 () Bool)

(declare-fun lt!737500 () Bool)

(assert (=> d!586277 (= lt!737500 (select (content!3165 rules!3198) (get!6892 lt!737199)))))

(declare-fun e!1230098 () Bool)

(assert (=> d!586277 (= lt!737500 e!1230098)))

(declare-fun res!860518 () Bool)

(assert (=> d!586277 (=> (not res!860518) (not e!1230098))))

(assert (=> d!586277 (= res!860518 ((_ is Cons!21909) rules!3198))))

(assert (=> d!586277 (= (contains!3953 rules!3198 (get!6892 lt!737199)) lt!737500)))

(declare-fun b!1924250 () Bool)

(declare-fun e!1230097 () Bool)

(assert (=> b!1924250 (= e!1230098 e!1230097)))

(declare-fun res!860517 () Bool)

(assert (=> b!1924250 (=> res!860517 e!1230097)))

(assert (=> b!1924250 (= res!860517 (= (h!27310 rules!3198) (get!6892 lt!737199)))))

(declare-fun b!1924251 () Bool)

(assert (=> b!1924251 (= e!1230097 (contains!3953 (t!179046 rules!3198) (get!6892 lt!737199)))))

(assert (= (and d!586277 res!860518) b!1924250))

(assert (= (and b!1924250 (not res!860517)) b!1924251))

(assert (=> d!586277 m!2359559))

(assert (=> d!586277 m!2358465))

(declare-fun m!2359623 () Bool)

(assert (=> d!586277 m!2359623))

(assert (=> b!1924251 m!2358465))

(declare-fun m!2359625 () Bool)

(assert (=> b!1924251 m!2359625))

(assert (=> b!1923382 d!586277))

(assert (=> b!1923382 d!586127))

(declare-fun d!586279 () Bool)

(assert (=> d!586279 (= (list!8853 (ite c!312561 call!118187 call!118188)) (list!8856 (c!312512 (ite c!312561 call!118187 call!118188))))))

(declare-fun bs!414502 () Bool)

(assert (= bs!414502 d!586279))

(declare-fun m!2359627 () Bool)

(assert (=> bs!414502 m!2359627))

(assert (=> bm!118183 d!586279))

(declare-fun b!1924253 () Bool)

(declare-fun e!1230099 () List!21988)

(assert (=> b!1924253 (= e!1230099 (Cons!21906 (h!27307 (t!179043 lt!737051)) (++!5869 (t!179043 (t!179043 lt!737051)) lt!737043)))))

(declare-fun e!1230100 () Bool)

(declare-fun b!1924255 () Bool)

(declare-fun lt!737501 () List!21988)

(assert (=> b!1924255 (= e!1230100 (or (not (= lt!737043 Nil!21906)) (= lt!737501 (t!179043 lt!737051))))))

(declare-fun b!1924254 () Bool)

(declare-fun res!860519 () Bool)

(assert (=> b!1924254 (=> (not res!860519) (not e!1230100))))

(assert (=> b!1924254 (= res!860519 (= (size!17091 lt!737501) (+ (size!17091 (t!179043 lt!737051)) (size!17091 lt!737043))))))

(declare-fun b!1924252 () Bool)

(assert (=> b!1924252 (= e!1230099 lt!737043)))

(declare-fun d!586281 () Bool)

(assert (=> d!586281 e!1230100))

(declare-fun res!860520 () Bool)

(assert (=> d!586281 (=> (not res!860520) (not e!1230100))))

(assert (=> d!586281 (= res!860520 (= (content!3163 lt!737501) ((_ map or) (content!3163 (t!179043 lt!737051)) (content!3163 lt!737043))))))

(assert (=> d!586281 (= lt!737501 e!1230099)))

(declare-fun c!312768 () Bool)

(assert (=> d!586281 (= c!312768 ((_ is Nil!21906) (t!179043 lt!737051)))))

(assert (=> d!586281 (= (++!5869 (t!179043 lt!737051) lt!737043) lt!737501)))

(assert (= (and d!586281 c!312768) b!1924252))

(assert (= (and d!586281 (not c!312768)) b!1924253))

(assert (= (and d!586281 res!860520) b!1924254))

(assert (= (and b!1924254 res!860519) b!1924255))

(declare-fun m!2359629 () Bool)

(assert (=> b!1924253 m!2359629))

(declare-fun m!2359631 () Bool)

(assert (=> b!1924254 m!2359631))

(assert (=> b!1924254 m!2359207))

(assert (=> b!1924254 m!2358625))

(declare-fun m!2359633 () Bool)

(assert (=> d!586281 m!2359633))

(assert (=> d!586281 m!2359573))

(assert (=> d!586281 m!2358629))

(assert (=> b!1923546 d!586281))

(declare-fun d!586283 () Bool)

(declare-fun lt!737504 () Bool)

(assert (=> d!586283 (= lt!737504 (select (content!3163 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354))))) lt!737055))))

(declare-fun e!1230102 () Bool)

(assert (=> d!586283 (= lt!737504 e!1230102)))

(declare-fun res!860521 () Bool)

(assert (=> d!586283 (=> (not res!860521) (not e!1230102))))

(assert (=> d!586283 (= res!860521 ((_ is Cons!21906) (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354))))))))

(assert (=> d!586283 (= (contains!3951 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))) lt!737055) lt!737504)))

(declare-fun b!1924256 () Bool)

(declare-fun e!1230101 () Bool)

(assert (=> b!1924256 (= e!1230102 e!1230101)))

(declare-fun res!860522 () Bool)

(assert (=> b!1924256 (=> res!860522 e!1230101)))

(assert (=> b!1924256 (= res!860522 (= (h!27307 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354))))) lt!737055))))

(declare-fun b!1924257 () Bool)

(assert (=> b!1924257 (= e!1230101 (contains!3951 (t!179043 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354))))) lt!737055))))

(assert (= (and d!586283 res!860521) b!1924256))

(assert (= (and b!1924256 (not res!860522)) b!1924257))

(declare-fun m!2359635 () Bool)

(assert (=> d!586283 m!2359635))

(declare-fun m!2359637 () Bool)

(assert (=> d!586283 m!2359637))

(declare-fun m!2359639 () Bool)

(assert (=> b!1924257 m!2359639))

(assert (=> b!1923538 d!586283))

(declare-fun d!586285 () Bool)

(assert (=> d!586285 (= (isEmpty!13485 (originalCharacters!4735 (h!27309 tokens!598))) ((_ is Nil!21906) (originalCharacters!4735 (h!27309 tokens!598))))))

(assert (=> d!586039 d!586285))

(declare-fun bs!414503 () Bool)

(declare-fun d!586287 () Bool)

(assert (= bs!414503 (and d!586287 d!585847)))

(declare-fun lambda!75118 () Int)

(assert (=> bs!414503 (= lambda!75118 lambda!75074)))

(declare-fun bs!414504 () Bool)

(assert (= bs!414504 (and d!586287 d!586141)))

(assert (=> bs!414504 (= (and (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))))) (= lambda!75118 lambda!75099))))

(assert (=> d!586287 true))

(assert (=> d!586287 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (dynLambda!10589 order!13719 lambda!75118))))

(assert (=> d!586287 true))

(assert (=> d!586287 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (dynLambda!10589 order!13719 lambda!75118))))

(assert (=> d!586287 (= (semiInverseModEq!1561 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (Forall!998 lambda!75118))))

(declare-fun bs!414505 () Bool)

(assert (= bs!414505 d!586287))

(declare-fun m!2359647 () Bool)

(assert (=> bs!414505 m!2359647))

(assert (=> d!586043 d!586287))

(declare-fun d!586295 () Bool)

(declare-fun e!1230106 () Bool)

(assert (=> d!586295 e!1230106))

(declare-fun res!860526 () Bool)

(assert (=> d!586295 (=> (not res!860526) (not e!1230106))))

(declare-fun lt!737506 () BalanceConc!14438)

(assert (=> d!586295 (= res!860526 (= (list!8857 lt!737506) (Cons!21908 separatorToken!354 Nil!21908)))))

(assert (=> d!586295 (= lt!737506 (singleton!844 separatorToken!354))))

(assert (=> d!586295 (= (singletonSeq!1912 separatorToken!354) lt!737506)))

(declare-fun b!1924261 () Bool)

(assert (=> b!1924261 (= e!1230106 (isBalanced!2253 (c!312514 lt!737506)))))

(assert (= (and d!586295 res!860526) b!1924261))

(declare-fun m!2359649 () Bool)

(assert (=> d!586295 m!2359649))

(declare-fun m!2359651 () Bool)

(assert (=> d!586295 m!2359651))

(declare-fun m!2359653 () Bool)

(assert (=> b!1924261 m!2359653))

(assert (=> d!586025 d!586295))

(declare-fun d!586297 () Bool)

(declare-fun lt!737507 () BalanceConc!14436)

(assert (=> d!586297 (= (list!8853 lt!737507) (printList!1076 thiss!23328 (list!8857 (singletonSeq!1912 separatorToken!354))))))

(assert (=> d!586297 (= lt!737507 (printTailRec!1017 thiss!23328 (singletonSeq!1912 separatorToken!354) 0 (BalanceConc!14437 Empty!7310)))))

(assert (=> d!586297 (= (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)) lt!737507)))

(declare-fun bs!414506 () Bool)

(assert (= bs!414506 d!586297))

(declare-fun m!2359659 () Bool)

(assert (=> bs!414506 m!2359659))

(assert (=> bs!414506 m!2358845))

(assert (=> bs!414506 m!2358849))

(assert (=> bs!414506 m!2358849))

(declare-fun m!2359661 () Bool)

(assert (=> bs!414506 m!2359661))

(assert (=> bs!414506 m!2358845))

(declare-fun m!2359663 () Bool)

(assert (=> bs!414506 m!2359663))

(assert (=> d!586025 d!586297))

(declare-fun d!586301 () Bool)

(declare-fun list!8861 (Conc!7311) List!21990)

(assert (=> d!586301 (= (list!8857 (_1!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354))))) (list!8861 (c!312514 (_1!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)))))))))

(declare-fun bs!414507 () Bool)

(assert (= bs!414507 d!586301))

(declare-fun m!2359665 () Bool)

(assert (=> bs!414507 m!2359665))

(assert (=> d!586025 d!586301))

(declare-fun d!586303 () Bool)

(assert (=> d!586303 (= (list!8857 (singletonSeq!1912 separatorToken!354)) (list!8861 (c!312514 (singletonSeq!1912 separatorToken!354))))))

(declare-fun bs!414508 () Bool)

(assert (= bs!414508 d!586303))

(declare-fun m!2359667 () Bool)

(assert (=> bs!414508 m!2359667))

(assert (=> d!586025 d!586303))

(assert (=> d!586025 d!586061))

(declare-fun d!586305 () Bool)

(declare-fun e!1230270 () Bool)

(assert (=> d!586305 e!1230270))

(declare-fun res!860631 () Bool)

(assert (=> d!586305 (=> (not res!860631) (not e!1230270))))

(declare-fun e!1230271 () Bool)

(assert (=> d!586305 (= res!860631 e!1230271)))

(declare-fun c!312862 () Bool)

(declare-fun lt!737565 () tuple2!20522)

(assert (=> d!586305 (= c!312862 (> (size!17092 (_1!11730 lt!737565)) 0))))

(declare-fun lexTailRecV2!671 (LexerInterface!3541 List!21991 BalanceConc!14436 BalanceConc!14436 BalanceConc!14436 BalanceConc!14438) tuple2!20522)

(assert (=> d!586305 (= lt!737565 (lexTailRecV2!671 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)) (BalanceConc!14437 Empty!7310) (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)) (BalanceConc!14439 Empty!7311)))))

(assert (=> d!586305 (= (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354))) lt!737565)))

(declare-fun b!1924550 () Bool)

(declare-fun res!860630 () Bool)

(assert (=> b!1924550 (=> (not res!860630) (not e!1230270))))

(declare-datatypes ((tuple2!20528 0))(
  ( (tuple2!20529 (_1!11733 List!21990) (_2!11733 List!21988)) )
))
(declare-fun lexList!948 (LexerInterface!3541 List!21991 List!21988) tuple2!20528)

(assert (=> b!1924550 (= res!860630 (= (list!8857 (_1!11730 lt!737565)) (_1!11733 (lexList!948 thiss!23328 rules!3198 (list!8853 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)))))))))

(declare-fun b!1924551 () Bool)

(assert (=> b!1924551 (= e!1230270 (= (list!8853 (_2!11730 lt!737565)) (_2!11733 (lexList!948 thiss!23328 rules!3198 (list!8853 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)))))))))

(declare-fun b!1924552 () Bool)

(declare-fun e!1230272 () Bool)

(declare-fun isEmpty!13487 (BalanceConc!14438) Bool)

(assert (=> b!1924552 (= e!1230272 (not (isEmpty!13487 (_1!11730 lt!737565))))))

(declare-fun b!1924553 () Bool)

(assert (=> b!1924553 (= e!1230271 (= (_2!11730 lt!737565) (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354))))))

(declare-fun b!1924554 () Bool)

(assert (=> b!1924554 (= e!1230271 e!1230272)))

(declare-fun res!860632 () Bool)

(assert (=> b!1924554 (= res!860632 (< (size!17094 (_2!11730 lt!737565)) (size!17094 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)))))))

(assert (=> b!1924554 (=> (not res!860632) (not e!1230272))))

(assert (= (and d!586305 c!312862) b!1924554))

(assert (= (and d!586305 (not c!312862)) b!1924553))

(assert (= (and b!1924554 res!860632) b!1924552))

(assert (= (and d!586305 res!860631) b!1924550))

(assert (= (and b!1924550 res!860630) b!1924551))

(declare-fun m!2360089 () Bool)

(assert (=> b!1924554 m!2360089))

(assert (=> b!1924554 m!2358851))

(declare-fun m!2360091 () Bool)

(assert (=> b!1924554 m!2360091))

(declare-fun m!2360093 () Bool)

(assert (=> b!1924550 m!2360093))

(assert (=> b!1924550 m!2358851))

(declare-fun m!2360095 () Bool)

(assert (=> b!1924550 m!2360095))

(assert (=> b!1924550 m!2360095))

(declare-fun m!2360097 () Bool)

(assert (=> b!1924550 m!2360097))

(declare-fun m!2360099 () Bool)

(assert (=> b!1924552 m!2360099))

(declare-fun m!2360101 () Bool)

(assert (=> b!1924551 m!2360101))

(assert (=> b!1924551 m!2358851))

(assert (=> b!1924551 m!2360095))

(assert (=> b!1924551 m!2360095))

(assert (=> b!1924551 m!2360097))

(declare-fun m!2360103 () Bool)

(assert (=> d!586305 m!2360103))

(assert (=> d!586305 m!2358851))

(assert (=> d!586305 m!2358851))

(declare-fun m!2360105 () Bool)

(assert (=> d!586305 m!2360105))

(assert (=> d!586025 d!586305))

(declare-fun d!586453 () Bool)

(declare-fun lt!737568 () Int)

(assert (=> d!586453 (= lt!737568 (size!17095 (list!8857 (_1!11730 lt!737304))))))

(assert (=> d!586453 (= lt!737568 (size!17096 (c!312514 (_1!11730 lt!737304))))))

(assert (=> d!586453 (= (size!17092 (_1!11730 lt!737304)) lt!737568)))

(declare-fun bs!414529 () Bool)

(assert (= bs!414529 d!586453))

(declare-fun m!2360107 () Bool)

(assert (=> bs!414529 m!2360107))

(assert (=> bs!414529 m!2360107))

(declare-fun m!2360109 () Bool)

(assert (=> bs!414529 m!2360109))

(declare-fun m!2360111 () Bool)

(assert (=> bs!414529 m!2360111))

(assert (=> d!586025 d!586453))

(declare-fun d!586455 () Bool)

(assert (=> d!586455 (= (inv!15 (value!123539 (h!27309 tokens!598))) (= (charsToBigInt!0 (text!28897 (value!123539 (h!27309 tokens!598))) 0) (value!123534 (value!123539 (h!27309 tokens!598)))))))

(declare-fun bs!414530 () Bool)

(assert (= bs!414530 d!586455))

(declare-fun m!2360113 () Bool)

(assert (=> bs!414530 m!2360113))

(assert (=> b!1923707 d!586455))

(declare-fun d!586457 () Bool)

(declare-fun c!312866 () Bool)

(assert (=> d!586457 (= c!312866 ((_ is IntegerValue!12192) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))

(declare-fun e!1230277 () Bool)

(assert (=> d!586457 (= (inv!21 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)) e!1230277)))

(declare-fun b!1924559 () Bool)

(declare-fun e!1230275 () Bool)

(assert (=> b!1924559 (= e!1230277 e!1230275)))

(declare-fun c!312865 () Bool)

(assert (=> b!1924559 (= c!312865 ((_ is IntegerValue!12193) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))

(declare-fun b!1924560 () Bool)

(declare-fun e!1230276 () Bool)

(assert (=> b!1924560 (= e!1230276 (inv!15 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))

(declare-fun b!1924561 () Bool)

(assert (=> b!1924561 (= e!1230275 (inv!17 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))

(declare-fun b!1924562 () Bool)

(declare-fun res!860633 () Bool)

(assert (=> b!1924562 (=> res!860633 e!1230276)))

(assert (=> b!1924562 (= res!860633 (not ((_ is IntegerValue!12194) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))))))

(assert (=> b!1924562 (= e!1230275 e!1230276)))

(declare-fun b!1924563 () Bool)

(assert (=> b!1924563 (= e!1230277 (inv!16 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))

(assert (= (and d!586457 c!312866) b!1924563))

(assert (= (and d!586457 (not c!312866)) b!1924559))

(assert (= (and b!1924559 c!312865) b!1924561))

(assert (= (and b!1924559 (not c!312865)) b!1924562))

(assert (= (and b!1924562 (not res!860633)) b!1924560))

(declare-fun m!2360115 () Bool)

(assert (=> b!1924560 m!2360115))

(declare-fun m!2360117 () Bool)

(assert (=> b!1924561 m!2360117))

(declare-fun m!2360119 () Bool)

(assert (=> b!1924563 m!2360119))

(assert (=> tb!117499 d!586457))

(declare-fun call!118305 () Option!4532)

(declare-fun bm!118300 () Bool)

(assert (=> bm!118300 (= call!118305 (maxPrefixOneRule!1219 thiss!23328 (h!27310 (t!179046 rules!3198)) lt!737051))))

(declare-fun d!586459 () Bool)

(declare-fun e!1230278 () Bool)

(assert (=> d!586459 e!1230278))

(declare-fun res!860637 () Bool)

(assert (=> d!586459 (=> res!860637 e!1230278)))

(declare-fun lt!737569 () Option!4532)

(assert (=> d!586459 (= res!860637 (isEmpty!13483 lt!737569))))

(declare-fun e!1230280 () Option!4532)

(assert (=> d!586459 (= lt!737569 e!1230280)))

(declare-fun c!312867 () Bool)

(assert (=> d!586459 (= c!312867 (and ((_ is Cons!21909) (t!179046 rules!3198)) ((_ is Nil!21909) (t!179046 (t!179046 rules!3198)))))))

(declare-fun lt!737571 () Unit!36232)

(declare-fun lt!737572 () Unit!36232)

(assert (=> d!586459 (= lt!737571 lt!737572)))

(assert (=> d!586459 (isPrefix!1937 lt!737051 lt!737051)))

(assert (=> d!586459 (= lt!737572 (lemmaIsPrefixRefl!1255 lt!737051 lt!737051))))

(assert (=> d!586459 (rulesValidInductive!1336 thiss!23328 (t!179046 rules!3198))))

(assert (=> d!586459 (= (maxPrefix!1979 thiss!23328 (t!179046 rules!3198) lt!737051) lt!737569)))

(declare-fun b!1924564 () Bool)

(declare-fun lt!737570 () Option!4532)

(declare-fun lt!737573 () Option!4532)

(assert (=> b!1924564 (= e!1230280 (ite (and ((_ is None!4531) lt!737570) ((_ is None!4531) lt!737573)) None!4531 (ite ((_ is None!4531) lt!737573) lt!737570 (ite ((_ is None!4531) lt!737570) lt!737573 (ite (>= (size!17088 (_1!11728 (v!26610 lt!737570))) (size!17088 (_1!11728 (v!26610 lt!737573)))) lt!737570 lt!737573)))))))

(assert (=> b!1924564 (= lt!737570 call!118305)))

(assert (=> b!1924564 (= lt!737573 (maxPrefix!1979 thiss!23328 (t!179046 (t!179046 rules!3198)) lt!737051))))

(declare-fun b!1924565 () Bool)

(declare-fun res!860638 () Bool)

(declare-fun e!1230279 () Bool)

(assert (=> b!1924565 (=> (not res!860638) (not e!1230279))))

(assert (=> b!1924565 (= res!860638 (= (value!123539 (_1!11728 (get!6893 lt!737569))) (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737569)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737569)))))))))

(declare-fun b!1924566 () Bool)

(assert (=> b!1924566 (= e!1230279 (contains!3953 (t!179046 rules!3198) (rule!6131 (_1!11728 (get!6893 lt!737569)))))))

(declare-fun b!1924567 () Bool)

(assert (=> b!1924567 (= e!1230280 call!118305)))

(declare-fun b!1924568 () Bool)

(assert (=> b!1924568 (= e!1230278 e!1230279)))

(declare-fun res!860636 () Bool)

(assert (=> b!1924568 (=> (not res!860636) (not e!1230279))))

(assert (=> b!1924568 (= res!860636 (isDefined!3826 lt!737569))))

(declare-fun b!1924569 () Bool)

(declare-fun res!860634 () Bool)

(assert (=> b!1924569 (=> (not res!860634) (not e!1230279))))

(assert (=> b!1924569 (= res!860634 (matchR!2621 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737569)))) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737569))))))))

(declare-fun b!1924570 () Bool)

(declare-fun res!860640 () Bool)

(assert (=> b!1924570 (=> (not res!860640) (not e!1230279))))

(assert (=> b!1924570 (= res!860640 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737569)))) (_2!11728 (get!6893 lt!737569))) lt!737051))))

(declare-fun b!1924571 () Bool)

(declare-fun res!860639 () Bool)

(assert (=> b!1924571 (=> (not res!860639) (not e!1230279))))

(assert (=> b!1924571 (= res!860639 (= (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737569)))) (originalCharacters!4735 (_1!11728 (get!6893 lt!737569)))))))

(declare-fun b!1924572 () Bool)

(declare-fun res!860635 () Bool)

(assert (=> b!1924572 (=> (not res!860635) (not e!1230279))))

(assert (=> b!1924572 (= res!860635 (< (size!17091 (_2!11728 (get!6893 lt!737569))) (size!17091 lt!737051)))))

(assert (= (and d!586459 c!312867) b!1924567))

(assert (= (and d!586459 (not c!312867)) b!1924564))

(assert (= (or b!1924567 b!1924564) bm!118300))

(assert (= (and d!586459 (not res!860637)) b!1924568))

(assert (= (and b!1924568 res!860636) b!1924571))

(assert (= (and b!1924571 res!860639) b!1924572))

(assert (= (and b!1924572 res!860635) b!1924570))

(assert (= (and b!1924570 res!860640) b!1924565))

(assert (= (and b!1924565 res!860638) b!1924569))

(assert (= (and b!1924569 res!860634) b!1924566))

(declare-fun m!2360121 () Bool)

(assert (=> b!1924568 m!2360121))

(declare-fun m!2360123 () Bool)

(assert (=> b!1924569 m!2360123))

(declare-fun m!2360125 () Bool)

(assert (=> b!1924569 m!2360125))

(assert (=> b!1924569 m!2360125))

(declare-fun m!2360129 () Bool)

(assert (=> b!1924569 m!2360129))

(assert (=> b!1924569 m!2360129))

(declare-fun m!2360131 () Bool)

(assert (=> b!1924569 m!2360131))

(assert (=> b!1924571 m!2360123))

(assert (=> b!1924571 m!2360125))

(assert (=> b!1924571 m!2360125))

(assert (=> b!1924571 m!2360129))

(declare-fun m!2360135 () Bool)

(assert (=> b!1924564 m!2360135))

(declare-fun m!2360137 () Bool)

(assert (=> bm!118300 m!2360137))

(assert (=> b!1924566 m!2360123))

(declare-fun m!2360139 () Bool)

(assert (=> b!1924566 m!2360139))

(assert (=> b!1924572 m!2360123))

(declare-fun m!2360141 () Bool)

(assert (=> b!1924572 m!2360141))

(assert (=> b!1924572 m!2358227))

(assert (=> b!1924570 m!2360123))

(assert (=> b!1924570 m!2360125))

(assert (=> b!1924570 m!2360125))

(assert (=> b!1924570 m!2360129))

(assert (=> b!1924570 m!2360129))

(declare-fun m!2360143 () Bool)

(assert (=> b!1924570 m!2360143))

(assert (=> b!1924565 m!2360123))

(declare-fun m!2360145 () Bool)

(assert (=> b!1924565 m!2360145))

(assert (=> b!1924565 m!2360145))

(declare-fun m!2360147 () Bool)

(assert (=> b!1924565 m!2360147))

(declare-fun m!2360149 () Bool)

(assert (=> d!586459 m!2360149))

(assert (=> d!586459 m!2358385))

(assert (=> d!586459 m!2358387))

(assert (=> d!586459 m!2359409))

(assert (=> b!1923311 d!586459))

(declare-fun d!586465 () Bool)

(assert (=> d!586465 (= (list!8853 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))) (list!8856 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))))

(declare-fun bs!414533 () Bool)

(assert (= bs!414533 d!586465))

(declare-fun m!2360151 () Bool)

(assert (=> bs!414533 m!2360151))

(assert (=> d!585847 d!586465))

(assert (=> d!585847 d!585937))

(declare-fun d!586467 () Bool)

(declare-fun dynLambda!10599 (Int BalanceConc!14436) Bool)

(assert (=> d!586467 (dynLambda!10599 lambda!75074 lt!737049)))

(declare-fun lt!737582 () Unit!36232)

(declare-fun choose!11949 (Int BalanceConc!14436) Unit!36232)

(assert (=> d!586467 (= lt!737582 (choose!11949 lambda!75074 lt!737049))))

(assert (=> d!586467 (Forall!998 lambda!75074)))

(assert (=> d!586467 (= (ForallOf!401 lambda!75074 lt!737049) lt!737582)))

(declare-fun b_lambda!63671 () Bool)

(assert (=> (not b_lambda!63671) (not d!586467)))

(declare-fun bs!414534 () Bool)

(assert (= bs!414534 d!586467))

(declare-fun m!2360173 () Bool)

(assert (=> bs!414534 m!2360173))

(declare-fun m!2360177 () Bool)

(assert (=> bs!414534 m!2360177))

(declare-fun m!2360179 () Bool)

(assert (=> bs!414534 m!2360179))

(assert (=> d!585847 d!586467))

(declare-fun d!586469 () Bool)

(assert (=> d!586469 (= (isEmpty!13484 lt!737041) (not ((_ is Some!4530) lt!737041)))))

(assert (=> d!585921 d!586469))

(declare-fun b!1924589 () Bool)

(declare-fun e!1230285 () List!21988)

(assert (=> b!1924589 (= e!1230285 (Cons!21906 (h!27307 (ite c!312635 call!118216 call!118218)) (++!5869 (t!179043 (ite c!312635 call!118216 call!118218)) (ite c!312635 call!118218 call!118216))))))

(declare-fun lt!737583 () List!21988)

(declare-fun b!1924591 () Bool)

(declare-fun e!1230286 () Bool)

(assert (=> b!1924591 (= e!1230286 (or (not (= (ite c!312635 call!118218 call!118216) Nil!21906)) (= lt!737583 (ite c!312635 call!118216 call!118218))))))

(declare-fun b!1924590 () Bool)

(declare-fun res!860648 () Bool)

(assert (=> b!1924590 (=> (not res!860648) (not e!1230286))))

(assert (=> b!1924590 (= res!860648 (= (size!17091 lt!737583) (+ (size!17091 (ite c!312635 call!118216 call!118218)) (size!17091 (ite c!312635 call!118218 call!118216)))))))

(declare-fun b!1924588 () Bool)

(assert (=> b!1924588 (= e!1230285 (ite c!312635 call!118218 call!118216))))

(declare-fun d!586471 () Bool)

(assert (=> d!586471 e!1230286))

(declare-fun res!860649 () Bool)

(assert (=> d!586471 (=> (not res!860649) (not e!1230286))))

(assert (=> d!586471 (= res!860649 (= (content!3163 lt!737583) ((_ map or) (content!3163 (ite c!312635 call!118216 call!118218)) (content!3163 (ite c!312635 call!118218 call!118216)))))))

(assert (=> d!586471 (= lt!737583 e!1230285)))

(declare-fun c!312870 () Bool)

(assert (=> d!586471 (= c!312870 ((_ is Nil!21906) (ite c!312635 call!118216 call!118218)))))

(assert (=> d!586471 (= (++!5869 (ite c!312635 call!118216 call!118218) (ite c!312635 call!118218 call!118216)) lt!737583)))

(assert (= (and d!586471 c!312870) b!1924588))

(assert (= (and d!586471 (not c!312870)) b!1924589))

(assert (= (and d!586471 res!860649) b!1924590))

(assert (= (and b!1924590 res!860648) b!1924591))

(declare-fun m!2360187 () Bool)

(assert (=> b!1924589 m!2360187))

(declare-fun m!2360189 () Bool)

(assert (=> b!1924590 m!2360189))

(declare-fun m!2360191 () Bool)

(assert (=> b!1924590 m!2360191))

(declare-fun m!2360193 () Bool)

(assert (=> b!1924590 m!2360193))

(declare-fun m!2360195 () Bool)

(assert (=> d!586471 m!2360195))

(declare-fun m!2360197 () Bool)

(assert (=> d!586471 m!2360197))

(declare-fun m!2360199 () Bool)

(assert (=> d!586471 m!2360199))

(assert (=> bm!118214 d!586471))

(assert (=> b!1923197 d!586163))

(assert (=> b!1923197 d!586165))

(assert (=> b!1923197 d!586167))

(declare-fun d!586477 () Bool)

(assert (=> d!586477 (= (isEmpty!13485 (tail!2972 lt!737043)) ((_ is Nil!21906) (tail!2972 lt!737043)))))

(assert (=> b!1923764 d!586477))

(declare-fun d!586479 () Bool)

(assert (=> d!586479 (= (tail!2972 lt!737043) (t!179043 lt!737043))))

(assert (=> b!1923764 d!586479))

(declare-fun b!1924594 () Bool)

(declare-fun e!1230291 () Bool)

(declare-fun e!1230289 () Bool)

(assert (=> b!1924594 (= e!1230291 e!1230289)))

(declare-fun res!860650 () Bool)

(assert (=> b!1924594 (=> res!860650 e!1230289)))

(declare-fun call!118307 () Bool)

(assert (=> b!1924594 (= res!860650 call!118307)))

(declare-fun e!1230294 () Bool)

(declare-fun b!1924595 () Bool)

(assert (=> b!1924595 (= e!1230294 (nullable!1605 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))))))))

(declare-fun bm!118302 () Bool)

(assert (=> bm!118302 (= call!118307 (isEmpty!13485 (list!8853 (charsOf!2468 (h!27309 tokens!598)))))))

(declare-fun b!1924596 () Bool)

(declare-fun res!860657 () Bool)

(declare-fun e!1230292 () Bool)

(assert (=> b!1924596 (=> res!860657 e!1230292)))

(declare-fun e!1230288 () Bool)

(assert (=> b!1924596 (= res!860657 e!1230288)))

(declare-fun res!860656 () Bool)

(assert (=> b!1924596 (=> (not res!860656) (not e!1230288))))

(declare-fun lt!737585 () Bool)

(assert (=> b!1924596 (= res!860656 lt!737585)))

(declare-fun b!1924597 () Bool)

(declare-fun res!860651 () Bool)

(assert (=> b!1924597 (=> (not res!860651) (not e!1230288))))

(assert (=> b!1924597 (= res!860651 (isEmpty!13485 (tail!2972 (list!8853 (charsOf!2468 (h!27309 tokens!598))))))))

(declare-fun b!1924598 () Bool)

(assert (=> b!1924598 (= e!1230292 e!1230291)))

(declare-fun res!860655 () Bool)

(assert (=> b!1924598 (=> (not res!860655) (not e!1230291))))

(assert (=> b!1924598 (= res!860655 (not lt!737585))))

(declare-fun b!1924599 () Bool)

(assert (=> b!1924599 (= e!1230294 (matchR!2621 (derivativeStep!1364 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))) (head!4484 (list!8853 (charsOf!2468 (h!27309 tokens!598))))) (tail!2972 (list!8853 (charsOf!2468 (h!27309 tokens!598))))))))

(declare-fun b!1924600 () Bool)

(assert (=> b!1924600 (= e!1230289 (not (= (head!4484 (list!8853 (charsOf!2468 (h!27309 tokens!598)))) (c!312513 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))))))))))

(declare-fun d!586481 () Bool)

(declare-fun e!1230290 () Bool)

(assert (=> d!586481 e!1230290))

(declare-fun c!312872 () Bool)

(assert (=> d!586481 (= c!312872 ((_ is EmptyExpr!5353) (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))))))))

(assert (=> d!586481 (= lt!737585 e!1230294)))

(declare-fun c!312873 () Bool)

(assert (=> d!586481 (= c!312873 (isEmpty!13485 (list!8853 (charsOf!2468 (h!27309 tokens!598)))))))

(assert (=> d!586481 (validRegex!2131 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))))))

(assert (=> d!586481 (= (matchR!2621 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))) (list!8853 (charsOf!2468 (h!27309 tokens!598)))) lt!737585)))

(declare-fun b!1924601 () Bool)

(declare-fun res!860652 () Bool)

(assert (=> b!1924601 (=> res!860652 e!1230289)))

(assert (=> b!1924601 (= res!860652 (not (isEmpty!13485 (tail!2972 (list!8853 (charsOf!2468 (h!27309 tokens!598)))))))))

(declare-fun b!1924602 () Bool)

(declare-fun res!860654 () Bool)

(assert (=> b!1924602 (=> (not res!860654) (not e!1230288))))

(assert (=> b!1924602 (= res!860654 (not call!118307))))

(declare-fun b!1924603 () Bool)

(declare-fun e!1230293 () Bool)

(assert (=> b!1924603 (= e!1230290 e!1230293)))

(declare-fun c!312874 () Bool)

(assert (=> b!1924603 (= c!312874 ((_ is EmptyLang!5353) (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))))))))

(declare-fun b!1924604 () Bool)

(assert (=> b!1924604 (= e!1230288 (= (head!4484 (list!8853 (charsOf!2468 (h!27309 tokens!598)))) (c!312513 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))))))))

(declare-fun b!1924605 () Bool)

(declare-fun res!860653 () Bool)

(assert (=> b!1924605 (=> res!860653 e!1230292)))

(assert (=> b!1924605 (= res!860653 (not ((_ is ElementMatch!5353) (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598)))))))))))

(assert (=> b!1924605 (= e!1230293 e!1230292)))

(declare-fun b!1924606 () Bool)

(assert (=> b!1924606 (= e!1230293 (not lt!737585))))

(declare-fun b!1924607 () Bool)

(assert (=> b!1924607 (= e!1230290 (= lt!737585 call!118307))))

(assert (= (and d!586481 c!312873) b!1924595))

(assert (= (and d!586481 (not c!312873)) b!1924599))

(assert (= (and d!586481 c!312872) b!1924607))

(assert (= (and d!586481 (not c!312872)) b!1924603))

(assert (= (and b!1924603 c!312874) b!1924606))

(assert (= (and b!1924603 (not c!312874)) b!1924605))

(assert (= (and b!1924605 (not res!860653)) b!1924596))

(assert (= (and b!1924596 res!860656) b!1924602))

(assert (= (and b!1924602 res!860654) b!1924597))

(assert (= (and b!1924597 res!860651) b!1924604))

(assert (= (and b!1924596 (not res!860657)) b!1924598))

(assert (= (and b!1924598 res!860655) b!1924594))

(assert (= (and b!1924594 (not res!860650)) b!1924601))

(assert (= (and b!1924601 (not res!860652)) b!1924600))

(assert (= (or b!1924607 b!1924594 b!1924602) bm!118302))

(assert (=> b!1924599 m!2358487))

(declare-fun m!2360201 () Bool)

(assert (=> b!1924599 m!2360201))

(assert (=> b!1924599 m!2360201))

(declare-fun m!2360203 () Bool)

(assert (=> b!1924599 m!2360203))

(assert (=> b!1924599 m!2358487))

(declare-fun m!2360205 () Bool)

(assert (=> b!1924599 m!2360205))

(assert (=> b!1924599 m!2360203))

(assert (=> b!1924599 m!2360205))

(declare-fun m!2360207 () Bool)

(assert (=> b!1924599 m!2360207))

(declare-fun m!2360209 () Bool)

(assert (=> b!1924595 m!2360209))

(assert (=> b!1924600 m!2358487))

(assert (=> b!1924600 m!2360201))

(assert (=> b!1924601 m!2358487))

(assert (=> b!1924601 m!2360205))

(assert (=> b!1924601 m!2360205))

(declare-fun m!2360211 () Bool)

(assert (=> b!1924601 m!2360211))

(assert (=> d!586481 m!2358487))

(declare-fun m!2360213 () Bool)

(assert (=> d!586481 m!2360213))

(declare-fun m!2360215 () Bool)

(assert (=> d!586481 m!2360215))

(assert (=> b!1924597 m!2358487))

(assert (=> b!1924597 m!2360205))

(assert (=> b!1924597 m!2360205))

(assert (=> b!1924597 m!2360211))

(assert (=> b!1924604 m!2358487))

(assert (=> b!1924604 m!2360201))

(assert (=> bm!118302 m!2358487))

(assert (=> bm!118302 m!2360213))

(assert (=> b!1923400 d!586481))

(declare-fun d!586483 () Bool)

(assert (=> d!586483 (= (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))) (v!26609 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 (h!27309 tokens!598))))))))

(assert (=> b!1923400 d!586483))

(assert (=> b!1923400 d!585925))

(declare-fun d!586485 () Bool)

(assert (=> d!586485 (= (list!8853 (charsOf!2468 (h!27309 tokens!598))) (list!8856 (c!312512 (charsOf!2468 (h!27309 tokens!598)))))))

(declare-fun bs!414535 () Bool)

(assert (= bs!414535 d!586485))

(declare-fun m!2360217 () Bool)

(assert (=> bs!414535 m!2360217))

(assert (=> b!1923400 d!586485))

(assert (=> b!1923400 d!585913))

(declare-fun b!1924609 () Bool)

(declare-fun e!1230295 () List!21988)

(assert (=> b!1924609 (= e!1230295 (Cons!21906 (h!27307 (t!179043 lt!737043)) (++!5869 (t!179043 (t!179043 lt!737043)) lt!737059)))))

(declare-fun b!1924611 () Bool)

(declare-fun lt!737586 () List!21988)

(declare-fun e!1230296 () Bool)

(assert (=> b!1924611 (= e!1230296 (or (not (= lt!737059 Nil!21906)) (= lt!737586 (t!179043 lt!737043))))))

(declare-fun b!1924610 () Bool)

(declare-fun res!860658 () Bool)

(assert (=> b!1924610 (=> (not res!860658) (not e!1230296))))

(assert (=> b!1924610 (= res!860658 (= (size!17091 lt!737586) (+ (size!17091 (t!179043 lt!737043)) (size!17091 lt!737059))))))

(declare-fun b!1924608 () Bool)

(assert (=> b!1924608 (= e!1230295 lt!737059)))

(declare-fun d!586487 () Bool)

(assert (=> d!586487 e!1230296))

(declare-fun res!860659 () Bool)

(assert (=> d!586487 (=> (not res!860659) (not e!1230296))))

(assert (=> d!586487 (= res!860659 (= (content!3163 lt!737586) ((_ map or) (content!3163 (t!179043 lt!737043)) (content!3163 lt!737059))))))

(assert (=> d!586487 (= lt!737586 e!1230295)))

(declare-fun c!312875 () Bool)

(assert (=> d!586487 (= c!312875 ((_ is Nil!21906) (t!179043 lt!737043)))))

(assert (=> d!586487 (= (++!5869 (t!179043 lt!737043) lt!737059) lt!737586)))

(assert (= (and d!586487 c!312875) b!1924608))

(assert (= (and d!586487 (not c!312875)) b!1924609))

(assert (= (and d!586487 res!860659) b!1924610))

(assert (= (and b!1924610 res!860658) b!1924611))

(declare-fun m!2360219 () Bool)

(assert (=> b!1924609 m!2360219))

(declare-fun m!2360221 () Bool)

(assert (=> b!1924610 m!2360221))

(declare-fun m!2360223 () Bool)

(assert (=> b!1924610 m!2360223))

(assert (=> b!1924610 m!2358229))

(declare-fun m!2360225 () Bool)

(assert (=> d!586487 m!2360225))

(assert (=> d!586487 m!2359219))

(assert (=> d!586487 m!2358235))

(assert (=> b!1923589 d!586487))

(declare-fun d!586489 () Bool)

(declare-fun c!312876 () Bool)

(assert (=> d!586489 (= c!312876 ((_ is Nil!21906) (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))))))

(declare-fun e!1230299 () (InoxSet C!10852))

(assert (=> d!586489 (= (content!3163 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))) e!1230299)))

(declare-fun b!1924614 () Bool)

(assert (=> b!1924614 (= e!1230299 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924615 () Bool)

(assert (=> b!1924615 (= e!1230299 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))) true) (content!3163 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 separatorToken!354)))))))))

(assert (= (and d!586489 c!312876) b!1924614))

(assert (= (and d!586489 (not c!312876)) b!1924615))

(declare-fun m!2360227 () Bool)

(assert (=> b!1924615 m!2360227))

(assert (=> b!1924615 m!2359635))

(assert (=> d!585965 d!586489))

(declare-fun d!586491 () Bool)

(assert (=> d!586491 (= (isEmpty!13485 lt!737043) ((_ is Nil!21906) lt!737043))))

(assert (=> bm!118224 d!586491))

(declare-fun b!1924627 () Bool)

(declare-fun e!1230302 () List!21988)

(assert (=> b!1924627 (= e!1230302 (Cons!21906 (h!27307 (t!179043 (++!5869 lt!737051 lt!737043))) (++!5869 (t!179043 (t!179043 (++!5869 lt!737051 lt!737043))) lt!737059)))))

(declare-fun e!1230303 () Bool)

(declare-fun lt!737587 () List!21988)

(declare-fun b!1924629 () Bool)

(assert (=> b!1924629 (= e!1230303 (or (not (= lt!737059 Nil!21906)) (= lt!737587 (t!179043 (++!5869 lt!737051 lt!737043)))))))

(declare-fun b!1924628 () Bool)

(declare-fun res!860672 () Bool)

(assert (=> b!1924628 (=> (not res!860672) (not e!1230303))))

(assert (=> b!1924628 (= res!860672 (= (size!17091 lt!737587) (+ (size!17091 (t!179043 (++!5869 lt!737051 lt!737043))) (size!17091 lt!737059))))))

(declare-fun b!1924626 () Bool)

(assert (=> b!1924626 (= e!1230302 lt!737059)))

(declare-fun d!586493 () Bool)

(assert (=> d!586493 e!1230303))

(declare-fun res!860673 () Bool)

(assert (=> d!586493 (=> (not res!860673) (not e!1230303))))

(assert (=> d!586493 (= res!860673 (= (content!3163 lt!737587) ((_ map or) (content!3163 (t!179043 (++!5869 lt!737051 lt!737043))) (content!3163 lt!737059))))))

(assert (=> d!586493 (= lt!737587 e!1230302)))

(declare-fun c!312877 () Bool)

(assert (=> d!586493 (= c!312877 ((_ is Nil!21906) (t!179043 (++!5869 lt!737051 lt!737043))))))

(assert (=> d!586493 (= (++!5869 (t!179043 (++!5869 lt!737051 lt!737043)) lt!737059) lt!737587)))

(assert (= (and d!586493 c!312877) b!1924626))

(assert (= (and d!586493 (not c!312877)) b!1924627))

(assert (= (and d!586493 res!860673) b!1924628))

(assert (= (and b!1924628 res!860672) b!1924629))

(declare-fun m!2360229 () Bool)

(assert (=> b!1924627 m!2360229))

(declare-fun m!2360231 () Bool)

(assert (=> b!1924628 m!2360231))

(declare-fun m!2360233 () Bool)

(assert (=> b!1924628 m!2360233))

(assert (=> b!1924628 m!2358229))

(declare-fun m!2360235 () Bool)

(assert (=> d!586493 m!2360235))

(declare-fun m!2360237 () Bool)

(assert (=> d!586493 m!2360237))

(assert (=> d!586493 m!2358235))

(assert (=> b!1923581 d!586493))

(declare-fun d!586495 () Bool)

(declare-fun res!860674 () Bool)

(declare-fun e!1230304 () Bool)

(assert (=> d!586495 (=> (not res!860674) (not e!1230304))))

(assert (=> d!586495 (= res!860674 (rulesValid!1448 thiss!23328 (t!179046 rules!3198)))))

(assert (=> d!586495 (= (rulesInvariant!3148 thiss!23328 (t!179046 rules!3198)) e!1230304)))

(declare-fun b!1924630 () Bool)

(assert (=> b!1924630 (= e!1230304 (noDuplicateTag!1446 thiss!23328 (t!179046 rules!3198) Nil!21911))))

(assert (= (and d!586495 res!860674) b!1924630))

(declare-fun m!2360239 () Bool)

(assert (=> d!586495 m!2360239))

(declare-fun m!2360241 () Bool)

(assert (=> b!1924630 m!2360241))

(assert (=> b!1923374 d!586495))

(declare-fun d!586497 () Bool)

(assert (=> d!586497 (rulesInvariant!3148 thiss!23328 (t!179046 rules!3198))))

(declare-fun lt!737595 () Unit!36232)

(declare-fun choose!11951 (LexerInterface!3541 Rule!7656 List!21991) Unit!36232)

(assert (=> d!586497 (= lt!737595 (choose!11951 thiss!23328 (h!27310 rules!3198) (t!179046 rules!3198)))))

(assert (=> d!586497 (rulesInvariant!3148 thiss!23328 (Cons!21909 (h!27310 rules!3198) (t!179046 rules!3198)))))

(assert (=> d!586497 (= (lemmaInvariantOnRulesThenOnTail!266 thiss!23328 (h!27310 rules!3198) (t!179046 rules!3198)) lt!737595)))

(declare-fun bs!414536 () Bool)

(assert (= bs!414536 d!586497))

(assert (=> bs!414536 m!2358459))

(declare-fun m!2360255 () Bool)

(assert (=> bs!414536 m!2360255))

(declare-fun m!2360257 () Bool)

(assert (=> bs!414536 m!2360257))

(assert (=> b!1923374 d!586497))

(declare-fun b!1924647 () Bool)

(declare-fun e!1230312 () Bool)

(declare-fun lt!737597 () Option!4531)

(assert (=> b!1924647 (= e!1230312 (= (tag!4370 (get!6892 lt!737597)) (tag!4370 (rule!6131 separatorToken!354))))))

(declare-fun b!1924648 () Bool)

(declare-fun e!1230313 () Bool)

(assert (=> b!1924648 (= e!1230313 e!1230312)))

(declare-fun res!860689 () Bool)

(assert (=> b!1924648 (=> (not res!860689) (not e!1230312))))

(assert (=> b!1924648 (= res!860689 (contains!3953 (t!179046 rules!3198) (get!6892 lt!737597)))))

(declare-fun b!1924649 () Bool)

(declare-fun e!1230311 () Option!4531)

(assert (=> b!1924649 (= e!1230311 (Some!4530 (h!27310 (t!179046 rules!3198))))))

(declare-fun b!1924650 () Bool)

(declare-fun e!1230310 () Option!4531)

(assert (=> b!1924650 (= e!1230311 e!1230310)))

(declare-fun c!312879 () Bool)

(assert (=> b!1924650 (= c!312879 (and ((_ is Cons!21909) (t!179046 rules!3198)) (not (= (tag!4370 (h!27310 (t!179046 rules!3198))) (tag!4370 (rule!6131 separatorToken!354))))))))

(declare-fun b!1924651 () Bool)

(assert (=> b!1924651 (= e!1230310 None!4530)))

(declare-fun d!586501 () Bool)

(assert (=> d!586501 e!1230313))

(declare-fun res!860688 () Bool)

(assert (=> d!586501 (=> res!860688 e!1230313)))

(assert (=> d!586501 (= res!860688 (isEmpty!13484 lt!737597))))

(assert (=> d!586501 (= lt!737597 e!1230311)))

(declare-fun c!312880 () Bool)

(assert (=> d!586501 (= c!312880 (and ((_ is Cons!21909) (t!179046 rules!3198)) (= (tag!4370 (h!27310 (t!179046 rules!3198))) (tag!4370 (rule!6131 separatorToken!354)))))))

(assert (=> d!586501 (rulesInvariant!3148 thiss!23328 (t!179046 rules!3198))))

(assert (=> d!586501 (= (getRuleFromTag!749 thiss!23328 (t!179046 rules!3198) (tag!4370 (rule!6131 separatorToken!354))) lt!737597)))

(declare-fun b!1924646 () Bool)

(declare-fun lt!737598 () Unit!36232)

(declare-fun lt!737596 () Unit!36232)

(assert (=> b!1924646 (= lt!737598 lt!737596)))

(assert (=> b!1924646 (rulesInvariant!3148 thiss!23328 (t!179046 (t!179046 rules!3198)))))

(assert (=> b!1924646 (= lt!737596 (lemmaInvariantOnRulesThenOnTail!266 thiss!23328 (h!27310 (t!179046 rules!3198)) (t!179046 (t!179046 rules!3198))))))

(assert (=> b!1924646 (= e!1230310 (getRuleFromTag!749 thiss!23328 (t!179046 (t!179046 rules!3198)) (tag!4370 (rule!6131 separatorToken!354))))))

(assert (= (and d!586501 c!312880) b!1924649))

(assert (= (and d!586501 (not c!312880)) b!1924650))

(assert (= (and b!1924650 c!312879) b!1924646))

(assert (= (and b!1924650 (not c!312879)) b!1924651))

(assert (= (and d!586501 (not res!860688)) b!1924648))

(assert (= (and b!1924648 res!860689) b!1924647))

(declare-fun m!2360263 () Bool)

(assert (=> b!1924647 m!2360263))

(assert (=> b!1924648 m!2360263))

(assert (=> b!1924648 m!2360263))

(declare-fun m!2360268 () Bool)

(assert (=> b!1924648 m!2360268))

(declare-fun m!2360271 () Bool)

(assert (=> d!586501 m!2360271))

(assert (=> d!586501 m!2358459))

(declare-fun m!2360275 () Bool)

(assert (=> b!1924646 m!2360275))

(declare-fun m!2360277 () Bool)

(assert (=> b!1924646 m!2360277))

(declare-fun m!2360281 () Bool)

(assert (=> b!1924646 m!2360281))

(assert (=> b!1923374 d!586501))

(declare-fun d!586503 () Bool)

(declare-fun isBalanced!2255 (Conc!7310) Bool)

(assert (=> d!586503 (= (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))) (isBalanced!2255 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))))))

(declare-fun bs!414537 () Bool)

(assert (= bs!414537 d!586503))

(declare-fun m!2360301 () Bool)

(assert (=> bs!414537 m!2360301))

(assert (=> tb!117547 d!586503))

(declare-fun d!586511 () Bool)

(declare-fun c!312883 () Bool)

(assert (=> d!586511 (= c!312883 ((_ is Nil!21906) lt!737221))))

(declare-fun e!1230317 () (InoxSet C!10852))

(assert (=> d!586511 (= (content!3163 lt!737221) e!1230317)))

(declare-fun b!1924657 () Bool)

(assert (=> b!1924657 (= e!1230317 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924658 () Bool)

(assert (=> b!1924658 (= e!1230317 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 lt!737221) true) (content!3163 (t!179043 lt!737221))))))

(assert (= (and d!586511 c!312883) b!1924657))

(assert (= (and d!586511 (not c!312883)) b!1924658))

(declare-fun m!2360307 () Bool)

(assert (=> b!1924658 m!2360307))

(declare-fun m!2360309 () Bool)

(assert (=> b!1924658 m!2360309))

(assert (=> d!585969 d!586511))

(assert (=> d!585969 d!586239))

(assert (=> d!585969 d!586123))

(declare-fun d!586515 () Bool)

(assert (=> d!586515 (= (dropList!780 lt!737061 0) (drop!1071 (list!8861 (c!312514 lt!737061)) 0))))

(declare-fun bs!414538 () Bool)

(assert (= bs!414538 d!586515))

(declare-fun m!2360311 () Bool)

(assert (=> bs!414538 m!2360311))

(assert (=> bs!414538 m!2360311))

(declare-fun m!2360313 () Bool)

(assert (=> bs!414538 m!2360313))

(assert (=> d!586015 d!586515))

(declare-fun d!586517 () Bool)

(declare-fun lt!737624 () List!21988)

(assert (=> d!586517 (= lt!737624 (++!5869 (list!8853 (BalanceConc!14437 Empty!7310)) (printList!1076 thiss!23328 (dropList!780 lt!737061 0))))))

(declare-fun e!1230327 () List!21988)

(assert (=> d!586517 (= lt!737624 e!1230327)))

(declare-fun c!312889 () Bool)

(assert (=> d!586517 (= c!312889 ((_ is Cons!21908) (dropList!780 lt!737061 0)))))

(assert (=> d!586517 (= (printListTailRec!449 thiss!23328 (dropList!780 lt!737061 0) (list!8853 (BalanceConc!14437 Empty!7310))) lt!737624)))

(declare-fun b!1924674 () Bool)

(assert (=> b!1924674 (= e!1230327 (printListTailRec!449 thiss!23328 (t!179045 (dropList!780 lt!737061 0)) (++!5869 (list!8853 (BalanceConc!14437 Empty!7310)) (list!8853 (charsOf!2468 (h!27309 (dropList!780 lt!737061 0)))))))))

(declare-fun lt!737627 () List!21988)

(assert (=> b!1924674 (= lt!737627 (list!8853 (charsOf!2468 (h!27309 (dropList!780 lt!737061 0)))))))

(declare-fun lt!737623 () List!21988)

(assert (=> b!1924674 (= lt!737623 (printList!1076 thiss!23328 (t!179045 (dropList!780 lt!737061 0))))))

(declare-fun lt!737625 () Unit!36232)

(assert (=> b!1924674 (= lt!737625 (lemmaConcatAssociativity!1187 (list!8853 (BalanceConc!14437 Empty!7310)) lt!737627 lt!737623))))

(assert (=> b!1924674 (= (++!5869 (++!5869 (list!8853 (BalanceConc!14437 Empty!7310)) lt!737627) lt!737623) (++!5869 (list!8853 (BalanceConc!14437 Empty!7310)) (++!5869 lt!737627 lt!737623)))))

(declare-fun lt!737626 () Unit!36232)

(assert (=> b!1924674 (= lt!737626 lt!737625)))

(declare-fun b!1924675 () Bool)

(assert (=> b!1924675 (= e!1230327 (list!8853 (BalanceConc!14437 Empty!7310)))))

(assert (= (and d!586517 c!312889) b!1924674))

(assert (= (and d!586517 (not c!312889)) b!1924675))

(assert (=> d!586517 m!2358785))

(declare-fun m!2360361 () Bool)

(assert (=> d!586517 m!2360361))

(assert (=> d!586517 m!2358787))

(assert (=> d!586517 m!2360361))

(declare-fun m!2360363 () Bool)

(assert (=> d!586517 m!2360363))

(declare-fun m!2360365 () Bool)

(assert (=> b!1924674 m!2360365))

(declare-fun m!2360367 () Bool)

(assert (=> b!1924674 m!2360367))

(declare-fun m!2360369 () Bool)

(assert (=> b!1924674 m!2360369))

(declare-fun m!2360371 () Bool)

(assert (=> b!1924674 m!2360371))

(declare-fun m!2360373 () Bool)

(assert (=> b!1924674 m!2360373))

(assert (=> b!1924674 m!2360371))

(declare-fun m!2360375 () Bool)

(assert (=> b!1924674 m!2360375))

(declare-fun m!2360377 () Bool)

(assert (=> b!1924674 m!2360377))

(assert (=> b!1924674 m!2358787))

(assert (=> b!1924674 m!2360375))

(declare-fun m!2360379 () Bool)

(assert (=> b!1924674 m!2360379))

(assert (=> b!1924674 m!2358787))

(assert (=> b!1924674 m!2360373))

(assert (=> b!1924674 m!2360365))

(assert (=> b!1924674 m!2358787))

(declare-fun m!2360381 () Bool)

(assert (=> b!1924674 m!2360381))

(assert (=> b!1924674 m!2358787))

(assert (=> b!1924674 m!2360379))

(declare-fun m!2360383 () Bool)

(assert (=> b!1924674 m!2360383))

(assert (=> d!586015 d!586517))

(declare-fun d!586535 () Bool)

(assert (=> d!586535 (= (list!8853 (BalanceConc!14437 Empty!7310)) (list!8856 (c!312512 (BalanceConc!14437 Empty!7310))))))

(declare-fun bs!414544 () Bool)

(assert (= bs!414544 d!586535))

(declare-fun m!2360385 () Bool)

(assert (=> bs!414544 m!2360385))

(assert (=> d!586015 d!586535))

(assert (=> d!586015 d!586259))

(declare-fun d!586537 () Bool)

(assert (=> d!586537 (= (list!8853 lt!737294) (list!8856 (c!312512 lt!737294)))))

(declare-fun bs!414545 () Bool)

(assert (= bs!414545 d!586537))

(declare-fun m!2360387 () Bool)

(assert (=> bs!414545 m!2360387))

(assert (=> d!586015 d!586537))

(declare-fun b!1924676 () Bool)

(declare-fun e!1230331 () Bool)

(declare-fun e!1230329 () Bool)

(assert (=> b!1924676 (= e!1230331 e!1230329)))

(declare-fun res!860696 () Bool)

(assert (=> b!1924676 (=> res!860696 e!1230329)))

(declare-fun call!118309 () Bool)

(assert (=> b!1924676 (= res!860696 call!118309)))

(declare-fun b!1924677 () Bool)

(declare-fun e!1230334 () Bool)

(assert (=> b!1924677 (= e!1230334 (nullable!1605 (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043))))))

(declare-fun bm!118304 () Bool)

(assert (=> bm!118304 (= call!118309 (isEmpty!13485 (tail!2972 lt!737043)))))

(declare-fun b!1924678 () Bool)

(declare-fun res!860703 () Bool)

(declare-fun e!1230332 () Bool)

(assert (=> b!1924678 (=> res!860703 e!1230332)))

(declare-fun e!1230328 () Bool)

(assert (=> b!1924678 (= res!860703 e!1230328)))

(declare-fun res!860702 () Bool)

(assert (=> b!1924678 (=> (not res!860702) (not e!1230328))))

(declare-fun lt!737628 () Bool)

(assert (=> b!1924678 (= res!860702 lt!737628)))

(declare-fun b!1924679 () Bool)

(declare-fun res!860697 () Bool)

(assert (=> b!1924679 (=> (not res!860697) (not e!1230328))))

(assert (=> b!1924679 (= res!860697 (isEmpty!13485 (tail!2972 (tail!2972 lt!737043))))))

(declare-fun b!1924680 () Bool)

(assert (=> b!1924680 (= e!1230332 e!1230331)))

(declare-fun res!860701 () Bool)

(assert (=> b!1924680 (=> (not res!860701) (not e!1230331))))

(assert (=> b!1924680 (= res!860701 (not lt!737628))))

(declare-fun b!1924681 () Bool)

(assert (=> b!1924681 (= e!1230334 (matchR!2621 (derivativeStep!1364 (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043)) (head!4484 (tail!2972 lt!737043))) (tail!2972 (tail!2972 lt!737043))))))

(declare-fun b!1924682 () Bool)

(assert (=> b!1924682 (= e!1230329 (not (= (head!4484 (tail!2972 lt!737043)) (c!312513 (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043))))))))

(declare-fun d!586539 () Bool)

(declare-fun e!1230330 () Bool)

(assert (=> d!586539 e!1230330))

(declare-fun c!312890 () Bool)

(assert (=> d!586539 (= c!312890 ((_ is EmptyExpr!5353) (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043))))))

(assert (=> d!586539 (= lt!737628 e!1230334)))

(declare-fun c!312891 () Bool)

(assert (=> d!586539 (= c!312891 (isEmpty!13485 (tail!2972 lt!737043)))))

(assert (=> d!586539 (validRegex!2131 (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043)))))

(assert (=> d!586539 (= (matchR!2621 (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043)) (tail!2972 lt!737043)) lt!737628)))

(declare-fun b!1924683 () Bool)

(declare-fun res!860698 () Bool)

(assert (=> b!1924683 (=> res!860698 e!1230329)))

(assert (=> b!1924683 (= res!860698 (not (isEmpty!13485 (tail!2972 (tail!2972 lt!737043)))))))

(declare-fun b!1924684 () Bool)

(declare-fun res!860700 () Bool)

(assert (=> b!1924684 (=> (not res!860700) (not e!1230328))))

(assert (=> b!1924684 (= res!860700 (not call!118309))))

(declare-fun b!1924685 () Bool)

(declare-fun e!1230333 () Bool)

(assert (=> b!1924685 (= e!1230330 e!1230333)))

(declare-fun c!312892 () Bool)

(assert (=> b!1924685 (= c!312892 ((_ is EmptyLang!5353) (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043))))))

(declare-fun b!1924686 () Bool)

(assert (=> b!1924686 (= e!1230328 (= (head!4484 (tail!2972 lt!737043)) (c!312513 (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043)))))))

(declare-fun b!1924687 () Bool)

(declare-fun res!860699 () Bool)

(assert (=> b!1924687 (=> res!860699 e!1230332)))

(assert (=> b!1924687 (= res!860699 (not ((_ is ElementMatch!5353) (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043)))))))

(assert (=> b!1924687 (= e!1230333 e!1230332)))

(declare-fun b!1924688 () Bool)

(assert (=> b!1924688 (= e!1230333 (not lt!737628))))

(declare-fun b!1924689 () Bool)

(assert (=> b!1924689 (= e!1230330 (= lt!737628 call!118309))))

(assert (= (and d!586539 c!312891) b!1924677))

(assert (= (and d!586539 (not c!312891)) b!1924681))

(assert (= (and d!586539 c!312890) b!1924689))

(assert (= (and d!586539 (not c!312890)) b!1924685))

(assert (= (and b!1924685 c!312892) b!1924688))

(assert (= (and b!1924685 (not c!312892)) b!1924687))

(assert (= (and b!1924687 (not res!860699)) b!1924678))

(assert (= (and b!1924678 res!860702) b!1924684))

(assert (= (and b!1924684 res!860700) b!1924679))

(assert (= (and b!1924679 res!860697) b!1924686))

(assert (= (and b!1924678 (not res!860703)) b!1924680))

(assert (= (and b!1924680 res!860701) b!1924676))

(assert (= (and b!1924676 (not res!860696)) b!1924683))

(assert (= (and b!1924683 (not res!860698)) b!1924682))

(assert (= (or b!1924689 b!1924676 b!1924684) bm!118304))

(assert (=> b!1924681 m!2358895))

(declare-fun m!2360389 () Bool)

(assert (=> b!1924681 m!2360389))

(assert (=> b!1924681 m!2358893))

(assert (=> b!1924681 m!2360389))

(declare-fun m!2360391 () Bool)

(assert (=> b!1924681 m!2360391))

(assert (=> b!1924681 m!2358895))

(declare-fun m!2360393 () Bool)

(assert (=> b!1924681 m!2360393))

(assert (=> b!1924681 m!2360391))

(assert (=> b!1924681 m!2360393))

(declare-fun m!2360395 () Bool)

(assert (=> b!1924681 m!2360395))

(assert (=> b!1924677 m!2358893))

(declare-fun m!2360397 () Bool)

(assert (=> b!1924677 m!2360397))

(assert (=> b!1924682 m!2358895))

(assert (=> b!1924682 m!2360389))

(assert (=> b!1924683 m!2358895))

(assert (=> b!1924683 m!2360393))

(assert (=> b!1924683 m!2360393))

(declare-fun m!2360399 () Bool)

(assert (=> b!1924683 m!2360399))

(assert (=> d!586539 m!2358895))

(assert (=> d!586539 m!2358901))

(assert (=> d!586539 m!2358893))

(declare-fun m!2360401 () Bool)

(assert (=> d!586539 m!2360401))

(assert (=> b!1924679 m!2358895))

(assert (=> b!1924679 m!2360393))

(assert (=> b!1924679 m!2360393))

(assert (=> b!1924679 m!2360399))

(assert (=> b!1924686 m!2358895))

(assert (=> b!1924686 m!2360389))

(assert (=> bm!118304 m!2358895))

(assert (=> bm!118304 m!2358901))

(assert (=> b!1923762 d!586539))

(declare-fun bm!118305 () Bool)

(declare-fun call!118310 () Regex!5353)

(declare-fun call!118311 () Regex!5353)

(assert (=> bm!118305 (= call!118310 call!118311)))

(declare-fun c!312894 () Bool)

(declare-fun c!312893 () Bool)

(declare-fun c!312897 () Bool)

(declare-fun bm!118306 () Bool)

(assert (=> bm!118306 (= call!118311 (derivativeStep!1364 (ite c!312894 (regOne!11219 (regex!3928 lt!737042)) (ite c!312893 (reg!5682 (regex!3928 lt!737042)) (ite c!312897 (regTwo!11218 (regex!3928 lt!737042)) (regOne!11218 (regex!3928 lt!737042))))) (head!4484 lt!737043)))))

(declare-fun b!1924690 () Bool)

(assert (=> b!1924690 (= c!312897 (nullable!1605 (regOne!11218 (regex!3928 lt!737042))))))

(declare-fun e!1230335 () Regex!5353)

(declare-fun e!1230338 () Regex!5353)

(assert (=> b!1924690 (= e!1230335 e!1230338)))

(declare-fun b!1924691 () Bool)

(declare-fun e!1230336 () Regex!5353)

(assert (=> b!1924691 (= e!1230336 e!1230335)))

(assert (=> b!1924691 (= c!312893 ((_ is Star!5353) (regex!3928 lt!737042)))))

(declare-fun b!1924692 () Bool)

(declare-fun e!1230339 () Regex!5353)

(declare-fun e!1230337 () Regex!5353)

(assert (=> b!1924692 (= e!1230339 e!1230337)))

(declare-fun c!312896 () Bool)

(assert (=> b!1924692 (= c!312896 ((_ is ElementMatch!5353) (regex!3928 lt!737042)))))

(declare-fun b!1924693 () Bool)

(assert (=> b!1924693 (= e!1230339 EmptyLang!5353)))

(declare-fun b!1924694 () Bool)

(assert (=> b!1924694 (= c!312894 ((_ is Union!5353) (regex!3928 lt!737042)))))

(assert (=> b!1924694 (= e!1230337 e!1230336)))

(declare-fun bm!118307 () Bool)

(declare-fun call!118312 () Regex!5353)

(assert (=> bm!118307 (= call!118312 call!118310)))

(declare-fun d!586541 () Bool)

(declare-fun lt!737629 () Regex!5353)

(assert (=> d!586541 (validRegex!2131 lt!737629)))

(assert (=> d!586541 (= lt!737629 e!1230339)))

(declare-fun c!312895 () Bool)

(assert (=> d!586541 (= c!312895 (or ((_ is EmptyExpr!5353) (regex!3928 lt!737042)) ((_ is EmptyLang!5353) (regex!3928 lt!737042))))))

(assert (=> d!586541 (validRegex!2131 (regex!3928 lt!737042))))

(assert (=> d!586541 (= (derivativeStep!1364 (regex!3928 lt!737042) (head!4484 lt!737043)) lt!737629)))

(declare-fun b!1924695 () Bool)

(assert (=> b!1924695 (= e!1230335 (Concat!9418 call!118310 (regex!3928 lt!737042)))))

(declare-fun b!1924696 () Bool)

(assert (=> b!1924696 (= e!1230337 (ite (= (head!4484 lt!737043) (c!312513 (regex!3928 lt!737042))) EmptyExpr!5353 EmptyLang!5353))))

(declare-fun call!118313 () Regex!5353)

(declare-fun b!1924697 () Bool)

(assert (=> b!1924697 (= e!1230338 (Union!5353 (Concat!9418 call!118313 (regTwo!11218 (regex!3928 lt!737042))) call!118312))))

(declare-fun b!1924698 () Bool)

(assert (=> b!1924698 (= e!1230338 (Union!5353 (Concat!9418 call!118312 (regTwo!11218 (regex!3928 lt!737042))) EmptyLang!5353))))

(declare-fun bm!118308 () Bool)

(assert (=> bm!118308 (= call!118313 (derivativeStep!1364 (ite c!312894 (regTwo!11219 (regex!3928 lt!737042)) (regOne!11218 (regex!3928 lt!737042))) (head!4484 lt!737043)))))

(declare-fun b!1924699 () Bool)

(assert (=> b!1924699 (= e!1230336 (Union!5353 call!118311 call!118313))))

(assert (= (and d!586541 c!312895) b!1924693))

(assert (= (and d!586541 (not c!312895)) b!1924692))

(assert (= (and b!1924692 c!312896) b!1924696))

(assert (= (and b!1924692 (not c!312896)) b!1924694))

(assert (= (and b!1924694 c!312894) b!1924699))

(assert (= (and b!1924694 (not c!312894)) b!1924691))

(assert (= (and b!1924691 c!312893) b!1924695))

(assert (= (and b!1924691 (not c!312893)) b!1924690))

(assert (= (and b!1924690 c!312897) b!1924697))

(assert (= (and b!1924690 (not c!312897)) b!1924698))

(assert (= (or b!1924697 b!1924698) bm!118307))

(assert (= (or b!1924695 bm!118307) bm!118305))

(assert (= (or b!1924699 bm!118305) bm!118306))

(assert (= (or b!1924699 b!1924697) bm!118308))

(assert (=> bm!118306 m!2358001))

(declare-fun m!2360403 () Bool)

(assert (=> bm!118306 m!2360403))

(declare-fun m!2360405 () Bool)

(assert (=> b!1924690 m!2360405))

(declare-fun m!2360407 () Bool)

(assert (=> d!586541 m!2360407))

(assert (=> d!586541 m!2358905))

(assert (=> bm!118308 m!2358001))

(declare-fun m!2360409 () Bool)

(assert (=> bm!118308 m!2360409))

(assert (=> b!1923762 d!586541))

(assert (=> b!1923762 d!586001))

(assert (=> b!1923762 d!586479))

(declare-fun d!586543 () Bool)

(declare-fun c!312898 () Bool)

(assert (=> d!586543 (= c!312898 ((_ is Nil!21906) lt!737231))))

(declare-fun e!1230340 () (InoxSet C!10852))

(assert (=> d!586543 (= (content!3163 lt!737231) e!1230340)))

(declare-fun b!1924700 () Bool)

(assert (=> b!1924700 (= e!1230340 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924701 () Bool)

(assert (=> b!1924701 (= e!1230340 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 lt!737231) true) (content!3163 (t!179043 lt!737231))))))

(assert (= (and d!586543 c!312898) b!1924700))

(assert (= (and d!586543 (not c!312898)) b!1924701))

(declare-fun m!2360411 () Bool)

(assert (=> b!1924701 m!2360411))

(declare-fun m!2360413 () Bool)

(assert (=> b!1924701 m!2360413))

(assert (=> d!585977 d!586543))

(assert (=> d!585977 d!586239))

(declare-fun d!586545 () Bool)

(declare-fun c!312899 () Bool)

(assert (=> d!586545 (= c!312899 ((_ is Nil!21906) (++!5869 lt!737043 lt!737059)))))

(declare-fun e!1230341 () (InoxSet C!10852))

(assert (=> d!586545 (= (content!3163 (++!5869 lt!737043 lt!737059)) e!1230341)))

(declare-fun b!1924702 () Bool)

(assert (=> b!1924702 (= e!1230341 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924703 () Bool)

(assert (=> b!1924703 (= e!1230341 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 (++!5869 lt!737043 lt!737059)) true) (content!3163 (t!179043 (++!5869 lt!737043 lt!737059)))))))

(assert (= (and d!586545 c!312899) b!1924702))

(assert (= (and d!586545 (not c!312899)) b!1924703))

(declare-fun m!2360415 () Bool)

(assert (=> b!1924703 m!2360415))

(declare-fun m!2360417 () Bool)

(assert (=> b!1924703 m!2360417))

(assert (=> d!585977 d!586545))

(declare-fun d!586547 () Bool)

(declare-fun charsToBigInt!1 (List!21989) Int)

(assert (=> d!586547 (= (inv!17 (value!123539 separatorToken!354)) (= (charsToBigInt!1 (text!28896 (value!123539 separatorToken!354))) (value!123531 (value!123539 separatorToken!354))))))

(declare-fun bs!414546 () Bool)

(assert (= bs!414546 d!586547))

(declare-fun m!2360419 () Bool)

(assert (=> bs!414546 m!2360419))

(assert (=> b!1923443 d!586547))

(assert (=> b!1923779 d!586477))

(assert (=> b!1923779 d!586479))

(declare-fun d!586549 () Bool)

(declare-fun c!312900 () Bool)

(assert (=> d!586549 (= c!312900 ((_ is Nil!21906) (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))

(declare-fun e!1230342 () (InoxSet C!10852))

(assert (=> d!586549 (= (content!3163 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))) e!1230342)))

(declare-fun b!1924704 () Bool)

(assert (=> b!1924704 (= e!1230342 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924705 () Bool)

(assert (=> b!1924705 (= e!1230342 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))) true) (content!3163 (t!179043 (usedCharacters!380 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))))

(assert (= (and d!586549 c!312900) b!1924704))

(assert (= (and d!586549 (not c!312900)) b!1924705))

(declare-fun m!2360421 () Bool)

(assert (=> b!1924705 m!2360421))

(assert (=> b!1924705 m!2359417))

(assert (=> d!586007 d!586549))

(declare-fun d!586551 () Bool)

(assert (=> d!586551 (= (isEmpty!13483 lt!737052) (not ((_ is Some!4531) lt!737052)))))

(assert (=> d!585845 d!586551))

(declare-fun call!118314 () List!21988)

(declare-fun bm!118309 () Bool)

(declare-fun c!312901 () Bool)

(assert (=> bm!118309 (= call!118314 (usedCharacters!380 (ite c!312901 (regOne!11219 (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))) (regTwo!11218 (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))))))

(declare-fun b!1924706 () Bool)

(declare-fun e!1230344 () List!21988)

(declare-fun e!1230345 () List!21988)

(assert (=> b!1924706 (= e!1230344 e!1230345)))

(assert (=> b!1924706 (= c!312901 ((_ is Union!5353) (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))))

(declare-fun b!1924707 () Bool)

(declare-fun e!1230346 () List!21988)

(assert (=> b!1924707 (= e!1230346 (Cons!21906 (c!312513 (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))) Nil!21906))))

(declare-fun bm!118310 () Bool)

(declare-fun call!118315 () List!21988)

(declare-fun c!312903 () Bool)

(assert (=> bm!118310 (= call!118315 (usedCharacters!380 (ite c!312903 (reg!5682 (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))) (ite c!312901 (regTwo!11219 (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))) (regOne!11218 (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))))))))))

(declare-fun b!1924708 () Bool)

(declare-fun e!1230343 () List!21988)

(assert (=> b!1924708 (= e!1230343 Nil!21906)))

(declare-fun bm!118311 () Bool)

(declare-fun call!118316 () List!21988)

(assert (=> bm!118311 (= call!118316 call!118315)))

(declare-fun bm!118312 () Bool)

(declare-fun call!118317 () List!21988)

(assert (=> bm!118312 (= call!118317 (++!5869 (ite c!312901 call!118314 call!118316) (ite c!312901 call!118316 call!118314)))))

(declare-fun b!1924710 () Bool)

(assert (=> b!1924710 (= e!1230345 call!118317)))

(declare-fun b!1924711 () Bool)

(assert (=> b!1924711 (= e!1230344 call!118315)))

(declare-fun d!586553 () Bool)

(declare-fun c!312904 () Bool)

(assert (=> d!586553 (= c!312904 (or ((_ is EmptyExpr!5353) (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))) ((_ is EmptyLang!5353) (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))))))))

(assert (=> d!586553 (= (usedCharacters!380 (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))) e!1230343)))

(declare-fun b!1924709 () Bool)

(assert (=> b!1924709 (= c!312903 ((_ is Star!5353) (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))))

(assert (=> b!1924709 (= e!1230346 e!1230344)))

(declare-fun b!1924712 () Bool)

(assert (=> b!1924712 (= e!1230345 call!118317)))

(declare-fun b!1924713 () Bool)

(assert (=> b!1924713 (= e!1230343 e!1230346)))

(declare-fun c!312902 () Bool)

(assert (=> b!1924713 (= c!312902 ((_ is ElementMatch!5353) (ite c!312652 (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (ite c!312650 (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))))

(assert (= (and d!586553 c!312904) b!1924708))

(assert (= (and d!586553 (not c!312904)) b!1924713))

(assert (= (and b!1924713 c!312902) b!1924707))

(assert (= (and b!1924713 (not c!312902)) b!1924709))

(assert (= (and b!1924709 c!312903) b!1924711))

(assert (= (and b!1924709 (not c!312903)) b!1924706))

(assert (= (and b!1924706 c!312901) b!1924712))

(assert (= (and b!1924706 (not c!312901)) b!1924710))

(assert (= (or b!1924712 b!1924710) bm!118309))

(assert (= (or b!1924712 b!1924710) bm!118311))

(assert (= (or b!1924712 b!1924710) bm!118312))

(assert (= (or b!1924711 bm!118311) bm!118310))

(declare-fun m!2360423 () Bool)

(assert (=> bm!118309 m!2360423))

(declare-fun m!2360425 () Bool)

(assert (=> bm!118310 m!2360425))

(declare-fun m!2360427 () Bool)

(assert (=> bm!118312 m!2360427))

(assert (=> bm!118220 d!586553))

(declare-fun d!586555 () Bool)

(declare-fun e!1230349 () Bool)

(assert (=> d!586555 e!1230349))

(declare-fun res!860710 () Bool)

(assert (=> d!586555 (=> res!860710 e!1230349)))

(declare-fun lt!737633 () Option!4532)

(assert (=> d!586555 (= res!860710 (isEmpty!13483 lt!737633))))

(declare-fun e!1230348 () Option!4532)

(assert (=> d!586555 (= lt!737633 e!1230348)))

(declare-fun c!312905 () Bool)

(declare-fun lt!737632 () tuple2!20526)

(assert (=> d!586555 (= c!312905 (isEmpty!13485 (_1!11732 lt!737632)))))

(assert (=> d!586555 (= lt!737632 (findLongestMatch!460 (regex!3928 (h!27310 rules!3198)) (++!5869 lt!737051 lt!737059)))))

(assert (=> d!586555 (ruleValid!1193 thiss!23328 (h!27310 rules!3198))))

(assert (=> d!586555 (= (maxPrefixOneRule!1219 thiss!23328 (h!27310 rules!3198) (++!5869 lt!737051 lt!737059)) lt!737633)))

(declare-fun b!1924714 () Bool)

(declare-fun e!1230347 () Bool)

(assert (=> b!1924714 (= e!1230347 (matchR!2621 (regex!3928 (h!27310 rules!3198)) (_1!11732 (findLongestMatchInner!533 (regex!3928 (h!27310 rules!3198)) Nil!21906 (size!17091 Nil!21906) (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059) (size!17091 (++!5869 lt!737051 lt!737059))))))))

(declare-fun b!1924715 () Bool)

(declare-fun res!860707 () Bool)

(declare-fun e!1230350 () Bool)

(assert (=> b!1924715 (=> (not res!860707) (not e!1230350))))

(assert (=> b!1924715 (= res!860707 (= (rule!6131 (_1!11728 (get!6893 lt!737633))) (h!27310 rules!3198)))))

(declare-fun b!1924716 () Bool)

(declare-fun res!860708 () Bool)

(assert (=> b!1924716 (=> (not res!860708) (not e!1230350))))

(assert (=> b!1924716 (= res!860708 (= (value!123539 (_1!11728 (get!6893 lt!737633))) (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737633)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737633)))))))))

(declare-fun b!1924717 () Bool)

(declare-fun res!860705 () Bool)

(assert (=> b!1924717 (=> (not res!860705) (not e!1230350))))

(assert (=> b!1924717 (= res!860705 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737633)))) (_2!11728 (get!6893 lt!737633))) (++!5869 lt!737051 lt!737059)))))

(declare-fun b!1924718 () Bool)

(declare-fun res!860706 () Bool)

(assert (=> b!1924718 (=> (not res!860706) (not e!1230350))))

(assert (=> b!1924718 (= res!860706 (< (size!17091 (_2!11728 (get!6893 lt!737633))) (size!17091 (++!5869 lt!737051 lt!737059))))))

(declare-fun b!1924719 () Bool)

(assert (=> b!1924719 (= e!1230350 (= (size!17088 (_1!11728 (get!6893 lt!737633))) (size!17091 (originalCharacters!4735 (_1!11728 (get!6893 lt!737633))))))))

(declare-fun b!1924720 () Bool)

(assert (=> b!1924720 (= e!1230348 None!4531)))

(declare-fun b!1924721 () Bool)

(assert (=> b!1924721 (= e!1230348 (Some!4531 (tuple2!20519 (Token!7409 (apply!5680 (transformation!3928 (h!27310 rules!3198)) (seqFromList!2782 (_1!11732 lt!737632))) (h!27310 rules!3198) (size!17094 (seqFromList!2782 (_1!11732 lt!737632))) (_1!11732 lt!737632)) (_2!11732 lt!737632))))))

(declare-fun lt!737631 () Unit!36232)

(assert (=> b!1924721 (= lt!737631 (longestMatchIsAcceptedByMatchOrIsEmpty!517 (regex!3928 (h!27310 rules!3198)) (++!5869 lt!737051 lt!737059)))))

(declare-fun res!860709 () Bool)

(assert (=> b!1924721 (= res!860709 (isEmpty!13485 (_1!11732 (findLongestMatchInner!533 (regex!3928 (h!27310 rules!3198)) Nil!21906 (size!17091 Nil!21906) (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059) (size!17091 (++!5869 lt!737051 lt!737059))))))))

(assert (=> b!1924721 (=> res!860709 e!1230347)))

(assert (=> b!1924721 e!1230347))

(declare-fun lt!737634 () Unit!36232)

(assert (=> b!1924721 (= lt!737634 lt!737631)))

(declare-fun lt!737630 () Unit!36232)

(assert (=> b!1924721 (= lt!737630 (lemmaSemiInverse!885 (transformation!3928 (h!27310 rules!3198)) (seqFromList!2782 (_1!11732 lt!737632))))))

(declare-fun b!1924722 () Bool)

(assert (=> b!1924722 (= e!1230349 e!1230350)))

(declare-fun res!860704 () Bool)

(assert (=> b!1924722 (=> (not res!860704) (not e!1230350))))

(assert (=> b!1924722 (= res!860704 (matchR!2621 (regex!3928 (h!27310 rules!3198)) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737633))))))))

(assert (= (and d!586555 c!312905) b!1924720))

(assert (= (and d!586555 (not c!312905)) b!1924721))

(assert (= (and b!1924721 (not res!860709)) b!1924714))

(assert (= (and d!586555 (not res!860710)) b!1924722))

(assert (= (and b!1924722 res!860704) b!1924717))

(assert (= (and b!1924717 res!860705) b!1924718))

(assert (= (and b!1924718 res!860706) b!1924715))

(assert (= (and b!1924715 res!860707) b!1924716))

(assert (= (and b!1924716 res!860708) b!1924719))

(declare-fun m!2360429 () Bool)

(assert (=> b!1924718 m!2360429))

(declare-fun m!2360431 () Bool)

(assert (=> b!1924718 m!2360431))

(assert (=> b!1924718 m!2358019))

(assert (=> b!1924718 m!2358207))

(assert (=> b!1924715 m!2360429))

(declare-fun m!2360433 () Bool)

(assert (=> d!586555 m!2360433))

(declare-fun m!2360435 () Bool)

(assert (=> d!586555 m!2360435))

(assert (=> d!586555 m!2358019))

(declare-fun m!2360437 () Bool)

(assert (=> d!586555 m!2360437))

(assert (=> d!586555 m!2359239))

(assert (=> b!1924716 m!2360429))

(declare-fun m!2360439 () Bool)

(assert (=> b!1924716 m!2360439))

(assert (=> b!1924716 m!2360439))

(declare-fun m!2360441 () Bool)

(assert (=> b!1924716 m!2360441))

(assert (=> b!1924717 m!2360429))

(declare-fun m!2360443 () Bool)

(assert (=> b!1924717 m!2360443))

(assert (=> b!1924717 m!2360443))

(declare-fun m!2360445 () Bool)

(assert (=> b!1924717 m!2360445))

(assert (=> b!1924717 m!2360445))

(declare-fun m!2360447 () Bool)

(assert (=> b!1924717 m!2360447))

(assert (=> b!1924722 m!2360429))

(assert (=> b!1924722 m!2360443))

(assert (=> b!1924722 m!2360443))

(assert (=> b!1924722 m!2360445))

(assert (=> b!1924722 m!2360445))

(declare-fun m!2360449 () Bool)

(assert (=> b!1924722 m!2360449))

(assert (=> b!1924714 m!2359253))

(assert (=> b!1924714 m!2358019))

(assert (=> b!1924714 m!2358207))

(assert (=> b!1924714 m!2359253))

(assert (=> b!1924714 m!2358019))

(assert (=> b!1924714 m!2358019))

(assert (=> b!1924714 m!2358207))

(declare-fun m!2360451 () Bool)

(assert (=> b!1924714 m!2360451))

(declare-fun m!2360453 () Bool)

(assert (=> b!1924714 m!2360453))

(assert (=> b!1924721 m!2358019))

(declare-fun m!2360455 () Bool)

(assert (=> b!1924721 m!2360455))

(declare-fun m!2360457 () Bool)

(assert (=> b!1924721 m!2360457))

(declare-fun m!2360459 () Bool)

(assert (=> b!1924721 m!2360459))

(assert (=> b!1924721 m!2359253))

(assert (=> b!1924721 m!2360459))

(declare-fun m!2360461 () Bool)

(assert (=> b!1924721 m!2360461))

(assert (=> b!1924721 m!2359253))

(assert (=> b!1924721 m!2358019))

(assert (=> b!1924721 m!2358019))

(assert (=> b!1924721 m!2358207))

(assert (=> b!1924721 m!2360451))

(assert (=> b!1924721 m!2358019))

(assert (=> b!1924721 m!2358207))

(assert (=> b!1924721 m!2360459))

(declare-fun m!2360463 () Bool)

(assert (=> b!1924721 m!2360463))

(assert (=> b!1924721 m!2360459))

(declare-fun m!2360465 () Bool)

(assert (=> b!1924721 m!2360465))

(assert (=> b!1924719 m!2360429))

(declare-fun m!2360467 () Bool)

(assert (=> b!1924719 m!2360467))

(assert (=> bm!118154 d!586555))

(assert (=> d!586059 d!586491))

(declare-fun bm!118319 () Bool)

(declare-fun call!118324 () Bool)

(declare-fun c!312910 () Bool)

(assert (=> bm!118319 (= call!118324 (validRegex!2131 (ite c!312910 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))))))

(declare-fun b!1924741 () Bool)

(declare-fun res!860724 () Bool)

(declare-fun e!1230365 () Bool)

(assert (=> b!1924741 (=> (not res!860724) (not e!1230365))))

(declare-fun call!118325 () Bool)

(assert (=> b!1924741 (= res!860724 call!118325)))

(declare-fun e!1230366 () Bool)

(assert (=> b!1924741 (= e!1230366 e!1230365)))

(declare-fun b!1924742 () Bool)

(assert (=> b!1924742 (= e!1230365 call!118324)))

(declare-fun c!312911 () Bool)

(declare-fun bm!118320 () Bool)

(declare-fun call!118326 () Bool)

(assert (=> bm!118320 (= call!118326 (validRegex!2131 (ite c!312911 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312910 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))))))

(declare-fun b!1924743 () Bool)

(declare-fun e!1230370 () Bool)

(assert (=> b!1924743 (= e!1230370 call!118324)))

(declare-fun b!1924744 () Bool)

(declare-fun e!1230369 () Bool)

(assert (=> b!1924744 (= e!1230369 e!1230370)))

(declare-fun res!860722 () Bool)

(assert (=> b!1924744 (=> (not res!860722) (not e!1230370))))

(assert (=> b!1924744 (= res!860722 call!118325)))

(declare-fun b!1924745 () Bool)

(declare-fun e!1230368 () Bool)

(declare-fun e!1230371 () Bool)

(assert (=> b!1924745 (= e!1230368 e!1230371)))

(declare-fun res!860721 () Bool)

(assert (=> b!1924745 (= res!860721 (not (nullable!1605 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))))))))

(assert (=> b!1924745 (=> (not res!860721) (not e!1230371))))

(declare-fun bm!118321 () Bool)

(assert (=> bm!118321 (= call!118325 call!118326)))

(declare-fun d!586557 () Bool)

(declare-fun res!860725 () Bool)

(declare-fun e!1230367 () Bool)

(assert (=> d!586557 (=> res!860725 e!1230367)))

(assert (=> d!586557 (= res!860725 ((_ is ElementMatch!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(assert (=> d!586557 (= (validRegex!2131 (regex!3928 (rule!6131 separatorToken!354))) e!1230367)))

(declare-fun b!1924746 () Bool)

(assert (=> b!1924746 (= e!1230368 e!1230366)))

(assert (=> b!1924746 (= c!312910 ((_ is Union!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun b!1924747 () Bool)

(assert (=> b!1924747 (= e!1230367 e!1230368)))

(assert (=> b!1924747 (= c!312911 ((_ is Star!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun b!1924748 () Bool)

(assert (=> b!1924748 (= e!1230371 call!118326)))

(declare-fun b!1924749 () Bool)

(declare-fun res!860723 () Bool)

(assert (=> b!1924749 (=> res!860723 e!1230369)))

(assert (=> b!1924749 (= res!860723 (not ((_ is Concat!9418) (regex!3928 (rule!6131 separatorToken!354)))))))

(assert (=> b!1924749 (= e!1230366 e!1230369)))

(assert (= (and d!586557 (not res!860725)) b!1924747))

(assert (= (and b!1924747 c!312911) b!1924745))

(assert (= (and b!1924747 (not c!312911)) b!1924746))

(assert (= (and b!1924745 res!860721) b!1924748))

(assert (= (and b!1924746 c!312910) b!1924741))

(assert (= (and b!1924746 (not c!312910)) b!1924749))

(assert (= (and b!1924741 res!860724) b!1924742))

(assert (= (and b!1924749 (not res!860723)) b!1924744))

(assert (= (and b!1924744 res!860722) b!1924743))

(assert (= (or b!1924741 b!1924744) bm!118321))

(assert (= (or b!1924742 b!1924743) bm!118319))

(assert (= (or b!1924748 bm!118321) bm!118320))

(declare-fun m!2360469 () Bool)

(assert (=> bm!118319 m!2360469))

(declare-fun m!2360471 () Bool)

(assert (=> bm!118320 m!2360471))

(declare-fun m!2360473 () Bool)

(assert (=> b!1924745 m!2360473))

(assert (=> d!586059 d!586557))

(declare-fun d!586559 () Bool)

(assert (=> d!586559 (= (isEmpty!13484 lt!737196) (not ((_ is Some!4530) lt!737196)))))

(assert (=> d!585901 d!586559))

(assert (=> d!585901 d!586063))

(declare-fun d!586561 () Bool)

(assert (=> d!586561 (= (list!8853 lt!737242) (list!8856 (c!312512 lt!737242)))))

(declare-fun bs!414547 () Bool)

(assert (= bs!414547 d!586561))

(declare-fun m!2360475 () Bool)

(assert (=> bs!414547 m!2360475))

(assert (=> d!585991 d!586561))

(declare-fun d!586563 () Bool)

(declare-fun c!312912 () Bool)

(assert (=> d!586563 (= c!312912 ((_ is Cons!21908) (list!8857 lt!737061)))))

(declare-fun e!1230372 () List!21988)

(assert (=> d!586563 (= (printList!1076 thiss!23328 (list!8857 lt!737061)) e!1230372)))

(declare-fun b!1924750 () Bool)

(assert (=> b!1924750 (= e!1230372 (++!5869 (list!8853 (charsOf!2468 (h!27309 (list!8857 lt!737061)))) (printList!1076 thiss!23328 (t!179045 (list!8857 lt!737061)))))))

(declare-fun b!1924751 () Bool)

(assert (=> b!1924751 (= e!1230372 Nil!21906)))

(assert (= (and d!586563 c!312912) b!1924750))

(assert (= (and d!586563 (not c!312912)) b!1924751))

(declare-fun m!2360477 () Bool)

(assert (=> b!1924750 m!2360477))

(assert (=> b!1924750 m!2360477))

(declare-fun m!2360479 () Bool)

(assert (=> b!1924750 m!2360479))

(declare-fun m!2360481 () Bool)

(assert (=> b!1924750 m!2360481))

(assert (=> b!1924750 m!2360479))

(assert (=> b!1924750 m!2360481))

(declare-fun m!2360483 () Bool)

(assert (=> b!1924750 m!2360483))

(assert (=> d!585991 d!586563))

(declare-fun d!586565 () Bool)

(assert (=> d!586565 (= (list!8857 lt!737061) (list!8861 (c!312514 lt!737061)))))

(declare-fun bs!414548 () Bool)

(assert (= bs!414548 d!586565))

(assert (=> bs!414548 m!2360311))

(assert (=> d!585991 d!586565))

(assert (=> d!585991 d!586015))

(declare-fun d!586567 () Bool)

(declare-fun res!860726 () Bool)

(declare-fun e!1230373 () Bool)

(assert (=> d!586567 (=> (not res!860726) (not e!1230373))))

(assert (=> d!586567 (= res!860726 (not (isEmpty!13485 (originalCharacters!4735 (h!27309 (t!179045 tokens!598))))))))

(assert (=> d!586567 (= (inv!28980 (h!27309 (t!179045 tokens!598))) e!1230373)))

(declare-fun b!1924752 () Bool)

(declare-fun res!860727 () Bool)

(assert (=> b!1924752 (=> (not res!860727) (not e!1230373))))

(assert (=> b!1924752 (= res!860727 (= (originalCharacters!4735 (h!27309 (t!179045 tokens!598))) (list!8853 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (value!123539 (h!27309 (t!179045 tokens!598)))))))))

(declare-fun b!1924753 () Bool)

(assert (=> b!1924753 (= e!1230373 (= (size!17088 (h!27309 (t!179045 tokens!598))) (size!17091 (originalCharacters!4735 (h!27309 (t!179045 tokens!598))))))))

(assert (= (and d!586567 res!860726) b!1924752))

(assert (= (and b!1924752 res!860727) b!1924753))

(declare-fun b_lambda!63673 () Bool)

(assert (=> (not b_lambda!63673) (not b!1924752)))

(assert (=> b!1924752 t!179174))

(declare-fun b_and!150685 () Bool)

(assert (= b_and!150621 (and (=> t!179174 result!142144) b_and!150685)))

(assert (=> b!1924752 t!179178))

(declare-fun b_and!150687 () Bool)

(assert (= b_and!150619 (and (=> t!179178 result!142148) b_and!150687)))

(assert (=> b!1924752 t!179176))

(declare-fun b_and!150689 () Bool)

(assert (= b_and!150617 (and (=> t!179176 result!142146) b_and!150689)))

(assert (=> b!1924752 t!179172))

(declare-fun b_and!150691 () Bool)

(assert (= b_and!150615 (and (=> t!179172 result!142142) b_and!150691)))

(assert (=> b!1924752 t!179180))

(declare-fun b_and!150693 () Bool)

(assert (= b_and!150623 (and (=> t!179180 result!142150) b_and!150693)))

(declare-fun m!2360485 () Bool)

(assert (=> d!586567 m!2360485))

(assert (=> b!1924752 m!2359291))

(assert (=> b!1924752 m!2359291))

(declare-fun m!2360487 () Bool)

(assert (=> b!1924752 m!2360487))

(declare-fun m!2360489 () Bool)

(assert (=> b!1924753 m!2360489))

(assert (=> b!1923830 d!586567))

(assert (=> b!1923775 d!586477))

(assert (=> b!1923775 d!586479))

(declare-fun d!586569 () Bool)

(declare-fun res!860732 () Bool)

(declare-fun e!1230378 () Bool)

(assert (=> d!586569 (=> res!860732 e!1230378)))

(assert (=> d!586569 (= res!860732 ((_ is Nil!21909) rules!3198))))

(assert (=> d!586569 (= (noDuplicateTag!1446 thiss!23328 rules!3198 Nil!21911) e!1230378)))

(declare-fun b!1924758 () Bool)

(declare-fun e!1230379 () Bool)

(assert (=> b!1924758 (= e!1230378 e!1230379)))

(declare-fun res!860733 () Bool)

(assert (=> b!1924758 (=> (not res!860733) (not e!1230379))))

(declare-fun contains!3956 (List!21993 String!25438) Bool)

(assert (=> b!1924758 (= res!860733 (not (contains!3956 Nil!21911 (tag!4370 (h!27310 rules!3198)))))))

(declare-fun b!1924759 () Bool)

(assert (=> b!1924759 (= e!1230379 (noDuplicateTag!1446 thiss!23328 (t!179046 rules!3198) (Cons!21911 (tag!4370 (h!27310 rules!3198)) Nil!21911)))))

(assert (= (and d!586569 (not res!860732)) b!1924758))

(assert (= (and b!1924758 res!860733) b!1924759))

(declare-fun m!2360491 () Bool)

(assert (=> b!1924758 m!2360491))

(declare-fun m!2360493 () Bool)

(assert (=> b!1924759 m!2360493))

(assert (=> b!1923788 d!586569))

(declare-fun d!586571 () Bool)

(declare-fun c!312913 () Bool)

(assert (=> d!586571 (= c!312913 ((_ is Nil!21906) lt!737232))))

(declare-fun e!1230380 () (InoxSet C!10852))

(assert (=> d!586571 (= (content!3163 lt!737232) e!1230380)))

(declare-fun b!1924760 () Bool)

(assert (=> b!1924760 (= e!1230380 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924761 () Bool)

(assert (=> b!1924761 (= e!1230380 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 lt!737232) true) (content!3163 (t!179043 lt!737232))))))

(assert (= (and d!586571 c!312913) b!1924760))

(assert (= (and d!586571 (not c!312913)) b!1924761))

(declare-fun m!2360495 () Bool)

(assert (=> b!1924761 m!2360495))

(declare-fun m!2360497 () Bool)

(assert (=> b!1924761 m!2360497))

(assert (=> d!585983 d!586571))

(declare-fun d!586573 () Bool)

(declare-fun c!312914 () Bool)

(assert (=> d!586573 (= c!312914 ((_ is Nil!21906) (++!5869 lt!737051 lt!737043)))))

(declare-fun e!1230381 () (InoxSet C!10852))

(assert (=> d!586573 (= (content!3163 (++!5869 lt!737051 lt!737043)) e!1230381)))

(declare-fun b!1924762 () Bool)

(assert (=> b!1924762 (= e!1230381 ((as const (Array C!10852 Bool)) false))))

(declare-fun b!1924763 () Bool)

(assert (=> b!1924763 (= e!1230381 ((_ map or) (store ((as const (Array C!10852 Bool)) false) (h!27307 (++!5869 lt!737051 lt!737043)) true) (content!3163 (t!179043 (++!5869 lt!737051 lt!737043)))))))

(assert (= (and d!586573 c!312914) b!1924762))

(assert (= (and d!586573 (not c!312914)) b!1924763))

(declare-fun m!2360499 () Bool)

(assert (=> b!1924763 m!2360499))

(assert (=> b!1924763 m!2360237))

(assert (=> d!585983 d!586573))

(assert (=> d!585983 d!586125))

(declare-fun bs!414549 () Bool)

(declare-fun d!586575 () Bool)

(assert (= bs!414549 (and d!586575 d!585847)))

(declare-fun lambda!75124 () Int)

(assert (=> bs!414549 (= (and (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (= lambda!75124 lambda!75074))))

(declare-fun bs!414550 () Bool)

(assert (= bs!414550 (and d!586575 d!586141)))

(assert (=> bs!414550 (= (and (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))))) (= lambda!75124 lambda!75099))))

(declare-fun bs!414551 () Bool)

(assert (= bs!414551 (and d!586575 d!586287)))

(assert (=> bs!414551 (= (and (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))))) (= lambda!75124 lambda!75118))))

(assert (=> d!586575 true))

(assert (=> d!586575 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10589 order!13719 lambda!75124))))

(assert (=> d!586575 true))

(assert (=> d!586575 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (dynLambda!10589 order!13719 lambda!75124))))

(assert (=> d!586575 (= (semiInverseModEq!1561 (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (Forall!998 lambda!75124))))

(declare-fun bs!414552 () Bool)

(assert (= bs!414552 d!586575))

(declare-fun m!2360501 () Bool)

(assert (=> bs!414552 m!2360501))

(assert (=> d!586055 d!586575))

(declare-fun b!1924776 () Bool)

(declare-fun res!860748 () Bool)

(declare-fun e!1230387 () Bool)

(assert (=> b!1924776 (=> (not res!860748) (not e!1230387))))

(assert (=> b!1924776 (= res!860748 (isBalanced!2253 (right!17755 (c!312514 lt!737252))))))

(declare-fun b!1924777 () Bool)

(declare-fun isEmpty!13489 (Conc!7311) Bool)

(assert (=> b!1924777 (= e!1230387 (not (isEmpty!13489 (right!17755 (c!312514 lt!737252)))))))

(declare-fun b!1924778 () Bool)

(declare-fun e!1230386 () Bool)

(assert (=> b!1924778 (= e!1230386 e!1230387)))

(declare-fun res!860749 () Bool)

(assert (=> b!1924778 (=> (not res!860749) (not e!1230387))))

(declare-fun height!1104 (Conc!7311) Int)

(assert (=> b!1924778 (= res!860749 (<= (- 1) (- (height!1104 (left!17425 (c!312514 lt!737252))) (height!1104 (right!17755 (c!312514 lt!737252))))))))

(declare-fun d!586577 () Bool)

(declare-fun res!860747 () Bool)

(assert (=> d!586577 (=> res!860747 e!1230386)))

(assert (=> d!586577 (= res!860747 (not ((_ is Node!7311) (c!312514 lt!737252))))))

(assert (=> d!586577 (= (isBalanced!2253 (c!312514 lt!737252)) e!1230386)))

(declare-fun b!1924779 () Bool)

(declare-fun res!860751 () Bool)

(assert (=> b!1924779 (=> (not res!860751) (not e!1230387))))

(assert (=> b!1924779 (= res!860751 (isBalanced!2253 (left!17425 (c!312514 lt!737252))))))

(declare-fun b!1924780 () Bool)

(declare-fun res!860746 () Bool)

(assert (=> b!1924780 (=> (not res!860746) (not e!1230387))))

(assert (=> b!1924780 (= res!860746 (<= (- (height!1104 (left!17425 (c!312514 lt!737252))) (height!1104 (right!17755 (c!312514 lt!737252)))) 1))))

(declare-fun b!1924781 () Bool)

(declare-fun res!860750 () Bool)

(assert (=> b!1924781 (=> (not res!860750) (not e!1230387))))

(assert (=> b!1924781 (= res!860750 (not (isEmpty!13489 (left!17425 (c!312514 lt!737252)))))))

(assert (= (and d!586577 (not res!860747)) b!1924778))

(assert (= (and b!1924778 res!860749) b!1924780))

(assert (= (and b!1924780 res!860746) b!1924779))

(assert (= (and b!1924779 res!860751) b!1924776))

(assert (= (and b!1924776 res!860748) b!1924781))

(assert (= (and b!1924781 res!860750) b!1924777))

(declare-fun m!2360503 () Bool)

(assert (=> b!1924777 m!2360503))

(declare-fun m!2360505 () Bool)

(assert (=> b!1924778 m!2360505))

(declare-fun m!2360507 () Bool)

(assert (=> b!1924778 m!2360507))

(assert (=> b!1924780 m!2360505))

(assert (=> b!1924780 m!2360507))

(declare-fun m!2360509 () Bool)

(assert (=> b!1924779 m!2360509))

(declare-fun m!2360511 () Bool)

(assert (=> b!1924776 m!2360511))

(declare-fun m!2360513 () Bool)

(assert (=> b!1924781 m!2360513))

(assert (=> b!1923620 d!586577))

(declare-fun d!586579 () Bool)

(declare-fun lt!737635 () Int)

(assert (=> d!586579 (>= lt!737635 0)))

(declare-fun e!1230388 () Int)

(assert (=> d!586579 (= lt!737635 e!1230388)))

(declare-fun c!312915 () Bool)

(assert (=> d!586579 (= c!312915 ((_ is Nil!21906) lt!737231))))

(assert (=> d!586579 (= (size!17091 lt!737231) lt!737635)))

(declare-fun b!1924782 () Bool)

(assert (=> b!1924782 (= e!1230388 0)))

(declare-fun b!1924783 () Bool)

(assert (=> b!1924783 (= e!1230388 (+ 1 (size!17091 (t!179043 lt!737231))))))

(assert (= (and d!586579 c!312915) b!1924782))

(assert (= (and d!586579 (not c!312915)) b!1924783))

(declare-fun m!2360515 () Bool)

(assert (=> b!1924783 m!2360515))

(assert (=> b!1923578 d!586579))

(assert (=> b!1923578 d!586115))

(declare-fun d!586581 () Bool)

(declare-fun lt!737636 () Int)

(assert (=> d!586581 (>= lt!737636 0)))

(declare-fun e!1230389 () Int)

(assert (=> d!586581 (= lt!737636 e!1230389)))

(declare-fun c!312916 () Bool)

(assert (=> d!586581 (= c!312916 ((_ is Nil!21906) (++!5869 lt!737043 lt!737059)))))

(assert (=> d!586581 (= (size!17091 (++!5869 lt!737043 lt!737059)) lt!737636)))

(declare-fun b!1924784 () Bool)

(assert (=> b!1924784 (= e!1230389 0)))

(declare-fun b!1924785 () Bool)

(assert (=> b!1924785 (= e!1230389 (+ 1 (size!17091 (t!179043 (++!5869 lt!737043 lt!737059)))))))

(assert (= (and d!586581 c!312916) b!1924784))

(assert (= (and d!586581 (not c!312916)) b!1924785))

(declare-fun m!2360517 () Bool)

(assert (=> b!1924785 m!2360517))

(assert (=> b!1923578 d!586581))

(declare-fun b!1924786 () Bool)

(declare-fun e!1230393 () Bool)

(declare-fun e!1230391 () Bool)

(assert (=> b!1924786 (= e!1230393 e!1230391)))

(declare-fun res!860752 () Bool)

(assert (=> b!1924786 (=> res!860752 e!1230391)))

(declare-fun call!118327 () Bool)

(assert (=> b!1924786 (= res!860752 call!118327)))

(declare-fun b!1924787 () Bool)

(declare-fun e!1230396 () Bool)

(assert (=> b!1924787 (= e!1230396 (nullable!1605 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))))))

(declare-fun bm!118322 () Bool)

(assert (=> bm!118322 (= call!118327 (isEmpty!13485 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))))))

(declare-fun b!1924788 () Bool)

(declare-fun res!860759 () Bool)

(declare-fun e!1230394 () Bool)

(assert (=> b!1924788 (=> res!860759 e!1230394)))

(declare-fun e!1230390 () Bool)

(assert (=> b!1924788 (= res!860759 e!1230390)))

(declare-fun res!860758 () Bool)

(assert (=> b!1924788 (=> (not res!860758) (not e!1230390))))

(declare-fun lt!737637 () Bool)

(assert (=> b!1924788 (= res!860758 lt!737637)))

(declare-fun b!1924789 () Bool)

(declare-fun res!860753 () Bool)

(assert (=> b!1924789 (=> (not res!860753) (not e!1230390))))

(assert (=> b!1924789 (= res!860753 (isEmpty!13485 (tail!2972 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164)))))))))

(declare-fun b!1924790 () Bool)

(assert (=> b!1924790 (= e!1230394 e!1230393)))

(declare-fun res!860757 () Bool)

(assert (=> b!1924790 (=> (not res!860757) (not e!1230393))))

(assert (=> b!1924790 (= res!860757 (not lt!737637))))

(declare-fun b!1924791 () Bool)

(assert (=> b!1924791 (= e!1230396 (matchR!2621 (derivativeStep!1364 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))) (head!4484 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164)))))) (tail!2972 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164)))))))))

(declare-fun b!1924792 () Bool)

(assert (=> b!1924792 (= e!1230391 (not (= (head!4484 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))) (c!312513 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))))))))

(declare-fun d!586583 () Bool)

(declare-fun e!1230392 () Bool)

(assert (=> d!586583 e!1230392))

(declare-fun c!312917 () Bool)

(assert (=> d!586583 (= c!312917 ((_ is EmptyExpr!5353) (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))))))

(assert (=> d!586583 (= lt!737637 e!1230396)))

(declare-fun c!312918 () Bool)

(assert (=> d!586583 (= c!312918 (isEmpty!13485 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))))))

(assert (=> d!586583 (validRegex!2131 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))))

(assert (=> d!586583 (= (matchR!2621 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))) lt!737637)))

(declare-fun b!1924793 () Bool)

(declare-fun res!860754 () Bool)

(assert (=> b!1924793 (=> res!860754 e!1230391)))

(assert (=> b!1924793 (= res!860754 (not (isEmpty!13485 (tail!2972 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))))))))

(declare-fun b!1924794 () Bool)

(declare-fun res!860756 () Bool)

(assert (=> b!1924794 (=> (not res!860756) (not e!1230390))))

(assert (=> b!1924794 (= res!860756 (not call!118327))))

(declare-fun b!1924795 () Bool)

(declare-fun e!1230395 () Bool)

(assert (=> b!1924795 (= e!1230392 e!1230395)))

(declare-fun c!312919 () Bool)

(assert (=> b!1924795 (= c!312919 ((_ is EmptyLang!5353) (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))))))

(declare-fun b!1924796 () Bool)

(assert (=> b!1924796 (= e!1230390 (= (head!4484 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))) (c!312513 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))))))

(declare-fun b!1924797 () Bool)

(declare-fun res!860755 () Bool)

(assert (=> b!1924797 (=> res!860755 e!1230394)))

(assert (=> b!1924797 (= res!860755 (not ((_ is ElementMatch!5353) (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))))))

(assert (=> b!1924797 (= e!1230395 e!1230394)))

(declare-fun b!1924798 () Bool)

(assert (=> b!1924798 (= e!1230395 (not lt!737637))))

(declare-fun b!1924799 () Bool)

(assert (=> b!1924799 (= e!1230392 (= lt!737637 call!118327))))

(assert (= (and d!586583 c!312918) b!1924787))

(assert (= (and d!586583 (not c!312918)) b!1924791))

(assert (= (and d!586583 c!312917) b!1924799))

(assert (= (and d!586583 (not c!312917)) b!1924795))

(assert (= (and b!1924795 c!312919) b!1924798))

(assert (= (and b!1924795 (not c!312919)) b!1924797))

(assert (= (and b!1924797 (not res!860755)) b!1924788))

(assert (= (and b!1924788 res!860758) b!1924794))

(assert (= (and b!1924794 res!860756) b!1924789))

(assert (= (and b!1924789 res!860753) b!1924796))

(assert (= (and b!1924788 (not res!860759)) b!1924790))

(assert (= (and b!1924790 res!860757) b!1924786))

(assert (= (and b!1924786 (not res!860752)) b!1924793))

(assert (= (and b!1924793 (not res!860754)) b!1924792))

(assert (= (or b!1924799 b!1924786 b!1924794) bm!118322))

(assert (=> b!1924791 m!2358359))

(declare-fun m!2360519 () Bool)

(assert (=> b!1924791 m!2360519))

(assert (=> b!1924791 m!2360519))

(declare-fun m!2360521 () Bool)

(assert (=> b!1924791 m!2360521))

(assert (=> b!1924791 m!2358359))

(declare-fun m!2360523 () Bool)

(assert (=> b!1924791 m!2360523))

(assert (=> b!1924791 m!2360521))

(assert (=> b!1924791 m!2360523))

(declare-fun m!2360525 () Bool)

(assert (=> b!1924791 m!2360525))

(declare-fun m!2360527 () Bool)

(assert (=> b!1924787 m!2360527))

(assert (=> b!1924792 m!2358359))

(assert (=> b!1924792 m!2360519))

(assert (=> b!1924793 m!2358359))

(assert (=> b!1924793 m!2360523))

(assert (=> b!1924793 m!2360523))

(declare-fun m!2360529 () Bool)

(assert (=> b!1924793 m!2360529))

(assert (=> d!586583 m!2358359))

(declare-fun m!2360531 () Bool)

(assert (=> d!586583 m!2360531))

(declare-fun m!2360533 () Bool)

(assert (=> d!586583 m!2360533))

(assert (=> b!1924789 m!2358359))

(assert (=> b!1924789 m!2360523))

(assert (=> b!1924789 m!2360523))

(assert (=> b!1924789 m!2360529))

(assert (=> b!1924796 m!2358359))

(assert (=> b!1924796 m!2360519))

(assert (=> bm!118322 m!2358359))

(assert (=> bm!118322 m!2360531))

(assert (=> b!1923316 d!586583))

(assert (=> b!1923316 d!586251))

(declare-fun d!586585 () Bool)

(assert (=> d!586585 (= (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164)))) (list!8856 (c!312512 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))))))

(declare-fun bs!414553 () Bool)

(assert (= bs!414553 d!586585))

(declare-fun m!2360535 () Bool)

(assert (=> bs!414553 m!2360535))

(assert (=> b!1923316 d!586585))

(declare-fun d!586587 () Bool)

(declare-fun lt!737638 () BalanceConc!14436)

(assert (=> d!586587 (= (list!8853 lt!737638) (originalCharacters!4735 (_1!11728 (get!6893 lt!737164))))))

(assert (=> d!586587 (= lt!737638 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))) (value!123539 (_1!11728 (get!6893 lt!737164)))))))

(assert (=> d!586587 (= (charsOf!2468 (_1!11728 (get!6893 lt!737164))) lt!737638)))

(declare-fun b_lambda!63675 () Bool)

(assert (=> (not b_lambda!63675) (not d!586587)))

(declare-fun t!179247 () Bool)

(declare-fun tb!117673 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179247) tb!117673))

(declare-fun b!1924800 () Bool)

(declare-fun e!1230397 () Bool)

(declare-fun tp!549871 () Bool)

(assert (=> b!1924800 (= e!1230397 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))) (value!123539 (_1!11728 (get!6893 lt!737164)))))) tp!549871))))

(declare-fun result!142212 () Bool)

(assert (=> tb!117673 (= result!142212 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))) (value!123539 (_1!11728 (get!6893 lt!737164))))) e!1230397))))

(assert (= tb!117673 b!1924800))

(declare-fun m!2360537 () Bool)

(assert (=> b!1924800 m!2360537))

(declare-fun m!2360539 () Bool)

(assert (=> tb!117673 m!2360539))

(assert (=> d!586587 t!179247))

(declare-fun b_and!150695 () Bool)

(assert (= b_and!150685 (and (=> t!179247 result!142212) b_and!150695)))

(declare-fun t!179249 () Bool)

(declare-fun tb!117675 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179249) tb!117675))

(declare-fun result!142214 () Bool)

(assert (= result!142214 result!142212))

(assert (=> d!586587 t!179249))

(declare-fun b_and!150697 () Bool)

(assert (= b_and!150689 (and (=> t!179249 result!142214) b_and!150697)))

(declare-fun tb!117677 () Bool)

(declare-fun t!179251 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179251) tb!117677))

(declare-fun result!142216 () Bool)

(assert (= result!142216 result!142212))

(assert (=> d!586587 t!179251))

(declare-fun b_and!150699 () Bool)

(assert (= b_and!150691 (and (=> t!179251 result!142216) b_and!150699)))

(declare-fun t!179253 () Bool)

(declare-fun tb!117679 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179253) tb!117679))

(declare-fun result!142218 () Bool)

(assert (= result!142218 result!142212))

(assert (=> d!586587 t!179253))

(declare-fun b_and!150701 () Bool)

(assert (= b_and!150687 (and (=> t!179253 result!142218) b_and!150701)))

(declare-fun tb!117681 () Bool)

(declare-fun t!179255 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179255) tb!117681))

(declare-fun result!142220 () Bool)

(assert (= result!142220 result!142212))

(assert (=> d!586587 t!179255))

(declare-fun b_and!150703 () Bool)

(assert (= b_and!150693 (and (=> t!179255 result!142220) b_and!150703)))

(declare-fun m!2360541 () Bool)

(assert (=> d!586587 m!2360541))

(declare-fun m!2360543 () Bool)

(assert (=> d!586587 m!2360543))

(assert (=> b!1923316 d!586587))

(declare-fun d!586589 () Bool)

(declare-fun lt!737641 () Token!7408)

(assert (=> d!586589 (= lt!737641 (apply!5683 (list!8857 (_1!11730 lt!737304)) 0))))

(declare-fun apply!5685 (Conc!7311 Int) Token!7408)

(assert (=> d!586589 (= lt!737641 (apply!5685 (c!312514 (_1!11730 lt!737304)) 0))))

(declare-fun e!1230400 () Bool)

(assert (=> d!586589 e!1230400))

(declare-fun res!860762 () Bool)

(assert (=> d!586589 (=> (not res!860762) (not e!1230400))))

(assert (=> d!586589 (= res!860762 (<= 0 0))))

(assert (=> d!586589 (= (apply!5682 (_1!11730 lt!737304) 0) lt!737641)))

(declare-fun b!1924803 () Bool)

(assert (=> b!1924803 (= e!1230400 (< 0 (size!17092 (_1!11730 lt!737304))))))

(assert (= (and d!586589 res!860762) b!1924803))

(assert (=> d!586589 m!2360107))

(assert (=> d!586589 m!2360107))

(declare-fun m!2360545 () Bool)

(assert (=> d!586589 m!2360545))

(declare-fun m!2360547 () Bool)

(assert (=> d!586589 m!2360547))

(assert (=> b!1924803 m!2358843))

(assert (=> b!1923693 d!586589))

(declare-fun d!586591 () Bool)

(declare-fun res!860763 () Bool)

(declare-fun e!1230401 () Bool)

(assert (=> d!586591 (=> res!860763 e!1230401)))

(assert (=> d!586591 (= res!860763 ((_ is Nil!21908) (t!179045 tokens!598)))))

(assert (=> d!586591 (= (forall!4628 (t!179045 tokens!598) lambda!75071) e!1230401)))

(declare-fun b!1924804 () Bool)

(declare-fun e!1230402 () Bool)

(assert (=> b!1924804 (= e!1230401 e!1230402)))

(declare-fun res!860764 () Bool)

(assert (=> b!1924804 (=> (not res!860764) (not e!1230402))))

(assert (=> b!1924804 (= res!860764 (dynLambda!10587 lambda!75071 (h!27309 (t!179045 tokens!598))))))

(declare-fun b!1924805 () Bool)

(assert (=> b!1924805 (= e!1230402 (forall!4628 (t!179045 (t!179045 tokens!598)) lambda!75071))))

(assert (= (and d!586591 (not res!860763)) b!1924804))

(assert (= (and b!1924804 res!860764) b!1924805))

(declare-fun b_lambda!63677 () Bool)

(assert (=> (not b_lambda!63677) (not b!1924804)))

(declare-fun m!2360549 () Bool)

(assert (=> b!1924804 m!2360549))

(declare-fun m!2360551 () Bool)

(assert (=> b!1924805 m!2360551))

(assert (=> b!1923056 d!586591))

(assert (=> b!1923312 d!586251))

(declare-fun d!586593 () Bool)

(assert (=> d!586593 (= (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737164))))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737164))))))))

(declare-fun b_lambda!63679 () Bool)

(assert (=> (not b_lambda!63679) (not d!586593)))

(declare-fun tb!117683 () Bool)

(declare-fun t!179257 () Bool)

(assert (=> (and b!1923833 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179257) tb!117683))

(declare-fun result!142222 () Bool)

(assert (=> tb!117683 (= result!142222 (inv!21 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164))))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737164)))))))))

(declare-fun m!2360553 () Bool)

(assert (=> tb!117683 m!2360553))

(assert (=> d!586593 t!179257))

(declare-fun b_and!150705 () Bool)

(assert (= b_and!150587 (and (=> t!179257 result!142222) b_and!150705)))

(declare-fun tb!117685 () Bool)

(declare-fun t!179259 () Bool)

(assert (=> (and b!1923848 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179259) tb!117685))

(declare-fun result!142224 () Bool)

(assert (= result!142224 result!142222))

(assert (=> d!586593 t!179259))

(declare-fun b_and!150707 () Bool)

(assert (= b_and!150591 (and (=> t!179259 result!142224) b_and!150707)))

(declare-fun tb!117687 () Bool)

(declare-fun t!179261 () Bool)

(assert (=> (and b!1923035 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179261) tb!117687))

(declare-fun result!142226 () Bool)

(assert (= result!142226 result!142222))

(assert (=> d!586593 t!179261))

(declare-fun b_and!150709 () Bool)

(assert (= b_and!150503 (and (=> t!179261 result!142226) b_and!150709)))

(declare-fun tb!117689 () Bool)

(declare-fun t!179263 () Bool)

(assert (=> (and b!1923039 (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179263) tb!117689))

(declare-fun result!142228 () Bool)

(assert (= result!142228 result!142222))

(assert (=> d!586593 t!179263))

(declare-fun b_and!150711 () Bool)

(assert (= b_and!150505 (and (=> t!179263 result!142228) b_and!150711)))

(declare-fun tb!117691 () Bool)

(declare-fun t!179265 () Bool)

(assert (=> (and b!1923049 (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179265) tb!117691))

(declare-fun result!142230 () Bool)

(assert (= result!142230 result!142222))

(assert (=> d!586593 t!179265))

(declare-fun b_and!150713 () Bool)

(assert (= b_and!150501 (and (=> t!179265 result!142230) b_and!150713)))

(assert (=> d!586593 m!2358379))

(declare-fun m!2360555 () Bool)

(assert (=> d!586593 m!2360555))

(assert (=> b!1923312 d!586593))

(declare-fun d!586595 () Bool)

(assert (=> d!586595 (= (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737164)))) (fromListB!1234 (originalCharacters!4735 (_1!11728 (get!6893 lt!737164)))))))

(declare-fun bs!414554 () Bool)

(assert (= bs!414554 d!586595))

(declare-fun m!2360557 () Bool)

(assert (=> bs!414554 m!2360557))

(assert (=> b!1923312 d!586595))

(declare-fun d!586597 () Bool)

(assert (=> d!586597 (= (isEmpty!13485 (tail!2972 lt!737051)) ((_ is Nil!21906) (tail!2972 lt!737051)))))

(assert (=> b!1923509 d!586597))

(assert (=> b!1923509 d!586157))

(assert (=> d!586047 d!586491))

(declare-fun bm!118323 () Bool)

(declare-fun call!118328 () Bool)

(declare-fun c!312920 () Bool)

(assert (=> bm!118323 (= call!118328 (validRegex!2131 (ite c!312920 (regTwo!11219 (regex!3928 lt!737042)) (regTwo!11218 (regex!3928 lt!737042)))))))

(declare-fun b!1924806 () Bool)

(declare-fun res!860768 () Bool)

(declare-fun e!1230404 () Bool)

(assert (=> b!1924806 (=> (not res!860768) (not e!1230404))))

(declare-fun call!118329 () Bool)

(assert (=> b!1924806 (= res!860768 call!118329)))

(declare-fun e!1230405 () Bool)

(assert (=> b!1924806 (= e!1230405 e!1230404)))

(declare-fun b!1924807 () Bool)

(assert (=> b!1924807 (= e!1230404 call!118328)))

(declare-fun c!312921 () Bool)

(declare-fun bm!118324 () Bool)

(declare-fun call!118330 () Bool)

(assert (=> bm!118324 (= call!118330 (validRegex!2131 (ite c!312921 (reg!5682 (regex!3928 lt!737042)) (ite c!312920 (regOne!11219 (regex!3928 lt!737042)) (regOne!11218 (regex!3928 lt!737042))))))))

(declare-fun b!1924808 () Bool)

(declare-fun e!1230409 () Bool)

(assert (=> b!1924808 (= e!1230409 call!118328)))

(declare-fun b!1924809 () Bool)

(declare-fun e!1230408 () Bool)

(assert (=> b!1924809 (= e!1230408 e!1230409)))

(declare-fun res!860766 () Bool)

(assert (=> b!1924809 (=> (not res!860766) (not e!1230409))))

(assert (=> b!1924809 (= res!860766 call!118329)))

(declare-fun b!1924810 () Bool)

(declare-fun e!1230407 () Bool)

(declare-fun e!1230410 () Bool)

(assert (=> b!1924810 (= e!1230407 e!1230410)))

(declare-fun res!860765 () Bool)

(assert (=> b!1924810 (= res!860765 (not (nullable!1605 (reg!5682 (regex!3928 lt!737042)))))))

(assert (=> b!1924810 (=> (not res!860765) (not e!1230410))))

(declare-fun bm!118325 () Bool)

(assert (=> bm!118325 (= call!118329 call!118330)))

(declare-fun d!586599 () Bool)

(declare-fun res!860769 () Bool)

(declare-fun e!1230406 () Bool)

(assert (=> d!586599 (=> res!860769 e!1230406)))

(assert (=> d!586599 (= res!860769 ((_ is ElementMatch!5353) (regex!3928 lt!737042)))))

(assert (=> d!586599 (= (validRegex!2131 (regex!3928 lt!737042)) e!1230406)))

(declare-fun b!1924811 () Bool)

(assert (=> b!1924811 (= e!1230407 e!1230405)))

(assert (=> b!1924811 (= c!312920 ((_ is Union!5353) (regex!3928 lt!737042)))))

(declare-fun b!1924812 () Bool)

(assert (=> b!1924812 (= e!1230406 e!1230407)))

(assert (=> b!1924812 (= c!312921 ((_ is Star!5353) (regex!3928 lt!737042)))))

(declare-fun b!1924813 () Bool)

(assert (=> b!1924813 (= e!1230410 call!118330)))

(declare-fun b!1924814 () Bool)

(declare-fun res!860767 () Bool)

(assert (=> b!1924814 (=> res!860767 e!1230408)))

(assert (=> b!1924814 (= res!860767 (not ((_ is Concat!9418) (regex!3928 lt!737042))))))

(assert (=> b!1924814 (= e!1230405 e!1230408)))

(assert (= (and d!586599 (not res!860769)) b!1924812))

(assert (= (and b!1924812 c!312921) b!1924810))

(assert (= (and b!1924812 (not c!312921)) b!1924811))

(assert (= (and b!1924810 res!860765) b!1924813))

(assert (= (and b!1924811 c!312920) b!1924806))

(assert (= (and b!1924811 (not c!312920)) b!1924814))

(assert (= (and b!1924806 res!860768) b!1924807))

(assert (= (and b!1924814 (not res!860767)) b!1924809))

(assert (= (and b!1924809 res!860766) b!1924808))

(assert (= (or b!1924806 b!1924809) bm!118325))

(assert (= (or b!1924807 b!1924808) bm!118323))

(assert (= (or b!1924813 bm!118325) bm!118324))

(declare-fun m!2360559 () Bool)

(assert (=> bm!118323 m!2360559))

(declare-fun m!2360561 () Bool)

(assert (=> bm!118324 m!2360561))

(declare-fun m!2360563 () Bool)

(assert (=> b!1924810 m!2360563))

(assert (=> d!586047 d!586599))

(assert (=> b!1923505 d!586597))

(assert (=> b!1923505 d!586157))

(declare-fun d!586601 () Bool)

(declare-fun lt!737642 () Int)

(assert (=> d!586601 (>= lt!737642 0)))

(declare-fun e!1230411 () Int)

(assert (=> d!586601 (= lt!737642 e!1230411)))

(declare-fun c!312922 () Bool)

(assert (=> d!586601 (= c!312922 ((_ is Nil!21906) lt!737221))))

(assert (=> d!586601 (= (size!17091 lt!737221) lt!737642)))

(declare-fun b!1924815 () Bool)

(assert (=> b!1924815 (= e!1230411 0)))

(declare-fun b!1924816 () Bool)

(assert (=> b!1924816 (= e!1230411 (+ 1 (size!17091 (t!179043 lt!737221))))))

(assert (= (and d!586601 c!312922) b!1924815))

(assert (= (and d!586601 (not c!312922)) b!1924816))

(declare-fun m!2360565 () Bool)

(assert (=> b!1924816 m!2360565))

(assert (=> b!1923547 d!586601))

(assert (=> b!1923547 d!586115))

(declare-fun d!586603 () Bool)

(declare-fun lt!737643 () Int)

(assert (=> d!586603 (>= lt!737643 0)))

(declare-fun e!1230412 () Int)

(assert (=> d!586603 (= lt!737643 e!1230412)))

(declare-fun c!312923 () Bool)

(assert (=> d!586603 (= c!312923 ((_ is Nil!21906) lt!737043))))

(assert (=> d!586603 (= (size!17091 lt!737043) lt!737643)))

(declare-fun b!1924817 () Bool)

(assert (=> b!1924817 (= e!1230412 0)))

(declare-fun b!1924818 () Bool)

(assert (=> b!1924818 (= e!1230412 (+ 1 (size!17091 (t!179043 lt!737043))))))

(assert (= (and d!586603 c!312923) b!1924817))

(assert (= (and d!586603 (not c!312923)) b!1924818))

(assert (=> b!1924818 m!2360223))

(assert (=> b!1923547 d!586603))

(declare-fun d!586605 () Bool)

(declare-fun lt!737644 () Int)

(assert (=> d!586605 (>= lt!737644 0)))

(declare-fun e!1230413 () Int)

(assert (=> d!586605 (= lt!737644 e!1230413)))

(declare-fun c!312924 () Bool)

(assert (=> d!586605 (= c!312924 ((_ is Nil!21906) (_2!11728 (get!6893 lt!737108))))))

(assert (=> d!586605 (= (size!17091 (_2!11728 (get!6893 lt!737108))) lt!737644)))

(declare-fun b!1924819 () Bool)

(assert (=> b!1924819 (= e!1230413 0)))

(declare-fun b!1924820 () Bool)

(assert (=> b!1924820 (= e!1230413 (+ 1 (size!17091 (t!179043 (_2!11728 (get!6893 lt!737108))))))))

(assert (= (and d!586605 c!312924) b!1924819))

(assert (= (and d!586605 (not c!312924)) b!1924820))

(declare-fun m!2360567 () Bool)

(assert (=> b!1924820 m!2360567))

(assert (=> b!1923198 d!586605))

(assert (=> b!1923198 d!586167))

(declare-fun d!586607 () Bool)

(declare-fun lt!737645 () Int)

(assert (=> d!586607 (>= lt!737645 0)))

(declare-fun e!1230414 () Int)

(assert (=> d!586607 (= lt!737645 e!1230414)))

(declare-fun c!312925 () Bool)

(assert (=> d!586607 (= c!312925 ((_ is Nil!21906) (++!5869 lt!737051 lt!737059)))))

(assert (=> d!586607 (= (size!17091 (++!5869 lt!737051 lt!737059)) lt!737645)))

(declare-fun b!1924821 () Bool)

(assert (=> b!1924821 (= e!1230414 0)))

(declare-fun b!1924822 () Bool)

(assert (=> b!1924822 (= e!1230414 (+ 1 (size!17091 (t!179043 (++!5869 lt!737051 lt!737059)))))))

(assert (= (and d!586607 c!312925) b!1924821))

(assert (= (and d!586607 (not c!312925)) b!1924822))

(declare-fun m!2360569 () Bool)

(assert (=> b!1924822 m!2360569))

(assert (=> b!1923198 d!586607))

(declare-fun b!1924824 () Bool)

(declare-fun e!1230415 () List!21988)

(declare-fun e!1230416 () List!21988)

(assert (=> b!1924824 (= e!1230415 e!1230416)))

(declare-fun c!312927 () Bool)

(assert (=> b!1924824 (= c!312927 ((_ is Leaf!10737) (c!312512 lt!737049)))))

(declare-fun d!586609 () Bool)

(declare-fun c!312926 () Bool)

(assert (=> d!586609 (= c!312926 ((_ is Empty!7310) (c!312512 lt!737049)))))

(assert (=> d!586609 (= (list!8856 (c!312512 lt!737049)) e!1230415)))

(declare-fun b!1924823 () Bool)

(assert (=> b!1924823 (= e!1230415 Nil!21906)))

(declare-fun b!1924826 () Bool)

(assert (=> b!1924826 (= e!1230416 (++!5869 (list!8856 (left!17424 (c!312512 lt!737049))) (list!8856 (right!17754 (c!312512 lt!737049)))))))

(declare-fun b!1924825 () Bool)

(assert (=> b!1924825 (= e!1230416 (list!8859 (xs!10204 (c!312512 lt!737049))))))

(assert (= (and d!586609 c!312926) b!1924823))

(assert (= (and d!586609 (not c!312926)) b!1924824))

(assert (= (and b!1924824 c!312927) b!1924825))

(assert (= (and b!1924824 (not c!312927)) b!1924826))

(declare-fun m!2360571 () Bool)

(assert (=> b!1924826 m!2360571))

(declare-fun m!2360573 () Bool)

(assert (=> b!1924826 m!2360573))

(assert (=> b!1924826 m!2360571))

(assert (=> b!1924826 m!2360573))

(declare-fun m!2360575 () Bool)

(assert (=> b!1924826 m!2360575))

(declare-fun m!2360577 () Bool)

(assert (=> b!1924825 m!2360577))

(assert (=> d!585937 d!586609))

(declare-fun d!586611 () Bool)

(assert (=> d!586611 (= (inv!17 (value!123539 (h!27309 tokens!598))) (= (charsToBigInt!1 (text!28896 (value!123539 (h!27309 tokens!598)))) (value!123531 (value!123539 (h!27309 tokens!598)))))))

(declare-fun bs!414555 () Bool)

(assert (= bs!414555 d!586611))

(declare-fun m!2360579 () Bool)

(assert (=> bs!414555 m!2360579))

(assert (=> b!1923708 d!586611))

(assert (=> b!1923763 d!586001))

(declare-fun d!586613 () Bool)

(declare-fun c!312929 () Bool)

(assert (=> d!586613 (= c!312929 ((_ is IntegerValue!12192) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))))

(declare-fun e!1230419 () Bool)

(assert (=> d!586613 (= (inv!21 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))) e!1230419)))

(declare-fun b!1924827 () Bool)

(declare-fun e!1230417 () Bool)

(assert (=> b!1924827 (= e!1230419 e!1230417)))

(declare-fun c!312928 () Bool)

(assert (=> b!1924827 (= c!312928 ((_ is IntegerValue!12193) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))))

(declare-fun b!1924828 () Bool)

(declare-fun e!1230418 () Bool)

(assert (=> b!1924828 (= e!1230418 (inv!15 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))))

(declare-fun b!1924829 () Bool)

(assert (=> b!1924829 (= e!1230417 (inv!17 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))))

(declare-fun b!1924830 () Bool)

(declare-fun res!860770 () Bool)

(assert (=> b!1924830 (=> res!860770 e!1230418)))

(assert (=> b!1924830 (= res!860770 (not ((_ is IntegerValue!12194) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))))))))

(assert (=> b!1924830 (= e!1230417 e!1230418)))

(declare-fun b!1924831 () Bool)

(assert (=> b!1924831 (= e!1230419 (inv!16 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))))

(assert (= (and d!586613 c!312929) b!1924831))

(assert (= (and d!586613 (not c!312929)) b!1924827))

(assert (= (and b!1924827 c!312928) b!1924829))

(assert (= (and b!1924827 (not c!312928)) b!1924830))

(assert (= (and b!1924830 (not res!860770)) b!1924828))

(declare-fun m!2360581 () Bool)

(assert (=> b!1924828 m!2360581))

(declare-fun m!2360583 () Bool)

(assert (=> b!1924829 m!2360583))

(declare-fun m!2360585 () Bool)

(assert (=> b!1924831 m!2360585))

(assert (=> tb!117505 d!586613))

(declare-fun d!586615 () Bool)

(declare-fun lt!737646 () BalanceConc!14436)

(assert (=> d!586615 (= (list!8853 lt!737646) (printList!1076 thiss!23328 (list!8857 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))))))))

(assert (=> d!586615 (= lt!737646 (printTailRec!1017 thiss!23328 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))) 0 (BalanceConc!14437 Empty!7310)))))

(assert (=> d!586615 (= (print!1511 thiss!23328 (singletonSeq!1912 (h!27309 (t!179045 tokens!598)))) lt!737646)))

(declare-fun bs!414556 () Bool)

(assert (= bs!414556 d!586615))

(declare-fun m!2360587 () Bool)

(assert (=> bs!414556 m!2360587))

(assert (=> bs!414556 m!2358311))

(declare-fun m!2360589 () Bool)

(assert (=> bs!414556 m!2360589))

(assert (=> bs!414556 m!2360589))

(declare-fun m!2360591 () Bool)

(assert (=> bs!414556 m!2360591))

(assert (=> bs!414556 m!2358311))

(assert (=> bs!414556 m!2358315))

(assert (=> b!1923288 d!586615))

(declare-fun d!586617 () Bool)

(declare-fun e!1230420 () Bool)

(assert (=> d!586617 e!1230420))

(declare-fun res!860771 () Bool)

(assert (=> d!586617 (=> (not res!860771) (not e!1230420))))

(declare-fun lt!737647 () BalanceConc!14438)

(assert (=> d!586617 (= res!860771 (= (list!8857 lt!737647) (Cons!21908 (h!27309 (t!179045 tokens!598)) Nil!21908)))))

(assert (=> d!586617 (= lt!737647 (singleton!844 (h!27309 (t!179045 tokens!598))))))

(assert (=> d!586617 (= (singletonSeq!1912 (h!27309 (t!179045 tokens!598))) lt!737647)))

(declare-fun b!1924832 () Bool)

(assert (=> b!1924832 (= e!1230420 (isBalanced!2253 (c!312514 lt!737647)))))

(assert (= (and d!586617 res!860771) b!1924832))

(declare-fun m!2360593 () Bool)

(assert (=> d!586617 m!2360593))

(declare-fun m!2360595 () Bool)

(assert (=> d!586617 m!2360595))

(declare-fun m!2360597 () Bool)

(assert (=> b!1924832 m!2360597))

(assert (=> b!1923288 d!586617))

(declare-fun d!586619 () Bool)

(declare-fun lt!737653 () BalanceConc!14436)

(assert (=> d!586619 (= (list!8853 lt!737653) (printListTailRec!449 thiss!23328 (dropList!780 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))) 0) (list!8853 (BalanceConc!14437 Empty!7310))))))

(declare-fun e!1230422 () BalanceConc!14436)

(assert (=> d!586619 (= lt!737653 e!1230422)))

(declare-fun c!312930 () Bool)

(assert (=> d!586619 (= c!312930 (>= 0 (size!17092 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))))))))

(declare-fun e!1230421 () Bool)

(assert (=> d!586619 e!1230421))

(declare-fun res!860772 () Bool)

(assert (=> d!586619 (=> (not res!860772) (not e!1230421))))

(assert (=> d!586619 (= res!860772 (>= 0 0))))

(assert (=> d!586619 (= (printTailRec!1017 thiss!23328 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))) 0 (BalanceConc!14437 Empty!7310)) lt!737653)))

(declare-fun b!1924833 () Bool)

(assert (=> b!1924833 (= e!1230421 (<= 0 (size!17092 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))))))))

(declare-fun b!1924834 () Bool)

(assert (=> b!1924834 (= e!1230422 (BalanceConc!14437 Empty!7310))))

(declare-fun b!1924835 () Bool)

(assert (=> b!1924835 (= e!1230422 (printTailRec!1017 thiss!23328 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))) (+ 0 1) (++!5871 (BalanceConc!14437 Empty!7310) (charsOf!2468 (apply!5682 (singletonSeq!1912 (h!27309 (t!179045 tokens!598))) 0)))))))

(declare-fun lt!737648 () List!21990)

(assert (=> b!1924835 (= lt!737648 (list!8857 (singletonSeq!1912 (h!27309 (t!179045 tokens!598)))))))

(declare-fun lt!737654 () Unit!36232)

(assert (=> b!1924835 (= lt!737654 (lemmaDropApply!704 lt!737648 0))))

(assert (=> b!1924835 (= (head!4486 (drop!1071 lt!737648 0)) (apply!5683 lt!737648 0))))

(declare-fun lt!737651 () Unit!36232)

(assert (=> b!1924835 (= lt!737651 lt!737654)))

(declare-fun lt!737650 () List!21990)

(assert (=> b!1924835 (= lt!737650 (list!8857 (singletonSeq!1912 (h!27309 (t!179045 tokens!598)))))))

(declare-fun lt!737652 () Unit!36232)

(assert (=> b!1924835 (= lt!737652 (lemmaDropTail!680 lt!737650 0))))

(assert (=> b!1924835 (= (tail!2974 (drop!1071 lt!737650 0)) (drop!1071 lt!737650 (+ 0 1)))))

(declare-fun lt!737649 () Unit!36232)

(assert (=> b!1924835 (= lt!737649 lt!737652)))

(assert (= (and d!586619 res!860772) b!1924833))

(assert (= (and d!586619 c!312930) b!1924834))

(assert (= (and d!586619 (not c!312930)) b!1924835))

(declare-fun m!2360599 () Bool)

(assert (=> d!586619 m!2360599))

(assert (=> d!586619 m!2358787))

(declare-fun m!2360601 () Bool)

(assert (=> d!586619 m!2360601))

(declare-fun m!2360603 () Bool)

(assert (=> d!586619 m!2360603))

(assert (=> d!586619 m!2358787))

(assert (=> d!586619 m!2358311))

(declare-fun m!2360605 () Bool)

(assert (=> d!586619 m!2360605))

(assert (=> d!586619 m!2358311))

(assert (=> d!586619 m!2360599))

(assert (=> b!1924833 m!2358311))

(assert (=> b!1924833 m!2360605))

(declare-fun m!2360607 () Bool)

(assert (=> b!1924835 m!2360607))

(assert (=> b!1924835 m!2358311))

(declare-fun m!2360609 () Bool)

(assert (=> b!1924835 m!2360609))

(declare-fun m!2360611 () Bool)

(assert (=> b!1924835 m!2360611))

(assert (=> b!1924835 m!2358311))

(declare-fun m!2360613 () Bool)

(assert (=> b!1924835 m!2360613))

(declare-fun m!2360615 () Bool)

(assert (=> b!1924835 m!2360615))

(assert (=> b!1924835 m!2360609))

(declare-fun m!2360617 () Bool)

(assert (=> b!1924835 m!2360617))

(declare-fun m!2360619 () Bool)

(assert (=> b!1924835 m!2360619))

(declare-fun m!2360621 () Bool)

(assert (=> b!1924835 m!2360621))

(declare-fun m!2360623 () Bool)

(assert (=> b!1924835 m!2360623))

(assert (=> b!1924835 m!2360617))

(assert (=> b!1924835 m!2360613))

(assert (=> b!1924835 m!2358311))

(assert (=> b!1924835 m!2360589))

(declare-fun m!2360625 () Bool)

(assert (=> b!1924835 m!2360625))

(declare-fun m!2360627 () Bool)

(assert (=> b!1924835 m!2360627))

(assert (=> b!1924835 m!2360619))

(assert (=> b!1924835 m!2360625))

(declare-fun m!2360629 () Bool)

(assert (=> b!1924835 m!2360629))

(assert (=> b!1923288 d!586619))

(declare-fun b!1925136 () Bool)

(declare-fun e!1230592 () Unit!36232)

(declare-fun Unit!36246 () Unit!36232)

(assert (=> b!1925136 (= e!1230592 Unit!36246)))

(declare-fun lt!737742 () List!21988)

(assert (=> b!1925136 (= lt!737742 (++!5869 call!118189 lt!737156))))

(declare-fun lt!737745 () Token!7408)

(declare-fun lt!737749 () Unit!36232)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!373 (LexerInterface!3541 Rule!7656 List!21991 List!21988) Unit!36232)

(assert (=> b!1925136 (= lt!737749 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!373 thiss!23328 (rule!6131 lt!737745) rules!3198 lt!737742))))

(assert (=> b!1925136 (isEmpty!13483 (maxPrefixOneRule!1219 thiss!23328 (rule!6131 lt!737745) lt!737742))))

(declare-fun lt!737746 () Unit!36232)

(assert (=> b!1925136 (= lt!737746 lt!737749)))

(declare-fun lt!737753 () List!21988)

(assert (=> b!1925136 (= lt!737753 (list!8853 (charsOf!2468 lt!737745)))))

(declare-fun lt!737748 () Unit!36232)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!369 (LexerInterface!3541 Rule!7656 List!21988 List!21988) Unit!36232)

(assert (=> b!1925136 (= lt!737748 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!369 thiss!23328 (rule!6131 lt!737745) lt!737753 (++!5869 call!118189 lt!737156)))))

(assert (=> b!1925136 (not (matchR!2621 (regex!3928 (rule!6131 lt!737745)) lt!737753))))

(declare-fun lt!737741 () Unit!36232)

(assert (=> b!1925136 (= lt!737741 lt!737748)))

(assert (=> b!1925136 false))

(declare-fun b!1925137 () Bool)

(declare-fun Unit!36247 () Unit!36232)

(assert (=> b!1925137 (= e!1230592 Unit!36247)))

(declare-fun d!586621 () Bool)

(assert (=> d!586621 (isDefined!3826 (maxPrefix!1979 thiss!23328 rules!3198 (++!5869 call!118189 lt!737156)))))

(declare-fun lt!737755 () Unit!36232)

(assert (=> d!586621 (= lt!737755 e!1230592)))

(declare-fun c!312985 () Bool)

(assert (=> d!586621 (= c!312985 (isEmpty!13483 (maxPrefix!1979 thiss!23328 rules!3198 (++!5869 call!118189 lt!737156))))))

(declare-fun lt!737754 () Unit!36232)

(declare-fun lt!737750 () Unit!36232)

(assert (=> d!586621 (= lt!737754 lt!737750)))

(declare-fun e!1230591 () Bool)

(assert (=> d!586621 e!1230591))

(declare-fun res!860865 () Bool)

(assert (=> d!586621 (=> (not res!860865) (not e!1230591))))

(assert (=> d!586621 (= res!860865 (isDefined!3825 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 lt!737745)))))))

(assert (=> d!586621 (= lt!737750 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!749 thiss!23328 rules!3198 call!118189 lt!737745))))

(declare-fun lt!737756 () Unit!36232)

(declare-fun lt!737744 () Unit!36232)

(assert (=> d!586621 (= lt!737756 lt!737744)))

(declare-fun lt!737747 () List!21988)

(assert (=> d!586621 (isPrefix!1937 lt!737747 (++!5869 call!118189 lt!737156))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!365 (List!21988 List!21988 List!21988) Unit!36232)

(assert (=> d!586621 (= lt!737744 (lemmaPrefixStaysPrefixWhenAddingToSuffix!365 lt!737747 call!118189 lt!737156))))

(assert (=> d!586621 (= lt!737747 (list!8853 (charsOf!2468 lt!737745)))))

(declare-fun lt!737752 () Unit!36232)

(declare-fun lt!737751 () Unit!36232)

(assert (=> d!586621 (= lt!737752 lt!737751)))

(declare-fun lt!737743 () List!21988)

(declare-fun lt!737740 () List!21988)

(assert (=> d!586621 (isPrefix!1937 lt!737743 (++!5869 lt!737743 lt!737740))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1324 (List!21988 List!21988) Unit!36232)

(assert (=> d!586621 (= lt!737751 (lemmaConcatTwoListThenFirstIsPrefix!1324 lt!737743 lt!737740))))

(assert (=> d!586621 (= lt!737740 (_2!11728 (get!6893 (maxPrefix!1979 thiss!23328 rules!3198 call!118189))))))

(assert (=> d!586621 (= lt!737743 (list!8853 (charsOf!2468 lt!737745)))))

(assert (=> d!586621 (= lt!737745 (head!4486 (list!8857 (_1!11730 (lex!1569 thiss!23328 rules!3198 (seqFromList!2782 call!118189))))))))

(assert (=> d!586621 (not (isEmpty!13478 rules!3198))))

(assert (=> d!586621 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!739 thiss!23328 rules!3198 call!118189 lt!737156) lt!737755)))

(declare-fun b!1925135 () Bool)

(assert (=> b!1925135 (= e!1230591 (= (rule!6131 lt!737745) (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 lt!737745))))))))

(declare-fun b!1925134 () Bool)

(declare-fun res!860864 () Bool)

(assert (=> b!1925134 (=> (not res!860864) (not e!1230591))))

(assert (=> b!1925134 (= res!860864 (matchR!2621 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 lt!737745))))) (list!8853 (charsOf!2468 lt!737745))))))

(assert (= (and d!586621 res!860865) b!1925134))

(assert (= (and b!1925134 res!860864) b!1925135))

(assert (= (and d!586621 c!312985) b!1925136))

(assert (= (and d!586621 (not c!312985)) b!1925137))

(declare-fun m!2360973 () Bool)

(assert (=> b!1925136 m!2360973))

(declare-fun m!2360975 () Bool)

(assert (=> b!1925136 m!2360975))

(declare-fun m!2360977 () Bool)

(assert (=> b!1925136 m!2360977))

(assert (=> b!1925136 m!2360973))

(declare-fun m!2360979 () Bool)

(assert (=> b!1925136 m!2360979))

(declare-fun m!2360981 () Bool)

(assert (=> b!1925136 m!2360981))

(declare-fun m!2360983 () Bool)

(assert (=> b!1925136 m!2360983))

(declare-fun m!2360985 () Bool)

(assert (=> b!1925136 m!2360985))

(assert (=> b!1925136 m!2360981))

(assert (=> b!1925136 m!2360977))

(declare-fun m!2360987 () Bool)

(assert (=> b!1925136 m!2360987))

(declare-fun m!2360989 () Bool)

(assert (=> d!586621 m!2360989))

(declare-fun m!2360991 () Bool)

(assert (=> d!586621 m!2360991))

(assert (=> d!586621 m!2360977))

(assert (=> d!586621 m!2360987))

(declare-fun m!2360993 () Bool)

(assert (=> d!586621 m!2360993))

(declare-fun m!2360995 () Bool)

(assert (=> d!586621 m!2360995))

(declare-fun m!2360997 () Bool)

(assert (=> d!586621 m!2360997))

(declare-fun m!2360999 () Bool)

(assert (=> d!586621 m!2360999))

(declare-fun m!2361001 () Bool)

(assert (=> d!586621 m!2361001))

(assert (=> d!586621 m!2360977))

(assert (=> d!586621 m!2360973))

(declare-fun m!2361003 () Bool)

(assert (=> d!586621 m!2361003))

(assert (=> d!586621 m!2360993))

(assert (=> d!586621 m!2361003))

(declare-fun m!2361005 () Bool)

(assert (=> d!586621 m!2361005))

(assert (=> d!586621 m!2361003))

(declare-fun m!2361007 () Bool)

(assert (=> d!586621 m!2361007))

(assert (=> d!586621 m!2360973))

(declare-fun m!2361009 () Bool)

(assert (=> d!586621 m!2361009))

(declare-fun m!2361011 () Bool)

(assert (=> d!586621 m!2361011))

(declare-fun m!2361013 () Bool)

(assert (=> d!586621 m!2361013))

(assert (=> d!586621 m!2360989))

(declare-fun m!2361015 () Bool)

(assert (=> d!586621 m!2361015))

(assert (=> d!586621 m!2357967))

(assert (=> d!586621 m!2360973))

(declare-fun m!2361017 () Bool)

(assert (=> d!586621 m!2361017))

(declare-fun m!2361019 () Bool)

(assert (=> d!586621 m!2361019))

(assert (=> d!586621 m!2360991))

(declare-fun m!2361021 () Bool)

(assert (=> d!586621 m!2361021))

(assert (=> d!586621 m!2361011))

(assert (=> d!586621 m!2360999))

(assert (=> b!1925135 m!2360993))

(assert (=> b!1925135 m!2360993))

(declare-fun m!2361023 () Bool)

(assert (=> b!1925135 m!2361023))

(assert (=> b!1925134 m!2360993))

(assert (=> b!1925134 m!2361023))

(assert (=> b!1925134 m!2360977))

(assert (=> b!1925134 m!2360987))

(assert (=> b!1925134 m!2360977))

(assert (=> b!1925134 m!2360987))

(declare-fun m!2361025 () Bool)

(assert (=> b!1925134 m!2361025))

(assert (=> b!1925134 m!2360993))

(assert (=> b!1923288 d!586621))

(declare-fun d!586785 () Bool)

(declare-fun lt!737757 () Int)

(assert (=> d!586785 (>= lt!737757 0)))

(declare-fun e!1230594 () Int)

(assert (=> d!586785 (= lt!737757 e!1230594)))

(declare-fun c!312986 () Bool)

(assert (=> d!586785 (= c!312986 ((_ is Nil!21906) lt!737234))))

(assert (=> d!586785 (= (size!17091 lt!737234) lt!737757)))

(declare-fun b!1925139 () Bool)

(assert (=> b!1925139 (= e!1230594 0)))

(declare-fun b!1925140 () Bool)

(assert (=> b!1925140 (= e!1230594 (+ 1 (size!17091 (t!179043 lt!737234))))))

(assert (= (and d!586785 c!312986) b!1925139))

(assert (= (and d!586785 (not c!312986)) b!1925140))

(declare-fun m!2361027 () Bool)

(assert (=> b!1925140 m!2361027))

(assert (=> b!1923590 d!586785))

(assert (=> b!1923590 d!586603))

(assert (=> b!1923590 d!586117))

(declare-fun d!586787 () Bool)

(declare-fun c!312989 () Bool)

(assert (=> d!586787 (= c!312989 ((_ is Node!7310) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))))))

(declare-fun e!1230599 () Bool)

(assert (=> d!586787 (= (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))) e!1230599)))

(declare-fun b!1925147 () Bool)

(declare-fun inv!28988 (Conc!7310) Bool)

(assert (=> b!1925147 (= e!1230599 (inv!28988 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))))))

(declare-fun b!1925148 () Bool)

(declare-fun e!1230600 () Bool)

(assert (=> b!1925148 (= e!1230599 e!1230600)))

(declare-fun res!860869 () Bool)

(assert (=> b!1925148 (= res!860869 (not ((_ is Leaf!10737) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))))))))

(assert (=> b!1925148 (=> res!860869 e!1230600)))

(declare-fun b!1925149 () Bool)

(declare-fun inv!28989 (Conc!7310) Bool)

(assert (=> b!1925149 (= e!1230600 (inv!28989 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))))))

(assert (= (and d!586787 c!312989) b!1925147))

(assert (= (and d!586787 (not c!312989)) b!1925148))

(assert (= (and b!1925148 (not res!860869)) b!1925149))

(declare-fun m!2361029 () Bool)

(assert (=> b!1925147 m!2361029))

(declare-fun m!2361031 () Bool)

(assert (=> b!1925149 m!2361031))

(assert (=> b!1923410 d!586787))

(declare-fun d!586789 () Bool)

(declare-fun lt!737758 () Int)

(assert (=> d!586789 (>= lt!737758 0)))

(declare-fun e!1230601 () Int)

(assert (=> d!586789 (= lt!737758 e!1230601)))

(declare-fun c!312990 () Bool)

(assert (=> d!586789 (= c!312990 ((_ is Nil!21906) lt!737232))))

(assert (=> d!586789 (= (size!17091 lt!737232) lt!737758)))

(declare-fun b!1925150 () Bool)

(assert (=> b!1925150 (= e!1230601 0)))

(declare-fun b!1925151 () Bool)

(assert (=> b!1925151 (= e!1230601 (+ 1 (size!17091 (t!179043 lt!737232))))))

(assert (= (and d!586789 c!312990) b!1925150))

(assert (= (and d!586789 (not c!312990)) b!1925151))

(declare-fun m!2361033 () Bool)

(assert (=> b!1925151 m!2361033))

(assert (=> b!1923582 d!586789))

(declare-fun d!586791 () Bool)

(declare-fun lt!737759 () Int)

(assert (=> d!586791 (>= lt!737759 0)))

(declare-fun e!1230602 () Int)

(assert (=> d!586791 (= lt!737759 e!1230602)))

(declare-fun c!312991 () Bool)

(assert (=> d!586791 (= c!312991 ((_ is Nil!21906) (++!5869 lt!737051 lt!737043)))))

(assert (=> d!586791 (= (size!17091 (++!5869 lt!737051 lt!737043)) lt!737759)))

(declare-fun b!1925152 () Bool)

(assert (=> b!1925152 (= e!1230602 0)))

(declare-fun b!1925153 () Bool)

(assert (=> b!1925153 (= e!1230602 (+ 1 (size!17091 (t!179043 (++!5869 lt!737051 lt!737043)))))))

(assert (= (and d!586791 c!312991) b!1925152))

(assert (= (and d!586791 (not c!312991)) b!1925153))

(assert (=> b!1925153 m!2360233))

(assert (=> b!1923582 d!586791))

(assert (=> b!1923582 d!586117))

(declare-fun d!586793 () Bool)

(assert (=> d!586793 (= (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))) (isBalanced!2255 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))))

(declare-fun bs!414601 () Bool)

(assert (= bs!414601 d!586793))

(declare-fun m!2361035 () Bool)

(assert (=> bs!414601 m!2361035))

(assert (=> tb!117493 d!586793))

(declare-fun b!1925155 () Bool)

(declare-fun e!1230603 () List!21988)

(declare-fun e!1230604 () List!21988)

(assert (=> b!1925155 (= e!1230603 e!1230604)))

(declare-fun c!312993 () Bool)

(assert (=> b!1925155 (= c!312993 ((_ is Leaf!10737) (c!312512 (charsOf!2468 separatorToken!354))))))

(declare-fun d!586795 () Bool)

(declare-fun c!312992 () Bool)

(assert (=> d!586795 (= c!312992 ((_ is Empty!7310) (c!312512 (charsOf!2468 separatorToken!354))))))

(assert (=> d!586795 (= (list!8856 (c!312512 (charsOf!2468 separatorToken!354))) e!1230603)))

(declare-fun b!1925154 () Bool)

(assert (=> b!1925154 (= e!1230603 Nil!21906)))

(declare-fun b!1925157 () Bool)

(assert (=> b!1925157 (= e!1230604 (++!5869 (list!8856 (left!17424 (c!312512 (charsOf!2468 separatorToken!354)))) (list!8856 (right!17754 (c!312512 (charsOf!2468 separatorToken!354))))))))

(declare-fun b!1925156 () Bool)

(assert (=> b!1925156 (= e!1230604 (list!8859 (xs!10204 (c!312512 (charsOf!2468 separatorToken!354)))))))

(assert (= (and d!586795 c!312992) b!1925154))

(assert (= (and d!586795 (not c!312992)) b!1925155))

(assert (= (and b!1925155 c!312993) b!1925156))

(assert (= (and b!1925155 (not c!312993)) b!1925157))

(declare-fun m!2361037 () Bool)

(assert (=> b!1925157 m!2361037))

(declare-fun m!2361039 () Bool)

(assert (=> b!1925157 m!2361039))

(assert (=> b!1925157 m!2361037))

(assert (=> b!1925157 m!2361039))

(declare-fun m!2361041 () Bool)

(assert (=> b!1925157 m!2361041))

(declare-fun m!2361043 () Bool)

(assert (=> b!1925156 m!2361043))

(assert (=> d!585883 d!586795))

(declare-fun bm!118343 () Bool)

(declare-fun call!118348 () List!21988)

(declare-fun c!312994 () Bool)

(assert (=> bm!118343 (= call!118348 (usedCharacters!380 (ite c!312994 (regOne!11219 (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))) (regTwo!11218 (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))))))))

(declare-fun b!1925158 () Bool)

(declare-fun e!1230606 () List!21988)

(declare-fun e!1230607 () List!21988)

(assert (=> b!1925158 (= e!1230606 e!1230607)))

(assert (=> b!1925158 (= c!312994 ((_ is Union!5353) (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))))))

(declare-fun e!1230608 () List!21988)

(declare-fun b!1925159 () Bool)

(assert (=> b!1925159 (= e!1230608 (Cons!21906 (c!312513 (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))) Nil!21906))))

(declare-fun c!312996 () Bool)

(declare-fun call!118349 () List!21988)

(declare-fun bm!118344 () Bool)

(assert (=> bm!118344 (= call!118349 (usedCharacters!380 (ite c!312996 (reg!5682 (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))) (ite c!312994 (regTwo!11219 (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))) (regOne!11218 (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354))))))))))))

(declare-fun b!1925160 () Bool)

(declare-fun e!1230605 () List!21988)

(assert (=> b!1925160 (= e!1230605 Nil!21906)))

(declare-fun bm!118345 () Bool)

(declare-fun call!118350 () List!21988)

(assert (=> bm!118345 (= call!118350 call!118349)))

(declare-fun call!118351 () List!21988)

(declare-fun bm!118346 () Bool)

(assert (=> bm!118346 (= call!118351 (++!5869 (ite c!312994 call!118348 call!118350) (ite c!312994 call!118350 call!118348)))))

(declare-fun b!1925162 () Bool)

(assert (=> b!1925162 (= e!1230607 call!118351)))

(declare-fun b!1925163 () Bool)

(assert (=> b!1925163 (= e!1230606 call!118349)))

(declare-fun c!312997 () Bool)

(declare-fun d!586797 () Bool)

(assert (=> d!586797 (= c!312997 (or ((_ is EmptyExpr!5353) (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))) ((_ is EmptyLang!5353) (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354))))))))))

(assert (=> d!586797 (= (usedCharacters!380 (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))) e!1230605)))

(declare-fun b!1925161 () Bool)

(assert (=> b!1925161 (= c!312996 ((_ is Star!5353) (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))))))

(assert (=> b!1925161 (= e!1230608 e!1230606)))

(declare-fun b!1925164 () Bool)

(assert (=> b!1925164 (= e!1230607 call!118351)))

(declare-fun b!1925165 () Bool)

(assert (=> b!1925165 (= e!1230605 e!1230608)))

(declare-fun c!312995 () Bool)

(assert (=> b!1925165 (= c!312995 ((_ is ElementMatch!5353) (ite c!312637 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!312635 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))))))

(assert (= (and d!586797 c!312997) b!1925160))

(assert (= (and d!586797 (not c!312997)) b!1925165))

(assert (= (and b!1925165 c!312995) b!1925159))

(assert (= (and b!1925165 (not c!312995)) b!1925161))

(assert (= (and b!1925161 c!312996) b!1925163))

(assert (= (and b!1925161 (not c!312996)) b!1925158))

(assert (= (and b!1925158 c!312994) b!1925164))

(assert (= (and b!1925158 (not c!312994)) b!1925162))

(assert (= (or b!1925164 b!1925162) bm!118343))

(assert (= (or b!1925164 b!1925162) bm!118345))

(assert (= (or b!1925164 b!1925162) bm!118346))

(assert (= (or b!1925163 bm!118345) bm!118344))

(declare-fun m!2361045 () Bool)

(assert (=> bm!118343 m!2361045))

(declare-fun m!2361047 () Bool)

(assert (=> bm!118344 m!2361047))

(declare-fun m!2361049 () Bool)

(assert (=> bm!118346 m!2361049))

(assert (=> bm!118212 d!586797))

(assert (=> b!1923401 d!586483))

(assert (=> b!1923401 d!585913))

(declare-fun d!586799 () Bool)

(declare-fun c!312998 () Bool)

(assert (=> d!586799 (= c!312998 ((_ is Node!7310) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))))

(declare-fun e!1230609 () Bool)

(assert (=> d!586799 (= (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))) e!1230609)))

(declare-fun b!1925166 () Bool)

(assert (=> b!1925166 (= e!1230609 (inv!28988 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))))

(declare-fun b!1925167 () Bool)

(declare-fun e!1230610 () Bool)

(assert (=> b!1925167 (= e!1230609 e!1230610)))

(declare-fun res!860870 () Bool)

(assert (=> b!1925167 (= res!860870 (not ((_ is Leaf!10737) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))))))))

(assert (=> b!1925167 (=> res!860870 e!1230610)))

(declare-fun b!1925168 () Bool)

(assert (=> b!1925168 (= e!1230610 (inv!28989 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))))))

(assert (= (and d!586799 c!312998) b!1925166))

(assert (= (and d!586799 (not c!312998)) b!1925167))

(assert (= (and b!1925167 (not res!860870)) b!1925168))

(declare-fun m!2361051 () Bool)

(assert (=> b!1925166 m!2361051))

(declare-fun m!2361053 () Bool)

(assert (=> b!1925168 m!2361053))

(assert (=> b!1923169 d!586799))

(assert (=> d!586057 d!586059))

(declare-fun d!586801 () Bool)

(assert (=> d!586801 (not (matchR!2621 (regex!3928 (rule!6131 separatorToken!354)) lt!737043))))

(assert (=> d!586801 true))

(declare-fun _$127!222 () Unit!36232)

(assert (=> d!586801 (= (choose!11940 (regex!3928 (rule!6131 separatorToken!354)) lt!737043 lt!737055) _$127!222)))

(declare-fun bs!414602 () Bool)

(assert (= bs!414602 d!586801))

(assert (=> bs!414602 m!2358071))

(assert (=> d!586057 d!586801))

(assert (=> d!586057 d!586557))

(declare-fun d!586803 () Bool)

(assert (=> d!586803 (= (isDefined!3826 lt!737108) (not (isEmpty!13483 lt!737108)))))

(declare-fun bs!414603 () Bool)

(assert (= bs!414603 d!586803))

(assert (=> bs!414603 m!2358215))

(assert (=> b!1923194 d!586803))

(declare-fun call!118352 () Option!4532)

(declare-fun bm!118347 () Bool)

(assert (=> bm!118347 (= call!118352 (maxPrefixOneRule!1219 thiss!23328 (h!27310 (t!179046 rules!3198)) (++!5869 lt!737051 lt!737059)))))

(declare-fun d!586805 () Bool)

(declare-fun e!1230611 () Bool)

(assert (=> d!586805 e!1230611))

(declare-fun res!860874 () Bool)

(assert (=> d!586805 (=> res!860874 e!1230611)))

(declare-fun lt!737760 () Option!4532)

(assert (=> d!586805 (= res!860874 (isEmpty!13483 lt!737760))))

(declare-fun e!1230613 () Option!4532)

(assert (=> d!586805 (= lt!737760 e!1230613)))

(declare-fun c!313000 () Bool)

(assert (=> d!586805 (= c!313000 (and ((_ is Cons!21909) (t!179046 rules!3198)) ((_ is Nil!21909) (t!179046 (t!179046 rules!3198)))))))

(declare-fun lt!737762 () Unit!36232)

(declare-fun lt!737763 () Unit!36232)

(assert (=> d!586805 (= lt!737762 lt!737763)))

(assert (=> d!586805 (isPrefix!1937 (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059))))

(assert (=> d!586805 (= lt!737763 (lemmaIsPrefixRefl!1255 (++!5869 lt!737051 lt!737059) (++!5869 lt!737051 lt!737059)))))

(assert (=> d!586805 (rulesValidInductive!1336 thiss!23328 (t!179046 rules!3198))))

(assert (=> d!586805 (= (maxPrefix!1979 thiss!23328 (t!179046 rules!3198) (++!5869 lt!737051 lt!737059)) lt!737760)))

(declare-fun b!1925169 () Bool)

(declare-fun lt!737761 () Option!4532)

(declare-fun lt!737764 () Option!4532)

(assert (=> b!1925169 (= e!1230613 (ite (and ((_ is None!4531) lt!737761) ((_ is None!4531) lt!737764)) None!4531 (ite ((_ is None!4531) lt!737764) lt!737761 (ite ((_ is None!4531) lt!737761) lt!737764 (ite (>= (size!17088 (_1!11728 (v!26610 lt!737761))) (size!17088 (_1!11728 (v!26610 lt!737764)))) lt!737761 lt!737764)))))))

(assert (=> b!1925169 (= lt!737761 call!118352)))

(assert (=> b!1925169 (= lt!737764 (maxPrefix!1979 thiss!23328 (t!179046 (t!179046 rules!3198)) (++!5869 lt!737051 lt!737059)))))

(declare-fun b!1925170 () Bool)

(declare-fun res!860875 () Bool)

(declare-fun e!1230612 () Bool)

(assert (=> b!1925170 (=> (not res!860875) (not e!1230612))))

(assert (=> b!1925170 (= res!860875 (= (value!123539 (_1!11728 (get!6893 lt!737760))) (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737760)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737760)))))))))

(declare-fun b!1925171 () Bool)

(assert (=> b!1925171 (= e!1230612 (contains!3953 (t!179046 rules!3198) (rule!6131 (_1!11728 (get!6893 lt!737760)))))))

(declare-fun b!1925172 () Bool)

(assert (=> b!1925172 (= e!1230613 call!118352)))

(declare-fun b!1925173 () Bool)

(assert (=> b!1925173 (= e!1230611 e!1230612)))

(declare-fun res!860873 () Bool)

(assert (=> b!1925173 (=> (not res!860873) (not e!1230612))))

(assert (=> b!1925173 (= res!860873 (isDefined!3826 lt!737760))))

(declare-fun b!1925174 () Bool)

(declare-fun res!860871 () Bool)

(assert (=> b!1925174 (=> (not res!860871) (not e!1230612))))

(assert (=> b!1925174 (= res!860871 (matchR!2621 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737760)))) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737760))))))))

(declare-fun b!1925175 () Bool)

(declare-fun res!860877 () Bool)

(assert (=> b!1925175 (=> (not res!860877) (not e!1230612))))

(assert (=> b!1925175 (= res!860877 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737760)))) (_2!11728 (get!6893 lt!737760))) (++!5869 lt!737051 lt!737059)))))

(declare-fun b!1925176 () Bool)

(declare-fun res!860876 () Bool)

(assert (=> b!1925176 (=> (not res!860876) (not e!1230612))))

(assert (=> b!1925176 (= res!860876 (= (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737760)))) (originalCharacters!4735 (_1!11728 (get!6893 lt!737760)))))))

(declare-fun b!1925177 () Bool)

(declare-fun res!860872 () Bool)

(assert (=> b!1925177 (=> (not res!860872) (not e!1230612))))

(assert (=> b!1925177 (= res!860872 (< (size!17091 (_2!11728 (get!6893 lt!737760))) (size!17091 (++!5869 lt!737051 lt!737059))))))

(assert (= (and d!586805 c!313000) b!1925172))

(assert (= (and d!586805 (not c!313000)) b!1925169))

(assert (= (or b!1925172 b!1925169) bm!118347))

(assert (= (and d!586805 (not res!860874)) b!1925173))

(assert (= (and b!1925173 res!860873) b!1925176))

(assert (= (and b!1925176 res!860876) b!1925177))

(assert (= (and b!1925177 res!860872) b!1925175))

(assert (= (and b!1925175 res!860877) b!1925170))

(assert (= (and b!1925170 res!860875) b!1925174))

(assert (= (and b!1925174 res!860871) b!1925171))

(declare-fun m!2361055 () Bool)

(assert (=> b!1925173 m!2361055))

(declare-fun m!2361057 () Bool)

(assert (=> b!1925174 m!2361057))

(declare-fun m!2361059 () Bool)

(assert (=> b!1925174 m!2361059))

(assert (=> b!1925174 m!2361059))

(declare-fun m!2361061 () Bool)

(assert (=> b!1925174 m!2361061))

(assert (=> b!1925174 m!2361061))

(declare-fun m!2361063 () Bool)

(assert (=> b!1925174 m!2361063))

(assert (=> b!1925176 m!2361057))

(assert (=> b!1925176 m!2361059))

(assert (=> b!1925176 m!2361059))

(assert (=> b!1925176 m!2361061))

(assert (=> b!1925169 m!2358019))

(declare-fun m!2361065 () Bool)

(assert (=> b!1925169 m!2361065))

(assert (=> bm!118347 m!2358019))

(declare-fun m!2361067 () Bool)

(assert (=> bm!118347 m!2361067))

(assert (=> b!1925171 m!2361057))

(declare-fun m!2361069 () Bool)

(assert (=> b!1925171 m!2361069))

(assert (=> b!1925177 m!2361057))

(declare-fun m!2361071 () Bool)

(assert (=> b!1925177 m!2361071))

(assert (=> b!1925177 m!2358019))

(assert (=> b!1925177 m!2358207))

(assert (=> b!1925175 m!2361057))

(assert (=> b!1925175 m!2361059))

(assert (=> b!1925175 m!2361059))

(assert (=> b!1925175 m!2361061))

(assert (=> b!1925175 m!2361061))

(declare-fun m!2361073 () Bool)

(assert (=> b!1925175 m!2361073))

(assert (=> b!1925170 m!2361057))

(declare-fun m!2361075 () Bool)

(assert (=> b!1925170 m!2361075))

(assert (=> b!1925170 m!2361075))

(declare-fun m!2361077 () Bool)

(assert (=> b!1925170 m!2361077))

(declare-fun m!2361079 () Bool)

(assert (=> d!586805 m!2361079))

(assert (=> d!586805 m!2358019))

(assert (=> d!586805 m!2358019))

(assert (=> d!586805 m!2358217))

(assert (=> d!586805 m!2358019))

(assert (=> d!586805 m!2358019))

(assert (=> d!586805 m!2358219))

(assert (=> d!586805 m!2359409))

(assert (=> b!1923190 d!586805))

(declare-fun d!586807 () Bool)

(declare-fun lt!737765 () BalanceConc!14436)

(assert (=> d!586807 (= (list!8853 lt!737765) (originalCharacters!4735 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598))))))))

(assert (=> d!586807 (= lt!737765 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598))))))) (value!123539 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))))

(assert (=> d!586807 (= (charsOf!2468 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598))))) lt!737765)))

(declare-fun b_lambda!63711 () Bool)

(assert (=> (not b_lambda!63711) (not d!586807)))

(declare-fun tb!117765 () Bool)

(declare-fun t!179339 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))) t!179339) tb!117765))

(declare-fun b!1925178 () Bool)

(declare-fun tp!549984 () Bool)

(declare-fun e!1230614 () Bool)

(assert (=> b!1925178 (= e!1230614 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598))))))) (value!123539 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))) tp!549984))))

(declare-fun result!142306 () Bool)

(assert (=> tb!117765 (= result!142306 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598))))))) (value!123539 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598))))))) e!1230614))))

(assert (= tb!117765 b!1925178))

(declare-fun m!2361081 () Bool)

(assert (=> b!1925178 m!2361081))

(declare-fun m!2361083 () Bool)

(assert (=> tb!117765 m!2361083))

(assert (=> d!586807 t!179339))

(declare-fun b_and!150799 () Bool)

(assert (= b_and!150701 (and (=> t!179339 result!142306) b_and!150799)))

(declare-fun t!179341 () Bool)

(declare-fun tb!117767 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))) t!179341) tb!117767))

(declare-fun result!142308 () Bool)

(assert (= result!142308 result!142306))

(assert (=> d!586807 t!179341))

(declare-fun b_and!150801 () Bool)

(assert (= b_and!150697 (and (=> t!179341 result!142308) b_and!150801)))

(declare-fun t!179343 () Bool)

(declare-fun tb!117769 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))) t!179343) tb!117769))

(declare-fun result!142310 () Bool)

(assert (= result!142310 result!142306))

(assert (=> d!586807 t!179343))

(declare-fun b_and!150803 () Bool)

(assert (= b_and!150703 (and (=> t!179343 result!142310) b_and!150803)))

(declare-fun tb!117771 () Bool)

(declare-fun t!179345 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))) t!179345) tb!117771))

(declare-fun result!142312 () Bool)

(assert (= result!142312 result!142306))

(assert (=> d!586807 t!179345))

(declare-fun b_and!150805 () Bool)

(assert (= b_and!150699 (and (=> t!179345 result!142312) b_and!150805)))

(declare-fun tb!117773 () Bool)

(declare-fun t!179347 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))) t!179347) tb!117773))

(declare-fun result!142314 () Bool)

(assert (= result!142314 result!142306))

(assert (=> d!586807 t!179347))

(declare-fun b_and!150807 () Bool)

(assert (= b_and!150695 (and (=> t!179347 result!142314) b_and!150807)))

(declare-fun m!2361085 () Bool)

(assert (=> d!586807 m!2361085))

(declare-fun m!2361087 () Bool)

(assert (=> d!586807 m!2361087))

(assert (=> bm!118181 d!586807))

(declare-fun d!586809 () Bool)

(assert (=> d!586809 (= (get!6892 lt!737196) (v!26609 lt!737196))))

(assert (=> b!1923375 d!586809))

(declare-fun d!586811 () Bool)

(declare-fun e!1230617 () Bool)

(assert (=> d!586811 e!1230617))

(declare-fun res!860880 () Bool)

(assert (=> d!586811 (=> (not res!860880) (not e!1230617))))

(declare-fun lt!737768 () BalanceConc!14436)

(assert (=> d!586811 (= res!860880 (= (list!8853 lt!737768) (originalCharacters!4735 (h!27309 tokens!598))))))

(declare-fun fromList!478 (List!21988) Conc!7310)

(assert (=> d!586811 (= lt!737768 (BalanceConc!14437 (fromList!478 (originalCharacters!4735 (h!27309 tokens!598)))))))

(assert (=> d!586811 (= (fromListB!1234 (originalCharacters!4735 (h!27309 tokens!598))) lt!737768)))

(declare-fun b!1925181 () Bool)

(assert (=> b!1925181 (= e!1230617 (isBalanced!2255 (fromList!478 (originalCharacters!4735 (h!27309 tokens!598)))))))

(assert (= (and d!586811 res!860880) b!1925181))

(declare-fun m!2361089 () Bool)

(assert (=> d!586811 m!2361089))

(declare-fun m!2361091 () Bool)

(assert (=> d!586811 m!2361091))

(assert (=> b!1925181 m!2361091))

(assert (=> b!1925181 m!2361091))

(declare-fun m!2361093 () Bool)

(assert (=> b!1925181 m!2361093))

(assert (=> d!585933 d!586811))

(declare-fun d!586813 () Bool)

(assert (=> d!586813 (= (nullable!1605 (regex!3928 (rule!6131 separatorToken!354))) (nullableFct!359 (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun bs!414604 () Bool)

(assert (= bs!414604 d!586813))

(declare-fun m!2361095 () Bool)

(assert (=> bs!414604 m!2361095))

(assert (=> b!1923773 d!586813))

(declare-fun d!586815 () Bool)

(declare-fun c!313003 () Bool)

(assert (=> d!586815 (= c!313003 ((_ is IntegerValue!12192) (value!123539 (h!27309 (t!179045 tokens!598)))))))

(declare-fun e!1230620 () Bool)

(assert (=> d!586815 (= (inv!21 (value!123539 (h!27309 (t!179045 tokens!598)))) e!1230620)))

(declare-fun b!1925182 () Bool)

(declare-fun e!1230618 () Bool)

(assert (=> b!1925182 (= e!1230620 e!1230618)))

(declare-fun c!313002 () Bool)

(assert (=> b!1925182 (= c!313002 ((_ is IntegerValue!12193) (value!123539 (h!27309 (t!179045 tokens!598)))))))

(declare-fun b!1925183 () Bool)

(declare-fun e!1230619 () Bool)

(assert (=> b!1925183 (= e!1230619 (inv!15 (value!123539 (h!27309 (t!179045 tokens!598)))))))

(declare-fun b!1925184 () Bool)

(assert (=> b!1925184 (= e!1230618 (inv!17 (value!123539 (h!27309 (t!179045 tokens!598)))))))

(declare-fun b!1925185 () Bool)

(declare-fun res!860881 () Bool)

(assert (=> b!1925185 (=> res!860881 e!1230619)))

(assert (=> b!1925185 (= res!860881 (not ((_ is IntegerValue!12194) (value!123539 (h!27309 (t!179045 tokens!598))))))))

(assert (=> b!1925185 (= e!1230618 e!1230619)))

(declare-fun b!1925186 () Bool)

(assert (=> b!1925186 (= e!1230620 (inv!16 (value!123539 (h!27309 (t!179045 tokens!598)))))))

(assert (= (and d!586815 c!313003) b!1925186))

(assert (= (and d!586815 (not c!313003)) b!1925182))

(assert (= (and b!1925182 c!313002) b!1925184))

(assert (= (and b!1925182 (not c!313002)) b!1925185))

(assert (= (and b!1925185 (not res!860881)) b!1925183))

(declare-fun m!2361097 () Bool)

(assert (=> b!1925183 m!2361097))

(declare-fun m!2361099 () Bool)

(assert (=> b!1925184 m!2361099))

(declare-fun m!2361101 () Bool)

(assert (=> b!1925186 m!2361101))

(assert (=> b!1923831 d!586815))

(declare-fun d!586817 () Bool)

(assert (=> d!586817 (= (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))) (isBalanced!2255 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))))))

(declare-fun bs!414605 () Bool)

(assert (= bs!414605 d!586817))

(declare-fun m!2361103 () Bool)

(assert (=> bs!414605 m!2361103))

(assert (=> tb!117541 d!586817))

(declare-fun b!1925205 () Bool)

(declare-fun e!1230634 () List!21990)

(declare-fun e!1230631 () List!21990)

(assert (=> b!1925205 (= e!1230634 e!1230631)))

(declare-fun c!313014 () Bool)

(assert (=> b!1925205 (= c!313014 (<= (+ 0 1) 0))))

(declare-fun b!1925206 () Bool)

(declare-fun e!1230633 () Int)

(declare-fun call!118355 () Int)

(assert (=> b!1925206 (= e!1230633 (- call!118355 (+ 0 1)))))

(declare-fun b!1925207 () Bool)

(assert (=> b!1925207 (= e!1230631 (drop!1071 (t!179045 lt!737291) (- (+ 0 1) 1)))))

(declare-fun d!586819 () Bool)

(declare-fun e!1230635 () Bool)

(assert (=> d!586819 e!1230635))

(declare-fun res!860884 () Bool)

(assert (=> d!586819 (=> (not res!860884) (not e!1230635))))

(declare-fun lt!737771 () List!21990)

(declare-fun content!3167 (List!21990) (InoxSet Token!7408))

(assert (=> d!586819 (= res!860884 (= ((_ map implies) (content!3167 lt!737771) (content!3167 lt!737291)) ((as const (InoxSet Token!7408)) true)))))

(assert (=> d!586819 (= lt!737771 e!1230634)))

(declare-fun c!313013 () Bool)

(assert (=> d!586819 (= c!313013 ((_ is Nil!21908) lt!737291))))

(assert (=> d!586819 (= (drop!1071 lt!737291 (+ 0 1)) lt!737771)))

(declare-fun b!1925208 () Bool)

(declare-fun e!1230632 () Int)

(assert (=> b!1925208 (= e!1230635 (= (size!17095 lt!737771) e!1230632))))

(declare-fun c!313015 () Bool)

(assert (=> b!1925208 (= c!313015 (<= (+ 0 1) 0))))

(declare-fun b!1925209 () Bool)

(assert (=> b!1925209 (= e!1230631 lt!737291)))

(declare-fun bm!118350 () Bool)

(assert (=> bm!118350 (= call!118355 (size!17095 lt!737291))))

(declare-fun b!1925210 () Bool)

(assert (=> b!1925210 (= e!1230632 e!1230633)))

(declare-fun c!313012 () Bool)

(assert (=> b!1925210 (= c!313012 (>= (+ 0 1) call!118355))))

(declare-fun b!1925211 () Bool)

(assert (=> b!1925211 (= e!1230633 0)))

(declare-fun b!1925212 () Bool)

(assert (=> b!1925212 (= e!1230632 call!118355)))

(declare-fun b!1925213 () Bool)

(assert (=> b!1925213 (= e!1230634 Nil!21908)))

(assert (= (and d!586819 c!313013) b!1925213))

(assert (= (and d!586819 (not c!313013)) b!1925205))

(assert (= (and b!1925205 c!313014) b!1925209))

(assert (= (and b!1925205 (not c!313014)) b!1925207))

(assert (= (and d!586819 res!860884) b!1925208))

(assert (= (and b!1925208 c!313015) b!1925212))

(assert (= (and b!1925208 (not c!313015)) b!1925210))

(assert (= (and b!1925210 c!313012) b!1925211))

(assert (= (and b!1925210 (not c!313012)) b!1925206))

(assert (= (or b!1925212 b!1925210 b!1925206) bm!118350))

(declare-fun m!2361105 () Bool)

(assert (=> b!1925207 m!2361105))

(declare-fun m!2361107 () Bool)

(assert (=> d!586819 m!2361107))

(declare-fun m!2361109 () Bool)

(assert (=> d!586819 m!2361109))

(declare-fun m!2361111 () Bool)

(assert (=> b!1925208 m!2361111))

(declare-fun m!2361113 () Bool)

(assert (=> bm!118350 m!2361113))

(assert (=> b!1923652 d!586819))

(declare-fun d!586821 () Bool)

(assert (=> d!586821 (= (head!4486 (drop!1071 lt!737289 0)) (h!27309 (drop!1071 lt!737289 0)))))

(assert (=> b!1923652 d!586821))

(assert (=> b!1923652 d!586565))

(declare-fun b!1925214 () Bool)

(declare-fun e!1230639 () List!21990)

(declare-fun e!1230636 () List!21990)

(assert (=> b!1925214 (= e!1230639 e!1230636)))

(declare-fun c!313018 () Bool)

(assert (=> b!1925214 (= c!313018 (<= 0 0))))

(declare-fun b!1925215 () Bool)

(declare-fun e!1230638 () Int)

(declare-fun call!118356 () Int)

(assert (=> b!1925215 (= e!1230638 (- call!118356 0))))

(declare-fun b!1925216 () Bool)

(assert (=> b!1925216 (= e!1230636 (drop!1071 (t!179045 lt!737291) (- 0 1)))))

(declare-fun d!586823 () Bool)

(declare-fun e!1230640 () Bool)

(assert (=> d!586823 e!1230640))

(declare-fun res!860885 () Bool)

(assert (=> d!586823 (=> (not res!860885) (not e!1230640))))

(declare-fun lt!737772 () List!21990)

(assert (=> d!586823 (= res!860885 (= ((_ map implies) (content!3167 lt!737772) (content!3167 lt!737291)) ((as const (InoxSet Token!7408)) true)))))

(assert (=> d!586823 (= lt!737772 e!1230639)))

(declare-fun c!313017 () Bool)

(assert (=> d!586823 (= c!313017 ((_ is Nil!21908) lt!737291))))

(assert (=> d!586823 (= (drop!1071 lt!737291 0) lt!737772)))

(declare-fun b!1925217 () Bool)

(declare-fun e!1230637 () Int)

(assert (=> b!1925217 (= e!1230640 (= (size!17095 lt!737772) e!1230637))))

(declare-fun c!313019 () Bool)

(assert (=> b!1925217 (= c!313019 (<= 0 0))))

(declare-fun b!1925218 () Bool)

(assert (=> b!1925218 (= e!1230636 lt!737291)))

(declare-fun bm!118351 () Bool)

(assert (=> bm!118351 (= call!118356 (size!17095 lt!737291))))

(declare-fun b!1925219 () Bool)

(assert (=> b!1925219 (= e!1230637 e!1230638)))

(declare-fun c!313016 () Bool)

(assert (=> b!1925219 (= c!313016 (>= 0 call!118356))))

(declare-fun b!1925220 () Bool)

(assert (=> b!1925220 (= e!1230638 0)))

(declare-fun b!1925221 () Bool)

(assert (=> b!1925221 (= e!1230637 call!118356)))

(declare-fun b!1925222 () Bool)

(assert (=> b!1925222 (= e!1230639 Nil!21908)))

(assert (= (and d!586823 c!313017) b!1925222))

(assert (= (and d!586823 (not c!313017)) b!1925214))

(assert (= (and b!1925214 c!313018) b!1925218))

(assert (= (and b!1925214 (not c!313018)) b!1925216))

(assert (= (and d!586823 res!860885) b!1925217))

(assert (= (and b!1925217 c!313019) b!1925221))

(assert (= (and b!1925217 (not c!313019)) b!1925219))

(assert (= (and b!1925219 c!313016) b!1925220))

(assert (= (and b!1925219 (not c!313016)) b!1925215))

(assert (= (or b!1925221 b!1925219 b!1925215) bm!118351))

(declare-fun m!2361115 () Bool)

(assert (=> b!1925216 m!2361115))

(declare-fun m!2361117 () Bool)

(assert (=> d!586823 m!2361117))

(assert (=> d!586823 m!2361109))

(declare-fun m!2361119 () Bool)

(assert (=> b!1925217 m!2361119))

(assert (=> bm!118351 m!2361113))

(assert (=> b!1923652 d!586823))

(declare-fun d!586825 () Bool)

(assert (=> d!586825 (= (tail!2974 (drop!1071 lt!737291 0)) (drop!1071 lt!737291 (+ 0 1)))))

(declare-fun lt!737775 () Unit!36232)

(declare-fun choose!11954 (List!21990 Int) Unit!36232)

(assert (=> d!586825 (= lt!737775 (choose!11954 lt!737291 0))))

(declare-fun e!1230643 () Bool)

(assert (=> d!586825 e!1230643))

(declare-fun res!860888 () Bool)

(assert (=> d!586825 (=> (not res!860888) (not e!1230643))))

(assert (=> d!586825 (= res!860888 (>= 0 0))))

(assert (=> d!586825 (= (lemmaDropTail!680 lt!737291 0) lt!737775)))

(declare-fun b!1925225 () Bool)

(assert (=> b!1925225 (= e!1230643 (< 0 (size!17095 lt!737291)))))

(assert (= (and d!586825 res!860888) b!1925225))

(assert (=> d!586825 m!2358813))

(assert (=> d!586825 m!2358813))

(assert (=> d!586825 m!2358815))

(assert (=> d!586825 m!2358799))

(declare-fun m!2361121 () Bool)

(assert (=> d!586825 m!2361121))

(assert (=> b!1925225 m!2361113))

(assert (=> b!1923652 d!586825))

(declare-fun d!586827 () Bool)

(declare-fun lt!737781 () BalanceConc!14436)

(assert (=> d!586827 (= (list!8853 lt!737781) (printListTailRec!449 thiss!23328 (dropList!780 lt!737061 (+ 0 1)) (list!8853 (++!5871 (BalanceConc!14437 Empty!7310) (charsOf!2468 (apply!5682 lt!737061 0))))))))

(declare-fun e!1230645 () BalanceConc!14436)

(assert (=> d!586827 (= lt!737781 e!1230645)))

(declare-fun c!313020 () Bool)

(assert (=> d!586827 (= c!313020 (>= (+ 0 1) (size!17092 lt!737061)))))

(declare-fun e!1230644 () Bool)

(assert (=> d!586827 e!1230644))

(declare-fun res!860889 () Bool)

(assert (=> d!586827 (=> (not res!860889) (not e!1230644))))

(assert (=> d!586827 (= res!860889 (>= (+ 0 1) 0))))

(assert (=> d!586827 (= (printTailRec!1017 thiss!23328 lt!737061 (+ 0 1) (++!5871 (BalanceConc!14437 Empty!7310) (charsOf!2468 (apply!5682 lt!737061 0)))) lt!737781)))

(declare-fun b!1925226 () Bool)

(assert (=> b!1925226 (= e!1230644 (<= (+ 0 1) (size!17092 lt!737061)))))

(declare-fun b!1925227 () Bool)

(assert (=> b!1925227 (= e!1230645 (++!5871 (BalanceConc!14437 Empty!7310) (charsOf!2468 (apply!5682 lt!737061 0))))))

(declare-fun b!1925228 () Bool)

(assert (=> b!1925228 (= e!1230645 (printTailRec!1017 thiss!23328 lt!737061 (+ 0 1 1) (++!5871 (++!5871 (BalanceConc!14437 Empty!7310) (charsOf!2468 (apply!5682 lt!737061 0))) (charsOf!2468 (apply!5682 lt!737061 (+ 0 1))))))))

(declare-fun lt!737776 () List!21990)

(assert (=> b!1925228 (= lt!737776 (list!8857 lt!737061))))

(declare-fun lt!737782 () Unit!36232)

(assert (=> b!1925228 (= lt!737782 (lemmaDropApply!704 lt!737776 (+ 0 1)))))

(assert (=> b!1925228 (= (head!4486 (drop!1071 lt!737776 (+ 0 1))) (apply!5683 lt!737776 (+ 0 1)))))

(declare-fun lt!737779 () Unit!36232)

(assert (=> b!1925228 (= lt!737779 lt!737782)))

(declare-fun lt!737778 () List!21990)

(assert (=> b!1925228 (= lt!737778 (list!8857 lt!737061))))

(declare-fun lt!737780 () Unit!36232)

(assert (=> b!1925228 (= lt!737780 (lemmaDropTail!680 lt!737778 (+ 0 1)))))

(assert (=> b!1925228 (= (tail!2974 (drop!1071 lt!737778 (+ 0 1))) (drop!1071 lt!737778 (+ 0 1 1)))))

(declare-fun lt!737777 () Unit!36232)

(assert (=> b!1925228 (= lt!737777 lt!737780)))

(assert (= (and d!586827 res!860889) b!1925226))

(assert (= (and d!586827 c!313020) b!1925227))

(assert (= (and d!586827 (not c!313020)) b!1925228))

(declare-fun m!2361123 () Bool)

(assert (=> d!586827 m!2361123))

(declare-fun m!2361125 () Bool)

(assert (=> d!586827 m!2361125))

(declare-fun m!2361127 () Bool)

(assert (=> d!586827 m!2361127))

(declare-fun m!2361129 () Bool)

(assert (=> d!586827 m!2361129))

(assert (=> d!586827 m!2358801))

(assert (=> d!586827 m!2361125))

(assert (=> d!586827 m!2358793))

(assert (=> d!586827 m!2361123))

(assert (=> b!1925226 m!2358793))

(declare-fun m!2361131 () Bool)

(assert (=> b!1925228 m!2361131))

(declare-fun m!2361133 () Bool)

(assert (=> b!1925228 m!2361133))

(declare-fun m!2361135 () Bool)

(assert (=> b!1925228 m!2361135))

(declare-fun m!2361137 () Bool)

(assert (=> b!1925228 m!2361137))

(declare-fun m!2361139 () Bool)

(assert (=> b!1925228 m!2361139))

(assert (=> b!1925228 m!2361133))

(declare-fun m!2361141 () Bool)

(assert (=> b!1925228 m!2361141))

(declare-fun m!2361143 () Bool)

(assert (=> b!1925228 m!2361143))

(declare-fun m!2361145 () Bool)

(assert (=> b!1925228 m!2361145))

(declare-fun m!2361147 () Bool)

(assert (=> b!1925228 m!2361147))

(assert (=> b!1925228 m!2358801))

(assert (=> b!1925228 m!2361141))

(assert (=> b!1925228 m!2361137))

(assert (=> b!1925228 m!2358715))

(declare-fun m!2361149 () Bool)

(assert (=> b!1925228 m!2361149))

(declare-fun m!2361151 () Bool)

(assert (=> b!1925228 m!2361151))

(assert (=> b!1925228 m!2361143))

(assert (=> b!1925228 m!2361149))

(declare-fun m!2361153 () Bool)

(assert (=> b!1925228 m!2361153))

(assert (=> b!1923652 d!586827))

(declare-fun b!1925240 () Bool)

(declare-fun e!1230648 () Bool)

(declare-fun lt!737785 () BalanceConc!14436)

(assert (=> b!1925240 (= e!1230648 (= (list!8853 lt!737785) (++!5869 (list!8853 (BalanceConc!14437 Empty!7310)) (list!8853 (charsOf!2468 (apply!5682 lt!737061 0))))))))

(declare-fun d!586829 () Bool)

(assert (=> d!586829 e!1230648))

(declare-fun res!860898 () Bool)

(assert (=> d!586829 (=> (not res!860898) (not e!1230648))))

(declare-fun appendAssocInst!522 (Conc!7310 Conc!7310) Bool)

(assert (=> d!586829 (= res!860898 (appendAssocInst!522 (c!312512 (BalanceConc!14437 Empty!7310)) (c!312512 (charsOf!2468 (apply!5682 lt!737061 0)))))))

(declare-fun ++!5873 (Conc!7310 Conc!7310) Conc!7310)

(assert (=> d!586829 (= lt!737785 (BalanceConc!14437 (++!5873 (c!312512 (BalanceConc!14437 Empty!7310)) (c!312512 (charsOf!2468 (apply!5682 lt!737061 0))))))))

(assert (=> d!586829 (= (++!5871 (BalanceConc!14437 Empty!7310) (charsOf!2468 (apply!5682 lt!737061 0))) lt!737785)))

(declare-fun b!1925237 () Bool)

(declare-fun res!860901 () Bool)

(assert (=> b!1925237 (=> (not res!860901) (not e!1230648))))

(assert (=> b!1925237 (= res!860901 (isBalanced!2255 (++!5873 (c!312512 (BalanceConc!14437 Empty!7310)) (c!312512 (charsOf!2468 (apply!5682 lt!737061 0))))))))

(declare-fun b!1925239 () Bool)

(declare-fun res!860899 () Bool)

(assert (=> b!1925239 (=> (not res!860899) (not e!1230648))))

(declare-fun height!1106 (Conc!7310) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1925239 (= res!860899 (>= (height!1106 (++!5873 (c!312512 (BalanceConc!14437 Empty!7310)) (c!312512 (charsOf!2468 (apply!5682 lt!737061 0))))) (max!0 (height!1106 (c!312512 (BalanceConc!14437 Empty!7310))) (height!1106 (c!312512 (charsOf!2468 (apply!5682 lt!737061 0)))))))))

(declare-fun b!1925238 () Bool)

(declare-fun res!860900 () Bool)

(assert (=> b!1925238 (=> (not res!860900) (not e!1230648))))

(assert (=> b!1925238 (= res!860900 (<= (height!1106 (++!5873 (c!312512 (BalanceConc!14437 Empty!7310)) (c!312512 (charsOf!2468 (apply!5682 lt!737061 0))))) (+ (max!0 (height!1106 (c!312512 (BalanceConc!14437 Empty!7310))) (height!1106 (c!312512 (charsOf!2468 (apply!5682 lt!737061 0))))) 1)))))

(assert (= (and d!586829 res!860898) b!1925237))

(assert (= (and b!1925237 res!860901) b!1925238))

(assert (= (and b!1925238 res!860900) b!1925239))

(assert (= (and b!1925239 res!860899) b!1925240))

(declare-fun m!2361155 () Bool)

(assert (=> b!1925240 m!2361155))

(assert (=> b!1925240 m!2358787))

(assert (=> b!1925240 m!2358805))

(declare-fun m!2361157 () Bool)

(assert (=> b!1925240 m!2361157))

(assert (=> b!1925240 m!2358787))

(assert (=> b!1925240 m!2361157))

(declare-fun m!2361159 () Bool)

(assert (=> b!1925240 m!2361159))

(declare-fun m!2361161 () Bool)

(assert (=> b!1925238 m!2361161))

(declare-fun m!2361163 () Bool)

(assert (=> b!1925238 m!2361163))

(assert (=> b!1925238 m!2361161))

(declare-fun m!2361165 () Bool)

(assert (=> b!1925238 m!2361165))

(declare-fun m!2361167 () Bool)

(assert (=> b!1925238 m!2361167))

(assert (=> b!1925238 m!2361165))

(assert (=> b!1925238 m!2361163))

(declare-fun m!2361169 () Bool)

(assert (=> b!1925238 m!2361169))

(assert (=> b!1925237 m!2361163))

(assert (=> b!1925237 m!2361163))

(declare-fun m!2361171 () Bool)

(assert (=> b!1925237 m!2361171))

(declare-fun m!2361173 () Bool)

(assert (=> d!586829 m!2361173))

(assert (=> d!586829 m!2361163))

(assert (=> b!1925239 m!2361161))

(assert (=> b!1925239 m!2361163))

(assert (=> b!1925239 m!2361161))

(assert (=> b!1925239 m!2361165))

(assert (=> b!1925239 m!2361167))

(assert (=> b!1925239 m!2361165))

(assert (=> b!1925239 m!2361163))

(assert (=> b!1925239 m!2361169))

(assert (=> b!1923652 d!586829))

(declare-fun d!586831 () Bool)

(declare-fun lt!737788 () Token!7408)

(assert (=> d!586831 (contains!3955 lt!737289 lt!737788)))

(declare-fun e!1230653 () Token!7408)

(assert (=> d!586831 (= lt!737788 e!1230653)))

(declare-fun c!313026 () Bool)

(assert (=> d!586831 (= c!313026 (= 0 0))))

(declare-fun e!1230654 () Bool)

(assert (=> d!586831 e!1230654))

(declare-fun res!860904 () Bool)

(assert (=> d!586831 (=> (not res!860904) (not e!1230654))))

(assert (=> d!586831 (= res!860904 (<= 0 0))))

(assert (=> d!586831 (= (apply!5683 lt!737289 0) lt!737788)))

(declare-fun b!1925247 () Bool)

(assert (=> b!1925247 (= e!1230654 (< 0 (size!17095 lt!737289)))))

(declare-fun b!1925248 () Bool)

(assert (=> b!1925248 (= e!1230653 (head!4486 lt!737289))))

(declare-fun b!1925249 () Bool)

(assert (=> b!1925249 (= e!1230653 (apply!5683 (tail!2974 lt!737289) (- 0 1)))))

(assert (= (and d!586831 res!860904) b!1925247))

(assert (= (and d!586831 c!313026) b!1925248))

(assert (= (and d!586831 (not c!313026)) b!1925249))

(declare-fun m!2361175 () Bool)

(assert (=> d!586831 m!2361175))

(declare-fun m!2361177 () Bool)

(assert (=> b!1925247 m!2361177))

(declare-fun m!2361179 () Bool)

(assert (=> b!1925248 m!2361179))

(declare-fun m!2361181 () Bool)

(assert (=> b!1925249 m!2361181))

(assert (=> b!1925249 m!2361181))

(declare-fun m!2361183 () Bool)

(assert (=> b!1925249 m!2361183))

(assert (=> b!1923652 d!586831))

(declare-fun d!586833 () Bool)

(assert (=> d!586833 (= (tail!2974 (drop!1071 lt!737291 0)) (t!179045 (drop!1071 lt!737291 0)))))

(assert (=> b!1923652 d!586833))

(declare-fun b!1925250 () Bool)

(declare-fun e!1230658 () List!21990)

(declare-fun e!1230655 () List!21990)

(assert (=> b!1925250 (= e!1230658 e!1230655)))

(declare-fun c!313029 () Bool)

(assert (=> b!1925250 (= c!313029 (<= 0 0))))

(declare-fun b!1925251 () Bool)

(declare-fun e!1230657 () Int)

(declare-fun call!118357 () Int)

(assert (=> b!1925251 (= e!1230657 (- call!118357 0))))

(declare-fun b!1925252 () Bool)

(assert (=> b!1925252 (= e!1230655 (drop!1071 (t!179045 lt!737289) (- 0 1)))))

(declare-fun d!586835 () Bool)

(declare-fun e!1230659 () Bool)

(assert (=> d!586835 e!1230659))

(declare-fun res!860905 () Bool)

(assert (=> d!586835 (=> (not res!860905) (not e!1230659))))

(declare-fun lt!737789 () List!21990)

(assert (=> d!586835 (= res!860905 (= ((_ map implies) (content!3167 lt!737789) (content!3167 lt!737289)) ((as const (InoxSet Token!7408)) true)))))

(assert (=> d!586835 (= lt!737789 e!1230658)))

(declare-fun c!313028 () Bool)

(assert (=> d!586835 (= c!313028 ((_ is Nil!21908) lt!737289))))

(assert (=> d!586835 (= (drop!1071 lt!737289 0) lt!737789)))

(declare-fun b!1925253 () Bool)

(declare-fun e!1230656 () Int)

(assert (=> b!1925253 (= e!1230659 (= (size!17095 lt!737789) e!1230656))))

(declare-fun c!313030 () Bool)

(assert (=> b!1925253 (= c!313030 (<= 0 0))))

(declare-fun b!1925254 () Bool)

(assert (=> b!1925254 (= e!1230655 lt!737289)))

(declare-fun bm!118352 () Bool)

(assert (=> bm!118352 (= call!118357 (size!17095 lt!737289))))

(declare-fun b!1925255 () Bool)

(assert (=> b!1925255 (= e!1230656 e!1230657)))

(declare-fun c!313027 () Bool)

(assert (=> b!1925255 (= c!313027 (>= 0 call!118357))))

(declare-fun b!1925256 () Bool)

(assert (=> b!1925256 (= e!1230657 0)))

(declare-fun b!1925257 () Bool)

(assert (=> b!1925257 (= e!1230656 call!118357)))

(declare-fun b!1925258 () Bool)

(assert (=> b!1925258 (= e!1230658 Nil!21908)))

(assert (= (and d!586835 c!313028) b!1925258))

(assert (= (and d!586835 (not c!313028)) b!1925250))

(assert (= (and b!1925250 c!313029) b!1925254))

(assert (= (and b!1925250 (not c!313029)) b!1925252))

(assert (= (and d!586835 res!860905) b!1925253))

(assert (= (and b!1925253 c!313030) b!1925257))

(assert (= (and b!1925253 (not c!313030)) b!1925255))

(assert (= (and b!1925255 c!313027) b!1925256))

(assert (= (and b!1925255 (not c!313027)) b!1925251))

(assert (= (or b!1925257 b!1925255 b!1925251) bm!118352))

(declare-fun m!2361185 () Bool)

(assert (=> b!1925252 m!2361185))

(declare-fun m!2361187 () Bool)

(assert (=> d!586835 m!2361187))

(declare-fun m!2361189 () Bool)

(assert (=> d!586835 m!2361189))

(declare-fun m!2361191 () Bool)

(assert (=> b!1925253 m!2361191))

(assert (=> bm!118352 m!2361177))

(assert (=> b!1923652 d!586835))

(declare-fun d!586837 () Bool)

(declare-fun lt!737790 () BalanceConc!14436)

(assert (=> d!586837 (= (list!8853 lt!737790) (originalCharacters!4735 (apply!5682 lt!737061 0)))))

(assert (=> d!586837 (= lt!737790 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0)))) (value!123539 (apply!5682 lt!737061 0))))))

(assert (=> d!586837 (= (charsOf!2468 (apply!5682 lt!737061 0)) lt!737790)))

(declare-fun b_lambda!63713 () Bool)

(assert (=> (not b_lambda!63713) (not d!586837)))

(declare-fun t!179349 () Bool)

(declare-fun tb!117775 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0))))) t!179349) tb!117775))

(declare-fun b!1925259 () Bool)

(declare-fun e!1230660 () Bool)

(declare-fun tp!549985 () Bool)

(assert (=> b!1925259 (= e!1230660 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0)))) (value!123539 (apply!5682 lt!737061 0))))) tp!549985))))

(declare-fun result!142316 () Bool)

(assert (=> tb!117775 (= result!142316 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0)))) (value!123539 (apply!5682 lt!737061 0)))) e!1230660))))

(assert (= tb!117775 b!1925259))

(declare-fun m!2361193 () Bool)

(assert (=> b!1925259 m!2361193))

(declare-fun m!2361195 () Bool)

(assert (=> tb!117775 m!2361195))

(assert (=> d!586837 t!179349))

(declare-fun b_and!150809 () Bool)

(assert (= b_and!150799 (and (=> t!179349 result!142316) b_and!150809)))

(declare-fun tb!117777 () Bool)

(declare-fun t!179351 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0))))) t!179351) tb!117777))

(declare-fun result!142318 () Bool)

(assert (= result!142318 result!142316))

(assert (=> d!586837 t!179351))

(declare-fun b_and!150811 () Bool)

(assert (= b_and!150805 (and (=> t!179351 result!142318) b_and!150811)))

(declare-fun tb!117779 () Bool)

(declare-fun t!179353 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0))))) t!179353) tb!117779))

(declare-fun result!142320 () Bool)

(assert (= result!142320 result!142316))

(assert (=> d!586837 t!179353))

(declare-fun b_and!150813 () Bool)

(assert (= b_and!150803 (and (=> t!179353 result!142320) b_and!150813)))

(declare-fun tb!117781 () Bool)

(declare-fun t!179355 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0))))) t!179355) tb!117781))

(declare-fun result!142322 () Bool)

(assert (= result!142322 result!142316))

(assert (=> d!586837 t!179355))

(declare-fun b_and!150815 () Bool)

(assert (= b_and!150807 (and (=> t!179355 result!142322) b_and!150815)))

(declare-fun t!179357 () Bool)

(declare-fun tb!117783 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0))))) t!179357) tb!117783))

(declare-fun result!142324 () Bool)

(assert (= result!142324 result!142316))

(assert (=> d!586837 t!179357))

(declare-fun b_and!150817 () Bool)

(assert (= b_and!150801 (and (=> t!179357 result!142324) b_and!150817)))

(declare-fun m!2361197 () Bool)

(assert (=> d!586837 m!2361197))

(declare-fun m!2361199 () Bool)

(assert (=> d!586837 m!2361199))

(assert (=> b!1923652 d!586837))

(declare-fun d!586839 () Bool)

(assert (=> d!586839 (= (head!4486 (drop!1071 lt!737289 0)) (apply!5683 lt!737289 0))))

(declare-fun lt!737793 () Unit!36232)

(declare-fun choose!11955 (List!21990 Int) Unit!36232)

(assert (=> d!586839 (= lt!737793 (choose!11955 lt!737289 0))))

(declare-fun e!1230663 () Bool)

(assert (=> d!586839 e!1230663))

(declare-fun res!860908 () Bool)

(assert (=> d!586839 (=> (not res!860908) (not e!1230663))))

(assert (=> d!586839 (= res!860908 (>= 0 0))))

(assert (=> d!586839 (= (lemmaDropApply!704 lt!737289 0) lt!737793)))

(declare-fun b!1925262 () Bool)

(assert (=> b!1925262 (= e!1230663 (< 0 (size!17095 lt!737289)))))

(assert (= (and d!586839 res!860908) b!1925262))

(assert (=> d!586839 m!2358807))

(assert (=> d!586839 m!2358807))

(assert (=> d!586839 m!2358809))

(assert (=> d!586839 m!2358811))

(declare-fun m!2361201 () Bool)

(assert (=> d!586839 m!2361201))

(assert (=> b!1925262 m!2361177))

(assert (=> b!1923652 d!586839))

(declare-fun d!586841 () Bool)

(declare-fun lt!737794 () Token!7408)

(assert (=> d!586841 (= lt!737794 (apply!5683 (list!8857 lt!737061) 0))))

(assert (=> d!586841 (= lt!737794 (apply!5685 (c!312514 lt!737061) 0))))

(declare-fun e!1230664 () Bool)

(assert (=> d!586841 e!1230664))

(declare-fun res!860909 () Bool)

(assert (=> d!586841 (=> (not res!860909) (not e!1230664))))

(assert (=> d!586841 (= res!860909 (<= 0 0))))

(assert (=> d!586841 (= (apply!5682 lt!737061 0) lt!737794)))

(declare-fun b!1925263 () Bool)

(assert (=> b!1925263 (= e!1230664 (< 0 (size!17092 lt!737061)))))

(assert (= (and d!586841 res!860909) b!1925263))

(assert (=> d!586841 m!2358715))

(assert (=> d!586841 m!2358715))

(declare-fun m!2361203 () Bool)

(assert (=> d!586841 m!2361203))

(declare-fun m!2361205 () Bool)

(assert (=> d!586841 m!2361205))

(assert (=> b!1925263 m!2358793))

(assert (=> b!1923652 d!586841))

(declare-fun bm!118353 () Bool)

(declare-fun call!118358 () List!21988)

(declare-fun c!313031 () Bool)

(assert (=> bm!118353 (= call!118358 (usedCharacters!380 (ite c!313031 (regOne!11219 (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) (regTwo!11218 (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))))))))

(declare-fun b!1925264 () Bool)

(declare-fun e!1230666 () List!21988)

(declare-fun e!1230667 () List!21988)

(assert (=> b!1925264 (= e!1230666 e!1230667)))

(assert (=> b!1925264 (= c!313031 ((_ is Union!5353) (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))))))

(declare-fun b!1925265 () Bool)

(declare-fun e!1230668 () List!21988)

(assert (=> b!1925265 (= e!1230668 (Cons!21906 (c!312513 (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) Nil!21906))))

(declare-fun bm!118354 () Bool)

(declare-fun c!313033 () Bool)

(declare-fun call!118359 () List!21988)

(assert (=> bm!118354 (= call!118359 (usedCharacters!380 (ite c!313033 (reg!5682 (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) (ite c!313031 (regTwo!11219 (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) (regOne!11218 (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))))))

(declare-fun b!1925266 () Bool)

(declare-fun e!1230665 () List!21988)

(assert (=> b!1925266 (= e!1230665 Nil!21906)))

(declare-fun bm!118355 () Bool)

(declare-fun call!118360 () List!21988)

(assert (=> bm!118355 (= call!118360 call!118359)))

(declare-fun bm!118356 () Bool)

(declare-fun call!118361 () List!21988)

(assert (=> bm!118356 (= call!118361 (++!5869 (ite c!313031 call!118358 call!118360) (ite c!313031 call!118360 call!118358)))))

(declare-fun b!1925268 () Bool)

(assert (=> b!1925268 (= e!1230667 call!118361)))

(declare-fun b!1925269 () Bool)

(assert (=> b!1925269 (= e!1230666 call!118359)))

(declare-fun d!586843 () Bool)

(declare-fun c!313034 () Bool)

(assert (=> d!586843 (= c!313034 (or ((_ is EmptyExpr!5353) (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) ((_ is EmptyLang!5353) (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598))))))))))

(assert (=> d!586843 (= (usedCharacters!380 (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) e!1230665)))

(declare-fun b!1925267 () Bool)

(assert (=> b!1925267 (= c!313033 ((_ is Star!5353) (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))))))

(assert (=> b!1925267 (= e!1230668 e!1230666)))

(declare-fun b!1925270 () Bool)

(assert (=> b!1925270 (= e!1230667 call!118361)))

(declare-fun b!1925271 () Bool)

(assert (=> b!1925271 (= e!1230665 e!1230668)))

(declare-fun c!313032 () Bool)

(assert (=> b!1925271 (= c!313032 ((_ is ElementMatch!5353) (ite c!312650 (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))))))

(assert (= (and d!586843 c!313034) b!1925266))

(assert (= (and d!586843 (not c!313034)) b!1925271))

(assert (= (and b!1925271 c!313032) b!1925265))

(assert (= (and b!1925271 (not c!313032)) b!1925267))

(assert (= (and b!1925267 c!313033) b!1925269))

(assert (= (and b!1925267 (not c!313033)) b!1925264))

(assert (= (and b!1925264 c!313031) b!1925270))

(assert (= (and b!1925264 (not c!313031)) b!1925268))

(assert (= (or b!1925270 b!1925268) bm!118353))

(assert (= (or b!1925270 b!1925268) bm!118355))

(assert (= (or b!1925270 b!1925268) bm!118356))

(assert (= (or b!1925269 bm!118355) bm!118354))

(declare-fun m!2361207 () Bool)

(assert (=> bm!118353 m!2361207))

(declare-fun m!2361209 () Bool)

(assert (=> bm!118354 m!2361209))

(declare-fun m!2361211 () Bool)

(assert (=> bm!118356 m!2361211))

(assert (=> bm!118219 d!586843))

(declare-fun d!586845 () Bool)

(declare-fun lt!737797 () Bool)

(assert (=> d!586845 (= lt!737797 (isEmpty!13485 (list!8853 (_2!11730 lt!737304))))))

(declare-fun isEmpty!13492 (Conc!7310) Bool)

(assert (=> d!586845 (= lt!737797 (isEmpty!13492 (c!312512 (_2!11730 lt!737304))))))

(assert (=> d!586845 (= (isEmpty!13486 (_2!11730 lt!737304)) lt!737797)))

(declare-fun bs!414606 () Bool)

(assert (= bs!414606 d!586845))

(declare-fun m!2361213 () Bool)

(assert (=> bs!414606 m!2361213))

(assert (=> bs!414606 m!2361213))

(declare-fun m!2361215 () Bool)

(assert (=> bs!414606 m!2361215))

(declare-fun m!2361217 () Bool)

(assert (=> bs!414606 m!2361217))

(assert (=> b!1923694 d!586845))

(declare-fun b!1925273 () Bool)

(declare-fun e!1230669 () List!21988)

(assert (=> b!1925273 (= e!1230669 (Cons!21906 (h!27307 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))) (++!5869 (t!179043 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))) (_2!11728 (get!6893 lt!737164)))))))

(declare-fun b!1925275 () Bool)

(declare-fun e!1230670 () Bool)

(declare-fun lt!737798 () List!21988)

(assert (=> b!1925275 (= e!1230670 (or (not (= (_2!11728 (get!6893 lt!737164)) Nil!21906)) (= lt!737798 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164)))))))))

(declare-fun b!1925274 () Bool)

(declare-fun res!860910 () Bool)

(assert (=> b!1925274 (=> (not res!860910) (not e!1230670))))

(assert (=> b!1925274 (= res!860910 (= (size!17091 lt!737798) (+ (size!17091 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))) (size!17091 (_2!11728 (get!6893 lt!737164))))))))

(declare-fun b!1925272 () Bool)

(assert (=> b!1925272 (= e!1230669 (_2!11728 (get!6893 lt!737164)))))

(declare-fun d!586847 () Bool)

(assert (=> d!586847 e!1230670))

(declare-fun res!860911 () Bool)

(assert (=> d!586847 (=> (not res!860911) (not e!1230670))))

(assert (=> d!586847 (= res!860911 (= (content!3163 lt!737798) ((_ map or) (content!3163 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))) (content!3163 (_2!11728 (get!6893 lt!737164))))))))

(assert (=> d!586847 (= lt!737798 e!1230669)))

(declare-fun c!313035 () Bool)

(assert (=> d!586847 (= c!313035 ((_ is Nil!21906) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164))))))))

(assert (=> d!586847 (= (++!5869 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737164)))) (_2!11728 (get!6893 lt!737164))) lt!737798)))

(assert (= (and d!586847 c!313035) b!1925272))

(assert (= (and d!586847 (not c!313035)) b!1925273))

(assert (= (and d!586847 res!860911) b!1925274))

(assert (= (and b!1925274 res!860910) b!1925275))

(declare-fun m!2361219 () Bool)

(assert (=> b!1925273 m!2361219))

(declare-fun m!2361221 () Bool)

(assert (=> b!1925274 m!2361221))

(assert (=> b!1925274 m!2358359))

(declare-fun m!2361223 () Bool)

(assert (=> b!1925274 m!2361223))

(assert (=> b!1925274 m!2358375))

(declare-fun m!2361225 () Bool)

(assert (=> d!586847 m!2361225))

(assert (=> d!586847 m!2358359))

(declare-fun m!2361227 () Bool)

(assert (=> d!586847 m!2361227))

(declare-fun m!2361229 () Bool)

(assert (=> d!586847 m!2361229))

(assert (=> b!1923317 d!586847))

(assert (=> b!1923317 d!586585))

(assert (=> b!1923317 d!586587))

(assert (=> b!1923317 d!586251))

(declare-fun d!586849 () Bool)

(assert (=> d!586849 (= (list!8853 lt!737209) (list!8856 (c!312512 lt!737209)))))

(declare-fun bs!414607 () Bool)

(assert (= bs!414607 d!586849))

(declare-fun m!2361231 () Bool)

(assert (=> bs!414607 m!2361231))

(assert (=> d!585939 d!586849))

(declare-fun d!586851 () Bool)

(assert (=> d!586851 (= (inv!28977 (tag!4370 (h!27310 (t!179046 rules!3198)))) (= (mod (str.len (value!123538 (tag!4370 (h!27310 (t!179046 rules!3198))))) 2) 0))))

(assert (=> b!1923847 d!586851))

(declare-fun d!586853 () Bool)

(declare-fun res!860912 () Bool)

(declare-fun e!1230671 () Bool)

(assert (=> d!586853 (=> (not res!860912) (not e!1230671))))

(assert (=> d!586853 (= res!860912 (semiInverseModEq!1561 (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198))))))))

(assert (=> d!586853 (= (inv!28981 (transformation!3928 (h!27310 (t!179046 rules!3198)))) e!1230671)))

(declare-fun b!1925276 () Bool)

(assert (=> b!1925276 (= e!1230671 (equivClasses!1488 (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198))))))))

(assert (= (and d!586853 res!860912) b!1925276))

(declare-fun m!2361233 () Bool)

(assert (=> d!586853 m!2361233))

(declare-fun m!2361235 () Bool)

(assert (=> b!1925276 m!2361235))

(assert (=> b!1923847 d!586853))

(declare-fun d!586855 () Bool)

(declare-fun lt!737799 () Bool)

(assert (=> d!586855 (= lt!737799 (select (content!3165 rules!3198) (rule!6131 (_1!11728 (get!6893 lt!737164)))))))

(declare-fun e!1230673 () Bool)

(assert (=> d!586855 (= lt!737799 e!1230673)))

(declare-fun res!860914 () Bool)

(assert (=> d!586855 (=> (not res!860914) (not e!1230673))))

(assert (=> d!586855 (= res!860914 ((_ is Cons!21909) rules!3198))))

(assert (=> d!586855 (= (contains!3953 rules!3198 (rule!6131 (_1!11728 (get!6893 lt!737164)))) lt!737799)))

(declare-fun b!1925277 () Bool)

(declare-fun e!1230672 () Bool)

(assert (=> b!1925277 (= e!1230673 e!1230672)))

(declare-fun res!860913 () Bool)

(assert (=> b!1925277 (=> res!860913 e!1230672)))

(assert (=> b!1925277 (= res!860913 (= (h!27310 rules!3198) (rule!6131 (_1!11728 (get!6893 lt!737164)))))))

(declare-fun b!1925278 () Bool)

(assert (=> b!1925278 (= e!1230672 (contains!3953 (t!179046 rules!3198) (rule!6131 (_1!11728 (get!6893 lt!737164)))))))

(assert (= (and d!586855 res!860914) b!1925277))

(assert (= (and b!1925277 (not res!860913)) b!1925278))

(assert (=> d!586855 m!2359559))

(declare-fun m!2361237 () Bool)

(assert (=> d!586855 m!2361237))

(declare-fun m!2361239 () Bool)

(assert (=> b!1925278 m!2361239))

(assert (=> b!1923313 d!586855))

(assert (=> b!1923313 d!586251))

(declare-fun e!1230674 () List!21988)

(declare-fun b!1925280 () Bool)

(assert (=> b!1925280 (= e!1230674 (Cons!21906 (h!27307 e!1229507) (++!5869 (t!179043 e!1229507) (ite c!312561 lt!737156 call!118189))))))

(declare-fun lt!737800 () List!21988)

(declare-fun e!1230675 () Bool)

(declare-fun b!1925282 () Bool)

(assert (=> b!1925282 (= e!1230675 (or (not (= (ite c!312561 lt!737156 call!118189) Nil!21906)) (= lt!737800 e!1229507)))))

(declare-fun b!1925281 () Bool)

(declare-fun res!860915 () Bool)

(assert (=> b!1925281 (=> (not res!860915) (not e!1230675))))

(assert (=> b!1925281 (= res!860915 (= (size!17091 lt!737800) (+ (size!17091 e!1229507) (size!17091 (ite c!312561 lt!737156 call!118189)))))))

(declare-fun b!1925279 () Bool)

(assert (=> b!1925279 (= e!1230674 (ite c!312561 lt!737156 call!118189))))

(declare-fun d!586857 () Bool)

(assert (=> d!586857 e!1230675))

(declare-fun res!860916 () Bool)

(assert (=> d!586857 (=> (not res!860916) (not e!1230675))))

(assert (=> d!586857 (= res!860916 (= (content!3163 lt!737800) ((_ map or) (content!3163 e!1229507) (content!3163 (ite c!312561 lt!737156 call!118189)))))))

(assert (=> d!586857 (= lt!737800 e!1230674)))

(declare-fun c!313036 () Bool)

(assert (=> d!586857 (= c!313036 ((_ is Nil!21906) e!1229507))))

(assert (=> d!586857 (= (++!5869 e!1229507 (ite c!312561 lt!737156 call!118189)) lt!737800)))

(assert (= (and d!586857 c!313036) b!1925279))

(assert (= (and d!586857 (not c!313036)) b!1925280))

(assert (= (and d!586857 res!860916) b!1925281))

(assert (= (and b!1925281 res!860915) b!1925282))

(declare-fun m!2361241 () Bool)

(assert (=> b!1925280 m!2361241))

(declare-fun m!2361243 () Bool)

(assert (=> b!1925281 m!2361243))

(declare-fun m!2361245 () Bool)

(assert (=> b!1925281 m!2361245))

(declare-fun m!2361247 () Bool)

(assert (=> b!1925281 m!2361247))

(declare-fun m!2361249 () Bool)

(assert (=> d!586857 m!2361249))

(declare-fun m!2361251 () Bool)

(assert (=> d!586857 m!2361251))

(declare-fun m!2361253 () Bool)

(assert (=> d!586857 m!2361253))

(assert (=> bm!118184 d!586857))

(assert (=> d!585947 d!586171))

(declare-fun bm!118357 () Bool)

(declare-fun call!118362 () Bool)

(declare-fun c!313037 () Bool)

(assert (=> bm!118357 (= call!118362 (validRegex!2131 (ite c!313037 (regTwo!11219 (regex!3928 lt!737053)) (regTwo!11218 (regex!3928 lt!737053)))))))

(declare-fun b!1925283 () Bool)

(declare-fun res!860920 () Bool)

(declare-fun e!1230676 () Bool)

(assert (=> b!1925283 (=> (not res!860920) (not e!1230676))))

(declare-fun call!118363 () Bool)

(assert (=> b!1925283 (= res!860920 call!118363)))

(declare-fun e!1230677 () Bool)

(assert (=> b!1925283 (= e!1230677 e!1230676)))

(declare-fun b!1925284 () Bool)

(assert (=> b!1925284 (= e!1230676 call!118362)))

(declare-fun call!118364 () Bool)

(declare-fun c!313038 () Bool)

(declare-fun bm!118358 () Bool)

(assert (=> bm!118358 (= call!118364 (validRegex!2131 (ite c!313038 (reg!5682 (regex!3928 lt!737053)) (ite c!313037 (regOne!11219 (regex!3928 lt!737053)) (regOne!11218 (regex!3928 lt!737053))))))))

(declare-fun b!1925285 () Bool)

(declare-fun e!1230681 () Bool)

(assert (=> b!1925285 (= e!1230681 call!118362)))

(declare-fun b!1925286 () Bool)

(declare-fun e!1230680 () Bool)

(assert (=> b!1925286 (= e!1230680 e!1230681)))

(declare-fun res!860918 () Bool)

(assert (=> b!1925286 (=> (not res!860918) (not e!1230681))))

(assert (=> b!1925286 (= res!860918 call!118363)))

(declare-fun b!1925287 () Bool)

(declare-fun e!1230679 () Bool)

(declare-fun e!1230682 () Bool)

(assert (=> b!1925287 (= e!1230679 e!1230682)))

(declare-fun res!860917 () Bool)

(assert (=> b!1925287 (= res!860917 (not (nullable!1605 (reg!5682 (regex!3928 lt!737053)))))))

(assert (=> b!1925287 (=> (not res!860917) (not e!1230682))))

(declare-fun bm!118359 () Bool)

(assert (=> bm!118359 (= call!118363 call!118364)))

(declare-fun d!586859 () Bool)

(declare-fun res!860921 () Bool)

(declare-fun e!1230678 () Bool)

(assert (=> d!586859 (=> res!860921 e!1230678)))

(assert (=> d!586859 (= res!860921 ((_ is ElementMatch!5353) (regex!3928 lt!737053)))))

(assert (=> d!586859 (= (validRegex!2131 (regex!3928 lt!737053)) e!1230678)))

(declare-fun b!1925288 () Bool)

(assert (=> b!1925288 (= e!1230679 e!1230677)))

(assert (=> b!1925288 (= c!313037 ((_ is Union!5353) (regex!3928 lt!737053)))))

(declare-fun b!1925289 () Bool)

(assert (=> b!1925289 (= e!1230678 e!1230679)))

(assert (=> b!1925289 (= c!313038 ((_ is Star!5353) (regex!3928 lt!737053)))))

(declare-fun b!1925290 () Bool)

(assert (=> b!1925290 (= e!1230682 call!118364)))

(declare-fun b!1925291 () Bool)

(declare-fun res!860919 () Bool)

(assert (=> b!1925291 (=> res!860919 e!1230680)))

(assert (=> b!1925291 (= res!860919 (not ((_ is Concat!9418) (regex!3928 lt!737053))))))

(assert (=> b!1925291 (= e!1230677 e!1230680)))

(assert (= (and d!586859 (not res!860921)) b!1925289))

(assert (= (and b!1925289 c!313038) b!1925287))

(assert (= (and b!1925289 (not c!313038)) b!1925288))

(assert (= (and b!1925287 res!860917) b!1925290))

(assert (= (and b!1925288 c!313037) b!1925283))

(assert (= (and b!1925288 (not c!313037)) b!1925291))

(assert (= (and b!1925283 res!860920) b!1925284))

(assert (= (and b!1925291 (not res!860919)) b!1925286))

(assert (= (and b!1925286 res!860918) b!1925285))

(assert (= (or b!1925283 b!1925286) bm!118359))

(assert (= (or b!1925284 b!1925285) bm!118357))

(assert (= (or b!1925290 bm!118359) bm!118358))

(declare-fun m!2361255 () Bool)

(assert (=> bm!118357 m!2361255))

(declare-fun m!2361257 () Bool)

(assert (=> bm!118358 m!2361257))

(declare-fun m!2361259 () Bool)

(assert (=> b!1925287 m!2361259))

(assert (=> d!585947 d!586859))

(declare-fun d!586861 () Bool)

(assert (=> d!586861 (= (isEmpty!13483 lt!737164) (not ((_ is Some!4531) lt!737164)))))

(assert (=> d!585889 d!586861))

(declare-fun b!1925293 () Bool)

(declare-fun res!860924 () Bool)

(declare-fun e!1230685 () Bool)

(assert (=> b!1925293 (=> (not res!860924) (not e!1230685))))

(assert (=> b!1925293 (= res!860924 (= (head!4484 lt!737051) (head!4484 lt!737051)))))

(declare-fun b!1925294 () Bool)

(assert (=> b!1925294 (= e!1230685 (isPrefix!1937 (tail!2972 lt!737051) (tail!2972 lt!737051)))))

(declare-fun b!1925292 () Bool)

(declare-fun e!1230684 () Bool)

(assert (=> b!1925292 (= e!1230684 e!1230685)))

(declare-fun res!860925 () Bool)

(assert (=> b!1925292 (=> (not res!860925) (not e!1230685))))

(assert (=> b!1925292 (= res!860925 (not ((_ is Nil!21906) lt!737051)))))

(declare-fun b!1925295 () Bool)

(declare-fun e!1230683 () Bool)

(assert (=> b!1925295 (= e!1230683 (>= (size!17091 lt!737051) (size!17091 lt!737051)))))

(declare-fun d!586863 () Bool)

(assert (=> d!586863 e!1230683))

(declare-fun res!860922 () Bool)

(assert (=> d!586863 (=> res!860922 e!1230683)))

(declare-fun lt!737801 () Bool)

(assert (=> d!586863 (= res!860922 (not lt!737801))))

(assert (=> d!586863 (= lt!737801 e!1230684)))

(declare-fun res!860923 () Bool)

(assert (=> d!586863 (=> res!860923 e!1230684)))

(assert (=> d!586863 (= res!860923 ((_ is Nil!21906) lt!737051))))

(assert (=> d!586863 (= (isPrefix!1937 lt!737051 lt!737051) lt!737801)))

(assert (= (and d!586863 (not res!860923)) b!1925292))

(assert (= (and b!1925292 res!860925) b!1925293))

(assert (= (and b!1925293 res!860924) b!1925294))

(assert (= (and d!586863 (not res!860922)) b!1925295))

(assert (=> b!1925293 m!2358569))

(assert (=> b!1925293 m!2358569))

(assert (=> b!1925294 m!2358575))

(assert (=> b!1925294 m!2358575))

(assert (=> b!1925294 m!2358575))

(assert (=> b!1925294 m!2358575))

(declare-fun m!2361261 () Bool)

(assert (=> b!1925294 m!2361261))

(assert (=> b!1925295 m!2358227))

(assert (=> b!1925295 m!2358227))

(assert (=> d!585889 d!586863))

(declare-fun d!586865 () Bool)

(assert (=> d!586865 (isPrefix!1937 lt!737051 lt!737051)))

(declare-fun lt!737802 () Unit!36232)

(assert (=> d!586865 (= lt!737802 (choose!11946 lt!737051 lt!737051))))

(assert (=> d!586865 (= (lemmaIsPrefixRefl!1255 lt!737051 lt!737051) lt!737802)))

(declare-fun bs!414608 () Bool)

(assert (= bs!414608 d!586865))

(assert (=> bs!414608 m!2358385))

(declare-fun m!2361263 () Bool)

(assert (=> bs!414608 m!2361263))

(assert (=> d!585889 d!586865))

(assert (=> d!585889 d!586187))

(declare-fun b!1925297 () Bool)

(declare-fun e!1230686 () List!21988)

(assert (=> b!1925297 (= e!1230686 (Cons!21906 (h!27307 (t!179043 lt!737051)) (++!5869 (t!179043 (t!179043 lt!737051)) lt!737059)))))

(declare-fun lt!737803 () List!21988)

(declare-fun e!1230687 () Bool)

(declare-fun b!1925299 () Bool)

(assert (=> b!1925299 (= e!1230687 (or (not (= lt!737059 Nil!21906)) (= lt!737803 (t!179043 lt!737051))))))

(declare-fun b!1925298 () Bool)

(declare-fun res!860926 () Bool)

(assert (=> b!1925298 (=> (not res!860926) (not e!1230687))))

(assert (=> b!1925298 (= res!860926 (= (size!17091 lt!737803) (+ (size!17091 (t!179043 lt!737051)) (size!17091 lt!737059))))))

(declare-fun b!1925296 () Bool)

(assert (=> b!1925296 (= e!1230686 lt!737059)))

(declare-fun d!586867 () Bool)

(assert (=> d!586867 e!1230687))

(declare-fun res!860927 () Bool)

(assert (=> d!586867 (=> (not res!860927) (not e!1230687))))

(assert (=> d!586867 (= res!860927 (= (content!3163 lt!737803) ((_ map or) (content!3163 (t!179043 lt!737051)) (content!3163 lt!737059))))))

(assert (=> d!586867 (= lt!737803 e!1230686)))

(declare-fun c!313039 () Bool)

(assert (=> d!586867 (= c!313039 ((_ is Nil!21906) (t!179043 lt!737051)))))

(assert (=> d!586867 (= (++!5869 (t!179043 lt!737051) lt!737059) lt!737803)))

(assert (= (and d!586867 c!313039) b!1925296))

(assert (= (and d!586867 (not c!313039)) b!1925297))

(assert (= (and d!586867 res!860927) b!1925298))

(assert (= (and b!1925298 res!860926) b!1925299))

(declare-fun m!2361265 () Bool)

(assert (=> b!1925297 m!2361265))

(declare-fun m!2361267 () Bool)

(assert (=> b!1925298 m!2361267))

(assert (=> b!1925298 m!2359207))

(assert (=> b!1925298 m!2358229))

(declare-fun m!2361269 () Bool)

(assert (=> d!586867 m!2361269))

(assert (=> d!586867 m!2359573))

(assert (=> d!586867 m!2358235))

(assert (=> b!1923208 d!586867))

(declare-fun bm!118362 () Bool)

(declare-fun call!118367 () Bool)

(assert (=> bm!118362 (= call!118367 (ruleDisjointCharsFromAllFromOtherType!445 (h!27310 rules!3198) (t!179046 rules!3198)))))

(declare-fun b!1925308 () Bool)

(declare-fun e!1230694 () Bool)

(assert (=> b!1925308 (= e!1230694 call!118367)))

(declare-fun d!586869 () Bool)

(declare-fun c!313042 () Bool)

(assert (=> d!586869 (= c!313042 (and ((_ is Cons!21909) rules!3198) (not (= (isSeparator!3928 (h!27310 rules!3198)) (isSeparator!3928 (h!27310 rules!3198))))))))

(declare-fun e!1230695 () Bool)

(assert (=> d!586869 (= (ruleDisjointCharsFromAllFromOtherType!445 (h!27310 rules!3198) rules!3198) e!1230695)))

(declare-fun b!1925309 () Bool)

(declare-fun e!1230696 () Bool)

(assert (=> b!1925309 (= e!1230695 e!1230696)))

(declare-fun res!860933 () Bool)

(assert (=> b!1925309 (= res!860933 (not ((_ is Cons!21909) rules!3198)))))

(assert (=> b!1925309 (=> res!860933 e!1230696)))

(declare-fun b!1925310 () Bool)

(assert (=> b!1925310 (= e!1230696 call!118367)))

(declare-fun b!1925311 () Bool)

(assert (=> b!1925311 (= e!1230695 e!1230694)))

(declare-fun res!860932 () Bool)

(declare-fun rulesUseDisjointChars!204 (Rule!7656 Rule!7656) Bool)

(assert (=> b!1925311 (= res!860932 (rulesUseDisjointChars!204 (h!27310 rules!3198) (h!27310 rules!3198)))))

(assert (=> b!1925311 (=> (not res!860932) (not e!1230694))))

(assert (= (and d!586869 c!313042) b!1925311))

(assert (= (and d!586869 (not c!313042)) b!1925309))

(assert (= (and b!1925311 res!860932) b!1925308))

(assert (= (and b!1925309 (not res!860933)) b!1925310))

(assert (= (or b!1925308 b!1925310) bm!118362))

(declare-fun m!2361271 () Bool)

(assert (=> bm!118362 m!2361271))

(declare-fun m!2361273 () Bool)

(assert (=> b!1925311 m!2361273))

(assert (=> b!1923755 d!586869))

(declare-fun b!1925312 () Bool)

(declare-fun e!1230700 () Bool)

(declare-fun e!1230698 () Bool)

(assert (=> b!1925312 (= e!1230700 e!1230698)))

(declare-fun res!860934 () Bool)

(assert (=> b!1925312 (=> res!860934 e!1230698)))

(declare-fun call!118368 () Bool)

(assert (=> b!1925312 (= res!860934 call!118368)))

(declare-fun e!1230703 () Bool)

(declare-fun b!1925313 () Bool)

(assert (=> b!1925313 (= e!1230703 (nullable!1605 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))))))))

(declare-fun bm!118363 () Bool)

(assert (=> bm!118363 (= call!118368 (isEmpty!13485 (list!8853 (charsOf!2468 separatorToken!354))))))

(declare-fun b!1925314 () Bool)

(declare-fun res!860941 () Bool)

(declare-fun e!1230701 () Bool)

(assert (=> b!1925314 (=> res!860941 e!1230701)))

(declare-fun e!1230697 () Bool)

(assert (=> b!1925314 (= res!860941 e!1230697)))

(declare-fun res!860940 () Bool)

(assert (=> b!1925314 (=> (not res!860940) (not e!1230697))))

(declare-fun lt!737804 () Bool)

(assert (=> b!1925314 (= res!860940 lt!737804)))

(declare-fun b!1925315 () Bool)

(declare-fun res!860935 () Bool)

(assert (=> b!1925315 (=> (not res!860935) (not e!1230697))))

(assert (=> b!1925315 (= res!860935 (isEmpty!13485 (tail!2972 (list!8853 (charsOf!2468 separatorToken!354)))))))

(declare-fun b!1925316 () Bool)

(assert (=> b!1925316 (= e!1230701 e!1230700)))

(declare-fun res!860939 () Bool)

(assert (=> b!1925316 (=> (not res!860939) (not e!1230700))))

(assert (=> b!1925316 (= res!860939 (not lt!737804))))

(declare-fun b!1925317 () Bool)

(assert (=> b!1925317 (= e!1230703 (matchR!2621 (derivativeStep!1364 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))) (head!4484 (list!8853 (charsOf!2468 separatorToken!354)))) (tail!2972 (list!8853 (charsOf!2468 separatorToken!354)))))))

(declare-fun b!1925318 () Bool)

(assert (=> b!1925318 (= e!1230698 (not (= (head!4484 (list!8853 (charsOf!2468 separatorToken!354))) (c!312513 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))))))))))

(declare-fun d!586871 () Bool)

(declare-fun e!1230699 () Bool)

(assert (=> d!586871 e!1230699))

(declare-fun c!313043 () Bool)

(assert (=> d!586871 (= c!313043 ((_ is EmptyExpr!5353) (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))))))))

(assert (=> d!586871 (= lt!737804 e!1230703)))

(declare-fun c!313044 () Bool)

(assert (=> d!586871 (= c!313044 (isEmpty!13485 (list!8853 (charsOf!2468 separatorToken!354))))))

(assert (=> d!586871 (validRegex!2131 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))))))

(assert (=> d!586871 (= (matchR!2621 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))) (list!8853 (charsOf!2468 separatorToken!354))) lt!737804)))

(declare-fun b!1925319 () Bool)

(declare-fun res!860936 () Bool)

(assert (=> b!1925319 (=> res!860936 e!1230698)))

(assert (=> b!1925319 (= res!860936 (not (isEmpty!13485 (tail!2972 (list!8853 (charsOf!2468 separatorToken!354))))))))

(declare-fun b!1925320 () Bool)

(declare-fun res!860938 () Bool)

(assert (=> b!1925320 (=> (not res!860938) (not e!1230697))))

(assert (=> b!1925320 (= res!860938 (not call!118368))))

(declare-fun b!1925321 () Bool)

(declare-fun e!1230702 () Bool)

(assert (=> b!1925321 (= e!1230699 e!1230702)))

(declare-fun c!313045 () Bool)

(assert (=> b!1925321 (= c!313045 ((_ is EmptyLang!5353) (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354)))))))))

(declare-fun b!1925322 () Bool)

(assert (=> b!1925322 (= e!1230697 (= (head!4484 (list!8853 (charsOf!2468 separatorToken!354))) (c!312513 (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))))))))

(declare-fun b!1925323 () Bool)

(declare-fun res!860937 () Bool)

(assert (=> b!1925323 (=> res!860937 e!1230701)))

(assert (=> b!1925323 (= res!860937 (not ((_ is ElementMatch!5353) (regex!3928 (get!6892 (getRuleFromTag!749 thiss!23328 rules!3198 (tag!4370 (rule!6131 separatorToken!354))))))))))

(assert (=> b!1925323 (= e!1230702 e!1230701)))

(declare-fun b!1925324 () Bool)

(assert (=> b!1925324 (= e!1230702 (not lt!737804))))

(declare-fun b!1925325 () Bool)

(assert (=> b!1925325 (= e!1230699 (= lt!737804 call!118368))))

(assert (= (and d!586871 c!313044) b!1925313))

(assert (= (and d!586871 (not c!313044)) b!1925317))

(assert (= (and d!586871 c!313043) b!1925325))

(assert (= (and d!586871 (not c!313043)) b!1925321))

(assert (= (and b!1925321 c!313045) b!1925324))

(assert (= (and b!1925321 (not c!313045)) b!1925323))

(assert (= (and b!1925323 (not res!860937)) b!1925314))

(assert (= (and b!1925314 res!860940) b!1925320))

(assert (= (and b!1925320 res!860938) b!1925315))

(assert (= (and b!1925315 res!860935) b!1925322))

(assert (= (and b!1925314 (not res!860941)) b!1925316))

(assert (= (and b!1925316 res!860939) b!1925312))

(assert (= (and b!1925312 (not res!860934)) b!1925319))

(assert (= (and b!1925319 (not res!860936)) b!1925318))

(assert (= (or b!1925325 b!1925312 b!1925320) bm!118363))

(assert (=> b!1925317 m!2358051))

(declare-fun m!2361275 () Bool)

(assert (=> b!1925317 m!2361275))

(assert (=> b!1925317 m!2361275))

(declare-fun m!2361277 () Bool)

(assert (=> b!1925317 m!2361277))

(assert (=> b!1925317 m!2358051))

(declare-fun m!2361279 () Bool)

(assert (=> b!1925317 m!2361279))

(assert (=> b!1925317 m!2361277))

(assert (=> b!1925317 m!2361279))

(declare-fun m!2361281 () Bool)

(assert (=> b!1925317 m!2361281))

(declare-fun m!2361283 () Bool)

(assert (=> b!1925313 m!2361283))

(assert (=> b!1925318 m!2358051))

(assert (=> b!1925318 m!2361275))

(assert (=> b!1925319 m!2358051))

(assert (=> b!1925319 m!2361279))

(assert (=> b!1925319 m!2361279))

(declare-fun m!2361285 () Bool)

(assert (=> b!1925319 m!2361285))

(assert (=> d!586871 m!2358051))

(declare-fun m!2361287 () Bool)

(assert (=> d!586871 m!2361287))

(declare-fun m!2361289 () Bool)

(assert (=> d!586871 m!2361289))

(assert (=> b!1925315 m!2358051))

(assert (=> b!1925315 m!2361279))

(assert (=> b!1925315 m!2361279))

(assert (=> b!1925315 m!2361285))

(assert (=> b!1925322 m!2358051))

(assert (=> b!1925322 m!2361275))

(assert (=> bm!118363 m!2358051))

(assert (=> bm!118363 m!2361287))

(assert (=> b!1923336 d!586871))

(assert (=> b!1923336 d!586133))

(assert (=> b!1923336 d!585883))

(assert (=> b!1923336 d!585939))

(assert (=> b!1923336 d!585901))

(declare-fun b!1925327 () Bool)

(declare-fun e!1230704 () List!21988)

(assert (=> b!1925327 (= e!1230704 (Cons!21906 (h!27307 (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) (++!5869 (t!179043 (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) (printList!1076 thiss!23328 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908))))))))

(declare-fun b!1925329 () Bool)

(declare-fun lt!737805 () List!21988)

(declare-fun e!1230705 () Bool)

(assert (=> b!1925329 (= e!1230705 (or (not (= (printList!1076 thiss!23328 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908))) Nil!21906)) (= lt!737805 (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))))))

(declare-fun b!1925328 () Bool)

(declare-fun res!860942 () Bool)

(assert (=> b!1925328 (=> (not res!860942) (not e!1230705))))

(assert (=> b!1925328 (= res!860942 (= (size!17091 lt!737805) (+ (size!17091 (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) (size!17091 (printList!1076 thiss!23328 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))))))

(declare-fun b!1925326 () Bool)

(assert (=> b!1925326 (= e!1230704 (printList!1076 thiss!23328 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908))))))

(declare-fun d!586873 () Bool)

(assert (=> d!586873 e!1230705))

(declare-fun res!860943 () Bool)

(assert (=> d!586873 (=> (not res!860943) (not e!1230705))))

(assert (=> d!586873 (= res!860943 (= (content!3163 lt!737805) ((_ map or) (content!3163 (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) (content!3163 (printList!1076 thiss!23328 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))))))

(assert (=> d!586873 (= lt!737805 e!1230704)))

(declare-fun c!313046 () Bool)

(assert (=> d!586873 (= c!313046 ((_ is Nil!21906) (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))))))

(assert (=> d!586873 (= (++!5869 (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))) (printList!1076 thiss!23328 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908)))) lt!737805)))

(assert (= (and d!586873 c!313046) b!1925326))

(assert (= (and d!586873 (not c!313046)) b!1925327))

(assert (= (and d!586873 res!860943) b!1925328))

(assert (= (and b!1925328 res!860942) b!1925329))

(assert (=> b!1925327 m!2358617))

(declare-fun m!2361291 () Bool)

(assert (=> b!1925327 m!2361291))

(declare-fun m!2361293 () Bool)

(assert (=> b!1925328 m!2361293))

(assert (=> b!1925328 m!2358615))

(declare-fun m!2361295 () Bool)

(assert (=> b!1925328 m!2361295))

(assert (=> b!1925328 m!2358617))

(declare-fun m!2361297 () Bool)

(assert (=> b!1925328 m!2361297))

(declare-fun m!2361299 () Bool)

(assert (=> d!586873 m!2361299))

(assert (=> d!586873 m!2358615))

(declare-fun m!2361301 () Bool)

(assert (=> d!586873 m!2361301))

(assert (=> d!586873 m!2358617))

(declare-fun m!2361303 () Bool)

(assert (=> d!586873 m!2361303))

(assert (=> b!1923543 d!586873))

(declare-fun d!586875 () Bool)

(assert (=> d!586875 (= (list!8853 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))) (list!8856 (c!312512 (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))))))

(declare-fun bs!414609 () Bool)

(assert (= bs!414609 d!586875))

(declare-fun m!2361305 () Bool)

(assert (=> bs!414609 m!2361305))

(assert (=> b!1923543 d!586875))

(declare-fun d!586877 () Bool)

(declare-fun lt!737806 () BalanceConc!14436)

(assert (=> d!586877 (= (list!8853 lt!737806) (originalCharacters!4735 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))))

(assert (=> d!586877 (= lt!737806 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) (value!123539 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))))

(assert (=> d!586877 (= (charsOf!2468 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))) lt!737806)))

(declare-fun b_lambda!63715 () Bool)

(assert (=> (not b_lambda!63715) (not d!586877)))

(declare-fun tb!117785 () Bool)

(declare-fun t!179359 () Bool)

(assert (=> (and b!1923848 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))) t!179359) tb!117785))

(declare-fun b!1925330 () Bool)

(declare-fun e!1230706 () Bool)

(declare-fun tp!549986 () Bool)

(assert (=> b!1925330 (= e!1230706 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) (value!123539 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))) tp!549986))))

(declare-fun result!142326 () Bool)

(assert (=> tb!117785 (= result!142326 (and (inv!28985 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) (value!123539 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) e!1230706))))

(assert (= tb!117785 b!1925330))

(declare-fun m!2361307 () Bool)

(assert (=> b!1925330 m!2361307))

(declare-fun m!2361309 () Bool)

(assert (=> tb!117785 m!2361309))

(assert (=> d!586877 t!179359))

(declare-fun b_and!150819 () Bool)

(assert (= b_and!150809 (and (=> t!179359 result!142326) b_and!150819)))

(declare-fun t!179361 () Bool)

(declare-fun tb!117787 () Bool)

(assert (=> (and b!1923833 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))) t!179361) tb!117787))

(declare-fun result!142328 () Bool)

(assert (= result!142328 result!142326))

(assert (=> d!586877 t!179361))

(declare-fun b_and!150821 () Bool)

(assert (= b_and!150813 (and (=> t!179361 result!142328) b_and!150821)))

(declare-fun tb!117789 () Bool)

(declare-fun t!179363 () Bool)

(assert (=> (and b!1923039 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))) t!179363) tb!117789))

(declare-fun result!142330 () Bool)

(assert (= result!142330 result!142326))

(assert (=> d!586877 t!179363))

(declare-fun b_and!150823 () Bool)

(assert (= b_and!150815 (and (=> t!179363 result!142330) b_and!150823)))

(declare-fun t!179365 () Bool)

(declare-fun tb!117791 () Bool)

(assert (=> (and b!1923049 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))) t!179365) tb!117791))

(declare-fun result!142332 () Bool)

(assert (= result!142332 result!142326))

(assert (=> d!586877 t!179365))

(declare-fun b_and!150825 () Bool)

(assert (= b_and!150811 (and (=> t!179365 result!142332) b_and!150825)))

(declare-fun t!179367 () Bool)

(declare-fun tb!117793 () Bool)

(assert (=> (and b!1923035 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))) t!179367) tb!117793))

(declare-fun result!142334 () Bool)

(assert (= result!142334 result!142326))

(assert (=> d!586877 t!179367))

(declare-fun b_and!150827 () Bool)

(assert (= b_and!150817 (and (=> t!179367 result!142334) b_and!150827)))

(declare-fun m!2361311 () Bool)

(assert (=> d!586877 m!2361311))

(declare-fun m!2361313 () Bool)

(assert (=> d!586877 m!2361313))

(assert (=> b!1923543 d!586877))

(declare-fun d!586879 () Bool)

(declare-fun c!313047 () Bool)

(assert (=> d!586879 (= c!313047 ((_ is Cons!21908) (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908))))))

(declare-fun e!1230707 () List!21988)

(assert (=> d!586879 (= (printList!1076 thiss!23328 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908))) e!1230707)))

(declare-fun b!1925331 () Bool)

(assert (=> b!1925331 (= e!1230707 (++!5869 (list!8853 (charsOf!2468 (h!27309 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908))))) (printList!1076 thiss!23328 (t!179045 (t!179045 (Cons!21908 (h!27309 tokens!598) Nil!21908))))))))

(declare-fun b!1925332 () Bool)

(assert (=> b!1925332 (= e!1230707 Nil!21906)))

(assert (= (and d!586879 c!313047) b!1925331))

(assert (= (and d!586879 (not c!313047)) b!1925332))

(declare-fun m!2361315 () Bool)

(assert (=> b!1925331 m!2361315))

(assert (=> b!1925331 m!2361315))

(declare-fun m!2361317 () Bool)

(assert (=> b!1925331 m!2361317))

(declare-fun m!2361319 () Bool)

(assert (=> b!1925331 m!2361319))

(assert (=> b!1925331 m!2361317))

(assert (=> b!1925331 m!2361319))

(declare-fun m!2361321 () Bool)

(assert (=> b!1925331 m!2361321))

(assert (=> b!1923543 d!586879))

(assert (=> b!1923380 d!586495))

(assert (=> b!1923380 d!586497))

(declare-fun b!1925334 () Bool)

(declare-fun e!1230710 () Bool)

(declare-fun lt!737808 () Option!4531)

(assert (=> b!1925334 (= e!1230710 (= (tag!4370 (get!6892 lt!737808)) (tag!4370 (rule!6131 (h!27309 tokens!598)))))))

(declare-fun b!1925335 () Bool)

(declare-fun e!1230711 () Bool)

(assert (=> b!1925335 (= e!1230711 e!1230710)))

(declare-fun res!860945 () Bool)

(assert (=> b!1925335 (=> (not res!860945) (not e!1230710))))

(assert (=> b!1925335 (= res!860945 (contains!3953 (t!179046 rules!3198) (get!6892 lt!737808)))))

(declare-fun b!1925336 () Bool)

(declare-fun e!1230709 () Option!4531)

(assert (=> b!1925336 (= e!1230709 (Some!4530 (h!27310 (t!179046 rules!3198))))))

(declare-fun b!1925337 () Bool)

(declare-fun e!1230708 () Option!4531)

(assert (=> b!1925337 (= e!1230709 e!1230708)))

(declare-fun c!313048 () Bool)

(assert (=> b!1925337 (= c!313048 (and ((_ is Cons!21909) (t!179046 rules!3198)) (not (= (tag!4370 (h!27310 (t!179046 rules!3198))) (tag!4370 (rule!6131 (h!27309 tokens!598)))))))))

(declare-fun b!1925338 () Bool)

(assert (=> b!1925338 (= e!1230708 None!4530)))

(declare-fun d!586881 () Bool)

(assert (=> d!586881 e!1230711))

(declare-fun res!860944 () Bool)

(assert (=> d!586881 (=> res!860944 e!1230711)))

(assert (=> d!586881 (= res!860944 (isEmpty!13484 lt!737808))))

(assert (=> d!586881 (= lt!737808 e!1230709)))

(declare-fun c!313049 () Bool)

(assert (=> d!586881 (= c!313049 (and ((_ is Cons!21909) (t!179046 rules!3198)) (= (tag!4370 (h!27310 (t!179046 rules!3198))) (tag!4370 (rule!6131 (h!27309 tokens!598))))))))

(assert (=> d!586881 (rulesInvariant!3148 thiss!23328 (t!179046 rules!3198))))

(assert (=> d!586881 (= (getRuleFromTag!749 thiss!23328 (t!179046 rules!3198) (tag!4370 (rule!6131 (h!27309 tokens!598)))) lt!737808)))

(declare-fun b!1925333 () Bool)

(declare-fun lt!737809 () Unit!36232)

(declare-fun lt!737807 () Unit!36232)

(assert (=> b!1925333 (= lt!737809 lt!737807)))

(assert (=> b!1925333 (rulesInvariant!3148 thiss!23328 (t!179046 (t!179046 rules!3198)))))

(assert (=> b!1925333 (= lt!737807 (lemmaInvariantOnRulesThenOnTail!266 thiss!23328 (h!27310 (t!179046 rules!3198)) (t!179046 (t!179046 rules!3198))))))

(assert (=> b!1925333 (= e!1230708 (getRuleFromTag!749 thiss!23328 (t!179046 (t!179046 rules!3198)) (tag!4370 (rule!6131 (h!27309 tokens!598)))))))

(assert (= (and d!586881 c!313049) b!1925336))

(assert (= (and d!586881 (not c!313049)) b!1925337))

(assert (= (and b!1925337 c!313048) b!1925333))

(assert (= (and b!1925337 (not c!313048)) b!1925338))

(assert (= (and d!586881 (not res!860944)) b!1925335))

(assert (= (and b!1925335 res!860945) b!1925334))

(declare-fun m!2361323 () Bool)

(assert (=> b!1925334 m!2361323))

(assert (=> b!1925335 m!2361323))

(assert (=> b!1925335 m!2361323))

(declare-fun m!2361325 () Bool)

(assert (=> b!1925335 m!2361325))

(declare-fun m!2361327 () Bool)

(assert (=> d!586881 m!2361327))

(assert (=> d!586881 m!2358459))

(assert (=> b!1925333 m!2360275))

(assert (=> b!1925333 m!2360277))

(declare-fun m!2361329 () Bool)

(assert (=> b!1925333 m!2361329))

(assert (=> b!1923380 d!586881))

(declare-fun b!1925339 () Bool)

(declare-fun e!1230715 () Bool)

(declare-fun e!1230713 () Bool)

(assert (=> b!1925339 (= e!1230715 e!1230713)))

(declare-fun res!860946 () Bool)

(assert (=> b!1925339 (=> res!860946 e!1230713)))

(declare-fun call!118369 () Bool)

(assert (=> b!1925339 (= res!860946 call!118369)))

(declare-fun b!1925340 () Bool)

(declare-fun e!1230718 () Bool)

(assert (=> b!1925340 (= e!1230718 (nullable!1605 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))))))

(declare-fun bm!118364 () Bool)

(assert (=> bm!118364 (= call!118369 (isEmpty!13485 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))))))

(declare-fun b!1925341 () Bool)

(declare-fun res!860953 () Bool)

(declare-fun e!1230716 () Bool)

(assert (=> b!1925341 (=> res!860953 e!1230716)))

(declare-fun e!1230712 () Bool)

(assert (=> b!1925341 (= res!860953 e!1230712)))

(declare-fun res!860952 () Bool)

(assert (=> b!1925341 (=> (not res!860952) (not e!1230712))))

(declare-fun lt!737810 () Bool)

(assert (=> b!1925341 (= res!860952 lt!737810)))

(declare-fun b!1925342 () Bool)

(declare-fun res!860947 () Bool)

(assert (=> b!1925342 (=> (not res!860947) (not e!1230712))))

(assert (=> b!1925342 (= res!860947 (isEmpty!13485 (tail!2972 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108)))))))))

(declare-fun b!1925343 () Bool)

(assert (=> b!1925343 (= e!1230716 e!1230715)))

(declare-fun res!860951 () Bool)

(assert (=> b!1925343 (=> (not res!860951) (not e!1230715))))

(assert (=> b!1925343 (= res!860951 (not lt!737810))))

(declare-fun b!1925344 () Bool)

(assert (=> b!1925344 (= e!1230718 (matchR!2621 (derivativeStep!1364 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))) (head!4484 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108)))))) (tail!2972 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108)))))))))

(declare-fun b!1925345 () Bool)

(assert (=> b!1925345 (= e!1230713 (not (= (head!4484 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))) (c!312513 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))))))))

(declare-fun d!586883 () Bool)

(declare-fun e!1230714 () Bool)

(assert (=> d!586883 e!1230714))

(declare-fun c!313050 () Bool)

(assert (=> d!586883 (= c!313050 ((_ is EmptyExpr!5353) (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))))))

(assert (=> d!586883 (= lt!737810 e!1230718)))

(declare-fun c!313051 () Bool)

(assert (=> d!586883 (= c!313051 (isEmpty!13485 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))))))

(assert (=> d!586883 (validRegex!2131 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))))

(assert (=> d!586883 (= (matchR!2621 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))) (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))) lt!737810)))

(declare-fun b!1925346 () Bool)

(declare-fun res!860948 () Bool)

(assert (=> b!1925346 (=> res!860948 e!1230713)))

(assert (=> b!1925346 (= res!860948 (not (isEmpty!13485 (tail!2972 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))))))))

(declare-fun b!1925347 () Bool)

(declare-fun res!860950 () Bool)

(assert (=> b!1925347 (=> (not res!860950) (not e!1230712))))

(assert (=> b!1925347 (= res!860950 (not call!118369))))

(declare-fun b!1925348 () Bool)

(declare-fun e!1230717 () Bool)

(assert (=> b!1925348 (= e!1230714 e!1230717)))

(declare-fun c!313052 () Bool)

(assert (=> b!1925348 (= c!313052 ((_ is EmptyLang!5353) (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))))))

(declare-fun b!1925349 () Bool)

(assert (=> b!1925349 (= e!1230712 (= (head!4484 (list!8853 (charsOf!2468 (_1!11728 (get!6893 lt!737108))))) (c!312513 (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))))))

(declare-fun b!1925350 () Bool)

(declare-fun res!860949 () Bool)

(assert (=> b!1925350 (=> res!860949 e!1230716)))

(assert (=> b!1925350 (= res!860949 (not ((_ is ElementMatch!5353) (regex!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))))))

(assert (=> b!1925350 (= e!1230717 e!1230716)))

(declare-fun b!1925351 () Bool)

(assert (=> b!1925351 (= e!1230717 (not lt!737810))))

(declare-fun b!1925352 () Bool)

(assert (=> b!1925352 (= e!1230714 (= lt!737810 call!118369))))

(assert (= (and d!586883 c!313051) b!1925340))

(assert (= (and d!586883 (not c!313051)) b!1925344))

(assert (= (and d!586883 c!313050) b!1925352))

(assert (= (and d!586883 (not c!313050)) b!1925348))

(assert (= (and b!1925348 c!313052) b!1925351))

(assert (= (and b!1925348 (not c!313052)) b!1925350))

(assert (= (and b!1925350 (not res!860949)) b!1925341))

(assert (= (and b!1925341 res!860952) b!1925347))

(assert (= (and b!1925347 res!860950) b!1925342))

(assert (= (and b!1925342 res!860947) b!1925349))

(assert (= (and b!1925341 (not res!860953)) b!1925343))

(assert (= (and b!1925343 res!860951) b!1925339))

(assert (= (and b!1925339 (not res!860946)) b!1925346))

(assert (= (and b!1925346 (not res!860948)) b!1925345))

(assert (= (or b!1925352 b!1925339 b!1925347) bm!118364))

(assert (=> b!1925344 m!2358195))

(declare-fun m!2361331 () Bool)

(assert (=> b!1925344 m!2361331))

(assert (=> b!1925344 m!2361331))

(declare-fun m!2361333 () Bool)

(assert (=> b!1925344 m!2361333))

(assert (=> b!1925344 m!2358195))

(declare-fun m!2361335 () Bool)

(assert (=> b!1925344 m!2361335))

(assert (=> b!1925344 m!2361333))

(assert (=> b!1925344 m!2361335))

(declare-fun m!2361337 () Bool)

(assert (=> b!1925344 m!2361337))

(declare-fun m!2361339 () Bool)

(assert (=> b!1925340 m!2361339))

(assert (=> b!1925345 m!2358195))

(assert (=> b!1925345 m!2361331))

(assert (=> b!1925346 m!2358195))

(assert (=> b!1925346 m!2361335))

(assert (=> b!1925346 m!2361335))

(declare-fun m!2361341 () Bool)

(assert (=> b!1925346 m!2361341))

(assert (=> d!586883 m!2358195))

(declare-fun m!2361343 () Bool)

(assert (=> d!586883 m!2361343))

(declare-fun m!2361345 () Bool)

(assert (=> d!586883 m!2361345))

(assert (=> b!1925342 m!2358195))

(assert (=> b!1925342 m!2361335))

(assert (=> b!1925342 m!2361335))

(assert (=> b!1925342 m!2361341))

(assert (=> b!1925349 m!2358195))

(assert (=> b!1925349 m!2361331))

(assert (=> bm!118364 m!2358195))

(assert (=> bm!118364 m!2361343))

(assert (=> b!1923195 d!586883))

(assert (=> b!1923195 d!586167))

(assert (=> b!1923195 d!586163))

(assert (=> b!1923195 d!586165))

(declare-fun d!586885 () Bool)

(assert (=> d!586885 (= (list!8853 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))) (list!8856 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))))))

(declare-fun bs!414610 () Bool)

(assert (= bs!414610 d!586885))

(declare-fun m!2361347 () Bool)

(assert (=> bs!414610 m!2361347))

(assert (=> b!1923789 d!586885))

(assert (=> b!1923760 d!586477))

(assert (=> b!1923760 d!586479))

(declare-fun d!586887 () Bool)

(declare-fun c!313053 () Bool)

(assert (=> d!586887 (= c!313053 ((_ is Node!7310) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))))))

(declare-fun e!1230719 () Bool)

(assert (=> d!586887 (= (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))) e!1230719)))

(declare-fun b!1925353 () Bool)

(assert (=> b!1925353 (= e!1230719 (inv!28988 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))))))

(declare-fun b!1925354 () Bool)

(declare-fun e!1230720 () Bool)

(assert (=> b!1925354 (= e!1230719 e!1230720)))

(declare-fun res!860954 () Bool)

(assert (=> b!1925354 (= res!860954 (not ((_ is Leaf!10737) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))))))))

(assert (=> b!1925354 (=> res!860954 e!1230720)))

(declare-fun b!1925355 () Bool)

(assert (=> b!1925355 (= e!1230720 (inv!28989 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))))))

(assert (= (and d!586887 c!313053) b!1925353))

(assert (= (and d!586887 (not c!313053)) b!1925354))

(assert (= (and b!1925354 (not res!860954)) b!1925355))

(declare-fun m!2361349 () Bool)

(assert (=> b!1925353 m!2361349))

(declare-fun m!2361351 () Bool)

(assert (=> b!1925355 m!2361351))

(assert (=> b!1923403 d!586887))

(declare-fun b!1925357 () Bool)

(declare-fun e!1230721 () List!21988)

(assert (=> b!1925357 (= e!1230721 (Cons!21906 (h!27307 call!118186) (++!5869 (t!179043 call!118186) lt!737156)))))

(declare-fun lt!737811 () List!21988)

(declare-fun b!1925359 () Bool)

(declare-fun e!1230722 () Bool)

(assert (=> b!1925359 (= e!1230722 (or (not (= lt!737156 Nil!21906)) (= lt!737811 call!118186)))))

(declare-fun b!1925358 () Bool)

(declare-fun res!860955 () Bool)

(assert (=> b!1925358 (=> (not res!860955) (not e!1230722))))

(assert (=> b!1925358 (= res!860955 (= (size!17091 lt!737811) (+ (size!17091 call!118186) (size!17091 lt!737156))))))

(declare-fun b!1925356 () Bool)

(assert (=> b!1925356 (= e!1230721 lt!737156)))

(declare-fun d!586889 () Bool)

(assert (=> d!586889 e!1230722))

(declare-fun res!860956 () Bool)

(assert (=> d!586889 (=> (not res!860956) (not e!1230722))))

(assert (=> d!586889 (= res!860956 (= (content!3163 lt!737811) ((_ map or) (content!3163 call!118186) (content!3163 lt!737156))))))

(assert (=> d!586889 (= lt!737811 e!1230721)))

(declare-fun c!313054 () Bool)

(assert (=> d!586889 (= c!313054 ((_ is Nil!21906) call!118186))))

(assert (=> d!586889 (= (++!5869 call!118186 lt!737156) lt!737811)))

(assert (= (and d!586889 c!313054) b!1925356))

(assert (= (and d!586889 (not c!313054)) b!1925357))

(assert (= (and d!586889 res!860956) b!1925358))

(assert (= (and b!1925358 res!860955) b!1925359))

(declare-fun m!2361353 () Bool)

(assert (=> b!1925357 m!2361353))

(declare-fun m!2361355 () Bool)

(assert (=> b!1925358 m!2361355))

(declare-fun m!2361357 () Bool)

(assert (=> b!1925358 m!2361357))

(assert (=> b!1925358 m!2359481))

(declare-fun m!2361359 () Bool)

(assert (=> d!586889 m!2361359))

(declare-fun m!2361361 () Bool)

(assert (=> d!586889 m!2361361))

(assert (=> d!586889 m!2359487))

(assert (=> b!1923286 d!586889))

(declare-fun d!586891 () Bool)

(assert (=> d!586891 (= (inv!16 (value!123539 separatorToken!354)) (= (charsToInt!0 (text!28895 (value!123539 separatorToken!354))) (value!123530 (value!123539 separatorToken!354))))))

(declare-fun bs!414611 () Bool)

(assert (= bs!414611 d!586891))

(declare-fun m!2361363 () Bool)

(assert (=> bs!414611 m!2361363))

(assert (=> b!1923445 d!586891))

(declare-fun b!1925360 () Bool)

(declare-fun e!1230726 () Bool)

(declare-fun e!1230724 () Bool)

(assert (=> b!1925360 (= e!1230726 e!1230724)))

(declare-fun res!860957 () Bool)

(assert (=> b!1925360 (=> res!860957 e!1230724)))

(declare-fun call!118370 () Bool)

(assert (=> b!1925360 (= res!860957 call!118370)))

(declare-fun b!1925361 () Bool)

(declare-fun e!1230729 () Bool)

(assert (=> b!1925361 (= e!1230729 (nullable!1605 (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043))))))

(declare-fun bm!118365 () Bool)

(assert (=> bm!118365 (= call!118370 (isEmpty!13485 (tail!2972 lt!737043)))))

(declare-fun b!1925362 () Bool)

(declare-fun res!860964 () Bool)

(declare-fun e!1230727 () Bool)

(assert (=> b!1925362 (=> res!860964 e!1230727)))

(declare-fun e!1230723 () Bool)

(assert (=> b!1925362 (= res!860964 e!1230723)))

(declare-fun res!860963 () Bool)

(assert (=> b!1925362 (=> (not res!860963) (not e!1230723))))

(declare-fun lt!737812 () Bool)

(assert (=> b!1925362 (= res!860963 lt!737812)))

(declare-fun b!1925363 () Bool)

(declare-fun res!860958 () Bool)

(assert (=> b!1925363 (=> (not res!860958) (not e!1230723))))

(assert (=> b!1925363 (= res!860958 (isEmpty!13485 (tail!2972 (tail!2972 lt!737043))))))

(declare-fun b!1925364 () Bool)

(assert (=> b!1925364 (= e!1230727 e!1230726)))

(declare-fun res!860962 () Bool)

(assert (=> b!1925364 (=> (not res!860962) (not e!1230726))))

(assert (=> b!1925364 (= res!860962 (not lt!737812))))

(declare-fun b!1925365 () Bool)

(assert (=> b!1925365 (= e!1230729 (matchR!2621 (derivativeStep!1364 (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043)) (head!4484 (tail!2972 lt!737043))) (tail!2972 (tail!2972 lt!737043))))))

(declare-fun b!1925366 () Bool)

(assert (=> b!1925366 (= e!1230724 (not (= (head!4484 (tail!2972 lt!737043)) (c!312513 (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043))))))))

(declare-fun d!586893 () Bool)

(declare-fun e!1230725 () Bool)

(assert (=> d!586893 e!1230725))

(declare-fun c!313055 () Bool)

(assert (=> d!586893 (= c!313055 ((_ is EmptyExpr!5353) (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043))))))

(assert (=> d!586893 (= lt!737812 e!1230729)))

(declare-fun c!313056 () Bool)

(assert (=> d!586893 (= c!313056 (isEmpty!13485 (tail!2972 lt!737043)))))

(assert (=> d!586893 (validRegex!2131 (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043)))))

(assert (=> d!586893 (= (matchR!2621 (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043)) (tail!2972 lt!737043)) lt!737812)))

(declare-fun b!1925367 () Bool)

(declare-fun res!860959 () Bool)

(assert (=> b!1925367 (=> res!860959 e!1230724)))

(assert (=> b!1925367 (= res!860959 (not (isEmpty!13485 (tail!2972 (tail!2972 lt!737043)))))))

(declare-fun b!1925368 () Bool)

(declare-fun res!860961 () Bool)

(assert (=> b!1925368 (=> (not res!860961) (not e!1230723))))

(assert (=> b!1925368 (= res!860961 (not call!118370))))

(declare-fun b!1925369 () Bool)

(declare-fun e!1230728 () Bool)

(assert (=> b!1925369 (= e!1230725 e!1230728)))

(declare-fun c!313057 () Bool)

(assert (=> b!1925369 (= c!313057 ((_ is EmptyLang!5353) (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043))))))

(declare-fun b!1925370 () Bool)

(assert (=> b!1925370 (= e!1230723 (= (head!4484 (tail!2972 lt!737043)) (c!312513 (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043)))))))

(declare-fun b!1925371 () Bool)

(declare-fun res!860960 () Bool)

(assert (=> b!1925371 (=> res!860960 e!1230727)))

(assert (=> b!1925371 (= res!860960 (not ((_ is ElementMatch!5353) (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043)))))))

(assert (=> b!1925371 (= e!1230728 e!1230727)))

(declare-fun b!1925372 () Bool)

(assert (=> b!1925372 (= e!1230728 (not lt!737812))))

(declare-fun b!1925373 () Bool)

(assert (=> b!1925373 (= e!1230725 (= lt!737812 call!118370))))

(assert (= (and d!586893 c!313056) b!1925361))

(assert (= (and d!586893 (not c!313056)) b!1925365))

(assert (= (and d!586893 c!313055) b!1925373))

(assert (= (and d!586893 (not c!313055)) b!1925369))

(assert (= (and b!1925369 c!313057) b!1925372))

(assert (= (and b!1925369 (not c!313057)) b!1925371))

(assert (= (and b!1925371 (not res!860960)) b!1925362))

(assert (= (and b!1925362 res!860963) b!1925368))

(assert (= (and b!1925368 res!860961) b!1925363))

(assert (= (and b!1925363 res!860958) b!1925370))

(assert (= (and b!1925362 (not res!860964)) b!1925364))

(assert (= (and b!1925364 res!860962) b!1925360))

(assert (= (and b!1925360 (not res!860957)) b!1925367))

(assert (= (and b!1925367 (not res!860959)) b!1925366))

(assert (= (or b!1925373 b!1925360 b!1925368) bm!118365))

(assert (=> b!1925365 m!2358895))

(assert (=> b!1925365 m!2360389))

(assert (=> b!1925365 m!2358915))

(assert (=> b!1925365 m!2360389))

(declare-fun m!2361365 () Bool)

(assert (=> b!1925365 m!2361365))

(assert (=> b!1925365 m!2358895))

(assert (=> b!1925365 m!2360393))

(assert (=> b!1925365 m!2361365))

(assert (=> b!1925365 m!2360393))

(declare-fun m!2361367 () Bool)

(assert (=> b!1925365 m!2361367))

(assert (=> b!1925361 m!2358915))

(declare-fun m!2361369 () Bool)

(assert (=> b!1925361 m!2361369))

(assert (=> b!1925366 m!2358895))

(assert (=> b!1925366 m!2360389))

(assert (=> b!1925367 m!2358895))

(assert (=> b!1925367 m!2360393))

(assert (=> b!1925367 m!2360393))

(assert (=> b!1925367 m!2360399))

(assert (=> d!586893 m!2358895))

(assert (=> d!586893 m!2358901))

(assert (=> d!586893 m!2358915))

(declare-fun m!2361371 () Bool)

(assert (=> d!586893 m!2361371))

(assert (=> b!1925363 m!2358895))

(assert (=> b!1925363 m!2360393))

(assert (=> b!1925363 m!2360393))

(assert (=> b!1925363 m!2360399))

(assert (=> b!1925370 m!2358895))

(assert (=> b!1925370 m!2360389))

(assert (=> bm!118365 m!2358895))

(assert (=> bm!118365 m!2358901))

(assert (=> b!1923777 d!586893))

(declare-fun bm!118366 () Bool)

(declare-fun call!118371 () Regex!5353)

(declare-fun call!118372 () Regex!5353)

(assert (=> bm!118366 (= call!118371 call!118372)))

(declare-fun bm!118367 () Bool)

(declare-fun c!313058 () Bool)

(declare-fun c!313059 () Bool)

(declare-fun c!313062 () Bool)

(assert (=> bm!118367 (= call!118372 (derivativeStep!1364 (ite c!313059 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (ite c!313058 (reg!5682 (regex!3928 (rule!6131 separatorToken!354))) (ite c!313062 (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))) (head!4484 lt!737043)))))

(declare-fun b!1925374 () Bool)

(assert (=> b!1925374 (= c!313062 (nullable!1605 (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))))))

(declare-fun e!1230730 () Regex!5353)

(declare-fun e!1230733 () Regex!5353)

(assert (=> b!1925374 (= e!1230730 e!1230733)))

(declare-fun b!1925375 () Bool)

(declare-fun e!1230731 () Regex!5353)

(assert (=> b!1925375 (= e!1230731 e!1230730)))

(assert (=> b!1925375 (= c!313058 ((_ is Star!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun b!1925376 () Bool)

(declare-fun e!1230734 () Regex!5353)

(declare-fun e!1230732 () Regex!5353)

(assert (=> b!1925376 (= e!1230734 e!1230732)))

(declare-fun c!313061 () Bool)

(assert (=> b!1925376 (= c!313061 ((_ is ElementMatch!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun b!1925377 () Bool)

(assert (=> b!1925377 (= e!1230734 EmptyLang!5353)))

(declare-fun b!1925378 () Bool)

(assert (=> b!1925378 (= c!313059 ((_ is Union!5353) (regex!3928 (rule!6131 separatorToken!354))))))

(assert (=> b!1925378 (= e!1230732 e!1230731)))

(declare-fun bm!118368 () Bool)

(declare-fun call!118373 () Regex!5353)

(assert (=> bm!118368 (= call!118373 call!118371)))

(declare-fun d!586895 () Bool)

(declare-fun lt!737813 () Regex!5353)

(assert (=> d!586895 (validRegex!2131 lt!737813)))

(assert (=> d!586895 (= lt!737813 e!1230734)))

(declare-fun c!313060 () Bool)

(assert (=> d!586895 (= c!313060 (or ((_ is EmptyExpr!5353) (regex!3928 (rule!6131 separatorToken!354))) ((_ is EmptyLang!5353) (regex!3928 (rule!6131 separatorToken!354)))))))

(assert (=> d!586895 (validRegex!2131 (regex!3928 (rule!6131 separatorToken!354)))))

(assert (=> d!586895 (= (derivativeStep!1364 (regex!3928 (rule!6131 separatorToken!354)) (head!4484 lt!737043)) lt!737813)))

(declare-fun b!1925379 () Bool)

(assert (=> b!1925379 (= e!1230730 (Concat!9418 call!118371 (regex!3928 (rule!6131 separatorToken!354))))))

(declare-fun b!1925380 () Bool)

(assert (=> b!1925380 (= e!1230732 (ite (= (head!4484 lt!737043) (c!312513 (regex!3928 (rule!6131 separatorToken!354)))) EmptyExpr!5353 EmptyLang!5353))))

(declare-fun b!1925381 () Bool)

(declare-fun call!118374 () Regex!5353)

(assert (=> b!1925381 (= e!1230733 (Union!5353 (Concat!9418 call!118374 (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354)))) call!118373))))

(declare-fun b!1925382 () Bool)

(assert (=> b!1925382 (= e!1230733 (Union!5353 (Concat!9418 call!118373 (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354)))) EmptyLang!5353))))

(declare-fun bm!118369 () Bool)

(assert (=> bm!118369 (= call!118374 (derivativeStep!1364 (ite c!313059 (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354)))) (head!4484 lt!737043)))))

(declare-fun b!1925383 () Bool)

(assert (=> b!1925383 (= e!1230731 (Union!5353 call!118372 call!118374))))

(assert (= (and d!586895 c!313060) b!1925377))

(assert (= (and d!586895 (not c!313060)) b!1925376))

(assert (= (and b!1925376 c!313061) b!1925380))

(assert (= (and b!1925376 (not c!313061)) b!1925378))

(assert (= (and b!1925378 c!313059) b!1925383))

(assert (= (and b!1925378 (not c!313059)) b!1925375))

(assert (= (and b!1925375 c!313058) b!1925379))

(assert (= (and b!1925375 (not c!313058)) b!1925374))

(assert (= (and b!1925374 c!313062) b!1925381))

(assert (= (and b!1925374 (not c!313062)) b!1925382))

(assert (= (or b!1925381 b!1925382) bm!118368))

(assert (= (or b!1925379 bm!118368) bm!118366))

(assert (= (or b!1925383 bm!118366) bm!118367))

(assert (= (or b!1925383 b!1925381) bm!118369))

(assert (=> bm!118367 m!2358001))

(declare-fun m!2361373 () Bool)

(assert (=> bm!118367 m!2361373))

(declare-fun m!2361375 () Bool)

(assert (=> b!1925374 m!2361375))

(declare-fun m!2361377 () Bool)

(assert (=> d!586895 m!2361377))

(assert (=> d!586895 m!2358913))

(assert (=> bm!118369 m!2358001))

(declare-fun m!2361379 () Bool)

(assert (=> bm!118369 m!2361379))

(assert (=> b!1923777 d!586895))

(assert (=> b!1923777 d!586001))

(assert (=> b!1923777 d!586479))

(declare-fun d!586897 () Bool)

(assert (=> d!586897 (= (nullable!1605 (regex!3928 lt!737053)) (nullableFct!359 (regex!3928 lt!737053)))))

(declare-fun bs!414612 () Bool)

(assert (= bs!414612 d!586897))

(declare-fun m!2361381 () Bool)

(assert (=> bs!414612 m!2361381))

(assert (=> b!1923503 d!586897))

(declare-fun bm!118370 () Bool)

(declare-fun c!313063 () Bool)

(declare-fun call!118375 () List!21988)

(assert (=> bm!118370 (= call!118375 (usedCharacters!380 (ite c!313063 (regOne!11219 (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) (regTwo!11218 (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))))))))

(declare-fun b!1925384 () Bool)

(declare-fun e!1230736 () List!21988)

(declare-fun e!1230737 () List!21988)

(assert (=> b!1925384 (= e!1230736 e!1230737)))

(assert (=> b!1925384 (= c!313063 ((_ is Union!5353) (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))))))

(declare-fun b!1925385 () Bool)

(declare-fun e!1230738 () List!21988)

(assert (=> b!1925385 (= e!1230738 (Cons!21906 (c!312513 (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) Nil!21906))))

(declare-fun call!118376 () List!21988)

(declare-fun bm!118371 () Bool)

(declare-fun c!313065 () Bool)

(assert (=> bm!118371 (= call!118376 (usedCharacters!380 (ite c!313065 (reg!5682 (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) (ite c!313063 (regTwo!11219 (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) (regOne!11218 (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354)))))))))))

(declare-fun b!1925386 () Bool)

(declare-fun e!1230735 () List!21988)

(assert (=> b!1925386 (= e!1230735 Nil!21906)))

(declare-fun bm!118372 () Bool)

(declare-fun call!118377 () List!21988)

(assert (=> bm!118372 (= call!118377 call!118376)))

(declare-fun bm!118373 () Bool)

(declare-fun call!118378 () List!21988)

(assert (=> bm!118373 (= call!118378 (++!5869 (ite c!313063 call!118375 call!118377) (ite c!313063 call!118377 call!118375)))))

(declare-fun b!1925388 () Bool)

(assert (=> b!1925388 (= e!1230737 call!118378)))

(declare-fun b!1925389 () Bool)

(assert (=> b!1925389 (= e!1230736 call!118376)))

(declare-fun d!586899 () Bool)

(declare-fun c!313066 () Bool)

(assert (=> d!586899 (= c!313066 (or ((_ is EmptyExpr!5353) (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) ((_ is EmptyLang!5353) (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354)))))))))

(assert (=> d!586899 (= (usedCharacters!380 (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) e!1230735)))

(declare-fun b!1925387 () Bool)

(assert (=> b!1925387 (= c!313065 ((_ is Star!5353) (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))))))

(assert (=> b!1925387 (= e!1230738 e!1230736)))

(declare-fun b!1925390 () Bool)

(assert (=> b!1925390 (= e!1230737 call!118378)))

(declare-fun b!1925391 () Bool)

(assert (=> b!1925391 (= e!1230735 e!1230738)))

(declare-fun c!313064 () Bool)

(assert (=> b!1925391 (= c!313064 ((_ is ElementMatch!5353) (ite c!312635 (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))))))

(assert (= (and d!586899 c!313066) b!1925386))

(assert (= (and d!586899 (not c!313066)) b!1925391))

(assert (= (and b!1925391 c!313064) b!1925385))

(assert (= (and b!1925391 (not c!313064)) b!1925387))

(assert (= (and b!1925387 c!313065) b!1925389))

(assert (= (and b!1925387 (not c!313065)) b!1925384))

(assert (= (and b!1925384 c!313063) b!1925390))

(assert (= (and b!1925384 (not c!313063)) b!1925388))

(assert (= (or b!1925390 b!1925388) bm!118370))

(assert (= (or b!1925390 b!1925388) bm!118372))

(assert (= (or b!1925390 b!1925388) bm!118373))

(assert (= (or b!1925389 bm!118372) bm!118371))

(declare-fun m!2361383 () Bool)

(assert (=> bm!118370 m!2361383))

(declare-fun m!2361385 () Bool)

(assert (=> bm!118371 m!2361385))

(declare-fun m!2361387 () Bool)

(assert (=> bm!118373 m!2361387))

(assert (=> bm!118211 d!586899))

(declare-fun d!586901 () Bool)

(assert (=> d!586901 (= (isEmpty!13485 (originalCharacters!4735 separatorToken!354)) ((_ is Nil!21906) (originalCharacters!4735 separatorToken!354)))))

(assert (=> d!586065 d!586901))

(assert (=> b!1923191 d!586167))

(declare-fun d!586903 () Bool)

(assert (=> d!586903 (= (apply!5680 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737108))))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737108))))))))

(declare-fun b_lambda!63717 () Bool)

(assert (=> (not b_lambda!63717) (not d!586903)))

(declare-fun t!179369 () Bool)

(declare-fun tb!117795 () Bool)

(assert (=> (and b!1923035 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179369) tb!117795))

(declare-fun result!142336 () Bool)

(assert (=> tb!117795 (= result!142336 (inv!21 (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108))))) (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737108)))))))))

(declare-fun m!2361389 () Bool)

(assert (=> tb!117795 m!2361389))

(assert (=> d!586903 t!179369))

(declare-fun b_and!150829 () Bool)

(assert (= b_and!150709 (and (=> t!179369 result!142336) b_and!150829)))

(declare-fun tb!117797 () Bool)

(declare-fun t!179371 () Bool)

(assert (=> (and b!1923039 (= (toValue!5557 (transformation!3928 (h!27310 rules!3198))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179371) tb!117797))

(declare-fun result!142338 () Bool)

(assert (= result!142338 result!142336))

(assert (=> d!586903 t!179371))

(declare-fun b_and!150831 () Bool)

(assert (= b_and!150711 (and (=> t!179371 result!142338) b_and!150831)))

(declare-fun tb!117799 () Bool)

(declare-fun t!179373 () Bool)

(assert (=> (and b!1923848 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179373) tb!117799))

(declare-fun result!142340 () Bool)

(assert (= result!142340 result!142336))

(assert (=> d!586903 t!179373))

(declare-fun b_and!150833 () Bool)

(assert (= b_and!150707 (and (=> t!179373 result!142340) b_and!150833)))

(declare-fun t!179375 () Bool)

(declare-fun tb!117801 () Bool)

(assert (=> (and b!1923833 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179375) tb!117801))

(declare-fun result!142342 () Bool)

(assert (= result!142342 result!142336))

(assert (=> d!586903 t!179375))

(declare-fun b_and!150835 () Bool)

(assert (= b_and!150705 (and (=> t!179375 result!142342) b_and!150835)))

(declare-fun tb!117803 () Bool)

(declare-fun t!179377 () Bool)

(assert (=> (and b!1923049 (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179377) tb!117803))

(declare-fun result!142344 () Bool)

(assert (= result!142344 result!142336))

(assert (=> d!586903 t!179377))

(declare-fun b_and!150837 () Bool)

(assert (= b_and!150713 (and (=> t!179377 result!142344) b_and!150837)))

(assert (=> d!586903 m!2358211))

(declare-fun m!2361391 () Bool)

(assert (=> d!586903 m!2361391))

(assert (=> b!1923191 d!586903))

(declare-fun d!586905 () Bool)

(assert (=> d!586905 (= (seqFromList!2782 (originalCharacters!4735 (_1!11728 (get!6893 lt!737108)))) (fromListB!1234 (originalCharacters!4735 (_1!11728 (get!6893 lt!737108)))))))

(declare-fun bs!414613 () Bool)

(assert (= bs!414613 d!586905))

(declare-fun m!2361393 () Bool)

(assert (=> bs!414613 m!2361393))

(assert (=> b!1923191 d!586905))

(declare-fun d!586907 () Bool)

(declare-fun lt!737814 () Bool)

(assert (=> d!586907 (= lt!737814 (select (content!3165 rules!3198) (get!6892 lt!737196)))))

(declare-fun e!1230741 () Bool)

(assert (=> d!586907 (= lt!737814 e!1230741)))

(declare-fun res!860966 () Bool)

(assert (=> d!586907 (=> (not res!860966) (not e!1230741))))

(assert (=> d!586907 (= res!860966 ((_ is Cons!21909) rules!3198))))

(assert (=> d!586907 (= (contains!3953 rules!3198 (get!6892 lt!737196)) lt!737814)))

(declare-fun b!1925392 () Bool)

(declare-fun e!1230740 () Bool)

(assert (=> b!1925392 (= e!1230741 e!1230740)))

(declare-fun res!860965 () Bool)

(assert (=> b!1925392 (=> res!860965 e!1230740)))

(assert (=> b!1925392 (= res!860965 (= (h!27310 rules!3198) (get!6892 lt!737196)))))

(declare-fun b!1925393 () Bool)

(assert (=> b!1925393 (= e!1230740 (contains!3953 (t!179046 rules!3198) (get!6892 lt!737196)))))

(assert (= (and d!586907 res!860966) b!1925392))

(assert (= (and b!1925392 (not res!860965)) b!1925393))

(assert (=> d!586907 m!2359559))

(assert (=> d!586907 m!2358453))

(declare-fun m!2361395 () Bool)

(assert (=> d!586907 m!2361395))

(assert (=> b!1925393 m!2358453))

(declare-fun m!2361397 () Bool)

(assert (=> b!1925393 m!2361397))

(assert (=> b!1923376 d!586907))

(assert (=> b!1923376 d!586809))

(declare-fun d!586909 () Bool)

(declare-fun lt!737815 () Bool)

(declare-fun e!1230743 () Bool)

(assert (=> d!586909 (= lt!737815 e!1230743)))

(declare-fun res!860967 () Bool)

(assert (=> d!586909 (=> (not res!860967) (not e!1230743))))

(assert (=> d!586909 (= res!860967 (= (list!8857 (_1!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 (h!27309 tokens!598)))))) (list!8857 (singletonSeq!1912 (h!27309 tokens!598)))))))

(declare-fun e!1230742 () Bool)

(assert (=> d!586909 (= lt!737815 e!1230742)))

(declare-fun res!860969 () Bool)

(assert (=> d!586909 (=> (not res!860969) (not e!1230742))))

(declare-fun lt!737816 () tuple2!20522)

(assert (=> d!586909 (= res!860969 (= (size!17092 (_1!11730 lt!737816)) 1))))

(assert (=> d!586909 (= lt!737816 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 (h!27309 tokens!598)))))))

(assert (=> d!586909 (not (isEmpty!13478 rules!3198))))

(assert (=> d!586909 (= (rulesProduceIndividualToken!1713 thiss!23328 rules!3198 (h!27309 tokens!598)) lt!737815)))

(declare-fun b!1925394 () Bool)

(declare-fun res!860968 () Bool)

(assert (=> b!1925394 (=> (not res!860968) (not e!1230742))))

(assert (=> b!1925394 (= res!860968 (= (apply!5682 (_1!11730 lt!737816) 0) (h!27309 tokens!598)))))

(declare-fun b!1925395 () Bool)

(assert (=> b!1925395 (= e!1230742 (isEmpty!13486 (_2!11730 lt!737816)))))

(declare-fun b!1925396 () Bool)

(assert (=> b!1925396 (= e!1230743 (isEmpty!13486 (_2!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 (h!27309 tokens!598)))))))))

(assert (= (and d!586909 res!860969) b!1925394))

(assert (= (and b!1925394 res!860968) b!1925395))

(assert (= (and d!586909 res!860967) b!1925396))

(assert (=> d!586909 m!2357967))

(declare-fun m!2361399 () Bool)

(assert (=> d!586909 m!2361399))

(assert (=> d!586909 m!2357997))

(declare-fun m!2361401 () Bool)

(assert (=> d!586909 m!2361401))

(assert (=> d!586909 m!2357997))

(declare-fun m!2361403 () Bool)

(assert (=> d!586909 m!2361403))

(assert (=> d!586909 m!2357997))

(declare-fun m!2361405 () Bool)

(assert (=> d!586909 m!2361405))

(assert (=> d!586909 m!2361405))

(declare-fun m!2361407 () Bool)

(assert (=> d!586909 m!2361407))

(declare-fun m!2361409 () Bool)

(assert (=> b!1925394 m!2361409))

(declare-fun m!2361411 () Bool)

(assert (=> b!1925395 m!2361411))

(assert (=> b!1925396 m!2357997))

(assert (=> b!1925396 m!2357997))

(assert (=> b!1925396 m!2361405))

(assert (=> b!1925396 m!2361405))

(assert (=> b!1925396 m!2361407))

(declare-fun m!2361413 () Bool)

(assert (=> b!1925396 m!2361413))

(assert (=> b!1923795 d!586909))

(assert (=> bm!118225 d!586491))

(declare-fun d!586911 () Bool)

(assert (=> d!586911 (= (inv!28977 (tag!4370 (rule!6131 (h!27309 (t!179045 tokens!598))))) (= (mod (str.len (value!123538 (tag!4370 (rule!6131 (h!27309 (t!179045 tokens!598)))))) 2) 0))))

(assert (=> b!1923832 d!586911))

(declare-fun d!586913 () Bool)

(declare-fun res!860970 () Bool)

(declare-fun e!1230744 () Bool)

(assert (=> d!586913 (=> (not res!860970) (not e!1230744))))

(assert (=> d!586913 (= res!860970 (semiInverseModEq!1561 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))))))

(assert (=> d!586913 (= (inv!28981 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) e!1230744)))

(declare-fun b!1925397 () Bool)

(assert (=> b!1925397 (= e!1230744 (equivClasses!1488 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))))))

(assert (= (and d!586913 res!860970) b!1925397))

(declare-fun m!2361415 () Bool)

(assert (=> d!586913 m!2361415))

(declare-fun m!2361417 () Bool)

(assert (=> b!1925397 m!2361417))

(assert (=> b!1923832 d!586913))

(declare-fun d!586915 () Bool)

(assert (=> d!586915 (= (isEmpty!13484 lt!737199) (not ((_ is Some!4530) lt!737199)))))

(assert (=> d!585913 d!586915))

(assert (=> d!585913 d!586063))

(declare-fun bs!414614 () Bool)

(declare-fun d!586917 () Bool)

(assert (= bs!414614 (and d!586917 d!585869)))

(declare-fun lambda!75131 () Int)

(assert (=> bs!414614 (= (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (= lambda!75131 lambda!75077))))

(declare-fun bs!414615 () Bool)

(assert (= bs!414615 (and d!586917 d!586169)))

(assert (=> bs!414615 (= (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) (= lambda!75131 lambda!75105))))

(declare-fun bs!414616 () Bool)

(assert (= bs!414616 (and d!586917 d!586271)))

(assert (=> bs!414616 (= (= (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (h!27310 rules!3198)))) (= lambda!75131 lambda!75117))))

(assert (=> d!586917 true))

(assert (=> d!586917 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354)))) (dynLambda!10594 order!13723 lambda!75131))))

(assert (=> d!586917 (= (equivClasses!1488 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toValue!5557 (transformation!3928 (rule!6131 separatorToken!354)))) (Forall2!622 lambda!75131))))

(declare-fun bs!414617 () Bool)

(assert (= bs!414617 d!586917))

(declare-fun m!2361419 () Bool)

(assert (=> bs!414617 m!2361419))

(assert (=> b!1923532 d!586917))

(declare-fun d!586919 () Bool)

(assert (=> d!586919 (= (list!8857 lt!737252) (list!8861 (c!312514 lt!737252)))))

(declare-fun bs!414618 () Bool)

(assert (= bs!414618 d!586919))

(declare-fun m!2361421 () Bool)

(assert (=> bs!414618 m!2361421))

(assert (=> d!586013 d!586919))

(declare-fun d!586921 () Bool)

(declare-fun e!1230747 () Bool)

(assert (=> d!586921 e!1230747))

(declare-fun res!860973 () Bool)

(assert (=> d!586921 (=> (not res!860973) (not e!1230747))))

(declare-fun lt!737819 () BalanceConc!14438)

(assert (=> d!586921 (= res!860973 (= (list!8857 lt!737819) (Cons!21908 (h!27309 tokens!598) Nil!21908)))))

(declare-fun choose!11956 (Token!7408) BalanceConc!14438)

(assert (=> d!586921 (= lt!737819 (choose!11956 (h!27309 tokens!598)))))

(assert (=> d!586921 (= (singleton!844 (h!27309 tokens!598)) lt!737819)))

(declare-fun b!1925400 () Bool)

(assert (=> b!1925400 (= e!1230747 (isBalanced!2253 (c!312514 lt!737819)))))

(assert (= (and d!586921 res!860973) b!1925400))

(declare-fun m!2361423 () Bool)

(assert (=> d!586921 m!2361423))

(declare-fun m!2361425 () Bool)

(assert (=> d!586921 m!2361425))

(declare-fun m!2361427 () Bool)

(assert (=> b!1925400 m!2361427))

(assert (=> d!586013 d!586921))

(assert (=> b!1923318 d!586585))

(assert (=> b!1923318 d!586587))

(assert (=> b!1923318 d!586251))

(declare-fun d!586923 () Bool)

(declare-fun lt!737820 () Bool)

(assert (=> d!586923 (= lt!737820 (isEmpty!13485 (list!8853 (_2!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)))))))))

(assert (=> d!586923 (= lt!737820 (isEmpty!13492 (c!312512 (_2!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354)))))))))

(assert (=> d!586923 (= (isEmpty!13486 (_2!11730 (lex!1569 thiss!23328 rules!3198 (print!1511 thiss!23328 (singletonSeq!1912 separatorToken!354))))) lt!737820)))

(declare-fun bs!414619 () Bool)

(assert (= bs!414619 d!586923))

(declare-fun m!2361429 () Bool)

(assert (=> bs!414619 m!2361429))

(assert (=> bs!414619 m!2361429))

(declare-fun m!2361431 () Bool)

(assert (=> bs!414619 m!2361431))

(declare-fun m!2361433 () Bool)

(assert (=> bs!414619 m!2361433))

(assert (=> b!1923695 d!586923))

(assert (=> b!1923695 d!586305))

(assert (=> b!1923695 d!586297))

(assert (=> b!1923695 d!586295))

(declare-fun b!1925401 () Bool)

(declare-fun e!1230748 () Bool)

(assert (=> b!1925401 (= e!1230748 tp_is_empty!9129)))

(declare-fun b!1925402 () Bool)

(declare-fun tp!549988 () Bool)

(declare-fun tp!549991 () Bool)

(assert (=> b!1925402 (= e!1230748 (and tp!549988 tp!549991))))

(declare-fun b!1925403 () Bool)

(declare-fun tp!549989 () Bool)

(assert (=> b!1925403 (= e!1230748 tp!549989)))

(declare-fun b!1925404 () Bool)

(declare-fun tp!549987 () Bool)

(declare-fun tp!549990 () Bool)

(assert (=> b!1925404 (= e!1230748 (and tp!549987 tp!549990))))

(assert (=> b!1923835 (= tp!549842 e!1230748)))

(assert (= (and b!1923835 ((_ is ElementMatch!5353) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925401))

(assert (= (and b!1923835 ((_ is Concat!9418) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925402))

(assert (= (and b!1923835 ((_ is Star!5353) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925403))

(assert (= (and b!1923835 ((_ is Union!5353) (regOne!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925404))

(declare-fun b!1925405 () Bool)

(declare-fun e!1230749 () Bool)

(assert (=> b!1925405 (= e!1230749 tp_is_empty!9129)))

(declare-fun b!1925406 () Bool)

(declare-fun tp!549993 () Bool)

(declare-fun tp!549996 () Bool)

(assert (=> b!1925406 (= e!1230749 (and tp!549993 tp!549996))))

(declare-fun b!1925407 () Bool)

(declare-fun tp!549994 () Bool)

(assert (=> b!1925407 (= e!1230749 tp!549994)))

(declare-fun b!1925408 () Bool)

(declare-fun tp!549992 () Bool)

(declare-fun tp!549995 () Bool)

(assert (=> b!1925408 (= e!1230749 (and tp!549992 tp!549995))))

(assert (=> b!1923835 (= tp!549845 e!1230749)))

(assert (= (and b!1923835 ((_ is ElementMatch!5353) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925405))

(assert (= (and b!1923835 ((_ is Concat!9418) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925406))

(assert (= (and b!1923835 ((_ is Star!5353) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925407))

(assert (= (and b!1923835 ((_ is Union!5353) (regTwo!11218 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925408))

(declare-fun b!1925409 () Bool)

(declare-fun e!1230750 () Bool)

(assert (=> b!1925409 (= e!1230750 tp_is_empty!9129)))

(declare-fun b!1925410 () Bool)

(declare-fun tp!549998 () Bool)

(declare-fun tp!550001 () Bool)

(assert (=> b!1925410 (= e!1230750 (and tp!549998 tp!550001))))

(declare-fun b!1925411 () Bool)

(declare-fun tp!549999 () Bool)

(assert (=> b!1925411 (= e!1230750 tp!549999)))

(declare-fun b!1925412 () Bool)

(declare-fun tp!549997 () Bool)

(declare-fun tp!550000 () Bool)

(assert (=> b!1925412 (= e!1230750 (and tp!549997 tp!550000))))

(assert (=> b!1923847 (= tp!549857 e!1230750)))

(assert (= (and b!1923847 ((_ is ElementMatch!5353) (regex!3928 (h!27310 (t!179046 rules!3198))))) b!1925409))

(assert (= (and b!1923847 ((_ is Concat!9418) (regex!3928 (h!27310 (t!179046 rules!3198))))) b!1925410))

(assert (= (and b!1923847 ((_ is Star!5353) (regex!3928 (h!27310 (t!179046 rules!3198))))) b!1925411))

(assert (= (and b!1923847 ((_ is Union!5353) (regex!3928 (h!27310 (t!179046 rules!3198))))) b!1925412))

(declare-fun b!1925413 () Bool)

(declare-fun e!1230751 () Bool)

(declare-fun tp!550002 () Bool)

(assert (=> b!1925413 (= e!1230751 (and tp_is_empty!9129 tp!550002))))

(assert (=> b!1923819 (= tp!549825 e!1230751)))

(assert (= (and b!1923819 ((_ is Cons!21906) (t!179043 (originalCharacters!4735 (h!27309 tokens!598))))) b!1925413))

(declare-fun b!1925414 () Bool)

(declare-fun e!1230752 () Bool)

(assert (=> b!1925414 (= e!1230752 tp_is_empty!9129)))

(declare-fun b!1925415 () Bool)

(declare-fun tp!550004 () Bool)

(declare-fun tp!550007 () Bool)

(assert (=> b!1925415 (= e!1230752 (and tp!550004 tp!550007))))

(declare-fun b!1925416 () Bool)

(declare-fun tp!550005 () Bool)

(assert (=> b!1925416 (= e!1230752 tp!550005)))

(declare-fun b!1925417 () Bool)

(declare-fun tp!550003 () Bool)

(declare-fun tp!550006 () Bool)

(assert (=> b!1925417 (= e!1230752 (and tp!550003 tp!550006))))

(assert (=> b!1923837 (= tp!549841 e!1230752)))

(assert (= (and b!1923837 ((_ is ElementMatch!5353) (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925414))

(assert (= (and b!1923837 ((_ is Concat!9418) (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925415))

(assert (= (and b!1923837 ((_ is Star!5353) (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925416))

(assert (= (and b!1923837 ((_ is Union!5353) (regOne!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925417))

(declare-fun b!1925418 () Bool)

(declare-fun e!1230753 () Bool)

(assert (=> b!1925418 (= e!1230753 tp_is_empty!9129)))

(declare-fun b!1925419 () Bool)

(declare-fun tp!550009 () Bool)

(declare-fun tp!550012 () Bool)

(assert (=> b!1925419 (= e!1230753 (and tp!550009 tp!550012))))

(declare-fun b!1925420 () Bool)

(declare-fun tp!550010 () Bool)

(assert (=> b!1925420 (= e!1230753 tp!550010)))

(declare-fun b!1925421 () Bool)

(declare-fun tp!550008 () Bool)

(declare-fun tp!550011 () Bool)

(assert (=> b!1925421 (= e!1230753 (and tp!550008 tp!550011))))

(assert (=> b!1923837 (= tp!549844 e!1230753)))

(assert (= (and b!1923837 ((_ is ElementMatch!5353) (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925418))

(assert (= (and b!1923837 ((_ is Concat!9418) (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925419))

(assert (= (and b!1923837 ((_ is Star!5353) (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925420))

(assert (= (and b!1923837 ((_ is Union!5353) (regTwo!11219 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925421))

(declare-fun b!1925422 () Bool)

(declare-fun e!1230754 () Bool)

(declare-fun tp!550013 () Bool)

(assert (=> b!1925422 (= e!1230754 (and tp_is_empty!9129 tp!550013))))

(assert (=> b!1923804 (= tp!549809 e!1230754)))

(assert (= (and b!1923804 ((_ is Cons!21906) (t!179043 (originalCharacters!4735 separatorToken!354)))) b!1925422))

(declare-fun b!1925423 () Bool)

(declare-fun e!1230755 () Bool)

(assert (=> b!1925423 (= e!1230755 tp_is_empty!9129)))

(declare-fun b!1925424 () Bool)

(declare-fun tp!550015 () Bool)

(declare-fun tp!550018 () Bool)

(assert (=> b!1925424 (= e!1230755 (and tp!550015 tp!550018))))

(declare-fun b!1925425 () Bool)

(declare-fun tp!550016 () Bool)

(assert (=> b!1925425 (= e!1230755 tp!550016)))

(declare-fun b!1925426 () Bool)

(declare-fun tp!550014 () Bool)

(declare-fun tp!550017 () Bool)

(assert (=> b!1925426 (= e!1230755 (and tp!550014 tp!550017))))

(assert (=> b!1923836 (= tp!549843 e!1230755)))

(assert (= (and b!1923836 ((_ is ElementMatch!5353) (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925423))

(assert (= (and b!1923836 ((_ is Concat!9418) (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925424))

(assert (= (and b!1923836 ((_ is Star!5353) (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925425))

(assert (= (and b!1923836 ((_ is Union!5353) (reg!5682 (regex!3928 (rule!6131 (h!27309 tokens!598)))))) b!1925426))

(declare-fun b!1925427 () Bool)

(declare-fun e!1230756 () Bool)

(assert (=> b!1925427 (= e!1230756 tp_is_empty!9129)))

(declare-fun b!1925428 () Bool)

(declare-fun tp!550020 () Bool)

(declare-fun tp!550023 () Bool)

(assert (=> b!1925428 (= e!1230756 (and tp!550020 tp!550023))))

(declare-fun b!1925429 () Bool)

(declare-fun tp!550021 () Bool)

(assert (=> b!1925429 (= e!1230756 tp!550021)))

(declare-fun b!1925430 () Bool)

(declare-fun tp!550019 () Bool)

(declare-fun tp!550022 () Bool)

(assert (=> b!1925430 (= e!1230756 (and tp!550019 tp!550022))))

(assert (=> b!1923818 (= tp!549820 e!1230756)))

(assert (= (and b!1923818 ((_ is ElementMatch!5353) (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))))) b!1925427))

(assert (= (and b!1923818 ((_ is Concat!9418) (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))))) b!1925428))

(assert (= (and b!1923818 ((_ is Star!5353) (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))))) b!1925429))

(assert (= (and b!1923818 ((_ is Union!5353) (regOne!11219 (regex!3928 (rule!6131 separatorToken!354))))) b!1925430))

(declare-fun b!1925431 () Bool)

(declare-fun e!1230757 () Bool)

(assert (=> b!1925431 (= e!1230757 tp_is_empty!9129)))

(declare-fun b!1925432 () Bool)

(declare-fun tp!550025 () Bool)

(declare-fun tp!550028 () Bool)

(assert (=> b!1925432 (= e!1230757 (and tp!550025 tp!550028))))

(declare-fun b!1925433 () Bool)

(declare-fun tp!550026 () Bool)

(assert (=> b!1925433 (= e!1230757 tp!550026)))

(declare-fun b!1925434 () Bool)

(declare-fun tp!550024 () Bool)

(declare-fun tp!550027 () Bool)

(assert (=> b!1925434 (= e!1230757 (and tp!550024 tp!550027))))

(assert (=> b!1923818 (= tp!549823 e!1230757)))

(assert (= (and b!1923818 ((_ is ElementMatch!5353) (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))))) b!1925431))

(assert (= (and b!1923818 ((_ is Concat!9418) (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))))) b!1925432))

(assert (= (and b!1923818 ((_ is Star!5353) (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))))) b!1925433))

(assert (= (and b!1923818 ((_ is Union!5353) (regTwo!11219 (regex!3928 (rule!6131 separatorToken!354))))) b!1925434))

(declare-fun b!1925435 () Bool)

(declare-fun e!1230758 () Bool)

(assert (=> b!1925435 (= e!1230758 tp_is_empty!9129)))

(declare-fun b!1925436 () Bool)

(declare-fun tp!550030 () Bool)

(declare-fun tp!550033 () Bool)

(assert (=> b!1925436 (= e!1230758 (and tp!550030 tp!550033))))

(declare-fun b!1925437 () Bool)

(declare-fun tp!550031 () Bool)

(assert (=> b!1925437 (= e!1230758 tp!550031)))

(declare-fun b!1925438 () Bool)

(declare-fun tp!550029 () Bool)

(declare-fun tp!550032 () Bool)

(assert (=> b!1925438 (= e!1230758 (and tp!550029 tp!550032))))

(assert (=> b!1923817 (= tp!549822 e!1230758)))

(assert (= (and b!1923817 ((_ is ElementMatch!5353) (reg!5682 (regex!3928 (rule!6131 separatorToken!354))))) b!1925435))

(assert (= (and b!1923817 ((_ is Concat!9418) (reg!5682 (regex!3928 (rule!6131 separatorToken!354))))) b!1925436))

(assert (= (and b!1923817 ((_ is Star!5353) (reg!5682 (regex!3928 (rule!6131 separatorToken!354))))) b!1925437))

(assert (= (and b!1923817 ((_ is Union!5353) (reg!5682 (regex!3928 (rule!6131 separatorToken!354))))) b!1925438))

(declare-fun b!1925439 () Bool)

(declare-fun e!1230759 () Bool)

(assert (=> b!1925439 (= e!1230759 tp_is_empty!9129)))

(declare-fun b!1925440 () Bool)

(declare-fun tp!550035 () Bool)

(declare-fun tp!550038 () Bool)

(assert (=> b!1925440 (= e!1230759 (and tp!550035 tp!550038))))

(declare-fun b!1925441 () Bool)

(declare-fun tp!550036 () Bool)

(assert (=> b!1925441 (= e!1230759 tp!550036)))

(declare-fun b!1925442 () Bool)

(declare-fun tp!550034 () Bool)

(declare-fun tp!550037 () Bool)

(assert (=> b!1925442 (= e!1230759 (and tp!550034 tp!550037))))

(assert (=> b!1923852 (= tp!549858 e!1230759)))

(assert (= (and b!1923852 ((_ is ElementMatch!5353) (regOne!11219 (regex!3928 (h!27310 rules!3198))))) b!1925439))

(assert (= (and b!1923852 ((_ is Concat!9418) (regOne!11219 (regex!3928 (h!27310 rules!3198))))) b!1925440))

(assert (= (and b!1923852 ((_ is Star!5353) (regOne!11219 (regex!3928 (h!27310 rules!3198))))) b!1925441))

(assert (= (and b!1923852 ((_ is Union!5353) (regOne!11219 (regex!3928 (h!27310 rules!3198))))) b!1925442))

(declare-fun b!1925443 () Bool)

(declare-fun e!1230760 () Bool)

(assert (=> b!1925443 (= e!1230760 tp_is_empty!9129)))

(declare-fun b!1925444 () Bool)

(declare-fun tp!550040 () Bool)

(declare-fun tp!550043 () Bool)

(assert (=> b!1925444 (= e!1230760 (and tp!550040 tp!550043))))

(declare-fun b!1925445 () Bool)

(declare-fun tp!550041 () Bool)

(assert (=> b!1925445 (= e!1230760 tp!550041)))

(declare-fun b!1925446 () Bool)

(declare-fun tp!550039 () Bool)

(declare-fun tp!550042 () Bool)

(assert (=> b!1925446 (= e!1230760 (and tp!550039 tp!550042))))

(assert (=> b!1923852 (= tp!549861 e!1230760)))

(assert (= (and b!1923852 ((_ is ElementMatch!5353) (regTwo!11219 (regex!3928 (h!27310 rules!3198))))) b!1925443))

(assert (= (and b!1923852 ((_ is Concat!9418) (regTwo!11219 (regex!3928 (h!27310 rules!3198))))) b!1925444))

(assert (= (and b!1923852 ((_ is Star!5353) (regTwo!11219 (regex!3928 (h!27310 rules!3198))))) b!1925445))

(assert (= (and b!1923852 ((_ is Union!5353) (regTwo!11219 (regex!3928 (h!27310 rules!3198))))) b!1925446))

(declare-fun b!1925447 () Bool)

(declare-fun e!1230761 () Bool)

(assert (=> b!1925447 (= e!1230761 tp_is_empty!9129)))

(declare-fun b!1925448 () Bool)

(declare-fun tp!550045 () Bool)

(declare-fun tp!550048 () Bool)

(assert (=> b!1925448 (= e!1230761 (and tp!550045 tp!550048))))

(declare-fun b!1925449 () Bool)

(declare-fun tp!550046 () Bool)

(assert (=> b!1925449 (= e!1230761 tp!550046)))

(declare-fun b!1925450 () Bool)

(declare-fun tp!550044 () Bool)

(declare-fun tp!550047 () Bool)

(assert (=> b!1925450 (= e!1230761 (and tp!550044 tp!550047))))

(assert (=> b!1923816 (= tp!549821 e!1230761)))

(assert (= (and b!1923816 ((_ is ElementMatch!5353) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354))))) b!1925447))

(assert (= (and b!1923816 ((_ is Concat!9418) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354))))) b!1925448))

(assert (= (and b!1923816 ((_ is Star!5353) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354))))) b!1925449))

(assert (= (and b!1923816 ((_ is Union!5353) (regOne!11218 (regex!3928 (rule!6131 separatorToken!354))))) b!1925450))

(declare-fun b!1925451 () Bool)

(declare-fun e!1230762 () Bool)

(assert (=> b!1925451 (= e!1230762 tp_is_empty!9129)))

(declare-fun b!1925452 () Bool)

(declare-fun tp!550050 () Bool)

(declare-fun tp!550053 () Bool)

(assert (=> b!1925452 (= e!1230762 (and tp!550050 tp!550053))))

(declare-fun b!1925453 () Bool)

(declare-fun tp!550051 () Bool)

(assert (=> b!1925453 (= e!1230762 tp!550051)))

(declare-fun b!1925454 () Bool)

(declare-fun tp!550049 () Bool)

(declare-fun tp!550052 () Bool)

(assert (=> b!1925454 (= e!1230762 (and tp!550049 tp!550052))))

(assert (=> b!1923816 (= tp!549824 e!1230762)))

(assert (= (and b!1923816 ((_ is ElementMatch!5353) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) b!1925451))

(assert (= (and b!1923816 ((_ is Concat!9418) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) b!1925452))

(assert (= (and b!1923816 ((_ is Star!5353) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) b!1925453))

(assert (= (and b!1923816 ((_ is Union!5353) (regTwo!11218 (regex!3928 (rule!6131 separatorToken!354))))) b!1925454))

(declare-fun b!1925455 () Bool)

(declare-fun e!1230763 () Bool)

(assert (=> b!1925455 (= e!1230763 tp_is_empty!9129)))

(declare-fun b!1925456 () Bool)

(declare-fun tp!550055 () Bool)

(declare-fun tp!550058 () Bool)

(assert (=> b!1925456 (= e!1230763 (and tp!550055 tp!550058))))

(declare-fun b!1925457 () Bool)

(declare-fun tp!550056 () Bool)

(assert (=> b!1925457 (= e!1230763 tp!550056)))

(declare-fun b!1925458 () Bool)

(declare-fun tp!550054 () Bool)

(declare-fun tp!550057 () Bool)

(assert (=> b!1925458 (= e!1230763 (and tp!550054 tp!550057))))

(assert (=> b!1923851 (= tp!549860 e!1230763)))

(assert (= (and b!1923851 ((_ is ElementMatch!5353) (reg!5682 (regex!3928 (h!27310 rules!3198))))) b!1925455))

(assert (= (and b!1923851 ((_ is Concat!9418) (reg!5682 (regex!3928 (h!27310 rules!3198))))) b!1925456))

(assert (= (and b!1923851 ((_ is Star!5353) (reg!5682 (regex!3928 (h!27310 rules!3198))))) b!1925457))

(assert (= (and b!1923851 ((_ is Union!5353) (reg!5682 (regex!3928 (h!27310 rules!3198))))) b!1925458))

(declare-fun b!1925461 () Bool)

(declare-fun b_free!55133 () Bool)

(declare-fun b_next!55837 () Bool)

(assert (=> b!1925461 (= b_free!55133 (not b_next!55837))))

(declare-fun tb!117805 () Bool)

(declare-fun t!179380 () Bool)

(assert (=> (and b!1925461 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179380) tb!117805))

(declare-fun result!142346 () Bool)

(assert (= result!142346 result!142222))

(assert (=> d!586593 t!179380))

(declare-fun tb!117807 () Bool)

(declare-fun t!179382 () Bool)

(assert (=> (and b!1925461 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179382) tb!117807))

(declare-fun result!142348 () Bool)

(assert (= result!142348 result!142016))

(assert (=> d!585869 t!179382))

(declare-fun tb!117809 () Bool)

(declare-fun t!179384 () Bool)

(assert (=> (and b!1925461 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179384) tb!117809))

(declare-fun result!142350 () Bool)

(assert (= result!142350 result!142336))

(assert (=> d!586903 t!179384))

(declare-fun t!179386 () Bool)

(declare-fun tb!117811 () Bool)

(assert (=> (and b!1925461 (= (toValue!5557 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179386) tb!117811))

(declare-fun result!142352 () Bool)

(assert (= result!142352 result!142024))

(assert (=> d!585869 t!179386))

(assert (=> d!585847 t!179382))

(declare-fun b_and!150839 () Bool)

(declare-fun tp!550061 () Bool)

(assert (=> b!1925461 (= tp!550061 (and (=> t!179384 result!142350) (=> t!179382 result!142348) (=> t!179386 result!142352) (=> t!179380 result!142346) b_and!150839))))

(declare-fun b_free!55135 () Bool)

(declare-fun b_next!55839 () Bool)

(assert (=> b!1925461 (= b_free!55135 (not b_next!55839))))

(declare-fun t!179388 () Bool)

(declare-fun tb!117813 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179388) tb!117813))

(declare-fun result!142354 () Bool)

(assert (= result!142354 result!142064))

(assert (=> b!1923734 t!179388))

(declare-fun tb!117815 () Bool)

(declare-fun t!179390 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179390) tb!117815))

(declare-fun result!142356 () Bool)

(assert (= result!142356 result!142008))

(assert (=> d!585847 t!179390))

(declare-fun t!179392 () Bool)

(declare-fun tb!117817 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))) t!179392) tb!117817))

(declare-fun result!142358 () Bool)

(assert (= result!142358 result!142306))

(assert (=> d!586807 t!179392))

(declare-fun tb!117819 () Bool)

(declare-fun t!179394 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0))))) t!179394) tb!117819))

(declare-fun result!142360 () Bool)

(assert (= result!142360 result!142316))

(assert (=> d!586837 t!179394))

(declare-fun t!179396 () Bool)

(declare-fun tb!117821 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) t!179396) tb!117821))

(declare-fun result!142362 () Bool)

(assert (= result!142362 result!142070))

(assert (=> d!585939 t!179396))

(assert (=> b!1923789 t!179396))

(assert (=> d!585925 t!179388))

(declare-fun tb!117823 () Bool)

(declare-fun t!179398 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) t!179398) tb!117823))

(declare-fun result!142364 () Bool)

(assert (= result!142364 result!142142))

(assert (=> d!586149 t!179398))

(declare-fun tb!117825 () Bool)

(declare-fun t!179400 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179400) tb!117825))

(declare-fun result!142366 () Bool)

(assert (= result!142366 result!142212))

(assert (=> d!586587 t!179400))

(declare-fun t!179402 () Bool)

(declare-fun tb!117827 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179402) tb!117827))

(declare-fun result!142368 () Bool)

(assert (= result!142368 result!142152))

(assert (=> d!586165 t!179402))

(declare-fun t!179404 () Bool)

(declare-fun tb!117829 () Bool)

(assert (=> (and b!1925461 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))) t!179404) tb!117829))

(declare-fun result!142370 () Bool)

(assert (= result!142370 result!142326))

(assert (=> d!586877 t!179404))

(assert (=> b!1924752 t!179398))

(declare-fun tp!550059 () Bool)

(declare-fun b_and!150841 () Bool)

(assert (=> b!1925461 (= tp!550059 (and (=> t!179402 result!142368) (=> t!179396 result!142362) (=> t!179388 result!142354) (=> t!179392 result!142358) (=> t!179390 result!142356) (=> t!179398 result!142364) (=> t!179400 result!142366) (=> t!179404 result!142370) (=> t!179394 result!142360) b_and!150841))))

(declare-fun e!1230764 () Bool)

(assert (=> b!1925461 (= e!1230764 (and tp!550061 tp!550059))))

(declare-fun e!1230765 () Bool)

(declare-fun b!1925460 () Bool)

(declare-fun tp!550062 () Bool)

(assert (=> b!1925460 (= e!1230765 (and tp!550062 (inv!28977 (tag!4370 (h!27310 (t!179046 (t!179046 rules!3198))))) (inv!28981 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) e!1230764))))

(declare-fun b!1925459 () Bool)

(declare-fun e!1230766 () Bool)

(declare-fun tp!550060 () Bool)

(assert (=> b!1925459 (= e!1230766 (and e!1230765 tp!550060))))

(assert (=> b!1923846 (= tp!549855 e!1230766)))

(assert (= b!1925460 b!1925461))

(assert (= b!1925459 b!1925460))

(assert (= (and b!1923846 ((_ is Cons!21909) (t!179046 (t!179046 rules!3198)))) b!1925459))

(declare-fun m!2361435 () Bool)

(assert (=> b!1925460 m!2361435))

(declare-fun m!2361437 () Bool)

(assert (=> b!1925460 m!2361437))

(declare-fun tp!550071 () Bool)

(declare-fun tp!550069 () Bool)

(declare-fun e!1230773 () Bool)

(declare-fun b!1925470 () Bool)

(assert (=> b!1925470 (= e!1230773 (and (inv!28984 (left!17424 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))))) tp!550069 (inv!28984 (right!17754 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))))) tp!550071))))

(declare-fun b!1925472 () Bool)

(declare-fun e!1230772 () Bool)

(declare-fun tp!550070 () Bool)

(assert (=> b!1925472 (= e!1230772 tp!550070)))

(declare-fun b!1925471 () Bool)

(declare-fun inv!28991 (IArray!14625) Bool)

(assert (=> b!1925471 (= e!1230773 (and (inv!28991 (xs!10204 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))))) e!1230772))))

(assert (=> b!1923410 (= tp!549750 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354)))) e!1230773))))

(assert (= (and b!1923410 ((_ is Node!7310) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))))) b!1925470))

(assert (= b!1925471 b!1925472))

(assert (= (and b!1923410 ((_ is Leaf!10737) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (value!123539 separatorToken!354))))) b!1925471))

(declare-fun m!2361439 () Bool)

(assert (=> b!1925470 m!2361439))

(declare-fun m!2361441 () Bool)

(assert (=> b!1925470 m!2361441))

(declare-fun m!2361443 () Bool)

(assert (=> b!1925471 m!2361443))

(assert (=> b!1923410 m!2358525))

(declare-fun b!1925475 () Bool)

(declare-fun e!1230776 () Bool)

(assert (=> b!1925475 (= e!1230776 true)))

(declare-fun b!1925474 () Bool)

(declare-fun e!1230775 () Bool)

(assert (=> b!1925474 (= e!1230775 e!1230776)))

(declare-fun b!1925473 () Bool)

(declare-fun e!1230774 () Bool)

(assert (=> b!1925473 (= e!1230774 e!1230775)))

(assert (=> b!1923797 e!1230774))

(assert (= b!1925474 b!1925475))

(assert (= b!1925473 b!1925474))

(assert (= (and b!1923797 ((_ is Cons!21909) (t!179046 rules!3198))) b!1925473))

(assert (=> b!1925475 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198))))) (dynLambda!10595 order!13735 lambda!75095))))

(assert (=> b!1925475 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198))))) (dynLambda!10595 order!13735 lambda!75095))))

(declare-fun b!1925476 () Bool)

(declare-fun tp!550072 () Bool)

(declare-fun tp!550074 () Bool)

(declare-fun e!1230778 () Bool)

(assert (=> b!1925476 (= e!1230778 (and (inv!28984 (left!17424 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))))) tp!550072 (inv!28984 (right!17754 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))))) tp!550074))))

(declare-fun b!1925478 () Bool)

(declare-fun e!1230777 () Bool)

(declare-fun tp!550073 () Bool)

(assert (=> b!1925478 (= e!1230777 tp!550073)))

(declare-fun b!1925477 () Bool)

(assert (=> b!1925477 (= e!1230778 (and (inv!28991 (xs!10204 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))))) e!1230777))))

(assert (=> b!1923403 (= tp!549749 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598))))) e!1230778))))

(assert (= (and b!1923403 ((_ is Node!7310) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))))) b!1925476))

(assert (= b!1925477 b!1925478))

(assert (= (and b!1923403 ((_ is Leaf!10737) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (value!123539 (h!27309 tokens!598)))))) b!1925477))

(declare-fun m!2361445 () Bool)

(assert (=> b!1925476 m!2361445))

(declare-fun m!2361447 () Bool)

(assert (=> b!1925476 m!2361447))

(declare-fun m!2361449 () Bool)

(assert (=> b!1925477 m!2361449))

(assert (=> b!1923403 m!2358507))

(declare-fun e!1230780 () Bool)

(declare-fun tp!550077 () Bool)

(declare-fun tp!550075 () Bool)

(declare-fun b!1925479 () Bool)

(assert (=> b!1925479 (= e!1230780 (and (inv!28984 (left!17424 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))))) tp!550075 (inv!28984 (right!17754 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))))) tp!550077))))

(declare-fun b!1925481 () Bool)

(declare-fun e!1230779 () Bool)

(declare-fun tp!550076 () Bool)

(assert (=> b!1925481 (= e!1230779 tp!550076)))

(declare-fun b!1925480 () Bool)

(assert (=> b!1925480 (= e!1230780 (and (inv!28991 (xs!10204 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))))) e!1230779))))

(assert (=> b!1923169 (= tp!549743 (and (inv!28984 (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049)))) e!1230780))))

(assert (= (and b!1923169 ((_ is Node!7310) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))))) b!1925479))

(assert (= b!1925480 b!1925481))

(assert (= (and b!1923169 ((_ is Leaf!10737) (c!312512 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))))) b!1925480))

(declare-fun m!2361451 () Bool)

(assert (=> b!1925479 m!2361451))

(declare-fun m!2361453 () Bool)

(assert (=> b!1925479 m!2361453))

(declare-fun m!2361455 () Bool)

(assert (=> b!1925480 m!2361455))

(assert (=> b!1923169 m!2358175))

(declare-fun b!1925482 () Bool)

(declare-fun e!1230781 () Bool)

(assert (=> b!1925482 (= e!1230781 tp_is_empty!9129)))

(declare-fun b!1925483 () Bool)

(declare-fun tp!550079 () Bool)

(declare-fun tp!550082 () Bool)

(assert (=> b!1925483 (= e!1230781 (and tp!550079 tp!550082))))

(declare-fun b!1925484 () Bool)

(declare-fun tp!550080 () Bool)

(assert (=> b!1925484 (= e!1230781 tp!550080)))

(declare-fun b!1925485 () Bool)

(declare-fun tp!550078 () Bool)

(declare-fun tp!550081 () Bool)

(assert (=> b!1925485 (= e!1230781 (and tp!550078 tp!550081))))

(assert (=> b!1923850 (= tp!549859 e!1230781)))

(assert (= (and b!1923850 ((_ is ElementMatch!5353) (regOne!11218 (regex!3928 (h!27310 rules!3198))))) b!1925482))

(assert (= (and b!1923850 ((_ is Concat!9418) (regOne!11218 (regex!3928 (h!27310 rules!3198))))) b!1925483))

(assert (= (and b!1923850 ((_ is Star!5353) (regOne!11218 (regex!3928 (h!27310 rules!3198))))) b!1925484))

(assert (= (and b!1923850 ((_ is Union!5353) (regOne!11218 (regex!3928 (h!27310 rules!3198))))) b!1925485))

(declare-fun b!1925486 () Bool)

(declare-fun e!1230782 () Bool)

(assert (=> b!1925486 (= e!1230782 tp_is_empty!9129)))

(declare-fun b!1925487 () Bool)

(declare-fun tp!550084 () Bool)

(declare-fun tp!550087 () Bool)

(assert (=> b!1925487 (= e!1230782 (and tp!550084 tp!550087))))

(declare-fun b!1925488 () Bool)

(declare-fun tp!550085 () Bool)

(assert (=> b!1925488 (= e!1230782 tp!550085)))

(declare-fun b!1925489 () Bool)

(declare-fun tp!550083 () Bool)

(declare-fun tp!550086 () Bool)

(assert (=> b!1925489 (= e!1230782 (and tp!550083 tp!550086))))

(assert (=> b!1923850 (= tp!549862 e!1230782)))

(assert (= (and b!1923850 ((_ is ElementMatch!5353) (regTwo!11218 (regex!3928 (h!27310 rules!3198))))) b!1925486))

(assert (= (and b!1923850 ((_ is Concat!9418) (regTwo!11218 (regex!3928 (h!27310 rules!3198))))) b!1925487))

(assert (= (and b!1923850 ((_ is Star!5353) (regTwo!11218 (regex!3928 (h!27310 rules!3198))))) b!1925488))

(assert (= (and b!1923850 ((_ is Union!5353) (regTwo!11218 (regex!3928 (h!27310 rules!3198))))) b!1925489))

(declare-fun b!1925490 () Bool)

(declare-fun e!1230783 () Bool)

(assert (=> b!1925490 (= e!1230783 tp_is_empty!9129)))

(declare-fun b!1925491 () Bool)

(declare-fun tp!550089 () Bool)

(declare-fun tp!550092 () Bool)

(assert (=> b!1925491 (= e!1230783 (and tp!550089 tp!550092))))

(declare-fun b!1925492 () Bool)

(declare-fun tp!550090 () Bool)

(assert (=> b!1925492 (= e!1230783 tp!550090)))

(declare-fun b!1925493 () Bool)

(declare-fun tp!550088 () Bool)

(declare-fun tp!550091 () Bool)

(assert (=> b!1925493 (= e!1230783 (and tp!550088 tp!550091))))

(assert (=> b!1923832 (= tp!549837 e!1230783)))

(assert (= (and b!1923832 ((_ is ElementMatch!5353) (regex!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) b!1925490))

(assert (= (and b!1923832 ((_ is Concat!9418) (regex!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) b!1925491))

(assert (= (and b!1923832 ((_ is Star!5353) (regex!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) b!1925492))

(assert (= (and b!1923832 ((_ is Union!5353) (regex!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) b!1925493))

(declare-fun b!1925494 () Bool)

(declare-fun e!1230784 () Bool)

(declare-fun tp!550093 () Bool)

(assert (=> b!1925494 (= e!1230784 (and tp_is_empty!9129 tp!550093))))

(assert (=> b!1923831 (= tp!549839 e!1230784)))

(assert (= (and b!1923831 ((_ is Cons!21906) (originalCharacters!4735 (h!27309 (t!179045 tokens!598))))) b!1925494))

(declare-fun b!1925497 () Bool)

(declare-fun e!1230787 () Bool)

(assert (=> b!1925497 (= e!1230787 true)))

(declare-fun b!1925496 () Bool)

(declare-fun e!1230786 () Bool)

(assert (=> b!1925496 (= e!1230786 e!1230787)))

(declare-fun b!1925495 () Bool)

(declare-fun e!1230785 () Bool)

(assert (=> b!1925495 (= e!1230785 e!1230786)))

(assert (=> b!1923303 e!1230785))

(assert (= b!1925496 b!1925497))

(assert (= b!1925495 b!1925496))

(assert (= (and b!1923303 ((_ is Cons!21909) (t!179046 rules!3198))) b!1925495))

(assert (=> b!1925497 (< (dynLambda!10588 order!13717 (toValue!5557 (transformation!3928 (h!27310 (t!179046 rules!3198))))) (dynLambda!10595 order!13735 lambda!75089))))

(assert (=> b!1925497 (< (dynLambda!10590 order!13721 (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198))))) (dynLambda!10595 order!13735 lambda!75089))))

(declare-fun b!1925501 () Bool)

(declare-fun b_free!55137 () Bool)

(declare-fun b_next!55841 () Bool)

(assert (=> b!1925501 (= b_free!55137 (not b_next!55841))))

(declare-fun tb!117831 () Bool)

(declare-fun t!179406 () Bool)

(assert (=> (and b!1925501 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179406) tb!117831))

(declare-fun result!142374 () Bool)

(assert (= result!142374 result!142222))

(assert (=> d!586593 t!179406))

(declare-fun t!179408 () Bool)

(declare-fun tb!117833 () Bool)

(assert (=> (and b!1925501 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179408) tb!117833))

(declare-fun result!142376 () Bool)

(assert (= result!142376 result!142016))

(assert (=> d!585869 t!179408))

(declare-fun tb!117835 () Bool)

(declare-fun t!179410 () Bool)

(assert (=> (and b!1925501 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toValue!5557 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179410) tb!117835))

(declare-fun result!142378 () Bool)

(assert (= result!142378 result!142336))

(assert (=> d!586903 t!179410))

(declare-fun t!179412 () Bool)

(declare-fun tb!117837 () Bool)

(assert (=> (and b!1925501 (= (toValue!5557 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179412) tb!117837))

(declare-fun result!142380 () Bool)

(assert (= result!142380 result!142024))

(assert (=> d!585869 t!179412))

(assert (=> d!585847 t!179408))

(declare-fun tp!550094 () Bool)

(declare-fun b_and!150843 () Bool)

(assert (=> b!1925501 (= tp!550094 (and (=> t!179410 result!142378) (=> t!179406 result!142374) (=> t!179412 result!142380) (=> t!179408 result!142376) b_and!150843))))

(declare-fun b_free!55139 () Bool)

(declare-fun b_next!55843 () Bool)

(assert (=> b!1925501 (= b_free!55139 (not b_next!55843))))

(declare-fun t!179414 () Bool)

(declare-fun tb!117839 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179414) tb!117839))

(declare-fun result!142382 () Bool)

(assert (= result!142382 result!142064))

(assert (=> b!1923734 t!179414))

(declare-fun t!179416 () Bool)

(declare-fun tb!117841 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598))))) t!179416) tb!117841))

(declare-fun result!142384 () Bool)

(assert (= result!142384 result!142008))

(assert (=> d!585847 t!179416))

(declare-fun tb!117843 () Bool)

(declare-fun t!179418 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (ite c!312561 (h!27309 (t!179045 tokens!598)) (ite c!312558 separatorToken!354 (h!27309 (t!179045 tokens!598)))))))) t!179418) tb!117843))

(declare-fun result!142386 () Bool)

(assert (= result!142386 result!142306))

(assert (=> d!586807 t!179418))

(declare-fun t!179420 () Bool)

(declare-fun tb!117845 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (apply!5682 lt!737061 0))))) t!179420) tb!117845))

(declare-fun result!142388 () Bool)

(assert (= result!142388 result!142316))

(assert (=> d!586837 t!179420))

(declare-fun tb!117847 () Bool)

(declare-fun t!179422 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354)))) t!179422) tb!117847))

(declare-fun result!142390 () Bool)

(assert (= result!142390 result!142070))

(assert (=> d!585939 t!179422))

(assert (=> b!1923789 t!179422))

(assert (=> d!585925 t!179414))

(declare-fun t!179424 () Bool)

(declare-fun tb!117849 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598)))))) t!179424) tb!117849))

(declare-fun result!142392 () Bool)

(assert (= result!142392 result!142142))

(assert (=> d!586149 t!179424))

(declare-fun t!179426 () Bool)

(declare-fun tb!117851 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737164)))))) t!179426) tb!117851))

(declare-fun result!142394 () Bool)

(assert (= result!142394 result!142212))

(assert (=> d!586587 t!179426))

(declare-fun tb!117853 () Bool)

(declare-fun t!179428 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (_1!11728 (get!6893 lt!737108)))))) t!179428) tb!117853))

(declare-fun result!142396 () Bool)

(assert (= result!142396 result!142152))

(assert (=> d!586165 t!179428))

(declare-fun t!179430 () Bool)

(declare-fun tb!117855 () Bool)

(assert (=> (and b!1925501 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (Cons!21908 (h!27309 tokens!598) Nil!21908)))))) t!179430) tb!117855))

(declare-fun result!142398 () Bool)

(assert (= result!142398 result!142326))

(assert (=> d!586877 t!179430))

(assert (=> b!1924752 t!179424))

(declare-fun b_and!150845 () Bool)

(declare-fun tp!550098 () Bool)

(assert (=> b!1925501 (= tp!550098 (and (=> t!179418 result!142386) (=> t!179428 result!142396) (=> t!179416 result!142384) (=> t!179422 result!142390) (=> t!179426 result!142394) (=> t!179430 result!142398) (=> t!179424 result!142392) (=> t!179414 result!142382) (=> t!179420 result!142388) b_and!150845))))

(declare-fun e!1230791 () Bool)

(assert (=> b!1923830 (= tp!549838 e!1230791)))

(declare-fun b!1925499 () Bool)

(declare-fun e!1230788 () Bool)

(declare-fun e!1230792 () Bool)

(declare-fun tp!550097 () Bool)

(assert (=> b!1925499 (= e!1230788 (and (inv!21 (value!123539 (h!27309 (t!179045 (t!179045 tokens!598))))) e!1230792 tp!550097))))

(declare-fun e!1230793 () Bool)

(assert (=> b!1925501 (= e!1230793 (and tp!550094 tp!550098))))

(declare-fun b!1925500 () Bool)

(declare-fun tp!550095 () Bool)

(assert (=> b!1925500 (= e!1230792 (and tp!550095 (inv!28977 (tag!4370 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (inv!28981 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) e!1230793))))

(declare-fun tp!550096 () Bool)

(declare-fun b!1925498 () Bool)

(assert (=> b!1925498 (= e!1230791 (and (inv!28980 (h!27309 (t!179045 (t!179045 tokens!598)))) e!1230788 tp!550096))))

(assert (= b!1925500 b!1925501))

(assert (= b!1925499 b!1925500))

(assert (= b!1925498 b!1925499))

(assert (= (and b!1923830 ((_ is Cons!21908) (t!179045 (t!179045 tokens!598)))) b!1925498))

(declare-fun m!2361457 () Bool)

(assert (=> b!1925499 m!2361457))

(declare-fun m!2361459 () Bool)

(assert (=> b!1925500 m!2361459))

(declare-fun m!2361461 () Bool)

(assert (=> b!1925500 m!2361461))

(declare-fun m!2361463 () Bool)

(assert (=> b!1925498 m!2361463))

(declare-fun b_lambda!63719 () Bool)

(assert (= b_lambda!63653 (or d!586067 b_lambda!63719)))

(declare-fun bs!414620 () Bool)

(declare-fun d!586925 () Bool)

(assert (= bs!414620 (and d!586925 d!586067)))

(assert (=> bs!414620 (= (dynLambda!10587 lambda!75095 (h!27309 tokens!598)) (rulesProduceIndividualToken!1713 thiss!23328 rules!3198 (h!27309 tokens!598)))))

(assert (=> bs!414620 m!2358933))

(assert (=> b!1924129 d!586925))

(declare-fun b_lambda!63721 () Bool)

(assert (= b_lambda!63655 (or b!1923285 b_lambda!63721)))

(declare-fun bs!414621 () Bool)

(declare-fun d!586927 () Bool)

(assert (= bs!414621 (and d!586927 b!1923285)))

(assert (=> bs!414621 (= (dynLambda!10587 lambda!75089 (h!27309 (t!179045 tokens!598))) (rulesProduceIndividualToken!1713 thiss!23328 rules!3198 (h!27309 (t!179045 tokens!598))))))

(assert (=> bs!414621 m!2359543))

(assert (=> d!586203 d!586927))

(declare-fun b_lambda!63723 () Bool)

(assert (= b_lambda!63647 (or d!585869 b_lambda!63723)))

(declare-fun bs!414622 () Bool)

(declare-fun d!586929 () Bool)

(assert (= bs!414622 (and d!586929 d!585869)))

(declare-fun res!860974 () Bool)

(declare-fun e!1230794 () Bool)

(assert (=> bs!414622 (=> res!860974 e!1230794)))

(assert (=> bs!414622 (= res!860974 (not (= (list!8853 lt!737049) (list!8853 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))))))))

(assert (=> bs!414622 (= (dynLambda!10598 lambda!75077 lt!737049 (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598)))) e!1230794)))

(declare-fun b!1925502 () Bool)

(assert (=> b!1925502 (= e!1230794 (= (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (seqFromList!2782 (originalCharacters!4735 (h!27309 tokens!598))))))))

(assert (= (and bs!414622 (not res!860974)) b!1925502))

(declare-fun b_lambda!63733 () Bool)

(assert (=> (not b_lambda!63733) (not b!1925502)))

(assert (=> b!1925502 t!179408))

(declare-fun b_and!150847 () Bool)

(assert (= b_and!150843 (and (=> t!179408 result!142376) b_and!150847)))

(assert (=> b!1925502 t!179141))

(declare-fun b_and!150849 () Bool)

(assert (= b_and!150835 (and (=> t!179141 result!142110) b_and!150849)))

(assert (=> b!1925502 t!179061))

(declare-fun b_and!150851 () Bool)

(assert (= b_and!150831 (and (=> t!179061 result!142022) b_and!150851)))

(assert (=> b!1925502 t!179151))

(declare-fun b_and!150853 () Bool)

(assert (= b_and!150833 (and (=> t!179151 result!142122) b_and!150853)))

(assert (=> b!1925502 t!179059))

(declare-fun b_and!150855 () Bool)

(assert (= b_and!150829 (and (=> t!179059 result!142020) b_and!150855)))

(assert (=> b!1925502 t!179382))

(declare-fun b_and!150857 () Bool)

(assert (= b_and!150839 (and (=> t!179382 result!142348) b_and!150857)))

(assert (=> b!1925502 t!179057))

(declare-fun b_and!150859 () Bool)

(assert (= b_and!150837 (and (=> t!179057 result!142016) b_and!150859)))

(declare-fun b_lambda!63735 () Bool)

(assert (=> (not b_lambda!63735) (not b!1925502)))

(assert (=> b!1925502 t!179153))

(declare-fun b_and!150861 () Bool)

(assert (= b_and!150853 (and (=> t!179153 result!142124) b_and!150861)))

(assert (=> b!1925502 t!179143))

(declare-fun b_and!150863 () Bool)

(assert (= b_and!150849 (and (=> t!179143 result!142112) b_and!150863)))

(assert (=> b!1925502 t!179412))

(declare-fun b_and!150865 () Bool)

(assert (= b_and!150847 (and (=> t!179412 result!142380) b_and!150865)))

(assert (=> b!1925502 t!179386))

(declare-fun b_and!150867 () Bool)

(assert (= b_and!150857 (and (=> t!179386 result!142352) b_and!150867)))

(assert (=> b!1925502 t!179063))

(declare-fun b_and!150869 () Bool)

(assert (= b_and!150859 (and (=> t!179063 result!142024) b_and!150869)))

(assert (=> b!1925502 t!179067))

(declare-fun b_and!150871 () Bool)

(assert (= b_and!150851 (and (=> t!179067 result!142028) b_and!150871)))

(assert (=> b!1925502 t!179065))

(declare-fun b_and!150873 () Bool)

(assert (= b_and!150855 (and (=> t!179065 result!142026) b_and!150873)))

(assert (=> bs!414622 m!2358039))

(assert (=> bs!414622 m!2358023))

(assert (=> bs!414622 m!2358243))

(assert (=> b!1925502 m!2358187))

(assert (=> b!1925502 m!2358023))

(assert (=> b!1925502 m!2358241))

(assert (=> d!586143 d!586929))

(declare-fun b_lambda!63725 () Bool)

(assert (= b_lambda!63677 (or b!1923040 b_lambda!63725)))

(declare-fun bs!414623 () Bool)

(declare-fun d!586931 () Bool)

(assert (= bs!414623 (and d!586931 b!1923040)))

(assert (=> bs!414623 (= (dynLambda!10587 lambda!75071 (h!27309 (t!179045 tokens!598))) (not (isSeparator!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))))

(assert (=> b!1924804 d!586931))

(declare-fun b_lambda!63727 () Bool)

(assert (= b_lambda!63671 (or d!585847 b_lambda!63727)))

(declare-fun bs!414624 () Bool)

(declare-fun d!586933 () Bool)

(assert (= bs!414624 (and d!586933 d!585847)))

(assert (=> bs!414624 (= (dynLambda!10599 lambda!75074 lt!737049) (= (list!8853 (dynLambda!10591 (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (dynLambda!10592 (toValue!5557 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) lt!737049))) (list!8853 lt!737049)))))

(declare-fun b_lambda!63737 () Bool)

(assert (=> (not b_lambda!63737) (not bs!414624)))

(assert (=> bs!414624 t!179147))

(declare-fun b_and!150875 () Bool)

(assert (= b_and!150821 (and (=> t!179147 result!142116) b_and!150875)))

(assert (=> bs!414624 t!179055))

(declare-fun b_and!150877 () Bool)

(assert (= b_and!150823 (and (=> t!179055 result!142014) b_and!150877)))

(assert (=> bs!414624 t!179051))

(declare-fun b_and!150879 () Bool)

(assert (= b_and!150825 (and (=> t!179051 result!142008) b_and!150879)))

(assert (=> bs!414624 t!179053))

(declare-fun b_and!150881 () Bool)

(assert (= b_and!150827 (and (=> t!179053 result!142012) b_and!150881)))

(assert (=> bs!414624 t!179416))

(declare-fun b_and!150883 () Bool)

(assert (= b_and!150845 (and (=> t!179416 result!142384) b_and!150883)))

(assert (=> bs!414624 t!179157))

(declare-fun b_and!150885 () Bool)

(assert (= b_and!150819 (and (=> t!179157 result!142128) b_and!150885)))

(assert (=> bs!414624 t!179390))

(declare-fun b_and!150887 () Bool)

(assert (= b_and!150841 (and (=> t!179390 result!142356) b_and!150887)))

(declare-fun b_lambda!63739 () Bool)

(assert (=> (not b_lambda!63739) (not bs!414624)))

(assert (=> bs!414624 t!179151))

(declare-fun b_and!150889 () Bool)

(assert (= b_and!150861 (and (=> t!179151 result!142122) b_and!150889)))

(assert (=> bs!414624 t!179408))

(declare-fun b_and!150891 () Bool)

(assert (= b_and!150865 (and (=> t!179408 result!142376) b_and!150891)))

(assert (=> bs!414624 t!179382))

(declare-fun b_and!150893 () Bool)

(assert (= b_and!150867 (and (=> t!179382 result!142348) b_and!150893)))

(assert (=> bs!414624 t!179059))

(declare-fun b_and!150895 () Bool)

(assert (= b_and!150873 (and (=> t!179059 result!142020) b_and!150895)))

(assert (=> bs!414624 t!179141))

(declare-fun b_and!150897 () Bool)

(assert (= b_and!150863 (and (=> t!179141 result!142110) b_and!150897)))

(assert (=> bs!414624 t!179057))

(declare-fun b_and!150899 () Bool)

(assert (= b_and!150869 (and (=> t!179057 result!142016) b_and!150899)))

(assert (=> bs!414624 t!179061))

(declare-fun b_and!150901 () Bool)

(assert (= b_and!150871 (and (=> t!179061 result!142022) b_and!150901)))

(assert (=> bs!414624 m!2358187))

(assert (=> bs!414624 m!2358187))

(assert (=> bs!414624 m!2358181))

(assert (=> bs!414624 m!2358039))

(assert (=> bs!414624 m!2358181))

(assert (=> bs!414624 m!2358183))

(assert (=> d!586467 d!586933))

(declare-fun b_lambda!63729 () Bool)

(assert (= b_lambda!63673 (or (and b!1923035 b_free!55103 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1923049 b_free!55099 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1925461 b_free!55135 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1923848 b_free!55123 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1923039 b_free!55107 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1925501 b_free!55139 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1923833 b_free!55119) b_lambda!63729)))

(declare-fun b_lambda!63731 () Bool)

(assert (= b_lambda!63649 (or (and b!1923035 b_free!55103 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 tokens!598)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1923049 b_free!55099 (= (toChars!5416 (transformation!3928 (rule!6131 separatorToken!354))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1925461 b_free!55135 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 (t!179046 rules!3198))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1923848 b_free!55123 (= (toChars!5416 (transformation!3928 (h!27310 (t!179046 rules!3198)))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1923039 b_free!55107 (= (toChars!5416 (transformation!3928 (h!27310 rules!3198))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1925501 b_free!55139 (= (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 (t!179045 tokens!598)))))) (toChars!5416 (transformation!3928 (rule!6131 (h!27309 (t!179045 tokens!598))))))) (and b!1923833 b_free!55119) b_lambda!63731)))

(check-sat (not b!1925345) (not b!1925412) (not d!586279) (not b!1924717) (not b!1925247) (not b!1924184) (not b!1925240) (not b!1923169) (not b!1924745) (not bm!118343) (not b!1924690) (not b!1924787) (not bm!118346) (not b!1924791) (not d!586503) (not b!1925498) (not b!1925457) (not tb!117603) (not b!1924722) (not b!1924021) (not b!1925459) (not b!1924045) (not b!1924803) (not b!1924091) (not d!586281) (not tb!117785) (not b!1924686) tp_is_empty!9129 (not b!1924213) (not b!1925419) (not b!1925394) (not d!586245) (not b!1925322) (not d!586139) (not b_next!55807) (not b!1925479) (not d!586267) (not b!1924018) (not b!1925488) (not b!1925440) (not d!586241) (not d!586817) (not d!586235) (not d!586913) (not d!586819) (not b!1923971) (not b!1925281) (not b!1923967) (not b!1925408) (not b_lambda!63639) (not d!586515) (not b!1924761) (not d!586465) (not b_next!55827) (not b!1925357) (not b!1924016) (not bm!118352) (not bm!118309) (not b!1924719) (not b!1924826) (not b!1925421) (not b!1925438) (not b!1924589) (not d!586921) (not bm!118365) (not d!586111) (not b!1925442) (not b!1924758) (not b!1924173) (not b_lambda!63633) (not b_lambda!63735) (not bm!118310) (not b!1925416) (not b_lambda!63715) (not tb!117613) (not d!586277) (not b!1924221) (not b!1924714) (not b!1925484) (not b!1925500) (not b!1925253) (not b!1925473) (not b!1924609) (not b_lambda!63737) (not d!586801) (not b_lambda!63725) (not bm!118324) (not b!1924569) (not b_next!55837) (not b!1925237) (not bm!118308) (not b!1925434) (not b!1925274) (not bm!118246) (not d!586131) (not b!1924211) (not d!586611) (not d!586495) (not b!1925335) (not bm!118362) (not b!1924681) (not d!586885) (not d!586455) (not b!1925149) (not b!1925483) (not b!1924599) (not d!586813) (not b!1925436) (not d!586881) (not b!1924721) (not b!1923957) (not b!1924810) (not b!1924552) (not b!1925228) (not bm!118356) (not b!1925444) (not d!586865) (not d!586575) (not b!1925393) (not b!1924750) (not b!1925313) (not bm!118363) (not b!1925156) (not b!1924818) (not d!586595) (not bm!118266) (not d!586617) (not b!1925433) (not b!1925491) (not d!586895) (not d!586147) (not b!1924805) (not b!1924831) (not d!586855) (not b_lambda!63723) (not b!1925175) (not tb!117683) (not b_next!55823) b_and!150899 (not b!1925239) (not b!1924209) (not b!1925349) (not b!1925413) (not b!1925173) (not b!1925186) (not b_next!55821) (not d!586243) (not b!1924212) (not b!1924779) (not b!1924825) b_and!150883 (not b!1923961) (not bs!414624) (not b!1924253) (not b!1925430) (not b!1925407) (not b!1925273) (not bm!118370) (not d!586197) (not b!1925470) (not bm!118319) (not b!1925319) (not b!1924674) (not d!586485) (not b!1924796) (not bm!118265) (not b!1924116) (not d!586567) (not d!586471) b_and!150897 (not bm!118358) (not b!1925420) (not bm!118302) (not b!1924646) (not b!1925425) (not b!1924832) (not b!1924570) (not b!1924061) (not bm!118300) (not d!586145) (not b!1925367) (not b!1925454) (not d!586271) (not bm!118351) (not d!586883) (not b!1924158) (not b!1925135) (not d!586129) (not b!1925226) (not b!1924597) (not b!1925170) (not b!1924718) (not b!1925140) (not b_lambda!63713) (not d!586163) (not b!1925311) (not b!1924172) (not d!586825) (not b!1925481) (not b!1924010) (not b!1924816) (not d!586897) (not b!1925169) b_and!150893 (not tb!117765) b_and!150881 (not bm!118367) (not bm!118350) (not b_lambda!63627) (not b!1924251) (not b!1925400) b_and!150891 (not b!1925426) (not b!1925374) (not d!586301) (not d!586829) (not b!1925181) (not b!1925207) (not b!1924565) (not b!1924701) (not b!1925499) (not b!1924090) (not b!1925456) (not d!586805) (not bm!118347) (not b!1925395) (not bm!118353) (not b!1925294) (not b!1924781) (not b!1924075) (not bm!118304) (not d!586295) (not d!586467) (not bm!118248) (not b!1925280) (not b!1924004) (not b!1924783) (not d!586501) (not d!586493) (not b_next!55825) (not b!1925361) b_and!150875 (not b!1925216) (not b!1924059) (not b!1925363) (not d!586151) (not b!1925318) (not b!1924159) (not d!586135) (not b!1923410) (not b!1924014) (not bm!118267) (not b!1925478) (not d!586845) (not b!1924254) (not b!1924219) (not b!1924058) (not b!1924785) (not bs!414621) (not b!1924610) (not b!1924222) (not b!1924601) (not bm!118354) (not d!586875) (not d!586907) (not b!1925168) (not b!1924144) (not b!1923977) (not b!1924628) (not b!1925480) (not b!1925249) (not d!586857) (not d!586539) (not b!1925184) (not b!1924630) (not b!1925410) (not b!1925334) (not b!1925328) (not b!1923996) (not b!1925178) (not b!1925278) (not b!1924115) (not d!586225) (not b!1925151) (not b!1925317) (not b!1925340) (not b!1925276) (not b!1923959) (not bm!118320) (not b_next!55839) (not b!1925248) (not d!586253) (not d!586841) (not b!1924800) (not b!1924648) (not bm!118373) (not d!586297) (not b!1924780) (not b!1924777) (not d!586811) (not b!1925415) (not b!1924822) (not b!1925298) (not b!1925365) (not b!1924571) (not d!586891) (not d!586203) (not d!586537) (not b!1924165) (not d!586565) (not b!1924182) (not d!586497) (not b!1924181) (not b!1925147) (not d!586871) (not b!1923969) (not b!1925262) (not b!1925315) b_and!150885 (not b!1923998) (not bm!118371) (not b!1925370) (not d!586877) (not b_lambda!63739) (not d!586547) (not b!1924560) (not b!1924169) (not b!1925460) (not d!586159) (not b!1924554) (not d!586517) (not d!586141) (not d!586587) (not b!1925366) (not d!586807) (not b!1925494) (not b!1925404) (not b!1924089) (not b!1924114) (not d!586831) (not d!586867) (not b!1925333) (not b_lambda!63717) (not b!1925136) (not b!1923976) (not b!1925342) (not b_lambda!63729) (not b_lambda!63651) (not b!1924829) (not d!586187) (not b!1924152) (not b!1925471) b_and!150889 (not d!586585) (not b_lambda!63719) (not b!1924792) (not bs!414622) (not b!1924003) (not d!586181) (not b_next!55801) (not b_next!55803) (not b!1925446) (not b!1924185) (not d!586541) (not b!1925402) (not b!1924753) (not d!586535) (not b!1925452) (not d!586165) (not d!586195) (not b!1925406) (not d!586303) (not b!1924789) (not b!1924715) (not d!586487) (not b!1924257) (not b!1925171) (not d!586283) (not b!1925327) (not b!1924001) (not d!586793) (not b!1924590) (not d!586905) b_and!150901 (not d!586837) (not b!1925252) (not d!586583) b_and!150879 (not b!1923999) (not d!586923) (not b_lambda!63711) (not b!1924561) (not d!586305) (not b!1925176) (not b!1925225) b_and!150895 (not b!1925183) (not b!1925417) (not b!1924778) (not d!586137) (not b!1924148) (not b_lambda!63635) (not b!1924595) (not b!1924835) (not b!1924752) (not bm!118364) (not d!586589) (not b!1924130) (not b!1925428) (not b!1925208) (not b!1924170) (not b!1925295) (not bm!118236) (not b!1925174) (not b!1925495) (not b!1924759) (not b!1925445) (not b!1924249) (not b!1924604) (not b!1925492) (not d!586149) (not b!1925432) (not b!1925297) (not b!1925153) (not b_next!55805) (not d!586873) (not d!586119) (not b!1924627) (not d!586917) (not b_lambda!63637) (not d!586849) (not b!1925134) (not b!1925263) (not d!586481) (not b!1924566) (not b!1924647) (not b!1925450) (not b!1925437) (not b!1925429) (not b!1925422) (not b!1925344) (not b!1924146) (not b!1924568) (not b!1924012) (not b!1925458) (not b_next!55811) (not b_lambda!63733) (not bm!118344) (not d!586853) (not b!1924677) (not b_lambda!63731) (not d!586143) (not d!586847) (not b!1924261) (not b!1925411) (not d!586621) (not b_lambda!63721) (not b!1924572) (not b!1924705) (not d!586803) (not b!1925355) (not d!586827) (not d!586153) (not b!1923997) (not b!1925346) (not b!1924763) (not b!1925331) (not d!586823) (not b!1925177) (not bm!118306) (not b!1925449) (not b!1924141) (not d!586839) b_and!150887 (not d!586835) (not b_next!55843) (not b!1924703) (not b!1925472) (not tb!117775) (not b!1925287) (not d!586459) (not bm!118312) (not b!1924128) (not b!1925485) (not bm!118323) (not b_lambda!63625) (not b_lambda!63629) (not b!1925397) (not d!586555) (not b!1924563) (not b!1925293) (not b!1924143) (not d!586889) (not d!586615) (not b!1924828) (not b_lambda!63623) (not b!1924550) (not b!1924551) (not b!1924820) (not b_next!55841) (not bm!118322) (not d!586561) (not b!1924564) (not d!586211) (not d!586619) (not b_lambda!63631) (not b!1924000) (not b!1924199) (not d!586893) (not b!1924679) (not b_lambda!63675) (not d!586453) (not b!1925403) (not b!1925477) (not b_next!55809) (not b!1924017) (not b!1924186) (not b!1925238) (not tb!117795) (not bm!118369) (not bm!118263) (not b!1925424) (not b!1925166) (not b!1925353) (not b!1925396) (not b!1925489) (not d!586221) b_and!150877 (not d!586909) (not b!1925330) (not b!1925448) (not b!1923403) (not b_lambda!63727) (not b!1925453) (not d!586161) (not bs!414620) (not d!586919) (not b_lambda!63679) (not b!1925493) (not b!1924166) (not b!1924238) (not d!586213) (not b!1924117) (not b!1925217) (not d!586287) (not b!1924833) (not b!1924171) (not b!1925358) (not b!1925157) (not d!586223) (not b!1924682) (not tb!117673) (not d!586169) (not b!1925259) (not b!1924615) (not b!1924658) (not b!1924600) (not b!1925476) (not b!1924683) (not d!586259) (not bm!118357) (not b!1924776) (not b!1924167) (not b!1924793) (not b!1925441) (not b!1924716) (not b!1924239) (not b!1925487))
(check-sat (not b_next!55807) (not b_next!55827) (not b_next!55837) b_and!150897 b_and!150891 (not b_next!55839) b_and!150885 b_and!150889 b_and!150901 (not b_next!55805) (not b_next!55811) (not b_next!55841) (not b_next!55809) b_and!150877 (not b_next!55823) b_and!150899 (not b_next!55821) b_and!150883 b_and!150893 b_and!150881 (not b_next!55825) b_and!150875 (not b_next!55801) (not b_next!55803) b_and!150879 b_and!150895 b_and!150887 (not b_next!55843))
