; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333354 () Bool)

(assert start!333354)

(declare-fun b!3591395 () Bool)

(declare-fun b_free!92617 () Bool)

(declare-fun b_next!93321 () Bool)

(assert (=> b!3591395 (= b_free!92617 (not b_next!93321))))

(declare-fun tp!1099246 () Bool)

(declare-fun b_and!259787 () Bool)

(assert (=> b!3591395 (= tp!1099246 b_and!259787)))

(declare-fun b_free!92619 () Bool)

(declare-fun b_next!93323 () Bool)

(assert (=> b!3591395 (= b_free!92619 (not b_next!93323))))

(declare-fun tp!1099237 () Bool)

(declare-fun b_and!259789 () Bool)

(assert (=> b!3591395 (= tp!1099237 b_and!259789)))

(declare-fun b!3591406 () Bool)

(declare-fun b_free!92621 () Bool)

(declare-fun b_next!93325 () Bool)

(assert (=> b!3591406 (= b_free!92621 (not b_next!93325))))

(declare-fun tp!1099235 () Bool)

(declare-fun b_and!259791 () Bool)

(assert (=> b!3591406 (= tp!1099235 b_and!259791)))

(declare-fun b_free!92623 () Bool)

(declare-fun b_next!93327 () Bool)

(assert (=> b!3591406 (= b_free!92623 (not b_next!93327))))

(declare-fun tp!1099234 () Bool)

(declare-fun b_and!259793 () Bool)

(assert (=> b!3591406 (= tp!1099234 b_and!259793)))

(declare-fun b!3591411 () Bool)

(declare-fun b_free!92625 () Bool)

(declare-fun b_next!93329 () Bool)

(assert (=> b!3591411 (= b_free!92625 (not b_next!93329))))

(declare-fun tp!1099236 () Bool)

(declare-fun b_and!259795 () Bool)

(assert (=> b!3591411 (= tp!1099236 b_and!259795)))

(declare-fun b_free!92627 () Bool)

(declare-fun b_next!93331 () Bool)

(assert (=> b!3591411 (= b_free!92627 (not b_next!93331))))

(declare-fun tp!1099233 () Bool)

(declare-fun b_and!259797 () Bool)

(assert (=> b!3591411 (= tp!1099233 b_and!259797)))

(declare-fun b!3591399 () Bool)

(declare-fun b_free!92629 () Bool)

(declare-fun b_next!93333 () Bool)

(assert (=> b!3591399 (= b_free!92629 (not b_next!93333))))

(declare-fun tp!1099239 () Bool)

(declare-fun b_and!259799 () Bool)

(assert (=> b!3591399 (= tp!1099239 b_and!259799)))

(declare-fun b_free!92631 () Bool)

(declare-fun b_next!93335 () Bool)

(assert (=> b!3591399 (= b_free!92631 (not b_next!93335))))

(declare-fun tp!1099245 () Bool)

(declare-fun b_and!259801 () Bool)

(assert (=> b!3591399 (= tp!1099245 b_and!259801)))

(declare-fun b!3591392 () Bool)

(declare-fun e!2222178 () Bool)

(declare-fun e!2222174 () Bool)

(assert (=> b!3591392 (= e!2222178 e!2222174)))

(declare-fun res!1449974 () Bool)

(assert (=> b!3591392 (=> (not res!1449974) (not e!2222174))))

