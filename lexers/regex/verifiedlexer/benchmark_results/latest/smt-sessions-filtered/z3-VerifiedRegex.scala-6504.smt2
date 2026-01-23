; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!342258 () Bool)

(assert start!342258)

(declare-fun b!3657760 () Bool)

(declare-fun b_free!96433 () Bool)

(declare-fun b_next!97137 () Bool)

(assert (=> b!3657760 (= b_free!96433 (not b_next!97137))))

(declare-fun tp!1114504 () Bool)

(declare-fun b_and!271195 () Bool)

(assert (=> b!3657760 (= tp!1114504 b_and!271195)))

(declare-fun b_free!96435 () Bool)

(declare-fun b_next!97139 () Bool)

(assert (=> b!3657760 (= b_free!96435 (not b_next!97139))))

(declare-fun tp!1114498 () Bool)

(declare-fun b_and!271197 () Bool)

(assert (=> b!3657760 (= tp!1114498 b_and!271197)))

(declare-fun b!3657756 () Bool)

(declare-fun b_free!96437 () Bool)

(declare-fun b_next!97141 () Bool)

(assert (=> b!3657756 (= b_free!96437 (not b_next!97141))))

(declare-fun tp!1114501 () Bool)

(declare-fun b_and!271199 () Bool)

(assert (=> b!3657756 (= tp!1114501 b_and!271199)))

(declare-fun b_free!96439 () Bool)

(declare-fun b_next!97143 () Bool)

(assert (=> b!3657756 (= b_free!96439 (not b_next!97143))))

(declare-fun tp!1114502 () Bool)

(declare-fun b_and!271201 () Bool)

(assert (=> b!3657756 (= tp!1114502 b_and!271201)))

(declare-fun b!3657718 () Bool)

(declare-fun b_free!96441 () Bool)

(declare-fun b_next!97145 () Bool)

(assert (=> b!3657718 (= b_free!96441 (not b_next!97145))))

(declare-fun tp!1114497 () Bool)

(declare-fun b_and!271203 () Bool)

(assert (=> b!3657718 (= tp!1114497 b_and!271203)))

(declare-fun b_free!96443 () Bool)

(declare-fun b_next!97147 () Bool)

(assert (=> b!3657718 (= b_free!96443 (not b_next!97147))))

(declare-fun tp!1114492 () Bool)

(declare-fun b_and!271205 () Bool)

(assert (=> b!3657718 (= tp!1114492 b_and!271205)))

(declare-fun b!3657745 () Bool)

(declare-fun b_free!96445 () Bool)

(declare-fun b_next!97149 () Bool)

(assert (=> b!3657745 (= b_free!96445 (not b_next!97149))))

(declare-fun tp!1114500 () Bool)

(declare-fun b_and!271207 () Bool)

(assert (=> b!3657745 (= tp!1114500 b_and!271207)))

(declare-fun b_free!96447 () Bool)

(declare-fun b_next!97151 () Bool)

(assert (=> b!3657745 (= b_free!96447 (not b_next!97151))))

(declare-fun tp!1114503 () Bool)

(declare-fun b_and!271209 () Bool)

(assert (=> b!3657745 (= tp!1114503 b_and!271209)))

(declare-fun b!3657716 () Bool)

(declare-datatypes ((Unit!55778 0))(
  ( (Unit!55779) )
))
(declare-fun e!2264804 () Unit!55778)

(declare-fun Unit!55780 () Unit!55778)

(assert (=> b!3657716 (= e!2264804 Unit!55780)))

(declare-fun b!3657717 () Bool)

(declare-fun res!1484636 () Bool)

(declare-fun e!2264783 () Bool)

(assert (=> b!3657717 (=> (not res!1484636) (not e!2264783))))

(declare-datatypes ((List!38711 0))(
  ( (Nil!38587) (Cons!38587 (h!44007 (_ BitVec 16)) (t!298214 List!38711)) )
))
(declare-datatypes ((TokenValue!6018 0))(
  ( (FloatLiteralValue!12036 (text!42571 List!38711)) (TokenValueExt!6017 (__x!24253 Int)) (Broken!30090 (value!185392 List!38711)) (Object!6141) (End!6018) (Def!6018) (Underscore!6018) (Match!6018) (Else!6018) (Error!6018) (Case!6018) (If!6018) (Extends!6018) (Abstract!6018) (Class!6018) (Val!6018) (DelimiterValue!12036 (del!6078 List!38711)) (KeywordValue!6024 (value!185393 List!38711)) (CommentValue!12036 (value!185394 List!38711)) (WhitespaceValue!12036 (value!185395 List!38711)) (IndentationValue!6018 (value!185396 List!38711)) (String!43423) (Int32!6018) (Broken!30091 (value!185397 List!38711)) (Boolean!6019) (Unit!55781) (OperatorValue!6021 (op!6078 List!38711)) (IdentifierValue!12036 (value!185398 List!38711)) (IdentifierValue!12037 (value!185399 List!38711)) (WhitespaceValue!12037 (value!185400 List!38711)) (True!12036) (False!12036) (Broken!30092 (value!185401 List!38711)) (Broken!30093 (value!185402 List!38711)) (True!12037) (RightBrace!6018) (RightBracket!6018) (Colon!6018) (Null!6018) (Comma!6018) (LeftBracket!6018) (False!12037) (LeftBrace!6018) (ImaginaryLiteralValue!6018 (text!42572 List!38711)) (StringLiteralValue!18054 (value!185403 List!38711)) (EOFValue!6018 (value!185404 List!38711)) (IdentValue!6018 (value!185405 List!38711)) (DelimiterValue!12037 (value!185406 List!38711)) (DedentValue!6018 (value!185407 List!38711)) (NewLineValue!6018 (value!185408 List!38711)) (IntegerValue!18054 (value!185409 (_ BitVec 32)) (text!42573 List!38711)) (IntegerValue!18055 (value!185410 Int) (text!42574 List!38711)) (Times!6018) (Or!6018) (Equal!6018) (Minus!6018) (Broken!30094 (value!185411 List!38711)) (And!6018) (Div!6018) (LessEqual!6018) (Mod!6018) (Concat!16565) (Not!6018) (Plus!6018) (SpaceValue!6018 (value!185412 List!38711)) (IntegerValue!18056 (value!185413 Int) (text!42575 List!38711)) (StringLiteralValue!18055 (text!42576 List!38711)) (FloatLiteralValue!12037 (text!42577 List!38711)) (BytesLiteralValue!6018 (value!185414 List!38711)) (CommentValue!12037 (value!185415 List!38711)) (StringLiteralValue!18056 (value!185416 List!38711)) (ErrorTokenValue!6018 (msg!6079 List!38711)) )
))
(declare-datatypes ((C!21280 0))(
  ( (C!21281 (val!12688 Int)) )
))
(declare-datatypes ((Regex!10547 0))(
  ( (ElementMatch!10547 (c!632166 C!21280)) (Concat!16566 (regOne!21606 Regex!10547) (regTwo!21606 Regex!10547)) (EmptyExpr!10547) (Star!10547 (reg!10876 Regex!10547)) (EmptyLang!10547) (Union!10547 (regOne!21607 Regex!10547) (regTwo!21607 Regex!10547)) )
))
(declare-datatypes ((String!43424 0))(
  ( (String!43425 (value!185417 String)) )
))
(declare-datatypes ((List!38712 0))(
  ( (Nil!38588) (Cons!38588 (h!44008 C!21280) (t!298215 List!38712)) )
))
(declare-datatypes ((IArray!23599 0))(
  ( (IArray!23600 (innerList!11857 List!38712)) )
))
(declare-datatypes ((Conc!11797 0))(
  ( (Node!11797 (left!30117 Conc!11797) (right!30447 Conc!11797) (csize!23824 Int) (cheight!12008 Int)) (Leaf!18302 (xs!14999 IArray!23599) (csize!23825 Int)) (Empty!11797) )
))
(declare-datatypes ((BalanceConc!23208 0))(
  ( (BalanceConc!23209 (c!632167 Conc!11797)) )
))
(declare-datatypes ((TokenValueInjection!11464 0))(
  ( (TokenValueInjection!11465 (toValue!8080 Int) (toChars!7939 Int)) )
))
(declare-datatypes ((Rule!11376 0))(
  ( (Rule!11377 (regex!5788 Regex!10547) (tag!6562 String!43424) (isSeparator!5788 Bool) (transformation!5788 TokenValueInjection!11464)) )
))
(declare-datatypes ((List!38713 0))(
  ( (Nil!38589) (Cons!38589 (h!44009 Rule!11376) (t!298216 List!38713)) )
))
(declare-fun rules!3307 () List!38713)

