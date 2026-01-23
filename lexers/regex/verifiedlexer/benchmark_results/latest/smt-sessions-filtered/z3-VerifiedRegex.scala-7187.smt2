; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383004 () Bool)

(assert start!383004)

(declare-fun b!4060875 () Bool)

(declare-fun b_free!112961 () Bool)

(declare-fun b_next!113665 () Bool)

(assert (=> b!4060875 (= b_free!112961 (not b_next!113665))))

(declare-fun tp!1230063 () Bool)

(declare-fun b_and!312243 () Bool)

(assert (=> b!4060875 (= tp!1230063 b_and!312243)))

(declare-fun b_free!112963 () Bool)

(declare-fun b_next!113667 () Bool)

(assert (=> b!4060875 (= b_free!112963 (not b_next!113667))))

(declare-fun tp!1230072 () Bool)

(declare-fun b_and!312245 () Bool)

(assert (=> b!4060875 (= tp!1230072 b_and!312245)))

(declare-fun b!4060852 () Bool)

(declare-fun b_free!112965 () Bool)

(declare-fun b_next!113669 () Bool)

(assert (=> b!4060852 (= b_free!112965 (not b_next!113669))))

(declare-fun tp!1230069 () Bool)

(declare-fun b_and!312247 () Bool)

(assert (=> b!4060852 (= tp!1230069 b_and!312247)))

(declare-fun b_free!112967 () Bool)

(declare-fun b_next!113671 () Bool)

(assert (=> b!4060852 (= b_free!112967 (not b_next!113671))))

(declare-fun tp!1230062 () Bool)

(declare-fun b_and!312249 () Bool)

(assert (=> b!4060852 (= tp!1230062 b_and!312249)))

(declare-fun e!2519907 () Bool)

(declare-fun tp!1230066 () Bool)

(declare-datatypes ((C!23920 0))(
  ( (C!23921 (val!14054 Int)) )
))
(declare-datatypes ((List!43505 0))(
  ( (Nil!43381) (Cons!43381 (h!48801 C!23920) (t!336616 List!43505)) )
))
(declare-datatypes ((IArray!26351 0))(
  ( (IArray!26352 (innerList!13233 List!43505)) )
))
(declare-datatypes ((Conc!13173 0))(
  ( (Node!13173 (left!32648 Conc!13173) (right!32978 Conc!13173) (csize!26576 Int) (cheight!13384 Int)) (Leaf!20361 (xs!16479 IArray!26351) (csize!26577 Int)) (Empty!13173) )
))
(declare-datatypes ((BalanceConc!25940 0))(
  ( (BalanceConc!25941 (c!701384 Conc!13173)) )
))
(declare-datatypes ((List!43506 0))(
  ( (Nil!43382) (Cons!43382 (h!48802 (_ BitVec 16)) (t!336617 List!43506)) )
))
(declare-datatypes ((TokenValue!7192 0))(
  ( (FloatLiteralValue!14384 (text!50789 List!43506)) (TokenValueExt!7191 (__x!26601 Int)) (Broken!35960 (value!219025 List!43506)) (Object!7315) (End!7192) (Def!7192) (Underscore!7192) (Match!7192) (Else!7192) (Error!7192) (Case!7192) (If!7192) (Extends!7192) (Abstract!7192) (Class!7192) (Val!7192) (DelimiterValue!14384 (del!7252 List!43506)) (KeywordValue!7198 (value!219026 List!43506)) (CommentValue!14384 (value!219027 List!43506)) (WhitespaceValue!14384 (value!219028 List!43506)) (IndentationValue!7192 (value!219029 List!43506)) (String!49677) (Int32!7192) (Broken!35961 (value!219030 List!43506)) (Boolean!7193) (Unit!62792) (OperatorValue!7195 (op!7252 List!43506)) (IdentifierValue!14384 (value!219031 List!43506)) (IdentifierValue!14385 (value!219032 List!43506)) (WhitespaceValue!14385 (value!219033 List!43506)) (True!14384) (False!14384) (Broken!35962 (value!219034 List!43506)) (Broken!35963 (value!219035 List!43506)) (True!14385) (RightBrace!7192) (RightBracket!7192) (Colon!7192) (Null!7192) (Comma!7192) (LeftBracket!7192) (False!14385) (LeftBrace!7192) (ImaginaryLiteralValue!7192 (text!50790 List!43506)) (StringLiteralValue!21576 (value!219036 List!43506)) (EOFValue!7192 (value!219037 List!43506)) (IdentValue!7192 (value!219038 List!43506)) (DelimiterValue!14385 (value!219039 List!43506)) (DedentValue!7192 (value!219040 List!43506)) (NewLineValue!7192 (value!219041 List!43506)) (IntegerValue!21576 (value!219042 (_ BitVec 32)) (text!50791 List!43506)) (IntegerValue!21577 (value!219043 Int) (text!50792 List!43506)) (Times!7192) (Or!7192) (Equal!7192) (Minus!7192) (Broken!35964 (value!219044 List!43506)) (And!7192) (Div!7192) (LessEqual!7192) (Mod!7192) (Concat!19059) (Not!7192) (Plus!7192) (SpaceValue!7192 (value!219045 List!43506)) (IntegerValue!21578 (value!219046 Int) (text!50793 List!43506)) (StringLiteralValue!21577 (text!50794 List!43506)) (FloatLiteralValue!14385 (text!50795 List!43506)) (BytesLiteralValue!7192 (value!219047 List!43506)) (CommentValue!14385 (value!219048 List!43506)) (StringLiteralValue!21578 (value!219049 List!43506)) (ErrorTokenValue!7192 (msg!7253 List!43506)) )
))
(declare-datatypes ((Regex!11867 0))(
  ( (ElementMatch!11867 (c!701385 C!23920)) (Concat!19060 (regOne!24246 Regex!11867) (regTwo!24246 Regex!11867)) (EmptyExpr!11867) (Star!11867 (reg!12196 Regex!11867)) (EmptyLang!11867) (Union!11867 (regOne!24247 Regex!11867) (regTwo!24247 Regex!11867)) )
))
(declare-datatypes ((String!49678 0))(
  ( (String!49679 (value!219050 String)) )
))
(declare-datatypes ((TokenValueInjection!13812 0))(
  ( (TokenValueInjection!13813 (toValue!9522 Int) (toChars!9381 Int)) )
))
(declare-datatypes ((Rule!13724 0))(
  ( (Rule!13725 (regex!6962 Regex!11867) (tag!7822 String!49678) (isSeparator!6962 Bool) (transformation!6962 TokenValueInjection!13812)) )
))
(declare-datatypes ((List!43507 0))(
  ( (Nil!43383) (Cons!43383 (h!48803 Rule!13724) (t!336618 List!43507)) )
))
(declare-fun rules!2999 () List!43507)

(declare-fun b!4060838 () Bool)

(declare-fun e!2519905 () Bool)

(declare-fun inv!57994 (String!49678) Bool)

(declare-fun inv!57997 (TokenValueInjection!13812) Bool)