(declare-datatypes ((List!37875 0))(
  ( (Nil!37751) (Cons!37751 (h!43171 (_ BitVec 16)) (t!291126 List!37875)) )
))
(declare-datatypes ((TokenValue!5806 0))(
  ( (FloatLiteralValue!11612 (text!41087 List!37875)) (TokenValueExt!5805 (__x!23829 Int)) (Broken!29030 (value!179350 List!37875)) (Object!5929) (End!5806) (Def!5806) (Underscore!5806) (Match!5806) (Else!5806) (Error!5806) (Case!5806) (If!5806) (Extends!5806) (Abstract!5806) (Class!5806) (Val!5806) (DelimiterValue!11612 (del!5866 List!37875)) (KeywordValue!5812 (value!179351 List!37875)) (CommentValue!11612 (value!179352 List!37875)) (WhitespaceValue!11612 (value!179353 List!37875)) (IndentationValue!5806 (value!179354 List!37875)) (String!42363) (Int32!5806) (Broken!29031 (value!179355 List!37875)) (Boolean!5807) (Unit!53752) (OperatorValue!5809 (op!5866 List!37875)) (IdentifierValue!11612 (value!179356 List!37875)) (IdentifierValue!11613 (value!179357 List!37875)) (WhitespaceValue!11613 (value!179358 List!37875)) (True!11612) (False!11612) (Broken!29032 (value!179359 List!37875)) (Broken!29033 (value!179360 List!37875)) (True!11613) (RightBrace!5806) (RightBracket!5806) (Colon!5806) (Null!5806) (Comma!5806) (LeftBracket!5806) (False!11613) (LeftBrace!5806) (ImaginaryLiteralValue!5806 (text!41088 List!37875)) (StringLiteralValue!17418 (value!179361 List!37875)) (EOFValue!5806 (value!179362 List!37875)) (IdentValue!5806 (value!179363 List!37875)) (DelimiterValue!11613 (value!179364 List!37875)) (DedentValue!5806 (value!179365 List!37875)) (NewLineValue!5806 (value!179366 List!37875)) (IntegerValue!17418 (value!179367 (_ BitVec 32)) (text!41089 List!37875)) (IntegerValue!17419 (value!179368 Int) (text!41090 List!37875)) (Times!5806) (Or!5806) (Equal!5806) (Minus!5806) (Broken!29034 (value!179369 List!37875)) (And!5806) (Div!5806) (LessEqual!5806) (Mod!5806) (Concat!16141) (Not!5806) (Plus!5806) (SpaceValue!5806 (value!179370 List!37875)) (IntegerValue!17420 (value!179371 Int) (text!41091 List!37875)) (StringLiteralValue!17419 (text!41092 List!37875)) (FloatLiteralValue!11613 (text!41093 List!37875)) (BytesLiteralValue!5806 (value!179372 List!37875)) (CommentValue!11613 (value!179373 List!37875)) (StringLiteralValue!17420 (value!179374 List!37875)) (ErrorTokenValue!5806 (msg!5867 List!37875)) )
))
(declare-datatypes ((C!20856 0))(
  ( (C!20857 (val!12476 Int)) )
))
(declare-datatypes ((Regex!10335 0))(
  ( (ElementMatch!10335 (c!621950 C!20856)) (Concat!16142 (regOne!21182 Regex!10335) (regTwo!21182 Regex!10335)) (EmptyExpr!10335) (Star!10335 (reg!10664 Regex!10335)) (EmptyLang!10335) (Union!10335 (regOne!21183 Regex!10335) (regTwo!21183 Regex!10335)) )
))
(declare-datatypes ((String!42364 0))(
  ( (String!42365 (value!179375 String)) )
))
(declare-datatypes ((List!37876 0))(
  ( (Nil!37752) (Cons!37752 (h!43172 C!20856) (t!291127 List!37876)) )
))
(declare-datatypes ((IArray!22975 0))(
  ( (IArray!22976 (innerList!11545 List!37876)) )
))
(declare-datatypes ((Conc!11485 0))(
  ( (Node!11485 (left!29499 Conc!11485) (right!29829 Conc!11485) (csize!23200 Int) (cheight!11696 Int)) (Leaf!17884 (xs!14687 IArray!22975) (csize!23201 Int)) (Empty!11485) )
))
(declare-datatypes ((BalanceConc!22584 0))(
  ( (BalanceConc!22585 (c!621951 Conc!11485)) )
))
(declare-datatypes ((TokenValueInjection!11040 0))(
  ( (TokenValueInjection!11041 (toValue!7860 Int) (toChars!7719 Int)) )
))
(declare-datatypes ((Rule!10952 0))(
  ( (Rule!10953 (regex!5576 Regex!10335) (tag!6250 String!42364) (isSeparator!5576 Bool) (transformation!5576 TokenValueInjection!11040)) )
))
(declare-datatypes ((Token!10518 0))(
  ( (Token!10519 (value!179376 TokenValue!5806) (rule!8294 Rule!10952) (size!28754 Int) (originalCharacters!6290 List!37876)) )
))
(declare-datatypes ((tuple2!37640 0))(
  ( (tuple2!37641 (_1!21954 Token!10518) (_2!21954 List!37876)) )
))
(declare-datatypes ((Option!7782 0))(
  ( (None!7781) (Some!7781 (v!37459 tuple2!37640)) )
))
(declare-fun lt!1232117 () Option!7782)

(declare-fun isDefined!6014 (Option!7782) Bool)

(assert (=> b!3591392 (= res!1449974 (isDefined!6014 lt!1232117))))

(declare-datatypes ((List!37877 0))(
  ( (Nil!37753) (Cons!37753 (h!43173 Rule!10952) (t!291128 List!37877)) )
))
(declare-fun rules!3307 () List!37877)

(declare-fun lt!1232107 () List!37876)