(declare-fun rule!403 () Rule!11376)

(declare-fun contains!7641 (List!38713 Rule!11376) Bool)

(assert (=> b!3657717 (= res!1484636 (contains!7641 rules!3307 rule!403))))

(declare-fun e!2264793 () Bool)

(assert (=> b!3657718 (= e!2264793 (and tp!1114497 tp!1114492))))

(declare-fun b!3657719 () Bool)

(assert (=> b!3657719 false))

(declare-fun lt!1271221 () Unit!55778)

(declare-fun call!264503 () Unit!55778)

(assert (=> b!3657719 (= lt!1271221 call!264503)))

(declare-fun call!264499 () Bool)

(assert (=> b!3657719 (not call!264499)))

(declare-fun lt!1271252 () C!21280)

(declare-datatypes ((LexerInterface!5377 0))(
  ( (LexerInterfaceExt!5374 (__x!24254 Int)) (Lexer!5375) )
))
(declare-fun thiss!23823 () LexerInterface!5377)

(declare-datatypes ((Token!10942 0))(
  ( (Token!10943 (value!185418 TokenValue!6018) (rule!8596 Rule!11376) (size!29477 Int) (originalCharacters!6502 List!38712)) )
))
(declare-datatypes ((tuple2!38452 0))(
  ( (tuple2!38453 (_1!22360 Token!10942) (_2!22360 List!38712)) )
))
(declare-fun lt!1271232 () tuple2!38452)

(declare-fun anOtherTypeRule!33 () Rule!11376)

(declare-fun lt!1271212 () Unit!55778)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!316 (LexerInterface!5377 List!38713 List!38713 Rule!11376 Rule!11376 C!21280) Unit!55778)

(assert (=> b!3657719 (= lt!1271212 (lemmaSepRuleNotContainsCharContainedInANonSepRule!316 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8596 (_1!22360 lt!1271232)) lt!1271252))))

(declare-fun e!2264800 () Unit!55778)

(declare-fun Unit!55782 () Unit!55778)

(assert (=> b!3657719 (= e!2264800 Unit!55782)))

(declare-fun b!3657720 () Bool)

(declare-fun e!2264780 () Bool)

(declare-fun e!2264810 () Bool)

(assert (=> b!3657720 (= e!2264780 e!2264810)))

(declare-fun res!1484626 () Bool)

(assert (=> b!3657720 (=> (not res!1484626) (not e!2264810))))

(declare-fun lt!1271247 () Rule!11376)

(declare-fun matchR!5116 (Regex!10547 List!38712) Bool)

(declare-fun list!14310 (BalanceConc!23208) List!38712)

(declare-fun charsOf!3802 (Token!10942) BalanceConc!23208)

(assert (=> b!3657720 (= res!1484626 (matchR!5116 (regex!5788 lt!1271247) (list!14310 (charsOf!3802 (_1!22360 lt!1271232)))))))

(declare-datatypes ((Option!8204 0))(
  ( (None!8203) (Some!8203 (v!38083 Rule!11376)) )
))
(declare-fun lt!1271236 () Option!8204)

(declare-fun get!12708 (Option!8204) Rule!11376)

(assert (=> b!3657720 (= lt!1271247 (get!12708 lt!1271236))))

(declare-fun b!3657721 () Bool)

(declare-fun e!2264803 () Bool)

(declare-fun e!2264809 () Bool)

(declare-fun tp!1114494 () Bool)

(assert (=> b!3657721 (= e!2264803 (and e!2264809 tp!1114494))))

(declare-fun bm!264494 () Bool)

(declare-fun lt!1271240 () List!38712)

(declare-fun lt!1271213 () C!21280)

(declare-fun call!264504 () Unit!55778)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!736 (Regex!10547 List!38712 C!21280) Unit!55778)

(assert (=> bm!264494 (= call!264504 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!736 (regex!5788 (rule!8596 (_1!22360 lt!1271232))) lt!1271240 lt!1271213))))

(declare-fun b!3657722 () Bool)

(declare-fun e!2264795 () Unit!55778)

