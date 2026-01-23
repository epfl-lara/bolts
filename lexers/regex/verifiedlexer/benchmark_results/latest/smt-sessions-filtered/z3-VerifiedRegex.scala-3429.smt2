; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!193140 () Bool)

(assert start!193140)

(declare-fun b!1926809 () Bool)

(declare-fun b_free!55217 () Bool)

(declare-fun b_next!55921 () Bool)

(assert (=> b!1926809 (= b_free!55217 (not b_next!55921))))

(declare-fun tp!550444 () Bool)

(declare-fun b_and!151075 () Bool)

(assert (=> b!1926809 (= tp!550444 b_and!151075)))

(declare-fun b_free!55219 () Bool)

(declare-fun b_next!55923 () Bool)

(assert (=> b!1926809 (= b_free!55219 (not b_next!55923))))

(declare-fun tp!550451 () Bool)

(declare-fun b_and!151077 () Bool)

(assert (=> b!1926809 (= tp!550451 b_and!151077)))

(declare-fun b!1926830 () Bool)

(declare-fun b_free!55221 () Bool)

(declare-fun b_next!55925 () Bool)

(assert (=> b!1926830 (= b_free!55221 (not b_next!55925))))

(declare-fun tp!550453 () Bool)

(declare-fun b_and!151079 () Bool)

(assert (=> b!1926830 (= tp!550453 b_and!151079)))

(declare-fun b_free!55223 () Bool)

(declare-fun b_next!55927 () Bool)

(assert (=> b!1926830 (= b_free!55223 (not b_next!55927))))

(declare-fun tp!550454 () Bool)

(declare-fun b_and!151081 () Bool)

(assert (=> b!1926830 (= tp!550454 b_and!151081)))

(declare-fun b!1926820 () Bool)

(declare-fun b_free!55225 () Bool)

(declare-fun b_next!55929 () Bool)

(assert (=> b!1926820 (= b_free!55225 (not b_next!55929))))

(declare-fun tp!550450 () Bool)

(declare-fun b_and!151083 () Bool)

(assert (=> b!1926820 (= tp!550450 b_and!151083)))

(declare-fun b_free!55227 () Bool)

(declare-fun b_next!55931 () Bool)

(assert (=> b!1926820 (= b_free!55227 (not b_next!55931))))

(declare-fun tp!550446 () Bool)

(declare-fun b_and!151085 () Bool)

(assert (=> b!1926820 (= tp!550446 b_and!151085)))

(declare-fun b!1926803 () Bool)

(declare-fun res!861616 () Bool)

(declare-fun e!1231721 () Bool)

(assert (=> b!1926803 (=> (not res!861616) (not e!1231721))))

(declare-datatypes ((LexerInterface!3547 0))(
  ( (LexerInterfaceExt!3544 (__x!13638 Int)) (Lexer!3545) )
))
(declare-fun thiss!23328 () LexerInterface!3547)

(declare-datatypes ((List!22016 0))(
  ( (Nil!21934) (Cons!21934 (h!27335 (_ BitVec 16)) (t!179565 List!22016)) )
))
(declare-datatypes ((TokenValue!4070 0))(
  ( (FloatLiteralValue!8140 (text!28935 List!22016)) (TokenValueExt!4069 (__x!13639 Int)) (Broken!20350 (value!123684 List!22016)) (Object!4151) (End!4070) (Def!4070) (Underscore!4070) (Match!4070) (Else!4070) (Error!4070) (Case!4070) (If!4070) (Extends!4070) (Abstract!4070) (Class!4070) (Val!4070) (DelimiterValue!8140 (del!4130 List!22016)) (KeywordValue!4076 (value!123685 List!22016)) (CommentValue!8140 (value!123686 List!22016)) (WhitespaceValue!8140 (value!123687 List!22016)) (IndentationValue!4070 (value!123688 List!22016)) (String!25467) (Int32!4070) (Broken!20351 (value!123689 List!22016)) (Boolean!4071) (Unit!36277) (OperatorValue!4073 (op!4130 List!22016)) (IdentifierValue!8140 (value!123690 List!22016)) (IdentifierValue!8141 (value!123691 List!22016)) (WhitespaceValue!8141 (value!123692 List!22016)) (True!8140) (False!8140) (Broken!20352 (value!123693 List!22016)) (Broken!20353 (value!123694 List!22016)) (True!8141) (RightBrace!4070) (RightBracket!4070) (Colon!4070) (Null!4070) (Comma!4070) (LeftBracket!4070) (False!8141) (LeftBrace!4070) (ImaginaryLiteralValue!4070 (text!28936 List!22016)) (StringLiteralValue!12210 (value!123695 List!22016)) (EOFValue!4070 (value!123696 List!22016)) (IdentValue!4070 (value!123697 List!22016)) (DelimiterValue!8141 (value!123698 List!22016)) (DedentValue!4070 (value!123699 List!22016)) (NewLineValue!4070 (value!123700 List!22016)) (IntegerValue!12210 (value!123701 (_ BitVec 32)) (text!28937 List!22016)) (IntegerValue!12211 (value!123702 Int) (text!28938 List!22016)) (Times!4070) (Or!4070) (Equal!4070) (Minus!4070) (Broken!20354 (value!123703 List!22016)) (And!4070) (Div!4070) (LessEqual!4070) (Mod!4070) (Concat!9429) (Not!4070) (Plus!4070) (SpaceValue!4070 (value!123704 List!22016)) (IntegerValue!12212 (value!123705 Int) (text!28939 List!22016)) (StringLiteralValue!12211 (text!28940 List!22016)) (FloatLiteralValue!8141 (text!28941 List!22016)) (BytesLiteralValue!4070 (value!123706 List!22016)) (CommentValue!8141 (value!123707 List!22016)) (StringLiteralValue!12212 (value!123708 List!22016)) (ErrorTokenValue!4070 (msg!4131 List!22016)) )
))
(declare-datatypes ((C!10864 0))(
  ( (C!10865 (val!6384 Int)) )
))
(declare-datatypes ((List!22017 0))(
  ( (Nil!21935) (Cons!21935 (h!27336 C!10864) (t!179566 List!22017)) )
))
(declare-datatypes ((String!25468 0))(
  ( (String!25469 (value!123709 String)) )
))
(declare-datatypes ((IArray!14649 0))(
  ( (IArray!14650 (innerList!7382 List!22017)) )
))
(declare-datatypes ((Conc!7322 0))(
  ( (Node!7322 (left!17447 Conc!7322) (right!17777 Conc!7322) (csize!14874 Int) (cheight!7533 Int)) (Leaf!10752 (xs!10216 IArray!14649) (csize!14875 Int)) (Empty!7322) )
))
(declare-datatypes ((BalanceConc!14460 0))(
  ( (BalanceConc!14461 (c!313264 Conc!7322)) )
))
(declare-datatypes ((TokenValueInjection!7724 0))(
  ( (TokenValueInjection!7725 (toValue!5567 Int) (toChars!5426 Int)) )
))
(declare-datatypes ((Regex!5359 0))(
  ( (ElementMatch!5359 (c!313265 C!10864)) (Concat!9430 (regOne!11230 Regex!5359) (regTwo!11230 Regex!5359)) (EmptyExpr!5359) (Star!5359 (reg!5688 Regex!5359)) (EmptyLang!5359) (Union!5359 (regOne!11231 Regex!5359) (regTwo!11231 Regex!5359)) )
))
(declare-datatypes ((Rule!7668 0))(
  ( (Rule!7669 (regex!3934 Regex!5359) (tag!4380 String!25468) (isSeparator!3934 Bool) (transformation!3934 TokenValueInjection!7724)) )
))
(declare-datatypes ((List!22018 0))(
  ( (Nil!21936) (Cons!21936 (h!27337 Rule!7668) (t!179567 List!22018)) )
))
(declare-fun rules!3198 () List!22018)

(declare-datatypes ((Token!7420 0))(
  ( (Token!7421 (value!123710 TokenValue!4070) (rule!6139 Rule!7668) (size!17108 Int) (originalCharacters!4741 List!22017)) )
))
(declare-datatypes ((List!22019 0))(
  ( (Nil!21937) (Cons!21937 (h!27338 Token!7420) (t!179568 List!22019)) )
))
(declare-fun tokens!598 () List!22019)

(declare-fun rulesProduceEachTokenIndividuallyList!1278 (LexerInterface!3547 List!22018 List!22019) Bool)

(assert (=> b!1926803 (= res!861616 (rulesProduceEachTokenIndividuallyList!1278 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1231713 () Bool)

(declare-fun separatorToken!354 () Token!7420)

(declare-fun tp!550452 () Bool)

(declare-fun e!1231722 () Bool)

(declare-fun b!1926804 () Bool)

(declare-fun inv!21 (TokenValue!4070) Bool)

(assert (=> b!1926804 (= e!1231722 (and (inv!21 (value!123710 separatorToken!354)) e!1231713 tp!550452))))

(declare-fun b!1926805 () Bool)

(declare-fun res!861608 () Bool)

(assert (=> b!1926805 (=> (not res!861608) (not e!1231721))))

(declare-fun rulesInvariant!3154 (LexerInterface!3547 List!22018) Bool)

(assert (=> b!1926805 (= res!861608 (rulesInvariant!3154 thiss!23328 rules!3198))))

(declare-fun b!1926806 () Bool)

(declare-fun e!1231710 () Bool)

(assert (=> b!1926806 (= e!1231721 (not e!1231710))))

(declare-fun res!861613 () Bool)

(assert (=> b!1926806 (=> res!861613 e!1231710)))

(declare-datatypes ((tuple2!20548 0))(
  ( (tuple2!20549 (_1!11743 Token!7420) (_2!11743 List!22017)) )
))
(declare-datatypes ((Option!4543 0))(
  ( (None!4542) (Some!4542 (v!26635 tuple2!20548)) )
))
(declare-fun lt!738493 () Option!4543)

(declare-fun lt!738486 () Bool)

(assert (=> b!1926806 (= res!861613 (or (and (not lt!738486) (= (_1!11743 (v!26635 lt!738493)) (h!27338 tokens!598))) lt!738486 (= (_1!11743 (v!26635 lt!738493)) (h!27338 tokens!598))))))

(get-info :version)

(assert (=> b!1926806 (= lt!738486 (not ((_ is Some!4542) lt!738493)))))

(declare-fun lt!738491 () List!22017)

(declare-fun lt!738494 () List!22017)

(declare-fun maxPrefix!1985 (LexerInterface!3547 List!22018 List!22017) Option!4543)

(declare-fun ++!5881 (List!22017 List!22017) List!22017)

(assert (=> b!1926806 (= lt!738493 (maxPrefix!1985 thiss!23328 rules!3198 (++!5881 lt!738494 lt!738491)))))

(declare-fun printWithSeparatorTokenWhenNeededList!586 (LexerInterface!3547 List!22018 List!22019 Token!7420) List!22017)

(assert (=> b!1926806 (= lt!738491 (printWithSeparatorTokenWhenNeededList!586 thiss!23328 rules!3198 (t!179568 tokens!598) separatorToken!354))))

(declare-fun e!1231712 () Bool)

(assert (=> b!1926806 e!1231712))

(declare-fun res!861604 () Bool)

(assert (=> b!1926806 (=> (not res!861604) (not e!1231712))))

(declare-datatypes ((Option!4544 0))(
  ( (None!4543) (Some!4543 (v!26636 Rule!7668)) )
))
(declare-fun lt!738492 () Option!4544)

(declare-fun isDefined!3837 (Option!4544) Bool)

(assert (=> b!1926806 (= res!861604 (isDefined!3837 lt!738492))))

(declare-fun getRuleFromTag!755 (LexerInterface!3547 List!22018 String!25468) Option!4544)

(assert (=> b!1926806 (= lt!738492 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))))

(declare-datatypes ((Unit!36278 0))(
  ( (Unit!36279) )
))
(declare-fun lt!738506 () Unit!36278)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!755 (LexerInterface!3547 List!22018 List!22017 Token!7420) Unit!36278)

(assert (=> b!1926806 (= lt!738506 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!755 thiss!23328 rules!3198 lt!738494 (h!27338 tokens!598)))))

(declare-fun e!1231718 () Bool)

(assert (=> b!1926806 e!1231718))

(declare-fun res!861612 () Bool)

(assert (=> b!1926806 (=> (not res!861612) (not e!1231718))))

(declare-fun lt!738489 () Option!4543)

(declare-fun isDefined!3838 (Option!4543) Bool)

(assert (=> b!1926806 (= res!861612 (isDefined!3838 lt!738489))))

(assert (=> b!1926806 (= lt!738489 (maxPrefix!1985 thiss!23328 rules!3198 lt!738494))))

(declare-fun lt!738497 () BalanceConc!14460)

(declare-fun list!8871 (BalanceConc!14460) List!22017)

(assert (=> b!1926806 (= lt!738494 (list!8871 lt!738497))))

(declare-fun e!1231717 () Bool)

(assert (=> b!1926806 e!1231717))

(declare-fun res!861606 () Bool)

(assert (=> b!1926806 (=> (not res!861606) (not e!1231717))))

(declare-fun lt!738490 () Option!4544)

(assert (=> b!1926806 (= res!861606 (isDefined!3837 lt!738490))))

(assert (=> b!1926806 (= lt!738490 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))))

(declare-fun lt!738504 () Unit!36278)

(declare-fun lt!738500 () List!22017)

(assert (=> b!1926806 (= lt!738504 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!755 thiss!23328 rules!3198 lt!738500 separatorToken!354))))

(declare-fun charsOf!2474 (Token!7420) BalanceConc!14460)

(assert (=> b!1926806 (= lt!738500 (list!8871 (charsOf!2474 separatorToken!354)))))

(declare-fun lt!738483 () Unit!36278)

(declare-fun lemmaEqSameImage!620 (TokenValueInjection!7724 BalanceConc!14460 BalanceConc!14460) Unit!36278)

(declare-fun seqFromList!2788 (List!22017) BalanceConc!14460)

(assert (=> b!1926806 (= lt!738483 (lemmaEqSameImage!620 (transformation!3934 (rule!6139 (h!27338 tokens!598))) lt!738497 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))))))

(declare-fun lt!738488 () Unit!36278)

(declare-fun lemmaSemiInverse!891 (TokenValueInjection!7724 BalanceConc!14460) Unit!36278)

(assert (=> b!1926806 (= lt!738488 (lemmaSemiInverse!891 (transformation!3934 (rule!6139 (h!27338 tokens!598))) lt!738497))))

(assert (=> b!1926806 (= lt!738497 (charsOf!2474 (h!27338 tokens!598)))))

(declare-fun b!1926807 () Bool)

(declare-fun e!1231709 () Bool)

(assert (=> b!1926807 (= e!1231709 false)))

(declare-fun b!1926808 () Bool)

(declare-fun e!1231724 () Bool)

(declare-fun e!1231720 () Bool)

(declare-fun tp!550445 () Bool)

(assert (=> b!1926808 (= e!1231724 (and e!1231720 tp!550445))))

(declare-fun e!1231727 () Bool)

(assert (=> b!1926809 (= e!1231727 (and tp!550444 tp!550451))))

(declare-fun b!1926810 () Bool)

(declare-fun res!861617 () Bool)

(assert (=> b!1926810 (=> (not res!861617) (not e!1231721))))

(declare-fun rulesProduceIndividualToken!1719 (LexerInterface!3547 List!22018 Token!7420) Bool)

(assert (=> b!1926810 (= res!861617 (rulesProduceIndividualToken!1719 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1926811 () Bool)

(declare-fun e!1231725 () Bool)

(declare-fun tp!550447 () Bool)

(declare-fun e!1231714 () Bool)

(assert (=> b!1926811 (= e!1231714 (and (inv!21 (value!123710 (h!27338 tokens!598))) e!1231725 tp!550447))))

(declare-fun b!1926813 () Bool)

(declare-fun res!861609 () Bool)

(assert (=> b!1926813 (=> (not res!861609) (not e!1231721))))

(declare-fun lambda!75173 () Int)

(declare-fun forall!4636 (List!22019 Int) Bool)

(assert (=> b!1926813 (= res!861609 (forall!4636 tokens!598 lambda!75173))))

(declare-fun e!1231716 () Bool)

(declare-fun b!1926814 () Bool)

(declare-fun tp!550449 () Bool)

(declare-fun inv!29012 (String!25468) Bool)

(declare-fun inv!29015 (TokenValueInjection!7724) Bool)

(assert (=> b!1926814 (= e!1231713 (and tp!550449 (inv!29012 (tag!4380 (rule!6139 separatorToken!354))) (inv!29015 (transformation!3934 (rule!6139 separatorToken!354))) e!1231716))))

(declare-fun b!1926815 () Bool)

(declare-fun res!861618 () Bool)

(assert (=> b!1926815 (=> (not res!861618) (not e!1231721))))

(declare-fun sepAndNonSepRulesDisjointChars!1032 (List!22018 List!22018) Bool)

(assert (=> b!1926815 (= res!861618 (sepAndNonSepRulesDisjointChars!1032 rules!3198 rules!3198))))

(declare-fun b!1926816 () Bool)

(declare-fun res!861610 () Bool)

(assert (=> b!1926816 (=> (not res!861610) (not e!1231721))))

(assert (=> b!1926816 (= res!861610 (isSeparator!3934 (rule!6139 separatorToken!354)))))

(declare-fun b!1926817 () Bool)

(declare-fun e!1231711 () Bool)

(declare-fun tp!550448 () Bool)

(assert (=> b!1926817 (= e!1231725 (and tp!550448 (inv!29012 (tag!4380 (rule!6139 (h!27338 tokens!598)))) (inv!29015 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) e!1231711))))

(declare-fun b!1926818 () Bool)

(declare-fun res!861614 () Bool)

(assert (=> b!1926818 (=> (not res!861614) (not e!1231721))))

(assert (=> b!1926818 (= res!861614 ((_ is Cons!21937) tokens!598))))

(declare-fun b!1926819 () Bool)

(declare-fun e!1231708 () Bool)

(assert (=> b!1926819 (= e!1231712 e!1231708)))

(declare-fun res!861611 () Bool)

(assert (=> b!1926819 (=> (not res!861611) (not e!1231708))))

(declare-fun lt!738499 () Rule!7668)

(declare-fun matchR!2627 (Regex!5359 List!22017) Bool)

(assert (=> b!1926819 (= res!861611 (matchR!2627 (regex!3934 lt!738499) lt!738494))))

(declare-fun get!6907 (Option!4544) Rule!7668)

(assert (=> b!1926819 (= lt!738499 (get!6907 lt!738492))))

(assert (=> b!1926820 (= e!1231716 (and tp!550450 tp!550446))))

(declare-fun b!1926821 () Bool)

(declare-fun e!1231723 () Bool)

(declare-fun lt!738484 () Rule!7668)

(assert (=> b!1926821 (= e!1231723 (= (rule!6139 separatorToken!354) lt!738484))))

(declare-fun b!1926822 () Bool)

(assert (=> b!1926822 (= e!1231717 e!1231723)))

(declare-fun res!861601 () Bool)

(assert (=> b!1926822 (=> (not res!861601) (not e!1231723))))

(assert (=> b!1926822 (= res!861601 (matchR!2627 (regex!3934 lt!738484) lt!738500))))

(assert (=> b!1926822 (= lt!738484 (get!6907 lt!738490))))

(declare-fun tp!550442 () Bool)

(declare-fun b!1926823 () Bool)

(assert (=> b!1926823 (= e!1231720 (and tp!550442 (inv!29012 (tag!4380 (h!27337 rules!3198))) (inv!29015 (transformation!3934 (h!27337 rules!3198))) e!1231727))))

(declare-fun b!1926824 () Bool)

(declare-fun res!861607 () Bool)

(assert (=> b!1926824 (=> (not res!861607) (not e!1231721))))

(declare-fun isEmpty!13507 (List!22018) Bool)

(assert (=> b!1926824 (= res!861607 (not (isEmpty!13507 rules!3198)))))

(declare-fun b!1926825 () Bool)

(declare-fun e!1231731 () Bool)

(declare-datatypes ((IArray!14651 0))(
  ( (IArray!14652 (innerList!7383 List!22019)) )
))
(declare-datatypes ((Conc!7323 0))(
  ( (Node!7323 (left!17448 Conc!7323) (right!17778 Conc!7323) (csize!14876 Int) (cheight!7534 Int)) (Leaf!10753 (xs!10217 IArray!14651) (csize!14877 Int)) (Empty!7323) )
))
(declare-datatypes ((BalanceConc!14462 0))(
  ( (BalanceConc!14463 (c!313266 Conc!7323)) )
))
(declare-fun isEmpty!13508 (BalanceConc!14462) Bool)

(declare-datatypes ((tuple2!20550 0))(
  ( (tuple2!20551 (_1!11744 BalanceConc!14462) (_2!11744 BalanceConc!14460)) )
))
(declare-fun lex!1573 (LexerInterface!3547 List!22018 BalanceConc!14460) tuple2!20550)

(assert (=> b!1926825 (= e!1231731 (not (isEmpty!13508 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))))))

(declare-fun b!1926826 () Bool)

(declare-fun e!1231715 () Unit!36278)

(declare-fun Unit!36280 () Unit!36278)

(assert (=> b!1926826 (= e!1231715 Unit!36280)))

(declare-fun tp!550443 () Bool)

(declare-fun b!1926812 () Bool)

(declare-fun e!1231728 () Bool)

(declare-fun inv!29016 (Token!7420) Bool)

(assert (=> b!1926812 (= e!1231728 (and (inv!29016 (h!27338 tokens!598)) e!1231714 tp!550443))))

(declare-fun res!861605 () Bool)

(assert (=> start!193140 (=> (not res!861605) (not e!1231721))))

(assert (=> start!193140 (= res!861605 ((_ is Lexer!3545) thiss!23328))))

(assert (=> start!193140 e!1231721))

(assert (=> start!193140 true))

(assert (=> start!193140 e!1231724))

(assert (=> start!193140 e!1231728))

(assert (=> start!193140 (and (inv!29016 separatorToken!354) e!1231722)))

(declare-fun b!1926827 () Bool)

(assert (=> b!1926827 (= e!1231708 (= (rule!6139 (h!27338 tokens!598)) lt!738499))))

(declare-fun b!1926828 () Bool)

(assert (=> b!1926828 (= e!1231710 e!1231731)))

(declare-fun res!861603 () Bool)

(assert (=> b!1926828 (=> res!861603 e!1231731)))

(declare-fun lt!738495 () List!22017)

(declare-fun lt!738505 () List!22017)

(assert (=> b!1926828 (= res!861603 (or (not (= lt!738495 lt!738505)) (not (= lt!738505 lt!738494)) (not (= lt!738495 lt!738494))))))

(declare-fun printList!1082 (LexerInterface!3547 List!22019) List!22017)

(assert (=> b!1926828 (= lt!738505 (printList!1082 thiss!23328 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))

(declare-fun lt!738487 () BalanceConc!14460)

(assert (=> b!1926828 (= lt!738495 (list!8871 lt!738487))))

(declare-fun lt!738485 () BalanceConc!14462)

(declare-fun printTailRec!1023 (LexerInterface!3547 BalanceConc!14462 Int BalanceConc!14460) BalanceConc!14460)

(assert (=> b!1926828 (= lt!738487 (printTailRec!1023 thiss!23328 lt!738485 0 (BalanceConc!14461 Empty!7322)))))

(declare-fun print!1517 (LexerInterface!3547 BalanceConc!14462) BalanceConc!14460)

(assert (=> b!1926828 (= lt!738487 (print!1517 thiss!23328 lt!738485))))

(declare-fun singletonSeq!1918 (Token!7420) BalanceConc!14462)

(assert (=> b!1926828 (= lt!738485 (singletonSeq!1918 (h!27338 tokens!598)))))

(declare-fun lt!738502 () C!10864)

(declare-fun contains!3965 (List!22017 C!10864) Bool)

(declare-fun usedCharacters!386 (Regex!5359) List!22017)

(assert (=> b!1926828 (not (contains!3965 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))) lt!738502))))

(declare-fun lt!738503 () Unit!36278)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!82 (LexerInterface!3547 List!22018 List!22018 Rule!7668 Rule!7668 C!10864) Unit!36278)

(assert (=> b!1926828 (= lt!738503 (lemmaNonSepRuleNotContainsCharContainedInASepRule!82 thiss!23328 rules!3198 rules!3198 (rule!6139 (h!27338 tokens!598)) (rule!6139 separatorToken!354) lt!738502))))

(declare-fun lt!738501 () Unit!36278)

(assert (=> b!1926828 (= lt!738501 e!1231715)))

(declare-fun c!313263 () Bool)

(assert (=> b!1926828 (= c!313263 (not (contains!3965 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354))) lt!738502)))))

(declare-fun head!4494 (List!22017) C!10864)

(assert (=> b!1926828 (= lt!738502 (head!4494 lt!738500))))

(assert (=> b!1926828 (= (++!5881 (++!5881 lt!738494 lt!738500) lt!738491) (++!5881 lt!738494 (++!5881 lt!738500 lt!738491)))))

(declare-fun lt!738498 () Unit!36278)

(declare-fun lemmaConcatAssociativity!1193 (List!22017 List!22017 List!22017) Unit!36278)

(assert (=> b!1926828 (= lt!738498 (lemmaConcatAssociativity!1193 lt!738494 lt!738500 lt!738491))))

(declare-fun b!1926829 () Bool)

(declare-fun get!6908 (Option!4543) tuple2!20548)

(assert (=> b!1926829 (= e!1231718 (= (_1!11743 (get!6908 lt!738489)) (h!27338 tokens!598)))))

(assert (=> b!1926830 (= e!1231711 (and tp!550453 tp!550454))))

(declare-fun b!1926831 () Bool)

(declare-fun Unit!36281 () Unit!36278)

(assert (=> b!1926831 (= e!1231715 Unit!36281)))

(declare-fun lt!738496 () Unit!36278)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!286 (Regex!5359 List!22017 C!10864) Unit!36278)

(assert (=> b!1926831 (= lt!738496 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!286 (regex!3934 (rule!6139 separatorToken!354)) lt!738500 lt!738502))))

(declare-fun res!861615 () Bool)

(assert (=> b!1926831 (= res!861615 (not (matchR!2627 (regex!3934 (rule!6139 separatorToken!354)) lt!738500)))))

(assert (=> b!1926831 (=> (not res!861615) (not e!1231709))))

(assert (=> b!1926831 e!1231709))

(declare-fun b!1926832 () Bool)

(declare-fun res!861602 () Bool)

(assert (=> b!1926832 (=> res!861602 e!1231731)))

(assert (=> b!1926832 (= res!861602 (not (rulesProduceIndividualToken!1719 thiss!23328 rules!3198 (h!27338 tokens!598))))))

(assert (= (and start!193140 res!861605) b!1926824))

(assert (= (and b!1926824 res!861607) b!1926805))

(assert (= (and b!1926805 res!861608) b!1926803))

(assert (= (and b!1926803 res!861616) b!1926810))

(assert (= (and b!1926810 res!861617) b!1926816))

(assert (= (and b!1926816 res!861610) b!1926813))

(assert (= (and b!1926813 res!861609) b!1926815))

(assert (= (and b!1926815 res!861618) b!1926818))

(assert (= (and b!1926818 res!861614) b!1926806))

(assert (= (and b!1926806 res!861606) b!1926822))

(assert (= (and b!1926822 res!861601) b!1926821))

(assert (= (and b!1926806 res!861612) b!1926829))

(assert (= (and b!1926806 res!861604) b!1926819))

(assert (= (and b!1926819 res!861611) b!1926827))

(assert (= (and b!1926806 (not res!861613)) b!1926828))

(assert (= (and b!1926828 c!313263) b!1926831))

(assert (= (and b!1926828 (not c!313263)) b!1926826))

(assert (= (and b!1926831 res!861615) b!1926807))

(assert (= (and b!1926828 (not res!861603)) b!1926832))

(assert (= (and b!1926832 (not res!861602)) b!1926825))

(assert (= b!1926823 b!1926809))

(assert (= b!1926808 b!1926823))

(assert (= (and start!193140 ((_ is Cons!21936) rules!3198)) b!1926808))

(assert (= b!1926817 b!1926830))

(assert (= b!1926811 b!1926817))

(assert (= b!1926812 b!1926811))

(assert (= (and start!193140 ((_ is Cons!21937) tokens!598)) b!1926812))

(assert (= b!1926814 b!1926820))

(assert (= b!1926804 b!1926814))

(assert (= start!193140 b!1926804))

(declare-fun m!2362951 () Bool)

(assert (=> b!1926815 m!2362951))

(declare-fun m!2362953 () Bool)

(assert (=> b!1926831 m!2362953))

(declare-fun m!2362955 () Bool)

(assert (=> b!1926831 m!2362955))

(declare-fun m!2362957 () Bool)

(assert (=> b!1926814 m!2362957))

(declare-fun m!2362959 () Bool)

(assert (=> b!1926814 m!2362959))

(declare-fun m!2362961 () Bool)

(assert (=> b!1926829 m!2362961))

(declare-fun m!2362963 () Bool)

(assert (=> b!1926806 m!2362963))

(declare-fun m!2362965 () Bool)

(assert (=> b!1926806 m!2362965))

(declare-fun m!2362967 () Bool)

(assert (=> b!1926806 m!2362967))

(declare-fun m!2362969 () Bool)

(assert (=> b!1926806 m!2362969))

(declare-fun m!2362971 () Bool)

(assert (=> b!1926806 m!2362971))

(declare-fun m!2362973 () Bool)

(assert (=> b!1926806 m!2362973))

(declare-fun m!2362975 () Bool)

(assert (=> b!1926806 m!2362975))

(assert (=> b!1926806 m!2362973))

(declare-fun m!2362977 () Bool)

(assert (=> b!1926806 m!2362977))

(declare-fun m!2362979 () Bool)

(assert (=> b!1926806 m!2362979))

(declare-fun m!2362981 () Bool)

(assert (=> b!1926806 m!2362981))

(declare-fun m!2362983 () Bool)

(assert (=> b!1926806 m!2362983))

(assert (=> b!1926806 m!2362969))

(declare-fun m!2362985 () Bool)

(assert (=> b!1926806 m!2362985))

(declare-fun m!2362987 () Bool)

(assert (=> b!1926806 m!2362987))

(assert (=> b!1926806 m!2362965))

(declare-fun m!2362989 () Bool)

(assert (=> b!1926806 m!2362989))

(declare-fun m!2362991 () Bool)

(assert (=> b!1926806 m!2362991))

(declare-fun m!2362993 () Bool)

(assert (=> b!1926806 m!2362993))

(declare-fun m!2362995 () Bool)

(assert (=> b!1926806 m!2362995))

(declare-fun m!2362997 () Bool)

(assert (=> b!1926806 m!2362997))

(declare-fun m!2362999 () Bool)

(assert (=> b!1926825 m!2362999))

(assert (=> b!1926825 m!2362999))

(declare-fun m!2363001 () Bool)

(assert (=> b!1926825 m!2363001))

(declare-fun m!2363003 () Bool)

(assert (=> b!1926825 m!2363003))

(declare-fun m!2363005 () Bool)

(assert (=> b!1926817 m!2363005))

(declare-fun m!2363007 () Bool)

(assert (=> b!1926817 m!2363007))

(declare-fun m!2363009 () Bool)

(assert (=> b!1926803 m!2363009))

(declare-fun m!2363011 () Bool)

(assert (=> b!1926810 m!2363011))

(declare-fun m!2363013 () Bool)

(assert (=> b!1926828 m!2363013))

(declare-fun m!2363015 () Bool)

(assert (=> b!1926828 m!2363015))

(declare-fun m!2363017 () Bool)

(assert (=> b!1926828 m!2363017))

(declare-fun m!2363019 () Bool)

(assert (=> b!1926828 m!2363019))

(declare-fun m!2363021 () Bool)

(assert (=> b!1926828 m!2363021))

(assert (=> b!1926828 m!2363017))

(declare-fun m!2363023 () Bool)

(assert (=> b!1926828 m!2363023))

(declare-fun m!2363025 () Bool)

(assert (=> b!1926828 m!2363025))

(declare-fun m!2363027 () Bool)

(assert (=> b!1926828 m!2363027))

(declare-fun m!2363029 () Bool)

(assert (=> b!1926828 m!2363029))

(declare-fun m!2363031 () Bool)

(assert (=> b!1926828 m!2363031))

(declare-fun m!2363033 () Bool)

(assert (=> b!1926828 m!2363033))

(declare-fun m!2363035 () Bool)

(assert (=> b!1926828 m!2363035))

(declare-fun m!2363037 () Bool)

(assert (=> b!1926828 m!2363037))

(declare-fun m!2363039 () Bool)

(assert (=> b!1926828 m!2363039))

(declare-fun m!2363041 () Bool)

(assert (=> b!1926828 m!2363041))

(assert (=> b!1926828 m!2363029))

(declare-fun m!2363043 () Bool)

(assert (=> b!1926828 m!2363043))

(assert (=> b!1926828 m!2363037))

(assert (=> b!1926828 m!2363025))

(declare-fun m!2363045 () Bool)

(assert (=> b!1926823 m!2363045))

(declare-fun m!2363047 () Bool)

(assert (=> b!1926823 m!2363047))

(declare-fun m!2363049 () Bool)

(assert (=> b!1926812 m!2363049))

(declare-fun m!2363051 () Bool)

(assert (=> b!1926832 m!2363051))

(declare-fun m!2363053 () Bool)

(assert (=> b!1926824 m!2363053))

(declare-fun m!2363055 () Bool)

(assert (=> b!1926813 m!2363055))

(declare-fun m!2363057 () Bool)

(assert (=> b!1926805 m!2363057))

(declare-fun m!2363059 () Bool)

(assert (=> start!193140 m!2363059))

(declare-fun m!2363061 () Bool)

(assert (=> b!1926819 m!2363061))

(declare-fun m!2363063 () Bool)

(assert (=> b!1926819 m!2363063))

(declare-fun m!2363065 () Bool)

(assert (=> b!1926822 m!2363065))

(declare-fun m!2363067 () Bool)

(assert (=> b!1926822 m!2363067))

(declare-fun m!2363069 () Bool)

(assert (=> b!1926804 m!2363069))

(declare-fun m!2363071 () Bool)

(assert (=> b!1926811 m!2363071))

(check-sat (not b_next!55927) (not b_next!55931) (not start!193140) (not b!1926832) (not b!1926824) (not b!1926803) b_and!151075 b_and!151077 (not b!1926806) (not b!1926817) (not b!1926811) (not b!1926804) (not b!1926829) (not b!1926813) (not b_next!55921) b_and!151085 (not b_next!55929) b_and!151079 (not b!1926823) (not b!1926831) b_and!151081 (not b!1926815) b_and!151083 (not b_next!55923) (not b!1926822) (not b!1926819) (not b!1926828) (not b_next!55925) (not b!1926825) (not b!1926812) (not b!1926808) (not b!1926814) (not b!1926810) (not b!1926805))
(check-sat (not b_next!55927) (not b_next!55931) b_and!151075 b_and!151081 b_and!151077 b_and!151083 (not b_next!55923) (not b_next!55925) (not b_next!55921) b_and!151085 (not b_next!55929) b_and!151079)
(get-model)

(declare-fun d!587180 () Bool)

(assert (=> d!587180 (= (get!6908 lt!738489) (v!26635 lt!738489))))

(assert (=> b!1926829 d!587180))

(declare-fun d!587182 () Bool)

(declare-fun res!861645 () Bool)

(declare-fun e!1231744 () Bool)

(assert (=> d!587182 (=> (not res!861645) (not e!1231744))))

(declare-fun isEmpty!13510 (List!22017) Bool)

(assert (=> d!587182 (= res!861645 (not (isEmpty!13510 (originalCharacters!4741 separatorToken!354))))))

(assert (=> d!587182 (= (inv!29016 separatorToken!354) e!1231744)))

(declare-fun b!1926855 () Bool)

(declare-fun res!861646 () Bool)

(assert (=> b!1926855 (=> (not res!861646) (not e!1231744))))

(declare-fun dynLambda!10623 (Int TokenValue!4070) BalanceConc!14460)

(assert (=> b!1926855 (= res!861646 (= (originalCharacters!4741 separatorToken!354) (list!8871 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))))))

(declare-fun b!1926856 () Bool)

(declare-fun size!17110 (List!22017) Int)

(assert (=> b!1926856 (= e!1231744 (= (size!17108 separatorToken!354) (size!17110 (originalCharacters!4741 separatorToken!354))))))

(assert (= (and d!587182 res!861645) b!1926855))

(assert (= (and b!1926855 res!861646) b!1926856))

(declare-fun b_lambda!63813 () Bool)

(assert (=> (not b_lambda!63813) (not b!1926855)))

(declare-fun t!179570 () Bool)

(declare-fun tb!117957 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354)))) t!179570) tb!117957))

(declare-fun b!1926861 () Bool)

(declare-fun e!1231747 () Bool)

(declare-fun tp!550457 () Bool)

(declare-fun inv!29019 (Conc!7322) Bool)

(assert (=> b!1926861 (= e!1231747 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))) tp!550457))))

(declare-fun result!142524 () Bool)

(declare-fun inv!29020 (BalanceConc!14460) Bool)

(assert (=> tb!117957 (= result!142524 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))) e!1231747))))

(assert (= tb!117957 b!1926861))

(declare-fun m!2363095 () Bool)

(assert (=> b!1926861 m!2363095))

(declare-fun m!2363097 () Bool)

(assert (=> tb!117957 m!2363097))

(assert (=> b!1926855 t!179570))

(declare-fun b_and!151087 () Bool)

(assert (= b_and!151077 (and (=> t!179570 result!142524) b_and!151087)))

(declare-fun t!179572 () Bool)

(declare-fun tb!117959 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354)))) t!179572) tb!117959))

(declare-fun result!142528 () Bool)

(assert (= result!142528 result!142524))

(assert (=> b!1926855 t!179572))

(declare-fun b_and!151089 () Bool)

(assert (= b_and!151081 (and (=> t!179572 result!142528) b_and!151089)))

(declare-fun t!179574 () Bool)

(declare-fun tb!117961 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354)))) t!179574) tb!117961))

(declare-fun result!142530 () Bool)

(assert (= result!142530 result!142524))

(assert (=> b!1926855 t!179574))

(declare-fun b_and!151091 () Bool)

(assert (= b_and!151085 (and (=> t!179574 result!142530) b_and!151091)))

(declare-fun m!2363099 () Bool)

(assert (=> d!587182 m!2363099))

(declare-fun m!2363101 () Bool)

(assert (=> b!1926855 m!2363101))

(assert (=> b!1926855 m!2363101))

(declare-fun m!2363103 () Bool)

(assert (=> b!1926855 m!2363103))

(declare-fun m!2363105 () Bool)

(assert (=> b!1926856 m!2363105))

(assert (=> start!193140 d!587182))

(declare-fun b!1926917 () Bool)

(declare-fun e!1231773 () Bool)

(declare-fun e!1231772 () Bool)

(assert (=> b!1926917 (= e!1231773 e!1231772)))

(declare-fun res!861691 () Bool)

(assert (=> b!1926917 (=> (not res!861691) (not e!1231772))))

(declare-fun lt!738532 () Bool)

(assert (=> b!1926917 (= res!861691 (not lt!738532))))

(declare-fun b!1926918 () Bool)

(declare-fun e!1231774 () Bool)

(declare-fun derivativeStep!1367 (Regex!5359 C!10864) Regex!5359)

(declare-fun tail!2979 (List!22017) List!22017)

(assert (=> b!1926918 (= e!1231774 (matchR!2627 (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494)) (tail!2979 lt!738494)))))

(declare-fun b!1926919 () Bool)

(declare-fun e!1231776 () Bool)

(assert (=> b!1926919 (= e!1231776 (= (head!4494 lt!738494) (c!313265 (regex!3934 lt!738499))))))

(declare-fun b!1926920 () Bool)

(declare-fun res!861687 () Bool)

(assert (=> b!1926920 (=> (not res!861687) (not e!1231776))))

(assert (=> b!1926920 (= res!861687 (isEmpty!13510 (tail!2979 lt!738494)))))

(declare-fun b!1926921 () Bool)

(declare-fun res!861685 () Bool)

(declare-fun e!1231771 () Bool)

(assert (=> b!1926921 (=> res!861685 e!1231771)))

(assert (=> b!1926921 (= res!861685 (not (isEmpty!13510 (tail!2979 lt!738494))))))

(declare-fun b!1926922 () Bool)

(assert (=> b!1926922 (= e!1231772 e!1231771)))

(declare-fun res!861686 () Bool)

(assert (=> b!1926922 (=> res!861686 e!1231771)))

(declare-fun call!118464 () Bool)

(assert (=> b!1926922 (= res!861686 call!118464)))

(declare-fun b!1926923 () Bool)

(declare-fun res!861684 () Bool)

(assert (=> b!1926923 (=> res!861684 e!1231773)))

(assert (=> b!1926923 (= res!861684 e!1231776)))

(declare-fun res!861690 () Bool)

(assert (=> b!1926923 (=> (not res!861690) (not e!1231776))))

(assert (=> b!1926923 (= res!861690 lt!738532)))

(declare-fun b!1926924 () Bool)

(assert (=> b!1926924 (= e!1231771 (not (= (head!4494 lt!738494) (c!313265 (regex!3934 lt!738499)))))))

(declare-fun b!1926925 () Bool)

(declare-fun res!861688 () Bool)

(assert (=> b!1926925 (=> (not res!861688) (not e!1231776))))

(assert (=> b!1926925 (= res!861688 (not call!118464))))

(declare-fun b!1926926 () Bool)

(declare-fun res!861689 () Bool)

(assert (=> b!1926926 (=> res!861689 e!1231773)))

(assert (=> b!1926926 (= res!861689 (not ((_ is ElementMatch!5359) (regex!3934 lt!738499))))))

(declare-fun e!1231777 () Bool)

(assert (=> b!1926926 (= e!1231777 e!1231773)))

(declare-fun b!1926927 () Bool)

(declare-fun e!1231775 () Bool)

(assert (=> b!1926927 (= e!1231775 (= lt!738532 call!118464))))

(declare-fun b!1926928 () Bool)

(assert (=> b!1926928 (= e!1231775 e!1231777)))

(declare-fun c!313282 () Bool)

(assert (=> b!1926928 (= c!313282 ((_ is EmptyLang!5359) (regex!3934 lt!738499)))))

(declare-fun b!1926929 () Bool)

(assert (=> b!1926929 (= e!1231777 (not lt!738532))))

(declare-fun b!1926930 () Bool)

(declare-fun nullable!1608 (Regex!5359) Bool)

(assert (=> b!1926930 (= e!1231774 (nullable!1608 (regex!3934 lt!738499)))))

(declare-fun bm!118459 () Bool)

(assert (=> bm!118459 (= call!118464 (isEmpty!13510 lt!738494))))

(declare-fun d!587184 () Bool)

(assert (=> d!587184 e!1231775))

(declare-fun c!313280 () Bool)

(assert (=> d!587184 (= c!313280 ((_ is EmptyExpr!5359) (regex!3934 lt!738499)))))

(assert (=> d!587184 (= lt!738532 e!1231774)))

(declare-fun c!313281 () Bool)

(assert (=> d!587184 (= c!313281 (isEmpty!13510 lt!738494))))

(declare-fun validRegex!2134 (Regex!5359) Bool)

(assert (=> d!587184 (validRegex!2134 (regex!3934 lt!738499))))

(assert (=> d!587184 (= (matchR!2627 (regex!3934 lt!738499) lt!738494) lt!738532)))

(assert (= (and d!587184 c!313281) b!1926930))

(assert (= (and d!587184 (not c!313281)) b!1926918))

(assert (= (and d!587184 c!313280) b!1926927))

(assert (= (and d!587184 (not c!313280)) b!1926928))

(assert (= (and b!1926928 c!313282) b!1926929))

(assert (= (and b!1926928 (not c!313282)) b!1926926))

(assert (= (and b!1926926 (not res!861689)) b!1926923))

(assert (= (and b!1926923 res!861690) b!1926925))

(assert (= (and b!1926925 res!861688) b!1926920))

(assert (= (and b!1926920 res!861687) b!1926919))

(assert (= (and b!1926923 (not res!861684)) b!1926917))

(assert (= (and b!1926917 res!861691) b!1926922))

(assert (= (and b!1926922 (not res!861686)) b!1926921))

(assert (= (and b!1926921 (not res!861685)) b!1926924))

(assert (= (or b!1926927 b!1926922 b!1926925) bm!118459))

(declare-fun m!2363141 () Bool)

(assert (=> b!1926924 m!2363141))

(assert (=> b!1926918 m!2363141))

(assert (=> b!1926918 m!2363141))

(declare-fun m!2363143 () Bool)

(assert (=> b!1926918 m!2363143))

(declare-fun m!2363145 () Bool)

(assert (=> b!1926918 m!2363145))

(assert (=> b!1926918 m!2363143))

(assert (=> b!1926918 m!2363145))

(declare-fun m!2363147 () Bool)

(assert (=> b!1926918 m!2363147))

(assert (=> b!1926921 m!2363145))

(assert (=> b!1926921 m!2363145))

(declare-fun m!2363149 () Bool)

(assert (=> b!1926921 m!2363149))

(assert (=> b!1926920 m!2363145))

(assert (=> b!1926920 m!2363145))

(assert (=> b!1926920 m!2363149))

(declare-fun m!2363151 () Bool)

(assert (=> b!1926930 m!2363151))

(assert (=> b!1926919 m!2363141))

(declare-fun m!2363153 () Bool)

(assert (=> bm!118459 m!2363153))

(assert (=> d!587184 m!2363153))

(declare-fun m!2363155 () Bool)

(assert (=> d!587184 m!2363155))

(assert (=> b!1926819 d!587184))

(declare-fun d!587188 () Bool)

(assert (=> d!587188 (= (get!6907 lt!738492) (v!26636 lt!738492))))

(assert (=> b!1926819 d!587188))

(declare-fun d!587190 () Bool)

(declare-fun isEmpty!13512 (Option!4544) Bool)

(assert (=> d!587190 (= (isDefined!3837 lt!738490) (not (isEmpty!13512 lt!738490)))))

(declare-fun bs!414661 () Bool)

(assert (= bs!414661 d!587190))

(declare-fun m!2363157 () Bool)

(assert (=> bs!414661 m!2363157))

(assert (=> b!1926806 d!587190))

(declare-fun d!587192 () Bool)

(declare-fun e!1231780 () Bool)

(assert (=> d!587192 e!1231780))

(declare-fun res!861696 () Bool)

(assert (=> d!587192 (=> (not res!861696) (not e!1231780))))

(assert (=> d!587192 (= res!861696 (isDefined!3837 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))))))

(declare-fun lt!738535 () Unit!36278)

(declare-fun choose!11966 (LexerInterface!3547 List!22018 List!22017 Token!7420) Unit!36278)

(assert (=> d!587192 (= lt!738535 (choose!11966 thiss!23328 rules!3198 lt!738500 separatorToken!354))))

(assert (=> d!587192 (rulesInvariant!3154 thiss!23328 rules!3198)))

(assert (=> d!587192 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!755 thiss!23328 rules!3198 lt!738500 separatorToken!354) lt!738535)))

(declare-fun b!1926935 () Bool)

(declare-fun res!861697 () Bool)

(assert (=> b!1926935 (=> (not res!861697) (not e!1231780))))

(assert (=> b!1926935 (= res!861697 (matchR!2627 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))) (list!8871 (charsOf!2474 separatorToken!354))))))

(declare-fun b!1926936 () Bool)

(assert (=> b!1926936 (= e!1231780 (= (rule!6139 separatorToken!354) (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))))))

(assert (= (and d!587192 res!861696) b!1926935))

(assert (= (and b!1926935 res!861697) b!1926936))

(assert (=> d!587192 m!2362987))

(assert (=> d!587192 m!2362987))

(declare-fun m!2363159 () Bool)

(assert (=> d!587192 m!2363159))

(declare-fun m!2363161 () Bool)

(assert (=> d!587192 m!2363161))

(assert (=> d!587192 m!2363057))

(assert (=> b!1926935 m!2362973))

(assert (=> b!1926935 m!2362977))

(assert (=> b!1926935 m!2362973))

(assert (=> b!1926935 m!2362977))

(declare-fun m!2363163 () Bool)

(assert (=> b!1926935 m!2363163))

(assert (=> b!1926935 m!2362987))

(assert (=> b!1926935 m!2362987))

(declare-fun m!2363165 () Bool)

(assert (=> b!1926935 m!2363165))

(assert (=> b!1926936 m!2362987))

(assert (=> b!1926936 m!2362987))

(assert (=> b!1926936 m!2363165))

(assert (=> b!1926806 d!587192))

(declare-fun bs!414669 () Bool)

(declare-fun b!1927047 () Bool)

(assert (= bs!414669 (and b!1927047 b!1926813)))

(declare-fun lambda!75185 () Int)

(assert (=> bs!414669 (not (= lambda!75185 lambda!75173))))

(declare-fun b!1927064 () Bool)

(declare-fun e!1231859 () Bool)

(assert (=> b!1927064 (= e!1231859 true)))

(declare-fun b!1927063 () Bool)

(declare-fun e!1231858 () Bool)

(assert (=> b!1927063 (= e!1231858 e!1231859)))

(declare-fun b!1927062 () Bool)

(declare-fun e!1231857 () Bool)

(assert (=> b!1927062 (= e!1231857 e!1231858)))

(assert (=> b!1927047 e!1231857))

(assert (= b!1927063 b!1927064))

(assert (= b!1927062 b!1927063))

(assert (= (and b!1927047 ((_ is Cons!21936) rules!3198)) b!1927062))

(declare-fun order!13767 () Int)

(declare-fun order!13769 () Int)

(declare-fun dynLambda!10624 (Int Int) Int)

(declare-fun dynLambda!10625 (Int Int) Int)

(assert (=> b!1927064 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10625 order!13769 lambda!75185))))

(declare-fun order!13771 () Int)

(declare-fun dynLambda!10626 (Int Int) Int)

(assert (=> b!1927064 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10625 order!13769 lambda!75185))))

(assert (=> b!1927047 true))

(declare-fun b!1927046 () Bool)

(declare-fun e!1231850 () List!22017)

(declare-fun call!118492 () List!22017)

(assert (=> b!1927046 (= e!1231850 call!118492)))

(declare-fun e!1231848 () List!22017)

(declare-fun e!1231849 () List!22017)

(assert (=> b!1927047 (= e!1231848 e!1231849)))

(declare-fun lt!738596 () Unit!36278)

(declare-fun forallContained!712 (List!22019 Int Token!7420) Unit!36278)

(assert (=> b!1927047 (= lt!738596 (forallContained!712 (t!179568 tokens!598) lambda!75185 (h!27338 (t!179568 tokens!598))))))

(declare-fun lt!738595 () List!22017)

(assert (=> b!1927047 (= lt!738595 (printWithSeparatorTokenWhenNeededList!586 thiss!23328 rules!3198 (t!179568 (t!179568 tokens!598)) separatorToken!354))))

(declare-fun lt!738594 () Option!4543)

(assert (=> b!1927047 (= lt!738594 (maxPrefix!1985 thiss!23328 rules!3198 (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595)))))

(declare-fun c!313315 () Bool)

(assert (=> b!1927047 (= c!313315 (and ((_ is Some!4542) lt!738594) (= (_1!11743 (v!26635 lt!738594)) (h!27338 (t!179568 tokens!598)))))))

(declare-fun b!1927049 () Bool)

(declare-fun call!118491 () List!22017)

(assert (=> b!1927049 (= e!1231849 call!118491)))

(declare-fun call!118495 () BalanceConc!14460)

(declare-fun bm!118486 () Bool)

(declare-fun c!313313 () Bool)

(assert (=> bm!118486 (= call!118495 (charsOf!2474 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598))))))))

(declare-fun b!1927050 () Bool)

(assert (=> b!1927050 (= e!1231848 Nil!21935)))

(declare-fun bm!118487 () Bool)

(declare-fun call!118494 () List!22017)

(assert (=> bm!118487 (= call!118494 call!118492)))

(declare-fun bm!118488 () Bool)

(declare-fun c!313314 () Bool)

(assert (=> bm!118488 (= c!313314 c!313315)))

(assert (=> bm!118488 (= call!118491 (++!5881 e!1231850 (ite c!313315 lt!738595 call!118494)))))

(declare-fun call!118493 () BalanceConc!14460)

(declare-fun bm!118489 () Bool)

(assert (=> bm!118489 (= call!118492 (list!8871 (ite c!313315 call!118495 call!118493)))))

(declare-fun bm!118490 () Bool)

(assert (=> bm!118490 (= call!118493 call!118495)))

(declare-fun b!1927051 () Bool)

(assert (=> b!1927051 (= e!1231850 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))))))

(declare-fun b!1927048 () Bool)

(assert (=> b!1927048 (= c!313313 (and ((_ is Some!4542) lt!738594) (not (= (_1!11743 (v!26635 lt!738594)) (h!27338 (t!179568 tokens!598))))))))

(declare-fun e!1231847 () List!22017)

(assert (=> b!1927048 (= e!1231849 e!1231847)))

(declare-fun d!587194 () Bool)

(declare-fun c!313312 () Bool)

(assert (=> d!587194 (= c!313312 ((_ is Cons!21937) (t!179568 tokens!598)))))

(assert (=> d!587194 (= (printWithSeparatorTokenWhenNeededList!586 thiss!23328 rules!3198 (t!179568 tokens!598) separatorToken!354) e!1231848)))

(declare-fun b!1927052 () Bool)

(assert (=> b!1927052 (= e!1231847 Nil!21935)))

(assert (=> b!1927052 (= (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 (t!179568 tokens!598)))) (printTailRec!1023 thiss!23328 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))) 0 (BalanceConc!14461 Empty!7322)))))

(declare-fun lt!738593 () Unit!36278)

(declare-fun Unit!36284 () Unit!36278)

(assert (=> b!1927052 (= lt!738593 Unit!36284)))

(declare-fun lt!738592 () Unit!36278)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!743 (LexerInterface!3547 List!22018 List!22017 List!22017) Unit!36278)

(assert (=> b!1927052 (= lt!738592 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!743 thiss!23328 rules!3198 call!118494 lt!738595))))

(assert (=> b!1927052 false))

(declare-fun lt!738597 () Unit!36278)

(declare-fun Unit!36285 () Unit!36278)

(assert (=> b!1927052 (= lt!738597 Unit!36285)))

(declare-fun b!1927053 () Bool)

(assert (=> b!1927053 (= e!1231847 (++!5881 call!118491 lt!738595))))

(assert (= (and d!587194 c!313312) b!1927047))

(assert (= (and d!587194 (not c!313312)) b!1927050))

(assert (= (and b!1927047 c!313315) b!1927049))

(assert (= (and b!1927047 (not c!313315)) b!1927048))

(assert (= (and b!1927048 c!313313) b!1927053))

(assert (= (and b!1927048 (not c!313313)) b!1927052))

(assert (= (or b!1927053 b!1927052) bm!118490))

(assert (= (or b!1927053 b!1927052) bm!118487))

(assert (= (or b!1927049 bm!118490) bm!118486))

(assert (= (or b!1927049 bm!118487) bm!118489))

(assert (= (or b!1927049 b!1927053) bm!118488))

(assert (= (and bm!118488 c!313314) b!1927046))

(assert (= (and bm!118488 (not c!313314)) b!1927051))

(declare-fun m!2363305 () Bool)

(assert (=> bm!118488 m!2363305))

(declare-fun m!2363307 () Bool)

(assert (=> b!1927053 m!2363307))

(declare-fun m!2363309 () Bool)

(assert (=> bm!118489 m!2363309))

(declare-fun m!2363311 () Bool)

(assert (=> b!1927047 m!2363311))

(declare-fun m!2363313 () Bool)

(assert (=> b!1927047 m!2363313))

(declare-fun m!2363315 () Bool)

(assert (=> b!1927047 m!2363315))

(declare-fun m!2363317 () Bool)

(assert (=> b!1927047 m!2363317))

(assert (=> b!1927047 m!2363313))

(assert (=> b!1927047 m!2363315))

(declare-fun m!2363319 () Bool)

(assert (=> b!1927047 m!2363319))

(declare-fun m!2363321 () Bool)

(assert (=> b!1927047 m!2363321))

(assert (=> b!1927047 m!2363311))

(declare-fun m!2363323 () Bool)

(assert (=> bm!118486 m!2363323))

(assert (=> b!1927051 m!2363311))

(assert (=> b!1927051 m!2363311))

(assert (=> b!1927051 m!2363313))

(declare-fun m!2363325 () Bool)

(assert (=> b!1927052 m!2363325))

(assert (=> b!1927052 m!2363325))

(declare-fun m!2363327 () Bool)

(assert (=> b!1927052 m!2363327))

(assert (=> b!1927052 m!2363325))

(declare-fun m!2363329 () Bool)

(assert (=> b!1927052 m!2363329))

(declare-fun m!2363331 () Bool)

(assert (=> b!1927052 m!2363331))

(assert (=> b!1926806 d!587194))

(declare-fun d!587226 () Bool)

(declare-fun list!8873 (Conc!7322) List!22017)

(assert (=> d!587226 (= (list!8871 (charsOf!2474 separatorToken!354)) (list!8873 (c!313264 (charsOf!2474 separatorToken!354))))))

(declare-fun bs!414670 () Bool)

(assert (= bs!414670 d!587226))

(declare-fun m!2363333 () Bool)

(assert (=> bs!414670 m!2363333))

(assert (=> b!1926806 d!587226))

(declare-fun b!1927085 () Bool)

(declare-fun res!861737 () Bool)

(declare-fun e!1231867 () Bool)

(assert (=> b!1927085 (=> (not res!861737) (not e!1231867))))

(declare-fun lt!738610 () Option!4543)

(assert (=> b!1927085 (= res!861737 (matchR!2627 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))))))

(declare-fun b!1927086 () Bool)

(declare-fun contains!3967 (List!22018 Rule!7668) Bool)

(assert (=> b!1927086 (= e!1231867 (contains!3967 rules!3198 (rule!6139 (_1!11743 (get!6908 lt!738610)))))))

(declare-fun call!118498 () Option!4543)

(declare-fun bm!118493 () Bool)

(declare-fun maxPrefixOneRule!1223 (LexerInterface!3547 Rule!7668 List!22017) Option!4543)

(assert (=> bm!118493 (= call!118498 (maxPrefixOneRule!1223 thiss!23328 (h!27337 rules!3198) (++!5881 lt!738494 lt!738491)))))

(declare-fun b!1927087 () Bool)

(declare-fun e!1231866 () Option!4543)

(assert (=> b!1927087 (= e!1231866 call!118498)))

(declare-fun b!1927088 () Bool)

(declare-fun lt!738611 () Option!4543)

(declare-fun lt!738609 () Option!4543)

(assert (=> b!1927088 (= e!1231866 (ite (and ((_ is None!4542) lt!738611) ((_ is None!4542) lt!738609)) None!4542 (ite ((_ is None!4542) lt!738609) lt!738611 (ite ((_ is None!4542) lt!738611) lt!738609 (ite (>= (size!17108 (_1!11743 (v!26635 lt!738611))) (size!17108 (_1!11743 (v!26635 lt!738609)))) lt!738611 lt!738609)))))))

(assert (=> b!1927088 (= lt!738611 call!118498)))

(assert (=> b!1927088 (= lt!738609 (maxPrefix!1985 thiss!23328 (t!179567 rules!3198) (++!5881 lt!738494 lt!738491)))))

(declare-fun b!1927089 () Bool)

(declare-fun res!861731 () Bool)

(assert (=> b!1927089 (=> (not res!861731) (not e!1231867))))

(assert (=> b!1927089 (= res!861731 (< (size!17110 (_2!11743 (get!6908 lt!738610))) (size!17110 (++!5881 lt!738494 lt!738491))))))

(declare-fun b!1927091 () Bool)

(declare-fun res!861735 () Bool)

(assert (=> b!1927091 (=> (not res!861735) (not e!1231867))))

(declare-fun apply!5693 (TokenValueInjection!7724 BalanceConc!14460) TokenValue!4070)

(assert (=> b!1927091 (= res!861735 (= (value!123710 (_1!11743 (get!6908 lt!738610))) (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738610)))))))))

(declare-fun b!1927092 () Bool)

(declare-fun res!861732 () Bool)

(assert (=> b!1927092 (=> (not res!861732) (not e!1231867))))

(assert (=> b!1927092 (= res!861732 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610)))) (_2!11743 (get!6908 lt!738610))) (++!5881 lt!738494 lt!738491)))))

(declare-fun b!1927093 () Bool)

(declare-fun e!1231868 () Bool)

(assert (=> b!1927093 (= e!1231868 e!1231867)))

(declare-fun res!861736 () Bool)

(assert (=> b!1927093 (=> (not res!861736) (not e!1231867))))

(assert (=> b!1927093 (= res!861736 (isDefined!3838 lt!738610))))

(declare-fun d!587228 () Bool)

(assert (=> d!587228 e!1231868))

(declare-fun res!861734 () Bool)

(assert (=> d!587228 (=> res!861734 e!1231868)))

(declare-fun isEmpty!13513 (Option!4543) Bool)

(assert (=> d!587228 (= res!861734 (isEmpty!13513 lt!738610))))

(assert (=> d!587228 (= lt!738610 e!1231866)))

(declare-fun c!313318 () Bool)

(assert (=> d!587228 (= c!313318 (and ((_ is Cons!21936) rules!3198) ((_ is Nil!21936) (t!179567 rules!3198))))))

(declare-fun lt!738612 () Unit!36278)

(declare-fun lt!738608 () Unit!36278)

(assert (=> d!587228 (= lt!738612 lt!738608)))

(declare-fun isPrefix!1941 (List!22017 List!22017) Bool)

(assert (=> d!587228 (isPrefix!1941 (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491))))

(declare-fun lemmaIsPrefixRefl!1259 (List!22017 List!22017) Unit!36278)

(assert (=> d!587228 (= lt!738608 (lemmaIsPrefixRefl!1259 (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491)))))

(declare-fun rulesValidInductive!1340 (LexerInterface!3547 List!22018) Bool)

(assert (=> d!587228 (rulesValidInductive!1340 thiss!23328 rules!3198)))

(assert (=> d!587228 (= (maxPrefix!1985 thiss!23328 rules!3198 (++!5881 lt!738494 lt!738491)) lt!738610)))

(declare-fun b!1927090 () Bool)

(declare-fun res!861733 () Bool)

(assert (=> b!1927090 (=> (not res!861733) (not e!1231867))))

(assert (=> b!1927090 (= res!861733 (= (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610)))) (originalCharacters!4741 (_1!11743 (get!6908 lt!738610)))))))

(assert (= (and d!587228 c!313318) b!1927087))

(assert (= (and d!587228 (not c!313318)) b!1927088))

(assert (= (or b!1927087 b!1927088) bm!118493))

(assert (= (and d!587228 (not res!861734)) b!1927093))

(assert (= (and b!1927093 res!861736) b!1927090))

(assert (= (and b!1927090 res!861733) b!1927089))

(assert (= (and b!1927089 res!861731) b!1927092))

(assert (= (and b!1927092 res!861732) b!1927091))

(assert (= (and b!1927091 res!861735) b!1927085))

(assert (= (and b!1927085 res!861737) b!1927086))

(declare-fun m!2363335 () Bool)

(assert (=> b!1927089 m!2363335))

(declare-fun m!2363337 () Bool)

(assert (=> b!1927089 m!2363337))

(assert (=> b!1927089 m!2362969))

(declare-fun m!2363339 () Bool)

(assert (=> b!1927089 m!2363339))

(assert (=> bm!118493 m!2362969))

(declare-fun m!2363341 () Bool)

(assert (=> bm!118493 m!2363341))

(assert (=> b!1927092 m!2363335))

(declare-fun m!2363343 () Bool)

(assert (=> b!1927092 m!2363343))

(assert (=> b!1927092 m!2363343))

(declare-fun m!2363345 () Bool)

(assert (=> b!1927092 m!2363345))

(assert (=> b!1927092 m!2363345))

(declare-fun m!2363347 () Bool)

(assert (=> b!1927092 m!2363347))

(declare-fun m!2363349 () Bool)

(assert (=> d!587228 m!2363349))

(assert (=> d!587228 m!2362969))

(assert (=> d!587228 m!2362969))

(declare-fun m!2363351 () Bool)

(assert (=> d!587228 m!2363351))

(assert (=> d!587228 m!2362969))

(assert (=> d!587228 m!2362969))

(declare-fun m!2363353 () Bool)

(assert (=> d!587228 m!2363353))

(declare-fun m!2363355 () Bool)

(assert (=> d!587228 m!2363355))

(assert (=> b!1927088 m!2362969))

(declare-fun m!2363357 () Bool)

(assert (=> b!1927088 m!2363357))

(assert (=> b!1927090 m!2363335))

(assert (=> b!1927090 m!2363343))

(assert (=> b!1927090 m!2363343))

(assert (=> b!1927090 m!2363345))

(assert (=> b!1927091 m!2363335))

(declare-fun m!2363359 () Bool)

(assert (=> b!1927091 m!2363359))

(assert (=> b!1927091 m!2363359))

(declare-fun m!2363361 () Bool)

(assert (=> b!1927091 m!2363361))

(declare-fun m!2363363 () Bool)

(assert (=> b!1927093 m!2363363))

(assert (=> b!1927086 m!2363335))

(declare-fun m!2363365 () Bool)

(assert (=> b!1927086 m!2363365))

(assert (=> b!1927085 m!2363335))

(assert (=> b!1927085 m!2363343))

(assert (=> b!1927085 m!2363343))

(assert (=> b!1927085 m!2363345))

(assert (=> b!1927085 m!2363345))

(declare-fun m!2363367 () Bool)

(assert (=> b!1927085 m!2363367))

(assert (=> b!1926806 d!587228))

(declare-fun d!587230 () Bool)

(declare-fun e!1231869 () Bool)

(assert (=> d!587230 e!1231869))

(declare-fun res!861738 () Bool)

(assert (=> d!587230 (=> (not res!861738) (not e!1231869))))

(assert (=> d!587230 (= res!861738 (isDefined!3837 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))))))

(declare-fun lt!738613 () Unit!36278)

(assert (=> d!587230 (= lt!738613 (choose!11966 thiss!23328 rules!3198 lt!738494 (h!27338 tokens!598)))))

(assert (=> d!587230 (rulesInvariant!3154 thiss!23328 rules!3198)))

(assert (=> d!587230 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!755 thiss!23328 rules!3198 lt!738494 (h!27338 tokens!598)) lt!738613)))

(declare-fun b!1927094 () Bool)

(declare-fun res!861739 () Bool)

(assert (=> b!1927094 (=> (not res!861739) (not e!1231869))))

(assert (=> b!1927094 (= res!861739 (matchR!2627 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))) (list!8871 (charsOf!2474 (h!27338 tokens!598)))))))

(declare-fun b!1927095 () Bool)

(assert (=> b!1927095 (= e!1231869 (= (rule!6139 (h!27338 tokens!598)) (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))))))

(assert (= (and d!587230 res!861738) b!1927094))

(assert (= (and b!1927094 res!861739) b!1927095))

(assert (=> d!587230 m!2362979))

(assert (=> d!587230 m!2362979))

(declare-fun m!2363369 () Bool)

(assert (=> d!587230 m!2363369))

(declare-fun m!2363371 () Bool)

(assert (=> d!587230 m!2363371))

(assert (=> d!587230 m!2363057))

(assert (=> b!1927094 m!2362997))

(declare-fun m!2363373 () Bool)

(assert (=> b!1927094 m!2363373))

(assert (=> b!1927094 m!2362997))

(assert (=> b!1927094 m!2363373))

(declare-fun m!2363375 () Bool)

(assert (=> b!1927094 m!2363375))

(assert (=> b!1927094 m!2362979))

(assert (=> b!1927094 m!2362979))

(declare-fun m!2363377 () Bool)

(assert (=> b!1927094 m!2363377))

(assert (=> b!1927095 m!2362979))

(assert (=> b!1927095 m!2362979))

(assert (=> b!1927095 m!2363377))

(assert (=> b!1926806 d!587230))

(declare-fun b!1927125 () Bool)

(declare-fun lt!738625 () Unit!36278)

(declare-fun lt!738624 () Unit!36278)

(assert (=> b!1927125 (= lt!738625 lt!738624)))

(assert (=> b!1927125 (rulesInvariant!3154 thiss!23328 (t!179567 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!270 (LexerInterface!3547 Rule!7668 List!22018) Unit!36278)

(assert (=> b!1927125 (= lt!738624 (lemmaInvariantOnRulesThenOnTail!270 thiss!23328 (h!27337 rules!3198) (t!179567 rules!3198)))))

(declare-fun e!1231893 () Option!4544)

(assert (=> b!1927125 (= e!1231893 (getRuleFromTag!755 thiss!23328 (t!179567 rules!3198) (tag!4380 (rule!6139 separatorToken!354))))))

(declare-fun b!1927126 () Bool)

(declare-fun e!1231891 () Option!4544)

(assert (=> b!1927126 (= e!1231891 (Some!4543 (h!27337 rules!3198)))))

(declare-fun b!1927127 () Bool)

(assert (=> b!1927127 (= e!1231891 e!1231893)))

(declare-fun c!313328 () Bool)

(assert (=> b!1927127 (= c!313328 (and ((_ is Cons!21936) rules!3198) (not (= (tag!4380 (h!27337 rules!3198)) (tag!4380 (rule!6139 separatorToken!354))))))))

(declare-fun d!587232 () Bool)

(declare-fun e!1231894 () Bool)

(assert (=> d!587232 e!1231894))

(declare-fun res!861750 () Bool)

(assert (=> d!587232 (=> res!861750 e!1231894)))

(declare-fun lt!738623 () Option!4544)

(assert (=> d!587232 (= res!861750 (isEmpty!13512 lt!738623))))

(assert (=> d!587232 (= lt!738623 e!1231891)))

(declare-fun c!313327 () Bool)

(assert (=> d!587232 (= c!313327 (and ((_ is Cons!21936) rules!3198) (= (tag!4380 (h!27337 rules!3198)) (tag!4380 (rule!6139 separatorToken!354)))))))

(assert (=> d!587232 (rulesInvariant!3154 thiss!23328 rules!3198)))

(assert (=> d!587232 (= (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))) lt!738623)))

(declare-fun b!1927128 () Bool)

(assert (=> b!1927128 (= e!1231893 None!4543)))

(declare-fun b!1927129 () Bool)

(declare-fun e!1231892 () Bool)

(assert (=> b!1927129 (= e!1231892 (= (tag!4380 (get!6907 lt!738623)) (tag!4380 (rule!6139 separatorToken!354))))))

(declare-fun b!1927130 () Bool)

(assert (=> b!1927130 (= e!1231894 e!1231892)))

(declare-fun res!861751 () Bool)

(assert (=> b!1927130 (=> (not res!861751) (not e!1231892))))

(assert (=> b!1927130 (= res!861751 (contains!3967 rules!3198 (get!6907 lt!738623)))))

(assert (= (and d!587232 c!313327) b!1927126))

(assert (= (and d!587232 (not c!313327)) b!1927127))

(assert (= (and b!1927127 c!313328) b!1927125))

(assert (= (and b!1927127 (not c!313328)) b!1927128))

(assert (= (and d!587232 (not res!861750)) b!1927130))

(assert (= (and b!1927130 res!861751) b!1927129))

(declare-fun m!2363383 () Bool)

(assert (=> b!1927125 m!2363383))

(declare-fun m!2363385 () Bool)

(assert (=> b!1927125 m!2363385))

(declare-fun m!2363387 () Bool)

(assert (=> b!1927125 m!2363387))

(declare-fun m!2363389 () Bool)

(assert (=> d!587232 m!2363389))

(assert (=> d!587232 m!2363057))

(declare-fun m!2363391 () Bool)

(assert (=> b!1927129 m!2363391))

(assert (=> b!1927130 m!2363391))

(assert (=> b!1927130 m!2363391))

(declare-fun m!2363393 () Bool)

(assert (=> b!1927130 m!2363393))

(assert (=> b!1926806 d!587232))

(declare-fun b!1927147 () Bool)

(declare-fun e!1231907 () Bool)

(assert (=> b!1927147 (= e!1231907 true)))

(declare-fun d!587236 () Bool)

(assert (=> d!587236 e!1231907))

(assert (= d!587236 b!1927147))

(declare-fun order!13773 () Int)

(declare-fun lambda!75191 () Int)

(declare-fun dynLambda!10628 (Int Int) Int)

(assert (=> b!1927147 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (dynLambda!10628 order!13773 lambda!75191))))

(assert (=> b!1927147 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (dynLambda!10628 order!13773 lambda!75191))))

(declare-fun dynLambda!10629 (Int BalanceConc!14460) TokenValue!4070)

(assert (=> d!587236 (= (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))))))

(declare-fun lt!738628 () Unit!36278)

(declare-fun Forall2of!201 (Int BalanceConc!14460 BalanceConc!14460) Unit!36278)

(assert (=> d!587236 (= lt!738628 (Forall2of!201 lambda!75191 lt!738497 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))))))

(assert (=> d!587236 (= (list!8871 lt!738497) (list!8871 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))))))

(assert (=> d!587236 (= (lemmaEqSameImage!620 (transformation!3934 (rule!6139 (h!27338 tokens!598))) lt!738497 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))) lt!738628)))

(declare-fun b_lambda!63827 () Bool)

(assert (=> (not b_lambda!63827) (not d!587236)))

(declare-fun tb!117993 () Bool)

(declare-fun t!179612 () Bool)

(assert (=> (and b!1926809 (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179612) tb!117993))

(declare-fun result!142566 () Bool)

(assert (=> tb!117993 (= result!142566 (inv!21 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))

(declare-fun m!2363411 () Bool)

(assert (=> tb!117993 m!2363411))

(assert (=> d!587236 t!179612))

(declare-fun b_and!151129 () Bool)

(assert (= b_and!151075 (and (=> t!179612 result!142566) b_and!151129)))

(declare-fun t!179614 () Bool)

(declare-fun tb!117995 () Bool)

(assert (=> (and b!1926830 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179614) tb!117995))

(declare-fun result!142570 () Bool)

(assert (= result!142570 result!142566))

(assert (=> d!587236 t!179614))

(declare-fun b_and!151131 () Bool)

(assert (= b_and!151079 (and (=> t!179614 result!142570) b_and!151131)))

(declare-fun tb!117997 () Bool)

(declare-fun t!179616 () Bool)

(assert (=> (and b!1926820 (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179616) tb!117997))

(declare-fun result!142572 () Bool)

(assert (= result!142572 result!142566))

(assert (=> d!587236 t!179616))

(declare-fun b_and!151133 () Bool)

(assert (= b_and!151083 (and (=> t!179616 result!142572) b_and!151133)))

(declare-fun b_lambda!63829 () Bool)

(assert (=> (not b_lambda!63829) (not d!587236)))

(declare-fun t!179618 () Bool)

(declare-fun tb!117999 () Bool)

(assert (=> (and b!1926809 (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179618) tb!117999))

(declare-fun result!142574 () Bool)

(assert (=> tb!117999 (= result!142574 (inv!21 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))))

(declare-fun m!2363413 () Bool)

(assert (=> tb!117999 m!2363413))

(assert (=> d!587236 t!179618))

(declare-fun b_and!151135 () Bool)

(assert (= b_and!151129 (and (=> t!179618 result!142574) b_and!151135)))

(declare-fun t!179620 () Bool)

(declare-fun tb!118001 () Bool)

(assert (=> (and b!1926830 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179620) tb!118001))

(declare-fun result!142576 () Bool)

(assert (= result!142576 result!142574))

(assert (=> d!587236 t!179620))

(declare-fun b_and!151137 () Bool)

(assert (= b_and!151131 (and (=> t!179620 result!142576) b_and!151137)))

(declare-fun t!179622 () Bool)

(declare-fun tb!118003 () Bool)

(assert (=> (and b!1926820 (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179622) tb!118003))

(declare-fun result!142578 () Bool)

(assert (= result!142578 result!142574))

(assert (=> d!587236 t!179622))

(declare-fun b_and!151139 () Bool)

(assert (= b_and!151133 (and (=> t!179622 result!142578) b_and!151139)))

(assert (=> d!587236 m!2362965))

(declare-fun m!2363415 () Bool)

(assert (=> d!587236 m!2363415))

(assert (=> d!587236 m!2362965))

(declare-fun m!2363417 () Bool)

(assert (=> d!587236 m!2363417))

(assert (=> d!587236 m!2362965))

(declare-fun m!2363419 () Bool)

(assert (=> d!587236 m!2363419))

(assert (=> d!587236 m!2362981))

(declare-fun m!2363421 () Bool)

(assert (=> d!587236 m!2363421))

(assert (=> b!1926806 d!587236))

(declare-fun d!587248 () Bool)

(assert (=> d!587248 (= (list!8871 lt!738497) (list!8873 (c!313264 lt!738497)))))

(declare-fun bs!414674 () Bool)

(assert (= bs!414674 d!587248))

(declare-fun m!2363423 () Bool)

(assert (=> bs!414674 m!2363423))

(assert (=> b!1926806 d!587248))

(declare-fun d!587250 () Bool)

(declare-fun e!1231917 () Bool)

(assert (=> d!587250 e!1231917))

(declare-fun res!861764 () Bool)

(assert (=> d!587250 (=> (not res!861764) (not e!1231917))))

(declare-fun lt!738634 () List!22017)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3171 (List!22017) (InoxSet C!10864))

(assert (=> d!587250 (= res!861764 (= (content!3171 lt!738634) ((_ map or) (content!3171 lt!738494) (content!3171 lt!738491))))))

(declare-fun e!1231916 () List!22017)

(assert (=> d!587250 (= lt!738634 e!1231916)))

(declare-fun c!313333 () Bool)

(assert (=> d!587250 (= c!313333 ((_ is Nil!21935) lt!738494))))

(assert (=> d!587250 (= (++!5881 lt!738494 lt!738491) lt!738634)))

(declare-fun b!1927161 () Bool)

(assert (=> b!1927161 (= e!1231917 (or (not (= lt!738491 Nil!21935)) (= lt!738634 lt!738494)))))

(declare-fun b!1927160 () Bool)

(declare-fun res!861765 () Bool)

(assert (=> b!1927160 (=> (not res!861765) (not e!1231917))))

(assert (=> b!1927160 (= res!861765 (= (size!17110 lt!738634) (+ (size!17110 lt!738494) (size!17110 lt!738491))))))

(declare-fun b!1927159 () Bool)

(assert (=> b!1927159 (= e!1231916 (Cons!21935 (h!27336 lt!738494) (++!5881 (t!179566 lt!738494) lt!738491)))))

(declare-fun b!1927158 () Bool)

(assert (=> b!1927158 (= e!1231916 lt!738491)))

(assert (= (and d!587250 c!313333) b!1927158))

(assert (= (and d!587250 (not c!313333)) b!1927159))

(assert (= (and d!587250 res!861764) b!1927160))

(assert (= (and b!1927160 res!861765) b!1927161))

(declare-fun m!2363425 () Bool)

(assert (=> d!587250 m!2363425))

(declare-fun m!2363427 () Bool)

(assert (=> d!587250 m!2363427))

(declare-fun m!2363429 () Bool)

(assert (=> d!587250 m!2363429))

(declare-fun m!2363431 () Bool)

(assert (=> b!1927160 m!2363431))

(declare-fun m!2363433 () Bool)

(assert (=> b!1927160 m!2363433))

(declare-fun m!2363435 () Bool)

(assert (=> b!1927160 m!2363435))

(declare-fun m!2363437 () Bool)

(assert (=> b!1927159 m!2363437))

(assert (=> b!1926806 d!587250))

(declare-fun d!587252 () Bool)

(assert (=> d!587252 (= (isDefined!3838 lt!738489) (not (isEmpty!13513 lt!738489)))))

(declare-fun bs!414675 () Bool)

(assert (= bs!414675 d!587252))

(declare-fun m!2363439 () Bool)

(assert (=> bs!414675 m!2363439))

(assert (=> b!1926806 d!587252))

(declare-fun d!587254 () Bool)

(declare-fun lt!738637 () BalanceConc!14460)

(assert (=> d!587254 (= (list!8871 lt!738637) (originalCharacters!4741 (h!27338 tokens!598)))))

(assert (=> d!587254 (= lt!738637 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))))

(assert (=> d!587254 (= (charsOf!2474 (h!27338 tokens!598)) lt!738637)))

(declare-fun b_lambda!63831 () Bool)

(assert (=> (not b_lambda!63831) (not d!587254)))

(declare-fun tb!118005 () Bool)

(declare-fun t!179624 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179624) tb!118005))

(declare-fun b!1927162 () Bool)

(declare-fun e!1231918 () Bool)

(declare-fun tp!550463 () Bool)

(assert (=> b!1927162 (= e!1231918 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))) tp!550463))))

(declare-fun result!142580 () Bool)

(assert (=> tb!118005 (= result!142580 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))) e!1231918))))

(assert (= tb!118005 b!1927162))

(declare-fun m!2363441 () Bool)

(assert (=> b!1927162 m!2363441))

(declare-fun m!2363443 () Bool)

(assert (=> tb!118005 m!2363443))

(assert (=> d!587254 t!179624))

(declare-fun b_and!151141 () Bool)

(assert (= b_and!151087 (and (=> t!179624 result!142580) b_and!151141)))

(declare-fun t!179626 () Bool)

(declare-fun tb!118007 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179626) tb!118007))

(declare-fun result!142582 () Bool)

(assert (= result!142582 result!142580))

(assert (=> d!587254 t!179626))

(declare-fun b_and!151143 () Bool)

(assert (= b_and!151089 (and (=> t!179626 result!142582) b_and!151143)))

(declare-fun tb!118009 () Bool)

(declare-fun t!179628 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179628) tb!118009))

(declare-fun result!142584 () Bool)

(assert (= result!142584 result!142580))

(assert (=> d!587254 t!179628))

(declare-fun b_and!151145 () Bool)

(assert (= b_and!151091 (and (=> t!179628 result!142584) b_and!151145)))

(declare-fun m!2363445 () Bool)

(assert (=> d!587254 m!2363445))

(declare-fun m!2363447 () Bool)

(assert (=> d!587254 m!2363447))

(assert (=> b!1926806 d!587254))

(declare-fun d!587256 () Bool)

(declare-fun fromListB!1238 (List!22017) BalanceConc!14460)

(assert (=> d!587256 (= (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))) (fromListB!1238 (originalCharacters!4741 (h!27338 tokens!598))))))

(declare-fun bs!414676 () Bool)

(assert (= bs!414676 d!587256))

(declare-fun m!2363449 () Bool)

(assert (=> bs!414676 m!2363449))

(assert (=> b!1926806 d!587256))

(declare-fun b!1927163 () Bool)

(declare-fun res!861772 () Bool)

(declare-fun e!1231920 () Bool)

(assert (=> b!1927163 (=> (not res!861772) (not e!1231920))))

(declare-fun lt!738640 () Option!4543)

(assert (=> b!1927163 (= res!861772 (matchR!2627 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))))))

(declare-fun b!1927164 () Bool)

(assert (=> b!1927164 (= e!1231920 (contains!3967 rules!3198 (rule!6139 (_1!11743 (get!6908 lt!738640)))))))

(declare-fun call!118499 () Option!4543)

(declare-fun bm!118494 () Bool)

(assert (=> bm!118494 (= call!118499 (maxPrefixOneRule!1223 thiss!23328 (h!27337 rules!3198) lt!738494))))

(declare-fun b!1927165 () Bool)

(declare-fun e!1231919 () Option!4543)

(assert (=> b!1927165 (= e!1231919 call!118499)))

(declare-fun b!1927166 () Bool)

(declare-fun lt!738641 () Option!4543)

(declare-fun lt!738639 () Option!4543)

(assert (=> b!1927166 (= e!1231919 (ite (and ((_ is None!4542) lt!738641) ((_ is None!4542) lt!738639)) None!4542 (ite ((_ is None!4542) lt!738639) lt!738641 (ite ((_ is None!4542) lt!738641) lt!738639 (ite (>= (size!17108 (_1!11743 (v!26635 lt!738641))) (size!17108 (_1!11743 (v!26635 lt!738639)))) lt!738641 lt!738639)))))))

(assert (=> b!1927166 (= lt!738641 call!118499)))

(assert (=> b!1927166 (= lt!738639 (maxPrefix!1985 thiss!23328 (t!179567 rules!3198) lt!738494))))

(declare-fun b!1927167 () Bool)

(declare-fun res!861766 () Bool)

(assert (=> b!1927167 (=> (not res!861766) (not e!1231920))))

(assert (=> b!1927167 (= res!861766 (< (size!17110 (_2!11743 (get!6908 lt!738640))) (size!17110 lt!738494)))))

(declare-fun b!1927169 () Bool)

(declare-fun res!861770 () Bool)

(assert (=> b!1927169 (=> (not res!861770) (not e!1231920))))

(assert (=> b!1927169 (= res!861770 (= (value!123710 (_1!11743 (get!6908 lt!738640))) (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738640)))))))))

(declare-fun b!1927170 () Bool)

(declare-fun res!861767 () Bool)

(assert (=> b!1927170 (=> (not res!861767) (not e!1231920))))

(assert (=> b!1927170 (= res!861767 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640)))) (_2!11743 (get!6908 lt!738640))) lt!738494))))

(declare-fun b!1927171 () Bool)

(declare-fun e!1231921 () Bool)

(assert (=> b!1927171 (= e!1231921 e!1231920)))

(declare-fun res!861771 () Bool)

(assert (=> b!1927171 (=> (not res!861771) (not e!1231920))))

(assert (=> b!1927171 (= res!861771 (isDefined!3838 lt!738640))))

(declare-fun d!587258 () Bool)

(assert (=> d!587258 e!1231921))

(declare-fun res!861769 () Bool)

(assert (=> d!587258 (=> res!861769 e!1231921)))

(assert (=> d!587258 (= res!861769 (isEmpty!13513 lt!738640))))

(assert (=> d!587258 (= lt!738640 e!1231919)))

(declare-fun c!313334 () Bool)

(assert (=> d!587258 (= c!313334 (and ((_ is Cons!21936) rules!3198) ((_ is Nil!21936) (t!179567 rules!3198))))))

(declare-fun lt!738642 () Unit!36278)

(declare-fun lt!738638 () Unit!36278)

(assert (=> d!587258 (= lt!738642 lt!738638)))

(assert (=> d!587258 (isPrefix!1941 lt!738494 lt!738494)))

(assert (=> d!587258 (= lt!738638 (lemmaIsPrefixRefl!1259 lt!738494 lt!738494))))

(assert (=> d!587258 (rulesValidInductive!1340 thiss!23328 rules!3198)))

(assert (=> d!587258 (= (maxPrefix!1985 thiss!23328 rules!3198 lt!738494) lt!738640)))

(declare-fun b!1927168 () Bool)

(declare-fun res!861768 () Bool)

(assert (=> b!1927168 (=> (not res!861768) (not e!1231920))))

(assert (=> b!1927168 (= res!861768 (= (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640)))) (originalCharacters!4741 (_1!11743 (get!6908 lt!738640)))))))

(assert (= (and d!587258 c!313334) b!1927165))

(assert (= (and d!587258 (not c!313334)) b!1927166))

(assert (= (or b!1927165 b!1927166) bm!118494))

(assert (= (and d!587258 (not res!861769)) b!1927171))

(assert (= (and b!1927171 res!861771) b!1927168))

(assert (= (and b!1927168 res!861768) b!1927167))

(assert (= (and b!1927167 res!861766) b!1927170))

(assert (= (and b!1927170 res!861767) b!1927169))

(assert (= (and b!1927169 res!861770) b!1927163))

(assert (= (and b!1927163 res!861772) b!1927164))

(declare-fun m!2363451 () Bool)

(assert (=> b!1927167 m!2363451))

(declare-fun m!2363453 () Bool)

(assert (=> b!1927167 m!2363453))

(assert (=> b!1927167 m!2363433))

(declare-fun m!2363455 () Bool)

(assert (=> bm!118494 m!2363455))

(assert (=> b!1927170 m!2363451))

(declare-fun m!2363457 () Bool)

(assert (=> b!1927170 m!2363457))

(assert (=> b!1927170 m!2363457))

(declare-fun m!2363459 () Bool)

(assert (=> b!1927170 m!2363459))

(assert (=> b!1927170 m!2363459))

(declare-fun m!2363461 () Bool)

(assert (=> b!1927170 m!2363461))

(declare-fun m!2363463 () Bool)

(assert (=> d!587258 m!2363463))

(declare-fun m!2363465 () Bool)

(assert (=> d!587258 m!2363465))

(declare-fun m!2363467 () Bool)

(assert (=> d!587258 m!2363467))

(assert (=> d!587258 m!2363355))

(declare-fun m!2363469 () Bool)

(assert (=> b!1927166 m!2363469))

(assert (=> b!1927168 m!2363451))

(assert (=> b!1927168 m!2363457))

(assert (=> b!1927168 m!2363457))

(assert (=> b!1927168 m!2363459))

(assert (=> b!1927169 m!2363451))

(declare-fun m!2363471 () Bool)

(assert (=> b!1927169 m!2363471))

(assert (=> b!1927169 m!2363471))

(declare-fun m!2363473 () Bool)

(assert (=> b!1927169 m!2363473))

(declare-fun m!2363475 () Bool)

(assert (=> b!1927171 m!2363475))

(assert (=> b!1927164 m!2363451))

(declare-fun m!2363477 () Bool)

(assert (=> b!1927164 m!2363477))

(assert (=> b!1927163 m!2363451))

(assert (=> b!1927163 m!2363457))

(assert (=> b!1927163 m!2363457))

(assert (=> b!1927163 m!2363459))

(assert (=> b!1927163 m!2363459))

(declare-fun m!2363479 () Bool)

(assert (=> b!1927163 m!2363479))

(assert (=> b!1926806 d!587258))

(declare-fun d!587260 () Bool)

(declare-fun lt!738643 () BalanceConc!14460)

(assert (=> d!587260 (= (list!8871 lt!738643) (originalCharacters!4741 separatorToken!354))))

(assert (=> d!587260 (= lt!738643 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))))

(assert (=> d!587260 (= (charsOf!2474 separatorToken!354) lt!738643)))

(declare-fun b_lambda!63833 () Bool)

(assert (=> (not b_lambda!63833) (not d!587260)))

(assert (=> d!587260 t!179570))

(declare-fun b_and!151147 () Bool)

(assert (= b_and!151141 (and (=> t!179570 result!142524) b_and!151147)))

(assert (=> d!587260 t!179572))

(declare-fun b_and!151149 () Bool)

(assert (= b_and!151143 (and (=> t!179572 result!142528) b_and!151149)))

(assert (=> d!587260 t!179574))

(declare-fun b_and!151151 () Bool)

(assert (= b_and!151145 (and (=> t!179574 result!142530) b_and!151151)))

(declare-fun m!2363481 () Bool)

(assert (=> d!587260 m!2363481))

(assert (=> d!587260 m!2363101))

(assert (=> b!1926806 d!587260))

(declare-fun b!1927172 () Bool)

(declare-fun lt!738646 () Unit!36278)

(declare-fun lt!738645 () Unit!36278)

(assert (=> b!1927172 (= lt!738646 lt!738645)))

(assert (=> b!1927172 (rulesInvariant!3154 thiss!23328 (t!179567 rules!3198))))

(assert (=> b!1927172 (= lt!738645 (lemmaInvariantOnRulesThenOnTail!270 thiss!23328 (h!27337 rules!3198) (t!179567 rules!3198)))))

(declare-fun e!1231924 () Option!4544)

(assert (=> b!1927172 (= e!1231924 (getRuleFromTag!755 thiss!23328 (t!179567 rules!3198) (tag!4380 (rule!6139 (h!27338 tokens!598)))))))

(declare-fun b!1927173 () Bool)

(declare-fun e!1231922 () Option!4544)

(assert (=> b!1927173 (= e!1231922 (Some!4543 (h!27337 rules!3198)))))

(declare-fun b!1927174 () Bool)

(assert (=> b!1927174 (= e!1231922 e!1231924)))

(declare-fun c!313336 () Bool)

(assert (=> b!1927174 (= c!313336 (and ((_ is Cons!21936) rules!3198) (not (= (tag!4380 (h!27337 rules!3198)) (tag!4380 (rule!6139 (h!27338 tokens!598)))))))))

(declare-fun d!587262 () Bool)

(declare-fun e!1231925 () Bool)

(assert (=> d!587262 e!1231925))

(declare-fun res!861773 () Bool)

(assert (=> d!587262 (=> res!861773 e!1231925)))

(declare-fun lt!738644 () Option!4544)

(assert (=> d!587262 (= res!861773 (isEmpty!13512 lt!738644))))

(assert (=> d!587262 (= lt!738644 e!1231922)))

(declare-fun c!313335 () Bool)

(assert (=> d!587262 (= c!313335 (and ((_ is Cons!21936) rules!3198) (= (tag!4380 (h!27337 rules!3198)) (tag!4380 (rule!6139 (h!27338 tokens!598))))))))

(assert (=> d!587262 (rulesInvariant!3154 thiss!23328 rules!3198)))

(assert (=> d!587262 (= (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))) lt!738644)))

(declare-fun b!1927175 () Bool)

(assert (=> b!1927175 (= e!1231924 None!4543)))

(declare-fun b!1927176 () Bool)

(declare-fun e!1231923 () Bool)

(assert (=> b!1927176 (= e!1231923 (= (tag!4380 (get!6907 lt!738644)) (tag!4380 (rule!6139 (h!27338 tokens!598)))))))

(declare-fun b!1927177 () Bool)

(assert (=> b!1927177 (= e!1231925 e!1231923)))

(declare-fun res!861774 () Bool)

(assert (=> b!1927177 (=> (not res!861774) (not e!1231923))))

(assert (=> b!1927177 (= res!861774 (contains!3967 rules!3198 (get!6907 lt!738644)))))

(assert (= (and d!587262 c!313335) b!1927173))

(assert (= (and d!587262 (not c!313335)) b!1927174))

(assert (= (and b!1927174 c!313336) b!1927172))

(assert (= (and b!1927174 (not c!313336)) b!1927175))

(assert (= (and d!587262 (not res!861773)) b!1927177))

(assert (= (and b!1927177 res!861774) b!1927176))

(assert (=> b!1927172 m!2363383))

(assert (=> b!1927172 m!2363385))

(declare-fun m!2363483 () Bool)

(assert (=> b!1927172 m!2363483))

(declare-fun m!2363485 () Bool)

(assert (=> d!587262 m!2363485))

(assert (=> d!587262 m!2363057))

(declare-fun m!2363487 () Bool)

(assert (=> b!1927176 m!2363487))

(assert (=> b!1927177 m!2363487))

(assert (=> b!1927177 m!2363487))

(declare-fun m!2363489 () Bool)

(assert (=> b!1927177 m!2363489))

(assert (=> b!1926806 d!587262))

(declare-fun b!1927182 () Bool)

(declare-fun e!1231928 () Bool)

(assert (=> b!1927182 (= e!1231928 true)))

(declare-fun d!587264 () Bool)

(assert (=> d!587264 e!1231928))

(assert (= d!587264 b!1927182))

(declare-fun lambda!75194 () Int)

(declare-fun order!13775 () Int)

(declare-fun dynLambda!10630 (Int Int) Int)

(assert (=> b!1927182 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (dynLambda!10630 order!13775 lambda!75194))))

(assert (=> b!1927182 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (dynLambda!10630 order!13775 lambda!75194))))

(assert (=> d!587264 (= (list!8871 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))) (list!8871 lt!738497))))

(declare-fun lt!738649 () Unit!36278)

(declare-fun ForallOf!405 (Int BalanceConc!14460) Unit!36278)

(assert (=> d!587264 (= lt!738649 (ForallOf!405 lambda!75194 lt!738497))))

(assert (=> d!587264 (= (lemmaSemiInverse!891 (transformation!3934 (rule!6139 (h!27338 tokens!598))) lt!738497) lt!738649)))

(declare-fun b_lambda!63835 () Bool)

(assert (=> (not b_lambda!63835) (not d!587264)))

(declare-fun t!179630 () Bool)

(declare-fun tb!118011 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179630) tb!118011))

(declare-fun tp!550464 () Bool)

(declare-fun e!1231929 () Bool)

(declare-fun b!1927183 () Bool)

(assert (=> b!1927183 (= e!1231929 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))) tp!550464))))

(declare-fun result!142586 () Bool)

(assert (=> tb!118011 (= result!142586 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))) e!1231929))))

(assert (= tb!118011 b!1927183))

(declare-fun m!2363491 () Bool)

(assert (=> b!1927183 m!2363491))

(declare-fun m!2363493 () Bool)

(assert (=> tb!118011 m!2363493))

(assert (=> d!587264 t!179630))

(declare-fun b_and!151153 () Bool)

(assert (= b_and!151147 (and (=> t!179630 result!142586) b_and!151153)))

(declare-fun t!179632 () Bool)

(declare-fun tb!118013 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179632) tb!118013))

(declare-fun result!142588 () Bool)

(assert (= result!142588 result!142586))

(assert (=> d!587264 t!179632))

(declare-fun b_and!151155 () Bool)

(assert (= b_and!151149 (and (=> t!179632 result!142588) b_and!151155)))

(declare-fun t!179634 () Bool)

(declare-fun tb!118015 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179634) tb!118015))

(declare-fun result!142590 () Bool)

(assert (= result!142590 result!142586))

(assert (=> d!587264 t!179634))

(declare-fun b_and!151157 () Bool)

(assert (= b_and!151151 (and (=> t!179634 result!142590) b_and!151157)))

(declare-fun b_lambda!63837 () Bool)

(assert (=> (not b_lambda!63837) (not d!587264)))

(assert (=> d!587264 t!179612))

(declare-fun b_and!151159 () Bool)

(assert (= b_and!151135 (and (=> t!179612 result!142566) b_and!151159)))

(assert (=> d!587264 t!179614))

(declare-fun b_and!151161 () Bool)

(assert (= b_and!151137 (and (=> t!179614 result!142570) b_and!151161)))

(assert (=> d!587264 t!179616))

(declare-fun b_and!151163 () Bool)

(assert (= b_and!151139 (and (=> t!179616 result!142572) b_and!151163)))

(assert (=> d!587264 m!2363421))

(assert (=> d!587264 m!2362981))

(declare-fun m!2363495 () Bool)

(assert (=> d!587264 m!2363495))

(declare-fun m!2363497 () Bool)

(assert (=> d!587264 m!2363497))

(assert (=> d!587264 m!2363421))

(assert (=> d!587264 m!2363495))

(declare-fun m!2363499 () Bool)

(assert (=> d!587264 m!2363499))

(assert (=> b!1926806 d!587264))

(declare-fun d!587266 () Bool)

(assert (=> d!587266 (= (isDefined!3837 lt!738492) (not (isEmpty!13512 lt!738492)))))

(declare-fun bs!414677 () Bool)

(assert (= bs!414677 d!587266))

(declare-fun m!2363501 () Bool)

(assert (=> bs!414677 m!2363501))

(assert (=> b!1926806 d!587266))

(declare-fun d!587268 () Bool)

(assert (=> d!587268 (= (inv!29012 (tag!4380 (rule!6139 (h!27338 tokens!598)))) (= (mod (str.len (value!123709 (tag!4380 (rule!6139 (h!27338 tokens!598))))) 2) 0))))

(assert (=> b!1926817 d!587268))

(declare-fun d!587270 () Bool)

(declare-fun res!861777 () Bool)

(declare-fun e!1231932 () Bool)

(assert (=> d!587270 (=> (not res!861777) (not e!1231932))))

(declare-fun semiInverseModEq!1565 (Int Int) Bool)

(assert (=> d!587270 (= res!861777 (semiInverseModEq!1565 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))))))

(assert (=> d!587270 (= (inv!29015 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) e!1231932)))

(declare-fun b!1927186 () Bool)

(declare-fun equivClasses!1492 (Int Int) Bool)

(assert (=> b!1927186 (= e!1231932 (equivClasses!1492 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))))))

(assert (= (and d!587270 res!861777) b!1927186))

(declare-fun m!2363503 () Bool)

(assert (=> d!587270 m!2363503))

(declare-fun m!2363505 () Bool)

(assert (=> b!1927186 m!2363505))

(assert (=> b!1926817 d!587270))

(declare-fun d!587272 () Bool)

(declare-fun e!1231934 () Bool)

(assert (=> d!587272 e!1231934))

(declare-fun res!861778 () Bool)

(assert (=> d!587272 (=> (not res!861778) (not e!1231934))))

(declare-fun lt!738650 () List!22017)

(assert (=> d!587272 (= res!861778 (= (content!3171 lt!738650) ((_ map or) (content!3171 lt!738500) (content!3171 lt!738491))))))

(declare-fun e!1231933 () List!22017)

(assert (=> d!587272 (= lt!738650 e!1231933)))

(declare-fun c!313338 () Bool)

(assert (=> d!587272 (= c!313338 ((_ is Nil!21935) lt!738500))))

(assert (=> d!587272 (= (++!5881 lt!738500 lt!738491) lt!738650)))

(declare-fun b!1927190 () Bool)

(assert (=> b!1927190 (= e!1231934 (or (not (= lt!738491 Nil!21935)) (= lt!738650 lt!738500)))))

(declare-fun b!1927189 () Bool)

(declare-fun res!861779 () Bool)

(assert (=> b!1927189 (=> (not res!861779) (not e!1231934))))

(assert (=> b!1927189 (= res!861779 (= (size!17110 lt!738650) (+ (size!17110 lt!738500) (size!17110 lt!738491))))))

(declare-fun b!1927188 () Bool)

(assert (=> b!1927188 (= e!1231933 (Cons!21935 (h!27336 lt!738500) (++!5881 (t!179566 lt!738500) lt!738491)))))

(declare-fun b!1927187 () Bool)

(assert (=> b!1927187 (= e!1231933 lt!738491)))

(assert (= (and d!587272 c!313338) b!1927187))

(assert (= (and d!587272 (not c!313338)) b!1927188))

(assert (= (and d!587272 res!861778) b!1927189))

(assert (= (and b!1927189 res!861779) b!1927190))

(declare-fun m!2363507 () Bool)

(assert (=> d!587272 m!2363507))

(declare-fun m!2363509 () Bool)

(assert (=> d!587272 m!2363509))

(assert (=> d!587272 m!2363429))

(declare-fun m!2363511 () Bool)

(assert (=> b!1927189 m!2363511))

(declare-fun m!2363513 () Bool)

(assert (=> b!1927189 m!2363513))

(assert (=> b!1927189 m!2363435))

(declare-fun m!2363515 () Bool)

(assert (=> b!1927188 m!2363515))

(assert (=> b!1926828 d!587272))

(declare-fun d!587274 () Bool)

(assert (=> d!587274 (not (contains!3965 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))) lt!738502))))

(declare-fun lt!738653 () Unit!36278)

(declare-fun choose!11968 (LexerInterface!3547 List!22018 List!22018 Rule!7668 Rule!7668 C!10864) Unit!36278)

(assert (=> d!587274 (= lt!738653 (choose!11968 thiss!23328 rules!3198 rules!3198 (rule!6139 (h!27338 tokens!598)) (rule!6139 separatorToken!354) lt!738502))))

(assert (=> d!587274 (rulesInvariant!3154 thiss!23328 rules!3198)))

(assert (=> d!587274 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!82 thiss!23328 rules!3198 rules!3198 (rule!6139 (h!27338 tokens!598)) (rule!6139 separatorToken!354) lt!738502) lt!738653)))

(declare-fun bs!414678 () Bool)

(assert (= bs!414678 d!587274))

(assert (=> bs!414678 m!2363017))

(assert (=> bs!414678 m!2363017))

(assert (=> bs!414678 m!2363019))

(declare-fun m!2363517 () Bool)

(assert (=> bs!414678 m!2363517))

(assert (=> bs!414678 m!2363057))

(assert (=> b!1926828 d!587274))

(declare-fun d!587276 () Bool)

(declare-fun lt!738668 () BalanceConc!14460)

(declare-fun printListTailRec!452 (LexerInterface!3547 List!22019 List!22017) List!22017)

(declare-fun dropList!783 (BalanceConc!14462 Int) List!22019)

(assert (=> d!587276 (= (list!8871 lt!738668) (printListTailRec!452 thiss!23328 (dropList!783 lt!738485 0) (list!8871 (BalanceConc!14461 Empty!7322))))))

(declare-fun e!1231939 () BalanceConc!14460)

(assert (=> d!587276 (= lt!738668 e!1231939)))

(declare-fun c!313342 () Bool)

(declare-fun size!17113 (BalanceConc!14462) Int)

(assert (=> d!587276 (= c!313342 (>= 0 (size!17113 lt!738485)))))

(declare-fun e!1231940 () Bool)

(assert (=> d!587276 e!1231940))

(declare-fun res!861782 () Bool)

(assert (=> d!587276 (=> (not res!861782) (not e!1231940))))

(assert (=> d!587276 (= res!861782 (>= 0 0))))

(assert (=> d!587276 (= (printTailRec!1023 thiss!23328 lt!738485 0 (BalanceConc!14461 Empty!7322)) lt!738668)))

(declare-fun b!1927197 () Bool)

(assert (=> b!1927197 (= e!1231940 (<= 0 (size!17113 lt!738485)))))

(declare-fun b!1927198 () Bool)

(assert (=> b!1927198 (= e!1231939 (BalanceConc!14461 Empty!7322))))

(declare-fun b!1927199 () Bool)

(declare-fun ++!5882 (BalanceConc!14460 BalanceConc!14460) BalanceConc!14460)

(declare-fun apply!5694 (BalanceConc!14462 Int) Token!7420)

(assert (=> b!1927199 (= e!1231939 (printTailRec!1023 thiss!23328 lt!738485 (+ 0 1) (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (apply!5694 lt!738485 0)))))))

(declare-fun lt!738671 () List!22019)

(declare-fun list!8875 (BalanceConc!14462) List!22019)

(assert (=> b!1927199 (= lt!738671 (list!8875 lt!738485))))

(declare-fun lt!738673 () Unit!36278)

(declare-fun lemmaDropApply!707 (List!22019 Int) Unit!36278)

(assert (=> b!1927199 (= lt!738673 (lemmaDropApply!707 lt!738671 0))))

(declare-fun head!4495 (List!22019) Token!7420)

(declare-fun drop!1074 (List!22019 Int) List!22019)

(declare-fun apply!5695 (List!22019 Int) Token!7420)

(assert (=> b!1927199 (= (head!4495 (drop!1074 lt!738671 0)) (apply!5695 lt!738671 0))))

(declare-fun lt!738672 () Unit!36278)

(assert (=> b!1927199 (= lt!738672 lt!738673)))

(declare-fun lt!738674 () List!22019)

(assert (=> b!1927199 (= lt!738674 (list!8875 lt!738485))))

(declare-fun lt!738670 () Unit!36278)

(declare-fun lemmaDropTail!683 (List!22019 Int) Unit!36278)

(assert (=> b!1927199 (= lt!738670 (lemmaDropTail!683 lt!738674 0))))

(declare-fun tail!2980 (List!22019) List!22019)

(assert (=> b!1927199 (= (tail!2980 (drop!1074 lt!738674 0)) (drop!1074 lt!738674 (+ 0 1)))))

(declare-fun lt!738669 () Unit!36278)

(assert (=> b!1927199 (= lt!738669 lt!738670)))

(assert (= (and d!587276 res!861782) b!1927197))

(assert (= (and d!587276 c!313342) b!1927198))

(assert (= (and d!587276 (not c!313342)) b!1927199))

(declare-fun m!2363519 () Bool)

(assert (=> d!587276 m!2363519))

(declare-fun m!2363521 () Bool)

(assert (=> d!587276 m!2363521))

(declare-fun m!2363523 () Bool)

(assert (=> d!587276 m!2363523))

(assert (=> d!587276 m!2363521))

(declare-fun m!2363525 () Bool)

(assert (=> d!587276 m!2363525))

(assert (=> d!587276 m!2363519))

(declare-fun m!2363527 () Bool)

(assert (=> d!587276 m!2363527))

(assert (=> b!1927197 m!2363525))

(declare-fun m!2363529 () Bool)

(assert (=> b!1927199 m!2363529))

(declare-fun m!2363531 () Bool)

(assert (=> b!1927199 m!2363531))

(declare-fun m!2363533 () Bool)

(assert (=> b!1927199 m!2363533))

(declare-fun m!2363535 () Bool)

(assert (=> b!1927199 m!2363535))

(declare-fun m!2363537 () Bool)

(assert (=> b!1927199 m!2363537))

(declare-fun m!2363539 () Bool)

(assert (=> b!1927199 m!2363539))

(declare-fun m!2363541 () Bool)

(assert (=> b!1927199 m!2363541))

(assert (=> b!1927199 m!2363539))

(assert (=> b!1927199 m!2363533))

(assert (=> b!1927199 m!2363529))

(declare-fun m!2363543 () Bool)

(assert (=> b!1927199 m!2363543))

(declare-fun m!2363545 () Bool)

(assert (=> b!1927199 m!2363545))

(declare-fun m!2363547 () Bool)

(assert (=> b!1927199 m!2363547))

(assert (=> b!1927199 m!2363545))

(declare-fun m!2363549 () Bool)

(assert (=> b!1927199 m!2363549))

(declare-fun m!2363551 () Bool)

(assert (=> b!1927199 m!2363551))

(assert (=> b!1927199 m!2363537))

(declare-fun m!2363553 () Bool)

(assert (=> b!1927199 m!2363553))

(assert (=> b!1926828 d!587276))

(declare-fun d!587278 () Bool)

(declare-fun e!1231942 () Bool)

(assert (=> d!587278 e!1231942))

(declare-fun res!861783 () Bool)

(assert (=> d!587278 (=> (not res!861783) (not e!1231942))))

(declare-fun lt!738675 () List!22017)

(assert (=> d!587278 (= res!861783 (= (content!3171 lt!738675) ((_ map or) (content!3171 (++!5881 lt!738494 lt!738500)) (content!3171 lt!738491))))))

(declare-fun e!1231941 () List!22017)

(assert (=> d!587278 (= lt!738675 e!1231941)))

(declare-fun c!313343 () Bool)

(assert (=> d!587278 (= c!313343 ((_ is Nil!21935) (++!5881 lt!738494 lt!738500)))))

(assert (=> d!587278 (= (++!5881 (++!5881 lt!738494 lt!738500) lt!738491) lt!738675)))

(declare-fun b!1927203 () Bool)

(assert (=> b!1927203 (= e!1231942 (or (not (= lt!738491 Nil!21935)) (= lt!738675 (++!5881 lt!738494 lt!738500))))))

(declare-fun b!1927202 () Bool)

(declare-fun res!861784 () Bool)

(assert (=> b!1927202 (=> (not res!861784) (not e!1231942))))

(assert (=> b!1927202 (= res!861784 (= (size!17110 lt!738675) (+ (size!17110 (++!5881 lt!738494 lt!738500)) (size!17110 lt!738491))))))

(declare-fun b!1927201 () Bool)

(assert (=> b!1927201 (= e!1231941 (Cons!21935 (h!27336 (++!5881 lt!738494 lt!738500)) (++!5881 (t!179566 (++!5881 lt!738494 lt!738500)) lt!738491)))))

(declare-fun b!1927200 () Bool)

(assert (=> b!1927200 (= e!1231941 lt!738491)))

(assert (= (and d!587278 c!313343) b!1927200))

(assert (= (and d!587278 (not c!313343)) b!1927201))

(assert (= (and d!587278 res!861783) b!1927202))

(assert (= (and b!1927202 res!861784) b!1927203))

(declare-fun m!2363555 () Bool)

(assert (=> d!587278 m!2363555))

(assert (=> d!587278 m!2363037))

(declare-fun m!2363557 () Bool)

(assert (=> d!587278 m!2363557))

(assert (=> d!587278 m!2363429))

(declare-fun m!2363559 () Bool)

(assert (=> b!1927202 m!2363559))

(assert (=> b!1927202 m!2363037))

(declare-fun m!2363561 () Bool)

(assert (=> b!1927202 m!2363561))

(assert (=> b!1927202 m!2363435))

(declare-fun m!2363563 () Bool)

(assert (=> b!1927201 m!2363563))

(assert (=> b!1926828 d!587278))

(declare-fun bm!118503 () Bool)

(declare-fun call!118509 () List!22017)

(declare-fun call!118511 () List!22017)

(assert (=> bm!118503 (= call!118509 call!118511)))

(declare-fun c!313355 () Bool)

(declare-fun bm!118504 () Bool)

(declare-fun c!313354 () Bool)

(assert (=> bm!118504 (= call!118511 (usedCharacters!386 (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))))

(declare-fun b!1927220 () Bool)

(declare-fun e!1231951 () List!22017)

(declare-fun e!1231954 () List!22017)

(assert (=> b!1927220 (= e!1231951 e!1231954)))

(declare-fun c!313352 () Bool)

(assert (=> b!1927220 (= c!313352 ((_ is ElementMatch!5359) (regex!3934 (rule!6139 (h!27338 tokens!598)))))))

(declare-fun b!1927221 () Bool)

(assert (=> b!1927221 (= e!1231951 Nil!21935)))

(declare-fun d!587280 () Bool)

(declare-fun c!313353 () Bool)

(assert (=> d!587280 (= c!313353 (or ((_ is EmptyExpr!5359) (regex!3934 (rule!6139 (h!27338 tokens!598)))) ((_ is EmptyLang!5359) (regex!3934 (rule!6139 (h!27338 tokens!598))))))))

(assert (=> d!587280 (= (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))) e!1231951)))

(declare-fun b!1927222 () Bool)

(assert (=> b!1927222 (= c!313355 ((_ is Star!5359) (regex!3934 (rule!6139 (h!27338 tokens!598)))))))

(declare-fun e!1231952 () List!22017)

(assert (=> b!1927222 (= e!1231954 e!1231952)))

(declare-fun bm!118505 () Bool)

(declare-fun call!118510 () List!22017)

(assert (=> bm!118505 (= call!118510 (usedCharacters!386 (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))))))

(declare-fun b!1927223 () Bool)

(declare-fun e!1231953 () List!22017)

(declare-fun call!118508 () List!22017)

(assert (=> b!1927223 (= e!1231953 call!118508)))

(declare-fun b!1927224 () Bool)

(assert (=> b!1927224 (= e!1231952 e!1231953)))

(assert (=> b!1927224 (= c!313354 ((_ is Union!5359) (regex!3934 (rule!6139 (h!27338 tokens!598)))))))

(declare-fun b!1927225 () Bool)

(assert (=> b!1927225 (= e!1231952 call!118511)))

(declare-fun bm!118506 () Bool)

(assert (=> bm!118506 (= call!118508 (++!5881 (ite c!313354 call!118509 call!118510) (ite c!313354 call!118510 call!118509)))))

(declare-fun b!1927226 () Bool)

(assert (=> b!1927226 (= e!1231954 (Cons!21935 (c!313265 (regex!3934 (rule!6139 (h!27338 tokens!598)))) Nil!21935))))

(declare-fun b!1927227 () Bool)

(assert (=> b!1927227 (= e!1231953 call!118508)))

(assert (= (and d!587280 c!313353) b!1927221))

(assert (= (and d!587280 (not c!313353)) b!1927220))

(assert (= (and b!1927220 c!313352) b!1927226))

(assert (= (and b!1927220 (not c!313352)) b!1927222))

(assert (= (and b!1927222 c!313355) b!1927225))

(assert (= (and b!1927222 (not c!313355)) b!1927224))

(assert (= (and b!1927224 c!313354) b!1927227))

(assert (= (and b!1927224 (not c!313354)) b!1927223))

(assert (= (or b!1927227 b!1927223) bm!118503))

(assert (= (or b!1927227 b!1927223) bm!118505))

(assert (= (or b!1927227 b!1927223) bm!118506))

(assert (= (or b!1927225 bm!118503) bm!118504))

(declare-fun m!2363565 () Bool)

(assert (=> bm!118504 m!2363565))

(declare-fun m!2363567 () Bool)

(assert (=> bm!118505 m!2363567))

(declare-fun m!2363569 () Bool)

(assert (=> bm!118506 m!2363569))

(assert (=> b!1926828 d!587280))

(declare-fun d!587282 () Bool)

(declare-fun e!1231963 () Bool)

(assert (=> d!587282 e!1231963))

(declare-fun res!861793 () Bool)

(assert (=> d!587282 (=> (not res!861793) (not e!1231963))))

(declare-fun lt!738680 () BalanceConc!14462)

(assert (=> d!587282 (= res!861793 (= (list!8875 lt!738680) (Cons!21937 (h!27338 tokens!598) Nil!21937)))))

(declare-fun singleton!848 (Token!7420) BalanceConc!14462)

(assert (=> d!587282 (= lt!738680 (singleton!848 (h!27338 tokens!598)))))

(assert (=> d!587282 (= (singletonSeq!1918 (h!27338 tokens!598)) lt!738680)))

(declare-fun b!1927240 () Bool)

(declare-fun isBalanced!2259 (Conc!7323) Bool)

(assert (=> b!1927240 (= e!1231963 (isBalanced!2259 (c!313266 lt!738680)))))

(assert (= (and d!587282 res!861793) b!1927240))

(declare-fun m!2363571 () Bool)

(assert (=> d!587282 m!2363571))

(declare-fun m!2363573 () Bool)

(assert (=> d!587282 m!2363573))

(declare-fun m!2363575 () Bool)

(assert (=> b!1927240 m!2363575))

(assert (=> b!1926828 d!587282))

(declare-fun d!587284 () Bool)

(declare-fun e!1231968 () Bool)

(assert (=> d!587284 e!1231968))

(declare-fun res!861797 () Bool)

(assert (=> d!587284 (=> (not res!861797) (not e!1231968))))

(declare-fun lt!738682 () List!22017)

(assert (=> d!587284 (= res!861797 (= (content!3171 lt!738682) ((_ map or) (content!3171 lt!738494) (content!3171 lt!738500))))))

(declare-fun e!1231967 () List!22017)

(assert (=> d!587284 (= lt!738682 e!1231967)))

(declare-fun c!313359 () Bool)

(assert (=> d!587284 (= c!313359 ((_ is Nil!21935) lt!738494))))

(assert (=> d!587284 (= (++!5881 lt!738494 lt!738500) lt!738682)))

(declare-fun b!1927249 () Bool)

(assert (=> b!1927249 (= e!1231968 (or (not (= lt!738500 Nil!21935)) (= lt!738682 lt!738494)))))

(declare-fun b!1927248 () Bool)

(declare-fun res!861798 () Bool)

(assert (=> b!1927248 (=> (not res!861798) (not e!1231968))))

(assert (=> b!1927248 (= res!861798 (= (size!17110 lt!738682) (+ (size!17110 lt!738494) (size!17110 lt!738500))))))

(declare-fun b!1927247 () Bool)

(assert (=> b!1927247 (= e!1231967 (Cons!21935 (h!27336 lt!738494) (++!5881 (t!179566 lt!738494) lt!738500)))))

(declare-fun b!1927246 () Bool)

(assert (=> b!1927246 (= e!1231967 lt!738500)))

(assert (= (and d!587284 c!313359) b!1927246))

(assert (= (and d!587284 (not c!313359)) b!1927247))

(assert (= (and d!587284 res!861797) b!1927248))

(assert (= (and b!1927248 res!861798) b!1927249))

(declare-fun m!2363577 () Bool)

(assert (=> d!587284 m!2363577))

(assert (=> d!587284 m!2363427))

(assert (=> d!587284 m!2363509))

(declare-fun m!2363579 () Bool)

(assert (=> b!1927248 m!2363579))

(assert (=> b!1927248 m!2363433))

(assert (=> b!1927248 m!2363513))

(declare-fun m!2363581 () Bool)

(assert (=> b!1927247 m!2363581))

(assert (=> b!1926828 d!587284))

(declare-fun d!587286 () Bool)

(declare-fun lt!738685 () Bool)

(assert (=> d!587286 (= lt!738685 (select (content!3171 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))) lt!738502))))

(declare-fun e!1231978 () Bool)

(assert (=> d!587286 (= lt!738685 e!1231978)))

(declare-fun res!861805 () Bool)

(assert (=> d!587286 (=> (not res!861805) (not e!1231978))))

(assert (=> d!587286 (= res!861805 ((_ is Cons!21935) (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))))))

(assert (=> d!587286 (= (contains!3965 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354))) lt!738502) lt!738685)))

(declare-fun b!1927260 () Bool)

(declare-fun e!1231977 () Bool)

(assert (=> b!1927260 (= e!1231978 e!1231977)))

(declare-fun res!861806 () Bool)

(assert (=> b!1927260 (=> res!861806 e!1231977)))

(assert (=> b!1927260 (= res!861806 (= (h!27336 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))) lt!738502))))

(declare-fun b!1927261 () Bool)

(assert (=> b!1927261 (= e!1231977 (contains!3965 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))) lt!738502))))

(assert (= (and d!587286 res!861805) b!1927260))

(assert (= (and b!1927260 (not res!861806)) b!1927261))

(assert (=> d!587286 m!2363029))

(declare-fun m!2363613 () Bool)

(assert (=> d!587286 m!2363613))

(declare-fun m!2363615 () Bool)

(assert (=> d!587286 m!2363615))

(declare-fun m!2363617 () Bool)

(assert (=> b!1927261 m!2363617))

(assert (=> b!1926828 d!587286))

(declare-fun d!587298 () Bool)

(assert (=> d!587298 (= (head!4494 lt!738500) (h!27336 lt!738500))))

(assert (=> b!1926828 d!587298))

(declare-fun d!587300 () Bool)

(declare-fun lt!738688 () Bool)

(assert (=> d!587300 (= lt!738688 (select (content!3171 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))) lt!738502))))

(declare-fun e!1231980 () Bool)

(assert (=> d!587300 (= lt!738688 e!1231980)))

(declare-fun res!861807 () Bool)

(assert (=> d!587300 (=> (not res!861807) (not e!1231980))))

(assert (=> d!587300 (= res!861807 ((_ is Cons!21935) (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))

(assert (=> d!587300 (= (contains!3965 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))) lt!738502) lt!738688)))

(declare-fun b!1927262 () Bool)

(declare-fun e!1231979 () Bool)

(assert (=> b!1927262 (= e!1231980 e!1231979)))

(declare-fun res!861808 () Bool)

(assert (=> b!1927262 (=> res!861808 e!1231979)))

(assert (=> b!1927262 (= res!861808 (= (h!27336 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))) lt!738502))))

(declare-fun b!1927263 () Bool)

(assert (=> b!1927263 (= e!1231979 (contains!3965 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))) lt!738502))))

(assert (= (and d!587300 res!861807) b!1927262))

(assert (= (and b!1927262 (not res!861808)) b!1927263))

(assert (=> d!587300 m!2363017))

(declare-fun m!2363619 () Bool)

(assert (=> d!587300 m!2363619))

(declare-fun m!2363621 () Bool)

(assert (=> d!587300 m!2363621))

(declare-fun m!2363623 () Bool)

(assert (=> b!1927263 m!2363623))

(assert (=> b!1926828 d!587300))

(declare-fun d!587302 () Bool)

(declare-fun e!1231982 () Bool)

(assert (=> d!587302 e!1231982))

(declare-fun res!861809 () Bool)

(assert (=> d!587302 (=> (not res!861809) (not e!1231982))))

(declare-fun lt!738690 () List!22017)

(assert (=> d!587302 (= res!861809 (= (content!3171 lt!738690) ((_ map or) (content!3171 lt!738494) (content!3171 (++!5881 lt!738500 lt!738491)))))))

(declare-fun e!1231981 () List!22017)

(assert (=> d!587302 (= lt!738690 e!1231981)))

(declare-fun c!313362 () Bool)

(assert (=> d!587302 (= c!313362 ((_ is Nil!21935) lt!738494))))

(assert (=> d!587302 (= (++!5881 lt!738494 (++!5881 lt!738500 lt!738491)) lt!738690)))

(declare-fun b!1927267 () Bool)

(assert (=> b!1927267 (= e!1231982 (or (not (= (++!5881 lt!738500 lt!738491) Nil!21935)) (= lt!738690 lt!738494)))))

(declare-fun b!1927266 () Bool)

(declare-fun res!861810 () Bool)

(assert (=> b!1927266 (=> (not res!861810) (not e!1231982))))

(assert (=> b!1927266 (= res!861810 (= (size!17110 lt!738690) (+ (size!17110 lt!738494) (size!17110 (++!5881 lt!738500 lt!738491)))))))

(declare-fun b!1927265 () Bool)

(assert (=> b!1927265 (= e!1231981 (Cons!21935 (h!27336 lt!738494) (++!5881 (t!179566 lt!738494) (++!5881 lt!738500 lt!738491))))))

(declare-fun b!1927264 () Bool)

(assert (=> b!1927264 (= e!1231981 (++!5881 lt!738500 lt!738491))))

(assert (= (and d!587302 c!313362) b!1927264))

(assert (= (and d!587302 (not c!313362)) b!1927265))

(assert (= (and d!587302 res!861809) b!1927266))

(assert (= (and b!1927266 res!861810) b!1927267))

(declare-fun m!2363627 () Bool)

(assert (=> d!587302 m!2363627))

(assert (=> d!587302 m!2363427))

(assert (=> d!587302 m!2363025))

(declare-fun m!2363629 () Bool)

(assert (=> d!587302 m!2363629))

(declare-fun m!2363631 () Bool)

(assert (=> b!1927266 m!2363631))

(assert (=> b!1927266 m!2363433))

(assert (=> b!1927266 m!2363025))

(declare-fun m!2363633 () Bool)

(assert (=> b!1927266 m!2363633))

(assert (=> b!1927265 m!2363025))

(declare-fun m!2363635 () Bool)

(assert (=> b!1927265 m!2363635))

(assert (=> b!1926828 d!587302))

(declare-fun d!587306 () Bool)

(declare-fun c!313373 () Bool)

(assert (=> d!587306 (= c!313373 ((_ is Cons!21937) (Cons!21937 (h!27338 tokens!598) Nil!21937)))))

(declare-fun e!1231993 () List!22017)

(assert (=> d!587306 (= (printList!1082 thiss!23328 (Cons!21937 (h!27338 tokens!598) Nil!21937)) e!1231993)))

(declare-fun b!1927288 () Bool)

(assert (=> b!1927288 (= e!1231993 (++!5881 (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))) (printList!1082 thiss!23328 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))))

(declare-fun b!1927289 () Bool)

(assert (=> b!1927289 (= e!1231993 Nil!21935)))

(assert (= (and d!587306 c!313373) b!1927288))

(assert (= (and d!587306 (not c!313373)) b!1927289))

(declare-fun m!2363637 () Bool)

(assert (=> b!1927288 m!2363637))

(assert (=> b!1927288 m!2363637))

(declare-fun m!2363639 () Bool)

(assert (=> b!1927288 m!2363639))

(declare-fun m!2363641 () Bool)

(assert (=> b!1927288 m!2363641))

(assert (=> b!1927288 m!2363639))

(assert (=> b!1927288 m!2363641))

(declare-fun m!2363643 () Bool)

(assert (=> b!1927288 m!2363643))

(assert (=> b!1926828 d!587306))

(declare-fun d!587308 () Bool)

(assert (=> d!587308 (= (++!5881 (++!5881 lt!738494 lt!738500) lt!738491) (++!5881 lt!738494 (++!5881 lt!738500 lt!738491)))))

(declare-fun lt!738693 () Unit!36278)

(declare-fun choose!11970 (List!22017 List!22017 List!22017) Unit!36278)

(assert (=> d!587308 (= lt!738693 (choose!11970 lt!738494 lt!738500 lt!738491))))

(assert (=> d!587308 (= (lemmaConcatAssociativity!1193 lt!738494 lt!738500 lt!738491) lt!738693)))

(declare-fun bs!414681 () Bool)

(assert (= bs!414681 d!587308))

(assert (=> bs!414681 m!2363025))

(assert (=> bs!414681 m!2363027))

(declare-fun m!2363645 () Bool)

(assert (=> bs!414681 m!2363645))

(assert (=> bs!414681 m!2363037))

(assert (=> bs!414681 m!2363037))

(assert (=> bs!414681 m!2363039))

(assert (=> bs!414681 m!2363025))

(assert (=> b!1926828 d!587308))

(declare-fun bm!118515 () Bool)

(declare-fun call!118521 () List!22017)

(declare-fun call!118523 () List!22017)

(assert (=> bm!118515 (= call!118521 call!118523)))

(declare-fun c!313377 () Bool)

(declare-fun c!313376 () Bool)

(declare-fun bm!118516 () Bool)

(assert (=> bm!118516 (= call!118523 (usedCharacters!386 (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))))))

(declare-fun b!1927290 () Bool)

(declare-fun e!1231994 () List!22017)

(declare-fun e!1231997 () List!22017)

(assert (=> b!1927290 (= e!1231994 e!1231997)))

(declare-fun c!313374 () Bool)

(assert (=> b!1927290 (= c!313374 ((_ is ElementMatch!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun b!1927291 () Bool)

(assert (=> b!1927291 (= e!1231994 Nil!21935)))

(declare-fun d!587310 () Bool)

(declare-fun c!313375 () Bool)

(assert (=> d!587310 (= c!313375 (or ((_ is EmptyExpr!5359) (regex!3934 (rule!6139 separatorToken!354))) ((_ is EmptyLang!5359) (regex!3934 (rule!6139 separatorToken!354)))))))

(assert (=> d!587310 (= (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354))) e!1231994)))

(declare-fun b!1927292 () Bool)

(assert (=> b!1927292 (= c!313377 ((_ is Star!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun e!1231995 () List!22017)

(assert (=> b!1927292 (= e!1231997 e!1231995)))

(declare-fun bm!118517 () Bool)

(declare-fun call!118522 () List!22017)

(assert (=> bm!118517 (= call!118522 (usedCharacters!386 (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))))))

(declare-fun b!1927293 () Bool)

(declare-fun e!1231996 () List!22017)

(declare-fun call!118520 () List!22017)

(assert (=> b!1927293 (= e!1231996 call!118520)))

(declare-fun b!1927294 () Bool)

(assert (=> b!1927294 (= e!1231995 e!1231996)))

(assert (=> b!1927294 (= c!313376 ((_ is Union!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun b!1927295 () Bool)

(assert (=> b!1927295 (= e!1231995 call!118523)))

(declare-fun bm!118518 () Bool)

(assert (=> bm!118518 (= call!118520 (++!5881 (ite c!313376 call!118521 call!118522) (ite c!313376 call!118522 call!118521)))))

(declare-fun b!1927296 () Bool)

(assert (=> b!1927296 (= e!1231997 (Cons!21935 (c!313265 (regex!3934 (rule!6139 separatorToken!354))) Nil!21935))))

(declare-fun b!1927297 () Bool)

(assert (=> b!1927297 (= e!1231996 call!118520)))

(assert (= (and d!587310 c!313375) b!1927291))

(assert (= (and d!587310 (not c!313375)) b!1927290))

(assert (= (and b!1927290 c!313374) b!1927296))

(assert (= (and b!1927290 (not c!313374)) b!1927292))

(assert (= (and b!1927292 c!313377) b!1927295))

(assert (= (and b!1927292 (not c!313377)) b!1927294))

(assert (= (and b!1927294 c!313376) b!1927297))

(assert (= (and b!1927294 (not c!313376)) b!1927293))

(assert (= (or b!1927297 b!1927293) bm!118515))

(assert (= (or b!1927297 b!1927293) bm!118517))

(assert (= (or b!1927297 b!1927293) bm!118518))

(assert (= (or b!1927295 bm!118515) bm!118516))

(declare-fun m!2363647 () Bool)

(assert (=> bm!118516 m!2363647))

(declare-fun m!2363649 () Bool)

(assert (=> bm!118517 m!2363649))

(declare-fun m!2363651 () Bool)

(assert (=> bm!118518 m!2363651))

(assert (=> b!1926828 d!587310))

(declare-fun d!587312 () Bool)

(assert (=> d!587312 (= (list!8871 lt!738487) (list!8873 (c!313264 lt!738487)))))

(declare-fun bs!414682 () Bool)

(assert (= bs!414682 d!587312))

(declare-fun m!2363653 () Bool)

(assert (=> bs!414682 m!2363653))

(assert (=> b!1926828 d!587312))

(declare-fun d!587314 () Bool)

(declare-fun lt!738698 () BalanceConc!14460)

(assert (=> d!587314 (= (list!8871 lt!738698) (printList!1082 thiss!23328 (list!8875 lt!738485)))))

(assert (=> d!587314 (= lt!738698 (printTailRec!1023 thiss!23328 lt!738485 0 (BalanceConc!14461 Empty!7322)))))

(assert (=> d!587314 (= (print!1517 thiss!23328 lt!738485) lt!738698)))

(declare-fun bs!414683 () Bool)

(assert (= bs!414683 d!587314))

(declare-fun m!2363681 () Bool)

(assert (=> bs!414683 m!2363681))

(assert (=> bs!414683 m!2363553))

(assert (=> bs!414683 m!2363553))

(declare-fun m!2363683 () Bool)

(assert (=> bs!414683 m!2363683))

(assert (=> bs!414683 m!2363043))

(assert (=> b!1926828 d!587314))

(declare-fun d!587322 () Bool)

(declare-fun lt!738739 () Bool)

(declare-fun e!1232041 () Bool)

(assert (=> d!587322 (= lt!738739 e!1232041)))

(declare-fun res!861846 () Bool)

(assert (=> d!587322 (=> (not res!861846) (not e!1232041))))

(assert (=> d!587322 (= res!861846 (= (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354))))) (list!8875 (singletonSeq!1918 separatorToken!354))))))

(declare-fun e!1232042 () Bool)

(assert (=> d!587322 (= lt!738739 e!1232042)))

(declare-fun res!861845 () Bool)

(assert (=> d!587322 (=> (not res!861845) (not e!1232042))))

(declare-fun lt!738740 () tuple2!20550)

(assert (=> d!587322 (= res!861845 (= (size!17113 (_1!11744 lt!738740)) 1))))

(assert (=> d!587322 (= lt!738740 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354))))))

(assert (=> d!587322 (not (isEmpty!13507 rules!3198))))

(assert (=> d!587322 (= (rulesProduceIndividualToken!1719 thiss!23328 rules!3198 separatorToken!354) lt!738739)))

(declare-fun b!1927368 () Bool)

(declare-fun res!861847 () Bool)

(assert (=> b!1927368 (=> (not res!861847) (not e!1232042))))

(assert (=> b!1927368 (= res!861847 (= (apply!5694 (_1!11744 lt!738740) 0) separatorToken!354))))

(declare-fun b!1927369 () Bool)

(declare-fun isEmpty!13518 (BalanceConc!14460) Bool)

(assert (=> b!1927369 (= e!1232042 (isEmpty!13518 (_2!11744 lt!738740)))))

(declare-fun b!1927370 () Bool)

(assert (=> b!1927370 (= e!1232041 (isEmpty!13518 (_2!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354))))))))

(assert (= (and d!587322 res!861845) b!1927368))

(assert (= (and b!1927368 res!861847) b!1927369))

(assert (= (and d!587322 res!861846) b!1927370))

(declare-fun m!2363783 () Bool)

(assert (=> d!587322 m!2363783))

(declare-fun m!2363785 () Bool)

(assert (=> d!587322 m!2363785))

(assert (=> d!587322 m!2363053))

(declare-fun m!2363787 () Bool)

(assert (=> d!587322 m!2363787))

(declare-fun m!2363789 () Bool)

(assert (=> d!587322 m!2363789))

(assert (=> d!587322 m!2363785))

(declare-fun m!2363791 () Bool)

(assert (=> d!587322 m!2363791))

(assert (=> d!587322 m!2363783))

(declare-fun m!2363793 () Bool)

(assert (=> d!587322 m!2363793))

(assert (=> d!587322 m!2363783))

(declare-fun m!2363795 () Bool)

(assert (=> b!1927368 m!2363795))

(declare-fun m!2363797 () Bool)

(assert (=> b!1927369 m!2363797))

(assert (=> b!1927370 m!2363783))

(assert (=> b!1927370 m!2363783))

(assert (=> b!1927370 m!2363785))

(assert (=> b!1927370 m!2363785))

(assert (=> b!1927370 m!2363791))

(declare-fun m!2363799 () Bool)

(assert (=> b!1927370 m!2363799))

(assert (=> b!1926810 d!587322))

(declare-fun d!587350 () Bool)

(declare-fun lt!738741 () Bool)

(declare-fun e!1232043 () Bool)

(assert (=> d!587350 (= lt!738741 e!1232043)))

(declare-fun res!861849 () Bool)

(assert (=> d!587350 (=> (not res!861849) (not e!1232043))))

(assert (=> d!587350 (= res!861849 (= (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598)))))) (list!8875 (singletonSeq!1918 (h!27338 tokens!598)))))))

(declare-fun e!1232044 () Bool)

(assert (=> d!587350 (= lt!738741 e!1232044)))

(declare-fun res!861848 () Bool)

(assert (=> d!587350 (=> (not res!861848) (not e!1232044))))

(declare-fun lt!738742 () tuple2!20550)

(assert (=> d!587350 (= res!861848 (= (size!17113 (_1!11744 lt!738742)) 1))))

(assert (=> d!587350 (= lt!738742 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598)))))))

(assert (=> d!587350 (not (isEmpty!13507 rules!3198))))

(assert (=> d!587350 (= (rulesProduceIndividualToken!1719 thiss!23328 rules!3198 (h!27338 tokens!598)) lt!738741)))

(declare-fun b!1927371 () Bool)

(declare-fun res!861850 () Bool)

(assert (=> b!1927371 (=> (not res!861850) (not e!1232044))))

(assert (=> b!1927371 (= res!861850 (= (apply!5694 (_1!11744 lt!738742) 0) (h!27338 tokens!598)))))

(declare-fun b!1927372 () Bool)

(assert (=> b!1927372 (= e!1232044 (isEmpty!13518 (_2!11744 lt!738742)))))

(declare-fun b!1927373 () Bool)

(assert (=> b!1927373 (= e!1232043 (isEmpty!13518 (_2!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598)))))))))

(assert (= (and d!587350 res!861848) b!1927371))

(assert (= (and b!1927371 res!861850) b!1927372))

(assert (= (and d!587350 res!861849) b!1927373))

(assert (=> d!587350 m!2363033))

(declare-fun m!2363801 () Bool)

(assert (=> d!587350 m!2363801))

(assert (=> d!587350 m!2363053))

(declare-fun m!2363803 () Bool)

(assert (=> d!587350 m!2363803))

(declare-fun m!2363805 () Bool)

(assert (=> d!587350 m!2363805))

(assert (=> d!587350 m!2363801))

(declare-fun m!2363807 () Bool)

(assert (=> d!587350 m!2363807))

(assert (=> d!587350 m!2363033))

(declare-fun m!2363809 () Bool)

(assert (=> d!587350 m!2363809))

(assert (=> d!587350 m!2363033))

(declare-fun m!2363811 () Bool)

(assert (=> b!1927371 m!2363811))

(declare-fun m!2363813 () Bool)

(assert (=> b!1927372 m!2363813))

(assert (=> b!1927373 m!2363033))

(assert (=> b!1927373 m!2363033))

(assert (=> b!1927373 m!2363801))

(assert (=> b!1927373 m!2363801))

(assert (=> b!1927373 m!2363807))

(declare-fun m!2363815 () Bool)

(assert (=> b!1927373 m!2363815))

(assert (=> b!1926832 d!587350))

(declare-fun d!587352 () Bool)

(declare-fun c!313402 () Bool)

(assert (=> d!587352 (= c!313402 ((_ is IntegerValue!12210) (value!123710 (h!27338 tokens!598))))))

(declare-fun e!1232051 () Bool)

(assert (=> d!587352 (= (inv!21 (value!123710 (h!27338 tokens!598))) e!1232051)))

(declare-fun b!1927384 () Bool)

(declare-fun inv!16 (TokenValue!4070) Bool)

(assert (=> b!1927384 (= e!1232051 (inv!16 (value!123710 (h!27338 tokens!598))))))

(declare-fun b!1927385 () Bool)

(declare-fun e!1232053 () Bool)

(declare-fun inv!15 (TokenValue!4070) Bool)

(assert (=> b!1927385 (= e!1232053 (inv!15 (value!123710 (h!27338 tokens!598))))))

(declare-fun b!1927386 () Bool)

(declare-fun e!1232052 () Bool)

(declare-fun inv!17 (TokenValue!4070) Bool)

(assert (=> b!1927386 (= e!1232052 (inv!17 (value!123710 (h!27338 tokens!598))))))

(declare-fun b!1927387 () Bool)

(declare-fun res!861853 () Bool)

(assert (=> b!1927387 (=> res!861853 e!1232053)))

(assert (=> b!1927387 (= res!861853 (not ((_ is IntegerValue!12212) (value!123710 (h!27338 tokens!598)))))))

(assert (=> b!1927387 (= e!1232052 e!1232053)))

(declare-fun b!1927388 () Bool)

(assert (=> b!1927388 (= e!1232051 e!1232052)))

(declare-fun c!313401 () Bool)

(assert (=> b!1927388 (= c!313401 ((_ is IntegerValue!12211) (value!123710 (h!27338 tokens!598))))))

(assert (= (and d!587352 c!313402) b!1927384))

(assert (= (and d!587352 (not c!313402)) b!1927388))

(assert (= (and b!1927388 c!313401) b!1927386))

(assert (= (and b!1927388 (not c!313401)) b!1927387))

(assert (= (and b!1927387 (not res!861853)) b!1927385))

(declare-fun m!2363817 () Bool)

(assert (=> b!1927384 m!2363817))

(declare-fun m!2363819 () Bool)

(assert (=> b!1927385 m!2363819))

(declare-fun m!2363821 () Bool)

(assert (=> b!1927386 m!2363821))

(assert (=> b!1926811 d!587352))

(declare-fun d!587354 () Bool)

(assert (=> d!587354 (not (matchR!2627 (regex!3934 (rule!6139 separatorToken!354)) lt!738500))))

(declare-fun lt!738745 () Unit!36278)

(declare-fun choose!11971 (Regex!5359 List!22017 C!10864) Unit!36278)

(assert (=> d!587354 (= lt!738745 (choose!11971 (regex!3934 (rule!6139 separatorToken!354)) lt!738500 lt!738502))))

(assert (=> d!587354 (validRegex!2134 (regex!3934 (rule!6139 separatorToken!354)))))

(assert (=> d!587354 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!286 (regex!3934 (rule!6139 separatorToken!354)) lt!738500 lt!738502) lt!738745)))

(declare-fun bs!414687 () Bool)

(assert (= bs!414687 d!587354))

(assert (=> bs!414687 m!2362955))

(declare-fun m!2363823 () Bool)

(assert (=> bs!414687 m!2363823))

(declare-fun m!2363825 () Bool)

(assert (=> bs!414687 m!2363825))

(assert (=> b!1926831 d!587354))

(declare-fun b!1927389 () Bool)

(declare-fun e!1232056 () Bool)

(declare-fun e!1232055 () Bool)

(assert (=> b!1927389 (= e!1232056 e!1232055)))

(declare-fun res!861861 () Bool)

(assert (=> b!1927389 (=> (not res!861861) (not e!1232055))))

(declare-fun lt!738746 () Bool)

(assert (=> b!1927389 (= res!861861 (not lt!738746))))

(declare-fun b!1927390 () Bool)

(declare-fun e!1232057 () Bool)

(assert (=> b!1927390 (= e!1232057 (matchR!2627 (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500)) (tail!2979 lt!738500)))))

(declare-fun b!1927391 () Bool)

(declare-fun e!1232059 () Bool)

(assert (=> b!1927391 (= e!1232059 (= (head!4494 lt!738500) (c!313265 (regex!3934 (rule!6139 separatorToken!354)))))))

(declare-fun b!1927392 () Bool)

(declare-fun res!861857 () Bool)

(assert (=> b!1927392 (=> (not res!861857) (not e!1232059))))

(assert (=> b!1927392 (= res!861857 (isEmpty!13510 (tail!2979 lt!738500)))))

(declare-fun b!1927393 () Bool)

(declare-fun res!861855 () Bool)

(declare-fun e!1232054 () Bool)

(assert (=> b!1927393 (=> res!861855 e!1232054)))

(assert (=> b!1927393 (= res!861855 (not (isEmpty!13510 (tail!2979 lt!738500))))))

(declare-fun b!1927394 () Bool)

(assert (=> b!1927394 (= e!1232055 e!1232054)))

(declare-fun res!861856 () Bool)

(assert (=> b!1927394 (=> res!861856 e!1232054)))

(declare-fun call!118532 () Bool)

(assert (=> b!1927394 (= res!861856 call!118532)))

(declare-fun b!1927395 () Bool)

(declare-fun res!861854 () Bool)

(assert (=> b!1927395 (=> res!861854 e!1232056)))

(assert (=> b!1927395 (= res!861854 e!1232059)))

(declare-fun res!861860 () Bool)

(assert (=> b!1927395 (=> (not res!861860) (not e!1232059))))

(assert (=> b!1927395 (= res!861860 lt!738746)))

(declare-fun b!1927396 () Bool)

(assert (=> b!1927396 (= e!1232054 (not (= (head!4494 lt!738500) (c!313265 (regex!3934 (rule!6139 separatorToken!354))))))))

(declare-fun b!1927397 () Bool)

(declare-fun res!861858 () Bool)

(assert (=> b!1927397 (=> (not res!861858) (not e!1232059))))

(assert (=> b!1927397 (= res!861858 (not call!118532))))

(declare-fun b!1927398 () Bool)

(declare-fun res!861859 () Bool)

(assert (=> b!1927398 (=> res!861859 e!1232056)))

(assert (=> b!1927398 (= res!861859 (not ((_ is ElementMatch!5359) (regex!3934 (rule!6139 separatorToken!354)))))))

(declare-fun e!1232060 () Bool)

(assert (=> b!1927398 (= e!1232060 e!1232056)))

(declare-fun b!1927399 () Bool)

(declare-fun e!1232058 () Bool)

(assert (=> b!1927399 (= e!1232058 (= lt!738746 call!118532))))

(declare-fun b!1927400 () Bool)

(assert (=> b!1927400 (= e!1232058 e!1232060)))

(declare-fun c!313406 () Bool)

(assert (=> b!1927400 (= c!313406 ((_ is EmptyLang!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun b!1927401 () Bool)

(assert (=> b!1927401 (= e!1232060 (not lt!738746))))

(declare-fun b!1927402 () Bool)

(assert (=> b!1927402 (= e!1232057 (nullable!1608 (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun bm!118527 () Bool)

(assert (=> bm!118527 (= call!118532 (isEmpty!13510 lt!738500))))

(declare-fun d!587356 () Bool)

(assert (=> d!587356 e!1232058))

(declare-fun c!313404 () Bool)

(assert (=> d!587356 (= c!313404 ((_ is EmptyExpr!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(assert (=> d!587356 (= lt!738746 e!1232057)))

(declare-fun c!313405 () Bool)

(assert (=> d!587356 (= c!313405 (isEmpty!13510 lt!738500))))

(assert (=> d!587356 (validRegex!2134 (regex!3934 (rule!6139 separatorToken!354)))))

(assert (=> d!587356 (= (matchR!2627 (regex!3934 (rule!6139 separatorToken!354)) lt!738500) lt!738746)))

(assert (= (and d!587356 c!313405) b!1927402))

(assert (= (and d!587356 (not c!313405)) b!1927390))

(assert (= (and d!587356 c!313404) b!1927399))

(assert (= (and d!587356 (not c!313404)) b!1927400))

(assert (= (and b!1927400 c!313406) b!1927401))

(assert (= (and b!1927400 (not c!313406)) b!1927398))

(assert (= (and b!1927398 (not res!861859)) b!1927395))

(assert (= (and b!1927395 res!861860) b!1927397))

(assert (= (and b!1927397 res!861858) b!1927392))

(assert (= (and b!1927392 res!861857) b!1927391))

(assert (= (and b!1927395 (not res!861854)) b!1927389))

(assert (= (and b!1927389 res!861861) b!1927394))

(assert (= (and b!1927394 (not res!861856)) b!1927393))

(assert (= (and b!1927393 (not res!861855)) b!1927396))

(assert (= (or b!1927399 b!1927394 b!1927397) bm!118527))

(assert (=> b!1927396 m!2363013))

(assert (=> b!1927390 m!2363013))

(assert (=> b!1927390 m!2363013))

(declare-fun m!2363827 () Bool)

(assert (=> b!1927390 m!2363827))

(declare-fun m!2363829 () Bool)

(assert (=> b!1927390 m!2363829))

(assert (=> b!1927390 m!2363827))

(assert (=> b!1927390 m!2363829))

(declare-fun m!2363831 () Bool)

(assert (=> b!1927390 m!2363831))

(assert (=> b!1927393 m!2363829))

(assert (=> b!1927393 m!2363829))

(declare-fun m!2363833 () Bool)

(assert (=> b!1927393 m!2363833))

(assert (=> b!1927392 m!2363829))

(assert (=> b!1927392 m!2363829))

(assert (=> b!1927392 m!2363833))

(declare-fun m!2363835 () Bool)

(assert (=> b!1927402 m!2363835))

(assert (=> b!1927391 m!2363013))

(declare-fun m!2363837 () Bool)

(assert (=> bm!118527 m!2363837))

(assert (=> d!587356 m!2363837))

(assert (=> d!587356 m!2363825))

(assert (=> b!1926831 d!587356))

(declare-fun d!587358 () Bool)

(declare-fun res!861866 () Bool)

(declare-fun e!1232065 () Bool)

(assert (=> d!587358 (=> res!861866 e!1232065)))

(assert (=> d!587358 (= res!861866 ((_ is Nil!21937) tokens!598))))

(assert (=> d!587358 (= (forall!4636 tokens!598 lambda!75173) e!1232065)))

(declare-fun b!1927407 () Bool)

(declare-fun e!1232066 () Bool)

(assert (=> b!1927407 (= e!1232065 e!1232066)))

(declare-fun res!861867 () Bool)

(assert (=> b!1927407 (=> (not res!861867) (not e!1232066))))

(declare-fun dynLambda!10631 (Int Token!7420) Bool)

(assert (=> b!1927407 (= res!861867 (dynLambda!10631 lambda!75173 (h!27338 tokens!598)))))

(declare-fun b!1927408 () Bool)

(assert (=> b!1927408 (= e!1232066 (forall!4636 (t!179568 tokens!598) lambda!75173))))

(assert (= (and d!587358 (not res!861866)) b!1927407))

(assert (= (and b!1927407 res!861867) b!1927408))

(declare-fun b_lambda!63841 () Bool)

(assert (=> (not b_lambda!63841) (not b!1927407)))

(declare-fun m!2363839 () Bool)

(assert (=> b!1927407 m!2363839))

(declare-fun m!2363841 () Bool)

(assert (=> b!1927408 m!2363841))

(assert (=> b!1926813 d!587358))

(declare-fun d!587360 () Bool)

(assert (=> d!587360 (= (isEmpty!13507 rules!3198) ((_ is Nil!21936) rules!3198))))

(assert (=> b!1926824 d!587360))

(declare-fun bs!414689 () Bool)

(declare-fun d!587362 () Bool)

(assert (= bs!414689 (and d!587362 b!1926813)))

(declare-fun lambda!75197 () Int)

(assert (=> bs!414689 (not (= lambda!75197 lambda!75173))))

(declare-fun bs!414690 () Bool)

(assert (= bs!414690 (and d!587362 b!1927047)))

(assert (=> bs!414690 (= lambda!75197 lambda!75185)))

(declare-fun b!1927566 () Bool)

(declare-fun e!1232173 () Bool)

(assert (=> b!1927566 (= e!1232173 true)))

(declare-fun b!1927565 () Bool)

(declare-fun e!1232172 () Bool)

(assert (=> b!1927565 (= e!1232172 e!1232173)))

(declare-fun b!1927564 () Bool)

(declare-fun e!1232171 () Bool)

(assert (=> b!1927564 (= e!1232171 e!1232172)))

(assert (=> d!587362 e!1232171))

(assert (= b!1927565 b!1927566))

(assert (= b!1927564 b!1927565))

(assert (= (and d!587362 ((_ is Cons!21936) rules!3198)) b!1927564))

(assert (=> b!1927566 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10625 order!13769 lambda!75197))))

(assert (=> b!1927566 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10625 order!13769 lambda!75197))))

(assert (=> d!587362 true))

(declare-fun lt!738765 () Bool)

(assert (=> d!587362 (= lt!738765 (forall!4636 tokens!598 lambda!75197))))

(declare-fun e!1232170 () Bool)

(assert (=> d!587362 (= lt!738765 e!1232170)))

(declare-fun res!861942 () Bool)

(assert (=> d!587362 (=> res!861942 e!1232170)))

(assert (=> d!587362 (= res!861942 (not ((_ is Cons!21937) tokens!598)))))

(assert (=> d!587362 (not (isEmpty!13507 rules!3198))))

(assert (=> d!587362 (= (rulesProduceEachTokenIndividuallyList!1278 thiss!23328 rules!3198 tokens!598) lt!738765)))

(declare-fun b!1927562 () Bool)

(declare-fun e!1232169 () Bool)

(assert (=> b!1927562 (= e!1232170 e!1232169)))

(declare-fun res!861943 () Bool)

(assert (=> b!1927562 (=> (not res!861943) (not e!1232169))))

(assert (=> b!1927562 (= res!861943 (rulesProduceIndividualToken!1719 thiss!23328 rules!3198 (h!27338 tokens!598)))))

(declare-fun b!1927563 () Bool)

(assert (=> b!1927563 (= e!1232169 (rulesProduceEachTokenIndividuallyList!1278 thiss!23328 rules!3198 (t!179568 tokens!598)))))

(assert (= (and d!587362 (not res!861942)) b!1927562))

(assert (= (and b!1927562 res!861943) b!1927563))

(declare-fun m!2363943 () Bool)

(assert (=> d!587362 m!2363943))

(assert (=> d!587362 m!2363053))

(assert (=> b!1927562 m!2363051))

(declare-fun m!2363945 () Bool)

(assert (=> b!1927563 m!2363945))

(assert (=> b!1926803 d!587362))

(declare-fun b!1927567 () Bool)

(declare-fun e!1232176 () Bool)

(declare-fun e!1232175 () Bool)

(assert (=> b!1927567 (= e!1232176 e!1232175)))

(declare-fun res!861951 () Bool)

(assert (=> b!1927567 (=> (not res!861951) (not e!1232175))))

(declare-fun lt!738766 () Bool)

(assert (=> b!1927567 (= res!861951 (not lt!738766))))

(declare-fun b!1927568 () Bool)

(declare-fun e!1232177 () Bool)

(assert (=> b!1927568 (= e!1232177 (matchR!2627 (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500)) (tail!2979 lt!738500)))))

(declare-fun b!1927569 () Bool)

(declare-fun e!1232179 () Bool)

(assert (=> b!1927569 (= e!1232179 (= (head!4494 lt!738500) (c!313265 (regex!3934 lt!738484))))))

(declare-fun b!1927570 () Bool)

(declare-fun res!861947 () Bool)

(assert (=> b!1927570 (=> (not res!861947) (not e!1232179))))

(assert (=> b!1927570 (= res!861947 (isEmpty!13510 (tail!2979 lt!738500)))))

(declare-fun b!1927571 () Bool)

(declare-fun res!861945 () Bool)

(declare-fun e!1232174 () Bool)

(assert (=> b!1927571 (=> res!861945 e!1232174)))

(assert (=> b!1927571 (= res!861945 (not (isEmpty!13510 (tail!2979 lt!738500))))))

(declare-fun b!1927572 () Bool)

(assert (=> b!1927572 (= e!1232175 e!1232174)))

(declare-fun res!861946 () Bool)

(assert (=> b!1927572 (=> res!861946 e!1232174)))

(declare-fun call!118538 () Bool)

(assert (=> b!1927572 (= res!861946 call!118538)))

(declare-fun b!1927573 () Bool)

(declare-fun res!861944 () Bool)

(assert (=> b!1927573 (=> res!861944 e!1232176)))

(assert (=> b!1927573 (= res!861944 e!1232179)))

(declare-fun res!861950 () Bool)

(assert (=> b!1927573 (=> (not res!861950) (not e!1232179))))

(assert (=> b!1927573 (= res!861950 lt!738766)))

(declare-fun b!1927574 () Bool)

(assert (=> b!1927574 (= e!1232174 (not (= (head!4494 lt!738500) (c!313265 (regex!3934 lt!738484)))))))

(declare-fun b!1927575 () Bool)

(declare-fun res!861948 () Bool)

(assert (=> b!1927575 (=> (not res!861948) (not e!1232179))))

(assert (=> b!1927575 (= res!861948 (not call!118538))))

(declare-fun b!1927576 () Bool)

(declare-fun res!861949 () Bool)

(assert (=> b!1927576 (=> res!861949 e!1232176)))

(assert (=> b!1927576 (= res!861949 (not ((_ is ElementMatch!5359) (regex!3934 lt!738484))))))

(declare-fun e!1232180 () Bool)

(assert (=> b!1927576 (= e!1232180 e!1232176)))

(declare-fun b!1927577 () Bool)

(declare-fun e!1232178 () Bool)

(assert (=> b!1927577 (= e!1232178 (= lt!738766 call!118538))))

(declare-fun b!1927578 () Bool)

(assert (=> b!1927578 (= e!1232178 e!1232180)))

(declare-fun c!313425 () Bool)

(assert (=> b!1927578 (= c!313425 ((_ is EmptyLang!5359) (regex!3934 lt!738484)))))

(declare-fun b!1927579 () Bool)

(assert (=> b!1927579 (= e!1232180 (not lt!738766))))

(declare-fun b!1927580 () Bool)

(assert (=> b!1927580 (= e!1232177 (nullable!1608 (regex!3934 lt!738484)))))

(declare-fun bm!118533 () Bool)

(assert (=> bm!118533 (= call!118538 (isEmpty!13510 lt!738500))))

(declare-fun d!587392 () Bool)

(assert (=> d!587392 e!1232178))

(declare-fun c!313423 () Bool)

(assert (=> d!587392 (= c!313423 ((_ is EmptyExpr!5359) (regex!3934 lt!738484)))))

(assert (=> d!587392 (= lt!738766 e!1232177)))

(declare-fun c!313424 () Bool)

(assert (=> d!587392 (= c!313424 (isEmpty!13510 lt!738500))))

(assert (=> d!587392 (validRegex!2134 (regex!3934 lt!738484))))

(assert (=> d!587392 (= (matchR!2627 (regex!3934 lt!738484) lt!738500) lt!738766)))

(assert (= (and d!587392 c!313424) b!1927580))

(assert (= (and d!587392 (not c!313424)) b!1927568))

(assert (= (and d!587392 c!313423) b!1927577))

(assert (= (and d!587392 (not c!313423)) b!1927578))

(assert (= (and b!1927578 c!313425) b!1927579))

(assert (= (and b!1927578 (not c!313425)) b!1927576))

(assert (= (and b!1927576 (not res!861949)) b!1927573))

(assert (= (and b!1927573 res!861950) b!1927575))

(assert (= (and b!1927575 res!861948) b!1927570))

(assert (= (and b!1927570 res!861947) b!1927569))

(assert (= (and b!1927573 (not res!861944)) b!1927567))

(assert (= (and b!1927567 res!861951) b!1927572))

(assert (= (and b!1927572 (not res!861946)) b!1927571))

(assert (= (and b!1927571 (not res!861945)) b!1927574))

(assert (= (or b!1927577 b!1927572 b!1927575) bm!118533))

(assert (=> b!1927574 m!2363013))

(assert (=> b!1927568 m!2363013))

(assert (=> b!1927568 m!2363013))

(declare-fun m!2363947 () Bool)

(assert (=> b!1927568 m!2363947))

(assert (=> b!1927568 m!2363829))

(assert (=> b!1927568 m!2363947))

(assert (=> b!1927568 m!2363829))

(declare-fun m!2363949 () Bool)

(assert (=> b!1927568 m!2363949))

(assert (=> b!1927571 m!2363829))

(assert (=> b!1927571 m!2363829))

(assert (=> b!1927571 m!2363833))

(assert (=> b!1927570 m!2363829))

(assert (=> b!1927570 m!2363829))

(assert (=> b!1927570 m!2363833))

(declare-fun m!2363951 () Bool)

(assert (=> b!1927580 m!2363951))

(assert (=> b!1927569 m!2363013))

(assert (=> bm!118533 m!2363837))

(assert (=> d!587392 m!2363837))

(declare-fun m!2363953 () Bool)

(assert (=> d!587392 m!2363953))

(assert (=> b!1926822 d!587392))

(declare-fun d!587394 () Bool)

(assert (=> d!587394 (= (get!6907 lt!738490) (v!26636 lt!738490))))

(assert (=> b!1926822 d!587394))

(declare-fun d!587396 () Bool)

(declare-fun res!861952 () Bool)

(declare-fun e!1232181 () Bool)

(assert (=> d!587396 (=> (not res!861952) (not e!1232181))))

(assert (=> d!587396 (= res!861952 (not (isEmpty!13510 (originalCharacters!4741 (h!27338 tokens!598)))))))

(assert (=> d!587396 (= (inv!29016 (h!27338 tokens!598)) e!1232181)))

(declare-fun b!1927581 () Bool)

(declare-fun res!861953 () Bool)

(assert (=> b!1927581 (=> (not res!861953) (not e!1232181))))

(assert (=> b!1927581 (= res!861953 (= (originalCharacters!4741 (h!27338 tokens!598)) (list!8871 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))))))

(declare-fun b!1927582 () Bool)

(assert (=> b!1927582 (= e!1232181 (= (size!17108 (h!27338 tokens!598)) (size!17110 (originalCharacters!4741 (h!27338 tokens!598)))))))

(assert (= (and d!587396 res!861952) b!1927581))

(assert (= (and b!1927581 res!861953) b!1927582))

(declare-fun b_lambda!63847 () Bool)

(assert (=> (not b_lambda!63847) (not b!1927581)))

(assert (=> b!1927581 t!179624))

(declare-fun b_and!151185 () Bool)

(assert (= b_and!151153 (and (=> t!179624 result!142580) b_and!151185)))

(assert (=> b!1927581 t!179626))

(declare-fun b_and!151187 () Bool)

(assert (= b_and!151155 (and (=> t!179626 result!142582) b_and!151187)))

(assert (=> b!1927581 t!179628))

(declare-fun b_and!151189 () Bool)

(assert (= b_and!151157 (and (=> t!179628 result!142584) b_and!151189)))

(declare-fun m!2363955 () Bool)

(assert (=> d!587396 m!2363955))

(assert (=> b!1927581 m!2363447))

(assert (=> b!1927581 m!2363447))

(declare-fun m!2363957 () Bool)

(assert (=> b!1927581 m!2363957))

(declare-fun m!2363959 () Bool)

(assert (=> b!1927582 m!2363959))

(assert (=> b!1926812 d!587396))

(declare-fun d!587398 () Bool)

(assert (=> d!587398 (= (inv!29012 (tag!4380 (h!27337 rules!3198))) (= (mod (str.len (value!123709 (tag!4380 (h!27337 rules!3198)))) 2) 0))))

(assert (=> b!1926823 d!587398))

(declare-fun d!587400 () Bool)

(declare-fun res!861954 () Bool)

(declare-fun e!1232182 () Bool)

(assert (=> d!587400 (=> (not res!861954) (not e!1232182))))

(assert (=> d!587400 (= res!861954 (semiInverseModEq!1565 (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (h!27337 rules!3198)))))))

(assert (=> d!587400 (= (inv!29015 (transformation!3934 (h!27337 rules!3198))) e!1232182)))

(declare-fun b!1927583 () Bool)

(assert (=> b!1927583 (= e!1232182 (equivClasses!1492 (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (h!27337 rules!3198)))))))

(assert (= (and d!587400 res!861954) b!1927583))

(declare-fun m!2363961 () Bool)

(assert (=> d!587400 m!2363961))

(declare-fun m!2363963 () Bool)

(assert (=> b!1927583 m!2363963))

(assert (=> b!1926823 d!587400))

(declare-fun d!587402 () Bool)

(declare-fun res!861957 () Bool)

(declare-fun e!1232185 () Bool)

(assert (=> d!587402 (=> (not res!861957) (not e!1232185))))

(declare-fun rulesValid!1452 (LexerInterface!3547 List!22018) Bool)

(assert (=> d!587402 (= res!861957 (rulesValid!1452 thiss!23328 rules!3198))))

(assert (=> d!587402 (= (rulesInvariant!3154 thiss!23328 rules!3198) e!1232185)))

(declare-fun b!1927586 () Bool)

(declare-datatypes ((List!22021 0))(
  ( (Nil!21939) (Cons!21939 (h!27340 String!25468) (t!179682 List!22021)) )
))
(declare-fun noDuplicateTag!1450 (LexerInterface!3547 List!22018 List!22021) Bool)

(assert (=> b!1927586 (= e!1232185 (noDuplicateTag!1450 thiss!23328 rules!3198 Nil!21939))))

(assert (= (and d!587402 res!861957) b!1927586))

(declare-fun m!2363965 () Bool)

(assert (=> d!587402 m!2363965))

(declare-fun m!2363967 () Bool)

(assert (=> b!1927586 m!2363967))

(assert (=> b!1926805 d!587402))

(declare-fun d!587404 () Bool)

(assert (=> d!587404 (= (inv!29012 (tag!4380 (rule!6139 separatorToken!354))) (= (mod (str.len (value!123709 (tag!4380 (rule!6139 separatorToken!354)))) 2) 0))))

(assert (=> b!1926814 d!587404))

(declare-fun d!587406 () Bool)

(declare-fun res!861958 () Bool)

(declare-fun e!1232186 () Bool)

(assert (=> d!587406 (=> (not res!861958) (not e!1232186))))

(assert (=> d!587406 (= res!861958 (semiInverseModEq!1565 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354)))))))

(assert (=> d!587406 (= (inv!29015 (transformation!3934 (rule!6139 separatorToken!354))) e!1232186)))

(declare-fun b!1927587 () Bool)

(assert (=> b!1927587 (= e!1232186 (equivClasses!1492 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354)))))))

(assert (= (and d!587406 res!861958) b!1927587))

(declare-fun m!2363969 () Bool)

(assert (=> d!587406 m!2363969))

(declare-fun m!2363971 () Bool)

(assert (=> b!1927587 m!2363971))

(assert (=> b!1926814 d!587406))

(declare-fun d!587408 () Bool)

(declare-fun lt!738769 () Bool)

(declare-fun isEmpty!13519 (List!22019) Bool)

(assert (=> d!587408 (= lt!738769 (isEmpty!13519 (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))))))

(declare-fun isEmpty!13520 (Conc!7323) Bool)

(assert (=> d!587408 (= lt!738769 (isEmpty!13520 (c!313266 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))))))

(assert (=> d!587408 (= (isEmpty!13508 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494)))) lt!738769)))

(declare-fun bs!414691 () Bool)

(assert (= bs!414691 d!587408))

(declare-fun m!2363973 () Bool)

(assert (=> bs!414691 m!2363973))

(assert (=> bs!414691 m!2363973))

(declare-fun m!2363975 () Bool)

(assert (=> bs!414691 m!2363975))

(declare-fun m!2363977 () Bool)

(assert (=> bs!414691 m!2363977))

(assert (=> b!1926825 d!587408))

(declare-fun b!1927602 () Bool)

(declare-fun res!861965 () Bool)

(declare-fun e!1232195 () Bool)

(assert (=> b!1927602 (=> (not res!861965) (not e!1232195))))

(declare-fun lt!738772 () tuple2!20550)

(declare-datatypes ((tuple2!20554 0))(
  ( (tuple2!20555 (_1!11746 List!22019) (_2!11746 List!22017)) )
))
(declare-fun lexList!951 (LexerInterface!3547 List!22018 List!22017) tuple2!20554)

(assert (=> b!1927602 (= res!861965 (= (list!8875 (_1!11744 lt!738772)) (_1!11746 (lexList!951 thiss!23328 rules!3198 (list!8871 (seqFromList!2788 lt!738494))))))))

(declare-fun b!1927603 () Bool)

(declare-fun e!1232196 () Bool)

(declare-fun e!1232194 () Bool)

(assert (=> b!1927603 (= e!1232196 e!1232194)))

(declare-fun res!861966 () Bool)

(declare-fun size!17114 (BalanceConc!14460) Int)

(assert (=> b!1927603 (= res!861966 (< (size!17114 (_2!11744 lt!738772)) (size!17114 (seqFromList!2788 lt!738494))))))

(assert (=> b!1927603 (=> (not res!861966) (not e!1232194))))

(declare-fun b!1927604 () Bool)

(assert (=> b!1927604 (= e!1232194 (not (isEmpty!13508 (_1!11744 lt!738772))))))

(declare-fun b!1927605 () Bool)

(assert (=> b!1927605 (= e!1232196 (= (_2!11744 lt!738772) (seqFromList!2788 lt!738494)))))

(declare-fun b!1927606 () Bool)

(assert (=> b!1927606 (= e!1232195 (= (list!8871 (_2!11744 lt!738772)) (_2!11746 (lexList!951 thiss!23328 rules!3198 (list!8871 (seqFromList!2788 lt!738494))))))))

(declare-fun d!587410 () Bool)

(assert (=> d!587410 e!1232195))

(declare-fun res!861967 () Bool)

(assert (=> d!587410 (=> (not res!861967) (not e!1232195))))

(assert (=> d!587410 (= res!861967 e!1232196)))

(declare-fun c!313428 () Bool)

(assert (=> d!587410 (= c!313428 (> (size!17113 (_1!11744 lt!738772)) 0))))

(declare-fun lexTailRecV2!674 (LexerInterface!3547 List!22018 BalanceConc!14460 BalanceConc!14460 BalanceConc!14460 BalanceConc!14462) tuple2!20550)

(assert (=> d!587410 (= lt!738772 (lexTailRecV2!674 thiss!23328 rules!3198 (seqFromList!2788 lt!738494) (BalanceConc!14461 Empty!7322) (seqFromList!2788 lt!738494) (BalanceConc!14463 Empty!7323)))))

(assert (=> d!587410 (= (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494)) lt!738772)))

(assert (= (and d!587410 c!313428) b!1927603))

(assert (= (and d!587410 (not c!313428)) b!1927605))

(assert (= (and b!1927603 res!861966) b!1927604))

(assert (= (and d!587410 res!861967) b!1927602))

(assert (= (and b!1927602 res!861965) b!1927606))

(declare-fun m!2363987 () Bool)

(assert (=> b!1927602 m!2363987))

(assert (=> b!1927602 m!2362999))

(declare-fun m!2363989 () Bool)

(assert (=> b!1927602 m!2363989))

(assert (=> b!1927602 m!2363989))

(declare-fun m!2363991 () Bool)

(assert (=> b!1927602 m!2363991))

(declare-fun m!2363993 () Bool)

(assert (=> b!1927604 m!2363993))

(declare-fun m!2363995 () Bool)

(assert (=> b!1927606 m!2363995))

(assert (=> b!1927606 m!2362999))

(assert (=> b!1927606 m!2363989))

(assert (=> b!1927606 m!2363989))

(assert (=> b!1927606 m!2363991))

(declare-fun m!2363997 () Bool)

(assert (=> d!587410 m!2363997))

(assert (=> d!587410 m!2362999))

(assert (=> d!587410 m!2362999))

(declare-fun m!2363999 () Bool)

(assert (=> d!587410 m!2363999))

(declare-fun m!2364001 () Bool)

(assert (=> b!1927603 m!2364001))

(assert (=> b!1927603 m!2362999))

(declare-fun m!2364003 () Bool)

(assert (=> b!1927603 m!2364003))

(assert (=> b!1926825 d!587410))

(declare-fun d!587414 () Bool)

(assert (=> d!587414 (= (seqFromList!2788 lt!738494) (fromListB!1238 lt!738494))))

(declare-fun bs!414693 () Bool)

(assert (= bs!414693 d!587414))

(declare-fun m!2364005 () Bool)

(assert (=> bs!414693 m!2364005))

(assert (=> b!1926825 d!587414))

(declare-fun d!587416 () Bool)

(declare-fun c!313430 () Bool)

(assert (=> d!587416 (= c!313430 ((_ is IntegerValue!12210) (value!123710 separatorToken!354)))))

(declare-fun e!1232197 () Bool)

(assert (=> d!587416 (= (inv!21 (value!123710 separatorToken!354)) e!1232197)))

(declare-fun b!1927607 () Bool)

(assert (=> b!1927607 (= e!1232197 (inv!16 (value!123710 separatorToken!354)))))

(declare-fun b!1927608 () Bool)

(declare-fun e!1232199 () Bool)

(assert (=> b!1927608 (= e!1232199 (inv!15 (value!123710 separatorToken!354)))))

(declare-fun b!1927609 () Bool)

(declare-fun e!1232198 () Bool)

(assert (=> b!1927609 (= e!1232198 (inv!17 (value!123710 separatorToken!354)))))

(declare-fun b!1927610 () Bool)

(declare-fun res!861968 () Bool)

(assert (=> b!1927610 (=> res!861968 e!1232199)))

(assert (=> b!1927610 (= res!861968 (not ((_ is IntegerValue!12212) (value!123710 separatorToken!354))))))

(assert (=> b!1927610 (= e!1232198 e!1232199)))

(declare-fun b!1927611 () Bool)

(assert (=> b!1927611 (= e!1232197 e!1232198)))

(declare-fun c!313429 () Bool)

(assert (=> b!1927611 (= c!313429 ((_ is IntegerValue!12211) (value!123710 separatorToken!354)))))

(assert (= (and d!587416 c!313430) b!1927607))

(assert (= (and d!587416 (not c!313430)) b!1927611))

(assert (= (and b!1927611 c!313429) b!1927609))

(assert (= (and b!1927611 (not c!313429)) b!1927610))

(assert (= (and b!1927610 (not res!861968)) b!1927608))

(declare-fun m!2364007 () Bool)

(assert (=> b!1927607 m!2364007))

(declare-fun m!2364009 () Bool)

(assert (=> b!1927608 m!2364009))

(declare-fun m!2364011 () Bool)

(assert (=> b!1927609 m!2364011))

(assert (=> b!1926804 d!587416))

(declare-fun d!587418 () Bool)

(declare-fun res!861973 () Bool)

(declare-fun e!1232204 () Bool)

(assert (=> d!587418 (=> res!861973 e!1232204)))

(assert (=> d!587418 (= res!861973 (not ((_ is Cons!21936) rules!3198)))))

(assert (=> d!587418 (= (sepAndNonSepRulesDisjointChars!1032 rules!3198 rules!3198) e!1232204)))

(declare-fun b!1927616 () Bool)

(declare-fun e!1232205 () Bool)

(assert (=> b!1927616 (= e!1232204 e!1232205)))

(declare-fun res!861974 () Bool)

(assert (=> b!1927616 (=> (not res!861974) (not e!1232205))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!449 (Rule!7668 List!22018) Bool)

(assert (=> b!1927616 (= res!861974 (ruleDisjointCharsFromAllFromOtherType!449 (h!27337 rules!3198) rules!3198))))

(declare-fun b!1927617 () Bool)

(assert (=> b!1927617 (= e!1232205 (sepAndNonSepRulesDisjointChars!1032 rules!3198 (t!179567 rules!3198)))))

(assert (= (and d!587418 (not res!861973)) b!1927616))

(assert (= (and b!1927616 res!861974) b!1927617))

(declare-fun m!2364013 () Bool)

(assert (=> b!1927616 m!2364013))

(declare-fun m!2364015 () Bool)

(assert (=> b!1927617 m!2364015))

(assert (=> b!1926815 d!587418))

(declare-fun b!1927628 () Bool)

(declare-fun b_free!55237 () Bool)

(declare-fun b_next!55941 () Bool)

(assert (=> b!1927628 (= b_free!55237 (not b_next!55941))))

(declare-fun t!179662 () Bool)

(declare-fun tb!118037 () Bool)

(assert (=> (and b!1927628 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179662) tb!118037))

(declare-fun result!142622 () Bool)

(assert (= result!142622 result!142566))

(assert (=> d!587236 t!179662))

(declare-fun t!179664 () Bool)

(declare-fun tb!118039 () Bool)

(assert (=> (and b!1927628 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179664) tb!118039))

(declare-fun result!142624 () Bool)

(assert (= result!142624 result!142574))

(assert (=> d!587236 t!179664))

(assert (=> d!587264 t!179662))

(declare-fun b_and!151191 () Bool)

(declare-fun tp!550530 () Bool)

(assert (=> b!1927628 (= tp!550530 (and (=> t!179662 result!142622) (=> t!179664 result!142624) b_and!151191))))

(declare-fun b_free!55239 () Bool)

(declare-fun b_next!55943 () Bool)

(assert (=> b!1927628 (= b_free!55239 (not b_next!55943))))

(declare-fun tb!118041 () Bool)

(declare-fun t!179666 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179666) tb!118041))

(declare-fun result!142626 () Bool)

(assert (= result!142626 result!142580))

(assert (=> d!587254 t!179666))

(declare-fun tb!118043 () Bool)

(declare-fun t!179668 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354)))) t!179668) tb!118043))

(declare-fun result!142628 () Bool)

(assert (= result!142628 result!142524))

(assert (=> b!1926855 t!179668))

(declare-fun tb!118045 () Bool)

(declare-fun t!179670 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179670) tb!118045))

(declare-fun result!142630 () Bool)

(assert (= result!142630 result!142586))

(assert (=> d!587264 t!179670))

(assert (=> d!587260 t!179668))

(assert (=> b!1927581 t!179666))

(declare-fun b_and!151193 () Bool)

(declare-fun tp!550532 () Bool)

(assert (=> b!1927628 (= tp!550532 (and (=> t!179670 result!142630) (=> t!179666 result!142626) (=> t!179668 result!142628) b_and!151193))))

(declare-fun e!1232214 () Bool)

(assert (=> b!1927628 (= e!1232214 (and tp!550530 tp!550532))))

(declare-fun b!1927627 () Bool)

(declare-fun e!1232216 () Bool)

(declare-fun tp!550529 () Bool)

(assert (=> b!1927627 (= e!1232216 (and tp!550529 (inv!29012 (tag!4380 (h!27337 (t!179567 rules!3198)))) (inv!29015 (transformation!3934 (h!27337 (t!179567 rules!3198)))) e!1232214))))

(declare-fun b!1927626 () Bool)

(declare-fun e!1232217 () Bool)

(declare-fun tp!550531 () Bool)

(assert (=> b!1927626 (= e!1232217 (and e!1232216 tp!550531))))

(assert (=> b!1926808 (= tp!550445 e!1232217)))

(assert (= b!1927627 b!1927628))

(assert (= b!1927626 b!1927627))

(assert (= (and b!1926808 ((_ is Cons!21936) (t!179567 rules!3198))) b!1927626))

(declare-fun m!2364017 () Bool)

(assert (=> b!1927627 m!2364017))

(declare-fun m!2364019 () Bool)

(assert (=> b!1927627 m!2364019))

(declare-fun b!1927639 () Bool)

(declare-fun e!1232220 () Bool)

(declare-fun tp_is_empty!9137 () Bool)

(assert (=> b!1927639 (= e!1232220 tp_is_empty!9137)))

(assert (=> b!1926817 (= tp!550448 e!1232220)))

(declare-fun b!1927640 () Bool)

(declare-fun tp!550544 () Bool)

(declare-fun tp!550546 () Bool)

(assert (=> b!1927640 (= e!1232220 (and tp!550544 tp!550546))))

(declare-fun b!1927641 () Bool)

(declare-fun tp!550543 () Bool)

(assert (=> b!1927641 (= e!1232220 tp!550543)))

(declare-fun b!1927642 () Bool)

(declare-fun tp!550545 () Bool)

(declare-fun tp!550547 () Bool)

(assert (=> b!1927642 (= e!1232220 (and tp!550545 tp!550547))))

(assert (= (and b!1926817 ((_ is ElementMatch!5359) (regex!3934 (rule!6139 (h!27338 tokens!598))))) b!1927639))

(assert (= (and b!1926817 ((_ is Concat!9430) (regex!3934 (rule!6139 (h!27338 tokens!598))))) b!1927640))

(assert (= (and b!1926817 ((_ is Star!5359) (regex!3934 (rule!6139 (h!27338 tokens!598))))) b!1927641))

(assert (= (and b!1926817 ((_ is Union!5359) (regex!3934 (rule!6139 (h!27338 tokens!598))))) b!1927642))

(declare-fun b!1927647 () Bool)

(declare-fun e!1232223 () Bool)

(declare-fun tp!550550 () Bool)

(assert (=> b!1927647 (= e!1232223 (and tp_is_empty!9137 tp!550550))))

(assert (=> b!1926811 (= tp!550447 e!1232223)))

(assert (= (and b!1926811 ((_ is Cons!21935) (originalCharacters!4741 (h!27338 tokens!598)))) b!1927647))

(declare-fun b!1927661 () Bool)

(declare-fun b_free!55241 () Bool)

(declare-fun b_next!55945 () Bool)

(assert (=> b!1927661 (= b_free!55241 (not b_next!55945))))

(declare-fun t!179672 () Bool)

(declare-fun tb!118047 () Bool)

(assert (=> (and b!1927661 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179672) tb!118047))

(declare-fun result!142638 () Bool)

(assert (= result!142638 result!142566))

(assert (=> d!587236 t!179672))

(declare-fun t!179674 () Bool)

(declare-fun tb!118049 () Bool)

(assert (=> (and b!1927661 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179674) tb!118049))

(declare-fun result!142640 () Bool)

(assert (= result!142640 result!142574))

(assert (=> d!587236 t!179674))

(assert (=> d!587264 t!179672))

(declare-fun b_and!151195 () Bool)

(declare-fun tp!550565 () Bool)

(assert (=> b!1927661 (= tp!550565 (and (=> t!179672 result!142638) (=> t!179674 result!142640) b_and!151195))))

(declare-fun b_free!55243 () Bool)

(declare-fun b_next!55947 () Bool)

(assert (=> b!1927661 (= b_free!55243 (not b_next!55947))))

(declare-fun t!179676 () Bool)

(declare-fun tb!118051 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179676) tb!118051))

(declare-fun result!142642 () Bool)

(assert (= result!142642 result!142580))

(assert (=> d!587254 t!179676))

(declare-fun tb!118053 () Bool)

(declare-fun t!179678 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354)))) t!179678) tb!118053))

(declare-fun result!142644 () Bool)

(assert (= result!142644 result!142524))

(assert (=> b!1926855 t!179678))

(declare-fun t!179680 () Bool)

(declare-fun tb!118055 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179680) tb!118055))

(declare-fun result!142646 () Bool)

(assert (= result!142646 result!142586))

(assert (=> d!587264 t!179680))

(assert (=> d!587260 t!179678))

(assert (=> b!1927581 t!179676))

(declare-fun tp!550562 () Bool)

(declare-fun b_and!151197 () Bool)

(assert (=> b!1927661 (= tp!550562 (and (=> t!179678 result!142644) (=> t!179680 result!142646) (=> t!179676 result!142642) b_and!151197))))

(declare-fun b!1927659 () Bool)

(declare-fun e!1232237 () Bool)

(declare-fun e!1232241 () Bool)

(declare-fun tp!550564 () Bool)

(assert (=> b!1927659 (= e!1232241 (and (inv!21 (value!123710 (h!27338 (t!179568 tokens!598)))) e!1232237 tp!550564))))

(declare-fun e!1232240 () Bool)

(assert (=> b!1927661 (= e!1232240 (and tp!550565 tp!550562))))

(declare-fun e!1232236 () Bool)

(assert (=> b!1926812 (= tp!550443 e!1232236)))

(declare-fun tp!550561 () Bool)

(declare-fun b!1927660 () Bool)

(assert (=> b!1927660 (= e!1232237 (and tp!550561 (inv!29012 (tag!4380 (rule!6139 (h!27338 (t!179568 tokens!598))))) (inv!29015 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) e!1232240))))

(declare-fun tp!550563 () Bool)

(declare-fun b!1927658 () Bool)

(assert (=> b!1927658 (= e!1232236 (and (inv!29016 (h!27338 (t!179568 tokens!598))) e!1232241 tp!550563))))

(assert (= b!1927660 b!1927661))

(assert (= b!1927659 b!1927660))

(assert (= b!1927658 b!1927659))

(assert (= (and b!1926812 ((_ is Cons!21937) (t!179568 tokens!598))) b!1927658))

(declare-fun m!2364021 () Bool)

(assert (=> b!1927659 m!2364021))

(declare-fun m!2364023 () Bool)

(assert (=> b!1927660 m!2364023))

(declare-fun m!2364025 () Bool)

(assert (=> b!1927660 m!2364025))

(declare-fun m!2364027 () Bool)

(assert (=> b!1927658 m!2364027))

(declare-fun b!1927662 () Bool)

(declare-fun e!1232242 () Bool)

(assert (=> b!1927662 (= e!1232242 tp_is_empty!9137)))

(assert (=> b!1926823 (= tp!550442 e!1232242)))

(declare-fun b!1927663 () Bool)

(declare-fun tp!550567 () Bool)

(declare-fun tp!550569 () Bool)

(assert (=> b!1927663 (= e!1232242 (and tp!550567 tp!550569))))

(declare-fun b!1927664 () Bool)

(declare-fun tp!550566 () Bool)

(assert (=> b!1927664 (= e!1232242 tp!550566)))

(declare-fun b!1927665 () Bool)

(declare-fun tp!550568 () Bool)

(declare-fun tp!550570 () Bool)

(assert (=> b!1927665 (= e!1232242 (and tp!550568 tp!550570))))

(assert (= (and b!1926823 ((_ is ElementMatch!5359) (regex!3934 (h!27337 rules!3198)))) b!1927662))

(assert (= (and b!1926823 ((_ is Concat!9430) (regex!3934 (h!27337 rules!3198)))) b!1927663))

(assert (= (and b!1926823 ((_ is Star!5359) (regex!3934 (h!27337 rules!3198)))) b!1927664))

(assert (= (and b!1926823 ((_ is Union!5359) (regex!3934 (h!27337 rules!3198)))) b!1927665))

(declare-fun b!1927666 () Bool)

(declare-fun e!1232243 () Bool)

(assert (=> b!1927666 (= e!1232243 tp_is_empty!9137)))

(assert (=> b!1926814 (= tp!550449 e!1232243)))

(declare-fun b!1927667 () Bool)

(declare-fun tp!550572 () Bool)

(declare-fun tp!550574 () Bool)

(assert (=> b!1927667 (= e!1232243 (and tp!550572 tp!550574))))

(declare-fun b!1927668 () Bool)

(declare-fun tp!550571 () Bool)

(assert (=> b!1927668 (= e!1232243 tp!550571)))

(declare-fun b!1927669 () Bool)

(declare-fun tp!550573 () Bool)

(declare-fun tp!550575 () Bool)

(assert (=> b!1927669 (= e!1232243 (and tp!550573 tp!550575))))

(assert (= (and b!1926814 ((_ is ElementMatch!5359) (regex!3934 (rule!6139 separatorToken!354)))) b!1927666))

(assert (= (and b!1926814 ((_ is Concat!9430) (regex!3934 (rule!6139 separatorToken!354)))) b!1927667))

(assert (= (and b!1926814 ((_ is Star!5359) (regex!3934 (rule!6139 separatorToken!354)))) b!1927668))

(assert (= (and b!1926814 ((_ is Union!5359) (regex!3934 (rule!6139 separatorToken!354)))) b!1927669))

(declare-fun b!1927670 () Bool)

(declare-fun e!1232244 () Bool)

(declare-fun tp!550576 () Bool)

(assert (=> b!1927670 (= e!1232244 (and tp_is_empty!9137 tp!550576))))

(assert (=> b!1926804 (= tp!550452 e!1232244)))

(assert (= (and b!1926804 ((_ is Cons!21935) (originalCharacters!4741 separatorToken!354))) b!1927670))

(declare-fun b_lambda!63867 () Bool)

(assert (= b_lambda!63813 (or (and b!1926830 b_free!55223 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))))) (and b!1927661 b_free!55243 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))))) (and b!1927628 b_free!55239 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))))) (and b!1926820 b_free!55227) (and b!1926809 b_free!55219 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))))) b_lambda!63867)))

(declare-fun b_lambda!63869 () Bool)

(assert (= b_lambda!63827 (or (and b!1927661 b_free!55241 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926809 b_free!55217 (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926820 b_free!55225 (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1927628 b_free!55237 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926830 b_free!55221) b_lambda!63869)))

(declare-fun b_lambda!63871 () Bool)

(assert (= b_lambda!63841 (or b!1926813 b_lambda!63871)))

(declare-fun bs!414694 () Bool)

(declare-fun d!587420 () Bool)

(assert (= bs!414694 (and d!587420 b!1926813)))

(assert (=> bs!414694 (= (dynLambda!10631 lambda!75173 (h!27338 tokens!598)) (not (isSeparator!3934 (rule!6139 (h!27338 tokens!598)))))))

(assert (=> b!1927407 d!587420))

(declare-fun b_lambda!63873 () Bool)

(assert (= b_lambda!63835 (or (and b!1927661 b_free!55243 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1927628 b_free!55239 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926809 b_free!55219 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926830 b_free!55223) (and b!1926820 b_free!55227 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) b_lambda!63873)))

(declare-fun b_lambda!63875 () Bool)

(assert (= b_lambda!63829 (or (and b!1927661 b_free!55241 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926809 b_free!55217 (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926820 b_free!55225 (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1927628 b_free!55237 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926830 b_free!55221) b_lambda!63875)))

(declare-fun b_lambda!63877 () Bool)

(assert (= b_lambda!63831 (or (and b!1927661 b_free!55243 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1927628 b_free!55239 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926809 b_free!55219 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926830 b_free!55223) (and b!1926820 b_free!55227 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) b_lambda!63877)))

(declare-fun b_lambda!63879 () Bool)

(assert (= b_lambda!63837 (or (and b!1927661 b_free!55241 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926809 b_free!55217 (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926820 b_free!55225 (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1927628 b_free!55237 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926830 b_free!55221) b_lambda!63879)))

(declare-fun b_lambda!63881 () Bool)

(assert (= b_lambda!63847 (or (and b!1927661 b_free!55243 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1927628 b_free!55239 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926809 b_free!55219 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (and b!1926830 b_free!55223) (and b!1926820 b_free!55227 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) b_lambda!63881)))

(declare-fun b_lambda!63883 () Bool)

(assert (= b_lambda!63833 (or (and b!1926830 b_free!55223 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))))) (and b!1927661 b_free!55243 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))))) (and b!1927628 b_free!55239 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))))) (and b!1926820 b_free!55227) (and b!1926809 b_free!55219 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))))) b_lambda!63883)))

(check-sat (not d!587258) (not b!1927583) (not b!1927390) (not b!1927164) (not bm!118489) (not b!1927159) (not b!1927562) (not b_next!55927) (not b_next!55941) (not d!587396) (not b!1927581) b_and!151163 (not b!1927183) (not b!1927201) (not b!1927602) (not b!1927402) (not b!1926921) (not bm!118486) (not b!1927091) (not d!587250) (not b!1926936) b_and!151193 (not bm!118527) (not tb!118011) (not b!1927580) (not d!587322) b_and!151185 (not b_next!55931) (not b!1927603) (not b_lambda!63877) (not b!1927171) (not b!1927663) (not b!1926935) (not b!1927266) (not tb!117999) (not b!1927062) (not b!1927373) (not tb!117957) (not b!1927408) (not b!1926856) (not bm!118493) (not d!587182) (not b!1927169) (not d!587252) (not b!1926861) b_and!151197 (not b!1926930) (not d!587274) (not b!1927053) (not d!587270) (not b!1927564) (not b!1927088) (not b!1927586) (not b!1926855) (not d!587232) (not b!1927248) (not b!1926924) (not b!1927089) (not b!1927587) (not d!587248) (not b!1927168) (not d!587286) (not d!587190) (not d!587406) (not b!1926919) (not b!1927392) (not b!1927668) (not b!1927608) (not b!1927563) (not b!1927261) (not b!1927640) (not b!1927095) b_and!151191 (not b!1927669) b_and!151189 (not b!1927085) (not b!1927626) (not b!1927176) (not b!1927665) (not b!1927647) (not b!1927569) (not d!587264) (not b_lambda!63869) (not b!1927607) (not b!1927384) (not d!587354) (not b_lambda!63881) (not b!1927170) (not b!1927574) (not d!587400) (not b!1927664) (not b!1927371) (not b_lambda!63883) (not b!1927604) (not b!1927393) (not b_next!55945) (not b!1927130) (not d!587260) (not d!587402) (not b!1927396) (not d!587392) (not b!1927093) (not b!1927288) (not b!1927240) (not b!1927047) (not b!1927160) (not d!587308) (not b!1927263) (not b!1927162) (not b!1927670) (not d!587302) (not bm!118504) (not d!587272) b_and!151159 (not b!1927627) (not b_lambda!63873) (not d!587262) (not bm!118506) (not d!587284) (not b_next!55943) (not d!587254) (not b!1927571) (not bm!118533) (not b!1926920) (not b!1927370) (not bm!118459) (not b!1927369) b_and!151195 (not b!1927247) (not b!1926918) (not b!1927199) (not b!1927129) (not b!1927052) (not b!1927658) (not b!1927172) (not b!1927368) (not b!1927660) (not b_next!55923) (not b_lambda!63871) (not b!1927197) (not d!587314) (not b!1927202) (not b!1927642) (not b!1927386) (not tb!118005) b_and!151161 (not b!1927177) (not b!1927125) (not bm!118516) (not d!587184) (not d!587410) (not b_next!55925) (not b!1927667) (not d!587414) (not d!587356) (not d!587350) (not b!1927186) (not b!1927606) (not b_next!55921) (not bm!118505) (not b!1927641) (not bm!118517) (not d!587408) (not b_next!55947) (not d!587192) (not d!587230) (not bm!118518) (not b!1927616) (not b!1927582) (not b!1927188) (not b_lambda!63879) (not b!1927167) (not b!1927568) (not tb!117993) (not d!587228) (not b_next!55929) (not d!587236) b_and!151187 (not b!1927086) (not b!1927372) (not b!1927265) (not bm!118494) (not b!1927092) tp_is_empty!9137 (not bm!118488) (not d!587278) (not d!587300) (not b!1927189) (not b!1927385) (not d!587266) (not d!587276) (not d!587256) (not b!1927617) (not d!587226) (not b_lambda!63875) (not b!1927609) (not b!1927166) (not b!1927094) (not d!587362) (not b!1927659) (not b!1927051) (not b!1927570) (not d!587282) (not b!1927391) (not b_lambda!63867) (not d!587312) (not b!1927090) (not b!1927163))
(check-sat b_and!151193 b_and!151197 (not b_next!55945) b_and!151159 (not b_next!55923) b_and!151161 (not b_next!55925) (not b_next!55921) (not b_next!55947) (not b_next!55927) (not b_next!55941) b_and!151163 b_and!151185 (not b_next!55931) b_and!151191 b_and!151189 (not b_next!55943) b_and!151195 (not b_next!55929) b_and!151187)
(get-model)

(assert (=> b!1927562 d!587350))

(assert (=> b!1927396 d!587298))

(declare-fun d!587478 () Bool)

(assert (=> d!587478 (= (list!8871 (ite c!313315 call!118495 call!118493)) (list!8873 (c!313264 (ite c!313315 call!118495 call!118493))))))

(declare-fun bs!414702 () Bool)

(assert (= bs!414702 d!587478))

(declare-fun m!2364149 () Bool)

(assert (=> bs!414702 m!2364149))

(assert (=> bm!118489 d!587478))

(declare-fun d!587480 () Bool)

(declare-fun lt!738800 () Int)

(assert (=> d!587480 (>= lt!738800 0)))

(declare-fun e!1232303 () Int)

(assert (=> d!587480 (= lt!738800 e!1232303)))

(declare-fun c!313452 () Bool)

(assert (=> d!587480 (= c!313452 ((_ is Nil!21935) (_2!11743 (get!6908 lt!738610))))))

(assert (=> d!587480 (= (size!17110 (_2!11743 (get!6908 lt!738610))) lt!738800)))

(declare-fun b!1927753 () Bool)

(assert (=> b!1927753 (= e!1232303 0)))

(declare-fun b!1927754 () Bool)

(assert (=> b!1927754 (= e!1232303 (+ 1 (size!17110 (t!179566 (_2!11743 (get!6908 lt!738610))))))))

(assert (= (and d!587480 c!313452) b!1927753))

(assert (= (and d!587480 (not c!313452)) b!1927754))

(declare-fun m!2364151 () Bool)

(assert (=> b!1927754 m!2364151))

(assert (=> b!1927089 d!587480))

(declare-fun d!587482 () Bool)

(assert (=> d!587482 (= (get!6908 lt!738610) (v!26635 lt!738610))))

(assert (=> b!1927089 d!587482))

(declare-fun d!587484 () Bool)

(declare-fun lt!738801 () Int)

(assert (=> d!587484 (>= lt!738801 0)))

(declare-fun e!1232304 () Int)

(assert (=> d!587484 (= lt!738801 e!1232304)))

(declare-fun c!313453 () Bool)

(assert (=> d!587484 (= c!313453 ((_ is Nil!21935) (++!5881 lt!738494 lt!738491)))))

(assert (=> d!587484 (= (size!17110 (++!5881 lt!738494 lt!738491)) lt!738801)))

(declare-fun b!1927755 () Bool)

(assert (=> b!1927755 (= e!1232304 0)))

(declare-fun b!1927756 () Bool)

(assert (=> b!1927756 (= e!1232304 (+ 1 (size!17110 (t!179566 (++!5881 lt!738494 lt!738491)))))))

(assert (= (and d!587484 c!313453) b!1927755))

(assert (= (and d!587484 (not c!313453)) b!1927756))

(declare-fun m!2364153 () Bool)

(assert (=> b!1927756 m!2364153))

(assert (=> b!1927089 d!587484))

(declare-fun d!587486 () Bool)

(assert (=> d!587486 (= (list!8871 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))) (list!8873 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))))))

(declare-fun bs!414703 () Bool)

(assert (= bs!414703 d!587486))

(declare-fun m!2364155 () Bool)

(assert (=> bs!414703 m!2364155))

(assert (=> b!1927581 d!587486))

(declare-fun bs!414704 () Bool)

(declare-fun d!587488 () Bool)

(assert (= bs!414704 (and d!587488 d!587236)))

(declare-fun lambda!75203 () Int)

(assert (=> bs!414704 (= lambda!75203 lambda!75191)))

(assert (=> d!587488 true))

(assert (=> d!587488 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (dynLambda!10628 order!13773 lambda!75203))))

(declare-fun Forall2!625 (Int) Bool)

(assert (=> d!587488 (= (equivClasses!1492 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (Forall2!625 lambda!75203))))

(declare-fun bs!414705 () Bool)

(assert (= bs!414705 d!587488))

(declare-fun m!2364157 () Bool)

(assert (=> bs!414705 m!2364157))

(assert (=> b!1927186 d!587488))

(declare-fun d!587490 () Bool)

(assert (=> d!587490 (= (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))) (v!26636 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))))))

(assert (=> b!1927095 d!587490))

(assert (=> b!1927095 d!587262))

(declare-fun d!587492 () Bool)

(declare-fun e!1232312 () Bool)

(assert (=> d!587492 e!1232312))

(declare-fun res!862020 () Bool)

(assert (=> d!587492 (=> (not res!862020) (not e!1232312))))

(declare-fun lt!738836 () List!22017)

(assert (=> d!587492 (= res!862020 (= (content!3171 lt!738836) ((_ map or) (content!3171 call!118491) (content!3171 lt!738595))))))

(declare-fun e!1232311 () List!22017)

(assert (=> d!587492 (= lt!738836 e!1232311)))

(declare-fun c!313456 () Bool)

(assert (=> d!587492 (= c!313456 ((_ is Nil!21935) call!118491))))

(assert (=> d!587492 (= (++!5881 call!118491 lt!738595) lt!738836)))

(declare-fun b!1927772 () Bool)

(assert (=> b!1927772 (= e!1232312 (or (not (= lt!738595 Nil!21935)) (= lt!738836 call!118491)))))

(declare-fun b!1927771 () Bool)

(declare-fun res!862021 () Bool)

(assert (=> b!1927771 (=> (not res!862021) (not e!1232312))))

(assert (=> b!1927771 (= res!862021 (= (size!17110 lt!738836) (+ (size!17110 call!118491) (size!17110 lt!738595))))))

(declare-fun b!1927770 () Bool)

(assert (=> b!1927770 (= e!1232311 (Cons!21935 (h!27336 call!118491) (++!5881 (t!179566 call!118491) lt!738595)))))

(declare-fun b!1927769 () Bool)

(assert (=> b!1927769 (= e!1232311 lt!738595)))

(assert (= (and d!587492 c!313456) b!1927769))

(assert (= (and d!587492 (not c!313456)) b!1927770))

(assert (= (and d!587492 res!862020) b!1927771))

(assert (= (and b!1927771 res!862021) b!1927772))

(declare-fun m!2364159 () Bool)

(assert (=> d!587492 m!2364159))

(declare-fun m!2364161 () Bool)

(assert (=> d!587492 m!2364161))

(declare-fun m!2364163 () Bool)

(assert (=> d!587492 m!2364163))

(declare-fun m!2364165 () Bool)

(assert (=> b!1927771 m!2364165))

(declare-fun m!2364167 () Bool)

(assert (=> b!1927771 m!2364167))

(declare-fun m!2364169 () Bool)

(assert (=> b!1927771 m!2364169))

(declare-fun m!2364171 () Bool)

(assert (=> b!1927770 m!2364171))

(assert (=> b!1927053 d!587492))

(declare-fun d!587494 () Bool)

(assert (=> d!587494 (= (list!8871 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))) (list!8873 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))))

(declare-fun bs!414706 () Bool)

(assert (= bs!414706 d!587494))

(declare-fun m!2364173 () Bool)

(assert (=> bs!414706 m!2364173))

(assert (=> d!587264 d!587494))

(assert (=> d!587264 d!587248))

(declare-fun d!587496 () Bool)

(declare-fun dynLambda!10633 (Int BalanceConc!14460) Bool)

(assert (=> d!587496 (dynLambda!10633 lambda!75194 lt!738497)))

(declare-fun lt!738839 () Unit!36278)

(declare-fun choose!11973 (Int BalanceConc!14460) Unit!36278)

(assert (=> d!587496 (= lt!738839 (choose!11973 lambda!75194 lt!738497))))

(declare-fun Forall!1000 (Int) Bool)

(assert (=> d!587496 (Forall!1000 lambda!75194)))

(assert (=> d!587496 (= (ForallOf!405 lambda!75194 lt!738497) lt!738839)))

(declare-fun b_lambda!63889 () Bool)

(assert (=> (not b_lambda!63889) (not d!587496)))

(declare-fun bs!414707 () Bool)

(assert (= bs!414707 d!587496))

(declare-fun m!2364175 () Bool)

(assert (=> bs!414707 m!2364175))

(declare-fun m!2364177 () Bool)

(assert (=> bs!414707 m!2364177))

(declare-fun m!2364179 () Bool)

(assert (=> bs!414707 m!2364179))

(assert (=> d!587264 d!587496))

(declare-fun d!587498 () Bool)

(assert (=> d!587498 (= (isDefined!3838 lt!738610) (not (isEmpty!13513 lt!738610)))))

(declare-fun bs!414708 () Bool)

(assert (= bs!414708 d!587498))

(assert (=> bs!414708 m!2363349))

(assert (=> b!1927093 d!587498))

(declare-fun d!587500 () Bool)

(declare-fun c!313460 () Bool)

(assert (=> d!587500 (= c!313460 ((_ is Nil!21935) lt!738634))))

(declare-fun e!1232317 () (InoxSet C!10864))

(assert (=> d!587500 (= (content!3171 lt!738634) e!1232317)))

(declare-fun b!1927781 () Bool)

(assert (=> b!1927781 (= e!1232317 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1927782 () Bool)

(assert (=> b!1927782 (= e!1232317 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 lt!738634) true) (content!3171 (t!179566 lt!738634))))))

(assert (= (and d!587500 c!313460) b!1927781))

(assert (= (and d!587500 (not c!313460)) b!1927782))

(declare-fun m!2364197 () Bool)

(assert (=> b!1927782 m!2364197))

(declare-fun m!2364201 () Bool)

(assert (=> b!1927782 m!2364201))

(assert (=> d!587250 d!587500))

(declare-fun d!587502 () Bool)

(declare-fun c!313461 () Bool)

(assert (=> d!587502 (= c!313461 ((_ is Nil!21935) lt!738494))))

(declare-fun e!1232318 () (InoxSet C!10864))

(assert (=> d!587502 (= (content!3171 lt!738494) e!1232318)))

(declare-fun b!1927783 () Bool)

(assert (=> b!1927783 (= e!1232318 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1927784 () Bool)

(assert (=> b!1927784 (= e!1232318 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 lt!738494) true) (content!3171 (t!179566 lt!738494))))))

(assert (= (and d!587502 c!313461) b!1927783))

(assert (= (and d!587502 (not c!313461)) b!1927784))

(declare-fun m!2364209 () Bool)

(assert (=> b!1927784 m!2364209))

(declare-fun m!2364211 () Bool)

(assert (=> b!1927784 m!2364211))

(assert (=> d!587250 d!587502))

(declare-fun d!587504 () Bool)

(declare-fun c!313462 () Bool)

(assert (=> d!587504 (= c!313462 ((_ is Nil!21935) lt!738491))))

(declare-fun e!1232319 () (InoxSet C!10864))

(assert (=> d!587504 (= (content!3171 lt!738491) e!1232319)))

(declare-fun b!1927785 () Bool)

(assert (=> b!1927785 (= e!1232319 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1927786 () Bool)

(assert (=> b!1927786 (= e!1232319 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 lt!738491) true) (content!3171 (t!179566 lt!738491))))))

(assert (= (and d!587504 c!313462) b!1927785))

(assert (= (and d!587504 (not c!313462)) b!1927786))

(declare-fun m!2364221 () Bool)

(assert (=> b!1927786 m!2364221))

(declare-fun m!2364223 () Bool)

(assert (=> b!1927786 m!2364223))

(assert (=> d!587250 d!587504))

(declare-fun d!587506 () Bool)

(declare-fun e!1232320 () Bool)

(assert (=> d!587506 e!1232320))

(declare-fun res!862024 () Bool)

(assert (=> d!587506 (=> (not res!862024) (not e!1232320))))

(declare-fun lt!738857 () BalanceConc!14462)

(assert (=> d!587506 (= res!862024 (= (list!8875 lt!738857) (Cons!21937 separatorToken!354 Nil!21937)))))

(assert (=> d!587506 (= lt!738857 (singleton!848 separatorToken!354))))

(assert (=> d!587506 (= (singletonSeq!1918 separatorToken!354) lt!738857)))

(declare-fun b!1927787 () Bool)

(assert (=> b!1927787 (= e!1232320 (isBalanced!2259 (c!313266 lt!738857)))))

(assert (= (and d!587506 res!862024) b!1927787))

(declare-fun m!2364233 () Bool)

(assert (=> d!587506 m!2364233))

(declare-fun m!2364237 () Bool)

(assert (=> d!587506 m!2364237))

(declare-fun m!2364239 () Bool)

(assert (=> b!1927787 m!2364239))

(assert (=> d!587322 d!587506))

(declare-fun d!587508 () Bool)

(declare-fun lt!738861 () Int)

(declare-fun size!17115 (List!22019) Int)

(assert (=> d!587508 (= lt!738861 (size!17115 (list!8875 (_1!11744 lt!738740))))))

(declare-fun size!17116 (Conc!7323) Int)

(assert (=> d!587508 (= lt!738861 (size!17116 (c!313266 (_1!11744 lt!738740))))))

(assert (=> d!587508 (= (size!17113 (_1!11744 lt!738740)) lt!738861)))

(declare-fun bs!414710 () Bool)

(assert (= bs!414710 d!587508))

(declare-fun m!2364259 () Bool)

(assert (=> bs!414710 m!2364259))

(assert (=> bs!414710 m!2364259))

(declare-fun m!2364261 () Bool)

(assert (=> bs!414710 m!2364261))

(declare-fun m!2364263 () Bool)

(assert (=> bs!414710 m!2364263))

(assert (=> d!587322 d!587508))

(declare-fun d!587514 () Bool)

(declare-fun lt!738862 () BalanceConc!14460)

(assert (=> d!587514 (= (list!8871 lt!738862) (printList!1082 thiss!23328 (list!8875 (singletonSeq!1918 separatorToken!354))))))

(assert (=> d!587514 (= lt!738862 (printTailRec!1023 thiss!23328 (singletonSeq!1918 separatorToken!354) 0 (BalanceConc!14461 Empty!7322)))))

(assert (=> d!587514 (= (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)) lt!738862)))

(declare-fun bs!414711 () Bool)

(assert (= bs!414711 d!587514))

(declare-fun m!2364269 () Bool)

(assert (=> bs!414711 m!2364269))

(assert (=> bs!414711 m!2363783))

(assert (=> bs!414711 m!2363793))

(assert (=> bs!414711 m!2363793))

(declare-fun m!2364271 () Bool)

(assert (=> bs!414711 m!2364271))

(assert (=> bs!414711 m!2363783))

(declare-fun m!2364273 () Bool)

(assert (=> bs!414711 m!2364273))

(assert (=> d!587322 d!587514))

(declare-fun d!587518 () Bool)

(declare-fun list!8877 (Conc!7323) List!22019)

(assert (=> d!587518 (= (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354))))) (list!8877 (c!313266 (_1!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)))))))))

(declare-fun bs!414712 () Bool)

(assert (= bs!414712 d!587518))

(declare-fun m!2364275 () Bool)

(assert (=> bs!414712 m!2364275))

(assert (=> d!587322 d!587518))

(declare-fun d!587520 () Bool)

(assert (=> d!587520 (= (list!8875 (singletonSeq!1918 separatorToken!354)) (list!8877 (c!313266 (singletonSeq!1918 separatorToken!354))))))

(declare-fun bs!414713 () Bool)

(assert (= bs!414713 d!587520))

(declare-fun m!2364277 () Bool)

(assert (=> bs!414713 m!2364277))

(assert (=> d!587322 d!587520))

(declare-fun b!1927789 () Bool)

(declare-fun res!862025 () Bool)

(declare-fun e!1232323 () Bool)

(assert (=> b!1927789 (=> (not res!862025) (not e!1232323))))

(declare-fun lt!738863 () tuple2!20550)

(assert (=> b!1927789 (= res!862025 (= (list!8875 (_1!11744 lt!738863)) (_1!11746 (lexList!951 thiss!23328 rules!3198 (list!8871 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)))))))))

(declare-fun b!1927790 () Bool)

(declare-fun e!1232324 () Bool)

(declare-fun e!1232322 () Bool)

(assert (=> b!1927790 (= e!1232324 e!1232322)))

(declare-fun res!862026 () Bool)

(assert (=> b!1927790 (= res!862026 (< (size!17114 (_2!11744 lt!738863)) (size!17114 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)))))))

(assert (=> b!1927790 (=> (not res!862026) (not e!1232322))))

(declare-fun b!1927791 () Bool)

(assert (=> b!1927791 (= e!1232322 (not (isEmpty!13508 (_1!11744 lt!738863))))))

(declare-fun b!1927792 () Bool)

(assert (=> b!1927792 (= e!1232324 (= (_2!11744 lt!738863) (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354))))))

(declare-fun b!1927793 () Bool)

(assert (=> b!1927793 (= e!1232323 (= (list!8871 (_2!11744 lt!738863)) (_2!11746 (lexList!951 thiss!23328 rules!3198 (list!8871 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)))))))))

(declare-fun d!587522 () Bool)

(assert (=> d!587522 e!1232323))

(declare-fun res!862027 () Bool)

(assert (=> d!587522 (=> (not res!862027) (not e!1232323))))

(assert (=> d!587522 (= res!862027 e!1232324)))

(declare-fun c!313463 () Bool)

(assert (=> d!587522 (= c!313463 (> (size!17113 (_1!11744 lt!738863)) 0))))

(assert (=> d!587522 (= lt!738863 (lexTailRecV2!674 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)) (BalanceConc!14461 Empty!7322) (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)) (BalanceConc!14463 Empty!7323)))))

(assert (=> d!587522 (= (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354))) lt!738863)))

(assert (= (and d!587522 c!313463) b!1927790))

(assert (= (and d!587522 (not c!313463)) b!1927792))

(assert (= (and b!1927790 res!862026) b!1927791))

(assert (= (and d!587522 res!862027) b!1927789))

(assert (= (and b!1927789 res!862025) b!1927793))

(declare-fun m!2364279 () Bool)

(assert (=> b!1927789 m!2364279))

(assert (=> b!1927789 m!2363785))

(declare-fun m!2364281 () Bool)

(assert (=> b!1927789 m!2364281))

(assert (=> b!1927789 m!2364281))

(declare-fun m!2364283 () Bool)

(assert (=> b!1927789 m!2364283))

(declare-fun m!2364285 () Bool)

(assert (=> b!1927791 m!2364285))

(declare-fun m!2364287 () Bool)

(assert (=> b!1927793 m!2364287))

(assert (=> b!1927793 m!2363785))

(assert (=> b!1927793 m!2364281))

(assert (=> b!1927793 m!2364281))

(assert (=> b!1927793 m!2364283))

(declare-fun m!2364289 () Bool)

(assert (=> d!587522 m!2364289))

(assert (=> d!587522 m!2363785))

(assert (=> d!587522 m!2363785))

(declare-fun m!2364291 () Bool)

(assert (=> d!587522 m!2364291))

(declare-fun m!2364293 () Bool)

(assert (=> b!1927790 m!2364293))

(assert (=> b!1927790 m!2363785))

(declare-fun m!2364295 () Bool)

(assert (=> b!1927790 m!2364295))

(assert (=> d!587322 d!587522))

(assert (=> d!587322 d!587360))

(declare-fun d!587524 () Bool)

(declare-fun lt!738864 () Bool)

(assert (=> d!587524 (= lt!738864 (isEmpty!13519 (list!8875 (_1!11744 lt!738772))))))

(assert (=> d!587524 (= lt!738864 (isEmpty!13520 (c!313266 (_1!11744 lt!738772))))))

(assert (=> d!587524 (= (isEmpty!13508 (_1!11744 lt!738772)) lt!738864)))

(declare-fun bs!414714 () Bool)

(assert (= bs!414714 d!587524))

(assert (=> bs!414714 m!2363987))

(assert (=> bs!414714 m!2363987))

(declare-fun m!2364297 () Bool)

(assert (=> bs!414714 m!2364297))

(declare-fun m!2364299 () Bool)

(assert (=> bs!414714 m!2364299))

(assert (=> b!1927604 d!587524))

(declare-fun d!587526 () Bool)

(declare-fun charsToBigInt!0 (List!22016 Int) Int)

(assert (=> d!587526 (= (inv!15 (value!123710 (h!27338 tokens!598))) (= (charsToBigInt!0 (text!28939 (value!123710 (h!27338 tokens!598))) 0) (value!123705 (value!123710 (h!27338 tokens!598)))))))

(declare-fun bs!414718 () Bool)

(assert (= bs!414718 d!587526))

(declare-fun m!2364313 () Bool)

(assert (=> bs!414718 m!2364313))

(assert (=> b!1927385 d!587526))

(declare-fun d!587534 () Bool)

(declare-fun lt!738865 () Int)

(assert (=> d!587534 (= lt!738865 (size!17115 (list!8875 lt!738485)))))

(assert (=> d!587534 (= lt!738865 (size!17116 (c!313266 lt!738485)))))

(assert (=> d!587534 (= (size!17113 lt!738485) lt!738865)))

(declare-fun bs!414719 () Bool)

(assert (= bs!414719 d!587534))

(assert (=> bs!414719 m!2363553))

(assert (=> bs!414719 m!2363553))

(declare-fun m!2364315 () Bool)

(assert (=> bs!414719 m!2364315))

(declare-fun m!2364317 () Bool)

(assert (=> bs!414719 m!2364317))

(assert (=> b!1927197 d!587534))

(declare-fun d!587536 () Bool)

(declare-fun lt!738869 () Bool)

(declare-fun content!3173 (List!22018) (InoxSet Rule!7668))

(assert (=> d!587536 (= lt!738869 (select (content!3173 rules!3198) (rule!6139 (_1!11743 (get!6908 lt!738640)))))))

(declare-fun e!1232336 () Bool)

(assert (=> d!587536 (= lt!738869 e!1232336)))

(declare-fun res!862034 () Bool)

(assert (=> d!587536 (=> (not res!862034) (not e!1232336))))

(assert (=> d!587536 (= res!862034 ((_ is Cons!21936) rules!3198))))

(assert (=> d!587536 (= (contains!3967 rules!3198 (rule!6139 (_1!11743 (get!6908 lt!738640)))) lt!738869)))

(declare-fun b!1927809 () Bool)

(declare-fun e!1232335 () Bool)

(assert (=> b!1927809 (= e!1232336 e!1232335)))

(declare-fun res!862035 () Bool)

(assert (=> b!1927809 (=> res!862035 e!1232335)))

(assert (=> b!1927809 (= res!862035 (= (h!27337 rules!3198) (rule!6139 (_1!11743 (get!6908 lt!738640)))))))

(declare-fun b!1927810 () Bool)

(assert (=> b!1927810 (= e!1232335 (contains!3967 (t!179567 rules!3198) (rule!6139 (_1!11743 (get!6908 lt!738640)))))))

(assert (= (and d!587536 res!862034) b!1927809))

(assert (= (and b!1927809 (not res!862035)) b!1927810))

(declare-fun m!2364327 () Bool)

(assert (=> d!587536 m!2364327))

(declare-fun m!2364329 () Bool)

(assert (=> d!587536 m!2364329))

(declare-fun m!2364331 () Bool)

(assert (=> b!1927810 m!2364331))

(assert (=> b!1927164 d!587536))

(declare-fun d!587544 () Bool)

(assert (=> d!587544 (= (get!6908 lt!738640) (v!26635 lt!738640))))

(assert (=> b!1927164 d!587544))

(declare-fun b!1927964 () Bool)

(declare-fun e!1232431 () Bool)

(declare-fun lt!738913 () Option!4543)

(assert (=> b!1927964 (= e!1232431 (= (size!17108 (_1!11743 (get!6908 lt!738913))) (size!17110 (originalCharacters!4741 (_1!11743 (get!6908 lt!738913))))))))

(declare-fun b!1927965 () Bool)

(declare-fun e!1232430 () Option!4543)

(assert (=> b!1927965 (= e!1232430 None!4542)))

(declare-fun b!1927966 () Bool)

(declare-fun res!862105 () Bool)

(assert (=> b!1927966 (=> (not res!862105) (not e!1232431))))

(assert (=> b!1927966 (= res!862105 (= (value!123710 (_1!11743 (get!6908 lt!738913))) (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738913)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738913)))))))))

(declare-fun b!1927967 () Bool)

(declare-fun res!862101 () Bool)

(assert (=> b!1927967 (=> (not res!862101) (not e!1232431))))

(assert (=> b!1927967 (= res!862101 (< (size!17110 (_2!11743 (get!6908 lt!738913))) (size!17110 lt!738494)))))

(declare-fun d!587546 () Bool)

(declare-fun e!1232429 () Bool)

(assert (=> d!587546 e!1232429))

(declare-fun res!862106 () Bool)

(assert (=> d!587546 (=> res!862106 e!1232429)))

(assert (=> d!587546 (= res!862106 (isEmpty!13513 lt!738913))))

(assert (=> d!587546 (= lt!738913 e!1232430)))

(declare-fun c!313508 () Bool)

(declare-datatypes ((tuple2!20556 0))(
  ( (tuple2!20557 (_1!11747 List!22017) (_2!11747 List!22017)) )
))
(declare-fun lt!738916 () tuple2!20556)

(assert (=> d!587546 (= c!313508 (isEmpty!13510 (_1!11747 lt!738916)))))

(declare-fun findLongestMatch!461 (Regex!5359 List!22017) tuple2!20556)

(assert (=> d!587546 (= lt!738916 (findLongestMatch!461 (regex!3934 (h!27337 rules!3198)) lt!738494))))

(declare-fun ruleValid!1194 (LexerInterface!3547 Rule!7668) Bool)

(assert (=> d!587546 (ruleValid!1194 thiss!23328 (h!27337 rules!3198))))

(assert (=> d!587546 (= (maxPrefixOneRule!1223 thiss!23328 (h!27337 rules!3198) lt!738494) lt!738913)))

(declare-fun b!1927968 () Bool)

(declare-fun res!862100 () Bool)

(assert (=> b!1927968 (=> (not res!862100) (not e!1232431))))

(assert (=> b!1927968 (= res!862100 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738913)))) (_2!11743 (get!6908 lt!738913))) lt!738494))))

(declare-fun b!1927969 () Bool)

(declare-fun res!862104 () Bool)

(assert (=> b!1927969 (=> (not res!862104) (not e!1232431))))

(assert (=> b!1927969 (= res!862104 (= (rule!6139 (_1!11743 (get!6908 lt!738913))) (h!27337 rules!3198)))))

(declare-fun b!1927970 () Bool)

(assert (=> b!1927970 (= e!1232429 e!1232431)))

(declare-fun res!862102 () Bool)

(assert (=> b!1927970 (=> (not res!862102) (not e!1232431))))

(assert (=> b!1927970 (= res!862102 (matchR!2627 (regex!3934 (h!27337 rules!3198)) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738913))))))))

(declare-fun b!1927971 () Bool)

(declare-fun e!1232432 () Bool)

(declare-fun findLongestMatchInner!534 (Regex!5359 List!22017 Int List!22017 List!22017 Int) tuple2!20556)

(assert (=> b!1927971 (= e!1232432 (matchR!2627 (regex!3934 (h!27337 rules!3198)) (_1!11747 (findLongestMatchInner!534 (regex!3934 (h!27337 rules!3198)) Nil!21935 (size!17110 Nil!21935) lt!738494 lt!738494 (size!17110 lt!738494)))))))

(declare-fun b!1927972 () Bool)

(assert (=> b!1927972 (= e!1232430 (Some!4542 (tuple2!20549 (Token!7421 (apply!5693 (transformation!3934 (h!27337 rules!3198)) (seqFromList!2788 (_1!11747 lt!738916))) (h!27337 rules!3198) (size!17114 (seqFromList!2788 (_1!11747 lt!738916))) (_1!11747 lt!738916)) (_2!11747 lt!738916))))))

(declare-fun lt!738914 () Unit!36278)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!518 (Regex!5359 List!22017) Unit!36278)

(assert (=> b!1927972 (= lt!738914 (longestMatchIsAcceptedByMatchOrIsEmpty!518 (regex!3934 (h!27337 rules!3198)) lt!738494))))

(declare-fun res!862103 () Bool)

(assert (=> b!1927972 (= res!862103 (isEmpty!13510 (_1!11747 (findLongestMatchInner!534 (regex!3934 (h!27337 rules!3198)) Nil!21935 (size!17110 Nil!21935) lt!738494 lt!738494 (size!17110 lt!738494)))))))

(assert (=> b!1927972 (=> res!862103 e!1232432)))

(assert (=> b!1927972 e!1232432))

(declare-fun lt!738917 () Unit!36278)

(assert (=> b!1927972 (= lt!738917 lt!738914)))

(declare-fun lt!738915 () Unit!36278)

(assert (=> b!1927972 (= lt!738915 (lemmaSemiInverse!891 (transformation!3934 (h!27337 rules!3198)) (seqFromList!2788 (_1!11747 lt!738916))))))

(assert (= (and d!587546 c!313508) b!1927965))

(assert (= (and d!587546 (not c!313508)) b!1927972))

(assert (= (and b!1927972 (not res!862103)) b!1927971))

(assert (= (and d!587546 (not res!862106)) b!1927970))

(assert (= (and b!1927970 res!862102) b!1927968))

(assert (= (and b!1927968 res!862100) b!1927967))

(assert (= (and b!1927967 res!862101) b!1927969))

(assert (= (and b!1927969 res!862104) b!1927966))

(assert (= (and b!1927966 res!862105) b!1927964))

(declare-fun m!2364509 () Bool)

(assert (=> b!1927967 m!2364509))

(declare-fun m!2364511 () Bool)

(assert (=> b!1927967 m!2364511))

(assert (=> b!1927967 m!2363433))

(assert (=> b!1927966 m!2364509))

(declare-fun m!2364513 () Bool)

(assert (=> b!1927966 m!2364513))

(assert (=> b!1927966 m!2364513))

(declare-fun m!2364515 () Bool)

(assert (=> b!1927966 m!2364515))

(assert (=> b!1927968 m!2364509))

(declare-fun m!2364517 () Bool)

(assert (=> b!1927968 m!2364517))

(assert (=> b!1927968 m!2364517))

(declare-fun m!2364519 () Bool)

(assert (=> b!1927968 m!2364519))

(assert (=> b!1927968 m!2364519))

(declare-fun m!2364521 () Bool)

(assert (=> b!1927968 m!2364521))

(assert (=> b!1927964 m!2364509))

(declare-fun m!2364523 () Bool)

(assert (=> b!1927964 m!2364523))

(declare-fun m!2364525 () Bool)

(assert (=> b!1927972 m!2364525))

(declare-fun m!2364527 () Bool)

(assert (=> b!1927972 m!2364527))

(declare-fun m!2364529 () Bool)

(assert (=> b!1927972 m!2364529))

(assert (=> b!1927972 m!2363433))

(declare-fun m!2364531 () Bool)

(assert (=> b!1927972 m!2364531))

(assert (=> b!1927972 m!2364525))

(declare-fun m!2364533 () Bool)

(assert (=> b!1927972 m!2364533))

(declare-fun m!2364535 () Bool)

(assert (=> b!1927972 m!2364535))

(assert (=> b!1927972 m!2364525))

(assert (=> b!1927972 m!2364525))

(declare-fun m!2364537 () Bool)

(assert (=> b!1927972 m!2364537))

(assert (=> b!1927972 m!2364529))

(assert (=> b!1927972 m!2363433))

(declare-fun m!2364539 () Bool)

(assert (=> b!1927972 m!2364539))

(declare-fun m!2364541 () Bool)

(assert (=> d!587546 m!2364541))

(declare-fun m!2364543 () Bool)

(assert (=> d!587546 m!2364543))

(declare-fun m!2364545 () Bool)

(assert (=> d!587546 m!2364545))

(declare-fun m!2364547 () Bool)

(assert (=> d!587546 m!2364547))

(assert (=> b!1927969 m!2364509))

(assert (=> b!1927970 m!2364509))

(assert (=> b!1927970 m!2364517))

(assert (=> b!1927970 m!2364517))

(assert (=> b!1927970 m!2364519))

(assert (=> b!1927970 m!2364519))

(declare-fun m!2364549 () Bool)

(assert (=> b!1927970 m!2364549))

(assert (=> b!1927971 m!2364529))

(assert (=> b!1927971 m!2363433))

(assert (=> b!1927971 m!2364529))

(assert (=> b!1927971 m!2363433))

(assert (=> b!1927971 m!2364539))

(declare-fun m!2364551 () Bool)

(assert (=> b!1927971 m!2364551))

(assert (=> bm!118494 d!587546))

(declare-fun d!587616 () Bool)

(declare-fun lt!738923 () Token!7420)

(assert (=> d!587616 (= lt!738923 (apply!5695 (list!8875 (_1!11744 lt!738740)) 0))))

(declare-fun apply!5699 (Conc!7323 Int) Token!7420)

(assert (=> d!587616 (= lt!738923 (apply!5699 (c!313266 (_1!11744 lt!738740)) 0))))

(declare-fun e!1232438 () Bool)

(assert (=> d!587616 e!1232438))

(declare-fun res!862121 () Bool)

(assert (=> d!587616 (=> (not res!862121) (not e!1232438))))

(assert (=> d!587616 (= res!862121 (<= 0 0))))

(assert (=> d!587616 (= (apply!5694 (_1!11744 lt!738740) 0) lt!738923)))

(declare-fun b!1927987 () Bool)

(assert (=> b!1927987 (= e!1232438 (< 0 (size!17113 (_1!11744 lt!738740))))))

(assert (= (and d!587616 res!862121) b!1927987))

(assert (=> d!587616 m!2364259))

(assert (=> d!587616 m!2364259))

(declare-fun m!2364573 () Bool)

(assert (=> d!587616 m!2364573))

(declare-fun m!2364575 () Bool)

(assert (=> d!587616 m!2364575))

(assert (=> b!1927987 m!2363787))

(assert (=> b!1927368 d!587616))

(declare-fun d!587620 () Bool)

(declare-fun res!862122 () Bool)

(declare-fun e!1232439 () Bool)

(assert (=> d!587620 (=> res!862122 e!1232439)))

(assert (=> d!587620 (= res!862122 ((_ is Nil!21937) tokens!598))))

(assert (=> d!587620 (= (forall!4636 tokens!598 lambda!75197) e!1232439)))

(declare-fun b!1927988 () Bool)

(declare-fun e!1232440 () Bool)

(assert (=> b!1927988 (= e!1232439 e!1232440)))

(declare-fun res!862123 () Bool)

(assert (=> b!1927988 (=> (not res!862123) (not e!1232440))))

(assert (=> b!1927988 (= res!862123 (dynLambda!10631 lambda!75197 (h!27338 tokens!598)))))

(declare-fun b!1927989 () Bool)

(assert (=> b!1927989 (= e!1232440 (forall!4636 (t!179568 tokens!598) lambda!75197))))

(assert (= (and d!587620 (not res!862122)) b!1927988))

(assert (= (and b!1927988 res!862123) b!1927989))

(declare-fun b_lambda!63899 () Bool)

(assert (=> (not b_lambda!63899) (not b!1927988)))

(declare-fun m!2364577 () Bool)

(assert (=> b!1927988 m!2364577))

(declare-fun m!2364579 () Bool)

(assert (=> b!1927989 m!2364579))

(assert (=> d!587362 d!587620))

(assert (=> d!587362 d!587360))

(declare-fun bm!118560 () Bool)

(declare-fun call!118565 () Bool)

(assert (=> bm!118560 (= call!118565 (ruleDisjointCharsFromAllFromOtherType!449 (h!27337 rules!3198) (t!179567 rules!3198)))))

(declare-fun d!587622 () Bool)

(declare-fun c!313514 () Bool)

(assert (=> d!587622 (= c!313514 (and ((_ is Cons!21936) rules!3198) (not (= (isSeparator!3934 (h!27337 rules!3198)) (isSeparator!3934 (h!27337 rules!3198))))))))

(declare-fun e!1232454 () Bool)

(assert (=> d!587622 (= (ruleDisjointCharsFromAllFromOtherType!449 (h!27337 rules!3198) rules!3198) e!1232454)))

(declare-fun b!1928003 () Bool)

(declare-fun e!1232453 () Bool)

(assert (=> b!1928003 (= e!1232454 e!1232453)))

(declare-fun res!862134 () Bool)

(assert (=> b!1928003 (= res!862134 (not ((_ is Cons!21936) rules!3198)))))

(assert (=> b!1928003 (=> res!862134 e!1232453)))

(declare-fun b!1928004 () Bool)

(declare-fun e!1232452 () Bool)

(assert (=> b!1928004 (= e!1232452 call!118565)))

(declare-fun b!1928005 () Bool)

(assert (=> b!1928005 (= e!1232454 e!1232452)))

(declare-fun res!862133 () Bool)

(declare-fun rulesUseDisjointChars!205 (Rule!7668 Rule!7668) Bool)

(assert (=> b!1928005 (= res!862133 (rulesUseDisjointChars!205 (h!27337 rules!3198) (h!27337 rules!3198)))))

(assert (=> b!1928005 (=> (not res!862133) (not e!1232452))))

(declare-fun b!1928006 () Bool)

(assert (=> b!1928006 (= e!1232453 call!118565)))

(assert (= (and d!587622 c!313514) b!1928005))

(assert (= (and d!587622 (not c!313514)) b!1928003))

(assert (= (and b!1928005 res!862133) b!1928004))

(assert (= (and b!1928003 (not res!862134)) b!1928006))

(assert (= (or b!1928004 b!1928006) bm!118560))

(declare-fun m!2364583 () Bool)

(assert (=> bm!118560 m!2364583))

(declare-fun m!2364585 () Bool)

(assert (=> b!1928005 m!2364585))

(assert (=> b!1927616 d!587622))

(declare-fun d!587626 () Bool)

(declare-fun c!313521 () Bool)

(assert (=> d!587626 (= c!313521 ((_ is Node!7322) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))))))

(declare-fun e!1232465 () Bool)

(assert (=> d!587626 (= (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))) e!1232465)))

(declare-fun b!1928023 () Bool)

(declare-fun inv!29023 (Conc!7322) Bool)

(assert (=> b!1928023 (= e!1232465 (inv!29023 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))))))

(declare-fun b!1928024 () Bool)

(declare-fun e!1232466 () Bool)

(assert (=> b!1928024 (= e!1232465 e!1232466)))

(declare-fun res!862139 () Bool)

(assert (=> b!1928024 (= res!862139 (not ((_ is Leaf!10752) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))))))))

(assert (=> b!1928024 (=> res!862139 e!1232466)))

(declare-fun b!1928025 () Bool)

(declare-fun inv!29024 (Conc!7322) Bool)

(assert (=> b!1928025 (= e!1232466 (inv!29024 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))))))

(assert (= (and d!587626 c!313521) b!1928023))

(assert (= (and d!587626 (not c!313521)) b!1928024))

(assert (= (and b!1928024 (not res!862139)) b!1928025))

(declare-fun m!2364595 () Bool)

(assert (=> b!1928023 m!2364595))

(declare-fun m!2364597 () Bool)

(assert (=> b!1928025 m!2364597))

(assert (=> b!1926861 d!587626))

(declare-fun bs!414731 () Bool)

(declare-fun d!587632 () Bool)

(assert (= bs!414731 (and d!587632 d!587264)))

(declare-fun lambda!75214 () Int)

(assert (=> bs!414731 (= lambda!75214 lambda!75194)))

(assert (=> d!587632 true))

(assert (=> d!587632 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (dynLambda!10630 order!13775 lambda!75214))))

(assert (=> d!587632 true))

(assert (=> d!587632 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (dynLambda!10630 order!13775 lambda!75214))))

(assert (=> d!587632 (= (semiInverseModEq!1565 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (Forall!1000 lambda!75214))))

(declare-fun bs!414732 () Bool)

(assert (= bs!414732 d!587632))

(declare-fun m!2364609 () Bool)

(assert (=> bs!414732 m!2364609))

(assert (=> d!587270 d!587632))

(declare-fun d!587638 () Bool)

(assert (=> d!587638 (= (isDefined!3837 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))) (not (isEmpty!13512 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))))))

(declare-fun bs!414733 () Bool)

(assert (= bs!414733 d!587638))

(assert (=> bs!414733 m!2362987))

(declare-fun m!2364611 () Bool)

(assert (=> bs!414733 m!2364611))

(assert (=> d!587192 d!587638))

(assert (=> d!587192 d!587232))

(declare-fun d!587640 () Bool)

(declare-fun e!1232475 () Bool)

(assert (=> d!587640 e!1232475))

(declare-fun res!862147 () Bool)

(assert (=> d!587640 (=> (not res!862147) (not e!1232475))))

(assert (=> d!587640 (= res!862147 (isDefined!3837 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))))))

(assert (=> d!587640 true))

(declare-fun _$52!1225 () Unit!36278)

(assert (=> d!587640 (= (choose!11966 thiss!23328 rules!3198 lt!738500 separatorToken!354) _$52!1225)))

(declare-fun b!1928043 () Bool)

(declare-fun res!862148 () Bool)

(assert (=> b!1928043 (=> (not res!862148) (not e!1232475))))

(assert (=> b!1928043 (= res!862148 (matchR!2627 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))) (list!8871 (charsOf!2474 separatorToken!354))))))

(declare-fun b!1928044 () Bool)

(assert (=> b!1928044 (= e!1232475 (= (rule!6139 separatorToken!354) (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))))))

(assert (= (and d!587640 res!862147) b!1928043))

(assert (= (and b!1928043 res!862148) b!1928044))

(assert (=> d!587640 m!2362987))

(assert (=> d!587640 m!2362987))

(assert (=> d!587640 m!2363159))

(assert (=> b!1928043 m!2362987))

(assert (=> b!1928043 m!2362973))

(assert (=> b!1928043 m!2362973))

(assert (=> b!1928043 m!2362977))

(assert (=> b!1928043 m!2362977))

(assert (=> b!1928043 m!2363163))

(assert (=> b!1928043 m!2362987))

(assert (=> b!1928043 m!2363165))

(assert (=> b!1928044 m!2362987))

(assert (=> b!1928044 m!2362987))

(assert (=> b!1928044 m!2363165))

(assert (=> d!587192 d!587640))

(assert (=> d!587192 d!587402))

(declare-fun d!587652 () Bool)

(assert (=> d!587652 (= (isEmpty!13510 lt!738500) ((_ is Nil!21935) lt!738500))))

(assert (=> d!587356 d!587652))

(declare-fun b!1928063 () Bool)

(declare-fun res!862162 () Bool)

(declare-fun e!1232492 () Bool)

(assert (=> b!1928063 (=> res!862162 e!1232492)))

(assert (=> b!1928063 (= res!862162 (not ((_ is Concat!9430) (regex!3934 (rule!6139 separatorToken!354)))))))

(declare-fun e!1232493 () Bool)

(assert (=> b!1928063 (= e!1232493 e!1232492)))

(declare-fun b!1928064 () Bool)

(declare-fun e!1232490 () Bool)

(assert (=> b!1928064 (= e!1232490 e!1232493)))

(declare-fun c!313529 () Bool)

(assert (=> b!1928064 (= c!313529 ((_ is Union!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun b!1928065 () Bool)

(declare-fun e!1232496 () Bool)

(declare-fun call!118575 () Bool)

(assert (=> b!1928065 (= e!1232496 call!118575)))

(declare-fun bm!118568 () Bool)

(assert (=> bm!118568 (= call!118575 (validRegex!2134 (ite c!313529 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354))))))))

(declare-fun bm!118569 () Bool)

(declare-fun call!118574 () Bool)

(declare-fun call!118573 () Bool)

(assert (=> bm!118569 (= call!118574 call!118573)))

(declare-fun b!1928067 () Bool)

(declare-fun e!1232491 () Bool)

(assert (=> b!1928067 (= e!1232491 e!1232490)))

(declare-fun c!313530 () Bool)

(assert (=> b!1928067 (= c!313530 ((_ is Star!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun b!1928068 () Bool)

(declare-fun e!1232495 () Bool)

(assert (=> b!1928068 (= e!1232495 call!118573)))

(declare-fun b!1928069 () Bool)

(declare-fun e!1232494 () Bool)

(assert (=> b!1928069 (= e!1232492 e!1232494)))

(declare-fun res!862163 () Bool)

(assert (=> b!1928069 (=> (not res!862163) (not e!1232494))))

(assert (=> b!1928069 (= res!862163 call!118574)))

(declare-fun b!1928070 () Bool)

(assert (=> b!1928070 (= e!1232490 e!1232495)))

(declare-fun res!862161 () Bool)

(assert (=> b!1928070 (= res!862161 (not (nullable!1608 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))))))))

(assert (=> b!1928070 (=> (not res!862161) (not e!1232495))))

(declare-fun b!1928071 () Bool)

(declare-fun res!862159 () Bool)

(assert (=> b!1928071 (=> (not res!862159) (not e!1232496))))

(assert (=> b!1928071 (= res!862159 call!118574)))

(assert (=> b!1928071 (= e!1232493 e!1232496)))

(declare-fun bm!118570 () Bool)

(assert (=> bm!118570 (= call!118573 (validRegex!2134 (ite c!313530 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313529 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354)))))))))

(declare-fun b!1928066 () Bool)

(assert (=> b!1928066 (= e!1232494 call!118575)))

(declare-fun d!587654 () Bool)

(declare-fun res!862160 () Bool)

(assert (=> d!587654 (=> res!862160 e!1232491)))

(assert (=> d!587654 (= res!862160 ((_ is ElementMatch!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(assert (=> d!587654 (= (validRegex!2134 (regex!3934 (rule!6139 separatorToken!354))) e!1232491)))

(assert (= (and d!587654 (not res!862160)) b!1928067))

(assert (= (and b!1928067 c!313530) b!1928070))

(assert (= (and b!1928067 (not c!313530)) b!1928064))

(assert (= (and b!1928070 res!862161) b!1928068))

(assert (= (and b!1928064 c!313529) b!1928071))

(assert (= (and b!1928064 (not c!313529)) b!1928063))

(assert (= (and b!1928071 res!862159) b!1928065))

(assert (= (and b!1928063 (not res!862162)) b!1928069))

(assert (= (and b!1928069 res!862163) b!1928066))

(assert (= (or b!1928071 b!1928069) bm!118569))

(assert (= (or b!1928065 b!1928066) bm!118568))

(assert (= (or b!1928068 bm!118569) bm!118570))

(declare-fun m!2364635 () Bool)

(assert (=> bm!118568 m!2364635))

(declare-fun m!2364637 () Bool)

(assert (=> b!1928070 m!2364637))

(declare-fun m!2364639 () Bool)

(assert (=> bm!118570 m!2364639))

(assert (=> d!587356 d!587654))

(declare-fun d!587658 () Bool)

(assert (=> d!587658 (= (head!4494 lt!738494) (h!27336 lt!738494))))

(assert (=> b!1926919 d!587658))

(declare-fun d!587660 () Bool)

(declare-fun isBalanced!2260 (Conc!7322) Bool)

(assert (=> d!587660 (= (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))) (isBalanced!2260 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))))))

(declare-fun bs!414741 () Bool)

(assert (= bs!414741 d!587660))

(declare-fun m!2364641 () Bool)

(assert (=> bs!414741 m!2364641))

(assert (=> tb!117957 d!587660))

(declare-fun d!587662 () Bool)

(assert (=> d!587662 (= (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640)))) (list!8873 (c!313264 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))))))

(declare-fun bs!414742 () Bool)

(assert (= bs!414742 d!587662))

(declare-fun m!2364643 () Bool)

(assert (=> bs!414742 m!2364643))

(assert (=> b!1927168 d!587662))

(declare-fun d!587664 () Bool)

(declare-fun lt!738947 () BalanceConc!14460)

(assert (=> d!587664 (= (list!8871 lt!738947) (originalCharacters!4741 (_1!11743 (get!6908 lt!738640))))))

(assert (=> d!587664 (= lt!738947 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))) (value!123710 (_1!11743 (get!6908 lt!738640)))))))

(assert (=> d!587664 (= (charsOf!2474 (_1!11743 (get!6908 lt!738640))) lt!738947)))

(declare-fun b_lambda!63901 () Bool)

(assert (=> (not b_lambda!63901) (not d!587664)))

(declare-fun t!179725 () Bool)

(declare-fun tb!118097 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179725) tb!118097))

(declare-fun b!1928072 () Bool)

(declare-fun e!1232497 () Bool)

(declare-fun tp!550580 () Bool)

(assert (=> b!1928072 (= e!1232497 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))) (value!123710 (_1!11743 (get!6908 lt!738640)))))) tp!550580))))

(declare-fun result!142688 () Bool)

(assert (=> tb!118097 (= result!142688 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))) (value!123710 (_1!11743 (get!6908 lt!738640))))) e!1232497))))

(assert (= tb!118097 b!1928072))

(declare-fun m!2364645 () Bool)

(assert (=> b!1928072 m!2364645))

(declare-fun m!2364647 () Bool)

(assert (=> tb!118097 m!2364647))

(assert (=> d!587664 t!179725))

(declare-fun b_and!151249 () Bool)

(assert (= b_and!151187 (and (=> t!179725 result!142688) b_and!151249)))

(declare-fun tb!118099 () Bool)

(declare-fun t!179727 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179727) tb!118099))

(declare-fun result!142690 () Bool)

(assert (= result!142690 result!142688))

(assert (=> d!587664 t!179727))

(declare-fun b_and!151251 () Bool)

(assert (= b_and!151193 (and (=> t!179727 result!142690) b_and!151251)))

(declare-fun tb!118101 () Bool)

(declare-fun t!179729 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179729) tb!118101))

(declare-fun result!142692 () Bool)

(assert (= result!142692 result!142688))

(assert (=> d!587664 t!179729))

(declare-fun b_and!151253 () Bool)

(assert (= b_and!151189 (and (=> t!179729 result!142692) b_and!151253)))

(declare-fun tb!118103 () Bool)

(declare-fun t!179731 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179731) tb!118103))

(declare-fun result!142694 () Bool)

(assert (= result!142694 result!142688))

(assert (=> d!587664 t!179731))

(declare-fun b_and!151255 () Bool)

(assert (= b_and!151197 (and (=> t!179731 result!142694) b_and!151255)))

(declare-fun t!179733 () Bool)

(declare-fun tb!118105 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179733) tb!118105))

(declare-fun result!142696 () Bool)

(assert (= result!142696 result!142688))

(assert (=> d!587664 t!179733))

(declare-fun b_and!151257 () Bool)

(assert (= b_and!151185 (and (=> t!179733 result!142696) b_and!151257)))

(declare-fun m!2364649 () Bool)

(assert (=> d!587664 m!2364649))

(declare-fun m!2364651 () Bool)

(assert (=> d!587664 m!2364651))

(assert (=> b!1927168 d!587664))

(assert (=> b!1927168 d!587544))

(assert (=> d!587308 d!587302))

(assert (=> d!587308 d!587272))

(assert (=> d!587308 d!587278))

(declare-fun d!587666 () Bool)

(assert (=> d!587666 (= (++!5881 (++!5881 lt!738494 lt!738500) lt!738491) (++!5881 lt!738494 (++!5881 lt!738500 lt!738491)))))

(assert (=> d!587666 true))

(declare-fun _$52!1228 () Unit!36278)

(assert (=> d!587666 (= (choose!11970 lt!738494 lt!738500 lt!738491) _$52!1228)))

(declare-fun bs!414743 () Bool)

(assert (= bs!414743 d!587666))

(assert (=> bs!414743 m!2363037))

(assert (=> bs!414743 m!2363037))

(assert (=> bs!414743 m!2363039))

(assert (=> bs!414743 m!2363025))

(assert (=> bs!414743 m!2363025))

(assert (=> bs!414743 m!2363027))

(assert (=> d!587308 d!587666))

(assert (=> d!587308 d!587284))

(declare-fun b!1928073 () Bool)

(declare-fun e!1232500 () Bool)

(declare-fun e!1232499 () Bool)

(assert (=> b!1928073 (= e!1232500 e!1232499)))

(declare-fun res!862171 () Bool)

(assert (=> b!1928073 (=> (not res!862171) (not e!1232499))))

(declare-fun lt!738948 () Bool)

(assert (=> b!1928073 (= res!862171 (not lt!738948))))

(declare-fun b!1928074 () Bool)

(declare-fun e!1232501 () Bool)

(assert (=> b!1928074 (= e!1232501 (matchR!2627 (derivativeStep!1367 (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500)) (head!4494 (tail!2979 lt!738500))) (tail!2979 (tail!2979 lt!738500))))))

(declare-fun b!1928075 () Bool)

(declare-fun e!1232503 () Bool)

(assert (=> b!1928075 (= e!1232503 (= (head!4494 (tail!2979 lt!738500)) (c!313265 (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500)))))))

(declare-fun b!1928076 () Bool)

(declare-fun res!862167 () Bool)

(assert (=> b!1928076 (=> (not res!862167) (not e!1232503))))

(assert (=> b!1928076 (= res!862167 (isEmpty!13510 (tail!2979 (tail!2979 lt!738500))))))

(declare-fun b!1928077 () Bool)

(declare-fun res!862165 () Bool)

(declare-fun e!1232498 () Bool)

(assert (=> b!1928077 (=> res!862165 e!1232498)))

(assert (=> b!1928077 (= res!862165 (not (isEmpty!13510 (tail!2979 (tail!2979 lt!738500)))))))

(declare-fun b!1928078 () Bool)

(assert (=> b!1928078 (= e!1232499 e!1232498)))

(declare-fun res!862166 () Bool)

(assert (=> b!1928078 (=> res!862166 e!1232498)))

(declare-fun call!118576 () Bool)

(assert (=> b!1928078 (= res!862166 call!118576)))

(declare-fun b!1928079 () Bool)

(declare-fun res!862164 () Bool)

(assert (=> b!1928079 (=> res!862164 e!1232500)))

(assert (=> b!1928079 (= res!862164 e!1232503)))

(declare-fun res!862170 () Bool)

(assert (=> b!1928079 (=> (not res!862170) (not e!1232503))))

(assert (=> b!1928079 (= res!862170 lt!738948)))

(declare-fun b!1928080 () Bool)

(assert (=> b!1928080 (= e!1232498 (not (= (head!4494 (tail!2979 lt!738500)) (c!313265 (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500))))))))

(declare-fun b!1928081 () Bool)

(declare-fun res!862168 () Bool)

(assert (=> b!1928081 (=> (not res!862168) (not e!1232503))))

(assert (=> b!1928081 (= res!862168 (not call!118576))))

(declare-fun b!1928082 () Bool)

(declare-fun res!862169 () Bool)

(assert (=> b!1928082 (=> res!862169 e!1232500)))

(assert (=> b!1928082 (= res!862169 (not ((_ is ElementMatch!5359) (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500)))))))

(declare-fun e!1232504 () Bool)

(assert (=> b!1928082 (= e!1232504 e!1232500)))

(declare-fun b!1928083 () Bool)

(declare-fun e!1232502 () Bool)

(assert (=> b!1928083 (= e!1232502 (= lt!738948 call!118576))))

(declare-fun b!1928084 () Bool)

(assert (=> b!1928084 (= e!1232502 e!1232504)))

(declare-fun c!313533 () Bool)

(assert (=> b!1928084 (= c!313533 ((_ is EmptyLang!5359) (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500))))))

(declare-fun b!1928085 () Bool)

(assert (=> b!1928085 (= e!1232504 (not lt!738948))))

(declare-fun b!1928086 () Bool)

(assert (=> b!1928086 (= e!1232501 (nullable!1608 (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500))))))

(declare-fun bm!118571 () Bool)

(assert (=> bm!118571 (= call!118576 (isEmpty!13510 (tail!2979 lt!738500)))))

(declare-fun d!587668 () Bool)

(assert (=> d!587668 e!1232502))

(declare-fun c!313531 () Bool)

(assert (=> d!587668 (= c!313531 ((_ is EmptyExpr!5359) (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500))))))

(assert (=> d!587668 (= lt!738948 e!1232501)))

(declare-fun c!313532 () Bool)

(assert (=> d!587668 (= c!313532 (isEmpty!13510 (tail!2979 lt!738500)))))

(assert (=> d!587668 (validRegex!2134 (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500)))))

(assert (=> d!587668 (= (matchR!2627 (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500)) (tail!2979 lt!738500)) lt!738948)))

(assert (= (and d!587668 c!313532) b!1928086))

(assert (= (and d!587668 (not c!313532)) b!1928074))

(assert (= (and d!587668 c!313531) b!1928083))

(assert (= (and d!587668 (not c!313531)) b!1928084))

(assert (= (and b!1928084 c!313533) b!1928085))

(assert (= (and b!1928084 (not c!313533)) b!1928082))

(assert (= (and b!1928082 (not res!862169)) b!1928079))

(assert (= (and b!1928079 res!862170) b!1928081))

(assert (= (and b!1928081 res!862168) b!1928076))

(assert (= (and b!1928076 res!862167) b!1928075))

(assert (= (and b!1928079 (not res!862164)) b!1928073))

(assert (= (and b!1928073 res!862171) b!1928078))

(assert (= (and b!1928078 (not res!862166)) b!1928077))

(assert (= (and b!1928077 (not res!862165)) b!1928080))

(assert (= (or b!1928083 b!1928078 b!1928081) bm!118571))

(assert (=> b!1928080 m!2363829))

(declare-fun m!2364653 () Bool)

(assert (=> b!1928080 m!2364653))

(assert (=> b!1928074 m!2363829))

(assert (=> b!1928074 m!2364653))

(assert (=> b!1928074 m!2363947))

(assert (=> b!1928074 m!2364653))

(declare-fun m!2364655 () Bool)

(assert (=> b!1928074 m!2364655))

(assert (=> b!1928074 m!2363829))

(declare-fun m!2364657 () Bool)

(assert (=> b!1928074 m!2364657))

(assert (=> b!1928074 m!2364655))

(assert (=> b!1928074 m!2364657))

(declare-fun m!2364659 () Bool)

(assert (=> b!1928074 m!2364659))

(assert (=> b!1928077 m!2363829))

(assert (=> b!1928077 m!2364657))

(assert (=> b!1928077 m!2364657))

(declare-fun m!2364661 () Bool)

(assert (=> b!1928077 m!2364661))

(assert (=> b!1928076 m!2363829))

(assert (=> b!1928076 m!2364657))

(assert (=> b!1928076 m!2364657))

(assert (=> b!1928076 m!2364661))

(assert (=> b!1928086 m!2363947))

(declare-fun m!2364663 () Bool)

(assert (=> b!1928086 m!2364663))

(assert (=> b!1928075 m!2363829))

(assert (=> b!1928075 m!2364653))

(assert (=> bm!118571 m!2363829))

(assert (=> bm!118571 m!2363833))

(assert (=> d!587668 m!2363829))

(assert (=> d!587668 m!2363833))

(assert (=> d!587668 m!2363947))

(declare-fun m!2364665 () Bool)

(assert (=> d!587668 m!2364665))

(assert (=> b!1927568 d!587668))

(declare-fun b!1928107 () Bool)

(declare-fun e!1232515 () Regex!5359)

(declare-fun call!118588 () Regex!5359)

(declare-fun call!118586 () Regex!5359)

(assert (=> b!1928107 (= e!1232515 (Union!5359 call!118588 call!118586))))

(declare-fun b!1928108 () Bool)

(declare-fun c!313547 () Bool)

(assert (=> b!1928108 (= c!313547 ((_ is Union!5359) (regex!3934 lt!738484)))))

(declare-fun e!1232517 () Regex!5359)

(assert (=> b!1928108 (= e!1232517 e!1232515)))

(declare-fun b!1928109 () Bool)

(declare-fun e!1232518 () Regex!5359)

(assert (=> b!1928109 (= e!1232518 EmptyLang!5359)))

(declare-fun b!1928110 () Bool)

(declare-fun c!313546 () Bool)

(assert (=> b!1928110 (= c!313546 (nullable!1608 (regOne!11230 (regex!3934 lt!738484))))))

(declare-fun e!1232519 () Regex!5359)

(declare-fun e!1232516 () Regex!5359)

(assert (=> b!1928110 (= e!1232519 e!1232516)))

(declare-fun b!1928111 () Bool)

(assert (=> b!1928111 (= e!1232518 e!1232517)))

(declare-fun c!313548 () Bool)

(assert (=> b!1928111 (= c!313548 ((_ is ElementMatch!5359) (regex!3934 lt!738484)))))

(declare-fun bm!118580 () Bool)

(declare-fun c!313544 () Bool)

(assert (=> bm!118580 (= call!118588 (derivativeStep!1367 (ite c!313547 (regOne!11231 (regex!3934 lt!738484)) (ite c!313544 (reg!5688 (regex!3934 lt!738484)) (ite c!313546 (regTwo!11230 (regex!3934 lt!738484)) (regOne!11230 (regex!3934 lt!738484))))) (head!4494 lt!738500)))))

(declare-fun bm!118581 () Bool)

(declare-fun call!118585 () Regex!5359)

(declare-fun call!118587 () Regex!5359)

(assert (=> bm!118581 (= call!118585 call!118587)))

(declare-fun b!1928112 () Bool)

(assert (=> b!1928112 (= e!1232515 e!1232519)))

(assert (=> b!1928112 (= c!313544 ((_ is Star!5359) (regex!3934 lt!738484)))))

(declare-fun d!587670 () Bool)

(declare-fun lt!738951 () Regex!5359)

(assert (=> d!587670 (validRegex!2134 lt!738951)))

(assert (=> d!587670 (= lt!738951 e!1232518)))

(declare-fun c!313545 () Bool)

(assert (=> d!587670 (= c!313545 (or ((_ is EmptyExpr!5359) (regex!3934 lt!738484)) ((_ is EmptyLang!5359) (regex!3934 lt!738484))))))

(assert (=> d!587670 (validRegex!2134 (regex!3934 lt!738484))))

(assert (=> d!587670 (= (derivativeStep!1367 (regex!3934 lt!738484) (head!4494 lt!738500)) lt!738951)))

(declare-fun b!1928113 () Bool)

(assert (=> b!1928113 (= e!1232519 (Concat!9430 call!118587 (regex!3934 lt!738484)))))

(declare-fun b!1928114 () Bool)

(assert (=> b!1928114 (= e!1232517 (ite (= (head!4494 lt!738500) (c!313265 (regex!3934 lt!738484))) EmptyExpr!5359 EmptyLang!5359))))

(declare-fun b!1928115 () Bool)

(assert (=> b!1928115 (= e!1232516 (Union!5359 (Concat!9430 call!118585 (regTwo!11230 (regex!3934 lt!738484))) EmptyLang!5359))))

(declare-fun bm!118582 () Bool)

(assert (=> bm!118582 (= call!118586 (derivativeStep!1367 (ite c!313547 (regTwo!11231 (regex!3934 lt!738484)) (regOne!11230 (regex!3934 lt!738484))) (head!4494 lt!738500)))))

(declare-fun bm!118583 () Bool)

(assert (=> bm!118583 (= call!118587 call!118588)))

(declare-fun b!1928116 () Bool)

(assert (=> b!1928116 (= e!1232516 (Union!5359 (Concat!9430 call!118586 (regTwo!11230 (regex!3934 lt!738484))) call!118585))))

(assert (= (and d!587670 c!313545) b!1928109))

(assert (= (and d!587670 (not c!313545)) b!1928111))

(assert (= (and b!1928111 c!313548) b!1928114))

(assert (= (and b!1928111 (not c!313548)) b!1928108))

(assert (= (and b!1928108 c!313547) b!1928107))

(assert (= (and b!1928108 (not c!313547)) b!1928112))

(assert (= (and b!1928112 c!313544) b!1928113))

(assert (= (and b!1928112 (not c!313544)) b!1928110))

(assert (= (and b!1928110 c!313546) b!1928116))

(assert (= (and b!1928110 (not c!313546)) b!1928115))

(assert (= (or b!1928116 b!1928115) bm!118581))

(assert (= (or b!1928113 bm!118581) bm!118583))

(assert (= (or b!1928107 bm!118583) bm!118580))

(assert (= (or b!1928107 b!1928116) bm!118582))

(declare-fun m!2364667 () Bool)

(assert (=> b!1928110 m!2364667))

(assert (=> bm!118580 m!2363013))

(declare-fun m!2364669 () Bool)

(assert (=> bm!118580 m!2364669))

(declare-fun m!2364671 () Bool)

(assert (=> d!587670 m!2364671))

(assert (=> d!587670 m!2363953))

(assert (=> bm!118582 m!2363013))

(declare-fun m!2364673 () Bool)

(assert (=> bm!118582 m!2364673))

(assert (=> b!1927568 d!587670))

(assert (=> b!1927568 d!587298))

(declare-fun d!587672 () Bool)

(assert (=> d!587672 (= (tail!2979 lt!738500) (t!179566 lt!738500))))

(assert (=> b!1927568 d!587672))

(declare-fun d!587674 () Bool)

(declare-fun c!313550 () Bool)

(assert (=> d!587674 (= c!313550 ((_ is IntegerValue!12210) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))

(declare-fun e!1232520 () Bool)

(assert (=> d!587674 (= (inv!21 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)) e!1232520)))

(declare-fun b!1928117 () Bool)

(assert (=> b!1928117 (= e!1232520 (inv!16 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))

(declare-fun b!1928118 () Bool)

(declare-fun e!1232522 () Bool)

(assert (=> b!1928118 (= e!1232522 (inv!15 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))

(declare-fun b!1928119 () Bool)

(declare-fun e!1232521 () Bool)

(assert (=> b!1928119 (= e!1232521 (inv!17 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))

(declare-fun b!1928120 () Bool)

(declare-fun res!862172 () Bool)

(assert (=> b!1928120 (=> res!862172 e!1232522)))

(assert (=> b!1928120 (= res!862172 (not ((_ is IntegerValue!12212) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))))))

(assert (=> b!1928120 (= e!1232521 e!1232522)))

(declare-fun b!1928121 () Bool)

(assert (=> b!1928121 (= e!1232520 e!1232521)))

(declare-fun c!313549 () Bool)

(assert (=> b!1928121 (= c!313549 ((_ is IntegerValue!12211) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))

(assert (= (and d!587674 c!313550) b!1928117))

(assert (= (and d!587674 (not c!313550)) b!1928121))

(assert (= (and b!1928121 c!313549) b!1928119))

(assert (= (and b!1928121 (not c!313549)) b!1928120))

(assert (= (and b!1928120 (not res!862172)) b!1928118))

(declare-fun m!2364675 () Bool)

(assert (=> b!1928117 m!2364675))

(declare-fun m!2364677 () Bool)

(assert (=> b!1928118 m!2364677))

(declare-fun m!2364679 () Bool)

(assert (=> b!1928119 m!2364679))

(assert (=> tb!117993 d!587674))

(declare-fun d!587676 () Bool)

(assert (=> d!587676 (= (inv!29012 (tag!4380 (rule!6139 (h!27338 (t!179568 tokens!598))))) (= (mod (str.len (value!123709 (tag!4380 (rule!6139 (h!27338 (t!179568 tokens!598)))))) 2) 0))))

(assert (=> b!1927660 d!587676))

(declare-fun d!587678 () Bool)

(declare-fun res!862173 () Bool)

(declare-fun e!1232523 () Bool)

(assert (=> d!587678 (=> (not res!862173) (not e!1232523))))

(assert (=> d!587678 (= res!862173 (semiInverseModEq!1565 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))))))

(assert (=> d!587678 (= (inv!29015 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) e!1232523)))

(declare-fun b!1928122 () Bool)

(assert (=> b!1928122 (= e!1232523 (equivClasses!1492 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))))))

(assert (= (and d!587678 res!862173) b!1928122))

(declare-fun m!2364681 () Bool)

(assert (=> d!587678 m!2364681))

(declare-fun m!2364683 () Bool)

(assert (=> b!1928122 m!2364683))

(assert (=> b!1927660 d!587678))

(declare-fun d!587680 () Bool)

(assert (=> d!587680 (= (isEmpty!13510 (tail!2979 lt!738500)) ((_ is Nil!21935) (tail!2979 lt!738500)))))

(assert (=> b!1927392 d!587680))

(assert (=> b!1927392 d!587672))

(declare-fun d!587682 () Bool)

(declare-fun lt!738952 () BalanceConc!14460)

(assert (=> d!587682 (= (list!8871 lt!738952) (originalCharacters!4741 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598))))))))

(assert (=> d!587682 (= lt!738952 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598))))))) (value!123710 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))))

(assert (=> d!587682 (= (charsOf!2474 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598))))) lt!738952)))

(declare-fun b_lambda!63903 () Bool)

(assert (=> (not b_lambda!63903) (not d!587682)))

(declare-fun t!179735 () Bool)

(declare-fun tb!118107 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))) t!179735) tb!118107))

(declare-fun e!1232524 () Bool)

(declare-fun b!1928123 () Bool)

(declare-fun tp!550581 () Bool)

(assert (=> b!1928123 (= e!1232524 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598))))))) (value!123710 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))) tp!550581))))

(declare-fun result!142698 () Bool)

(assert (=> tb!118107 (= result!142698 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598))))))) (value!123710 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598))))))) e!1232524))))

(assert (= tb!118107 b!1928123))

(declare-fun m!2364685 () Bool)

(assert (=> b!1928123 m!2364685))

(declare-fun m!2364687 () Bool)

(assert (=> tb!118107 m!2364687))

(assert (=> d!587682 t!179735))

(declare-fun b_and!151259 () Bool)

(assert (= b_and!151253 (and (=> t!179735 result!142698) b_and!151259)))

(declare-fun t!179737 () Bool)

(declare-fun tb!118109 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))) t!179737) tb!118109))

(declare-fun result!142700 () Bool)

(assert (= result!142700 result!142698))

(assert (=> d!587682 t!179737))

(declare-fun b_and!151261 () Bool)

(assert (= b_and!151251 (and (=> t!179737 result!142700) b_and!151261)))

(declare-fun t!179739 () Bool)

(declare-fun tb!118111 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))) t!179739) tb!118111))

(declare-fun result!142702 () Bool)

(assert (= result!142702 result!142698))

(assert (=> d!587682 t!179739))

(declare-fun b_and!151263 () Bool)

(assert (= b_and!151257 (and (=> t!179739 result!142702) b_and!151263)))

(declare-fun t!179741 () Bool)

(declare-fun tb!118113 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))) t!179741) tb!118113))

(declare-fun result!142704 () Bool)

(assert (= result!142704 result!142698))

(assert (=> d!587682 t!179741))

(declare-fun b_and!151265 () Bool)

(assert (= b_and!151255 (and (=> t!179741 result!142704) b_and!151265)))

(declare-fun t!179743 () Bool)

(declare-fun tb!118115 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))) t!179743) tb!118115))

(declare-fun result!142706 () Bool)

(assert (= result!142706 result!142698))

(assert (=> d!587682 t!179743))

(declare-fun b_and!151267 () Bool)

(assert (= b_and!151249 (and (=> t!179743 result!142706) b_and!151267)))

(declare-fun m!2364689 () Bool)

(assert (=> d!587682 m!2364689))

(declare-fun m!2364691 () Bool)

(assert (=> d!587682 m!2364691))

(assert (=> bm!118486 d!587682))

(declare-fun d!587684 () Bool)

(declare-fun lt!738953 () Bool)

(assert (=> d!587684 (= lt!738953 (select (content!3173 rules!3198) (rule!6139 (_1!11743 (get!6908 lt!738610)))))))

(declare-fun e!1232526 () Bool)

(assert (=> d!587684 (= lt!738953 e!1232526)))

(declare-fun res!862174 () Bool)

(assert (=> d!587684 (=> (not res!862174) (not e!1232526))))

(assert (=> d!587684 (= res!862174 ((_ is Cons!21936) rules!3198))))

(assert (=> d!587684 (= (contains!3967 rules!3198 (rule!6139 (_1!11743 (get!6908 lt!738610)))) lt!738953)))

(declare-fun b!1928124 () Bool)

(declare-fun e!1232525 () Bool)

(assert (=> b!1928124 (= e!1232526 e!1232525)))

(declare-fun res!862175 () Bool)

(assert (=> b!1928124 (=> res!862175 e!1232525)))

(assert (=> b!1928124 (= res!862175 (= (h!27337 rules!3198) (rule!6139 (_1!11743 (get!6908 lt!738610)))))))

(declare-fun b!1928125 () Bool)

(assert (=> b!1928125 (= e!1232525 (contains!3967 (t!179567 rules!3198) (rule!6139 (_1!11743 (get!6908 lt!738610)))))))

(assert (= (and d!587684 res!862174) b!1928124))

(assert (= (and b!1928124 (not res!862175)) b!1928125))

(assert (=> d!587684 m!2364327))

(declare-fun m!2364693 () Bool)

(assert (=> d!587684 m!2364693))

(declare-fun m!2364695 () Bool)

(assert (=> b!1928125 m!2364695))

(assert (=> b!1927086 d!587684))

(assert (=> b!1927086 d!587482))

(declare-fun d!587686 () Bool)

(assert (=> d!587686 (= (isEmpty!13510 (originalCharacters!4741 (h!27338 tokens!598))) ((_ is Nil!21935) (originalCharacters!4741 (h!27338 tokens!598))))))

(assert (=> d!587396 d!587686))

(assert (=> b!1927571 d!587680))

(assert (=> b!1927571 d!587672))

(declare-fun d!587688 () Bool)

(declare-fun res!862176 () Bool)

(declare-fun e!1232527 () Bool)

(assert (=> d!587688 (=> res!862176 e!1232527)))

(assert (=> d!587688 (= res!862176 ((_ is Nil!21937) (t!179568 tokens!598)))))

(assert (=> d!587688 (= (forall!4636 (t!179568 tokens!598) lambda!75173) e!1232527)))

(declare-fun b!1928126 () Bool)

(declare-fun e!1232528 () Bool)

(assert (=> b!1928126 (= e!1232527 e!1232528)))

(declare-fun res!862177 () Bool)

(assert (=> b!1928126 (=> (not res!862177) (not e!1232528))))

(assert (=> b!1928126 (= res!862177 (dynLambda!10631 lambda!75173 (h!27338 (t!179568 tokens!598))))))

(declare-fun b!1928127 () Bool)

(assert (=> b!1928127 (= e!1232528 (forall!4636 (t!179568 (t!179568 tokens!598)) lambda!75173))))

(assert (= (and d!587688 (not res!862176)) b!1928126))

(assert (= (and b!1928126 res!862177) b!1928127))

(declare-fun b_lambda!63905 () Bool)

(assert (=> (not b_lambda!63905) (not b!1928126)))

(declare-fun m!2364697 () Bool)

(assert (=> b!1928126 m!2364697))

(declare-fun m!2364699 () Bool)

(assert (=> b!1928127 m!2364699))

(assert (=> b!1927408 d!587688))

(declare-fun d!587690 () Bool)

(declare-fun charsToInt!0 (List!22016) (_ BitVec 32))

(assert (=> d!587690 (= (inv!16 (value!123710 separatorToken!354)) (= (charsToInt!0 (text!28937 (value!123710 separatorToken!354))) (value!123701 (value!123710 separatorToken!354))))))

(declare-fun bs!414744 () Bool)

(assert (= bs!414744 d!587690))

(declare-fun m!2364701 () Bool)

(assert (=> bs!414744 m!2364701))

(assert (=> b!1927607 d!587690))

(declare-fun bs!414745 () Bool)

(declare-fun d!587692 () Bool)

(assert (= bs!414745 (and d!587692 b!1926813)))

(declare-fun lambda!75218 () Int)

(assert (=> bs!414745 (not (= lambda!75218 lambda!75173))))

(declare-fun bs!414746 () Bool)

(assert (= bs!414746 (and d!587692 b!1927047)))

(assert (=> bs!414746 (= lambda!75218 lambda!75185)))

(declare-fun bs!414747 () Bool)

(assert (= bs!414747 (and d!587692 d!587362)))

(assert (=> bs!414747 (= lambda!75218 lambda!75197)))

(declare-fun b!1928132 () Bool)

(declare-fun e!1232533 () Bool)

(assert (=> b!1928132 (= e!1232533 true)))

(declare-fun b!1928131 () Bool)

(declare-fun e!1232532 () Bool)

(assert (=> b!1928131 (= e!1232532 e!1232533)))

(declare-fun b!1928130 () Bool)

(declare-fun e!1232531 () Bool)

(assert (=> b!1928130 (= e!1232531 e!1232532)))

(assert (=> d!587692 e!1232531))

(assert (= b!1928131 b!1928132))

(assert (= b!1928130 b!1928131))

(assert (= (and d!587692 ((_ is Cons!21936) rules!3198)) b!1928130))

(assert (=> b!1928132 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10625 order!13769 lambda!75218))))

(assert (=> b!1928132 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10625 order!13769 lambda!75218))))

(assert (=> d!587692 true))

(declare-fun lt!738954 () Bool)

(assert (=> d!587692 (= lt!738954 (forall!4636 (t!179568 tokens!598) lambda!75218))))

(declare-fun e!1232530 () Bool)

(assert (=> d!587692 (= lt!738954 e!1232530)))

(declare-fun res!862178 () Bool)

(assert (=> d!587692 (=> res!862178 e!1232530)))

(assert (=> d!587692 (= res!862178 (not ((_ is Cons!21937) (t!179568 tokens!598))))))

(assert (=> d!587692 (not (isEmpty!13507 rules!3198))))

(assert (=> d!587692 (= (rulesProduceEachTokenIndividuallyList!1278 thiss!23328 rules!3198 (t!179568 tokens!598)) lt!738954)))

(declare-fun b!1928128 () Bool)

(declare-fun e!1232529 () Bool)

(assert (=> b!1928128 (= e!1232530 e!1232529)))

(declare-fun res!862179 () Bool)

(assert (=> b!1928128 (=> (not res!862179) (not e!1232529))))

(assert (=> b!1928128 (= res!862179 (rulesProduceIndividualToken!1719 thiss!23328 rules!3198 (h!27338 (t!179568 tokens!598))))))

(declare-fun b!1928129 () Bool)

(assert (=> b!1928129 (= e!1232529 (rulesProduceEachTokenIndividuallyList!1278 thiss!23328 rules!3198 (t!179568 (t!179568 tokens!598))))))

(assert (= (and d!587692 (not res!862178)) b!1928128))

(assert (= (and b!1928128 res!862179) b!1928129))

(declare-fun m!2364703 () Bool)

(assert (=> d!587692 m!2364703))

(assert (=> d!587692 m!2363053))

(declare-fun m!2364705 () Bool)

(assert (=> b!1928128 m!2364705))

(declare-fun m!2364707 () Bool)

(assert (=> b!1928129 m!2364707))

(assert (=> b!1927563 d!587692))

(declare-fun d!587694 () Bool)

(assert (=> d!587694 (= (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610)))) (list!8873 (c!313264 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))))))

(declare-fun bs!414748 () Bool)

(assert (= bs!414748 d!587694))

(declare-fun m!2364709 () Bool)

(assert (=> bs!414748 m!2364709))

(assert (=> b!1927090 d!587694))

(declare-fun d!587696 () Bool)

(declare-fun lt!738955 () BalanceConc!14460)

(assert (=> d!587696 (= (list!8871 lt!738955) (originalCharacters!4741 (_1!11743 (get!6908 lt!738610))))))

(assert (=> d!587696 (= lt!738955 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))) (value!123710 (_1!11743 (get!6908 lt!738610)))))))

(assert (=> d!587696 (= (charsOf!2474 (_1!11743 (get!6908 lt!738610))) lt!738955)))

(declare-fun b_lambda!63907 () Bool)

(assert (=> (not b_lambda!63907) (not d!587696)))

(declare-fun tb!118117 () Bool)

(declare-fun t!179745 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179745) tb!118117))

(declare-fun b!1928133 () Bool)

(declare-fun e!1232534 () Bool)

(declare-fun tp!550582 () Bool)

(assert (=> b!1928133 (= e!1232534 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))) (value!123710 (_1!11743 (get!6908 lt!738610)))))) tp!550582))))

(declare-fun result!142708 () Bool)

(assert (=> tb!118117 (= result!142708 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))) (value!123710 (_1!11743 (get!6908 lt!738610))))) e!1232534))))

(assert (= tb!118117 b!1928133))

(declare-fun m!2364711 () Bool)

(assert (=> b!1928133 m!2364711))

(declare-fun m!2364713 () Bool)

(assert (=> tb!118117 m!2364713))

(assert (=> d!587696 t!179745))

(declare-fun b_and!151269 () Bool)

(assert (= b_and!151261 (and (=> t!179745 result!142708) b_and!151269)))

(declare-fun t!179747 () Bool)

(declare-fun tb!118119 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179747) tb!118119))

(declare-fun result!142710 () Bool)

(assert (= result!142710 result!142708))

(assert (=> d!587696 t!179747))

(declare-fun b_and!151271 () Bool)

(assert (= b_and!151263 (and (=> t!179747 result!142710) b_and!151271)))

(declare-fun t!179749 () Bool)

(declare-fun tb!118121 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179749) tb!118121))

(declare-fun result!142712 () Bool)

(assert (= result!142712 result!142708))

(assert (=> d!587696 t!179749))

(declare-fun b_and!151273 () Bool)

(assert (= b_and!151265 (and (=> t!179749 result!142712) b_and!151273)))

(declare-fun t!179751 () Bool)

(declare-fun tb!118123 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179751) tb!118123))

(declare-fun result!142714 () Bool)

(assert (= result!142714 result!142708))

(assert (=> d!587696 t!179751))

(declare-fun b_and!151275 () Bool)

(assert (= b_and!151267 (and (=> t!179751 result!142714) b_and!151275)))

(declare-fun t!179753 () Bool)

(declare-fun tb!118125 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179753) tb!118125))

(declare-fun result!142716 () Bool)

(assert (= result!142716 result!142708))

(assert (=> d!587696 t!179753))

(declare-fun b_and!151277 () Bool)

(assert (= b_and!151259 (and (=> t!179753 result!142716) b_and!151277)))

(declare-fun m!2364715 () Bool)

(assert (=> d!587696 m!2364715))

(declare-fun m!2364717 () Bool)

(assert (=> d!587696 m!2364717))

(assert (=> b!1927090 d!587696))

(assert (=> b!1927090 d!587482))

(declare-fun bs!414749 () Bool)

(declare-fun d!587698 () Bool)

(assert (= bs!414749 (and d!587698 d!587236)))

(declare-fun lambda!75219 () Int)

(assert (=> bs!414749 (= (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (= lambda!75219 lambda!75191))))

(declare-fun bs!414750 () Bool)

(assert (= bs!414750 (and d!587698 d!587488)))

(assert (=> bs!414750 (= (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (= lambda!75219 lambda!75203))))

(assert (=> d!587698 true))

(assert (=> d!587698 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10628 order!13773 lambda!75219))))

(assert (=> d!587698 (= (equivClasses!1492 (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (Forall2!625 lambda!75219))))

(declare-fun bs!414751 () Bool)

(assert (= bs!414751 d!587698))

(declare-fun m!2364719 () Bool)

(assert (=> bs!414751 m!2364719))

(assert (=> b!1927583 d!587698))

(declare-fun d!587700 () Bool)

(declare-fun lt!738956 () Int)

(assert (=> d!587700 (>= lt!738956 0)))

(declare-fun e!1232535 () Int)

(assert (=> d!587700 (= lt!738956 e!1232535)))

(declare-fun c!313551 () Bool)

(assert (=> d!587700 (= c!313551 ((_ is Nil!21935) (originalCharacters!4741 (h!27338 tokens!598))))))

(assert (=> d!587700 (= (size!17110 (originalCharacters!4741 (h!27338 tokens!598))) lt!738956)))

(declare-fun b!1928134 () Bool)

(assert (=> b!1928134 (= e!1232535 0)))

(declare-fun b!1928135 () Bool)

(assert (=> b!1928135 (= e!1232535 (+ 1 (size!17110 (t!179566 (originalCharacters!4741 (h!27338 tokens!598))))))))

(assert (= (and d!587700 c!313551) b!1928134))

(assert (= (and d!587700 (not c!313551)) b!1928135))

(declare-fun m!2364721 () Bool)

(assert (=> b!1928135 m!2364721))

(assert (=> b!1927582 d!587700))

(declare-fun d!587702 () Bool)

(assert (=> d!587702 (= (isEmpty!13512 lt!738490) (not ((_ is Some!4543) lt!738490)))))

(assert (=> d!587190 d!587702))

(declare-fun d!587704 () Bool)

(declare-fun lt!738957 () Bool)

(assert (=> d!587704 (= lt!738957 (select (content!3171 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) lt!738502))))

(declare-fun e!1232537 () Bool)

(assert (=> d!587704 (= lt!738957 e!1232537)))

(declare-fun res!862180 () Bool)

(assert (=> d!587704 (=> (not res!862180) (not e!1232537))))

(assert (=> d!587704 (= res!862180 ((_ is Cons!21935) (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))))))))

(assert (=> d!587704 (= (contains!3965 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))) lt!738502) lt!738957)))

(declare-fun b!1928136 () Bool)

(declare-fun e!1232536 () Bool)

(assert (=> b!1928136 (= e!1232537 e!1232536)))

(declare-fun res!862181 () Bool)

(assert (=> b!1928136 (=> res!862181 e!1232536)))

(assert (=> b!1928136 (= res!862181 (= (h!27336 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) lt!738502))))

(declare-fun b!1928137 () Bool)

(assert (=> b!1928137 (= e!1232536 (contains!3965 (t!179566 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) lt!738502))))

(assert (= (and d!587704 res!862180) b!1928136))

(assert (= (and b!1928136 (not res!862181)) b!1928137))

(declare-fun m!2364723 () Bool)

(assert (=> d!587704 m!2364723))

(declare-fun m!2364725 () Bool)

(assert (=> d!587704 m!2364725))

(declare-fun m!2364727 () Bool)

(assert (=> b!1928137 m!2364727))

(assert (=> b!1927263 d!587704))

(declare-fun d!587706 () Bool)

(declare-fun nullableFct!362 (Regex!5359) Bool)

(assert (=> d!587706 (= (nullable!1608 (regex!3934 lt!738484)) (nullableFct!362 (regex!3934 lt!738484)))))

(declare-fun bs!414752 () Bool)

(assert (= bs!414752 d!587706))

(declare-fun m!2364729 () Bool)

(assert (=> bs!414752 m!2364729))

(assert (=> b!1927580 d!587706))

(declare-fun d!587708 () Bool)

(declare-fun charsToBigInt!1 (List!22016) Int)

(assert (=> d!587708 (= (inv!17 (value!123710 (h!27338 tokens!598))) (= (charsToBigInt!1 (text!28938 (value!123710 (h!27338 tokens!598)))) (value!123702 (value!123710 (h!27338 tokens!598)))))))

(declare-fun bs!414753 () Bool)

(assert (= bs!414753 d!587708))

(declare-fun m!2364731 () Bool)

(assert (=> bs!414753 m!2364731))

(assert (=> b!1927386 d!587708))

(declare-fun d!587710 () Bool)

(assert (=> d!587710 (= (head!4495 (drop!1074 lt!738671 0)) (h!27338 (drop!1074 lt!738671 0)))))

(assert (=> b!1927199 d!587710))

(declare-fun d!587712 () Bool)

(assert (=> d!587712 (= (list!8875 lt!738485) (list!8877 (c!313266 lt!738485)))))

(declare-fun bs!414754 () Bool)

(assert (= bs!414754 d!587712))

(declare-fun m!2364733 () Bool)

(assert (=> bs!414754 m!2364733))

(assert (=> b!1927199 d!587712))

(declare-fun d!587714 () Bool)

(declare-fun lt!738958 () BalanceConc!14460)

(assert (=> d!587714 (= (list!8871 lt!738958) (originalCharacters!4741 (apply!5694 lt!738485 0)))))

(assert (=> d!587714 (= lt!738958 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0)))) (value!123710 (apply!5694 lt!738485 0))))))

(assert (=> d!587714 (= (charsOf!2474 (apply!5694 lt!738485 0)) lt!738958)))

(declare-fun b_lambda!63909 () Bool)

(assert (=> (not b_lambda!63909) (not d!587714)))

(declare-fun t!179755 () Bool)

(declare-fun tb!118127 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0))))) t!179755) tb!118127))

(declare-fun b!1928138 () Bool)

(declare-fun e!1232538 () Bool)

(declare-fun tp!550583 () Bool)

(assert (=> b!1928138 (= e!1232538 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0)))) (value!123710 (apply!5694 lt!738485 0))))) tp!550583))))

(declare-fun result!142718 () Bool)

(assert (=> tb!118127 (= result!142718 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0)))) (value!123710 (apply!5694 lt!738485 0)))) e!1232538))))

(assert (= tb!118127 b!1928138))

(declare-fun m!2364735 () Bool)

(assert (=> b!1928138 m!2364735))

(declare-fun m!2364737 () Bool)

(assert (=> tb!118127 m!2364737))

(assert (=> d!587714 t!179755))

(declare-fun b_and!151279 () Bool)

(assert (= b_and!151271 (and (=> t!179755 result!142718) b_and!151279)))

(declare-fun tb!118129 () Bool)

(declare-fun t!179757 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0))))) t!179757) tb!118129))

(declare-fun result!142720 () Bool)

(assert (= result!142720 result!142718))

(assert (=> d!587714 t!179757))

(declare-fun b_and!151281 () Bool)

(assert (= b_and!151273 (and (=> t!179757 result!142720) b_and!151281)))

(declare-fun tb!118131 () Bool)

(declare-fun t!179759 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0))))) t!179759) tb!118131))

(declare-fun result!142722 () Bool)

(assert (= result!142722 result!142718))

(assert (=> d!587714 t!179759))

(declare-fun b_and!151283 () Bool)

(assert (= b_and!151275 (and (=> t!179759 result!142722) b_and!151283)))

(declare-fun tb!118133 () Bool)

(declare-fun t!179761 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0))))) t!179761) tb!118133))

(declare-fun result!142724 () Bool)

(assert (= result!142724 result!142718))

(assert (=> d!587714 t!179761))

(declare-fun b_and!151285 () Bool)

(assert (= b_and!151269 (and (=> t!179761 result!142724) b_and!151285)))

(declare-fun t!179763 () Bool)

(declare-fun tb!118135 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0))))) t!179763) tb!118135))

(declare-fun result!142726 () Bool)

(assert (= result!142726 result!142718))

(assert (=> d!587714 t!179763))

(declare-fun b_and!151287 () Bool)

(assert (= b_and!151277 (and (=> t!179763 result!142726) b_and!151287)))

(declare-fun m!2364739 () Bool)

(assert (=> d!587714 m!2364739))

(declare-fun m!2364741 () Bool)

(assert (=> d!587714 m!2364741))

(assert (=> b!1927199 d!587714))

(declare-fun d!587716 () Bool)

(declare-fun lt!738961 () Token!7420)

(declare-fun contains!3968 (List!22019 Token!7420) Bool)

(assert (=> d!587716 (contains!3968 lt!738671 lt!738961)))

(declare-fun e!1232544 () Token!7420)

(assert (=> d!587716 (= lt!738961 e!1232544)))

(declare-fun c!313554 () Bool)

(assert (=> d!587716 (= c!313554 (= 0 0))))

(declare-fun e!1232543 () Bool)

(assert (=> d!587716 e!1232543))

(declare-fun res!862184 () Bool)

(assert (=> d!587716 (=> (not res!862184) (not e!1232543))))

(assert (=> d!587716 (= res!862184 (<= 0 0))))

(assert (=> d!587716 (= (apply!5695 lt!738671 0) lt!738961)))

(declare-fun b!1928145 () Bool)

(assert (=> b!1928145 (= e!1232543 (< 0 (size!17115 lt!738671)))))

(declare-fun b!1928146 () Bool)

(assert (=> b!1928146 (= e!1232544 (head!4495 lt!738671))))

(declare-fun b!1928147 () Bool)

(assert (=> b!1928147 (= e!1232544 (apply!5695 (tail!2980 lt!738671) (- 0 1)))))

(assert (= (and d!587716 res!862184) b!1928145))

(assert (= (and d!587716 c!313554) b!1928146))

(assert (= (and d!587716 (not c!313554)) b!1928147))

(declare-fun m!2364743 () Bool)

(assert (=> d!587716 m!2364743))

(declare-fun m!2364745 () Bool)

(assert (=> b!1928145 m!2364745))

(declare-fun m!2364747 () Bool)

(assert (=> b!1928146 m!2364747))

(declare-fun m!2364749 () Bool)

(assert (=> b!1928147 m!2364749))

(assert (=> b!1928147 m!2364749))

(declare-fun m!2364751 () Bool)

(assert (=> b!1928147 m!2364751))

(assert (=> b!1927199 d!587716))

(declare-fun b!1928166 () Bool)

(declare-fun e!1232559 () List!22019)

(declare-fun e!1232557 () List!22019)

(assert (=> b!1928166 (= e!1232559 e!1232557)))

(declare-fun c!313565 () Bool)

(assert (=> b!1928166 (= c!313565 (<= 0 0))))

(declare-fun d!587718 () Bool)

(declare-fun e!1232556 () Bool)

(assert (=> d!587718 e!1232556))

(declare-fun res!862187 () Bool)

(assert (=> d!587718 (=> (not res!862187) (not e!1232556))))

(declare-fun lt!738964 () List!22019)

(declare-fun content!3175 (List!22019) (InoxSet Token!7420))

(assert (=> d!587718 (= res!862187 (= ((_ map implies) (content!3175 lt!738964) (content!3175 lt!738671)) ((as const (InoxSet Token!7420)) true)))))

(assert (=> d!587718 (= lt!738964 e!1232559)))

(declare-fun c!313563 () Bool)

(assert (=> d!587718 (= c!313563 ((_ is Nil!21937) lt!738671))))

(assert (=> d!587718 (= (drop!1074 lt!738671 0) lt!738964)))

(declare-fun b!1928167 () Bool)

(declare-fun e!1232558 () Int)

(declare-fun call!118591 () Int)

(assert (=> b!1928167 (= e!1232558 call!118591)))

(declare-fun b!1928168 () Bool)

(assert (=> b!1928168 (= e!1232557 lt!738671)))

(declare-fun b!1928169 () Bool)

(declare-fun e!1232555 () Int)

(assert (=> b!1928169 (= e!1232555 (- call!118591 0))))

(declare-fun b!1928170 () Bool)

(assert (=> b!1928170 (= e!1232557 (drop!1074 (t!179568 lt!738671) (- 0 1)))))

(declare-fun bm!118586 () Bool)

(assert (=> bm!118586 (= call!118591 (size!17115 lt!738671))))

(declare-fun b!1928171 () Bool)

(assert (=> b!1928171 (= e!1232556 (= (size!17115 lt!738964) e!1232558))))

(declare-fun c!313564 () Bool)

(assert (=> b!1928171 (= c!313564 (<= 0 0))))

(declare-fun b!1928172 () Bool)

(assert (=> b!1928172 (= e!1232559 Nil!21937)))

(declare-fun b!1928173 () Bool)

(assert (=> b!1928173 (= e!1232555 0)))

(declare-fun b!1928174 () Bool)

(assert (=> b!1928174 (= e!1232558 e!1232555)))

(declare-fun c!313566 () Bool)

(assert (=> b!1928174 (= c!313566 (>= 0 call!118591))))

(assert (= (and d!587718 c!313563) b!1928172))

(assert (= (and d!587718 (not c!313563)) b!1928166))

(assert (= (and b!1928166 c!313565) b!1928168))

(assert (= (and b!1928166 (not c!313565)) b!1928170))

(assert (= (and d!587718 res!862187) b!1928171))

(assert (= (and b!1928171 c!313564) b!1928167))

(assert (= (and b!1928171 (not c!313564)) b!1928174))

(assert (= (and b!1928174 c!313566) b!1928173))

(assert (= (and b!1928174 (not c!313566)) b!1928169))

(assert (= (or b!1928167 b!1928174 b!1928169) bm!118586))

(declare-fun m!2364753 () Bool)

(assert (=> d!587718 m!2364753))

(declare-fun m!2364755 () Bool)

(assert (=> d!587718 m!2364755))

(declare-fun m!2364757 () Bool)

(assert (=> b!1928170 m!2364757))

(assert (=> bm!118586 m!2364745))

(declare-fun m!2364759 () Bool)

(assert (=> b!1928171 m!2364759))

(assert (=> b!1927199 d!587718))

(declare-fun d!587720 () Bool)

(assert (=> d!587720 (= (tail!2980 (drop!1074 lt!738674 0)) (drop!1074 lt!738674 (+ 0 1)))))

(declare-fun lt!738967 () Unit!36278)

(declare-fun choose!11977 (List!22019 Int) Unit!36278)

(assert (=> d!587720 (= lt!738967 (choose!11977 lt!738674 0))))

(declare-fun e!1232562 () Bool)

(assert (=> d!587720 e!1232562))

(declare-fun res!862190 () Bool)

(assert (=> d!587720 (=> (not res!862190) (not e!1232562))))

(assert (=> d!587720 (= res!862190 (>= 0 0))))

(assert (=> d!587720 (= (lemmaDropTail!683 lt!738674 0) lt!738967)))

(declare-fun b!1928177 () Bool)

(assert (=> b!1928177 (= e!1232562 (< 0 (size!17115 lt!738674)))))

(assert (= (and d!587720 res!862190) b!1928177))

(assert (=> d!587720 m!2363545))

(assert (=> d!587720 m!2363545))

(assert (=> d!587720 m!2363547))

(assert (=> d!587720 m!2363549))

(declare-fun m!2364761 () Bool)

(assert (=> d!587720 m!2364761))

(declare-fun m!2364763 () Bool)

(assert (=> b!1928177 m!2364763))

(assert (=> b!1927199 d!587720))

(declare-fun d!587722 () Bool)

(declare-fun lt!738968 () Token!7420)

(assert (=> d!587722 (= lt!738968 (apply!5695 (list!8875 lt!738485) 0))))

(assert (=> d!587722 (= lt!738968 (apply!5699 (c!313266 lt!738485) 0))))

(declare-fun e!1232563 () Bool)

(assert (=> d!587722 e!1232563))

(declare-fun res!862191 () Bool)

(assert (=> d!587722 (=> (not res!862191) (not e!1232563))))

(assert (=> d!587722 (= res!862191 (<= 0 0))))

(assert (=> d!587722 (= (apply!5694 lt!738485 0) lt!738968)))

(declare-fun b!1928178 () Bool)

(assert (=> b!1928178 (= e!1232563 (< 0 (size!17113 lt!738485)))))

(assert (= (and d!587722 res!862191) b!1928178))

(assert (=> d!587722 m!2363553))

(assert (=> d!587722 m!2363553))

(declare-fun m!2364765 () Bool)

(assert (=> d!587722 m!2364765))

(declare-fun m!2364767 () Bool)

(assert (=> d!587722 m!2364767))

(assert (=> b!1928178 m!2363525))

(assert (=> b!1927199 d!587722))

(declare-fun b!1928188 () Bool)

(declare-fun res!862202 () Bool)

(declare-fun e!1232566 () Bool)

(assert (=> b!1928188 (=> (not res!862202) (not e!1232566))))

(declare-fun height!1108 (Conc!7322) Int)

(declare-fun ++!5885 (Conc!7322 Conc!7322) Conc!7322)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1928188 (= res!862202 (<= (height!1108 (++!5885 (c!313264 (BalanceConc!14461 Empty!7322)) (c!313264 (charsOf!2474 (apply!5694 lt!738485 0))))) (+ (max!0 (height!1108 (c!313264 (BalanceConc!14461 Empty!7322))) (height!1108 (c!313264 (charsOf!2474 (apply!5694 lt!738485 0))))) 1)))))

(declare-fun b!1928187 () Bool)

(declare-fun res!862203 () Bool)

(assert (=> b!1928187 (=> (not res!862203) (not e!1232566))))

(assert (=> b!1928187 (= res!862203 (isBalanced!2260 (++!5885 (c!313264 (BalanceConc!14461 Empty!7322)) (c!313264 (charsOf!2474 (apply!5694 lt!738485 0))))))))

(declare-fun b!1928189 () Bool)

(declare-fun res!862201 () Bool)

(assert (=> b!1928189 (=> (not res!862201) (not e!1232566))))

(assert (=> b!1928189 (= res!862201 (>= (height!1108 (++!5885 (c!313264 (BalanceConc!14461 Empty!7322)) (c!313264 (charsOf!2474 (apply!5694 lt!738485 0))))) (max!0 (height!1108 (c!313264 (BalanceConc!14461 Empty!7322))) (height!1108 (c!313264 (charsOf!2474 (apply!5694 lt!738485 0)))))))))

(declare-fun b!1928190 () Bool)

(declare-fun lt!738971 () BalanceConc!14460)

(assert (=> b!1928190 (= e!1232566 (= (list!8871 lt!738971) (++!5881 (list!8871 (BalanceConc!14461 Empty!7322)) (list!8871 (charsOf!2474 (apply!5694 lt!738485 0))))))))

(declare-fun d!587724 () Bool)

(assert (=> d!587724 e!1232566))

(declare-fun res!862200 () Bool)

(assert (=> d!587724 (=> (not res!862200) (not e!1232566))))

(declare-fun appendAssocInst!524 (Conc!7322 Conc!7322) Bool)

(assert (=> d!587724 (= res!862200 (appendAssocInst!524 (c!313264 (BalanceConc!14461 Empty!7322)) (c!313264 (charsOf!2474 (apply!5694 lt!738485 0)))))))

(assert (=> d!587724 (= lt!738971 (BalanceConc!14461 (++!5885 (c!313264 (BalanceConc!14461 Empty!7322)) (c!313264 (charsOf!2474 (apply!5694 lt!738485 0))))))))

(assert (=> d!587724 (= (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (apply!5694 lt!738485 0))) lt!738971)))

(assert (= (and d!587724 res!862200) b!1928187))

(assert (= (and b!1928187 res!862203) b!1928188))

(assert (= (and b!1928188 res!862202) b!1928189))

(assert (= (and b!1928189 res!862201) b!1928190))

(declare-fun m!2364769 () Bool)

(assert (=> b!1928190 m!2364769))

(assert (=> b!1928190 m!2363521))

(assert (=> b!1928190 m!2363539))

(declare-fun m!2364771 () Bool)

(assert (=> b!1928190 m!2364771))

(assert (=> b!1928190 m!2363521))

(assert (=> b!1928190 m!2364771))

(declare-fun m!2364773 () Bool)

(assert (=> b!1928190 m!2364773))

(declare-fun m!2364775 () Bool)

(assert (=> b!1928187 m!2364775))

(assert (=> b!1928187 m!2364775))

(declare-fun m!2364777 () Bool)

(assert (=> b!1928187 m!2364777))

(assert (=> b!1928189 m!2364775))

(declare-fun m!2364779 () Bool)

(assert (=> b!1928189 m!2364779))

(declare-fun m!2364781 () Bool)

(assert (=> b!1928189 m!2364781))

(assert (=> b!1928189 m!2364779))

(declare-fun m!2364783 () Bool)

(assert (=> b!1928189 m!2364783))

(assert (=> b!1928189 m!2364781))

(assert (=> b!1928189 m!2364775))

(declare-fun m!2364785 () Bool)

(assert (=> b!1928189 m!2364785))

(declare-fun m!2364787 () Bool)

(assert (=> d!587724 m!2364787))

(assert (=> d!587724 m!2364775))

(assert (=> b!1928188 m!2364775))

(assert (=> b!1928188 m!2364779))

(assert (=> b!1928188 m!2364781))

(assert (=> b!1928188 m!2364779))

(assert (=> b!1928188 m!2364783))

(assert (=> b!1928188 m!2364781))

(assert (=> b!1928188 m!2364775))

(assert (=> b!1928188 m!2364785))

(assert (=> b!1927199 d!587724))

(declare-fun d!587726 () Bool)

(declare-fun lt!738972 () BalanceConc!14460)

(assert (=> d!587726 (= (list!8871 lt!738972) (printListTailRec!452 thiss!23328 (dropList!783 lt!738485 (+ 0 1)) (list!8871 (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (apply!5694 lt!738485 0))))))))

(declare-fun e!1232567 () BalanceConc!14460)

(assert (=> d!587726 (= lt!738972 e!1232567)))

(declare-fun c!313570 () Bool)

(assert (=> d!587726 (= c!313570 (>= (+ 0 1) (size!17113 lt!738485)))))

(declare-fun e!1232568 () Bool)

(assert (=> d!587726 e!1232568))

(declare-fun res!862204 () Bool)

(assert (=> d!587726 (=> (not res!862204) (not e!1232568))))

(assert (=> d!587726 (= res!862204 (>= (+ 0 1) 0))))

(assert (=> d!587726 (= (printTailRec!1023 thiss!23328 lt!738485 (+ 0 1) (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (apply!5694 lt!738485 0)))) lt!738972)))

(declare-fun b!1928191 () Bool)

(assert (=> b!1928191 (= e!1232568 (<= (+ 0 1) (size!17113 lt!738485)))))

(declare-fun b!1928192 () Bool)

(assert (=> b!1928192 (= e!1232567 (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (apply!5694 lt!738485 0))))))

(declare-fun b!1928193 () Bool)

(assert (=> b!1928193 (= e!1232567 (printTailRec!1023 thiss!23328 lt!738485 (+ 0 1 1) (++!5882 (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (apply!5694 lt!738485 0))) (charsOf!2474 (apply!5694 lt!738485 (+ 0 1))))))))

(declare-fun lt!738975 () List!22019)

(assert (=> b!1928193 (= lt!738975 (list!8875 lt!738485))))

(declare-fun lt!738977 () Unit!36278)

(assert (=> b!1928193 (= lt!738977 (lemmaDropApply!707 lt!738975 (+ 0 1)))))

(assert (=> b!1928193 (= (head!4495 (drop!1074 lt!738975 (+ 0 1))) (apply!5695 lt!738975 (+ 0 1)))))

(declare-fun lt!738976 () Unit!36278)

(assert (=> b!1928193 (= lt!738976 lt!738977)))

(declare-fun lt!738978 () List!22019)

(assert (=> b!1928193 (= lt!738978 (list!8875 lt!738485))))

(declare-fun lt!738974 () Unit!36278)

(assert (=> b!1928193 (= lt!738974 (lemmaDropTail!683 lt!738978 (+ 0 1)))))

(assert (=> b!1928193 (= (tail!2980 (drop!1074 lt!738978 (+ 0 1))) (drop!1074 lt!738978 (+ 0 1 1)))))

(declare-fun lt!738973 () Unit!36278)

(assert (=> b!1928193 (= lt!738973 lt!738974)))

(assert (= (and d!587726 res!862204) b!1928191))

(assert (= (and d!587726 c!313570) b!1928192))

(assert (= (and d!587726 (not c!313570)) b!1928193))

(declare-fun m!2364789 () Bool)

(assert (=> d!587726 m!2364789))

(declare-fun m!2364791 () Bool)

(assert (=> d!587726 m!2364791))

(declare-fun m!2364793 () Bool)

(assert (=> d!587726 m!2364793))

(assert (=> d!587726 m!2363533))

(assert (=> d!587726 m!2364791))

(assert (=> d!587726 m!2363525))

(assert (=> d!587726 m!2364789))

(declare-fun m!2364795 () Bool)

(assert (=> d!587726 m!2364795))

(assert (=> b!1928191 m!2363525))

(declare-fun m!2364797 () Bool)

(assert (=> b!1928193 m!2364797))

(declare-fun m!2364799 () Bool)

(assert (=> b!1928193 m!2364799))

(declare-fun m!2364801 () Bool)

(assert (=> b!1928193 m!2364801))

(declare-fun m!2364803 () Bool)

(assert (=> b!1928193 m!2364803))

(declare-fun m!2364805 () Bool)

(assert (=> b!1928193 m!2364805))

(declare-fun m!2364807 () Bool)

(assert (=> b!1928193 m!2364807))

(declare-fun m!2364809 () Bool)

(assert (=> b!1928193 m!2364809))

(assert (=> b!1928193 m!2363533))

(assert (=> b!1928193 m!2364807))

(assert (=> b!1928193 m!2364801))

(assert (=> b!1928193 m!2364797))

(declare-fun m!2364811 () Bool)

(assert (=> b!1928193 m!2364811))

(declare-fun m!2364813 () Bool)

(assert (=> b!1928193 m!2364813))

(declare-fun m!2364815 () Bool)

(assert (=> b!1928193 m!2364815))

(assert (=> b!1928193 m!2364813))

(declare-fun m!2364817 () Bool)

(assert (=> b!1928193 m!2364817))

(declare-fun m!2364819 () Bool)

(assert (=> b!1928193 m!2364819))

(assert (=> b!1928193 m!2364805))

(assert (=> b!1928193 m!2363553))

(assert (=> b!1927199 d!587726))

(declare-fun b!1928194 () Bool)

(declare-fun e!1232573 () List!22019)

(declare-fun e!1232571 () List!22019)

(assert (=> b!1928194 (= e!1232573 e!1232571)))

(declare-fun c!313573 () Bool)

(assert (=> b!1928194 (= c!313573 (<= 0 0))))

(declare-fun d!587728 () Bool)

(declare-fun e!1232570 () Bool)

(assert (=> d!587728 e!1232570))

(declare-fun res!862205 () Bool)

(assert (=> d!587728 (=> (not res!862205) (not e!1232570))))

(declare-fun lt!738979 () List!22019)

(assert (=> d!587728 (= res!862205 (= ((_ map implies) (content!3175 lt!738979) (content!3175 lt!738674)) ((as const (InoxSet Token!7420)) true)))))

(assert (=> d!587728 (= lt!738979 e!1232573)))

(declare-fun c!313571 () Bool)

(assert (=> d!587728 (= c!313571 ((_ is Nil!21937) lt!738674))))

(assert (=> d!587728 (= (drop!1074 lt!738674 0) lt!738979)))

(declare-fun b!1928195 () Bool)

(declare-fun e!1232572 () Int)

(declare-fun call!118592 () Int)

(assert (=> b!1928195 (= e!1232572 call!118592)))

(declare-fun b!1928196 () Bool)

(assert (=> b!1928196 (= e!1232571 lt!738674)))

(declare-fun b!1928197 () Bool)

(declare-fun e!1232569 () Int)

(assert (=> b!1928197 (= e!1232569 (- call!118592 0))))

(declare-fun b!1928198 () Bool)

(assert (=> b!1928198 (= e!1232571 (drop!1074 (t!179568 lt!738674) (- 0 1)))))

(declare-fun bm!118587 () Bool)

(assert (=> bm!118587 (= call!118592 (size!17115 lt!738674))))

(declare-fun b!1928199 () Bool)

(assert (=> b!1928199 (= e!1232570 (= (size!17115 lt!738979) e!1232572))))

(declare-fun c!313572 () Bool)

(assert (=> b!1928199 (= c!313572 (<= 0 0))))

(declare-fun b!1928200 () Bool)

(assert (=> b!1928200 (= e!1232573 Nil!21937)))

(declare-fun b!1928201 () Bool)

(assert (=> b!1928201 (= e!1232569 0)))

(declare-fun b!1928202 () Bool)

(assert (=> b!1928202 (= e!1232572 e!1232569)))

(declare-fun c!313574 () Bool)

(assert (=> b!1928202 (= c!313574 (>= 0 call!118592))))

(assert (= (and d!587728 c!313571) b!1928200))

(assert (= (and d!587728 (not c!313571)) b!1928194))

(assert (= (and b!1928194 c!313573) b!1928196))

(assert (= (and b!1928194 (not c!313573)) b!1928198))

(assert (= (and d!587728 res!862205) b!1928199))

(assert (= (and b!1928199 c!313572) b!1928195))

(assert (= (and b!1928199 (not c!313572)) b!1928202))

(assert (= (and b!1928202 c!313574) b!1928201))

(assert (= (and b!1928202 (not c!313574)) b!1928197))

(assert (= (or b!1928195 b!1928202 b!1928197) bm!118587))

(declare-fun m!2364821 () Bool)

(assert (=> d!587728 m!2364821))

(declare-fun m!2364823 () Bool)

(assert (=> d!587728 m!2364823))

(declare-fun m!2364825 () Bool)

(assert (=> b!1928198 m!2364825))

(assert (=> bm!118587 m!2364763))

(declare-fun m!2364827 () Bool)

(assert (=> b!1928199 m!2364827))

(assert (=> b!1927199 d!587728))

(declare-fun d!587730 () Bool)

(assert (=> d!587730 (= (head!4495 (drop!1074 lt!738671 0)) (apply!5695 lt!738671 0))))

(declare-fun lt!738982 () Unit!36278)

(declare-fun choose!11978 (List!22019 Int) Unit!36278)

(assert (=> d!587730 (= lt!738982 (choose!11978 lt!738671 0))))

(declare-fun e!1232576 () Bool)

(assert (=> d!587730 e!1232576))

(declare-fun res!862208 () Bool)

(assert (=> d!587730 (=> (not res!862208) (not e!1232576))))

(assert (=> d!587730 (= res!862208 (>= 0 0))))

(assert (=> d!587730 (= (lemmaDropApply!707 lt!738671 0) lt!738982)))

(declare-fun b!1928205 () Bool)

(assert (=> b!1928205 (= e!1232576 (< 0 (size!17115 lt!738671)))))

(assert (= (and d!587730 res!862208) b!1928205))

(assert (=> d!587730 m!2363529))

(assert (=> d!587730 m!2363529))

(assert (=> d!587730 m!2363543))

(assert (=> d!587730 m!2363531))

(declare-fun m!2364829 () Bool)

(assert (=> d!587730 m!2364829))

(assert (=> b!1928205 m!2364745))

(assert (=> b!1927199 d!587730))

(declare-fun d!587732 () Bool)

(assert (=> d!587732 (= (tail!2980 (drop!1074 lt!738674 0)) (t!179568 (drop!1074 lt!738674 0)))))

(assert (=> b!1927199 d!587732))

(declare-fun b!1928206 () Bool)

(declare-fun e!1232581 () List!22019)

(declare-fun e!1232579 () List!22019)

(assert (=> b!1928206 (= e!1232581 e!1232579)))

(declare-fun c!313577 () Bool)

(assert (=> b!1928206 (= c!313577 (<= (+ 0 1) 0))))

(declare-fun d!587734 () Bool)

(declare-fun e!1232578 () Bool)

(assert (=> d!587734 e!1232578))

(declare-fun res!862209 () Bool)

(assert (=> d!587734 (=> (not res!862209) (not e!1232578))))

(declare-fun lt!738983 () List!22019)

(assert (=> d!587734 (= res!862209 (= ((_ map implies) (content!3175 lt!738983) (content!3175 lt!738674)) ((as const (InoxSet Token!7420)) true)))))

(assert (=> d!587734 (= lt!738983 e!1232581)))

(declare-fun c!313575 () Bool)

(assert (=> d!587734 (= c!313575 ((_ is Nil!21937) lt!738674))))

(assert (=> d!587734 (= (drop!1074 lt!738674 (+ 0 1)) lt!738983)))

(declare-fun b!1928207 () Bool)

(declare-fun e!1232580 () Int)

(declare-fun call!118593 () Int)

(assert (=> b!1928207 (= e!1232580 call!118593)))

(declare-fun b!1928208 () Bool)

(assert (=> b!1928208 (= e!1232579 lt!738674)))

(declare-fun b!1928209 () Bool)

(declare-fun e!1232577 () Int)

(assert (=> b!1928209 (= e!1232577 (- call!118593 (+ 0 1)))))

(declare-fun b!1928210 () Bool)

(assert (=> b!1928210 (= e!1232579 (drop!1074 (t!179568 lt!738674) (- (+ 0 1) 1)))))

(declare-fun bm!118588 () Bool)

(assert (=> bm!118588 (= call!118593 (size!17115 lt!738674))))

(declare-fun b!1928211 () Bool)

(assert (=> b!1928211 (= e!1232578 (= (size!17115 lt!738983) e!1232580))))

(declare-fun c!313576 () Bool)

(assert (=> b!1928211 (= c!313576 (<= (+ 0 1) 0))))

(declare-fun b!1928212 () Bool)

(assert (=> b!1928212 (= e!1232581 Nil!21937)))

(declare-fun b!1928213 () Bool)

(assert (=> b!1928213 (= e!1232577 0)))

(declare-fun b!1928214 () Bool)

(assert (=> b!1928214 (= e!1232580 e!1232577)))

(declare-fun c!313578 () Bool)

(assert (=> b!1928214 (= c!313578 (>= (+ 0 1) call!118593))))

(assert (= (and d!587734 c!313575) b!1928212))

(assert (= (and d!587734 (not c!313575)) b!1928206))

(assert (= (and b!1928206 c!313577) b!1928208))

(assert (= (and b!1928206 (not c!313577)) b!1928210))

(assert (= (and d!587734 res!862209) b!1928211))

(assert (= (and b!1928211 c!313576) b!1928207))

(assert (= (and b!1928211 (not c!313576)) b!1928214))

(assert (= (and b!1928214 c!313578) b!1928213))

(assert (= (and b!1928214 (not c!313578)) b!1928209))

(assert (= (or b!1928207 b!1928214 b!1928209) bm!118588))

(declare-fun m!2364831 () Bool)

(assert (=> d!587734 m!2364831))

(assert (=> d!587734 m!2364823))

(declare-fun m!2364833 () Bool)

(assert (=> b!1928210 m!2364833))

(assert (=> bm!118588 m!2364763))

(declare-fun m!2364835 () Bool)

(assert (=> b!1928211 m!2364835))

(assert (=> b!1927199 d!587734))

(declare-fun d!587736 () Bool)

(declare-fun res!862210 () Bool)

(declare-fun e!1232582 () Bool)

(assert (=> d!587736 (=> (not res!862210) (not e!1232582))))

(assert (=> d!587736 (= res!862210 (rulesValid!1452 thiss!23328 (t!179567 rules!3198)))))

(assert (=> d!587736 (= (rulesInvariant!3154 thiss!23328 (t!179567 rules!3198)) e!1232582)))

(declare-fun b!1928215 () Bool)

(assert (=> b!1928215 (= e!1232582 (noDuplicateTag!1450 thiss!23328 (t!179567 rules!3198) Nil!21939))))

(assert (= (and d!587736 res!862210) b!1928215))

(declare-fun m!2364837 () Bool)

(assert (=> d!587736 m!2364837))

(declare-fun m!2364839 () Bool)

(assert (=> b!1928215 m!2364839))

(assert (=> b!1927172 d!587736))

(declare-fun d!587738 () Bool)

(assert (=> d!587738 (rulesInvariant!3154 thiss!23328 (t!179567 rules!3198))))

(declare-fun lt!738986 () Unit!36278)

(declare-fun choose!11979 (LexerInterface!3547 Rule!7668 List!22018) Unit!36278)

(assert (=> d!587738 (= lt!738986 (choose!11979 thiss!23328 (h!27337 rules!3198) (t!179567 rules!3198)))))

(assert (=> d!587738 (rulesInvariant!3154 thiss!23328 (Cons!21936 (h!27337 rules!3198) (t!179567 rules!3198)))))

(assert (=> d!587738 (= (lemmaInvariantOnRulesThenOnTail!270 thiss!23328 (h!27337 rules!3198) (t!179567 rules!3198)) lt!738986)))

(declare-fun bs!414755 () Bool)

(assert (= bs!414755 d!587738))

(assert (=> bs!414755 m!2363383))

(declare-fun m!2364841 () Bool)

(assert (=> bs!414755 m!2364841))

(declare-fun m!2364843 () Bool)

(assert (=> bs!414755 m!2364843))

(assert (=> b!1927172 d!587738))

(declare-fun b!1928216 () Bool)

(declare-fun lt!738989 () Unit!36278)

(declare-fun lt!738988 () Unit!36278)

(assert (=> b!1928216 (= lt!738989 lt!738988)))

(assert (=> b!1928216 (rulesInvariant!3154 thiss!23328 (t!179567 (t!179567 rules!3198)))))

(assert (=> b!1928216 (= lt!738988 (lemmaInvariantOnRulesThenOnTail!270 thiss!23328 (h!27337 (t!179567 rules!3198)) (t!179567 (t!179567 rules!3198))))))

(declare-fun e!1232585 () Option!4544)

(assert (=> b!1928216 (= e!1232585 (getRuleFromTag!755 thiss!23328 (t!179567 (t!179567 rules!3198)) (tag!4380 (rule!6139 (h!27338 tokens!598)))))))

(declare-fun b!1928217 () Bool)

(declare-fun e!1232583 () Option!4544)

(assert (=> b!1928217 (= e!1232583 (Some!4543 (h!27337 (t!179567 rules!3198))))))

(declare-fun b!1928218 () Bool)

(assert (=> b!1928218 (= e!1232583 e!1232585)))

(declare-fun c!313580 () Bool)

(assert (=> b!1928218 (= c!313580 (and ((_ is Cons!21936) (t!179567 rules!3198)) (not (= (tag!4380 (h!27337 (t!179567 rules!3198))) (tag!4380 (rule!6139 (h!27338 tokens!598)))))))))

(declare-fun d!587740 () Bool)

(declare-fun e!1232586 () Bool)

(assert (=> d!587740 e!1232586))

(declare-fun res!862211 () Bool)

(assert (=> d!587740 (=> res!862211 e!1232586)))

(declare-fun lt!738987 () Option!4544)

(assert (=> d!587740 (= res!862211 (isEmpty!13512 lt!738987))))

(assert (=> d!587740 (= lt!738987 e!1232583)))

(declare-fun c!313579 () Bool)

(assert (=> d!587740 (= c!313579 (and ((_ is Cons!21936) (t!179567 rules!3198)) (= (tag!4380 (h!27337 (t!179567 rules!3198))) (tag!4380 (rule!6139 (h!27338 tokens!598))))))))

(assert (=> d!587740 (rulesInvariant!3154 thiss!23328 (t!179567 rules!3198))))

(assert (=> d!587740 (= (getRuleFromTag!755 thiss!23328 (t!179567 rules!3198) (tag!4380 (rule!6139 (h!27338 tokens!598)))) lt!738987)))

(declare-fun b!1928219 () Bool)

(assert (=> b!1928219 (= e!1232585 None!4543)))

(declare-fun b!1928220 () Bool)

(declare-fun e!1232584 () Bool)

(assert (=> b!1928220 (= e!1232584 (= (tag!4380 (get!6907 lt!738987)) (tag!4380 (rule!6139 (h!27338 tokens!598)))))))

(declare-fun b!1928221 () Bool)

(assert (=> b!1928221 (= e!1232586 e!1232584)))

(declare-fun res!862212 () Bool)

(assert (=> b!1928221 (=> (not res!862212) (not e!1232584))))

(assert (=> b!1928221 (= res!862212 (contains!3967 (t!179567 rules!3198) (get!6907 lt!738987)))))

(assert (= (and d!587740 c!313579) b!1928217))

(assert (= (and d!587740 (not c!313579)) b!1928218))

(assert (= (and b!1928218 c!313580) b!1928216))

(assert (= (and b!1928218 (not c!313580)) b!1928219))

(assert (= (and d!587740 (not res!862211)) b!1928221))

(assert (= (and b!1928221 res!862212) b!1928220))

(declare-fun m!2364845 () Bool)

(assert (=> b!1928216 m!2364845))

(declare-fun m!2364847 () Bool)

(assert (=> b!1928216 m!2364847))

(declare-fun m!2364849 () Bool)

(assert (=> b!1928216 m!2364849))

(declare-fun m!2364851 () Bool)

(assert (=> d!587740 m!2364851))

(assert (=> d!587740 m!2363383))

(declare-fun m!2364853 () Bool)

(assert (=> b!1928220 m!2364853))

(assert (=> b!1928221 m!2364853))

(assert (=> b!1928221 m!2364853))

(declare-fun m!2364855 () Bool)

(assert (=> b!1928221 m!2364855))

(assert (=> b!1927172 d!587740))

(declare-fun d!587742 () Bool)

(assert (=> d!587742 (= (isEmpty!13510 (originalCharacters!4741 separatorToken!354)) ((_ is Nil!21935) (originalCharacters!4741 separatorToken!354)))))

(assert (=> d!587182 d!587742))

(declare-fun d!587744 () Bool)

(declare-fun lt!738992 () Bool)

(assert (=> d!587744 (= lt!738992 (isEmpty!13510 (list!8871 (_2!11744 lt!738740))))))

(declare-fun isEmpty!13522 (Conc!7322) Bool)

(assert (=> d!587744 (= lt!738992 (isEmpty!13522 (c!313264 (_2!11744 lt!738740))))))

(assert (=> d!587744 (= (isEmpty!13518 (_2!11744 lt!738740)) lt!738992)))

(declare-fun bs!414756 () Bool)

(assert (= bs!414756 d!587744))

(declare-fun m!2364857 () Bool)

(assert (=> bs!414756 m!2364857))

(assert (=> bs!414756 m!2364857))

(declare-fun m!2364859 () Bool)

(assert (=> bs!414756 m!2364859))

(declare-fun m!2364861 () Bool)

(assert (=> bs!414756 m!2364861))

(assert (=> b!1927369 d!587744))

(declare-fun d!587746 () Bool)

(declare-fun lt!738993 () Int)

(assert (=> d!587746 (= lt!738993 (size!17115 (list!8875 (_1!11744 lt!738772))))))

(assert (=> d!587746 (= lt!738993 (size!17116 (c!313266 (_1!11744 lt!738772))))))

(assert (=> d!587746 (= (size!17113 (_1!11744 lt!738772)) lt!738993)))

(declare-fun bs!414757 () Bool)

(assert (= bs!414757 d!587746))

(assert (=> bs!414757 m!2363987))

(assert (=> bs!414757 m!2363987))

(declare-fun m!2364863 () Bool)

(assert (=> bs!414757 m!2364863))

(declare-fun m!2364865 () Bool)

(assert (=> bs!414757 m!2364865))

(assert (=> d!587410 d!587746))

(declare-datatypes ((tuple2!20560 0))(
  ( (tuple2!20561 (_1!11749 Token!7420) (_2!11749 BalanceConc!14460)) )
))
(declare-datatypes ((Option!4546 0))(
  ( (None!4545) (Some!4545 (v!26646 tuple2!20560)) )
))
(declare-fun lt!739208 () Option!4546)

(declare-fun b!1928378 () Bool)

(declare-fun e!1232678 () tuple2!20550)

(declare-fun lt!739227 () BalanceConc!14460)

(declare-fun append!597 (BalanceConc!14462 Token!7420) BalanceConc!14462)

(assert (=> b!1928378 (= e!1232678 (lexTailRecV2!674 thiss!23328 rules!3198 (seqFromList!2788 lt!738494) lt!739227 (_2!11749 (v!26646 lt!739208)) (append!597 (BalanceConc!14463 Empty!7323) (_1!11749 (v!26646 lt!739208)))))))

(declare-fun lt!739220 () tuple2!20550)

(declare-fun lexRec!403 (LexerInterface!3547 List!22018 BalanceConc!14460) tuple2!20550)

(assert (=> b!1928378 (= lt!739220 (lexRec!403 thiss!23328 rules!3198 (_2!11749 (v!26646 lt!739208))))))

(declare-fun lt!739223 () List!22017)

(assert (=> b!1928378 (= lt!739223 (list!8871 (BalanceConc!14461 Empty!7322)))))

(declare-fun lt!739211 () List!22017)

(assert (=> b!1928378 (= lt!739211 (list!8871 (charsOf!2474 (_1!11749 (v!26646 lt!739208)))))))

(declare-fun lt!739217 () List!22017)

(assert (=> b!1928378 (= lt!739217 (list!8871 (_2!11749 (v!26646 lt!739208))))))

(declare-fun lt!739231 () Unit!36278)

(assert (=> b!1928378 (= lt!739231 (lemmaConcatAssociativity!1193 lt!739223 lt!739211 lt!739217))))

(assert (=> b!1928378 (= (++!5881 (++!5881 lt!739223 lt!739211) lt!739217) (++!5881 lt!739223 (++!5881 lt!739211 lt!739217)))))

(declare-fun lt!739225 () Unit!36278)

(assert (=> b!1928378 (= lt!739225 lt!739231)))

(declare-fun lt!739209 () Option!4546)

(declare-fun maxPrefixZipperSequence!769 (LexerInterface!3547 List!22018 BalanceConc!14460) Option!4546)

(assert (=> b!1928378 (= lt!739209 (maxPrefixZipperSequence!769 thiss!23328 rules!3198 (seqFromList!2788 lt!738494)))))

(declare-fun c!313633 () Bool)

(assert (=> b!1928378 (= c!313633 ((_ is Some!4545) lt!739209))))

(declare-fun e!1232675 () tuple2!20550)

(assert (=> b!1928378 (= (lexRec!403 thiss!23328 rules!3198 (seqFromList!2788 lt!738494)) e!1232675)))

(declare-fun lt!739224 () Unit!36278)

(declare-fun Unit!36290 () Unit!36278)

(assert (=> b!1928378 (= lt!739224 Unit!36290)))

(declare-fun lt!739236 () List!22019)

(assert (=> b!1928378 (= lt!739236 (list!8875 (BalanceConc!14463 Empty!7323)))))

(declare-fun lt!739212 () List!22019)

(assert (=> b!1928378 (= lt!739212 (Cons!21937 (_1!11749 (v!26646 lt!739208)) Nil!21937))))

(declare-fun lt!739204 () List!22019)

(assert (=> b!1928378 (= lt!739204 (list!8875 (_1!11744 lt!739220)))))

(declare-fun lt!739222 () Unit!36278)

(declare-fun lemmaConcatAssociativity!1195 (List!22019 List!22019 List!22019) Unit!36278)

(assert (=> b!1928378 (= lt!739222 (lemmaConcatAssociativity!1195 lt!739236 lt!739212 lt!739204))))

(declare-fun ++!5887 (List!22019 List!22019) List!22019)

(assert (=> b!1928378 (= (++!5887 (++!5887 lt!739236 lt!739212) lt!739204) (++!5887 lt!739236 (++!5887 lt!739212 lt!739204)))))

(declare-fun lt!739234 () Unit!36278)

(assert (=> b!1928378 (= lt!739234 lt!739222)))

(declare-fun lt!739230 () List!22017)

(assert (=> b!1928378 (= lt!739230 (++!5881 (list!8871 (BalanceConc!14461 Empty!7322)) (list!8871 (charsOf!2474 (_1!11749 (v!26646 lt!739208))))))))

(declare-fun lt!739216 () List!22017)

(assert (=> b!1928378 (= lt!739216 (list!8871 (_2!11749 (v!26646 lt!739208))))))

(declare-fun lt!739205 () List!22019)

(assert (=> b!1928378 (= lt!739205 (list!8875 (append!597 (BalanceConc!14463 Empty!7323) (_1!11749 (v!26646 lt!739208)))))))

(declare-fun lt!739229 () Unit!36278)

(declare-fun lemmaLexThenLexPrefix!291 (LexerInterface!3547 List!22018 List!22017 List!22017 List!22019 List!22019 List!22017) Unit!36278)

(assert (=> b!1928378 (= lt!739229 (lemmaLexThenLexPrefix!291 thiss!23328 rules!3198 lt!739230 lt!739216 lt!739205 (list!8875 (_1!11744 lt!739220)) (list!8871 (_2!11744 lt!739220))))))

(assert (=> b!1928378 (= (lexList!951 thiss!23328 rules!3198 lt!739230) (tuple2!20555 lt!739205 Nil!21935))))

(declare-fun lt!739221 () Unit!36278)

(assert (=> b!1928378 (= lt!739221 lt!739229)))

(declare-fun lt!739206 () BalanceConc!14460)

(assert (=> b!1928378 (= lt!739206 (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (_1!11749 (v!26646 lt!739208)))))))

(declare-fun lt!739232 () Option!4546)

(assert (=> b!1928378 (= lt!739232 (maxPrefixZipperSequence!769 thiss!23328 rules!3198 lt!739206))))

(declare-fun c!313632 () Bool)

(assert (=> b!1928378 (= c!313632 ((_ is Some!4545) lt!739232))))

(declare-fun e!1232677 () tuple2!20550)

(assert (=> b!1928378 (= (lexRec!403 thiss!23328 rules!3198 (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (_1!11749 (v!26646 lt!739208))))) e!1232677)))

(declare-fun lt!739218 () Unit!36278)

(declare-fun Unit!36291 () Unit!36278)

(assert (=> b!1928378 (= lt!739218 Unit!36291)))

(assert (=> b!1928378 (= lt!739227 (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (_1!11749 (v!26646 lt!739208)))))))

(declare-fun lt!739210 () List!22017)

(assert (=> b!1928378 (= lt!739210 (list!8871 lt!739227))))

(declare-fun lt!739215 () List!22017)

(assert (=> b!1928378 (= lt!739215 (list!8871 (_2!11749 (v!26646 lt!739208))))))

(declare-fun lt!739226 () Unit!36278)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!349 (List!22017 List!22017) Unit!36278)

(assert (=> b!1928378 (= lt!739226 (lemmaConcatTwoListThenFSndIsSuffix!349 lt!739210 lt!739215))))

(declare-fun isSuffix!448 (List!22017 List!22017) Bool)

(assert (=> b!1928378 (isSuffix!448 lt!739215 (++!5881 lt!739210 lt!739215))))

(declare-fun lt!739219 () Unit!36278)

(assert (=> b!1928378 (= lt!739219 lt!739226)))

(declare-fun lt!739203 () tuple2!20550)

(declare-fun b!1928379 () Bool)

(assert (=> b!1928379 (= lt!739203 (lexRec!403 thiss!23328 rules!3198 (_2!11749 (v!26646 lt!739209))))))

(declare-fun prepend!878 (BalanceConc!14462 Token!7420) BalanceConc!14462)

(assert (=> b!1928379 (= e!1232675 (tuple2!20551 (prepend!878 (_1!11744 lt!739203) (_1!11749 (v!26646 lt!739209))) (_2!11744 lt!739203)))))

(declare-fun b!1928380 () Bool)

(assert (=> b!1928380 (= e!1232677 (tuple2!20551 (BalanceConc!14463 Empty!7323) lt!739206))))

(declare-fun b!1928381 () Bool)

(assert (=> b!1928381 (= e!1232675 (tuple2!20551 (BalanceConc!14463 Empty!7323) (seqFromList!2788 lt!738494)))))

(declare-fun d!587748 () Bool)

(declare-fun e!1232676 () Bool)

(assert (=> d!587748 e!1232676))

(declare-fun res!862263 () Bool)

(assert (=> d!587748 (=> (not res!862263) (not e!1232676))))

(declare-fun lt!739213 () tuple2!20550)

(assert (=> d!587748 (= res!862263 (= (list!8875 (_1!11744 lt!739213)) (list!8875 (_1!11744 (lexRec!403 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))))))

(assert (=> d!587748 (= lt!739213 e!1232678)))

(declare-fun c!313634 () Bool)

(assert (=> d!587748 (= c!313634 ((_ is Some!4545) lt!739208))))

(declare-fun maxPrefixZipperSequenceV2!297 (LexerInterface!3547 List!22018 BalanceConc!14460 BalanceConc!14460) Option!4546)

(assert (=> d!587748 (= lt!739208 (maxPrefixZipperSequenceV2!297 thiss!23328 rules!3198 (seqFromList!2788 lt!738494) (seqFromList!2788 lt!738494)))))

(declare-fun lt!739207 () Unit!36278)

(declare-fun lt!739233 () Unit!36278)

(assert (=> d!587748 (= lt!739207 lt!739233)))

(declare-fun lt!739228 () List!22017)

(declare-fun lt!739214 () List!22017)

(assert (=> d!587748 (isSuffix!448 lt!739228 (++!5881 lt!739214 lt!739228))))

(assert (=> d!587748 (= lt!739233 (lemmaConcatTwoListThenFSndIsSuffix!349 lt!739214 lt!739228))))

(assert (=> d!587748 (= lt!739228 (list!8871 (seqFromList!2788 lt!738494)))))

(assert (=> d!587748 (= lt!739214 (list!8871 (BalanceConc!14461 Empty!7322)))))

(assert (=> d!587748 (= (lexTailRecV2!674 thiss!23328 rules!3198 (seqFromList!2788 lt!738494) (BalanceConc!14461 Empty!7322) (seqFromList!2788 lt!738494) (BalanceConc!14463 Empty!7323)) lt!739213)))

(declare-fun b!1928382 () Bool)

(declare-fun lt!739235 () tuple2!20550)

(assert (=> b!1928382 (= lt!739235 (lexRec!403 thiss!23328 rules!3198 (_2!11749 (v!26646 lt!739232))))))

(assert (=> b!1928382 (= e!1232677 (tuple2!20551 (prepend!878 (_1!11744 lt!739235) (_1!11749 (v!26646 lt!739232))) (_2!11744 lt!739235)))))

(declare-fun b!1928383 () Bool)

(assert (=> b!1928383 (= e!1232676 (= (list!8871 (_2!11744 lt!739213)) (list!8871 (_2!11744 (lexRec!403 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))))))

(declare-fun b!1928384 () Bool)

(assert (=> b!1928384 (= e!1232678 (tuple2!20551 (BalanceConc!14463 Empty!7323) (seqFromList!2788 lt!738494)))))

(assert (= (and d!587748 c!313634) b!1928378))

(assert (= (and d!587748 (not c!313634)) b!1928384))

(assert (= (and b!1928378 c!313633) b!1928379))

(assert (= (and b!1928378 (not c!313633)) b!1928381))

(assert (= (and b!1928378 c!313632) b!1928382))

(assert (= (and b!1928378 (not c!313632)) b!1928380))

(assert (= (and d!587748 res!862263) b!1928383))

(declare-fun m!2365203 () Bool)

(assert (=> b!1928382 m!2365203))

(declare-fun m!2365205 () Bool)

(assert (=> b!1928382 m!2365205))

(declare-fun m!2365207 () Bool)

(assert (=> b!1928378 m!2365207))

(assert (=> b!1928378 m!2362999))

(declare-fun m!2365209 () Bool)

(assert (=> b!1928378 m!2365209))

(declare-fun m!2365211 () Bool)

(assert (=> b!1928378 m!2365211))

(declare-fun m!2365213 () Bool)

(assert (=> b!1928378 m!2365213))

(assert (=> b!1928378 m!2365209))

(assert (=> b!1928378 m!2365213))

(declare-fun m!2365215 () Bool)

(assert (=> b!1928378 m!2365215))

(declare-fun m!2365217 () Bool)

(assert (=> b!1928378 m!2365217))

(assert (=> b!1928378 m!2365215))

(declare-fun m!2365219 () Bool)

(assert (=> b!1928378 m!2365219))

(declare-fun m!2365221 () Bool)

(assert (=> b!1928378 m!2365221))

(assert (=> b!1928378 m!2362999))

(declare-fun m!2365223 () Bool)

(assert (=> b!1928378 m!2365223))

(assert (=> b!1928378 m!2365219))

(declare-fun m!2365225 () Bool)

(assert (=> b!1928378 m!2365225))

(declare-fun m!2365227 () Bool)

(assert (=> b!1928378 m!2365227))

(assert (=> b!1928378 m!2363521))

(declare-fun m!2365229 () Bool)

(assert (=> b!1928378 m!2365229))

(declare-fun m!2365231 () Bool)

(assert (=> b!1928378 m!2365231))

(assert (=> b!1928378 m!2365227))

(declare-fun m!2365233 () Bool)

(assert (=> b!1928378 m!2365233))

(declare-fun m!2365235 () Bool)

(assert (=> b!1928378 m!2365235))

(declare-fun m!2365237 () Bool)

(assert (=> b!1928378 m!2365237))

(declare-fun m!2365239 () Bool)

(assert (=> b!1928378 m!2365239))

(declare-fun m!2365241 () Bool)

(assert (=> b!1928378 m!2365241))

(declare-fun m!2365243 () Bool)

(assert (=> b!1928378 m!2365243))

(declare-fun m!2365245 () Bool)

(assert (=> b!1928378 m!2365245))

(declare-fun m!2365247 () Bool)

(assert (=> b!1928378 m!2365247))

(assert (=> b!1928378 m!2365245))

(declare-fun m!2365249 () Bool)

(assert (=> b!1928378 m!2365249))

(assert (=> b!1928378 m!2363521))

(assert (=> b!1928378 m!2365209))

(declare-fun m!2365251 () Bool)

(assert (=> b!1928378 m!2365251))

(declare-fun m!2365253 () Bool)

(assert (=> b!1928378 m!2365253))

(assert (=> b!1928378 m!2365207))

(declare-fun m!2365255 () Bool)

(assert (=> b!1928378 m!2365255))

(declare-fun m!2365257 () Bool)

(assert (=> b!1928378 m!2365257))

(declare-fun m!2365259 () Bool)

(assert (=> b!1928378 m!2365259))

(assert (=> b!1928378 m!2362999))

(declare-fun m!2365261 () Bool)

(assert (=> b!1928378 m!2365261))

(declare-fun m!2365263 () Bool)

(assert (=> b!1928378 m!2365263))

(declare-fun m!2365265 () Bool)

(assert (=> b!1928378 m!2365265))

(assert (=> b!1928378 m!2365233))

(declare-fun m!2365267 () Bool)

(assert (=> b!1928378 m!2365267))

(assert (=> b!1928378 m!2365237))

(declare-fun m!2365269 () Bool)

(assert (=> b!1928378 m!2365269))

(assert (=> b!1928378 m!2365263))

(assert (=> b!1928378 m!2365227))

(assert (=> b!1928378 m!2365229))

(declare-fun m!2365271 () Bool)

(assert (=> d!587748 m!2365271))

(assert (=> d!587748 m!2362999))

(assert (=> d!587748 m!2365223))

(declare-fun m!2365273 () Bool)

(assert (=> d!587748 m!2365273))

(declare-fun m!2365275 () Bool)

(assert (=> d!587748 m!2365275))

(assert (=> d!587748 m!2363521))

(declare-fun m!2365277 () Bool)

(assert (=> d!587748 m!2365277))

(assert (=> d!587748 m!2362999))

(assert (=> d!587748 m!2363989))

(assert (=> d!587748 m!2362999))

(assert (=> d!587748 m!2362999))

(declare-fun m!2365279 () Bool)

(assert (=> d!587748 m!2365279))

(assert (=> d!587748 m!2365273))

(declare-fun m!2365281 () Bool)

(assert (=> d!587748 m!2365281))

(declare-fun m!2365283 () Bool)

(assert (=> b!1928379 m!2365283))

(declare-fun m!2365285 () Bool)

(assert (=> b!1928379 m!2365285))

(declare-fun m!2365287 () Bool)

(assert (=> b!1928383 m!2365287))

(assert (=> b!1928383 m!2362999))

(assert (=> b!1928383 m!2365223))

(declare-fun m!2365289 () Bool)

(assert (=> b!1928383 m!2365289))

(assert (=> d!587410 d!587748))

(declare-fun d!587844 () Bool)

(declare-fun lt!739237 () Int)

(assert (=> d!587844 (= lt!739237 (size!17115 (list!8875 (_1!11744 lt!738742))))))

(assert (=> d!587844 (= lt!739237 (size!17116 (c!313266 (_1!11744 lt!738742))))))

(assert (=> d!587844 (= (size!17113 (_1!11744 lt!738742)) lt!739237)))

(declare-fun bs!414780 () Bool)

(assert (= bs!414780 d!587844))

(declare-fun m!2365291 () Bool)

(assert (=> bs!414780 m!2365291))

(assert (=> bs!414780 m!2365291))

(declare-fun m!2365293 () Bool)

(assert (=> bs!414780 m!2365293))

(declare-fun m!2365295 () Bool)

(assert (=> bs!414780 m!2365295))

(assert (=> d!587350 d!587844))

(declare-fun b!1928385 () Bool)

(declare-fun res!862264 () Bool)

(declare-fun e!1232680 () Bool)

(assert (=> b!1928385 (=> (not res!862264) (not e!1232680))))

(declare-fun lt!739238 () tuple2!20550)

(assert (=> b!1928385 (= res!862264 (= (list!8875 (_1!11744 lt!739238)) (_1!11746 (lexList!951 thiss!23328 rules!3198 (list!8871 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))))))))))

(declare-fun b!1928386 () Bool)

(declare-fun e!1232681 () Bool)

(declare-fun e!1232679 () Bool)

(assert (=> b!1928386 (= e!1232681 e!1232679)))

(declare-fun res!862265 () Bool)

(assert (=> b!1928386 (= res!862265 (< (size!17114 (_2!11744 lt!739238)) (size!17114 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))))))))

(assert (=> b!1928386 (=> (not res!862265) (not e!1232679))))

(declare-fun b!1928387 () Bool)

(assert (=> b!1928387 (= e!1232679 (not (isEmpty!13508 (_1!11744 lt!739238))))))

(declare-fun b!1928388 () Bool)

(assert (=> b!1928388 (= e!1232681 (= (_2!11744 lt!739238) (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598)))))))

(declare-fun b!1928389 () Bool)

(assert (=> b!1928389 (= e!1232680 (= (list!8871 (_2!11744 lt!739238)) (_2!11746 (lexList!951 thiss!23328 rules!3198 (list!8871 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))))))))))

(declare-fun d!587846 () Bool)

(assert (=> d!587846 e!1232680))

(declare-fun res!862266 () Bool)

(assert (=> d!587846 (=> (not res!862266) (not e!1232680))))

(assert (=> d!587846 (= res!862266 e!1232681)))

(declare-fun c!313635 () Bool)

(assert (=> d!587846 (= c!313635 (> (size!17113 (_1!11744 lt!739238)) 0))))

(assert (=> d!587846 (= lt!739238 (lexTailRecV2!674 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))) (BalanceConc!14461 Empty!7322) (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))) (BalanceConc!14463 Empty!7323)))))

(assert (=> d!587846 (= (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598)))) lt!739238)))

(assert (= (and d!587846 c!313635) b!1928386))

(assert (= (and d!587846 (not c!313635)) b!1928388))

(assert (= (and b!1928386 res!862265) b!1928387))

(assert (= (and d!587846 res!862266) b!1928385))

(assert (= (and b!1928385 res!862264) b!1928389))

(declare-fun m!2365297 () Bool)

(assert (=> b!1928385 m!2365297))

(assert (=> b!1928385 m!2363801))

(declare-fun m!2365299 () Bool)

(assert (=> b!1928385 m!2365299))

(assert (=> b!1928385 m!2365299))

(declare-fun m!2365301 () Bool)

(assert (=> b!1928385 m!2365301))

(declare-fun m!2365303 () Bool)

(assert (=> b!1928387 m!2365303))

(declare-fun m!2365305 () Bool)

(assert (=> b!1928389 m!2365305))

(assert (=> b!1928389 m!2363801))

(assert (=> b!1928389 m!2365299))

(assert (=> b!1928389 m!2365299))

(assert (=> b!1928389 m!2365301))

(declare-fun m!2365307 () Bool)

(assert (=> d!587846 m!2365307))

(assert (=> d!587846 m!2363801))

(assert (=> d!587846 m!2363801))

(declare-fun m!2365309 () Bool)

(assert (=> d!587846 m!2365309))

(declare-fun m!2365311 () Bool)

(assert (=> b!1928386 m!2365311))

(assert (=> b!1928386 m!2363801))

(declare-fun m!2365313 () Bool)

(assert (=> b!1928386 m!2365313))

(assert (=> d!587350 d!587846))

(assert (=> d!587350 d!587282))

(declare-fun d!587848 () Bool)

(assert (=> d!587848 (= (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598)))))) (list!8877 (c!313266 (_1!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))))))))))

(declare-fun bs!414781 () Bool)

(assert (= bs!414781 d!587848))

(declare-fun m!2365315 () Bool)

(assert (=> bs!414781 m!2365315))

(assert (=> d!587350 d!587848))

(declare-fun d!587850 () Bool)

(declare-fun lt!739239 () BalanceConc!14460)

(assert (=> d!587850 (= (list!8871 lt!739239) (printList!1082 thiss!23328 (list!8875 (singletonSeq!1918 (h!27338 tokens!598)))))))

(assert (=> d!587850 (= lt!739239 (printTailRec!1023 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598)) 0 (BalanceConc!14461 Empty!7322)))))

(assert (=> d!587850 (= (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))) lt!739239)))

(declare-fun bs!414782 () Bool)

(assert (= bs!414782 d!587850))

(declare-fun m!2365317 () Bool)

(assert (=> bs!414782 m!2365317))

(assert (=> bs!414782 m!2363033))

(assert (=> bs!414782 m!2363809))

(assert (=> bs!414782 m!2363809))

(declare-fun m!2365319 () Bool)

(assert (=> bs!414782 m!2365319))

(assert (=> bs!414782 m!2363033))

(declare-fun m!2365321 () Bool)

(assert (=> bs!414782 m!2365321))

(assert (=> d!587350 d!587850))

(assert (=> d!587350 d!587360))

(declare-fun d!587852 () Bool)

(assert (=> d!587852 (= (list!8875 (singletonSeq!1918 (h!27338 tokens!598))) (list!8877 (c!313266 (singletonSeq!1918 (h!27338 tokens!598)))))))

(declare-fun bs!414783 () Bool)

(assert (= bs!414783 d!587852))

(declare-fun m!2365323 () Bool)

(assert (=> bs!414783 m!2365323))

(assert (=> d!587350 d!587852))

(declare-fun bs!414784 () Bool)

(declare-fun d!587854 () Bool)

(assert (= bs!414784 (and d!587854 d!587236)))

(declare-fun lambda!75221 () Int)

(assert (=> bs!414784 (= (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (= lambda!75221 lambda!75191))))

(declare-fun bs!414785 () Bool)

(assert (= bs!414785 (and d!587854 d!587488)))

(assert (=> bs!414785 (= (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (= lambda!75221 lambda!75203))))

(declare-fun bs!414786 () Bool)

(assert (= bs!414786 (and d!587854 d!587698)))

(assert (=> bs!414786 (= (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (= lambda!75221 lambda!75219))))

(assert (=> d!587854 true))

(assert (=> d!587854 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354)))) (dynLambda!10628 order!13773 lambda!75221))))

(assert (=> d!587854 (= (equivClasses!1492 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354)))) (Forall2!625 lambda!75221))))

(declare-fun bs!414787 () Bool)

(assert (= bs!414787 d!587854))

(declare-fun m!2365325 () Bool)

(assert (=> bs!414787 m!2365325))

(assert (=> b!1927587 d!587854))

(declare-fun d!587856 () Bool)

(assert (=> d!587856 (= (isEmpty!13513 lt!738640) (not ((_ is Some!4542) lt!738640)))))

(assert (=> d!587258 d!587856))

(declare-fun b!1928400 () Bool)

(declare-fun e!1232689 () Bool)

(assert (=> b!1928400 (= e!1232689 (isPrefix!1941 (tail!2979 lt!738494) (tail!2979 lt!738494)))))

(declare-fun b!1928398 () Bool)

(declare-fun e!1232688 () Bool)

(assert (=> b!1928398 (= e!1232688 e!1232689)))

(declare-fun res!862277 () Bool)

(assert (=> b!1928398 (=> (not res!862277) (not e!1232689))))

(assert (=> b!1928398 (= res!862277 (not ((_ is Nil!21935) lt!738494)))))

(declare-fun d!587858 () Bool)

(declare-fun e!1232690 () Bool)

(assert (=> d!587858 e!1232690))

(declare-fun res!862276 () Bool)

(assert (=> d!587858 (=> res!862276 e!1232690)))

(declare-fun lt!739242 () Bool)

(assert (=> d!587858 (= res!862276 (not lt!739242))))

(assert (=> d!587858 (= lt!739242 e!1232688)))

(declare-fun res!862278 () Bool)

(assert (=> d!587858 (=> res!862278 e!1232688)))

(assert (=> d!587858 (= res!862278 ((_ is Nil!21935) lt!738494))))

(assert (=> d!587858 (= (isPrefix!1941 lt!738494 lt!738494) lt!739242)))

(declare-fun b!1928401 () Bool)

(assert (=> b!1928401 (= e!1232690 (>= (size!17110 lt!738494) (size!17110 lt!738494)))))

(declare-fun b!1928399 () Bool)

(declare-fun res!862275 () Bool)

(assert (=> b!1928399 (=> (not res!862275) (not e!1232689))))

(assert (=> b!1928399 (= res!862275 (= (head!4494 lt!738494) (head!4494 lt!738494)))))

(assert (= (and d!587858 (not res!862278)) b!1928398))

(assert (= (and b!1928398 res!862277) b!1928399))

(assert (= (and b!1928399 res!862275) b!1928400))

(assert (= (and d!587858 (not res!862276)) b!1928401))

(assert (=> b!1928400 m!2363145))

(assert (=> b!1928400 m!2363145))

(assert (=> b!1928400 m!2363145))

(assert (=> b!1928400 m!2363145))

(declare-fun m!2365327 () Bool)

(assert (=> b!1928400 m!2365327))

(assert (=> b!1928401 m!2363433))

(assert (=> b!1928401 m!2363433))

(assert (=> b!1928399 m!2363141))

(assert (=> b!1928399 m!2363141))

(assert (=> d!587258 d!587858))

(declare-fun d!587860 () Bool)

(assert (=> d!587860 (isPrefix!1941 lt!738494 lt!738494)))

(declare-fun lt!739245 () Unit!36278)

(declare-fun choose!11981 (List!22017 List!22017) Unit!36278)

(assert (=> d!587860 (= lt!739245 (choose!11981 lt!738494 lt!738494))))

(assert (=> d!587860 (= (lemmaIsPrefixRefl!1259 lt!738494 lt!738494) lt!739245)))

(declare-fun bs!414788 () Bool)

(assert (= bs!414788 d!587860))

(assert (=> bs!414788 m!2363465))

(declare-fun m!2365329 () Bool)

(assert (=> bs!414788 m!2365329))

(assert (=> d!587258 d!587860))

(declare-fun d!587862 () Bool)

(assert (=> d!587862 true))

(declare-fun lt!739248 () Bool)

(declare-fun lambda!75224 () Int)

(declare-fun forall!4638 (List!22018 Int) Bool)

(assert (=> d!587862 (= lt!739248 (forall!4638 rules!3198 lambda!75224))))

(declare-fun e!1232695 () Bool)

(assert (=> d!587862 (= lt!739248 e!1232695)))

(declare-fun res!862283 () Bool)

(assert (=> d!587862 (=> res!862283 e!1232695)))

(assert (=> d!587862 (= res!862283 (not ((_ is Cons!21936) rules!3198)))))

(assert (=> d!587862 (= (rulesValidInductive!1340 thiss!23328 rules!3198) lt!739248)))

(declare-fun b!1928406 () Bool)

(declare-fun e!1232696 () Bool)

(assert (=> b!1928406 (= e!1232695 e!1232696)))

(declare-fun res!862284 () Bool)

(assert (=> b!1928406 (=> (not res!862284) (not e!1232696))))

(assert (=> b!1928406 (= res!862284 (ruleValid!1194 thiss!23328 (h!27337 rules!3198)))))

(declare-fun b!1928407 () Bool)

(assert (=> b!1928407 (= e!1232696 (rulesValidInductive!1340 thiss!23328 (t!179567 rules!3198)))))

(assert (= (and d!587862 (not res!862283)) b!1928406))

(assert (= (and b!1928406 res!862284) b!1928407))

(declare-fun m!2365331 () Bool)

(assert (=> d!587862 m!2365331))

(assert (=> b!1928406 m!2364547))

(declare-fun m!2365333 () Bool)

(assert (=> b!1928407 m!2365333))

(assert (=> d!587258 d!587862))

(declare-fun d!587864 () Bool)

(declare-fun c!313636 () Bool)

(assert (=> d!587864 (= c!313636 ((_ is Nil!21935) lt!738682))))

(declare-fun e!1232697 () (InoxSet C!10864))

(assert (=> d!587864 (= (content!3171 lt!738682) e!1232697)))

(declare-fun b!1928410 () Bool)

(assert (=> b!1928410 (= e!1232697 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1928411 () Bool)

(assert (=> b!1928411 (= e!1232697 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 lt!738682) true) (content!3171 (t!179566 lt!738682))))))

(assert (= (and d!587864 c!313636) b!1928410))

(assert (= (and d!587864 (not c!313636)) b!1928411))

(declare-fun m!2365335 () Bool)

(assert (=> b!1928411 m!2365335))

(declare-fun m!2365337 () Bool)

(assert (=> b!1928411 m!2365337))

(assert (=> d!587284 d!587864))

(assert (=> d!587284 d!587502))

(declare-fun d!587866 () Bool)

(declare-fun c!313637 () Bool)

(assert (=> d!587866 (= c!313637 ((_ is Nil!21935) lt!738500))))

(declare-fun e!1232698 () (InoxSet C!10864))

(assert (=> d!587866 (= (content!3171 lt!738500) e!1232698)))

(declare-fun b!1928412 () Bool)

(assert (=> b!1928412 (= e!1232698 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1928413 () Bool)

(assert (=> b!1928413 (= e!1232698 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 lt!738500) true) (content!3171 (t!179566 lt!738500))))))

(assert (= (and d!587866 c!313637) b!1928412))

(assert (= (and d!587866 (not c!313637)) b!1928413))

(declare-fun m!2365339 () Bool)

(assert (=> b!1928413 m!2365339))

(declare-fun m!2365341 () Bool)

(assert (=> b!1928413 m!2365341))

(assert (=> d!587284 d!587866))

(declare-fun b!1928440 () Bool)

(declare-fun e!1232711 () Bool)

(declare-fun e!1232712 () Bool)

(assert (=> b!1928440 (= e!1232711 e!1232712)))

(declare-fun res!862312 () Bool)

(assert (=> b!1928440 (=> (not res!862312) (not e!1232712))))

(declare-fun height!1109 (Conc!7323) Int)

(assert (=> b!1928440 (= res!862312 (<= (- 1) (- (height!1109 (left!17448 (c!313266 lt!738680))) (height!1109 (right!17778 (c!313266 lt!738680))))))))

(declare-fun d!587868 () Bool)

(declare-fun res!862307 () Bool)

(assert (=> d!587868 (=> res!862307 e!1232711)))

(assert (=> d!587868 (= res!862307 (not ((_ is Node!7323) (c!313266 lt!738680))))))

(assert (=> d!587868 (= (isBalanced!2259 (c!313266 lt!738680)) e!1232711)))

(declare-fun b!1928441 () Bool)

(declare-fun res!862311 () Bool)

(assert (=> b!1928441 (=> (not res!862311) (not e!1232712))))

(assert (=> b!1928441 (= res!862311 (isBalanced!2259 (left!17448 (c!313266 lt!738680))))))

(declare-fun b!1928442 () Bool)

(declare-fun res!862308 () Bool)

(assert (=> b!1928442 (=> (not res!862308) (not e!1232712))))

(assert (=> b!1928442 (= res!862308 (isBalanced!2259 (right!17778 (c!313266 lt!738680))))))

(declare-fun b!1928443 () Bool)

(declare-fun res!862310 () Bool)

(assert (=> b!1928443 (=> (not res!862310) (not e!1232712))))

(assert (=> b!1928443 (= res!862310 (not (isEmpty!13520 (left!17448 (c!313266 lt!738680)))))))

(declare-fun b!1928444 () Bool)

(assert (=> b!1928444 (= e!1232712 (not (isEmpty!13520 (right!17778 (c!313266 lt!738680)))))))

(declare-fun b!1928445 () Bool)

(declare-fun res!862309 () Bool)

(assert (=> b!1928445 (=> (not res!862309) (not e!1232712))))

(assert (=> b!1928445 (= res!862309 (<= (- (height!1109 (left!17448 (c!313266 lt!738680))) (height!1109 (right!17778 (c!313266 lt!738680)))) 1))))

(assert (= (and d!587868 (not res!862307)) b!1928440))

(assert (= (and b!1928440 res!862312) b!1928445))

(assert (= (and b!1928445 res!862309) b!1928441))

(assert (= (and b!1928441 res!862311) b!1928442))

(assert (= (and b!1928442 res!862308) b!1928443))

(assert (= (and b!1928443 res!862310) b!1928444))

(declare-fun m!2365343 () Bool)

(assert (=> b!1928444 m!2365343))

(declare-fun m!2365345 () Bool)

(assert (=> b!1928443 m!2365345))

(declare-fun m!2365347 () Bool)

(assert (=> b!1928441 m!2365347))

(declare-fun m!2365349 () Bool)

(assert (=> b!1928440 m!2365349))

(declare-fun m!2365351 () Bool)

(assert (=> b!1928440 m!2365351))

(assert (=> b!1928445 m!2365349))

(assert (=> b!1928445 m!2365351))

(declare-fun m!2365353 () Bool)

(assert (=> b!1928442 m!2365353))

(assert (=> b!1927240 d!587868))

(declare-fun d!587870 () Bool)

(declare-fun res!862317 () Bool)

(declare-fun e!1232713 () Bool)

(assert (=> d!587870 (=> res!862317 e!1232713)))

(assert (=> d!587870 (= res!862317 (not ((_ is Cons!21936) (t!179567 rules!3198))))))

(assert (=> d!587870 (= (sepAndNonSepRulesDisjointChars!1032 rules!3198 (t!179567 rules!3198)) e!1232713)))

(declare-fun b!1928450 () Bool)

(declare-fun e!1232714 () Bool)

(assert (=> b!1928450 (= e!1232713 e!1232714)))

(declare-fun res!862318 () Bool)

(assert (=> b!1928450 (=> (not res!862318) (not e!1232714))))

(assert (=> b!1928450 (= res!862318 (ruleDisjointCharsFromAllFromOtherType!449 (h!27337 (t!179567 rules!3198)) rules!3198))))

(declare-fun b!1928451 () Bool)

(assert (=> b!1928451 (= e!1232714 (sepAndNonSepRulesDisjointChars!1032 rules!3198 (t!179567 (t!179567 rules!3198))))))

(assert (= (and d!587870 (not res!862317)) b!1928450))

(assert (= (and b!1928450 res!862318) b!1928451))

(declare-fun m!2365355 () Bool)

(assert (=> b!1928450 m!2365355))

(declare-fun m!2365357 () Bool)

(assert (=> b!1928451 m!2365357))

(assert (=> b!1927617 d!587870))

(declare-fun bm!118603 () Bool)

(declare-fun call!118609 () List!22017)

(declare-fun call!118611 () List!22017)

(assert (=> bm!118603 (= call!118609 call!118611)))

(declare-fun c!313642 () Bool)

(declare-fun bm!118604 () Bool)

(declare-fun c!313643 () Bool)

(assert (=> bm!118604 (= call!118611 (usedCharacters!386 (ite c!313643 (reg!5688 (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) (ite c!313642 (regOne!11231 (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) (regTwo!11230 (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))))))

(declare-fun b!1928452 () Bool)

(declare-fun e!1232715 () List!22017)

(declare-fun e!1232718 () List!22017)

(assert (=> b!1928452 (= e!1232715 e!1232718)))

(declare-fun c!313640 () Bool)

(assert (=> b!1928452 (= c!313640 ((_ is ElementMatch!5359) (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))))))

(declare-fun b!1928453 () Bool)

(assert (=> b!1928453 (= e!1232715 Nil!21935)))

(declare-fun d!587872 () Bool)

(declare-fun c!313641 () Bool)

(assert (=> d!587872 (= c!313641 (or ((_ is EmptyExpr!5359) (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) ((_ is EmptyLang!5359) (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))))

(assert (=> d!587872 (= (usedCharacters!386 (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) e!1232715)))

(declare-fun b!1928454 () Bool)

(assert (=> b!1928454 (= c!313643 ((_ is Star!5359) (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))))))

(declare-fun e!1232716 () List!22017)

(assert (=> b!1928454 (= e!1232718 e!1232716)))

(declare-fun bm!118605 () Bool)

(declare-fun call!118610 () List!22017)

(assert (=> bm!118605 (= call!118610 (usedCharacters!386 (ite c!313642 (regTwo!11231 (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) (regOne!11230 (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))))))))

(declare-fun b!1928455 () Bool)

(declare-fun e!1232717 () List!22017)

(declare-fun call!118608 () List!22017)

(assert (=> b!1928455 (= e!1232717 call!118608)))

(declare-fun b!1928456 () Bool)

(assert (=> b!1928456 (= e!1232716 e!1232717)))

(assert (=> b!1928456 (= c!313642 ((_ is Union!5359) (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))))))

(declare-fun b!1928457 () Bool)

(assert (=> b!1928457 (= e!1232716 call!118611)))

(declare-fun bm!118606 () Bool)

(assert (=> bm!118606 (= call!118608 (++!5881 (ite c!313642 call!118609 call!118610) (ite c!313642 call!118610 call!118609)))))

(declare-fun b!1928458 () Bool)

(assert (=> b!1928458 (= e!1232718 (Cons!21935 (c!313265 (ite c!313354 (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) Nil!21935))))

(declare-fun b!1928459 () Bool)

(assert (=> b!1928459 (= e!1232717 call!118608)))

(assert (= (and d!587872 c!313641) b!1928453))

(assert (= (and d!587872 (not c!313641)) b!1928452))

(assert (= (and b!1928452 c!313640) b!1928458))

(assert (= (and b!1928452 (not c!313640)) b!1928454))

(assert (= (and b!1928454 c!313643) b!1928457))

(assert (= (and b!1928454 (not c!313643)) b!1928456))

(assert (= (and b!1928456 c!313642) b!1928459))

(assert (= (and b!1928456 (not c!313642)) b!1928455))

(assert (= (or b!1928459 b!1928455) bm!118603))

(assert (= (or b!1928459 b!1928455) bm!118605))

(assert (= (or b!1928459 b!1928455) bm!118606))

(assert (= (or b!1928457 bm!118603) bm!118604))

(declare-fun m!2365359 () Bool)

(assert (=> bm!118604 m!2365359))

(declare-fun m!2365361 () Bool)

(assert (=> bm!118605 m!2365361))

(declare-fun m!2365363 () Bool)

(assert (=> bm!118606 m!2365363))

(assert (=> bm!118505 d!587872))

(declare-fun b!1928460 () Bool)

(declare-fun e!1232721 () Bool)

(declare-fun e!1232720 () Bool)

(assert (=> b!1928460 (= e!1232721 e!1232720)))

(declare-fun res!862326 () Bool)

(assert (=> b!1928460 (=> (not res!862326) (not e!1232720))))

(declare-fun lt!739259 () Bool)

(assert (=> b!1928460 (= res!862326 (not lt!739259))))

(declare-fun b!1928461 () Bool)

(declare-fun e!1232722 () Bool)

(assert (=> b!1928461 (= e!1232722 (matchR!2627 (derivativeStep!1367 (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500)) (head!4494 (tail!2979 lt!738500))) (tail!2979 (tail!2979 lt!738500))))))

(declare-fun b!1928462 () Bool)

(declare-fun e!1232724 () Bool)

(assert (=> b!1928462 (= e!1232724 (= (head!4494 (tail!2979 lt!738500)) (c!313265 (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500)))))))

(declare-fun b!1928463 () Bool)

(declare-fun res!862322 () Bool)

(assert (=> b!1928463 (=> (not res!862322) (not e!1232724))))

(assert (=> b!1928463 (= res!862322 (isEmpty!13510 (tail!2979 (tail!2979 lt!738500))))))

(declare-fun b!1928464 () Bool)

(declare-fun res!862320 () Bool)

(declare-fun e!1232719 () Bool)

(assert (=> b!1928464 (=> res!862320 e!1232719)))

(assert (=> b!1928464 (= res!862320 (not (isEmpty!13510 (tail!2979 (tail!2979 lt!738500)))))))

(declare-fun b!1928465 () Bool)

(assert (=> b!1928465 (= e!1232720 e!1232719)))

(declare-fun res!862321 () Bool)

(assert (=> b!1928465 (=> res!862321 e!1232719)))

(declare-fun call!118612 () Bool)

(assert (=> b!1928465 (= res!862321 call!118612)))

(declare-fun b!1928466 () Bool)

(declare-fun res!862319 () Bool)

(assert (=> b!1928466 (=> res!862319 e!1232721)))

(assert (=> b!1928466 (= res!862319 e!1232724)))

(declare-fun res!862325 () Bool)

(assert (=> b!1928466 (=> (not res!862325) (not e!1232724))))

(assert (=> b!1928466 (= res!862325 lt!739259)))

(declare-fun b!1928467 () Bool)

(assert (=> b!1928467 (= e!1232719 (not (= (head!4494 (tail!2979 lt!738500)) (c!313265 (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500))))))))

(declare-fun b!1928468 () Bool)

(declare-fun res!862323 () Bool)

(assert (=> b!1928468 (=> (not res!862323) (not e!1232724))))

(assert (=> b!1928468 (= res!862323 (not call!118612))))

(declare-fun b!1928469 () Bool)

(declare-fun res!862324 () Bool)

(assert (=> b!1928469 (=> res!862324 e!1232721)))

(assert (=> b!1928469 (= res!862324 (not ((_ is ElementMatch!5359) (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500)))))))

(declare-fun e!1232725 () Bool)

(assert (=> b!1928469 (= e!1232725 e!1232721)))

(declare-fun b!1928470 () Bool)

(declare-fun e!1232723 () Bool)

(assert (=> b!1928470 (= e!1232723 (= lt!739259 call!118612))))

(declare-fun b!1928471 () Bool)

(assert (=> b!1928471 (= e!1232723 e!1232725)))

(declare-fun c!313646 () Bool)

(assert (=> b!1928471 (= c!313646 ((_ is EmptyLang!5359) (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500))))))

(declare-fun b!1928472 () Bool)

(assert (=> b!1928472 (= e!1232725 (not lt!739259))))

(declare-fun b!1928473 () Bool)

(assert (=> b!1928473 (= e!1232722 (nullable!1608 (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500))))))

(declare-fun bm!118607 () Bool)

(assert (=> bm!118607 (= call!118612 (isEmpty!13510 (tail!2979 lt!738500)))))

(declare-fun d!587874 () Bool)

(assert (=> d!587874 e!1232723))

(declare-fun c!313644 () Bool)

(assert (=> d!587874 (= c!313644 ((_ is EmptyExpr!5359) (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500))))))

(assert (=> d!587874 (= lt!739259 e!1232722)))

(declare-fun c!313645 () Bool)

(assert (=> d!587874 (= c!313645 (isEmpty!13510 (tail!2979 lt!738500)))))

(assert (=> d!587874 (validRegex!2134 (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500)))))

(assert (=> d!587874 (= (matchR!2627 (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500)) (tail!2979 lt!738500)) lt!739259)))

(assert (= (and d!587874 c!313645) b!1928473))

(assert (= (and d!587874 (not c!313645)) b!1928461))

(assert (= (and d!587874 c!313644) b!1928470))

(assert (= (and d!587874 (not c!313644)) b!1928471))

(assert (= (and b!1928471 c!313646) b!1928472))

(assert (= (and b!1928471 (not c!313646)) b!1928469))

(assert (= (and b!1928469 (not res!862324)) b!1928466))

(assert (= (and b!1928466 res!862325) b!1928468))

(assert (= (and b!1928468 res!862323) b!1928463))

(assert (= (and b!1928463 res!862322) b!1928462))

(assert (= (and b!1928466 (not res!862319)) b!1928460))

(assert (= (and b!1928460 res!862326) b!1928465))

(assert (= (and b!1928465 (not res!862321)) b!1928464))

(assert (= (and b!1928464 (not res!862320)) b!1928467))

(assert (= (or b!1928470 b!1928465 b!1928468) bm!118607))

(assert (=> b!1928467 m!2363829))

(assert (=> b!1928467 m!2364653))

(assert (=> b!1928461 m!2363829))

(assert (=> b!1928461 m!2364653))

(assert (=> b!1928461 m!2363827))

(assert (=> b!1928461 m!2364653))

(declare-fun m!2365365 () Bool)

(assert (=> b!1928461 m!2365365))

(assert (=> b!1928461 m!2363829))

(assert (=> b!1928461 m!2364657))

(assert (=> b!1928461 m!2365365))

(assert (=> b!1928461 m!2364657))

(declare-fun m!2365367 () Bool)

(assert (=> b!1928461 m!2365367))

(assert (=> b!1928464 m!2363829))

(assert (=> b!1928464 m!2364657))

(assert (=> b!1928464 m!2364657))

(assert (=> b!1928464 m!2364661))

(assert (=> b!1928463 m!2363829))

(assert (=> b!1928463 m!2364657))

(assert (=> b!1928463 m!2364657))

(assert (=> b!1928463 m!2364661))

(assert (=> b!1928473 m!2363827))

(declare-fun m!2365369 () Bool)

(assert (=> b!1928473 m!2365369))

(assert (=> b!1928462 m!2363829))

(assert (=> b!1928462 m!2364653))

(assert (=> bm!118607 m!2363829))

(assert (=> bm!118607 m!2363833))

(assert (=> d!587874 m!2363829))

(assert (=> d!587874 m!2363833))

(assert (=> d!587874 m!2363827))

(declare-fun m!2365371 () Bool)

(assert (=> d!587874 m!2365371))

(assert (=> b!1927390 d!587874))

(declare-fun b!1928474 () Bool)

(declare-fun e!1232726 () Regex!5359)

(declare-fun call!118616 () Regex!5359)

(declare-fun call!118614 () Regex!5359)

(assert (=> b!1928474 (= e!1232726 (Union!5359 call!118616 call!118614))))

(declare-fun b!1928475 () Bool)

(declare-fun c!313650 () Bool)

(assert (=> b!1928475 (= c!313650 ((_ is Union!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun e!1232728 () Regex!5359)

(assert (=> b!1928475 (= e!1232728 e!1232726)))

(declare-fun b!1928476 () Bool)

(declare-fun e!1232729 () Regex!5359)

(assert (=> b!1928476 (= e!1232729 EmptyLang!5359)))

(declare-fun b!1928477 () Bool)

(declare-fun c!313649 () Bool)

(assert (=> b!1928477 (= c!313649 (nullable!1608 (regOne!11230 (regex!3934 (rule!6139 separatorToken!354)))))))

(declare-fun e!1232730 () Regex!5359)

(declare-fun e!1232727 () Regex!5359)

(assert (=> b!1928477 (= e!1232730 e!1232727)))

(declare-fun b!1928478 () Bool)

(assert (=> b!1928478 (= e!1232729 e!1232728)))

(declare-fun c!313651 () Bool)

(assert (=> b!1928478 (= c!313651 ((_ is ElementMatch!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun c!313647 () Bool)

(declare-fun bm!118608 () Bool)

(assert (=> bm!118608 (= call!118616 (derivativeStep!1367 (ite c!313650 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313647 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313649 (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354)))))) (head!4494 lt!738500)))))

(declare-fun bm!118609 () Bool)

(declare-fun call!118613 () Regex!5359)

(declare-fun call!118615 () Regex!5359)

(assert (=> bm!118609 (= call!118613 call!118615)))

(declare-fun b!1928479 () Bool)

(assert (=> b!1928479 (= e!1232726 e!1232730)))

(assert (=> b!1928479 (= c!313647 ((_ is Star!5359) (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun d!587876 () Bool)

(declare-fun lt!739260 () Regex!5359)

(assert (=> d!587876 (validRegex!2134 lt!739260)))

(assert (=> d!587876 (= lt!739260 e!1232729)))

(declare-fun c!313648 () Bool)

(assert (=> d!587876 (= c!313648 (or ((_ is EmptyExpr!5359) (regex!3934 (rule!6139 separatorToken!354))) ((_ is EmptyLang!5359) (regex!3934 (rule!6139 separatorToken!354)))))))

(assert (=> d!587876 (validRegex!2134 (regex!3934 (rule!6139 separatorToken!354)))))

(assert (=> d!587876 (= (derivativeStep!1367 (regex!3934 (rule!6139 separatorToken!354)) (head!4494 lt!738500)) lt!739260)))

(declare-fun b!1928480 () Bool)

(assert (=> b!1928480 (= e!1232730 (Concat!9430 call!118615 (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun b!1928481 () Bool)

(assert (=> b!1928481 (= e!1232728 (ite (= (head!4494 lt!738500) (c!313265 (regex!3934 (rule!6139 separatorToken!354)))) EmptyExpr!5359 EmptyLang!5359))))

(declare-fun b!1928482 () Bool)

(assert (=> b!1928482 (= e!1232727 (Union!5359 (Concat!9430 call!118613 (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))) EmptyLang!5359))))

(declare-fun bm!118610 () Bool)

(assert (=> bm!118610 (= call!118614 (derivativeStep!1367 (ite c!313650 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354)))) (head!4494 lt!738500)))))

(declare-fun bm!118611 () Bool)

(assert (=> bm!118611 (= call!118615 call!118616)))

(declare-fun b!1928483 () Bool)

(assert (=> b!1928483 (= e!1232727 (Union!5359 (Concat!9430 call!118614 (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))) call!118613))))

(assert (= (and d!587876 c!313648) b!1928476))

(assert (= (and d!587876 (not c!313648)) b!1928478))

(assert (= (and b!1928478 c!313651) b!1928481))

(assert (= (and b!1928478 (not c!313651)) b!1928475))

(assert (= (and b!1928475 c!313650) b!1928474))

(assert (= (and b!1928475 (not c!313650)) b!1928479))

(assert (= (and b!1928479 c!313647) b!1928480))

(assert (= (and b!1928479 (not c!313647)) b!1928477))

(assert (= (and b!1928477 c!313649) b!1928483))

(assert (= (and b!1928477 (not c!313649)) b!1928482))

(assert (= (or b!1928483 b!1928482) bm!118609))

(assert (= (or b!1928480 bm!118609) bm!118611))

(assert (= (or b!1928474 bm!118611) bm!118608))

(assert (= (or b!1928474 b!1928483) bm!118610))

(declare-fun m!2365373 () Bool)

(assert (=> b!1928477 m!2365373))

(assert (=> bm!118608 m!2363013))

(declare-fun m!2365375 () Bool)

(assert (=> bm!118608 m!2365375))

(declare-fun m!2365377 () Bool)

(assert (=> d!587876 m!2365377))

(assert (=> d!587876 m!2363825))

(assert (=> bm!118610 m!2363013))

(declare-fun m!2365379 () Bool)

(assert (=> bm!118610 m!2365379))

(assert (=> b!1927390 d!587876))

(assert (=> b!1927390 d!587298))

(assert (=> b!1927390 d!587672))

(assert (=> b!1927169 d!587544))

(declare-fun d!587878 () Bool)

(assert (=> d!587878 (= (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738640))))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738640))))))))

(declare-fun b_lambda!63921 () Bool)

(assert (=> (not b_lambda!63921) (not d!587878)))

(declare-fun tb!118167 () Bool)

(declare-fun t!179796 () Bool)

(assert (=> (and b!1926830 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179796) tb!118167))

(declare-fun result!142758 () Bool)

(assert (=> tb!118167 (= result!142758 (inv!21 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738640)))))))))

(declare-fun m!2365381 () Bool)

(assert (=> tb!118167 m!2365381))

(assert (=> d!587878 t!179796))

(declare-fun b_and!151319 () Bool)

(assert (= b_and!151161 (and (=> t!179796 result!142758) b_and!151319)))

(declare-fun tb!118169 () Bool)

(declare-fun t!179798 () Bool)

(assert (=> (and b!1927628 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179798) tb!118169))

(declare-fun result!142760 () Bool)

(assert (= result!142760 result!142758))

(assert (=> d!587878 t!179798))

(declare-fun b_and!151321 () Bool)

(assert (= b_and!151191 (and (=> t!179798 result!142760) b_and!151321)))

(declare-fun tb!118171 () Bool)

(declare-fun t!179800 () Bool)

(assert (=> (and b!1926820 (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179800) tb!118171))

(declare-fun result!142762 () Bool)

(assert (= result!142762 result!142758))

(assert (=> d!587878 t!179800))

(declare-fun b_and!151323 () Bool)

(assert (= b_and!151163 (and (=> t!179800 result!142762) b_and!151323)))

(declare-fun t!179802 () Bool)

(declare-fun tb!118173 () Bool)

(assert (=> (and b!1926809 (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179802) tb!118173))

(declare-fun result!142764 () Bool)

(assert (= result!142764 result!142758))

(assert (=> d!587878 t!179802))

(declare-fun b_and!151325 () Bool)

(assert (= b_and!151159 (and (=> t!179802 result!142764) b_and!151325)))

(declare-fun tb!118175 () Bool)

(declare-fun t!179804 () Bool)

(assert (=> (and b!1927661 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179804) tb!118175))

(declare-fun result!142766 () Bool)

(assert (= result!142766 result!142758))

(assert (=> d!587878 t!179804))

(declare-fun b_and!151327 () Bool)

(assert (= b_and!151195 (and (=> t!179804 result!142766) b_and!151327)))

(assert (=> d!587878 m!2363471))

(declare-fun m!2365383 () Bool)

(assert (=> d!587878 m!2365383))

(assert (=> b!1927169 d!587878))

(declare-fun d!587880 () Bool)

(assert (=> d!587880 (= (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738640)))) (fromListB!1238 (originalCharacters!4741 (_1!11743 (get!6908 lt!738640)))))))

(declare-fun bs!414789 () Bool)

(assert (= bs!414789 d!587880))

(declare-fun m!2365385 () Bool)

(assert (=> bs!414789 m!2365385))

(assert (=> b!1927169 d!587880))

(declare-fun d!587882 () Bool)

(assert (=> d!587882 (= (get!6907 lt!738644) (v!26636 lt!738644))))

(assert (=> b!1927176 d!587882))

(declare-fun d!587884 () Bool)

(declare-fun e!1232737 () Bool)

(assert (=> d!587884 e!1232737))

(declare-fun res!862334 () Bool)

(assert (=> d!587884 (=> (not res!862334) (not e!1232737))))

(declare-fun lt!739266 () List!22017)

(assert (=> d!587884 (= res!862334 (= (content!3171 lt!739266) ((_ map or) (content!3171 (t!179566 (++!5881 lt!738494 lt!738500))) (content!3171 lt!738491))))))

(declare-fun e!1232736 () List!22017)

(assert (=> d!587884 (= lt!739266 e!1232736)))

(declare-fun c!313653 () Bool)

(assert (=> d!587884 (= c!313653 ((_ is Nil!21935) (t!179566 (++!5881 lt!738494 lt!738500))))))

(assert (=> d!587884 (= (++!5881 (t!179566 (++!5881 lt!738494 lt!738500)) lt!738491) lt!739266)))

(declare-fun b!1928496 () Bool)

(assert (=> b!1928496 (= e!1232737 (or (not (= lt!738491 Nil!21935)) (= lt!739266 (t!179566 (++!5881 lt!738494 lt!738500)))))))

(declare-fun b!1928495 () Bool)

(declare-fun res!862335 () Bool)

(assert (=> b!1928495 (=> (not res!862335) (not e!1232737))))

(assert (=> b!1928495 (= res!862335 (= (size!17110 lt!739266) (+ (size!17110 (t!179566 (++!5881 lt!738494 lt!738500))) (size!17110 lt!738491))))))

(declare-fun b!1928494 () Bool)

(assert (=> b!1928494 (= e!1232736 (Cons!21935 (h!27336 (t!179566 (++!5881 lt!738494 lt!738500))) (++!5881 (t!179566 (t!179566 (++!5881 lt!738494 lt!738500))) lt!738491)))))

(declare-fun b!1928493 () Bool)

(assert (=> b!1928493 (= e!1232736 lt!738491)))

(assert (= (and d!587884 c!313653) b!1928493))

(assert (= (and d!587884 (not c!313653)) b!1928494))

(assert (= (and d!587884 res!862334) b!1928495))

(assert (= (and b!1928495 res!862335) b!1928496))

(declare-fun m!2365387 () Bool)

(assert (=> d!587884 m!2365387))

(declare-fun m!2365389 () Bool)

(assert (=> d!587884 m!2365389))

(assert (=> d!587884 m!2363429))

(declare-fun m!2365391 () Bool)

(assert (=> b!1928495 m!2365391))

(declare-fun m!2365393 () Bool)

(assert (=> b!1928495 m!2365393))

(assert (=> b!1928495 m!2363435))

(declare-fun m!2365395 () Bool)

(assert (=> b!1928494 m!2365395))

(assert (=> b!1927201 d!587884))

(declare-fun d!587886 () Bool)

(assert (=> d!587886 (dynLambda!10631 lambda!75185 (h!27338 (t!179568 tokens!598)))))

(declare-fun lt!739269 () Unit!36278)

(declare-fun choose!11983 (List!22019 Int Token!7420) Unit!36278)

(assert (=> d!587886 (= lt!739269 (choose!11983 (t!179568 tokens!598) lambda!75185 (h!27338 (t!179568 tokens!598))))))

(declare-fun e!1232744 () Bool)

(assert (=> d!587886 e!1232744))

(declare-fun res!862338 () Bool)

(assert (=> d!587886 (=> (not res!862338) (not e!1232744))))

(assert (=> d!587886 (= res!862338 (forall!4636 (t!179568 tokens!598) lambda!75185))))

(assert (=> d!587886 (= (forallContained!712 (t!179568 tokens!598) lambda!75185 (h!27338 (t!179568 tokens!598))) lt!739269)))

(declare-fun b!1928507 () Bool)

(assert (=> b!1928507 (= e!1232744 (contains!3968 (t!179568 tokens!598) (h!27338 (t!179568 tokens!598))))))

(assert (= (and d!587886 res!862338) b!1928507))

(declare-fun b_lambda!63923 () Bool)

(assert (=> (not b_lambda!63923) (not d!587886)))

(declare-fun m!2365445 () Bool)

(assert (=> d!587886 m!2365445))

(declare-fun m!2365447 () Bool)

(assert (=> d!587886 m!2365447))

(declare-fun m!2365449 () Bool)

(assert (=> d!587886 m!2365449))

(declare-fun m!2365451 () Bool)

(assert (=> b!1928507 m!2365451))

(assert (=> b!1927047 d!587886))

(declare-fun d!587892 () Bool)

(declare-fun e!1232748 () Bool)

(assert (=> d!587892 e!1232748))

(declare-fun res!862341 () Bool)

(assert (=> d!587892 (=> (not res!862341) (not e!1232748))))

(declare-fun lt!739271 () List!22017)

(assert (=> d!587892 (= res!862341 (= (content!3171 lt!739271) ((_ map or) (content!3171 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598))))) (content!3171 lt!738595))))))

(declare-fun e!1232747 () List!22017)

(assert (=> d!587892 (= lt!739271 e!1232747)))

(declare-fun c!313658 () Bool)

(assert (=> d!587892 (= c!313658 ((_ is Nil!21935) (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598))))))))

(assert (=> d!587892 (= (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595) lt!739271)))

(declare-fun b!1928513 () Bool)

(assert (=> b!1928513 (= e!1232748 (or (not (= lt!738595 Nil!21935)) (= lt!739271 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))))))))

(declare-fun b!1928512 () Bool)

(declare-fun res!862342 () Bool)

(assert (=> b!1928512 (=> (not res!862342) (not e!1232748))))

(assert (=> b!1928512 (= res!862342 (= (size!17110 lt!739271) (+ (size!17110 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598))))) (size!17110 lt!738595))))))

(declare-fun b!1928511 () Bool)

(assert (=> b!1928511 (= e!1232747 (Cons!21935 (h!27336 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598))))) (++!5881 (t!179566 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598))))) lt!738595)))))

(declare-fun b!1928510 () Bool)

(assert (=> b!1928510 (= e!1232747 lt!738595)))

(assert (= (and d!587892 c!313658) b!1928510))

(assert (= (and d!587892 (not c!313658)) b!1928511))

(assert (= (and d!587892 res!862341) b!1928512))

(assert (= (and b!1928512 res!862342) b!1928513))

(declare-fun m!2365457 () Bool)

(assert (=> d!587892 m!2365457))

(assert (=> d!587892 m!2363313))

(declare-fun m!2365459 () Bool)

(assert (=> d!587892 m!2365459))

(assert (=> d!587892 m!2364163))

(declare-fun m!2365461 () Bool)

(assert (=> b!1928512 m!2365461))

(assert (=> b!1928512 m!2363313))

(declare-fun m!2365463 () Bool)

(assert (=> b!1928512 m!2365463))

(assert (=> b!1928512 m!2364169))

(declare-fun m!2365465 () Bool)

(assert (=> b!1928511 m!2365465))

(assert (=> b!1927047 d!587892))

(declare-fun d!587896 () Bool)

(declare-fun lt!739272 () BalanceConc!14460)

(assert (=> d!587896 (= (list!8871 lt!739272) (originalCharacters!4741 (h!27338 (t!179568 tokens!598))))))

(assert (=> d!587896 (= lt!739272 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (value!123710 (h!27338 (t!179568 tokens!598)))))))

(assert (=> d!587896 (= (charsOf!2474 (h!27338 (t!179568 tokens!598))) lt!739272)))

(declare-fun b_lambda!63925 () Bool)

(assert (=> (not b_lambda!63925) (not d!587896)))

(declare-fun tb!118177 () Bool)

(declare-fun t!179806 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) t!179806) tb!118177))

(declare-fun b!1928514 () Bool)

(declare-fun e!1232749 () Bool)

(declare-fun tp!550587 () Bool)

(assert (=> b!1928514 (= e!1232749 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (value!123710 (h!27338 (t!179568 tokens!598)))))) tp!550587))))

(declare-fun result!142768 () Bool)

(assert (=> tb!118177 (= result!142768 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (value!123710 (h!27338 (t!179568 tokens!598))))) e!1232749))))

(assert (= tb!118177 b!1928514))

(declare-fun m!2365469 () Bool)

(assert (=> b!1928514 m!2365469))

(declare-fun m!2365471 () Bool)

(assert (=> tb!118177 m!2365471))

(assert (=> d!587896 t!179806))

(declare-fun b_and!151329 () Bool)

(assert (= b_and!151279 (and (=> t!179806 result!142768) b_and!151329)))

(declare-fun tb!118179 () Bool)

(declare-fun t!179808 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) t!179808) tb!118179))

(declare-fun result!142770 () Bool)

(assert (= result!142770 result!142768))

(assert (=> d!587896 t!179808))

(declare-fun b_and!151331 () Bool)

(assert (= b_and!151287 (and (=> t!179808 result!142770) b_and!151331)))

(declare-fun t!179810 () Bool)

(declare-fun tb!118181 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) t!179810) tb!118181))

(declare-fun result!142772 () Bool)

(assert (= result!142772 result!142768))

(assert (=> d!587896 t!179810))

(declare-fun b_and!151333 () Bool)

(assert (= b_and!151281 (and (=> t!179810 result!142772) b_and!151333)))

(declare-fun tb!118183 () Bool)

(declare-fun t!179812 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) t!179812) tb!118183))

(declare-fun result!142774 () Bool)

(assert (= result!142774 result!142768))

(assert (=> d!587896 t!179812))

(declare-fun b_and!151335 () Bool)

(assert (= b_and!151285 (and (=> t!179812 result!142774) b_and!151335)))

(declare-fun t!179814 () Bool)

(declare-fun tb!118185 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) t!179814) tb!118185))

(declare-fun result!142776 () Bool)

(assert (= result!142776 result!142768))

(assert (=> d!587896 t!179814))

(declare-fun b_and!151337 () Bool)

(assert (= b_and!151283 (and (=> t!179814 result!142776) b_and!151337)))

(declare-fun m!2365473 () Bool)

(assert (=> d!587896 m!2365473))

(declare-fun m!2365475 () Bool)

(assert (=> d!587896 m!2365475))

(assert (=> b!1927047 d!587896))

(declare-fun b!1928516 () Bool)

(declare-fun res!862350 () Bool)

(declare-fun e!1232752 () Bool)

(assert (=> b!1928516 (=> (not res!862350) (not e!1232752))))

(declare-fun lt!739276 () Option!4543)

(assert (=> b!1928516 (= res!862350 (matchR!2627 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!739276)))) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739276))))))))

(declare-fun b!1928517 () Bool)

(assert (=> b!1928517 (= e!1232752 (contains!3967 rules!3198 (rule!6139 (_1!11743 (get!6908 lt!739276)))))))

(declare-fun bm!118616 () Bool)

(declare-fun call!118621 () Option!4543)

(assert (=> bm!118616 (= call!118621 (maxPrefixOneRule!1223 thiss!23328 (h!27337 rules!3198) (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595)))))

(declare-fun b!1928518 () Bool)

(declare-fun e!1232751 () Option!4543)

(assert (=> b!1928518 (= e!1232751 call!118621)))

(declare-fun b!1928519 () Bool)

(declare-fun lt!739277 () Option!4543)

(declare-fun lt!739275 () Option!4543)

(assert (=> b!1928519 (= e!1232751 (ite (and ((_ is None!4542) lt!739277) ((_ is None!4542) lt!739275)) None!4542 (ite ((_ is None!4542) lt!739275) lt!739277 (ite ((_ is None!4542) lt!739277) lt!739275 (ite (>= (size!17108 (_1!11743 (v!26635 lt!739277))) (size!17108 (_1!11743 (v!26635 lt!739275)))) lt!739277 lt!739275)))))))

(assert (=> b!1928519 (= lt!739277 call!118621)))

(assert (=> b!1928519 (= lt!739275 (maxPrefix!1985 thiss!23328 (t!179567 rules!3198) (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595)))))

(declare-fun b!1928520 () Bool)

(declare-fun res!862344 () Bool)

(assert (=> b!1928520 (=> (not res!862344) (not e!1232752))))

(assert (=> b!1928520 (= res!862344 (< (size!17110 (_2!11743 (get!6908 lt!739276))) (size!17110 (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595))))))

(declare-fun b!1928522 () Bool)

(declare-fun res!862348 () Bool)

(assert (=> b!1928522 (=> (not res!862348) (not e!1232752))))

(assert (=> b!1928522 (= res!862348 (= (value!123710 (_1!11743 (get!6908 lt!739276))) (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!739276)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!739276)))))))))

(declare-fun b!1928523 () Bool)

(declare-fun res!862345 () Bool)

(assert (=> b!1928523 (=> (not res!862345) (not e!1232752))))

(assert (=> b!1928523 (= res!862345 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739276)))) (_2!11743 (get!6908 lt!739276))) (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595)))))

(declare-fun b!1928524 () Bool)

(declare-fun e!1232753 () Bool)

(assert (=> b!1928524 (= e!1232753 e!1232752)))

(declare-fun res!862349 () Bool)

(assert (=> b!1928524 (=> (not res!862349) (not e!1232752))))

(assert (=> b!1928524 (= res!862349 (isDefined!3838 lt!739276))))

(declare-fun d!587904 () Bool)

(assert (=> d!587904 e!1232753))

(declare-fun res!862347 () Bool)

(assert (=> d!587904 (=> res!862347 e!1232753)))

(assert (=> d!587904 (= res!862347 (isEmpty!13513 lt!739276))))

(assert (=> d!587904 (= lt!739276 e!1232751)))

(declare-fun c!313659 () Bool)

(assert (=> d!587904 (= c!313659 (and ((_ is Cons!21936) rules!3198) ((_ is Nil!21936) (t!179567 rules!3198))))))

(declare-fun lt!739278 () Unit!36278)

(declare-fun lt!739274 () Unit!36278)

(assert (=> d!587904 (= lt!739278 lt!739274)))

(assert (=> d!587904 (isPrefix!1941 (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595) (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595))))

(assert (=> d!587904 (= lt!739274 (lemmaIsPrefixRefl!1259 (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595) (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595)))))

(assert (=> d!587904 (rulesValidInductive!1340 thiss!23328 rules!3198)))

(assert (=> d!587904 (= (maxPrefix!1985 thiss!23328 rules!3198 (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) lt!738595)) lt!739276)))

(declare-fun b!1928521 () Bool)

(declare-fun res!862346 () Bool)

(assert (=> b!1928521 (=> (not res!862346) (not e!1232752))))

(assert (=> b!1928521 (= res!862346 (= (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739276)))) (originalCharacters!4741 (_1!11743 (get!6908 lt!739276)))))))

(assert (= (and d!587904 c!313659) b!1928518))

(assert (= (and d!587904 (not c!313659)) b!1928519))

(assert (= (or b!1928518 b!1928519) bm!118616))

(assert (= (and d!587904 (not res!862347)) b!1928524))

(assert (= (and b!1928524 res!862349) b!1928521))

(assert (= (and b!1928521 res!862346) b!1928520))

(assert (= (and b!1928520 res!862344) b!1928523))

(assert (= (and b!1928523 res!862345) b!1928522))

(assert (= (and b!1928522 res!862348) b!1928516))

(assert (= (and b!1928516 res!862350) b!1928517))

(declare-fun m!2365505 () Bool)

(assert (=> b!1928520 m!2365505))

(declare-fun m!2365509 () Bool)

(assert (=> b!1928520 m!2365509))

(assert (=> b!1928520 m!2363315))

(declare-fun m!2365511 () Bool)

(assert (=> b!1928520 m!2365511))

(assert (=> bm!118616 m!2363315))

(declare-fun m!2365515 () Bool)

(assert (=> bm!118616 m!2365515))

(assert (=> b!1928523 m!2365505))

(declare-fun m!2365519 () Bool)

(assert (=> b!1928523 m!2365519))

(assert (=> b!1928523 m!2365519))

(declare-fun m!2365523 () Bool)

(assert (=> b!1928523 m!2365523))

(assert (=> b!1928523 m!2365523))

(declare-fun m!2365527 () Bool)

(assert (=> b!1928523 m!2365527))

(declare-fun m!2365529 () Bool)

(assert (=> d!587904 m!2365529))

(assert (=> d!587904 m!2363315))

(assert (=> d!587904 m!2363315))

(declare-fun m!2365531 () Bool)

(assert (=> d!587904 m!2365531))

(assert (=> d!587904 m!2363315))

(assert (=> d!587904 m!2363315))

(declare-fun m!2365537 () Bool)

(assert (=> d!587904 m!2365537))

(assert (=> d!587904 m!2363355))

(assert (=> b!1928519 m!2363315))

(declare-fun m!2365539 () Bool)

(assert (=> b!1928519 m!2365539))

(assert (=> b!1928521 m!2365505))

(assert (=> b!1928521 m!2365519))

(assert (=> b!1928521 m!2365519))

(assert (=> b!1928521 m!2365523))

(assert (=> b!1928522 m!2365505))

(declare-fun m!2365545 () Bool)

(assert (=> b!1928522 m!2365545))

(assert (=> b!1928522 m!2365545))

(declare-fun m!2365547 () Bool)

(assert (=> b!1928522 m!2365547))

(declare-fun m!2365549 () Bool)

(assert (=> b!1928524 m!2365549))

(assert (=> b!1928517 m!2365505))

(declare-fun m!2365551 () Bool)

(assert (=> b!1928517 m!2365551))

(assert (=> b!1928516 m!2365505))

(assert (=> b!1928516 m!2365519))

(assert (=> b!1928516 m!2365519))

(assert (=> b!1928516 m!2365523))

(assert (=> b!1928516 m!2365523))

(declare-fun m!2365553 () Bool)

(assert (=> b!1928516 m!2365553))

(assert (=> b!1927047 d!587904))

(declare-fun bs!414795 () Bool)

(declare-fun b!1928533 () Bool)

(assert (= bs!414795 (and b!1928533 b!1926813)))

(declare-fun lambda!75225 () Int)

(assert (=> bs!414795 (not (= lambda!75225 lambda!75173))))

(declare-fun bs!414796 () Bool)

(assert (= bs!414796 (and b!1928533 b!1927047)))

(assert (=> bs!414796 (= lambda!75225 lambda!75185)))

(declare-fun bs!414797 () Bool)

(assert (= bs!414797 (and b!1928533 d!587362)))

(assert (=> bs!414797 (= lambda!75225 lambda!75197)))

(declare-fun bs!414798 () Bool)

(assert (= bs!414798 (and b!1928533 d!587692)))

(assert (=> bs!414798 (= lambda!75225 lambda!75218)))

(declare-fun b!1928542 () Bool)

(declare-fun e!1232765 () Bool)

(assert (=> b!1928542 (= e!1232765 true)))

(declare-fun b!1928541 () Bool)

(declare-fun e!1232764 () Bool)

(assert (=> b!1928541 (= e!1232764 e!1232765)))

(declare-fun b!1928540 () Bool)

(declare-fun e!1232763 () Bool)

(assert (=> b!1928540 (= e!1232763 e!1232764)))

(assert (=> b!1928533 e!1232763))

(assert (= b!1928541 b!1928542))

(assert (= b!1928540 b!1928541))

(assert (= (and b!1928533 ((_ is Cons!21936) rules!3198)) b!1928540))

(assert (=> b!1928542 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10625 order!13769 lambda!75225))))

(assert (=> b!1928542 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10625 order!13769 lambda!75225))))

(assert (=> b!1928533 true))

(declare-fun b!1928532 () Bool)

(declare-fun e!1232762 () List!22017)

(declare-fun call!118623 () List!22017)

(assert (=> b!1928532 (= e!1232762 call!118623)))

(declare-fun e!1232760 () List!22017)

(declare-fun e!1232761 () List!22017)

(assert (=> b!1928533 (= e!1232760 e!1232761)))

(declare-fun lt!739287 () Unit!36278)

(assert (=> b!1928533 (= lt!739287 (forallContained!712 (t!179568 (t!179568 tokens!598)) lambda!75225 (h!27338 (t!179568 (t!179568 tokens!598)))))))

(declare-fun lt!739286 () List!22017)

(assert (=> b!1928533 (= lt!739286 (printWithSeparatorTokenWhenNeededList!586 thiss!23328 rules!3198 (t!179568 (t!179568 (t!179568 tokens!598))) separatorToken!354))))

(declare-fun lt!739285 () Option!4543)

(assert (=> b!1928533 (= lt!739285 (maxPrefix!1985 thiss!23328 rules!3198 (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 (t!179568 tokens!598))))) lt!739286)))))

(declare-fun c!313664 () Bool)

(assert (=> b!1928533 (= c!313664 (and ((_ is Some!4542) lt!739285) (= (_1!11743 (v!26635 lt!739285)) (h!27338 (t!179568 (t!179568 tokens!598))))))))

(declare-fun b!1928535 () Bool)

(declare-fun call!118622 () List!22017)

(assert (=> b!1928535 (= e!1232761 call!118622)))

(declare-fun bm!118617 () Bool)

(declare-fun call!118626 () BalanceConc!14460)

(declare-fun c!313662 () Bool)

(assert (=> bm!118617 (= call!118626 (charsOf!2474 (ite c!313664 (h!27338 (t!179568 (t!179568 tokens!598))) (ite c!313662 separatorToken!354 (h!27338 (t!179568 (t!179568 tokens!598)))))))))

(declare-fun b!1928536 () Bool)

(assert (=> b!1928536 (= e!1232760 Nil!21935)))

(declare-fun bm!118618 () Bool)

(declare-fun call!118625 () List!22017)

(assert (=> bm!118618 (= call!118625 call!118623)))

(declare-fun bm!118619 () Bool)

(declare-fun c!313663 () Bool)

(assert (=> bm!118619 (= c!313663 c!313664)))

(assert (=> bm!118619 (= call!118622 (++!5881 e!1232762 (ite c!313664 lt!739286 call!118625)))))

(declare-fun call!118624 () BalanceConc!14460)

(declare-fun bm!118620 () Bool)

(assert (=> bm!118620 (= call!118623 (list!8871 (ite c!313664 call!118626 call!118624)))))

(declare-fun bm!118621 () Bool)

(assert (=> bm!118621 (= call!118624 call!118626)))

(declare-fun b!1928537 () Bool)

(assert (=> b!1928537 (= e!1232762 (list!8871 (charsOf!2474 (h!27338 (t!179568 (t!179568 tokens!598))))))))

(declare-fun b!1928534 () Bool)

(assert (=> b!1928534 (= c!313662 (and ((_ is Some!4542) lt!739285) (not (= (_1!11743 (v!26635 lt!739285)) (h!27338 (t!179568 (t!179568 tokens!598)))))))))

(declare-fun e!1232759 () List!22017)

(assert (=> b!1928534 (= e!1232761 e!1232759)))

(declare-fun d!587922 () Bool)

(declare-fun c!313661 () Bool)

(assert (=> d!587922 (= c!313661 ((_ is Cons!21937) (t!179568 (t!179568 tokens!598))))))

(assert (=> d!587922 (= (printWithSeparatorTokenWhenNeededList!586 thiss!23328 rules!3198 (t!179568 (t!179568 tokens!598)) separatorToken!354) e!1232760)))

(declare-fun b!1928538 () Bool)

(assert (=> b!1928538 (= e!1232759 Nil!21935)))

(assert (=> b!1928538 (= (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 (t!179568 (t!179568 tokens!598))))) (printTailRec!1023 thiss!23328 (singletonSeq!1918 (h!27338 (t!179568 (t!179568 tokens!598)))) 0 (BalanceConc!14461 Empty!7322)))))

(declare-fun lt!739284 () Unit!36278)

(declare-fun Unit!36292 () Unit!36278)

(assert (=> b!1928538 (= lt!739284 Unit!36292)))

(declare-fun lt!739283 () Unit!36278)

(assert (=> b!1928538 (= lt!739283 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!743 thiss!23328 rules!3198 call!118625 lt!739286))))

(assert (=> b!1928538 false))

(declare-fun lt!739288 () Unit!36278)

(declare-fun Unit!36293 () Unit!36278)

(assert (=> b!1928538 (= lt!739288 Unit!36293)))

(declare-fun b!1928539 () Bool)

(assert (=> b!1928539 (= e!1232759 (++!5881 call!118622 lt!739286))))

(assert (= (and d!587922 c!313661) b!1928533))

(assert (= (and d!587922 (not c!313661)) b!1928536))

(assert (= (and b!1928533 c!313664) b!1928535))

(assert (= (and b!1928533 (not c!313664)) b!1928534))

(assert (= (and b!1928534 c!313662) b!1928539))

(assert (= (and b!1928534 (not c!313662)) b!1928538))

(assert (= (or b!1928539 b!1928538) bm!118621))

(assert (= (or b!1928539 b!1928538) bm!118618))

(assert (= (or b!1928535 bm!118621) bm!118617))

(assert (= (or b!1928535 bm!118618) bm!118620))

(assert (= (or b!1928535 b!1928539) bm!118619))

(assert (= (and bm!118619 c!313663) b!1928532))

(assert (= (and bm!118619 (not c!313663)) b!1928537))

(declare-fun m!2365555 () Bool)

(assert (=> bm!118619 m!2365555))

(declare-fun m!2365557 () Bool)

(assert (=> b!1928539 m!2365557))

(declare-fun m!2365559 () Bool)

(assert (=> bm!118620 m!2365559))

(declare-fun m!2365561 () Bool)

(assert (=> b!1928533 m!2365561))

(declare-fun m!2365563 () Bool)

(assert (=> b!1928533 m!2365563))

(declare-fun m!2365565 () Bool)

(assert (=> b!1928533 m!2365565))

(declare-fun m!2365567 () Bool)

(assert (=> b!1928533 m!2365567))

(assert (=> b!1928533 m!2365563))

(assert (=> b!1928533 m!2365565))

(declare-fun m!2365573 () Bool)

(assert (=> b!1928533 m!2365573))

(declare-fun m!2365575 () Bool)

(assert (=> b!1928533 m!2365575))

(assert (=> b!1928533 m!2365561))

(declare-fun m!2365577 () Bool)

(assert (=> bm!118617 m!2365577))

(assert (=> b!1928537 m!2365561))

(assert (=> b!1928537 m!2365561))

(assert (=> b!1928537 m!2365563))

(declare-fun m!2365579 () Bool)

(assert (=> b!1928538 m!2365579))

(assert (=> b!1928538 m!2365579))

(declare-fun m!2365581 () Bool)

(assert (=> b!1928538 m!2365581))

(assert (=> b!1928538 m!2365579))

(declare-fun m!2365583 () Bool)

(assert (=> b!1928538 m!2365583))

(declare-fun m!2365585 () Bool)

(assert (=> b!1928538 m!2365585))

(assert (=> b!1927047 d!587922))

(declare-fun d!587926 () Bool)

(assert (=> d!587926 (= (list!8871 (charsOf!2474 (h!27338 (t!179568 tokens!598)))) (list!8873 (c!313264 (charsOf!2474 (h!27338 (t!179568 tokens!598))))))))

(declare-fun bs!414800 () Bool)

(assert (= bs!414800 d!587926))

(declare-fun m!2365587 () Bool)

(assert (=> bs!414800 m!2365587))

(assert (=> b!1927047 d!587926))

(declare-fun d!587928 () Bool)

(declare-fun e!1232771 () Bool)

(assert (=> d!587928 e!1232771))

(declare-fun res!862358 () Bool)

(assert (=> d!587928 (=> (not res!862358) (not e!1232771))))

(declare-fun lt!739295 () List!22017)

(assert (=> d!587928 (= res!862358 (= (content!3171 lt!739295) ((_ map or) (content!3171 (t!179566 lt!738500)) (content!3171 lt!738491))))))

(declare-fun e!1232770 () List!22017)

(assert (=> d!587928 (= lt!739295 e!1232770)))

(declare-fun c!313667 () Bool)

(assert (=> d!587928 (= c!313667 ((_ is Nil!21935) (t!179566 lt!738500)))))

(assert (=> d!587928 (= (++!5881 (t!179566 lt!738500) lt!738491) lt!739295)))

(declare-fun b!1928552 () Bool)

(assert (=> b!1928552 (= e!1232771 (or (not (= lt!738491 Nil!21935)) (= lt!739295 (t!179566 lt!738500))))))

(declare-fun b!1928551 () Bool)

(declare-fun res!862359 () Bool)

(assert (=> b!1928551 (=> (not res!862359) (not e!1232771))))

(assert (=> b!1928551 (= res!862359 (= (size!17110 lt!739295) (+ (size!17110 (t!179566 lt!738500)) (size!17110 lt!738491))))))

(declare-fun b!1928550 () Bool)

(assert (=> b!1928550 (= e!1232770 (Cons!21935 (h!27336 (t!179566 lt!738500)) (++!5881 (t!179566 (t!179566 lt!738500)) lt!738491)))))

(declare-fun b!1928549 () Bool)

(assert (=> b!1928549 (= e!1232770 lt!738491)))

(assert (= (and d!587928 c!313667) b!1928549))

(assert (= (and d!587928 (not c!313667)) b!1928550))

(assert (= (and d!587928 res!862358) b!1928551))

(assert (= (and b!1928551 res!862359) b!1928552))

(declare-fun m!2365599 () Bool)

(assert (=> d!587928 m!2365599))

(assert (=> d!587928 m!2365341))

(assert (=> d!587928 m!2363429))

(declare-fun m!2365603 () Bool)

(assert (=> b!1928551 m!2365603))

(declare-fun m!2365605 () Bool)

(assert (=> b!1928551 m!2365605))

(assert (=> b!1928551 m!2363435))

(declare-fun m!2365607 () Bool)

(assert (=> b!1928550 m!2365607))

(assert (=> b!1927188 d!587928))

(declare-fun d!587932 () Bool)

(assert (=> d!587932 (= (isEmpty!13510 (tail!2979 lt!738494)) ((_ is Nil!21935) (tail!2979 lt!738494)))))

(assert (=> b!1926920 d!587932))

(declare-fun d!587934 () Bool)

(assert (=> d!587934 (= (tail!2979 lt!738494) (t!179566 lt!738494))))

(assert (=> b!1926920 d!587934))

(assert (=> bm!118533 d!587652))

(declare-fun d!587938 () Bool)

(declare-fun e!1232773 () Bool)

(assert (=> d!587938 e!1232773))

(declare-fun res!862360 () Bool)

(assert (=> d!587938 (=> (not res!862360) (not e!1232773))))

(declare-fun lt!739296 () List!22017)

(assert (=> d!587938 (= res!862360 (= (content!3171 lt!739296) ((_ map or) (content!3171 (ite c!313354 call!118509 call!118510)) (content!3171 (ite c!313354 call!118510 call!118509)))))))

(declare-fun e!1232772 () List!22017)

(assert (=> d!587938 (= lt!739296 e!1232772)))

(declare-fun c!313668 () Bool)

(assert (=> d!587938 (= c!313668 ((_ is Nil!21935) (ite c!313354 call!118509 call!118510)))))

(assert (=> d!587938 (= (++!5881 (ite c!313354 call!118509 call!118510) (ite c!313354 call!118510 call!118509)) lt!739296)))

(declare-fun b!1928556 () Bool)

(assert (=> b!1928556 (= e!1232773 (or (not (= (ite c!313354 call!118510 call!118509) Nil!21935)) (= lt!739296 (ite c!313354 call!118509 call!118510))))))

(declare-fun b!1928555 () Bool)

(declare-fun res!862361 () Bool)

(assert (=> b!1928555 (=> (not res!862361) (not e!1232773))))

(assert (=> b!1928555 (= res!862361 (= (size!17110 lt!739296) (+ (size!17110 (ite c!313354 call!118509 call!118510)) (size!17110 (ite c!313354 call!118510 call!118509)))))))

(declare-fun b!1928554 () Bool)

(assert (=> b!1928554 (= e!1232772 (Cons!21935 (h!27336 (ite c!313354 call!118509 call!118510)) (++!5881 (t!179566 (ite c!313354 call!118509 call!118510)) (ite c!313354 call!118510 call!118509))))))

(declare-fun b!1928553 () Bool)

(assert (=> b!1928553 (= e!1232772 (ite c!313354 call!118510 call!118509))))

(assert (= (and d!587938 c!313668) b!1928553))

(assert (= (and d!587938 (not c!313668)) b!1928554))

(assert (= (and d!587938 res!862360) b!1928555))

(assert (= (and b!1928555 res!862361) b!1928556))

(declare-fun m!2365611 () Bool)

(assert (=> d!587938 m!2365611))

(declare-fun m!2365613 () Bool)

(assert (=> d!587938 m!2365613))

(declare-fun m!2365615 () Bool)

(assert (=> d!587938 m!2365615))

(declare-fun m!2365617 () Bool)

(assert (=> b!1928555 m!2365617))

(declare-fun m!2365619 () Bool)

(assert (=> b!1928555 m!2365619))

(declare-fun m!2365621 () Bool)

(assert (=> b!1928555 m!2365621))

(declare-fun m!2365623 () Bool)

(assert (=> b!1928554 m!2365623))

(assert (=> bm!118506 d!587938))

(assert (=> b!1927393 d!587680))

(assert (=> b!1927393 d!587672))

(assert (=> b!1926924 d!587658))

(declare-fun d!587940 () Bool)

(declare-fun lt!739297 () Token!7420)

(assert (=> d!587940 (= lt!739297 (apply!5695 (list!8875 (_1!11744 lt!738742)) 0))))

(assert (=> d!587940 (= lt!739297 (apply!5699 (c!313266 (_1!11744 lt!738742)) 0))))

(declare-fun e!1232774 () Bool)

(assert (=> d!587940 e!1232774))

(declare-fun res!862362 () Bool)

(assert (=> d!587940 (=> (not res!862362) (not e!1232774))))

(assert (=> d!587940 (= res!862362 (<= 0 0))))

(assert (=> d!587940 (= (apply!5694 (_1!11744 lt!738742) 0) lt!739297)))

(declare-fun b!1928557 () Bool)

(assert (=> b!1928557 (= e!1232774 (< 0 (size!17113 (_1!11744 lt!738742))))))

(assert (= (and d!587940 res!862362) b!1928557))

(assert (=> d!587940 m!2365291))

(assert (=> d!587940 m!2365291))

(declare-fun m!2365625 () Bool)

(assert (=> d!587940 m!2365625))

(declare-fun m!2365627 () Bool)

(assert (=> d!587940 m!2365627))

(assert (=> b!1928557 m!2363803))

(assert (=> b!1927371 d!587940))

(declare-fun d!587942 () Bool)

(declare-fun e!1232776 () Bool)

(assert (=> d!587942 e!1232776))

(declare-fun res!862363 () Bool)

(assert (=> d!587942 (=> (not res!862363) (not e!1232776))))

(declare-fun lt!739298 () List!22017)

(assert (=> d!587942 (= res!862363 (= (content!3171 lt!739298) ((_ map or) (content!3171 (t!179566 lt!738494)) (content!3171 lt!738500))))))

(declare-fun e!1232775 () List!22017)

(assert (=> d!587942 (= lt!739298 e!1232775)))

(declare-fun c!313669 () Bool)

(assert (=> d!587942 (= c!313669 ((_ is Nil!21935) (t!179566 lt!738494)))))

(assert (=> d!587942 (= (++!5881 (t!179566 lt!738494) lt!738500) lt!739298)))

(declare-fun b!1928561 () Bool)

(assert (=> b!1928561 (= e!1232776 (or (not (= lt!738500 Nil!21935)) (= lt!739298 (t!179566 lt!738494))))))

(declare-fun b!1928560 () Bool)

(declare-fun res!862364 () Bool)

(assert (=> b!1928560 (=> (not res!862364) (not e!1232776))))

(assert (=> b!1928560 (= res!862364 (= (size!17110 lt!739298) (+ (size!17110 (t!179566 lt!738494)) (size!17110 lt!738500))))))

(declare-fun b!1928559 () Bool)

(assert (=> b!1928559 (= e!1232775 (Cons!21935 (h!27336 (t!179566 lt!738494)) (++!5881 (t!179566 (t!179566 lt!738494)) lt!738500)))))

(declare-fun b!1928558 () Bool)

(assert (=> b!1928558 (= e!1232775 lt!738500)))

(assert (= (and d!587942 c!313669) b!1928558))

(assert (= (and d!587942 (not c!313669)) b!1928559))

(assert (= (and d!587942 res!862363) b!1928560))

(assert (= (and b!1928560 res!862364) b!1928561))

(declare-fun m!2365629 () Bool)

(assert (=> d!587942 m!2365629))

(assert (=> d!587942 m!2364211))

(assert (=> d!587942 m!2363509))

(declare-fun m!2365631 () Bool)

(assert (=> b!1928560 m!2365631))

(declare-fun m!2365633 () Bool)

(assert (=> b!1928560 m!2365633))

(assert (=> b!1928560 m!2363513))

(declare-fun m!2365635 () Bool)

(assert (=> b!1928559 m!2365635))

(assert (=> b!1927247 d!587942))

(declare-fun b!1928562 () Bool)

(declare-fun e!1232779 () Bool)

(declare-fun lt!739299 () Option!4543)

(assert (=> b!1928562 (= e!1232779 (= (size!17108 (_1!11743 (get!6908 lt!739299))) (size!17110 (originalCharacters!4741 (_1!11743 (get!6908 lt!739299))))))))

(declare-fun b!1928563 () Bool)

(declare-fun e!1232778 () Option!4543)

(assert (=> b!1928563 (= e!1232778 None!4542)))

(declare-fun b!1928564 () Bool)

(declare-fun res!862370 () Bool)

(assert (=> b!1928564 (=> (not res!862370) (not e!1232779))))

(assert (=> b!1928564 (= res!862370 (= (value!123710 (_1!11743 (get!6908 lt!739299))) (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!739299)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!739299)))))))))

(declare-fun b!1928565 () Bool)

(declare-fun res!862366 () Bool)

(assert (=> b!1928565 (=> (not res!862366) (not e!1232779))))

(assert (=> b!1928565 (= res!862366 (< (size!17110 (_2!11743 (get!6908 lt!739299))) (size!17110 (++!5881 lt!738494 lt!738491))))))

(declare-fun d!587944 () Bool)

(declare-fun e!1232777 () Bool)

(assert (=> d!587944 e!1232777))

(declare-fun res!862371 () Bool)

(assert (=> d!587944 (=> res!862371 e!1232777)))

(assert (=> d!587944 (= res!862371 (isEmpty!13513 lt!739299))))

(assert (=> d!587944 (= lt!739299 e!1232778)))

(declare-fun c!313670 () Bool)

(declare-fun lt!739302 () tuple2!20556)

(assert (=> d!587944 (= c!313670 (isEmpty!13510 (_1!11747 lt!739302)))))

(assert (=> d!587944 (= lt!739302 (findLongestMatch!461 (regex!3934 (h!27337 rules!3198)) (++!5881 lt!738494 lt!738491)))))

(assert (=> d!587944 (ruleValid!1194 thiss!23328 (h!27337 rules!3198))))

(assert (=> d!587944 (= (maxPrefixOneRule!1223 thiss!23328 (h!27337 rules!3198) (++!5881 lt!738494 lt!738491)) lt!739299)))

(declare-fun b!1928566 () Bool)

(declare-fun res!862365 () Bool)

(assert (=> b!1928566 (=> (not res!862365) (not e!1232779))))

(assert (=> b!1928566 (= res!862365 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739299)))) (_2!11743 (get!6908 lt!739299))) (++!5881 lt!738494 lt!738491)))))

(declare-fun b!1928567 () Bool)

(declare-fun res!862369 () Bool)

(assert (=> b!1928567 (=> (not res!862369) (not e!1232779))))

(assert (=> b!1928567 (= res!862369 (= (rule!6139 (_1!11743 (get!6908 lt!739299))) (h!27337 rules!3198)))))

(declare-fun b!1928568 () Bool)

(assert (=> b!1928568 (= e!1232777 e!1232779)))

(declare-fun res!862367 () Bool)

(assert (=> b!1928568 (=> (not res!862367) (not e!1232779))))

(assert (=> b!1928568 (= res!862367 (matchR!2627 (regex!3934 (h!27337 rules!3198)) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739299))))))))

(declare-fun b!1928569 () Bool)

(declare-fun e!1232780 () Bool)

(assert (=> b!1928569 (= e!1232780 (matchR!2627 (regex!3934 (h!27337 rules!3198)) (_1!11747 (findLongestMatchInner!534 (regex!3934 (h!27337 rules!3198)) Nil!21935 (size!17110 Nil!21935) (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491) (size!17110 (++!5881 lt!738494 lt!738491))))))))

(declare-fun b!1928570 () Bool)

(assert (=> b!1928570 (= e!1232778 (Some!4542 (tuple2!20549 (Token!7421 (apply!5693 (transformation!3934 (h!27337 rules!3198)) (seqFromList!2788 (_1!11747 lt!739302))) (h!27337 rules!3198) (size!17114 (seqFromList!2788 (_1!11747 lt!739302))) (_1!11747 lt!739302)) (_2!11747 lt!739302))))))

(declare-fun lt!739300 () Unit!36278)

(assert (=> b!1928570 (= lt!739300 (longestMatchIsAcceptedByMatchOrIsEmpty!518 (regex!3934 (h!27337 rules!3198)) (++!5881 lt!738494 lt!738491)))))

(declare-fun res!862368 () Bool)

(assert (=> b!1928570 (= res!862368 (isEmpty!13510 (_1!11747 (findLongestMatchInner!534 (regex!3934 (h!27337 rules!3198)) Nil!21935 (size!17110 Nil!21935) (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491) (size!17110 (++!5881 lt!738494 lt!738491))))))))

(assert (=> b!1928570 (=> res!862368 e!1232780)))

(assert (=> b!1928570 e!1232780))

(declare-fun lt!739303 () Unit!36278)

(assert (=> b!1928570 (= lt!739303 lt!739300)))

(declare-fun lt!739301 () Unit!36278)

(assert (=> b!1928570 (= lt!739301 (lemmaSemiInverse!891 (transformation!3934 (h!27337 rules!3198)) (seqFromList!2788 (_1!11747 lt!739302))))))

(assert (= (and d!587944 c!313670) b!1928563))

(assert (= (and d!587944 (not c!313670)) b!1928570))

(assert (= (and b!1928570 (not res!862368)) b!1928569))

(assert (= (and d!587944 (not res!862371)) b!1928568))

(assert (= (and b!1928568 res!862367) b!1928566))

(assert (= (and b!1928566 res!862365) b!1928565))

(assert (= (and b!1928565 res!862366) b!1928567))

(assert (= (and b!1928567 res!862369) b!1928564))

(assert (= (and b!1928564 res!862370) b!1928562))

(declare-fun m!2365637 () Bool)

(assert (=> b!1928565 m!2365637))

(declare-fun m!2365639 () Bool)

(assert (=> b!1928565 m!2365639))

(assert (=> b!1928565 m!2362969))

(assert (=> b!1928565 m!2363339))

(assert (=> b!1928564 m!2365637))

(declare-fun m!2365641 () Bool)

(assert (=> b!1928564 m!2365641))

(assert (=> b!1928564 m!2365641))

(declare-fun m!2365643 () Bool)

(assert (=> b!1928564 m!2365643))

(assert (=> b!1928566 m!2365637))

(declare-fun m!2365645 () Bool)

(assert (=> b!1928566 m!2365645))

(assert (=> b!1928566 m!2365645))

(declare-fun m!2365647 () Bool)

(assert (=> b!1928566 m!2365647))

(assert (=> b!1928566 m!2365647))

(declare-fun m!2365649 () Bool)

(assert (=> b!1928566 m!2365649))

(assert (=> b!1928562 m!2365637))

(declare-fun m!2365651 () Bool)

(assert (=> b!1928562 m!2365651))

(declare-fun m!2365653 () Bool)

(assert (=> b!1928570 m!2365653))

(declare-fun m!2365655 () Bool)

(assert (=> b!1928570 m!2365655))

(assert (=> b!1928570 m!2364529))

(assert (=> b!1928570 m!2362969))

(assert (=> b!1928570 m!2363339))

(declare-fun m!2365657 () Bool)

(assert (=> b!1928570 m!2365657))

(assert (=> b!1928570 m!2365653))

(declare-fun m!2365659 () Bool)

(assert (=> b!1928570 m!2365659))

(assert (=> b!1928570 m!2362969))

(declare-fun m!2365661 () Bool)

(assert (=> b!1928570 m!2365661))

(assert (=> b!1928570 m!2365653))

(assert (=> b!1928570 m!2365653))

(declare-fun m!2365663 () Bool)

(assert (=> b!1928570 m!2365663))

(assert (=> b!1928570 m!2364529))

(assert (=> b!1928570 m!2362969))

(assert (=> b!1928570 m!2362969))

(assert (=> b!1928570 m!2363339))

(declare-fun m!2365665 () Bool)

(assert (=> b!1928570 m!2365665))

(declare-fun m!2365667 () Bool)

(assert (=> d!587944 m!2365667))

(declare-fun m!2365669 () Bool)

(assert (=> d!587944 m!2365669))

(assert (=> d!587944 m!2362969))

(declare-fun m!2365671 () Bool)

(assert (=> d!587944 m!2365671))

(assert (=> d!587944 m!2364547))

(assert (=> b!1928567 m!2365637))

(assert (=> b!1928568 m!2365637))

(assert (=> b!1928568 m!2365645))

(assert (=> b!1928568 m!2365645))

(assert (=> b!1928568 m!2365647))

(assert (=> b!1928568 m!2365647))

(declare-fun m!2365673 () Bool)

(assert (=> b!1928568 m!2365673))

(assert (=> b!1928569 m!2364529))

(assert (=> b!1928569 m!2362969))

(assert (=> b!1928569 m!2363339))

(assert (=> b!1928569 m!2364529))

(assert (=> b!1928569 m!2362969))

(assert (=> b!1928569 m!2362969))

(assert (=> b!1928569 m!2363339))

(assert (=> b!1928569 m!2365665))

(declare-fun m!2365675 () Bool)

(assert (=> b!1928569 m!2365675))

(assert (=> bm!118493 d!587944))

(declare-fun bs!414802 () Bool)

(declare-fun d!587946 () Bool)

(assert (= bs!414802 (and d!587946 d!587264)))

(declare-fun lambda!75226 () Int)

(assert (=> bs!414802 (= (and (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (= lambda!75226 lambda!75194))))

(declare-fun bs!414803 () Bool)

(assert (= bs!414803 (and d!587946 d!587632)))

(assert (=> bs!414803 (= (and (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (= lambda!75226 lambda!75214))))

(assert (=> d!587946 true))

(assert (=> d!587946 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10630 order!13775 lambda!75226))))

(assert (=> d!587946 true))

(assert (=> d!587946 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (dynLambda!10630 order!13775 lambda!75226))))

(assert (=> d!587946 (= (semiInverseModEq!1565 (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (h!27337 rules!3198)))) (Forall!1000 lambda!75226))))

(declare-fun bs!414804 () Bool)

(assert (= bs!414804 d!587946))

(declare-fun m!2365677 () Bool)

(assert (=> bs!414804 m!2365677))

(assert (=> d!587400 d!587946))

(assert (=> b!1927051 d!587926))

(assert (=> b!1927051 d!587896))

(declare-fun d!587948 () Bool)

(declare-fun c!313671 () Bool)

(assert (=> d!587948 (= c!313671 ((_ is Nil!21935) (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))

(declare-fun e!1232781 () (InoxSet C!10864))

(assert (=> d!587948 (= (content!3171 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))) e!1232781)))

(declare-fun b!1928571 () Bool)

(assert (=> b!1928571 (= e!1232781 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1928572 () Bool)

(assert (=> b!1928572 (= e!1232781 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))) true) (content!3171 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))))

(assert (= (and d!587948 c!313671) b!1928571))

(assert (= (and d!587948 (not c!313671)) b!1928572))

(declare-fun m!2365679 () Bool)

(assert (=> b!1928572 m!2365679))

(assert (=> b!1928572 m!2364723))

(assert (=> d!587300 d!587948))

(declare-fun d!587950 () Bool)

(assert (=> d!587950 (= (inv!15 (value!123710 separatorToken!354)) (= (charsToBigInt!0 (text!28939 (value!123710 separatorToken!354)) 0) (value!123705 (value!123710 separatorToken!354))))))

(declare-fun bs!414805 () Bool)

(assert (= bs!414805 d!587950))

(declare-fun m!2365681 () Bool)

(assert (=> bs!414805 m!2365681))

(assert (=> b!1927608 d!587950))

(declare-fun d!587952 () Bool)

(assert (=> d!587952 (= (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))) (isBalanced!2260 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))))

(declare-fun bs!414806 () Bool)

(assert (= bs!414806 d!587952))

(declare-fun m!2365683 () Bool)

(assert (=> bs!414806 m!2365683))

(assert (=> tb!118011 d!587952))

(assert (=> b!1927091 d!587482))

(declare-fun d!587954 () Bool)

(assert (=> d!587954 (= (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738610))))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738610))))))))

(declare-fun b_lambda!63927 () Bool)

(assert (=> (not b_lambda!63927) (not d!587954)))

(declare-fun tb!118187 () Bool)

(declare-fun t!179816 () Bool)

(assert (=> (and b!1926809 (= (toValue!5567 (transformation!3934 (h!27337 rules!3198))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179816) tb!118187))

(declare-fun result!142778 () Bool)

(assert (=> tb!118187 (= result!142778 (inv!21 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738610)))))))))

(declare-fun m!2365685 () Bool)

(assert (=> tb!118187 m!2365685))

(assert (=> d!587954 t!179816))

(declare-fun b_and!151339 () Bool)

(assert (= b_and!151325 (and (=> t!179816 result!142778) b_and!151339)))

(declare-fun t!179818 () Bool)

(declare-fun tb!118189 () Bool)

(assert (=> (and b!1926820 (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179818) tb!118189))

(declare-fun result!142780 () Bool)

(assert (= result!142780 result!142778))

(assert (=> d!587954 t!179818))

(declare-fun b_and!151341 () Bool)

(assert (= b_and!151323 (and (=> t!179818 result!142780) b_and!151341)))

(declare-fun tb!118191 () Bool)

(declare-fun t!179820 () Bool)

(assert (=> (and b!1926830 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179820) tb!118191))

(declare-fun result!142782 () Bool)

(assert (= result!142782 result!142778))

(assert (=> d!587954 t!179820))

(declare-fun b_and!151343 () Bool)

(assert (= b_and!151319 (and (=> t!179820 result!142782) b_and!151343)))

(declare-fun tb!118193 () Bool)

(declare-fun t!179822 () Bool)

(assert (=> (and b!1927661 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179822) tb!118193))

(declare-fun result!142784 () Bool)

(assert (= result!142784 result!142778))

(assert (=> d!587954 t!179822))

(declare-fun b_and!151345 () Bool)

(assert (= b_and!151327 (and (=> t!179822 result!142784) b_and!151345)))

(declare-fun t!179824 () Bool)

(declare-fun tb!118195 () Bool)

(assert (=> (and b!1927628 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179824) tb!118195))

(declare-fun result!142786 () Bool)

(assert (= result!142786 result!142778))

(assert (=> d!587954 t!179824))

(declare-fun b_and!151347 () Bool)

(assert (= b_and!151321 (and (=> t!179824 result!142786) b_and!151347)))

(assert (=> d!587954 m!2363359))

(declare-fun m!2365687 () Bool)

(assert (=> d!587954 m!2365687))

(assert (=> b!1927091 d!587954))

(declare-fun d!587956 () Bool)

(assert (=> d!587956 (= (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!738610)))) (fromListB!1238 (originalCharacters!4741 (_1!11743 (get!6908 lt!738610)))))))

(declare-fun bs!414807 () Bool)

(assert (= bs!414807 d!587956))

(declare-fun m!2365689 () Bool)

(assert (=> bs!414807 m!2365689))

(assert (=> b!1927091 d!587956))

(declare-fun bm!118622 () Bool)

(declare-fun call!118628 () List!22017)

(declare-fun call!118630 () List!22017)

(assert (=> bm!118622 (= call!118628 call!118630)))

(declare-fun bm!118623 () Bool)

(declare-fun c!313674 () Bool)

(declare-fun c!313675 () Bool)

(assert (=> bm!118623 (= call!118630 (usedCharacters!386 (ite c!313675 (reg!5688 (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) (ite c!313674 (regOne!11231 (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) (regTwo!11230 (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354)))))))))))

(declare-fun b!1928573 () Bool)

(declare-fun e!1232783 () List!22017)

(declare-fun e!1232786 () List!22017)

(assert (=> b!1928573 (= e!1232783 e!1232786)))

(declare-fun c!313672 () Bool)

(assert (=> b!1928573 (= c!313672 ((_ is ElementMatch!5359) (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))))))

(declare-fun b!1928574 () Bool)

(assert (=> b!1928574 (= e!1232783 Nil!21935)))

(declare-fun d!587958 () Bool)

(declare-fun c!313673 () Bool)

(assert (=> d!587958 (= c!313673 (or ((_ is EmptyExpr!5359) (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) ((_ is EmptyLang!5359) (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354)))))))))

(assert (=> d!587958 (= (usedCharacters!386 (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) e!1232783)))

(declare-fun b!1928575 () Bool)

(assert (=> b!1928575 (= c!313675 ((_ is Star!5359) (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))))))

(declare-fun e!1232784 () List!22017)

(assert (=> b!1928575 (= e!1232786 e!1232784)))

(declare-fun bm!118624 () Bool)

(declare-fun call!118629 () List!22017)

(assert (=> bm!118624 (= call!118629 (usedCharacters!386 (ite c!313674 (regTwo!11231 (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) (regOne!11230 (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))))))))

(declare-fun b!1928576 () Bool)

(declare-fun e!1232785 () List!22017)

(declare-fun call!118627 () List!22017)

(assert (=> b!1928576 (= e!1232785 call!118627)))

(declare-fun b!1928577 () Bool)

(assert (=> b!1928577 (= e!1232784 e!1232785)))

(assert (=> b!1928577 (= c!313674 ((_ is Union!5359) (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))))))

(declare-fun b!1928578 () Bool)

(assert (=> b!1928578 (= e!1232784 call!118630)))

(declare-fun bm!118625 () Bool)

(assert (=> bm!118625 (= call!118627 (++!5881 (ite c!313674 call!118628 call!118629) (ite c!313674 call!118629 call!118628)))))

(declare-fun b!1928579 () Bool)

(assert (=> b!1928579 (= e!1232786 (Cons!21935 (c!313265 (ite c!313376 (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) Nil!21935))))

(declare-fun b!1928580 () Bool)

(assert (=> b!1928580 (= e!1232785 call!118627)))

(assert (= (and d!587958 c!313673) b!1928574))

(assert (= (and d!587958 (not c!313673)) b!1928573))

(assert (= (and b!1928573 c!313672) b!1928579))

(assert (= (and b!1928573 (not c!313672)) b!1928575))

(assert (= (and b!1928575 c!313675) b!1928578))

(assert (= (and b!1928575 (not c!313675)) b!1928577))

(assert (= (and b!1928577 c!313674) b!1928580))

(assert (= (and b!1928577 (not c!313674)) b!1928576))

(assert (= (or b!1928580 b!1928576) bm!118622))

(assert (= (or b!1928580 b!1928576) bm!118624))

(assert (= (or b!1928580 b!1928576) bm!118625))

(assert (= (or b!1928578 bm!118622) bm!118623))

(declare-fun m!2365691 () Bool)

(assert (=> bm!118623 m!2365691))

(declare-fun m!2365693 () Bool)

(assert (=> bm!118624 m!2365693))

(declare-fun m!2365695 () Bool)

(assert (=> bm!118625 m!2365695))

(assert (=> bm!118517 d!587958))

(declare-fun d!587960 () Bool)

(assert (=> d!587960 (= (isEmpty!13513 lt!738610) (not ((_ is Some!4542) lt!738610)))))

(assert (=> d!587228 d!587960))

(declare-fun b!1928583 () Bool)

(declare-fun e!1232788 () Bool)

(assert (=> b!1928583 (= e!1232788 (isPrefix!1941 (tail!2979 (++!5881 lt!738494 lt!738491)) (tail!2979 (++!5881 lt!738494 lt!738491))))))

(declare-fun b!1928581 () Bool)

(declare-fun e!1232787 () Bool)

(assert (=> b!1928581 (= e!1232787 e!1232788)))

(declare-fun res!862374 () Bool)

(assert (=> b!1928581 (=> (not res!862374) (not e!1232788))))

(assert (=> b!1928581 (= res!862374 (not ((_ is Nil!21935) (++!5881 lt!738494 lt!738491))))))

(declare-fun d!587962 () Bool)

(declare-fun e!1232789 () Bool)

(assert (=> d!587962 e!1232789))

(declare-fun res!862373 () Bool)

(assert (=> d!587962 (=> res!862373 e!1232789)))

(declare-fun lt!739304 () Bool)

(assert (=> d!587962 (= res!862373 (not lt!739304))))

(assert (=> d!587962 (= lt!739304 e!1232787)))

(declare-fun res!862375 () Bool)

(assert (=> d!587962 (=> res!862375 e!1232787)))

(assert (=> d!587962 (= res!862375 ((_ is Nil!21935) (++!5881 lt!738494 lt!738491)))))

(assert (=> d!587962 (= (isPrefix!1941 (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491)) lt!739304)))

(declare-fun b!1928584 () Bool)

(assert (=> b!1928584 (= e!1232789 (>= (size!17110 (++!5881 lt!738494 lt!738491)) (size!17110 (++!5881 lt!738494 lt!738491))))))

(declare-fun b!1928582 () Bool)

(declare-fun res!862372 () Bool)

(assert (=> b!1928582 (=> (not res!862372) (not e!1232788))))

(assert (=> b!1928582 (= res!862372 (= (head!4494 (++!5881 lt!738494 lt!738491)) (head!4494 (++!5881 lt!738494 lt!738491))))))

(assert (= (and d!587962 (not res!862375)) b!1928581))

(assert (= (and b!1928581 res!862374) b!1928582))

(assert (= (and b!1928582 res!862372) b!1928583))

(assert (= (and d!587962 (not res!862373)) b!1928584))

(assert (=> b!1928583 m!2362969))

(declare-fun m!2365697 () Bool)

(assert (=> b!1928583 m!2365697))

(assert (=> b!1928583 m!2362969))

(assert (=> b!1928583 m!2365697))

(assert (=> b!1928583 m!2365697))

(assert (=> b!1928583 m!2365697))

(declare-fun m!2365699 () Bool)

(assert (=> b!1928583 m!2365699))

(assert (=> b!1928584 m!2362969))

(assert (=> b!1928584 m!2363339))

(assert (=> b!1928584 m!2362969))

(assert (=> b!1928584 m!2363339))

(assert (=> b!1928582 m!2362969))

(declare-fun m!2365701 () Bool)

(assert (=> b!1928582 m!2365701))

(assert (=> b!1928582 m!2362969))

(assert (=> b!1928582 m!2365701))

(assert (=> d!587228 d!587962))

(declare-fun d!587964 () Bool)

(assert (=> d!587964 (isPrefix!1941 (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491))))

(declare-fun lt!739305 () Unit!36278)

(assert (=> d!587964 (= lt!739305 (choose!11981 (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491)))))

(assert (=> d!587964 (= (lemmaIsPrefixRefl!1259 (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491)) lt!739305)))

(declare-fun bs!414808 () Bool)

(assert (= bs!414808 d!587964))

(assert (=> bs!414808 m!2362969))

(assert (=> bs!414808 m!2362969))

(assert (=> bs!414808 m!2363351))

(assert (=> bs!414808 m!2362969))

(assert (=> bs!414808 m!2362969))

(declare-fun m!2365703 () Bool)

(assert (=> bs!414808 m!2365703))

(assert (=> d!587228 d!587964))

(assert (=> d!587228 d!587862))

(declare-fun d!587966 () Bool)

(declare-fun e!1232792 () Bool)

(assert (=> d!587966 e!1232792))

(declare-fun res!862378 () Bool)

(assert (=> d!587966 (=> (not res!862378) (not e!1232792))))

(declare-fun lt!739308 () BalanceConc!14460)

(assert (=> d!587966 (= res!862378 (= (list!8871 lt!739308) (originalCharacters!4741 (h!27338 tokens!598))))))

(declare-fun fromList!479 (List!22017) Conc!7322)

(assert (=> d!587966 (= lt!739308 (BalanceConc!14461 (fromList!479 (originalCharacters!4741 (h!27338 tokens!598)))))))

(assert (=> d!587966 (= (fromListB!1238 (originalCharacters!4741 (h!27338 tokens!598))) lt!739308)))

(declare-fun b!1928587 () Bool)

(assert (=> b!1928587 (= e!1232792 (isBalanced!2260 (fromList!479 (originalCharacters!4741 (h!27338 tokens!598)))))))

(assert (= (and d!587966 res!862378) b!1928587))

(declare-fun m!2365705 () Bool)

(assert (=> d!587966 m!2365705))

(declare-fun m!2365707 () Bool)

(assert (=> d!587966 m!2365707))

(assert (=> b!1928587 m!2365707))

(assert (=> b!1928587 m!2365707))

(declare-fun m!2365709 () Bool)

(assert (=> b!1928587 m!2365709))

(assert (=> d!587256 d!587966))

(declare-fun d!587968 () Bool)

(assert (=> d!587968 (= (list!8871 (BalanceConc!14461 Empty!7322)) (list!8873 (c!313264 (BalanceConc!14461 Empty!7322))))))

(declare-fun bs!414809 () Bool)

(assert (= bs!414809 d!587968))

(declare-fun m!2365711 () Bool)

(assert (=> bs!414809 m!2365711))

(assert (=> d!587276 d!587968))

(declare-fun d!587970 () Bool)

(assert (=> d!587970 (= (dropList!783 lt!738485 0) (drop!1074 (list!8877 (c!313266 lt!738485)) 0))))

(declare-fun bs!414810 () Bool)

(assert (= bs!414810 d!587970))

(assert (=> bs!414810 m!2364733))

(assert (=> bs!414810 m!2364733))

(declare-fun m!2365713 () Bool)

(assert (=> bs!414810 m!2365713))

(assert (=> d!587276 d!587970))

(declare-fun d!587972 () Bool)

(assert (=> d!587972 (= (list!8871 lt!738668) (list!8873 (c!313264 lt!738668)))))

(declare-fun bs!414811 () Bool)

(assert (= bs!414811 d!587972))

(declare-fun m!2365715 () Bool)

(assert (=> bs!414811 m!2365715))

(assert (=> d!587276 d!587972))

(declare-fun d!587974 () Bool)

(declare-fun lt!739331 () List!22017)

(assert (=> d!587974 (= lt!739331 (++!5881 (list!8871 (BalanceConc!14461 Empty!7322)) (printList!1082 thiss!23328 (dropList!783 lt!738485 0))))))

(declare-fun e!1232813 () List!22017)

(assert (=> d!587974 (= lt!739331 e!1232813)))

(declare-fun c!313692 () Bool)

(assert (=> d!587974 (= c!313692 ((_ is Cons!21937) (dropList!783 lt!738485 0)))))

(assert (=> d!587974 (= (printListTailRec!452 thiss!23328 (dropList!783 lt!738485 0) (list!8871 (BalanceConc!14461 Empty!7322))) lt!739331)))

(declare-fun b!1928623 () Bool)

(assert (=> b!1928623 (= e!1232813 (printListTailRec!452 thiss!23328 (t!179568 (dropList!783 lt!738485 0)) (++!5881 (list!8871 (BalanceConc!14461 Empty!7322)) (list!8871 (charsOf!2474 (h!27338 (dropList!783 lt!738485 0)))))))))

(declare-fun lt!739334 () List!22017)

(assert (=> b!1928623 (= lt!739334 (list!8871 (charsOf!2474 (h!27338 (dropList!783 lt!738485 0)))))))

(declare-fun lt!739330 () List!22017)

(assert (=> b!1928623 (= lt!739330 (printList!1082 thiss!23328 (t!179568 (dropList!783 lt!738485 0))))))

(declare-fun lt!739333 () Unit!36278)

(assert (=> b!1928623 (= lt!739333 (lemmaConcatAssociativity!1193 (list!8871 (BalanceConc!14461 Empty!7322)) lt!739334 lt!739330))))

(assert (=> b!1928623 (= (++!5881 (++!5881 (list!8871 (BalanceConc!14461 Empty!7322)) lt!739334) lt!739330) (++!5881 (list!8871 (BalanceConc!14461 Empty!7322)) (++!5881 lt!739334 lt!739330)))))

(declare-fun lt!739332 () Unit!36278)

(assert (=> b!1928623 (= lt!739332 lt!739333)))

(declare-fun b!1928624 () Bool)

(assert (=> b!1928624 (= e!1232813 (list!8871 (BalanceConc!14461 Empty!7322)))))

(assert (= (and d!587974 c!313692) b!1928623))

(assert (= (and d!587974 (not c!313692)) b!1928624))

(assert (=> d!587974 m!2363519))

(declare-fun m!2365765 () Bool)

(assert (=> d!587974 m!2365765))

(assert (=> d!587974 m!2363521))

(assert (=> d!587974 m!2365765))

(declare-fun m!2365767 () Bool)

(assert (=> d!587974 m!2365767))

(declare-fun m!2365769 () Bool)

(assert (=> b!1928623 m!2365769))

(assert (=> b!1928623 m!2363521))

(declare-fun m!2365771 () Bool)

(assert (=> b!1928623 m!2365771))

(declare-fun m!2365773 () Bool)

(assert (=> b!1928623 m!2365773))

(declare-fun m!2365775 () Bool)

(assert (=> b!1928623 m!2365775))

(declare-fun m!2365777 () Bool)

(assert (=> b!1928623 m!2365777))

(assert (=> b!1928623 m!2365771))

(declare-fun m!2365779 () Bool)

(assert (=> b!1928623 m!2365779))

(declare-fun m!2365781 () Bool)

(assert (=> b!1928623 m!2365781))

(assert (=> b!1928623 m!2363521))

(assert (=> b!1928623 m!2365769))

(declare-fun m!2365783 () Bool)

(assert (=> b!1928623 m!2365783))

(assert (=> b!1928623 m!2365777))

(assert (=> b!1928623 m!2365773))

(declare-fun m!2365785 () Bool)

(assert (=> b!1928623 m!2365785))

(assert (=> b!1928623 m!2363521))

(assert (=> b!1928623 m!2365779))

(assert (=> b!1928623 m!2363521))

(declare-fun m!2365787 () Bool)

(assert (=> b!1928623 m!2365787))

(assert (=> d!587276 d!587974))

(assert (=> d!587276 d!587534))

(declare-fun d!588000 () Bool)

(declare-fun e!1232818 () Bool)

(assert (=> d!588000 e!1232818))

(declare-fun res!862386 () Bool)

(assert (=> d!588000 (=> (not res!862386) (not e!1232818))))

(declare-fun lt!739338 () List!22017)

(assert (=> d!588000 (= res!862386 (= (content!3171 lt!739338) ((_ map or) (content!3171 (t!179566 lt!738494)) (content!3171 (++!5881 lt!738500 lt!738491)))))))

(declare-fun e!1232816 () List!22017)

(assert (=> d!588000 (= lt!739338 e!1232816)))

(declare-fun c!313694 () Bool)

(assert (=> d!588000 (= c!313694 ((_ is Nil!21935) (t!179566 lt!738494)))))

(assert (=> d!588000 (= (++!5881 (t!179566 lt!738494) (++!5881 lt!738500 lt!738491)) lt!739338)))

(declare-fun b!1928631 () Bool)

(assert (=> b!1928631 (= e!1232818 (or (not (= (++!5881 lt!738500 lt!738491) Nil!21935)) (= lt!739338 (t!179566 lt!738494))))))

(declare-fun b!1928630 () Bool)

(declare-fun res!862388 () Bool)

(assert (=> b!1928630 (=> (not res!862388) (not e!1232818))))

(assert (=> b!1928630 (= res!862388 (= (size!17110 lt!739338) (+ (size!17110 (t!179566 lt!738494)) (size!17110 (++!5881 lt!738500 lt!738491)))))))

(declare-fun b!1928629 () Bool)

(assert (=> b!1928629 (= e!1232816 (Cons!21935 (h!27336 (t!179566 lt!738494)) (++!5881 (t!179566 (t!179566 lt!738494)) (++!5881 lt!738500 lt!738491))))))

(declare-fun b!1928628 () Bool)

(assert (=> b!1928628 (= e!1232816 (++!5881 lt!738500 lt!738491))))

(assert (= (and d!588000 c!313694) b!1928628))

(assert (= (and d!588000 (not c!313694)) b!1928629))

(assert (= (and d!588000 res!862386) b!1928630))

(assert (= (and b!1928630 res!862388) b!1928631))

(declare-fun m!2365795 () Bool)

(assert (=> d!588000 m!2365795))

(assert (=> d!588000 m!2364211))

(assert (=> d!588000 m!2363025))

(assert (=> d!588000 m!2363629))

(declare-fun m!2365797 () Bool)

(assert (=> b!1928630 m!2365797))

(assert (=> b!1928630 m!2365633))

(assert (=> b!1928630 m!2363025))

(assert (=> b!1928630 m!2363633))

(assert (=> b!1928629 m!2363025))

(declare-fun m!2365799 () Bool)

(assert (=> b!1928629 m!2365799))

(assert (=> b!1927265 d!588000))

(declare-fun d!588004 () Bool)

(assert (=> d!588004 (= (nullable!1608 (regex!3934 (rule!6139 separatorToken!354))) (nullableFct!362 (regex!3934 (rule!6139 separatorToken!354))))))

(declare-fun bs!414816 () Bool)

(assert (= bs!414816 d!588004))

(declare-fun m!2365801 () Bool)

(assert (=> bs!414816 m!2365801))

(assert (=> b!1927402 d!588004))

(declare-fun d!588006 () Bool)

(assert (=> d!588006 (= (list!8875 (_1!11744 lt!738772)) (list!8877 (c!313266 (_1!11744 lt!738772))))))

(declare-fun bs!414817 () Bool)

(assert (= bs!414817 d!588006))

(declare-fun m!2365803 () Bool)

(assert (=> bs!414817 m!2365803))

(assert (=> b!1927602 d!588006))

(declare-fun b!1928728 () Bool)

(declare-fun e!1232867 () Bool)

(declare-fun e!1232869 () Bool)

(assert (=> b!1928728 (= e!1232867 e!1232869)))

(declare-fun res!862431 () Bool)

(declare-fun lt!739360 () tuple2!20554)

(assert (=> b!1928728 (= res!862431 (< (size!17110 (_2!11746 lt!739360)) (size!17110 (list!8871 (seqFromList!2788 lt!738494)))))))

(assert (=> b!1928728 (=> (not res!862431) (not e!1232869))))

(declare-fun d!588008 () Bool)

(assert (=> d!588008 e!1232867))

(declare-fun c!313723 () Bool)

(assert (=> d!588008 (= c!313723 (> (size!17115 (_1!11746 lt!739360)) 0))))

(declare-fun e!1232868 () tuple2!20554)

(assert (=> d!588008 (= lt!739360 e!1232868)))

(declare-fun c!313722 () Bool)

(declare-fun lt!739359 () Option!4543)

(assert (=> d!588008 (= c!313722 ((_ is Some!4542) lt!739359))))

(assert (=> d!588008 (= lt!739359 (maxPrefix!1985 thiss!23328 rules!3198 (list!8871 (seqFromList!2788 lt!738494))))))

(assert (=> d!588008 (= (lexList!951 thiss!23328 rules!3198 (list!8871 (seqFromList!2788 lt!738494))) lt!739360)))

(declare-fun b!1928729 () Bool)

(declare-fun lt!739361 () tuple2!20554)

(assert (=> b!1928729 (= e!1232868 (tuple2!20555 (Cons!21937 (_1!11743 (v!26635 lt!739359)) (_1!11746 lt!739361)) (_2!11746 lt!739361)))))

(assert (=> b!1928729 (= lt!739361 (lexList!951 thiss!23328 rules!3198 (_2!11743 (v!26635 lt!739359))))))

(declare-fun b!1928730 () Bool)

(assert (=> b!1928730 (= e!1232868 (tuple2!20555 Nil!21937 (list!8871 (seqFromList!2788 lt!738494))))))

(declare-fun b!1928731 () Bool)

(assert (=> b!1928731 (= e!1232867 (= (_2!11746 lt!739360) (list!8871 (seqFromList!2788 lt!738494))))))

(declare-fun b!1928732 () Bool)

(assert (=> b!1928732 (= e!1232869 (not (isEmpty!13519 (_1!11746 lt!739360))))))

(assert (= (and d!588008 c!313722) b!1928729))

(assert (= (and d!588008 (not c!313722)) b!1928730))

(assert (= (and d!588008 c!313723) b!1928728))

(assert (= (and d!588008 (not c!313723)) b!1928731))

(assert (= (and b!1928728 res!862431) b!1928732))

(declare-fun m!2365907 () Bool)

(assert (=> b!1928728 m!2365907))

(assert (=> b!1928728 m!2363989))

(declare-fun m!2365909 () Bool)

(assert (=> b!1928728 m!2365909))

(declare-fun m!2365911 () Bool)

(assert (=> d!588008 m!2365911))

(assert (=> d!588008 m!2363989))

(declare-fun m!2365913 () Bool)

(assert (=> d!588008 m!2365913))

(declare-fun m!2365915 () Bool)

(assert (=> b!1928729 m!2365915))

(declare-fun m!2365917 () Bool)

(assert (=> b!1928732 m!2365917))

(assert (=> b!1927602 d!588008))

(declare-fun d!588062 () Bool)

(assert (=> d!588062 (= (list!8871 (seqFromList!2788 lt!738494)) (list!8873 (c!313264 (seqFromList!2788 lt!738494))))))

(declare-fun bs!414826 () Bool)

(assert (= bs!414826 d!588062))

(declare-fun m!2365923 () Bool)

(assert (=> bs!414826 m!2365923))

(assert (=> b!1927602 d!588062))

(declare-fun d!588066 () Bool)

(declare-fun c!313725 () Bool)

(assert (=> d!588066 (= c!313725 ((_ is Nil!21935) lt!738675))))

(declare-fun e!1232874 () (InoxSet C!10864))

(assert (=> d!588066 (= (content!3171 lt!738675) e!1232874)))

(declare-fun b!1928737 () Bool)

(assert (=> b!1928737 (= e!1232874 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1928739 () Bool)

(assert (=> b!1928739 (= e!1232874 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 lt!738675) true) (content!3171 (t!179566 lt!738675))))))

(assert (= (and d!588066 c!313725) b!1928737))

(assert (= (and d!588066 (not c!313725)) b!1928739))

(declare-fun m!2365925 () Bool)

(assert (=> b!1928739 m!2365925))

(declare-fun m!2365927 () Bool)

(assert (=> b!1928739 m!2365927))

(assert (=> d!587278 d!588066))

(declare-fun d!588068 () Bool)

(declare-fun c!313726 () Bool)

(assert (=> d!588068 (= c!313726 ((_ is Nil!21935) (++!5881 lt!738494 lt!738500)))))

(declare-fun e!1232875 () (InoxSet C!10864))

(assert (=> d!588068 (= (content!3171 (++!5881 lt!738494 lt!738500)) e!1232875)))

(declare-fun b!1928741 () Bool)

(assert (=> b!1928741 (= e!1232875 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1928742 () Bool)

(assert (=> b!1928742 (= e!1232875 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 (++!5881 lt!738494 lt!738500)) true) (content!3171 (t!179566 (++!5881 lt!738494 lt!738500)))))))

(assert (= (and d!588068 c!313726) b!1928741))

(assert (= (and d!588068 (not c!313726)) b!1928742))

(declare-fun m!2365935 () Bool)

(assert (=> b!1928742 m!2365935))

(assert (=> b!1928742 m!2365389))

(assert (=> d!587278 d!588068))

(assert (=> d!587278 d!587504))

(declare-fun d!588070 () Bool)

(declare-fun e!1232877 () Bool)

(assert (=> d!588070 e!1232877))

(declare-fun res!862436 () Bool)

(assert (=> d!588070 (=> (not res!862436) (not e!1232877))))

(declare-fun lt!739364 () List!22017)

(assert (=> d!588070 (= res!862436 (= (content!3171 lt!739364) ((_ map or) (content!3171 (ite c!313376 call!118521 call!118522)) (content!3171 (ite c!313376 call!118522 call!118521)))))))

(declare-fun e!1232876 () List!22017)

(assert (=> d!588070 (= lt!739364 e!1232876)))

(declare-fun c!313727 () Bool)

(assert (=> d!588070 (= c!313727 ((_ is Nil!21935) (ite c!313376 call!118521 call!118522)))))

(assert (=> d!588070 (= (++!5881 (ite c!313376 call!118521 call!118522) (ite c!313376 call!118522 call!118521)) lt!739364)))

(declare-fun b!1928746 () Bool)

(assert (=> b!1928746 (= e!1232877 (or (not (= (ite c!313376 call!118522 call!118521) Nil!21935)) (= lt!739364 (ite c!313376 call!118521 call!118522))))))

(declare-fun b!1928745 () Bool)

(declare-fun res!862437 () Bool)

(assert (=> b!1928745 (=> (not res!862437) (not e!1232877))))

(assert (=> b!1928745 (= res!862437 (= (size!17110 lt!739364) (+ (size!17110 (ite c!313376 call!118521 call!118522)) (size!17110 (ite c!313376 call!118522 call!118521)))))))

(declare-fun b!1928744 () Bool)

(assert (=> b!1928744 (= e!1232876 (Cons!21935 (h!27336 (ite c!313376 call!118521 call!118522)) (++!5881 (t!179566 (ite c!313376 call!118521 call!118522)) (ite c!313376 call!118522 call!118521))))))

(declare-fun b!1928743 () Bool)

(assert (=> b!1928743 (= e!1232876 (ite c!313376 call!118522 call!118521))))

(assert (= (and d!588070 c!313727) b!1928743))

(assert (= (and d!588070 (not c!313727)) b!1928744))

(assert (= (and d!588070 res!862436) b!1928745))

(assert (= (and b!1928745 res!862437) b!1928746))

(declare-fun m!2365943 () Bool)

(assert (=> d!588070 m!2365943))

(declare-fun m!2365945 () Bool)

(assert (=> d!588070 m!2365945))

(declare-fun m!2365947 () Bool)

(assert (=> d!588070 m!2365947))

(declare-fun m!2365949 () Bool)

(assert (=> b!1928745 m!2365949))

(declare-fun m!2365951 () Bool)

(assert (=> b!1928745 m!2365951))

(declare-fun m!2365953 () Bool)

(assert (=> b!1928745 m!2365953))

(declare-fun m!2365955 () Bool)

(assert (=> b!1928744 m!2365955))

(assert (=> bm!118518 d!588070))

(declare-fun d!588076 () Bool)

(assert (=> d!588076 (= (list!8871 lt!738643) (list!8873 (c!313264 lt!738643)))))

(declare-fun bs!414828 () Bool)

(assert (= bs!414828 d!588076))

(declare-fun m!2365957 () Bool)

(assert (=> bs!414828 m!2365957))

(assert (=> d!587260 d!588076))

(declare-fun d!588078 () Bool)

(declare-fun c!313729 () Bool)

(assert (=> d!588078 (= c!313729 ((_ is Nil!21935) lt!738650))))

(declare-fun e!1232882 () (InoxSet C!10864))

(assert (=> d!588078 (= (content!3171 lt!738650) e!1232882)))

(declare-fun b!1928756 () Bool)

(assert (=> b!1928756 (= e!1232882 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1928757 () Bool)

(assert (=> b!1928757 (= e!1232882 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 lt!738650) true) (content!3171 (t!179566 lt!738650))))))

(assert (= (and d!588078 c!313729) b!1928756))

(assert (= (and d!588078 (not c!313729)) b!1928757))

(declare-fun m!2365959 () Bool)

(assert (=> b!1928757 m!2365959))

(declare-fun m!2365961 () Bool)

(assert (=> b!1928757 m!2365961))

(assert (=> d!587272 d!588078))

(assert (=> d!587272 d!587866))

(assert (=> d!587272 d!587504))

(declare-fun d!588080 () Bool)

(assert (=> d!588080 (= (list!8875 lt!738680) (list!8877 (c!313266 lt!738680)))))

(declare-fun bs!414829 () Bool)

(assert (= bs!414829 d!588080))

(declare-fun m!2365963 () Bool)

(assert (=> bs!414829 m!2365963))

(assert (=> d!587282 d!588080))

(declare-fun d!588082 () Bool)

(declare-fun e!1232892 () Bool)

(assert (=> d!588082 e!1232892))

(declare-fun res!862455 () Bool)

(assert (=> d!588082 (=> (not res!862455) (not e!1232892))))

(declare-fun lt!739373 () BalanceConc!14462)

(assert (=> d!588082 (= res!862455 (= (list!8875 lt!739373) (Cons!21937 (h!27338 tokens!598) Nil!21937)))))

(declare-fun choose!11984 (Token!7420) BalanceConc!14462)

(assert (=> d!588082 (= lt!739373 (choose!11984 (h!27338 tokens!598)))))

(assert (=> d!588082 (= (singleton!848 (h!27338 tokens!598)) lt!739373)))

(declare-fun b!1928774 () Bool)

(assert (=> b!1928774 (= e!1232892 (isBalanced!2259 (c!313266 lt!739373)))))

(assert (= (and d!588082 res!862455) b!1928774))

(declare-fun m!2366005 () Bool)

(assert (=> d!588082 m!2366005))

(declare-fun m!2366007 () Bool)

(assert (=> d!588082 m!2366007))

(declare-fun m!2366009 () Bool)

(assert (=> b!1928774 m!2366009))

(assert (=> d!587282 d!588082))

(declare-fun d!588086 () Bool)

(assert (=> d!588086 (= (list!8871 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))) (list!8873 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))))))

(declare-fun bs!414830 () Bool)

(assert (= bs!414830 d!588086))

(declare-fun m!2366011 () Bool)

(assert (=> bs!414830 m!2366011))

(assert (=> b!1926855 d!588086))

(declare-fun bm!118636 () Bool)

(declare-fun call!118642 () List!22017)

(declare-fun call!118644 () List!22017)

(assert (=> bm!118636 (= call!118642 call!118644)))

(declare-fun c!313735 () Bool)

(declare-fun c!313736 () Bool)

(declare-fun bm!118637 () Bool)

(assert (=> bm!118637 (= call!118644 (usedCharacters!386 (ite c!313736 (reg!5688 (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))) (ite c!313735 (regOne!11231 (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))) (regTwo!11230 (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))))))))))

(declare-fun b!1928775 () Bool)

(declare-fun e!1232893 () List!22017)

(declare-fun e!1232896 () List!22017)

(assert (=> b!1928775 (= e!1232893 e!1232896)))

(declare-fun c!313733 () Bool)

(assert (=> b!1928775 (= c!313733 ((_ is ElementMatch!5359) (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))))

(declare-fun b!1928776 () Bool)

(assert (=> b!1928776 (= e!1232893 Nil!21935)))

(declare-fun c!313734 () Bool)

(declare-fun d!588088 () Bool)

(assert (=> d!588088 (= c!313734 (or ((_ is EmptyExpr!5359) (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))) ((_ is EmptyLang!5359) (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))))))))

(assert (=> d!588088 (= (usedCharacters!386 (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))) e!1232893)))

(declare-fun b!1928777 () Bool)

(assert (=> b!1928777 (= c!313736 ((_ is Star!5359) (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))))

(declare-fun e!1232894 () List!22017)

(assert (=> b!1928777 (= e!1232896 e!1232894)))

(declare-fun bm!118638 () Bool)

(declare-fun call!118643 () List!22017)

(assert (=> bm!118638 (= call!118643 (usedCharacters!386 (ite c!313735 (regTwo!11231 (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))) (regOne!11230 (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))))))

(declare-fun b!1928778 () Bool)

(declare-fun e!1232895 () List!22017)

(declare-fun call!118641 () List!22017)

(assert (=> b!1928778 (= e!1232895 call!118641)))

(declare-fun b!1928779 () Bool)

(assert (=> b!1928779 (= e!1232894 e!1232895)))

(assert (=> b!1928779 (= c!313735 ((_ is Union!5359) (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))))))

(declare-fun b!1928780 () Bool)

(assert (=> b!1928780 (= e!1232894 call!118644)))

(declare-fun bm!118639 () Bool)

(assert (=> bm!118639 (= call!118641 (++!5881 (ite c!313735 call!118642 call!118643) (ite c!313735 call!118643 call!118642)))))

(declare-fun b!1928781 () Bool)

(assert (=> b!1928781 (= e!1232896 (Cons!21935 (c!313265 (ite c!313355 (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (ite c!313354 (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598))))))) Nil!21935))))

(declare-fun b!1928782 () Bool)

(assert (=> b!1928782 (= e!1232895 call!118641)))

(assert (= (and d!588088 c!313734) b!1928776))

(assert (= (and d!588088 (not c!313734)) b!1928775))

(assert (= (and b!1928775 c!313733) b!1928781))

(assert (= (and b!1928775 (not c!313733)) b!1928777))

(assert (= (and b!1928777 c!313736) b!1928780))

(assert (= (and b!1928777 (not c!313736)) b!1928779))

(assert (= (and b!1928779 c!313735) b!1928782))

(assert (= (and b!1928779 (not c!313735)) b!1928778))

(assert (= (or b!1928782 b!1928778) bm!118636))

(assert (= (or b!1928782 b!1928778) bm!118638))

(assert (= (or b!1928782 b!1928778) bm!118639))

(assert (= (or b!1928780 bm!118636) bm!118637))

(declare-fun m!2366029 () Bool)

(assert (=> bm!118637 m!2366029))

(declare-fun m!2366031 () Bool)

(assert (=> bm!118638 m!2366031))

(declare-fun m!2366033 () Bool)

(assert (=> bm!118639 m!2366033))

(assert (=> bm!118504 d!588088))

(declare-fun d!588090 () Bool)

(declare-fun e!1232897 () Bool)

(assert (=> d!588090 e!1232897))

(declare-fun res!862456 () Bool)

(assert (=> d!588090 (=> (not res!862456) (not e!1232897))))

(declare-fun lt!739374 () BalanceConc!14460)

(assert (=> d!588090 (= res!862456 (= (list!8871 lt!739374) lt!738494))))

(assert (=> d!588090 (= lt!739374 (BalanceConc!14461 (fromList!479 lt!738494)))))

(assert (=> d!588090 (= (fromListB!1238 lt!738494) lt!739374)))

(declare-fun b!1928783 () Bool)

(assert (=> b!1928783 (= e!1232897 (isBalanced!2260 (fromList!479 lt!738494)))))

(assert (= (and d!588090 res!862456) b!1928783))

(declare-fun m!2366035 () Bool)

(assert (=> d!588090 m!2366035))

(declare-fun m!2366037 () Bool)

(assert (=> d!588090 m!2366037))

(assert (=> b!1928783 m!2366037))

(assert (=> b!1928783 m!2366037))

(declare-fun m!2366039 () Bool)

(assert (=> b!1928783 m!2366039))

(assert (=> d!587414 d!588090))

(declare-fun d!588094 () Bool)

(assert (=> d!588094 (= (list!8871 (_2!11744 lt!738772)) (list!8873 (c!313264 (_2!11744 lt!738772))))))

(declare-fun bs!414831 () Bool)

(assert (= bs!414831 d!588094))

(declare-fun m!2366043 () Bool)

(assert (=> bs!414831 m!2366043))

(assert (=> b!1927606 d!588094))

(assert (=> b!1927606 d!588008))

(assert (=> b!1927606 d!588062))

(declare-fun b!1928788 () Bool)

(declare-fun res!862463 () Bool)

(declare-fun e!1232901 () Bool)

(assert (=> b!1928788 (=> (not res!862463) (not e!1232901))))

(declare-fun lt!739377 () Option!4543)

(assert (=> b!1928788 (= res!862463 (matchR!2627 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!739377)))) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739377))))))))

(declare-fun b!1928789 () Bool)

(assert (=> b!1928789 (= e!1232901 (contains!3967 (t!179567 rules!3198) (rule!6139 (_1!11743 (get!6908 lt!739377)))))))

(declare-fun call!118645 () Option!4543)

(declare-fun bm!118640 () Bool)

(assert (=> bm!118640 (= call!118645 (maxPrefixOneRule!1223 thiss!23328 (h!27337 (t!179567 rules!3198)) lt!738494))))

(declare-fun b!1928790 () Bool)

(declare-fun e!1232900 () Option!4543)

(assert (=> b!1928790 (= e!1232900 call!118645)))

(declare-fun b!1928791 () Bool)

(declare-fun lt!739378 () Option!4543)

(declare-fun lt!739376 () Option!4543)

(assert (=> b!1928791 (= e!1232900 (ite (and ((_ is None!4542) lt!739378) ((_ is None!4542) lt!739376)) None!4542 (ite ((_ is None!4542) lt!739376) lt!739378 (ite ((_ is None!4542) lt!739378) lt!739376 (ite (>= (size!17108 (_1!11743 (v!26635 lt!739378))) (size!17108 (_1!11743 (v!26635 lt!739376)))) lt!739378 lt!739376)))))))

(assert (=> b!1928791 (= lt!739378 call!118645)))

(assert (=> b!1928791 (= lt!739376 (maxPrefix!1985 thiss!23328 (t!179567 (t!179567 rules!3198)) lt!738494))))

(declare-fun b!1928792 () Bool)

(declare-fun res!862457 () Bool)

(assert (=> b!1928792 (=> (not res!862457) (not e!1232901))))

(assert (=> b!1928792 (= res!862457 (< (size!17110 (_2!11743 (get!6908 lt!739377))) (size!17110 lt!738494)))))

(declare-fun b!1928794 () Bool)

(declare-fun res!862461 () Bool)

(assert (=> b!1928794 (=> (not res!862461) (not e!1232901))))

(assert (=> b!1928794 (= res!862461 (= (value!123710 (_1!11743 (get!6908 lt!739377))) (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!739377)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!739377)))))))))

(declare-fun b!1928795 () Bool)

(declare-fun res!862458 () Bool)

(assert (=> b!1928795 (=> (not res!862458) (not e!1232901))))

(assert (=> b!1928795 (= res!862458 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739377)))) (_2!11743 (get!6908 lt!739377))) lt!738494))))

(declare-fun b!1928796 () Bool)

(declare-fun e!1232902 () Bool)

(assert (=> b!1928796 (= e!1232902 e!1232901)))

(declare-fun res!862462 () Bool)

(assert (=> b!1928796 (=> (not res!862462) (not e!1232901))))

(assert (=> b!1928796 (= res!862462 (isDefined!3838 lt!739377))))

(declare-fun d!588096 () Bool)

(assert (=> d!588096 e!1232902))

(declare-fun res!862460 () Bool)

(assert (=> d!588096 (=> res!862460 e!1232902)))

(assert (=> d!588096 (= res!862460 (isEmpty!13513 lt!739377))))

(assert (=> d!588096 (= lt!739377 e!1232900)))

(declare-fun c!313739 () Bool)

(assert (=> d!588096 (= c!313739 (and ((_ is Cons!21936) (t!179567 rules!3198)) ((_ is Nil!21936) (t!179567 (t!179567 rules!3198)))))))

(declare-fun lt!739379 () Unit!36278)

(declare-fun lt!739375 () Unit!36278)

(assert (=> d!588096 (= lt!739379 lt!739375)))

(assert (=> d!588096 (isPrefix!1941 lt!738494 lt!738494)))

(assert (=> d!588096 (= lt!739375 (lemmaIsPrefixRefl!1259 lt!738494 lt!738494))))

(assert (=> d!588096 (rulesValidInductive!1340 thiss!23328 (t!179567 rules!3198))))

(assert (=> d!588096 (= (maxPrefix!1985 thiss!23328 (t!179567 rules!3198) lt!738494) lt!739377)))

(declare-fun b!1928793 () Bool)

(declare-fun res!862459 () Bool)

(assert (=> b!1928793 (=> (not res!862459) (not e!1232901))))

(assert (=> b!1928793 (= res!862459 (= (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739377)))) (originalCharacters!4741 (_1!11743 (get!6908 lt!739377)))))))

(assert (= (and d!588096 c!313739) b!1928790))

(assert (= (and d!588096 (not c!313739)) b!1928791))

(assert (= (or b!1928790 b!1928791) bm!118640))

(assert (= (and d!588096 (not res!862460)) b!1928796))

(assert (= (and b!1928796 res!862462) b!1928793))

(assert (= (and b!1928793 res!862459) b!1928792))

(assert (= (and b!1928792 res!862457) b!1928795))

(assert (= (and b!1928795 res!862458) b!1928794))

(assert (= (and b!1928794 res!862461) b!1928788))

(assert (= (and b!1928788 res!862463) b!1928789))

(declare-fun m!2366053 () Bool)

(assert (=> b!1928792 m!2366053))

(declare-fun m!2366055 () Bool)

(assert (=> b!1928792 m!2366055))

(assert (=> b!1928792 m!2363433))

(declare-fun m!2366057 () Bool)

(assert (=> bm!118640 m!2366057))

(assert (=> b!1928795 m!2366053))

(declare-fun m!2366059 () Bool)

(assert (=> b!1928795 m!2366059))

(assert (=> b!1928795 m!2366059))

(declare-fun m!2366061 () Bool)

(assert (=> b!1928795 m!2366061))

(assert (=> b!1928795 m!2366061))

(declare-fun m!2366063 () Bool)

(assert (=> b!1928795 m!2366063))

(declare-fun m!2366065 () Bool)

(assert (=> d!588096 m!2366065))

(assert (=> d!588096 m!2363465))

(assert (=> d!588096 m!2363467))

(assert (=> d!588096 m!2365333))

(declare-fun m!2366067 () Bool)

(assert (=> b!1928791 m!2366067))

(assert (=> b!1928793 m!2366053))

(assert (=> b!1928793 m!2366059))

(assert (=> b!1928793 m!2366059))

(assert (=> b!1928793 m!2366061))

(assert (=> b!1928794 m!2366053))

(declare-fun m!2366069 () Bool)

(assert (=> b!1928794 m!2366069))

(assert (=> b!1928794 m!2366069))

(declare-fun m!2366071 () Bool)

(assert (=> b!1928794 m!2366071))

(declare-fun m!2366073 () Bool)

(assert (=> b!1928796 m!2366073))

(assert (=> b!1928789 m!2366053))

(declare-fun m!2366075 () Bool)

(assert (=> b!1928789 m!2366075))

(assert (=> b!1928788 m!2366053))

(assert (=> b!1928788 m!2366059))

(assert (=> b!1928788 m!2366059))

(assert (=> b!1928788 m!2366061))

(assert (=> b!1928788 m!2366061))

(declare-fun m!2366077 () Bool)

(assert (=> b!1928788 m!2366077))

(assert (=> b!1927166 d!588096))

(declare-fun d!588104 () Bool)

(declare-fun lt!739383 () Bool)

(assert (=> d!588104 (= lt!739383 (isEmpty!13510 (list!8871 (_2!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)))))))))

(assert (=> d!588104 (= lt!739383 (isEmpty!13522 (c!313264 (_2!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354)))))))))

(assert (=> d!588104 (= (isEmpty!13518 (_2!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 separatorToken!354))))) lt!739383)))

(declare-fun bs!414834 () Bool)

(assert (= bs!414834 d!588104))

(declare-fun m!2366083 () Bool)

(assert (=> bs!414834 m!2366083))

(assert (=> bs!414834 m!2366083))

(declare-fun m!2366089 () Bool)

(assert (=> bs!414834 m!2366089))

(declare-fun m!2366092 () Bool)

(assert (=> bs!414834 m!2366092))

(assert (=> b!1927370 d!588104))

(assert (=> b!1927370 d!587522))

(assert (=> b!1927370 d!587514))

(assert (=> b!1927370 d!587506))

(declare-fun d!588108 () Bool)

(assert (=> d!588108 (= (inv!29012 (tag!4380 (h!27337 (t!179567 rules!3198)))) (= (mod (str.len (value!123709 (tag!4380 (h!27337 (t!179567 rules!3198))))) 2) 0))))

(assert (=> b!1927627 d!588108))

(declare-fun d!588112 () Bool)

(declare-fun res!862472 () Bool)

(declare-fun e!1232909 () Bool)

(assert (=> d!588112 (=> (not res!862472) (not e!1232909))))

(assert (=> d!588112 (= res!862472 (semiInverseModEq!1565 (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198))))))))

(assert (=> d!588112 (= (inv!29015 (transformation!3934 (h!27337 (t!179567 rules!3198)))) e!1232909)))

(declare-fun b!1928798 () Bool)

(assert (=> b!1928798 (= e!1232909 (equivClasses!1492 (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198))))))))

(assert (= (and d!588112 res!862472) b!1928798))

(declare-fun m!2366095 () Bool)

(assert (=> d!588112 m!2366095))

(declare-fun m!2366097 () Bool)

(assert (=> b!1928798 m!2366097))

(assert (=> b!1927627 d!588112))

(declare-fun d!588114 () Bool)

(assert (=> d!588114 (= (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))) (isBalanced!2260 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))))))

(declare-fun bs!414836 () Bool)

(assert (= bs!414836 d!588114))

(declare-fun m!2366099 () Bool)

(assert (=> bs!414836 m!2366099))

(assert (=> tb!118005 d!588114))

(declare-fun b!1928812 () Bool)

(declare-fun e!1232913 () Bool)

(declare-fun e!1232912 () Bool)

(assert (=> b!1928812 (= e!1232913 e!1232912)))

(declare-fun res!862480 () Bool)

(assert (=> b!1928812 (=> (not res!862480) (not e!1232912))))

(declare-fun lt!739386 () Bool)

(assert (=> b!1928812 (= res!862480 (not lt!739386))))

(declare-fun b!1928813 () Bool)

(declare-fun e!1232914 () Bool)

(assert (=> b!1928813 (= e!1232914 (matchR!2627 (derivativeStep!1367 (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494)) (head!4494 (tail!2979 lt!738494))) (tail!2979 (tail!2979 lt!738494))))))

(declare-fun b!1928814 () Bool)

(declare-fun e!1232916 () Bool)

(assert (=> b!1928814 (= e!1232916 (= (head!4494 (tail!2979 lt!738494)) (c!313265 (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494)))))))

(declare-fun b!1928815 () Bool)

(declare-fun res!862476 () Bool)

(assert (=> b!1928815 (=> (not res!862476) (not e!1232916))))

(assert (=> b!1928815 (= res!862476 (isEmpty!13510 (tail!2979 (tail!2979 lt!738494))))))

(declare-fun b!1928816 () Bool)

(declare-fun res!862474 () Bool)

(declare-fun e!1232911 () Bool)

(assert (=> b!1928816 (=> res!862474 e!1232911)))

(assert (=> b!1928816 (= res!862474 (not (isEmpty!13510 (tail!2979 (tail!2979 lt!738494)))))))

(declare-fun b!1928817 () Bool)

(assert (=> b!1928817 (= e!1232912 e!1232911)))

(declare-fun res!862475 () Bool)

(assert (=> b!1928817 (=> res!862475 e!1232911)))

(declare-fun call!118647 () Bool)

(assert (=> b!1928817 (= res!862475 call!118647)))

(declare-fun b!1928818 () Bool)

(declare-fun res!862473 () Bool)

(assert (=> b!1928818 (=> res!862473 e!1232913)))

(assert (=> b!1928818 (= res!862473 e!1232916)))

(declare-fun res!862479 () Bool)

(assert (=> b!1928818 (=> (not res!862479) (not e!1232916))))

(assert (=> b!1928818 (= res!862479 lt!739386)))

(declare-fun b!1928819 () Bool)

(assert (=> b!1928819 (= e!1232911 (not (= (head!4494 (tail!2979 lt!738494)) (c!313265 (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494))))))))

(declare-fun b!1928820 () Bool)

(declare-fun res!862477 () Bool)

(assert (=> b!1928820 (=> (not res!862477) (not e!1232916))))

(assert (=> b!1928820 (= res!862477 (not call!118647))))

(declare-fun b!1928821 () Bool)

(declare-fun res!862478 () Bool)

(assert (=> b!1928821 (=> res!862478 e!1232913)))

(assert (=> b!1928821 (= res!862478 (not ((_ is ElementMatch!5359) (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494)))))))

(declare-fun e!1232917 () Bool)

(assert (=> b!1928821 (= e!1232917 e!1232913)))

(declare-fun b!1928822 () Bool)

(declare-fun e!1232915 () Bool)

(assert (=> b!1928822 (= e!1232915 (= lt!739386 call!118647))))

(declare-fun b!1928823 () Bool)

(assert (=> b!1928823 (= e!1232915 e!1232917)))

(declare-fun c!313745 () Bool)

(assert (=> b!1928823 (= c!313745 ((_ is EmptyLang!5359) (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494))))))

(declare-fun b!1928824 () Bool)

(assert (=> b!1928824 (= e!1232917 (not lt!739386))))

(declare-fun b!1928825 () Bool)

(assert (=> b!1928825 (= e!1232914 (nullable!1608 (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494))))))

(declare-fun bm!118642 () Bool)

(assert (=> bm!118642 (= call!118647 (isEmpty!13510 (tail!2979 lt!738494)))))

(declare-fun d!588116 () Bool)

(assert (=> d!588116 e!1232915))

(declare-fun c!313743 () Bool)

(assert (=> d!588116 (= c!313743 ((_ is EmptyExpr!5359) (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494))))))

(assert (=> d!588116 (= lt!739386 e!1232914)))

(declare-fun c!313744 () Bool)

(assert (=> d!588116 (= c!313744 (isEmpty!13510 (tail!2979 lt!738494)))))

(assert (=> d!588116 (validRegex!2134 (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494)))))

(assert (=> d!588116 (= (matchR!2627 (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494)) (tail!2979 lt!738494)) lt!739386)))

(assert (= (and d!588116 c!313744) b!1928825))

(assert (= (and d!588116 (not c!313744)) b!1928813))

(assert (= (and d!588116 c!313743) b!1928822))

(assert (= (and d!588116 (not c!313743)) b!1928823))

(assert (= (and b!1928823 c!313745) b!1928824))

(assert (= (and b!1928823 (not c!313745)) b!1928821))

(assert (= (and b!1928821 (not res!862478)) b!1928818))

(assert (= (and b!1928818 res!862479) b!1928820))

(assert (= (and b!1928820 res!862477) b!1928815))

(assert (= (and b!1928815 res!862476) b!1928814))

(assert (= (and b!1928818 (not res!862473)) b!1928812))

(assert (= (and b!1928812 res!862480) b!1928817))

(assert (= (and b!1928817 (not res!862475)) b!1928816))

(assert (= (and b!1928816 (not res!862474)) b!1928819))

(assert (= (or b!1928822 b!1928817 b!1928820) bm!118642))

(assert (=> b!1928819 m!2363145))

(declare-fun m!2366115 () Bool)

(assert (=> b!1928819 m!2366115))

(assert (=> b!1928813 m!2363145))

(assert (=> b!1928813 m!2366115))

(assert (=> b!1928813 m!2363143))

(assert (=> b!1928813 m!2366115))

(declare-fun m!2366117 () Bool)

(assert (=> b!1928813 m!2366117))

(assert (=> b!1928813 m!2363145))

(declare-fun m!2366119 () Bool)

(assert (=> b!1928813 m!2366119))

(assert (=> b!1928813 m!2366117))

(assert (=> b!1928813 m!2366119))

(declare-fun m!2366121 () Bool)

(assert (=> b!1928813 m!2366121))

(assert (=> b!1928816 m!2363145))

(assert (=> b!1928816 m!2366119))

(assert (=> b!1928816 m!2366119))

(declare-fun m!2366123 () Bool)

(assert (=> b!1928816 m!2366123))

(assert (=> b!1928815 m!2363145))

(assert (=> b!1928815 m!2366119))

(assert (=> b!1928815 m!2366119))

(assert (=> b!1928815 m!2366123))

(assert (=> b!1928825 m!2363143))

(declare-fun m!2366125 () Bool)

(assert (=> b!1928825 m!2366125))

(assert (=> b!1928814 m!2363145))

(assert (=> b!1928814 m!2366115))

(assert (=> bm!118642 m!2363145))

(assert (=> bm!118642 m!2363149))

(assert (=> d!588116 m!2363145))

(assert (=> d!588116 m!2363149))

(assert (=> d!588116 m!2363143))

(declare-fun m!2366127 () Bool)

(assert (=> d!588116 m!2366127))

(assert (=> b!1926918 d!588116))

(declare-fun b!1928836 () Bool)

(declare-fun e!1232923 () Regex!5359)

(declare-fun call!118655 () Regex!5359)

(declare-fun call!118653 () Regex!5359)

(assert (=> b!1928836 (= e!1232923 (Union!5359 call!118655 call!118653))))

(declare-fun b!1928837 () Bool)

(declare-fun c!313754 () Bool)

(assert (=> b!1928837 (= c!313754 ((_ is Union!5359) (regex!3934 lt!738499)))))

(declare-fun e!1232925 () Regex!5359)

(assert (=> b!1928837 (= e!1232925 e!1232923)))

(declare-fun b!1928838 () Bool)

(declare-fun e!1232926 () Regex!5359)

(assert (=> b!1928838 (= e!1232926 EmptyLang!5359)))

(declare-fun b!1928839 () Bool)

(declare-fun c!313753 () Bool)

(assert (=> b!1928839 (= c!313753 (nullable!1608 (regOne!11230 (regex!3934 lt!738499))))))

(declare-fun e!1232927 () Regex!5359)

(declare-fun e!1232924 () Regex!5359)

(assert (=> b!1928839 (= e!1232927 e!1232924)))

(declare-fun b!1928840 () Bool)

(assert (=> b!1928840 (= e!1232926 e!1232925)))

(declare-fun c!313755 () Bool)

(assert (=> b!1928840 (= c!313755 ((_ is ElementMatch!5359) (regex!3934 lt!738499)))))

(declare-fun c!313751 () Bool)

(declare-fun bm!118647 () Bool)

(assert (=> bm!118647 (= call!118655 (derivativeStep!1367 (ite c!313754 (regOne!11231 (regex!3934 lt!738499)) (ite c!313751 (reg!5688 (regex!3934 lt!738499)) (ite c!313753 (regTwo!11230 (regex!3934 lt!738499)) (regOne!11230 (regex!3934 lt!738499))))) (head!4494 lt!738494)))))

(declare-fun bm!118648 () Bool)

(declare-fun call!118652 () Regex!5359)

(declare-fun call!118654 () Regex!5359)

(assert (=> bm!118648 (= call!118652 call!118654)))

(declare-fun b!1928841 () Bool)

(assert (=> b!1928841 (= e!1232923 e!1232927)))

(assert (=> b!1928841 (= c!313751 ((_ is Star!5359) (regex!3934 lt!738499)))))

(declare-fun d!588120 () Bool)

(declare-fun lt!739388 () Regex!5359)

(assert (=> d!588120 (validRegex!2134 lt!739388)))

(assert (=> d!588120 (= lt!739388 e!1232926)))

(declare-fun c!313752 () Bool)

(assert (=> d!588120 (= c!313752 (or ((_ is EmptyExpr!5359) (regex!3934 lt!738499)) ((_ is EmptyLang!5359) (regex!3934 lt!738499))))))

(assert (=> d!588120 (validRegex!2134 (regex!3934 lt!738499))))

(assert (=> d!588120 (= (derivativeStep!1367 (regex!3934 lt!738499) (head!4494 lt!738494)) lt!739388)))

(declare-fun b!1928842 () Bool)

(assert (=> b!1928842 (= e!1232927 (Concat!9430 call!118654 (regex!3934 lt!738499)))))

(declare-fun b!1928843 () Bool)

(assert (=> b!1928843 (= e!1232925 (ite (= (head!4494 lt!738494) (c!313265 (regex!3934 lt!738499))) EmptyExpr!5359 EmptyLang!5359))))

(declare-fun b!1928844 () Bool)

(assert (=> b!1928844 (= e!1232924 (Union!5359 (Concat!9430 call!118652 (regTwo!11230 (regex!3934 lt!738499))) EmptyLang!5359))))

(declare-fun bm!118649 () Bool)

(assert (=> bm!118649 (= call!118653 (derivativeStep!1367 (ite c!313754 (regTwo!11231 (regex!3934 lt!738499)) (regOne!11230 (regex!3934 lt!738499))) (head!4494 lt!738494)))))

(declare-fun bm!118650 () Bool)

(assert (=> bm!118650 (= call!118654 call!118655)))

(declare-fun b!1928845 () Bool)

(assert (=> b!1928845 (= e!1232924 (Union!5359 (Concat!9430 call!118653 (regTwo!11230 (regex!3934 lt!738499))) call!118652))))

(assert (= (and d!588120 c!313752) b!1928838))

(assert (= (and d!588120 (not c!313752)) b!1928840))

(assert (= (and b!1928840 c!313755) b!1928843))

(assert (= (and b!1928840 (not c!313755)) b!1928837))

(assert (= (and b!1928837 c!313754) b!1928836))

(assert (= (and b!1928837 (not c!313754)) b!1928841))

(assert (= (and b!1928841 c!313751) b!1928842))

(assert (= (and b!1928841 (not c!313751)) b!1928839))

(assert (= (and b!1928839 c!313753) b!1928845))

(assert (= (and b!1928839 (not c!313753)) b!1928844))

(assert (= (or b!1928845 b!1928844) bm!118648))

(assert (= (or b!1928842 bm!118648) bm!118650))

(assert (= (or b!1928836 bm!118650) bm!118647))

(assert (= (or b!1928836 b!1928845) bm!118649))

(declare-fun m!2366143 () Bool)

(assert (=> b!1928839 m!2366143))

(assert (=> bm!118647 m!2363141))

(declare-fun m!2366145 () Bool)

(assert (=> bm!118647 m!2366145))

(declare-fun m!2366147 () Bool)

(assert (=> d!588120 m!2366147))

(assert (=> d!588120 m!2363155))

(assert (=> bm!118649 m!2363141))

(declare-fun m!2366149 () Bool)

(assert (=> bm!118649 m!2366149))

(assert (=> b!1926918 d!588120))

(assert (=> b!1926918 d!587658))

(assert (=> b!1926918 d!587934))

(declare-fun d!588126 () Bool)

(declare-fun lt!739389 () Bool)

(assert (=> d!588126 (= lt!739389 (select (content!3173 rules!3198) (get!6907 lt!738644)))))

(declare-fun e!1232936 () Bool)

(assert (=> d!588126 (= lt!739389 e!1232936)))

(declare-fun res!862482 () Bool)

(assert (=> d!588126 (=> (not res!862482) (not e!1232936))))

(assert (=> d!588126 (= res!862482 ((_ is Cons!21936) rules!3198))))

(assert (=> d!588126 (= (contains!3967 rules!3198 (get!6907 lt!738644)) lt!739389)))

(declare-fun b!1928859 () Bool)

(declare-fun e!1232935 () Bool)

(assert (=> b!1928859 (= e!1232936 e!1232935)))

(declare-fun res!862483 () Bool)

(assert (=> b!1928859 (=> res!862483 e!1232935)))

(assert (=> b!1928859 (= res!862483 (= (h!27337 rules!3198) (get!6907 lt!738644)))))

(declare-fun b!1928860 () Bool)

(assert (=> b!1928860 (= e!1232935 (contains!3967 (t!179567 rules!3198) (get!6907 lt!738644)))))

(assert (= (and d!588126 res!862482) b!1928859))

(assert (= (and b!1928859 (not res!862483)) b!1928860))

(assert (=> d!588126 m!2364327))

(assert (=> d!588126 m!2363487))

(declare-fun m!2366151 () Bool)

(assert (=> d!588126 m!2366151))

(assert (=> b!1928860 m!2363487))

(declare-fun m!2366153 () Bool)

(assert (=> b!1928860 m!2366153))

(assert (=> b!1927177 d!588126))

(assert (=> b!1927177 d!587882))

(declare-fun d!588128 () Bool)

(declare-fun lt!739390 () Int)

(assert (=> d!588128 (>= lt!739390 0)))

(declare-fun e!1232937 () Int)

(assert (=> d!588128 (= lt!739390 e!1232937)))

(declare-fun c!313762 () Bool)

(assert (=> d!588128 (= c!313762 ((_ is Nil!21935) lt!738675))))

(assert (=> d!588128 (= (size!17110 lt!738675) lt!739390)))

(declare-fun b!1928861 () Bool)

(assert (=> b!1928861 (= e!1232937 0)))

(declare-fun b!1928862 () Bool)

(assert (=> b!1928862 (= e!1232937 (+ 1 (size!17110 (t!179566 lt!738675))))))

(assert (= (and d!588128 c!313762) b!1928861))

(assert (= (and d!588128 (not c!313762)) b!1928862))

(declare-fun m!2366159 () Bool)

(assert (=> b!1928862 m!2366159))

(assert (=> b!1927202 d!588128))

(declare-fun d!588130 () Bool)

(declare-fun lt!739391 () Int)

(assert (=> d!588130 (>= lt!739391 0)))

(declare-fun e!1232938 () Int)

(assert (=> d!588130 (= lt!739391 e!1232938)))

(declare-fun c!313763 () Bool)

(assert (=> d!588130 (= c!313763 ((_ is Nil!21935) (++!5881 lt!738494 lt!738500)))))

(assert (=> d!588130 (= (size!17110 (++!5881 lt!738494 lt!738500)) lt!739391)))

(declare-fun b!1928863 () Bool)

(assert (=> b!1928863 (= e!1232938 0)))

(declare-fun b!1928864 () Bool)

(assert (=> b!1928864 (= e!1232938 (+ 1 (size!17110 (t!179566 (++!5881 lt!738494 lt!738500)))))))

(assert (= (and d!588130 c!313763) b!1928863))

(assert (= (and d!588130 (not c!313763)) b!1928864))

(assert (=> b!1928864 m!2365393))

(assert (=> b!1927202 d!588130))

(declare-fun d!588136 () Bool)

(declare-fun lt!739392 () Int)

(assert (=> d!588136 (>= lt!739392 0)))

(declare-fun e!1232939 () Int)

(assert (=> d!588136 (= lt!739392 e!1232939)))

(declare-fun c!313764 () Bool)

(assert (=> d!588136 (= c!313764 ((_ is Nil!21935) lt!738491))))

(assert (=> d!588136 (= (size!17110 lt!738491) lt!739392)))

(declare-fun b!1928865 () Bool)

(assert (=> b!1928865 (= e!1232939 0)))

(declare-fun b!1928866 () Bool)

(assert (=> b!1928866 (= e!1232939 (+ 1 (size!17110 (t!179566 lt!738491))))))

(assert (= (and d!588136 c!313764) b!1928865))

(assert (= (and d!588136 (not c!313764)) b!1928866))

(declare-fun m!2366163 () Bool)

(assert (=> b!1928866 m!2366163))

(assert (=> b!1927202 d!588136))

(declare-fun d!588140 () Bool)

(declare-fun res!862484 () Bool)

(declare-fun e!1232940 () Bool)

(assert (=> d!588140 (=> (not res!862484) (not e!1232940))))

(assert (=> d!588140 (= res!862484 (not (isEmpty!13510 (originalCharacters!4741 (h!27338 (t!179568 tokens!598))))))))

(assert (=> d!588140 (= (inv!29016 (h!27338 (t!179568 tokens!598))) e!1232940)))

(declare-fun b!1928867 () Bool)

(declare-fun res!862485 () Bool)

(assert (=> b!1928867 (=> (not res!862485) (not e!1232940))))

(assert (=> b!1928867 (= res!862485 (= (originalCharacters!4741 (h!27338 (t!179568 tokens!598))) (list!8871 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (value!123710 (h!27338 (t!179568 tokens!598)))))))))

(declare-fun b!1928868 () Bool)

(assert (=> b!1928868 (= e!1232940 (= (size!17108 (h!27338 (t!179568 tokens!598))) (size!17110 (originalCharacters!4741 (h!27338 (t!179568 tokens!598))))))))

(assert (= (and d!588140 res!862484) b!1928867))

(assert (= (and b!1928867 res!862485) b!1928868))

(declare-fun b_lambda!63931 () Bool)

(assert (=> (not b_lambda!63931) (not b!1928867)))

(assert (=> b!1928867 t!179806))

(declare-fun b_and!151349 () Bool)

(assert (= b_and!151329 (and (=> t!179806 result!142768) b_and!151349)))

(assert (=> b!1928867 t!179810))

(declare-fun b_and!151351 () Bool)

(assert (= b_and!151333 (and (=> t!179810 result!142772) b_and!151351)))

(assert (=> b!1928867 t!179808))

(declare-fun b_and!151353 () Bool)

(assert (= b_and!151331 (and (=> t!179808 result!142770) b_and!151353)))

(assert (=> b!1928867 t!179812))

(declare-fun b_and!151355 () Bool)

(assert (= b_and!151335 (and (=> t!179812 result!142774) b_and!151355)))

(assert (=> b!1928867 t!179814))

(declare-fun b_and!151357 () Bool)

(assert (= b_and!151337 (and (=> t!179814 result!142776) b_and!151357)))

(declare-fun m!2366165 () Bool)

(assert (=> d!588140 m!2366165))

(assert (=> b!1928867 m!2365475))

(assert (=> b!1928867 m!2365475))

(declare-fun m!2366167 () Bool)

(assert (=> b!1928867 m!2366167))

(declare-fun m!2366169 () Bool)

(assert (=> b!1928868 m!2366169))

(assert (=> b!1927658 d!588140))

(assert (=> bm!118527 d!587652))

(assert (=> b!1926921 d!587932))

(assert (=> b!1926921 d!587934))

(declare-fun d!588142 () Bool)

(declare-fun e!1232942 () Bool)

(assert (=> d!588142 e!1232942))

(declare-fun res!862486 () Bool)

(assert (=> d!588142 (=> (not res!862486) (not e!1232942))))

(declare-fun lt!739393 () List!22017)

(assert (=> d!588142 (= res!862486 (= (content!3171 lt!739393) ((_ map or) (content!3171 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))) (content!3171 (_2!11743 (get!6908 lt!738640))))))))

(declare-fun e!1232941 () List!22017)

(assert (=> d!588142 (= lt!739393 e!1232941)))

(declare-fun c!313765 () Bool)

(assert (=> d!588142 (= c!313765 ((_ is Nil!21935) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))))))

(assert (=> d!588142 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640)))) (_2!11743 (get!6908 lt!738640))) lt!739393)))

(declare-fun b!1928872 () Bool)

(assert (=> b!1928872 (= e!1232942 (or (not (= (_2!11743 (get!6908 lt!738640)) Nil!21935)) (= lt!739393 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640)))))))))

(declare-fun b!1928871 () Bool)

(declare-fun res!862487 () Bool)

(assert (=> b!1928871 (=> (not res!862487) (not e!1232942))))

(assert (=> b!1928871 (= res!862487 (= (size!17110 lt!739393) (+ (size!17110 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))) (size!17110 (_2!11743 (get!6908 lt!738640))))))))

(declare-fun b!1928870 () Bool)

(assert (=> b!1928870 (= e!1232941 (Cons!21935 (h!27336 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))) (++!5881 (t!179566 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))) (_2!11743 (get!6908 lt!738640)))))))

(declare-fun b!1928869 () Bool)

(assert (=> b!1928869 (= e!1232941 (_2!11743 (get!6908 lt!738640)))))

(assert (= (and d!588142 c!313765) b!1928869))

(assert (= (and d!588142 (not c!313765)) b!1928870))

(assert (= (and d!588142 res!862486) b!1928871))

(assert (= (and b!1928871 res!862487) b!1928872))

(declare-fun m!2366179 () Bool)

(assert (=> d!588142 m!2366179))

(assert (=> d!588142 m!2363459))

(declare-fun m!2366183 () Bool)

(assert (=> d!588142 m!2366183))

(declare-fun m!2366185 () Bool)

(assert (=> d!588142 m!2366185))

(declare-fun m!2366187 () Bool)

(assert (=> b!1928871 m!2366187))

(assert (=> b!1928871 m!2363459))

(declare-fun m!2366189 () Bool)

(assert (=> b!1928871 m!2366189))

(assert (=> b!1928871 m!2363453))

(declare-fun m!2366191 () Bool)

(assert (=> b!1928870 m!2366191))

(assert (=> b!1927170 d!588142))

(assert (=> b!1927170 d!587662))

(assert (=> b!1927170 d!587664))

(assert (=> b!1927170 d!587544))

(declare-fun b!1928893 () Bool)

(declare-fun e!1232954 () List!22017)

(assert (=> b!1928893 (= e!1232954 (++!5881 (list!8873 (left!17447 (c!313264 (charsOf!2474 separatorToken!354)))) (list!8873 (right!17777 (c!313264 (charsOf!2474 separatorToken!354))))))))

(declare-fun b!1928892 () Bool)

(declare-fun list!8879 (IArray!14649) List!22017)

(assert (=> b!1928892 (= e!1232954 (list!8879 (xs!10216 (c!313264 (charsOf!2474 separatorToken!354)))))))

(declare-fun b!1928890 () Bool)

(declare-fun e!1232953 () List!22017)

(assert (=> b!1928890 (= e!1232953 Nil!21935)))

(declare-fun b!1928891 () Bool)

(assert (=> b!1928891 (= e!1232953 e!1232954)))

(declare-fun c!313773 () Bool)

(assert (=> b!1928891 (= c!313773 ((_ is Leaf!10752) (c!313264 (charsOf!2474 separatorToken!354))))))

(declare-fun d!588150 () Bool)

(declare-fun c!313772 () Bool)

(assert (=> d!588150 (= c!313772 ((_ is Empty!7322) (c!313264 (charsOf!2474 separatorToken!354))))))

(assert (=> d!588150 (= (list!8873 (c!313264 (charsOf!2474 separatorToken!354))) e!1232953)))

(assert (= (and d!588150 c!313772) b!1928890))

(assert (= (and d!588150 (not c!313772)) b!1928891))

(assert (= (and b!1928891 c!313773) b!1928892))

(assert (= (and b!1928891 (not c!313773)) b!1928893))

(declare-fun m!2366205 () Bool)

(assert (=> b!1928893 m!2366205))

(declare-fun m!2366207 () Bool)

(assert (=> b!1928893 m!2366207))

(assert (=> b!1928893 m!2366205))

(assert (=> b!1928893 m!2366207))

(declare-fun m!2366209 () Bool)

(assert (=> b!1928893 m!2366209))

(declare-fun m!2366211 () Bool)

(assert (=> b!1928892 m!2366211))

(assert (=> d!587226 d!588150))

(declare-fun d!588158 () Bool)

(declare-fun e!1232957 () Bool)

(assert (=> d!588158 e!1232957))

(declare-fun res!862494 () Bool)

(assert (=> d!588158 (=> (not res!862494) (not e!1232957))))

(declare-fun lt!739400 () List!22017)

(assert (=> d!588158 (= res!862494 (= (content!3171 lt!739400) ((_ map or) (content!3171 (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) (content!3171 (printList!1082 thiss!23328 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))))))

(declare-fun e!1232956 () List!22017)

(assert (=> d!588158 (= lt!739400 e!1232956)))

(declare-fun c!313774 () Bool)

(assert (=> d!588158 (= c!313774 ((_ is Nil!21935) (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))))))

(assert (=> d!588158 (= (++!5881 (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))) (printList!1082 thiss!23328 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937)))) lt!739400)))

(declare-fun b!1928898 () Bool)

(assert (=> b!1928898 (= e!1232957 (or (not (= (printList!1082 thiss!23328 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937))) Nil!21935)) (= lt!739400 (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))))))

(declare-fun b!1928897 () Bool)

(declare-fun res!862495 () Bool)

(assert (=> b!1928897 (=> (not res!862495) (not e!1232957))))

(assert (=> b!1928897 (= res!862495 (= (size!17110 lt!739400) (+ (size!17110 (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) (size!17110 (printList!1082 thiss!23328 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))))))

(declare-fun b!1928896 () Bool)

(assert (=> b!1928896 (= e!1232956 (Cons!21935 (h!27336 (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) (++!5881 (t!179566 (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) (printList!1082 thiss!23328 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937))))))))

(declare-fun b!1928895 () Bool)

(assert (=> b!1928895 (= e!1232956 (printList!1082 thiss!23328 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937))))))

(assert (= (and d!588158 c!313774) b!1928895))

(assert (= (and d!588158 (not c!313774)) b!1928896))

(assert (= (and d!588158 res!862494) b!1928897))

(assert (= (and b!1928897 res!862495) b!1928898))

(declare-fun m!2366221 () Bool)

(assert (=> d!588158 m!2366221))

(assert (=> d!588158 m!2363639))

(declare-fun m!2366223 () Bool)

(assert (=> d!588158 m!2366223))

(assert (=> d!588158 m!2363641))

(declare-fun m!2366225 () Bool)

(assert (=> d!588158 m!2366225))

(declare-fun m!2366227 () Bool)

(assert (=> b!1928897 m!2366227))

(assert (=> b!1928897 m!2363639))

(declare-fun m!2366229 () Bool)

(assert (=> b!1928897 m!2366229))

(assert (=> b!1928897 m!2363641))

(declare-fun m!2366231 () Bool)

(assert (=> b!1928897 m!2366231))

(assert (=> b!1928896 m!2363641))

(declare-fun m!2366233 () Bool)

(assert (=> b!1928896 m!2366233))

(assert (=> b!1927288 d!588158))

(declare-fun d!588162 () Bool)

(assert (=> d!588162 (= (list!8871 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))) (list!8873 (c!313264 (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))))))

(declare-fun bs!414841 () Bool)

(assert (= bs!414841 d!588162))

(declare-fun m!2366235 () Bool)

(assert (=> bs!414841 m!2366235))

(assert (=> b!1927288 d!588162))

(declare-fun d!588164 () Bool)

(declare-fun lt!739406 () BalanceConc!14460)

(assert (=> d!588164 (= (list!8871 lt!739406) (originalCharacters!4741 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))))

(assert (=> d!588164 (= lt!739406 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) (value!123710 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))))

(assert (=> d!588164 (= (charsOf!2474 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))) lt!739406)))

(declare-fun b_lambda!63935 () Bool)

(assert (=> (not b_lambda!63935) (not d!588164)))

(declare-fun tb!118197 () Bool)

(declare-fun t!179830 () Bool)

(assert (=> (and b!1926820 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))) t!179830) tb!118197))

(declare-fun b!1928908 () Bool)

(declare-fun e!1232961 () Bool)

(declare-fun tp!550588 () Bool)

(assert (=> b!1928908 (= e!1232961 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) (value!123710 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))) tp!550588))))

(declare-fun result!142788 () Bool)

(assert (=> tb!118197 (= result!142788 (and (inv!29020 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) (value!123710 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) e!1232961))))

(assert (= tb!118197 b!1928908))

(declare-fun m!2366237 () Bool)

(assert (=> b!1928908 m!2366237))

(declare-fun m!2366239 () Bool)

(assert (=> tb!118197 m!2366239))

(assert (=> d!588164 t!179830))

(declare-fun b_and!151359 () Bool)

(assert (= b_and!151353 (and (=> t!179830 result!142788) b_and!151359)))

(declare-fun t!179832 () Bool)

(declare-fun tb!118199 () Bool)

(assert (=> (and b!1926830 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))) t!179832) tb!118199))

(declare-fun result!142790 () Bool)

(assert (= result!142790 result!142788))

(assert (=> d!588164 t!179832))

(declare-fun b_and!151361 () Bool)

(assert (= b_and!151357 (and (=> t!179832 result!142790) b_and!151361)))

(declare-fun t!179834 () Bool)

(declare-fun tb!118201 () Bool)

(assert (=> (and b!1927661 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))) t!179834) tb!118201))

(declare-fun result!142792 () Bool)

(assert (= result!142792 result!142788))

(assert (=> d!588164 t!179834))

(declare-fun b_and!151363 () Bool)

(assert (= b_and!151351 (and (=> t!179834 result!142792) b_and!151363)))

(declare-fun tb!118203 () Bool)

(declare-fun t!179836 () Bool)

(assert (=> (and b!1926809 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))) t!179836) tb!118203))

(declare-fun result!142794 () Bool)

(assert (= result!142794 result!142788))

(assert (=> d!588164 t!179836))

(declare-fun b_and!151365 () Bool)

(assert (= b_and!151349 (and (=> t!179836 result!142794) b_and!151365)))

(declare-fun t!179838 () Bool)

(declare-fun tb!118205 () Bool)

(assert (=> (and b!1927628 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))) t!179838) tb!118205))

(declare-fun result!142796 () Bool)

(assert (= result!142796 result!142788))

(assert (=> d!588164 t!179838))

(declare-fun b_and!151367 () Bool)

(assert (= b_and!151355 (and (=> t!179838 result!142796) b_and!151367)))

(declare-fun m!2366241 () Bool)

(assert (=> d!588164 m!2366241))

(declare-fun m!2366243 () Bool)

(assert (=> d!588164 m!2366243))

(assert (=> b!1927288 d!588164))

(declare-fun d!588166 () Bool)

(declare-fun c!313776 () Bool)

(assert (=> d!588166 (= c!313776 ((_ is Cons!21937) (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937))))))

(declare-fun e!1232962 () List!22017)

(assert (=> d!588166 (= (printList!1082 thiss!23328 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937))) e!1232962)))

(declare-fun b!1928909 () Bool)

(assert (=> b!1928909 (= e!1232962 (++!5881 (list!8871 (charsOf!2474 (h!27338 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937))))) (printList!1082 thiss!23328 (t!179568 (t!179568 (Cons!21937 (h!27338 tokens!598) Nil!21937))))))))

(declare-fun b!1928910 () Bool)

(assert (=> b!1928910 (= e!1232962 Nil!21935)))

(assert (= (and d!588166 c!313776) b!1928909))

(assert (= (and d!588166 (not c!313776)) b!1928910))

(declare-fun m!2366247 () Bool)

(assert (=> b!1928909 m!2366247))

(assert (=> b!1928909 m!2366247))

(declare-fun m!2366251 () Bool)

(assert (=> b!1928909 m!2366251))

(declare-fun m!2366255 () Bool)

(assert (=> b!1928909 m!2366255))

(assert (=> b!1928909 m!2366251))

(assert (=> b!1928909 m!2366255))

(declare-fun m!2366261 () Bool)

(assert (=> b!1928909 m!2366261))

(assert (=> b!1927288 d!588166))

(declare-fun b!1928911 () Bool)

(declare-fun e!1232965 () Bool)

(declare-fun e!1232964 () Bool)

(assert (=> b!1928911 (= e!1232965 e!1232964)))

(declare-fun res!862510 () Bool)

(assert (=> b!1928911 (=> (not res!862510) (not e!1232964))))

(declare-fun lt!739407 () Bool)

(assert (=> b!1928911 (= res!862510 (not lt!739407))))

(declare-fun b!1928912 () Bool)

(declare-fun e!1232966 () Bool)

(assert (=> b!1928912 (= e!1232966 (matchR!2627 (derivativeStep!1367 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))) (head!4494 (list!8871 (charsOf!2474 separatorToken!354)))) (tail!2979 (list!8871 (charsOf!2474 separatorToken!354)))))))

(declare-fun b!1928913 () Bool)

(declare-fun e!1232968 () Bool)

(assert (=> b!1928913 (= e!1232968 (= (head!4494 (list!8871 (charsOf!2474 separatorToken!354))) (c!313265 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))))))))

(declare-fun b!1928914 () Bool)

(declare-fun res!862506 () Bool)

(assert (=> b!1928914 (=> (not res!862506) (not e!1232968))))

(assert (=> b!1928914 (= res!862506 (isEmpty!13510 (tail!2979 (list!8871 (charsOf!2474 separatorToken!354)))))))

(declare-fun b!1928915 () Bool)

(declare-fun res!862504 () Bool)

(declare-fun e!1232963 () Bool)

(assert (=> b!1928915 (=> res!862504 e!1232963)))

(assert (=> b!1928915 (= res!862504 (not (isEmpty!13510 (tail!2979 (list!8871 (charsOf!2474 separatorToken!354))))))))

(declare-fun b!1928916 () Bool)

(assert (=> b!1928916 (= e!1232964 e!1232963)))

(declare-fun res!862505 () Bool)

(assert (=> b!1928916 (=> res!862505 e!1232963)))

(declare-fun call!118661 () Bool)

(assert (=> b!1928916 (= res!862505 call!118661)))

(declare-fun b!1928917 () Bool)

(declare-fun res!862503 () Bool)

(assert (=> b!1928917 (=> res!862503 e!1232965)))

(assert (=> b!1928917 (= res!862503 e!1232968)))

(declare-fun res!862509 () Bool)

(assert (=> b!1928917 (=> (not res!862509) (not e!1232968))))

(assert (=> b!1928917 (= res!862509 lt!739407)))

(declare-fun b!1928918 () Bool)

(assert (=> b!1928918 (= e!1232963 (not (= (head!4494 (list!8871 (charsOf!2474 separatorToken!354))) (c!313265 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))))))))))

(declare-fun b!1928919 () Bool)

(declare-fun res!862507 () Bool)

(assert (=> b!1928919 (=> (not res!862507) (not e!1232968))))

(assert (=> b!1928919 (= res!862507 (not call!118661))))

(declare-fun b!1928920 () Bool)

(declare-fun res!862508 () Bool)

(assert (=> b!1928920 (=> res!862508 e!1232965)))

(assert (=> b!1928920 (= res!862508 (not ((_ is ElementMatch!5359) (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))))))))

(declare-fun e!1232969 () Bool)

(assert (=> b!1928920 (= e!1232969 e!1232965)))

(declare-fun b!1928921 () Bool)

(declare-fun e!1232967 () Bool)

(assert (=> b!1928921 (= e!1232967 (= lt!739407 call!118661))))

(declare-fun b!1928922 () Bool)

(assert (=> b!1928922 (= e!1232967 e!1232969)))

(declare-fun c!313779 () Bool)

(assert (=> b!1928922 (= c!313779 ((_ is EmptyLang!5359) (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))))))))

(declare-fun b!1928923 () Bool)

(assert (=> b!1928923 (= e!1232969 (not lt!739407))))

(declare-fun b!1928924 () Bool)

(assert (=> b!1928924 (= e!1232966 (nullable!1608 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))))))))

(declare-fun bm!118656 () Bool)

(assert (=> bm!118656 (= call!118661 (isEmpty!13510 (list!8871 (charsOf!2474 separatorToken!354))))))

(declare-fun d!588168 () Bool)

(assert (=> d!588168 e!1232967))

(declare-fun c!313777 () Bool)

(assert (=> d!588168 (= c!313777 ((_ is EmptyExpr!5359) (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))))))))

(assert (=> d!588168 (= lt!739407 e!1232966)))

(declare-fun c!313778 () Bool)

(assert (=> d!588168 (= c!313778 (isEmpty!13510 (list!8871 (charsOf!2474 separatorToken!354))))))

(assert (=> d!588168 (validRegex!2134 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))))))

(assert (=> d!588168 (= (matchR!2627 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354))))) (list!8871 (charsOf!2474 separatorToken!354))) lt!739407)))

(assert (= (and d!588168 c!313778) b!1928924))

(assert (= (and d!588168 (not c!313778)) b!1928912))

(assert (= (and d!588168 c!313777) b!1928921))

(assert (= (and d!588168 (not c!313777)) b!1928922))

(assert (= (and b!1928922 c!313779) b!1928923))

(assert (= (and b!1928922 (not c!313779)) b!1928920))

(assert (= (and b!1928920 (not res!862508)) b!1928917))

(assert (= (and b!1928917 res!862509) b!1928919))

(assert (= (and b!1928919 res!862507) b!1928914))

(assert (= (and b!1928914 res!862506) b!1928913))

(assert (= (and b!1928917 (not res!862503)) b!1928911))

(assert (= (and b!1928911 res!862510) b!1928916))

(assert (= (and b!1928916 (not res!862505)) b!1928915))

(assert (= (and b!1928915 (not res!862504)) b!1928918))

(assert (= (or b!1928921 b!1928916 b!1928919) bm!118656))

(assert (=> b!1928918 m!2362977))

(declare-fun m!2366285 () Bool)

(assert (=> b!1928918 m!2366285))

(assert (=> b!1928912 m!2362977))

(assert (=> b!1928912 m!2366285))

(assert (=> b!1928912 m!2366285))

(declare-fun m!2366287 () Bool)

(assert (=> b!1928912 m!2366287))

(assert (=> b!1928912 m!2362977))

(declare-fun m!2366289 () Bool)

(assert (=> b!1928912 m!2366289))

(assert (=> b!1928912 m!2366287))

(assert (=> b!1928912 m!2366289))

(declare-fun m!2366291 () Bool)

(assert (=> b!1928912 m!2366291))

(assert (=> b!1928915 m!2362977))

(assert (=> b!1928915 m!2366289))

(assert (=> b!1928915 m!2366289))

(declare-fun m!2366293 () Bool)

(assert (=> b!1928915 m!2366293))

(assert (=> b!1928914 m!2362977))

(assert (=> b!1928914 m!2366289))

(assert (=> b!1928914 m!2366289))

(assert (=> b!1928914 m!2366293))

(declare-fun m!2366295 () Bool)

(assert (=> b!1928924 m!2366295))

(assert (=> b!1928913 m!2362977))

(assert (=> b!1928913 m!2366285))

(assert (=> bm!118656 m!2362977))

(declare-fun m!2366297 () Bool)

(assert (=> bm!118656 m!2366297))

(assert (=> d!588168 m!2362977))

(assert (=> d!588168 m!2366297))

(declare-fun m!2366299 () Bool)

(assert (=> d!588168 m!2366299))

(assert (=> b!1926935 d!588168))

(declare-fun d!588172 () Bool)

(assert (=> d!588172 (= (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))) (v!26636 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 separatorToken!354)))))))

(assert (=> b!1926935 d!588172))

(assert (=> b!1926935 d!587226))

(assert (=> b!1926935 d!587260))

(assert (=> b!1926935 d!587232))

(declare-fun d!588174 () Bool)

(declare-fun e!1232978 () Bool)

(assert (=> d!588174 e!1232978))

(declare-fun res!862511 () Bool)

(assert (=> d!588174 (=> (not res!862511) (not e!1232978))))

(declare-fun lt!739414 () List!22017)

(assert (=> d!588174 (= res!862511 (= (content!3171 lt!739414) ((_ map or) (content!3171 (t!179566 lt!738494)) (content!3171 lt!738491))))))

(declare-fun e!1232977 () List!22017)

(assert (=> d!588174 (= lt!739414 e!1232977)))

(declare-fun c!313784 () Bool)

(assert (=> d!588174 (= c!313784 ((_ is Nil!21935) (t!179566 lt!738494)))))

(assert (=> d!588174 (= (++!5881 (t!179566 lt!738494) lt!738491) lt!739414)))

(declare-fun b!1928939 () Bool)

(assert (=> b!1928939 (= e!1232978 (or (not (= lt!738491 Nil!21935)) (= lt!739414 (t!179566 lt!738494))))))

(declare-fun b!1928938 () Bool)

(declare-fun res!862512 () Bool)

(assert (=> b!1928938 (=> (not res!862512) (not e!1232978))))

(assert (=> b!1928938 (= res!862512 (= (size!17110 lt!739414) (+ (size!17110 (t!179566 lt!738494)) (size!17110 lt!738491))))))

(declare-fun b!1928937 () Bool)

(assert (=> b!1928937 (= e!1232977 (Cons!21935 (h!27336 (t!179566 lt!738494)) (++!5881 (t!179566 (t!179566 lt!738494)) lt!738491)))))

(declare-fun b!1928936 () Bool)

(assert (=> b!1928936 (= e!1232977 lt!738491)))

(assert (= (and d!588174 c!313784) b!1928936))

(assert (= (and d!588174 (not c!313784)) b!1928937))

(assert (= (and d!588174 res!862511) b!1928938))

(assert (= (and b!1928938 res!862512) b!1928939))

(declare-fun m!2366301 () Bool)

(assert (=> d!588174 m!2366301))

(assert (=> d!588174 m!2364211))

(assert (=> d!588174 m!2363429))

(declare-fun m!2366303 () Bool)

(assert (=> b!1928938 m!2366303))

(assert (=> b!1928938 m!2365633))

(assert (=> b!1928938 m!2363435))

(declare-fun m!2366305 () Bool)

(assert (=> b!1928937 m!2366305))

(assert (=> b!1927159 d!588174))

(declare-fun d!588176 () Bool)

(declare-fun lt!739415 () Int)

(assert (=> d!588176 (>= lt!739415 0)))

(declare-fun e!1232979 () Int)

(assert (=> d!588176 (= lt!739415 e!1232979)))

(declare-fun c!313785 () Bool)

(assert (=> d!588176 (= c!313785 ((_ is Nil!21935) lt!738650))))

(assert (=> d!588176 (= (size!17110 lt!738650) lt!739415)))

(declare-fun b!1928940 () Bool)

(assert (=> b!1928940 (= e!1232979 0)))

(declare-fun b!1928941 () Bool)

(assert (=> b!1928941 (= e!1232979 (+ 1 (size!17110 (t!179566 lt!738650))))))

(assert (= (and d!588176 c!313785) b!1928940))

(assert (= (and d!588176 (not c!313785)) b!1928941))

(declare-fun m!2366307 () Bool)

(assert (=> b!1928941 m!2366307))

(assert (=> b!1927189 d!588176))

(declare-fun d!588178 () Bool)

(declare-fun lt!739416 () Int)

(assert (=> d!588178 (>= lt!739416 0)))

(declare-fun e!1232980 () Int)

(assert (=> d!588178 (= lt!739416 e!1232980)))

(declare-fun c!313786 () Bool)

(assert (=> d!588178 (= c!313786 ((_ is Nil!21935) lt!738500))))

(assert (=> d!588178 (= (size!17110 lt!738500) lt!739416)))

(declare-fun b!1928942 () Bool)

(assert (=> b!1928942 (= e!1232980 0)))

(declare-fun b!1928943 () Bool)

(assert (=> b!1928943 (= e!1232980 (+ 1 (size!17110 (t!179566 lt!738500))))))

(assert (= (and d!588178 c!313786) b!1928942))

(assert (= (and d!588178 (not c!313786)) b!1928943))

(assert (=> b!1928943 m!2365605))

(assert (=> b!1927189 d!588178))

(assert (=> b!1927189 d!588136))

(assert (=> b!1927569 d!587298))

(declare-fun d!588180 () Bool)

(declare-fun c!313787 () Bool)

(assert (=> d!588180 (= c!313787 ((_ is Nil!21935) lt!738690))))

(declare-fun e!1232981 () (InoxSet C!10864))

(assert (=> d!588180 (= (content!3171 lt!738690) e!1232981)))

(declare-fun b!1928944 () Bool)

(assert (=> b!1928944 (= e!1232981 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1928945 () Bool)

(assert (=> b!1928945 (= e!1232981 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 lt!738690) true) (content!3171 (t!179566 lt!738690))))))

(assert (= (and d!588180 c!313787) b!1928944))

(assert (= (and d!588180 (not c!313787)) b!1928945))

(declare-fun m!2366309 () Bool)

(assert (=> b!1928945 m!2366309))

(declare-fun m!2366311 () Bool)

(assert (=> b!1928945 m!2366311))

(assert (=> d!587302 d!588180))

(assert (=> d!587302 d!587502))

(declare-fun d!588182 () Bool)

(declare-fun c!313788 () Bool)

(assert (=> d!588182 (= c!313788 ((_ is Nil!21935) (++!5881 lt!738500 lt!738491)))))

(declare-fun e!1232982 () (InoxSet C!10864))

(assert (=> d!588182 (= (content!3171 (++!5881 lt!738500 lt!738491)) e!1232982)))

(declare-fun b!1928946 () Bool)

(assert (=> b!1928946 (= e!1232982 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1928947 () Bool)

(assert (=> b!1928947 (= e!1232982 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 (++!5881 lt!738500 lt!738491)) true) (content!3171 (t!179566 (++!5881 lt!738500 lt!738491)))))))

(assert (= (and d!588182 c!313788) b!1928946))

(assert (= (and d!588182 (not c!313788)) b!1928947))

(declare-fun m!2366313 () Bool)

(assert (=> b!1928947 m!2366313))

(declare-fun m!2366315 () Bool)

(assert (=> b!1928947 m!2366315))

(assert (=> d!587302 d!588182))

(declare-fun d!588184 () Bool)

(declare-fun lt!739417 () Int)

(assert (=> d!588184 (>= lt!739417 0)))

(declare-fun e!1232983 () Int)

(assert (=> d!588184 (= lt!739417 e!1232983)))

(declare-fun c!313789 () Bool)

(assert (=> d!588184 (= c!313789 ((_ is Nil!21935) lt!738682))))

(assert (=> d!588184 (= (size!17110 lt!738682) lt!739417)))

(declare-fun b!1928948 () Bool)

(assert (=> b!1928948 (= e!1232983 0)))

(declare-fun b!1928949 () Bool)

(assert (=> b!1928949 (= e!1232983 (+ 1 (size!17110 (t!179566 lt!738682))))))

(assert (= (and d!588184 c!313789) b!1928948))

(assert (= (and d!588184 (not c!313789)) b!1928949))

(declare-fun m!2366317 () Bool)

(assert (=> b!1928949 m!2366317))

(assert (=> b!1927248 d!588184))

(declare-fun d!588186 () Bool)

(declare-fun lt!739418 () Int)

(assert (=> d!588186 (>= lt!739418 0)))

(declare-fun e!1232984 () Int)

(assert (=> d!588186 (= lt!739418 e!1232984)))

(declare-fun c!313790 () Bool)

(assert (=> d!588186 (= c!313790 ((_ is Nil!21935) lt!738494))))

(assert (=> d!588186 (= (size!17110 lt!738494) lt!739418)))

(declare-fun b!1928950 () Bool)

(assert (=> b!1928950 (= e!1232984 0)))

(declare-fun b!1928951 () Bool)

(assert (=> b!1928951 (= e!1232984 (+ 1 (size!17110 (t!179566 lt!738494))))))

(assert (= (and d!588186 c!313790) b!1928950))

(assert (= (and d!588186 (not c!313790)) b!1928951))

(assert (=> b!1928951 m!2365633))

(assert (=> b!1927248 d!588186))

(assert (=> b!1927248 d!588178))

(assert (=> d!587354 d!587356))

(declare-fun d!588188 () Bool)

(assert (=> d!588188 (not (matchR!2627 (regex!3934 (rule!6139 separatorToken!354)) lt!738500))))

(assert (=> d!588188 true))

(declare-fun _$127!228 () Unit!36278)

(assert (=> d!588188 (= (choose!11971 (regex!3934 (rule!6139 separatorToken!354)) lt!738500 lt!738502) _$127!228)))

(declare-fun bs!414846 () Bool)

(assert (= bs!414846 d!588188))

(assert (=> bs!414846 m!2362955))

(assert (=> d!587354 d!588188))

(assert (=> d!587354 d!587654))

(declare-fun d!588192 () Bool)

(assert (=> d!588192 (= (isDefined!3837 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))) (not (isEmpty!13512 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))))))

(declare-fun bs!414847 () Bool)

(assert (= bs!414847 d!588192))

(assert (=> bs!414847 m!2362979))

(declare-fun m!2366349 () Bool)

(assert (=> bs!414847 m!2366349))

(assert (=> d!587230 d!588192))

(assert (=> d!587230 d!587262))

(declare-fun d!588194 () Bool)

(declare-fun e!1232986 () Bool)

(assert (=> d!588194 e!1232986))

(declare-fun res!862513 () Bool)

(assert (=> d!588194 (=> (not res!862513) (not e!1232986))))

(assert (=> d!588194 (= res!862513 (isDefined!3837 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))))))

(assert (=> d!588194 true))

(declare-fun _$52!1236 () Unit!36278)

(assert (=> d!588194 (= (choose!11966 thiss!23328 rules!3198 lt!738494 (h!27338 tokens!598)) _$52!1236)))

(declare-fun b!1928952 () Bool)

(declare-fun res!862514 () Bool)

(assert (=> b!1928952 (=> (not res!862514) (not e!1232986))))

(assert (=> b!1928952 (= res!862514 (matchR!2627 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))) (list!8871 (charsOf!2474 (h!27338 tokens!598)))))))

(declare-fun b!1928953 () Bool)

(assert (=> b!1928953 (= e!1232986 (= (rule!6139 (h!27338 tokens!598)) (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))))))

(assert (= (and d!588194 res!862513) b!1928952))

(assert (= (and b!1928952 res!862514) b!1928953))

(assert (=> d!588194 m!2362979))

(assert (=> d!588194 m!2362979))

(assert (=> d!588194 m!2363369))

(assert (=> b!1928952 m!2362979))

(assert (=> b!1928952 m!2362997))

(assert (=> b!1928952 m!2362997))

(assert (=> b!1928952 m!2363373))

(assert (=> b!1928952 m!2363373))

(assert (=> b!1928952 m!2363375))

(assert (=> b!1928952 m!2362979))

(assert (=> b!1928952 m!2363377))

(assert (=> b!1928953 m!2362979))

(assert (=> b!1928953 m!2362979))

(assert (=> b!1928953 m!2363377))

(assert (=> d!587230 d!588194))

(assert (=> d!587230 d!587402))

(declare-fun d!588200 () Bool)

(assert (=> d!588200 (= (isEmpty!13512 lt!738644) (not ((_ is Some!4543) lt!738644)))))

(assert (=> d!587262 d!588200))

(assert (=> d!587262 d!587402))

(declare-fun bm!118662 () Bool)

(declare-fun call!118668 () List!22017)

(declare-fun call!118670 () List!22017)

(assert (=> bm!118662 (= call!118668 call!118670)))

(declare-fun c!313795 () Bool)

(declare-fun bm!118663 () Bool)

(declare-fun c!313796 () Bool)

(assert (=> bm!118663 (= call!118670 (usedCharacters!386 (ite c!313796 (reg!5688 (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))) (ite c!313795 (regOne!11231 (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))) (regTwo!11230 (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354))))))))))))

(declare-fun b!1928956 () Bool)

(declare-fun e!1232988 () List!22017)

(declare-fun e!1232991 () List!22017)

(assert (=> b!1928956 (= e!1232988 e!1232991)))

(declare-fun c!313793 () Bool)

(assert (=> b!1928956 (= c!313793 ((_ is ElementMatch!5359) (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))))))

(declare-fun b!1928957 () Bool)

(assert (=> b!1928957 (= e!1232988 Nil!21935)))

(declare-fun d!588204 () Bool)

(declare-fun c!313794 () Bool)

(assert (=> d!588204 (= c!313794 (or ((_ is EmptyExpr!5359) (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))) ((_ is EmptyLang!5359) (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354))))))))))

(assert (=> d!588204 (= (usedCharacters!386 (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))) e!1232988)))

(declare-fun b!1928958 () Bool)

(assert (=> b!1928958 (= c!313796 ((_ is Star!5359) (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))))))

(declare-fun e!1232989 () List!22017)

(assert (=> b!1928958 (= e!1232991 e!1232989)))

(declare-fun bm!118664 () Bool)

(declare-fun call!118669 () List!22017)

(assert (=> bm!118664 (= call!118669 (usedCharacters!386 (ite c!313795 (regTwo!11231 (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))) (regOne!11230 (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))))))))

(declare-fun b!1928959 () Bool)

(declare-fun e!1232990 () List!22017)

(declare-fun call!118667 () List!22017)

(assert (=> b!1928959 (= e!1232990 call!118667)))

(declare-fun b!1928960 () Bool)

(assert (=> b!1928960 (= e!1232989 e!1232990)))

(assert (=> b!1928960 (= c!313795 ((_ is Union!5359) (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))))))

(declare-fun b!1928961 () Bool)

(assert (=> b!1928961 (= e!1232989 call!118670)))

(declare-fun bm!118665 () Bool)

(assert (=> bm!118665 (= call!118667 (++!5881 (ite c!313795 call!118668 call!118669) (ite c!313795 call!118669 call!118668)))))

(declare-fun b!1928962 () Bool)

(assert (=> b!1928962 (= e!1232991 (Cons!21935 (c!313265 (ite c!313377 (reg!5688 (regex!3934 (rule!6139 separatorToken!354))) (ite c!313376 (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354)))))) Nil!21935))))

(declare-fun b!1928963 () Bool)

(assert (=> b!1928963 (= e!1232990 call!118667)))

(assert (= (and d!588204 c!313794) b!1928957))

(assert (= (and d!588204 (not c!313794)) b!1928956))

(assert (= (and b!1928956 c!313793) b!1928962))

(assert (= (and b!1928956 (not c!313793)) b!1928958))

(assert (= (and b!1928958 c!313796) b!1928961))

(assert (= (and b!1928958 (not c!313796)) b!1928960))

(assert (= (and b!1928960 c!313795) b!1928963))

(assert (= (and b!1928960 (not c!313795)) b!1928959))

(assert (= (or b!1928963 b!1928959) bm!118662))

(assert (= (or b!1928963 b!1928959) bm!118664))

(assert (= (or b!1928963 b!1928959) bm!118665))

(assert (= (or b!1928961 bm!118662) bm!118663))

(declare-fun m!2366365 () Bool)

(assert (=> bm!118663 m!2366365))

(declare-fun m!2366367 () Bool)

(assert (=> bm!118664 m!2366367))

(declare-fun m!2366369 () Bool)

(assert (=> bm!118665 m!2366369))

(assert (=> bm!118516 d!588204))

(declare-fun d!588210 () Bool)

(declare-fun lt!739419 () Bool)

(assert (=> d!588210 (= lt!739419 (isEmpty!13510 (list!8871 (_2!11744 lt!738742))))))

(assert (=> d!588210 (= lt!739419 (isEmpty!13522 (c!313264 (_2!11744 lt!738742))))))

(assert (=> d!588210 (= (isEmpty!13518 (_2!11744 lt!738742)) lt!739419)))

(declare-fun bs!414850 () Bool)

(assert (= bs!414850 d!588210))

(declare-fun m!2366371 () Bool)

(assert (=> bs!414850 m!2366371))

(assert (=> bs!414850 m!2366371))

(declare-fun m!2366373 () Bool)

(assert (=> bs!414850 m!2366373))

(declare-fun m!2366375 () Bool)

(assert (=> bs!414850 m!2366375))

(assert (=> b!1927372 d!588210))

(declare-fun b!1928978 () Bool)

(declare-fun e!1233001 () List!22017)

(assert (=> b!1928978 (= e!1233001 (++!5881 (list!8873 (left!17447 (c!313264 lt!738487))) (list!8873 (right!17777 (c!313264 lt!738487)))))))

(declare-fun b!1928977 () Bool)

(assert (=> b!1928977 (= e!1233001 (list!8879 (xs!10216 (c!313264 lt!738487))))))

(declare-fun b!1928975 () Bool)

(declare-fun e!1233000 () List!22017)

(assert (=> b!1928975 (= e!1233000 Nil!21935)))

(declare-fun b!1928976 () Bool)

(assert (=> b!1928976 (= e!1233000 e!1233001)))

(declare-fun c!313801 () Bool)

(assert (=> b!1928976 (= c!313801 ((_ is Leaf!10752) (c!313264 lt!738487)))))

(declare-fun d!588212 () Bool)

(declare-fun c!313800 () Bool)

(assert (=> d!588212 (= c!313800 ((_ is Empty!7322) (c!313264 lt!738487)))))

(assert (=> d!588212 (= (list!8873 (c!313264 lt!738487)) e!1233000)))

(assert (= (and d!588212 c!313800) b!1928975))

(assert (= (and d!588212 (not c!313800)) b!1928976))

(assert (= (and b!1928976 c!313801) b!1928977))

(assert (= (and b!1928976 (not c!313801)) b!1928978))

(declare-fun m!2366385 () Bool)

(assert (=> b!1928978 m!2366385))

(declare-fun m!2366387 () Bool)

(assert (=> b!1928978 m!2366387))

(assert (=> b!1928978 m!2366385))

(assert (=> b!1928978 m!2366387))

(declare-fun m!2366389 () Bool)

(assert (=> b!1928978 m!2366389))

(declare-fun m!2366391 () Bool)

(assert (=> b!1928977 m!2366391))

(assert (=> d!587312 d!588212))

(declare-fun b!1928979 () Bool)

(declare-fun res!862526 () Bool)

(declare-fun e!1233003 () Bool)

(assert (=> b!1928979 (=> (not res!862526) (not e!1233003))))

(declare-fun lt!739422 () Option!4543)

(assert (=> b!1928979 (= res!862526 (matchR!2627 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!739422)))) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739422))))))))

(declare-fun b!1928980 () Bool)

(assert (=> b!1928980 (= e!1233003 (contains!3967 (t!179567 rules!3198) (rule!6139 (_1!11743 (get!6908 lt!739422)))))))

(declare-fun call!118674 () Option!4543)

(declare-fun bm!118669 () Bool)

(assert (=> bm!118669 (= call!118674 (maxPrefixOneRule!1223 thiss!23328 (h!27337 (t!179567 rules!3198)) (++!5881 lt!738494 lt!738491)))))

(declare-fun b!1928981 () Bool)

(declare-fun e!1233002 () Option!4543)

(assert (=> b!1928981 (= e!1233002 call!118674)))

(declare-fun b!1928982 () Bool)

(declare-fun lt!739423 () Option!4543)

(declare-fun lt!739421 () Option!4543)

(assert (=> b!1928982 (= e!1233002 (ite (and ((_ is None!4542) lt!739423) ((_ is None!4542) lt!739421)) None!4542 (ite ((_ is None!4542) lt!739421) lt!739423 (ite ((_ is None!4542) lt!739423) lt!739421 (ite (>= (size!17108 (_1!11743 (v!26635 lt!739423))) (size!17108 (_1!11743 (v!26635 lt!739421)))) lt!739423 lt!739421)))))))

(assert (=> b!1928982 (= lt!739423 call!118674)))

(assert (=> b!1928982 (= lt!739421 (maxPrefix!1985 thiss!23328 (t!179567 (t!179567 rules!3198)) (++!5881 lt!738494 lt!738491)))))

(declare-fun b!1928983 () Bool)

(declare-fun res!862520 () Bool)

(assert (=> b!1928983 (=> (not res!862520) (not e!1233003))))

(assert (=> b!1928983 (= res!862520 (< (size!17110 (_2!11743 (get!6908 lt!739422))) (size!17110 (++!5881 lt!738494 lt!738491))))))

(declare-fun b!1928985 () Bool)

(declare-fun res!862524 () Bool)

(assert (=> b!1928985 (=> (not res!862524) (not e!1233003))))

(assert (=> b!1928985 (= res!862524 (= (value!123710 (_1!11743 (get!6908 lt!739422))) (apply!5693 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!739422)))) (seqFromList!2788 (originalCharacters!4741 (_1!11743 (get!6908 lt!739422)))))))))

(declare-fun b!1928986 () Bool)

(declare-fun res!862521 () Bool)

(assert (=> b!1928986 (=> (not res!862521) (not e!1233003))))

(assert (=> b!1928986 (= res!862521 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739422)))) (_2!11743 (get!6908 lt!739422))) (++!5881 lt!738494 lt!738491)))))

(declare-fun b!1928987 () Bool)

(declare-fun e!1233004 () Bool)

(assert (=> b!1928987 (= e!1233004 e!1233003)))

(declare-fun res!862525 () Bool)

(assert (=> b!1928987 (=> (not res!862525) (not e!1233003))))

(assert (=> b!1928987 (= res!862525 (isDefined!3838 lt!739422))))

(declare-fun d!588218 () Bool)

(assert (=> d!588218 e!1233004))

(declare-fun res!862523 () Bool)

(assert (=> d!588218 (=> res!862523 e!1233004)))

(assert (=> d!588218 (= res!862523 (isEmpty!13513 lt!739422))))

(assert (=> d!588218 (= lt!739422 e!1233002)))

(declare-fun c!313802 () Bool)

(assert (=> d!588218 (= c!313802 (and ((_ is Cons!21936) (t!179567 rules!3198)) ((_ is Nil!21936) (t!179567 (t!179567 rules!3198)))))))

(declare-fun lt!739424 () Unit!36278)

(declare-fun lt!739420 () Unit!36278)

(assert (=> d!588218 (= lt!739424 lt!739420)))

(assert (=> d!588218 (isPrefix!1941 (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491))))

(assert (=> d!588218 (= lt!739420 (lemmaIsPrefixRefl!1259 (++!5881 lt!738494 lt!738491) (++!5881 lt!738494 lt!738491)))))

(assert (=> d!588218 (rulesValidInductive!1340 thiss!23328 (t!179567 rules!3198))))

(assert (=> d!588218 (= (maxPrefix!1985 thiss!23328 (t!179567 rules!3198) (++!5881 lt!738494 lt!738491)) lt!739422)))

(declare-fun b!1928984 () Bool)

(declare-fun res!862522 () Bool)

(assert (=> b!1928984 (=> (not res!862522) (not e!1233003))))

(assert (=> b!1928984 (= res!862522 (= (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!739422)))) (originalCharacters!4741 (_1!11743 (get!6908 lt!739422)))))))

(assert (= (and d!588218 c!313802) b!1928981))

(assert (= (and d!588218 (not c!313802)) b!1928982))

(assert (= (or b!1928981 b!1928982) bm!118669))

(assert (= (and d!588218 (not res!862523)) b!1928987))

(assert (= (and b!1928987 res!862525) b!1928984))

(assert (= (and b!1928984 res!862522) b!1928983))

(assert (= (and b!1928983 res!862520) b!1928986))

(assert (= (and b!1928986 res!862521) b!1928985))

(assert (= (and b!1928985 res!862524) b!1928979))

(assert (= (and b!1928979 res!862526) b!1928980))

(declare-fun m!2366393 () Bool)

(assert (=> b!1928983 m!2366393))

(declare-fun m!2366395 () Bool)

(assert (=> b!1928983 m!2366395))

(assert (=> b!1928983 m!2362969))

(assert (=> b!1928983 m!2363339))

(assert (=> bm!118669 m!2362969))

(declare-fun m!2366397 () Bool)

(assert (=> bm!118669 m!2366397))

(assert (=> b!1928986 m!2366393))

(declare-fun m!2366399 () Bool)

(assert (=> b!1928986 m!2366399))

(assert (=> b!1928986 m!2366399))

(declare-fun m!2366401 () Bool)

(assert (=> b!1928986 m!2366401))

(assert (=> b!1928986 m!2366401))

(declare-fun m!2366403 () Bool)

(assert (=> b!1928986 m!2366403))

(declare-fun m!2366405 () Bool)

(assert (=> d!588218 m!2366405))

(assert (=> d!588218 m!2362969))

(assert (=> d!588218 m!2362969))

(assert (=> d!588218 m!2363351))

(assert (=> d!588218 m!2362969))

(assert (=> d!588218 m!2362969))

(assert (=> d!588218 m!2363353))

(assert (=> d!588218 m!2365333))

(assert (=> b!1928982 m!2362969))

(declare-fun m!2366407 () Bool)

(assert (=> b!1928982 m!2366407))

(assert (=> b!1928984 m!2366393))

(assert (=> b!1928984 m!2366399))

(assert (=> b!1928984 m!2366399))

(assert (=> b!1928984 m!2366401))

(assert (=> b!1928985 m!2366393))

(declare-fun m!2366409 () Bool)

(assert (=> b!1928985 m!2366409))

(assert (=> b!1928985 m!2366409))

(declare-fun m!2366411 () Bool)

(assert (=> b!1928985 m!2366411))

(declare-fun m!2366413 () Bool)

(assert (=> b!1928987 m!2366413))

(assert (=> b!1928980 m!2366393))

(declare-fun m!2366415 () Bool)

(assert (=> b!1928980 m!2366415))

(assert (=> b!1928979 m!2366393))

(assert (=> b!1928979 m!2366399))

(assert (=> b!1928979 m!2366399))

(assert (=> b!1928979 m!2366401))

(assert (=> b!1928979 m!2366401))

(declare-fun m!2366417 () Bool)

(assert (=> b!1928979 m!2366417))

(assert (=> b!1927088 d!588218))

(declare-fun lt!739428 () Bool)

(declare-fun d!588220 () Bool)

(assert (=> d!588220 (= lt!739428 (isEmpty!13510 (list!8871 (_2!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))))))))))

(assert (=> d!588220 (= lt!739428 (isEmpty!13522 (c!313264 (_2!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598))))))))))

(assert (=> d!588220 (= (isEmpty!13518 (_2!11744 (lex!1573 thiss!23328 rules!3198 (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 tokens!598)))))) lt!739428)))

(declare-fun bs!414852 () Bool)

(assert (= bs!414852 d!588220))

(declare-fun m!2366419 () Bool)

(assert (=> bs!414852 m!2366419))

(assert (=> bs!414852 m!2366419))

(declare-fun m!2366421 () Bool)

(assert (=> bs!414852 m!2366421))

(declare-fun m!2366423 () Bool)

(assert (=> bs!414852 m!2366423))

(assert (=> b!1927373 d!588220))

(assert (=> b!1927373 d!587846))

(assert (=> b!1927373 d!587850))

(assert (=> b!1927373 d!587282))

(declare-fun d!588222 () Bool)

(assert (=> d!588222 (= (isEmpty!13512 lt!738492) (not ((_ is Some!4543) lt!738492)))))

(assert (=> d!587266 d!588222))

(declare-fun d!588226 () Bool)

(declare-fun res!862541 () Bool)

(declare-fun e!1233015 () Bool)

(assert (=> d!588226 (=> res!862541 e!1233015)))

(assert (=> d!588226 (= res!862541 ((_ is Nil!21936) rules!3198))))

(assert (=> d!588226 (= (noDuplicateTag!1450 thiss!23328 rules!3198 Nil!21939) e!1233015)))

(declare-fun b!1929004 () Bool)

(declare-fun e!1233016 () Bool)

(assert (=> b!1929004 (= e!1233015 e!1233016)))

(declare-fun res!862542 () Bool)

(assert (=> b!1929004 (=> (not res!862542) (not e!1233016))))

(declare-fun contains!3971 (List!22021 String!25468) Bool)

(assert (=> b!1929004 (= res!862542 (not (contains!3971 Nil!21939 (tag!4380 (h!27337 rules!3198)))))))

(declare-fun b!1929005 () Bool)

(assert (=> b!1929005 (= e!1233016 (noDuplicateTag!1450 thiss!23328 (t!179567 rules!3198) (Cons!21939 (tag!4380 (h!27337 rules!3198)) Nil!21939)))))

(assert (= (and d!588226 (not res!862541)) b!1929004))

(assert (= (and b!1929004 res!862542) b!1929005))

(declare-fun m!2366457 () Bool)

(assert (=> b!1929004 m!2366457))

(declare-fun m!2366461 () Bool)

(assert (=> b!1929005 m!2366461))

(assert (=> b!1927586 d!588226))

(declare-fun d!588232 () Bool)

(assert (=> d!588232 (= (isEmpty!13510 lt!738494) ((_ is Nil!21935) lt!738494))))

(assert (=> d!587184 d!588232))

(declare-fun b!1929010 () Bool)

(declare-fun res!862548 () Bool)

(declare-fun e!1233021 () Bool)

(assert (=> b!1929010 (=> res!862548 e!1233021)))

(assert (=> b!1929010 (= res!862548 (not ((_ is Concat!9430) (regex!3934 lt!738499))))))

(declare-fun e!1233022 () Bool)

(assert (=> b!1929010 (= e!1233022 e!1233021)))

(declare-fun b!1929011 () Bool)

(declare-fun e!1233019 () Bool)

(assert (=> b!1929011 (= e!1233019 e!1233022)))

(declare-fun c!313805 () Bool)

(assert (=> b!1929011 (= c!313805 ((_ is Union!5359) (regex!3934 lt!738499)))))

(declare-fun b!1929012 () Bool)

(declare-fun e!1233025 () Bool)

(declare-fun call!118678 () Bool)

(assert (=> b!1929012 (= e!1233025 call!118678)))

(declare-fun bm!118671 () Bool)

(assert (=> bm!118671 (= call!118678 (validRegex!2134 (ite c!313805 (regTwo!11231 (regex!3934 lt!738499)) (regTwo!11230 (regex!3934 lt!738499)))))))

(declare-fun bm!118672 () Bool)

(declare-fun call!118677 () Bool)

(declare-fun call!118676 () Bool)

(assert (=> bm!118672 (= call!118677 call!118676)))

(declare-fun b!1929014 () Bool)

(declare-fun e!1233020 () Bool)

(assert (=> b!1929014 (= e!1233020 e!1233019)))

(declare-fun c!313806 () Bool)

(assert (=> b!1929014 (= c!313806 ((_ is Star!5359) (regex!3934 lt!738499)))))

(declare-fun b!1929015 () Bool)

(declare-fun e!1233024 () Bool)

(assert (=> b!1929015 (= e!1233024 call!118676)))

(declare-fun b!1929016 () Bool)

(declare-fun e!1233023 () Bool)

(assert (=> b!1929016 (= e!1233021 e!1233023)))

(declare-fun res!862549 () Bool)

(assert (=> b!1929016 (=> (not res!862549) (not e!1233023))))

(assert (=> b!1929016 (= res!862549 call!118677)))

(declare-fun b!1929017 () Bool)

(assert (=> b!1929017 (= e!1233019 e!1233024)))

(declare-fun res!862547 () Bool)

(assert (=> b!1929017 (= res!862547 (not (nullable!1608 (reg!5688 (regex!3934 lt!738499)))))))

(assert (=> b!1929017 (=> (not res!862547) (not e!1233024))))

(declare-fun b!1929018 () Bool)

(declare-fun res!862545 () Bool)

(assert (=> b!1929018 (=> (not res!862545) (not e!1233025))))

(assert (=> b!1929018 (= res!862545 call!118677)))

(assert (=> b!1929018 (= e!1233022 e!1233025)))

(declare-fun bm!118673 () Bool)

(assert (=> bm!118673 (= call!118676 (validRegex!2134 (ite c!313806 (reg!5688 (regex!3934 lt!738499)) (ite c!313805 (regOne!11231 (regex!3934 lt!738499)) (regOne!11230 (regex!3934 lt!738499))))))))

(declare-fun b!1929013 () Bool)

(assert (=> b!1929013 (= e!1233023 call!118678)))

(declare-fun d!588234 () Bool)

(declare-fun res!862546 () Bool)

(assert (=> d!588234 (=> res!862546 e!1233020)))

(assert (=> d!588234 (= res!862546 ((_ is ElementMatch!5359) (regex!3934 lt!738499)))))

(assert (=> d!588234 (= (validRegex!2134 (regex!3934 lt!738499)) e!1233020)))

(assert (= (and d!588234 (not res!862546)) b!1929014))

(assert (= (and b!1929014 c!313806) b!1929017))

(assert (= (and b!1929014 (not c!313806)) b!1929011))

(assert (= (and b!1929017 res!862547) b!1929015))

(assert (= (and b!1929011 c!313805) b!1929018))

(assert (= (and b!1929011 (not c!313805)) b!1929010))

(assert (= (and b!1929018 res!862545) b!1929012))

(assert (= (and b!1929010 (not res!862548)) b!1929016))

(assert (= (and b!1929016 res!862549) b!1929013))

(assert (= (or b!1929018 b!1929016) bm!118672))

(assert (= (or b!1929012 b!1929013) bm!118671))

(assert (= (or b!1929015 bm!118672) bm!118673))

(declare-fun m!2366475 () Bool)

(assert (=> bm!118671 m!2366475))

(declare-fun m!2366477 () Bool)

(assert (=> b!1929017 m!2366477))

(declare-fun m!2366479 () Bool)

(assert (=> bm!118673 m!2366479))

(assert (=> d!587184 d!588234))

(declare-fun d!588238 () Bool)

(assert (=> d!588238 (= (list!8871 lt!738637) (list!8873 (c!313264 lt!738637)))))

(declare-fun bs!414854 () Bool)

(assert (= bs!414854 d!588238))

(declare-fun m!2366481 () Bool)

(assert (=> bs!414854 m!2366481))

(assert (=> d!587254 d!588238))

(assert (=> b!1927574 d!587298))

(declare-fun d!588240 () Bool)

(declare-fun lt!739435 () Bool)

(assert (=> d!588240 (= lt!739435 (select (content!3171 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354))))) lt!738502))))

(declare-fun e!1233027 () Bool)

(assert (=> d!588240 (= lt!739435 e!1233027)))

(declare-fun res!862550 () Bool)

(assert (=> d!588240 (=> (not res!862550) (not e!1233027))))

(assert (=> d!588240 (= res!862550 ((_ is Cons!21935) (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354))))))))

(assert (=> d!588240 (= (contains!3965 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))) lt!738502) lt!739435)))

(declare-fun b!1929019 () Bool)

(declare-fun e!1233026 () Bool)

(assert (=> b!1929019 (= e!1233027 e!1233026)))

(declare-fun res!862551 () Bool)

(assert (=> b!1929019 (=> res!862551 e!1233026)))

(assert (=> b!1929019 (= res!862551 (= (h!27336 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354))))) lt!738502))))

(declare-fun b!1929020 () Bool)

(assert (=> b!1929020 (= e!1233026 (contains!3965 (t!179566 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354))))) lt!738502))))

(assert (= (and d!588240 res!862550) b!1929019))

(assert (= (and b!1929019 (not res!862551)) b!1929020))

(declare-fun m!2366483 () Bool)

(assert (=> d!588240 m!2366483))

(declare-fun m!2366485 () Bool)

(assert (=> d!588240 m!2366485))

(declare-fun m!2366487 () Bool)

(assert (=> b!1929020 m!2366487))

(assert (=> b!1927261 d!588240))

(declare-fun d!588242 () Bool)

(assert (=> d!588242 (= (inv!17 (value!123710 separatorToken!354)) (= (charsToBigInt!1 (text!28938 (value!123710 separatorToken!354))) (value!123702 (value!123710 separatorToken!354))))))

(declare-fun bs!414858 () Bool)

(assert (= bs!414858 d!588242))

(declare-fun m!2366489 () Bool)

(assert (=> bs!414858 m!2366489))

(assert (=> b!1927609 d!588242))

(declare-fun d!588244 () Bool)

(declare-fun lt!739436 () BalanceConc!14460)

(assert (=> d!588244 (= (list!8871 lt!739436) (printList!1082 thiss!23328 (list!8875 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))))))))

(assert (=> d!588244 (= lt!739436 (printTailRec!1023 thiss!23328 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))) 0 (BalanceConc!14461 Empty!7322)))))

(assert (=> d!588244 (= (print!1517 thiss!23328 (singletonSeq!1918 (h!27338 (t!179568 tokens!598)))) lt!739436)))

(declare-fun bs!414860 () Bool)

(assert (= bs!414860 d!588244))

(declare-fun m!2366493 () Bool)

(assert (=> bs!414860 m!2366493))

(assert (=> bs!414860 m!2363325))

(declare-fun m!2366495 () Bool)

(assert (=> bs!414860 m!2366495))

(assert (=> bs!414860 m!2366495))

(declare-fun m!2366497 () Bool)

(assert (=> bs!414860 m!2366497))

(assert (=> bs!414860 m!2363325))

(assert (=> bs!414860 m!2363329))

(assert (=> b!1927052 d!588244))

(declare-fun d!588248 () Bool)

(declare-fun e!1233035 () Bool)

(assert (=> d!588248 e!1233035))

(declare-fun res!862560 () Bool)

(assert (=> d!588248 (=> (not res!862560) (not e!1233035))))

(declare-fun lt!739438 () BalanceConc!14462)

(assert (=> d!588248 (= res!862560 (= (list!8875 lt!739438) (Cons!21937 (h!27338 (t!179568 tokens!598)) Nil!21937)))))

(assert (=> d!588248 (= lt!739438 (singleton!848 (h!27338 (t!179568 tokens!598))))))

(assert (=> d!588248 (= (singletonSeq!1918 (h!27338 (t!179568 tokens!598))) lt!739438)))

(declare-fun b!1929035 () Bool)

(assert (=> b!1929035 (= e!1233035 (isBalanced!2259 (c!313266 lt!739438)))))

(assert (= (and d!588248 res!862560) b!1929035))

(declare-fun m!2366499 () Bool)

(assert (=> d!588248 m!2366499))

(declare-fun m!2366501 () Bool)

(assert (=> d!588248 m!2366501))

(declare-fun m!2366503 () Bool)

(assert (=> b!1929035 m!2366503))

(assert (=> b!1927052 d!588248))

(declare-fun d!588250 () Bool)

(declare-fun lt!739439 () BalanceConc!14460)

(assert (=> d!588250 (= (list!8871 lt!739439) (printListTailRec!452 thiss!23328 (dropList!783 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))) 0) (list!8871 (BalanceConc!14461 Empty!7322))))))

(declare-fun e!1233036 () BalanceConc!14460)

(assert (=> d!588250 (= lt!739439 e!1233036)))

(declare-fun c!313810 () Bool)

(assert (=> d!588250 (= c!313810 (>= 0 (size!17113 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))))))))

(declare-fun e!1233037 () Bool)

(assert (=> d!588250 e!1233037))

(declare-fun res!862561 () Bool)

(assert (=> d!588250 (=> (not res!862561) (not e!1233037))))

(assert (=> d!588250 (= res!862561 (>= 0 0))))

(assert (=> d!588250 (= (printTailRec!1023 thiss!23328 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))) 0 (BalanceConc!14461 Empty!7322)) lt!739439)))

(declare-fun b!1929036 () Bool)

(assert (=> b!1929036 (= e!1233037 (<= 0 (size!17113 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))))))))

(declare-fun b!1929037 () Bool)

(assert (=> b!1929037 (= e!1233036 (BalanceConc!14461 Empty!7322))))

(declare-fun b!1929038 () Bool)

(assert (=> b!1929038 (= e!1233036 (printTailRec!1023 thiss!23328 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))) (+ 0 1) (++!5882 (BalanceConc!14461 Empty!7322) (charsOf!2474 (apply!5694 (singletonSeq!1918 (h!27338 (t!179568 tokens!598))) 0)))))))

(declare-fun lt!739442 () List!22019)

(assert (=> b!1929038 (= lt!739442 (list!8875 (singletonSeq!1918 (h!27338 (t!179568 tokens!598)))))))

(declare-fun lt!739444 () Unit!36278)

(assert (=> b!1929038 (= lt!739444 (lemmaDropApply!707 lt!739442 0))))

(assert (=> b!1929038 (= (head!4495 (drop!1074 lt!739442 0)) (apply!5695 lt!739442 0))))

(declare-fun lt!739443 () Unit!36278)

(assert (=> b!1929038 (= lt!739443 lt!739444)))

(declare-fun lt!739445 () List!22019)

(assert (=> b!1929038 (= lt!739445 (list!8875 (singletonSeq!1918 (h!27338 (t!179568 tokens!598)))))))

(declare-fun lt!739441 () Unit!36278)

(assert (=> b!1929038 (= lt!739441 (lemmaDropTail!683 lt!739445 0))))

(assert (=> b!1929038 (= (tail!2980 (drop!1074 lt!739445 0)) (drop!1074 lt!739445 (+ 0 1)))))

(declare-fun lt!739440 () Unit!36278)

(assert (=> b!1929038 (= lt!739440 lt!739441)))

(assert (= (and d!588250 res!862561) b!1929036))

(assert (= (and d!588250 c!313810) b!1929037))

(assert (= (and d!588250 (not c!313810)) b!1929038))

(declare-fun m!2366521 () Bool)

(assert (=> d!588250 m!2366521))

(assert (=> d!588250 m!2363521))

(declare-fun m!2366523 () Bool)

(assert (=> d!588250 m!2366523))

(assert (=> d!588250 m!2363521))

(assert (=> d!588250 m!2363325))

(declare-fun m!2366525 () Bool)

(assert (=> d!588250 m!2366525))

(assert (=> d!588250 m!2363325))

(assert (=> d!588250 m!2366521))

(declare-fun m!2366529 () Bool)

(assert (=> d!588250 m!2366529))

(assert (=> b!1929036 m!2363325))

(assert (=> b!1929036 m!2366525))

(declare-fun m!2366531 () Bool)

(assert (=> b!1929038 m!2366531))

(declare-fun m!2366533 () Bool)

(assert (=> b!1929038 m!2366533))

(assert (=> b!1929038 m!2363325))

(declare-fun m!2366535 () Bool)

(assert (=> b!1929038 m!2366535))

(declare-fun m!2366537 () Bool)

(assert (=> b!1929038 m!2366537))

(declare-fun m!2366539 () Bool)

(assert (=> b!1929038 m!2366539))

(declare-fun m!2366541 () Bool)

(assert (=> b!1929038 m!2366541))

(declare-fun m!2366543 () Bool)

(assert (=> b!1929038 m!2366543))

(assert (=> b!1929038 m!2366541))

(assert (=> b!1929038 m!2366535))

(assert (=> b!1929038 m!2366531))

(declare-fun m!2366545 () Bool)

(assert (=> b!1929038 m!2366545))

(declare-fun m!2366547 () Bool)

(assert (=> b!1929038 m!2366547))

(declare-fun m!2366549 () Bool)

(assert (=> b!1929038 m!2366549))

(assert (=> b!1929038 m!2366547))

(declare-fun m!2366551 () Bool)

(assert (=> b!1929038 m!2366551))

(declare-fun m!2366553 () Bool)

(assert (=> b!1929038 m!2366553))

(assert (=> b!1929038 m!2363325))

(assert (=> b!1929038 m!2366539))

(assert (=> b!1929038 m!2363325))

(assert (=> b!1929038 m!2366495))

(assert (=> b!1927052 d!588250))

(declare-fun b!1929174 () Bool)

(declare-fun lt!739496 () Token!7420)

(declare-fun e!1233102 () Bool)

(assert (=> b!1929174 (= e!1233102 (= (rule!6139 lt!739496) (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 lt!739496))))))))

(declare-fun b!1929175 () Bool)

(declare-fun e!1233101 () Unit!36278)

(declare-fun Unit!36294 () Unit!36278)

(assert (=> b!1929175 (= e!1233101 Unit!36294)))

(declare-fun lt!739492 () List!22017)

(assert (=> b!1929175 (= lt!739492 (++!5881 call!118494 lt!738595))))

(declare-fun lt!739491 () Unit!36278)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!375 (LexerInterface!3547 Rule!7668 List!22018 List!22017) Unit!36278)

(assert (=> b!1929175 (= lt!739491 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!375 thiss!23328 (rule!6139 lt!739496) rules!3198 lt!739492))))

(assert (=> b!1929175 (isEmpty!13513 (maxPrefixOneRule!1223 thiss!23328 (rule!6139 lt!739496) lt!739492))))

(declare-fun lt!739497 () Unit!36278)

(assert (=> b!1929175 (= lt!739497 lt!739491)))

(declare-fun lt!739495 () List!22017)

(assert (=> b!1929175 (= lt!739495 (list!8871 (charsOf!2474 lt!739496)))))

(declare-fun lt!739485 () Unit!36278)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!371 (LexerInterface!3547 Rule!7668 List!22017 List!22017) Unit!36278)

(assert (=> b!1929175 (= lt!739485 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!371 thiss!23328 (rule!6139 lt!739496) lt!739495 (++!5881 call!118494 lt!738595)))))

(assert (=> b!1929175 (not (matchR!2627 (regex!3934 (rule!6139 lt!739496)) lt!739495))))

(declare-fun lt!739494 () Unit!36278)

(assert (=> b!1929175 (= lt!739494 lt!739485)))

(assert (=> b!1929175 false))

(declare-fun b!1929176 () Bool)

(declare-fun Unit!36295 () Unit!36278)

(assert (=> b!1929176 (= e!1233101 Unit!36295)))

(declare-fun b!1929173 () Bool)

(declare-fun res!862577 () Bool)

(assert (=> b!1929173 (=> (not res!862577) (not e!1233102))))

(assert (=> b!1929173 (= res!862577 (matchR!2627 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 lt!739496))))) (list!8871 (charsOf!2474 lt!739496))))))

(declare-fun d!588256 () Bool)

(assert (=> d!588256 (isDefined!3838 (maxPrefix!1985 thiss!23328 rules!3198 (++!5881 call!118494 lt!738595)))))

(declare-fun lt!739493 () Unit!36278)

(assert (=> d!588256 (= lt!739493 e!1233101)))

(declare-fun c!313821 () Bool)

(assert (=> d!588256 (= c!313821 (isEmpty!13513 (maxPrefix!1985 thiss!23328 rules!3198 (++!5881 call!118494 lt!738595))))))

(declare-fun lt!739499 () Unit!36278)

(declare-fun lt!739489 () Unit!36278)

(assert (=> d!588256 (= lt!739499 lt!739489)))

(assert (=> d!588256 e!1233102))

(declare-fun res!862578 () Bool)

(assert (=> d!588256 (=> (not res!862578) (not e!1233102))))

(assert (=> d!588256 (= res!862578 (isDefined!3837 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 lt!739496)))))))

(assert (=> d!588256 (= lt!739489 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!755 thiss!23328 rules!3198 call!118494 lt!739496))))

(declare-fun lt!739487 () Unit!36278)

(declare-fun lt!739486 () Unit!36278)

(assert (=> d!588256 (= lt!739487 lt!739486)))

(declare-fun lt!739484 () List!22017)

(assert (=> d!588256 (isPrefix!1941 lt!739484 (++!5881 call!118494 lt!738595))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!367 (List!22017 List!22017 List!22017) Unit!36278)

(assert (=> d!588256 (= lt!739486 (lemmaPrefixStaysPrefixWhenAddingToSuffix!367 lt!739484 call!118494 lt!738595))))

(assert (=> d!588256 (= lt!739484 (list!8871 (charsOf!2474 lt!739496)))))

(declare-fun lt!739490 () Unit!36278)

(declare-fun lt!739483 () Unit!36278)

(assert (=> d!588256 (= lt!739490 lt!739483)))

(declare-fun lt!739498 () List!22017)

(declare-fun lt!739488 () List!22017)

(assert (=> d!588256 (isPrefix!1941 lt!739498 (++!5881 lt!739498 lt!739488))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1326 (List!22017 List!22017) Unit!36278)

(assert (=> d!588256 (= lt!739483 (lemmaConcatTwoListThenFirstIsPrefix!1326 lt!739498 lt!739488))))

(assert (=> d!588256 (= lt!739488 (_2!11743 (get!6908 (maxPrefix!1985 thiss!23328 rules!3198 call!118494))))))

(assert (=> d!588256 (= lt!739498 (list!8871 (charsOf!2474 lt!739496)))))

(assert (=> d!588256 (= lt!739496 (head!4495 (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 call!118494))))))))

(assert (=> d!588256 (not (isEmpty!13507 rules!3198))))

(assert (=> d!588256 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!743 thiss!23328 rules!3198 call!118494 lt!738595) lt!739493)))

(assert (= (and d!588256 res!862578) b!1929173))

(assert (= (and b!1929173 res!862577) b!1929174))

(assert (= (and d!588256 c!313821) b!1929175))

(assert (= (and d!588256 (not c!313821)) b!1929176))

(declare-fun m!2366621 () Bool)

(assert (=> b!1929174 m!2366621))

(assert (=> b!1929174 m!2366621))

(declare-fun m!2366623 () Bool)

(assert (=> b!1929174 m!2366623))

(declare-fun m!2366625 () Bool)

(assert (=> b!1929175 m!2366625))

(declare-fun m!2366627 () Bool)

(assert (=> b!1929175 m!2366627))

(declare-fun m!2366629 () Bool)

(assert (=> b!1929175 m!2366629))

(declare-fun m!2366631 () Bool)

(assert (=> b!1929175 m!2366631))

(declare-fun m!2366633 () Bool)

(assert (=> b!1929175 m!2366633))

(assert (=> b!1929175 m!2366633))

(declare-fun m!2366635 () Bool)

(assert (=> b!1929175 m!2366635))

(assert (=> b!1929175 m!2366627))

(assert (=> b!1929175 m!2366631))

(declare-fun m!2366637 () Bool)

(assert (=> b!1929175 m!2366637))

(declare-fun m!2366639 () Bool)

(assert (=> b!1929175 m!2366639))

(assert (=> b!1929173 m!2366621))

(assert (=> b!1929173 m!2366623))

(assert (=> b!1929173 m!2366627))

(assert (=> b!1929173 m!2366629))

(assert (=> b!1929173 m!2366627))

(assert (=> b!1929173 m!2366629))

(declare-fun m!2366641 () Bool)

(assert (=> b!1929173 m!2366641))

(assert (=> b!1929173 m!2366621))

(declare-fun m!2366643 () Bool)

(assert (=> d!588256 m!2366643))

(declare-fun m!2366645 () Bool)

(assert (=> d!588256 m!2366645))

(declare-fun m!2366647 () Bool)

(assert (=> d!588256 m!2366647))

(assert (=> d!588256 m!2366643))

(assert (=> d!588256 m!2366633))

(declare-fun m!2366649 () Bool)

(assert (=> d!588256 m!2366649))

(declare-fun m!2366651 () Bool)

(assert (=> d!588256 m!2366651))

(declare-fun m!2366653 () Bool)

(assert (=> d!588256 m!2366653))

(assert (=> d!588256 m!2366627))

(assert (=> d!588256 m!2366629))

(declare-fun m!2366655 () Bool)

(assert (=> d!588256 m!2366655))

(declare-fun m!2366657 () Bool)

(assert (=> d!588256 m!2366657))

(assert (=> d!588256 m!2366655))

(declare-fun m!2366659 () Bool)

(assert (=> d!588256 m!2366659))

(assert (=> d!588256 m!2363053))

(assert (=> d!588256 m!2366633))

(declare-fun m!2366661 () Bool)

(assert (=> d!588256 m!2366661))

(declare-fun m!2366663 () Bool)

(assert (=> d!588256 m!2366663))

(declare-fun m!2366665 () Bool)

(assert (=> d!588256 m!2366665))

(declare-fun m!2366667 () Bool)

(assert (=> d!588256 m!2366667))

(assert (=> d!588256 m!2366621))

(declare-fun m!2366669 () Bool)

(assert (=> d!588256 m!2366669))

(assert (=> d!588256 m!2366627))

(declare-fun m!2366671 () Bool)

(assert (=> d!588256 m!2366671))

(assert (=> d!588256 m!2366633))

(assert (=> d!588256 m!2366655))

(assert (=> d!588256 m!2366665))

(assert (=> d!588256 m!2366651))

(assert (=> d!588256 m!2366671))

(declare-fun m!2366673 () Bool)

(assert (=> d!588256 m!2366673))

(assert (=> d!588256 m!2366621))

(assert (=> b!1927052 d!588256))

(declare-fun b!1929180 () Bool)

(declare-fun e!1233104 () List!22017)

(assert (=> b!1929180 (= e!1233104 (++!5881 (list!8873 (left!17447 (c!313264 lt!738497))) (list!8873 (right!17777 (c!313264 lt!738497)))))))

(declare-fun b!1929179 () Bool)

(assert (=> b!1929179 (= e!1233104 (list!8879 (xs!10216 (c!313264 lt!738497))))))

(declare-fun b!1929177 () Bool)

(declare-fun e!1233103 () List!22017)

(assert (=> b!1929177 (= e!1233103 Nil!21935)))

(declare-fun b!1929178 () Bool)

(assert (=> b!1929178 (= e!1233103 e!1233104)))

(declare-fun c!313823 () Bool)

(assert (=> b!1929178 (= c!313823 ((_ is Leaf!10752) (c!313264 lt!738497)))))

(declare-fun d!588280 () Bool)

(declare-fun c!313822 () Bool)

(assert (=> d!588280 (= c!313822 ((_ is Empty!7322) (c!313264 lt!738497)))))

(assert (=> d!588280 (= (list!8873 (c!313264 lt!738497)) e!1233103)))

(assert (= (and d!588280 c!313822) b!1929177))

(assert (= (and d!588280 (not c!313822)) b!1929178))

(assert (= (and b!1929178 c!313823) b!1929179))

(assert (= (and b!1929178 (not c!313823)) b!1929180))

(declare-fun m!2366675 () Bool)

(assert (=> b!1929180 m!2366675))

(declare-fun m!2366677 () Bool)

(assert (=> b!1929180 m!2366677))

(assert (=> b!1929180 m!2366675))

(assert (=> b!1929180 m!2366677))

(declare-fun m!2366679 () Bool)

(assert (=> b!1929180 m!2366679))

(declare-fun m!2366681 () Bool)

(assert (=> b!1929179 m!2366681))

(assert (=> d!587248 d!588280))

(declare-fun d!588282 () Bool)

(assert (=> d!588282 (= (nullable!1608 (regex!3934 lt!738499)) (nullableFct!362 (regex!3934 lt!738499)))))

(declare-fun bs!414870 () Bool)

(assert (= bs!414870 d!588282))

(declare-fun m!2366683 () Bool)

(assert (=> bs!414870 m!2366683))

(assert (=> b!1926930 d!588282))

(declare-fun d!588284 () Bool)

(declare-fun e!1233106 () Bool)

(assert (=> d!588284 e!1233106))

(declare-fun res!862579 () Bool)

(assert (=> d!588284 (=> (not res!862579) (not e!1233106))))

(declare-fun lt!739500 () List!22017)

(assert (=> d!588284 (= res!862579 (= (content!3171 lt!739500) ((_ map or) (content!3171 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))) (content!3171 (_2!11743 (get!6908 lt!738610))))))))

(declare-fun e!1233105 () List!22017)

(assert (=> d!588284 (= lt!739500 e!1233105)))

(declare-fun c!313824 () Bool)

(assert (=> d!588284 (= c!313824 ((_ is Nil!21935) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))))))

(assert (=> d!588284 (= (++!5881 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610)))) (_2!11743 (get!6908 lt!738610))) lt!739500)))

(declare-fun b!1929184 () Bool)

(assert (=> b!1929184 (= e!1233106 (or (not (= (_2!11743 (get!6908 lt!738610)) Nil!21935)) (= lt!739500 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610)))))))))

(declare-fun b!1929183 () Bool)

(declare-fun res!862580 () Bool)

(assert (=> b!1929183 (=> (not res!862580) (not e!1233106))))

(assert (=> b!1929183 (= res!862580 (= (size!17110 lt!739500) (+ (size!17110 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))) (size!17110 (_2!11743 (get!6908 lt!738610))))))))

(declare-fun b!1929182 () Bool)

(assert (=> b!1929182 (= e!1233105 (Cons!21935 (h!27336 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))) (++!5881 (t!179566 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))) (_2!11743 (get!6908 lt!738610)))))))

(declare-fun b!1929181 () Bool)

(assert (=> b!1929181 (= e!1233105 (_2!11743 (get!6908 lt!738610)))))

(assert (= (and d!588284 c!313824) b!1929181))

(assert (= (and d!588284 (not c!313824)) b!1929182))

(assert (= (and d!588284 res!862579) b!1929183))

(assert (= (and b!1929183 res!862580) b!1929184))

(declare-fun m!2366685 () Bool)

(assert (=> d!588284 m!2366685))

(assert (=> d!588284 m!2363345))

(declare-fun m!2366687 () Bool)

(assert (=> d!588284 m!2366687))

(declare-fun m!2366689 () Bool)

(assert (=> d!588284 m!2366689))

(declare-fun m!2366691 () Bool)

(assert (=> b!1929183 m!2366691))

(assert (=> b!1929183 m!2363345))

(declare-fun m!2366693 () Bool)

(assert (=> b!1929183 m!2366693))

(assert (=> b!1929183 m!2363337))

(declare-fun m!2366695 () Bool)

(assert (=> b!1929182 m!2366695))

(assert (=> b!1927092 d!588284))

(assert (=> b!1927092 d!587694))

(assert (=> b!1927092 d!587696))

(assert (=> b!1927092 d!587482))

(declare-fun d!588286 () Bool)

(assert (=> d!588286 (= (list!8871 lt!738698) (list!8873 (c!313264 lt!738698)))))

(declare-fun bs!414871 () Bool)

(assert (= bs!414871 d!588286))

(declare-fun m!2366697 () Bool)

(assert (=> bs!414871 m!2366697))

(assert (=> d!587314 d!588286))

(declare-fun d!588288 () Bool)

(declare-fun c!313825 () Bool)

(assert (=> d!588288 (= c!313825 ((_ is Cons!21937) (list!8875 lt!738485)))))

(declare-fun e!1233107 () List!22017)

(assert (=> d!588288 (= (printList!1082 thiss!23328 (list!8875 lt!738485)) e!1233107)))

(declare-fun b!1929185 () Bool)

(assert (=> b!1929185 (= e!1233107 (++!5881 (list!8871 (charsOf!2474 (h!27338 (list!8875 lt!738485)))) (printList!1082 thiss!23328 (t!179568 (list!8875 lt!738485)))))))

(declare-fun b!1929186 () Bool)

(assert (=> b!1929186 (= e!1233107 Nil!21935)))

(assert (= (and d!588288 c!313825) b!1929185))

(assert (= (and d!588288 (not c!313825)) b!1929186))

(declare-fun m!2366699 () Bool)

(assert (=> b!1929185 m!2366699))

(assert (=> b!1929185 m!2366699))

(declare-fun m!2366701 () Bool)

(assert (=> b!1929185 m!2366701))

(declare-fun m!2366703 () Bool)

(assert (=> b!1929185 m!2366703))

(assert (=> b!1929185 m!2366701))

(assert (=> b!1929185 m!2366703))

(declare-fun m!2366705 () Bool)

(assert (=> b!1929185 m!2366705))

(assert (=> d!587314 d!588288))

(assert (=> d!587314 d!587712))

(assert (=> d!587314 d!587276))

(declare-fun b!1929187 () Bool)

(declare-fun e!1233110 () Bool)

(declare-fun e!1233109 () Bool)

(assert (=> b!1929187 (= e!1233110 e!1233109)))

(declare-fun res!862588 () Bool)

(assert (=> b!1929187 (=> (not res!862588) (not e!1233109))))

(declare-fun lt!739501 () Bool)

(assert (=> b!1929187 (= res!862588 (not lt!739501))))

(declare-fun b!1929188 () Bool)

(declare-fun e!1233111 () Bool)

(assert (=> b!1929188 (= e!1233111 (matchR!2627 (derivativeStep!1367 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))) (head!4494 (list!8871 (charsOf!2474 (h!27338 tokens!598))))) (tail!2979 (list!8871 (charsOf!2474 (h!27338 tokens!598))))))))

(declare-fun e!1233113 () Bool)

(declare-fun b!1929189 () Bool)

(assert (=> b!1929189 (= e!1233113 (= (head!4494 (list!8871 (charsOf!2474 (h!27338 tokens!598)))) (c!313265 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))))))))

(declare-fun b!1929190 () Bool)

(declare-fun res!862584 () Bool)

(assert (=> b!1929190 (=> (not res!862584) (not e!1233113))))

(assert (=> b!1929190 (= res!862584 (isEmpty!13510 (tail!2979 (list!8871 (charsOf!2474 (h!27338 tokens!598))))))))

(declare-fun b!1929191 () Bool)

(declare-fun res!862582 () Bool)

(declare-fun e!1233108 () Bool)

(assert (=> b!1929191 (=> res!862582 e!1233108)))

(assert (=> b!1929191 (= res!862582 (not (isEmpty!13510 (tail!2979 (list!8871 (charsOf!2474 (h!27338 tokens!598)))))))))

(declare-fun b!1929192 () Bool)

(assert (=> b!1929192 (= e!1233109 e!1233108)))

(declare-fun res!862583 () Bool)

(assert (=> b!1929192 (=> res!862583 e!1233108)))

(declare-fun call!118681 () Bool)

(assert (=> b!1929192 (= res!862583 call!118681)))

(declare-fun b!1929193 () Bool)

(declare-fun res!862581 () Bool)

(assert (=> b!1929193 (=> res!862581 e!1233110)))

(assert (=> b!1929193 (= res!862581 e!1233113)))

(declare-fun res!862587 () Bool)

(assert (=> b!1929193 (=> (not res!862587) (not e!1233113))))

(assert (=> b!1929193 (= res!862587 lt!739501)))

(declare-fun b!1929194 () Bool)

(assert (=> b!1929194 (= e!1233108 (not (= (head!4494 (list!8871 (charsOf!2474 (h!27338 tokens!598)))) (c!313265 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))))))))))

(declare-fun b!1929195 () Bool)

(declare-fun res!862585 () Bool)

(assert (=> b!1929195 (=> (not res!862585) (not e!1233113))))

(assert (=> b!1929195 (= res!862585 (not call!118681))))

(declare-fun b!1929196 () Bool)

(declare-fun res!862586 () Bool)

(assert (=> b!1929196 (=> res!862586 e!1233110)))

(assert (=> b!1929196 (= res!862586 (not ((_ is ElementMatch!5359) (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))))))))

(declare-fun e!1233114 () Bool)

(assert (=> b!1929196 (= e!1233114 e!1233110)))

(declare-fun b!1929197 () Bool)

(declare-fun e!1233112 () Bool)

(assert (=> b!1929197 (= e!1233112 (= lt!739501 call!118681))))

(declare-fun b!1929198 () Bool)

(assert (=> b!1929198 (= e!1233112 e!1233114)))

(declare-fun c!313828 () Bool)

(assert (=> b!1929198 (= c!313828 ((_ is EmptyLang!5359) (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))))))))

(declare-fun b!1929199 () Bool)

(assert (=> b!1929199 (= e!1233114 (not lt!739501))))

(declare-fun b!1929200 () Bool)

(assert (=> b!1929200 (= e!1233111 (nullable!1608 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))))))))

(declare-fun bm!118676 () Bool)

(assert (=> bm!118676 (= call!118681 (isEmpty!13510 (list!8871 (charsOf!2474 (h!27338 tokens!598)))))))

(declare-fun d!588290 () Bool)

(assert (=> d!588290 e!1233112))

(declare-fun c!313826 () Bool)

(assert (=> d!588290 (= c!313826 ((_ is EmptyExpr!5359) (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598))))))))))

(assert (=> d!588290 (= lt!739501 e!1233111)))

(declare-fun c!313827 () Bool)

(assert (=> d!588290 (= c!313827 (isEmpty!13510 (list!8871 (charsOf!2474 (h!27338 tokens!598)))))))

(assert (=> d!588290 (validRegex!2134 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))))))

(assert (=> d!588290 (= (matchR!2627 (regex!3934 (get!6907 (getRuleFromTag!755 thiss!23328 rules!3198 (tag!4380 (rule!6139 (h!27338 tokens!598)))))) (list!8871 (charsOf!2474 (h!27338 tokens!598)))) lt!739501)))

(assert (= (and d!588290 c!313827) b!1929200))

(assert (= (and d!588290 (not c!313827)) b!1929188))

(assert (= (and d!588290 c!313826) b!1929197))

(assert (= (and d!588290 (not c!313826)) b!1929198))

(assert (= (and b!1929198 c!313828) b!1929199))

(assert (= (and b!1929198 (not c!313828)) b!1929196))

(assert (= (and b!1929196 (not res!862586)) b!1929193))

(assert (= (and b!1929193 res!862587) b!1929195))

(assert (= (and b!1929195 res!862585) b!1929190))

(assert (= (and b!1929190 res!862584) b!1929189))

(assert (= (and b!1929193 (not res!862581)) b!1929187))

(assert (= (and b!1929187 res!862588) b!1929192))

(assert (= (and b!1929192 (not res!862583)) b!1929191))

(assert (= (and b!1929191 (not res!862582)) b!1929194))

(assert (= (or b!1929197 b!1929192 b!1929195) bm!118676))

(assert (=> b!1929194 m!2363373))

(declare-fun m!2366707 () Bool)

(assert (=> b!1929194 m!2366707))

(assert (=> b!1929188 m!2363373))

(assert (=> b!1929188 m!2366707))

(assert (=> b!1929188 m!2366707))

(declare-fun m!2366709 () Bool)

(assert (=> b!1929188 m!2366709))

(assert (=> b!1929188 m!2363373))

(declare-fun m!2366711 () Bool)

(assert (=> b!1929188 m!2366711))

(assert (=> b!1929188 m!2366709))

(assert (=> b!1929188 m!2366711))

(declare-fun m!2366713 () Bool)

(assert (=> b!1929188 m!2366713))

(assert (=> b!1929191 m!2363373))

(assert (=> b!1929191 m!2366711))

(assert (=> b!1929191 m!2366711))

(declare-fun m!2366715 () Bool)

(assert (=> b!1929191 m!2366715))

(assert (=> b!1929190 m!2363373))

(assert (=> b!1929190 m!2366711))

(assert (=> b!1929190 m!2366711))

(assert (=> b!1929190 m!2366715))

(declare-fun m!2366717 () Bool)

(assert (=> b!1929200 m!2366717))

(assert (=> b!1929189 m!2363373))

(assert (=> b!1929189 m!2366707))

(assert (=> bm!118676 m!2363373))

(declare-fun m!2366719 () Bool)

(assert (=> bm!118676 m!2366719))

(assert (=> d!588290 m!2363373))

(assert (=> d!588290 m!2366719))

(declare-fun m!2366721 () Bool)

(assert (=> d!588290 m!2366721))

(assert (=> b!1927094 d!588290))

(assert (=> b!1927094 d!587490))

(assert (=> b!1927094 d!587254))

(declare-fun d!588292 () Bool)

(assert (=> d!588292 (= (list!8871 (charsOf!2474 (h!27338 tokens!598))) (list!8873 (c!313264 (charsOf!2474 (h!27338 tokens!598)))))))

(declare-fun bs!414872 () Bool)

(assert (= bs!414872 d!588292))

(declare-fun m!2366723 () Bool)

(assert (=> bs!414872 m!2366723))

(assert (=> b!1927094 d!588292))

(assert (=> b!1927094 d!587262))

(assert (=> b!1927125 d!587736))

(assert (=> b!1927125 d!587738))

(declare-fun b!1929201 () Bool)

(declare-fun lt!739504 () Unit!36278)

(declare-fun lt!739503 () Unit!36278)

(assert (=> b!1929201 (= lt!739504 lt!739503)))

(assert (=> b!1929201 (rulesInvariant!3154 thiss!23328 (t!179567 (t!179567 rules!3198)))))

(assert (=> b!1929201 (= lt!739503 (lemmaInvariantOnRulesThenOnTail!270 thiss!23328 (h!27337 (t!179567 rules!3198)) (t!179567 (t!179567 rules!3198))))))

(declare-fun e!1233117 () Option!4544)

(assert (=> b!1929201 (= e!1233117 (getRuleFromTag!755 thiss!23328 (t!179567 (t!179567 rules!3198)) (tag!4380 (rule!6139 separatorToken!354))))))

(declare-fun b!1929202 () Bool)

(declare-fun e!1233115 () Option!4544)

(assert (=> b!1929202 (= e!1233115 (Some!4543 (h!27337 (t!179567 rules!3198))))))

(declare-fun b!1929203 () Bool)

(assert (=> b!1929203 (= e!1233115 e!1233117)))

(declare-fun c!313830 () Bool)

(assert (=> b!1929203 (= c!313830 (and ((_ is Cons!21936) (t!179567 rules!3198)) (not (= (tag!4380 (h!27337 (t!179567 rules!3198))) (tag!4380 (rule!6139 separatorToken!354))))))))

(declare-fun d!588294 () Bool)

(declare-fun e!1233118 () Bool)

(assert (=> d!588294 e!1233118))

(declare-fun res!862589 () Bool)

(assert (=> d!588294 (=> res!862589 e!1233118)))

(declare-fun lt!739502 () Option!4544)

(assert (=> d!588294 (= res!862589 (isEmpty!13512 lt!739502))))

(assert (=> d!588294 (= lt!739502 e!1233115)))

(declare-fun c!313829 () Bool)

(assert (=> d!588294 (= c!313829 (and ((_ is Cons!21936) (t!179567 rules!3198)) (= (tag!4380 (h!27337 (t!179567 rules!3198))) (tag!4380 (rule!6139 separatorToken!354)))))))

(assert (=> d!588294 (rulesInvariant!3154 thiss!23328 (t!179567 rules!3198))))

(assert (=> d!588294 (= (getRuleFromTag!755 thiss!23328 (t!179567 rules!3198) (tag!4380 (rule!6139 separatorToken!354))) lt!739502)))

(declare-fun b!1929204 () Bool)

(assert (=> b!1929204 (= e!1233117 None!4543)))

(declare-fun b!1929205 () Bool)

(declare-fun e!1233116 () Bool)

(assert (=> b!1929205 (= e!1233116 (= (tag!4380 (get!6907 lt!739502)) (tag!4380 (rule!6139 separatorToken!354))))))

(declare-fun b!1929206 () Bool)

(assert (=> b!1929206 (= e!1233118 e!1233116)))

(declare-fun res!862590 () Bool)

(assert (=> b!1929206 (=> (not res!862590) (not e!1233116))))

(assert (=> b!1929206 (= res!862590 (contains!3967 (t!179567 rules!3198) (get!6907 lt!739502)))))

(assert (= (and d!588294 c!313829) b!1929202))

(assert (= (and d!588294 (not c!313829)) b!1929203))

(assert (= (and b!1929203 c!313830) b!1929201))

(assert (= (and b!1929203 (not c!313830)) b!1929204))

(assert (= (and d!588294 (not res!862589)) b!1929206))

(assert (= (and b!1929206 res!862590) b!1929205))

(assert (=> b!1929201 m!2364845))

(assert (=> b!1929201 m!2364847))

(declare-fun m!2366725 () Bool)

(assert (=> b!1929201 m!2366725))

(declare-fun m!2366727 () Bool)

(assert (=> d!588294 m!2366727))

(assert (=> d!588294 m!2363383))

(declare-fun m!2366729 () Bool)

(assert (=> b!1929205 m!2366729))

(assert (=> b!1929206 m!2366729))

(assert (=> b!1929206 m!2366729))

(declare-fun m!2366731 () Bool)

(assert (=> b!1929206 m!2366731))

(assert (=> b!1927125 d!588294))

(declare-fun d!588296 () Bool)

(declare-fun c!313831 () Bool)

(assert (=> d!588296 (= c!313831 ((_ is Node!7322) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))))

(declare-fun e!1233119 () Bool)

(assert (=> d!588296 (= (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))) e!1233119)))

(declare-fun b!1929207 () Bool)

(assert (=> b!1929207 (= e!1233119 (inv!29023 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))))

(declare-fun b!1929208 () Bool)

(declare-fun e!1233120 () Bool)

(assert (=> b!1929208 (= e!1233119 e!1233120)))

(declare-fun res!862591 () Bool)

(assert (=> b!1929208 (= res!862591 (not ((_ is Leaf!10752) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))))))))

(assert (=> b!1929208 (=> res!862591 e!1233120)))

(declare-fun b!1929209 () Bool)

(assert (=> b!1929209 (= e!1233120 (inv!29024 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))))))

(assert (= (and d!588296 c!313831) b!1929207))

(assert (= (and d!588296 (not c!313831)) b!1929208))

(assert (= (and b!1929208 (not res!862591)) b!1929209))

(declare-fun m!2366733 () Bool)

(assert (=> b!1929207 m!2366733))

(declare-fun m!2366735 () Bool)

(assert (=> b!1929209 m!2366735))

(assert (=> b!1927183 d!588296))

(declare-fun d!588298 () Bool)

(declare-fun lt!739505 () Int)

(assert (=> d!588298 (>= lt!739505 0)))

(declare-fun e!1233121 () Int)

(assert (=> d!588298 (= lt!739505 e!1233121)))

(declare-fun c!313832 () Bool)

(assert (=> d!588298 (= c!313832 ((_ is Nil!21935) lt!738690))))

(assert (=> d!588298 (= (size!17110 lt!738690) lt!739505)))

(declare-fun b!1929210 () Bool)

(assert (=> b!1929210 (= e!1233121 0)))

(declare-fun b!1929211 () Bool)

(assert (=> b!1929211 (= e!1233121 (+ 1 (size!17110 (t!179566 lt!738690))))))

(assert (= (and d!588298 c!313832) b!1929210))

(assert (= (and d!588298 (not c!313832)) b!1929211))

(declare-fun m!2366737 () Bool)

(assert (=> b!1929211 m!2366737))

(assert (=> b!1927266 d!588298))

(assert (=> b!1927266 d!588186))

(declare-fun d!588300 () Bool)

(declare-fun lt!739506 () Int)

(assert (=> d!588300 (>= lt!739506 0)))

(declare-fun e!1233122 () Int)

(assert (=> d!588300 (= lt!739506 e!1233122)))

(declare-fun c!313833 () Bool)

(assert (=> d!588300 (= c!313833 ((_ is Nil!21935) (++!5881 lt!738500 lt!738491)))))

(assert (=> d!588300 (= (size!17110 (++!5881 lt!738500 lt!738491)) lt!739506)))

(declare-fun b!1929212 () Bool)

(assert (=> b!1929212 (= e!1233122 0)))

(declare-fun b!1929213 () Bool)

(assert (=> b!1929213 (= e!1233122 (+ 1 (size!17110 (t!179566 (++!5881 lt!738500 lt!738491)))))))

(assert (= (and d!588300 c!313833) b!1929212))

(assert (= (and d!588300 (not c!313833)) b!1929213))

(declare-fun m!2366739 () Bool)

(assert (=> b!1929213 m!2366739))

(assert (=> b!1927266 d!588300))

(declare-fun d!588302 () Bool)

(declare-fun lt!739509 () Int)

(assert (=> d!588302 (= lt!739509 (size!17110 (list!8871 (_2!11744 lt!738772))))))

(declare-fun size!17120 (Conc!7322) Int)

(assert (=> d!588302 (= lt!739509 (size!17120 (c!313264 (_2!11744 lt!738772))))))

(assert (=> d!588302 (= (size!17114 (_2!11744 lt!738772)) lt!739509)))

(declare-fun bs!414873 () Bool)

(assert (= bs!414873 d!588302))

(assert (=> bs!414873 m!2363995))

(assert (=> bs!414873 m!2363995))

(declare-fun m!2366741 () Bool)

(assert (=> bs!414873 m!2366741))

(declare-fun m!2366743 () Bool)

(assert (=> bs!414873 m!2366743))

(assert (=> b!1927603 d!588302))

(declare-fun d!588304 () Bool)

(declare-fun lt!739510 () Int)

(assert (=> d!588304 (= lt!739510 (size!17110 (list!8871 (seqFromList!2788 lt!738494))))))

(assert (=> d!588304 (= lt!739510 (size!17120 (c!313264 (seqFromList!2788 lt!738494))))))

(assert (=> d!588304 (= (size!17114 (seqFromList!2788 lt!738494)) lt!739510)))

(declare-fun bs!414874 () Bool)

(assert (= bs!414874 d!588304))

(assert (=> bs!414874 m!2362999))

(assert (=> bs!414874 m!2363989))

(assert (=> bs!414874 m!2363989))

(assert (=> bs!414874 m!2365909))

(declare-fun m!2366745 () Bool)

(assert (=> bs!414874 m!2366745))

(assert (=> b!1927603 d!588304))

(declare-fun b!1929214 () Bool)

(declare-fun e!1233125 () Bool)

(declare-fun e!1233124 () Bool)

(assert (=> b!1929214 (= e!1233125 e!1233124)))

(declare-fun res!862599 () Bool)

(assert (=> b!1929214 (=> (not res!862599) (not e!1233124))))

(declare-fun lt!739511 () Bool)

(assert (=> b!1929214 (= res!862599 (not lt!739511))))

(declare-fun b!1929215 () Bool)

(declare-fun e!1233126 () Bool)

(assert (=> b!1929215 (= e!1233126 (matchR!2627 (derivativeStep!1367 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))) (head!4494 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640)))))) (tail!2979 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640)))))))))

(declare-fun b!1929216 () Bool)

(declare-fun e!1233128 () Bool)

(assert (=> b!1929216 (= e!1233128 (= (head!4494 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))) (c!313265 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))))))

(declare-fun b!1929217 () Bool)

(declare-fun res!862595 () Bool)

(assert (=> b!1929217 (=> (not res!862595) (not e!1233128))))

(assert (=> b!1929217 (= res!862595 (isEmpty!13510 (tail!2979 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640)))))))))

(declare-fun b!1929218 () Bool)

(declare-fun res!862593 () Bool)

(declare-fun e!1233123 () Bool)

(assert (=> b!1929218 (=> res!862593 e!1233123)))

(assert (=> b!1929218 (= res!862593 (not (isEmpty!13510 (tail!2979 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))))))))

(declare-fun b!1929219 () Bool)

(assert (=> b!1929219 (= e!1233124 e!1233123)))

(declare-fun res!862594 () Bool)

(assert (=> b!1929219 (=> res!862594 e!1233123)))

(declare-fun call!118682 () Bool)

(assert (=> b!1929219 (= res!862594 call!118682)))

(declare-fun b!1929220 () Bool)

(declare-fun res!862592 () Bool)

(assert (=> b!1929220 (=> res!862592 e!1233125)))

(assert (=> b!1929220 (= res!862592 e!1233128)))

(declare-fun res!862598 () Bool)

(assert (=> b!1929220 (=> (not res!862598) (not e!1233128))))

(assert (=> b!1929220 (= res!862598 lt!739511)))

(declare-fun b!1929221 () Bool)

(assert (=> b!1929221 (= e!1233123 (not (= (head!4494 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))) (c!313265 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))))))))

(declare-fun b!1929222 () Bool)

(declare-fun res!862596 () Bool)

(assert (=> b!1929222 (=> (not res!862596) (not e!1233128))))

(assert (=> b!1929222 (= res!862596 (not call!118682))))

(declare-fun b!1929223 () Bool)

(declare-fun res!862597 () Bool)

(assert (=> b!1929223 (=> res!862597 e!1233125)))

(assert (=> b!1929223 (= res!862597 (not ((_ is ElementMatch!5359) (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))))))

(declare-fun e!1233129 () Bool)

(assert (=> b!1929223 (= e!1233129 e!1233125)))

(declare-fun b!1929224 () Bool)

(declare-fun e!1233127 () Bool)

(assert (=> b!1929224 (= e!1233127 (= lt!739511 call!118682))))

(declare-fun b!1929225 () Bool)

(assert (=> b!1929225 (= e!1233127 e!1233129)))

(declare-fun c!313836 () Bool)

(assert (=> b!1929225 (= c!313836 ((_ is EmptyLang!5359) (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))))))

(declare-fun b!1929226 () Bool)

(assert (=> b!1929226 (= e!1233129 (not lt!739511))))

(declare-fun b!1929227 () Bool)

(assert (=> b!1929227 (= e!1233126 (nullable!1608 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))))))

(declare-fun bm!118677 () Bool)

(assert (=> bm!118677 (= call!118682 (isEmpty!13510 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))))))

(declare-fun d!588306 () Bool)

(assert (=> d!588306 e!1233127))

(declare-fun c!313834 () Bool)

(assert (=> d!588306 (= c!313834 ((_ is EmptyExpr!5359) (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640))))))))

(assert (=> d!588306 (= lt!739511 e!1233126)))

(declare-fun c!313835 () Bool)

(assert (=> d!588306 (= c!313835 (isEmpty!13510 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))))))

(assert (=> d!588306 (validRegex!2134 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))))

(assert (=> d!588306 (= (matchR!2627 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738640))))) lt!739511)))

(assert (= (and d!588306 c!313835) b!1929227))

(assert (= (and d!588306 (not c!313835)) b!1929215))

(assert (= (and d!588306 c!313834) b!1929224))

(assert (= (and d!588306 (not c!313834)) b!1929225))

(assert (= (and b!1929225 c!313836) b!1929226))

(assert (= (and b!1929225 (not c!313836)) b!1929223))

(assert (= (and b!1929223 (not res!862597)) b!1929220))

(assert (= (and b!1929220 res!862598) b!1929222))

(assert (= (and b!1929222 res!862596) b!1929217))

(assert (= (and b!1929217 res!862595) b!1929216))

(assert (= (and b!1929220 (not res!862592)) b!1929214))

(assert (= (and b!1929214 res!862599) b!1929219))

(assert (= (and b!1929219 (not res!862594)) b!1929218))

(assert (= (and b!1929218 (not res!862593)) b!1929221))

(assert (= (or b!1929224 b!1929219 b!1929222) bm!118677))

(assert (=> b!1929221 m!2363459))

(declare-fun m!2366747 () Bool)

(assert (=> b!1929221 m!2366747))

(assert (=> b!1929215 m!2363459))

(assert (=> b!1929215 m!2366747))

(assert (=> b!1929215 m!2366747))

(declare-fun m!2366749 () Bool)

(assert (=> b!1929215 m!2366749))

(assert (=> b!1929215 m!2363459))

(declare-fun m!2366751 () Bool)

(assert (=> b!1929215 m!2366751))

(assert (=> b!1929215 m!2366749))

(assert (=> b!1929215 m!2366751))

(declare-fun m!2366753 () Bool)

(assert (=> b!1929215 m!2366753))

(assert (=> b!1929218 m!2363459))

(assert (=> b!1929218 m!2366751))

(assert (=> b!1929218 m!2366751))

(declare-fun m!2366755 () Bool)

(assert (=> b!1929218 m!2366755))

(assert (=> b!1929217 m!2363459))

(assert (=> b!1929217 m!2366751))

(assert (=> b!1929217 m!2366751))

(assert (=> b!1929217 m!2366755))

(declare-fun m!2366757 () Bool)

(assert (=> b!1929227 m!2366757))

(assert (=> b!1929216 m!2363459))

(assert (=> b!1929216 m!2366747))

(assert (=> bm!118677 m!2363459))

(declare-fun m!2366759 () Bool)

(assert (=> bm!118677 m!2366759))

(assert (=> d!588306 m!2363459))

(assert (=> d!588306 m!2366759))

(declare-fun m!2366761 () Bool)

(assert (=> d!588306 m!2366761))

(assert (=> b!1927163 d!588306))

(assert (=> b!1927163 d!587544))

(assert (=> b!1927163 d!587662))

(assert (=> b!1927163 d!587664))

(declare-fun d!588308 () Bool)

(declare-fun c!313837 () Bool)

(assert (=> d!588308 (= c!313837 ((_ is Nil!21935) (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))))))

(declare-fun e!1233130 () (InoxSet C!10864))

(assert (=> d!588308 (= (content!3171 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))) e!1233130)))

(declare-fun b!1929228 () Bool)

(assert (=> b!1929228 (= e!1233130 ((as const (Array C!10864 Bool)) false))))

(declare-fun b!1929229 () Bool)

(assert (=> b!1929229 (= e!1233130 ((_ map or) (store ((as const (Array C!10864 Bool)) false) (h!27336 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))) true) (content!3171 (t!179566 (usedCharacters!386 (regex!3934 (rule!6139 separatorToken!354)))))))))

(assert (= (and d!588308 c!313837) b!1929228))

(assert (= (and d!588308 (not c!313837)) b!1929229))

(declare-fun m!2366763 () Bool)

(assert (=> b!1929229 m!2366763))

(assert (=> b!1929229 m!2366483))

(assert (=> d!587286 d!588308))

(declare-fun d!588310 () Bool)

(declare-fun lt!739512 () Int)

(assert (=> d!588310 (>= lt!739512 0)))

(declare-fun e!1233131 () Int)

(assert (=> d!588310 (= lt!739512 e!1233131)))

(declare-fun c!313838 () Bool)

(assert (=> d!588310 (= c!313838 ((_ is Nil!21935) (originalCharacters!4741 separatorToken!354)))))

(assert (=> d!588310 (= (size!17110 (originalCharacters!4741 separatorToken!354)) lt!739512)))

(declare-fun b!1929230 () Bool)

(assert (=> b!1929230 (= e!1233131 0)))

(declare-fun b!1929231 () Bool)

(assert (=> b!1929231 (= e!1233131 (+ 1 (size!17110 (t!179566 (originalCharacters!4741 separatorToken!354)))))))

(assert (= (and d!588310 c!313838) b!1929230))

(assert (= (and d!588310 (not c!313838)) b!1929231))

(declare-fun m!2366765 () Bool)

(assert (=> b!1929231 m!2366765))

(assert (=> b!1926856 d!588310))

(declare-fun d!588312 () Bool)

(assert (=> d!588312 (= (inv!16 (value!123710 (h!27338 tokens!598))) (= (charsToInt!0 (text!28937 (value!123710 (h!27338 tokens!598)))) (value!123701 (value!123710 (h!27338 tokens!598)))))))

(declare-fun bs!414875 () Bool)

(assert (= bs!414875 d!588312))

(declare-fun m!2366767 () Bool)

(assert (=> bs!414875 m!2366767))

(assert (=> b!1927384 d!588312))

(declare-fun d!588314 () Bool)

(assert (=> d!588314 (= (get!6907 lt!738623) (v!26636 lt!738623))))

(assert (=> b!1927129 d!588314))

(declare-fun bs!414876 () Bool)

(declare-fun d!588316 () Bool)

(assert (= bs!414876 (and d!588316 d!587264)))

(declare-fun lambda!75230 () Int)

(assert (=> bs!414876 (= (and (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (= lambda!75230 lambda!75194))))

(declare-fun bs!414877 () Bool)

(assert (= bs!414877 (and d!588316 d!587632)))

(assert (=> bs!414877 (= (and (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))))) (= lambda!75230 lambda!75214))))

(declare-fun bs!414878 () Bool)

(assert (= bs!414878 (and d!588316 d!587946)))

(assert (=> bs!414878 (= (and (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (h!27337 rules!3198)))) (= (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (h!27337 rules!3198))))) (= lambda!75230 lambda!75226))))

(assert (=> d!588316 true))

(assert (=> d!588316 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354)))) (dynLambda!10630 order!13775 lambda!75230))))

(assert (=> d!588316 true))

(assert (=> d!588316 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354)))) (dynLambda!10630 order!13775 lambda!75230))))

(assert (=> d!588316 (= (semiInverseModEq!1565 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toValue!5567 (transformation!3934 (rule!6139 separatorToken!354)))) (Forall!1000 lambda!75230))))

(declare-fun bs!414879 () Bool)

(assert (= bs!414879 d!588316))

(declare-fun m!2366769 () Bool)

(assert (=> bs!414879 m!2366769))

(assert (=> d!587406 d!588316))

(declare-fun bs!414880 () Bool)

(declare-fun d!588318 () Bool)

(assert (= bs!414880 (and d!588318 d!587862)))

(declare-fun lambda!75233 () Int)

(assert (=> bs!414880 (= lambda!75233 lambda!75224)))

(assert (=> d!588318 true))

(declare-fun lt!739515 () Bool)

(assert (=> d!588318 (= lt!739515 (rulesValidInductive!1340 thiss!23328 rules!3198))))

(assert (=> d!588318 (= lt!739515 (forall!4638 rules!3198 lambda!75233))))

(assert (=> d!588318 (= (rulesValid!1452 thiss!23328 rules!3198) lt!739515)))

(declare-fun bs!414881 () Bool)

(assert (= bs!414881 d!588318))

(assert (=> bs!414881 m!2363355))

(declare-fun m!2366771 () Bool)

(assert (=> bs!414881 m!2366771))

(assert (=> d!587402 d!588318))

(assert (=> d!587274 d!587300))

(assert (=> d!587274 d!587280))

(declare-fun d!588320 () Bool)

(assert (=> d!588320 (not (contains!3965 (usedCharacters!386 (regex!3934 (rule!6139 (h!27338 tokens!598)))) lt!738502))))

(assert (=> d!588320 true))

(declare-fun _$73!145 () Unit!36278)

(assert (=> d!588320 (= (choose!11968 thiss!23328 rules!3198 rules!3198 (rule!6139 (h!27338 tokens!598)) (rule!6139 separatorToken!354) lt!738502) _$73!145)))

(declare-fun bs!414882 () Bool)

(assert (= bs!414882 d!588320))

(assert (=> bs!414882 m!2363017))

(assert (=> bs!414882 m!2363017))

(assert (=> bs!414882 m!2363019))

(assert (=> d!587274 d!588320))

(assert (=> d!587274 d!587402))

(declare-fun d!588322 () Bool)

(declare-fun dynLambda!10636 (Int BalanceConc!14460 BalanceConc!14460) Bool)

(assert (=> d!588322 (dynLambda!10636 lambda!75191 lt!738497 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))

(declare-fun lt!739518 () Unit!36278)

(declare-fun choose!11986 (Int BalanceConc!14460 BalanceConc!14460) Unit!36278)

(assert (=> d!588322 (= lt!739518 (choose!11986 lambda!75191 lt!738497 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))))))

(assert (=> d!588322 (Forall2!625 lambda!75191)))

(assert (=> d!588322 (= (Forall2of!201 lambda!75191 lt!738497 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))) lt!739518)))

(declare-fun b_lambda!63961 () Bool)

(assert (=> (not b_lambda!63961) (not d!588322)))

(declare-fun bs!414883 () Bool)

(assert (= bs!414883 d!588322))

(assert (=> bs!414883 m!2362965))

(declare-fun m!2366773 () Bool)

(assert (=> bs!414883 m!2366773))

(assert (=> bs!414883 m!2362965))

(declare-fun m!2366775 () Bool)

(assert (=> bs!414883 m!2366775))

(declare-fun m!2366777 () Bool)

(assert (=> bs!414883 m!2366777))

(assert (=> d!587236 d!588322))

(assert (=> d!587236 d!587248))

(declare-fun d!588324 () Bool)

(assert (=> d!588324 (= (list!8871 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))) (list!8873 (c!313264 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))))

(declare-fun bs!414884 () Bool)

(assert (= bs!414884 d!588324))

(declare-fun m!2366779 () Bool)

(assert (=> bs!414884 m!2366779))

(assert (=> d!587236 d!588324))

(declare-fun d!588326 () Bool)

(declare-fun lt!739519 () Bool)

(assert (=> d!588326 (= lt!739519 (select (content!3173 rules!3198) (get!6907 lt!738623)))))

(declare-fun e!1233133 () Bool)

(assert (=> d!588326 (= lt!739519 e!1233133)))

(declare-fun res!862600 () Bool)

(assert (=> d!588326 (=> (not res!862600) (not e!1233133))))

(assert (=> d!588326 (= res!862600 ((_ is Cons!21936) rules!3198))))

(assert (=> d!588326 (= (contains!3967 rules!3198 (get!6907 lt!738623)) lt!739519)))

(declare-fun b!1929233 () Bool)

(declare-fun e!1233132 () Bool)

(assert (=> b!1929233 (= e!1233133 e!1233132)))

(declare-fun res!862601 () Bool)

(assert (=> b!1929233 (=> res!862601 e!1233132)))

(assert (=> b!1929233 (= res!862601 (= (h!27337 rules!3198) (get!6907 lt!738623)))))

(declare-fun b!1929234 () Bool)

(assert (=> b!1929234 (= e!1233132 (contains!3967 (t!179567 rules!3198) (get!6907 lt!738623)))))

(assert (= (and d!588326 res!862600) b!1929233))

(assert (= (and b!1929233 (not res!862601)) b!1929234))

(assert (=> d!588326 m!2364327))

(assert (=> d!588326 m!2363391))

(declare-fun m!2366781 () Bool)

(assert (=> d!588326 m!2366781))

(assert (=> b!1929234 m!2363391))

(declare-fun m!2366783 () Bool)

(assert (=> b!1929234 m!2366783))

(assert (=> b!1927130 d!588326))

(assert (=> b!1927130 d!588314))

(declare-fun d!588328 () Bool)

(declare-fun c!313841 () Bool)

(assert (=> d!588328 (= c!313841 ((_ is IntegerValue!12210) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))))

(declare-fun e!1233134 () Bool)

(assert (=> d!588328 (= (inv!21 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))) e!1233134)))

(declare-fun b!1929235 () Bool)

(assert (=> b!1929235 (= e!1233134 (inv!16 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))))

(declare-fun b!1929236 () Bool)

(declare-fun e!1233136 () Bool)

(assert (=> b!1929236 (= e!1233136 (inv!15 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))))

(declare-fun b!1929237 () Bool)

(declare-fun e!1233135 () Bool)

(assert (=> b!1929237 (= e!1233135 (inv!17 (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))))

(declare-fun b!1929238 () Bool)

(declare-fun res!862602 () Bool)

(assert (=> b!1929238 (=> res!862602 e!1233136)))

(assert (=> b!1929238 (= res!862602 (not ((_ is IntegerValue!12212) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))))))))

(assert (=> b!1929238 (= e!1233135 e!1233136)))

(declare-fun b!1929239 () Bool)

(assert (=> b!1929239 (= e!1233134 e!1233135)))

(declare-fun c!313840 () Bool)

(assert (=> b!1929239 (= c!313840 ((_ is IntegerValue!12211) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))))

(assert (= (and d!588328 c!313841) b!1929235))

(assert (= (and d!588328 (not c!313841)) b!1929239))

(assert (= (and b!1929239 c!313840) b!1929237))

(assert (= (and b!1929239 (not c!313840)) b!1929238))

(assert (= (and b!1929238 (not res!862602)) b!1929236))

(declare-fun m!2366785 () Bool)

(assert (=> b!1929235 m!2366785))

(declare-fun m!2366787 () Bool)

(assert (=> b!1929236 m!2366787))

(declare-fun m!2366789 () Bool)

(assert (=> b!1929237 m!2366789))

(assert (=> tb!117999 d!588328))

(declare-fun d!588330 () Bool)

(declare-fun lt!739520 () Int)

(assert (=> d!588330 (>= lt!739520 0)))

(declare-fun e!1233137 () Int)

(assert (=> d!588330 (= lt!739520 e!1233137)))

(declare-fun c!313842 () Bool)

(assert (=> d!588330 (= c!313842 ((_ is Nil!21935) (_2!11743 (get!6908 lt!738640))))))

(assert (=> d!588330 (= (size!17110 (_2!11743 (get!6908 lt!738640))) lt!739520)))

(declare-fun b!1929240 () Bool)

(assert (=> b!1929240 (= e!1233137 0)))

(declare-fun b!1929241 () Bool)

(assert (=> b!1929241 (= e!1233137 (+ 1 (size!17110 (t!179566 (_2!11743 (get!6908 lt!738640))))))))

(assert (= (and d!588330 c!313842) b!1929240))

(assert (= (and d!588330 (not c!313842)) b!1929241))

(declare-fun m!2366791 () Bool)

(assert (=> b!1929241 m!2366791))

(assert (=> b!1927167 d!588330))

(assert (=> b!1927167 d!587544))

(assert (=> b!1927167 d!588186))

(assert (=> bm!118459 d!588232))

(declare-fun d!588332 () Bool)

(assert (=> d!588332 (= (isEmpty!13513 lt!738489) (not ((_ is Some!4542) lt!738489)))))

(assert (=> d!587252 d!588332))

(assert (=> b!1926936 d!588172))

(assert (=> b!1926936 d!587232))

(declare-fun d!588334 () Bool)

(assert (=> d!588334 (= (isEmpty!13512 lt!738623) (not ((_ is Some!4543) lt!738623)))))

(assert (=> d!587232 d!588334))

(assert (=> d!587232 d!587402))

(assert (=> b!1927391 d!587298))

(assert (=> d!587392 d!587652))

(declare-fun b!1929242 () Bool)

(declare-fun res!862606 () Bool)

(declare-fun e!1233140 () Bool)

(assert (=> b!1929242 (=> res!862606 e!1233140)))

(assert (=> b!1929242 (= res!862606 (not ((_ is Concat!9430) (regex!3934 lt!738484))))))

(declare-fun e!1233141 () Bool)

(assert (=> b!1929242 (= e!1233141 e!1233140)))

(declare-fun b!1929243 () Bool)

(declare-fun e!1233138 () Bool)

(assert (=> b!1929243 (= e!1233138 e!1233141)))

(declare-fun c!313843 () Bool)

(assert (=> b!1929243 (= c!313843 ((_ is Union!5359) (regex!3934 lt!738484)))))

(declare-fun b!1929244 () Bool)

(declare-fun e!1233144 () Bool)

(declare-fun call!118685 () Bool)

(assert (=> b!1929244 (= e!1233144 call!118685)))

(declare-fun bm!118678 () Bool)

(assert (=> bm!118678 (= call!118685 (validRegex!2134 (ite c!313843 (regTwo!11231 (regex!3934 lt!738484)) (regTwo!11230 (regex!3934 lt!738484)))))))

(declare-fun bm!118679 () Bool)

(declare-fun call!118684 () Bool)

(declare-fun call!118683 () Bool)

(assert (=> bm!118679 (= call!118684 call!118683)))

(declare-fun b!1929246 () Bool)

(declare-fun e!1233139 () Bool)

(assert (=> b!1929246 (= e!1233139 e!1233138)))

(declare-fun c!313844 () Bool)

(assert (=> b!1929246 (= c!313844 ((_ is Star!5359) (regex!3934 lt!738484)))))

(declare-fun b!1929247 () Bool)

(declare-fun e!1233143 () Bool)

(assert (=> b!1929247 (= e!1233143 call!118683)))

(declare-fun b!1929248 () Bool)

(declare-fun e!1233142 () Bool)

(assert (=> b!1929248 (= e!1233140 e!1233142)))

(declare-fun res!862607 () Bool)

(assert (=> b!1929248 (=> (not res!862607) (not e!1233142))))

(assert (=> b!1929248 (= res!862607 call!118684)))

(declare-fun b!1929249 () Bool)

(assert (=> b!1929249 (= e!1233138 e!1233143)))

(declare-fun res!862605 () Bool)

(assert (=> b!1929249 (= res!862605 (not (nullable!1608 (reg!5688 (regex!3934 lt!738484)))))))

(assert (=> b!1929249 (=> (not res!862605) (not e!1233143))))

(declare-fun b!1929250 () Bool)

(declare-fun res!862603 () Bool)

(assert (=> b!1929250 (=> (not res!862603) (not e!1233144))))

(assert (=> b!1929250 (= res!862603 call!118684)))

(assert (=> b!1929250 (= e!1233141 e!1233144)))

(declare-fun bm!118680 () Bool)

(assert (=> bm!118680 (= call!118683 (validRegex!2134 (ite c!313844 (reg!5688 (regex!3934 lt!738484)) (ite c!313843 (regOne!11231 (regex!3934 lt!738484)) (regOne!11230 (regex!3934 lt!738484))))))))

(declare-fun b!1929245 () Bool)

(assert (=> b!1929245 (= e!1233142 call!118685)))

(declare-fun d!588336 () Bool)

(declare-fun res!862604 () Bool)

(assert (=> d!588336 (=> res!862604 e!1233139)))

(assert (=> d!588336 (= res!862604 ((_ is ElementMatch!5359) (regex!3934 lt!738484)))))

(assert (=> d!588336 (= (validRegex!2134 (regex!3934 lt!738484)) e!1233139)))

(assert (= (and d!588336 (not res!862604)) b!1929246))

(assert (= (and b!1929246 c!313844) b!1929249))

(assert (= (and b!1929246 (not c!313844)) b!1929243))

(assert (= (and b!1929249 res!862605) b!1929247))

(assert (= (and b!1929243 c!313843) b!1929250))

(assert (= (and b!1929243 (not c!313843)) b!1929242))

(assert (= (and b!1929250 res!862603) b!1929244))

(assert (= (and b!1929242 (not res!862606)) b!1929248))

(assert (= (and b!1929248 res!862607) b!1929245))

(assert (= (or b!1929250 b!1929248) bm!118679))

(assert (= (or b!1929244 b!1929245) bm!118678))

(assert (= (or b!1929247 bm!118679) bm!118680))

(declare-fun m!2366793 () Bool)

(assert (=> bm!118678 m!2366793))

(declare-fun m!2366795 () Bool)

(assert (=> b!1929249 m!2366795))

(declare-fun m!2366797 () Bool)

(assert (=> bm!118680 m!2366797))

(assert (=> d!587392 d!588336))

(declare-fun d!588338 () Bool)

(declare-fun c!313846 () Bool)

(assert (=> d!588338 (= c!313846 ((_ is IntegerValue!12210) (value!123710 (h!27338 (t!179568 tokens!598)))))))

(declare-fun e!1233145 () Bool)

(assert (=> d!588338 (= (inv!21 (value!123710 (h!27338 (t!179568 tokens!598)))) e!1233145)))

(declare-fun b!1929251 () Bool)

(assert (=> b!1929251 (= e!1233145 (inv!16 (value!123710 (h!27338 (t!179568 tokens!598)))))))

(declare-fun b!1929252 () Bool)

(declare-fun e!1233147 () Bool)

(assert (=> b!1929252 (= e!1233147 (inv!15 (value!123710 (h!27338 (t!179568 tokens!598)))))))

(declare-fun b!1929253 () Bool)

(declare-fun e!1233146 () Bool)

(assert (=> b!1929253 (= e!1233146 (inv!17 (value!123710 (h!27338 (t!179568 tokens!598)))))))

(declare-fun b!1929254 () Bool)

(declare-fun res!862608 () Bool)

(assert (=> b!1929254 (=> res!862608 e!1233147)))

(assert (=> b!1929254 (= res!862608 (not ((_ is IntegerValue!12212) (value!123710 (h!27338 (t!179568 tokens!598))))))))

(assert (=> b!1929254 (= e!1233146 e!1233147)))

(declare-fun b!1929255 () Bool)

(assert (=> b!1929255 (= e!1233145 e!1233146)))

(declare-fun c!313845 () Bool)

(assert (=> b!1929255 (= c!313845 ((_ is IntegerValue!12211) (value!123710 (h!27338 (t!179568 tokens!598)))))))

(assert (= (and d!588338 c!313846) b!1929251))

(assert (= (and d!588338 (not c!313846)) b!1929255))

(assert (= (and b!1929255 c!313845) b!1929253))

(assert (= (and b!1929255 (not c!313845)) b!1929254))

(assert (= (and b!1929254 (not res!862608)) b!1929252))

(declare-fun m!2366799 () Bool)

(assert (=> b!1929251 m!2366799))

(declare-fun m!2366801 () Bool)

(assert (=> b!1929252 m!2366801))

(declare-fun m!2366803 () Bool)

(assert (=> b!1929253 m!2366803))

(assert (=> b!1927659 d!588338))

(declare-fun b!1929256 () Bool)

(declare-fun e!1233150 () Bool)

(declare-fun e!1233149 () Bool)

(assert (=> b!1929256 (= e!1233150 e!1233149)))

(declare-fun res!862616 () Bool)

(assert (=> b!1929256 (=> (not res!862616) (not e!1233149))))

(declare-fun lt!739521 () Bool)

(assert (=> b!1929256 (= res!862616 (not lt!739521))))

(declare-fun b!1929257 () Bool)

(declare-fun e!1233151 () Bool)

(assert (=> b!1929257 (= e!1233151 (matchR!2627 (derivativeStep!1367 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))) (head!4494 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610)))))) (tail!2979 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610)))))))))

(declare-fun b!1929258 () Bool)

(declare-fun e!1233153 () Bool)

(assert (=> b!1929258 (= e!1233153 (= (head!4494 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))) (c!313265 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))))))

(declare-fun b!1929259 () Bool)

(declare-fun res!862612 () Bool)

(assert (=> b!1929259 (=> (not res!862612) (not e!1233153))))

(assert (=> b!1929259 (= res!862612 (isEmpty!13510 (tail!2979 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610)))))))))

(declare-fun b!1929260 () Bool)

(declare-fun res!862610 () Bool)

(declare-fun e!1233148 () Bool)

(assert (=> b!1929260 (=> res!862610 e!1233148)))

(assert (=> b!1929260 (= res!862610 (not (isEmpty!13510 (tail!2979 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))))))))

(declare-fun b!1929261 () Bool)

(assert (=> b!1929261 (= e!1233149 e!1233148)))

(declare-fun res!862611 () Bool)

(assert (=> b!1929261 (=> res!862611 e!1233148)))

(declare-fun call!118686 () Bool)

(assert (=> b!1929261 (= res!862611 call!118686)))

(declare-fun b!1929262 () Bool)

(declare-fun res!862609 () Bool)

(assert (=> b!1929262 (=> res!862609 e!1233150)))

(assert (=> b!1929262 (= res!862609 e!1233153)))

(declare-fun res!862615 () Bool)

(assert (=> b!1929262 (=> (not res!862615) (not e!1233153))))

(assert (=> b!1929262 (= res!862615 lt!739521)))

(declare-fun b!1929263 () Bool)

(assert (=> b!1929263 (= e!1233148 (not (= (head!4494 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))) (c!313265 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))))))))

(declare-fun b!1929264 () Bool)

(declare-fun res!862613 () Bool)

(assert (=> b!1929264 (=> (not res!862613) (not e!1233153))))

(assert (=> b!1929264 (= res!862613 (not call!118686))))

(declare-fun b!1929265 () Bool)

(declare-fun res!862614 () Bool)

(assert (=> b!1929265 (=> res!862614 e!1233150)))

(assert (=> b!1929265 (= res!862614 (not ((_ is ElementMatch!5359) (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))))))

(declare-fun e!1233154 () Bool)

(assert (=> b!1929265 (= e!1233154 e!1233150)))

(declare-fun b!1929266 () Bool)

(declare-fun e!1233152 () Bool)

(assert (=> b!1929266 (= e!1233152 (= lt!739521 call!118686))))

(declare-fun b!1929267 () Bool)

(assert (=> b!1929267 (= e!1233152 e!1233154)))

(declare-fun c!313849 () Bool)

(assert (=> b!1929267 (= c!313849 ((_ is EmptyLang!5359) (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))))))

(declare-fun b!1929268 () Bool)

(assert (=> b!1929268 (= e!1233154 (not lt!739521))))

(declare-fun b!1929269 () Bool)

(assert (=> b!1929269 (= e!1233151 (nullable!1608 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))))))

(declare-fun bm!118681 () Bool)

(assert (=> bm!118681 (= call!118686 (isEmpty!13510 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))))))

(declare-fun d!588340 () Bool)

(assert (=> d!588340 e!1233152))

(declare-fun c!313847 () Bool)

(assert (=> d!588340 (= c!313847 ((_ is EmptyExpr!5359) (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610))))))))

(assert (=> d!588340 (= lt!739521 e!1233151)))

(declare-fun c!313848 () Bool)

(assert (=> d!588340 (= c!313848 (isEmpty!13510 (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))))))

(assert (=> d!588340 (validRegex!2134 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))))

(assert (=> d!588340 (= (matchR!2627 (regex!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))) (list!8871 (charsOf!2474 (_1!11743 (get!6908 lt!738610))))) lt!739521)))

(assert (= (and d!588340 c!313848) b!1929269))

(assert (= (and d!588340 (not c!313848)) b!1929257))

(assert (= (and d!588340 c!313847) b!1929266))

(assert (= (and d!588340 (not c!313847)) b!1929267))

(assert (= (and b!1929267 c!313849) b!1929268))

(assert (= (and b!1929267 (not c!313849)) b!1929265))

(assert (= (and b!1929265 (not res!862614)) b!1929262))

(assert (= (and b!1929262 res!862615) b!1929264))

(assert (= (and b!1929264 res!862613) b!1929259))

(assert (= (and b!1929259 res!862612) b!1929258))

(assert (= (and b!1929262 (not res!862609)) b!1929256))

(assert (= (and b!1929256 res!862616) b!1929261))

(assert (= (and b!1929261 (not res!862611)) b!1929260))

(assert (= (and b!1929260 (not res!862610)) b!1929263))

(assert (= (or b!1929266 b!1929261 b!1929264) bm!118681))

(assert (=> b!1929263 m!2363345))

(declare-fun m!2366805 () Bool)

(assert (=> b!1929263 m!2366805))

(assert (=> b!1929257 m!2363345))

(assert (=> b!1929257 m!2366805))

(assert (=> b!1929257 m!2366805))

(declare-fun m!2366807 () Bool)

(assert (=> b!1929257 m!2366807))

(assert (=> b!1929257 m!2363345))

(declare-fun m!2366809 () Bool)

(assert (=> b!1929257 m!2366809))

(assert (=> b!1929257 m!2366807))

(assert (=> b!1929257 m!2366809))

(declare-fun m!2366811 () Bool)

(assert (=> b!1929257 m!2366811))

(assert (=> b!1929260 m!2363345))

(assert (=> b!1929260 m!2366809))

(assert (=> b!1929260 m!2366809))

(declare-fun m!2366813 () Bool)

(assert (=> b!1929260 m!2366813))

(assert (=> b!1929259 m!2363345))

(assert (=> b!1929259 m!2366809))

(assert (=> b!1929259 m!2366809))

(assert (=> b!1929259 m!2366813))

(declare-fun m!2366815 () Bool)

(assert (=> b!1929269 m!2366815))

(assert (=> b!1929258 m!2363345))

(assert (=> b!1929258 m!2366805))

(assert (=> bm!118681 m!2363345))

(declare-fun m!2366817 () Bool)

(assert (=> bm!118681 m!2366817))

(assert (=> d!588340 m!2363345))

(assert (=> d!588340 m!2366817))

(declare-fun m!2366819 () Bool)

(assert (=> d!588340 m!2366819))

(assert (=> b!1927085 d!588340))

(assert (=> b!1927085 d!587482))

(assert (=> b!1927085 d!587694))

(assert (=> b!1927085 d!587696))

(declare-fun d!588342 () Bool)

(assert (=> d!588342 (= (isDefined!3838 lt!738640) (not (isEmpty!13513 lt!738640)))))

(declare-fun bs!414885 () Bool)

(assert (= bs!414885 d!588342))

(assert (=> bs!414885 m!2363463))

(assert (=> b!1927171 d!588342))

(declare-fun d!588344 () Bool)

(assert (=> d!588344 (= (isEmpty!13519 (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))) ((_ is Nil!21937) (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))))))

(assert (=> d!587408 d!588344))

(declare-fun d!588346 () Bool)

(assert (=> d!588346 (= (list!8875 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494)))) (list!8877 (c!313266 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))))))

(declare-fun bs!414886 () Bool)

(assert (= bs!414886 d!588346))

(declare-fun m!2366821 () Bool)

(assert (=> bs!414886 m!2366821))

(assert (=> d!587408 d!588346))

(declare-fun d!588348 () Bool)

(declare-fun lt!739524 () Bool)

(assert (=> d!588348 (= lt!739524 (isEmpty!13519 (list!8877 (c!313266 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494)))))))))

(assert (=> d!588348 (= lt!739524 (= (size!17116 (c!313266 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))) 0))))

(assert (=> d!588348 (= (isEmpty!13520 (c!313266 (_1!11744 (lex!1573 thiss!23328 rules!3198 (seqFromList!2788 lt!738494))))) lt!739524)))

(declare-fun bs!414887 () Bool)

(assert (= bs!414887 d!588348))

(assert (=> bs!414887 m!2366821))

(assert (=> bs!414887 m!2366821))

(declare-fun m!2366823 () Bool)

(assert (=> bs!414887 m!2366823))

(declare-fun m!2366825 () Bool)

(assert (=> bs!414887 m!2366825))

(assert (=> d!587408 d!588348))

(declare-fun d!588350 () Bool)

(declare-fun lt!739525 () Int)

(assert (=> d!588350 (>= lt!739525 0)))

(declare-fun e!1233155 () Int)

(assert (=> d!588350 (= lt!739525 e!1233155)))

(declare-fun c!313850 () Bool)

(assert (=> d!588350 (= c!313850 ((_ is Nil!21935) lt!738634))))

(assert (=> d!588350 (= (size!17110 lt!738634) lt!739525)))

(declare-fun b!1929270 () Bool)

(assert (=> b!1929270 (= e!1233155 0)))

(declare-fun b!1929271 () Bool)

(assert (=> b!1929271 (= e!1233155 (+ 1 (size!17110 (t!179566 lt!738634))))))

(assert (= (and d!588350 c!313850) b!1929270))

(assert (= (and d!588350 (not c!313850)) b!1929271))

(declare-fun m!2366827 () Bool)

(assert (=> b!1929271 m!2366827))

(assert (=> b!1927160 d!588350))

(assert (=> b!1927160 d!588186))

(assert (=> b!1927160 d!588136))

(declare-fun d!588352 () Bool)

(declare-fun c!313851 () Bool)

(assert (=> d!588352 (= c!313851 ((_ is Node!7322) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))))))

(declare-fun e!1233156 () Bool)

(assert (=> d!588352 (= (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))) e!1233156)))

(declare-fun b!1929272 () Bool)

(assert (=> b!1929272 (= e!1233156 (inv!29023 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))))))

(declare-fun b!1929273 () Bool)

(declare-fun e!1233157 () Bool)

(assert (=> b!1929273 (= e!1233156 e!1233157)))

(declare-fun res!862617 () Bool)

(assert (=> b!1929273 (= res!862617 (not ((_ is Leaf!10752) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))))))))

(assert (=> b!1929273 (=> res!862617 e!1233157)))

(declare-fun b!1929274 () Bool)

(assert (=> b!1929274 (= e!1233157 (inv!29024 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))))))

(assert (= (and d!588352 c!313851) b!1929272))

(assert (= (and d!588352 (not c!313851)) b!1929273))

(assert (= (and b!1929273 (not res!862617)) b!1929274))

(declare-fun m!2366829 () Bool)

(assert (=> b!1929272 m!2366829))

(declare-fun m!2366831 () Bool)

(assert (=> b!1929274 m!2366831))

(assert (=> b!1927162 d!588352))

(assert (=> b!1927570 d!587680))

(assert (=> b!1927570 d!587672))

(declare-fun d!588354 () Bool)

(declare-fun e!1233159 () Bool)

(assert (=> d!588354 e!1233159))

(declare-fun res!862618 () Bool)

(assert (=> d!588354 (=> (not res!862618) (not e!1233159))))

(declare-fun lt!739526 () List!22017)

(assert (=> d!588354 (= res!862618 (= (content!3171 lt!739526) ((_ map or) (content!3171 e!1231850) (content!3171 (ite c!313315 lt!738595 call!118494)))))))

(declare-fun e!1233158 () List!22017)

(assert (=> d!588354 (= lt!739526 e!1233158)))

(declare-fun c!313852 () Bool)

(assert (=> d!588354 (= c!313852 ((_ is Nil!21935) e!1231850))))

(assert (=> d!588354 (= (++!5881 e!1231850 (ite c!313315 lt!738595 call!118494)) lt!739526)))

(declare-fun b!1929278 () Bool)

(assert (=> b!1929278 (= e!1233159 (or (not (= (ite c!313315 lt!738595 call!118494) Nil!21935)) (= lt!739526 e!1231850)))))

(declare-fun b!1929277 () Bool)

(declare-fun res!862619 () Bool)

(assert (=> b!1929277 (=> (not res!862619) (not e!1233159))))

(assert (=> b!1929277 (= res!862619 (= (size!17110 lt!739526) (+ (size!17110 e!1231850) (size!17110 (ite c!313315 lt!738595 call!118494)))))))

(declare-fun b!1929276 () Bool)

(assert (=> b!1929276 (= e!1233158 (Cons!21935 (h!27336 e!1231850) (++!5881 (t!179566 e!1231850) (ite c!313315 lt!738595 call!118494))))))

(declare-fun b!1929275 () Bool)

(assert (=> b!1929275 (= e!1233158 (ite c!313315 lt!738595 call!118494))))

(assert (= (and d!588354 c!313852) b!1929275))

(assert (= (and d!588354 (not c!313852)) b!1929276))

(assert (= (and d!588354 res!862618) b!1929277))

(assert (= (and b!1929277 res!862619) b!1929278))

(declare-fun m!2366833 () Bool)

(assert (=> d!588354 m!2366833))

(declare-fun m!2366835 () Bool)

(assert (=> d!588354 m!2366835))

(declare-fun m!2366837 () Bool)

(assert (=> d!588354 m!2366837))

(declare-fun m!2366839 () Bool)

(assert (=> b!1929277 m!2366839))

(declare-fun m!2366841 () Bool)

(assert (=> b!1929277 m!2366841))

(declare-fun m!2366843 () Bool)

(assert (=> b!1929277 m!2366843))

(declare-fun m!2366845 () Bool)

(assert (=> b!1929276 m!2366845))

(assert (=> bm!118488 d!588354))

(declare-fun b!1929281 () Bool)

(declare-fun e!1233162 () Bool)

(assert (=> b!1929281 (= e!1233162 true)))

(declare-fun b!1929280 () Bool)

(declare-fun e!1233161 () Bool)

(assert (=> b!1929280 (= e!1233161 e!1233162)))

(declare-fun b!1929279 () Bool)

(declare-fun e!1233160 () Bool)

(assert (=> b!1929279 (= e!1233160 e!1233161)))

(assert (=> b!1927062 e!1233160))

(assert (= b!1929280 b!1929281))

(assert (= b!1929279 b!1929280))

(assert (= (and b!1927062 ((_ is Cons!21936) (t!179567 rules!3198))) b!1929279))

(assert (=> b!1929281 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198))))) (dynLambda!10625 order!13769 lambda!75185))))

(assert (=> b!1929281 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198))))) (dynLambda!10625 order!13769 lambda!75185))))

(declare-fun b!1929282 () Bool)

(declare-fun e!1233163 () Bool)

(assert (=> b!1929282 (= e!1233163 tp_is_empty!9137)))

(assert (=> b!1927667 (= tp!550572 e!1233163)))

(declare-fun b!1929283 () Bool)

(declare-fun tp!550702 () Bool)

(declare-fun tp!550704 () Bool)

(assert (=> b!1929283 (= e!1233163 (and tp!550702 tp!550704))))

(declare-fun b!1929284 () Bool)

(declare-fun tp!550701 () Bool)

(assert (=> b!1929284 (= e!1233163 tp!550701)))

(declare-fun b!1929285 () Bool)

(declare-fun tp!550703 () Bool)

(declare-fun tp!550705 () Bool)

(assert (=> b!1929285 (= e!1233163 (and tp!550703 tp!550705))))

(assert (= (and b!1927667 ((_ is ElementMatch!5359) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) b!1929282))

(assert (= (and b!1927667 ((_ is Concat!9430) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) b!1929283))

(assert (= (and b!1927667 ((_ is Star!5359) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) b!1929284))

(assert (= (and b!1927667 ((_ is Union!5359) (regOne!11230 (regex!3934 (rule!6139 separatorToken!354))))) b!1929285))

(declare-fun b!1929286 () Bool)

(declare-fun e!1233164 () Bool)

(assert (=> b!1929286 (= e!1233164 tp_is_empty!9137)))

(assert (=> b!1927667 (= tp!550574 e!1233164)))

(declare-fun b!1929287 () Bool)

(declare-fun tp!550707 () Bool)

(declare-fun tp!550709 () Bool)

(assert (=> b!1929287 (= e!1233164 (and tp!550707 tp!550709))))

(declare-fun b!1929288 () Bool)

(declare-fun tp!550706 () Bool)

(assert (=> b!1929288 (= e!1233164 tp!550706)))

(declare-fun b!1929289 () Bool)

(declare-fun tp!550708 () Bool)

(declare-fun tp!550710 () Bool)

(assert (=> b!1929289 (= e!1233164 (and tp!550708 tp!550710))))

(assert (= (and b!1927667 ((_ is ElementMatch!5359) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354))))) b!1929286))

(assert (= (and b!1927667 ((_ is Concat!9430) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354))))) b!1929287))

(assert (= (and b!1927667 ((_ is Star!5359) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354))))) b!1929288))

(assert (= (and b!1927667 ((_ is Union!5359) (regTwo!11230 (regex!3934 (rule!6139 separatorToken!354))))) b!1929289))

(declare-fun b!1929290 () Bool)

(declare-fun e!1233165 () Bool)

(assert (=> b!1929290 (= e!1233165 tp_is_empty!9137)))

(assert (=> b!1927668 (= tp!550571 e!1233165)))

(declare-fun b!1929291 () Bool)

(declare-fun tp!550712 () Bool)

(declare-fun tp!550714 () Bool)

(assert (=> b!1929291 (= e!1233165 (and tp!550712 tp!550714))))

(declare-fun b!1929292 () Bool)

(declare-fun tp!550711 () Bool)

(assert (=> b!1929292 (= e!1233165 tp!550711)))

(declare-fun b!1929293 () Bool)

(declare-fun tp!550713 () Bool)

(declare-fun tp!550715 () Bool)

(assert (=> b!1929293 (= e!1233165 (and tp!550713 tp!550715))))

(assert (= (and b!1927668 ((_ is ElementMatch!5359) (reg!5688 (regex!3934 (rule!6139 separatorToken!354))))) b!1929290))

(assert (= (and b!1927668 ((_ is Concat!9430) (reg!5688 (regex!3934 (rule!6139 separatorToken!354))))) b!1929291))

(assert (= (and b!1927668 ((_ is Star!5359) (reg!5688 (regex!3934 (rule!6139 separatorToken!354))))) b!1929292))

(assert (= (and b!1927668 ((_ is Union!5359) (reg!5688 (regex!3934 (rule!6139 separatorToken!354))))) b!1929293))

(declare-fun b!1929294 () Bool)

(declare-fun e!1233166 () Bool)

(assert (=> b!1929294 (= e!1233166 tp_is_empty!9137)))

(assert (=> b!1927669 (= tp!550573 e!1233166)))

(declare-fun b!1929295 () Bool)

(declare-fun tp!550717 () Bool)

(declare-fun tp!550719 () Bool)

(assert (=> b!1929295 (= e!1233166 (and tp!550717 tp!550719))))

(declare-fun b!1929296 () Bool)

(declare-fun tp!550716 () Bool)

(assert (=> b!1929296 (= e!1233166 tp!550716)))

(declare-fun b!1929297 () Bool)

(declare-fun tp!550718 () Bool)

(declare-fun tp!550720 () Bool)

(assert (=> b!1929297 (= e!1233166 (and tp!550718 tp!550720))))

(assert (= (and b!1927669 ((_ is ElementMatch!5359) (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))))) b!1929294))

(assert (= (and b!1927669 ((_ is Concat!9430) (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))))) b!1929295))

(assert (= (and b!1927669 ((_ is Star!5359) (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))))) b!1929296))

(assert (= (and b!1927669 ((_ is Union!5359) (regOne!11231 (regex!3934 (rule!6139 separatorToken!354))))) b!1929297))

(declare-fun b!1929298 () Bool)

(declare-fun e!1233167 () Bool)

(assert (=> b!1929298 (= e!1233167 tp_is_empty!9137)))

(assert (=> b!1927669 (= tp!550575 e!1233167)))

(declare-fun b!1929299 () Bool)

(declare-fun tp!550722 () Bool)

(declare-fun tp!550724 () Bool)

(assert (=> b!1929299 (= e!1233167 (and tp!550722 tp!550724))))

(declare-fun b!1929300 () Bool)

(declare-fun tp!550721 () Bool)

(assert (=> b!1929300 (= e!1233167 tp!550721)))

(declare-fun b!1929301 () Bool)

(declare-fun tp!550723 () Bool)

(declare-fun tp!550725 () Bool)

(assert (=> b!1929301 (= e!1233167 (and tp!550723 tp!550725))))

(assert (= (and b!1927669 ((_ is ElementMatch!5359) (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))))) b!1929298))

(assert (= (and b!1927669 ((_ is Concat!9430) (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))))) b!1929299))

(assert (= (and b!1927669 ((_ is Star!5359) (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))))) b!1929300))

(assert (= (and b!1927669 ((_ is Union!5359) (regTwo!11231 (regex!3934 (rule!6139 separatorToken!354))))) b!1929301))

(declare-fun b!1929304 () Bool)

(declare-fun e!1233170 () Bool)

(assert (=> b!1929304 (= e!1233170 true)))

(declare-fun b!1929303 () Bool)

(declare-fun e!1233169 () Bool)

(assert (=> b!1929303 (= e!1233169 e!1233170)))

(declare-fun b!1929302 () Bool)

(declare-fun e!1233168 () Bool)

(assert (=> b!1929302 (= e!1233168 e!1233169)))

(assert (=> b!1927564 e!1233168))

(assert (= b!1929303 b!1929304))

(assert (= b!1929302 b!1929303))

(assert (= (and b!1927564 ((_ is Cons!21936) (t!179567 rules!3198))) b!1929302))

(assert (=> b!1929304 (< (dynLambda!10624 order!13767 (toValue!5567 (transformation!3934 (h!27337 (t!179567 rules!3198))))) (dynLambda!10625 order!13769 lambda!75197))))

(assert (=> b!1929304 (< (dynLambda!10626 order!13771 (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198))))) (dynLambda!10625 order!13769 lambda!75197))))

(declare-fun b!1929305 () Bool)

(declare-fun e!1233171 () Bool)

(declare-fun tp!550726 () Bool)

(assert (=> b!1929305 (= e!1233171 (and tp_is_empty!9137 tp!550726))))

(assert (=> b!1927670 (= tp!550576 e!1233171)))

(assert (= (and b!1927670 ((_ is Cons!21935) (t!179566 (originalCharacters!4741 separatorToken!354)))) b!1929305))

(declare-fun tp!550734 () Bool)

(declare-fun b!1929314 () Bool)

(declare-fun e!1233176 () Bool)

(declare-fun tp!550735 () Bool)

(assert (=> b!1929314 (= e!1233176 (and (inv!29019 (left!17447 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))))) tp!550734 (inv!29019 (right!17777 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))))) tp!550735))))

(declare-fun b!1929316 () Bool)

(declare-fun e!1233177 () Bool)

(declare-fun tp!550733 () Bool)

(assert (=> b!1929316 (= e!1233177 tp!550733)))

(declare-fun b!1929315 () Bool)

(declare-fun inv!29025 (IArray!14649) Bool)

(assert (=> b!1929315 (= e!1233176 (and (inv!29025 (xs!10216 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))))) e!1233177))))

(assert (=> b!1927183 (= tp!550464 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497)))) e!1233176))))

(assert (= (and b!1927183 ((_ is Node!7322) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))))) b!1929314))

(assert (= b!1929315 b!1929316))

(assert (= (and b!1927183 ((_ is Leaf!10752) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))))) b!1929315))

(declare-fun m!2366847 () Bool)

(assert (=> b!1929314 m!2366847))

(declare-fun m!2366849 () Bool)

(assert (=> b!1929314 m!2366849))

(declare-fun m!2366851 () Bool)

(assert (=> b!1929315 m!2366851))

(assert (=> b!1927183 m!2363491))

(declare-fun b!1929317 () Bool)

(declare-fun e!1233178 () Bool)

(declare-fun tp!550736 () Bool)

(assert (=> b!1929317 (= e!1233178 (and tp_is_empty!9137 tp!550736))))

(assert (=> b!1927647 (= tp!550550 e!1233178)))

(assert (= (and b!1927647 ((_ is Cons!21935) (t!179566 (originalCharacters!4741 (h!27338 tokens!598))))) b!1929317))

(declare-fun b!1929318 () Bool)

(declare-fun e!1233179 () Bool)

(assert (=> b!1929318 (= e!1233179 tp_is_empty!9137)))

(assert (=> b!1927663 (= tp!550567 e!1233179)))

(declare-fun b!1929319 () Bool)

(declare-fun tp!550738 () Bool)

(declare-fun tp!550740 () Bool)

(assert (=> b!1929319 (= e!1233179 (and tp!550738 tp!550740))))

(declare-fun b!1929320 () Bool)

(declare-fun tp!550737 () Bool)

(assert (=> b!1929320 (= e!1233179 tp!550737)))

(declare-fun b!1929321 () Bool)

(declare-fun tp!550739 () Bool)

(declare-fun tp!550741 () Bool)

(assert (=> b!1929321 (= e!1233179 (and tp!550739 tp!550741))))

(assert (= (and b!1927663 ((_ is ElementMatch!5359) (regOne!11230 (regex!3934 (h!27337 rules!3198))))) b!1929318))

(assert (= (and b!1927663 ((_ is Concat!9430) (regOne!11230 (regex!3934 (h!27337 rules!3198))))) b!1929319))

(assert (= (and b!1927663 ((_ is Star!5359) (regOne!11230 (regex!3934 (h!27337 rules!3198))))) b!1929320))

(assert (= (and b!1927663 ((_ is Union!5359) (regOne!11230 (regex!3934 (h!27337 rules!3198))))) b!1929321))

(declare-fun b!1929322 () Bool)

(declare-fun e!1233180 () Bool)

(assert (=> b!1929322 (= e!1233180 tp_is_empty!9137)))

(assert (=> b!1927663 (= tp!550569 e!1233180)))

(declare-fun b!1929323 () Bool)

(declare-fun tp!550743 () Bool)

(declare-fun tp!550745 () Bool)

(assert (=> b!1929323 (= e!1233180 (and tp!550743 tp!550745))))

(declare-fun b!1929324 () Bool)

(declare-fun tp!550742 () Bool)

(assert (=> b!1929324 (= e!1233180 tp!550742)))

(declare-fun b!1929325 () Bool)

(declare-fun tp!550744 () Bool)

(declare-fun tp!550746 () Bool)

(assert (=> b!1929325 (= e!1233180 (and tp!550744 tp!550746))))

(assert (= (and b!1927663 ((_ is ElementMatch!5359) (regTwo!11230 (regex!3934 (h!27337 rules!3198))))) b!1929322))

(assert (= (and b!1927663 ((_ is Concat!9430) (regTwo!11230 (regex!3934 (h!27337 rules!3198))))) b!1929323))

(assert (= (and b!1927663 ((_ is Star!5359) (regTwo!11230 (regex!3934 (h!27337 rules!3198))))) b!1929324))

(assert (= (and b!1927663 ((_ is Union!5359) (regTwo!11230 (regex!3934 (h!27337 rules!3198))))) b!1929325))

(declare-fun b!1929326 () Bool)

(declare-fun tp!550748 () Bool)

(declare-fun tp!550749 () Bool)

(declare-fun e!1233181 () Bool)

(assert (=> b!1929326 (= e!1233181 (and (inv!29019 (left!17447 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))))) tp!550748 (inv!29019 (right!17777 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))))) tp!550749))))

(declare-fun b!1929328 () Bool)

(declare-fun e!1233182 () Bool)

(declare-fun tp!550747 () Bool)

(assert (=> b!1929328 (= e!1233182 tp!550747)))

(declare-fun b!1929327 () Bool)

(assert (=> b!1929327 (= e!1233181 (and (inv!29025 (xs!10216 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))))) e!1233182))))

(assert (=> b!1926861 (= tp!550457 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354)))) e!1233181))))

(assert (= (and b!1926861 ((_ is Node!7322) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))))) b!1929326))

(assert (= b!1929327 b!1929328))

(assert (= (and b!1926861 ((_ is Leaf!10752) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (value!123710 separatorToken!354))))) b!1929327))

(declare-fun m!2366853 () Bool)

(assert (=> b!1929326 m!2366853))

(declare-fun m!2366855 () Bool)

(assert (=> b!1929326 m!2366855))

(declare-fun m!2366857 () Bool)

(assert (=> b!1929327 m!2366857))

(assert (=> b!1926861 m!2363095))

(declare-fun b!1929331 () Bool)

(declare-fun b_free!55253 () Bool)

(declare-fun b_next!55957 () Bool)

(assert (=> b!1929331 (= b_free!55253 (not b_next!55957))))

(declare-fun t!179904 () Bool)

(declare-fun tb!118269 () Bool)

(assert (=> (and b!1929331 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179904) tb!118269))

(declare-fun result!142864 () Bool)

(assert (= result!142864 result!142566))

(assert (=> d!587264 t!179904))

(declare-fun t!179906 () Bool)

(declare-fun tb!118271 () Bool)

(assert (=> (and b!1929331 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179906) tb!118271))

(declare-fun result!142866 () Bool)

(assert (= result!142866 result!142574))

(assert (=> d!587236 t!179906))

(assert (=> d!587236 t!179904))

(declare-fun tb!118273 () Bool)

(declare-fun t!179908 () Bool)

(assert (=> (and b!1929331 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179908) tb!118273))

(declare-fun result!142868 () Bool)

(assert (= result!142868 result!142778))

(assert (=> d!587954 t!179908))

(declare-fun t!179910 () Bool)

(declare-fun tb!118275 () Bool)

(assert (=> (and b!1929331 (= (toValue!5567 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179910) tb!118275))

(declare-fun result!142870 () Bool)

(assert (= result!142870 result!142758))

(assert (=> d!587878 t!179910))

(declare-fun b_and!151443 () Bool)

(declare-fun tp!550751 () Bool)

(assert (=> b!1929331 (= tp!550751 (and (=> t!179904 result!142864) (=> t!179906 result!142866) (=> t!179910 result!142870) (=> t!179908 result!142868) b_and!151443))))

(declare-fun b_free!55255 () Bool)

(declare-fun b_next!55959 () Bool)

(assert (=> b!1929331 (= b_free!55255 (not b_next!55959))))

(declare-fun t!179912 () Bool)

(declare-fun tb!118277 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179912) tb!118277))

(declare-fun result!142872 () Bool)

(assert (= result!142872 result!142688))

(assert (=> d!587664 t!179912))

(declare-fun tb!118279 () Bool)

(declare-fun t!179914 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))) t!179914) tb!118279))

(declare-fun result!142874 () Bool)

(assert (= result!142874 result!142788))

(assert (=> d!588164 t!179914))

(declare-fun tb!118281 () Bool)

(declare-fun t!179916 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179916) tb!118281))

(declare-fun result!142876 () Bool)

(assert (= result!142876 result!142580))

(assert (=> d!587254 t!179916))

(declare-fun tb!118283 () Bool)

(declare-fun t!179918 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) t!179918) tb!118283))

(declare-fun result!142878 () Bool)

(assert (= result!142878 result!142768))

(assert (=> d!587896 t!179918))

(declare-fun tb!118285 () Bool)

(declare-fun t!179920 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354)))) t!179920) tb!118285))

(declare-fun result!142880 () Bool)

(assert (= result!142880 result!142524))

(assert (=> b!1926855 t!179920))

(declare-fun tb!118287 () Bool)

(declare-fun t!179922 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179922) tb!118287))

(declare-fun result!142882 () Bool)

(assert (= result!142882 result!142586))

(assert (=> d!587264 t!179922))

(declare-fun t!179924 () Bool)

(declare-fun tb!118289 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179924) tb!118289))

(declare-fun result!142884 () Bool)

(assert (= result!142884 result!142708))

(assert (=> d!587696 t!179924))

(declare-fun tb!118291 () Bool)

(declare-fun t!179926 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))) t!179926) tb!118291))

(declare-fun result!142886 () Bool)

(assert (= result!142886 result!142698))

(assert (=> d!587682 t!179926))

(declare-fun t!179928 () Bool)

(declare-fun tb!118293 () Bool)

(assert (=> (and b!1929331 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0))))) t!179928) tb!118293))

(declare-fun result!142888 () Bool)

(assert (= result!142888 result!142718))

(assert (=> d!587714 t!179928))

(assert (=> b!1928867 t!179918))

(assert (=> d!587260 t!179920))

(assert (=> b!1927581 t!179916))

(declare-fun b_and!151445 () Bool)

(declare-fun tp!550753 () Bool)

(assert (=> b!1929331 (= tp!550753 (and (=> t!179912 result!142872) (=> t!179924 result!142884) (=> t!179922 result!142882) (=> t!179928 result!142888) (=> t!179920 result!142880) (=> t!179914 result!142874) (=> t!179926 result!142886) (=> t!179918 result!142878) (=> t!179916 result!142876) b_and!151445))))

(declare-fun e!1233183 () Bool)

(assert (=> b!1929331 (= e!1233183 (and tp!550751 tp!550753))))

(declare-fun tp!550750 () Bool)

(declare-fun b!1929330 () Bool)

(declare-fun e!1233185 () Bool)

(assert (=> b!1929330 (= e!1233185 (and tp!550750 (inv!29012 (tag!4380 (h!27337 (t!179567 (t!179567 rules!3198))))) (inv!29015 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) e!1233183))))

(declare-fun b!1929329 () Bool)

(declare-fun e!1233186 () Bool)

(declare-fun tp!550752 () Bool)

(assert (=> b!1929329 (= e!1233186 (and e!1233185 tp!550752))))

(assert (=> b!1927626 (= tp!550531 e!1233186)))

(assert (= b!1929330 b!1929331))

(assert (= b!1929329 b!1929330))

(assert (= (and b!1927626 ((_ is Cons!21936) (t!179567 (t!179567 rules!3198)))) b!1929329))

(declare-fun m!2366859 () Bool)

(assert (=> b!1929330 m!2366859))

(declare-fun m!2366861 () Bool)

(assert (=> b!1929330 m!2366861))

(declare-fun b!1929332 () Bool)

(declare-fun e!1233187 () Bool)

(assert (=> b!1929332 (= e!1233187 tp_is_empty!9137)))

(assert (=> b!1927640 (= tp!550544 e!1233187)))

(declare-fun b!1929333 () Bool)

(declare-fun tp!550755 () Bool)

(declare-fun tp!550757 () Bool)

(assert (=> b!1929333 (= e!1233187 (and tp!550755 tp!550757))))

(declare-fun b!1929334 () Bool)

(declare-fun tp!550754 () Bool)

(assert (=> b!1929334 (= e!1233187 tp!550754)))

(declare-fun b!1929335 () Bool)

(declare-fun tp!550756 () Bool)

(declare-fun tp!550758 () Bool)

(assert (=> b!1929335 (= e!1233187 (and tp!550756 tp!550758))))

(assert (= (and b!1927640 ((_ is ElementMatch!5359) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929332))

(assert (= (and b!1927640 ((_ is Concat!9430) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929333))

(assert (= (and b!1927640 ((_ is Star!5359) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929334))

(assert (= (and b!1927640 ((_ is Union!5359) (regOne!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929335))

(declare-fun b!1929336 () Bool)

(declare-fun e!1233188 () Bool)

(assert (=> b!1929336 (= e!1233188 tp_is_empty!9137)))

(assert (=> b!1927640 (= tp!550546 e!1233188)))

(declare-fun b!1929337 () Bool)

(declare-fun tp!550760 () Bool)

(declare-fun tp!550762 () Bool)

(assert (=> b!1929337 (= e!1233188 (and tp!550760 tp!550762))))

(declare-fun b!1929338 () Bool)

(declare-fun tp!550759 () Bool)

(assert (=> b!1929338 (= e!1233188 tp!550759)))

(declare-fun b!1929339 () Bool)

(declare-fun tp!550761 () Bool)

(declare-fun tp!550763 () Bool)

(assert (=> b!1929339 (= e!1233188 (and tp!550761 tp!550763))))

(assert (= (and b!1927640 ((_ is ElementMatch!5359) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929336))

(assert (= (and b!1927640 ((_ is Concat!9430) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929337))

(assert (= (and b!1927640 ((_ is Star!5359) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929338))

(assert (= (and b!1927640 ((_ is Union!5359) (regTwo!11230 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929339))

(declare-fun b!1929340 () Bool)

(declare-fun e!1233189 () Bool)

(assert (=> b!1929340 (= e!1233189 tp_is_empty!9137)))

(assert (=> b!1927664 (= tp!550566 e!1233189)))

(declare-fun b!1929341 () Bool)

(declare-fun tp!550765 () Bool)

(declare-fun tp!550767 () Bool)

(assert (=> b!1929341 (= e!1233189 (and tp!550765 tp!550767))))

(declare-fun b!1929342 () Bool)

(declare-fun tp!550764 () Bool)

(assert (=> b!1929342 (= e!1233189 tp!550764)))

(declare-fun b!1929343 () Bool)

(declare-fun tp!550766 () Bool)

(declare-fun tp!550768 () Bool)

(assert (=> b!1929343 (= e!1233189 (and tp!550766 tp!550768))))

(assert (= (and b!1927664 ((_ is ElementMatch!5359) (reg!5688 (regex!3934 (h!27337 rules!3198))))) b!1929340))

(assert (= (and b!1927664 ((_ is Concat!9430) (reg!5688 (regex!3934 (h!27337 rules!3198))))) b!1929341))

(assert (= (and b!1927664 ((_ is Star!5359) (reg!5688 (regex!3934 (h!27337 rules!3198))))) b!1929342))

(assert (= (and b!1927664 ((_ is Union!5359) (reg!5688 (regex!3934 (h!27337 rules!3198))))) b!1929343))

(declare-fun b!1929344 () Bool)

(declare-fun e!1233190 () Bool)

(assert (=> b!1929344 (= e!1233190 tp_is_empty!9137)))

(assert (=> b!1927627 (= tp!550529 e!1233190)))

(declare-fun b!1929345 () Bool)

(declare-fun tp!550770 () Bool)

(declare-fun tp!550772 () Bool)

(assert (=> b!1929345 (= e!1233190 (and tp!550770 tp!550772))))

(declare-fun b!1929346 () Bool)

(declare-fun tp!550769 () Bool)

(assert (=> b!1929346 (= e!1233190 tp!550769)))

(declare-fun b!1929347 () Bool)

(declare-fun tp!550771 () Bool)

(declare-fun tp!550773 () Bool)

(assert (=> b!1929347 (= e!1233190 (and tp!550771 tp!550773))))

(assert (= (and b!1927627 ((_ is ElementMatch!5359) (regex!3934 (h!27337 (t!179567 rules!3198))))) b!1929344))

(assert (= (and b!1927627 ((_ is Concat!9430) (regex!3934 (h!27337 (t!179567 rules!3198))))) b!1929345))

(assert (= (and b!1927627 ((_ is Star!5359) (regex!3934 (h!27337 (t!179567 rules!3198))))) b!1929346))

(assert (= (and b!1927627 ((_ is Union!5359) (regex!3934 (h!27337 (t!179567 rules!3198))))) b!1929347))

(declare-fun b!1929348 () Bool)

(declare-fun e!1233191 () Bool)

(assert (=> b!1929348 (= e!1233191 tp_is_empty!9137)))

(assert (=> b!1927641 (= tp!550543 e!1233191)))

(declare-fun b!1929349 () Bool)

(declare-fun tp!550775 () Bool)

(declare-fun tp!550777 () Bool)

(assert (=> b!1929349 (= e!1233191 (and tp!550775 tp!550777))))

(declare-fun b!1929350 () Bool)

(declare-fun tp!550774 () Bool)

(assert (=> b!1929350 (= e!1233191 tp!550774)))

(declare-fun b!1929351 () Bool)

(declare-fun tp!550776 () Bool)

(declare-fun tp!550778 () Bool)

(assert (=> b!1929351 (= e!1233191 (and tp!550776 tp!550778))))

(assert (= (and b!1927641 ((_ is ElementMatch!5359) (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929348))

(assert (= (and b!1927641 ((_ is Concat!9430) (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929349))

(assert (= (and b!1927641 ((_ is Star!5359) (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929350))

(assert (= (and b!1927641 ((_ is Union!5359) (reg!5688 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929351))

(declare-fun b!1929352 () Bool)

(declare-fun e!1233192 () Bool)

(assert (=> b!1929352 (= e!1233192 tp_is_empty!9137)))

(assert (=> b!1927665 (= tp!550568 e!1233192)))

(declare-fun b!1929353 () Bool)

(declare-fun tp!550780 () Bool)

(declare-fun tp!550782 () Bool)

(assert (=> b!1929353 (= e!1233192 (and tp!550780 tp!550782))))

(declare-fun b!1929354 () Bool)

(declare-fun tp!550779 () Bool)

(assert (=> b!1929354 (= e!1233192 tp!550779)))

(declare-fun b!1929355 () Bool)

(declare-fun tp!550781 () Bool)

(declare-fun tp!550783 () Bool)

(assert (=> b!1929355 (= e!1233192 (and tp!550781 tp!550783))))

(assert (= (and b!1927665 ((_ is ElementMatch!5359) (regOne!11231 (regex!3934 (h!27337 rules!3198))))) b!1929352))

(assert (= (and b!1927665 ((_ is Concat!9430) (regOne!11231 (regex!3934 (h!27337 rules!3198))))) b!1929353))

(assert (= (and b!1927665 ((_ is Star!5359) (regOne!11231 (regex!3934 (h!27337 rules!3198))))) b!1929354))

(assert (= (and b!1927665 ((_ is Union!5359) (regOne!11231 (regex!3934 (h!27337 rules!3198))))) b!1929355))

(declare-fun b!1929356 () Bool)

(declare-fun e!1233193 () Bool)

(assert (=> b!1929356 (= e!1233193 tp_is_empty!9137)))

(assert (=> b!1927665 (= tp!550570 e!1233193)))

(declare-fun b!1929357 () Bool)

(declare-fun tp!550785 () Bool)

(declare-fun tp!550787 () Bool)

(assert (=> b!1929357 (= e!1233193 (and tp!550785 tp!550787))))

(declare-fun b!1929358 () Bool)

(declare-fun tp!550784 () Bool)

(assert (=> b!1929358 (= e!1233193 tp!550784)))

(declare-fun b!1929359 () Bool)

(declare-fun tp!550786 () Bool)

(declare-fun tp!550788 () Bool)

(assert (=> b!1929359 (= e!1233193 (and tp!550786 tp!550788))))

(assert (= (and b!1927665 ((_ is ElementMatch!5359) (regTwo!11231 (regex!3934 (h!27337 rules!3198))))) b!1929356))

(assert (= (and b!1927665 ((_ is Concat!9430) (regTwo!11231 (regex!3934 (h!27337 rules!3198))))) b!1929357))

(assert (= (and b!1927665 ((_ is Star!5359) (regTwo!11231 (regex!3934 (h!27337 rules!3198))))) b!1929358))

(assert (= (and b!1927665 ((_ is Union!5359) (regTwo!11231 (regex!3934 (h!27337 rules!3198))))) b!1929359))

(declare-fun b!1929363 () Bool)

(declare-fun b_free!55257 () Bool)

(declare-fun b_next!55961 () Bool)

(assert (=> b!1929363 (= b_free!55257 (not b_next!55961))))

(declare-fun t!179930 () Bool)

(declare-fun tb!118295 () Bool)

(assert (=> (and b!1929363 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179930) tb!118295))

(declare-fun result!142890 () Bool)

(assert (= result!142890 result!142566))

(assert (=> d!587264 t!179930))

(declare-fun t!179932 () Bool)

(declare-fun tb!118297 () Bool)

(assert (=> (and b!1929363 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179932) tb!118297))

(declare-fun result!142892 () Bool)

(assert (= result!142892 result!142574))

(assert (=> d!587236 t!179932))

(assert (=> d!587236 t!179930))

(declare-fun t!179934 () Bool)

(declare-fun tb!118299 () Bool)

(assert (=> (and b!1929363 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179934) tb!118299))

(declare-fun result!142894 () Bool)

(assert (= result!142894 result!142778))

(assert (=> d!587954 t!179934))

(declare-fun t!179936 () Bool)

(declare-fun tb!118301 () Bool)

(assert (=> (and b!1929363 (= (toValue!5567 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toValue!5567 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179936) tb!118301))

(declare-fun result!142896 () Bool)

(assert (= result!142896 result!142758))

(assert (=> d!587878 t!179936))

(declare-fun tp!550793 () Bool)

(declare-fun b_and!151447 () Bool)

(assert (=> b!1929363 (= tp!550793 (and (=> t!179932 result!142892) (=> t!179930 result!142890) (=> t!179936 result!142896) (=> t!179934 result!142894) b_and!151447))))

(declare-fun b_free!55259 () Bool)

(declare-fun b_next!55963 () Bool)

(assert (=> b!1929363 (= b_free!55259 (not b_next!55963))))

(declare-fun t!179938 () Bool)

(declare-fun tb!118303 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738640)))))) t!179938) tb!118303))

(declare-fun result!142898 () Bool)

(assert (= result!142898 result!142688))

(assert (=> d!587664 t!179938))

(declare-fun t!179940 () Bool)

(declare-fun tb!118305 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (Cons!21937 (h!27338 tokens!598) Nil!21937)))))) t!179940) tb!118305))

(declare-fun result!142900 () Bool)

(assert (= result!142900 result!142788))

(assert (=> d!588164 t!179940))

(declare-fun t!179942 () Bool)

(declare-fun tb!118307 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179942) tb!118307))

(declare-fun result!142902 () Bool)

(assert (= result!142902 result!142580))

(assert (=> d!587254 t!179942))

(declare-fun t!179944 () Bool)

(declare-fun tb!118309 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) t!179944) tb!118309))

(declare-fun result!142904 () Bool)

(assert (= result!142904 result!142768))

(assert (=> d!587896 t!179944))

(declare-fun t!179946 () Bool)

(declare-fun tb!118311 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354)))) t!179946) tb!118311))

(declare-fun result!142906 () Bool)

(assert (= result!142906 result!142524))

(assert (=> b!1926855 t!179946))

(declare-fun t!179948 () Bool)

(declare-fun tb!118313 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598))))) t!179948) tb!118313))

(declare-fun result!142908 () Bool)

(assert (= result!142908 result!142586))

(assert (=> d!587264 t!179948))

(declare-fun t!179950 () Bool)

(declare-fun tb!118315 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (_1!11743 (get!6908 lt!738610)))))) t!179950) tb!118315))

(declare-fun result!142910 () Bool)

(assert (= result!142910 result!142708))

(assert (=> d!587696 t!179950))

(declare-fun tb!118317 () Bool)

(declare-fun t!179952 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (ite c!313315 (h!27338 (t!179568 tokens!598)) (ite c!313313 separatorToken!354 (h!27338 (t!179568 tokens!598)))))))) t!179952) tb!118317))

(declare-fun result!142912 () Bool)

(assert (= result!142912 result!142698))

(assert (=> d!587682 t!179952))

(declare-fun t!179954 () Bool)

(declare-fun tb!118319 () Bool)

(assert (=> (and b!1929363 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (apply!5694 lt!738485 0))))) t!179954) tb!118319))

(declare-fun result!142914 () Bool)

(assert (= result!142914 result!142718))

(assert (=> d!587714 t!179954))

(assert (=> b!1928867 t!179944))

(assert (=> d!587260 t!179946))

(assert (=> b!1927581 t!179942))

(declare-fun tp!550790 () Bool)

(declare-fun b_and!151449 () Bool)

(assert (=> b!1929363 (= tp!550790 (and (=> t!179940 result!142900) (=> t!179950 result!142910) (=> t!179946 result!142906) (=> t!179942 result!142902) (=> t!179954 result!142914) (=> t!179952 result!142912) (=> t!179944 result!142904) (=> t!179938 result!142898) (=> t!179948 result!142908) b_and!151449))))

(declare-fun b!1929361 () Bool)

(declare-fun e!1233199 () Bool)

(declare-fun e!1233195 () Bool)

(declare-fun tp!550792 () Bool)

(assert (=> b!1929361 (= e!1233199 (and (inv!21 (value!123710 (h!27338 (t!179568 (t!179568 tokens!598))))) e!1233195 tp!550792))))

(declare-fun e!1233198 () Bool)

(assert (=> b!1929363 (= e!1233198 (and tp!550793 tp!550790))))

(declare-fun e!1233194 () Bool)

(assert (=> b!1927658 (= tp!550563 e!1233194)))

(declare-fun tp!550789 () Bool)

(declare-fun b!1929362 () Bool)

(assert (=> b!1929362 (= e!1233195 (and tp!550789 (inv!29012 (tag!4380 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (inv!29015 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) e!1233198))))

(declare-fun b!1929360 () Bool)

(declare-fun tp!550791 () Bool)

(assert (=> b!1929360 (= e!1233194 (and (inv!29016 (h!27338 (t!179568 (t!179568 tokens!598)))) e!1233199 tp!550791))))

(assert (= b!1929362 b!1929363))

(assert (= b!1929361 b!1929362))

(assert (= b!1929360 b!1929361))

(assert (= (and b!1927658 ((_ is Cons!21937) (t!179568 (t!179568 tokens!598)))) b!1929360))

(declare-fun m!2366863 () Bool)

(assert (=> b!1929361 m!2366863))

(declare-fun m!2366865 () Bool)

(assert (=> b!1929362 m!2366865))

(declare-fun m!2366867 () Bool)

(assert (=> b!1929362 m!2366867))

(declare-fun m!2366869 () Bool)

(assert (=> b!1929360 m!2366869))

(declare-fun b!1929364 () Bool)

(declare-fun e!1233200 () Bool)

(assert (=> b!1929364 (= e!1233200 tp_is_empty!9137)))

(assert (=> b!1927642 (= tp!550545 e!1233200)))

(declare-fun b!1929365 () Bool)

(declare-fun tp!550795 () Bool)

(declare-fun tp!550797 () Bool)

(assert (=> b!1929365 (= e!1233200 (and tp!550795 tp!550797))))

(declare-fun b!1929366 () Bool)

(declare-fun tp!550794 () Bool)

(assert (=> b!1929366 (= e!1233200 tp!550794)))

(declare-fun b!1929367 () Bool)

(declare-fun tp!550796 () Bool)

(declare-fun tp!550798 () Bool)

(assert (=> b!1929367 (= e!1233200 (and tp!550796 tp!550798))))

(assert (= (and b!1927642 ((_ is ElementMatch!5359) (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929364))

(assert (= (and b!1927642 ((_ is Concat!9430) (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929365))

(assert (= (and b!1927642 ((_ is Star!5359) (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929366))

(assert (= (and b!1927642 ((_ is Union!5359) (regOne!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929367))

(declare-fun b!1929368 () Bool)

(declare-fun e!1233201 () Bool)

(assert (=> b!1929368 (= e!1233201 tp_is_empty!9137)))

(assert (=> b!1927642 (= tp!550547 e!1233201)))

(declare-fun b!1929369 () Bool)

(declare-fun tp!550800 () Bool)

(declare-fun tp!550802 () Bool)

(assert (=> b!1929369 (= e!1233201 (and tp!550800 tp!550802))))

(declare-fun b!1929370 () Bool)

(declare-fun tp!550799 () Bool)

(assert (=> b!1929370 (= e!1233201 tp!550799)))

(declare-fun b!1929371 () Bool)

(declare-fun tp!550801 () Bool)

(declare-fun tp!550803 () Bool)

(assert (=> b!1929371 (= e!1233201 (and tp!550801 tp!550803))))

(assert (= (and b!1927642 ((_ is ElementMatch!5359) (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929368))

(assert (= (and b!1927642 ((_ is Concat!9430) (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929369))

(assert (= (and b!1927642 ((_ is Star!5359) (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929370))

(assert (= (and b!1927642 ((_ is Union!5359) (regTwo!11231 (regex!3934 (rule!6139 (h!27338 tokens!598)))))) b!1929371))

(declare-fun b!1929372 () Bool)

(declare-fun e!1233202 () Bool)

(declare-fun tp!550804 () Bool)

(assert (=> b!1929372 (= e!1233202 (and tp_is_empty!9137 tp!550804))))

(assert (=> b!1927659 (= tp!550564 e!1233202)))

(assert (= (and b!1927659 ((_ is Cons!21935) (originalCharacters!4741 (h!27338 (t!179568 tokens!598))))) b!1929372))

(declare-fun b!1929373 () Bool)

(declare-fun e!1233203 () Bool)

(assert (=> b!1929373 (= e!1233203 tp_is_empty!9137)))

(assert (=> b!1927660 (= tp!550561 e!1233203)))

(declare-fun b!1929374 () Bool)

(declare-fun tp!550806 () Bool)

(declare-fun tp!550808 () Bool)

(assert (=> b!1929374 (= e!1233203 (and tp!550806 tp!550808))))

(declare-fun b!1929375 () Bool)

(declare-fun tp!550805 () Bool)

(assert (=> b!1929375 (= e!1233203 tp!550805)))

(declare-fun b!1929376 () Bool)

(declare-fun tp!550807 () Bool)

(declare-fun tp!550809 () Bool)

(assert (=> b!1929376 (= e!1233203 (and tp!550807 tp!550809))))

(assert (= (and b!1927660 ((_ is ElementMatch!5359) (regex!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) b!1929373))

(assert (= (and b!1927660 ((_ is Concat!9430) (regex!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) b!1929374))

(assert (= (and b!1927660 ((_ is Star!5359) (regex!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) b!1929375))

(assert (= (and b!1927660 ((_ is Union!5359) (regex!3934 (rule!6139 (h!27338 (t!179568 tokens!598)))))) b!1929376))

(declare-fun tp!550811 () Bool)

(declare-fun e!1233204 () Bool)

(declare-fun tp!550812 () Bool)

(declare-fun b!1929377 () Bool)

(assert (=> b!1929377 (= e!1233204 (and (inv!29019 (left!17447 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))))) tp!550811 (inv!29019 (right!17777 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))))) tp!550812))))

(declare-fun b!1929379 () Bool)

(declare-fun e!1233205 () Bool)

(declare-fun tp!550810 () Bool)

(assert (=> b!1929379 (= e!1233205 tp!550810)))

(declare-fun b!1929378 () Bool)

(assert (=> b!1929378 (= e!1233204 (and (inv!29025 (xs!10216 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))))) e!1233205))))

(assert (=> b!1927162 (= tp!550463 (and (inv!29019 (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598))))) e!1233204))))

(assert (= (and b!1927162 ((_ is Node!7322) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))))) b!1929377))

(assert (= b!1929378 b!1929379))

(assert (= (and b!1927162 ((_ is Leaf!10752) (c!313264 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (value!123710 (h!27338 tokens!598)))))) b!1929378))

(declare-fun m!2366871 () Bool)

(assert (=> b!1929377 m!2366871))

(declare-fun m!2366873 () Bool)

(assert (=> b!1929377 m!2366873))

(declare-fun m!2366875 () Bool)

(assert (=> b!1929378 m!2366875))

(assert (=> b!1927162 m!2363441))

(declare-fun b_lambda!63963 () Bool)

(assert (= b_lambda!63905 (or b!1926813 b_lambda!63963)))

(declare-fun bs!414888 () Bool)

(declare-fun d!588356 () Bool)

(assert (= bs!414888 (and d!588356 b!1926813)))

(assert (=> bs!414888 (= (dynLambda!10631 lambda!75173 (h!27338 (t!179568 tokens!598))) (not (isSeparator!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))))

(assert (=> b!1928126 d!588356))

(declare-fun b_lambda!63965 () Bool)

(assert (= b_lambda!63961 (or d!587236 b_lambda!63965)))

(declare-fun bs!414889 () Bool)

(declare-fun d!588358 () Bool)

(assert (= bs!414889 (and d!588358 d!587236)))

(declare-fun res!862620 () Bool)

(declare-fun e!1233206 () Bool)

(assert (=> bs!414889 (=> res!862620 e!1233206)))

(assert (=> bs!414889 (= res!862620 (not (= (list!8871 lt!738497) (list!8871 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))))))))

(assert (=> bs!414889 (= (dynLambda!10636 lambda!75191 lt!738497 (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598)))) e!1233206)))

(declare-fun b!1929380 () Bool)

(assert (=> b!1929380 (= e!1233206 (= (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (seqFromList!2788 (originalCharacters!4741 (h!27338 tokens!598))))))))

(assert (= (and bs!414889 (not res!862620)) b!1929380))

(declare-fun b_lambda!63977 () Bool)

(assert (=> (not b_lambda!63977) (not b!1929380)))

(assert (=> b!1929380 t!179672))

(declare-fun b_and!151451 () Bool)

(assert (= b_and!151345 (and (=> t!179672 result!142638) b_and!151451)))

(assert (=> b!1929380 t!179662))

(declare-fun b_and!151453 () Bool)

(assert (= b_and!151347 (and (=> t!179662 result!142622) b_and!151453)))

(assert (=> b!1929380 t!179614))

(declare-fun b_and!151455 () Bool)

(assert (= b_and!151343 (and (=> t!179614 result!142570) b_and!151455)))

(assert (=> b!1929380 t!179612))

(declare-fun b_and!151457 () Bool)

(assert (= b_and!151339 (and (=> t!179612 result!142566) b_and!151457)))

(assert (=> b!1929380 t!179904))

(declare-fun b_and!151459 () Bool)

(assert (= b_and!151443 (and (=> t!179904 result!142864) b_and!151459)))

(assert (=> b!1929380 t!179616))

(declare-fun b_and!151461 () Bool)

(assert (= b_and!151341 (and (=> t!179616 result!142572) b_and!151461)))

(assert (=> b!1929380 t!179930))

(declare-fun b_and!151463 () Bool)

(assert (= b_and!151447 (and (=> t!179930 result!142890) b_and!151463)))

(declare-fun b_lambda!63979 () Bool)

(assert (=> (not b_lambda!63979) (not b!1929380)))

(assert (=> b!1929380 t!179906))

(declare-fun b_and!151465 () Bool)

(assert (= b_and!151459 (and (=> t!179906 result!142866) b_and!151465)))

(assert (=> b!1929380 t!179674))

(declare-fun b_and!151467 () Bool)

(assert (= b_and!151451 (and (=> t!179674 result!142640) b_and!151467)))

(assert (=> b!1929380 t!179664))

(declare-fun b_and!151469 () Bool)

(assert (= b_and!151453 (and (=> t!179664 result!142624) b_and!151469)))

(assert (=> b!1929380 t!179932))

(declare-fun b_and!151471 () Bool)

(assert (= b_and!151463 (and (=> t!179932 result!142892) b_and!151471)))

(assert (=> b!1929380 t!179620))

(declare-fun b_and!151473 () Bool)

(assert (= b_and!151455 (and (=> t!179620 result!142576) b_and!151473)))

(assert (=> b!1929380 t!179618))

(declare-fun b_and!151475 () Bool)

(assert (= b_and!151457 (and (=> t!179618 result!142574) b_and!151475)))

(assert (=> b!1929380 t!179622))

(declare-fun b_and!151477 () Bool)

(assert (= b_and!151461 (and (=> t!179622 result!142578) b_and!151477)))

(assert (=> bs!414889 m!2362981))

(assert (=> bs!414889 m!2362965))

(assert (=> bs!414889 m!2363419))

(assert (=> b!1929380 m!2363421))

(assert (=> b!1929380 m!2362965))

(assert (=> b!1929380 m!2363417))

(assert (=> d!588322 d!588358))

(declare-fun b_lambda!63967 () Bool)

(assert (= b_lambda!63931 (or (and b!1927661 b_free!55243) (and b!1929363 b_free!55259 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1926809 b_free!55219 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1926830 b_free!55223 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1926820 b_free!55227 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1929331 b_free!55255 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1927628 b_free!55239 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) b_lambda!63967)))

(declare-fun b_lambda!63969 () Bool)

(assert (= b_lambda!63923 (or b!1927047 b_lambda!63969)))

(declare-fun bs!414890 () Bool)

(declare-fun d!588360 () Bool)

(assert (= bs!414890 (and d!588360 b!1927047)))

(assert (=> bs!414890 (= (dynLambda!10631 lambda!75185 (h!27338 (t!179568 tokens!598))) (rulesProduceIndividualToken!1719 thiss!23328 rules!3198 (h!27338 (t!179568 tokens!598))))))

(assert (=> bs!414890 m!2364705))

(assert (=> d!587886 d!588360))

(declare-fun b_lambda!63971 () Bool)

(assert (= b_lambda!63899 (or d!587362 b_lambda!63971)))

(declare-fun bs!414891 () Bool)

(declare-fun d!588362 () Bool)

(assert (= bs!414891 (and d!588362 d!587362)))

(assert (=> bs!414891 (= (dynLambda!10631 lambda!75197 (h!27338 tokens!598)) (rulesProduceIndividualToken!1719 thiss!23328 rules!3198 (h!27338 tokens!598)))))

(assert (=> bs!414891 m!2363051))

(assert (=> b!1927988 d!588362))

(declare-fun b_lambda!63973 () Bool)

(assert (= b_lambda!63889 (or d!587264 b_lambda!63973)))

(declare-fun bs!414892 () Bool)

(declare-fun d!588364 () Bool)

(assert (= bs!414892 (and d!588364 d!587264)))

(assert (=> bs!414892 (= (dynLambda!10633 lambda!75194 lt!738497) (= (list!8871 (dynLambda!10623 (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (dynLambda!10629 (toValue!5567 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) lt!738497))) (list!8871 lt!738497)))))

(declare-fun b_lambda!63981 () Bool)

(assert (=> (not b_lambda!63981) (not bs!414892)))

(assert (=> bs!414892 t!179630))

(declare-fun b_and!151479 () Bool)

(assert (= b_and!151365 (and (=> t!179630 result!142586) b_and!151479)))

(assert (=> bs!414892 t!179634))

(declare-fun b_and!151481 () Bool)

(assert (= b_and!151359 (and (=> t!179634 result!142590) b_and!151481)))

(assert (=> bs!414892 t!179680))

(declare-fun b_and!151483 () Bool)

(assert (= b_and!151363 (and (=> t!179680 result!142646) b_and!151483)))

(assert (=> bs!414892 t!179670))

(declare-fun b_and!151485 () Bool)

(assert (= b_and!151367 (and (=> t!179670 result!142630) b_and!151485)))

(assert (=> bs!414892 t!179632))

(declare-fun b_and!151487 () Bool)

(assert (= b_and!151361 (and (=> t!179632 result!142588) b_and!151487)))

(assert (=> bs!414892 t!179922))

(declare-fun b_and!151489 () Bool)

(assert (= b_and!151445 (and (=> t!179922 result!142882) b_and!151489)))

(assert (=> bs!414892 t!179948))

(declare-fun b_and!151491 () Bool)

(assert (= b_and!151449 (and (=> t!179948 result!142908) b_and!151491)))

(declare-fun b_lambda!63983 () Bool)

(assert (=> (not b_lambda!63983) (not bs!414892)))

(assert (=> bs!414892 t!179672))

(declare-fun b_and!151493 () Bool)

(assert (= b_and!151467 (and (=> t!179672 result!142638) b_and!151493)))

(assert (=> bs!414892 t!179904))

(declare-fun b_and!151495 () Bool)

(assert (= b_and!151465 (and (=> t!179904 result!142864) b_and!151495)))

(assert (=> bs!414892 t!179614))

(declare-fun b_and!151497 () Bool)

(assert (= b_and!151473 (and (=> t!179614 result!142570) b_and!151497)))

(assert (=> bs!414892 t!179612))

(declare-fun b_and!151499 () Bool)

(assert (= b_and!151475 (and (=> t!179612 result!142566) b_and!151499)))

(assert (=> bs!414892 t!179662))

(declare-fun b_and!151501 () Bool)

(assert (= b_and!151469 (and (=> t!179662 result!142622) b_and!151501)))

(assert (=> bs!414892 t!179930))

(declare-fun b_and!151503 () Bool)

(assert (= b_and!151471 (and (=> t!179930 result!142890) b_and!151503)))

(assert (=> bs!414892 t!179616))

(declare-fun b_and!151505 () Bool)

(assert (= b_and!151477 (and (=> t!179616 result!142572) b_and!151505)))

(assert (=> bs!414892 m!2363421))

(assert (=> bs!414892 m!2363421))

(assert (=> bs!414892 m!2363495))

(assert (=> bs!414892 m!2362981))

(assert (=> bs!414892 m!2363495))

(assert (=> bs!414892 m!2363497))

(assert (=> d!587496 d!588364))

(declare-fun b_lambda!63975 () Bool)

(assert (= b_lambda!63925 (or (and b!1927661 b_free!55243) (and b!1929363 b_free!55259 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 (t!179568 tokens!598)))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1926809 b_free!55219 (= (toChars!5426 (transformation!3934 (h!27337 rules!3198))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1926830 b_free!55223 (= (toChars!5426 (transformation!3934 (rule!6139 (h!27338 tokens!598)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1926820 b_free!55227 (= (toChars!5426 (transformation!3934 (rule!6139 separatorToken!354))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1929331 b_free!55255 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 (t!179567 rules!3198))))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) (and b!1927628 b_free!55239 (= (toChars!5426 (transformation!3934 (h!27337 (t!179567 rules!3198)))) (toChars!5426 (transformation!3934 (rule!6139 (h!27338 (t!179568 tokens!598))))))) b_lambda!63975)))

(check-sat (not b!1928866) (not b!1928221) (not b!1928791) (not b!1928135) (not d!588340) (not bm!118676) (not b!1928584) (not d!587638) (not bm!118638) (not b!1929292) (not b!1928795) (not b!1928937) (not b!1929191) (not b!1927787) (not b!1928443) (not b!1929175) (not bm!118616) (not d!587748) (not b!1929272) (not b!1929206) (not b!1927770) (not b!1928077) (not b!1929036) (not b_next!55941) (not b!1928187) (not bm!118639) (not b!1929235) (not d!587896) (not d!587862) (not b!1929174) (not b!1927183) (not b!1928984) (not b!1929376) (not b!1927966) (not b!1928983) (not d!588248) (not b!1928909) (not b_next!55927) (not bm!118623) (not b!1927754) (not bm!118610) (not b!1929346) (not b!1928025) (not b!1928814) (not b!1928464) (not b!1928070) (not d!588080) (not b!1928569) (not b!1929377) (not b!1929017) (not b!1929218) (not bm!118671) (not b!1929190) (not d!588188) (not b_lambda!63927) (not b!1928587) (not b!1927786) (not b!1928128) (not b!1928825) (not d!588062) (not d!588140) (not bm!118571) (not bm!118640) (not b!1929005) (not b!1928565) (not bm!118608) (not bm!118663) (not d!588256) (not b!1928796) (not b!1928630) (not b!1929350) (not tb!118127) (not b!1929370) (not b!1928400) (not b!1928789) (not b!1928757) (not d!588282) (not bm!118625) (not b!1928495) (not d!587522) (not b_next!55931) (not b_lambda!63877) (not b!1928567) (not b!1929284) (not bm!118624) (not b!1929329) (not d!587724) (not d!587970) (not tb!118117) b_and!151481 (not d!587514) (not b!1929179) (not b!1928122) (not b!1929227) (not d!587952) (not b!1929295) (not b!1928951) (not d!587874) (not b!1928539) (not b!1928978) (not b!1928813) (not d!588126) (not tb!118187) (not d!588142) (not b!1928178) (not b!1928985) (not d!587944) (not b!1929349) (not b!1928461) (not d!588324) (not b!1928792) (not d!588000) (not bm!118680) (not b!1928411) (not b!1929241) (not b_lambda!63965) (not d!588250) (not b!1929328) (not b!1929221) (not d!587496) (not b!1928444) (not b!1928819) (not d!588104) (not d!588242) (not b!1928511) (not b!1928839) (not b!1928205) (not b!1928191) (not b!1928086) (not d!588164) (not d!587852) (not d!587508) (not b!1928862) (not d!587668) (not b!1926861) (not b!1928522) (not b!1929285) (not b!1929300) (not b_lambda!63901) b_and!151503 (not b!1929339) (not b!1929302) (not b!1929234) (not b!1929251) (not b!1928555) (not b!1929200) (not d!587494) (not b!1927782) (not b!1929317) (not d!588116) (not b!1928793) (not b!1928463) (not b_lambda!63907) (not b!1928137) (not b!1928908) (not b!1928199) (not b!1928745) (not tb!118107) (not b!1929257) b_and!151483 (not b!1928570) (not tb!118097) (not d!588006) (not d!588076) (not b!1929205) (not d!588290) (not b!1928892) (not bm!118605) (not b!1928177) (not b!1928442) (not d!588318) (not bm!118607) (not bm!118664) (not b!1929326) (not b!1928507) (not b!1929365) (not b!1928401) (not b!1928949) (not b!1928979) (not bm!118656) (not d!587718) (not d!588302) (not b!1928043) (not d!587696) (not b!1929299) (not b!1929229) (not d!587734) (not d!587946) (not tb!118197) (not b!1929297) (not b!1928517) (not b!1929360) (not d!588244) (not b!1928215) (not b!1928987) (not b!1929315) (not d!587926) (not d!587744) (not b!1929211) (not b!1928728) (not b!1928075) (not b_lambda!63903) (not b!1929341) (not d!587966) (not d!588168) (not b!1928533) (not d!588114) (not b!1929201) (not b!1929353) (not b!1928551) (not d!587876) (not b!1928123) (not d!587546) (not d!588220) (not d!587928) (not d!588094) (not d!587968) (not b!1928952) (not b!1927987) (not bs!414890) (not b!1929372) (not bm!118617) (not b!1928210) (not b!1928871) (not b!1929366) (not d!588158) (not b!1929236) (not b!1928953) (not b!1928190) (not b!1929337) (not b!1928494) (not bm!118620) (not d!588174) (not b!1929358) (not b!1928467) (not b!1928559) (not b!1929277) (not b!1928896) (not d!587536) (not b_lambda!63909) (not d!587972) (not b!1928170) (not b!1928794) (not b!1928540) (not b!1929324) (not b!1929320) (not b!1928557) (not b!1929283) (not b!1929351) (not b!1929288) (not b_lambda!63881) (not d!587498) (not b!1928440) (not b!1928915) (not bm!118681) (not b!1928146) (not b_lambda!63983) (not bm!118673) (not d!587660) (not b!1928399) (not b!1928864) (not bm!118606) (not b_lambda!63869) (not b!1929335) (not b!1928564) (not d!588162) (not b!1928130) (not b!1927756) (not d!588194) (not b!1928562) (not b!1929276) (not d!587738) (not bs!414889) (not d!587478) (not b!1928117) (not b!1929323) (not b!1929327) (not d!588082) (not bm!118619) (not b!1927771) (not d!587698) (not b!1928560) (not b_lambda!63883) (not b!1929189) (not d!587506) (not bs!414892) (not b!1929213) (not b_lambda!63975) (not d!587940) (not b!1929004) (not b!1929249) (not b!1928554) (not d!587664) (not b_lambda!63973) (not b_next!55945) (not b!1928189) (not b!1928193) (not b!1928788) (not b!1928623) (not bm!118586) (not d!587534) (not b!1928566) b_and!151505 (not b!1928445) (not d!587860) (not b!1928538) (not b!1929371) (not d!588090) (not b_lambda!63977) (not b!1928387) (not b!1928783) (not b!1927970) (not bm!118665) (not b!1927162) (not b!1928729) (not b!1929347) (not d!588304) (not d!587716) (not b!1929209) (not b!1928980) (not b!1929207) (not b!1927967) (not b!1928220) (not bm!118678) (not bm!118568) (not b!1929316) (not b!1928977) (not b!1929279) (not b!1928450) (not b!1928742) (not d!587678) (not b!1929345) (not d!587492) b_and!151495 b_and!151487 (not d!587712) (not b!1928023) (not d!588354) (not b!1927972) (not b_lambda!63873) (not b!1929259) (not b!1928110) (not b!1928982) (not b!1928514) (not b!1928138) (not d!588096) (not b!1928133) (not d!587616) (not d!587728) (not d!587704) (not d!588320) (not b!1929020) (not b!1929374) (not b_next!55943) (not b!1929173) (not bm!118637) (not b!1927810) (not b!1928912) (not d!588120) (not bm!118580) (not d!588210) (not b!1928516) (not b!1929263) (not b!1929301) (not d!587692) (not b!1929343) (not b!1928044) (not d!587850) (not b!1929362) (not d!587854) (not b!1928914) (not bm!118587) (not d!588004) (not b!1928076) (not bm!118560) (not b!1928125) (not bm!118604) (not d!587740) (not b!1929289) (not b!1928521) (not b!1929291) b_and!151493 (not d!588008) (not b!1928473) (not b!1928129) (not b!1928774) (not b_lambda!63969) (not b!1928451) (not b!1928947) (not d!587518) (not b!1928744) (not d!587844) (not d!587662) (not b!1929296) (not b!1928550) (not b_next!55961) (not b!1928519) (not d!588218) (not b_next!55923) (not b!1928211) (not d!587524) (not d!588312) (not d!587726) (not b!1928583) (not b_lambda!63871) (not b!1929359) (not b!1928188) b_and!151485 (not b!1928477) (not bm!118582) (not b!1929038) (not b_lambda!63963) (not d!587694) (not b!1928568) (not b!1928389) (not b!1928441) b_and!151497 (not b!1928198) (not bm!118649) (not b!1929269) (not d!587486) (not d!587880) (not b!1928382) (not b!1929183) (not b!1928379) (not b!1928512) (not d!587684) (not b!1928127) (not b!1929182) (not d!587520) (not b!1928385) (not b!1928080) (not d!588346) (not d!587950) (not d!588294) (not d!587904) (not b!1928815) (not b!1928524) (not b!1929258) (not b!1929252) (not b!1928572) (not b!1929035) (not b!1929319) (not d!587690) (not b!1929305) (not b!1929354) (not bm!118647) (not b!1929367) (not b!1929188) (not tb!118167) (not b!1927784) (not bm!118677) (not b_next!55925) (not b!1928867) (not d!587682) (not b!1928171) b_and!151489 (not b!1928074) (not b!1928924) (not b!1929253) (not b!1928893) (not b!1928462) (not d!588348) (not d!588240) (not b!1928216) (not d!588292) (not d!588192) (not b_lambda!63967) (not d!588306) (not d!588112) (not b!1928383) (not d!587708) (not b!1929321) (not d!587670) (not b_next!55921) (not d!587730) (not b!1929216) (not b!1927793) (not b_lambda!63921) (not b_lambda!63971) (not b_lambda!63979) (not b!1928145) (not d!587706) (not d!587938) (not d!588326) (not d!587942) (not b!1929237) (not d!588322) (not b!1929293) (not b!1929314) (not b!1928147) (not b!1928523) (not b!1928941) (not b_next!55963) (not b!1928406) (not b_next!55947) (not b_lambda!63879) (not b!1928918) (not b!1929357) (not b!1928938) (not b!1929330) (not b!1928520) (not d!587640) (not b!1928943) (not d!587666) (not b!1929260) b_and!151501 (not b!1929369) (not b!1928945) (not b!1928386) (not b_next!55929) (not b!1928913) (not bs!414891) (not b!1928378) (not b!1928868) (not b!1927968) (not b!1929180) (not bm!118642) (not b!1929231) (not d!587746) (not b!1929217) (not d!587722) (not b!1928582) (not b!1929194) (not b!1927971) (not b!1928629) (not tb!118177) (not b!1928870) (not b!1929375) (not b!1929355) (not b!1928816) (not d!587846) (not b_next!55957) (not d!588286) (not b!1928798) (not d!587848) (not d!587714) tp_is_empty!9137 (not b!1927989) (not b!1929215) (not d!587886) (not d!587892) (not b_lambda!63981) (not b!1927964) (not d!587956) (not d!588284) (not b!1928072) (not d!587720) (not b!1928860) (not d!587488) (not b!1929338) (not d!588238) (not b!1928118) b_and!151499 (not b_lambda!63935) (not d!587526) (not d!587964) (not d!588070) (not b_lambda!63875) (not b!1929185) (not bm!118570) (not d!587884) (not b!1928005) (not d!587736) (not b!1929274) (not b!1929361) (not b!1929325) (not b!1929287) (not d!588316) (not b_next!55959) (not d!588086) (not b!1929334) (not b!1927790) (not b!1929342) (not d!588342) (not bm!118669) (not b!1928413) (not b!1928537) b_and!151479 (not b!1929378) (not b!1927969) (not b!1928897) (not b!1927791) (not d!587632) (not b!1928407) (not b!1928732) (not b!1927789) (not b!1928986) (not b_lambda!63867) (not b!1929271) (not d!587974) (not b!1928119) (not b!1929379) (not b!1929333) (not b!1928739) (not bm!118588) b_and!151491)
(check-sat (not b_next!55931) b_and!151481 b_and!151503 b_and!151483 (not b_next!55943) b_and!151493 (not b_next!55925) b_and!151489 (not b_next!55929) (not b_next!55957) b_and!151499 b_and!151491 (not b_next!55927) (not b_next!55941) (not b_next!55945) b_and!151505 b_and!151495 b_and!151487 b_and!151485 (not b_next!55961) (not b_next!55923) b_and!151497 (not b_next!55921) (not b_next!55963) (not b_next!55947) b_and!151501 b_and!151479 (not b_next!55959))