(declare-datatypes ((LexerInterface!5165 0))(
  ( (LexerInterfaceExt!5162 (__x!23830 Int)) (Lexer!5163) )
))
(declare-fun thiss!23823 () LexerInterface!5165)

(declare-fun maxPrefix!2699 (LexerInterface!5165 List!37877 List!37876) Option!7782)

(assert (=> b!3591392 (= lt!1232117 (maxPrefix!2699 thiss!23823 rules!3307 lt!1232107))))

(declare-fun token!511 () Token!10518)

(declare-fun list!13888 (BalanceConc!22584) List!37876)

(declare-fun charsOf!3590 (Token!10518) BalanceConc!22584)

(assert (=> b!3591392 (= lt!1232107 (list!13888 (charsOf!3590 token!511)))))

(declare-fun res!1449989 () Bool)

(assert (=> start!333354 (=> (not res!1449989) (not e!2222178))))

(get-info :version)

(assert (=> start!333354 (= res!1449989 ((_ is Lexer!5163) thiss!23823))))

(assert (=> start!333354 e!2222178))

(declare-fun e!2222180 () Bool)

(assert (=> start!333354 e!2222180))

(declare-fun e!2222192 () Bool)

(assert (=> start!333354 e!2222192))

(assert (=> start!333354 true))

(declare-fun e!2222190 () Bool)

(declare-fun inv!51093 (Token!10518) Bool)

(assert (=> start!333354 (and (inv!51093 token!511) e!2222190)))

(declare-fun e!2222189 () Bool)

(assert (=> start!333354 e!2222189))

(declare-fun e!2222179 () Bool)

(assert (=> start!333354 e!2222179))

(declare-fun b!3591393 () Bool)

(declare-fun e!2222172 () Bool)

(declare-fun lt!1232118 () tuple2!37640)

(declare-fun lt!1232108 () Rule!10952)

(assert (=> b!3591393 (= e!2222172 (= (rule!8294 (_1!21954 lt!1232118)) lt!1232108))))

(declare-fun b!3591394 () Bool)

(declare-fun e!2222170 () Bool)

(declare-fun tp!1099232 () Bool)

(assert (=> b!3591394 (= e!2222180 (and e!2222170 tp!1099232))))

(declare-fun e!2222168 () Bool)

(assert (=> b!3591395 (= e!2222168 (and tp!1099246 tp!1099237))))

(declare-fun tp!1099241 () Bool)

(declare-fun e!2222182 () Bool)

(declare-fun b!3591396 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!10952)

(declare-fun inv!51090 (String!42364) Bool)

(declare-fun inv!51094 (TokenValueInjection!11040) Bool)

(assert (=> b!3591396 (= e!2222179 (and tp!1099241 (inv!51090 (tag!6250 anOtherTypeRule!33)) (inv!51094 (transformation!5576 anOtherTypeRule!33)) e!2222182))))

(declare-fun b!3591397 () Bool)

(declare-fun e!2222177 () Bool)

(declare-fun tp!1099244 () Bool)

(assert (=> b!3591397 (= e!2222170 (and tp!1099244 (inv!51090 (tag!6250 (h!43173 rules!3307))) (inv!51094 (transformation!5576 (h!43173 rules!3307))) e!2222177))))

(declare-fun b!3591398 () Bool)

(declare-fun res!1449975 () Bool)

(assert (=> b!3591398 (=> (not res!1449975) (not e!2222178))))

(declare-fun rulesInvariant!4562 (LexerInterface!5165 List!37877) Bool)

(assert (=> b!3591398 (= res!1449975 (rulesInvariant!4562 thiss!23823 rules!3307))))

(assert (=> b!3591399 (= e!2222177 (and tp!1099239 tp!1099245))))

(declare-fun b!3591400 () Bool)

(declare-fun e!2222184 () Bool)

(declare-fun e!2222186 () Bool)

(assert (=> b!3591400 (= e!2222184 e!2222186)))

(declare-fun res!1449973 () Bool)

(assert (=> b!3591400 (=> res!1449973 e!2222186)))

(declare-fun lt!1232112 () List!37876)

(declare-fun lt!1232120 () Option!7782)

(declare-fun lt!1232114 () BalanceConc!22584)

(declare-fun apply!9082 (TokenValueInjection!11040 BalanceConc!22584) TokenValue!5806)

(declare-fun size!28755 (BalanceConc!22584) Int)

(assert (=> b!3591400 (= res!1449973 (not (= lt!1232120 (Some!7781 (tuple2!37641 (Token!10519 (apply!9082 (transformation!5576 (rule!8294 (_1!21954 lt!1232118))) lt!1232114) (rule!8294 (_1!21954 lt!1232118)) (size!28755 lt!1232114) lt!1232112) (_2!21954 lt!1232118))))))))