(declare-fun e!2264811 () Unit!55778)

(assert (=> b!3657722 (= e!2264795 e!2264811)))

(declare-fun c!632164 () Bool)

(assert (=> b!3657722 (= c!632164 (isSeparator!5788 (rule!8596 (_1!22360 lt!1271232))))))

(declare-fun bm!264495 () Bool)

(declare-fun call!264501 () Bool)

(declare-fun call!264500 () List!38712)

(declare-fun contains!7642 (List!38712 C!21280) Bool)

(assert (=> bm!264495 (= call!264501 (contains!7642 call!264500 lt!1271213))))

(declare-fun b!3657723 () Bool)

(declare-fun res!1484625 () Bool)

(declare-fun e!2264812 () Bool)

(assert (=> b!3657723 (=> res!1484625 e!2264812)))

(declare-fun sepAndNonSepRulesDisjointChars!1956 (List!38713 List!38713) Bool)

(assert (=> b!3657723 (= res!1484625 (not (sepAndNonSepRulesDisjointChars!1956 rules!3307 rules!3307)))))

(declare-fun b!3657724 () Bool)

(declare-fun e!2264788 () Bool)

(assert (=> b!3657724 (= e!2264812 e!2264788)))

(declare-fun res!1484635 () Bool)

(assert (=> b!3657724 (=> res!1484635 e!2264788)))

(declare-fun lt!1271256 () List!38712)

(declare-fun isPrefix!3151 (List!38712 List!38712) Bool)

(assert (=> b!3657724 (= res!1484635 (not (isPrefix!3151 lt!1271240 lt!1271256)))))

(declare-fun ++!9604 (List!38712 List!38712) List!38712)

(assert (=> b!3657724 (isPrefix!3151 lt!1271240 (++!9604 lt!1271240 (_2!22360 lt!1271232)))))

(declare-fun lt!1271220 () Unit!55778)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2070 (List!38712 List!38712) Unit!55778)

(assert (=> b!3657724 (= lt!1271220 (lemmaConcatTwoListThenFirstIsPrefix!2070 lt!1271240 (_2!22360 lt!1271232)))))

(declare-fun lt!1271255 () BalanceConc!23208)

(assert (=> b!3657724 (= lt!1271240 (list!14310 lt!1271255))))

(assert (=> b!3657724 (= lt!1271255 (charsOf!3802 (_1!22360 lt!1271232)))))

(assert (=> b!3657724 e!2264780))

(declare-fun res!1484640 () Bool)

(assert (=> b!3657724 (=> (not res!1484640) (not e!2264780))))

(declare-fun isDefined!6436 (Option!8204) Bool)

(assert (=> b!3657724 (= res!1484640 (isDefined!6436 lt!1271236))))

(declare-fun getRuleFromTag!1392 (LexerInterface!5377 List!38713 String!43424) Option!8204)

(assert (=> b!3657724 (= lt!1271236 (getRuleFromTag!1392 thiss!23823 rules!3307 (tag!6562 (rule!8596 (_1!22360 lt!1271232)))))))

(declare-fun lt!1271224 () Unit!55778)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1392 (LexerInterface!5377 List!38713 List!38712 Token!10942) Unit!55778)

(assert (=> b!3657724 (= lt!1271224 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1392 thiss!23823 rules!3307 lt!1271256 (_1!22360 lt!1271232)))))

(declare-datatypes ((Option!8205 0))(
  ( (None!8204) (Some!8204 (v!38084 tuple2!38452)) )
))
(declare-fun lt!1271254 () Option!8205)

(declare-fun get!12709 (Option!8205) tuple2!38452)

(assert (=> b!3657724 (= lt!1271232 (get!12709 lt!1271254))))

(declare-fun lt!1271225 () Unit!55778)

(declare-fun suffix!1395 () List!38712)

(declare-fun lt!1271248 () List!38712)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1055 (LexerInterface!5377 List!38713 List!38712 List!38712) Unit!55778)

(assert (=> b!3657724 (= lt!1271225 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1055 thiss!23823 rules!3307 lt!1271248 suffix!1395))))

(declare-fun maxPrefix!2911 (LexerInterface!5377 List!38713 List!38712) Option!8205)

(assert (=> b!3657724 (= lt!1271254 (maxPrefix!2911 thiss!23823 rules!3307 lt!1271256))))

(assert (=> b!3657724 (isPrefix!3151 lt!1271248 lt!1271256)))

(declare-fun lt!1271223 () Unit!55778)

(assert (=> b!3657724 (= lt!1271223 (lemmaConcatTwoListThenFirstIsPrefix!2070 lt!1271248 suffix!1395))))

(assert (=> b!3657724 (= lt!1271256 (++!9604 lt!1271248 suffix!1395))))

(declare-fun b!3657725 () Bool)

(declare-fun res!1484623 () Bool)

(declare-fun e!2264782 () Bool)

(assert (=> b!3657725 (=> res!1484623 e!2264782)))

(declare-fun isEmpty!22880 (List!38712) Bool)

(assert (=> b!3657725 (= res!1484623 (isEmpty!22880 suffix!1395))))

(declare-fun b!3657726 () Bool)

(declare-fun res!1484641 () Bool)

(assert (=> b!3657726 (=> (not res!1484641) (not e!2264783))))

(declare-fun isEmpty!22881 (List!38713) Bool)

(assert (=> b!3657726 (= res!1484641 (not (isEmpty!22881 rules!3307)))))

(declare-fun bm!264496 () Bool)

(assert (=> bm!264496 (= call!264503 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!736 (regex!5788 (rule!8596 (_1!22360 lt!1271232))) lt!1271240 lt!1271252))))

(declare-fun tp!1114496 () Bool)

(declare-fun b!3657727 () Bool)

(declare-fun e!2264791 () Bool)

(declare-fun inv!52047 (String!43424) Bool)

(declare-fun inv!52050 (TokenValueInjection!11464) Bool)

(assert (=> b!3657727 (= e!2264809 (and tp!1114496 (inv!52047 (tag!6562 (h!44009 rules!3307))) (inv!52050 (transformation!5788 (h!44009 rules!3307))) e!2264791))))

(declare-fun bm!264497 () Bool)

(declare-fun usedCharacters!1000 (Regex!10547) List!38712)

(assert (=> bm!264497 (= call!264500 (usedCharacters!1000 (regex!5788 (rule!8596 (_1!22360 lt!1271232)))))))

