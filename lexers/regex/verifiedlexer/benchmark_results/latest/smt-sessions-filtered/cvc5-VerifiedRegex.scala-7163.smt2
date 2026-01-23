; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!380038 () Bool)

(assert start!380038)

(declare-fun b!4033252 () Bool)

(declare-fun b_free!112393 () Bool)

(declare-fun b_next!113097 () Bool)

(assert (=> b!4033252 (= b_free!112393 (not b_next!113097))))

(declare-fun tp!1225594 () Bool)

(declare-fun b_and!309939 () Bool)

(assert (=> b!4033252 (= tp!1225594 b_and!309939)))

(declare-fun b_free!112395 () Bool)

(declare-fun b_next!113099 () Bool)

(assert (=> b!4033252 (= b_free!112395 (not b_next!113099))))

(declare-fun tp!1225596 () Bool)

(declare-fun b_and!309941 () Bool)

(assert (=> b!4033252 (= tp!1225596 b_and!309941)))

(declare-fun b!4033241 () Bool)

(declare-fun b_free!112397 () Bool)

(declare-fun b_next!113101 () Bool)

(assert (=> b!4033241 (= b_free!112397 (not b_next!113101))))

(declare-fun tp!1225598 () Bool)

(declare-fun b_and!309943 () Bool)

(assert (=> b!4033241 (= tp!1225598 b_and!309943)))

(declare-fun b_free!112399 () Bool)

(declare-fun b_next!113103 () Bool)

(assert (=> b!4033241 (= b_free!112399 (not b_next!113103))))

(declare-fun tp!1225591 () Bool)

(declare-fun b_and!309945 () Bool)

(assert (=> b!4033241 (= tp!1225591 b_and!309945)))

(declare-fun b!4033237 () Bool)

(declare-fun res!1642102 () Bool)

(declare-fun e!2502624 () Bool)

(assert (=> b!4033237 (=> (not res!1642102) (not e!2502624))))

(declare-datatypes ((C!23822 0))(
  ( (C!23823 (val!14005 Int)) )
))
(declare-datatypes ((List!43330 0))(
  ( (Nil!43206) (Cons!43206 (h!48626 C!23822) (t!334357 List!43330)) )
))
(declare-fun newSuffix!27 () List!43330)

(declare-fun suffix!1299 () List!43330)

(declare-fun isPrefix!4000 (List!43330 List!43330) Bool)

(assert (=> b!4033237 (= res!1642102 (isPrefix!4000 newSuffix!27 suffix!1299))))

(declare-fun e!2502630 () Bool)

(declare-datatypes ((IArray!26253 0))(
  ( (IArray!26254 (innerList!13184 List!43330)) )
))
(declare-datatypes ((Conc!13124 0))(
  ( (Node!13124 (left!32543 Conc!13124) (right!32873 Conc!13124) (csize!26478 Int) (cheight!13335 Int)) (Leaf!20288 (xs!16430 IArray!26253) (csize!26479 Int)) (Empty!13124) )
))
(declare-datatypes ((BalanceConc!25842 0))(
  ( (BalanceConc!25843 (c!696603 Conc!13124)) )
))
(declare-datatypes ((List!43331 0))(
  ( (Nil!43207) (Cons!43207 (h!48627 (_ BitVec 16)) (t!334358 List!43331)) )
))
(declare-datatypes ((TokenValue!7143 0))(
  ( (FloatLiteralValue!14286 (text!50446 List!43331)) (TokenValueExt!7142 (__x!26503 Int)) (Broken!35715 (value!217630 List!43331)) (Object!7266) (End!7143) (Def!7143) (Underscore!7143) (Match!7143) (Else!7143) (Error!7143) (Case!7143) (If!7143) (Extends!7143) (Abstract!7143) (Class!7143) (Val!7143) (DelimiterValue!14286 (del!7203 List!43331)) (KeywordValue!7149 (value!217631 List!43331)) (CommentValue!14286 (value!217632 List!43331)) (WhitespaceValue!14286 (value!217633 List!43331)) (IndentationValue!7143 (value!217634 List!43331)) (String!49434) (Int32!7143) (Broken!35716 (value!217635 List!43331)) (Boolean!7144) (Unit!62382) (OperatorValue!7146 (op!7203 List!43331)) (IdentifierValue!14286 (value!217636 List!43331)) (IdentifierValue!14287 (value!217637 List!43331)) (WhitespaceValue!14287 (value!217638 List!43331)) (True!14286) (False!14286) (Broken!35717 (value!217639 List!43331)) (Broken!35718 (value!217640 List!43331)) (True!14287) (RightBrace!7143) (RightBracket!7143) (Colon!7143) (Null!7143) (Comma!7143) (LeftBracket!7143) (False!14287) (LeftBrace!7143) (ImaginaryLiteralValue!7143 (text!50447 List!43331)) (StringLiteralValue!21429 (value!217641 List!43331)) (EOFValue!7143 (value!217642 List!43331)) (IdentValue!7143 (value!217643 List!43331)) (DelimiterValue!14287 (value!217644 List!43331)) (DedentValue!7143 (value!217645 List!43331)) (NewLineValue!7143 (value!217646 List!43331)) (IntegerValue!21429 (value!217647 (_ BitVec 32)) (text!50448 List!43331)) (IntegerValue!21430 (value!217648 Int) (text!50449 List!43331)) (Times!7143) (Or!7143) (Equal!7143) (Minus!7143) (Broken!35719 (value!217649 List!43331)) (And!7143) (Div!7143) (LessEqual!7143) (Mod!7143) (Concat!18961) (Not!7143) (Plus!7143) (SpaceValue!7143 (value!217650 List!43331)) (IntegerValue!21431 (value!217651 Int) (text!50450 List!43331)) (StringLiteralValue!21430 (text!50451 List!43331)) (FloatLiteralValue!14287 (text!50452 List!43331)) (BytesLiteralValue!7143 (value!217652 List!43331)) (CommentValue!14287 (value!217653 List!43331)) (StringLiteralValue!21431 (value!217654 List!43331)) (ErrorTokenValue!7143 (msg!7204 List!43331)) )
))
(declare-datatypes ((Regex!11818 0))(
  ( (ElementMatch!11818 (c!696604 C!23822)) (Concat!18962 (regOne!24148 Regex!11818) (regTwo!24148 Regex!11818)) (EmptyExpr!11818) (Star!11818 (reg!12147 Regex!11818)) (EmptyLang!11818) (Union!11818 (regOne!24149 Regex!11818) (regTwo!24149 Regex!11818)) )
))
(declare-datatypes ((String!49435 0))(
  ( (String!49436 (value!217655 String)) )
))
(declare-datatypes ((TokenValueInjection!13714 0))(
  ( (TokenValueInjection!13715 (toValue!9441 Int) (toChars!9300 Int)) )
))
(declare-datatypes ((Rule!13626 0))(
  ( (Rule!13627 (regex!6913 Regex!11818) (tag!7773 String!49435) (isSeparator!6913 Bool) (transformation!6913 TokenValueInjection!13714)) )
))
(declare-datatypes ((Token!12964 0))(
  ( (Token!12965 (value!217656 TokenValue!7143) (rule!9977 Rule!13626) (size!32293 Int) (originalCharacters!7513 List!43330)) )
))
(declare-fun token!484 () Token!12964)

(declare-fun lt!1434439 () List!43330)

(declare-fun b!4033238 () Bool)

(declare-fun lt!1434460 () Int)

(assert (=> b!4033238 (= e!2502630 (and (= (size!32293 token!484) lt!1434460) (= (originalCharacters!7513 token!484) lt!1434439)))))

(declare-fun b!4033239 () Bool)

(declare-fun e!2502637 () Bool)

(declare-fun e!2502623 () Bool)

(assert (=> b!4033239 (= e!2502637 e!2502623)))

(declare-fun res!1642096 () Bool)

(assert (=> b!4033239 (=> res!1642096 e!2502623)))

(declare-fun matchR!5771 (Regex!11818 List!43330) Bool)

(assert (=> b!4033239 (= res!1642096 (not (matchR!5771 (regex!6913 (rule!9977 token!484)) lt!1434439)))))

(declare-fun lt!1434453 () List!43330)

(assert (=> b!4033239 (isPrefix!4000 lt!1434439 lt!1434453)))

(declare-fun prefix!494 () List!43330)

(declare-datatypes ((Unit!62383 0))(
  ( (Unit!62384) )
))
(declare-fun lt!1434463 () Unit!62383)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!793 (List!43330 List!43330 List!43330) Unit!62383)

(assert (=> b!4033239 (= lt!1434463 (lemmaPrefixStaysPrefixWhenAddingToSuffix!793 lt!1434439 prefix!494 newSuffix!27))))

(declare-fun lt!1434452 () Unit!62383)

(assert (=> b!4033239 (= lt!1434452 (lemmaPrefixStaysPrefixWhenAddingToSuffix!793 lt!1434439 prefix!494 suffix!1299))))

(declare-fun b!4033240 () Bool)

(declare-fun e!2502628 () Bool)

(declare-fun tp_is_empty!20607 () Bool)

(declare-fun tp!1225600 () Bool)

(assert (=> b!4033240 (= e!2502628 (and tp_is_empty!20607 tp!1225600))))

(declare-fun e!2502627 () Bool)

(assert (=> b!4033241 (= e!2502627 (and tp!1225598 tp!1225591))))

(declare-fun b!4033242 () Bool)

(declare-fun res!1642103 () Bool)

(assert (=> b!4033242 (=> (not res!1642103) (not e!2502630))))

(declare-fun lt!1434459 () TokenValue!7143)

(assert (=> b!4033242 (= res!1642103 (= (value!217656 token!484) lt!1434459))))

(declare-fun b!4033243 () Bool)

(declare-fun e!2502635 () Bool)

(declare-fun tp!1225589 () Bool)

(assert (=> b!4033243 (= e!2502635 (and tp_is_empty!20607 tp!1225589))))

(declare-fun b!4033244 () Bool)

(declare-fun e!2502642 () Bool)

(assert (=> b!4033244 (= e!2502624 e!2502642)))

(declare-fun res!1642099 () Bool)

(assert (=> b!4033244 (=> (not res!1642099) (not e!2502642))))

(declare-fun lt!1434467 () Int)

(assert (=> b!4033244 (= res!1642099 (>= lt!1434467 lt!1434460))))

(declare-fun size!32294 (List!43330) Int)

(assert (=> b!4033244 (= lt!1434460 (size!32294 lt!1434439))))

(assert (=> b!4033244 (= lt!1434467 (size!32294 prefix!494))))

(declare-fun list!16077 (BalanceConc!25842) List!43330)

(declare-fun charsOf!4729 (Token!12964) BalanceConc!25842)

(assert (=> b!4033244 (= lt!1434439 (list!16077 (charsOf!4729 token!484)))))

(declare-fun b!4033245 () Bool)

(declare-fun res!1642095 () Bool)

(assert (=> b!4033245 (=> (not res!1642095) (not e!2502624))))

(declare-datatypes ((LexerInterface!6502 0))(
  ( (LexerInterfaceExt!6499 (__x!26504 Int)) (Lexer!6500) )
))
(declare-fun thiss!21717 () LexerInterface!6502)

(declare-datatypes ((List!43332 0))(
  ( (Nil!43208) (Cons!43208 (h!48628 Rule!13626) (t!334359 List!43332)) )
))
(declare-fun rules!2999 () List!43332)

(declare-fun rulesInvariant!5845 (LexerInterface!6502 List!43332) Bool)

(assert (=> b!4033245 (= res!1642095 (rulesInvariant!5845 thiss!21717 rules!2999))))

(declare-fun b!4033246 () Bool)

(declare-fun e!2502640 () Bool)

(declare-datatypes ((tuple2!42288 0))(
  ( (tuple2!42289 (_1!24278 Token!12964) (_2!24278 List!43330)) )
))
(declare-datatypes ((Option!9327 0))(
  ( (None!9326) (Some!9326 (v!39718 tuple2!42288)) )
))
(declare-fun lt!1434447 () Option!9327)

(declare-fun contains!8577 (List!43332 Rule!13626) Bool)

(assert (=> b!4033246 (= e!2502640 (contains!8577 rules!2999 (rule!9977 (_1!24278 (v!39718 lt!1434447)))))))

(declare-fun lt!1434440 () List!43330)

(assert (=> b!4033246 (= lt!1434440 (list!16077 (charsOf!4729 (_1!24278 (v!39718 lt!1434447)))))))

(declare-fun lt!1434471 () Unit!62383)

(declare-fun lemmaInv!1122 (TokenValueInjection!13714) Unit!62383)

(assert (=> b!4033246 (= lt!1434471 (lemmaInv!1122 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447))))))))

(declare-fun ruleValid!2843 (LexerInterface!6502 Rule!13626) Bool)

(assert (=> b!4033246 (ruleValid!2843 thiss!21717 (rule!9977 (_1!24278 (v!39718 lt!1434447))))))

(declare-fun lt!1434462 () Unit!62383)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1913 (LexerInterface!6502 Rule!13626 List!43332) Unit!62383)

(assert (=> b!4033246 (= lt!1434462 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1913 thiss!21717 (rule!9977 (_1!24278 (v!39718 lt!1434447))) rules!2999))))

(declare-fun lt!1434446 () Unit!62383)

(declare-fun lemmaCharactersSize!1432 (Token!12964) Unit!62383)

(assert (=> b!4033246 (= lt!1434446 (lemmaCharactersSize!1432 token!484))))

(declare-fun lt!1434437 () Unit!62383)

(assert (=> b!4033246 (= lt!1434437 (lemmaCharactersSize!1432 (_1!24278 (v!39718 lt!1434447))))))

(declare-fun b!4033247 () Bool)

(declare-fun res!1642111 () Bool)

(assert (=> b!4033247 (=> (not res!1642111) (not e!2502624))))

(declare-fun isEmpty!25782 (List!43332) Bool)

(assert (=> b!4033247 (= res!1642111 (not (isEmpty!25782 rules!2999)))))

(declare-fun b!4033248 () Bool)

(declare-fun res!1642094 () Bool)

(assert (=> b!4033248 (=> (not res!1642094) (not e!2502624))))

(assert (=> b!4033248 (= res!1642094 (>= (size!32294 suffix!1299) (size!32294 newSuffix!27)))))

(declare-fun b!4033249 () Bool)

(declare-fun e!2502626 () Bool)

(assert (=> b!4033249 (= e!2502626 e!2502637)))

(declare-fun res!1642097 () Bool)

(assert (=> b!4033249 (=> res!1642097 e!2502637)))

(declare-fun lt!1434451 () Option!9327)

(declare-fun lt!1434455 () Option!9327)

(assert (=> b!4033249 (= res!1642097 (not (= lt!1434451 lt!1434455)))))

(declare-fun lt!1434468 () Token!12964)

(declare-fun suffixResult!105 () List!43330)

(assert (=> b!4033249 (= lt!1434451 (Some!9326 (tuple2!42289 lt!1434468 suffixResult!105)))))

(declare-fun lt!1434434 () List!43330)

(declare-fun maxPrefixOneRule!2812 (LexerInterface!6502 Rule!13626 List!43330) Option!9327)

(assert (=> b!4033249 (= lt!1434451 (maxPrefixOneRule!2812 thiss!21717 (rule!9977 token!484) lt!1434434))))

(assert (=> b!4033249 (= lt!1434468 (Token!12965 lt!1434459 (rule!9977 token!484) lt!1434460 lt!1434439))))

(declare-fun apply!10102 (TokenValueInjection!13714 BalanceConc!25842) TokenValue!7143)

(declare-fun seqFromList!5130 (List!43330) BalanceConc!25842)

(assert (=> b!4033249 (= lt!1434459 (apply!10102 (transformation!6913 (rule!9977 token!484)) (seqFromList!5130 lt!1434439)))))

(declare-fun lt!1434442 () Unit!62383)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1618 (LexerInterface!6502 List!43332 List!43330 List!43330 List!43330 Rule!13626) Unit!62383)

(assert (=> b!4033249 (= lt!1434442 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1618 thiss!21717 rules!2999 lt!1434439 lt!1434434 suffixResult!105 (rule!9977 token!484)))))

(declare-fun lt!1434438 () List!43330)

(assert (=> b!4033249 (= lt!1434438 suffixResult!105)))

(declare-fun lt!1434461 () Unit!62383)

(declare-fun lemmaSamePrefixThenSameSuffix!2161 (List!43330 List!43330 List!43330 List!43330 List!43330) Unit!62383)

(assert (=> b!4033249 (= lt!1434461 (lemmaSamePrefixThenSameSuffix!2161 lt!1434439 lt!1434438 lt!1434439 suffixResult!105 lt!1434434))))

(declare-fun lt!1434465 () List!43330)

(assert (=> b!4033249 (isPrefix!4000 lt!1434439 lt!1434465)))

(declare-fun lt!1434469 () Unit!62383)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2835 (List!43330 List!43330) Unit!62383)

(assert (=> b!4033249 (= lt!1434469 (lemmaConcatTwoListThenFirstIsPrefix!2835 lt!1434439 lt!1434438))))

(declare-fun b!4033250 () Bool)

(declare-fun e!2502634 () Bool)

(assert (=> b!4033250 (= e!2502634 e!2502640)))

(declare-fun res!1642101 () Bool)

(assert (=> b!4033250 (=> res!1642101 e!2502640)))

(assert (=> b!4033250 (= res!1642101 (not (is-Some!9326 lt!1434447)))))

(declare-fun maxPrefix!3800 (LexerInterface!6502 List!43332 List!43330) Option!9327)

(assert (=> b!4033250 (= lt!1434447 (maxPrefix!3800 thiss!21717 rules!2999 lt!1434453))))

(declare-fun lt!1434457 () List!43330)

(declare-fun lt!1434450 () tuple2!42288)

(assert (=> b!4033250 (and (= suffixResult!105 lt!1434457) (= lt!1434450 (tuple2!42289 lt!1434468 lt!1434457)))))

(declare-fun lt!1434443 () Unit!62383)

(assert (=> b!4033250 (= lt!1434443 (lemmaSamePrefixThenSameSuffix!2161 lt!1434439 suffixResult!105 lt!1434439 lt!1434457 lt!1434434))))

(declare-fun lt!1434464 () List!43330)

(assert (=> b!4033250 (isPrefix!4000 lt!1434439 lt!1434464)))

(declare-fun lt!1434470 () Unit!62383)

(assert (=> b!4033250 (= lt!1434470 (lemmaConcatTwoListThenFirstIsPrefix!2835 lt!1434439 lt!1434457))))

(declare-fun b!4033251 () Bool)

(declare-fun e!2502622 () Bool)

(declare-fun tp!1225590 () Bool)

(declare-fun inv!57722 (String!49435) Bool)

(declare-fun inv!57725 (TokenValueInjection!13714) Bool)

(assert (=> b!4033251 (= e!2502622 (and tp!1225590 (inv!57722 (tag!7773 (rule!9977 token!484))) (inv!57725 (transformation!6913 (rule!9977 token!484))) e!2502627))))

(declare-fun e!2502639 () Bool)

(assert (=> b!4033252 (= e!2502639 (and tp!1225594 tp!1225596))))

(declare-fun b!4033253 () Bool)

(declare-fun e!2502625 () Bool)

(declare-fun tp!1225595 () Bool)

(assert (=> b!4033253 (= e!2502625 (and tp_is_empty!20607 tp!1225595))))

(declare-fun b!4033254 () Bool)

(declare-fun e!2502636 () Bool)

(assert (=> b!4033254 (= e!2502636 e!2502626)))

(declare-fun res!1642098 () Bool)

(assert (=> b!4033254 (=> res!1642098 e!2502626)))

(declare-fun lt!1434436 () List!43330)

(assert (=> b!4033254 (= res!1642098 (or (not (= lt!1434434 lt!1434436)) (not (= lt!1434434 lt!1434465))))))

(assert (=> b!4033254 (= lt!1434436 lt!1434465)))

(declare-fun ++!11315 (List!43330 List!43330) List!43330)

(assert (=> b!4033254 (= lt!1434465 (++!11315 lt!1434439 lt!1434438))))

(declare-fun lt!1434472 () List!43330)

(assert (=> b!4033254 (= lt!1434436 (++!11315 lt!1434472 suffix!1299))))

(declare-fun lt!1434458 () List!43330)

(assert (=> b!4033254 (= lt!1434438 (++!11315 lt!1434458 suffix!1299))))

(declare-fun lt!1434445 () Unit!62383)

(declare-fun lemmaConcatAssociativity!2617 (List!43330 List!43330 List!43330) Unit!62383)

(assert (=> b!4033254 (= lt!1434445 (lemmaConcatAssociativity!2617 lt!1434439 lt!1434458 suffix!1299))))

(declare-fun b!4033255 () Bool)

(declare-fun e!2502629 () Bool)

(declare-fun tp!1225593 () Bool)

(assert (=> b!4033255 (= e!2502629 (and tp_is_empty!20607 tp!1225593))))

(declare-fun b!4033256 () Bool)

(declare-fun res!1642112 () Bool)

(assert (=> b!4033256 (=> (not res!1642112) (not e!2502630))))

(assert (=> b!4033256 (= res!1642112 (= (size!32293 token!484) (size!32294 (originalCharacters!7513 token!484))))))

(declare-fun e!2502617 () Bool)

(declare-fun b!4033257 () Bool)

(declare-fun tp!1225592 () Bool)

(assert (=> b!4033257 (= e!2502617 (and tp!1225592 (inv!57722 (tag!7773 (h!48628 rules!2999))) (inv!57725 (transformation!6913 (h!48628 rules!2999))) e!2502639))))

(declare-fun res!1642110 () Bool)

(assert (=> start!380038 (=> (not res!1642110) (not e!2502624))))

(assert (=> start!380038 (= res!1642110 (is-Lexer!6500 thiss!21717))))

(assert (=> start!380038 e!2502624))

(assert (=> start!380038 e!2502629))

(declare-fun e!2502641 () Bool)

(declare-fun inv!57726 (Token!12964) Bool)

(assert (=> start!380038 (and (inv!57726 token!484) e!2502641)))

(assert (=> start!380038 e!2502628))

(assert (=> start!380038 e!2502635))

(assert (=> start!380038 e!2502625))

(assert (=> start!380038 true))

(declare-fun e!2502619 () Bool)

(assert (=> start!380038 e!2502619))

(declare-fun e!2502618 () Bool)

(assert (=> start!380038 e!2502618))

(declare-fun b!4033258 () Bool)

(declare-fun e!2502632 () Bool)

(declare-fun e!2502620 () Bool)

(assert (=> b!4033258 (= e!2502632 (not e!2502620))))

(declare-fun res!1642100 () Bool)