(declare-datatypes ((Unit!53753 0))(
  ( (Unit!53754) )
))
(declare-fun lt!1232110 () Unit!53753)

(declare-fun lemmaCharactersSize!629 (Token!10518) Unit!53753)

(assert (=> b!3591400 (= lt!1232110 (lemmaCharactersSize!629 (_1!21954 lt!1232118)))))

(declare-fun lt!1232115 () Unit!53753)

(declare-fun lemmaEqSameImage!767 (TokenValueInjection!11040 BalanceConc!22584 BalanceConc!22584) Unit!53753)

(declare-fun seqFromList!4129 (List!37876) BalanceConc!22584)

(assert (=> b!3591400 (= lt!1232115 (lemmaEqSameImage!767 (transformation!5576 (rule!8294 (_1!21954 lt!1232118))) lt!1232114 (seqFromList!4129 (originalCharacters!6290 (_1!21954 lt!1232118)))))))

(declare-fun lt!1232111 () Unit!53753)

(declare-fun lemmaSemiInverse!1333 (TokenValueInjection!11040 BalanceConc!22584) Unit!53753)

(assert (=> b!3591400 (= lt!1232111 (lemmaSemiInverse!1333 (transformation!5576 (rule!8294 (_1!21954 lt!1232118))) lt!1232114))))

(declare-fun b!3591401 () Bool)

(declare-fun res!1449985 () Bool)

(declare-fun e!2222173 () Bool)

(assert (=> b!3591401 (=> (not res!1449985) (not e!2222173))))

(declare-fun lt!1232113 () tuple2!37640)

(declare-fun isEmpty!22250 (List!37876) Bool)

(assert (=> b!3591401 (= res!1449985 (isEmpty!22250 (_2!21954 lt!1232113)))))

(declare-fun b!3591402 () Bool)

(assert (=> b!3591402 (= e!2222186 true)))

(declare-fun lt!1232103 () Int)

(declare-fun lt!1232109 () List!37876)

(declare-fun size!28756 (List!37876) Int)

(assert (=> b!3591402 (= lt!1232103 (size!28756 lt!1232109))))

(declare-fun maxPrefixOneRule!1843 (LexerInterface!5165 Rule!10952 List!37876) Option!7782)

(assert (=> b!3591402 (= (maxPrefixOneRule!1843 thiss!23823 (rule!8294 (_1!21954 lt!1232118)) lt!1232109) (Some!7781 (tuple2!37641 (Token!10519 (apply!9082 (transformation!5576 (rule!8294 (_1!21954 lt!1232118))) (seqFromList!4129 lt!1232112)) (rule!8294 (_1!21954 lt!1232118)) (size!28756 lt!1232112) lt!1232112) (_2!21954 lt!1232118))))))

(declare-fun lt!1232105 () Unit!53753)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!915 (LexerInterface!5165 List!37877 List!37876 List!37876 List!37876 Rule!10952) Unit!53753)

(assert (=> b!3591402 (= lt!1232105 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!915 thiss!23823 rules!3307 lt!1232112 lt!1232109 (_2!21954 lt!1232118) (rule!8294 (_1!21954 lt!1232118))))))

(declare-fun e!2222175 () Bool)

(declare-fun b!3591403 () Bool)

(declare-fun tp!1099240 () Bool)

(assert (=> b!3591403 (= e!2222175 (and tp!1099240 (inv!51090 (tag!6250 (rule!8294 token!511))) (inv!51094 (transformation!5576 (rule!8294 token!511))) e!2222168))))

(declare-fun b!3591404 () Bool)

(declare-fun res!1449984 () Bool)

(assert (=> b!3591404 (=> res!1449984 e!2222184)))

(declare-fun matchR!4904 (Regex!10335 List!37876) Bool)

(assert (=> b!3591404 (= res!1449984 (not (matchR!4904 (regex!5576 (rule!8294 (_1!21954 lt!1232118))) lt!1232112)))))

(declare-fun b!3591405 () Bool)

(declare-fun res!1449992 () Bool)

(declare-fun e!2222181 () Bool)

(assert (=> b!3591405 (=> res!1449992 e!2222181)))

(declare-fun lt!1232106 () C!20856)

(declare-fun contains!7215 (List!37876 C!20856) Bool)

(declare-fun usedCharacters!790 (Regex!10335) List!37876)

(assert (=> b!3591405 (= res!1449992 (not (contains!7215 (usedCharacters!790 (regex!5576 anOtherTypeRule!33)) lt!1232106)))))