(assert (=> b!4060838 (= e!2519907 (and tp!1230066 (inv!57994 (tag!7822 (h!48803 rules!2999))) (inv!57997 (transformation!6962 (h!48803 rules!2999))) e!2519905))))

(declare-fun b!4060839 () Bool)

(declare-fun e!2519915 () Bool)

(declare-fun e!2519886 () Bool)

(assert (=> b!4060839 (= e!2519915 e!2519886)))

(declare-fun res!1656308 () Bool)

(assert (=> b!4060839 (=> (not res!1656308) (not e!2519886))))

(declare-fun lt!1450560 () Int)

(declare-fun lt!1450571 () Int)

(assert (=> b!4060839 (= res!1656308 (>= lt!1450560 lt!1450571))))

(declare-fun lt!1450593 () List!43505)

(declare-fun size!32435 (List!43505) Int)

(assert (=> b!4060839 (= lt!1450571 (size!32435 lt!1450593))))

(declare-fun prefix!494 () List!43505)

(assert (=> b!4060839 (= lt!1450560 (size!32435 prefix!494))))

(declare-datatypes ((Token!13062 0))(
  ( (Token!13063 (value!219051 TokenValue!7192) (rule!10054 Rule!13724) (size!32436 Int) (originalCharacters!7562 List!43505)) )
))
(declare-fun token!484 () Token!13062)

(declare-fun list!16170 (BalanceConc!25940) List!43505)

(declare-fun charsOf!4778 (Token!13062) BalanceConc!25940)

(assert (=> b!4060839 (= lt!1450593 (list!16170 (charsOf!4778 token!484)))))

(declare-fun b!4060840 () Bool)

(declare-fun e!2519912 () Bool)

(assert (=> b!4060840 (= e!2519912 false)))

(declare-fun b!4060841 () Bool)

(declare-datatypes ((Unit!62793 0))(
  ( (Unit!62794) )
))
(declare-fun e!2519910 () Unit!62793)

(declare-fun Unit!62795 () Unit!62793)

(assert (=> b!4060841 (= e!2519910 Unit!62795)))

(declare-fun b!4060842 () Bool)

(declare-fun res!1656304 () Bool)

(assert (=> b!4060842 (=> (not res!1656304) (not e!2519915))))

(declare-fun newSuffix!27 () List!43505)

(declare-fun suffix!1299 () List!43505)

(declare-fun isPrefix!4049 (List!43505 List!43505) Bool)

(assert (=> b!4060842 (= res!1656304 (isPrefix!4049 newSuffix!27 suffix!1299))))

(declare-fun b!4060843 () Bool)

(declare-fun e!2519899 () Bool)

(declare-fun e!2519895 () Bool)

(assert (=> b!4060843 (= e!2519899 e!2519895)))

(declare-fun res!1656307 () Bool)

(assert (=> b!4060843 (=> (not res!1656307) (not e!2519895))))

(declare-fun lt!1450566 () List!43505)

(declare-datatypes ((LexerInterface!6551 0))(
  ( (LexerInterfaceExt!6548 (__x!26602 Int)) (Lexer!6549) )
))
(declare-fun thiss!21717 () LexerInterface!6551)

(declare-datatypes ((tuple2!42442 0))(
  ( (tuple2!42443 (_1!24355 Token!13062) (_2!24355 List!43505)) )
))
(declare-datatypes ((Option!9376 0))(
  ( (None!9375) (Some!9375 (v!39795 tuple2!42442)) )
))
(declare-fun lt!1450607 () Option!9376)

(declare-fun maxPrefix!3849 (LexerInterface!6551 List!43507 List!43505) Option!9376)

(assert (=> b!4060843 (= res!1656307 (= (maxPrefix!3849 thiss!21717 rules!2999 lt!1450566) lt!1450607))))

(declare-fun lt!1450580 () tuple2!42442)

(assert (=> b!4060843 (= lt!1450607 (Some!9375 lt!1450580))))

(declare-fun suffixResult!105 () List!43505)

(assert (=> b!4060843 (= lt!1450580 (tuple2!42443 token!484 suffixResult!105))))

(declare-fun ++!11364 (List!43505 List!43505) List!43505)

(assert (=> b!4060843 (= lt!1450566 (++!11364 prefix!494 suffix!1299))))

(declare-fun b!4060844 () Bool)

(declare-fun e!2519893 () Bool)

(declare-fun e!2519911 () Bool)

(assert (=> b!4060844 (= e!2519893 e!2519911)))

(declare-fun res!1656297 () Bool)

(assert (=> b!4060844 (=> res!1656297 e!2519911)))

(declare-fun lt!1450581 () List!43505)

(assert (=> b!4060844 (= res!1656297 (not (isPrefix!4049 lt!1450581 lt!1450566)))))

(declare-fun lt!1450585 () List!43505)

(assert (=> b!4060844 (isPrefix!4049 lt!1450581 lt!1450585)))

(declare-fun lt!1450546 () List!43505)

(declare-fun lt!1450595 () List!43505)

(declare-fun lt!1450575 () Unit!62793)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!842 (List!43505 List!43505 List!43505) Unit!62793)

(assert (=> b!4060844 (= lt!1450575 (lemmaPrefixStaysPrefixWhenAddingToSuffix!842 lt!1450581 lt!1450595 lt!1450546))))

(declare-fun b!4060846 () Bool)

(declare-fun e!2519918 () Bool)

(declare-fun e!2519896 () Bool)

(assert (=> b!4060846 (= e!2519918 e!2519896)))

(declare-fun res!1656292 () Bool)

(assert (=> b!4060846 (=> res!1656292 e!2519896)))

(assert (=> b!4060846 (= res!1656292 (not (isPrefix!4049 lt!1450593 lt!1450566)))))

(assert (=> b!4060846 (isPrefix!4049 prefix!494 lt!1450566)))

(declare-fun lt!1450562 () Unit!62793)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2884 (List!43505 List!43505) Unit!62793)

(assert (=> b!4060846 (= lt!1450562 (lemmaConcatTwoListThenFirstIsPrefix!2884 prefix!494 suffix!1299))))

(declare-fun lt!1450600 () List!43505)

(assert (=> b!4060846 (isPrefix!4049 lt!1450593 lt!1450600)))

(declare-fun lt!1450597 () Unit!62793)

(assert (=> b!4060846 (= lt!1450597 (lemmaConcatTwoListThenFirstIsPrefix!2884 lt!1450593 suffixResult!105))))

(declare-fun b!4060847 () Bool)

(declare-fun res!1656301 () Bool)

(declare-fun e!2519883 () Bool)

(assert (=> b!4060847 (=> (not res!1656301) (not e!2519883))))

(assert (=> b!4060847 (= res!1656301 (= (size!32436 token!484) (size!32435 (originalCharacters!7562 token!484))))))

(declare-fun b!4060848 () Bool)

(declare-fun e!2519900 () Bool)

(declare-fun e!2519902 () Bool)

(assert (=> b!4060848 (= e!2519900 e!2519902)))

(declare-fun res!1656287 () Bool)