(declare-fun b!3657728 () Bool)

(declare-fun res!1484621 () Bool)

(assert (=> b!3657728 (=> (not res!1484621) (not e!2264783))))

(declare-fun rulesInvariant!4774 (LexerInterface!5377 List!38713) Bool)

(assert (=> b!3657728 (= res!1484621 (rulesInvariant!4774 thiss!23823 rules!3307))))

(declare-fun b!3657729 () Bool)

(declare-fun e!2264789 () Bool)

(assert (=> b!3657729 (= e!2264789 true)))

(assert (=> b!3657729 false))

(declare-fun lt!1271238 () Unit!55778)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!330 (LexerInterface!5377 List!38713 Rule!11376 List!38712 List!38712 List!38712 Rule!11376) Unit!55778)

(assert (=> b!3657729 (= lt!1271238 (lemmaMaxPrefixOutputsMaxPrefix!330 thiss!23823 rules!3307 (rule!8596 (_1!22360 lt!1271232)) lt!1271240 lt!1271256 lt!1271248 rule!403))))

(declare-fun b!3657730 () Bool)

(declare-fun e!2264806 () Bool)

(declare-fun e!2264794 () Bool)

(assert (=> b!3657730 (= e!2264806 e!2264794)))

(declare-fun res!1484629 () Bool)

(assert (=> b!3657730 (=> (not res!1484629) (not e!2264794))))

(declare-fun lt!1271242 () tuple2!38452)

(declare-fun token!511 () Token!10942)

(assert (=> b!3657730 (= res!1484629 (= (_1!22360 lt!1271242) token!511))))

(declare-fun lt!1271217 () Option!8205)

(assert (=> b!3657730 (= lt!1271242 (get!12709 lt!1271217))))

(declare-fun b!3657731 () Bool)

(declare-fun e!2264808 () Bool)

(declare-fun tp_is_empty!18177 () Bool)

(declare-fun tp!1114495 () Bool)

(assert (=> b!3657731 (= e!2264808 (and tp_is_empty!18177 tp!1114495))))

(declare-fun b!3657732 () Bool)

(declare-fun res!1484639 () Bool)

(assert (=> b!3657732 (=> (not res!1484639) (not e!2264794))))

(assert (=> b!3657732 (= res!1484639 (isEmpty!22880 (_2!22360 lt!1271242)))))

(declare-fun b!3657733 () Bool)

(assert (=> b!3657733 (= e!2264795 e!2264804)))

(declare-fun c!632161 () Bool)

(assert (=> b!3657733 (= c!632161 (not (isSeparator!5788 (rule!8596 (_1!22360 lt!1271232)))))))

(declare-fun e!2264801 () Bool)

(declare-fun tp!1114499 () Bool)

(declare-fun b!3657734 () Bool)

(assert (=> b!3657734 (= e!2264801 (and tp!1114499 (inv!52047 (tag!6562 anOtherTypeRule!33)) (inv!52050 (transformation!5788 anOtherTypeRule!33)) e!2264793))))

(declare-fun bm!264498 () Bool)

(declare-fun call!264502 () List!38712)

(assert (=> bm!264498 (= call!264502 (usedCharacters!1000 (regex!5788 (rule!8596 (_1!22360 lt!1271232)))))))

(declare-fun b!3657735 () Bool)

(declare-fun res!1484637 () Bool)

(assert (=> b!3657735 (=> (not res!1484637) (not e!2264783))))

(assert (=> b!3657735 (= res!1484637 (not (= (isSeparator!5788 anOtherTypeRule!33) (isSeparator!5788 rule!403))))))

(declare-fun b!3657736 () Bool)

(assert (=> b!3657736 false))

(declare-fun lt!1271219 () Unit!55778)

(assert (=> b!3657736 (= lt!1271219 call!264503)))

(assert (=> b!3657736 (not call!264499)))

(declare-fun lt!1271244 () Unit!55778)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!434 (LexerInterface!5377 List!38713 List!38713 Rule!11376 Rule!11376 C!21280) Unit!55778)

(assert (=> b!3657736 (= lt!1271244 (lemmaNonSepRuleNotContainsCharContainedInASepRule!434 thiss!23823 rules!3307 rules!3307 (rule!8596 (_1!22360 lt!1271232)) anOtherTypeRule!33 lt!1271252))))

(declare-fun Unit!55783 () Unit!55778)

(assert (=> b!3657736 (= e!2264800 Unit!55783)))

(declare-fun b!3657737 () Bool)

(declare-fun e!2264798 () Bool)

(assert (=> b!3657737 (= e!2264788 e!2264798)))

(declare-fun res!1484628 () Bool)

(assert (=> b!3657737 (=> res!1484628 e!2264798)))

(declare-fun lt!1271234 () Int)

(declare-fun lt!1271239 () TokenValue!6018)

(assert (=> b!3657737 (= res!1484628 (not (= lt!1271254 (Some!8204 (tuple2!38453 (Token!10943 lt!1271239 (rule!8596 (_1!22360 lt!1271232)) lt!1271234 lt!1271240) (_2!22360 lt!1271232))))))))

(declare-fun size!29478 (BalanceConc!23208) Int)

(assert (=> b!3657737 (= lt!1271234 (size!29478 lt!1271255))))

(declare-fun apply!9290 (TokenValueInjection!11464 BalanceConc!23208) TokenValue!6018)

(assert (=> b!3657737 (= lt!1271239 (apply!9290 (transformation!5788 (rule!8596 (_1!22360 lt!1271232))) lt!1271255))))

(declare-fun lt!1271222 () Unit!55778)

(declare-fun lemmaCharactersSize!833 (Token!10942) Unit!55778)

(assert (=> b!3657737 (= lt!1271222 (lemmaCharactersSize!833 (_1!22360 lt!1271232)))))

(declare-fun lt!1271235 () Unit!55778)

(declare-fun lemmaEqSameImage!971 (TokenValueInjection!11464 BalanceConc!23208 BalanceConc!23208) Unit!55778)

(declare-fun seqFromList!4337 (List!38712) BalanceConc!23208)

(assert (=> b!3657737 (= lt!1271235 (lemmaEqSameImage!971 (transformation!5788 (rule!8596 (_1!22360 lt!1271232))) lt!1271255 (seqFromList!4337 (originalCharacters!6502 (_1!22360 lt!1271232)))))))