(assert (=> b!4033258 (=> res!1642100 e!2502620)))

(declare-fun lt!1434449 () List!43330)

(assert (=> b!4033258 (= res!1642100 (not (= lt!1434449 lt!1434434)))))

(assert (=> b!4033258 (= lt!1434449 (++!11315 lt!1434439 suffixResult!105))))

(declare-fun lt!1434454 () Unit!62383)

(assert (=> b!4033258 (= lt!1434454 (lemmaInv!1122 (transformation!6913 (rule!9977 token!484))))))

(assert (=> b!4033258 (ruleValid!2843 thiss!21717 (rule!9977 token!484))))

(declare-fun lt!1434456 () Unit!62383)

(assert (=> b!4033258 (= lt!1434456 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1913 thiss!21717 (rule!9977 token!484) rules!2999))))

(declare-fun b!4033259 () Bool)

(declare-fun e!2502631 () Bool)

(assert (=> b!4033259 (= e!2502631 e!2502632)))

(declare-fun res!1642104 () Bool)

(assert (=> b!4033259 (=> (not res!1642104) (not e!2502632))))

(assert (=> b!4033259 (= res!1642104 (= (maxPrefix!3800 thiss!21717 rules!2999 lt!1434434) lt!1434455))))

(assert (=> b!4033259 (= lt!1434455 (Some!9326 lt!1434450))))

(assert (=> b!4033259 (= lt!1434450 (tuple2!42289 token!484 suffixResult!105))))

(assert (=> b!4033259 (= lt!1434434 (++!11315 prefix!494 suffix!1299))))

(declare-fun tp!1225599 () Bool)

(declare-fun b!4033260 () Bool)

(declare-fun inv!21 (TokenValue!7143) Bool)

(assert (=> b!4033260 (= e!2502641 (and (inv!21 (value!217656 token!484)) e!2502622 tp!1225599))))

(declare-fun b!4033261 () Bool)

(declare-fun e!2502633 () Bool)

(assert (=> b!4033261 (= e!2502620 e!2502633)))

(declare-fun res!1642109 () Bool)

(assert (=> b!4033261 (=> res!1642109 e!2502633)))

(assert (=> b!4033261 (= res!1642109 (not (isPrefix!4000 lt!1434439 lt!1434434)))))

(assert (=> b!4033261 (isPrefix!4000 prefix!494 lt!1434434)))

(declare-fun lt!1434435 () Unit!62383)

(assert (=> b!4033261 (= lt!1434435 (lemmaConcatTwoListThenFirstIsPrefix!2835 prefix!494 suffix!1299))))

(assert (=> b!4033261 (isPrefix!4000 lt!1434439 lt!1434449)))

(declare-fun lt!1434448 () Unit!62383)

(assert (=> b!4033261 (= lt!1434448 (lemmaConcatTwoListThenFirstIsPrefix!2835 lt!1434439 suffixResult!105))))

(declare-fun b!4033262 () Bool)

(assert (=> b!4033262 (= e!2502633 e!2502636)))

(declare-fun res!1642108 () Bool)

(assert (=> b!4033262 (=> res!1642108 e!2502636)))

(assert (=> b!4033262 (= res!1642108 (not (= lt!1434472 prefix!494)))))

(assert (=> b!4033262 (= lt!1434472 (++!11315 lt!1434439 lt!1434458))))

(declare-fun getSuffix!2417 (List!43330 List!43330) List!43330)

(assert (=> b!4033262 (= lt!1434458 (getSuffix!2417 prefix!494 lt!1434439))))

(assert (=> b!4033262 (isPrefix!4000 lt!1434439 prefix!494)))

(declare-fun lt!1434466 () Unit!62383)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!564 (List!43330 List!43330 List!43330) Unit!62383)

(assert (=> b!4033262 (= lt!1434466 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!564 prefix!494 lt!1434439 lt!1434434))))

(declare-fun b!4033263 () Bool)

(assert (=> b!4033263 (= e!2502642 e!2502631)))

(declare-fun res!1642106 () Bool)

(assert (=> b!4033263 (=> (not res!1642106) (not e!2502631))))

(declare-fun lt!1434441 () List!43330)

(assert (=> b!4033263 (= res!1642106 (= lt!1434441 lt!1434453))))

(assert (=> b!4033263 (= lt!1434453 (++!11315 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43330)

(assert (=> b!4033263 (= lt!1434441 (++!11315 lt!1434439 newSuffixResult!27))))

(declare-fun b!4033264 () Bool)

(declare-fun tp!1225601 () Bool)

(assert (=> b!4033264 (= e!2502619 (and e!2502617 tp!1225601))))

(declare-fun b!4033265 () Bool)

(assert (=> b!4033265 (= e!2502623 e!2502634)))

(declare-fun res!1642107 () Bool)

(assert (=> b!4033265 (=> res!1642107 e!2502634)))

(assert (=> b!4033265 (= res!1642107 (not (= lt!1434464 lt!1434434)))))

(assert (=> b!4033265 (= lt!1434464 (++!11315 lt!1434439 lt!1434457))))

(assert (=> b!4033265 (= lt!1434457 (getSuffix!2417 lt!1434434 lt!1434439))))

(assert (=> b!4033265 e!2502630))

(declare-fun res!1642105 () Bool)

(assert (=> b!4033265 (=> (not res!1642105) (not e!2502630))))

(assert (=> b!4033265 (= res!1642105 (isPrefix!4000 lt!1434434 lt!1434434))))

(declare-fun lt!1434444 () Unit!62383)

(declare-fun lemmaIsPrefixRefl!2567 (List!43330 List!43330) Unit!62383)

(assert (=> b!4033265 (= lt!1434444 (lemmaIsPrefixRefl!2567 lt!1434434 lt!1434434))))

(declare-fun b!4033266 () Bool)

(declare-fun tp!1225597 () Bool)

(assert (=> b!4033266 (= e!2502618 (and tp_is_empty!20607 tp!1225597))))

(assert (= (and start!380038 res!1642110) b!4033247))

(assert (= (and b!4033247 res!1642111) b!4033245))

(assert (= (and b!4033245 res!1642095) b!4033248))

(assert (= (and b!4033248 res!1642094) b!4033237))

(assert (= (and b!4033237 res!1642102) b!4033244))

(assert (= (and b!4033244 res!1642099) b!4033263))

(assert (= (and b!4033263 res!1642106) b!4033259))

(assert (= (and b!4033259 res!1642104) b!4033258))

(assert (= (and b!4033258 (not res!1642100)) b!4033261))

(assert (= (and b!4033261 (not res!1642109)) b!4033262))

(assert (= (and b!4033262 (not res!1642108)) b!4033254))

(assert (= (and b!4033254 (not res!1642098)) b!4033249))

(assert (= (and b!4033249 (not res!1642097)) b!4033239))

(assert (= (and b!4033239 (not res!1642096)) b!4033265))

(assert (= (and b!4033265 res!1642105) b!4033242))

(assert (= (and b!4033242 res!1642103) b!4033256))

(assert (= (and b!4033256 res!1642112) b!4033238))

(assert (= (and b!4033265 (not res!1642107)) b!4033250))

(assert (= (and b!4033250 (not res!1642101)) b!4033246))

(assert (= (and start!380038 (is-Cons!43206 prefix!494)) b!4033255))

(assert (= b!4033251 b!4033241))

(assert (= b!4033260 b!4033251))

(assert (= start!380038 b!4033260))

(assert (= (and start!380038 (is-Cons!43206 suffixResult!105)) b!4033240))

(assert (= (and start!380038 (is-Cons!43206 suffix!1299)) b!4033243))

(assert (= (and start!380038 (is-Cons!43206 newSuffix!27)) b!4033253))

(assert (= b!4033257 b!4033252))

(assert (= b!4033264 b!4033257))

(assert (= (and start!380038 (is-Cons!43208 rules!2999)) b!4033264))

(assert (= (and start!380038 (is-Cons!43206 newSuffixResult!27)) b!4033266))

(declare-fun m!4626269 () Bool)

(assert (=> b!4033262 m!4626269))

(declare-fun m!4626271 () Bool)

(assert (=> b!4033262 m!4626271))

(declare-fun m!4626273 () Bool)

(assert (=> b!4033262 m!4626273))

(declare-fun m!4626275 () Bool)

(assert (=> b!4033262 m!4626275))

(declare-fun m!4626277 () Bool)

(assert (=> start!380038 m!4626277))

(declare-fun m!4626279 () Bool)

(assert (=> b!4033251 m!4626279))

(declare-fun m!4626281 () Bool)

(assert (=> b!4033251 m!4626281))

(declare-fun m!4626283 () Bool)

(assert (=> b!4033247 m!4626283))

(declare-fun m!4626285 () Bool)

(assert (=> b!4033254 m!4626285))

(declare-fun m!4626287 () Bool)

(assert (=> b!4033254 m!4626287))

(declare-fun m!4626289 () Bool)

(assert (=> b!4033254 m!4626289))

(declare-fun m!4626291 () Bool)

(assert (=> b!4033254 m!4626291))

(declare-fun m!4626293 () Bool)

(assert (=> b!4033246 m!4626293))

(declare-fun m!4626295 () Bool)

(assert (=> b!4033246 m!4626295))

(declare-fun m!4626297 () Bool)

(assert (=> b!4033246 m!4626297))

(declare-fun m!4626299 () Bool)

(assert (=> b!4033246 m!4626299))

(declare-fun m!4626301 () Bool)

(assert (=> b!4033246 m!4626301))

(assert (=> b!4033246 m!4626299))

(declare-fun m!4626303 () Bool)

(assert (=> b!4033246 m!4626303))

(declare-fun m!4626305 () Bool)

(assert (=> b!4033246 m!4626305))

(declare-fun m!4626307 () Bool)

(assert (=> b!4033246 m!4626307))

(declare-fun m!4626309 () Bool)

(assert (=> b!4033265 m!4626309))

(declare-fun m!4626311 () Bool)

(assert (=> b!4033265 m!4626311))

(declare-fun m!4626313 () Bool)

(assert (=> b!4033265 m!4626313))

(declare-fun m!4626315 () Bool)

(assert (=> b!4033265 m!4626315))

(declare-fun m!4626317 () Bool)

(assert (=> b!4033258 m!4626317))

(declare-fun m!4626319 () Bool)

(assert (=> b!4033258 m!4626319))

(declare-fun m!4626321 () Bool)

(assert (=> b!4033258 m!4626321))

(declare-fun m!4626323 () Bool)

(assert (=> b!4033258 m!4626323))

(declare-fun m!4626325 () Bool)

(assert (=> b!4033259 m!4626325))

(declare-fun m!4626327 () Bool)

(assert (=> b!4033259 m!4626327))

(declare-fun m!4626329 () Bool)

(assert (=> b!4033256 m!4626329))

(declare-fun m!4626331 () Bool)

(assert (=> b!4033249 m!4626331))

(declare-fun m!4626333 () Bool)

(assert (=> b!4033249 m!4626333))

(declare-fun m!4626335 () Bool)

(assert (=> b!4033249 m!4626335))

(declare-fun m!4626337 () Bool)

(assert (=> b!4033249 m!4626337))

(declare-fun m!4626339 () Bool)

(assert (=> b!4033249 m!4626339))

(declare-fun m!4626341 () Bool)

(assert (=> b!4033249 m!4626341))

(assert (=> b!4033249 m!4626339))

(declare-fun m!4626343 () Bool)

(assert (=> b!4033249 m!4626343))

(declare-fun m!4626345 () Bool)

(assert (=> b!4033248 m!4626345))

(declare-fun m!4626347 () Bool)

(assert (=> b!4033248 m!4626347))

(declare-fun m!4626349 () Bool)

(assert (=> b!4033261 m!4626349))

(declare-fun m!4626351 () Bool)

(assert (=> b!4033261 m!4626351))

(declare-fun m!4626353 () Bool)

(assert (=> b!4033261 m!4626353))

(declare-fun m!4626355 () Bool)

(assert (=> b!4033261 m!4626355))

(declare-fun m!4626357 () Bool)

(assert (=> b!4033261 m!4626357))

(declare-fun m!4626359 () Bool)

(assert (=> b!4033239 m!4626359))

(declare-fun m!4626361 () Bool)

(assert (=> b!4033239 m!4626361))

(declare-fun m!4626363 () Bool)

(assert (=> b!4033239 m!4626363))

(declare-fun m!4626365 () Bool)

(assert (=> b!4033239 m!4626365))

(declare-fun m!4626367 () Bool)

(assert (=> b!4033263 m!4626367))

(declare-fun m!4626369 () Bool)

(assert (=> b!4033263 m!4626369))

(declare-fun m!4626371 () Bool)

(assert (=> b!4033244 m!4626371))

(declare-fun m!4626373 () Bool)

(assert (=> b!4033244 m!4626373))

(declare-fun m!4626375 () Bool)

(assert (=> b!4033244 m!4626375))

(assert (=> b!4033244 m!4626375))

(declare-fun m!4626377 () Bool)

(assert (=> b!4033244 m!4626377))

(declare-fun m!4626379 () Bool)

(assert (=> b!4033237 m!4626379))

(declare-fun m!4626381 () Bool)

(assert (=> b!4033250 m!4626381))

(declare-fun m!4626383 () Bool)

(assert (=> b!4033250 m!4626383))

(declare-fun m!4626385 () Bool)

(assert (=> b!4033250 m!4626385))

(declare-fun m!4626387 () Bool)

(assert (=> b!4033250 m!4626387))

(declare-fun m!4626389 () Bool)

(assert (=> b!4033260 m!4626389))

(declare-fun m!4626391 () Bool)

(assert (=> b!4033257 m!4626391))

(declare-fun m!4626393 () Bool)

(assert (=> b!4033257 m!4626393))

(declare-fun m!4626395 () Bool)

(assert (=> b!4033245 m!4626395))

(push 1)

(assert b_and!309945)

(assert (not b!4033247))

(assert (not b!4033248))

(assert (not b!4033251))

(assert (not b!4033254))

(assert tp_is_empty!20607)

(assert (not b!4033244))

(assert (not start!380038))

(assert (not b!4033249))

(assert (not b!4033263))

(assert (not b!4033239))

(assert (not b_next!113097))

(assert (not b!4033262))

(assert (not b!4033259))

(assert (not b!4033246))

(assert (not b!4033257))

(assert b_and!309943)

(assert (not b!4033253))

(assert (not b!4033250))

(assert b_and!309941)

(assert (not b!4033264))

(assert (not b_next!113101))

(assert b_and!309939)

(assert (not b!4033255))

(assert (not b!4033265))

(assert (not b!4033258))

(assert (not b_next!113099))

(assert (not b!4033237))

(assert (not b!4033256))

(assert (not b!4033260))

(assert (not b_next!113103))

(assert (not b!4033245))

(assert (not b!4033240))

(assert (not b!4033261))

(assert (not b!4033243))

(assert (not b!4033266))

(check-sat)

(pop 1)

(push 1)

(assert b_and!309945)

(assert b_and!309939)

(assert (not b_next!113099))

(assert (not b_next!113103))

(assert (not b_next!113097))

(assert b_and!309943)

(assert b_and!309941)

(assert (not b_next!113101))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1194688 () Bool)

(assert (=> d!1194688 (= (isEmpty!25782 rules!2999) (is-Nil!43208 rules!2999))))

(assert (=> b!4033247 d!1194688))

(declare-fun b!4033367 () Bool)

(declare-fun e!2502731 () Bool)

(declare-fun tail!6276 (List!43330) List!43330)

(assert (=> b!4033367 (= e!2502731 (isPrefix!4000 (tail!6276 newSuffix!27) (tail!6276 suffix!1299)))))

(declare-fun b!4033368 () Bool)

(declare-fun e!2502733 () Bool)

(assert (=> b!4033368 (= e!2502733 (>= (size!32294 suffix!1299) (size!32294 newSuffix!27)))))

(declare-fun b!4033366 () Bool)

(declare-fun res!1642183 () Bool)

(assert (=> b!4033366 (=> (not res!1642183) (not e!2502731))))

(declare-fun head!8544 (List!43330) C!23822)

(assert (=> b!4033366 (= res!1642183 (= (head!8544 newSuffix!27) (head!8544 suffix!1299)))))

(declare-fun b!4033365 () Bool)

(declare-fun e!2502732 () Bool)

(assert (=> b!4033365 (= e!2502732 e!2502731)))

(declare-fun res!1642184 () Bool)

(assert (=> b!4033365 (=> (not res!1642184) (not e!2502731))))

(assert (=> b!4033365 (= res!1642184 (not (is-Nil!43206 suffix!1299)))))

(declare-fun d!1194690 () Bool)

(assert (=> d!1194690 e!2502733))

(declare-fun res!1642185 () Bool)

(assert (=> d!1194690 (=> res!1642185 e!2502733)))

(declare-fun lt!1434592 () Bool)

(assert (=> d!1194690 (= res!1642185 (not lt!1434592))))

(assert (=> d!1194690 (= lt!1434592 e!2502732)))

(declare-fun res!1642182 () Bool)

(assert (=> d!1194690 (=> res!1642182 e!2502732)))

(assert (=> d!1194690 (= res!1642182 (is-Nil!43206 newSuffix!27))))

(assert (=> d!1194690 (= (isPrefix!4000 newSuffix!27 suffix!1299) lt!1434592)))

(assert (= (and d!1194690 (not res!1642182)) b!4033365))

(assert (= (and b!4033365 res!1642184) b!4033366))

(assert (= (and b!4033366 res!1642183) b!4033367))

(assert (= (and d!1194690 (not res!1642185)) b!4033368))

(declare-fun m!4626525 () Bool)

(assert (=> b!4033367 m!4626525))

(declare-fun m!4626527 () Bool)

(assert (=> b!4033367 m!4626527))

(assert (=> b!4033367 m!4626525))

(assert (=> b!4033367 m!4626527))

(declare-fun m!4626529 () Bool)

(assert (=> b!4033367 m!4626529))

(assert (=> b!4033368 m!4626345))

(assert (=> b!4033368 m!4626347))

(declare-fun m!4626531 () Bool)

(assert (=> b!4033366 m!4626531))

(declare-fun m!4626533 () Bool)

(assert (=> b!4033366 m!4626533))

(assert (=> b!4033237 d!1194690))

(declare-fun b!4033377 () Bool)

(declare-fun e!2502738 () List!43330)

(assert (=> b!4033377 (= e!2502738 suffixResult!105)))

(declare-fun lt!1434595 () List!43330)

(declare-fun b!4033380 () Bool)

(declare-fun e!2502739 () Bool)

(assert (=> b!4033380 (= e!2502739 (or (not (= suffixResult!105 Nil!43206)) (= lt!1434595 lt!1434439)))))

(declare-fun b!4033378 () Bool)

(assert (=> b!4033378 (= e!2502738 (Cons!43206 (h!48626 lt!1434439) (++!11315 (t!334357 lt!1434439) suffixResult!105)))))

(declare-fun b!4033379 () Bool)

(declare-fun res!1642191 () Bool)

(assert (=> b!4033379 (=> (not res!1642191) (not e!2502739))))

(assert (=> b!4033379 (= res!1642191 (= (size!32294 lt!1434595) (+ (size!32294 lt!1434439) (size!32294 suffixResult!105))))))

(declare-fun d!1194692 () Bool)

(assert (=> d!1194692 e!2502739))

(declare-fun res!1642190 () Bool)

(assert (=> d!1194692 (=> (not res!1642190) (not e!2502739))))

(declare-fun content!6561 (List!43330) (Set C!23822))

(assert (=> d!1194692 (= res!1642190 (= (content!6561 lt!1434595) (set.union (content!6561 lt!1434439) (content!6561 suffixResult!105))))))

(assert (=> d!1194692 (= lt!1434595 e!2502738)))

(declare-fun c!696610 () Bool)

(assert (=> d!1194692 (= c!696610 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194692 (= (++!11315 lt!1434439 suffixResult!105) lt!1434595)))

(assert (= (and d!1194692 c!696610) b!4033377))

(assert (= (and d!1194692 (not c!696610)) b!4033378))

(assert (= (and d!1194692 res!1642190) b!4033379))

(assert (= (and b!4033379 res!1642191) b!4033380))

(declare-fun m!4626535 () Bool)

(assert (=> b!4033378 m!4626535))

(declare-fun m!4626537 () Bool)

(assert (=> b!4033379 m!4626537))

(assert (=> b!4033379 m!4626371))

(declare-fun m!4626539 () Bool)

(assert (=> b!4033379 m!4626539))

(declare-fun m!4626541 () Bool)

(assert (=> d!1194692 m!4626541))

(declare-fun m!4626543 () Bool)

(assert (=> d!1194692 m!4626543))

(declare-fun m!4626545 () Bool)

(assert (=> d!1194692 m!4626545))

(assert (=> b!4033258 d!1194692))

(declare-fun d!1194694 () Bool)

(declare-fun e!2502742 () Bool)

(assert (=> d!1194694 e!2502742))

(declare-fun res!1642194 () Bool)

(assert (=> d!1194694 (=> (not res!1642194) (not e!2502742))))

(declare-fun semiInverseModEq!2949 (Int Int) Bool)

(assert (=> d!1194694 (= res!1642194 (semiInverseModEq!2949 (toChars!9300 (transformation!6913 (rule!9977 token!484))) (toValue!9441 (transformation!6913 (rule!9977 token!484)))))))

(declare-fun Unit!62388 () Unit!62383)

(assert (=> d!1194694 (= (lemmaInv!1122 (transformation!6913 (rule!9977 token!484))) Unit!62388)))

(declare-fun b!4033383 () Bool)

(declare-fun equivClasses!2848 (Int Int) Bool)

(assert (=> b!4033383 (= e!2502742 (equivClasses!2848 (toChars!9300 (transformation!6913 (rule!9977 token!484))) (toValue!9441 (transformation!6913 (rule!9977 token!484)))))))

(assert (= (and d!1194694 res!1642194) b!4033383))

(declare-fun m!4626547 () Bool)

(assert (=> d!1194694 m!4626547))

(declare-fun m!4626549 () Bool)

(assert (=> b!4033383 m!4626549))

(assert (=> b!4033258 d!1194694))

(declare-fun d!1194696 () Bool)

(declare-fun res!1642199 () Bool)

(declare-fun e!2502745 () Bool)

(assert (=> d!1194696 (=> (not res!1642199) (not e!2502745))))

(declare-fun validRegex!5341 (Regex!11818) Bool)

(assert (=> d!1194696 (= res!1642199 (validRegex!5341 (regex!6913 (rule!9977 token!484))))))

(assert (=> d!1194696 (= (ruleValid!2843 thiss!21717 (rule!9977 token!484)) e!2502745)))

(declare-fun b!4033388 () Bool)

(declare-fun res!1642200 () Bool)

(assert (=> b!4033388 (=> (not res!1642200) (not e!2502745))))

(declare-fun nullable!4141 (Regex!11818) Bool)

(assert (=> b!4033388 (= res!1642200 (not (nullable!4141 (regex!6913 (rule!9977 token!484)))))))

(declare-fun b!4033389 () Bool)

(assert (=> b!4033389 (= e!2502745 (not (= (tag!7773 (rule!9977 token!484)) (String!49436 ""))))))

(assert (= (and d!1194696 res!1642199) b!4033388))

(assert (= (and b!4033388 res!1642200) b!4033389))

(declare-fun m!4626551 () Bool)

(assert (=> d!1194696 m!4626551))

(declare-fun m!4626553 () Bool)

(assert (=> b!4033388 m!4626553))

(assert (=> b!4033258 d!1194696))

(declare-fun d!1194698 () Bool)

(assert (=> d!1194698 (ruleValid!2843 thiss!21717 (rule!9977 token!484))))

(declare-fun lt!1434598 () Unit!62383)

(declare-fun choose!24409 (LexerInterface!6502 Rule!13626 List!43332) Unit!62383)

(assert (=> d!1194698 (= lt!1434598 (choose!24409 thiss!21717 (rule!9977 token!484) rules!2999))))

(assert (=> d!1194698 (contains!8577 rules!2999 (rule!9977 token!484))))

(assert (=> d!1194698 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1913 thiss!21717 (rule!9977 token!484) rules!2999) lt!1434598)))

(declare-fun bs!590367 () Bool)

(assert (= bs!590367 d!1194698))

(assert (=> bs!590367 m!4626321))

(declare-fun m!4626555 () Bool)

(assert (=> bs!590367 m!4626555))

(declare-fun m!4626557 () Bool)

(assert (=> bs!590367 m!4626557))

(assert (=> b!4033258 d!1194698))

(declare-fun d!1194700 () Bool)

(declare-fun lt!1434601 () Int)

(assert (=> d!1194700 (>= lt!1434601 0)))

(declare-fun e!2502748 () Int)

(assert (=> d!1194700 (= lt!1434601 e!2502748)))

(declare-fun c!696613 () Bool)

(assert (=> d!1194700 (= c!696613 (is-Nil!43206 (originalCharacters!7513 token!484)))))

(assert (=> d!1194700 (= (size!32294 (originalCharacters!7513 token!484)) lt!1434601)))

(declare-fun b!4033394 () Bool)

(assert (=> b!4033394 (= e!2502748 0)))

(declare-fun b!4033395 () Bool)

(assert (=> b!4033395 (= e!2502748 (+ 1 (size!32294 (t!334357 (originalCharacters!7513 token!484)))))))

(assert (= (and d!1194700 c!696613) b!4033394))

(assert (= (and d!1194700 (not c!696613)) b!4033395))

(declare-fun m!4626559 () Bool)

(assert (=> b!4033395 m!4626559))

(assert (=> b!4033256 d!1194700))

(declare-fun d!1194702 () Bool)

(assert (=> d!1194702 (= (inv!57722 (tag!7773 (h!48628 rules!2999))) (= (mod (str.len (value!217655 (tag!7773 (h!48628 rules!2999)))) 2) 0))))

(assert (=> b!4033257 d!1194702))

(declare-fun d!1194704 () Bool)

(declare-fun res!1642203 () Bool)

(declare-fun e!2502751 () Bool)

(assert (=> d!1194704 (=> (not res!1642203) (not e!2502751))))

(assert (=> d!1194704 (= res!1642203 (semiInverseModEq!2949 (toChars!9300 (transformation!6913 (h!48628 rules!2999))) (toValue!9441 (transformation!6913 (h!48628 rules!2999)))))))

(assert (=> d!1194704 (= (inv!57725 (transformation!6913 (h!48628 rules!2999))) e!2502751)))

(declare-fun b!4033398 () Bool)

(assert (=> b!4033398 (= e!2502751 (equivClasses!2848 (toChars!9300 (transformation!6913 (h!48628 rules!2999))) (toValue!9441 (transformation!6913 (h!48628 rules!2999)))))))

(assert (= (and d!1194704 res!1642203) b!4033398))

(declare-fun m!4626561 () Bool)

(assert (=> d!1194704 m!4626561))

(declare-fun m!4626563 () Bool)

(assert (=> b!4033398 m!4626563))

(assert (=> b!4033257 d!1194704))

(declare-fun d!1194706 () Bool)

(assert (=> d!1194706 (ruleValid!2843 thiss!21717 (rule!9977 (_1!24278 (v!39718 lt!1434447))))))

(declare-fun lt!1434602 () Unit!62383)

(assert (=> d!1194706 (= lt!1434602 (choose!24409 thiss!21717 (rule!9977 (_1!24278 (v!39718 lt!1434447))) rules!2999))))

(assert (=> d!1194706 (contains!8577 rules!2999 (rule!9977 (_1!24278 (v!39718 lt!1434447))))))

(assert (=> d!1194706 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1913 thiss!21717 (rule!9977 (_1!24278 (v!39718 lt!1434447))) rules!2999) lt!1434602)))