(assert (=> b!4060848 (=> res!1656287 e!2519902)))

(declare-fun lt!1450564 () Option!9376)

(declare-fun lt!1450590 () Option!9376)

(assert (=> b!4060848 (= res!1656287 (not (= lt!1450564 (Some!9375 (v!39795 lt!1450590)))))))

(declare-fun newSuffixResult!27 () List!43505)

(assert (=> b!4060848 (isPrefix!4049 lt!1450581 (++!11364 lt!1450581 newSuffixResult!27))))

(declare-fun lt!1450598 () Unit!62793)

(assert (=> b!4060848 (= lt!1450598 (lemmaConcatTwoListThenFirstIsPrefix!2884 lt!1450581 newSuffixResult!27))))

(declare-fun lt!1450549 () List!43505)

(assert (=> b!4060848 (isPrefix!4049 lt!1450581 lt!1450549)))

(assert (=> b!4060848 (= lt!1450549 (++!11364 lt!1450581 (_2!24355 (v!39795 lt!1450590))))))

(declare-fun lt!1450572 () Unit!62793)

(assert (=> b!4060848 (= lt!1450572 (lemmaConcatTwoListThenFirstIsPrefix!2884 lt!1450581 (_2!24355 (v!39795 lt!1450590))))))

(declare-fun lt!1450573 () Int)

(declare-fun lt!1450576 () TokenValue!7192)

(assert (=> b!4060848 (= lt!1450564 (Some!9375 (tuple2!42443 (Token!13063 lt!1450576 (rule!10054 (_1!24355 (v!39795 lt!1450590))) lt!1450573 lt!1450581) (_2!24355 (v!39795 lt!1450590)))))))

(declare-fun maxPrefixOneRule!2861 (LexerInterface!6551 Rule!13724 List!43505) Option!9376)

(assert (=> b!4060848 (= lt!1450564 (maxPrefixOneRule!2861 thiss!21717 (rule!10054 (_1!24355 (v!39795 lt!1450590))) lt!1450595))))

(assert (=> b!4060848 (= lt!1450573 (size!32435 lt!1450581))))

(declare-fun apply!10151 (TokenValueInjection!13812 BalanceConc!25940) TokenValue!7192)

(declare-fun seqFromList!5179 (List!43505) BalanceConc!25940)

(assert (=> b!4060848 (= lt!1450576 (apply!10151 (transformation!6962 (rule!10054 (_1!24355 (v!39795 lt!1450590)))) (seqFromList!5179 lt!1450581)))))

(declare-fun lt!1450568 () Unit!62793)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1667 (LexerInterface!6551 List!43507 List!43505 List!43505 List!43505 Rule!13724) Unit!62793)

(assert (=> b!4060848 (= lt!1450568 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1667 thiss!21717 rules!2999 lt!1450581 lt!1450595 (_2!24355 (v!39795 lt!1450590)) (rule!10054 (_1!24355 (v!39795 lt!1450590)))))))

(assert (=> b!4060848 (= lt!1450581 (list!16170 (charsOf!4778 (_1!24355 (v!39795 lt!1450590)))))))

(declare-fun lt!1450553 () Unit!62793)

(declare-fun lemmaInv!1171 (TokenValueInjection!13812) Unit!62793)

(assert (=> b!4060848 (= lt!1450553 (lemmaInv!1171 (transformation!6962 (rule!10054 (_1!24355 (v!39795 lt!1450590))))))))

(declare-fun ruleValid!2892 (LexerInterface!6551 Rule!13724) Bool)

(assert (=> b!4060848 (ruleValid!2892 thiss!21717 (rule!10054 (_1!24355 (v!39795 lt!1450590))))))

(declare-fun lt!1450588 () Unit!62793)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1962 (LexerInterface!6551 Rule!13724 List!43507) Unit!62793)

(assert (=> b!4060848 (= lt!1450588 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1962 thiss!21717 (rule!10054 (_1!24355 (v!39795 lt!1450590))) rules!2999))))

(declare-fun lt!1450594 () Unit!62793)

(declare-fun lemmaCharactersSize!1481 (Token!13062) Unit!62793)

(assert (=> b!4060848 (= lt!1450594 (lemmaCharactersSize!1481 token!484))))

(declare-fun lt!1450577 () Unit!62793)

(assert (=> b!4060848 (= lt!1450577 (lemmaCharactersSize!1481 (_1!24355 (v!39795 lt!1450590))))))

(declare-fun b!4060849 () Bool)

(declare-fun e!2519909 () Unit!62793)

(declare-fun Unit!62796 () Unit!62793)

(assert (=> b!4060849 (= e!2519909 Unit!62796)))

(declare-fun b!4060850 () Bool)

(declare-fun res!1656298 () Bool)

(assert (=> b!4060850 (=> (not res!1656298) (not e!2519915))))

(assert (=> b!4060850 (= res!1656298 (>= (size!32435 suffix!1299) (size!32435 newSuffix!27)))))

(declare-fun b!4060851 () Bool)

(declare-fun e!2519901 () Bool)

(declare-fun e!2519913 () Bool)

(assert (=> b!4060851 (= e!2519901 e!2519913)))

(declare-fun res!1656280 () Bool)

(assert (=> b!4060851 (=> res!1656280 e!2519913)))

(declare-fun matchR!5820 (Regex!11867 List!43505) Bool)

(assert (=> b!4060851 (= res!1656280 (not (matchR!5820 (regex!6962 (rule!10054 token!484)) lt!1450593)))))

(assert (=> b!4060851 (isPrefix!4049 lt!1450593 lt!1450595)))

(declare-fun lt!1450606 () Unit!62793)

(assert (=> b!4060851 (= lt!1450606 (lemmaPrefixStaysPrefixWhenAddingToSuffix!842 lt!1450593 prefix!494 newSuffix!27))))

(declare-fun lt!1450551 () Unit!62793)

(assert (=> b!4060851 (= lt!1450551 (lemmaPrefixStaysPrefixWhenAddingToSuffix!842 lt!1450593 prefix!494 suffix!1299))))

(assert (=> b!4060852 (= e!2519905 (and tp!1230069 tp!1230062))))

(declare-fun b!4060853 () Bool)

(declare-fun e!2519885 () Unit!62793)

(declare-fun Unit!62797 () Unit!62793)

(assert (=> b!4060853 (= e!2519885 Unit!62797)))

(declare-fun lt!1450569 () Unit!62793)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!488 (LexerInterface!6551 List!43507 Rule!13724 List!43505 List!43505 List!43505 Rule!13724) Unit!62793)

(assert (=> b!4060853 (= lt!1450569 (lemmaMaxPrefixOutputsMaxPrefix!488 thiss!21717 rules!2999 (rule!10054 token!484) lt!1450593 lt!1450566 lt!1450581 (rule!10054 (_1!24355 (v!39795 lt!1450590)))))))

(declare-fun res!1656302 () Bool)

(assert (=> b!4060853 (= res!1656302 (not (matchR!5820 (regex!6962 (rule!10054 (_1!24355 (v!39795 lt!1450590)))) lt!1450581)))))