(declare-fun lt!1271228 () Unit!55778)

(declare-fun lemmaSemiInverse!1537 (TokenValueInjection!11464 BalanceConc!23208) Unit!55778)

(assert (=> b!3657737 (= lt!1271228 (lemmaSemiInverse!1537 (transformation!5788 (rule!8596 (_1!22360 lt!1271232))) lt!1271255))))

(declare-fun b!3657738 () Bool)

(declare-fun res!1484622 () Bool)

(assert (=> b!3657738 (=> (not res!1484622) (not e!2264783))))

(assert (=> b!3657738 (= res!1484622 (contains!7641 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3657739 () Bool)

(declare-fun res!1484638 () Bool)

(assert (=> b!3657739 (=> (not res!1484638) (not e!2264794))))

(assert (=> b!3657739 (= res!1484638 (= (rule!8596 token!511) rule!403))))

(declare-fun b!3657740 () Bool)

(declare-fun Unit!55784 () Unit!55778)

(assert (=> b!3657740 (= e!2264811 Unit!55784)))

(declare-fun b!3657741 () Bool)

(assert (=> b!3657741 (= e!2264782 e!2264812)))

(declare-fun res!1484631 () Bool)

(assert (=> b!3657741 (=> res!1484631 e!2264812)))

(declare-fun lt!1271230 () List!38712)

(assert (=> b!3657741 (= res!1484631 (contains!7642 lt!1271230 lt!1271252))))

(declare-fun head!7812 (List!38712) C!21280)

(assert (=> b!3657741 (= lt!1271252 (head!7812 suffix!1395))))

(assert (=> b!3657741 (= lt!1271230 (usedCharacters!1000 (regex!5788 rule!403)))))

(declare-fun b!3657742 () Bool)

(assert (=> b!3657742 (= e!2264794 (not e!2264782))))

(declare-fun res!1484630 () Bool)

(assert (=> b!3657742 (=> res!1484630 e!2264782)))

(assert (=> b!3657742 (= res!1484630 (not (matchR!5116 (regex!5788 rule!403) lt!1271248)))))

(declare-fun ruleValid!2052 (LexerInterface!5377 Rule!11376) Bool)

(assert (=> b!3657742 (ruleValid!2052 thiss!23823 rule!403)))

(declare-fun lt!1271241 () Unit!55778)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1206 (LexerInterface!5377 Rule!11376 List!38713) Unit!55778)

(assert (=> b!3657742 (= lt!1271241 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1206 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3657743 () Bool)

(declare-fun res!1484633 () Bool)

(assert (=> b!3657743 (=> res!1484633 e!2264788)))

(assert (=> b!3657743 (= res!1484633 (not (matchR!5116 (regex!5788 (rule!8596 (_1!22360 lt!1271232))) lt!1271240)))))

(declare-fun b!3657744 () Bool)

(declare-fun e!2264781 () Unit!55778)

(declare-fun Unit!55785 () Unit!55778)

(assert (=> b!3657744 (= e!2264781 Unit!55785)))

(declare-fun res!1484627 () Bool)

(assert (=> start!342258 (=> (not res!1484627) (not e!2264783))))

(get-info :version)

(assert (=> start!342258 (= res!1484627 ((_ is Lexer!5375) thiss!23823))))

(assert (=> start!342258 e!2264783))

(assert (=> start!342258 e!2264803))

(assert (=> start!342258 e!2264808))

(assert (=> start!342258 true))

(declare-fun e!2264790 () Bool)

(declare-fun inv!52051 (Token!10942) Bool)

(assert (=> start!342258 (and (inv!52051 token!511) e!2264790)))

(declare-fun e!2264792 () Bool)

(assert (=> start!342258 e!2264792))

(assert (=> start!342258 e!2264801))

(declare-fun e!2264799 () Bool)

(assert (=> b!3657745 (= e!2264799 (and tp!1114500 tp!1114503))))

(declare-fun b!3657746 () Bool)

(declare-fun e!2264787 () Unit!55778)

(declare-fun Unit!55786 () Unit!55778)

(assert (=> b!3657746 (= e!2264787 Unit!55786)))

(declare-fun lt!1271229 () Unit!55778)

(assert (=> b!3657746 (= lt!1271229 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!736 (regex!5788 rule!403) lt!1271248 lt!1271213))))

(assert (=> b!3657746 false))

(declare-fun b!3657747 () Bool)

(declare-fun res!1484642 () Bool)

(assert (=> b!3657747 (=> res!1484642 e!2264812)))

(assert (=> b!3657747 (= res!1484642 (not (contains!7642 (usedCharacters!1000 (regex!5788 anOtherTypeRule!33)) lt!1271252)))))

(declare-fun b!3657748 () Bool)

(assert (=> b!3657748 (= e!2264810 (= (rule!8596 (_1!22360 lt!1271232)) lt!1271247))))

(declare-fun b!3657749 () Bool)

(declare-fun e!2264807 () Bool)

(declare-fun tp!1114491 () Bool)

(declare-fun inv!21 (TokenValue!6018) Bool)

(assert (=> b!3657749 (= e!2264790 (and (inv!21 (value!185418 token!511)) e!2264807 tp!1114491))))

(declare-fun b!3657750 () Bool)

(assert (=> b!3657750 (= e!2264781 e!2264800)))

(declare-fun lt!1271249 () Unit!55778)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!96 (List!38712 List!38712 List!38712 List!38712) Unit!55778)

(assert (=> b!3657750 (= lt!1271249 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!96 lt!1271248 suffix!1395 lt!1271240 lt!1271256))))

(assert (=> b!3657750 (contains!7642 lt!1271240 lt!1271252)))

(declare-fun c!632162 () Bool)

(assert (=> b!3657750 (= c!632162 (isSeparator!5788 rule!403))))

(declare-fun bm!264499 () Bool)

(assert (=> bm!264499 (= call!264499 (contains!7642 call!264502 lt!1271252))))

(declare-fun b!3657751 () Bool)

(assert (=> b!3657751 false))

(declare-fun lt!1271246 () Unit!55778)

(assert (=> b!3657751 (= lt!1271246 call!264504)))

(assert (=> b!3657751 (not call!264501)))

(declare-fun lt!1271250 () Unit!55778)

(assert (=> b!3657751 (= lt!1271250 (lemmaSepRuleNotContainsCharContainedInANonSepRule!316 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8596 (_1!22360 lt!1271232)) lt!1271213))))