(assert (=> b!3591406 (= e!2222182 (and tp!1099235 tp!1099234))))

(declare-fun b!3591407 () Bool)

(declare-fun tp!1099242 () Bool)

(declare-fun inv!21 (TokenValue!5806) Bool)

(assert (=> b!3591407 (= e!2222190 (and (inv!21 (value!179376 token!511)) e!2222175 tp!1099242))))

(declare-fun b!3591408 () Bool)

(assert (=> b!3591408 (= e!2222174 e!2222173)))

(declare-fun res!1449979 () Bool)

(assert (=> b!3591408 (=> (not res!1449979) (not e!2222173))))

(assert (=> b!3591408 (= res!1449979 (= (_1!21954 lt!1232113) token!511))))

(declare-fun get!12180 (Option!7782) tuple2!37640)

(assert (=> b!3591408 (= lt!1232113 (get!12180 lt!1232117))))

(declare-fun b!3591409 () Bool)

(declare-fun tp_is_empty!17753 () Bool)

(declare-fun tp!1099243 () Bool)

(assert (=> b!3591409 (= e!2222192 (and tp_is_empty!17753 tp!1099243))))

(declare-fun b!3591410 () Bool)

(declare-fun e!2222187 () Bool)

(assert (=> b!3591410 (= e!2222173 (not e!2222187))))

(declare-fun res!1449987 () Bool)

(assert (=> b!3591410 (=> res!1449987 e!2222187)))

(declare-fun rule!403 () Rule!10952)

(assert (=> b!3591410 (= res!1449987 (not (matchR!4904 (regex!5576 rule!403) lt!1232107)))))

(declare-fun ruleValid!1841 (LexerInterface!5165 Rule!10952) Bool)

(assert (=> b!3591410 (ruleValid!1841 thiss!23823 rule!403)))

(declare-fun lt!1232119 () Unit!53753)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!996 (LexerInterface!5165 Rule!10952 List!37877) Unit!53753)

(assert (=> b!3591410 (= lt!1232119 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!996 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2222188 () Bool)

(assert (=> b!3591411 (= e!2222188 (and tp!1099236 tp!1099233))))

(declare-fun b!3591412 () Bool)

(declare-fun res!1449983 () Bool)

(assert (=> b!3591412 (=> (not res!1449983) (not e!2222178))))

(declare-fun contains!7216 (List!37877 Rule!10952) Bool)

(assert (=> b!3591412 (= res!1449983 (contains!7216 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3591413 () Bool)

(declare-fun res!1449980 () Bool)

(assert (=> b!3591413 (=> res!1449980 e!2222187)))

(declare-fun suffix!1395 () List!37876)

(assert (=> b!3591413 (= res!1449980 (isEmpty!22250 suffix!1395))))

(declare-fun b!3591414 () Bool)

(declare-fun res!1449977 () Bool)

(assert (=> b!3591414 (=> (not res!1449977) (not e!2222178))))

(declare-fun isEmpty!22251 (List!37877) Bool)

(assert (=> b!3591414 (= res!1449977 (not (isEmpty!22251 rules!3307)))))

(declare-fun b!3591415 () Bool)

(assert (=> b!3591415 (= e!2222181 e!2222184)))

(declare-fun res!1449988 () Bool)

(assert (=> b!3591415 (=> res!1449988 e!2222184)))

(declare-fun isPrefix!2939 (List!37876 List!37876) Bool)

(assert (=> b!3591415 (= res!1449988 (not (isPrefix!2939 lt!1232112 lt!1232109)))))

(declare-fun ++!9392 (List!37876 List!37876) List!37876)

(assert (=> b!3591415 (isPrefix!2939 lt!1232112 (++!9392 lt!1232112 (_2!21954 lt!1232118)))))

(declare-fun lt!1232102 () Unit!53753)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1860 (List!37876 List!37876) Unit!53753)

(assert (=> b!3591415 (= lt!1232102 (lemmaConcatTwoListThenFirstIsPrefix!1860 lt!1232112 (_2!21954 lt!1232118)))))

(assert (=> b!3591415 (= lt!1232112 (list!13888 lt!1232114))))

(assert (=> b!3591415 (= lt!1232114 (charsOf!3590 (_1!21954 lt!1232118)))))

(declare-fun e!2222191 () Bool)

(assert (=> b!3591415 e!2222191))

(declare-fun res!1449976 () Bool)

(assert (=> b!3591415 (=> (not res!1449976) (not e!2222191))))

(declare-datatypes ((Option!7783 0))(
  ( (None!7782) (Some!7782 (v!37460 Rule!10952)) )
))
(declare-fun lt!1232100 () Option!7783)

(declare-fun isDefined!6015 (Option!7783) Bool)

(assert (=> b!3591415 (= res!1449976 (isDefined!6015 lt!1232100))))

(declare-fun getRuleFromTag!1182 (LexerInterface!5165 List!37877 String!42364) Option!7783)

(assert (=> b!3591415 (= lt!1232100 (getRuleFromTag!1182 thiss!23823 rules!3307 (tag!6250 (rule!8294 (_1!21954 lt!1232118)))))))

(declare-fun lt!1232116 () Unit!53753)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1182 (LexerInterface!5165 List!37877 List!37876 Token!10518) Unit!53753)

(assert (=> b!3591415 (= lt!1232116 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1182 thiss!23823 rules!3307 lt!1232109 (_1!21954 lt!1232118)))))

(assert (=> b!3591415 (= lt!1232118 (get!12180 lt!1232120))))

(declare-fun lt!1232101 () Unit!53753)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!845 (LexerInterface!5165 List!37877 List!37876 List!37876) Unit!53753)

(assert (=> b!3591415 (= lt!1232101 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!845 thiss!23823 rules!3307 lt!1232107 suffix!1395))))