(assert (=> b!4060853 (=> (not res!1656302) (not e!2519912))))

(assert (=> b!4060853 e!2519912))

(declare-fun b!4060854 () Bool)

(declare-fun e!2519914 () Bool)

(declare-fun tp_is_empty!20705 () Bool)

(declare-fun tp!1230061 () Bool)

(assert (=> b!4060854 (= e!2519914 (and tp_is_empty!20705 tp!1230061))))

(declare-fun b!4060855 () Bool)

(declare-fun e!2519884 () Bool)

(assert (=> b!4060855 (= e!2519902 e!2519884)))

(declare-fun res!1656295 () Bool)

(assert (=> b!4060855 (=> res!1656295 e!2519884)))

(declare-fun lt!1450543 () List!43505)

(assert (=> b!4060855 (= res!1656295 (not (= lt!1450543 suffix!1299)))))

(assert (=> b!4060855 (= lt!1450543 (++!11364 newSuffix!27 lt!1450546))))

(declare-fun getSuffix!2466 (List!43505 List!43505) List!43505)

(assert (=> b!4060855 (= lt!1450546 (getSuffix!2466 suffix!1299 newSuffix!27))))

(declare-fun b!4060856 () Bool)

(declare-fun e!2519892 () Bool)

(assert (=> b!4060856 (= e!2519892 e!2519901)))

(declare-fun res!1656294 () Bool)

(assert (=> b!4060856 (=> res!1656294 e!2519901)))

(declare-fun lt!1450542 () Option!9376)

(assert (=> b!4060856 (= res!1656294 (not (= lt!1450542 lt!1450607)))))

(declare-fun lt!1450587 () Token!13062)

(assert (=> b!4060856 (= lt!1450542 (Some!9375 (tuple2!42443 lt!1450587 suffixResult!105)))))

(assert (=> b!4060856 (= lt!1450542 (maxPrefixOneRule!2861 thiss!21717 (rule!10054 token!484) lt!1450566))))

(declare-fun lt!1450578 () TokenValue!7192)

(assert (=> b!4060856 (= lt!1450587 (Token!13063 lt!1450578 (rule!10054 token!484) lt!1450571 lt!1450593))))

(assert (=> b!4060856 (= lt!1450578 (apply!10151 (transformation!6962 (rule!10054 token!484)) (seqFromList!5179 lt!1450593)))))

(declare-fun lt!1450591 () Unit!62793)

(assert (=> b!4060856 (= lt!1450591 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1667 thiss!21717 rules!2999 lt!1450593 lt!1450566 suffixResult!105 (rule!10054 token!484)))))

(declare-fun lt!1450602 () List!43505)

(assert (=> b!4060856 (= lt!1450602 suffixResult!105)))

(declare-fun lt!1450599 () Unit!62793)

(declare-fun lemmaSamePrefixThenSameSuffix!2210 (List!43505 List!43505 List!43505 List!43505 List!43505) Unit!62793)

(assert (=> b!4060856 (= lt!1450599 (lemmaSamePrefixThenSameSuffix!2210 lt!1450593 lt!1450602 lt!1450593 suffixResult!105 lt!1450566))))

(declare-fun lt!1450583 () List!43505)

(assert (=> b!4060856 (isPrefix!4049 lt!1450593 lt!1450583)))

(declare-fun lt!1450555 () Unit!62793)

(assert (=> b!4060856 (= lt!1450555 (lemmaConcatTwoListThenFirstIsPrefix!2884 lt!1450593 lt!1450602))))

(declare-fun b!4060857 () Bool)

(declare-fun Unit!62798 () Unit!62793)

(assert (=> b!4060857 (= e!2519885 Unit!62798)))

(declare-fun b!4060858 () Bool)

(declare-fun e!2519898 () Bool)

(assert (=> b!4060858 (= e!2519898 true)))

(declare-fun lt!1450589 () Bool)

(assert (=> b!4060858 (= lt!1450589 (matchR!5820 (regex!6962 (rule!10054 (_1!24355 (v!39795 lt!1450590)))) lt!1450581))))

(declare-fun b!4060859 () Bool)

(assert (=> b!4060859 (= e!2519886 e!2519899)))

(declare-fun res!1656289 () Bool)

(assert (=> b!4060859 (=> (not res!1656289) (not e!2519899))))

(declare-fun lt!1450603 () List!43505)

(assert (=> b!4060859 (= res!1656289 (= lt!1450603 lt!1450595))))

(assert (=> b!4060859 (= lt!1450595 (++!11364 prefix!494 newSuffix!27))))

(assert (=> b!4060859 (= lt!1450603 (++!11364 lt!1450593 newSuffixResult!27))))

(declare-fun e!2519916 () Bool)

(declare-fun tp!1230064 () Bool)

(declare-fun e!2519897 () Bool)

(declare-fun b!4060860 () Bool)

(assert (=> b!4060860 (= e!2519916 (and tp!1230064 (inv!57994 (tag!7822 (rule!10054 token!484))) (inv!57997 (transformation!6962 (rule!10054 token!484))) e!2519897))))

(declare-fun b!4060861 () Bool)

(declare-fun res!1656299 () Bool)

(assert (=> b!4060861 (=> (not res!1656299) (not e!2519883))))

(assert (=> b!4060861 (= res!1656299 (= (value!219051 token!484) lt!1450578))))

(declare-fun b!4060862 () Bool)

(declare-fun res!1656296 () Bool)

(assert (=> b!4060862 (=> (not res!1656296) (not e!2519915))))

(declare-fun isEmpty!25887 (List!43507) Bool)

(assert (=> b!4060862 (= res!1656296 (not (isEmpty!25887 rules!2999)))))

(declare-fun b!4060863 () Bool)

(declare-fun e!2519887 () Bool)

(declare-fun tp!1230071 () Bool)

(assert (=> b!4060863 (= e!2519887 (and tp_is_empty!20705 tp!1230071))))

(declare-fun b!4060864 () Bool)

(assert (=> b!4060864 (= e!2519883 (and (= (size!32436 token!484) lt!1450571) (= (originalCharacters!7562 token!484) lt!1450593)))))

(declare-fun b!4060865 () Bool)

(declare-fun Unit!62799 () Unit!62793)

(assert (=> b!4060865 (= e!2519910 Unit!62799)))

(declare-fun lt!1450544 () Unit!62793)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!290 (LexerInterface!6551 List!43507 Rule!13724 List!43505 List!43505 Rule!13724) Unit!62793)

(assert (=> b!4060865 (= lt!1450544 (lemmaMaxPrefNoSmallerRuleMatches!290 thiss!21717 rules!2999 (rule!10054 token!484) lt!1450593 lt!1450566 (rule!10054 (_1!24355 (v!39795 lt!1450590)))))))

(declare-fun res!1656288 () Bool)

(assert (=> b!4060865 (= res!1656288 (not (matchR!5820 (regex!6962 (rule!10054 (_1!24355 (v!39795 lt!1450590)))) lt!1450593)))))