(declare-fun Unit!55787 () Unit!55778)

(assert (=> b!3657751 (= e!2264811 Unit!55787)))

(declare-fun b!3657752 () Bool)

(assert (=> b!3657752 false))

(declare-fun lt!1271245 () Unit!55778)

(assert (=> b!3657752 (= lt!1271245 call!264504)))

(assert (=> b!3657752 (not call!264501)))

(declare-fun lt!1271243 () Unit!55778)

(assert (=> b!3657752 (= lt!1271243 (lemmaNonSepRuleNotContainsCharContainedInASepRule!434 thiss!23823 rules!3307 rules!3307 (rule!8596 (_1!22360 lt!1271232)) rule!403 lt!1271213))))

(declare-fun Unit!55788 () Unit!55778)

(assert (=> b!3657752 (= e!2264804 Unit!55788)))

(declare-fun b!3657753 () Bool)

(declare-fun Unit!55789 () Unit!55778)

(assert (=> b!3657753 (= e!2264787 Unit!55789)))

(declare-fun tp!1114493 () Bool)

(declare-fun b!3657754 () Bool)

(assert (=> b!3657754 (= e!2264792 (and tp!1114493 (inv!52047 (tag!6562 rule!403)) (inv!52050 (transformation!5788 rule!403)) e!2264799))))

(declare-fun e!2264796 () Bool)

(declare-fun tp!1114490 () Bool)

(declare-fun b!3657755 () Bool)

(assert (=> b!3657755 (= e!2264807 (and tp!1114490 (inv!52047 (tag!6562 (rule!8596 token!511))) (inv!52050 (transformation!5788 (rule!8596 token!511))) e!2264796))))

(assert (=> b!3657756 (= e!2264796 (and tp!1114501 tp!1114502))))

(declare-fun b!3657757 () Bool)

(declare-fun e!2264785 () Bool)

(assert (=> b!3657757 (= e!2264798 e!2264785)))

(declare-fun res!1484632 () Bool)

(assert (=> b!3657757 (=> res!1484632 e!2264785)))

(declare-fun lt!1271233 () Option!8205)

(declare-fun lt!1271227 () List!38712)

(assert (=> b!3657757 (= res!1484632 (or (not (= lt!1271227 (_2!22360 lt!1271232))) (not (= lt!1271233 (Some!8204 (tuple2!38453 (_1!22360 lt!1271232) lt!1271227))))))))

(assert (=> b!3657757 (= (_2!22360 lt!1271232) lt!1271227)))

(declare-fun lt!1271237 () Unit!55778)

(declare-fun lemmaSamePrefixThenSameSuffix!1478 (List!38712 List!38712 List!38712 List!38712 List!38712) Unit!55778)

(assert (=> b!3657757 (= lt!1271237 (lemmaSamePrefixThenSameSuffix!1478 lt!1271240 (_2!22360 lt!1271232) lt!1271240 lt!1271227 lt!1271256))))

(declare-fun getSuffix!1704 (List!38712 List!38712) List!38712)

(assert (=> b!3657757 (= lt!1271227 (getSuffix!1704 lt!1271256 lt!1271240))))

(declare-fun lt!1271226 () Int)

(declare-fun lt!1271215 () TokenValue!6018)

(assert (=> b!3657757 (= lt!1271233 (Some!8204 (tuple2!38453 (Token!10943 lt!1271215 (rule!8596 (_1!22360 lt!1271232)) lt!1271226 lt!1271240) (_2!22360 lt!1271232))))))

(declare-fun maxPrefixOneRule!2049 (LexerInterface!5377 Rule!11376 List!38712) Option!8205)

(assert (=> b!3657757 (= lt!1271233 (maxPrefixOneRule!2049 thiss!23823 (rule!8596 (_1!22360 lt!1271232)) lt!1271256))))

(declare-fun size!29479 (List!38712) Int)

(assert (=> b!3657757 (= lt!1271226 (size!29479 lt!1271240))))

(assert (=> b!3657757 (= lt!1271215 (apply!9290 (transformation!5788 (rule!8596 (_1!22360 lt!1271232))) (seqFromList!4337 lt!1271240)))))

(declare-fun lt!1271251 () Unit!55778)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1105 (LexerInterface!5377 List!38713 List!38712 List!38712 List!38712 Rule!11376) Unit!55778)

(assert (=> b!3657757 (= lt!1271251 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1105 thiss!23823 rules!3307 lt!1271240 lt!1271256 (_2!22360 lt!1271232) (rule!8596 (_1!22360 lt!1271232))))))

(declare-fun b!3657758 () Bool)

(assert (=> b!3657758 (= e!2264783 e!2264806)))

(declare-fun res!1484624 () Bool)

(assert (=> b!3657758 (=> (not res!1484624) (not e!2264806))))

(declare-fun isDefined!6437 (Option!8205) Bool)

(assert (=> b!3657758 (= res!1484624 (isDefined!6437 lt!1271217))))

(assert (=> b!3657758 (= lt!1271217 (maxPrefix!2911 thiss!23823 rules!3307 lt!1271248))))

(declare-fun lt!1271253 () BalanceConc!23208)

(assert (=> b!3657758 (= lt!1271248 (list!14310 lt!1271253))))

(assert (=> b!3657758 (= lt!1271253 (charsOf!3802 token!511))))

(declare-fun b!3657759 () Bool)

(assert (=> b!3657759 (= e!2264785 e!2264789)))

(declare-fun res!1484634 () Bool)

(assert (=> b!3657759 (=> res!1484634 e!2264789)))

(declare-fun lt!1271216 () Int)

(assert (=> b!3657759 (= res!1484634 (>= lt!1271234 lt!1271216))))

(declare-fun lt!1271231 () Unit!55778)

(assert (=> b!3657759 (= lt!1271231 e!2264781)))

(declare-fun c!632163 () Bool)

(assert (=> b!3657759 (= c!632163 (> lt!1271234 lt!1271216))))

(assert (=> b!3657759 (= lt!1271216 (size!29478 lt!1271253))))

(declare-fun lt!1271214 () Unit!55778)

(assert (=> b!3657759 (= lt!1271214 e!2264795)))

(declare-fun c!632160 () Bool)

(assert (=> b!3657759 (= c!632160 (isSeparator!5788 rule!403))))

(declare-fun lt!1271218 () Unit!55778)