(assert (=> b!3591415 (= lt!1232120 (maxPrefix!2699 thiss!23823 rules!3307 lt!1232109))))

(assert (=> b!3591415 (isPrefix!2939 lt!1232107 lt!1232109)))

(declare-fun lt!1232104 () Unit!53753)

(assert (=> b!3591415 (= lt!1232104 (lemmaConcatTwoListThenFirstIsPrefix!1860 lt!1232107 suffix!1395))))

(assert (=> b!3591415 (= lt!1232109 (++!9392 lt!1232107 suffix!1395))))

(declare-fun b!3591416 () Bool)

(declare-fun res!1449982 () Bool)

(assert (=> b!3591416 (=> (not res!1449982) (not e!2222178))))

(assert (=> b!3591416 (= res!1449982 (not (= (isSeparator!5576 anOtherTypeRule!33) (isSeparator!5576 rule!403))))))

(declare-fun b!3591417 () Bool)

(declare-fun res!1449990 () Bool)

(assert (=> b!3591417 (=> (not res!1449990) (not e!2222178))))

(assert (=> b!3591417 (= res!1449990 (contains!7216 rules!3307 rule!403))))

(declare-fun b!3591418 () Bool)

(declare-fun res!1449986 () Bool)

(assert (=> b!3591418 (=> res!1449986 e!2222181)))

(declare-fun sepAndNonSepRulesDisjointChars!1746 (List!37877 List!37877) Bool)

(assert (=> b!3591418 (= res!1449986 (not (sepAndNonSepRulesDisjointChars!1746 rules!3307 rules!3307)))))

(declare-fun b!3591419 () Bool)

(assert (=> b!3591419 (= e!2222187 e!2222181)))

(declare-fun res!1449991 () Bool)

(assert (=> b!3591419 (=> res!1449991 e!2222181)))

(assert (=> b!3591419 (= res!1449991 (contains!7215 (usedCharacters!790 (regex!5576 rule!403)) lt!1232106))))

(declare-fun head!7502 (List!37876) C!20856)

(assert (=> b!3591419 (= lt!1232106 (head!7502 suffix!1395))))

(declare-fun b!3591420 () Bool)

(assert (=> b!3591420 (= e!2222191 e!2222172)))

(declare-fun res!1449978 () Bool)

(assert (=> b!3591420 (=> (not res!1449978) (not e!2222172))))

(assert (=> b!3591420 (= res!1449978 (matchR!4904 (regex!5576 lt!1232108) (list!13888 (charsOf!3590 (_1!21954 lt!1232118)))))))

(declare-fun get!12181 (Option!7783) Rule!10952)

(assert (=> b!3591420 (= lt!1232108 (get!12181 lt!1232100))))

(declare-fun b!3591421 () Bool)

(declare-fun tp!1099238 () Bool)

(assert (=> b!3591421 (= e!2222189 (and tp!1099238 (inv!51090 (tag!6250 rule!403)) (inv!51094 (transformation!5576 rule!403)) e!2222188))))

(declare-fun b!3591422 () Bool)

(declare-fun res!1449981 () Bool)

(assert (=> b!3591422 (=> (not res!1449981) (not e!2222173))))

(assert (=> b!3591422 (= res!1449981 (= (rule!8294 token!511) rule!403))))

(assert (= (and start!333354 res!1449989) b!3591414))