(declare-fun e!2519888 () Bool)

(assert (=> b!4060865 (=> (not res!1656288) (not e!2519888))))

(assert (=> b!4060865 e!2519888))

(declare-fun b!4060866 () Bool)

(assert (=> b!4060866 (= e!2519884 e!2519893)))

(declare-fun res!1656283 () Bool)

(assert (=> b!4060866 (=> res!1656283 e!2519893)))

(assert (=> b!4060866 (= res!1656283 (not (= lt!1450585 lt!1450566)))))

(assert (=> b!4060866 (= lt!1450585 (++!11364 prefix!494 lt!1450543))))

(assert (=> b!4060866 (= lt!1450585 (++!11364 lt!1450595 lt!1450546))))

(declare-fun lt!1450552 () Unit!62793)

(declare-fun lemmaConcatAssociativity!2666 (List!43505 List!43505 List!43505) Unit!62793)

(assert (=> b!4060866 (= lt!1450552 (lemmaConcatAssociativity!2666 prefix!494 newSuffix!27 lt!1450546))))

(declare-fun b!4060867 () Bool)

(declare-fun tp!1230070 () Bool)

(declare-fun e!2519917 () Bool)

(declare-fun inv!21 (TokenValue!7192) Bool)

(assert (=> b!4060867 (= e!2519917 (and (inv!21 (value!219051 token!484)) e!2519916 tp!1230070))))

(declare-fun b!4060868 () Bool)

(declare-fun e!2519894 () Bool)

(assert (=> b!4060868 (= e!2519913 e!2519894)))

(declare-fun res!1656281 () Bool)

(assert (=> b!4060868 (=> res!1656281 e!2519894)))

(declare-fun lt!1450582 () List!43505)

(assert (=> b!4060868 (= res!1656281 (not (= lt!1450582 lt!1450566)))))

(declare-fun lt!1450579 () List!43505)

(assert (=> b!4060868 (= lt!1450582 (++!11364 lt!1450593 lt!1450579))))

(assert (=> b!4060868 (= lt!1450579 (getSuffix!2466 lt!1450566 lt!1450593))))

(assert (=> b!4060868 e!2519883))

(declare-fun res!1656286 () Bool)

(assert (=> b!4060868 (=> (not res!1656286) (not e!2519883))))

(assert (=> b!4060868 (= res!1656286 (isPrefix!4049 lt!1450566 lt!1450566))))

(declare-fun lt!1450574 () Unit!62793)

(declare-fun lemmaIsPrefixRefl!2616 (List!43505 List!43505) Unit!62793)

(assert (=> b!4060868 (= lt!1450574 (lemmaIsPrefixRefl!2616 lt!1450566 lt!1450566))))

(declare-fun b!4060869 () Bool)

(declare-fun e!2519889 () Bool)

(declare-fun e!2519880 () Bool)

(assert (=> b!4060869 (= e!2519889 e!2519880)))

(declare-fun res!1656285 () Bool)

(assert (=> b!4060869 (=> res!1656285 e!2519880)))

(assert (=> b!4060869 (= res!1656285 (not (= lt!1450571 lt!1450573)))))

(declare-fun lt!1450570 () Unit!62793)

(assert (=> b!4060869 (= lt!1450570 e!2519909)))

(declare-fun c!701382 () Bool)

(assert (=> b!4060869 (= c!701382 (< lt!1450573 lt!1450571))))

(declare-fun lt!1450592 () Unit!62793)

(assert (=> b!4060869 (= lt!1450592 e!2519885)))

(declare-fun c!701383 () Bool)

(assert (=> b!4060869 (= c!701383 (> lt!1450573 lt!1450571))))

(declare-fun lt!1450556 () List!43505)

(assert (=> b!4060869 (= (_2!24355 (v!39795 lt!1450590)) lt!1450556)))

(declare-fun lt!1450554 () Unit!62793)

(assert (=> b!4060869 (= lt!1450554 (lemmaSamePrefixThenSameSuffix!2210 lt!1450581 (_2!24355 (v!39795 lt!1450590)) lt!1450581 lt!1450556 lt!1450595))))

(declare-fun lt!1450557 () List!43505)

(assert (=> b!4060869 (isPrefix!4049 lt!1450581 lt!1450557)))

(declare-fun lt!1450547 () Unit!62793)

(assert (=> b!4060869 (= lt!1450547 (lemmaConcatTwoListThenFirstIsPrefix!2884 lt!1450581 lt!1450556))))

(declare-fun b!4060870 () Bool)

(declare-fun e!2519882 () Bool)

(declare-fun tp!1230065 () Bool)

(assert (=> b!4060870 (= e!2519882 (and tp_is_empty!20705 tp!1230065))))

(declare-fun b!4060871 () Bool)

(assert (=> b!4060871 (= e!2519895 (not e!2519918))))

(declare-fun res!1656284 () Bool)

(assert (=> b!4060871 (=> res!1656284 e!2519918)))

(assert (=> b!4060871 (= res!1656284 (not (= lt!1450600 lt!1450566)))))

(assert (=> b!4060871 (= lt!1450600 (++!11364 lt!1450593 suffixResult!105))))

(declare-fun lt!1450548 () Unit!62793)

(assert (=> b!4060871 (= lt!1450548 (lemmaInv!1171 (transformation!6962 (rule!10054 token!484))))))

(assert (=> b!4060871 (ruleValid!2892 thiss!21717 (rule!10054 token!484))))

(declare-fun lt!1450561 () Unit!62793)

(assert (=> b!4060871 (= lt!1450561 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1962 thiss!21717 (rule!10054 token!484) rules!2999))))

(declare-fun b!4060872 () Bool)

(assert (=> b!4060872 (= e!2519911 e!2519889)))

(declare-fun res!1656309 () Bool)

(assert (=> b!4060872 (=> res!1656309 e!2519889)))

(assert (=> b!4060872 (= res!1656309 (not (= lt!1450557 lt!1450595)))))

(assert (=> b!4060872 (= lt!1450557 (++!11364 lt!1450581 lt!1450556))))

(assert (=> b!4060872 (= lt!1450556 (getSuffix!2466 lt!1450595 lt!1450581))))

(declare-fun b!4060873 () Bool)

(declare-fun e!2519903 () Bool)

(declare-fun tp!1230060 () Bool)

(assert (=> b!4060873 (= e!2519903 (and tp_is_empty!20705 tp!1230060))))

(declare-fun b!4060874 () Bool)

(declare-fun res!1656306 () Bool)

(assert (=> b!4060874 (=> res!1656306 e!2519911)))

(assert (=> b!4060874 (= res!1656306 (not (= lt!1450549 lt!1450595)))))

(assert (=> b!4060875 (= e!2519897 (and tp!1230063 tp!1230072))))

(declare-fun b!4060876 () Bool)

(assert (=> b!4060876 (= e!2519880 e!2519898)))

(declare-fun res!1656303 () Bool)

(assert (=> b!4060876 (=> res!1656303 e!2519898)))

(declare-fun lt!1450604 () Int)