(assert (=> b!3657759 (= lt!1271218 e!2264787)))

(declare-fun c!632165 () Bool)

(assert (=> b!3657759 (= c!632165 (not (contains!7642 lt!1271230 lt!1271213)))))

(assert (=> b!3657759 (= lt!1271213 (head!7812 lt!1271240))))

(assert (=> b!3657760 (= e!2264791 (and tp!1114504 tp!1114498))))

(assert (= (and start!342258 res!1484627) b!3657726))

(assert (= (and b!3657726 res!1484641) b!3657728))

(assert (= (and b!3657728 res!1484621) b!3657717))

(assert (= (and b!3657717 res!1484636) b!3657738))

(assert (= (and b!3657738 res!1484622) b!3657735))

(assert (= (and b!3657735 res!1484637) b!3657758))

(assert (= (and b!3657758 res!1484624) b!3657730))

(assert (= (and b!3657730 res!1484629) b!3657732))

(assert (= (and b!3657732 res!1484639) b!3657739))

(assert (= (and b!3657739 res!1484638) b!3657742))

(assert (= (and b!3657742 (not res!1484630)) b!3657725))

(assert (= (and b!3657725 (not res!1484623)) b!3657741))

(assert (= (and b!3657741 (not res!1484631)) b!3657747))

(assert (= (and b!3657747 (not res!1484642)) b!3657723))

(assert (= (and b!3657723 (not res!1484625)) b!3657724))

(assert (= (and b!3657724 res!1484640) b!3657720))

(assert (= (and b!3657720 res!1484626) b!3657748))

(assert (= (and b!3657724 (not res!1484635)) b!3657743))

(assert (= (and b!3657743 (not res!1484633)) b!3657737))

(assert (= (and b!3657737 (not res!1484628)) b!3657757))

(assert (= (and b!3657757 (not res!1484632)) b!3657759))

(assert (= (and b!3657759 c!632165) b!3657746))

(assert (= (and b!3657759 (not c!632165)) b!3657753))

(assert (= (and b!3657759 c!632160) b!3657733))

(assert (= (and b!3657759 (not c!632160)) b!3657722))

(assert (= (and b!3657733 c!632161) b!3657752))

(assert (= (and b!3657733 (not c!632161)) b!3657716))

(assert (= (and b!3657722 c!632164) b!3657751))

(assert (= (and b!3657722 (not c!632164)) b!3657740))

(assert (= (or b!3657752 b!3657751) bm!264494))

(assert (= (or b!3657752 b!3657751) bm!264497))

(assert (= (or b!3657752 b!3657751) bm!264495))

(assert (= (and b!3657759 c!632163) b!3657750))

(assert (= (and b!3657759 (not c!632163)) b!3657744))

(assert (= (and b!3657750 c!632162) b!3657719))

(assert (= (and b!3657750 (not c!632162)) b!3657736))

(assert (= (or b!3657719 b!3657736) bm!264496))

(assert (= (or b!3657719 b!3657736) bm!264498))

(assert (= (or b!3657719 b!3657736) bm!264499))

(assert (= (and b!3657759 (not res!1484634)) b!3657729))

(assert (= b!3657727 b!3657760))

(assert (= b!3657721 b!3657727))

(assert (= (and start!342258 ((_ is Cons!38589) rules!3307)) b!3657721))

(assert (= (and start!342258 ((_ is Cons!38588) suffix!1395)) b!3657731))

(assert (= b!3657755 b!3657756))

(assert (= b!3657749 b!3657755))

(assert (= start!342258 b!3657749))

(assert (= b!3657754 b!3657745))

(assert (= start!342258 b!3657754))

(assert (= b!3657734 b!3657718))

(assert (= start!342258 b!3657734))

(declare-fun m!4163581 () Bool)

(assert (=> b!3657724 m!4163581))

(declare-fun m!4163583 () Bool)

(assert (=> b!3657724 m!4163583))

(declare-fun m!4163585 () Bool)

(assert (=> b!3657724 m!4163585))

(declare-fun m!4163587 () Bool)

(assert (=> b!3657724 m!4163587))

(declare-fun m!4163589 () Bool)

(assert (=> b!3657724 m!4163589))

(declare-fun m!4163591 () Bool)

(assert (=> b!3657724 m!4163591))

(declare-fun m!4163593 () Bool)

(assert (=> b!3657724 m!4163593))

(declare-fun m!4163595 () Bool)

(assert (=> b!3657724 m!4163595))

(declare-fun m!4163597 () Bool)

(assert (=> b!3657724 m!4163597))

(declare-fun m!4163599 () Bool)

(assert (=> b!3657724 m!4163599))

(declare-fun m!4163601 () Bool)

(assert (=> b!3657724 m!4163601))

(assert (=> b!3657724 m!4163591))

(declare-fun m!4163603 () Bool)

(assert (=> b!3657724 m!4163603))

(declare-fun m!4163605 () Bool)

(assert (=> b!3657724 m!4163605))

(declare-fun m!4163607 () Bool)

(assert (=> b!3657724 m!4163607))

(declare-fun m!4163609 () Bool)

(assert (=> b!3657724 m!4163609))

(declare-fun m!4163611 () Bool)

(assert (=> bm!264497 m!4163611))

(declare-fun m!4163613 () Bool)

(assert (=> bm!264499 m!4163613))

(declare-fun m!4163615 () Bool)

(assert (=> b!3657754 m!4163615))

(declare-fun m!4163617 () Bool)

(assert (=> b!3657754 m!4163617))

(declare-fun m!4163619 () Bool)

(assert (=> b!3657758 m!4163619))

(declare-fun m!4163621 () Bool)

(assert (=> b!3657758 m!4163621))

(declare-fun m!4163623 () Bool)

(assert (=> b!3657758 m!4163623))

(declare-fun m!4163625 () Bool)

(assert (=> b!3657758 m!4163625))

(declare-fun m!4163627 () Bool)

(assert (=> b!3657750 m!4163627))

(declare-fun m!4163629 () Bool)

(assert (=> b!3657750 m!4163629))

(declare-fun m!4163631 () Bool)

(assert (=> bm!264494 m!4163631))

(declare-fun m!4163633 () Bool)

(assert (=> b!3657755 m!4163633))

(declare-fun m!4163635 () Bool)

(assert (=> b!3657755 m!4163635))

(declare-fun m!4163637 () Bool)