(assert (= (and b!3591414 res!1449977) b!3591398))

(assert (= (and b!3591398 res!1449975) b!3591417))

(assert (= (and b!3591417 res!1449990) b!3591412))

(assert (= (and b!3591412 res!1449983) b!3591416))

(assert (= (and b!3591416 res!1449982) b!3591392))

(assert (= (and b!3591392 res!1449974) b!3591408))

(assert (= (and b!3591408 res!1449979) b!3591401))

(assert (= (and b!3591401 res!1449985) b!3591422))

(assert (= (and b!3591422 res!1449981) b!3591410))

(assert (= (and b!3591410 (not res!1449987)) b!3591413))

(assert (= (and b!3591413 (not res!1449980)) b!3591419))

(assert (= (and b!3591419 (not res!1449991)) b!3591405))

(assert (= (and b!3591405 (not res!1449992)) b!3591418))

(assert (= (and b!3591418 (not res!1449986)) b!3591415))

(assert (= (and b!3591415 res!1449976) b!3591420))

(assert (= (and b!3591420 res!1449978) b!3591393))

(assert (= (and b!3591415 (not res!1449988)) b!3591404))

(assert (= (and b!3591404 (not res!1449984)) b!3591400))

(assert (= (and b!3591400 (not res!1449973)) b!3591402))

(assert (= b!3591397 b!3591399))

(assert (= b!3591394 b!3591397))

(assert (= (and start!333354 ((_ is Cons!37753) rules!3307)) b!3591394))

(assert (= (and start!333354 ((_ is Cons!37752) suffix!1395)) b!3591409))

(assert (= b!3591403 b!3591395))

(assert (= b!3591407 b!3591403))

(assert (= start!333354 b!3591407))

(assert (= b!3591421 b!3591411))

(assert (= start!333354 b!3591421))

(assert (= b!3591396 b!3591406))

(assert (= start!333354 b!3591396))

(declare-fun m!4085503 () Bool)

(assert (=> b!3591414 m!4085503))

(declare-fun m!4085505 () Bool)

(assert (=> b!3591420 m!4085505))

(assert (=> b!3591420 m!4085505))

(declare-fun m!4085507 () Bool)

(assert (=> b!3591420 m!4085507))

(assert (=> b!3591420 m!4085507))

(declare-fun m!4085509 () Bool)

(assert (=> b!3591420 m!4085509))

(declare-fun m!4085511 () Bool)

(assert (=> b!3591420 m!4085511))

(declare-fun m!4085513 () Bool)

(assert (=> b!3591421 m!4085513))

(declare-fun m!4085515 () Bool)

(assert (=> b!3591421 m!4085515))

(declare-fun m!4085517 () Bool)

(assert (=> b!3591404 m!4085517))

(declare-fun m!4085519 () Bool)

(assert (=> b!3591405 m!4085519))

(assert (=> b!3591405 m!4085519))

(declare-fun m!4085521 () Bool)

(assert (=> b!3591405 m!4085521))

(declare-fun m!4085523 () Bool)

(assert (=> b!3591400 m!4085523))

(declare-fun m!4085525 () Bool)

(assert (=> b!3591400 m!4085525))

(declare-fun m!4085527 () Bool)

(assert (=> b!3591400 m!4085527))

(declare-fun m!4085529 () Bool)

(assert (=> b!3591400 m!4085529))

(declare-fun m!4085531 () Bool)

(assert (=> b!3591400 m!4085531))

(declare-fun m!4085533 () Bool)

(assert (=> b!3591400 m!4085533))

(assert (=> b!3591400 m!4085531))

(declare-fun m!4085535 () Bool)

(assert (=> b!3591408 m!4085535))

(declare-fun m!4085537 () Bool)

(assert (=> b!3591413 m!4085537))

(declare-fun m!4085539 () Bool)

(assert (=> b!3591392 m!4085539))

(declare-fun m!4085541 () Bool)

(assert (=> b!3591392 m!4085541))

(declare-fun m!4085543 () Bool)

(assert (=> b!3591392 m!4085543))

(assert (=> b!3591392 m!4085543))

(declare-fun m!4085545 () Bool)

(assert (=> b!3591392 m!4085545))

(declare-fun m!4085547 () Bool)

(assert (=> b!3591397 m!4085547))

(declare-fun m!4085549 () Bool)

(assert (=> b!3591397 m!4085549))

(declare-fun m!4085551 () Bool)

(assert (=> b!3591398 m!4085551))

(declare-fun m!4085553 () Bool)

(assert (=> b!3591412 m!4085553))

(declare-fun m!4085555 () Bool)