(declare-fun lt!1450565 () Int)

(assert (=> b!4060876 (= res!1656303 (<= lt!1450604 lt!1450565))))

(declare-fun lt!1450596 () Unit!62793)

(assert (=> b!4060876 (= lt!1450596 e!2519910)))

(declare-fun c!701381 () Bool)

(assert (=> b!4060876 (= c!701381 (< lt!1450604 lt!1450565))))

(declare-fun getIndex!574 (List!43507 Rule!13724) Int)

(assert (=> b!4060876 (= lt!1450565 (getIndex!574 rules!2999 (rule!10054 token!484)))))

(assert (=> b!4060876 (= lt!1450604 (getIndex!574 rules!2999 (rule!10054 (_1!24355 (v!39795 lt!1450590)))))))

(assert (=> b!4060876 (= (_2!24355 (v!39795 lt!1450590)) newSuffixResult!27)))

(declare-fun lt!1450558 () Unit!62793)

(assert (=> b!4060876 (= lt!1450558 (lemmaSamePrefixThenSameSuffix!2210 lt!1450581 (_2!24355 (v!39795 lt!1450590)) lt!1450593 newSuffixResult!27 lt!1450595))))

(assert (=> b!4060876 (= lt!1450581 lt!1450593)))

(declare-fun lt!1450563 () Unit!62793)

(declare-fun lemmaIsPrefixSameLengthThenSameList!939 (List!43505 List!43505 List!43505) Unit!62793)

(assert (=> b!4060876 (= lt!1450563 (lemmaIsPrefixSameLengthThenSameList!939 lt!1450581 lt!1450593 lt!1450595))))

(declare-fun res!1656300 () Bool)

(assert (=> start!383004 (=> (not res!1656300) (not e!2519915))))

(get-info :version)

(assert (=> start!383004 (= res!1656300 ((_ is Lexer!6549) thiss!21717))))

(assert (=> start!383004 e!2519915))

(assert (=> start!383004 e!2519887))

(declare-fun inv!57998 (Token!13062) Bool)

(assert (=> start!383004 (and (inv!57998 token!484) e!2519917)))

(assert (=> start!383004 e!2519882))

(assert (=> start!383004 e!2519903))

(declare-fun e!2519881 () Bool)

(assert (=> start!383004 e!2519881))

(assert (=> start!383004 true))

(declare-fun e!2519890 () Bool)

(assert (=> start!383004 e!2519890))

(assert (=> start!383004 e!2519914))

(declare-fun b!4060845 () Bool)

(declare-fun e!2519908 () Bool)

(assert (=> b!4060845 (= e!2519896 e!2519908)))

(declare-fun res!1656293 () Bool)

(assert (=> b!4060845 (=> res!1656293 e!2519908)))

(declare-fun lt!1450601 () List!43505)

(assert (=> b!4060845 (= res!1656293 (not (= lt!1450601 prefix!494)))))

(declare-fun lt!1450545 () List!43505)

(assert (=> b!4060845 (= lt!1450601 (++!11364 lt!1450593 lt!1450545))))

(assert (=> b!4060845 (= lt!1450545 (getSuffix!2466 prefix!494 lt!1450593))))

(assert (=> b!4060845 (isPrefix!4049 lt!1450593 prefix!494)))

(declare-fun lt!1450550 () Unit!62793)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!613 (List!43505 List!43505 List!43505) Unit!62793)

(assert (=> b!4060845 (= lt!1450550 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!613 prefix!494 lt!1450593 lt!1450566))))

(declare-fun b!4060877 () Bool)

(declare-fun res!1656305 () Bool)

(assert (=> b!4060877 (=> res!1656305 e!2519880)))

(assert (=> b!4060877 (= res!1656305 (not (isPrefix!4049 lt!1450581 lt!1450595)))))

(declare-fun b!4060878 () Bool)

(declare-fun Unit!62800 () Unit!62793)

(assert (=> b!4060878 (= e!2519909 Unit!62800)))

(declare-fun lt!1450605 () Unit!62793)

(assert (=> b!4060878 (= lt!1450605 (lemmaMaxPrefixOutputsMaxPrefix!488 thiss!21717 rules!2999 (rule!10054 (_1!24355 (v!39795 lt!1450590))) lt!1450581 lt!1450595 lt!1450593 (rule!10054 token!484)))))

(assert (=> b!4060878 false))

(declare-fun b!4060879 () Bool)

(declare-fun tp!1230068 () Bool)

(assert (=> b!4060879 (= e!2519890 (and e!2519907 tp!1230068))))

(declare-fun b!4060880 () Bool)

(assert (=> b!4060880 (= e!2519888 false)))

(declare-fun b!4060881 () Bool)

(assert (=> b!4060881 (= e!2519894 e!2519900)))

(declare-fun res!1656290 () Bool)

(assert (=> b!4060881 (=> res!1656290 e!2519900)))

(assert (=> b!4060881 (= res!1656290 (not ((_ is Some!9375) lt!1450590)))))

(assert (=> b!4060881 (= lt!1450590 (maxPrefix!3849 thiss!21717 rules!2999 lt!1450595))))

(assert (=> b!4060881 (and (= suffixResult!105 lt!1450579) (= lt!1450580 (tuple2!42443 lt!1450587 lt!1450579)))))

(declare-fun lt!1450586 () Unit!62793)

(assert (=> b!4060881 (= lt!1450586 (lemmaSamePrefixThenSameSuffix!2210 lt!1450593 suffixResult!105 lt!1450593 lt!1450579 lt!1450566))))

(assert (=> b!4060881 (isPrefix!4049 lt!1450593 lt!1450582)))

(declare-fun lt!1450567 () Unit!62793)

(assert (=> b!4060881 (= lt!1450567 (lemmaConcatTwoListThenFirstIsPrefix!2884 lt!1450593 lt!1450579))))

(declare-fun b!4060882 () Bool)

(declare-fun tp!1230067 () Bool)

(assert (=> b!4060882 (= e!2519881 (and tp_is_empty!20705 tp!1230067))))

(declare-fun b!4060883 () Bool)

(assert (=> b!4060883 (= e!2519908 e!2519892)))

(declare-fun res!1656291 () Bool)

(assert (=> b!4060883 (=> res!1656291 e!2519892)))

(declare-fun lt!1450559 () List!43505)

(assert (=> b!4060883 (= res!1656291 (or (not (= lt!1450566 lt!1450559)) (not (= lt!1450566 lt!1450583))))))

(assert (=> b!4060883 (= lt!1450559 lt!1450583)))

(assert (=> b!4060883 (= lt!1450583 (++!11364 lt!1450593 lt!1450602))))

(assert (=> b!4060883 (= lt!1450559 (++!11364 lt!1450601 suffix!1299))))

(assert (=> b!4060883 (= lt!1450602 (++!11364 lt!1450545 suffix!1299))))

(declare-fun lt!1450584 () Unit!62793)

(assert (=> b!4060883 (= lt!1450584 (lemmaConcatAssociativity!2666 lt!1450593 lt!1450545 suffix!1299))))