(declare-fun bs!590368 () Bool)

(assert (= bs!590368 d!1194706))

(assert (=> bs!590368 m!4626305))

(declare-fun m!4626565 () Bool)

(assert (=> bs!590368 m!4626565))

(assert (=> bs!590368 m!4626303))

(assert (=> b!4033246 d!1194706))

(declare-fun d!1194708 () Bool)

(declare-fun res!1642204 () Bool)

(declare-fun e!2502752 () Bool)

(assert (=> d!1194708 (=> (not res!1642204) (not e!2502752))))

(assert (=> d!1194708 (= res!1642204 (validRegex!5341 (regex!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447))))))))

(assert (=> d!1194708 (= (ruleValid!2843 thiss!21717 (rule!9977 (_1!24278 (v!39718 lt!1434447)))) e!2502752)))

(declare-fun b!4033399 () Bool)

(declare-fun res!1642205 () Bool)

(assert (=> b!4033399 (=> (not res!1642205) (not e!2502752))))

(assert (=> b!4033399 (= res!1642205 (not (nullable!4141 (regex!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447)))))))))

(declare-fun b!4033400 () Bool)

(assert (=> b!4033400 (= e!2502752 (not (= (tag!7773 (rule!9977 (_1!24278 (v!39718 lt!1434447)))) (String!49436 ""))))))

(assert (= (and d!1194708 res!1642204) b!4033399))

(assert (= (and b!4033399 res!1642205) b!4033400))

(declare-fun m!4626567 () Bool)

(assert (=> d!1194708 m!4626567))

(declare-fun m!4626569 () Bool)

(assert (=> b!4033399 m!4626569))

(assert (=> b!4033246 d!1194708))

(declare-fun d!1194710 () Bool)

(assert (=> d!1194710 (= (size!32293 token!484) (size!32294 (originalCharacters!7513 token!484)))))

(declare-fun Unit!62389 () Unit!62383)

(assert (=> d!1194710 (= (lemmaCharactersSize!1432 token!484) Unit!62389)))

(declare-fun bs!590369 () Bool)

(assert (= bs!590369 d!1194710))

(assert (=> bs!590369 m!4626329))

(assert (=> b!4033246 d!1194710))

(declare-fun d!1194712 () Bool)

(declare-fun e!2502753 () Bool)

(assert (=> d!1194712 e!2502753))

(declare-fun res!1642206 () Bool)

(assert (=> d!1194712 (=> (not res!1642206) (not e!2502753))))

(assert (=> d!1194712 (= res!1642206 (semiInverseModEq!2949 (toChars!9300 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447))))) (toValue!9441 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447)))))))))

(declare-fun Unit!62390 () Unit!62383)

(assert (=> d!1194712 (= (lemmaInv!1122 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447))))) Unit!62390)))

(declare-fun b!4033401 () Bool)

(assert (=> b!4033401 (= e!2502753 (equivClasses!2848 (toChars!9300 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447))))) (toValue!9441 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447)))))))))

(assert (= (and d!1194712 res!1642206) b!4033401))

(declare-fun m!4626571 () Bool)

(assert (=> d!1194712 m!4626571))

(declare-fun m!4626573 () Bool)

(assert (=> b!4033401 m!4626573))

(assert (=> b!4033246 d!1194712))

(declare-fun d!1194714 () Bool)

(declare-fun lt!1434605 () BalanceConc!25842)

(assert (=> d!1194714 (= (list!16077 lt!1434605) (originalCharacters!7513 (_1!24278 (v!39718 lt!1434447))))))

(declare-fun dynLambda!18311 (Int TokenValue!7143) BalanceConc!25842)

(assert (=> d!1194714 (= lt!1434605 (dynLambda!18311 (toChars!9300 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447))))) (value!217656 (_1!24278 (v!39718 lt!1434447)))))))

(assert (=> d!1194714 (= (charsOf!4729 (_1!24278 (v!39718 lt!1434447))) lt!1434605)))

(declare-fun b_lambda!117659 () Bool)

(assert (=> (not b_lambda!117659) (not d!1194714)))

(declare-fun tb!242269 () Bool)

(declare-fun t!334364 () Bool)

(assert (=> (and b!4033252 (= (toChars!9300 (transformation!6913 (h!48628 rules!2999))) (toChars!9300 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447)))))) t!334364) tb!242269))

(declare-fun b!4033406 () Bool)

(declare-fun e!2502756 () Bool)

(declare-fun tp!1225643 () Bool)

(declare-fun inv!57729 (Conc!13124) Bool)

(assert (=> b!4033406 (= e!2502756 (and (inv!57729 (c!696603 (dynLambda!18311 (toChars!9300 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447))))) (value!217656 (_1!24278 (v!39718 lt!1434447)))))) tp!1225643))))

(declare-fun result!293674 () Bool)

(declare-fun inv!57730 (BalanceConc!25842) Bool)

(assert (=> tb!242269 (= result!293674 (and (inv!57730 (dynLambda!18311 (toChars!9300 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447))))) (value!217656 (_1!24278 (v!39718 lt!1434447))))) e!2502756))))

(assert (= tb!242269 b!4033406))

(declare-fun m!4626575 () Bool)

(assert (=> b!4033406 m!4626575))

(declare-fun m!4626577 () Bool)

(assert (=> tb!242269 m!4626577))

(assert (=> d!1194714 t!334364))

(declare-fun b_and!309955 () Bool)

(assert (= b_and!309941 (and (=> t!334364 result!293674) b_and!309955)))

(declare-fun t!334366 () Bool)

(declare-fun tb!242271 () Bool)

(assert (=> (and b!4033241 (= (toChars!9300 (transformation!6913 (rule!9977 token!484))) (toChars!9300 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447)))))) t!334366) tb!242271))

(declare-fun result!293678 () Bool)

(assert (= result!293678 result!293674))

(assert (=> d!1194714 t!334366))

(declare-fun b_and!309957 () Bool)

(assert (= b_and!309945 (and (=> t!334366 result!293678) b_and!309957)))

(declare-fun m!4626579 () Bool)

(assert (=> d!1194714 m!4626579))

(declare-fun m!4626581 () Bool)

(assert (=> d!1194714 m!4626581))

(assert (=> b!4033246 d!1194714))

(declare-fun d!1194718 () Bool)

(assert (=> d!1194718 (= (size!32293 (_1!24278 (v!39718 lt!1434447))) (size!32294 (originalCharacters!7513 (_1!24278 (v!39718 lt!1434447)))))))

(declare-fun Unit!62391 () Unit!62383)

(assert (=> d!1194718 (= (lemmaCharactersSize!1432 (_1!24278 (v!39718 lt!1434447))) Unit!62391)))

(declare-fun bs!590370 () Bool)

(assert (= bs!590370 d!1194718))

(declare-fun m!4626583 () Bool)

(assert (=> bs!590370 m!4626583))

(assert (=> b!4033246 d!1194718))

(declare-fun d!1194720 () Bool)

(declare-fun list!16079 (Conc!13124) List!43330)

(assert (=> d!1194720 (= (list!16077 (charsOf!4729 (_1!24278 (v!39718 lt!1434447)))) (list!16079 (c!696603 (charsOf!4729 (_1!24278 (v!39718 lt!1434447))))))))

(declare-fun bs!590371 () Bool)

(assert (= bs!590371 d!1194720))

(declare-fun m!4626585 () Bool)

(assert (=> bs!590371 m!4626585))

(assert (=> b!4033246 d!1194720))

(declare-fun d!1194722 () Bool)

(declare-fun lt!1434610 () Bool)

(declare-fun content!6562 (List!43332) (Set Rule!13626))

(assert (=> d!1194722 (= lt!1434610 (set.member (rule!9977 (_1!24278 (v!39718 lt!1434447))) (content!6562 rules!2999)))))

(declare-fun e!2502764 () Bool)

(assert (=> d!1194722 (= lt!1434610 e!2502764)))

(declare-fun res!1642211 () Bool)

(assert (=> d!1194722 (=> (not res!1642211) (not e!2502764))))

(assert (=> d!1194722 (= res!1642211 (is-Cons!43208 rules!2999))))

(assert (=> d!1194722 (= (contains!8577 rules!2999 (rule!9977 (_1!24278 (v!39718 lt!1434447)))) lt!1434610)))

(declare-fun b!4033415 () Bool)

(declare-fun e!2502763 () Bool)

(assert (=> b!4033415 (= e!2502764 e!2502763)))

(declare-fun res!1642212 () Bool)

(assert (=> b!4033415 (=> res!1642212 e!2502763)))

(assert (=> b!4033415 (= res!1642212 (= (h!48628 rules!2999) (rule!9977 (_1!24278 (v!39718 lt!1434447)))))))

(declare-fun b!4033416 () Bool)

(assert (=> b!4033416 (= e!2502763 (contains!8577 (t!334359 rules!2999) (rule!9977 (_1!24278 (v!39718 lt!1434447)))))))

(assert (= (and d!1194722 res!1642211) b!4033415))

(assert (= (and b!4033415 (not res!1642212)) b!4033416))

(declare-fun m!4626587 () Bool)

(assert (=> d!1194722 m!4626587))

(declare-fun m!4626589 () Bool)

(assert (=> d!1194722 m!4626589))

(declare-fun m!4626591 () Bool)

(assert (=> b!4033416 m!4626591))

(assert (=> b!4033246 d!1194722))

(declare-fun d!1194724 () Bool)

(declare-fun lt!1434611 () Int)

(assert (=> d!1194724 (>= lt!1434611 0)))

(declare-fun e!2502765 () Int)

(assert (=> d!1194724 (= lt!1434611 e!2502765)))

(declare-fun c!696616 () Bool)