(assert (=> b!3591410 m!4085555))

(declare-fun m!4085557 () Bool)

(assert (=> b!3591410 m!4085557))

(declare-fun m!4085559 () Bool)

(assert (=> b!3591410 m!4085559))

(declare-fun m!4085561 () Bool)

(assert (=> b!3591417 m!4085561))

(declare-fun m!4085563 () Bool)

(assert (=> b!3591396 m!4085563))

(declare-fun m!4085565 () Bool)

(assert (=> b!3591396 m!4085565))

(declare-fun m!4085567 () Bool)

(assert (=> b!3591402 m!4085567))

(declare-fun m!4085569 () Bool)

(assert (=> b!3591402 m!4085569))

(declare-fun m!4085571 () Bool)

(assert (=> b!3591402 m!4085571))

(assert (=> b!3591402 m!4085567))

(declare-fun m!4085573 () Bool)

(assert (=> b!3591402 m!4085573))

(declare-fun m!4085575 () Bool)

(assert (=> b!3591402 m!4085575))

(declare-fun m!4085577 () Bool)

(assert (=> b!3591402 m!4085577))

(declare-fun m!4085579 () Bool)

(assert (=> b!3591419 m!4085579))

(assert (=> b!3591419 m!4085579))

(declare-fun m!4085581 () Bool)

(assert (=> b!3591419 m!4085581))

(declare-fun m!4085583 () Bool)

(assert (=> b!3591419 m!4085583))

(declare-fun m!4085585 () Bool)

(assert (=> b!3591403 m!4085585))

(declare-fun m!4085587 () Bool)

(assert (=> b!3591403 m!4085587))

(declare-fun m!4085589 () Bool)

(assert (=> b!3591415 m!4085589))

(declare-fun m!4085591 () Bool)

(assert (=> b!3591415 m!4085591))

(declare-fun m!4085593 () Bool)

(assert (=> b!3591415 m!4085593))

(assert (=> b!3591415 m!4085505))

(declare-fun m!4085595 () Bool)

(assert (=> b!3591415 m!4085595))

(declare-fun m!4085597 () Bool)

(assert (=> b!3591415 m!4085597))

(declare-fun m!4085599 () Bool)

(assert (=> b!3591415 m!4085599))

(declare-fun m!4085601 () Bool)

(assert (=> b!3591415 m!4085601))

(declare-fun m!4085603 () Bool)

(assert (=> b!3591415 m!4085603))

(declare-fun m!4085605 () Bool)

(assert (=> b!3591415 m!4085605))

(declare-fun m!4085607 () Bool)

(assert (=> b!3591415 m!4085607))

(declare-fun m!4085609 () Bool)

(assert (=> b!3591415 m!4085609))

(declare-fun m!4085611 () Bool)

(assert (=> b!3591415 m!4085611))

(declare-fun m!4085613 () Bool)

(assert (=> b!3591415 m!4085613))

(assert (=> b!3591415 m!4085593))

(declare-fun m!4085615 () Bool)

(assert (=> b!3591415 m!4085615))

(declare-fun m!4085617 () Bool)

(assert (=> start!333354 m!4085617))

(declare-fun m!4085619 () Bool)

(assert (=> b!3591407 m!4085619))

(declare-fun m!4085621 () Bool)

(assert (=> b!3591401 m!4085621))

(declare-fun m!4085623 () Bool)

(assert (=> b!3591418 m!4085623))

(check-sat (not b!3591402) (not b!3591405) (not b!3591400) b_and!259801 (not b!3591413) (not b!3591407) (not b!3591419) b_and!259793 (not b!3591414) (not b!3591398) (not b_next!93327) (not start!333354) (not b_next!93325) (not b_next!93323) (not b!3591421) tp_is_empty!17753 (not b!3591410) (not b!3591404) b_and!259791 b_and!259789 b_and!259799 b_and!259787 (not b!3591392) (not b!3591417) (not b!3591409) b_and!259795 (not b!3591396) (not b!3591394) (not b!3591418) (not b!3591415) (not b_next!93333) (not b!3591401) (not b!3591403) (not b_next!93321) (not b!3591412) (not b!3591408) (not b!3591420) (not b_next!93329) (not b_next!93331) (not b!3591397) b_and!259797 (not b_next!93335))
(check-sat (not b_next!93327) b_and!259791 b_and!259795 (not b_next!93333) b_and!259801 (not b_next!93321) (not b_next!93329) b_and!259793 (not b_next!93325) (not b_next!93323) b_and!259789 b_and!259799 b_and!259787 (not b_next!93331) b_and!259797 (not b_next!93335))