(declare-fun b!4060884 () Bool)

(declare-fun res!1656282 () Bool)

(assert (=> b!4060884 (=> (not res!1656282) (not e!2519915))))

(declare-fun rulesInvariant!5894 (LexerInterface!6551 List!43507) Bool)

(assert (=> b!4060884 (= res!1656282 (rulesInvariant!5894 thiss!21717 rules!2999))))

(assert (= (and start!383004 res!1656300) b!4060862))

(assert (= (and b!4060862 res!1656296) b!4060884))

(assert (= (and b!4060884 res!1656282) b!4060850))

(assert (= (and b!4060850 res!1656298) b!4060842))

(assert (= (and b!4060842 res!1656304) b!4060839))

(assert (= (and b!4060839 res!1656308) b!4060859))

(assert (= (and b!4060859 res!1656289) b!4060843))

(assert (= (and b!4060843 res!1656307) b!4060871))

(assert (= (and b!4060871 (not res!1656284)) b!4060846))

(assert (= (and b!4060846 (not res!1656292)) b!4060845))

(assert (= (and b!4060845 (not res!1656293)) b!4060883))

(assert (= (and b!4060883 (not res!1656291)) b!4060856))

(assert (= (and b!4060856 (not res!1656294)) b!4060851))

(assert (= (and b!4060851 (not res!1656280)) b!4060868))

(assert (= (and b!4060868 res!1656286) b!4060861))

(assert (= (and b!4060861 res!1656299) b!4060847))

(assert (= (and b!4060847 res!1656301) b!4060864))

(assert (= (and b!4060868 (not res!1656281)) b!4060881))

(assert (= (and b!4060881 (not res!1656290)) b!4060848))

(assert (= (and b!4060848 (not res!1656287)) b!4060855))

(assert (= (and b!4060855 (not res!1656295)) b!4060866))

(assert (= (and b!4060866 (not res!1656283)) b!4060844))

(assert (= (and b!4060844 (not res!1656297)) b!4060874))

(assert (= (and b!4060874 (not res!1656306)) b!4060872))

(assert (= (and b!4060872 (not res!1656309)) b!4060869))

(assert (= (and b!4060869 c!701383) b!4060853))

(assert (= (and b!4060869 (not c!701383)) b!4060857))

(assert (= (and b!4060853 res!1656302) b!4060840))

(assert (= (and b!4060869 c!701382) b!4060878))

(assert (= (and b!4060869 (not c!701382)) b!4060849))

(assert (= (and b!4060869 (not res!1656285)) b!4060877))

(assert (= (and b!4060877 (not res!1656305)) b!4060876))

(assert (= (and b!4060876 c!701381) b!4060865))

(assert (= (and b!4060876 (not c!701381)) b!4060841))

(assert (= (and b!4060865 res!1656288) b!4060880))

(assert (= (and b!4060876 (not res!1656303)) b!4060858))

(assert (= (and start!383004 ((_ is Cons!43381) prefix!494)) b!4060863))

(assert (= b!4060860 b!4060875))

(assert (= b!4060867 b!4060860))

(assert (= start!383004 b!4060867))

(assert (= (and start!383004 ((_ is Cons!43381) suffixResult!105)) b!4060870))

(assert (= (and start!383004 ((_ is Cons!43381) suffix!1299)) b!4060873))

(assert (= (and start!383004 ((_ is Cons!43381) newSuffix!27)) b!4060882))

(assert (= b!4060838 b!4060852))

(assert (= b!4060879 b!4060838))

(assert (= (and start!383004 ((_ is Cons!43383) rules!2999)) b!4060879))

(assert (= (and start!383004 ((_ is Cons!43381) newSuffixResult!27)) b!4060854))

(declare-fun m!4666543 () Bool)

(assert (=> b!4060865 m!4666543))

(declare-fun m!4666545 () Bool)

(assert (=> b!4060865 m!4666545))

(declare-fun m!4666547 () Bool)

(assert (=> b!4060884 m!4666547))

(declare-fun m!4666549 () Bool)

(assert (=> b!4060842 m!4666549))

(declare-fun m!4666551 () Bool)

(assert (=> b!4060883 m!4666551))

(declare-fun m!4666553 () Bool)

(assert (=> b!4060883 m!4666553))

(declare-fun m!4666555 () Bool)

(assert (=> b!4060883 m!4666555))

(declare-fun m!4666557 () Bool)

(assert (=> b!4060883 m!4666557))

(declare-fun m!4666559 () Bool)

(assert (=> b!4060867 m!4666559))

(declare-fun m!4666561 () Bool)

(assert (=> b!4060871 m!4666561))

(declare-fun m!4666563 () Bool)

(assert (=> b!4060871 m!4666563))

(declare-fun m!4666565 () Bool)

(assert (=> b!4060871 m!4666565))

(declare-fun m!4666567 () Bool)

(assert (=> b!4060871 m!4666567))

(declare-fun m!4666569 () Bool)

(assert (=> b!4060876 m!4666569))

(declare-fun m!4666571 () Bool)

(assert (=> b!4060876 m!4666571))

(declare-fun m!4666573 () Bool)

(assert (=> b!4060876 m!4666573))

(declare-fun m!4666575 () Bool)

(assert (=> b!4060876 m!4666575))

(declare-fun m!4666577 () Bool)

(assert (=> b!4060845 m!4666577))

(declare-fun m!4666579 () Bool)

(assert (=> b!4060845 m!4666579))

(declare-fun m!4666581 () Bool)

(assert (=> b!4060845 m!4666581))

(declare-fun m!4666583 () Bool)

(assert (=> b!4060845 m!4666583))

(declare-fun m!4666585 () Bool)

(assert (=> b!4060838 m!4666585))

(declare-fun m!4666587 () Bool)

(assert (=> b!4060838 m!4666587))

(declare-fun m!4666589 () Bool)

(assert (=> b!4060866 m!4666589))

(declare-fun m!4666591 () Bool)

(assert (=> b!4060866 m!4666591))

(declare-fun m!4666593 () Bool)

(assert (=> b!4060866 m!4666593))

(declare-fun m!4666595 () Bool)

(assert (=> b!4060848 m!4666595))

(declare-fun m!4666597 () Bool)

(assert (=> b!4060848 m!4666597))

(declare-fun m!4666599 () Bool)

(assert (=> b!4060848 m!4666599))

(declare-fun m!4666601 () Bool)

(assert (=> b!4060848 m!4666601))

(declare-fun m!4666603 () Bool)

(assert (=> b!4060848 m!4666603))

(declare-fun m!4666605 () Bool)

(assert (=> b!4060848 m!4666605))

(declare-fun m!4666607 () Bool)

(assert (=> b!4060848 m!4666607))

(declare-fun m!4666609 () Bool)

(assert (=> b!4060848 m!4666609))

(declare-fun m!4666611 () Bool)

(assert (=> b!4060848 m!4666611))

(declare-fun m!4666613 () Bool)

(assert (=> b!4060848 m!4666613))