(assert (=> d!1194724 (= c!696616 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194724 (= (size!32294 lt!1434439) lt!1434611)))

(declare-fun b!4033417 () Bool)

(assert (=> b!4033417 (= e!2502765 0)))

(declare-fun b!4033418 () Bool)

(assert (=> b!4033418 (= e!2502765 (+ 1 (size!32294 (t!334357 lt!1434439))))))

(assert (= (and d!1194724 c!696616) b!4033417))

(assert (= (and d!1194724 (not c!696616)) b!4033418))

(declare-fun m!4626593 () Bool)

(assert (=> b!4033418 m!4626593))

(assert (=> b!4033244 d!1194724))

(declare-fun d!1194726 () Bool)

(declare-fun lt!1434612 () Int)

(assert (=> d!1194726 (>= lt!1434612 0)))

(declare-fun e!2502766 () Int)

(assert (=> d!1194726 (= lt!1434612 e!2502766)))

(declare-fun c!696617 () Bool)

(assert (=> d!1194726 (= c!696617 (is-Nil!43206 prefix!494))))

(assert (=> d!1194726 (= (size!32294 prefix!494) lt!1434612)))

(declare-fun b!4033419 () Bool)

(assert (=> b!4033419 (= e!2502766 0)))

(declare-fun b!4033420 () Bool)

(assert (=> b!4033420 (= e!2502766 (+ 1 (size!32294 (t!334357 prefix!494))))))

(assert (= (and d!1194726 c!696617) b!4033419))

(assert (= (and d!1194726 (not c!696617)) b!4033420))

(declare-fun m!4626595 () Bool)

(assert (=> b!4033420 m!4626595))

(assert (=> b!4033244 d!1194726))

(declare-fun d!1194728 () Bool)

(assert (=> d!1194728 (= (list!16077 (charsOf!4729 token!484)) (list!16079 (c!696603 (charsOf!4729 token!484))))))

(declare-fun bs!590372 () Bool)

(assert (= bs!590372 d!1194728))

(declare-fun m!4626597 () Bool)

(assert (=> bs!590372 m!4626597))

(assert (=> b!4033244 d!1194728))

(declare-fun d!1194730 () Bool)

(declare-fun lt!1434613 () BalanceConc!25842)

(assert (=> d!1194730 (= (list!16077 lt!1434613) (originalCharacters!7513 token!484))))

(assert (=> d!1194730 (= lt!1434613 (dynLambda!18311 (toChars!9300 (transformation!6913 (rule!9977 token!484))) (value!217656 token!484)))))

(assert (=> d!1194730 (= (charsOf!4729 token!484) lt!1434613)))

(declare-fun b_lambda!117661 () Bool)

(assert (=> (not b_lambda!117661) (not d!1194730)))

(declare-fun t!334368 () Bool)

(declare-fun tb!242273 () Bool)

(assert (=> (and b!4033252 (= (toChars!9300 (transformation!6913 (h!48628 rules!2999))) (toChars!9300 (transformation!6913 (rule!9977 token!484)))) t!334368) tb!242273))

(declare-fun b!4033421 () Bool)

(declare-fun e!2502767 () Bool)

(declare-fun tp!1225644 () Bool)

(assert (=> b!4033421 (= e!2502767 (and (inv!57729 (c!696603 (dynLambda!18311 (toChars!9300 (transformation!6913 (rule!9977 token!484))) (value!217656 token!484)))) tp!1225644))))

(declare-fun result!293680 () Bool)

(assert (=> tb!242273 (= result!293680 (and (inv!57730 (dynLambda!18311 (toChars!9300 (transformation!6913 (rule!9977 token!484))) (value!217656 token!484))) e!2502767))))

(assert (= tb!242273 b!4033421))

(declare-fun m!4626599 () Bool)

(assert (=> b!4033421 m!4626599))

(declare-fun m!4626601 () Bool)

(assert (=> tb!242273 m!4626601))

(assert (=> d!1194730 t!334368))

(declare-fun b_and!309959 () Bool)

(assert (= b_and!309955 (and (=> t!334368 result!293680) b_and!309959)))

(declare-fun t!334370 () Bool)

(declare-fun tb!242275 () Bool)

(assert (=> (and b!4033241 (= (toChars!9300 (transformation!6913 (rule!9977 token!484))) (toChars!9300 (transformation!6913 (rule!9977 token!484)))) t!334370) tb!242275))

(declare-fun result!293682 () Bool)

(assert (= result!293682 result!293680))

(assert (=> d!1194730 t!334370))

(declare-fun b_and!309961 () Bool)

(assert (= b_and!309957 (and (=> t!334370 result!293682) b_and!309961)))

(declare-fun m!4626603 () Bool)

(assert (=> d!1194730 m!4626603))

(declare-fun m!4626605 () Bool)

(assert (=> d!1194730 m!4626605))

(assert (=> b!4033244 d!1194730))

(declare-fun d!1194732 () Bool)

(declare-fun res!1642215 () Bool)

(declare-fun e!2502772 () Bool)

(assert (=> d!1194732 (=> (not res!1642215) (not e!2502772))))

(declare-fun rulesValid!2683 (LexerInterface!6502 List!43332) Bool)

(assert (=> d!1194732 (= res!1642215 (rulesValid!2683 thiss!21717 rules!2999))))

(assert (=> d!1194732 (= (rulesInvariant!5845 thiss!21717 rules!2999) e!2502772)))

(declare-fun b!4033428 () Bool)

(declare-datatypes ((List!43336 0))(
  ( (Nil!43212) (Cons!43212 (h!48632 String!49435) (t!334389 List!43336)) )
))
(declare-fun noDuplicateTag!2684 (LexerInterface!6502 List!43332 List!43336) Bool)

(assert (=> b!4033428 (= e!2502772 (noDuplicateTag!2684 thiss!21717 rules!2999 Nil!43212))))

(assert (= (and d!1194732 res!1642215) b!4033428))

(declare-fun m!4626611 () Bool)

(assert (=> d!1194732 m!4626611))

(declare-fun m!4626613 () Bool)

(assert (=> b!4033428 m!4626613))

(assert (=> b!4033245 d!1194732))

(declare-fun b!4033429 () Bool)

(declare-fun e!2502773 () List!43330)

(assert (=> b!4033429 (= e!2502773 lt!1434457)))

(declare-fun e!2502774 () Bool)

(declare-fun b!4033432 () Bool)

(declare-fun lt!1434616 () List!43330)

(assert (=> b!4033432 (= e!2502774 (or (not (= lt!1434457 Nil!43206)) (= lt!1434616 lt!1434439)))))

(declare-fun b!4033430 () Bool)

(assert (=> b!4033430 (= e!2502773 (Cons!43206 (h!48626 lt!1434439) (++!11315 (t!334357 lt!1434439) lt!1434457)))))

(declare-fun b!4033431 () Bool)

(declare-fun res!1642217 () Bool)

(assert (=> b!4033431 (=> (not res!1642217) (not e!2502774))))

(assert (=> b!4033431 (= res!1642217 (= (size!32294 lt!1434616) (+ (size!32294 lt!1434439) (size!32294 lt!1434457))))))

(declare-fun d!1194738 () Bool)

(assert (=> d!1194738 e!2502774))

(declare-fun res!1642216 () Bool)

(assert (=> d!1194738 (=> (not res!1642216) (not e!2502774))))

(assert (=> d!1194738 (= res!1642216 (= (content!6561 lt!1434616) (set.union (content!6561 lt!1434439) (content!6561 lt!1434457))))))

(assert (=> d!1194738 (= lt!1434616 e!2502773)))

(declare-fun c!696620 () Bool)

(assert (=> d!1194738 (= c!696620 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194738 (= (++!11315 lt!1434439 lt!1434457) lt!1434616)))

(assert (= (and d!1194738 c!696620) b!4033429))

(assert (= (and d!1194738 (not c!696620)) b!4033430))

(assert (= (and d!1194738 res!1642216) b!4033431))

(assert (= (and b!4033431 res!1642217) b!4033432))

(declare-fun m!4626615 () Bool)

(assert (=> b!4033430 m!4626615))

(declare-fun m!4626617 () Bool)

(assert (=> b!4033431 m!4626617))

(assert (=> b!4033431 m!4626371))

(declare-fun m!4626619 () Bool)

(assert (=> b!4033431 m!4626619))

(declare-fun m!4626621 () Bool)

(assert (=> d!1194738 m!4626621))

(assert (=> d!1194738 m!4626543))

(declare-fun m!4626623 () Bool)

(assert (=> d!1194738 m!4626623))

(assert (=> b!4033265 d!1194738))

(declare-fun d!1194740 () Bool)

(declare-fun lt!1434619 () List!43330)

(assert (=> d!1194740 (= (++!11315 lt!1434439 lt!1434619) lt!1434434)))

(declare-fun e!2502777 () List!43330)

(assert (=> d!1194740 (= lt!1434619 e!2502777)))

(declare-fun c!696623 () Bool)

(assert (=> d!1194740 (= c!696623 (is-Cons!43206 lt!1434439))))

(assert (=> d!1194740 (>= (size!32294 lt!1434434) (size!32294 lt!1434439))))

(assert (=> d!1194740 (= (getSuffix!2417 lt!1434434 lt!1434439) lt!1434619)))

(declare-fun b!4033437 () Bool)

(assert (=> b!4033437 (= e!2502777 (getSuffix!2417 (tail!6276 lt!1434434) (t!334357 lt!1434439)))))

(declare-fun b!4033438 () Bool)

(assert (=> b!4033438 (= e!2502777 lt!1434434)))

(assert (= (and d!1194740 c!696623) b!4033437))

(assert (= (and d!1194740 (not c!696623)) b!4033438))

(declare-fun m!4626625 () Bool)

(assert (=> d!1194740 m!4626625))

(declare-fun m!4626627 () Bool)

(assert (=> d!1194740 m!4626627))

(assert (=> d!1194740 m!4626371))

(declare-fun m!4626629 () Bool)

(assert (=> b!4033437 m!4626629))

(assert (=> b!4033437 m!4626629))

(declare-fun m!4626631 () Bool)

(assert (=> b!4033437 m!4626631))

(assert (=> b!4033265 d!1194740))

(declare-fun b!4033441 () Bool)

(declare-fun e!2502778 () Bool)

(assert (=> b!4033441 (= e!2502778 (isPrefix!4000 (tail!6276 lt!1434434) (tail!6276 lt!1434434)))))

(declare-fun b!4033442 () Bool)

(declare-fun e!2502780 () Bool)

(assert (=> b!4033442 (= e!2502780 (>= (size!32294 lt!1434434) (size!32294 lt!1434434)))))

(declare-fun b!4033440 () Bool)

(declare-fun res!1642219 () Bool)

(assert (=> b!4033440 (=> (not res!1642219) (not e!2502778))))

(assert (=> b!4033440 (= res!1642219 (= (head!8544 lt!1434434) (head!8544 lt!1434434)))))

(declare-fun b!4033439 () Bool)

(declare-fun e!2502779 () Bool)

(assert (=> b!4033439 (= e!2502779 e!2502778)))

(declare-fun res!1642220 () Bool)

(assert (=> b!4033439 (=> (not res!1642220) (not e!2502778))))

(assert (=> b!4033439 (= res!1642220 (not (is-Nil!43206 lt!1434434)))))

(declare-fun d!1194742 () Bool)

(assert (=> d!1194742 e!2502780))

(declare-fun res!1642221 () Bool)

(assert (=> d!1194742 (=> res!1642221 e!2502780)))

(declare-fun lt!1434620 () Bool)

(assert (=> d!1194742 (= res!1642221 (not lt!1434620))))

(assert (=> d!1194742 (= lt!1434620 e!2502779)))

(declare-fun res!1642218 () Bool)

(assert (=> d!1194742 (=> res!1642218 e!2502779)))

(assert (=> d!1194742 (= res!1642218 (is-Nil!43206 lt!1434434))))

(assert (=> d!1194742 (= (isPrefix!4000 lt!1434434 lt!1434434) lt!1434620)))

(assert (= (and d!1194742 (not res!1642218)) b!4033439))

(assert (= (and b!4033439 res!1642220) b!4033440))

(assert (= (and b!4033440 res!1642219) b!4033441))

(assert (= (and d!1194742 (not res!1642221)) b!4033442))

(assert (=> b!4033441 m!4626629))

(assert (=> b!4033441 m!4626629))

(assert (=> b!4033441 m!4626629))

(assert (=> b!4033441 m!4626629))

(declare-fun m!4626633 () Bool)

(assert (=> b!4033441 m!4626633))

(assert (=> b!4033442 m!4626627))

(assert (=> b!4033442 m!4626627))

(declare-fun m!4626635 () Bool)

(assert (=> b!4033440 m!4626635))

(assert (=> b!4033440 m!4626635))

(assert (=> b!4033265 d!1194742))

(declare-fun d!1194744 () Bool)

(assert (=> d!1194744 (isPrefix!4000 lt!1434434 lt!1434434)))

(declare-fun lt!1434623 () Unit!62383)

(declare-fun choose!24410 (List!43330 List!43330) Unit!62383)

(assert (=> d!1194744 (= lt!1434623 (choose!24410 lt!1434434 lt!1434434))))

(assert (=> d!1194744 (= (lemmaIsPrefixRefl!2567 lt!1434434 lt!1434434) lt!1434623)))

(declare-fun bs!590373 () Bool)

(assert (= bs!590373 d!1194744))

(assert (=> bs!590373 m!4626313))

(declare-fun m!4626637 () Bool)

(assert (=> bs!590373 m!4626637))

(assert (=> b!4033265 d!1194744))

(declare-fun b!4033443 () Bool)

(declare-fun e!2502781 () List!43330)

(assert (=> b!4033443 (= e!2502781 lt!1434438)))

(declare-fun e!2502782 () Bool)

(declare-fun lt!1434624 () List!43330)

(declare-fun b!4033446 () Bool)

(assert (=> b!4033446 (= e!2502782 (or (not (= lt!1434438 Nil!43206)) (= lt!1434624 lt!1434439)))))

(declare-fun b!4033444 () Bool)

(assert (=> b!4033444 (= e!2502781 (Cons!43206 (h!48626 lt!1434439) (++!11315 (t!334357 lt!1434439) lt!1434438)))))

(declare-fun b!4033445 () Bool)

(declare-fun res!1642223 () Bool)

(assert (=> b!4033445 (=> (not res!1642223) (not e!2502782))))

(assert (=> b!4033445 (= res!1642223 (= (size!32294 lt!1434624) (+ (size!32294 lt!1434439) (size!32294 lt!1434438))))))

(declare-fun d!1194746 () Bool)

(assert (=> d!1194746 e!2502782))

(declare-fun res!1642222 () Bool)

(assert (=> d!1194746 (=> (not res!1642222) (not e!2502782))))

(assert (=> d!1194746 (= res!1642222 (= (content!6561 lt!1434624) (set.union (content!6561 lt!1434439) (content!6561 lt!1434438))))))

(assert (=> d!1194746 (= lt!1434624 e!2502781)))

(declare-fun c!696624 () Bool)

(assert (=> d!1194746 (= c!696624 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194746 (= (++!11315 lt!1434439 lt!1434438) lt!1434624)))

(assert (= (and d!1194746 c!696624) b!4033443))

(assert (= (and d!1194746 (not c!696624)) b!4033444))

(assert (= (and d!1194746 res!1642222) b!4033445))

(assert (= (and b!4033445 res!1642223) b!4033446))

(declare-fun m!4626639 () Bool)

(assert (=> b!4033444 m!4626639))

(declare-fun m!4626641 () Bool)

(assert (=> b!4033445 m!4626641))

(assert (=> b!4033445 m!4626371))

(declare-fun m!4626643 () Bool)

(assert (=> b!4033445 m!4626643))

(declare-fun m!4626645 () Bool)

(assert (=> d!1194746 m!4626645))

(assert (=> d!1194746 m!4626543))

(declare-fun m!4626647 () Bool)

(assert (=> d!1194746 m!4626647))

(assert (=> b!4033254 d!1194746))

(declare-fun b!4033447 () Bool)

(declare-fun e!2502783 () List!43330)

(assert (=> b!4033447 (= e!2502783 suffix!1299)))

(declare-fun e!2502784 () Bool)

(declare-fun b!4033450 () Bool)

(declare-fun lt!1434625 () List!43330)

(assert (=> b!4033450 (= e!2502784 (or (not (= suffix!1299 Nil!43206)) (= lt!1434625 lt!1434472)))))

(declare-fun b!4033448 () Bool)

(assert (=> b!4033448 (= e!2502783 (Cons!43206 (h!48626 lt!1434472) (++!11315 (t!334357 lt!1434472) suffix!1299)))))

(declare-fun b!4033449 () Bool)

(declare-fun res!1642225 () Bool)

(assert (=> b!4033449 (=> (not res!1642225) (not e!2502784))))

(assert (=> b!4033449 (= res!1642225 (= (size!32294 lt!1434625) (+ (size!32294 lt!1434472) (size!32294 suffix!1299))))))

(declare-fun d!1194748 () Bool)

(assert (=> d!1194748 e!2502784))

(declare-fun res!1642224 () Bool)

(assert (=> d!1194748 (=> (not res!1642224) (not e!2502784))))

(assert (=> d!1194748 (= res!1642224 (= (content!6561 lt!1434625) (set.union (content!6561 lt!1434472) (content!6561 suffix!1299))))))

(assert (=> d!1194748 (= lt!1434625 e!2502783)))

(declare-fun c!696625 () Bool)

(assert (=> d!1194748 (= c!696625 (is-Nil!43206 lt!1434472))))

(assert (=> d!1194748 (= (++!11315 lt!1434472 suffix!1299) lt!1434625)))

(assert (= (and d!1194748 c!696625) b!4033447))

(assert (= (and d!1194748 (not c!696625)) b!4033448))

(assert (= (and d!1194748 res!1642224) b!4033449))

(assert (= (and b!4033449 res!1642225) b!4033450))

(declare-fun m!4626649 () Bool)

(assert (=> b!4033448 m!4626649))

(declare-fun m!4626651 () Bool)

(assert (=> b!4033449 m!4626651))

(declare-fun m!4626653 () Bool)

(assert (=> b!4033449 m!4626653))

(assert (=> b!4033449 m!4626345))

(declare-fun m!4626655 () Bool)

(assert (=> d!1194748 m!4626655))

(declare-fun m!4626657 () Bool)

(assert (=> d!1194748 m!4626657))

(declare-fun m!4626659 () Bool)

(assert (=> d!1194748 m!4626659))

(assert (=> b!4033254 d!1194748))

(declare-fun b!4033451 () Bool)

(declare-fun e!2502785 () List!43330)

(assert (=> b!4033451 (= e!2502785 suffix!1299)))

(declare-fun e!2502786 () Bool)

(declare-fun lt!1434626 () List!43330)

(declare-fun b!4033454 () Bool)

(assert (=> b!4033454 (= e!2502786 (or (not (= suffix!1299 Nil!43206)) (= lt!1434626 lt!1434458)))))

(declare-fun b!4033452 () Bool)

(assert (=> b!4033452 (= e!2502785 (Cons!43206 (h!48626 lt!1434458) (++!11315 (t!334357 lt!1434458) suffix!1299)))))

(declare-fun b!4033453 () Bool)

(declare-fun res!1642227 () Bool)

(assert (=> b!4033453 (=> (not res!1642227) (not e!2502786))))

(assert (=> b!4033453 (= res!1642227 (= (size!32294 lt!1434626) (+ (size!32294 lt!1434458) (size!32294 suffix!1299))))))

(declare-fun d!1194750 () Bool)

(assert (=> d!1194750 e!2502786))

(declare-fun res!1642226 () Bool)

(assert (=> d!1194750 (=> (not res!1642226) (not e!2502786))))

(assert (=> d!1194750 (= res!1642226 (= (content!6561 lt!1434626) (set.union (content!6561 lt!1434458) (content!6561 suffix!1299))))))

(assert (=> d!1194750 (= lt!1434626 e!2502785)))

(declare-fun c!696626 () Bool)

(assert (=> d!1194750 (= c!696626 (is-Nil!43206 lt!1434458))))

(assert (=> d!1194750 (= (++!11315 lt!1434458 suffix!1299) lt!1434626)))

(assert (= (and d!1194750 c!696626) b!4033451))

(assert (= (and d!1194750 (not c!696626)) b!4033452))

(assert (= (and d!1194750 res!1642226) b!4033453))

(assert (= (and b!4033453 res!1642227) b!4033454))

(declare-fun m!4626661 () Bool)

(assert (=> b!4033452 m!4626661))

(declare-fun m!4626663 () Bool)

(assert (=> b!4033453 m!4626663))

(declare-fun m!4626665 () Bool)

(assert (=> b!4033453 m!4626665))

(assert (=> b!4033453 m!4626345))

(declare-fun m!4626667 () Bool)

(assert (=> d!1194750 m!4626667))

(declare-fun m!4626669 () Bool)

(assert (=> d!1194750 m!4626669))

(assert (=> d!1194750 m!4626659))

(assert (=> b!4033254 d!1194750))

(declare-fun d!1194752 () Bool)

(assert (=> d!1194752 (= (++!11315 (++!11315 lt!1434439 lt!1434458) suffix!1299) (++!11315 lt!1434439 (++!11315 lt!1434458 suffix!1299)))))

(declare-fun lt!1434629 () Unit!62383)

(declare-fun choose!24411 (List!43330 List!43330 List!43330) Unit!62383)

(assert (=> d!1194752 (= lt!1434629 (choose!24411 lt!1434439 lt!1434458 suffix!1299))))

(assert (=> d!1194752 (= (lemmaConcatAssociativity!2617 lt!1434439 lt!1434458 suffix!1299) lt!1434629)))

(declare-fun bs!590374 () Bool)

(assert (= bs!590374 d!1194752))

(assert (=> bs!590374 m!4626289))

(assert (=> bs!590374 m!4626289))

(declare-fun m!4626671 () Bool)

(assert (=> bs!590374 m!4626671))

(assert (=> bs!590374 m!4626269))

(declare-fun m!4626673 () Bool)

(assert (=> bs!590374 m!4626673))

(assert (=> bs!590374 m!4626269))

(declare-fun m!4626675 () Bool)

(assert (=> bs!590374 m!4626675))

(assert (=> b!4033254 d!1194752))

(declare-fun d!1194754 () Bool)

(declare-fun res!1642232 () Bool)

(declare-fun e!2502789 () Bool)

(assert (=> d!1194754 (=> (not res!1642232) (not e!2502789))))

(declare-fun isEmpty!25784 (List!43330) Bool)

(assert (=> d!1194754 (= res!1642232 (not (isEmpty!25784 (originalCharacters!7513 token!484))))))

(assert (=> d!1194754 (= (inv!57726 token!484) e!2502789)))

(declare-fun b!4033459 () Bool)

(declare-fun res!1642233 () Bool)

(assert (=> b!4033459 (=> (not res!1642233) (not e!2502789))))

(assert (=> b!4033459 (= res!1642233 (= (originalCharacters!7513 token!484) (list!16077 (dynLambda!18311 (toChars!9300 (transformation!6913 (rule!9977 token!484))) (value!217656 token!484)))))))

(declare-fun b!4033460 () Bool)

(assert (=> b!4033460 (= e!2502789 (= (size!32293 token!484) (size!32294 (originalCharacters!7513 token!484))))))

(assert (= (and d!1194754 res!1642232) b!4033459))

(assert (= (and b!4033459 res!1642233) b!4033460))

(declare-fun b_lambda!117663 () Bool)

(assert (=> (not b_lambda!117663) (not b!4033459)))

(assert (=> b!4033459 t!334368))

(declare-fun b_and!309963 () Bool)

(assert (= b_and!309959 (and (=> t!334368 result!293680) b_and!309963)))

(assert (=> b!4033459 t!334370))

(declare-fun b_and!309965 () Bool)

(assert (= b_and!309961 (and (=> t!334370 result!293682) b_and!309965)))

(declare-fun m!4626677 () Bool)

(assert (=> d!1194754 m!4626677))

(assert (=> b!4033459 m!4626605))

(assert (=> b!4033459 m!4626605))

(declare-fun m!4626679 () Bool)

(assert (=> b!4033459 m!4626679))

(assert (=> b!4033460 m!4626329))

(assert (=> start!380038 d!1194754))

(declare-fun b!4033461 () Bool)

(declare-fun e!2502790 () List!43330)

(assert (=> b!4033461 (= e!2502790 newSuffix!27)))

(declare-fun e!2502791 () Bool)

(declare-fun lt!1434630 () List!43330)

(declare-fun b!4033464 () Bool)

(assert (=> b!4033464 (= e!2502791 (or (not (= newSuffix!27 Nil!43206)) (= lt!1434630 prefix!494)))))

(declare-fun b!4033462 () Bool)

(assert (=> b!4033462 (= e!2502790 (Cons!43206 (h!48626 prefix!494) (++!11315 (t!334357 prefix!494) newSuffix!27)))))

(declare-fun b!4033463 () Bool)

(declare-fun res!1642235 () Bool)

(assert (=> b!4033463 (=> (not res!1642235) (not e!2502791))))

(assert (=> b!4033463 (= res!1642235 (= (size!32294 lt!1434630) (+ (size!32294 prefix!494) (size!32294 newSuffix!27))))))

(declare-fun d!1194756 () Bool)

(assert (=> d!1194756 e!2502791))

(declare-fun res!1642234 () Bool)

(assert (=> d!1194756 (=> (not res!1642234) (not e!2502791))))

(assert (=> d!1194756 (= res!1642234 (= (content!6561 lt!1434630) (set.union (content!6561 prefix!494) (content!6561 newSuffix!27))))))

(assert (=> d!1194756 (= lt!1434630 e!2502790)))

(declare-fun c!696627 () Bool)

(assert (=> d!1194756 (= c!696627 (is-Nil!43206 prefix!494))))

(assert (=> d!1194756 (= (++!11315 prefix!494 newSuffix!27) lt!1434630)))

(assert (= (and d!1194756 c!696627) b!4033461))

(assert (= (and d!1194756 (not c!696627)) b!4033462))

(assert (= (and d!1194756 res!1642234) b!4033463))

(assert (= (and b!4033463 res!1642235) b!4033464))

(declare-fun m!4626681 () Bool)

(assert (=> b!4033462 m!4626681))

(declare-fun m!4626683 () Bool)

(assert (=> b!4033463 m!4626683))

(assert (=> b!4033463 m!4626373))

(assert (=> b!4033463 m!4626347))

(declare-fun m!4626685 () Bool)

(assert (=> d!1194756 m!4626685))

(declare-fun m!4626687 () Bool)

(assert (=> d!1194756 m!4626687))

(declare-fun m!4626689 () Bool)

(assert (=> d!1194756 m!4626689))

(assert (=> b!4033263 d!1194756))

(declare-fun b!4033465 () Bool)

(declare-fun e!2502792 () List!43330)

(assert (=> b!4033465 (= e!2502792 newSuffixResult!27)))

(declare-fun lt!1434631 () List!43330)

(declare-fun b!4033468 () Bool)

(declare-fun e!2502793 () Bool)

(assert (=> b!4033468 (= e!2502793 (or (not (= newSuffixResult!27 Nil!43206)) (= lt!1434631 lt!1434439)))))

(declare-fun b!4033466 () Bool)

(assert (=> b!4033466 (= e!2502792 (Cons!43206 (h!48626 lt!1434439) (++!11315 (t!334357 lt!1434439) newSuffixResult!27)))))

(declare-fun b!4033467 () Bool)

(declare-fun res!1642237 () Bool)

(assert (=> b!4033467 (=> (not res!1642237) (not e!2502793))))

(assert (=> b!4033467 (= res!1642237 (= (size!32294 lt!1434631) (+ (size!32294 lt!1434439) (size!32294 newSuffixResult!27))))))

(declare-fun d!1194758 () Bool)

(assert (=> d!1194758 e!2502793))

(declare-fun res!1642236 () Bool)

(assert (=> d!1194758 (=> (not res!1642236) (not e!2502793))))

(assert (=> d!1194758 (= res!1642236 (= (content!6561 lt!1434631) (set.union (content!6561 lt!1434439) (content!6561 newSuffixResult!27))))))

(assert (=> d!1194758 (= lt!1434631 e!2502792)))

(declare-fun c!696628 () Bool)

(assert (=> d!1194758 (= c!696628 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194758 (= (++!11315 lt!1434439 newSuffixResult!27) lt!1434631)))

(assert (= (and d!1194758 c!696628) b!4033465))

(assert (= (and d!1194758 (not c!696628)) b!4033466))

(assert (= (and d!1194758 res!1642236) b!4033467))

(assert (= (and b!4033467 res!1642237) b!4033468))

(declare-fun m!4626691 () Bool)

(assert (=> b!4033466 m!4626691))

(declare-fun m!4626693 () Bool)

(assert (=> b!4033467 m!4626693))

(assert (=> b!4033467 m!4626371))

(declare-fun m!4626695 () Bool)

(assert (=> b!4033467 m!4626695))

(declare-fun m!4626697 () Bool)

(assert (=> d!1194758 m!4626697))

(assert (=> d!1194758 m!4626543))

(declare-fun m!4626699 () Bool)

(assert (=> d!1194758 m!4626699))

(assert (=> b!4033263 d!1194758))

(declare-fun d!1194760 () Bool)

(assert (=> d!1194760 (= (inv!57722 (tag!7773 (rule!9977 token!484))) (= (mod (str.len (value!217655 (tag!7773 (rule!9977 token!484)))) 2) 0))))

(assert (=> b!4033251 d!1194760))

(declare-fun d!1194762 () Bool)

(declare-fun res!1642238 () Bool)

(declare-fun e!2502794 () Bool)

(assert (=> d!1194762 (=> (not res!1642238) (not e!2502794))))

(assert (=> d!1194762 (= res!1642238 (semiInverseModEq!2949 (toChars!9300 (transformation!6913 (rule!9977 token!484))) (toValue!9441 (transformation!6913 (rule!9977 token!484)))))))

(assert (=> d!1194762 (= (inv!57725 (transformation!6913 (rule!9977 token!484))) e!2502794)))

(declare-fun b!4033469 () Bool)

(assert (=> b!4033469 (= e!2502794 (equivClasses!2848 (toChars!9300 (transformation!6913 (rule!9977 token!484))) (toValue!9441 (transformation!6913 (rule!9977 token!484)))))))

(assert (= (and d!1194762 res!1642238) b!4033469))

(assert (=> d!1194762 m!4626547))

(assert (=> b!4033469 m!4626549))

(assert (=> b!4033251 d!1194762))

(declare-fun b!4033470 () Bool)

(declare-fun e!2502795 () List!43330)

(assert (=> b!4033470 (= e!2502795 lt!1434458)))

(declare-fun b!4033473 () Bool)

(declare-fun lt!1434632 () List!43330)

(declare-fun e!2502796 () Bool)

(assert (=> b!4033473 (= e!2502796 (or (not (= lt!1434458 Nil!43206)) (= lt!1434632 lt!1434439)))))

(declare-fun b!4033471 () Bool)

(assert (=> b!4033471 (= e!2502795 (Cons!43206 (h!48626 lt!1434439) (++!11315 (t!334357 lt!1434439) lt!1434458)))))

(declare-fun b!4033472 () Bool)

(declare-fun res!1642240 () Bool)

(assert (=> b!4033472 (=> (not res!1642240) (not e!2502796))))

(assert (=> b!4033472 (= res!1642240 (= (size!32294 lt!1434632) (+ (size!32294 lt!1434439) (size!32294 lt!1434458))))))

(declare-fun d!1194764 () Bool)

(assert (=> d!1194764 e!2502796))

(declare-fun res!1642239 () Bool)

(assert (=> d!1194764 (=> (not res!1642239) (not e!2502796))))

(assert (=> d!1194764 (= res!1642239 (= (content!6561 lt!1434632) (set.union (content!6561 lt!1434439) (content!6561 lt!1434458))))))

(assert (=> d!1194764 (= lt!1434632 e!2502795)))

(declare-fun c!696629 () Bool)

(assert (=> d!1194764 (= c!696629 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194764 (= (++!11315 lt!1434439 lt!1434458) lt!1434632)))

(assert (= (and d!1194764 c!696629) b!4033470))

(assert (= (and d!1194764 (not c!696629)) b!4033471))

(assert (= (and d!1194764 res!1642239) b!4033472))

(assert (= (and b!4033472 res!1642240) b!4033473))

(declare-fun m!4626701 () Bool)

(assert (=> b!4033471 m!4626701))

(declare-fun m!4626703 () Bool)

(assert (=> b!4033472 m!4626703))

(assert (=> b!4033472 m!4626371))

(assert (=> b!4033472 m!4626665))

(declare-fun m!4626705 () Bool)

(assert (=> d!1194764 m!4626705))

(assert (=> d!1194764 m!4626543))

(assert (=> d!1194764 m!4626669))

(assert (=> b!4033262 d!1194764))

(declare-fun d!1194766 () Bool)

(declare-fun lt!1434633 () List!43330)

(assert (=> d!1194766 (= (++!11315 lt!1434439 lt!1434633) prefix!494)))

(declare-fun e!2502797 () List!43330)

(assert (=> d!1194766 (= lt!1434633 e!2502797)))

(declare-fun c!696630 () Bool)

(assert (=> d!1194766 (= c!696630 (is-Cons!43206 lt!1434439))))

(assert (=> d!1194766 (>= (size!32294 prefix!494) (size!32294 lt!1434439))))

(assert (=> d!1194766 (= (getSuffix!2417 prefix!494 lt!1434439) lt!1434633)))

(declare-fun b!4033474 () Bool)

(assert (=> b!4033474 (= e!2502797 (getSuffix!2417 (tail!6276 prefix!494) (t!334357 lt!1434439)))))

(declare-fun b!4033475 () Bool)

(assert (=> b!4033475 (= e!2502797 prefix!494)))

(assert (= (and d!1194766 c!696630) b!4033474))

(assert (= (and d!1194766 (not c!696630)) b!4033475))

(declare-fun m!4626707 () Bool)

(assert (=> d!1194766 m!4626707))

(assert (=> d!1194766 m!4626373))

(assert (=> d!1194766 m!4626371))

(declare-fun m!4626709 () Bool)

(assert (=> b!4033474 m!4626709))

(assert (=> b!4033474 m!4626709))

(declare-fun m!4626711 () Bool)

(assert (=> b!4033474 m!4626711))

(assert (=> b!4033262 d!1194766))

(declare-fun b!4033478 () Bool)

(declare-fun e!2502798 () Bool)

(assert (=> b!4033478 (= e!2502798 (isPrefix!4000 (tail!6276 lt!1434439) (tail!6276 prefix!494)))))

(declare-fun b!4033479 () Bool)

(declare-fun e!2502800 () Bool)

(assert (=> b!4033479 (= e!2502800 (>= (size!32294 prefix!494) (size!32294 lt!1434439)))))

(declare-fun b!4033477 () Bool)

(declare-fun res!1642242 () Bool)

(assert (=> b!4033477 (=> (not res!1642242) (not e!2502798))))

(assert (=> b!4033477 (= res!1642242 (= (head!8544 lt!1434439) (head!8544 prefix!494)))))

(declare-fun b!4033476 () Bool)

(declare-fun e!2502799 () Bool)

(assert (=> b!4033476 (= e!2502799 e!2502798)))

(declare-fun res!1642243 () Bool)

(assert (=> b!4033476 (=> (not res!1642243) (not e!2502798))))

(assert (=> b!4033476 (= res!1642243 (not (is-Nil!43206 prefix!494)))))

(declare-fun d!1194768 () Bool)

(assert (=> d!1194768 e!2502800))

(declare-fun res!1642244 () Bool)

(assert (=> d!1194768 (=> res!1642244 e!2502800)))

(declare-fun lt!1434634 () Bool)

(assert (=> d!1194768 (= res!1642244 (not lt!1434634))))

(assert (=> d!1194768 (= lt!1434634 e!2502799)))

(declare-fun res!1642241 () Bool)

(assert (=> d!1194768 (=> res!1642241 e!2502799)))

(assert (=> d!1194768 (= res!1642241 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194768 (= (isPrefix!4000 lt!1434439 prefix!494) lt!1434634)))

(assert (= (and d!1194768 (not res!1642241)) b!4033476))

(assert (= (and b!4033476 res!1642243) b!4033477))

(assert (= (and b!4033477 res!1642242) b!4033478))

(assert (= (and d!1194768 (not res!1642244)) b!4033479))

(declare-fun m!4626713 () Bool)

(assert (=> b!4033478 m!4626713))

(assert (=> b!4033478 m!4626709))

(assert (=> b!4033478 m!4626713))

(assert (=> b!4033478 m!4626709))

(declare-fun m!4626715 () Bool)

(assert (=> b!4033478 m!4626715))

(assert (=> b!4033479 m!4626373))

(assert (=> b!4033479 m!4626371))

(declare-fun m!4626717 () Bool)

(assert (=> b!4033477 m!4626717))

(declare-fun m!4626719 () Bool)

(assert (=> b!4033477 m!4626719))

(assert (=> b!4033262 d!1194768))

(declare-fun d!1194770 () Bool)

(assert (=> d!1194770 (isPrefix!4000 lt!1434439 prefix!494)))

(declare-fun lt!1434637 () Unit!62383)

(declare-fun choose!24412 (List!43330 List!43330 List!43330) Unit!62383)

(assert (=> d!1194770 (= lt!1434637 (choose!24412 prefix!494 lt!1434439 lt!1434434))))

(assert (=> d!1194770 (isPrefix!4000 prefix!494 lt!1434434)))

(assert (=> d!1194770 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!564 prefix!494 lt!1434439 lt!1434434) lt!1434637)))

(declare-fun bs!590375 () Bool)

(assert (= bs!590375 d!1194770))

(assert (=> bs!590375 m!4626273))

(declare-fun m!4626721 () Bool)

(assert (=> bs!590375 m!4626721))

(assert (=> bs!590375 m!4626351))

(assert (=> b!4033262 d!1194770))

(declare-fun b!4033508 () Bool)

(declare-fun res!1642264 () Bool)

(declare-fun e!2502821 () Bool)

(assert (=> b!4033508 (=> (not res!1642264) (not e!2502821))))

(declare-fun call!286995 () Bool)

(assert (=> b!4033508 (= res!1642264 (not call!286995))))

(declare-fun b!4033509 () Bool)

(declare-fun res!1642266 () Bool)

(declare-fun e!2502818 () Bool)

(assert (=> b!4033509 (=> res!1642266 e!2502818)))

(assert (=> b!4033509 (= res!1642266 e!2502821)))

(declare-fun res!1642261 () Bool)

(assert (=> b!4033509 (=> (not res!1642261) (not e!2502821))))

(declare-fun lt!1434640 () Bool)

(assert (=> b!4033509 (= res!1642261 lt!1434640)))

(declare-fun b!4033510 () Bool)

(declare-fun e!2502820 () Bool)

(assert (=> b!4033510 (= e!2502818 e!2502820)))

(declare-fun res!1642262 () Bool)

(assert (=> b!4033510 (=> (not res!1642262) (not e!2502820))))

(assert (=> b!4033510 (= res!1642262 (not lt!1434640))))

(declare-fun b!4033511 () Bool)

(declare-fun res!1642263 () Bool)

(assert (=> b!4033511 (=> res!1642263 e!2502818)))

(assert (=> b!4033511 (= res!1642263 (not (is-ElementMatch!11818 (regex!6913 (rule!9977 token!484)))))))

(declare-fun e!2502816 () Bool)

(assert (=> b!4033511 (= e!2502816 e!2502818)))

(declare-fun d!1194772 () Bool)

(declare-fun e!2502819 () Bool)

(assert (=> d!1194772 e!2502819))

(declare-fun c!696637 () Bool)

(assert (=> d!1194772 (= c!696637 (is-EmptyExpr!11818 (regex!6913 (rule!9977 token!484))))))

(declare-fun e!2502817 () Bool)

(assert (=> d!1194772 (= lt!1434640 e!2502817)))

(declare-fun c!696639 () Bool)

(assert (=> d!1194772 (= c!696639 (isEmpty!25784 lt!1434439))))

(assert (=> d!1194772 (validRegex!5341 (regex!6913 (rule!9977 token!484)))))

(assert (=> d!1194772 (= (matchR!5771 (regex!6913 (rule!9977 token!484)) lt!1434439) lt!1434640)))

(declare-fun b!4033512 () Bool)

(assert (=> b!4033512 (= e!2502816 (not lt!1434640))))

(declare-fun b!4033513 () Bool)

(assert (=> b!4033513 (= e!2502821 (= (head!8544 lt!1434439) (c!696604 (regex!6913 (rule!9977 token!484)))))))

(declare-fun bm!286990 () Bool)

(assert (=> bm!286990 (= call!286995 (isEmpty!25784 lt!1434439))))

(declare-fun b!4033514 () Bool)

(assert (=> b!4033514 (= e!2502819 e!2502816)))

(declare-fun c!696638 () Bool)

(assert (=> b!4033514 (= c!696638 (is-EmptyLang!11818 (regex!6913 (rule!9977 token!484))))))

(declare-fun b!4033515 () Bool)

(declare-fun res!1642267 () Bool)

(declare-fun e!2502815 () Bool)

(assert (=> b!4033515 (=> res!1642267 e!2502815)))

(assert (=> b!4033515 (= res!1642267 (not (isEmpty!25784 (tail!6276 lt!1434439))))))

(declare-fun b!4033516 () Bool)

(declare-fun derivativeStep!3546 (Regex!11818 C!23822) Regex!11818)

(assert (=> b!4033516 (= e!2502817 (matchR!5771 (derivativeStep!3546 (regex!6913 (rule!9977 token!484)) (head!8544 lt!1434439)) (tail!6276 lt!1434439)))))

(declare-fun b!4033517 () Bool)

(assert (=> b!4033517 (= e!2502820 e!2502815)))

(declare-fun res!1642265 () Bool)

(assert (=> b!4033517 (=> res!1642265 e!2502815)))

(assert (=> b!4033517 (= res!1642265 call!286995)))

(declare-fun b!4033518 () Bool)

(assert (=> b!4033518 (= e!2502817 (nullable!4141 (regex!6913 (rule!9977 token!484))))))

(declare-fun b!4033519 () Bool)

(assert (=> b!4033519 (= e!2502815 (not (= (head!8544 lt!1434439) (c!696604 (regex!6913 (rule!9977 token!484))))))))

(declare-fun b!4033520 () Bool)

(assert (=> b!4033520 (= e!2502819 (= lt!1434640 call!286995))))

(declare-fun b!4033521 () Bool)

(declare-fun res!1642268 () Bool)

(assert (=> b!4033521 (=> (not res!1642268) (not e!2502821))))

(assert (=> b!4033521 (= res!1642268 (isEmpty!25784 (tail!6276 lt!1434439)))))

(assert (= (and d!1194772 c!696639) b!4033518))

(assert (= (and d!1194772 (not c!696639)) b!4033516))

(assert (= (and d!1194772 c!696637) b!4033520))

(assert (= (and d!1194772 (not c!696637)) b!4033514))

(assert (= (and b!4033514 c!696638) b!4033512))

(assert (= (and b!4033514 (not c!696638)) b!4033511))

(assert (= (and b!4033511 (not res!1642263)) b!4033509))

(assert (= (and b!4033509 res!1642261) b!4033508))

(assert (= (and b!4033508 res!1642264) b!4033521))

(assert (= (and b!4033521 res!1642268) b!4033513))

(assert (= (and b!4033509 (not res!1642266)) b!4033510))

(assert (= (and b!4033510 res!1642262) b!4033517))

(assert (= (and b!4033517 (not res!1642265)) b!4033515))

(assert (= (and b!4033515 (not res!1642267)) b!4033519))

(assert (= (or b!4033520 b!4033508 b!4033517) bm!286990))

(assert (=> b!4033516 m!4626717))

(assert (=> b!4033516 m!4626717))

(declare-fun m!4626723 () Bool)

(assert (=> b!4033516 m!4626723))

(assert (=> b!4033516 m!4626713))

(assert (=> b!4033516 m!4626723))

(assert (=> b!4033516 m!4626713))

(declare-fun m!4626725 () Bool)

(assert (=> b!4033516 m!4626725))

(declare-fun m!4626727 () Bool)

(assert (=> d!1194772 m!4626727))

(assert (=> d!1194772 m!4626551))

(assert (=> b!4033521 m!4626713))

(assert (=> b!4033521 m!4626713))

(declare-fun m!4626729 () Bool)

(assert (=> b!4033521 m!4626729))

(assert (=> b!4033515 m!4626713))

(assert (=> b!4033515 m!4626713))

(assert (=> b!4033515 m!4626729))

(assert (=> b!4033519 m!4626717))

(assert (=> b!4033513 m!4626717))

(assert (=> b!4033518 m!4626553))

(assert (=> bm!286990 m!4626727))

(assert (=> b!4033239 d!1194772))

(declare-fun b!4033524 () Bool)

(declare-fun e!2502822 () Bool)

(assert (=> b!4033524 (= e!2502822 (isPrefix!4000 (tail!6276 lt!1434439) (tail!6276 lt!1434453)))))

(declare-fun b!4033525 () Bool)

(declare-fun e!2502824 () Bool)

(assert (=> b!4033525 (= e!2502824 (>= (size!32294 lt!1434453) (size!32294 lt!1434439)))))

(declare-fun b!4033523 () Bool)

(declare-fun res!1642270 () Bool)

(assert (=> b!4033523 (=> (not res!1642270) (not e!2502822))))

(assert (=> b!4033523 (= res!1642270 (= (head!8544 lt!1434439) (head!8544 lt!1434453)))))

(declare-fun b!4033522 () Bool)

(declare-fun e!2502823 () Bool)

(assert (=> b!4033522 (= e!2502823 e!2502822)))

(declare-fun res!1642271 () Bool)

(assert (=> b!4033522 (=> (not res!1642271) (not e!2502822))))

(assert (=> b!4033522 (= res!1642271 (not (is-Nil!43206 lt!1434453)))))

(declare-fun d!1194774 () Bool)

(assert (=> d!1194774 e!2502824))

(declare-fun res!1642272 () Bool)

(assert (=> d!1194774 (=> res!1642272 e!2502824)))

(declare-fun lt!1434641 () Bool)

(assert (=> d!1194774 (= res!1642272 (not lt!1434641))))

(assert (=> d!1194774 (= lt!1434641 e!2502823)))

(declare-fun res!1642269 () Bool)

(assert (=> d!1194774 (=> res!1642269 e!2502823)))

(assert (=> d!1194774 (= res!1642269 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194774 (= (isPrefix!4000 lt!1434439 lt!1434453) lt!1434641)))

(assert (= (and d!1194774 (not res!1642269)) b!4033522))

(assert (= (and b!4033522 res!1642271) b!4033523))

(assert (= (and b!4033523 res!1642270) b!4033524))

(assert (= (and d!1194774 (not res!1642272)) b!4033525))

(assert (=> b!4033524 m!4626713))

(declare-fun m!4626731 () Bool)

(assert (=> b!4033524 m!4626731))

(assert (=> b!4033524 m!4626713))

(assert (=> b!4033524 m!4626731))

(declare-fun m!4626733 () Bool)

(assert (=> b!4033524 m!4626733))

(declare-fun m!4626735 () Bool)

(assert (=> b!4033525 m!4626735))

(assert (=> b!4033525 m!4626371))

(assert (=> b!4033523 m!4626717))

(declare-fun m!4626737 () Bool)

(assert (=> b!4033523 m!4626737))

(assert (=> b!4033239 d!1194774))

(declare-fun d!1194776 () Bool)

(assert (=> d!1194776 (isPrefix!4000 lt!1434439 (++!11315 prefix!494 newSuffix!27))))

(declare-fun lt!1434644 () Unit!62383)

(declare-fun choose!24413 (List!43330 List!43330 List!43330) Unit!62383)

(assert (=> d!1194776 (= lt!1434644 (choose!24413 lt!1434439 prefix!494 newSuffix!27))))

(assert (=> d!1194776 (isPrefix!4000 lt!1434439 prefix!494)))

(assert (=> d!1194776 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!793 lt!1434439 prefix!494 newSuffix!27) lt!1434644)))

(declare-fun bs!590376 () Bool)

(assert (= bs!590376 d!1194776))

(assert (=> bs!590376 m!4626367))

(assert (=> bs!590376 m!4626367))

(declare-fun m!4626739 () Bool)

(assert (=> bs!590376 m!4626739))

(declare-fun m!4626741 () Bool)

(assert (=> bs!590376 m!4626741))

(assert (=> bs!590376 m!4626273))

(assert (=> b!4033239 d!1194776))

(declare-fun d!1194778 () Bool)

(assert (=> d!1194778 (isPrefix!4000 lt!1434439 (++!11315 prefix!494 suffix!1299))))

(declare-fun lt!1434645 () Unit!62383)

(assert (=> d!1194778 (= lt!1434645 (choose!24413 lt!1434439 prefix!494 suffix!1299))))

(assert (=> d!1194778 (isPrefix!4000 lt!1434439 prefix!494)))

(assert (=> d!1194778 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!793 lt!1434439 prefix!494 suffix!1299) lt!1434645)))

(declare-fun bs!590377 () Bool)

(assert (= bs!590377 d!1194778))

(assert (=> bs!590377 m!4626327))

(assert (=> bs!590377 m!4626327))

(declare-fun m!4626743 () Bool)

(assert (=> bs!590377 m!4626743))

(declare-fun m!4626745 () Bool)

(assert (=> bs!590377 m!4626745))

(assert (=> bs!590377 m!4626273))

(assert (=> b!4033239 d!1194778))

(declare-fun b!4033536 () Bool)

(declare-fun e!2502832 () Bool)

(declare-fun e!2502833 () Bool)

(assert (=> b!4033536 (= e!2502832 e!2502833)))

(declare-fun c!696645 () Bool)

(assert (=> b!4033536 (= c!696645 (is-IntegerValue!21430 (value!217656 token!484)))))

(declare-fun d!1194780 () Bool)

(declare-fun c!696644 () Bool)

(assert (=> d!1194780 (= c!696644 (is-IntegerValue!21429 (value!217656 token!484)))))

(assert (=> d!1194780 (= (inv!21 (value!217656 token!484)) e!2502832)))

(declare-fun b!4033537 () Bool)

(declare-fun e!2502831 () Bool)

(declare-fun inv!15 (TokenValue!7143) Bool)

(assert (=> b!4033537 (= e!2502831 (inv!15 (value!217656 token!484)))))

(declare-fun b!4033538 () Bool)

(declare-fun inv!17 (TokenValue!7143) Bool)

(assert (=> b!4033538 (= e!2502833 (inv!17 (value!217656 token!484)))))

(declare-fun b!4033539 () Bool)

(declare-fun res!1642275 () Bool)

(assert (=> b!4033539 (=> res!1642275 e!2502831)))

(assert (=> b!4033539 (= res!1642275 (not (is-IntegerValue!21431 (value!217656 token!484))))))

(assert (=> b!4033539 (= e!2502833 e!2502831)))

(declare-fun b!4033540 () Bool)

(declare-fun inv!16 (TokenValue!7143) Bool)

(assert (=> b!4033540 (= e!2502832 (inv!16 (value!217656 token!484)))))

(assert (= (and d!1194780 c!696644) b!4033540))

(assert (= (and d!1194780 (not c!696644)) b!4033536))

(assert (= (and b!4033536 c!696645) b!4033538))

(assert (= (and b!4033536 (not c!696645)) b!4033539))

(assert (= (and b!4033539 (not res!1642275)) b!4033537))

(declare-fun m!4626747 () Bool)

(assert (=> b!4033537 m!4626747))

(declare-fun m!4626749 () Bool)

(assert (=> b!4033538 m!4626749))

(declare-fun m!4626751 () Bool)

(assert (=> b!4033540 m!4626751))

(assert (=> b!4033260 d!1194780))

(declare-fun b!4033543 () Bool)

(declare-fun e!2502834 () Bool)

(assert (=> b!4033543 (= e!2502834 (isPrefix!4000 (tail!6276 lt!1434439) (tail!6276 lt!1434434)))))

(declare-fun b!4033544 () Bool)

(declare-fun e!2502836 () Bool)

(assert (=> b!4033544 (= e!2502836 (>= (size!32294 lt!1434434) (size!32294 lt!1434439)))))

(declare-fun b!4033542 () Bool)

(declare-fun res!1642277 () Bool)

(assert (=> b!4033542 (=> (not res!1642277) (not e!2502834))))

(assert (=> b!4033542 (= res!1642277 (= (head!8544 lt!1434439) (head!8544 lt!1434434)))))

(declare-fun b!4033541 () Bool)

(declare-fun e!2502835 () Bool)

(assert (=> b!4033541 (= e!2502835 e!2502834)))

(declare-fun res!1642278 () Bool)

(assert (=> b!4033541 (=> (not res!1642278) (not e!2502834))))

(assert (=> b!4033541 (= res!1642278 (not (is-Nil!43206 lt!1434434)))))

(declare-fun d!1194782 () Bool)

(assert (=> d!1194782 e!2502836))

(declare-fun res!1642279 () Bool)

(assert (=> d!1194782 (=> res!1642279 e!2502836)))

(declare-fun lt!1434646 () Bool)

(assert (=> d!1194782 (= res!1642279 (not lt!1434646))))

(assert (=> d!1194782 (= lt!1434646 e!2502835)))

(declare-fun res!1642276 () Bool)

(assert (=> d!1194782 (=> res!1642276 e!2502835)))

(assert (=> d!1194782 (= res!1642276 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194782 (= (isPrefix!4000 lt!1434439 lt!1434434) lt!1434646)))

(assert (= (and d!1194782 (not res!1642276)) b!4033541))

(assert (= (and b!4033541 res!1642278) b!4033542))

(assert (= (and b!4033542 res!1642277) b!4033543))

(assert (= (and d!1194782 (not res!1642279)) b!4033544))

(assert (=> b!4033543 m!4626713))

(assert (=> b!4033543 m!4626629))

(assert (=> b!4033543 m!4626713))

(assert (=> b!4033543 m!4626629))

(declare-fun m!4626753 () Bool)

(assert (=> b!4033543 m!4626753))

(assert (=> b!4033544 m!4626627))

(assert (=> b!4033544 m!4626371))

(assert (=> b!4033542 m!4626717))

(assert (=> b!4033542 m!4626635))

(assert (=> b!4033261 d!1194782))

(declare-fun b!4033547 () Bool)

(declare-fun e!2502837 () Bool)

(assert (=> b!4033547 (= e!2502837 (isPrefix!4000 (tail!6276 lt!1434439) (tail!6276 lt!1434449)))))

(declare-fun b!4033548 () Bool)

(declare-fun e!2502839 () Bool)

(assert (=> b!4033548 (= e!2502839 (>= (size!32294 lt!1434449) (size!32294 lt!1434439)))))

(declare-fun b!4033546 () Bool)

(declare-fun res!1642281 () Bool)

(assert (=> b!4033546 (=> (not res!1642281) (not e!2502837))))

(assert (=> b!4033546 (= res!1642281 (= (head!8544 lt!1434439) (head!8544 lt!1434449)))))

(declare-fun b!4033545 () Bool)

(declare-fun e!2502838 () Bool)

(assert (=> b!4033545 (= e!2502838 e!2502837)))

(declare-fun res!1642282 () Bool)

(assert (=> b!4033545 (=> (not res!1642282) (not e!2502837))))

(assert (=> b!4033545 (= res!1642282 (not (is-Nil!43206 lt!1434449)))))

(declare-fun d!1194784 () Bool)

(assert (=> d!1194784 e!2502839))

(declare-fun res!1642283 () Bool)

(assert (=> d!1194784 (=> res!1642283 e!2502839)))

(declare-fun lt!1434647 () Bool)

(assert (=> d!1194784 (= res!1642283 (not lt!1434647))))

(assert (=> d!1194784 (= lt!1434647 e!2502838)))

(declare-fun res!1642280 () Bool)

(assert (=> d!1194784 (=> res!1642280 e!2502838)))

(assert (=> d!1194784 (= res!1642280 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194784 (= (isPrefix!4000 lt!1434439 lt!1434449) lt!1434647)))

(assert (= (and d!1194784 (not res!1642280)) b!4033545))

(assert (= (and b!4033545 res!1642282) b!4033546))

(assert (= (and b!4033546 res!1642281) b!4033547))

(assert (= (and d!1194784 (not res!1642283)) b!4033548))

(assert (=> b!4033547 m!4626713))

(declare-fun m!4626755 () Bool)

(assert (=> b!4033547 m!4626755))

(assert (=> b!4033547 m!4626713))

(assert (=> b!4033547 m!4626755))

(declare-fun m!4626757 () Bool)

(assert (=> b!4033547 m!4626757))

(declare-fun m!4626759 () Bool)

(assert (=> b!4033548 m!4626759))

(assert (=> b!4033548 m!4626371))

(assert (=> b!4033546 m!4626717))

(declare-fun m!4626761 () Bool)

(assert (=> b!4033546 m!4626761))

(assert (=> b!4033261 d!1194784))

(declare-fun d!1194786 () Bool)

(assert (=> d!1194786 (isPrefix!4000 lt!1434439 (++!11315 lt!1434439 suffixResult!105))))

(declare-fun lt!1434650 () Unit!62383)

(declare-fun choose!24414 (List!43330 List!43330) Unit!62383)

(assert (=> d!1194786 (= lt!1434650 (choose!24414 lt!1434439 suffixResult!105))))

(assert (=> d!1194786 (= (lemmaConcatTwoListThenFirstIsPrefix!2835 lt!1434439 suffixResult!105) lt!1434650)))

(declare-fun bs!590378 () Bool)

(assert (= bs!590378 d!1194786))

(assert (=> bs!590378 m!4626317))

(assert (=> bs!590378 m!4626317))

(declare-fun m!4626763 () Bool)

(assert (=> bs!590378 m!4626763))

(declare-fun m!4626765 () Bool)

(assert (=> bs!590378 m!4626765))

(assert (=> b!4033261 d!1194786))

(declare-fun b!4033551 () Bool)

(declare-fun e!2502840 () Bool)

(assert (=> b!4033551 (= e!2502840 (isPrefix!4000 (tail!6276 prefix!494) (tail!6276 lt!1434434)))))

(declare-fun b!4033552 () Bool)

(declare-fun e!2502842 () Bool)

(assert (=> b!4033552 (= e!2502842 (>= (size!32294 lt!1434434) (size!32294 prefix!494)))))

(declare-fun b!4033550 () Bool)

(declare-fun res!1642285 () Bool)

(assert (=> b!4033550 (=> (not res!1642285) (not e!2502840))))

(assert (=> b!4033550 (= res!1642285 (= (head!8544 prefix!494) (head!8544 lt!1434434)))))

(declare-fun b!4033549 () Bool)

(declare-fun e!2502841 () Bool)

(assert (=> b!4033549 (= e!2502841 e!2502840)))

(declare-fun res!1642286 () Bool)

(assert (=> b!4033549 (=> (not res!1642286) (not e!2502840))))

(assert (=> b!4033549 (= res!1642286 (not (is-Nil!43206 lt!1434434)))))

(declare-fun d!1194788 () Bool)

(assert (=> d!1194788 e!2502842))

(declare-fun res!1642287 () Bool)

(assert (=> d!1194788 (=> res!1642287 e!2502842)))

(declare-fun lt!1434651 () Bool)

(assert (=> d!1194788 (= res!1642287 (not lt!1434651))))

(assert (=> d!1194788 (= lt!1434651 e!2502841)))

(declare-fun res!1642284 () Bool)

(assert (=> d!1194788 (=> res!1642284 e!2502841)))

(assert (=> d!1194788 (= res!1642284 (is-Nil!43206 prefix!494))))

(assert (=> d!1194788 (= (isPrefix!4000 prefix!494 lt!1434434) lt!1434651)))

(assert (= (and d!1194788 (not res!1642284)) b!4033549))

(assert (= (and b!4033549 res!1642286) b!4033550))

(assert (= (and b!4033550 res!1642285) b!4033551))

(assert (= (and d!1194788 (not res!1642287)) b!4033552))

(assert (=> b!4033551 m!4626709))

(assert (=> b!4033551 m!4626629))

(assert (=> b!4033551 m!4626709))

(assert (=> b!4033551 m!4626629))

(declare-fun m!4626767 () Bool)

(assert (=> b!4033551 m!4626767))

(assert (=> b!4033552 m!4626627))

(assert (=> b!4033552 m!4626373))

(assert (=> b!4033550 m!4626719))

(assert (=> b!4033550 m!4626635))

(assert (=> b!4033261 d!1194788))

(declare-fun d!1194790 () Bool)

(assert (=> d!1194790 (isPrefix!4000 prefix!494 (++!11315 prefix!494 suffix!1299))))

(declare-fun lt!1434652 () Unit!62383)

(assert (=> d!1194790 (= lt!1434652 (choose!24414 prefix!494 suffix!1299))))

(assert (=> d!1194790 (= (lemmaConcatTwoListThenFirstIsPrefix!2835 prefix!494 suffix!1299) lt!1434652)))

(declare-fun bs!590379 () Bool)

(assert (= bs!590379 d!1194790))

(assert (=> bs!590379 m!4626327))

(assert (=> bs!590379 m!4626327))

(declare-fun m!4626769 () Bool)

(assert (=> bs!590379 m!4626769))

(declare-fun m!4626771 () Bool)

(assert (=> bs!590379 m!4626771))

(assert (=> b!4033261 d!1194790))

(declare-fun b!4033598 () Bool)

(declare-fun res!1642325 () Bool)

(declare-fun e!2502860 () Bool)

(assert (=> b!4033598 (=> (not res!1642325) (not e!2502860))))

(declare-fun lt!1434682 () Option!9327)

(declare-fun get!14177 (Option!9327) tuple2!42288)

(assert (=> b!4033598 (= res!1642325 (matchR!5771 (regex!6913 (rule!9977 (_1!24278 (get!14177 lt!1434682)))) (list!16077 (charsOf!4729 (_1!24278 (get!14177 lt!1434682))))))))

(declare-fun d!1194792 () Bool)

(declare-fun e!2502859 () Bool)

(assert (=> d!1194792 e!2502859))

(declare-fun res!1642324 () Bool)

(assert (=> d!1194792 (=> res!1642324 e!2502859)))

(declare-fun isEmpty!25786 (Option!9327) Bool)

(assert (=> d!1194792 (= res!1642324 (isEmpty!25786 lt!1434682))))

(declare-fun e!2502858 () Option!9327)

(assert (=> d!1194792 (= lt!1434682 e!2502858)))

(declare-fun c!696651 () Bool)

(assert (=> d!1194792 (= c!696651 (and (is-Cons!43208 rules!2999) (is-Nil!43208 (t!334359 rules!2999))))))

(declare-fun lt!1434681 () Unit!62383)

(declare-fun lt!1434679 () Unit!62383)

(assert (=> d!1194792 (= lt!1434681 lt!1434679)))

(assert (=> d!1194792 (isPrefix!4000 lt!1434453 lt!1434453)))

(assert (=> d!1194792 (= lt!1434679 (lemmaIsPrefixRefl!2567 lt!1434453 lt!1434453))))

(declare-fun rulesValidInductive!2517 (LexerInterface!6502 List!43332) Bool)

(assert (=> d!1194792 (rulesValidInductive!2517 thiss!21717 rules!2999)))

(assert (=> d!1194792 (= (maxPrefix!3800 thiss!21717 rules!2999 lt!1434453) lt!1434682)))

(declare-fun b!4033599 () Bool)

(declare-fun res!1642326 () Bool)

(assert (=> b!4033599 (=> (not res!1642326) (not e!2502860))))

(assert (=> b!4033599 (= res!1642326 (< (size!32294 (_2!24278 (get!14177 lt!1434682))) (size!32294 lt!1434453)))))

(declare-fun b!4033600 () Bool)

(assert (=> b!4033600 (= e!2502859 e!2502860)))

(declare-fun res!1642327 () Bool)

(assert (=> b!4033600 (=> (not res!1642327) (not e!2502860))))

(declare-fun isDefined!7096 (Option!9327) Bool)

(assert (=> b!4033600 (= res!1642327 (isDefined!7096 lt!1434682))))

(declare-fun b!4033601 () Bool)

(declare-fun call!287001 () Option!9327)

(assert (=> b!4033601 (= e!2502858 call!287001)))

(declare-fun b!4033602 () Bool)

(declare-fun res!1642323 () Bool)

(assert (=> b!4033602 (=> (not res!1642323) (not e!2502860))))

(assert (=> b!4033602 (= res!1642323 (= (++!11315 (list!16077 (charsOf!4729 (_1!24278 (get!14177 lt!1434682)))) (_2!24278 (get!14177 lt!1434682))) lt!1434453))))

(declare-fun b!4033603 () Bool)

(assert (=> b!4033603 (= e!2502860 (contains!8577 rules!2999 (rule!9977 (_1!24278 (get!14177 lt!1434682)))))))

(declare-fun b!4033604 () Bool)

(declare-fun res!1642329 () Bool)

(assert (=> b!4033604 (=> (not res!1642329) (not e!2502860))))

(assert (=> b!4033604 (= res!1642329 (= (value!217656 (_1!24278 (get!14177 lt!1434682))) (apply!10102 (transformation!6913 (rule!9977 (_1!24278 (get!14177 lt!1434682)))) (seqFromList!5130 (originalCharacters!7513 (_1!24278 (get!14177 lt!1434682)))))))))

(declare-fun b!4033605 () Bool)

(declare-fun res!1642328 () Bool)

(assert (=> b!4033605 (=> (not res!1642328) (not e!2502860))))

(assert (=> b!4033605 (= res!1642328 (= (list!16077 (charsOf!4729 (_1!24278 (get!14177 lt!1434682)))) (originalCharacters!7513 (_1!24278 (get!14177 lt!1434682)))))))

(declare-fun b!4033606 () Bool)

(declare-fun lt!1434680 () Option!9327)

(declare-fun lt!1434678 () Option!9327)

(assert (=> b!4033606 (= e!2502858 (ite (and (is-None!9326 lt!1434680) (is-None!9326 lt!1434678)) None!9326 (ite (is-None!9326 lt!1434678) lt!1434680 (ite (is-None!9326 lt!1434680) lt!1434678 (ite (>= (size!32293 (_1!24278 (v!39718 lt!1434680))) (size!32293 (_1!24278 (v!39718 lt!1434678)))) lt!1434680 lt!1434678)))))))

(assert (=> b!4033606 (= lt!1434680 call!287001)))

(assert (=> b!4033606 (= lt!1434678 (maxPrefix!3800 thiss!21717 (t!334359 rules!2999) lt!1434453))))

(declare-fun bm!286996 () Bool)

(assert (=> bm!286996 (= call!287001 (maxPrefixOneRule!2812 thiss!21717 (h!48628 rules!2999) lt!1434453))))

(assert (= (and d!1194792 c!696651) b!4033601))

(assert (= (and d!1194792 (not c!696651)) b!4033606))

(assert (= (or b!4033601 b!4033606) bm!286996))

(assert (= (and d!1194792 (not res!1642324)) b!4033600))

(assert (= (and b!4033600 res!1642327) b!4033605))

(assert (= (and b!4033605 res!1642328) b!4033599))

(assert (= (and b!4033599 res!1642326) b!4033602))

(assert (= (and b!4033602 res!1642323) b!4033604))

(assert (= (and b!4033604 res!1642329) b!4033598))

(assert (= (and b!4033598 res!1642325) b!4033603))

(declare-fun m!4626773 () Bool)

(assert (=> b!4033600 m!4626773))

(declare-fun m!4626777 () Bool)

(assert (=> b!4033604 m!4626777))

(declare-fun m!4626779 () Bool)

(assert (=> b!4033604 m!4626779))

(assert (=> b!4033604 m!4626779))

(declare-fun m!4626785 () Bool)

(assert (=> b!4033604 m!4626785))

(declare-fun m!4626789 () Bool)

(assert (=> b!4033606 m!4626789))

(assert (=> b!4033603 m!4626777))

(declare-fun m!4626791 () Bool)

(assert (=> b!4033603 m!4626791))

(declare-fun m!4626795 () Bool)

(assert (=> bm!286996 m!4626795))

(declare-fun m!4626797 () Bool)

(assert (=> d!1194792 m!4626797))

(declare-fun m!4626799 () Bool)

(assert (=> d!1194792 m!4626799))

(declare-fun m!4626801 () Bool)

(assert (=> d!1194792 m!4626801))

(declare-fun m!4626803 () Bool)

(assert (=> d!1194792 m!4626803))

(assert (=> b!4033605 m!4626777))

(declare-fun m!4626807 () Bool)

(assert (=> b!4033605 m!4626807))

(assert (=> b!4033605 m!4626807))

(declare-fun m!4626809 () Bool)

(assert (=> b!4033605 m!4626809))

(assert (=> b!4033599 m!4626777))

(declare-fun m!4626813 () Bool)

(assert (=> b!4033599 m!4626813))

(assert (=> b!4033599 m!4626735))

(assert (=> b!4033602 m!4626777))

(assert (=> b!4033602 m!4626807))

(assert (=> b!4033602 m!4626807))

(assert (=> b!4033602 m!4626809))

(assert (=> b!4033602 m!4626809))

(declare-fun m!4626815 () Bool)

(assert (=> b!4033602 m!4626815))

(assert (=> b!4033598 m!4626777))

(assert (=> b!4033598 m!4626807))

(assert (=> b!4033598 m!4626807))

(assert (=> b!4033598 m!4626809))

(assert (=> b!4033598 m!4626809))

(declare-fun m!4626821 () Bool)

(assert (=> b!4033598 m!4626821))

(assert (=> b!4033250 d!1194792))

(declare-fun d!1194794 () Bool)

(assert (=> d!1194794 (= suffixResult!105 lt!1434457)))

(declare-fun lt!1434685 () Unit!62383)

(declare-fun choose!24415 (List!43330 List!43330 List!43330 List!43330 List!43330) Unit!62383)

(assert (=> d!1194794 (= lt!1434685 (choose!24415 lt!1434439 suffixResult!105 lt!1434439 lt!1434457 lt!1434434))))

(assert (=> d!1194794 (isPrefix!4000 lt!1434439 lt!1434434)))

(assert (=> d!1194794 (= (lemmaSamePrefixThenSameSuffix!2161 lt!1434439 suffixResult!105 lt!1434439 lt!1434457 lt!1434434) lt!1434685)))

(declare-fun bs!590380 () Bool)

(assert (= bs!590380 d!1194794))

(declare-fun m!4626835 () Bool)

(assert (=> bs!590380 m!4626835))

(assert (=> bs!590380 m!4626357))

(assert (=> b!4033250 d!1194794))

(declare-fun b!4033609 () Bool)

(declare-fun e!2502861 () Bool)

(assert (=> b!4033609 (= e!2502861 (isPrefix!4000 (tail!6276 lt!1434439) (tail!6276 lt!1434464)))))

(declare-fun b!4033610 () Bool)

(declare-fun e!2502863 () Bool)

(assert (=> b!4033610 (= e!2502863 (>= (size!32294 lt!1434464) (size!32294 lt!1434439)))))

(declare-fun b!4033608 () Bool)

(declare-fun res!1642331 () Bool)

(assert (=> b!4033608 (=> (not res!1642331) (not e!2502861))))

(assert (=> b!4033608 (= res!1642331 (= (head!8544 lt!1434439) (head!8544 lt!1434464)))))

(declare-fun b!4033607 () Bool)

(declare-fun e!2502862 () Bool)

(assert (=> b!4033607 (= e!2502862 e!2502861)))

(declare-fun res!1642332 () Bool)

(assert (=> b!4033607 (=> (not res!1642332) (not e!2502861))))

(assert (=> b!4033607 (= res!1642332 (not (is-Nil!43206 lt!1434464)))))

(declare-fun d!1194798 () Bool)

(assert (=> d!1194798 e!2502863))

(declare-fun res!1642333 () Bool)

(assert (=> d!1194798 (=> res!1642333 e!2502863)))

(declare-fun lt!1434686 () Bool)

(assert (=> d!1194798 (= res!1642333 (not lt!1434686))))

(assert (=> d!1194798 (= lt!1434686 e!2502862)))

(declare-fun res!1642330 () Bool)

(assert (=> d!1194798 (=> res!1642330 e!2502862)))

(assert (=> d!1194798 (= res!1642330 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194798 (= (isPrefix!4000 lt!1434439 lt!1434464) lt!1434686)))

(assert (= (and d!1194798 (not res!1642330)) b!4033607))

(assert (= (and b!4033607 res!1642332) b!4033608))

(assert (= (and b!4033608 res!1642331) b!4033609))

(assert (= (and d!1194798 (not res!1642333)) b!4033610))

(assert (=> b!4033609 m!4626713))

(declare-fun m!4626837 () Bool)

(assert (=> b!4033609 m!4626837))

(assert (=> b!4033609 m!4626713))

(assert (=> b!4033609 m!4626837))

(declare-fun m!4626839 () Bool)

(assert (=> b!4033609 m!4626839))

(declare-fun m!4626841 () Bool)

(assert (=> b!4033610 m!4626841))

(assert (=> b!4033610 m!4626371))

(assert (=> b!4033608 m!4626717))

(declare-fun m!4626843 () Bool)

(assert (=> b!4033608 m!4626843))

(assert (=> b!4033250 d!1194798))

(declare-fun d!1194800 () Bool)

(assert (=> d!1194800 (isPrefix!4000 lt!1434439 (++!11315 lt!1434439 lt!1434457))))

(declare-fun lt!1434687 () Unit!62383)

(assert (=> d!1194800 (= lt!1434687 (choose!24414 lt!1434439 lt!1434457))))

(assert (=> d!1194800 (= (lemmaConcatTwoListThenFirstIsPrefix!2835 lt!1434439 lt!1434457) lt!1434687)))

(declare-fun bs!590381 () Bool)

(assert (= bs!590381 d!1194800))

(assert (=> bs!590381 m!4626309))

(assert (=> bs!590381 m!4626309))

(declare-fun m!4626845 () Bool)

(assert (=> bs!590381 m!4626845))

(declare-fun m!4626847 () Bool)

(assert (=> bs!590381 m!4626847))

(assert (=> b!4033250 d!1194800))

(declare-fun b!4033611 () Bool)

(declare-fun res!1642336 () Bool)

(declare-fun e!2502866 () Bool)

(assert (=> b!4033611 (=> (not res!1642336) (not e!2502866))))

(declare-fun lt!1434692 () Option!9327)

(assert (=> b!4033611 (= res!1642336 (matchR!5771 (regex!6913 (rule!9977 (_1!24278 (get!14177 lt!1434692)))) (list!16077 (charsOf!4729 (_1!24278 (get!14177 lt!1434692))))))))

(declare-fun d!1194802 () Bool)

(declare-fun e!2502865 () Bool)

(assert (=> d!1194802 e!2502865))

(declare-fun res!1642335 () Bool)

(assert (=> d!1194802 (=> res!1642335 e!2502865)))

(assert (=> d!1194802 (= res!1642335 (isEmpty!25786 lt!1434692))))

(declare-fun e!2502864 () Option!9327)

(assert (=> d!1194802 (= lt!1434692 e!2502864)))

(declare-fun c!696652 () Bool)

(assert (=> d!1194802 (= c!696652 (and (is-Cons!43208 rules!2999) (is-Nil!43208 (t!334359 rules!2999))))))

(declare-fun lt!1434691 () Unit!62383)

(declare-fun lt!1434689 () Unit!62383)

(assert (=> d!1194802 (= lt!1434691 lt!1434689)))

(assert (=> d!1194802 (isPrefix!4000 lt!1434434 lt!1434434)))

(assert (=> d!1194802 (= lt!1434689 (lemmaIsPrefixRefl!2567 lt!1434434 lt!1434434))))

(assert (=> d!1194802 (rulesValidInductive!2517 thiss!21717 rules!2999)))

(assert (=> d!1194802 (= (maxPrefix!3800 thiss!21717 rules!2999 lt!1434434) lt!1434692)))

(declare-fun b!4033612 () Bool)

(declare-fun res!1642337 () Bool)

(assert (=> b!4033612 (=> (not res!1642337) (not e!2502866))))

(assert (=> b!4033612 (= res!1642337 (< (size!32294 (_2!24278 (get!14177 lt!1434692))) (size!32294 lt!1434434)))))

(declare-fun b!4033613 () Bool)

(assert (=> b!4033613 (= e!2502865 e!2502866)))

(declare-fun res!1642338 () Bool)

(assert (=> b!4033613 (=> (not res!1642338) (not e!2502866))))

(assert (=> b!4033613 (= res!1642338 (isDefined!7096 lt!1434692))))

(declare-fun b!4033614 () Bool)

(declare-fun call!287002 () Option!9327)

(assert (=> b!4033614 (= e!2502864 call!287002)))

(declare-fun b!4033615 () Bool)

(declare-fun res!1642334 () Bool)

(assert (=> b!4033615 (=> (not res!1642334) (not e!2502866))))

(assert (=> b!4033615 (= res!1642334 (= (++!11315 (list!16077 (charsOf!4729 (_1!24278 (get!14177 lt!1434692)))) (_2!24278 (get!14177 lt!1434692))) lt!1434434))))

(declare-fun b!4033616 () Bool)

(assert (=> b!4033616 (= e!2502866 (contains!8577 rules!2999 (rule!9977 (_1!24278 (get!14177 lt!1434692)))))))

(declare-fun b!4033617 () Bool)

(declare-fun res!1642340 () Bool)

(assert (=> b!4033617 (=> (not res!1642340) (not e!2502866))))

(assert (=> b!4033617 (= res!1642340 (= (value!217656 (_1!24278 (get!14177 lt!1434692))) (apply!10102 (transformation!6913 (rule!9977 (_1!24278 (get!14177 lt!1434692)))) (seqFromList!5130 (originalCharacters!7513 (_1!24278 (get!14177 lt!1434692)))))))))

(declare-fun b!4033618 () Bool)

(declare-fun res!1642339 () Bool)

(assert (=> b!4033618 (=> (not res!1642339) (not e!2502866))))

(assert (=> b!4033618 (= res!1642339 (= (list!16077 (charsOf!4729 (_1!24278 (get!14177 lt!1434692)))) (originalCharacters!7513 (_1!24278 (get!14177 lt!1434692)))))))

(declare-fun b!4033619 () Bool)

(declare-fun lt!1434690 () Option!9327)

(declare-fun lt!1434688 () Option!9327)

(assert (=> b!4033619 (= e!2502864 (ite (and (is-None!9326 lt!1434690) (is-None!9326 lt!1434688)) None!9326 (ite (is-None!9326 lt!1434688) lt!1434690 (ite (is-None!9326 lt!1434690) lt!1434688 (ite (>= (size!32293 (_1!24278 (v!39718 lt!1434690))) (size!32293 (_1!24278 (v!39718 lt!1434688)))) lt!1434690 lt!1434688)))))))

(assert (=> b!4033619 (= lt!1434690 call!287002)))

(assert (=> b!4033619 (= lt!1434688 (maxPrefix!3800 thiss!21717 (t!334359 rules!2999) lt!1434434))))

(declare-fun bm!286997 () Bool)

(assert (=> bm!286997 (= call!287002 (maxPrefixOneRule!2812 thiss!21717 (h!48628 rules!2999) lt!1434434))))

(assert (= (and d!1194802 c!696652) b!4033614))

(assert (= (and d!1194802 (not c!696652)) b!4033619))

(assert (= (or b!4033614 b!4033619) bm!286997))

(assert (= (and d!1194802 (not res!1642335)) b!4033613))

(assert (= (and b!4033613 res!1642338) b!4033618))

(assert (= (and b!4033618 res!1642339) b!4033612))

(assert (= (and b!4033612 res!1642337) b!4033615))

(assert (= (and b!4033615 res!1642334) b!4033617))

(assert (= (and b!4033617 res!1642340) b!4033611))

(assert (= (and b!4033611 res!1642336) b!4033616))

(declare-fun m!4626849 () Bool)

(assert (=> b!4033613 m!4626849))

(declare-fun m!4626851 () Bool)

(assert (=> b!4033617 m!4626851))

(declare-fun m!4626853 () Bool)

(assert (=> b!4033617 m!4626853))

(assert (=> b!4033617 m!4626853))

(declare-fun m!4626855 () Bool)

(assert (=> b!4033617 m!4626855))

(declare-fun m!4626857 () Bool)

(assert (=> b!4033619 m!4626857))

(assert (=> b!4033616 m!4626851))

(declare-fun m!4626859 () Bool)

(assert (=> b!4033616 m!4626859))

(declare-fun m!4626861 () Bool)

(assert (=> bm!286997 m!4626861))

(declare-fun m!4626863 () Bool)

(assert (=> d!1194802 m!4626863))

(assert (=> d!1194802 m!4626313))

(assert (=> d!1194802 m!4626315))

(assert (=> d!1194802 m!4626803))

(assert (=> b!4033618 m!4626851))

(declare-fun m!4626865 () Bool)

(assert (=> b!4033618 m!4626865))

(assert (=> b!4033618 m!4626865))

(declare-fun m!4626867 () Bool)

(assert (=> b!4033618 m!4626867))

(assert (=> b!4033612 m!4626851))

(declare-fun m!4626869 () Bool)

(assert (=> b!4033612 m!4626869))

(assert (=> b!4033612 m!4626627))

(assert (=> b!4033615 m!4626851))

(assert (=> b!4033615 m!4626865))

(assert (=> b!4033615 m!4626865))

(assert (=> b!4033615 m!4626867))

(assert (=> b!4033615 m!4626867))

(declare-fun m!4626871 () Bool)

(assert (=> b!4033615 m!4626871))

(assert (=> b!4033611 m!4626851))

(assert (=> b!4033611 m!4626865))

(assert (=> b!4033611 m!4626865))

(assert (=> b!4033611 m!4626867))

(assert (=> b!4033611 m!4626867))

(declare-fun m!4626873 () Bool)

(assert (=> b!4033611 m!4626873))

(assert (=> b!4033259 d!1194802))

(declare-fun b!4033620 () Bool)

(declare-fun e!2502867 () List!43330)

(assert (=> b!4033620 (= e!2502867 suffix!1299)))

(declare-fun b!4033623 () Bool)

(declare-fun e!2502868 () Bool)

(declare-fun lt!1434693 () List!43330)

(assert (=> b!4033623 (= e!2502868 (or (not (= suffix!1299 Nil!43206)) (= lt!1434693 prefix!494)))))

(declare-fun b!4033621 () Bool)

(assert (=> b!4033621 (= e!2502867 (Cons!43206 (h!48626 prefix!494) (++!11315 (t!334357 prefix!494) suffix!1299)))))

(declare-fun b!4033622 () Bool)

(declare-fun res!1642342 () Bool)

(assert (=> b!4033622 (=> (not res!1642342) (not e!2502868))))

(assert (=> b!4033622 (= res!1642342 (= (size!32294 lt!1434693) (+ (size!32294 prefix!494) (size!32294 suffix!1299))))))

(declare-fun d!1194804 () Bool)

(assert (=> d!1194804 e!2502868))

(declare-fun res!1642341 () Bool)

(assert (=> d!1194804 (=> (not res!1642341) (not e!2502868))))

(assert (=> d!1194804 (= res!1642341 (= (content!6561 lt!1434693) (set.union (content!6561 prefix!494) (content!6561 suffix!1299))))))

(assert (=> d!1194804 (= lt!1434693 e!2502867)))

(declare-fun c!696653 () Bool)

(assert (=> d!1194804 (= c!696653 (is-Nil!43206 prefix!494))))

(assert (=> d!1194804 (= (++!11315 prefix!494 suffix!1299) lt!1434693)))

(assert (= (and d!1194804 c!696653) b!4033620))

(assert (= (and d!1194804 (not c!696653)) b!4033621))

(assert (= (and d!1194804 res!1642341) b!4033622))

(assert (= (and b!4033622 res!1642342) b!4033623))

(declare-fun m!4626875 () Bool)

(assert (=> b!4033621 m!4626875))

(declare-fun m!4626877 () Bool)

(assert (=> b!4033622 m!4626877))

(assert (=> b!4033622 m!4626373))

(assert (=> b!4033622 m!4626345))

(declare-fun m!4626879 () Bool)

(assert (=> d!1194804 m!4626879))

(assert (=> d!1194804 m!4626687))

(assert (=> d!1194804 m!4626659))

(assert (=> b!4033259 d!1194804))

(declare-fun d!1194806 () Bool)

(declare-fun lt!1434694 () Int)

(assert (=> d!1194806 (>= lt!1434694 0)))

(declare-fun e!2502869 () Int)

(assert (=> d!1194806 (= lt!1434694 e!2502869)))

(declare-fun c!696654 () Bool)

(assert (=> d!1194806 (= c!696654 (is-Nil!43206 suffix!1299))))

(assert (=> d!1194806 (= (size!32294 suffix!1299) lt!1434694)))

(declare-fun b!4033624 () Bool)

(assert (=> b!4033624 (= e!2502869 0)))

(declare-fun b!4033625 () Bool)

(assert (=> b!4033625 (= e!2502869 (+ 1 (size!32294 (t!334357 suffix!1299))))))

(assert (= (and d!1194806 c!696654) b!4033624))

(assert (= (and d!1194806 (not c!696654)) b!4033625))

(declare-fun m!4626881 () Bool)

(assert (=> b!4033625 m!4626881))

(assert (=> b!4033248 d!1194806))

(declare-fun d!1194808 () Bool)

(declare-fun lt!1434695 () Int)

(assert (=> d!1194808 (>= lt!1434695 0)))

(declare-fun e!2502870 () Int)

(assert (=> d!1194808 (= lt!1434695 e!2502870)))

(declare-fun c!696655 () Bool)

(assert (=> d!1194808 (= c!696655 (is-Nil!43206 newSuffix!27))))

(assert (=> d!1194808 (= (size!32294 newSuffix!27) lt!1434695)))

(declare-fun b!4033626 () Bool)

(assert (=> b!4033626 (= e!2502870 0)))

(declare-fun b!4033627 () Bool)

(assert (=> b!4033627 (= e!2502870 (+ 1 (size!32294 (t!334357 newSuffix!27))))))

(assert (= (and d!1194808 c!696655) b!4033626))

(assert (= (and d!1194808 (not c!696655)) b!4033627))

(declare-fun m!4626883 () Bool)

(assert (=> b!4033627 m!4626883))

(assert (=> b!4033248 d!1194808))

(declare-fun b!4033696 () Bool)

(declare-fun e!2502912 () Option!9327)

(assert (=> b!4033696 (= e!2502912 None!9326)))

(declare-fun b!4033697 () Bool)

(declare-fun e!2502913 () Bool)

(declare-fun e!2502911 () Bool)

(assert (=> b!4033697 (= e!2502913 e!2502911)))

(declare-fun res!1642389 () Bool)

(assert (=> b!4033697 (=> (not res!1642389) (not e!2502911))))

(declare-fun lt!1434727 () Option!9327)

(assert (=> b!4033697 (= res!1642389 (matchR!5771 (regex!6913 (rule!9977 token!484)) (list!16077 (charsOf!4729 (_1!24278 (get!14177 lt!1434727))))))))

(declare-fun b!4033698 () Bool)

(declare-fun res!1642386 () Bool)

(assert (=> b!4033698 (=> (not res!1642386) (not e!2502911))))

(assert (=> b!4033698 (= res!1642386 (= (++!11315 (list!16077 (charsOf!4729 (_1!24278 (get!14177 lt!1434727)))) (_2!24278 (get!14177 lt!1434727))) lt!1434434))))

(declare-fun b!4033699 () Bool)

(declare-fun res!1642384 () Bool)

(assert (=> b!4033699 (=> (not res!1642384) (not e!2502911))))

(assert (=> b!4033699 (= res!1642384 (= (rule!9977 (_1!24278 (get!14177 lt!1434727))) (rule!9977 token!484)))))

(declare-fun b!4033700 () Bool)

(declare-fun res!1642385 () Bool)

(assert (=> b!4033700 (=> (not res!1642385) (not e!2502911))))

(assert (=> b!4033700 (= res!1642385 (= (value!217656 (_1!24278 (get!14177 lt!1434727))) (apply!10102 (transformation!6913 (rule!9977 (_1!24278 (get!14177 lt!1434727)))) (seqFromList!5130 (originalCharacters!7513 (_1!24278 (get!14177 lt!1434727)))))))))

(declare-fun d!1194810 () Bool)

(assert (=> d!1194810 e!2502913))

(declare-fun res!1642388 () Bool)

(assert (=> d!1194810 (=> res!1642388 e!2502913)))

(assert (=> d!1194810 (= res!1642388 (isEmpty!25786 lt!1434727))))

(assert (=> d!1194810 (= lt!1434727 e!2502912)))

(declare-fun c!696667 () Bool)

(declare-datatypes ((tuple2!42292 0))(
  ( (tuple2!42293 (_1!24280 List!43330) (_2!24280 List!43330)) )
))
(declare-fun lt!1434728 () tuple2!42292)

(assert (=> d!1194810 (= c!696667 (isEmpty!25784 (_1!24280 lt!1434728)))))

(declare-fun findLongestMatch!1291 (Regex!11818 List!43330) tuple2!42292)

(assert (=> d!1194810 (= lt!1434728 (findLongestMatch!1291 (regex!6913 (rule!9977 token!484)) lt!1434434))))

(assert (=> d!1194810 (ruleValid!2843 thiss!21717 (rule!9977 token!484))))

(assert (=> d!1194810 (= (maxPrefixOneRule!2812 thiss!21717 (rule!9977 token!484) lt!1434434) lt!1434727)))

(declare-fun b!4033701 () Bool)

(declare-fun size!32297 (BalanceConc!25842) Int)

(assert (=> b!4033701 (= e!2502912 (Some!9326 (tuple2!42289 (Token!12965 (apply!10102 (transformation!6913 (rule!9977 token!484)) (seqFromList!5130 (_1!24280 lt!1434728))) (rule!9977 token!484) (size!32297 (seqFromList!5130 (_1!24280 lt!1434728))) (_1!24280 lt!1434728)) (_2!24280 lt!1434728))))))

(declare-fun lt!1434725 () Unit!62383)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1351 (Regex!11818 List!43330) Unit!62383)

(assert (=> b!4033701 (= lt!1434725 (longestMatchIsAcceptedByMatchOrIsEmpty!1351 (regex!6913 (rule!9977 token!484)) lt!1434434))))

(declare-fun res!1642390 () Bool)

(declare-fun findLongestMatchInner!1378 (Regex!11818 List!43330 Int List!43330 List!43330 Int) tuple2!42292)

(assert (=> b!4033701 (= res!1642390 (isEmpty!25784 (_1!24280 (findLongestMatchInner!1378 (regex!6913 (rule!9977 token!484)) Nil!43206 (size!32294 Nil!43206) lt!1434434 lt!1434434 (size!32294 lt!1434434)))))))

(declare-fun e!2502910 () Bool)

(assert (=> b!4033701 (=> res!1642390 e!2502910)))

(assert (=> b!4033701 e!2502910))

(declare-fun lt!1434729 () Unit!62383)

(assert (=> b!4033701 (= lt!1434729 lt!1434725)))

(declare-fun lt!1434726 () Unit!62383)

(declare-fun lemmaSemiInverse!1898 (TokenValueInjection!13714 BalanceConc!25842) Unit!62383)

(assert (=> b!4033701 (= lt!1434726 (lemmaSemiInverse!1898 (transformation!6913 (rule!9977 token!484)) (seqFromList!5130 (_1!24280 lt!1434728))))))

(declare-fun b!4033702 () Bool)

(assert (=> b!4033702 (= e!2502910 (matchR!5771 (regex!6913 (rule!9977 token!484)) (_1!24280 (findLongestMatchInner!1378 (regex!6913 (rule!9977 token!484)) Nil!43206 (size!32294 Nil!43206) lt!1434434 lt!1434434 (size!32294 lt!1434434)))))))

(declare-fun b!4033703 () Bool)

(assert (=> b!4033703 (= e!2502911 (= (size!32293 (_1!24278 (get!14177 lt!1434727))) (size!32294 (originalCharacters!7513 (_1!24278 (get!14177 lt!1434727))))))))

(declare-fun b!4033704 () Bool)

(declare-fun res!1642387 () Bool)

(assert (=> b!4033704 (=> (not res!1642387) (not e!2502911))))

(assert (=> b!4033704 (= res!1642387 (< (size!32294 (_2!24278 (get!14177 lt!1434727))) (size!32294 lt!1434434)))))

(assert (= (and d!1194810 c!696667) b!4033696))

(assert (= (and d!1194810 (not c!696667)) b!4033701))

(assert (= (and b!4033701 (not res!1642390)) b!4033702))

(assert (= (and d!1194810 (not res!1642388)) b!4033697))

(assert (= (and b!4033697 res!1642389) b!4033698))

(assert (= (and b!4033698 res!1642386) b!4033704))

(assert (= (and b!4033704 res!1642387) b!4033699))

(assert (= (and b!4033699 res!1642384) b!4033700))

(assert (= (and b!4033700 res!1642385) b!4033703))

(declare-fun m!4626951 () Bool)

(assert (=> b!4033699 m!4626951))

(assert (=> b!4033700 m!4626951))

(declare-fun m!4626953 () Bool)

(assert (=> b!4033700 m!4626953))

(assert (=> b!4033700 m!4626953))

(declare-fun m!4626955 () Bool)

(assert (=> b!4033700 m!4626955))

(assert (=> b!4033704 m!4626951))

(declare-fun m!4626957 () Bool)

(assert (=> b!4033704 m!4626957))

(assert (=> b!4033704 m!4626627))

(declare-fun m!4626959 () Bool)

(assert (=> b!4033702 m!4626959))

(assert (=> b!4033702 m!4626627))

(assert (=> b!4033702 m!4626959))

(assert (=> b!4033702 m!4626627))

(declare-fun m!4626961 () Bool)

(assert (=> b!4033702 m!4626961))

(declare-fun m!4626963 () Bool)

(assert (=> b!4033702 m!4626963))

(assert (=> b!4033697 m!4626951))

(declare-fun m!4626965 () Bool)

(assert (=> b!4033697 m!4626965))

(assert (=> b!4033697 m!4626965))

(declare-fun m!4626967 () Bool)

(assert (=> b!4033697 m!4626967))

(assert (=> b!4033697 m!4626967))

(declare-fun m!4626969 () Bool)

(assert (=> b!4033697 m!4626969))

(assert (=> b!4033698 m!4626951))

(assert (=> b!4033698 m!4626965))

(assert (=> b!4033698 m!4626965))

(assert (=> b!4033698 m!4626967))

(assert (=> b!4033698 m!4626967))

(declare-fun m!4626971 () Bool)

(assert (=> b!4033698 m!4626971))

(declare-fun m!4626973 () Bool)

(assert (=> d!1194810 m!4626973))

(declare-fun m!4626975 () Bool)

(assert (=> d!1194810 m!4626975))

(declare-fun m!4626977 () Bool)

(assert (=> d!1194810 m!4626977))

(assert (=> d!1194810 m!4626321))

(assert (=> b!4033703 m!4626951))

(declare-fun m!4626979 () Bool)

(assert (=> b!4033703 m!4626979))

(assert (=> b!4033701 m!4626627))

(declare-fun m!4626981 () Bool)

(assert (=> b!4033701 m!4626981))

(declare-fun m!4626983 () Bool)

(assert (=> b!4033701 m!4626983))

(assert (=> b!4033701 m!4626981))

(declare-fun m!4626985 () Bool)

(assert (=> b!4033701 m!4626985))

(declare-fun m!4626987 () Bool)

(assert (=> b!4033701 m!4626987))

(assert (=> b!4033701 m!4626981))

(declare-fun m!4626989 () Bool)

(assert (=> b!4033701 m!4626989))

(assert (=> b!4033701 m!4626959))

(assert (=> b!4033701 m!4626959))

(assert (=> b!4033701 m!4626627))

(assert (=> b!4033701 m!4626961))

(assert (=> b!4033701 m!4626981))

(declare-fun m!4626991 () Bool)

(assert (=> b!4033701 m!4626991))

(assert (=> b!4033249 d!1194810))

(declare-fun d!1194836 () Bool)

(assert (=> d!1194836 (isPrefix!4000 lt!1434439 (++!11315 lt!1434439 lt!1434438))))

(declare-fun lt!1434732 () Unit!62383)

(assert (=> d!1194836 (= lt!1434732 (choose!24414 lt!1434439 lt!1434438))))

(assert (=> d!1194836 (= (lemmaConcatTwoListThenFirstIsPrefix!2835 lt!1434439 lt!1434438) lt!1434732)))

(declare-fun bs!590384 () Bool)

(assert (= bs!590384 d!1194836))

(assert (=> bs!590384 m!4626285))

(assert (=> bs!590384 m!4626285))

(declare-fun m!4626993 () Bool)

(assert (=> bs!590384 m!4626993))

(declare-fun m!4626995 () Bool)

(assert (=> bs!590384 m!4626995))

(assert (=> b!4033249 d!1194836))

(declare-fun b!4033711 () Bool)

(declare-fun e!2502916 () Bool)

(assert (=> b!4033711 (= e!2502916 (isPrefix!4000 (tail!6276 lt!1434439) (tail!6276 lt!1434465)))))

(declare-fun b!4033712 () Bool)

(declare-fun e!2502918 () Bool)

(assert (=> b!4033712 (= e!2502918 (>= (size!32294 lt!1434465) (size!32294 lt!1434439)))))

(declare-fun b!4033710 () Bool)

(declare-fun res!1642392 () Bool)

(assert (=> b!4033710 (=> (not res!1642392) (not e!2502916))))

(assert (=> b!4033710 (= res!1642392 (= (head!8544 lt!1434439) (head!8544 lt!1434465)))))

(declare-fun b!4033709 () Bool)

(declare-fun e!2502917 () Bool)

(assert (=> b!4033709 (= e!2502917 e!2502916)))

(declare-fun res!1642393 () Bool)

(assert (=> b!4033709 (=> (not res!1642393) (not e!2502916))))

(assert (=> b!4033709 (= res!1642393 (not (is-Nil!43206 lt!1434465)))))

(declare-fun d!1194838 () Bool)

(assert (=> d!1194838 e!2502918))

(declare-fun res!1642394 () Bool)

(assert (=> d!1194838 (=> res!1642394 e!2502918)))

(declare-fun lt!1434733 () Bool)

(assert (=> d!1194838 (= res!1642394 (not lt!1434733))))

(assert (=> d!1194838 (= lt!1434733 e!2502917)))

(declare-fun res!1642391 () Bool)

(assert (=> d!1194838 (=> res!1642391 e!2502917)))

(assert (=> d!1194838 (= res!1642391 (is-Nil!43206 lt!1434439))))

(assert (=> d!1194838 (= (isPrefix!4000 lt!1434439 lt!1434465) lt!1434733)))

(assert (= (and d!1194838 (not res!1642391)) b!4033709))

(assert (= (and b!4033709 res!1642393) b!4033710))

(assert (= (and b!4033710 res!1642392) b!4033711))

(assert (= (and d!1194838 (not res!1642394)) b!4033712))

(assert (=> b!4033711 m!4626713))

(declare-fun m!4626997 () Bool)

(assert (=> b!4033711 m!4626997))

(assert (=> b!4033711 m!4626713))

(assert (=> b!4033711 m!4626997))

(declare-fun m!4626999 () Bool)

(assert (=> b!4033711 m!4626999))

(declare-fun m!4627001 () Bool)

(assert (=> b!4033712 m!4627001))

(assert (=> b!4033712 m!4626371))

(assert (=> b!4033710 m!4626717))

(declare-fun m!4627003 () Bool)

(assert (=> b!4033710 m!4627003))

(assert (=> b!4033249 d!1194838))

(declare-fun d!1194840 () Bool)

(assert (=> d!1194840 (= lt!1434438 suffixResult!105)))

(declare-fun lt!1434734 () Unit!62383)

(assert (=> d!1194840 (= lt!1434734 (choose!24415 lt!1434439 lt!1434438 lt!1434439 suffixResult!105 lt!1434434))))

(assert (=> d!1194840 (isPrefix!4000 lt!1434439 lt!1434434)))

(assert (=> d!1194840 (= (lemmaSamePrefixThenSameSuffix!2161 lt!1434439 lt!1434438 lt!1434439 suffixResult!105 lt!1434434) lt!1434734)))

(declare-fun bs!590385 () Bool)

(assert (= bs!590385 d!1194840))

(declare-fun m!4627005 () Bool)

(assert (=> bs!590385 m!4627005))

(assert (=> bs!590385 m!4626357))

(assert (=> b!4033249 d!1194840))

(declare-fun d!1194842 () Bool)

(assert (=> d!1194842 (= (maxPrefixOneRule!2812 thiss!21717 (rule!9977 token!484) lt!1434434) (Some!9326 (tuple2!42289 (Token!12965 (apply!10102 (transformation!6913 (rule!9977 token!484)) (seqFromList!5130 lt!1434439)) (rule!9977 token!484) (size!32294 lt!1434439) lt!1434439) suffixResult!105)))))

(declare-fun lt!1434739 () Unit!62383)

(declare-fun choose!24417 (LexerInterface!6502 List!43332 List!43330 List!43330 List!43330 Rule!13626) Unit!62383)

(assert (=> d!1194842 (= lt!1434739 (choose!24417 thiss!21717 rules!2999 lt!1434439 lt!1434434 suffixResult!105 (rule!9977 token!484)))))

(assert (=> d!1194842 (not (isEmpty!25782 rules!2999))))

(assert (=> d!1194842 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1618 thiss!21717 rules!2999 lt!1434439 lt!1434434 suffixResult!105 (rule!9977 token!484)) lt!1434739)))

(declare-fun bs!590386 () Bool)

(assert (= bs!590386 d!1194842))

(assert (=> bs!590386 m!4626283))

(assert (=> bs!590386 m!4626339))

(assert (=> bs!590386 m!4626343))

(assert (=> bs!590386 m!4626331))

(assert (=> bs!590386 m!4626339))

(assert (=> bs!590386 m!4626371))

(declare-fun m!4627027 () Bool)

(assert (=> bs!590386 m!4627027))

(assert (=> b!4033249 d!1194842))

(declare-fun d!1194848 () Bool)

(declare-fun fromListB!2335 (List!43330) BalanceConc!25842)

(assert (=> d!1194848 (= (seqFromList!5130 lt!1434439) (fromListB!2335 lt!1434439))))

(declare-fun bs!590387 () Bool)

(assert (= bs!590387 d!1194848))

(declare-fun m!4627029 () Bool)

(assert (=> bs!590387 m!4627029))

(assert (=> b!4033249 d!1194848))

(declare-fun d!1194850 () Bool)

(declare-fun dynLambda!18313 (Int BalanceConc!25842) TokenValue!7143)

(assert (=> d!1194850 (= (apply!10102 (transformation!6913 (rule!9977 token!484)) (seqFromList!5130 lt!1434439)) (dynLambda!18313 (toValue!9441 (transformation!6913 (rule!9977 token!484))) (seqFromList!5130 lt!1434439)))))

(declare-fun b_lambda!117667 () Bool)

(assert (=> (not b_lambda!117667) (not d!1194850)))

(declare-fun t!334376 () Bool)

(declare-fun tb!242281 () Bool)

(assert (=> (and b!4033252 (= (toValue!9441 (transformation!6913 (h!48628 rules!2999))) (toValue!9441 (transformation!6913 (rule!9977 token!484)))) t!334376) tb!242281))

(declare-fun result!293690 () Bool)

(assert (=> tb!242281 (= result!293690 (inv!21 (dynLambda!18313 (toValue!9441 (transformation!6913 (rule!9977 token!484))) (seqFromList!5130 lt!1434439))))))

(declare-fun m!4627031 () Bool)

(assert (=> tb!242281 m!4627031))

(assert (=> d!1194850 t!334376))

(declare-fun b_and!309971 () Bool)

(assert (= b_and!309939 (and (=> t!334376 result!293690) b_and!309971)))

(declare-fun t!334378 () Bool)

(declare-fun tb!242283 () Bool)

(assert (=> (and b!4033241 (= (toValue!9441 (transformation!6913 (rule!9977 token!484))) (toValue!9441 (transformation!6913 (rule!9977 token!484)))) t!334378) tb!242283))

(declare-fun result!293694 () Bool)

(assert (= result!293694 result!293690))

(assert (=> d!1194850 t!334378))

(declare-fun b_and!309973 () Bool)

(assert (= b_and!309943 (and (=> t!334378 result!293694) b_and!309973)))

(assert (=> d!1194850 m!4626339))

(declare-fun m!4627033 () Bool)

(assert (=> d!1194850 m!4627033))

(assert (=> b!4033249 d!1194850))

(declare-fun b!4033761 () Bool)

(declare-fun e!2502946 () Bool)

(declare-fun tp!1225650 () Bool)

(assert (=> b!4033761 (= e!2502946 (and tp_is_empty!20607 tp!1225650))))

(assert (=> b!4033253 (= tp!1225595 e!2502946)))

(assert (= (and b!4033253 (is-Cons!43206 (t!334357 newSuffix!27))) b!4033761))

(declare-fun e!2502949 () Bool)

(assert (=> b!4033251 (= tp!1225590 e!2502949)))

(declare-fun b!4033773 () Bool)

(declare-fun tp!1225662 () Bool)

(declare-fun tp!1225665 () Bool)

(assert (=> b!4033773 (= e!2502949 (and tp!1225662 tp!1225665))))

(declare-fun b!4033774 () Bool)

(declare-fun tp!1225663 () Bool)

(assert (=> b!4033774 (= e!2502949 tp!1225663)))

(declare-fun b!4033772 () Bool)

(assert (=> b!4033772 (= e!2502949 tp_is_empty!20607)))

(declare-fun b!4033775 () Bool)

(declare-fun tp!1225661 () Bool)

(declare-fun tp!1225664 () Bool)

(assert (=> b!4033775 (= e!2502949 (and tp!1225661 tp!1225664))))

(assert (= (and b!4033251 (is-ElementMatch!11818 (regex!6913 (rule!9977 token!484)))) b!4033772))

(assert (= (and b!4033251 (is-Concat!18962 (regex!6913 (rule!9977 token!484)))) b!4033773))

(assert (= (and b!4033251 (is-Star!11818 (regex!6913 (rule!9977 token!484)))) b!4033774))

(assert (= (and b!4033251 (is-Union!11818 (regex!6913 (rule!9977 token!484)))) b!4033775))

(declare-fun b!4033776 () Bool)

(declare-fun e!2502950 () Bool)

(declare-fun tp!1225666 () Bool)

(assert (=> b!4033776 (= e!2502950 (and tp_is_empty!20607 tp!1225666))))

(assert (=> b!4033240 (= tp!1225600 e!2502950)))

(assert (= (and b!4033240 (is-Cons!43206 (t!334357 suffixResult!105))) b!4033776))

(declare-fun e!2502951 () Bool)

(assert (=> b!4033257 (= tp!1225592 e!2502951)))

(declare-fun b!4033778 () Bool)

(declare-fun tp!1225668 () Bool)

(declare-fun tp!1225671 () Bool)

(assert (=> b!4033778 (= e!2502951 (and tp!1225668 tp!1225671))))

(declare-fun b!4033779 () Bool)

(declare-fun tp!1225669 () Bool)

(assert (=> b!4033779 (= e!2502951 tp!1225669)))

(declare-fun b!4033777 () Bool)

(assert (=> b!4033777 (= e!2502951 tp_is_empty!20607)))

(declare-fun b!4033780 () Bool)

(declare-fun tp!1225667 () Bool)

(declare-fun tp!1225670 () Bool)

(assert (=> b!4033780 (= e!2502951 (and tp!1225667 tp!1225670))))

(assert (= (and b!4033257 (is-ElementMatch!11818 (regex!6913 (h!48628 rules!2999)))) b!4033777))

(assert (= (and b!4033257 (is-Concat!18962 (regex!6913 (h!48628 rules!2999)))) b!4033778))

(assert (= (and b!4033257 (is-Star!11818 (regex!6913 (h!48628 rules!2999)))) b!4033779))

(assert (= (and b!4033257 (is-Union!11818 (regex!6913 (h!48628 rules!2999)))) b!4033780))

(declare-fun b!4033781 () Bool)

(declare-fun e!2502952 () Bool)

(declare-fun tp!1225672 () Bool)

(assert (=> b!4033781 (= e!2502952 (and tp_is_empty!20607 tp!1225672))))

(assert (=> b!4033255 (= tp!1225593 e!2502952)))

(assert (= (and b!4033255 (is-Cons!43206 (t!334357 prefix!494))) b!4033781))

(declare-fun b!4033782 () Bool)

(declare-fun e!2502953 () Bool)

(declare-fun tp!1225673 () Bool)

(assert (=> b!4033782 (= e!2502953 (and tp_is_empty!20607 tp!1225673))))

(assert (=> b!4033260 (= tp!1225599 e!2502953)))

(assert (= (and b!4033260 (is-Cons!43206 (originalCharacters!7513 token!484))) b!4033782))

(declare-fun b!4033783 () Bool)

(declare-fun e!2502954 () Bool)

(declare-fun tp!1225674 () Bool)

(assert (=> b!4033783 (= e!2502954 (and tp_is_empty!20607 tp!1225674))))

(assert (=> b!4033266 (= tp!1225597 e!2502954)))

(assert (= (and b!4033266 (is-Cons!43206 (t!334357 newSuffixResult!27))) b!4033783))

(declare-fun b!4033784 () Bool)

(declare-fun e!2502955 () Bool)

(declare-fun tp!1225675 () Bool)

(assert (=> b!4033784 (= e!2502955 (and tp_is_empty!20607 tp!1225675))))

(assert (=> b!4033243 (= tp!1225589 e!2502955)))

(assert (= (and b!4033243 (is-Cons!43206 (t!334357 suffix!1299))) b!4033784))

(declare-fun b!4033795 () Bool)

(declare-fun b_free!112409 () Bool)

(declare-fun b_next!113113 () Bool)

(assert (=> b!4033795 (= b_free!112409 (not b_next!113113))))

(declare-fun t!334380 () Bool)

(declare-fun tb!242285 () Bool)

(assert (=> (and b!4033795 (= (toValue!9441 (transformation!6913 (h!48628 (t!334359 rules!2999)))) (toValue!9441 (transformation!6913 (rule!9977 token!484)))) t!334380) tb!242285))

(declare-fun result!293702 () Bool)

(assert (= result!293702 result!293690))

(assert (=> d!1194850 t!334380))

(declare-fun b_and!309975 () Bool)

(declare-fun tp!1225685 () Bool)

(assert (=> b!4033795 (= tp!1225685 (and (=> t!334380 result!293702) b_and!309975))))

(declare-fun b_free!112411 () Bool)

(declare-fun b_next!113115 () Bool)

(assert (=> b!4033795 (= b_free!112411 (not b_next!113115))))

(declare-fun t!334382 () Bool)

(declare-fun tb!242287 () Bool)

(assert (=> (and b!4033795 (= (toChars!9300 (transformation!6913 (h!48628 (t!334359 rules!2999)))) (toChars!9300 (transformation!6913 (rule!9977 (_1!24278 (v!39718 lt!1434447)))))) t!334382) tb!242287))

(declare-fun result!293704 () Bool)

(assert (= result!293704 result!293674))

(assert (=> d!1194714 t!334382))

(declare-fun t!334384 () Bool)

(declare-fun tb!242289 () Bool)

(assert (=> (and b!4033795 (= (toChars!9300 (transformation!6913 (h!48628 (t!334359 rules!2999)))) (toChars!9300 (transformation!6913 (rule!9977 token!484)))) t!334384) tb!242289))

(declare-fun result!293706 () Bool)

(assert (= result!293706 result!293680))

(assert (=> d!1194730 t!334384))

(assert (=> b!4033459 t!334384))

(declare-fun b_and!309977 () Bool)

(declare-fun tp!1225684 () Bool)

(assert (=> b!4033795 (= tp!1225684 (and (=> t!334382 result!293704) (=> t!334384 result!293706) b_and!309977))))

(declare-fun e!2502966 () Bool)

(assert (=> b!4033795 (= e!2502966 (and tp!1225685 tp!1225684))))

(declare-fun b!4033794 () Bool)

(declare-fun e!2502964 () Bool)

(declare-fun tp!1225686 () Bool)

(assert (=> b!4033794 (= e!2502964 (and tp!1225686 (inv!57722 (tag!7773 (h!48628 (t!334359 rules!2999)))) (inv!57725 (transformation!6913 (h!48628 (t!334359 rules!2999)))) e!2502966))))

(declare-fun b!4033793 () Bool)

(declare-fun e!2502965 () Bool)

(declare-fun tp!1225687 () Bool)

(assert (=> b!4033793 (= e!2502965 (and e!2502964 tp!1225687))))

(assert (=> b!4033264 (= tp!1225601 e!2502965)))

(assert (= b!4033794 b!4033795))

(assert (= b!4033793 b!4033794))

(assert (= (and b!4033264 (is-Cons!43208 (t!334359 rules!2999))) b!4033793))

(declare-fun m!4627047 () Bool)

(assert (=> b!4033794 m!4627047))

(declare-fun m!4627049 () Bool)

(assert (=> b!4033794 m!4627049))

(declare-fun b_lambda!117671 () Bool)

(assert (= b_lambda!117667 (or (and b!4033252 b_free!112393 (= (toValue!9441 (transformation!6913 (h!48628 rules!2999))) (toValue!9441 (transformation!6913 (rule!9977 token!484))))) (and b!4033241 b_free!112397) (and b!4033795 b_free!112409 (= (toValue!9441 (transformation!6913 (h!48628 (t!334359 rules!2999)))) (toValue!9441 (transformation!6913 (rule!9977 token!484))))) b_lambda!117671)))

(declare-fun b_lambda!117673 () Bool)

(assert (= b_lambda!117661 (or (and b!4033252 b_free!112395 (= (toChars!9300 (transformation!6913 (h!48628 rules!2999))) (toChars!9300 (transformation!6913 (rule!9977 token!484))))) (and b!4033241 b_free!112399) (and b!4033795 b_free!112411 (= (toChars!9300 (transformation!6913 (h!48628 (t!334359 rules!2999)))) (toChars!9300 (transformation!6913 (rule!9977 token!484))))) b_lambda!117673)))

(declare-fun b_lambda!117675 () Bool)

(assert (= b_lambda!117663 (or (and b!4033252 b_free!112395 (= (toChars!9300 (transformation!6913 (h!48628 rules!2999))) (toChars!9300 (transformation!6913 (rule!9977 token!484))))) (and b!4033241 b_free!112399) (and b!4033795 b_free!112411 (= (toChars!9300 (transformation!6913 (h!48628 (t!334359 rules!2999)))) (toChars!9300 (transformation!6913 (rule!9977 token!484))))) b_lambda!117675)))

(push 1)

(assert (not d!1194794))

(assert (not d!1194720))

(assert b_and!309965)

(assert (not b!4033782))

(assert (not d!1194802))

(assert (not b!4033780))

(assert (not b!4033379))

(assert (not b!4033613))

(assert (not d!1194848))

(assert (not b!4033421))

(assert (not b!4033598))

(assert (not d!1194740))

(assert (not b!4033368))

(assert (not b!4033521))

(assert (not b!4033551))

(assert (not d!1194840))

(assert (not d!1194762))

(assert (not d!1194694))

(assert (not d!1194792))

(assert (not b!4033699))

(assert (not b!4033604))

(assert (not b!4033406))

(assert (not d!1194698))

(assert (not b!4033710))

(assert (not b!4033431))

(assert (not d!1194842))

(assert (not b!4033538))

(assert b_and!309975)

(assert (not b!4033600))

(assert (not b!4033449))

(assert (not d!1194730))

(assert (not b_next!113113))

(assert (not b!4033472))

(assert (not b!4033462))

(assert (not d!1194804))

(assert (not b!4033761))

(assert (not b!4033627))

(assert (not b!4033544))

(assert (not b!4033420))

(assert (not b!4033784))

(assert (not b_lambda!117673))

(assert (not b!4033616))

(assert (not d!1194714))

(assert (not b!4033459))

(assert (not b!4033388))

(assert (not b!4033793))

(assert (not b!4033469))

(assert (not b!4033540))

(assert (not b!4033552))

(assert (not b!4033428))

(assert (not b_next!113101))

(assert (not d!1194722))

(assert (not d!1194836))

(assert (not b!4033618))

(assert (not b!4033611))

(assert (not b!4033367))

(assert (not d!1194710))

(assert (not b_next!113115))

(assert (not b!4033712))

(assert (not b!4033697))

(assert tp_is_empty!20607)

(assert (not d!1194704))

(assert (not b!4033478))

(assert (not b!4033605))

(assert (not b!4033471))

(assert (not b!4033442))

(assert (not b!4033783))

(assert (not b_lambda!117659))

(assert (not b!4033612))

(assert (not b!4033603))

(assert (not b!4033548))

(assert (not b!4033441))

(assert (not b!4033519))

(assert (not b!4033418))

(assert (not b!4033625))

(assert (not d!1194732))

(assert (not b!4033448))

(assert (not b!4033525))

(assert (not b!4033444))

(assert (not b!4033440))

(assert (not b!4033774))

(assert (not d!1194776))

(assert (not tb!242273))

(assert (not b!4033711))

(assert (not b!4033395))

(assert (not d!1194756))

(assert (not d!1194712))

(assert (not b!4033619))

(assert (not d!1194706))

(assert (not b!4033463))

(assert (not d!1194764))

(assert (not b!4033518))

(assert (not b!4033479))

(assert (not bm!286997))

(assert (not b!4033437))

(assert (not d!1194758))

(assert (not b!4033452))

(assert (not b!4033608))

(assert (not d!1194696))

(assert (not b_next!113099))

(assert (not b!4033775))

(assert (not b!4033781))

(assert (not b!4033703))

(assert (not b!4033366))

(assert (not tb!242281))

(assert (not d!1194748))

(assert (not b!4033453))

(assert (not b!4033599))

(assert (not b!4033398))

(assert (not bm!286996))

(assert (not d!1194770))

(assert (not b!4033622))

(assert (not b_next!113103))

(assert (not b!4033523))

(assert (not d!1194708))

(assert (not b!4033550))

(assert (not b!4033467))

(assert (not b!4033546))

(assert (not b!4033477))

(assert (not b!4033610))

(assert (not b!4033513))

(assert (not b!4033779))

(assert (not d!1194750))

(assert (not b!4033460))

(assert (not d!1194786))

(assert (not b!4033383))

(assert (not b_next!113097))

(assert (not d!1194744))

(assert (not b!4033430))

(assert (not d!1194810))

(assert (not b!4033515))

(assert (not b!4033399))

(assert (not b!4033615))

(assert (not d!1194738))

(assert (not d!1194746))

(assert (not b!4033524))

(assert (not b!4033547))

(assert (not b!4033698))

(assert (not b!4033378))

(assert b_and!309971)

(assert (not b!4033537))

(assert (not bm!286990))

(assert (not b!4033704))

(assert (not b!4033606))

(assert (not b!4033621))

(assert (not b!4033776))

(assert (not d!1194800))

(assert (not b!4033543))

(assert b_and!309963)

(assert (not b!4033416))

(assert (not b!4033794))

(assert (not b!4033602))

(assert (not d!1194766))

(assert (not b!4033445))

(assert (not b!4033609))

(assert (not d!1194778))

(assert b_and!309977)

(assert (not d!1194790))

(assert (not b!4033702))

(assert (not b_lambda!117675))

(assert (not b!4033516))

(assert (not b_lambda!117671))

(assert (not tb!242269))

(assert (not b!4033542))

(assert (not d!1194692))

(assert (not d!1194754))

(assert (not b!4033700))

(assert (not b!4033617))

(assert b_and!309973)

(assert (not b!4033466))

(assert (not d!1194728))

(assert (not b!4033701))

(assert (not b!4033401))

(assert (not b!4033778))

(assert (not d!1194772))

(assert (not b!4033773))

(assert (not d!1194752))

(assert (not b!4033474))

(assert (not d!1194718))

(check-sat)

(pop 1)

(push 1)

(assert b_and!309965)

(assert b_and!309975)

(assert (not b_next!113113))

(assert (not b_next!113101))

(assert (not b_next!113115))

(assert (not b_next!113099))

(assert (not b_next!113103))

(assert (not b_next!113097))

(assert b_and!309971)

(assert b_and!309963)

(assert b_and!309977)

(assert b_and!309973)

(check-sat)

(pop 1)