(assert (=> bm!264496 m!4163637))

(assert (=> bm!264498 m!4163611))

(declare-fun m!4163639 () Bool)

(assert (=> b!3657751 m!4163639))

(declare-fun m!4163641 () Bool)

(assert (=> b!3657728 m!4163641))

(declare-fun m!4163643 () Bool)

(assert (=> b!3657759 m!4163643))

(declare-fun m!4163645 () Bool)

(assert (=> b!3657759 m!4163645))

(declare-fun m!4163647 () Bool)

(assert (=> b!3657759 m!4163647))

(declare-fun m!4163649 () Bool)

(assert (=> b!3657746 m!4163649))

(declare-fun m!4163651 () Bool)

(assert (=> b!3657747 m!4163651))

(assert (=> b!3657747 m!4163651))

(declare-fun m!4163653 () Bool)

(assert (=> b!3657747 m!4163653))

(declare-fun m!4163655 () Bool)

(assert (=> b!3657727 m!4163655))

(declare-fun m!4163657 () Bool)

(assert (=> b!3657727 m!4163657))

(declare-fun m!4163659 () Bool)

(assert (=> b!3657742 m!4163659))

(declare-fun m!4163661 () Bool)

(assert (=> b!3657742 m!4163661))

(declare-fun m!4163663 () Bool)

(assert (=> b!3657742 m!4163663))

(declare-fun m!4163665 () Bool)

(assert (=> b!3657743 m!4163665))

(declare-fun m!4163667 () Bool)

(assert (=> b!3657741 m!4163667))

(declare-fun m!4163669 () Bool)

(assert (=> b!3657741 m!4163669))

(declare-fun m!4163671 () Bool)

(assert (=> b!3657741 m!4163671))

(declare-fun m!4163673 () Bool)

(assert (=> b!3657752 m!4163673))

(declare-fun m!4163675 () Bool)

(assert (=> b!3657725 m!4163675))

(declare-fun m!4163677 () Bool)

(assert (=> b!3657729 m!4163677))

(declare-fun m!4163679 () Bool)

(assert (=> b!3657726 m!4163679))

(declare-fun m!4163681 () Bool)

(assert (=> b!3657737 m!4163681))

(declare-fun m!4163683 () Bool)

(assert (=> b!3657737 m!4163683))

(declare-fun m!4163685 () Bool)

(assert (=> b!3657737 m!4163685))

(declare-fun m!4163687 () Bool)

(assert (=> b!3657737 m!4163687))

(assert (=> b!3657737 m!4163681))

(declare-fun m!4163689 () Bool)

(assert (=> b!3657737 m!4163689))

(declare-fun m!4163691 () Bool)

(assert (=> b!3657737 m!4163691))

(declare-fun m!4163693 () Bool)

(assert (=> bm!264495 m!4163693))

(declare-fun m!4163695 () Bool)

(assert (=> b!3657723 m!4163695))

(assert (=> b!3657720 m!4163601))

(assert (=> b!3657720 m!4163601))

(declare-fun m!4163697 () Bool)

(assert (=> b!3657720 m!4163697))

(assert (=> b!3657720 m!4163697))

(declare-fun m!4163699 () Bool)

(assert (=> b!3657720 m!4163699))

(declare-fun m!4163701 () Bool)

(assert (=> b!3657720 m!4163701))

(declare-fun m!4163703 () Bool)

(assert (=> b!3657732 m!4163703))

(declare-fun m!4163705 () Bool)

(assert (=> b!3657736 m!4163705))

(declare-fun m!4163707 () Bool)

(assert (=> b!3657738 m!4163707))

(declare-fun m!4163709 () Bool)

(assert (=> b!3657719 m!4163709))

(declare-fun m!4163711 () Bool)

(assert (=> b!3657717 m!4163711))

(declare-fun m!4163713 () Bool)

(assert (=> b!3657749 m!4163713))

(declare-fun m!4163715 () Bool)

(assert (=> b!3657734 m!4163715))

(declare-fun m!4163717 () Bool)

(assert (=> b!3657734 m!4163717))

(declare-fun m!4163719 () Bool)

(assert (=> b!3657757 m!4163719))

(declare-fun m!4163721 () Bool)

(assert (=> b!3657757 m!4163721))

(declare-fun m!4163723 () Bool)

(assert (=> b!3657757 m!4163723))

(declare-fun m!4163725 () Bool)

(assert (=> b!3657757 m!4163725))

(declare-fun m!4163727 () Bool)

(assert (=> b!3657757 m!4163727))

(declare-fun m!4163729 () Bool)

(assert (=> b!3657757 m!4163729))

(declare-fun m!4163731 () Bool)

(assert (=> b!3657757 m!4163731))

(assert (=> b!3657757 m!4163723))

(declare-fun m!4163733 () Bool)

(assert (=> b!3657730 m!4163733))

(declare-fun m!4163735 () Bool)

(assert (=> start!342258 m!4163735))

(check-sat (not b!3657755) (not b!3657729) (not b_next!97143) (not b!3657742) (not b_next!97139) (not b!3657720) (not b_next!97147) (not b!3657750) tp_is_empty!18177 (not b!3657738) b_and!271209 b_and!271207 (not b!3657731) (not b_next!97137) (not bm!264495) (not b!3657752) (not b!3657751) (not b!3657727) (not b!3657730) (not b!3657724) (not b!3657749) b_and!271199 (not b!3657728) (not b_next!97151) (not bm!264496) (not b_next!97141) (not b_next!97145) (not start!342258) (not b!3657732) (not b!3657759) b_and!271195 (not b!3657746) (not b!3657721) (not b!3657737) (not b!3657741) (not b!3657736) b_and!271201 (not bm!264494) (not b!3657757) b_and!271197 (not b!3657758) b_and!271205 b_and!271203 (not b!3657754) (not b!3657734) (not b!3657747) (not b!3657725) (not b_next!97149) (not b!3657719) (not b!3657726) (not bm!264499) (not bm!264498) (not bm!264497) (not b!3657723) (not b!3657743) (not b!3657717))
(check-sat (not b_next!97147) (not b_next!97137) b_and!271195 (not b_next!97143) (not b_next!97139) b_and!271201 b_and!271197 (not b_next!97149) b_and!271209 b_and!271207 b_and!271199 (not b_next!97151) (not b_next!97141) (not b_next!97145) b_and!271205 b_and!271203)