(assert (=> b!4060848 m!4666601))

(declare-fun m!4666615 () Bool)

(assert (=> b!4060848 m!4666615))

(declare-fun m!4666617 () Bool)

(assert (=> b!4060848 m!4666617))

(declare-fun m!4666619 () Bool)

(assert (=> b!4060848 m!4666619))

(declare-fun m!4666621 () Bool)

(assert (=> b!4060848 m!4666621))

(declare-fun m!4666623 () Bool)

(assert (=> b!4060848 m!4666623))

(declare-fun m!4666625 () Bool)

(assert (=> b!4060848 m!4666625))

(assert (=> b!4060848 m!4666605))

(assert (=> b!4060848 m!4666597))

(declare-fun m!4666627 () Bool)

(assert (=> b!4060848 m!4666627))

(declare-fun m!4666629 () Bool)

(assert (=> b!4060848 m!4666629))

(declare-fun m!4666631 () Bool)

(assert (=> b!4060881 m!4666631))

(declare-fun m!4666633 () Bool)

(assert (=> b!4060881 m!4666633))

(declare-fun m!4666635 () Bool)

(assert (=> b!4060881 m!4666635))

(declare-fun m!4666637 () Bool)

(assert (=> b!4060881 m!4666637))

(declare-fun m!4666639 () Bool)

(assert (=> b!4060847 m!4666639))

(declare-fun m!4666641 () Bool)

(assert (=> b!4060856 m!4666641))

(declare-fun m!4666643 () Bool)

(assert (=> b!4060856 m!4666643))

(declare-fun m!4666645 () Bool)

(assert (=> b!4060856 m!4666645))

(assert (=> b!4060856 m!4666645))

(declare-fun m!4666647 () Bool)

(assert (=> b!4060856 m!4666647))

(declare-fun m!4666649 () Bool)

(assert (=> b!4060856 m!4666649))

(declare-fun m!4666651 () Bool)

(assert (=> b!4060856 m!4666651))

(declare-fun m!4666653 () Bool)

(assert (=> b!4060856 m!4666653))

(declare-fun m!4666655 () Bool)

(assert (=> b!4060872 m!4666655))

(declare-fun m!4666657 () Bool)

(assert (=> b!4060872 m!4666657))

(declare-fun m!4666659 () Bool)

(assert (=> b!4060846 m!4666659))

(declare-fun m!4666661 () Bool)

(assert (=> b!4060846 m!4666661))

(declare-fun m!4666663 () Bool)

(assert (=> b!4060846 m!4666663))

(declare-fun m!4666665 () Bool)

(assert (=> b!4060846 m!4666665))

(declare-fun m!4666667 () Bool)

(assert (=> b!4060846 m!4666667))

(declare-fun m!4666669 () Bool)

(assert (=> b!4060843 m!4666669))

(declare-fun m!4666671 () Bool)

(assert (=> b!4060843 m!4666671))

(declare-fun m!4666673 () Bool)

(assert (=> b!4060855 m!4666673))

(declare-fun m!4666675 () Bool)

(assert (=> b!4060855 m!4666675))

(declare-fun m!4666677 () Bool)

(assert (=> b!4060844 m!4666677))

(declare-fun m!4666679 () Bool)

(assert (=> b!4060844 m!4666679))

(declare-fun m!4666681 () Bool)

(assert (=> b!4060844 m!4666681))

(declare-fun m!4666683 () Bool)

(assert (=> b!4060858 m!4666683))

(declare-fun m!4666685 () Bool)

(assert (=> b!4060839 m!4666685))

(declare-fun m!4666687 () Bool)

(assert (=> b!4060839 m!4666687))

(declare-fun m!4666689 () Bool)

(assert (=> b!4060839 m!4666689))

(assert (=> b!4060839 m!4666689))

(declare-fun m!4666691 () Bool)

(assert (=> b!4060839 m!4666691))

(declare-fun m!4666693 () Bool)

(assert (=> b!4060851 m!4666693))

(declare-fun m!4666695 () Bool)

(assert (=> b!4060851 m!4666695))

(declare-fun m!4666697 () Bool)

(assert (=> b!4060851 m!4666697))

(declare-fun m!4666699 () Bool)

(assert (=> b!4060851 m!4666699))

(declare-fun m!4666701 () Bool)

(assert (=> b!4060862 m!4666701))

(declare-fun m!4666703 () Bool)

(assert (=> b!4060869 m!4666703))

(declare-fun m!4666705 () Bool)

(assert (=> b!4060869 m!4666705))

(declare-fun m!4666707 () Bool)

(assert (=> b!4060869 m!4666707))

(declare-fun m!4666709 () Bool)

(assert (=> b!4060850 m!4666709))

(declare-fun m!4666711 () Bool)

(assert (=> b!4060850 m!4666711))

(declare-fun m!4666713 () Bool)

(assert (=> b!4060868 m!4666713))

(declare-fun m!4666715 () Bool)

(assert (=> b!4060868 m!4666715))

(declare-fun m!4666717 () Bool)

(assert (=> b!4060868 m!4666717))

(declare-fun m!4666719 () Bool)

(assert (=> b!4060868 m!4666719))

(declare-fun m!4666721 () Bool)

(assert (=> b!4060859 m!4666721))

(declare-fun m!4666723 () Bool)

(assert (=> b!4060859 m!4666723))

(declare-fun m!4666725 () Bool)

(assert (=> b!4060877 m!4666725))

(declare-fun m!4666727 () Bool)

(assert (=> start!383004 m!4666727))

(declare-fun m!4666729 () Bool)

(assert (=> b!4060878 m!4666729))

(declare-fun m!4666731 () Bool)

(assert (=> b!4060860 m!4666731))

(declare-fun m!4666733 () Bool)

(assert (=> b!4060860 m!4666733))

(declare-fun m!4666735 () Bool)

(assert (=> b!4060853 m!4666735))

(assert (=> b!4060853 m!4666683))

(check-sat (not b!4060853) (not b!4060856) (not b!4060884) (not b!4060866) (not b!4060868) (not b!4060879) (not b!4060860) b_and!312247 (not b_next!113671) (not b!4060862) (not b_next!113669) (not b!4060877) (not b!4060859) (not b!4060846) (not b!4060848) (not b_next!113667) (not b!4060844) (not b!4060878) (not b!4060883) (not b!4060863) (not b!4060869) (not b!4060855) (not b!4060842) (not b!4060843) (not b!4060867) (not b!4060839) (not b!4060871) (not b!4060882) b_and!312249 b_and!312243 (not b!4060845) (not b!4060854) (not b!4060865) (not b!4060870) (not b!4060847) (not b!4060850) (not b!4060876) (not b!4060881) (not b!4060872) b_and!312245 (not b!4060838) (not start!383004) (not b!4060851) (not b!4060858) (not b!4060873) tp_is_empty!20705 (not b_next!113665))
(check-sat (not b_next!113667) b_and!312249 b_and!312243 b_and!312245 (not b_next!113665) b_and!312247 (not b_next!113671) (not b_next!113669))
