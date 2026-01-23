; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170938 () Bool)

(assert start!170938)

(declare-fun b!1737561 () Bool)

(declare-fun b_free!47699 () Bool)

(declare-fun b_next!48403 () Bool)

(assert (=> b!1737561 (= b_free!47699 (not b_next!48403))))

(declare-fun tp!495064 () Bool)

(declare-fun b_and!128831 () Bool)

(assert (=> b!1737561 (= tp!495064 b_and!128831)))

(declare-fun b_free!47701 () Bool)

(declare-fun b_next!48405 () Bool)

(assert (=> b!1737561 (= b_free!47701 (not b_next!48405))))

(declare-fun tp!495067 () Bool)

(declare-fun b_and!128833 () Bool)

(assert (=> b!1737561 (= tp!495067 b_and!128833)))

(declare-fun b!1737557 () Bool)

(declare-fun b_free!47703 () Bool)

(declare-fun b_next!48407 () Bool)

(assert (=> b!1737557 (= b_free!47703 (not b_next!48407))))

(declare-fun tp!495069 () Bool)

(declare-fun b_and!128835 () Bool)

(assert (=> b!1737557 (= tp!495069 b_and!128835)))

(declare-fun b_free!47705 () Bool)

(declare-fun b_next!48409 () Bool)

(assert (=> b!1737557 (= b_free!47705 (not b_next!48409))))

(declare-fun tp!495070 () Bool)

(declare-fun b_and!128837 () Bool)

(assert (=> b!1737557 (= tp!495070 b_and!128837)))

(declare-fun b!1737567 () Bool)

(declare-fun b_free!47707 () Bool)

(declare-fun b_next!48411 () Bool)

(assert (=> b!1737567 (= b_free!47707 (not b_next!48411))))

(declare-fun tp!495065 () Bool)

(declare-fun b_and!128839 () Bool)

(assert (=> b!1737567 (= tp!495065 b_and!128839)))

(declare-fun b_free!47709 () Bool)

(declare-fun b_next!48413 () Bool)

(assert (=> b!1737567 (= b_free!47709 (not b_next!48413))))

(declare-fun tp!495072 () Bool)

(declare-fun b_and!128841 () Bool)

(assert (=> b!1737567 (= tp!495072 b_and!128841)))

(declare-fun b!1737600 () Bool)

(declare-fun e!1112043 () Bool)

(assert (=> b!1737600 (= e!1112043 true)))

(declare-fun b!1737599 () Bool)

(declare-fun e!1112042 () Bool)

(assert (=> b!1737599 (= e!1112042 e!1112043)))

(declare-fun b!1737598 () Bool)

(declare-fun e!1112041 () Bool)

(assert (=> b!1737598 (= e!1112041 e!1112042)))

(declare-fun b!1737552 () Bool)

(assert (=> b!1737552 e!1112041))

(assert (= b!1737599 b!1737600))

(assert (= b!1737598 b!1737599))

(assert (= b!1737552 b!1737598))

(declare-fun order!11871 () Int)

(declare-fun order!11873 () Int)

(declare-datatypes ((List!19151 0))(
  ( (Nil!19081) (Cons!19081 (h!24482 (_ BitVec 16)) (t!161518 List!19151)) )
))
(declare-datatypes ((TokenValue!3485 0))(
  ( (FloatLiteralValue!6970 (text!24840 List!19151)) (TokenValueExt!3484 (__x!12272 Int)) (Broken!17425 (value!106404 List!19151)) (Object!3554) (End!3485) (Def!3485) (Underscore!3485) (Match!3485) (Else!3485) (Error!3485) (Case!3485) (If!3485) (Extends!3485) (Abstract!3485) (Class!3485) (Val!3485) (DelimiterValue!6970 (del!3545 List!19151)) (KeywordValue!3491 (value!106405 List!19151)) (CommentValue!6970 (value!106406 List!19151)) (WhitespaceValue!6970 (value!106407 List!19151)) (IndentationValue!3485 (value!106408 List!19151)) (String!21756) (Int32!3485) (Broken!17426 (value!106409 List!19151)) (Boolean!3486) (Unit!33034) (OperatorValue!3488 (op!3545 List!19151)) (IdentifierValue!6970 (value!106410 List!19151)) (IdentifierValue!6971 (value!106411 List!19151)) (WhitespaceValue!6971 (value!106412 List!19151)) (True!6970) (False!6970) (Broken!17427 (value!106413 List!19151)) (Broken!17428 (value!106414 List!19151)) (True!6971) (RightBrace!3485) (RightBracket!3485) (Colon!3485) (Null!3485) (Comma!3485) (LeftBracket!3485) (False!6971) (LeftBrace!3485) (ImaginaryLiteralValue!3485 (text!24841 List!19151)) (StringLiteralValue!10455 (value!106415 List!19151)) (EOFValue!3485 (value!106416 List!19151)) (IdentValue!3485 (value!106417 List!19151)) (DelimiterValue!6971 (value!106418 List!19151)) (DedentValue!3485 (value!106419 List!19151)) (NewLineValue!3485 (value!106420 List!19151)) (IntegerValue!10455 (value!106421 (_ BitVec 32)) (text!24842 List!19151)) (IntegerValue!10456 (value!106422 Int) (text!24843 List!19151)) (Times!3485) (Or!3485) (Equal!3485) (Minus!3485) (Broken!17429 (value!106423 List!19151)) (And!3485) (Div!3485) (LessEqual!3485) (Mod!3485) (Concat!8208) (Not!3485) (Plus!3485) (SpaceValue!3485 (value!106424 List!19151)) (IntegerValue!10457 (value!106425 Int) (text!24844 List!19151)) (StringLiteralValue!10456 (text!24845 List!19151)) (FloatLiteralValue!6971 (text!24846 List!19151)) (BytesLiteralValue!3485 (value!106426 List!19151)) (CommentValue!6971 (value!106427 List!19151)) (StringLiteralValue!10457 (value!106428 List!19151)) (ErrorTokenValue!3485 (msg!3546 List!19151)) )
))
(declare-datatypes ((C!9620 0))(
  ( (C!9621 (val!5406 Int)) )
))
(declare-datatypes ((List!19152 0))(
  ( (Nil!19082) (Cons!19082 (h!24483 C!9620) (t!161519 List!19152)) )
))
(declare-datatypes ((Regex!4723 0))(
  ( (ElementMatch!4723 (c!283562 C!9620)) (Concat!8209 (regOne!9958 Regex!4723) (regTwo!9958 Regex!4723)) (EmptyExpr!4723) (Star!4723 (reg!5052 Regex!4723)) (EmptyLang!4723) (Union!4723 (regOne!9959 Regex!4723) (regTwo!9959 Regex!4723)) )
))
(declare-datatypes ((String!21757 0))(
  ( (String!21758 (value!106429 String)) )
))
(declare-datatypes ((IArray!12699 0))(
  ( (IArray!12700 (innerList!6407 List!19152)) )
))
(declare-datatypes ((Conc!6347 0))(
  ( (Node!6347 (left!15258 Conc!6347) (right!15588 Conc!6347) (csize!12924 Int) (cheight!6558 Int)) (Leaf!9265 (xs!9223 IArray!12699) (csize!12925 Int)) (Empty!6347) )
))
(declare-datatypes ((BalanceConc!12638 0))(
  ( (BalanceConc!12639 (c!283563 Conc!6347)) )
))
(declare-datatypes ((TokenValueInjection!6630 0))(
  ( (TokenValueInjection!6631 (toValue!4902 Int) (toChars!4761 Int)) )
))
(declare-datatypes ((Rule!6590 0))(
  ( (Rule!6591 (regex!3395 Regex!4723) (tag!3729 String!21757) (isSeparator!3395 Bool) (transformation!3395 TokenValueInjection!6630)) )
))
(declare-datatypes ((Token!6356 0))(
  ( (Token!6357 (value!106430 TokenValue!3485) (rule!5389 Rule!6590) (size!15166 Int) (originalCharacters!4209 List!19152)) )
))
(declare-datatypes ((tuple2!18742 0))(
  ( (tuple2!18743 (_1!10773 Token!6356) (_2!10773 List!19152)) )
))
(declare-fun lt!668881 () tuple2!18742)

(declare-fun lambda!69524 () Int)

(declare-fun dynLambda!8986 (Int Int) Int)

(declare-fun dynLambda!8987 (Int Int) Int)

(assert (=> b!1737600 (< (dynLambda!8986 order!11871 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) (dynLambda!8987 order!11873 lambda!69524))))

(declare-fun order!11875 () Int)

(declare-fun dynLambda!8988 (Int Int) Int)

(assert (=> b!1737600 (< (dynLambda!8988 order!11875 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) (dynLambda!8987 order!11873 lambda!69524))))

(declare-fun b!1737548 () Bool)

(declare-fun e!1112029 () Bool)

(declare-fun tp_is_empty!7689 () Bool)

(declare-fun tp!495061 () Bool)

(assert (=> b!1737548 (= e!1112029 (and tp_is_empty!7689 tp!495061))))

(declare-fun b!1737549 () Bool)

(declare-fun e!1112027 () Bool)

(declare-fun e!1112008 () Bool)

(assert (=> b!1737549 (= e!1112027 e!1112008)))

(declare-fun res!780943 () Bool)

(assert (=> b!1737549 (=> res!780943 e!1112008)))

(declare-fun lt!668841 () List!19152)

(declare-fun lt!668845 () List!19152)

(declare-fun isPrefix!1636 (List!19152 List!19152) Bool)

(assert (=> b!1737549 (= res!780943 (not (isPrefix!1636 lt!668841 lt!668845)))))

(declare-fun ++!5220 (List!19152 List!19152) List!19152)

(assert (=> b!1737549 (isPrefix!1636 lt!668841 (++!5220 lt!668841 (_2!10773 lt!668881)))))

(declare-datatypes ((Unit!33035 0))(
  ( (Unit!33036) )
))
(declare-fun lt!668885 () Unit!33035)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1146 (List!19152 List!19152) Unit!33035)

(assert (=> b!1737549 (= lt!668885 (lemmaConcatTwoListThenFirstIsPrefix!1146 lt!668841 (_2!10773 lt!668881)))))

(declare-fun lt!668854 () BalanceConc!12638)

(declare-fun list!7716 (BalanceConc!12638) List!19152)

(assert (=> b!1737549 (= lt!668841 (list!7716 lt!668854))))

(declare-fun charsOf!2044 (Token!6356) BalanceConc!12638)

(assert (=> b!1737549 (= lt!668854 (charsOf!2044 (_1!10773 lt!668881)))))

(declare-fun e!1112006 () Bool)

(assert (=> b!1737549 e!1112006))

(declare-fun res!780951 () Bool)

(assert (=> b!1737549 (=> (not res!780951) (not e!1112006))))

(declare-datatypes ((Option!3814 0))(
  ( (None!3813) (Some!3813 (v!25240 Rule!6590)) )
))
(declare-fun lt!668861 () Option!3814)

(declare-fun isDefined!3157 (Option!3814) Bool)

(assert (=> b!1737549 (= res!780951 (isDefined!3157 lt!668861))))

(declare-datatypes ((LexerInterface!3024 0))(
  ( (LexerInterfaceExt!3021 (__x!12273 Int)) (Lexer!3022) )
))
(declare-fun thiss!24550 () LexerInterface!3024)

(declare-datatypes ((List!19153 0))(
  ( (Nil!19083) (Cons!19083 (h!24484 Rule!6590) (t!161520 List!19153)) )
))
(declare-fun rules!3447 () List!19153)

(declare-fun getRuleFromTag!445 (LexerInterface!3024 List!19153 String!21757) Option!3814)

(assert (=> b!1737549 (= lt!668861 (getRuleFromTag!445 thiss!24550 rules!3447 (tag!3729 (rule!5389 (_1!10773 lt!668881)))))))

(declare-fun lt!668871 () Unit!33035)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!445 (LexerInterface!3024 List!19153 List!19152 Token!6356) Unit!33035)

(assert (=> b!1737549 (= lt!668871 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!445 thiss!24550 rules!3447 lt!668845 (_1!10773 lt!668881)))))

(declare-datatypes ((Option!3815 0))(
  ( (None!3814) (Some!3814 (v!25241 tuple2!18742)) )
))
(declare-fun lt!668884 () Option!3815)

(declare-fun get!5729 (Option!3815) tuple2!18742)

(assert (=> b!1737549 (= lt!668881 (get!5729 lt!668884))))

(declare-fun suffix!1421 () List!19152)

(declare-fun lt!668862 () List!19152)

(declare-fun lt!668864 () Unit!33035)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!548 (LexerInterface!3024 List!19153 List!19152 List!19152) Unit!33035)

(assert (=> b!1737549 (= lt!668864 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!548 thiss!24550 rules!3447 lt!668862 suffix!1421))))

(declare-fun maxPrefix!1578 (LexerInterface!3024 List!19153 List!19152) Option!3815)

(assert (=> b!1737549 (= lt!668884 (maxPrefix!1578 thiss!24550 rules!3447 lt!668845))))

(assert (=> b!1737549 (isPrefix!1636 lt!668862 lt!668845)))

(declare-fun lt!668837 () Unit!33035)

(assert (=> b!1737549 (= lt!668837 (lemmaConcatTwoListThenFirstIsPrefix!1146 lt!668862 suffix!1421))))

(assert (=> b!1737549 (= lt!668845 (++!5220 lt!668862 suffix!1421))))

(declare-fun b!1737550 () Bool)

(declare-fun rule!422 () Rule!6590)

(declare-fun e!1112010 () Bool)

(declare-fun e!1112034 () Bool)

(declare-fun tp!495062 () Bool)

(declare-fun inv!24712 (String!21757) Bool)

(declare-fun inv!24717 (TokenValueInjection!6630) Bool)

(assert (=> b!1737550 (= e!1112034 (and tp!495062 (inv!24712 (tag!3729 rule!422)) (inv!24717 (transformation!3395 rule!422)) e!1112010))))

(declare-fun b!1737551 () Bool)

(declare-fun e!1112015 () Unit!33035)

(declare-fun Unit!33037 () Unit!33035)

(assert (=> b!1737551 (= e!1112015 Unit!33037)))

(declare-fun lt!668859 () Unit!33035)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!144 (LexerInterface!3024 List!19153 List!19152 Token!6356 Rule!6590 List!19152) Unit!33035)

(assert (=> b!1737551 (= lt!668859 (lemmaMaxPrefixThenMatchesRulesRegex!144 thiss!24550 rules!3447 lt!668845 (_1!10773 lt!668881) (rule!5389 (_1!10773 lt!668881)) (_2!10773 lt!668881)))))

(declare-fun lt!668882 () Regex!4723)

(declare-fun matchR!2197 (Regex!4723 List!19152) Bool)

(assert (=> b!1737551 (matchR!2197 lt!668882 lt!668841)))

(declare-fun lt!668876 () List!19152)

(declare-fun getSuffix!830 (List!19152 List!19152) List!19152)

(assert (=> b!1737551 (= lt!668876 (getSuffix!830 lt!668845 lt!668862))))

(declare-fun lt!668847 () Unit!33035)

(declare-fun lemmaSamePrefixThenSameSuffix!780 (List!19152 List!19152 List!19152 List!19152 List!19152) Unit!33035)

(assert (=> b!1737551 (= lt!668847 (lemmaSamePrefixThenSameSuffix!780 lt!668862 suffix!1421 lt!668862 lt!668876 lt!668845))))

(assert (=> b!1737551 (= suffix!1421 lt!668876)))

(declare-fun lt!668863 () Unit!33035)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!231 (List!19152 List!19152) Unit!33035)

(assert (=> b!1737551 (= lt!668863 (lemmaAddHeadSuffixToPrefixStillPrefix!231 lt!668862 lt!668845))))

(declare-fun head!3972 (List!19152) C!9620)

(assert (=> b!1737551 (isPrefix!1636 (++!5220 lt!668862 (Cons!19082 (head!3972 lt!668876) Nil!19082)) lt!668845)))

(declare-fun lt!668853 () List!19152)

(declare-fun lt!668886 () Unit!33035)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!111 (List!19152 List!19152 List!19152) Unit!33035)

(assert (=> b!1737551 (= lt!668886 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!111 lt!668841 lt!668853 lt!668845))))

(assert (=> b!1737551 (isPrefix!1636 lt!668853 lt!668841)))

(declare-fun lt!668860 () Unit!33035)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!104 (Regex!4723 List!19152 List!19152) Unit!33035)

(assert (=> b!1737551 (= lt!668860 (lemmaNotPrefixMatchThenCannotMatchLonger!104 lt!668882 lt!668853 lt!668841))))

(assert (=> b!1737551 false))

(declare-fun e!1112016 () Bool)

(assert (=> b!1737552 (= e!1112008 e!1112016)))

(declare-fun res!780950 () Bool)

(assert (=> b!1737552 (=> res!780950 e!1112016)))

(declare-fun Forall!770 (Int) Bool)

(assert (=> b!1737552 (= res!780950 (not (Forall!770 lambda!69524)))))

(declare-fun lt!668840 () Unit!33035)

(declare-fun lemmaInv!602 (TokenValueInjection!6630) Unit!33035)

(assert (=> b!1737552 (= lt!668840 (lemmaInv!602 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))))

(declare-fun b!1737553 () Bool)

(declare-fun e!1112020 () Bool)

(declare-fun e!1112018 () Bool)

(assert (=> b!1737553 (= e!1112020 e!1112018)))

(declare-fun res!780944 () Bool)

(assert (=> b!1737553 (=> res!780944 e!1112018)))

(declare-fun lt!668856 () Bool)

(assert (=> b!1737553 (= res!780944 lt!668856)))

(declare-fun lt!668855 () Unit!33035)

(assert (=> b!1737553 (= lt!668855 e!1112015)))

(declare-fun c!283561 () Bool)

(assert (=> b!1737553 (= c!283561 lt!668856)))

(declare-fun lt!668869 () Int)

(declare-fun lt!668844 () Int)

(assert (=> b!1737553 (= lt!668856 (> lt!668869 lt!668844))))

(declare-fun lt!668866 () BalanceConc!12638)

(declare-fun size!15167 (BalanceConc!12638) Int)

(assert (=> b!1737553 (= lt!668844 (size!15167 lt!668866))))

(assert (=> b!1737553 (matchR!2197 lt!668882 lt!668862)))

(declare-fun token!523 () Token!6356)

(declare-fun lt!668872 () Unit!33035)

(assert (=> b!1737553 (= lt!668872 (lemmaMaxPrefixThenMatchesRulesRegex!144 thiss!24550 rules!3447 lt!668862 token!523 rule!422 Nil!19082))))

(declare-fun e!1112031 () Bool)

(declare-fun tp!495071 () Bool)

(declare-fun e!1112007 () Bool)

(declare-fun b!1737554 () Bool)

(assert (=> b!1737554 (= e!1112031 (and tp!495071 (inv!24712 (tag!3729 (rule!5389 token!523))) (inv!24717 (transformation!3395 (rule!5389 token!523))) e!1112007))))

(declare-fun b!1737555 () Bool)

(declare-fun e!1112019 () Bool)

(declare-fun contains!3417 (List!19153 Rule!6590) Bool)

(assert (=> b!1737555 (= e!1112019 (contains!3417 rules!3447 (rule!5389 (_1!10773 lt!668881))))))

(declare-fun lt!668849 () Unit!33035)

(declare-fun e!1112028 () Unit!33035)

(assert (=> b!1737555 (= lt!668849 e!1112028)))

(declare-fun c!283560 () Bool)

(declare-fun lt!668843 () Int)

(declare-fun lt!668839 () Int)

(assert (=> b!1737555 (= c!283560 (< lt!668843 lt!668839))))

(declare-fun lt!668880 () Unit!33035)

(declare-fun e!1112033 () Unit!33035)

(assert (=> b!1737555 (= lt!668880 e!1112033)))

(declare-fun c!283559 () Bool)

(assert (=> b!1737555 (= c!283559 (< lt!668839 lt!668843))))

(declare-fun getIndex!162 (List!19153 Rule!6590) Int)

(assert (=> b!1737555 (= lt!668843 (getIndex!162 rules!3447 (rule!5389 (_1!10773 lt!668881))))))

(assert (=> b!1737555 (= lt!668839 (getIndex!162 rules!3447 (rule!5389 token!523)))))

(declare-fun b!1737556 () Bool)

(declare-fun res!780937 () Bool)

(declare-fun e!1112003 () Bool)

(assert (=> b!1737556 (=> res!780937 e!1112003)))

(declare-fun isEmpty!12009 (List!19152) Bool)

(assert (=> b!1737556 (= res!780937 (isEmpty!12009 suffix!1421))))

(assert (=> b!1737557 (= e!1112010 (and tp!495069 tp!495070))))

(declare-fun b!1737558 () Bool)

(declare-fun e!1112014 () Bool)

(declare-fun e!1112001 () Bool)

(assert (=> b!1737558 (= e!1112014 e!1112001)))

(declare-fun res!780933 () Bool)

(assert (=> b!1737558 (=> (not res!780933) (not e!1112001))))

(declare-fun lt!668842 () tuple2!18742)

(assert (=> b!1737558 (= res!780933 (= (_1!10773 lt!668842) token!523))))

(declare-fun lt!668850 () Option!3815)

(assert (=> b!1737558 (= lt!668842 (get!5729 lt!668850))))

(declare-fun b!1737559 () Bool)

(declare-fun e!1112026 () Bool)

(assert (=> b!1737559 (= e!1112006 e!1112026)))

(declare-fun res!780940 () Bool)

(assert (=> b!1737559 (=> (not res!780940) (not e!1112026))))

(declare-fun lt!668857 () Rule!6590)

(assert (=> b!1737559 (= res!780940 (matchR!2197 (regex!3395 lt!668857) (list!7716 (charsOf!2044 (_1!10773 lt!668881)))))))

(declare-fun get!5730 (Option!3814) Rule!6590)

(assert (=> b!1737559 (= lt!668857 (get!5730 lt!668861))))

(declare-fun b!1737560 () Bool)

(declare-fun Unit!33038 () Unit!33035)

(assert (=> b!1737560 (= e!1112015 Unit!33038)))

(assert (=> b!1737561 (= e!1112007 (and tp!495064 tp!495067))))

(declare-fun b!1737562 () Bool)

(declare-fun Unit!33039 () Unit!33035)

(assert (=> b!1737562 (= e!1112028 Unit!33039)))

(declare-fun b!1737563 () Bool)

(declare-fun e!1112024 () Bool)

(declare-fun e!1112009 () Bool)

(assert (=> b!1737563 (= e!1112024 e!1112009)))

(declare-fun res!780939 () Bool)

(assert (=> b!1737563 (=> res!780939 e!1112009)))

(declare-fun lt!668846 () TokenValue!3485)

(assert (=> b!1737563 (= res!780939 (not (= lt!668884 (Some!3814 (tuple2!18743 (Token!6357 lt!668846 (rule!5389 (_1!10773 lt!668881)) lt!668869 lt!668841) (_2!10773 lt!668881))))))))

(assert (=> b!1737563 (= lt!668869 (size!15167 lt!668854))))

(declare-fun apply!5200 (TokenValueInjection!6630 BalanceConc!12638) TokenValue!3485)

(assert (=> b!1737563 (= lt!668846 (apply!5200 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) lt!668854))))

(declare-fun lt!668851 () Unit!33035)

(declare-fun lemmaCharactersSize!467 (Token!6356) Unit!33035)

(assert (=> b!1737563 (= lt!668851 (lemmaCharactersSize!467 (_1!10773 lt!668881)))))

(declare-fun lt!668883 () Unit!33035)

(declare-fun lemmaEqSameImage!320 (TokenValueInjection!6630 BalanceConc!12638 BalanceConc!12638) Unit!33035)

(declare-fun seqFromList!2369 (List!19152) BalanceConc!12638)

(assert (=> b!1737563 (= lt!668883 (lemmaEqSameImage!320 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) lt!668854 (seqFromList!2369 (originalCharacters!4209 (_1!10773 lt!668881)))))))

(declare-fun b!1737564 () Bool)

(declare-fun res!780953 () Bool)

(assert (=> b!1737564 (=> (not res!780953) (not e!1112001))))

(assert (=> b!1737564 (= res!780953 (= (rule!5389 token!523) rule!422))))

(declare-fun b!1737565 () Bool)

(declare-fun e!1112022 () Unit!33035)

(declare-fun Unit!33040 () Unit!33035)

(assert (=> b!1737565 (= e!1112022 Unit!33040)))

(declare-fun b!1737566 () Bool)

(declare-fun Unit!33041 () Unit!33035)

(assert (=> b!1737566 (= e!1112028 Unit!33041)))

(declare-fun lt!668838 () Unit!33035)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!132 (LexerInterface!3024 List!19153 Rule!6590 List!19152 List!19152 Rule!6590) Unit!33035)

(assert (=> b!1737566 (= lt!668838 (lemmaMaxPrefNoSmallerRuleMatches!132 thiss!24550 rules!3447 (rule!5389 token!523) lt!668862 lt!668862 (rule!5389 (_1!10773 lt!668881))))))

(declare-fun res!780956 () Bool)

(assert (=> b!1737566 (= res!780956 (not (matchR!2197 (regex!3395 (rule!5389 (_1!10773 lt!668881))) lt!668862)))))

(declare-fun e!1112012 () Bool)

(assert (=> b!1737566 (=> (not res!780956) (not e!1112012))))

(assert (=> b!1737566 e!1112012))

(declare-fun res!780954 () Bool)

(declare-fun e!1112025 () Bool)

(assert (=> start!170938 (=> (not res!780954) (not e!1112025))))

(get-info :version)

(assert (=> start!170938 (= res!780954 ((_ is Lexer!3022) thiss!24550))))

(assert (=> start!170938 e!1112025))

(assert (=> start!170938 e!1112029))

(assert (=> start!170938 e!1112034))

(assert (=> start!170938 true))

(declare-fun e!1112005 () Bool)

(declare-fun inv!24718 (Token!6356) Bool)

(assert (=> start!170938 (and (inv!24718 token!523) e!1112005)))

(declare-fun e!1112004 () Bool)

(assert (=> start!170938 e!1112004))

(declare-fun e!1112013 () Bool)

(assert (=> b!1737567 (= e!1112013 (and tp!495065 tp!495072))))

(declare-fun b!1737568 () Bool)

(declare-fun e!1112017 () Bool)

(declare-fun tp!495066 () Bool)

(assert (=> b!1737568 (= e!1112017 (and tp!495066 (inv!24712 (tag!3729 (h!24484 rules!3447))) (inv!24717 (transformation!3395 (h!24484 rules!3447))) e!1112013))))

(declare-fun tp!495063 () Bool)

(declare-fun b!1737569 () Bool)

(declare-fun inv!21 (TokenValue!3485) Bool)

(assert (=> b!1737569 (= e!1112005 (and (inv!21 (value!106430 token!523)) e!1112031 tp!495063))))

(declare-fun b!1737570 () Bool)

(assert (=> b!1737570 (= e!1112003 e!1112027)))

(declare-fun res!780935 () Bool)

(assert (=> b!1737570 (=> res!780935 e!1112027)))

(declare-fun prefixMatch!608 (Regex!4723 List!19152) Bool)

(assert (=> b!1737570 (= res!780935 (prefixMatch!608 lt!668882 lt!668853))))

(assert (=> b!1737570 (= lt!668853 (++!5220 lt!668862 (Cons!19082 (head!3972 suffix!1421) Nil!19082)))))

(declare-fun rulesRegex!753 (LexerInterface!3024 List!19153) Regex!4723)

(assert (=> b!1737570 (= lt!668882 (rulesRegex!753 thiss!24550 rules!3447))))

(declare-fun b!1737571 () Bool)

(assert (=> b!1737571 (= e!1112009 e!1112020)))

(declare-fun res!780945 () Bool)

(assert (=> b!1737571 (=> res!780945 e!1112020)))

(declare-fun lt!668873 () List!19152)

(declare-fun lt!668874 () Option!3815)

(assert (=> b!1737571 (= res!780945 (or (not (= lt!668873 (_2!10773 lt!668881))) (not (= lt!668874 (Some!3814 (tuple2!18743 (_1!10773 lt!668881) lt!668873))))))))

(assert (=> b!1737571 (= (_2!10773 lt!668881) lt!668873)))

(declare-fun lt!668878 () Unit!33035)

(assert (=> b!1737571 (= lt!668878 (lemmaSamePrefixThenSameSuffix!780 lt!668841 (_2!10773 lt!668881) lt!668841 lt!668873 lt!668845))))

(assert (=> b!1737571 (= lt!668873 (getSuffix!830 lt!668845 lt!668841))))

(declare-fun lt!668865 () Int)

(declare-fun lt!668879 () TokenValue!3485)

(assert (=> b!1737571 (= lt!668874 (Some!3814 (tuple2!18743 (Token!6357 lt!668879 (rule!5389 (_1!10773 lt!668881)) lt!668865 lt!668841) (_2!10773 lt!668881))))))

(declare-fun maxPrefixOneRule!954 (LexerInterface!3024 Rule!6590 List!19152) Option!3815)

(assert (=> b!1737571 (= lt!668874 (maxPrefixOneRule!954 thiss!24550 (rule!5389 (_1!10773 lt!668881)) lt!668845))))

(declare-fun size!15168 (List!19152) Int)

(assert (=> b!1737571 (= lt!668865 (size!15168 lt!668841))))

(assert (=> b!1737571 (= lt!668879 (apply!5200 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) (seqFromList!2369 lt!668841)))))

(declare-fun lt!668868 () Unit!33035)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!353 (LexerInterface!3024 List!19153 List!19152 List!19152 List!19152 Rule!6590) Unit!33035)

(assert (=> b!1737571 (= lt!668868 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!353 thiss!24550 rules!3447 lt!668841 lt!668845 (_2!10773 lt!668881) (rule!5389 (_1!10773 lt!668881))))))

(declare-fun b!1737572 () Bool)

(declare-fun e!1112032 () Bool)

(assert (=> b!1737572 (= e!1112032 e!1112019)))

(declare-fun res!780952 () Bool)

(assert (=> b!1737572 (=> res!780952 e!1112019)))

(assert (=> b!1737572 (= res!780952 (= (rule!5389 (_1!10773 lt!668881)) (rule!5389 token!523)))))

(assert (=> b!1737572 (= suffix!1421 (_2!10773 lt!668881))))

(declare-fun lt!668867 () Unit!33035)

(assert (=> b!1737572 (= lt!668867 (lemmaSamePrefixThenSameSuffix!780 lt!668862 suffix!1421 lt!668862 (_2!10773 lt!668881) lt!668845))))

(assert (=> b!1737572 (= lt!668841 lt!668862)))

(declare-fun lt!668858 () Unit!33035)

(declare-fun lemmaIsPrefixSameLengthThenSameList!223 (List!19152 List!19152 List!19152) Unit!33035)

(assert (=> b!1737572 (= lt!668858 (lemmaIsPrefixSameLengthThenSameList!223 lt!668841 lt!668862 lt!668845))))

(declare-fun b!1737573 () Bool)

(assert (=> b!1737573 (= e!1112025 e!1112014)))

(declare-fun res!780946 () Bool)

(assert (=> b!1737573 (=> (not res!780946) (not e!1112014))))

(declare-fun isDefined!3158 (Option!3815) Bool)

(assert (=> b!1737573 (= res!780946 (isDefined!3158 lt!668850))))

(assert (=> b!1737573 (= lt!668850 (maxPrefix!1578 thiss!24550 rules!3447 lt!668862))))

(assert (=> b!1737573 (= lt!668862 (list!7716 lt!668866))))

(assert (=> b!1737573 (= lt!668866 (charsOf!2044 token!523))))

(declare-fun b!1737574 () Bool)

(assert (=> b!1737574 (= e!1112016 e!1112024)))

(declare-fun res!780932 () Bool)

(assert (=> b!1737574 (=> res!780932 e!1112024)))

(declare-fun dynLambda!8989 (Int TokenValue!3485) BalanceConc!12638)

(declare-fun dynLambda!8990 (Int BalanceConc!12638) TokenValue!3485)

(assert (=> b!1737574 (= res!780932 (not (= (list!7716 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))) lt!668841)))))

(declare-fun lt!668852 () Unit!33035)

(declare-fun lemmaSemiInverse!541 (TokenValueInjection!6630 BalanceConc!12638) Unit!33035)

(assert (=> b!1737574 (= lt!668852 (lemmaSemiInverse!541 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) lt!668854))))

(declare-fun b!1737575 () Bool)

(assert (=> b!1737575 (= e!1112018 e!1112032)))

(declare-fun res!780936 () Bool)

(assert (=> b!1737575 (=> res!780936 e!1112032)))

(assert (=> b!1737575 (= res!780936 (not (= lt!668869 lt!668844)))))

(declare-fun lt!668870 () Unit!33035)

(assert (=> b!1737575 (= lt!668870 e!1112022)))

(declare-fun c!283558 () Bool)

(assert (=> b!1737575 (= c!283558 (< lt!668869 lt!668844))))

(declare-fun b!1737576 () Bool)

(declare-fun res!780942 () Bool)

(assert (=> b!1737576 (=> (not res!780942) (not e!1112001))))

(assert (=> b!1737576 (= res!780942 (isEmpty!12009 (_2!10773 lt!668842)))))

(declare-fun b!1737577 () Bool)

(declare-fun res!780934 () Bool)

(assert (=> b!1737577 (=> (not res!780934) (not e!1112025))))

(declare-fun rulesInvariant!2693 (LexerInterface!3024 List!19153) Bool)

(assert (=> b!1737577 (= res!780934 (rulesInvariant!2693 thiss!24550 rules!3447))))

(declare-fun b!1737578 () Bool)

(declare-fun e!1112002 () Bool)

(assert (=> b!1737578 (= e!1112002 false)))

(declare-fun b!1737579 () Bool)

(declare-fun res!780947 () Bool)

(assert (=> b!1737579 (=> (not res!780947) (not e!1112025))))

(assert (=> b!1737579 (= res!780947 (contains!3417 rules!3447 rule!422))))

(declare-fun b!1737580 () Bool)

(assert (=> b!1737580 (= e!1112012 false)))

(declare-fun b!1737581 () Bool)

(declare-fun res!780948 () Bool)

(assert (=> b!1737581 (=> res!780948 e!1112024)))

(assert (=> b!1737581 (= res!780948 (not (= lt!668854 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))))))

(declare-fun b!1737582 () Bool)

(declare-fun res!780949 () Bool)

(assert (=> b!1737582 (=> (not res!780949) (not e!1112025))))

(declare-fun isEmpty!12010 (List!19153) Bool)

(assert (=> b!1737582 (= res!780949 (not (isEmpty!12010 rules!3447)))))

(declare-fun b!1737583 () Bool)

(declare-fun tp!495068 () Bool)

(assert (=> b!1737583 (= e!1112004 (and e!1112017 tp!495068))))

(declare-fun b!1737584 () Bool)

(declare-fun res!780941 () Bool)

(assert (=> b!1737584 (=> res!780941 e!1112008)))

(assert (=> b!1737584 (= res!780941 (not (matchR!2197 (regex!3395 (rule!5389 (_1!10773 lt!668881))) lt!668841)))))

(declare-fun b!1737585 () Bool)

(declare-fun Unit!33042 () Unit!33035)

(assert (=> b!1737585 (= e!1112033 Unit!33042)))

(declare-fun b!1737586 () Bool)

(declare-fun Unit!33043 () Unit!33035)

(assert (=> b!1737586 (= e!1112022 Unit!33043)))

(declare-fun lt!668877 () Unit!33035)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!192 (LexerInterface!3024 List!19153 Rule!6590 List!19152 List!19152 List!19152 Rule!6590) Unit!33035)

(assert (=> b!1737586 (= lt!668877 (lemmaMaxPrefixOutputsMaxPrefix!192 thiss!24550 rules!3447 (rule!5389 (_1!10773 lt!668881)) lt!668841 lt!668845 lt!668862 rule!422))))

(assert (=> b!1737586 false))

(declare-fun b!1737587 () Bool)

(declare-fun Unit!33044 () Unit!33035)

(assert (=> b!1737587 (= e!1112033 Unit!33044)))

(declare-fun lt!668848 () Unit!33035)

(assert (=> b!1737587 (= lt!668848 (lemmaMaxPrefNoSmallerRuleMatches!132 thiss!24550 rules!3447 (rule!5389 (_1!10773 lt!668881)) lt!668841 lt!668845 (rule!5389 token!523)))))

(declare-fun res!780938 () Bool)

(assert (=> b!1737587 (= res!780938 (not (matchR!2197 (regex!3395 (rule!5389 token!523)) lt!668841)))))

(assert (=> b!1737587 (=> (not res!780938) (not e!1112002))))

(assert (=> b!1737587 e!1112002))

(declare-fun b!1737588 () Bool)

(assert (=> b!1737588 (= e!1112026 (= (rule!5389 (_1!10773 lt!668881)) lt!668857))))

(declare-fun b!1737589 () Bool)

(assert (=> b!1737589 (= e!1112001 (not e!1112003))))

(declare-fun res!780955 () Bool)

(assert (=> b!1737589 (=> res!780955 e!1112003)))

(assert (=> b!1737589 (= res!780955 (not (matchR!2197 (regex!3395 rule!422) lt!668862)))))

(declare-fun ruleValid!894 (LexerInterface!3024 Rule!6590) Bool)

(assert (=> b!1737589 (ruleValid!894 thiss!24550 rule!422)))

(declare-fun lt!668875 () Unit!33035)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!418 (LexerInterface!3024 Rule!6590 List!19153) Unit!33035)

(assert (=> b!1737589 (= lt!668875 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!418 thiss!24550 rule!422 rules!3447))))

(assert (= (and start!170938 res!780954) b!1737582))

(assert (= (and b!1737582 res!780949) b!1737577))

(assert (= (and b!1737577 res!780934) b!1737579))

(assert (= (and b!1737579 res!780947) b!1737573))

(assert (= (and b!1737573 res!780946) b!1737558))

(assert (= (and b!1737558 res!780933) b!1737576))

(assert (= (and b!1737576 res!780942) b!1737564))

(assert (= (and b!1737564 res!780953) b!1737589))

(assert (= (and b!1737589 (not res!780955)) b!1737556))

(assert (= (and b!1737556 (not res!780937)) b!1737570))

(assert (= (and b!1737570 (not res!780935)) b!1737549))

(assert (= (and b!1737549 res!780951) b!1737559))

(assert (= (and b!1737559 res!780940) b!1737588))

(assert (= (and b!1737549 (not res!780943)) b!1737584))

(assert (= (and b!1737584 (not res!780941)) b!1737552))

(assert (= (and b!1737552 (not res!780950)) b!1737574))

(assert (= (and b!1737574 (not res!780932)) b!1737581))

(assert (= (and b!1737581 (not res!780948)) b!1737563))

(assert (= (and b!1737563 (not res!780939)) b!1737571))

(assert (= (and b!1737571 (not res!780945)) b!1737553))

(assert (= (and b!1737553 c!283561) b!1737551))

(assert (= (and b!1737553 (not c!283561)) b!1737560))

(assert (= (and b!1737553 (not res!780944)) b!1737575))

(assert (= (and b!1737575 c!283558) b!1737586))

(assert (= (and b!1737575 (not c!283558)) b!1737565))

(assert (= (and b!1737575 (not res!780936)) b!1737572))

(assert (= (and b!1737572 (not res!780952)) b!1737555))

(assert (= (and b!1737555 c!283559) b!1737587))

(assert (= (and b!1737555 (not c!283559)) b!1737585))

(assert (= (and b!1737587 res!780938) b!1737578))

(assert (= (and b!1737555 c!283560) b!1737566))

(assert (= (and b!1737555 (not c!283560)) b!1737562))

(assert (= (and b!1737566 res!780956) b!1737580))

(assert (= (and start!170938 ((_ is Cons!19082) suffix!1421)) b!1737548))

(assert (= b!1737550 b!1737557))

(assert (= start!170938 b!1737550))

(assert (= b!1737554 b!1737561))

(assert (= b!1737569 b!1737554))

(assert (= start!170938 b!1737569))

(assert (= b!1737568 b!1737567))

(assert (= b!1737583 b!1737568))

(assert (= (and start!170938 ((_ is Cons!19083) rules!3447)) b!1737583))

(declare-fun b_lambda!55599 () Bool)

(assert (=> (not b_lambda!55599) (not b!1737574)))

(declare-fun t!161501 () Bool)

(declare-fun tb!103785 () Bool)

(assert (=> (and b!1737561 (= (toChars!4761 (transformation!3395 (rule!5389 token!523))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161501) tb!103785))

(declare-fun e!1112046 () Bool)

(declare-fun b!1737605 () Bool)

(declare-fun tp!495075 () Bool)

(declare-fun inv!24719 (Conc!6347) Bool)

(assert (=> b!1737605 (= e!1112046 (and (inv!24719 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))) tp!495075))))

(declare-fun result!124812 () Bool)

(declare-fun inv!24720 (BalanceConc!12638) Bool)

(assert (=> tb!103785 (= result!124812 (and (inv!24720 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))) e!1112046))))

(assert (= tb!103785 b!1737605))

(declare-fun m!2147713 () Bool)

(assert (=> b!1737605 m!2147713))

(declare-fun m!2147715 () Bool)

(assert (=> tb!103785 m!2147715))

(assert (=> b!1737574 t!161501))

(declare-fun b_and!128843 () Bool)

(assert (= b_and!128833 (and (=> t!161501 result!124812) b_and!128843)))

(declare-fun t!161503 () Bool)

(declare-fun tb!103787 () Bool)

(assert (=> (and b!1737557 (= (toChars!4761 (transformation!3395 rule!422)) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161503) tb!103787))

(declare-fun result!124816 () Bool)

(assert (= result!124816 result!124812))

(assert (=> b!1737574 t!161503))

(declare-fun b_and!128845 () Bool)

(assert (= b_and!128837 (and (=> t!161503 result!124816) b_and!128845)))

(declare-fun tb!103789 () Bool)

(declare-fun t!161505 () Bool)

(assert (=> (and b!1737567 (= (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161505) tb!103789))

(declare-fun result!124818 () Bool)

(assert (= result!124818 result!124812))

(assert (=> b!1737574 t!161505))

(declare-fun b_and!128847 () Bool)

(assert (= b_and!128841 (and (=> t!161505 result!124818) b_and!128847)))

(declare-fun b_lambda!55601 () Bool)

(assert (=> (not b_lambda!55601) (not b!1737574)))

(declare-fun t!161507 () Bool)

(declare-fun tb!103791 () Bool)

(assert (=> (and b!1737561 (= (toValue!4902 (transformation!3395 (rule!5389 token!523))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161507) tb!103791))

(declare-fun result!124820 () Bool)

(assert (=> tb!103791 (= result!124820 (inv!21 (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))

(declare-fun m!2147717 () Bool)

(assert (=> tb!103791 m!2147717))

(assert (=> b!1737574 t!161507))

(declare-fun b_and!128849 () Bool)

(assert (= b_and!128831 (and (=> t!161507 result!124820) b_and!128849)))

(declare-fun t!161509 () Bool)

(declare-fun tb!103793 () Bool)

(assert (=> (and b!1737557 (= (toValue!4902 (transformation!3395 rule!422)) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161509) tb!103793))

(declare-fun result!124824 () Bool)

(assert (= result!124824 result!124820))

(assert (=> b!1737574 t!161509))

(declare-fun b_and!128851 () Bool)

(assert (= b_and!128835 (and (=> t!161509 result!124824) b_and!128851)))

(declare-fun tb!103795 () Bool)

(declare-fun t!161511 () Bool)

(assert (=> (and b!1737567 (= (toValue!4902 (transformation!3395 (h!24484 rules!3447))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161511) tb!103795))

(declare-fun result!124826 () Bool)

(assert (= result!124826 result!124820))

(assert (=> b!1737574 t!161511))

(declare-fun b_and!128853 () Bool)

(assert (= b_and!128839 (and (=> t!161511 result!124826) b_and!128853)))

(declare-fun b_lambda!55603 () Bool)

(assert (=> (not b_lambda!55603) (not b!1737581)))

(declare-fun tb!103797 () Bool)

(declare-fun t!161513 () Bool)

(assert (=> (and b!1737561 (= (toChars!4761 (transformation!3395 (rule!5389 token!523))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161513) tb!103797))

(declare-fun b!1737608 () Bool)

(declare-fun e!1112050 () Bool)

(declare-fun tp!495076 () Bool)

(assert (=> b!1737608 (= e!1112050 (and (inv!24719 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))) tp!495076))))

(declare-fun result!124828 () Bool)

(assert (=> tb!103797 (= result!124828 (and (inv!24720 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881)))) e!1112050))))

(assert (= tb!103797 b!1737608))

(declare-fun m!2147719 () Bool)

(assert (=> b!1737608 m!2147719))

(declare-fun m!2147721 () Bool)

(assert (=> tb!103797 m!2147721))

(assert (=> b!1737581 t!161513))

(declare-fun b_and!128855 () Bool)

(assert (= b_and!128843 (and (=> t!161513 result!124828) b_and!128855)))

(declare-fun tb!103799 () Bool)

(declare-fun t!161515 () Bool)

(assert (=> (and b!1737557 (= (toChars!4761 (transformation!3395 rule!422)) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161515) tb!103799))

(declare-fun result!124830 () Bool)

(assert (= result!124830 result!124828))

(assert (=> b!1737581 t!161515))

(declare-fun b_and!128857 () Bool)

(assert (= b_and!128845 (and (=> t!161515 result!124830) b_and!128857)))

(declare-fun tb!103801 () Bool)

(declare-fun t!161517 () Bool)

(assert (=> (and b!1737567 (= (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161517) tb!103801))

(declare-fun result!124832 () Bool)

(assert (= result!124832 result!124828))

(assert (=> b!1737581 t!161517))

(declare-fun b_and!128859 () Bool)

(assert (= b_and!128847 (and (=> t!161517 result!124832) b_and!128859)))

(declare-fun m!2147723 () Bool)

(assert (=> b!1737559 m!2147723))

(assert (=> b!1737559 m!2147723))

(declare-fun m!2147725 () Bool)

(assert (=> b!1737559 m!2147725))

(assert (=> b!1737559 m!2147725))

(declare-fun m!2147727 () Bool)

(assert (=> b!1737559 m!2147727))

(declare-fun m!2147729 () Bool)

(assert (=> b!1737559 m!2147729))

(declare-fun m!2147731 () Bool)

(assert (=> b!1737581 m!2147731))

(declare-fun m!2147733 () Bool)

(assert (=> b!1737551 m!2147733))

(declare-fun m!2147735 () Bool)

(assert (=> b!1737551 m!2147735))

(declare-fun m!2147737 () Bool)

(assert (=> b!1737551 m!2147737))

(assert (=> b!1737551 m!2147735))

(declare-fun m!2147739 () Bool)

(assert (=> b!1737551 m!2147739))

(declare-fun m!2147741 () Bool)

(assert (=> b!1737551 m!2147741))

(declare-fun m!2147743 () Bool)

(assert (=> b!1737551 m!2147743))

(declare-fun m!2147745 () Bool)

(assert (=> b!1737551 m!2147745))

(declare-fun m!2147747 () Bool)

(assert (=> b!1737551 m!2147747))

(declare-fun m!2147749 () Bool)

(assert (=> b!1737551 m!2147749))

(declare-fun m!2147751 () Bool)

(assert (=> b!1737551 m!2147751))

(declare-fun m!2147753 () Bool)

(assert (=> b!1737551 m!2147753))

(declare-fun m!2147755 () Bool)

(assert (=> b!1737570 m!2147755))

(declare-fun m!2147757 () Bool)

(assert (=> b!1737570 m!2147757))

(declare-fun m!2147759 () Bool)

(assert (=> b!1737570 m!2147759))

(declare-fun m!2147761 () Bool)

(assert (=> b!1737570 m!2147761))

(declare-fun m!2147763 () Bool)

(assert (=> b!1737571 m!2147763))

(declare-fun m!2147765 () Bool)

(assert (=> b!1737571 m!2147765))

(assert (=> b!1737571 m!2147763))

(declare-fun m!2147767 () Bool)

(assert (=> b!1737571 m!2147767))

(declare-fun m!2147769 () Bool)

(assert (=> b!1737571 m!2147769))

(declare-fun m!2147771 () Bool)

(assert (=> b!1737571 m!2147771))

(declare-fun m!2147773 () Bool)

(assert (=> b!1737571 m!2147773))

(declare-fun m!2147775 () Bool)

(assert (=> b!1737571 m!2147775))

(declare-fun m!2147777 () Bool)

(assert (=> b!1737584 m!2147777))

(declare-fun m!2147779 () Bool)

(assert (=> b!1737555 m!2147779))

(declare-fun m!2147781 () Bool)

(assert (=> b!1737555 m!2147781))

(declare-fun m!2147783 () Bool)

(assert (=> b!1737555 m!2147783))

(declare-fun m!2147785 () Bool)

(assert (=> b!1737587 m!2147785))

(declare-fun m!2147787 () Bool)

(assert (=> b!1737587 m!2147787))

(declare-fun m!2147789 () Bool)

(assert (=> b!1737554 m!2147789))

(declare-fun m!2147791 () Bool)

(assert (=> b!1737554 m!2147791))

(declare-fun m!2147793 () Bool)

(assert (=> b!1737568 m!2147793))

(declare-fun m!2147795 () Bool)

(assert (=> b!1737568 m!2147795))

(declare-fun m!2147797 () Bool)

(assert (=> b!1737569 m!2147797))

(declare-fun m!2147799 () Bool)

(assert (=> b!1737572 m!2147799))

(declare-fun m!2147801 () Bool)

(assert (=> b!1737572 m!2147801))

(declare-fun m!2147803 () Bool)

(assert (=> b!1737566 m!2147803))

(declare-fun m!2147805 () Bool)

(assert (=> b!1737566 m!2147805))

(declare-fun m!2147807 () Bool)

(assert (=> b!1737579 m!2147807))

(declare-fun m!2147809 () Bool)

(assert (=> b!1737586 m!2147809))

(declare-fun m!2147811 () Bool)

(assert (=> b!1737577 m!2147811))

(declare-fun m!2147813 () Bool)

(assert (=> b!1737563 m!2147813))

(declare-fun m!2147815 () Bool)

(assert (=> b!1737563 m!2147815))

(declare-fun m!2147817 () Bool)

(assert (=> b!1737563 m!2147817))

(declare-fun m!2147819 () Bool)

(assert (=> b!1737563 m!2147819))

(assert (=> b!1737563 m!2147817))

(declare-fun m!2147821 () Bool)

(assert (=> b!1737563 m!2147821))

(declare-fun m!2147823 () Bool)

(assert (=> b!1737582 m!2147823))

(declare-fun m!2147825 () Bool)

(assert (=> b!1737558 m!2147825))

(declare-fun m!2147827 () Bool)

(assert (=> b!1737550 m!2147827))

(declare-fun m!2147829 () Bool)

(assert (=> b!1737550 m!2147829))

(declare-fun m!2147831 () Bool)

(assert (=> b!1737549 m!2147831))

(declare-fun m!2147833 () Bool)

(assert (=> b!1737549 m!2147833))

(declare-fun m!2147835 () Bool)

(assert (=> b!1737549 m!2147835))

(assert (=> b!1737549 m!2147723))

(declare-fun m!2147837 () Bool)

(assert (=> b!1737549 m!2147837))

(assert (=> b!1737549 m!2147831))

(declare-fun m!2147839 () Bool)

(assert (=> b!1737549 m!2147839))

(declare-fun m!2147841 () Bool)

(assert (=> b!1737549 m!2147841))

(declare-fun m!2147843 () Bool)

(assert (=> b!1737549 m!2147843))

(declare-fun m!2147845 () Bool)

(assert (=> b!1737549 m!2147845))

(declare-fun m!2147847 () Bool)

(assert (=> b!1737549 m!2147847))

(declare-fun m!2147849 () Bool)

(assert (=> b!1737549 m!2147849))

(declare-fun m!2147851 () Bool)

(assert (=> b!1737549 m!2147851))

(declare-fun m!2147853 () Bool)

(assert (=> b!1737549 m!2147853))

(declare-fun m!2147855 () Bool)

(assert (=> b!1737549 m!2147855))

(declare-fun m!2147857 () Bool)

(assert (=> b!1737549 m!2147857))

(declare-fun m!2147859 () Bool)

(assert (=> b!1737573 m!2147859))

(declare-fun m!2147861 () Bool)

(assert (=> b!1737573 m!2147861))

(declare-fun m!2147863 () Bool)

(assert (=> b!1737573 m!2147863))

(declare-fun m!2147865 () Bool)

(assert (=> b!1737573 m!2147865))

(declare-fun m!2147867 () Bool)

(assert (=> b!1737574 m!2147867))

(assert (=> b!1737574 m!2147867))

(declare-fun m!2147869 () Bool)

(assert (=> b!1737574 m!2147869))

(assert (=> b!1737574 m!2147869))

(declare-fun m!2147871 () Bool)

(assert (=> b!1737574 m!2147871))

(declare-fun m!2147873 () Bool)

(assert (=> b!1737574 m!2147873))

(declare-fun m!2147875 () Bool)

(assert (=> b!1737556 m!2147875))

(declare-fun m!2147877 () Bool)

(assert (=> b!1737553 m!2147877))

(declare-fun m!2147879 () Bool)

(assert (=> b!1737553 m!2147879))

(declare-fun m!2147881 () Bool)

(assert (=> b!1737553 m!2147881))

(declare-fun m!2147883 () Bool)

(assert (=> b!1737552 m!2147883))

(declare-fun m!2147885 () Bool)

(assert (=> b!1737552 m!2147885))

(declare-fun m!2147887 () Bool)

(assert (=> b!1737589 m!2147887))

(declare-fun m!2147889 () Bool)

(assert (=> b!1737589 m!2147889))

(declare-fun m!2147891 () Bool)

(assert (=> b!1737589 m!2147891))

(declare-fun m!2147893 () Bool)

(assert (=> start!170938 m!2147893))

(declare-fun m!2147895 () Bool)

(assert (=> b!1737576 m!2147895))

(check-sat (not b!1737574) (not tb!103791) (not b_next!48405) (not b!1737573) (not b!1737550) (not b_next!48411) b_and!128851 (not tb!103785) (not b!1737589) (not b_next!48403) b_and!128849 (not b!1737556) (not b!1737549) (not b!1737548) (not b!1737586) (not b!1737552) (not b!1737571) (not b!1737579) (not b_next!48409) (not b_next!48413) (not b!1737608) (not tb!103797) (not b!1737559) b_and!128859 (not b_next!48407) (not b!1737584) (not b!1737555) (not b_lambda!55599) (not b!1737570) (not b!1737577) (not b!1737554) (not b!1737551) (not b!1737587) b_and!128855 (not b!1737605) (not b_lambda!55603) (not b_lambda!55601) b_and!128857 b_and!128853 (not b!1737558) (not b!1737553) (not b!1737569) (not start!170938) (not b!1737566) (not b!1737582) (not b!1737568) (not b!1737563) tp_is_empty!7689 (not b!1737576) (not b!1737572) (not b!1737583))
(check-sat (not b_next!48405) b_and!128859 (not b_next!48407) (not b_next!48411) b_and!128851 b_and!128855 (not b_next!48403) b_and!128849 (not b_next!48409) (not b_next!48413) b_and!128857 b_and!128853)
(get-model)

(declare-fun d!531258 () Bool)

(declare-fun lt!668922 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2733 (List!19153) (InoxSet Rule!6590))

(assert (=> d!531258 (= lt!668922 (select (content!2733 rules!3447) rule!422))))

(declare-fun e!1112098 () Bool)

(assert (=> d!531258 (= lt!668922 e!1112098)))

(declare-fun res!781009 () Bool)

(assert (=> d!531258 (=> (not res!781009) (not e!1112098))))

(assert (=> d!531258 (= res!781009 ((_ is Cons!19083) rules!3447))))

(assert (=> d!531258 (= (contains!3417 rules!3447 rule!422) lt!668922)))

(declare-fun b!1737697 () Bool)

(declare-fun e!1112099 () Bool)

(assert (=> b!1737697 (= e!1112098 e!1112099)))

(declare-fun res!781010 () Bool)

(assert (=> b!1737697 (=> res!781010 e!1112099)))

(assert (=> b!1737697 (= res!781010 (= (h!24484 rules!3447) rule!422))))

(declare-fun b!1737698 () Bool)

(assert (=> b!1737698 (= e!1112099 (contains!3417 (t!161520 rules!3447) rule!422))))

(assert (= (and d!531258 res!781009) b!1737697))

(assert (= (and b!1737697 (not res!781010)) b!1737698))

(declare-fun m!2147987 () Bool)

(assert (=> d!531258 m!2147987))

(declare-fun m!2147989 () Bool)

(assert (=> d!531258 m!2147989))

(declare-fun m!2147991 () Bool)

(assert (=> b!1737698 m!2147991))

(assert (=> b!1737579 d!531258))

(declare-fun d!531266 () Bool)

(assert (=> d!531266 (= (get!5729 lt!668850) (v!25241 lt!668850))))

(assert (=> b!1737558 d!531266))

(declare-fun d!531268 () Bool)

(declare-fun lt!668923 () Bool)

(assert (=> d!531268 (= lt!668923 (select (content!2733 rules!3447) (rule!5389 (_1!10773 lt!668881))))))

(declare-fun e!1112100 () Bool)

(assert (=> d!531268 (= lt!668923 e!1112100)))

(declare-fun res!781011 () Bool)

(assert (=> d!531268 (=> (not res!781011) (not e!1112100))))

(assert (=> d!531268 (= res!781011 ((_ is Cons!19083) rules!3447))))

(assert (=> d!531268 (= (contains!3417 rules!3447 (rule!5389 (_1!10773 lt!668881))) lt!668923)))

(declare-fun b!1737699 () Bool)

(declare-fun e!1112101 () Bool)

(assert (=> b!1737699 (= e!1112100 e!1112101)))

(declare-fun res!781012 () Bool)

(assert (=> b!1737699 (=> res!781012 e!1112101)))

(assert (=> b!1737699 (= res!781012 (= (h!24484 rules!3447) (rule!5389 (_1!10773 lt!668881))))))

(declare-fun b!1737700 () Bool)

(assert (=> b!1737700 (= e!1112101 (contains!3417 (t!161520 rules!3447) (rule!5389 (_1!10773 lt!668881))))))

(assert (= (and d!531268 res!781011) b!1737699))

(assert (= (and b!1737699 (not res!781012)) b!1737700))

(assert (=> d!531268 m!2147987))

(declare-fun m!2147993 () Bool)

(assert (=> d!531268 m!2147993))

(declare-fun m!2147995 () Bool)

(assert (=> b!1737700 m!2147995))

(assert (=> b!1737555 d!531268))

(declare-fun b!1737709 () Bool)

(declare-fun e!1112107 () Int)

(assert (=> b!1737709 (= e!1112107 0)))

(declare-fun b!1737711 () Bool)

(declare-fun e!1112108 () Int)

(assert (=> b!1737711 (= e!1112108 (+ 1 (getIndex!162 (t!161520 rules!3447) (rule!5389 (_1!10773 lt!668881)))))))

(declare-fun d!531270 () Bool)

(declare-fun lt!668926 () Int)

(assert (=> d!531270 (>= lt!668926 0)))

(assert (=> d!531270 (= lt!668926 e!1112107)))

(declare-fun c!283587 () Bool)

(assert (=> d!531270 (= c!283587 (and ((_ is Cons!19083) rules!3447) (= (h!24484 rules!3447) (rule!5389 (_1!10773 lt!668881)))))))

(assert (=> d!531270 (contains!3417 rules!3447 (rule!5389 (_1!10773 lt!668881)))))

(assert (=> d!531270 (= (getIndex!162 rules!3447 (rule!5389 (_1!10773 lt!668881))) lt!668926)))

(declare-fun b!1737710 () Bool)

(assert (=> b!1737710 (= e!1112107 e!1112108)))

(declare-fun c!283586 () Bool)

(assert (=> b!1737710 (= c!283586 (and ((_ is Cons!19083) rules!3447) (not (= (h!24484 rules!3447) (rule!5389 (_1!10773 lt!668881))))))))

(declare-fun b!1737712 () Bool)

(assert (=> b!1737712 (= e!1112108 (- 1))))

(assert (= (and d!531270 c!283587) b!1737709))

(assert (= (and d!531270 (not c!283587)) b!1737710))

(assert (= (and b!1737710 c!283586) b!1737711))

(assert (= (and b!1737710 (not c!283586)) b!1737712))

(declare-fun m!2147997 () Bool)

(assert (=> b!1737711 m!2147997))

(assert (=> d!531270 m!2147779))

(assert (=> b!1737555 d!531270))

(declare-fun b!1737713 () Bool)

(declare-fun e!1112109 () Int)

(assert (=> b!1737713 (= e!1112109 0)))

(declare-fun b!1737715 () Bool)

(declare-fun e!1112110 () Int)

(assert (=> b!1737715 (= e!1112110 (+ 1 (getIndex!162 (t!161520 rules!3447) (rule!5389 token!523))))))

(declare-fun d!531272 () Bool)

(declare-fun lt!668927 () Int)

(assert (=> d!531272 (>= lt!668927 0)))

(assert (=> d!531272 (= lt!668927 e!1112109)))

(declare-fun c!283589 () Bool)

(assert (=> d!531272 (= c!283589 (and ((_ is Cons!19083) rules!3447) (= (h!24484 rules!3447) (rule!5389 token!523))))))

(assert (=> d!531272 (contains!3417 rules!3447 (rule!5389 token!523))))

(assert (=> d!531272 (= (getIndex!162 rules!3447 (rule!5389 token!523)) lt!668927)))

(declare-fun b!1737714 () Bool)

(assert (=> b!1737714 (= e!1112109 e!1112110)))

(declare-fun c!283588 () Bool)

(assert (=> b!1737714 (= c!283588 (and ((_ is Cons!19083) rules!3447) (not (= (h!24484 rules!3447) (rule!5389 token!523)))))))

(declare-fun b!1737716 () Bool)

(assert (=> b!1737716 (= e!1112110 (- 1))))

(assert (= (and d!531272 c!283589) b!1737713))

(assert (= (and d!531272 (not c!283589)) b!1737714))

(assert (= (and b!1737714 c!283588) b!1737715))

(assert (= (and b!1737714 (not c!283588)) b!1737716))

(declare-fun m!2147999 () Bool)

(assert (=> b!1737715 m!2147999))

(declare-fun m!2148001 () Bool)

(assert (=> d!531272 m!2148001))

(assert (=> b!1737555 d!531272))

(declare-fun d!531274 () Bool)

(declare-fun res!781015 () Bool)

(declare-fun e!1112113 () Bool)

(assert (=> d!531274 (=> (not res!781015) (not e!1112113))))

(declare-fun rulesValid!1269 (LexerInterface!3024 List!19153) Bool)

(assert (=> d!531274 (= res!781015 (rulesValid!1269 thiss!24550 rules!3447))))

(assert (=> d!531274 (= (rulesInvariant!2693 thiss!24550 rules!3447) e!1112113)))

(declare-fun b!1737719 () Bool)

(declare-datatypes ((List!19154 0))(
  ( (Nil!19084) (Cons!19084 (h!24485 String!21757) (t!161581 List!19154)) )
))
(declare-fun noDuplicateTag!1269 (LexerInterface!3024 List!19153 List!19154) Bool)

(assert (=> b!1737719 (= e!1112113 (noDuplicateTag!1269 thiss!24550 rules!3447 Nil!19084))))

(assert (= (and d!531274 res!781015) b!1737719))

(declare-fun m!2148003 () Bool)

(assert (=> d!531274 m!2148003))

(declare-fun m!2148005 () Bool)

(assert (=> b!1737719 m!2148005))

(assert (=> b!1737577 d!531274))

(declare-fun d!531276 () Bool)

(assert (=> d!531276 (= (isEmpty!12009 suffix!1421) ((_ is Nil!19082) suffix!1421))))

(assert (=> b!1737556 d!531276))

(declare-fun d!531278 () Bool)

(assert (=> d!531278 (= (inv!24712 (tag!3729 (rule!5389 token!523))) (= (mod (str.len (value!106429 (tag!3729 (rule!5389 token!523)))) 2) 0))))

(assert (=> b!1737554 d!531278))

(declare-fun d!531280 () Bool)

(declare-fun res!781032 () Bool)

(declare-fun e!1112122 () Bool)

(assert (=> d!531280 (=> (not res!781032) (not e!1112122))))

(declare-fun semiInverseModEq!1343 (Int Int) Bool)

(assert (=> d!531280 (= res!781032 (semiInverseModEq!1343 (toChars!4761 (transformation!3395 (rule!5389 token!523))) (toValue!4902 (transformation!3395 (rule!5389 token!523)))))))

(assert (=> d!531280 (= (inv!24717 (transformation!3395 (rule!5389 token!523))) e!1112122)))

(declare-fun b!1737740 () Bool)

(declare-fun equivClasses!1284 (Int Int) Bool)

(assert (=> b!1737740 (= e!1112122 (equivClasses!1284 (toChars!4761 (transformation!3395 (rule!5389 token!523))) (toValue!4902 (transformation!3395 (rule!5389 token!523)))))))

(assert (= (and d!531280 res!781032) b!1737740))

(declare-fun m!2148007 () Bool)

(assert (=> d!531280 m!2148007))

(declare-fun m!2148009 () Bool)

(assert (=> b!1737740 m!2148009))

(assert (=> b!1737554 d!531280))

(declare-fun d!531282 () Bool)

(assert (=> d!531282 (= (isEmpty!12009 (_2!10773 lt!668842)) ((_ is Nil!19082) (_2!10773 lt!668842)))))

(assert (=> b!1737576 d!531282))

(declare-fun b!1737760 () Bool)

(declare-fun e!1112134 () Bool)

(assert (=> b!1737760 (= e!1112134 true)))

(declare-fun d!531284 () Bool)

(assert (=> d!531284 e!1112134))

(assert (= d!531284 b!1737760))

(declare-fun lambda!69527 () Int)

(declare-fun order!11877 () Int)

(declare-fun dynLambda!8991 (Int Int) Int)

(assert (=> b!1737760 (< (dynLambda!8986 order!11871 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) (dynLambda!8991 order!11877 lambda!69527))))

(assert (=> b!1737760 (< (dynLambda!8988 order!11875 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) (dynLambda!8991 order!11877 lambda!69527))))

(assert (=> d!531284 (= (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (seqFromList!2369 (originalCharacters!4209 (_1!10773 lt!668881)))))))

(declare-fun lt!668948 () Unit!33035)

(declare-fun Forall2of!98 (Int BalanceConc!12638 BalanceConc!12638) Unit!33035)

(assert (=> d!531284 (= lt!668948 (Forall2of!98 lambda!69527 lt!668854 (seqFromList!2369 (originalCharacters!4209 (_1!10773 lt!668881)))))))

(assert (=> d!531284 (= (list!7716 lt!668854) (list!7716 (seqFromList!2369 (originalCharacters!4209 (_1!10773 lt!668881)))))))

(assert (=> d!531284 (= (lemmaEqSameImage!320 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) lt!668854 (seqFromList!2369 (originalCharacters!4209 (_1!10773 lt!668881)))) lt!668948)))

(declare-fun b_lambda!55609 () Bool)

(assert (=> (not b_lambda!55609) (not d!531284)))

(assert (=> d!531284 t!161507))

(declare-fun b_and!128873 () Bool)

(assert (= b_and!128849 (and (=> t!161507 result!124820) b_and!128873)))

(assert (=> d!531284 t!161509))

(declare-fun b_and!128875 () Bool)

(assert (= b_and!128851 (and (=> t!161509 result!124824) b_and!128875)))

(assert (=> d!531284 t!161511))

(declare-fun b_and!128877 () Bool)

(assert (= b_and!128853 (and (=> t!161511 result!124826) b_and!128877)))

(declare-fun b_lambda!55611 () Bool)

(assert (=> (not b_lambda!55611) (not d!531284)))

(declare-fun tb!103815 () Bool)

(declare-fun t!161534 () Bool)

(assert (=> (and b!1737561 (= (toValue!4902 (transformation!3395 (rule!5389 token!523))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161534) tb!103815))

(declare-fun result!124846 () Bool)

(assert (=> tb!103815 (= result!124846 (inv!21 (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (seqFromList!2369 (originalCharacters!4209 (_1!10773 lt!668881))))))))

(declare-fun m!2148061 () Bool)

(assert (=> tb!103815 m!2148061))

(assert (=> d!531284 t!161534))

(declare-fun b_and!128879 () Bool)

(assert (= b_and!128873 (and (=> t!161534 result!124846) b_and!128879)))

(declare-fun tb!103817 () Bool)

(declare-fun t!161536 () Bool)

(assert (=> (and b!1737557 (= (toValue!4902 (transformation!3395 rule!422)) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161536) tb!103817))

(declare-fun result!124848 () Bool)

(assert (= result!124848 result!124846))

(assert (=> d!531284 t!161536))

(declare-fun b_and!128881 () Bool)

(assert (= b_and!128875 (and (=> t!161536 result!124848) b_and!128881)))

(declare-fun tb!103819 () Bool)

(declare-fun t!161538 () Bool)

(assert (=> (and b!1737567 (= (toValue!4902 (transformation!3395 (h!24484 rules!3447))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161538) tb!103819))

(declare-fun result!124850 () Bool)

(assert (= result!124850 result!124846))

(assert (=> d!531284 t!161538))

(declare-fun b_and!128883 () Bool)

(assert (= b_and!128877 (and (=> t!161538 result!124850) b_and!128883)))

(assert (=> d!531284 m!2147845))

(assert (=> d!531284 m!2147817))

(declare-fun m!2148067 () Bool)

(assert (=> d!531284 m!2148067))

(assert (=> d!531284 m!2147817))

(declare-fun m!2148069 () Bool)

(assert (=> d!531284 m!2148069))

(assert (=> d!531284 m!2147867))

(assert (=> d!531284 m!2147817))

(declare-fun m!2148075 () Bool)

(assert (=> d!531284 m!2148075))

(assert (=> b!1737563 d!531284))

(declare-fun d!531302 () Bool)

(declare-fun fromListB!1084 (List!19152) BalanceConc!12638)

(assert (=> d!531302 (= (seqFromList!2369 (originalCharacters!4209 (_1!10773 lt!668881))) (fromListB!1084 (originalCharacters!4209 (_1!10773 lt!668881))))))

(declare-fun bs!402877 () Bool)

(assert (= bs!402877 d!531302))

(declare-fun m!2148079 () Bool)

(assert (=> bs!402877 m!2148079))

(assert (=> b!1737563 d!531302))

(declare-fun d!531306 () Bool)

(assert (=> d!531306 (= (apply!5200 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) lt!668854) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))))

(declare-fun b_lambda!55613 () Bool)

(assert (=> (not b_lambda!55613) (not d!531306)))

(assert (=> d!531306 t!161507))

(declare-fun b_and!128885 () Bool)

(assert (= b_and!128879 (and (=> t!161507 result!124820) b_and!128885)))

(assert (=> d!531306 t!161509))

(declare-fun b_and!128887 () Bool)

(assert (= b_and!128881 (and (=> t!161509 result!124824) b_and!128887)))

(assert (=> d!531306 t!161511))

(declare-fun b_and!128889 () Bool)

(assert (= b_and!128883 (and (=> t!161511 result!124826) b_and!128889)))

(assert (=> d!531306 m!2147867))

(assert (=> b!1737563 d!531306))

(declare-fun d!531308 () Bool)

(declare-fun lt!668963 () Int)

(assert (=> d!531308 (= lt!668963 (size!15168 (list!7716 lt!668854)))))

(declare-fun size!15169 (Conc!6347) Int)

(assert (=> d!531308 (= lt!668963 (size!15169 (c!283563 lt!668854)))))

(assert (=> d!531308 (= (size!15167 lt!668854) lt!668963)))

(declare-fun bs!402878 () Bool)

(assert (= bs!402878 d!531308))

(assert (=> bs!402878 m!2147845))

(assert (=> bs!402878 m!2147845))

(declare-fun m!2148101 () Bool)

(assert (=> bs!402878 m!2148101))

(declare-fun m!2148105 () Bool)

(assert (=> bs!402878 m!2148105))

(assert (=> b!1737563 d!531308))

(declare-fun d!531314 () Bool)

(assert (=> d!531314 (= (size!15166 (_1!10773 lt!668881)) (size!15168 (originalCharacters!4209 (_1!10773 lt!668881))))))

(declare-fun Unit!33047 () Unit!33035)

(assert (=> d!531314 (= (lemmaCharactersSize!467 (_1!10773 lt!668881)) Unit!33047)))

(declare-fun bs!402880 () Bool)

(assert (= bs!402880 d!531314))

(declare-fun m!2148129 () Bool)

(assert (=> bs!402880 m!2148129))

(assert (=> b!1737563 d!531314))

(declare-fun d!531322 () Bool)

(declare-fun isBalanced!1984 (Conc!6347) Bool)

(assert (=> d!531322 (= (inv!24720 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881)))) (isBalanced!1984 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))))))

(declare-fun bs!402881 () Bool)

(assert (= bs!402881 d!531322))

(declare-fun m!2148131 () Bool)

(assert (=> bs!402881 m!2148131))

(assert (=> tb!103797 d!531322))

(declare-fun b!1737842 () Bool)

(declare-fun e!1112186 () Bool)

(declare-fun lt!668973 () Bool)

(assert (=> b!1737842 (= e!1112186 (not lt!668973))))

(declare-fun b!1737843 () Bool)

(declare-fun res!781101 () Bool)

(declare-fun e!1112184 () Bool)

(assert (=> b!1737843 (=> (not res!781101) (not e!1112184))))

(declare-fun call!110022 () Bool)

(assert (=> b!1737843 (= res!781101 (not call!110022))))

(declare-fun b!1737844 () Bool)

(declare-fun e!1112187 () Bool)

(assert (=> b!1737844 (= e!1112187 e!1112186)))

(declare-fun c!283606 () Bool)

(assert (=> b!1737844 (= c!283606 ((_ is EmptyLang!4723) (regex!3395 (rule!5389 (_1!10773 lt!668881)))))))

(declare-fun b!1737845 () Bool)

(declare-fun e!1112185 () Bool)

(declare-fun e!1112181 () Bool)

(assert (=> b!1737845 (= e!1112185 e!1112181)))

(declare-fun res!781105 () Bool)

(assert (=> b!1737845 (=> res!781105 e!1112181)))

(assert (=> b!1737845 (= res!781105 call!110022)))

(declare-fun b!1737846 () Bool)

(declare-fun e!1112182 () Bool)

(assert (=> b!1737846 (= e!1112182 e!1112185)))

(declare-fun res!781106 () Bool)

(assert (=> b!1737846 (=> (not res!781106) (not e!1112185))))

(assert (=> b!1737846 (= res!781106 (not lt!668973))))

(declare-fun b!1737848 () Bool)

(declare-fun res!781103 () Bool)

(assert (=> b!1737848 (=> res!781103 e!1112181)))

(declare-fun tail!2595 (List!19152) List!19152)

(assert (=> b!1737848 (= res!781103 (not (isEmpty!12009 (tail!2595 lt!668841))))))

(declare-fun b!1737849 () Bool)

(assert (=> b!1737849 (= e!1112181 (not (= (head!3972 lt!668841) (c!283562 (regex!3395 (rule!5389 (_1!10773 lt!668881)))))))))

(declare-fun b!1737850 () Bool)

(declare-fun e!1112183 () Bool)

(declare-fun derivativeStep!1198 (Regex!4723 C!9620) Regex!4723)

(assert (=> b!1737850 (= e!1112183 (matchR!2197 (derivativeStep!1198 (regex!3395 (rule!5389 (_1!10773 lt!668881))) (head!3972 lt!668841)) (tail!2595 lt!668841)))))

(declare-fun b!1737851 () Bool)

(assert (=> b!1737851 (= e!1112184 (= (head!3972 lt!668841) (c!283562 (regex!3395 (rule!5389 (_1!10773 lt!668881))))))))

(declare-fun bm!110017 () Bool)

(assert (=> bm!110017 (= call!110022 (isEmpty!12009 lt!668841))))

(declare-fun b!1737852 () Bool)

(assert (=> b!1737852 (= e!1112187 (= lt!668973 call!110022))))

(declare-fun b!1737853 () Bool)

(declare-fun nullable!1430 (Regex!4723) Bool)

(assert (=> b!1737853 (= e!1112183 (nullable!1430 (regex!3395 (rule!5389 (_1!10773 lt!668881)))))))

(declare-fun b!1737854 () Bool)

(declare-fun res!781107 () Bool)

(assert (=> b!1737854 (=> res!781107 e!1112182)))

(assert (=> b!1737854 (= res!781107 (not ((_ is ElementMatch!4723) (regex!3395 (rule!5389 (_1!10773 lt!668881))))))))

(assert (=> b!1737854 (= e!1112186 e!1112182)))

(declare-fun b!1737855 () Bool)

(declare-fun res!781104 () Bool)

(assert (=> b!1737855 (=> (not res!781104) (not e!1112184))))

(assert (=> b!1737855 (= res!781104 (isEmpty!12009 (tail!2595 lt!668841)))))

(declare-fun b!1737847 () Bool)

(declare-fun res!781100 () Bool)

(assert (=> b!1737847 (=> res!781100 e!1112182)))

(assert (=> b!1737847 (= res!781100 e!1112184)))

(declare-fun res!781102 () Bool)

(assert (=> b!1737847 (=> (not res!781102) (not e!1112184))))

(assert (=> b!1737847 (= res!781102 lt!668973)))

(declare-fun d!531324 () Bool)

(assert (=> d!531324 e!1112187))

(declare-fun c!283608 () Bool)

(assert (=> d!531324 (= c!283608 ((_ is EmptyExpr!4723) (regex!3395 (rule!5389 (_1!10773 lt!668881)))))))

(assert (=> d!531324 (= lt!668973 e!1112183)))

(declare-fun c!283607 () Bool)

(assert (=> d!531324 (= c!283607 (isEmpty!12009 lt!668841))))

(declare-fun validRegex!1904 (Regex!4723) Bool)

(assert (=> d!531324 (validRegex!1904 (regex!3395 (rule!5389 (_1!10773 lt!668881))))))

(assert (=> d!531324 (= (matchR!2197 (regex!3395 (rule!5389 (_1!10773 lt!668881))) lt!668841) lt!668973)))

(assert (= (and d!531324 c!283607) b!1737853))

(assert (= (and d!531324 (not c!283607)) b!1737850))

(assert (= (and d!531324 c!283608) b!1737852))

(assert (= (and d!531324 (not c!283608)) b!1737844))

(assert (= (and b!1737844 c!283606) b!1737842))

(assert (= (and b!1737844 (not c!283606)) b!1737854))

(assert (= (and b!1737854 (not res!781107)) b!1737847))

(assert (= (and b!1737847 res!781102) b!1737843))

(assert (= (and b!1737843 res!781101) b!1737855))

(assert (= (and b!1737855 res!781104) b!1737851))

(assert (= (and b!1737847 (not res!781100)) b!1737846))

(assert (= (and b!1737846 res!781106) b!1737845))

(assert (= (and b!1737845 (not res!781105)) b!1737848))

(assert (= (and b!1737848 (not res!781103)) b!1737849))

(assert (= (or b!1737852 b!1737843 b!1737845) bm!110017))

(declare-fun m!2148155 () Bool)

(assert (=> d!531324 m!2148155))

(declare-fun m!2148157 () Bool)

(assert (=> d!531324 m!2148157))

(declare-fun m!2148159 () Bool)

(assert (=> b!1737849 m!2148159))

(declare-fun m!2148161 () Bool)

(assert (=> b!1737853 m!2148161))

(declare-fun m!2148163 () Bool)

(assert (=> b!1737848 m!2148163))

(assert (=> b!1737848 m!2148163))

(declare-fun m!2148165 () Bool)

(assert (=> b!1737848 m!2148165))

(assert (=> b!1737851 m!2148159))

(assert (=> b!1737855 m!2148163))

(assert (=> b!1737855 m!2148163))

(assert (=> b!1737855 m!2148165))

(assert (=> bm!110017 m!2148155))

(assert (=> b!1737850 m!2148159))

(assert (=> b!1737850 m!2148159))

(declare-fun m!2148167 () Bool)

(assert (=> b!1737850 m!2148167))

(assert (=> b!1737850 m!2148163))

(assert (=> b!1737850 m!2148167))

(assert (=> b!1737850 m!2148163))

(declare-fun m!2148169 () Bool)

(assert (=> b!1737850 m!2148169))

(assert (=> b!1737584 d!531324))

(declare-fun d!531334 () Bool)

(assert (=> d!531334 (= (isEmpty!12010 rules!3447) ((_ is Nil!19083) rules!3447))))

(assert (=> b!1737582 d!531334))

(declare-fun d!531336 () Bool)

(declare-fun c!283611 () Bool)

(assert (=> d!531336 (= c!283611 ((_ is Node!6347) (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))))

(declare-fun e!1112192 () Bool)

(assert (=> d!531336 (= (inv!24719 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))) e!1112192)))

(declare-fun b!1737862 () Bool)

(declare-fun inv!24723 (Conc!6347) Bool)

(assert (=> b!1737862 (= e!1112192 (inv!24723 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))))

(declare-fun b!1737863 () Bool)

(declare-fun e!1112193 () Bool)

(assert (=> b!1737863 (= e!1112192 e!1112193)))

(declare-fun res!781110 () Bool)

(assert (=> b!1737863 (= res!781110 (not ((_ is Leaf!9265) (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))))))))

(assert (=> b!1737863 (=> res!781110 e!1112193)))

(declare-fun b!1737864 () Bool)

(declare-fun inv!24724 (Conc!6347) Bool)

(assert (=> b!1737864 (= e!1112193 (inv!24724 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))))

(assert (= (and d!531336 c!283611) b!1737862))

(assert (= (and d!531336 (not c!283611)) b!1737863))

(assert (= (and b!1737863 (not res!781110)) b!1737864))

(declare-fun m!2148171 () Bool)

(assert (=> b!1737862 m!2148171))

(declare-fun m!2148173 () Bool)

(assert (=> b!1737864 m!2148173))

(assert (=> b!1737605 d!531336))

(declare-fun b!1737865 () Bool)

(declare-fun e!1112199 () Bool)

(declare-fun lt!668974 () Bool)

(assert (=> b!1737865 (= e!1112199 (not lt!668974))))

(declare-fun b!1737866 () Bool)

(declare-fun res!781112 () Bool)

(declare-fun e!1112197 () Bool)

(assert (=> b!1737866 (=> (not res!781112) (not e!1112197))))

(declare-fun call!110023 () Bool)

(assert (=> b!1737866 (= res!781112 (not call!110023))))

(declare-fun b!1737867 () Bool)

(declare-fun e!1112200 () Bool)

(assert (=> b!1737867 (= e!1112200 e!1112199)))

(declare-fun c!283612 () Bool)

(assert (=> b!1737867 (= c!283612 ((_ is EmptyLang!4723) (regex!3395 lt!668857)))))

(declare-fun b!1737868 () Bool)

(declare-fun e!1112198 () Bool)

(declare-fun e!1112194 () Bool)

(assert (=> b!1737868 (= e!1112198 e!1112194)))

(declare-fun res!781116 () Bool)

(assert (=> b!1737868 (=> res!781116 e!1112194)))

(assert (=> b!1737868 (= res!781116 call!110023)))

(declare-fun b!1737869 () Bool)

(declare-fun e!1112195 () Bool)

(assert (=> b!1737869 (= e!1112195 e!1112198)))

(declare-fun res!781117 () Bool)

(assert (=> b!1737869 (=> (not res!781117) (not e!1112198))))

(assert (=> b!1737869 (= res!781117 (not lt!668974))))

(declare-fun b!1737871 () Bool)

(declare-fun res!781114 () Bool)

(assert (=> b!1737871 (=> res!781114 e!1112194)))

(assert (=> b!1737871 (= res!781114 (not (isEmpty!12009 (tail!2595 (list!7716 (charsOf!2044 (_1!10773 lt!668881)))))))))

(declare-fun b!1737872 () Bool)

(assert (=> b!1737872 (= e!1112194 (not (= (head!3972 (list!7716 (charsOf!2044 (_1!10773 lt!668881)))) (c!283562 (regex!3395 lt!668857)))))))

(declare-fun b!1737873 () Bool)

(declare-fun e!1112196 () Bool)

(assert (=> b!1737873 (= e!1112196 (matchR!2197 (derivativeStep!1198 (regex!3395 lt!668857) (head!3972 (list!7716 (charsOf!2044 (_1!10773 lt!668881))))) (tail!2595 (list!7716 (charsOf!2044 (_1!10773 lt!668881))))))))

(declare-fun b!1737874 () Bool)

(assert (=> b!1737874 (= e!1112197 (= (head!3972 (list!7716 (charsOf!2044 (_1!10773 lt!668881)))) (c!283562 (regex!3395 lt!668857))))))

(declare-fun bm!110018 () Bool)

(assert (=> bm!110018 (= call!110023 (isEmpty!12009 (list!7716 (charsOf!2044 (_1!10773 lt!668881)))))))

(declare-fun b!1737875 () Bool)

(assert (=> b!1737875 (= e!1112200 (= lt!668974 call!110023))))

(declare-fun b!1737876 () Bool)

(assert (=> b!1737876 (= e!1112196 (nullable!1430 (regex!3395 lt!668857)))))

(declare-fun b!1737877 () Bool)

(declare-fun res!781118 () Bool)

(assert (=> b!1737877 (=> res!781118 e!1112195)))

(assert (=> b!1737877 (= res!781118 (not ((_ is ElementMatch!4723) (regex!3395 lt!668857))))))

(assert (=> b!1737877 (= e!1112199 e!1112195)))

(declare-fun b!1737878 () Bool)

(declare-fun res!781115 () Bool)

(assert (=> b!1737878 (=> (not res!781115) (not e!1112197))))

(assert (=> b!1737878 (= res!781115 (isEmpty!12009 (tail!2595 (list!7716 (charsOf!2044 (_1!10773 lt!668881))))))))

(declare-fun b!1737870 () Bool)

(declare-fun res!781111 () Bool)

(assert (=> b!1737870 (=> res!781111 e!1112195)))

(assert (=> b!1737870 (= res!781111 e!1112197)))

(declare-fun res!781113 () Bool)

(assert (=> b!1737870 (=> (not res!781113) (not e!1112197))))

(assert (=> b!1737870 (= res!781113 lt!668974)))

(declare-fun d!531338 () Bool)

(assert (=> d!531338 e!1112200))

(declare-fun c!283614 () Bool)

(assert (=> d!531338 (= c!283614 ((_ is EmptyExpr!4723) (regex!3395 lt!668857)))))

(assert (=> d!531338 (= lt!668974 e!1112196)))

(declare-fun c!283613 () Bool)

(assert (=> d!531338 (= c!283613 (isEmpty!12009 (list!7716 (charsOf!2044 (_1!10773 lt!668881)))))))

(assert (=> d!531338 (validRegex!1904 (regex!3395 lt!668857))))

(assert (=> d!531338 (= (matchR!2197 (regex!3395 lt!668857) (list!7716 (charsOf!2044 (_1!10773 lt!668881)))) lt!668974)))

(assert (= (and d!531338 c!283613) b!1737876))

(assert (= (and d!531338 (not c!283613)) b!1737873))

(assert (= (and d!531338 c!283614) b!1737875))

(assert (= (and d!531338 (not c!283614)) b!1737867))

(assert (= (and b!1737867 c!283612) b!1737865))

(assert (= (and b!1737867 (not c!283612)) b!1737877))

(assert (= (and b!1737877 (not res!781118)) b!1737870))

(assert (= (and b!1737870 res!781113) b!1737866))

(assert (= (and b!1737866 res!781112) b!1737878))

(assert (= (and b!1737878 res!781115) b!1737874))

(assert (= (and b!1737870 (not res!781111)) b!1737869))

(assert (= (and b!1737869 res!781117) b!1737868))

(assert (= (and b!1737868 (not res!781116)) b!1737871))

(assert (= (and b!1737871 (not res!781114)) b!1737872))

(assert (= (or b!1737875 b!1737866 b!1737868) bm!110018))

(assert (=> d!531338 m!2147725))

(declare-fun m!2148175 () Bool)

(assert (=> d!531338 m!2148175))

(declare-fun m!2148177 () Bool)

(assert (=> d!531338 m!2148177))

(assert (=> b!1737872 m!2147725))

(declare-fun m!2148179 () Bool)

(assert (=> b!1737872 m!2148179))

(declare-fun m!2148181 () Bool)

(assert (=> b!1737876 m!2148181))

(assert (=> b!1737871 m!2147725))

(declare-fun m!2148183 () Bool)

(assert (=> b!1737871 m!2148183))

(assert (=> b!1737871 m!2148183))

(declare-fun m!2148185 () Bool)

(assert (=> b!1737871 m!2148185))

(assert (=> b!1737874 m!2147725))

(assert (=> b!1737874 m!2148179))

(assert (=> b!1737878 m!2147725))

(assert (=> b!1737878 m!2148183))

(assert (=> b!1737878 m!2148183))

(assert (=> b!1737878 m!2148185))

(assert (=> bm!110018 m!2147725))

(assert (=> bm!110018 m!2148175))

(assert (=> b!1737873 m!2147725))

(assert (=> b!1737873 m!2148179))

(assert (=> b!1737873 m!2148179))

(declare-fun m!2148187 () Bool)

(assert (=> b!1737873 m!2148187))

(assert (=> b!1737873 m!2147725))

(assert (=> b!1737873 m!2148183))

(assert (=> b!1737873 m!2148187))

(assert (=> b!1737873 m!2148183))

(declare-fun m!2148189 () Bool)

(assert (=> b!1737873 m!2148189))

(assert (=> b!1737559 d!531338))

(declare-fun d!531340 () Bool)

(declare-fun list!7719 (Conc!6347) List!19152)

(assert (=> d!531340 (= (list!7716 (charsOf!2044 (_1!10773 lt!668881))) (list!7719 (c!283563 (charsOf!2044 (_1!10773 lt!668881)))))))

(declare-fun bs!402883 () Bool)

(assert (= bs!402883 d!531340))

(declare-fun m!2148191 () Bool)

(assert (=> bs!402883 m!2148191))

(assert (=> b!1737559 d!531340))

(declare-fun d!531342 () Bool)

(declare-fun lt!668977 () BalanceConc!12638)

(assert (=> d!531342 (= (list!7716 lt!668977) (originalCharacters!4209 (_1!10773 lt!668881)))))

(assert (=> d!531342 (= lt!668977 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))))

(assert (=> d!531342 (= (charsOf!2044 (_1!10773 lt!668881)) lt!668977)))

(declare-fun b_lambda!55617 () Bool)

(assert (=> (not b_lambda!55617) (not d!531342)))

(assert (=> d!531342 t!161513))

(declare-fun b_and!128897 () Bool)

(assert (= b_and!128855 (and (=> t!161513 result!124828) b_and!128897)))

(assert (=> d!531342 t!161515))

(declare-fun b_and!128899 () Bool)

(assert (= b_and!128857 (and (=> t!161515 result!124830) b_and!128899)))

(assert (=> d!531342 t!161517))

(declare-fun b_and!128901 () Bool)

(assert (= b_and!128859 (and (=> t!161517 result!124832) b_and!128901)))

(declare-fun m!2148193 () Bool)

(assert (=> d!531342 m!2148193))

(assert (=> d!531342 m!2147731))

(assert (=> b!1737559 d!531342))

(declare-fun d!531344 () Bool)

(assert (=> d!531344 (= (get!5730 lt!668861) (v!25240 lt!668861))))

(assert (=> b!1737559 d!531344))

(declare-fun b!1737889 () Bool)

(declare-fun res!781121 () Bool)

(declare-fun e!1112207 () Bool)

(assert (=> b!1737889 (=> res!781121 e!1112207)))

(assert (=> b!1737889 (= res!781121 (not ((_ is IntegerValue!10457) (value!106430 token!523))))))

(declare-fun e!1112209 () Bool)

(assert (=> b!1737889 (= e!1112209 e!1112207)))

(declare-fun b!1737890 () Bool)

(declare-fun e!1112208 () Bool)

(assert (=> b!1737890 (= e!1112208 e!1112209)))

(declare-fun c!283620 () Bool)

(assert (=> b!1737890 (= c!283620 ((_ is IntegerValue!10456) (value!106430 token!523)))))

(declare-fun b!1737891 () Bool)

(declare-fun inv!17 (TokenValue!3485) Bool)

(assert (=> b!1737891 (= e!1112209 (inv!17 (value!106430 token!523)))))

(declare-fun d!531346 () Bool)

(declare-fun c!283619 () Bool)

(assert (=> d!531346 (= c!283619 ((_ is IntegerValue!10455) (value!106430 token!523)))))

(assert (=> d!531346 (= (inv!21 (value!106430 token!523)) e!1112208)))

(declare-fun b!1737892 () Bool)

(declare-fun inv!15 (TokenValue!3485) Bool)

(assert (=> b!1737892 (= e!1112207 (inv!15 (value!106430 token!523)))))

(declare-fun b!1737893 () Bool)

(declare-fun inv!16 (TokenValue!3485) Bool)

(assert (=> b!1737893 (= e!1112208 (inv!16 (value!106430 token!523)))))

(assert (= (and d!531346 c!283619) b!1737893))

(assert (= (and d!531346 (not c!283619)) b!1737890))

(assert (= (and b!1737890 c!283620) b!1737891))

(assert (= (and b!1737890 (not c!283620)) b!1737889))

(assert (= (and b!1737889 (not res!781121)) b!1737892))

(declare-fun m!2148195 () Bool)

(assert (=> b!1737891 m!2148195))

(declare-fun m!2148197 () Bool)

(assert (=> b!1737892 m!2148197))

(declare-fun m!2148199 () Bool)

(assert (=> b!1737893 m!2148199))

(assert (=> b!1737569 d!531346))

(declare-fun d!531348 () Bool)

(declare-fun c!283621 () Bool)

(assert (=> d!531348 (= c!283621 ((_ is Node!6347) (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))))))

(declare-fun e!1112210 () Bool)

(assert (=> d!531348 (= (inv!24719 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))) e!1112210)))

(declare-fun b!1737894 () Bool)

(assert (=> b!1737894 (= e!1112210 (inv!24723 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))))))

(declare-fun b!1737895 () Bool)

(declare-fun e!1112211 () Bool)

(assert (=> b!1737895 (= e!1112210 e!1112211)))

(declare-fun res!781122 () Bool)

(assert (=> b!1737895 (= res!781122 (not ((_ is Leaf!9265) (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881)))))))))

(assert (=> b!1737895 (=> res!781122 e!1112211)))

(declare-fun b!1737896 () Bool)

(assert (=> b!1737896 (= e!1112211 (inv!24724 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))))))

(assert (= (and d!531348 c!283621) b!1737894))

(assert (= (and d!531348 (not c!283621)) b!1737895))

(assert (= (and b!1737895 (not res!781122)) b!1737896))

(declare-fun m!2148201 () Bool)

(assert (=> b!1737894 m!2148201))

(declare-fun m!2148203 () Bool)

(assert (=> b!1737896 m!2148203))

(assert (=> b!1737608 d!531348))

(declare-fun b!1737897 () Bool)

(declare-fun e!1112217 () Bool)

(declare-fun lt!668978 () Bool)

(assert (=> b!1737897 (= e!1112217 (not lt!668978))))

(declare-fun b!1737898 () Bool)

(declare-fun res!781124 () Bool)

(declare-fun e!1112215 () Bool)

(assert (=> b!1737898 (=> (not res!781124) (not e!1112215))))

(declare-fun call!110024 () Bool)

(assert (=> b!1737898 (= res!781124 (not call!110024))))

(declare-fun b!1737899 () Bool)

(declare-fun e!1112218 () Bool)

(assert (=> b!1737899 (= e!1112218 e!1112217)))

(declare-fun c!283622 () Bool)

(assert (=> b!1737899 (= c!283622 ((_ is EmptyLang!4723) (regex!3395 rule!422)))))

(declare-fun b!1737900 () Bool)

(declare-fun e!1112216 () Bool)

(declare-fun e!1112212 () Bool)

(assert (=> b!1737900 (= e!1112216 e!1112212)))

(declare-fun res!781128 () Bool)

(assert (=> b!1737900 (=> res!781128 e!1112212)))

(assert (=> b!1737900 (= res!781128 call!110024)))

(declare-fun b!1737901 () Bool)

(declare-fun e!1112213 () Bool)

(assert (=> b!1737901 (= e!1112213 e!1112216)))

(declare-fun res!781129 () Bool)

(assert (=> b!1737901 (=> (not res!781129) (not e!1112216))))

(assert (=> b!1737901 (= res!781129 (not lt!668978))))

(declare-fun b!1737903 () Bool)

(declare-fun res!781126 () Bool)

(assert (=> b!1737903 (=> res!781126 e!1112212)))

(assert (=> b!1737903 (= res!781126 (not (isEmpty!12009 (tail!2595 lt!668862))))))

(declare-fun b!1737904 () Bool)

(assert (=> b!1737904 (= e!1112212 (not (= (head!3972 lt!668862) (c!283562 (regex!3395 rule!422)))))))

(declare-fun b!1737905 () Bool)

(declare-fun e!1112214 () Bool)

(assert (=> b!1737905 (= e!1112214 (matchR!2197 (derivativeStep!1198 (regex!3395 rule!422) (head!3972 lt!668862)) (tail!2595 lt!668862)))))

(declare-fun b!1737906 () Bool)

(assert (=> b!1737906 (= e!1112215 (= (head!3972 lt!668862) (c!283562 (regex!3395 rule!422))))))

(declare-fun bm!110019 () Bool)

(assert (=> bm!110019 (= call!110024 (isEmpty!12009 lt!668862))))

(declare-fun b!1737907 () Bool)

(assert (=> b!1737907 (= e!1112218 (= lt!668978 call!110024))))

(declare-fun b!1737908 () Bool)

(assert (=> b!1737908 (= e!1112214 (nullable!1430 (regex!3395 rule!422)))))

(declare-fun b!1737909 () Bool)

(declare-fun res!781130 () Bool)

(assert (=> b!1737909 (=> res!781130 e!1112213)))

(assert (=> b!1737909 (= res!781130 (not ((_ is ElementMatch!4723) (regex!3395 rule!422))))))

(assert (=> b!1737909 (= e!1112217 e!1112213)))

(declare-fun b!1737910 () Bool)

(declare-fun res!781127 () Bool)

(assert (=> b!1737910 (=> (not res!781127) (not e!1112215))))

(assert (=> b!1737910 (= res!781127 (isEmpty!12009 (tail!2595 lt!668862)))))

(declare-fun b!1737902 () Bool)

(declare-fun res!781123 () Bool)

(assert (=> b!1737902 (=> res!781123 e!1112213)))

(assert (=> b!1737902 (= res!781123 e!1112215)))

(declare-fun res!781125 () Bool)

(assert (=> b!1737902 (=> (not res!781125) (not e!1112215))))

(assert (=> b!1737902 (= res!781125 lt!668978)))

(declare-fun d!531350 () Bool)

(assert (=> d!531350 e!1112218))

(declare-fun c!283624 () Bool)

(assert (=> d!531350 (= c!283624 ((_ is EmptyExpr!4723) (regex!3395 rule!422)))))

(assert (=> d!531350 (= lt!668978 e!1112214)))

(declare-fun c!283623 () Bool)

(assert (=> d!531350 (= c!283623 (isEmpty!12009 lt!668862))))

(assert (=> d!531350 (validRegex!1904 (regex!3395 rule!422))))

(assert (=> d!531350 (= (matchR!2197 (regex!3395 rule!422) lt!668862) lt!668978)))

(assert (= (and d!531350 c!283623) b!1737908))

(assert (= (and d!531350 (not c!283623)) b!1737905))

(assert (= (and d!531350 c!283624) b!1737907))

(assert (= (and d!531350 (not c!283624)) b!1737899))

(assert (= (and b!1737899 c!283622) b!1737897))

(assert (= (and b!1737899 (not c!283622)) b!1737909))

(assert (= (and b!1737909 (not res!781130)) b!1737902))

(assert (= (and b!1737902 res!781125) b!1737898))

(assert (= (and b!1737898 res!781124) b!1737910))

(assert (= (and b!1737910 res!781127) b!1737906))

(assert (= (and b!1737902 (not res!781123)) b!1737901))

(assert (= (and b!1737901 res!781129) b!1737900))

(assert (= (and b!1737900 (not res!781128)) b!1737903))

(assert (= (and b!1737903 (not res!781126)) b!1737904))

(assert (= (or b!1737907 b!1737898 b!1737900) bm!110019))

(declare-fun m!2148205 () Bool)

(assert (=> d!531350 m!2148205))

(declare-fun m!2148207 () Bool)

(assert (=> d!531350 m!2148207))

(declare-fun m!2148209 () Bool)

(assert (=> b!1737904 m!2148209))

(declare-fun m!2148211 () Bool)

(assert (=> b!1737908 m!2148211))

(declare-fun m!2148213 () Bool)

(assert (=> b!1737903 m!2148213))

(assert (=> b!1737903 m!2148213))

(declare-fun m!2148215 () Bool)

(assert (=> b!1737903 m!2148215))

(assert (=> b!1737906 m!2148209))

(assert (=> b!1737910 m!2148213))

(assert (=> b!1737910 m!2148213))

(assert (=> b!1737910 m!2148215))

(assert (=> bm!110019 m!2148205))

(assert (=> b!1737905 m!2148209))

(assert (=> b!1737905 m!2148209))

(declare-fun m!2148217 () Bool)

(assert (=> b!1737905 m!2148217))

(assert (=> b!1737905 m!2148213))

(assert (=> b!1737905 m!2148217))

(assert (=> b!1737905 m!2148213))

(declare-fun m!2148219 () Bool)

(assert (=> b!1737905 m!2148219))

(assert (=> b!1737589 d!531350))

(declare-fun d!531352 () Bool)

(declare-fun res!781135 () Bool)

(declare-fun e!1112221 () Bool)

(assert (=> d!531352 (=> (not res!781135) (not e!1112221))))

(assert (=> d!531352 (= res!781135 (validRegex!1904 (regex!3395 rule!422)))))

(assert (=> d!531352 (= (ruleValid!894 thiss!24550 rule!422) e!1112221)))

(declare-fun b!1737915 () Bool)

(declare-fun res!781136 () Bool)

(assert (=> b!1737915 (=> (not res!781136) (not e!1112221))))

(assert (=> b!1737915 (= res!781136 (not (nullable!1430 (regex!3395 rule!422))))))

(declare-fun b!1737916 () Bool)

(assert (=> b!1737916 (= e!1112221 (not (= (tag!3729 rule!422) (String!21758 ""))))))

(assert (= (and d!531352 res!781135) b!1737915))

(assert (= (and b!1737915 res!781136) b!1737916))

(assert (=> d!531352 m!2148207))

(assert (=> b!1737915 m!2148211))

(assert (=> b!1737589 d!531352))

(declare-fun d!531354 () Bool)

(assert (=> d!531354 (ruleValid!894 thiss!24550 rule!422)))

(declare-fun lt!668981 () Unit!33035)

(declare-fun choose!10672 (LexerInterface!3024 Rule!6590 List!19153) Unit!33035)

(assert (=> d!531354 (= lt!668981 (choose!10672 thiss!24550 rule!422 rules!3447))))

(assert (=> d!531354 (contains!3417 rules!3447 rule!422)))

(assert (=> d!531354 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!418 thiss!24550 rule!422 rules!3447) lt!668981)))

(declare-fun bs!402884 () Bool)

(assert (= bs!402884 d!531354))

(assert (=> bs!402884 m!2147889))

(declare-fun m!2148221 () Bool)

(assert (=> bs!402884 m!2148221))

(assert (=> bs!402884 m!2147807))

(assert (=> b!1737589 d!531354))

(declare-fun b!1737917 () Bool)

(declare-fun res!781137 () Bool)

(declare-fun e!1112222 () Bool)

(assert (=> b!1737917 (=> res!781137 e!1112222)))

(assert (=> b!1737917 (= res!781137 (not ((_ is IntegerValue!10457) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))))))

(declare-fun e!1112224 () Bool)

(assert (=> b!1737917 (= e!1112224 e!1112222)))

(declare-fun b!1737918 () Bool)

(declare-fun e!1112223 () Bool)

(assert (=> b!1737918 (= e!1112223 e!1112224)))

(declare-fun c!283626 () Bool)

(assert (=> b!1737918 (= c!283626 ((_ is IntegerValue!10456) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))

(declare-fun b!1737919 () Bool)

(assert (=> b!1737919 (= e!1112224 (inv!17 (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))

(declare-fun d!531356 () Bool)

(declare-fun c!283625 () Bool)

(assert (=> d!531356 (= c!283625 ((_ is IntegerValue!10455) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))

(assert (=> d!531356 (= (inv!21 (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)) e!1112223)))

(declare-fun b!1737920 () Bool)

(assert (=> b!1737920 (= e!1112222 (inv!15 (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))

(declare-fun b!1737921 () Bool)

(assert (=> b!1737921 (= e!1112223 (inv!16 (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))

(assert (= (and d!531356 c!283625) b!1737921))

(assert (= (and d!531356 (not c!283625)) b!1737918))

(assert (= (and b!1737918 c!283626) b!1737919))

(assert (= (and b!1737918 (not c!283626)) b!1737917))

(assert (= (and b!1737917 (not res!781137)) b!1737920))

(declare-fun m!2148223 () Bool)

(assert (=> b!1737919 m!2148223))

(declare-fun m!2148225 () Bool)

(assert (=> b!1737920 m!2148225))

(declare-fun m!2148227 () Bool)

(assert (=> b!1737921 m!2148227))

(assert (=> tb!103791 d!531356))

(declare-fun d!531358 () Bool)

(assert (=> d!531358 (= (inv!24712 (tag!3729 (h!24484 rules!3447))) (= (mod (str.len (value!106429 (tag!3729 (h!24484 rules!3447)))) 2) 0))))

(assert (=> b!1737568 d!531358))

(declare-fun d!531360 () Bool)

(declare-fun res!781138 () Bool)

(declare-fun e!1112225 () Bool)

(assert (=> d!531360 (=> (not res!781138) (not e!1112225))))

(assert (=> d!531360 (= res!781138 (semiInverseModEq!1343 (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toValue!4902 (transformation!3395 (h!24484 rules!3447)))))))

(assert (=> d!531360 (= (inv!24717 (transformation!3395 (h!24484 rules!3447))) e!1112225)))

(declare-fun b!1737922 () Bool)

(assert (=> b!1737922 (= e!1112225 (equivClasses!1284 (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toValue!4902 (transformation!3395 (h!24484 rules!3447)))))))

(assert (= (and d!531360 res!781138) b!1737922))

(declare-fun m!2148229 () Bool)

(assert (=> d!531360 m!2148229))

(declare-fun m!2148231 () Bool)

(assert (=> b!1737922 m!2148231))

(assert (=> b!1737568 d!531360))

(declare-fun d!531362 () Bool)

(assert (=> d!531362 (not (matchR!2197 (regex!3395 (rule!5389 token!523)) lt!668841))))

(declare-fun lt!668984 () Unit!33035)

(declare-fun choose!10673 (LexerInterface!3024 List!19153 Rule!6590 List!19152 List!19152 Rule!6590) Unit!33035)

(assert (=> d!531362 (= lt!668984 (choose!10673 thiss!24550 rules!3447 (rule!5389 (_1!10773 lt!668881)) lt!668841 lt!668845 (rule!5389 token!523)))))

(assert (=> d!531362 (isPrefix!1636 lt!668841 lt!668845)))

(assert (=> d!531362 (= (lemmaMaxPrefNoSmallerRuleMatches!132 thiss!24550 rules!3447 (rule!5389 (_1!10773 lt!668881)) lt!668841 lt!668845 (rule!5389 token!523)) lt!668984)))

(declare-fun bs!402885 () Bool)

(assert (= bs!402885 d!531362))

(assert (=> bs!402885 m!2147787))

(declare-fun m!2148233 () Bool)

(assert (=> bs!402885 m!2148233))

(assert (=> bs!402885 m!2147857))

(assert (=> b!1737587 d!531362))

(declare-fun b!1737923 () Bool)

(declare-fun e!1112231 () Bool)

(declare-fun lt!668985 () Bool)

(assert (=> b!1737923 (= e!1112231 (not lt!668985))))

(declare-fun b!1737924 () Bool)

(declare-fun res!781140 () Bool)

(declare-fun e!1112229 () Bool)

(assert (=> b!1737924 (=> (not res!781140) (not e!1112229))))

(declare-fun call!110025 () Bool)

(assert (=> b!1737924 (= res!781140 (not call!110025))))

(declare-fun b!1737925 () Bool)

(declare-fun e!1112232 () Bool)

(assert (=> b!1737925 (= e!1112232 e!1112231)))

(declare-fun c!283627 () Bool)

(assert (=> b!1737925 (= c!283627 ((_ is EmptyLang!4723) (regex!3395 (rule!5389 token!523))))))

(declare-fun b!1737926 () Bool)

(declare-fun e!1112230 () Bool)

(declare-fun e!1112226 () Bool)

(assert (=> b!1737926 (= e!1112230 e!1112226)))

(declare-fun res!781144 () Bool)

(assert (=> b!1737926 (=> res!781144 e!1112226)))

(assert (=> b!1737926 (= res!781144 call!110025)))

(declare-fun b!1737927 () Bool)

(declare-fun e!1112227 () Bool)

(assert (=> b!1737927 (= e!1112227 e!1112230)))

(declare-fun res!781145 () Bool)

(assert (=> b!1737927 (=> (not res!781145) (not e!1112230))))

(assert (=> b!1737927 (= res!781145 (not lt!668985))))

(declare-fun b!1737929 () Bool)

(declare-fun res!781142 () Bool)

(assert (=> b!1737929 (=> res!781142 e!1112226)))

(assert (=> b!1737929 (= res!781142 (not (isEmpty!12009 (tail!2595 lt!668841))))))

(declare-fun b!1737930 () Bool)

(assert (=> b!1737930 (= e!1112226 (not (= (head!3972 lt!668841) (c!283562 (regex!3395 (rule!5389 token!523))))))))

(declare-fun b!1737931 () Bool)

(declare-fun e!1112228 () Bool)

(assert (=> b!1737931 (= e!1112228 (matchR!2197 (derivativeStep!1198 (regex!3395 (rule!5389 token!523)) (head!3972 lt!668841)) (tail!2595 lt!668841)))))

(declare-fun b!1737932 () Bool)

(assert (=> b!1737932 (= e!1112229 (= (head!3972 lt!668841) (c!283562 (regex!3395 (rule!5389 token!523)))))))

(declare-fun bm!110020 () Bool)

(assert (=> bm!110020 (= call!110025 (isEmpty!12009 lt!668841))))

(declare-fun b!1737933 () Bool)

(assert (=> b!1737933 (= e!1112232 (= lt!668985 call!110025))))

(declare-fun b!1737934 () Bool)

(assert (=> b!1737934 (= e!1112228 (nullable!1430 (regex!3395 (rule!5389 token!523))))))

(declare-fun b!1737935 () Bool)

(declare-fun res!781146 () Bool)

(assert (=> b!1737935 (=> res!781146 e!1112227)))

(assert (=> b!1737935 (= res!781146 (not ((_ is ElementMatch!4723) (regex!3395 (rule!5389 token!523)))))))

(assert (=> b!1737935 (= e!1112231 e!1112227)))

(declare-fun b!1737936 () Bool)

(declare-fun res!781143 () Bool)

(assert (=> b!1737936 (=> (not res!781143) (not e!1112229))))

(assert (=> b!1737936 (= res!781143 (isEmpty!12009 (tail!2595 lt!668841)))))

(declare-fun b!1737928 () Bool)

(declare-fun res!781139 () Bool)

(assert (=> b!1737928 (=> res!781139 e!1112227)))

(assert (=> b!1737928 (= res!781139 e!1112229)))

(declare-fun res!781141 () Bool)

(assert (=> b!1737928 (=> (not res!781141) (not e!1112229))))

(assert (=> b!1737928 (= res!781141 lt!668985)))

(declare-fun d!531364 () Bool)

(assert (=> d!531364 e!1112232))

(declare-fun c!283629 () Bool)

(assert (=> d!531364 (= c!283629 ((_ is EmptyExpr!4723) (regex!3395 (rule!5389 token!523))))))

(assert (=> d!531364 (= lt!668985 e!1112228)))

(declare-fun c!283628 () Bool)

(assert (=> d!531364 (= c!283628 (isEmpty!12009 lt!668841))))

(assert (=> d!531364 (validRegex!1904 (regex!3395 (rule!5389 token!523)))))

(assert (=> d!531364 (= (matchR!2197 (regex!3395 (rule!5389 token!523)) lt!668841) lt!668985)))

(assert (= (and d!531364 c!283628) b!1737934))

(assert (= (and d!531364 (not c!283628)) b!1737931))

(assert (= (and d!531364 c!283629) b!1737933))

(assert (= (and d!531364 (not c!283629)) b!1737925))

(assert (= (and b!1737925 c!283627) b!1737923))

(assert (= (and b!1737925 (not c!283627)) b!1737935))

(assert (= (and b!1737935 (not res!781146)) b!1737928))

(assert (= (and b!1737928 res!781141) b!1737924))

(assert (= (and b!1737924 res!781140) b!1737936))

(assert (= (and b!1737936 res!781143) b!1737932))

(assert (= (and b!1737928 (not res!781139)) b!1737927))

(assert (= (and b!1737927 res!781145) b!1737926))

(assert (= (and b!1737926 (not res!781144)) b!1737929))

(assert (= (and b!1737929 (not res!781142)) b!1737930))

(assert (= (or b!1737933 b!1737924 b!1737926) bm!110020))

(assert (=> d!531364 m!2148155))

(declare-fun m!2148235 () Bool)

(assert (=> d!531364 m!2148235))

(assert (=> b!1737930 m!2148159))

(declare-fun m!2148237 () Bool)

(assert (=> b!1737934 m!2148237))

(assert (=> b!1737929 m!2148163))

(assert (=> b!1737929 m!2148163))

(assert (=> b!1737929 m!2148165))

(assert (=> b!1737932 m!2148159))

(assert (=> b!1737936 m!2148163))

(assert (=> b!1737936 m!2148163))

(assert (=> b!1737936 m!2148165))

(assert (=> bm!110020 m!2148155))

(assert (=> b!1737931 m!2148159))

(assert (=> b!1737931 m!2148159))

(declare-fun m!2148239 () Bool)

(assert (=> b!1737931 m!2148239))

(assert (=> b!1737931 m!2148163))

(assert (=> b!1737931 m!2148239))

(assert (=> b!1737931 m!2148163))

(declare-fun m!2148241 () Bool)

(assert (=> b!1737931 m!2148241))

(assert (=> b!1737587 d!531364))

(declare-fun d!531366 () Bool)

(declare-fun res!781151 () Bool)

(declare-fun e!1112235 () Bool)

(assert (=> d!531366 (=> (not res!781151) (not e!1112235))))

(assert (=> d!531366 (= res!781151 (not (isEmpty!12009 (originalCharacters!4209 token!523))))))

(assert (=> d!531366 (= (inv!24718 token!523) e!1112235)))

(declare-fun b!1737941 () Bool)

(declare-fun res!781152 () Bool)

(assert (=> b!1737941 (=> (not res!781152) (not e!1112235))))

(assert (=> b!1737941 (= res!781152 (= (originalCharacters!4209 token!523) (list!7716 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 token!523))) (value!106430 token!523)))))))

(declare-fun b!1737942 () Bool)

(assert (=> b!1737942 (= e!1112235 (= (size!15166 token!523) (size!15168 (originalCharacters!4209 token!523))))))

(assert (= (and d!531366 res!781151) b!1737941))

(assert (= (and b!1737941 res!781152) b!1737942))

(declare-fun b_lambda!55619 () Bool)

(assert (=> (not b_lambda!55619) (not b!1737941)))

(declare-fun t!161540 () Bool)

(declare-fun tb!103821 () Bool)

(assert (=> (and b!1737561 (= (toChars!4761 (transformation!3395 (rule!5389 token!523))) (toChars!4761 (transformation!3395 (rule!5389 token!523)))) t!161540) tb!103821))

(declare-fun b!1737943 () Bool)

(declare-fun e!1112236 () Bool)

(declare-fun tp!495078 () Bool)

(assert (=> b!1737943 (= e!1112236 (and (inv!24719 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 token!523))) (value!106430 token!523)))) tp!495078))))

(declare-fun result!124852 () Bool)

(assert (=> tb!103821 (= result!124852 (and (inv!24720 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 token!523))) (value!106430 token!523))) e!1112236))))

(assert (= tb!103821 b!1737943))

(declare-fun m!2148243 () Bool)

(assert (=> b!1737943 m!2148243))

(declare-fun m!2148245 () Bool)

(assert (=> tb!103821 m!2148245))

(assert (=> b!1737941 t!161540))

(declare-fun b_and!128903 () Bool)

(assert (= b_and!128897 (and (=> t!161540 result!124852) b_and!128903)))

(declare-fun t!161542 () Bool)

(declare-fun tb!103823 () Bool)

(assert (=> (and b!1737557 (= (toChars!4761 (transformation!3395 rule!422)) (toChars!4761 (transformation!3395 (rule!5389 token!523)))) t!161542) tb!103823))

(declare-fun result!124854 () Bool)

(assert (= result!124854 result!124852))

(assert (=> b!1737941 t!161542))

(declare-fun b_and!128905 () Bool)

(assert (= b_and!128899 (and (=> t!161542 result!124854) b_and!128905)))

(declare-fun t!161544 () Bool)

(declare-fun tb!103825 () Bool)

(assert (=> (and b!1737567 (= (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toChars!4761 (transformation!3395 (rule!5389 token!523)))) t!161544) tb!103825))

(declare-fun result!124856 () Bool)

(assert (= result!124856 result!124852))

(assert (=> b!1737941 t!161544))

(declare-fun b_and!128907 () Bool)

(assert (= b_and!128901 (and (=> t!161544 result!124856) b_and!128907)))

(declare-fun m!2148247 () Bool)

(assert (=> d!531366 m!2148247))

(declare-fun m!2148249 () Bool)

(assert (=> b!1737941 m!2148249))

(assert (=> b!1737941 m!2148249))

(declare-fun m!2148251 () Bool)

(assert (=> b!1737941 m!2148251))

(declare-fun m!2148253 () Bool)

(assert (=> b!1737942 m!2148253))

(assert (=> start!170938 d!531366))

(declare-fun d!531368 () Bool)

(assert (=> d!531368 (not (matchR!2197 (regex!3395 (rule!5389 (_1!10773 lt!668881))) lt!668862))))

(declare-fun lt!668986 () Unit!33035)

(assert (=> d!531368 (= lt!668986 (choose!10673 thiss!24550 rules!3447 (rule!5389 token!523) lt!668862 lt!668862 (rule!5389 (_1!10773 lt!668881))))))

(assert (=> d!531368 (isPrefix!1636 lt!668862 lt!668862)))

(assert (=> d!531368 (= (lemmaMaxPrefNoSmallerRuleMatches!132 thiss!24550 rules!3447 (rule!5389 token!523) lt!668862 lt!668862 (rule!5389 (_1!10773 lt!668881))) lt!668986)))

(declare-fun bs!402886 () Bool)

(assert (= bs!402886 d!531368))

(assert (=> bs!402886 m!2147805))

(declare-fun m!2148255 () Bool)

(assert (=> bs!402886 m!2148255))

(declare-fun m!2148257 () Bool)

(assert (=> bs!402886 m!2148257))

(assert (=> b!1737566 d!531368))

(declare-fun b!1737944 () Bool)

(declare-fun e!1112242 () Bool)

(declare-fun lt!668987 () Bool)

(assert (=> b!1737944 (= e!1112242 (not lt!668987))))

(declare-fun b!1737945 () Bool)

(declare-fun res!781154 () Bool)

(declare-fun e!1112240 () Bool)

(assert (=> b!1737945 (=> (not res!781154) (not e!1112240))))

(declare-fun call!110026 () Bool)

(assert (=> b!1737945 (= res!781154 (not call!110026))))

(declare-fun b!1737946 () Bool)

(declare-fun e!1112243 () Bool)

(assert (=> b!1737946 (= e!1112243 e!1112242)))

(declare-fun c!283630 () Bool)

(assert (=> b!1737946 (= c!283630 ((_ is EmptyLang!4723) (regex!3395 (rule!5389 (_1!10773 lt!668881)))))))

(declare-fun b!1737947 () Bool)

(declare-fun e!1112241 () Bool)

(declare-fun e!1112237 () Bool)

(assert (=> b!1737947 (= e!1112241 e!1112237)))

(declare-fun res!781158 () Bool)

(assert (=> b!1737947 (=> res!781158 e!1112237)))

(assert (=> b!1737947 (= res!781158 call!110026)))

(declare-fun b!1737948 () Bool)

(declare-fun e!1112238 () Bool)

(assert (=> b!1737948 (= e!1112238 e!1112241)))

(declare-fun res!781159 () Bool)

(assert (=> b!1737948 (=> (not res!781159) (not e!1112241))))

(assert (=> b!1737948 (= res!781159 (not lt!668987))))

(declare-fun b!1737950 () Bool)

(declare-fun res!781156 () Bool)

(assert (=> b!1737950 (=> res!781156 e!1112237)))

(assert (=> b!1737950 (= res!781156 (not (isEmpty!12009 (tail!2595 lt!668862))))))

(declare-fun b!1737951 () Bool)

(assert (=> b!1737951 (= e!1112237 (not (= (head!3972 lt!668862) (c!283562 (regex!3395 (rule!5389 (_1!10773 lt!668881)))))))))

(declare-fun b!1737952 () Bool)

(declare-fun e!1112239 () Bool)

(assert (=> b!1737952 (= e!1112239 (matchR!2197 (derivativeStep!1198 (regex!3395 (rule!5389 (_1!10773 lt!668881))) (head!3972 lt!668862)) (tail!2595 lt!668862)))))

(declare-fun b!1737953 () Bool)

(assert (=> b!1737953 (= e!1112240 (= (head!3972 lt!668862) (c!283562 (regex!3395 (rule!5389 (_1!10773 lt!668881))))))))

(declare-fun bm!110021 () Bool)

(assert (=> bm!110021 (= call!110026 (isEmpty!12009 lt!668862))))

(declare-fun b!1737954 () Bool)

(assert (=> b!1737954 (= e!1112243 (= lt!668987 call!110026))))

(declare-fun b!1737955 () Bool)

(assert (=> b!1737955 (= e!1112239 (nullable!1430 (regex!3395 (rule!5389 (_1!10773 lt!668881)))))))

(declare-fun b!1737956 () Bool)

(declare-fun res!781160 () Bool)

(assert (=> b!1737956 (=> res!781160 e!1112238)))

(assert (=> b!1737956 (= res!781160 (not ((_ is ElementMatch!4723) (regex!3395 (rule!5389 (_1!10773 lt!668881))))))))

(assert (=> b!1737956 (= e!1112242 e!1112238)))

(declare-fun b!1737957 () Bool)

(declare-fun res!781157 () Bool)

(assert (=> b!1737957 (=> (not res!781157) (not e!1112240))))

(assert (=> b!1737957 (= res!781157 (isEmpty!12009 (tail!2595 lt!668862)))))

(declare-fun b!1737949 () Bool)

(declare-fun res!781153 () Bool)

(assert (=> b!1737949 (=> res!781153 e!1112238)))

(assert (=> b!1737949 (= res!781153 e!1112240)))

(declare-fun res!781155 () Bool)

(assert (=> b!1737949 (=> (not res!781155) (not e!1112240))))

(assert (=> b!1737949 (= res!781155 lt!668987)))

(declare-fun d!531370 () Bool)

(assert (=> d!531370 e!1112243))

(declare-fun c!283632 () Bool)

(assert (=> d!531370 (= c!283632 ((_ is EmptyExpr!4723) (regex!3395 (rule!5389 (_1!10773 lt!668881)))))))

(assert (=> d!531370 (= lt!668987 e!1112239)))

(declare-fun c!283631 () Bool)

(assert (=> d!531370 (= c!283631 (isEmpty!12009 lt!668862))))

(assert (=> d!531370 (validRegex!1904 (regex!3395 (rule!5389 (_1!10773 lt!668881))))))

(assert (=> d!531370 (= (matchR!2197 (regex!3395 (rule!5389 (_1!10773 lt!668881))) lt!668862) lt!668987)))

(assert (= (and d!531370 c!283631) b!1737955))

(assert (= (and d!531370 (not c!283631)) b!1737952))

(assert (= (and d!531370 c!283632) b!1737954))

(assert (= (and d!531370 (not c!283632)) b!1737946))

(assert (= (and b!1737946 c!283630) b!1737944))

(assert (= (and b!1737946 (not c!283630)) b!1737956))

(assert (= (and b!1737956 (not res!781160)) b!1737949))

(assert (= (and b!1737949 res!781155) b!1737945))

(assert (= (and b!1737945 res!781154) b!1737957))

(assert (= (and b!1737957 res!781157) b!1737953))

(assert (= (and b!1737949 (not res!781153)) b!1737948))

(assert (= (and b!1737948 res!781159) b!1737947))

(assert (= (and b!1737947 (not res!781158)) b!1737950))

(assert (= (and b!1737950 (not res!781156)) b!1737951))

(assert (= (or b!1737954 b!1737945 b!1737947) bm!110021))

(assert (=> d!531370 m!2148205))

(assert (=> d!531370 m!2148157))

(assert (=> b!1737951 m!2148209))

(assert (=> b!1737955 m!2148161))

(assert (=> b!1737950 m!2148213))

(assert (=> b!1737950 m!2148213))

(assert (=> b!1737950 m!2148215))

(assert (=> b!1737953 m!2148209))

(assert (=> b!1737957 m!2148213))

(assert (=> b!1737957 m!2148213))

(assert (=> b!1737957 m!2148215))

(assert (=> bm!110021 m!2148205))

(assert (=> b!1737952 m!2148209))

(assert (=> b!1737952 m!2148209))

(declare-fun m!2148259 () Bool)

(assert (=> b!1737952 m!2148259))

(assert (=> b!1737952 m!2148213))

(assert (=> b!1737952 m!2148259))

(assert (=> b!1737952 m!2148213))

(declare-fun m!2148261 () Bool)

(assert (=> b!1737952 m!2148261))

(assert (=> b!1737566 d!531370))

(declare-fun d!531372 () Bool)

(assert (=> d!531372 (not (matchR!2197 (regex!3395 rule!422) lt!668862))))

(declare-fun lt!668990 () Unit!33035)

(declare-fun choose!10675 (LexerInterface!3024 List!19153 Rule!6590 List!19152 List!19152 List!19152 Rule!6590) Unit!33035)

(assert (=> d!531372 (= lt!668990 (choose!10675 thiss!24550 rules!3447 (rule!5389 (_1!10773 lt!668881)) lt!668841 lt!668845 lt!668862 rule!422))))

(assert (=> d!531372 (isPrefix!1636 lt!668841 lt!668845)))

(assert (=> d!531372 (= (lemmaMaxPrefixOutputsMaxPrefix!192 thiss!24550 rules!3447 (rule!5389 (_1!10773 lt!668881)) lt!668841 lt!668845 lt!668862 rule!422) lt!668990)))

(declare-fun bs!402887 () Bool)

(assert (= bs!402887 d!531372))

(assert (=> bs!402887 m!2147887))

(declare-fun m!2148263 () Bool)

(assert (=> bs!402887 m!2148263))

(assert (=> bs!402887 m!2147857))

(assert (=> b!1737586 d!531372))

(declare-fun d!531374 () Bool)

(assert (=> d!531374 (= (inv!24720 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))) (isBalanced!1984 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))))

(declare-fun bs!402888 () Bool)

(assert (= bs!402888 d!531374))

(declare-fun m!2148265 () Bool)

(assert (=> bs!402888 m!2148265))

(assert (=> tb!103785 d!531374))

(declare-fun d!531376 () Bool)

(assert (=> d!531376 (= (list!7716 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))) (list!7719 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))))))

(declare-fun bs!402889 () Bool)

(assert (= bs!402889 d!531376))

(declare-fun m!2148267 () Bool)

(assert (=> bs!402889 m!2148267))

(assert (=> b!1737574 d!531376))

(declare-fun bs!402890 () Bool)

(declare-fun d!531378 () Bool)

(assert (= bs!402890 (and d!531378 b!1737552)))

(declare-fun lambda!69530 () Int)

(assert (=> bs!402890 (= lambda!69530 lambda!69524)))

(declare-fun b!1737962 () Bool)

(declare-fun e!1112246 () Bool)

(assert (=> b!1737962 (= e!1112246 true)))

(assert (=> d!531378 e!1112246))

(assert (= d!531378 b!1737962))

(assert (=> b!1737962 (< (dynLambda!8986 order!11871 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) (dynLambda!8987 order!11873 lambda!69530))))

(assert (=> b!1737962 (< (dynLambda!8988 order!11875 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) (dynLambda!8987 order!11873 lambda!69530))))

(assert (=> d!531378 (= (list!7716 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))) (list!7716 lt!668854))))

(declare-fun lt!668993 () Unit!33035)

(declare-fun ForallOf!286 (Int BalanceConc!12638) Unit!33035)

(assert (=> d!531378 (= lt!668993 (ForallOf!286 lambda!69530 lt!668854))))

(assert (=> d!531378 (= (lemmaSemiInverse!541 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) lt!668854) lt!668993)))

(declare-fun b_lambda!55621 () Bool)

(assert (=> (not b_lambda!55621) (not d!531378)))

(assert (=> d!531378 t!161501))

(declare-fun b_and!128909 () Bool)

(assert (= b_and!128903 (and (=> t!161501 result!124812) b_and!128909)))

(assert (=> d!531378 t!161503))

(declare-fun b_and!128911 () Bool)

(assert (= b_and!128905 (and (=> t!161503 result!124816) b_and!128911)))

(assert (=> d!531378 t!161505))

(declare-fun b_and!128913 () Bool)

(assert (= b_and!128907 (and (=> t!161505 result!124818) b_and!128913)))

(declare-fun b_lambda!55623 () Bool)

(assert (=> (not b_lambda!55623) (not d!531378)))

(assert (=> d!531378 t!161507))

(declare-fun b_and!128915 () Bool)

(assert (= b_and!128885 (and (=> t!161507 result!124820) b_and!128915)))

(assert (=> d!531378 t!161509))

(declare-fun b_and!128917 () Bool)

(assert (= b_and!128887 (and (=> t!161509 result!124824) b_and!128917)))

(assert (=> d!531378 t!161511))

(declare-fun b_and!128919 () Bool)

(assert (= b_and!128889 (and (=> t!161511 result!124826) b_and!128919)))

(assert (=> d!531378 m!2147845))

(assert (=> d!531378 m!2147867))

(assert (=> d!531378 m!2147869))

(declare-fun m!2148269 () Bool)

(assert (=> d!531378 m!2148269))

(assert (=> d!531378 m!2147869))

(assert (=> d!531378 m!2147871))

(assert (=> d!531378 m!2147867))

(assert (=> b!1737574 d!531378))

(declare-fun d!531380 () Bool)

(declare-fun lt!668994 () Int)

(assert (=> d!531380 (= lt!668994 (size!15168 (list!7716 lt!668866)))))

(assert (=> d!531380 (= lt!668994 (size!15169 (c!283563 lt!668866)))))

(assert (=> d!531380 (= (size!15167 lt!668866) lt!668994)))

(declare-fun bs!402891 () Bool)

(assert (= bs!402891 d!531380))

(assert (=> bs!402891 m!2147863))

(assert (=> bs!402891 m!2147863))

(declare-fun m!2148271 () Bool)

(assert (=> bs!402891 m!2148271))

(declare-fun m!2148273 () Bool)

(assert (=> bs!402891 m!2148273))

(assert (=> b!1737553 d!531380))

(declare-fun b!1737963 () Bool)

(declare-fun e!1112252 () Bool)

(declare-fun lt!668995 () Bool)

(assert (=> b!1737963 (= e!1112252 (not lt!668995))))

(declare-fun b!1737964 () Bool)

(declare-fun res!781162 () Bool)

(declare-fun e!1112250 () Bool)

(assert (=> b!1737964 (=> (not res!781162) (not e!1112250))))

(declare-fun call!110027 () Bool)

(assert (=> b!1737964 (= res!781162 (not call!110027))))

(declare-fun b!1737965 () Bool)

(declare-fun e!1112253 () Bool)

(assert (=> b!1737965 (= e!1112253 e!1112252)))

(declare-fun c!283634 () Bool)

(assert (=> b!1737965 (= c!283634 ((_ is EmptyLang!4723) lt!668882))))

(declare-fun b!1737966 () Bool)

(declare-fun e!1112251 () Bool)

(declare-fun e!1112247 () Bool)

(assert (=> b!1737966 (= e!1112251 e!1112247)))

(declare-fun res!781166 () Bool)

(assert (=> b!1737966 (=> res!781166 e!1112247)))

(assert (=> b!1737966 (= res!781166 call!110027)))

(declare-fun b!1737967 () Bool)

(declare-fun e!1112248 () Bool)

(assert (=> b!1737967 (= e!1112248 e!1112251)))

(declare-fun res!781167 () Bool)

(assert (=> b!1737967 (=> (not res!781167) (not e!1112251))))

(assert (=> b!1737967 (= res!781167 (not lt!668995))))

(declare-fun b!1737969 () Bool)

(declare-fun res!781164 () Bool)

(assert (=> b!1737969 (=> res!781164 e!1112247)))

(assert (=> b!1737969 (= res!781164 (not (isEmpty!12009 (tail!2595 lt!668862))))))

(declare-fun b!1737970 () Bool)

(assert (=> b!1737970 (= e!1112247 (not (= (head!3972 lt!668862) (c!283562 lt!668882))))))

(declare-fun b!1737971 () Bool)

(declare-fun e!1112249 () Bool)

(assert (=> b!1737971 (= e!1112249 (matchR!2197 (derivativeStep!1198 lt!668882 (head!3972 lt!668862)) (tail!2595 lt!668862)))))

(declare-fun b!1737972 () Bool)

(assert (=> b!1737972 (= e!1112250 (= (head!3972 lt!668862) (c!283562 lt!668882)))))

(declare-fun bm!110022 () Bool)

(assert (=> bm!110022 (= call!110027 (isEmpty!12009 lt!668862))))

(declare-fun b!1737973 () Bool)

(assert (=> b!1737973 (= e!1112253 (= lt!668995 call!110027))))

(declare-fun b!1737974 () Bool)

(assert (=> b!1737974 (= e!1112249 (nullable!1430 lt!668882))))

(declare-fun b!1737975 () Bool)

(declare-fun res!781168 () Bool)

(assert (=> b!1737975 (=> res!781168 e!1112248)))

(assert (=> b!1737975 (= res!781168 (not ((_ is ElementMatch!4723) lt!668882)))))

(assert (=> b!1737975 (= e!1112252 e!1112248)))

(declare-fun b!1737976 () Bool)

(declare-fun res!781165 () Bool)

(assert (=> b!1737976 (=> (not res!781165) (not e!1112250))))

(assert (=> b!1737976 (= res!781165 (isEmpty!12009 (tail!2595 lt!668862)))))

(declare-fun b!1737968 () Bool)

(declare-fun res!781161 () Bool)

(assert (=> b!1737968 (=> res!781161 e!1112248)))

(assert (=> b!1737968 (= res!781161 e!1112250)))

(declare-fun res!781163 () Bool)

(assert (=> b!1737968 (=> (not res!781163) (not e!1112250))))

(assert (=> b!1737968 (= res!781163 lt!668995)))

(declare-fun d!531382 () Bool)

(assert (=> d!531382 e!1112253))

(declare-fun c!283636 () Bool)

(assert (=> d!531382 (= c!283636 ((_ is EmptyExpr!4723) lt!668882))))

(assert (=> d!531382 (= lt!668995 e!1112249)))

(declare-fun c!283635 () Bool)

(assert (=> d!531382 (= c!283635 (isEmpty!12009 lt!668862))))

(assert (=> d!531382 (validRegex!1904 lt!668882)))

(assert (=> d!531382 (= (matchR!2197 lt!668882 lt!668862) lt!668995)))

(assert (= (and d!531382 c!283635) b!1737974))

(assert (= (and d!531382 (not c!283635)) b!1737971))

(assert (= (and d!531382 c!283636) b!1737973))

(assert (= (and d!531382 (not c!283636)) b!1737965))

(assert (= (and b!1737965 c!283634) b!1737963))

(assert (= (and b!1737965 (not c!283634)) b!1737975))

(assert (= (and b!1737975 (not res!781168)) b!1737968))

(assert (= (and b!1737968 res!781163) b!1737964))

(assert (= (and b!1737964 res!781162) b!1737976))

(assert (= (and b!1737976 res!781165) b!1737972))

(assert (= (and b!1737968 (not res!781161)) b!1737967))

(assert (= (and b!1737967 res!781167) b!1737966))

(assert (= (and b!1737966 (not res!781166)) b!1737969))

(assert (= (and b!1737969 (not res!781164)) b!1737970))

(assert (= (or b!1737973 b!1737964 b!1737966) bm!110022))

(assert (=> d!531382 m!2148205))

(declare-fun m!2148275 () Bool)

(assert (=> d!531382 m!2148275))

(assert (=> b!1737970 m!2148209))

(declare-fun m!2148277 () Bool)

(assert (=> b!1737974 m!2148277))

(assert (=> b!1737969 m!2148213))

(assert (=> b!1737969 m!2148213))

(assert (=> b!1737969 m!2148215))

(assert (=> b!1737972 m!2148209))

(assert (=> b!1737976 m!2148213))

(assert (=> b!1737976 m!2148213))

(assert (=> b!1737976 m!2148215))

(assert (=> bm!110022 m!2148205))

(assert (=> b!1737971 m!2148209))

(assert (=> b!1737971 m!2148209))

(declare-fun m!2148279 () Bool)

(assert (=> b!1737971 m!2148279))

(assert (=> b!1737971 m!2148213))

(assert (=> b!1737971 m!2148279))

(assert (=> b!1737971 m!2148213))

(declare-fun m!2148281 () Bool)

(assert (=> b!1737971 m!2148281))

(assert (=> b!1737553 d!531382))

(declare-fun d!531384 () Bool)

(assert (=> d!531384 (matchR!2197 (rulesRegex!753 thiss!24550 rules!3447) (list!7716 (charsOf!2044 token!523)))))

(declare-fun lt!668998 () Unit!33035)

(declare-fun choose!10677 (LexerInterface!3024 List!19153 List!19152 Token!6356 Rule!6590 List!19152) Unit!33035)

(assert (=> d!531384 (= lt!668998 (choose!10677 thiss!24550 rules!3447 lt!668862 token!523 rule!422 Nil!19082))))

(assert (=> d!531384 (not (isEmpty!12010 rules!3447))))

(assert (=> d!531384 (= (lemmaMaxPrefixThenMatchesRulesRegex!144 thiss!24550 rules!3447 lt!668862 token!523 rule!422 Nil!19082) lt!668998)))

(declare-fun bs!402892 () Bool)

(assert (= bs!402892 d!531384))

(assert (=> bs!402892 m!2147761))

(assert (=> bs!402892 m!2147823))

(assert (=> bs!402892 m!2147865))

(assert (=> bs!402892 m!2147865))

(declare-fun m!2148283 () Bool)

(assert (=> bs!402892 m!2148283))

(declare-fun m!2148285 () Bool)

(assert (=> bs!402892 m!2148285))

(assert (=> bs!402892 m!2147761))

(assert (=> bs!402892 m!2148283))

(declare-fun m!2148287 () Bool)

(assert (=> bs!402892 m!2148287))

(assert (=> b!1737553 d!531384))

(declare-fun d!531386 () Bool)

(declare-fun e!1112261 () Bool)

(assert (=> d!531386 e!1112261))

(declare-fun res!781177 () Bool)

(assert (=> d!531386 (=> res!781177 e!1112261)))

(declare-fun lt!669001 () Bool)

(assert (=> d!531386 (= res!781177 (not lt!669001))))

(declare-fun e!1112260 () Bool)

(assert (=> d!531386 (= lt!669001 e!1112260)))

(declare-fun res!781178 () Bool)

(assert (=> d!531386 (=> res!781178 e!1112260)))

(assert (=> d!531386 (= res!781178 ((_ is Nil!19082) (++!5220 lt!668862 (Cons!19082 (head!3972 lt!668876) Nil!19082))))))

(assert (=> d!531386 (= (isPrefix!1636 (++!5220 lt!668862 (Cons!19082 (head!3972 lt!668876) Nil!19082)) lt!668845) lt!669001)))

(declare-fun b!1737988 () Bool)

(assert (=> b!1737988 (= e!1112261 (>= (size!15168 lt!668845) (size!15168 (++!5220 lt!668862 (Cons!19082 (head!3972 lt!668876) Nil!19082)))))))

(declare-fun b!1737985 () Bool)

(declare-fun e!1112262 () Bool)

(assert (=> b!1737985 (= e!1112260 e!1112262)))

(declare-fun res!781180 () Bool)

(assert (=> b!1737985 (=> (not res!781180) (not e!1112262))))

(assert (=> b!1737985 (= res!781180 (not ((_ is Nil!19082) lt!668845)))))

(declare-fun b!1737986 () Bool)

(declare-fun res!781179 () Bool)

(assert (=> b!1737986 (=> (not res!781179) (not e!1112262))))

(assert (=> b!1737986 (= res!781179 (= (head!3972 (++!5220 lt!668862 (Cons!19082 (head!3972 lt!668876) Nil!19082))) (head!3972 lt!668845)))))

(declare-fun b!1737987 () Bool)

(assert (=> b!1737987 (= e!1112262 (isPrefix!1636 (tail!2595 (++!5220 lt!668862 (Cons!19082 (head!3972 lt!668876) Nil!19082))) (tail!2595 lt!668845)))))

(assert (= (and d!531386 (not res!781178)) b!1737985))

(assert (= (and b!1737985 res!781180) b!1737986))

(assert (= (and b!1737986 res!781179) b!1737987))

(assert (= (and d!531386 (not res!781177)) b!1737988))

(declare-fun m!2148289 () Bool)

(assert (=> b!1737988 m!2148289))

(assert (=> b!1737988 m!2147735))

(declare-fun m!2148291 () Bool)

(assert (=> b!1737988 m!2148291))

(assert (=> b!1737986 m!2147735))

(declare-fun m!2148293 () Bool)

(assert (=> b!1737986 m!2148293))

(declare-fun m!2148295 () Bool)

(assert (=> b!1737986 m!2148295))

(assert (=> b!1737987 m!2147735))

(declare-fun m!2148297 () Bool)

(assert (=> b!1737987 m!2148297))

(declare-fun m!2148299 () Bool)

(assert (=> b!1737987 m!2148299))

(assert (=> b!1737987 m!2148297))

(assert (=> b!1737987 m!2148299))

(declare-fun m!2148301 () Bool)

(assert (=> b!1737987 m!2148301))

(assert (=> b!1737551 d!531386))

(declare-fun d!531388 () Bool)

(assert (=> d!531388 (isPrefix!1636 (++!5220 lt!668862 (Cons!19082 (head!3972 (getSuffix!830 lt!668845 lt!668862)) Nil!19082)) lt!668845)))

(declare-fun lt!669004 () Unit!33035)

(declare-fun choose!10680 (List!19152 List!19152) Unit!33035)

(assert (=> d!531388 (= lt!669004 (choose!10680 lt!668862 lt!668845))))

(assert (=> d!531388 (isPrefix!1636 lt!668862 lt!668845)))

(assert (=> d!531388 (= (lemmaAddHeadSuffixToPrefixStillPrefix!231 lt!668862 lt!668845) lt!669004)))

(declare-fun bs!402893 () Bool)

(assert (= bs!402893 d!531388))

(assert (=> bs!402893 m!2147839))

(assert (=> bs!402893 m!2147751))

(declare-fun m!2148303 () Bool)

(assert (=> bs!402893 m!2148303))

(declare-fun m!2148305 () Bool)

(assert (=> bs!402893 m!2148305))

(assert (=> bs!402893 m!2147751))

(assert (=> bs!402893 m!2148305))

(declare-fun m!2148307 () Bool)

(assert (=> bs!402893 m!2148307))

(declare-fun m!2148309 () Bool)

(assert (=> bs!402893 m!2148309))

(assert (=> b!1737551 d!531388))

(declare-fun d!531390 () Bool)

(declare-fun lt!669007 () List!19152)

(assert (=> d!531390 (= (++!5220 lt!668862 lt!669007) lt!668845)))

(declare-fun e!1112265 () List!19152)

(assert (=> d!531390 (= lt!669007 e!1112265)))

(declare-fun c!283639 () Bool)

(assert (=> d!531390 (= c!283639 ((_ is Cons!19082) lt!668862))))

(assert (=> d!531390 (>= (size!15168 lt!668845) (size!15168 lt!668862))))

(assert (=> d!531390 (= (getSuffix!830 lt!668845 lt!668862) lt!669007)))

(declare-fun b!1737993 () Bool)

(assert (=> b!1737993 (= e!1112265 (getSuffix!830 (tail!2595 lt!668845) (t!161519 lt!668862)))))

(declare-fun b!1737994 () Bool)

(assert (=> b!1737994 (= e!1112265 lt!668845)))

(assert (= (and d!531390 c!283639) b!1737993))

(assert (= (and d!531390 (not c!283639)) b!1737994))

(declare-fun m!2148311 () Bool)

(assert (=> d!531390 m!2148311))

(assert (=> d!531390 m!2148289))

(declare-fun m!2148313 () Bool)

(assert (=> d!531390 m!2148313))

(assert (=> b!1737993 m!2148299))

(assert (=> b!1737993 m!2148299))

(declare-fun m!2148315 () Bool)

(assert (=> b!1737993 m!2148315))

(assert (=> b!1737551 d!531390))

(declare-fun d!531392 () Bool)

(declare-fun e!1112267 () Bool)

(assert (=> d!531392 e!1112267))

(declare-fun res!781181 () Bool)

(assert (=> d!531392 (=> res!781181 e!1112267)))

(declare-fun lt!669008 () Bool)

(assert (=> d!531392 (= res!781181 (not lt!669008))))

(declare-fun e!1112266 () Bool)

(assert (=> d!531392 (= lt!669008 e!1112266)))

(declare-fun res!781182 () Bool)

(assert (=> d!531392 (=> res!781182 e!1112266)))

(assert (=> d!531392 (= res!781182 ((_ is Nil!19082) lt!668853))))

(assert (=> d!531392 (= (isPrefix!1636 lt!668853 lt!668841) lt!669008)))

(declare-fun b!1737998 () Bool)

(assert (=> b!1737998 (= e!1112267 (>= (size!15168 lt!668841) (size!15168 lt!668853)))))

(declare-fun b!1737995 () Bool)

(declare-fun e!1112268 () Bool)

(assert (=> b!1737995 (= e!1112266 e!1112268)))

(declare-fun res!781184 () Bool)

(assert (=> b!1737995 (=> (not res!781184) (not e!1112268))))

(assert (=> b!1737995 (= res!781184 (not ((_ is Nil!19082) lt!668841)))))

(declare-fun b!1737996 () Bool)

(declare-fun res!781183 () Bool)

(assert (=> b!1737996 (=> (not res!781183) (not e!1112268))))

(assert (=> b!1737996 (= res!781183 (= (head!3972 lt!668853) (head!3972 lt!668841)))))

(declare-fun b!1737997 () Bool)

(assert (=> b!1737997 (= e!1112268 (isPrefix!1636 (tail!2595 lt!668853) (tail!2595 lt!668841)))))

(assert (= (and d!531392 (not res!781182)) b!1737995))

(assert (= (and b!1737995 res!781184) b!1737996))

(assert (= (and b!1737996 res!781183) b!1737997))

(assert (= (and d!531392 (not res!781181)) b!1737998))

(assert (=> b!1737998 m!2147773))

(declare-fun m!2148317 () Bool)

(assert (=> b!1737998 m!2148317))

(declare-fun m!2148319 () Bool)

(assert (=> b!1737996 m!2148319))

(assert (=> b!1737996 m!2148159))

(declare-fun m!2148321 () Bool)

(assert (=> b!1737997 m!2148321))

(assert (=> b!1737997 m!2148163))

(assert (=> b!1737997 m!2148321))

(assert (=> b!1737997 m!2148163))

(declare-fun m!2148323 () Bool)

(assert (=> b!1737997 m!2148323))

(assert (=> b!1737551 d!531392))

(declare-fun b!1738008 () Bool)

(declare-fun e!1112273 () List!19152)

(assert (=> b!1738008 (= e!1112273 (Cons!19082 (h!24483 lt!668862) (++!5220 (t!161519 lt!668862) (Cons!19082 (head!3972 lt!668876) Nil!19082))))))

(declare-fun d!531394 () Bool)

(declare-fun e!1112274 () Bool)

(assert (=> d!531394 e!1112274))

(declare-fun res!781189 () Bool)

(assert (=> d!531394 (=> (not res!781189) (not e!1112274))))

(declare-fun lt!669011 () List!19152)

(declare-fun content!2736 (List!19152) (InoxSet C!9620))

(assert (=> d!531394 (= res!781189 (= (content!2736 lt!669011) ((_ map or) (content!2736 lt!668862) (content!2736 (Cons!19082 (head!3972 lt!668876) Nil!19082)))))))

(assert (=> d!531394 (= lt!669011 e!1112273)))

(declare-fun c!283642 () Bool)

(assert (=> d!531394 (= c!283642 ((_ is Nil!19082) lt!668862))))

(assert (=> d!531394 (= (++!5220 lt!668862 (Cons!19082 (head!3972 lt!668876) Nil!19082)) lt!669011)))

(declare-fun b!1738010 () Bool)

(assert (=> b!1738010 (= e!1112274 (or (not (= (Cons!19082 (head!3972 lt!668876) Nil!19082) Nil!19082)) (= lt!669011 lt!668862)))))

(declare-fun b!1738009 () Bool)

(declare-fun res!781190 () Bool)

(assert (=> b!1738009 (=> (not res!781190) (not e!1112274))))

(assert (=> b!1738009 (= res!781190 (= (size!15168 lt!669011) (+ (size!15168 lt!668862) (size!15168 (Cons!19082 (head!3972 lt!668876) Nil!19082)))))))

(declare-fun b!1738007 () Bool)

(assert (=> b!1738007 (= e!1112273 (Cons!19082 (head!3972 lt!668876) Nil!19082))))

(assert (= (and d!531394 c!283642) b!1738007))

(assert (= (and d!531394 (not c!283642)) b!1738008))

(assert (= (and d!531394 res!781189) b!1738009))

(assert (= (and b!1738009 res!781190) b!1738010))

(declare-fun m!2148325 () Bool)

(assert (=> b!1738008 m!2148325))

(declare-fun m!2148327 () Bool)

(assert (=> d!531394 m!2148327))

(declare-fun m!2148329 () Bool)

(assert (=> d!531394 m!2148329))

(declare-fun m!2148331 () Bool)

(assert (=> d!531394 m!2148331))

(declare-fun m!2148333 () Bool)

(assert (=> b!1738009 m!2148333))

(assert (=> b!1738009 m!2148313))

(declare-fun m!2148335 () Bool)

(assert (=> b!1738009 m!2148335))

(assert (=> b!1737551 d!531394))

(declare-fun d!531396 () Bool)

(assert (=> d!531396 (matchR!2197 (rulesRegex!753 thiss!24550 rules!3447) (list!7716 (charsOf!2044 (_1!10773 lt!668881))))))

(declare-fun lt!669012 () Unit!33035)

(assert (=> d!531396 (= lt!669012 (choose!10677 thiss!24550 rules!3447 lt!668845 (_1!10773 lt!668881) (rule!5389 (_1!10773 lt!668881)) (_2!10773 lt!668881)))))

(assert (=> d!531396 (not (isEmpty!12010 rules!3447))))

(assert (=> d!531396 (= (lemmaMaxPrefixThenMatchesRulesRegex!144 thiss!24550 rules!3447 lt!668845 (_1!10773 lt!668881) (rule!5389 (_1!10773 lt!668881)) (_2!10773 lt!668881)) lt!669012)))

(declare-fun bs!402894 () Bool)

(assert (= bs!402894 d!531396))

(assert (=> bs!402894 m!2147761))

(assert (=> bs!402894 m!2147823))

(assert (=> bs!402894 m!2147723))

(assert (=> bs!402894 m!2147723))

(assert (=> bs!402894 m!2147725))

(declare-fun m!2148337 () Bool)

(assert (=> bs!402894 m!2148337))

(assert (=> bs!402894 m!2147761))

(assert (=> bs!402894 m!2147725))

(declare-fun m!2148339 () Bool)

(assert (=> bs!402894 m!2148339))

(assert (=> b!1737551 d!531396))

(declare-fun d!531398 () Bool)

(assert (=> d!531398 (not (matchR!2197 lt!668882 lt!668841))))

(declare-fun lt!669015 () Unit!33035)

(declare-fun choose!10681 (Regex!4723 List!19152 List!19152) Unit!33035)

(assert (=> d!531398 (= lt!669015 (choose!10681 lt!668882 lt!668853 lt!668841))))

(assert (=> d!531398 (validRegex!1904 lt!668882)))

(assert (=> d!531398 (= (lemmaNotPrefixMatchThenCannotMatchLonger!104 lt!668882 lt!668853 lt!668841) lt!669015)))

(declare-fun bs!402895 () Bool)

(assert (= bs!402895 d!531398))

(assert (=> bs!402895 m!2147733))

(declare-fun m!2148341 () Bool)

(assert (=> bs!402895 m!2148341))

(assert (=> bs!402895 m!2148275))

(assert (=> b!1737551 d!531398))

(declare-fun d!531400 () Bool)

(assert (=> d!531400 (= (head!3972 lt!668876) (h!24483 lt!668876))))

(assert (=> b!1737551 d!531400))

(declare-fun b!1738011 () Bool)

(declare-fun e!1112280 () Bool)

(declare-fun lt!669016 () Bool)

(assert (=> b!1738011 (= e!1112280 (not lt!669016))))

(declare-fun b!1738012 () Bool)

(declare-fun res!781192 () Bool)

(declare-fun e!1112278 () Bool)

(assert (=> b!1738012 (=> (not res!781192) (not e!1112278))))

(declare-fun call!110028 () Bool)

(assert (=> b!1738012 (= res!781192 (not call!110028))))

(declare-fun b!1738013 () Bool)

(declare-fun e!1112281 () Bool)

(assert (=> b!1738013 (= e!1112281 e!1112280)))

(declare-fun c!283643 () Bool)

(assert (=> b!1738013 (= c!283643 ((_ is EmptyLang!4723) lt!668882))))

(declare-fun b!1738014 () Bool)

(declare-fun e!1112279 () Bool)

(declare-fun e!1112275 () Bool)

(assert (=> b!1738014 (= e!1112279 e!1112275)))

(declare-fun res!781196 () Bool)

(assert (=> b!1738014 (=> res!781196 e!1112275)))

(assert (=> b!1738014 (= res!781196 call!110028)))

(declare-fun b!1738015 () Bool)

(declare-fun e!1112276 () Bool)

(assert (=> b!1738015 (= e!1112276 e!1112279)))

(declare-fun res!781197 () Bool)

(assert (=> b!1738015 (=> (not res!781197) (not e!1112279))))

(assert (=> b!1738015 (= res!781197 (not lt!669016))))

(declare-fun b!1738017 () Bool)

(declare-fun res!781194 () Bool)

(assert (=> b!1738017 (=> res!781194 e!1112275)))

(assert (=> b!1738017 (= res!781194 (not (isEmpty!12009 (tail!2595 lt!668841))))))

(declare-fun b!1738018 () Bool)

(assert (=> b!1738018 (= e!1112275 (not (= (head!3972 lt!668841) (c!283562 lt!668882))))))

(declare-fun b!1738019 () Bool)

(declare-fun e!1112277 () Bool)

(assert (=> b!1738019 (= e!1112277 (matchR!2197 (derivativeStep!1198 lt!668882 (head!3972 lt!668841)) (tail!2595 lt!668841)))))

(declare-fun b!1738020 () Bool)

(assert (=> b!1738020 (= e!1112278 (= (head!3972 lt!668841) (c!283562 lt!668882)))))

(declare-fun bm!110023 () Bool)

(assert (=> bm!110023 (= call!110028 (isEmpty!12009 lt!668841))))

(declare-fun b!1738021 () Bool)

(assert (=> b!1738021 (= e!1112281 (= lt!669016 call!110028))))

(declare-fun b!1738022 () Bool)

(assert (=> b!1738022 (= e!1112277 (nullable!1430 lt!668882))))

(declare-fun b!1738023 () Bool)

(declare-fun res!781198 () Bool)

(assert (=> b!1738023 (=> res!781198 e!1112276)))

(assert (=> b!1738023 (= res!781198 (not ((_ is ElementMatch!4723) lt!668882)))))

(assert (=> b!1738023 (= e!1112280 e!1112276)))

(declare-fun b!1738024 () Bool)

(declare-fun res!781195 () Bool)

(assert (=> b!1738024 (=> (not res!781195) (not e!1112278))))

(assert (=> b!1738024 (= res!781195 (isEmpty!12009 (tail!2595 lt!668841)))))

(declare-fun b!1738016 () Bool)

(declare-fun res!781191 () Bool)

(assert (=> b!1738016 (=> res!781191 e!1112276)))

(assert (=> b!1738016 (= res!781191 e!1112278)))

(declare-fun res!781193 () Bool)

(assert (=> b!1738016 (=> (not res!781193) (not e!1112278))))

(assert (=> b!1738016 (= res!781193 lt!669016)))

(declare-fun d!531402 () Bool)

(assert (=> d!531402 e!1112281))

(declare-fun c!283645 () Bool)

(assert (=> d!531402 (= c!283645 ((_ is EmptyExpr!4723) lt!668882))))

(assert (=> d!531402 (= lt!669016 e!1112277)))

(declare-fun c!283644 () Bool)

(assert (=> d!531402 (= c!283644 (isEmpty!12009 lt!668841))))

(assert (=> d!531402 (validRegex!1904 lt!668882)))

(assert (=> d!531402 (= (matchR!2197 lt!668882 lt!668841) lt!669016)))

(assert (= (and d!531402 c!283644) b!1738022))

(assert (= (and d!531402 (not c!283644)) b!1738019))

(assert (= (and d!531402 c!283645) b!1738021))

(assert (= (and d!531402 (not c!283645)) b!1738013))

(assert (= (and b!1738013 c!283643) b!1738011))

(assert (= (and b!1738013 (not c!283643)) b!1738023))

(assert (= (and b!1738023 (not res!781198)) b!1738016))

(assert (= (and b!1738016 res!781193) b!1738012))

(assert (= (and b!1738012 res!781192) b!1738024))

(assert (= (and b!1738024 res!781195) b!1738020))

(assert (= (and b!1738016 (not res!781191)) b!1738015))

(assert (= (and b!1738015 res!781197) b!1738014))

(assert (= (and b!1738014 (not res!781196)) b!1738017))

(assert (= (and b!1738017 (not res!781194)) b!1738018))

(assert (= (or b!1738021 b!1738012 b!1738014) bm!110023))

(assert (=> d!531402 m!2148155))

(assert (=> d!531402 m!2148275))

(assert (=> b!1738018 m!2148159))

(assert (=> b!1738022 m!2148277))

(assert (=> b!1738017 m!2148163))

(assert (=> b!1738017 m!2148163))

(assert (=> b!1738017 m!2148165))

(assert (=> b!1738020 m!2148159))

(assert (=> b!1738024 m!2148163))

(assert (=> b!1738024 m!2148163))

(assert (=> b!1738024 m!2148165))

(assert (=> bm!110023 m!2148155))

(assert (=> b!1738019 m!2148159))

(assert (=> b!1738019 m!2148159))

(declare-fun m!2148343 () Bool)

(assert (=> b!1738019 m!2148343))

(assert (=> b!1738019 m!2148163))

(assert (=> b!1738019 m!2148343))

(assert (=> b!1738019 m!2148163))

(declare-fun m!2148345 () Bool)

(assert (=> b!1738019 m!2148345))

(assert (=> b!1737551 d!531402))

(declare-fun d!531404 () Bool)

(assert (=> d!531404 (= suffix!1421 lt!668876)))

(declare-fun lt!669019 () Unit!33035)

(declare-fun choose!10682 (List!19152 List!19152 List!19152 List!19152 List!19152) Unit!33035)

(assert (=> d!531404 (= lt!669019 (choose!10682 lt!668862 suffix!1421 lt!668862 lt!668876 lt!668845))))

(assert (=> d!531404 (isPrefix!1636 lt!668862 lt!668845)))

(assert (=> d!531404 (= (lemmaSamePrefixThenSameSuffix!780 lt!668862 suffix!1421 lt!668862 lt!668876 lt!668845) lt!669019)))

(declare-fun bs!402896 () Bool)

(assert (= bs!402896 d!531404))

(declare-fun m!2148347 () Bool)

(assert (=> bs!402896 m!2148347))

(assert (=> bs!402896 m!2147839))

(assert (=> b!1737551 d!531404))

(declare-fun d!531406 () Bool)

(assert (=> d!531406 (isPrefix!1636 lt!668853 lt!668841)))

(declare-fun lt!669022 () Unit!33035)

(declare-fun choose!10683 (List!19152 List!19152 List!19152) Unit!33035)

(assert (=> d!531406 (= lt!669022 (choose!10683 lt!668841 lt!668853 lt!668845))))

(assert (=> d!531406 (isPrefix!1636 lt!668841 lt!668845)))

(assert (=> d!531406 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!111 lt!668841 lt!668853 lt!668845) lt!669022)))

(declare-fun bs!402897 () Bool)

(assert (= bs!402897 d!531406))

(assert (=> bs!402897 m!2147745))

(declare-fun m!2148349 () Bool)

(assert (=> bs!402897 m!2148349))

(assert (=> bs!402897 m!2147857))

(assert (=> b!1737551 d!531406))

(declare-fun d!531408 () Bool)

(declare-fun isEmpty!12013 (Option!3815) Bool)

(assert (=> d!531408 (= (isDefined!3158 lt!668850) (not (isEmpty!12013 lt!668850)))))

(declare-fun bs!402898 () Bool)

(assert (= bs!402898 d!531408))

(declare-fun m!2148351 () Bool)

(assert (=> bs!402898 m!2148351))

(assert (=> b!1737573 d!531408))

(declare-fun b!1738059 () Bool)

(declare-fun e!1112299 () Option!3815)

(declare-fun lt!669088 () Option!3815)

(declare-fun lt!669086 () Option!3815)

(assert (=> b!1738059 (= e!1112299 (ite (and ((_ is None!3814) lt!669088) ((_ is None!3814) lt!669086)) None!3814 (ite ((_ is None!3814) lt!669086) lt!669088 (ite ((_ is None!3814) lt!669088) lt!669086 (ite (>= (size!15166 (_1!10773 (v!25241 lt!669088))) (size!15166 (_1!10773 (v!25241 lt!669086)))) lt!669088 lt!669086)))))))

(declare-fun call!110031 () Option!3815)

(assert (=> b!1738059 (= lt!669088 call!110031)))

(assert (=> b!1738059 (= lt!669086 (maxPrefix!1578 thiss!24550 (t!161520 rules!3447) lt!668862))))

(declare-fun b!1738060 () Bool)

(assert (=> b!1738060 (= e!1112299 call!110031)))

(declare-fun b!1738061 () Bool)

(declare-fun res!781223 () Bool)

(declare-fun e!1112297 () Bool)

(assert (=> b!1738061 (=> (not res!781223) (not e!1112297))))

(declare-fun lt!669087 () Option!3815)

(assert (=> b!1738061 (= res!781223 (= (value!106430 (_1!10773 (get!5729 lt!669087))) (apply!5200 (transformation!3395 (rule!5389 (_1!10773 (get!5729 lt!669087)))) (seqFromList!2369 (originalCharacters!4209 (_1!10773 (get!5729 lt!669087)))))))))

(declare-fun b!1738062 () Bool)

(declare-fun res!781224 () Bool)

(assert (=> b!1738062 (=> (not res!781224) (not e!1112297))))

(assert (=> b!1738062 (= res!781224 (= (++!5220 (list!7716 (charsOf!2044 (_1!10773 (get!5729 lt!669087)))) (_2!10773 (get!5729 lt!669087))) lt!668862))))

(declare-fun d!531410 () Bool)

(declare-fun e!1112298 () Bool)

(assert (=> d!531410 e!1112298))

(declare-fun res!781226 () Bool)

(assert (=> d!531410 (=> res!781226 e!1112298)))

(assert (=> d!531410 (= res!781226 (isEmpty!12013 lt!669087))))

(assert (=> d!531410 (= lt!669087 e!1112299)))

(declare-fun c!283651 () Bool)

(assert (=> d!531410 (= c!283651 (and ((_ is Cons!19083) rules!3447) ((_ is Nil!19083) (t!161520 rules!3447))))))

(declare-fun lt!669089 () Unit!33035)

(declare-fun lt!669090 () Unit!33035)

(assert (=> d!531410 (= lt!669089 lt!669090)))

(assert (=> d!531410 (isPrefix!1636 lt!668862 lt!668862)))

(declare-fun lemmaIsPrefixRefl!1095 (List!19152 List!19152) Unit!33035)

(assert (=> d!531410 (= lt!669090 (lemmaIsPrefixRefl!1095 lt!668862 lt!668862))))

(declare-fun rulesValidInductive!1130 (LexerInterface!3024 List!19153) Bool)

(assert (=> d!531410 (rulesValidInductive!1130 thiss!24550 rules!3447)))

(assert (=> d!531410 (= (maxPrefix!1578 thiss!24550 rules!3447 lt!668862) lt!669087)))

(declare-fun b!1738063 () Bool)

(assert (=> b!1738063 (= e!1112298 e!1112297)))

(declare-fun res!781227 () Bool)

(assert (=> b!1738063 (=> (not res!781227) (not e!1112297))))

(assert (=> b!1738063 (= res!781227 (isDefined!3158 lt!669087))))

(declare-fun bm!110026 () Bool)

(assert (=> bm!110026 (= call!110031 (maxPrefixOneRule!954 thiss!24550 (h!24484 rules!3447) lt!668862))))

(declare-fun b!1738064 () Bool)

(declare-fun res!781228 () Bool)

(assert (=> b!1738064 (=> (not res!781228) (not e!1112297))))

(assert (=> b!1738064 (= res!781228 (< (size!15168 (_2!10773 (get!5729 lt!669087))) (size!15168 lt!668862)))))

(declare-fun b!1738065 () Bool)

(assert (=> b!1738065 (= e!1112297 (contains!3417 rules!3447 (rule!5389 (_1!10773 (get!5729 lt!669087)))))))

(declare-fun b!1738066 () Bool)

(declare-fun res!781225 () Bool)

(assert (=> b!1738066 (=> (not res!781225) (not e!1112297))))

(assert (=> b!1738066 (= res!781225 (matchR!2197 (regex!3395 (rule!5389 (_1!10773 (get!5729 lt!669087)))) (list!7716 (charsOf!2044 (_1!10773 (get!5729 lt!669087))))))))

(declare-fun b!1738067 () Bool)

(declare-fun res!781229 () Bool)

(assert (=> b!1738067 (=> (not res!781229) (not e!1112297))))

(assert (=> b!1738067 (= res!781229 (= (list!7716 (charsOf!2044 (_1!10773 (get!5729 lt!669087)))) (originalCharacters!4209 (_1!10773 (get!5729 lt!669087)))))))

(assert (= (and d!531410 c!283651) b!1738060))

(assert (= (and d!531410 (not c!283651)) b!1738059))

(assert (= (or b!1738060 b!1738059) bm!110026))

(assert (= (and d!531410 (not res!781226)) b!1738063))

(assert (= (and b!1738063 res!781227) b!1738067))

(assert (= (and b!1738067 res!781229) b!1738064))

(assert (= (and b!1738064 res!781228) b!1738062))

(assert (= (and b!1738062 res!781224) b!1738061))

(assert (= (and b!1738061 res!781223) b!1738066))

(assert (= (and b!1738066 res!781225) b!1738065))

(declare-fun m!2148415 () Bool)

(assert (=> b!1738062 m!2148415))

(declare-fun m!2148417 () Bool)

(assert (=> b!1738062 m!2148417))

(assert (=> b!1738062 m!2148417))

(declare-fun m!2148419 () Bool)

(assert (=> b!1738062 m!2148419))

(assert (=> b!1738062 m!2148419))

(declare-fun m!2148421 () Bool)

(assert (=> b!1738062 m!2148421))

(assert (=> b!1738064 m!2148415))

(declare-fun m!2148423 () Bool)

(assert (=> b!1738064 m!2148423))

(assert (=> b!1738064 m!2148313))

(assert (=> b!1738066 m!2148415))

(assert (=> b!1738066 m!2148417))

(assert (=> b!1738066 m!2148417))

(assert (=> b!1738066 m!2148419))

(assert (=> b!1738066 m!2148419))

(declare-fun m!2148425 () Bool)

(assert (=> b!1738066 m!2148425))

(declare-fun m!2148427 () Bool)

(assert (=> bm!110026 m!2148427))

(assert (=> b!1738065 m!2148415))

(declare-fun m!2148429 () Bool)

(assert (=> b!1738065 m!2148429))

(assert (=> b!1738067 m!2148415))

(assert (=> b!1738067 m!2148417))

(assert (=> b!1738067 m!2148417))

(assert (=> b!1738067 m!2148419))

(declare-fun m!2148431 () Bool)

(assert (=> d!531410 m!2148431))

(assert (=> d!531410 m!2148257))

(declare-fun m!2148433 () Bool)

(assert (=> d!531410 m!2148433))

(declare-fun m!2148435 () Bool)

(assert (=> d!531410 m!2148435))

(declare-fun m!2148437 () Bool)

(assert (=> b!1738063 m!2148437))

(assert (=> b!1738061 m!2148415))

(declare-fun m!2148439 () Bool)

(assert (=> b!1738061 m!2148439))

(assert (=> b!1738061 m!2148439))

(declare-fun m!2148441 () Bool)

(assert (=> b!1738061 m!2148441))

(declare-fun m!2148443 () Bool)

(assert (=> b!1738059 m!2148443))

(assert (=> b!1737573 d!531410))

(declare-fun d!531418 () Bool)

(assert (=> d!531418 (= (list!7716 lt!668866) (list!7719 (c!283563 lt!668866)))))

(declare-fun bs!402900 () Bool)

(assert (= bs!402900 d!531418))

(declare-fun m!2148445 () Bool)

(assert (=> bs!402900 m!2148445))

(assert (=> b!1737573 d!531418))

(declare-fun d!531420 () Bool)

(declare-fun lt!669091 () BalanceConc!12638)

(assert (=> d!531420 (= (list!7716 lt!669091) (originalCharacters!4209 token!523))))

(assert (=> d!531420 (= lt!669091 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 token!523))) (value!106430 token!523)))))

(assert (=> d!531420 (= (charsOf!2044 token!523) lt!669091)))

(declare-fun b_lambda!55625 () Bool)

(assert (=> (not b_lambda!55625) (not d!531420)))

(assert (=> d!531420 t!161540))

(declare-fun b_and!128921 () Bool)

(assert (= b_and!128909 (and (=> t!161540 result!124852) b_and!128921)))

(assert (=> d!531420 t!161542))

(declare-fun b_and!128923 () Bool)

(assert (= b_and!128911 (and (=> t!161542 result!124854) b_and!128923)))

(assert (=> d!531420 t!161544))

(declare-fun b_and!128925 () Bool)

(assert (= b_and!128913 (and (=> t!161544 result!124856) b_and!128925)))

(declare-fun m!2148447 () Bool)

(assert (=> d!531420 m!2148447))

(assert (=> d!531420 m!2148249))

(assert (=> b!1737573 d!531420))

(declare-fun d!531422 () Bool)

(declare-fun choose!10684 (Int) Bool)

(assert (=> d!531422 (= (Forall!770 lambda!69524) (choose!10684 lambda!69524))))

(declare-fun bs!402901 () Bool)

(assert (= bs!402901 d!531422))

(declare-fun m!2148449 () Bool)

(assert (=> bs!402901 m!2148449))

(assert (=> b!1737552 d!531422))

(declare-fun d!531424 () Bool)

(declare-fun e!1112310 () Bool)

(assert (=> d!531424 e!1112310))

(declare-fun res!781236 () Bool)

(assert (=> d!531424 (=> (not res!781236) (not e!1112310))))

(assert (=> d!531424 (= res!781236 (semiInverseModEq!1343 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))))))

(declare-fun Unit!33049 () Unit!33035)

(assert (=> d!531424 (= (lemmaInv!602 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) Unit!33049)))

(declare-fun b!1738082 () Bool)

(assert (=> b!1738082 (= e!1112310 (equivClasses!1284 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))))))

(assert (= (and d!531424 res!781236) b!1738082))

(declare-fun m!2148451 () Bool)

(assert (=> d!531424 m!2148451))

(declare-fun m!2148453 () Bool)

(assert (=> b!1738082 m!2148453))

(assert (=> b!1737552 d!531424))

(declare-fun d!531426 () Bool)

(declare-fun lt!669105 () Int)

(assert (=> d!531426 (>= lt!669105 0)))

(declare-fun e!1112321 () Int)

(assert (=> d!531426 (= lt!669105 e!1112321)))

(declare-fun c!283662 () Bool)

(assert (=> d!531426 (= c!283662 ((_ is Nil!19082) lt!668841))))

(assert (=> d!531426 (= (size!15168 lt!668841) lt!669105)))

(declare-fun b!1738100 () Bool)

(assert (=> b!1738100 (= e!1112321 0)))

(declare-fun b!1738101 () Bool)

(assert (=> b!1738101 (= e!1112321 (+ 1 (size!15168 (t!161519 lt!668841))))))

(assert (= (and d!531426 c!283662) b!1738100))

(assert (= (and d!531426 (not c!283662)) b!1738101))

(declare-fun m!2148485 () Bool)

(assert (=> b!1738101 m!2148485))

(assert (=> b!1737571 d!531426))

(declare-fun d!531436 () Bool)

(declare-fun lt!669106 () List!19152)

(assert (=> d!531436 (= (++!5220 lt!668841 lt!669106) lt!668845)))

(declare-fun e!1112322 () List!19152)

(assert (=> d!531436 (= lt!669106 e!1112322)))

(declare-fun c!283663 () Bool)

(assert (=> d!531436 (= c!283663 ((_ is Cons!19082) lt!668841))))

(assert (=> d!531436 (>= (size!15168 lt!668845) (size!15168 lt!668841))))

(assert (=> d!531436 (= (getSuffix!830 lt!668845 lt!668841) lt!669106)))

(declare-fun b!1738102 () Bool)

(assert (=> b!1738102 (= e!1112322 (getSuffix!830 (tail!2595 lt!668845) (t!161519 lt!668841)))))

(declare-fun b!1738103 () Bool)

(assert (=> b!1738103 (= e!1112322 lt!668845)))

(assert (= (and d!531436 c!283663) b!1738102))

(assert (= (and d!531436 (not c!283663)) b!1738103))

(declare-fun m!2148487 () Bool)

(assert (=> d!531436 m!2148487))

(assert (=> d!531436 m!2148289))

(assert (=> d!531436 m!2147773))

(assert (=> b!1738102 m!2148299))

(assert (=> b!1738102 m!2148299))

(declare-fun m!2148489 () Bool)

(assert (=> b!1738102 m!2148489))

(assert (=> b!1737571 d!531436))

(declare-fun d!531438 () Bool)

(assert (=> d!531438 (= (_2!10773 lt!668881) lt!668873)))

(declare-fun lt!669107 () Unit!33035)

(assert (=> d!531438 (= lt!669107 (choose!10682 lt!668841 (_2!10773 lt!668881) lt!668841 lt!668873 lt!668845))))

(assert (=> d!531438 (isPrefix!1636 lt!668841 lt!668845)))

(assert (=> d!531438 (= (lemmaSamePrefixThenSameSuffix!780 lt!668841 (_2!10773 lt!668881) lt!668841 lt!668873 lt!668845) lt!669107)))

(declare-fun bs!402903 () Bool)

(assert (= bs!402903 d!531438))

(declare-fun m!2148491 () Bool)

(assert (=> bs!402903 m!2148491))

(assert (=> bs!402903 m!2147857))

(assert (=> b!1737571 d!531438))

(declare-fun d!531440 () Bool)

(assert (=> d!531440 (= (maxPrefixOneRule!954 thiss!24550 (rule!5389 (_1!10773 lt!668881)) lt!668845) (Some!3814 (tuple2!18743 (Token!6357 (apply!5200 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) (seqFromList!2369 lt!668841)) (rule!5389 (_1!10773 lt!668881)) (size!15168 lt!668841) lt!668841) (_2!10773 lt!668881))))))

(declare-fun lt!669120 () Unit!33035)

(declare-fun choose!10685 (LexerInterface!3024 List!19153 List!19152 List!19152 List!19152 Rule!6590) Unit!33035)

(assert (=> d!531440 (= lt!669120 (choose!10685 thiss!24550 rules!3447 lt!668841 lt!668845 (_2!10773 lt!668881) (rule!5389 (_1!10773 lt!668881))))))

(assert (=> d!531440 (not (isEmpty!12010 rules!3447))))

(assert (=> d!531440 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!353 thiss!24550 rules!3447 lt!668841 lt!668845 (_2!10773 lt!668881) (rule!5389 (_1!10773 lt!668881))) lt!669120)))

(declare-fun bs!402907 () Bool)

(assert (= bs!402907 d!531440))

(assert (=> bs!402907 m!2147773))

(assert (=> bs!402907 m!2147775))

(assert (=> bs!402907 m!2147763))

(assert (=> bs!402907 m!2147823))

(assert (=> bs!402907 m!2147763))

(assert (=> bs!402907 m!2147767))

(declare-fun m!2148517 () Bool)

(assert (=> bs!402907 m!2148517))

(assert (=> b!1737571 d!531440))

(declare-fun d!531450 () Bool)

(declare-fun e!1112416 () Bool)

(assert (=> d!531450 e!1112416))

(declare-fun res!781344 () Bool)

(assert (=> d!531450 (=> res!781344 e!1112416)))

(declare-fun lt!669166 () Option!3815)

(assert (=> d!531450 (= res!781344 (isEmpty!12013 lt!669166))))

(declare-fun e!1112415 () Option!3815)

(assert (=> d!531450 (= lt!669166 e!1112415)))

(declare-fun c!283695 () Bool)

(declare-datatypes ((tuple2!18748 0))(
  ( (tuple2!18749 (_1!10776 List!19152) (_2!10776 List!19152)) )
))
(declare-fun lt!669169 () tuple2!18748)

(assert (=> d!531450 (= c!283695 (isEmpty!12009 (_1!10776 lt!669169)))))

(declare-fun findLongestMatch!348 (Regex!4723 List!19152) tuple2!18748)

(assert (=> d!531450 (= lt!669169 (findLongestMatch!348 (regex!3395 (rule!5389 (_1!10773 lt!668881))) lt!668845))))

(assert (=> d!531450 (ruleValid!894 thiss!24550 (rule!5389 (_1!10773 lt!668881)))))

(assert (=> d!531450 (= (maxPrefixOneRule!954 thiss!24550 (rule!5389 (_1!10773 lt!668881)) lt!668845) lt!669166)))

(declare-fun b!1738267 () Bool)

(assert (=> b!1738267 (= e!1112415 None!3814)))

(declare-fun b!1738268 () Bool)

(assert (=> b!1738268 (= e!1112415 (Some!3814 (tuple2!18743 (Token!6357 (apply!5200 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) (seqFromList!2369 (_1!10776 lt!669169))) (rule!5389 (_1!10773 lt!668881)) (size!15167 (seqFromList!2369 (_1!10776 lt!669169))) (_1!10776 lt!669169)) (_2!10776 lt!669169))))))

(declare-fun lt!669168 () Unit!33035)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!405 (Regex!4723 List!19152) Unit!33035)

(assert (=> b!1738268 (= lt!669168 (longestMatchIsAcceptedByMatchOrIsEmpty!405 (regex!3395 (rule!5389 (_1!10773 lt!668881))) lt!668845))))

(declare-fun res!781342 () Bool)

(declare-fun findLongestMatchInner!421 (Regex!4723 List!19152 Int List!19152 List!19152 Int) tuple2!18748)

(assert (=> b!1738268 (= res!781342 (isEmpty!12009 (_1!10776 (findLongestMatchInner!421 (regex!3395 (rule!5389 (_1!10773 lt!668881))) Nil!19082 (size!15168 Nil!19082) lt!668845 lt!668845 (size!15168 lt!668845)))))))

(declare-fun e!1112413 () Bool)

(assert (=> b!1738268 (=> res!781342 e!1112413)))

(assert (=> b!1738268 e!1112413))

(declare-fun lt!669167 () Unit!33035)

(assert (=> b!1738268 (= lt!669167 lt!669168)))

(declare-fun lt!669165 () Unit!33035)

(assert (=> b!1738268 (= lt!669165 (lemmaSemiInverse!541 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) (seqFromList!2369 (_1!10776 lt!669169))))))

(declare-fun b!1738269 () Bool)

(assert (=> b!1738269 (= e!1112413 (matchR!2197 (regex!3395 (rule!5389 (_1!10773 lt!668881))) (_1!10776 (findLongestMatchInner!421 (regex!3395 (rule!5389 (_1!10773 lt!668881))) Nil!19082 (size!15168 Nil!19082) lt!668845 lt!668845 (size!15168 lt!668845)))))))

(declare-fun b!1738270 () Bool)

(declare-fun res!781345 () Bool)

(declare-fun e!1112414 () Bool)

(assert (=> b!1738270 (=> (not res!781345) (not e!1112414))))

(assert (=> b!1738270 (= res!781345 (= (rule!5389 (_1!10773 (get!5729 lt!669166))) (rule!5389 (_1!10773 lt!668881))))))

(declare-fun b!1738271 () Bool)

(assert (=> b!1738271 (= e!1112416 e!1112414)))

(declare-fun res!781346 () Bool)

(assert (=> b!1738271 (=> (not res!781346) (not e!1112414))))

(assert (=> b!1738271 (= res!781346 (matchR!2197 (regex!3395 (rule!5389 (_1!10773 lt!668881))) (list!7716 (charsOf!2044 (_1!10773 (get!5729 lt!669166))))))))

(declare-fun b!1738272 () Bool)

(declare-fun res!781343 () Bool)

(assert (=> b!1738272 (=> (not res!781343) (not e!1112414))))

(assert (=> b!1738272 (= res!781343 (< (size!15168 (_2!10773 (get!5729 lt!669166))) (size!15168 lt!668845)))))

(declare-fun b!1738273 () Bool)

(assert (=> b!1738273 (= e!1112414 (= (size!15166 (_1!10773 (get!5729 lt!669166))) (size!15168 (originalCharacters!4209 (_1!10773 (get!5729 lt!669166))))))))

(declare-fun b!1738274 () Bool)

(declare-fun res!781341 () Bool)

(assert (=> b!1738274 (=> (not res!781341) (not e!1112414))))

(assert (=> b!1738274 (= res!781341 (= (value!106430 (_1!10773 (get!5729 lt!669166))) (apply!5200 (transformation!3395 (rule!5389 (_1!10773 (get!5729 lt!669166)))) (seqFromList!2369 (originalCharacters!4209 (_1!10773 (get!5729 lt!669166)))))))))

(declare-fun b!1738275 () Bool)

(declare-fun res!781340 () Bool)

(assert (=> b!1738275 (=> (not res!781340) (not e!1112414))))

(assert (=> b!1738275 (= res!781340 (= (++!5220 (list!7716 (charsOf!2044 (_1!10773 (get!5729 lt!669166)))) (_2!10773 (get!5729 lt!669166))) lt!668845))))

(assert (= (and d!531450 c!283695) b!1738267))

(assert (= (and d!531450 (not c!283695)) b!1738268))

(assert (= (and b!1738268 (not res!781342)) b!1738269))

(assert (= (and d!531450 (not res!781344)) b!1738271))

(assert (= (and b!1738271 res!781346) b!1738275))

(assert (= (and b!1738275 res!781340) b!1738272))

(assert (= (and b!1738272 res!781343) b!1738270))

(assert (= (and b!1738270 res!781345) b!1738274))

(assert (= (and b!1738274 res!781341) b!1738273))

(declare-fun m!2148659 () Bool)

(assert (=> b!1738270 m!2148659))

(assert (=> b!1738272 m!2148659))

(declare-fun m!2148661 () Bool)

(assert (=> b!1738272 m!2148661))

(assert (=> b!1738272 m!2148289))

(declare-fun m!2148663 () Bool)

(assert (=> d!531450 m!2148663))

(declare-fun m!2148665 () Bool)

(assert (=> d!531450 m!2148665))

(declare-fun m!2148667 () Bool)

(assert (=> d!531450 m!2148667))

(declare-fun m!2148669 () Bool)

(assert (=> d!531450 m!2148669))

(assert (=> b!1738273 m!2148659))

(declare-fun m!2148671 () Bool)

(assert (=> b!1738273 m!2148671))

(declare-fun m!2148673 () Bool)

(assert (=> b!1738268 m!2148673))

(assert (=> b!1738268 m!2148289))

(declare-fun m!2148675 () Bool)

(assert (=> b!1738268 m!2148675))

(declare-fun m!2148677 () Bool)

(assert (=> b!1738268 m!2148677))

(declare-fun m!2148679 () Bool)

(assert (=> b!1738268 m!2148679))

(assert (=> b!1738268 m!2148677))

(assert (=> b!1738268 m!2148677))

(declare-fun m!2148681 () Bool)

(assert (=> b!1738268 m!2148681))

(declare-fun m!2148683 () Bool)

(assert (=> b!1738268 m!2148683))

(assert (=> b!1738268 m!2148683))

(assert (=> b!1738268 m!2148289))

(declare-fun m!2148685 () Bool)

(assert (=> b!1738268 m!2148685))

(assert (=> b!1738268 m!2148677))

(declare-fun m!2148687 () Bool)

(assert (=> b!1738268 m!2148687))

(assert (=> b!1738269 m!2148683))

(assert (=> b!1738269 m!2148289))

(assert (=> b!1738269 m!2148683))

(assert (=> b!1738269 m!2148289))

(assert (=> b!1738269 m!2148685))

(declare-fun m!2148689 () Bool)

(assert (=> b!1738269 m!2148689))

(assert (=> b!1738275 m!2148659))

(declare-fun m!2148691 () Bool)

(assert (=> b!1738275 m!2148691))

(assert (=> b!1738275 m!2148691))

(declare-fun m!2148693 () Bool)

(assert (=> b!1738275 m!2148693))

(assert (=> b!1738275 m!2148693))

(declare-fun m!2148695 () Bool)

(assert (=> b!1738275 m!2148695))

(assert (=> b!1738271 m!2148659))

(assert (=> b!1738271 m!2148691))

(assert (=> b!1738271 m!2148691))

(assert (=> b!1738271 m!2148693))

(assert (=> b!1738271 m!2148693))

(declare-fun m!2148697 () Bool)

(assert (=> b!1738271 m!2148697))

(assert (=> b!1738274 m!2148659))

(declare-fun m!2148699 () Bool)

(assert (=> b!1738274 m!2148699))

(assert (=> b!1738274 m!2148699))

(declare-fun m!2148701 () Bool)

(assert (=> b!1738274 m!2148701))

(assert (=> b!1737571 d!531450))

(declare-fun d!531526 () Bool)

(assert (=> d!531526 (= (apply!5200 (transformation!3395 (rule!5389 (_1!10773 lt!668881))) (seqFromList!2369 lt!668841)) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (seqFromList!2369 lt!668841)))))

(declare-fun b_lambda!55633 () Bool)

(assert (=> (not b_lambda!55633) (not d!531526)))

(declare-fun tb!103827 () Bool)

(declare-fun t!161546 () Bool)

(assert (=> (and b!1737561 (= (toValue!4902 (transformation!3395 (rule!5389 token!523))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161546) tb!103827))

(declare-fun result!124858 () Bool)

(assert (=> tb!103827 (= result!124858 (inv!21 (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (seqFromList!2369 lt!668841))))))

(declare-fun m!2148703 () Bool)

(assert (=> tb!103827 m!2148703))

(assert (=> d!531526 t!161546))

(declare-fun b_and!128945 () Bool)

(assert (= b_and!128915 (and (=> t!161546 result!124858) b_and!128945)))

(declare-fun t!161548 () Bool)

(declare-fun tb!103829 () Bool)

(assert (=> (and b!1737557 (= (toValue!4902 (transformation!3395 rule!422)) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161548) tb!103829))

(declare-fun result!124860 () Bool)

(assert (= result!124860 result!124858))

(assert (=> d!531526 t!161548))

(declare-fun b_and!128947 () Bool)

(assert (= b_and!128917 (and (=> t!161548 result!124860) b_and!128947)))

(declare-fun t!161550 () Bool)

(declare-fun tb!103831 () Bool)

(assert (=> (and b!1737567 (= (toValue!4902 (transformation!3395 (h!24484 rules!3447))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161550) tb!103831))

(declare-fun result!124862 () Bool)

(assert (= result!124862 result!124858))

(assert (=> d!531526 t!161550))

(declare-fun b_and!128949 () Bool)

(assert (= b_and!128919 (and (=> t!161550 result!124862) b_and!128949)))

(assert (=> d!531526 m!2147763))

(declare-fun m!2148705 () Bool)

(assert (=> d!531526 m!2148705))

(assert (=> b!1737571 d!531526))

(declare-fun d!531528 () Bool)

(assert (=> d!531528 (= (seqFromList!2369 lt!668841) (fromListB!1084 lt!668841))))

(declare-fun bs!402922 () Bool)

(assert (= bs!402922 d!531528))

(declare-fun m!2148707 () Bool)

(assert (=> bs!402922 m!2148707))

(assert (=> b!1737571 d!531528))

(declare-fun d!531530 () Bool)

(assert (=> d!531530 (= (inv!24712 (tag!3729 rule!422)) (= (mod (str.len (value!106429 (tag!3729 rule!422))) 2) 0))))

(assert (=> b!1737550 d!531530))

(declare-fun d!531532 () Bool)

(declare-fun res!781349 () Bool)

(declare-fun e!1112420 () Bool)

(assert (=> d!531532 (=> (not res!781349) (not e!1112420))))

(assert (=> d!531532 (= res!781349 (semiInverseModEq!1343 (toChars!4761 (transformation!3395 rule!422)) (toValue!4902 (transformation!3395 rule!422))))))

(assert (=> d!531532 (= (inv!24717 (transformation!3395 rule!422)) e!1112420)))

(declare-fun b!1738278 () Bool)

(assert (=> b!1738278 (= e!1112420 (equivClasses!1284 (toChars!4761 (transformation!3395 rule!422)) (toValue!4902 (transformation!3395 rule!422))))))

(assert (= (and d!531532 res!781349) b!1738278))

(declare-fun m!2148709 () Bool)

(assert (=> d!531532 m!2148709))

(declare-fun m!2148711 () Bool)

(assert (=> b!1738278 m!2148711))

(assert (=> b!1737550 d!531532))

(declare-fun d!531534 () Bool)

(assert (=> d!531534 (= suffix!1421 (_2!10773 lt!668881))))

(declare-fun lt!669172 () Unit!33035)

(assert (=> d!531534 (= lt!669172 (choose!10682 lt!668862 suffix!1421 lt!668862 (_2!10773 lt!668881) lt!668845))))

(assert (=> d!531534 (isPrefix!1636 lt!668862 lt!668845)))

(assert (=> d!531534 (= (lemmaSamePrefixThenSameSuffix!780 lt!668862 suffix!1421 lt!668862 (_2!10773 lt!668881) lt!668845) lt!669172)))

(declare-fun bs!402923 () Bool)

(assert (= bs!402923 d!531534))

(declare-fun m!2148713 () Bool)

(assert (=> bs!402923 m!2148713))

(assert (=> bs!402923 m!2147839))

(assert (=> b!1737572 d!531534))

(declare-fun d!531536 () Bool)

(assert (=> d!531536 (= lt!668841 lt!668862)))

(declare-fun lt!669176 () Unit!33035)

(declare-fun choose!10687 (List!19152 List!19152 List!19152) Unit!33035)

(assert (=> d!531536 (= lt!669176 (choose!10687 lt!668841 lt!668862 lt!668845))))

(assert (=> d!531536 (isPrefix!1636 lt!668841 lt!668845)))

(assert (=> d!531536 (= (lemmaIsPrefixSameLengthThenSameList!223 lt!668841 lt!668862 lt!668845) lt!669176)))

(declare-fun bs!402924 () Bool)

(assert (= bs!402924 d!531536))

(declare-fun m!2148715 () Bool)

(assert (=> bs!402924 m!2148715))

(assert (=> bs!402924 m!2147857))

(assert (=> b!1737572 d!531536))

(declare-fun d!531538 () Bool)

(declare-fun c!283698 () Bool)

(assert (=> d!531538 (= c!283698 (isEmpty!12009 lt!668853))))

(declare-fun e!1112427 () Bool)

(assert (=> d!531538 (= (prefixMatch!608 lt!668882 lt!668853) e!1112427)))

(declare-fun b!1738288 () Bool)

(declare-fun lostCause!540 (Regex!4723) Bool)

(assert (=> b!1738288 (= e!1112427 (not (lostCause!540 lt!668882)))))

(declare-fun b!1738289 () Bool)

(assert (=> b!1738289 (= e!1112427 (prefixMatch!608 (derivativeStep!1198 lt!668882 (head!3972 lt!668853)) (tail!2595 lt!668853)))))

(assert (= (and d!531538 c!283698) b!1738288))

(assert (= (and d!531538 (not c!283698)) b!1738289))

(declare-fun m!2148727 () Bool)

(assert (=> d!531538 m!2148727))

(declare-fun m!2148729 () Bool)

(assert (=> b!1738288 m!2148729))

(assert (=> b!1738289 m!2148319))

(assert (=> b!1738289 m!2148319))

(declare-fun m!2148731 () Bool)

(assert (=> b!1738289 m!2148731))

(assert (=> b!1738289 m!2148321))

(assert (=> b!1738289 m!2148731))

(assert (=> b!1738289 m!2148321))

(declare-fun m!2148733 () Bool)

(assert (=> b!1738289 m!2148733))

(assert (=> b!1737570 d!531538))

(declare-fun b!1738291 () Bool)

(declare-fun e!1112428 () List!19152)

(assert (=> b!1738291 (= e!1112428 (Cons!19082 (h!24483 lt!668862) (++!5220 (t!161519 lt!668862) (Cons!19082 (head!3972 suffix!1421) Nil!19082))))))

(declare-fun d!531546 () Bool)

(declare-fun e!1112429 () Bool)

(assert (=> d!531546 e!1112429))

(declare-fun res!781350 () Bool)

(assert (=> d!531546 (=> (not res!781350) (not e!1112429))))

(declare-fun lt!669177 () List!19152)

(assert (=> d!531546 (= res!781350 (= (content!2736 lt!669177) ((_ map or) (content!2736 lt!668862) (content!2736 (Cons!19082 (head!3972 suffix!1421) Nil!19082)))))))

(assert (=> d!531546 (= lt!669177 e!1112428)))

(declare-fun c!283699 () Bool)

(assert (=> d!531546 (= c!283699 ((_ is Nil!19082) lt!668862))))

(assert (=> d!531546 (= (++!5220 lt!668862 (Cons!19082 (head!3972 suffix!1421) Nil!19082)) lt!669177)))

(declare-fun b!1738293 () Bool)

(assert (=> b!1738293 (= e!1112429 (or (not (= (Cons!19082 (head!3972 suffix!1421) Nil!19082) Nil!19082)) (= lt!669177 lt!668862)))))

(declare-fun b!1738292 () Bool)

(declare-fun res!781351 () Bool)

(assert (=> b!1738292 (=> (not res!781351) (not e!1112429))))

(assert (=> b!1738292 (= res!781351 (= (size!15168 lt!669177) (+ (size!15168 lt!668862) (size!15168 (Cons!19082 (head!3972 suffix!1421) Nil!19082)))))))

(declare-fun b!1738290 () Bool)

(assert (=> b!1738290 (= e!1112428 (Cons!19082 (head!3972 suffix!1421) Nil!19082))))

(assert (= (and d!531546 c!283699) b!1738290))

(assert (= (and d!531546 (not c!283699)) b!1738291))

(assert (= (and d!531546 res!781350) b!1738292))

(assert (= (and b!1738292 res!781351) b!1738293))

(declare-fun m!2148735 () Bool)

(assert (=> b!1738291 m!2148735))

(declare-fun m!2148737 () Bool)

(assert (=> d!531546 m!2148737))

(assert (=> d!531546 m!2148329))

(declare-fun m!2148739 () Bool)

(assert (=> d!531546 m!2148739))

(declare-fun m!2148741 () Bool)

(assert (=> b!1738292 m!2148741))

(assert (=> b!1738292 m!2148313))

(declare-fun m!2148743 () Bool)

(assert (=> b!1738292 m!2148743))

(assert (=> b!1737570 d!531546))

(declare-fun d!531548 () Bool)

(assert (=> d!531548 (= (head!3972 suffix!1421) (h!24483 suffix!1421))))

(assert (=> b!1737570 d!531548))

(declare-fun d!531550 () Bool)

(declare-fun lt!669181 () Unit!33035)

(declare-fun lemma!353 (List!19153 LexerInterface!3024 List!19153) Unit!33035)

(assert (=> d!531550 (= lt!669181 (lemma!353 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69539 () Int)

(declare-datatypes ((List!19158 0))(
  ( (Nil!19088) (Cons!19088 (h!24489 Regex!4723) (t!161585 List!19158)) )
))
(declare-fun generalisedUnion!361 (List!19158) Regex!4723)

(declare-fun map!3930 (List!19153 Int) List!19158)

(assert (=> d!531550 (= (rulesRegex!753 thiss!24550 rules!3447) (generalisedUnion!361 (map!3930 rules!3447 lambda!69539)))))

(declare-fun bs!402926 () Bool)

(assert (= bs!402926 d!531550))

(declare-fun m!2148763 () Bool)

(assert (=> bs!402926 m!2148763))

(declare-fun m!2148765 () Bool)

(assert (=> bs!402926 m!2148765))

(assert (=> bs!402926 m!2148765))

(declare-fun m!2148767 () Bool)

(assert (=> bs!402926 m!2148767))

(assert (=> b!1737570 d!531550))

(declare-fun d!531558 () Bool)

(assert (=> d!531558 (= (list!7716 lt!668854) (list!7719 (c!283563 lt!668854)))))

(declare-fun bs!402927 () Bool)

(assert (= bs!402927 d!531558))

(declare-fun m!2148769 () Bool)

(assert (=> bs!402927 m!2148769))

(assert (=> b!1737549 d!531558))

(declare-fun b!1738305 () Bool)

(declare-fun e!1112435 () List!19152)

(assert (=> b!1738305 (= e!1112435 (Cons!19082 (h!24483 lt!668841) (++!5220 (t!161519 lt!668841) (_2!10773 lt!668881))))))

(declare-fun d!531560 () Bool)

(declare-fun e!1112436 () Bool)

(assert (=> d!531560 e!1112436))

(declare-fun res!781354 () Bool)

(assert (=> d!531560 (=> (not res!781354) (not e!1112436))))

(declare-fun lt!669182 () List!19152)

(assert (=> d!531560 (= res!781354 (= (content!2736 lt!669182) ((_ map or) (content!2736 lt!668841) (content!2736 (_2!10773 lt!668881)))))))

(assert (=> d!531560 (= lt!669182 e!1112435)))

(declare-fun c!283704 () Bool)

(assert (=> d!531560 (= c!283704 ((_ is Nil!19082) lt!668841))))

(assert (=> d!531560 (= (++!5220 lt!668841 (_2!10773 lt!668881)) lt!669182)))

(declare-fun b!1738307 () Bool)

(assert (=> b!1738307 (= e!1112436 (or (not (= (_2!10773 lt!668881) Nil!19082)) (= lt!669182 lt!668841)))))

(declare-fun b!1738306 () Bool)

(declare-fun res!781355 () Bool)

(assert (=> b!1738306 (=> (not res!781355) (not e!1112436))))

(assert (=> b!1738306 (= res!781355 (= (size!15168 lt!669182) (+ (size!15168 lt!668841) (size!15168 (_2!10773 lt!668881)))))))

(declare-fun b!1738304 () Bool)

(assert (=> b!1738304 (= e!1112435 (_2!10773 lt!668881))))

(assert (= (and d!531560 c!283704) b!1738304))

(assert (= (and d!531560 (not c!283704)) b!1738305))

(assert (= (and d!531560 res!781354) b!1738306))

(assert (= (and b!1738306 res!781355) b!1738307))

(declare-fun m!2148771 () Bool)

(assert (=> b!1738305 m!2148771))

(declare-fun m!2148773 () Bool)

(assert (=> d!531560 m!2148773))

(declare-fun m!2148775 () Bool)

(assert (=> d!531560 m!2148775))

(declare-fun m!2148777 () Bool)

(assert (=> d!531560 m!2148777))

(declare-fun m!2148779 () Bool)

(assert (=> b!1738306 m!2148779))

(assert (=> b!1738306 m!2147773))

(declare-fun m!2148781 () Bool)

(assert (=> b!1738306 m!2148781))

(assert (=> b!1737549 d!531560))

(declare-fun e!1112481 () Bool)

(declare-fun lt!669233 () Token!6356)

(declare-fun b!1738388 () Bool)

(assert (=> b!1738388 (= e!1112481 (= (rule!5389 lt!669233) (get!5730 (getRuleFromTag!445 thiss!24550 rules!3447 (tag!3729 (rule!5389 lt!669233))))))))

(declare-fun b!1738387 () Bool)

(declare-fun res!781363 () Bool)

(assert (=> b!1738387 (=> (not res!781363) (not e!1112481))))

(assert (=> b!1738387 (= res!781363 (matchR!2197 (regex!3395 (get!5730 (getRuleFromTag!445 thiss!24550 rules!3447 (tag!3729 (rule!5389 lt!669233))))) (list!7716 (charsOf!2044 lt!669233))))))

(declare-fun b!1738389 () Bool)

(declare-fun e!1112482 () Unit!33035)

(declare-fun Unit!33051 () Unit!33035)

(assert (=> b!1738389 (= e!1112482 Unit!33051)))

(declare-fun lt!669229 () List!19152)

(assert (=> b!1738389 (= lt!669229 (++!5220 lt!668862 suffix!1421))))

(declare-fun lt!669241 () Unit!33035)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!287 (LexerInterface!3024 Rule!6590 List!19153 List!19152) Unit!33035)

(assert (=> b!1738389 (= lt!669241 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!287 thiss!24550 (rule!5389 lt!669233) rules!3447 lt!669229))))

(assert (=> b!1738389 (isEmpty!12013 (maxPrefixOneRule!954 thiss!24550 (rule!5389 lt!669233) lt!669229))))

(declare-fun lt!669237 () Unit!33035)

(assert (=> b!1738389 (= lt!669237 lt!669241)))

(declare-fun lt!669232 () List!19152)

(assert (=> b!1738389 (= lt!669232 (list!7716 (charsOf!2044 lt!669233)))))

(declare-fun lt!669236 () Unit!33035)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!283 (LexerInterface!3024 Rule!6590 List!19152 List!19152) Unit!33035)

(assert (=> b!1738389 (= lt!669236 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!283 thiss!24550 (rule!5389 lt!669233) lt!669232 (++!5220 lt!668862 suffix!1421)))))

(assert (=> b!1738389 (not (matchR!2197 (regex!3395 (rule!5389 lt!669233)) lt!669232))))

(declare-fun lt!669228 () Unit!33035)

(assert (=> b!1738389 (= lt!669228 lt!669236)))

(assert (=> b!1738389 false))

(declare-fun d!531562 () Bool)

(assert (=> d!531562 (isDefined!3158 (maxPrefix!1578 thiss!24550 rules!3447 (++!5220 lt!668862 suffix!1421)))))

(declare-fun lt!669240 () Unit!33035)

(assert (=> d!531562 (= lt!669240 e!1112482)))

(declare-fun c!283715 () Bool)

(assert (=> d!531562 (= c!283715 (isEmpty!12013 (maxPrefix!1578 thiss!24550 rules!3447 (++!5220 lt!668862 suffix!1421))))))

(declare-fun lt!669231 () Unit!33035)

(declare-fun lt!669235 () Unit!33035)

(assert (=> d!531562 (= lt!669231 lt!669235)))

(assert (=> d!531562 e!1112481))

(declare-fun res!781362 () Bool)

(assert (=> d!531562 (=> (not res!781362) (not e!1112481))))

(assert (=> d!531562 (= res!781362 (isDefined!3157 (getRuleFromTag!445 thiss!24550 rules!3447 (tag!3729 (rule!5389 lt!669233)))))))

(assert (=> d!531562 (= lt!669235 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!445 thiss!24550 rules!3447 lt!668862 lt!669233))))

(declare-fun lt!669239 () Unit!33035)

(declare-fun lt!669234 () Unit!33035)

(assert (=> d!531562 (= lt!669239 lt!669234)))

(declare-fun lt!669225 () List!19152)

(assert (=> d!531562 (isPrefix!1636 lt!669225 (++!5220 lt!668862 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!279 (List!19152 List!19152 List!19152) Unit!33035)

(assert (=> d!531562 (= lt!669234 (lemmaPrefixStaysPrefixWhenAddingToSuffix!279 lt!669225 lt!668862 suffix!1421))))

(assert (=> d!531562 (= lt!669225 (list!7716 (charsOf!2044 lt!669233)))))

(declare-fun lt!669230 () Unit!33035)

(declare-fun lt!669226 () Unit!33035)

(assert (=> d!531562 (= lt!669230 lt!669226)))

(declare-fun lt!669227 () List!19152)

(declare-fun lt!669238 () List!19152)

(assert (=> d!531562 (isPrefix!1636 lt!669227 (++!5220 lt!669227 lt!669238))))

(assert (=> d!531562 (= lt!669226 (lemmaConcatTwoListThenFirstIsPrefix!1146 lt!669227 lt!669238))))

(assert (=> d!531562 (= lt!669238 (_2!10773 (get!5729 (maxPrefix!1578 thiss!24550 rules!3447 lt!668862))))))

(assert (=> d!531562 (= lt!669227 (list!7716 (charsOf!2044 lt!669233)))))

(declare-datatypes ((List!19159 0))(
  ( (Nil!19089) (Cons!19089 (h!24490 Token!6356) (t!161586 List!19159)) )
))
(declare-fun head!3974 (List!19159) Token!6356)

(declare-datatypes ((IArray!12703 0))(
  ( (IArray!12704 (innerList!6409 List!19159)) )
))
(declare-datatypes ((Conc!6349 0))(
  ( (Node!6349 (left!15260 Conc!6349) (right!15590 Conc!6349) (csize!12928 Int) (cheight!6560 Int)) (Leaf!9267 (xs!9225 IArray!12703) (csize!12929 Int)) (Empty!6349) )
))
(declare-datatypes ((BalanceConc!12642 0))(
  ( (BalanceConc!12643 (c!283725 Conc!6349)) )
))
(declare-fun list!7720 (BalanceConc!12642) List!19159)

(declare-datatypes ((tuple2!18750 0))(
  ( (tuple2!18751 (_1!10777 BalanceConc!12642) (_2!10777 BalanceConc!12638)) )
))
(declare-fun lex!1418 (LexerInterface!3024 List!19153 BalanceConc!12638) tuple2!18750)

(assert (=> d!531562 (= lt!669233 (head!3974 (list!7720 (_1!10777 (lex!1418 thiss!24550 rules!3447 (seqFromList!2369 lt!668862))))))))

(assert (=> d!531562 (not (isEmpty!12010 rules!3447))))

(assert (=> d!531562 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!548 thiss!24550 rules!3447 lt!668862 suffix!1421) lt!669240)))

(declare-fun b!1738390 () Bool)

(declare-fun Unit!33052 () Unit!33035)

(assert (=> b!1738390 (= e!1112482 Unit!33052)))

(assert (= (and d!531562 res!781362) b!1738387))

(assert (= (and b!1738387 res!781363) b!1738388))

(assert (= (and d!531562 c!283715) b!1738389))

(assert (= (and d!531562 (not c!283715)) b!1738390))

(declare-fun m!2148815 () Bool)

(assert (=> b!1738388 m!2148815))

(assert (=> b!1738388 m!2148815))

(declare-fun m!2148817 () Bool)

(assert (=> b!1738388 m!2148817))

(declare-fun m!2148819 () Bool)

(assert (=> b!1738387 m!2148819))

(declare-fun m!2148821 () Bool)

(assert (=> b!1738387 m!2148821))

(assert (=> b!1738387 m!2148815))

(assert (=> b!1738387 m!2148817))

(assert (=> b!1738387 m!2148819))

(assert (=> b!1738387 m!2148821))

(declare-fun m!2148823 () Bool)

(assert (=> b!1738387 m!2148823))

(assert (=> b!1738387 m!2148815))

(assert (=> b!1738389 m!2147853))

(assert (=> b!1738389 m!2148819))

(assert (=> b!1738389 m!2148821))

(assert (=> b!1738389 m!2148819))

(declare-fun m!2148825 () Bool)

(assert (=> b!1738389 m!2148825))

(assert (=> b!1738389 m!2147853))

(declare-fun m!2148827 () Bool)

(assert (=> b!1738389 m!2148827))

(declare-fun m!2148829 () Bool)

(assert (=> b!1738389 m!2148829))

(declare-fun m!2148831 () Bool)

(assert (=> b!1738389 m!2148831))

(assert (=> b!1738389 m!2148831))

(declare-fun m!2148833 () Bool)

(assert (=> b!1738389 m!2148833))

(declare-fun m!2148835 () Bool)

(assert (=> d!531562 m!2148835))

(declare-fun m!2148837 () Bool)

(assert (=> d!531562 m!2148837))

(declare-fun m!2148839 () Bool)

(assert (=> d!531562 m!2148839))

(declare-fun m!2148841 () Bool)

(assert (=> d!531562 m!2148841))

(assert (=> d!531562 m!2148819))

(assert (=> d!531562 m!2148821))

(declare-fun m!2148843 () Bool)

(assert (=> d!531562 m!2148843))

(declare-fun m!2148845 () Bool)

(assert (=> d!531562 m!2148845))

(assert (=> d!531562 m!2147823))

(assert (=> d!531562 m!2148835))

(declare-fun m!2148847 () Bool)

(assert (=> d!531562 m!2148847))

(assert (=> d!531562 m!2148815))

(declare-fun m!2148849 () Bool)

(assert (=> d!531562 m!2148849))

(assert (=> d!531562 m!2148815))

(assert (=> d!531562 m!2148843))

(declare-fun m!2148851 () Bool)

(assert (=> d!531562 m!2148851))

(declare-fun m!2148853 () Bool)

(assert (=> d!531562 m!2148853))

(declare-fun m!2148855 () Bool)

(assert (=> d!531562 m!2148855))

(assert (=> d!531562 m!2147853))

(assert (=> d!531562 m!2147853))

(declare-fun m!2148857 () Bool)

(assert (=> d!531562 m!2148857))

(assert (=> d!531562 m!2148839))

(assert (=> d!531562 m!2147853))

(assert (=> d!531562 m!2148843))

(declare-fun m!2148859 () Bool)

(assert (=> d!531562 m!2148859))

(assert (=> d!531562 m!2147861))

(declare-fun m!2148861 () Bool)

(assert (=> d!531562 m!2148861))

(assert (=> d!531562 m!2148819))

(assert (=> d!531562 m!2148837))

(declare-fun m!2148863 () Bool)

(assert (=> d!531562 m!2148863))

(assert (=> d!531562 m!2147861))

(assert (=> b!1737549 d!531562))

(declare-fun b!1738392 () Bool)

(declare-fun e!1112483 () List!19152)

(assert (=> b!1738392 (= e!1112483 (Cons!19082 (h!24483 lt!668862) (++!5220 (t!161519 lt!668862) suffix!1421)))))

(declare-fun d!531570 () Bool)

(declare-fun e!1112484 () Bool)

(assert (=> d!531570 e!1112484))

(declare-fun res!781364 () Bool)

(assert (=> d!531570 (=> (not res!781364) (not e!1112484))))

(declare-fun lt!669242 () List!19152)

(assert (=> d!531570 (= res!781364 (= (content!2736 lt!669242) ((_ map or) (content!2736 lt!668862) (content!2736 suffix!1421))))))

(assert (=> d!531570 (= lt!669242 e!1112483)))

(declare-fun c!283716 () Bool)

(assert (=> d!531570 (= c!283716 ((_ is Nil!19082) lt!668862))))

(assert (=> d!531570 (= (++!5220 lt!668862 suffix!1421) lt!669242)))

(declare-fun b!1738394 () Bool)

(assert (=> b!1738394 (= e!1112484 (or (not (= suffix!1421 Nil!19082)) (= lt!669242 lt!668862)))))

(declare-fun b!1738393 () Bool)

(declare-fun res!781365 () Bool)

(assert (=> b!1738393 (=> (not res!781365) (not e!1112484))))

(assert (=> b!1738393 (= res!781365 (= (size!15168 lt!669242) (+ (size!15168 lt!668862) (size!15168 suffix!1421))))))

(declare-fun b!1738391 () Bool)

(assert (=> b!1738391 (= e!1112483 suffix!1421)))

(assert (= (and d!531570 c!283716) b!1738391))

(assert (= (and d!531570 (not c!283716)) b!1738392))

(assert (= (and d!531570 res!781364) b!1738393))

(assert (= (and b!1738393 res!781365) b!1738394))

(declare-fun m!2148865 () Bool)

(assert (=> b!1738392 m!2148865))

(declare-fun m!2148867 () Bool)

(assert (=> d!531570 m!2148867))

(assert (=> d!531570 m!2148329))

(declare-fun m!2148869 () Bool)

(assert (=> d!531570 m!2148869))

(declare-fun m!2148871 () Bool)

(assert (=> b!1738393 m!2148871))

(assert (=> b!1738393 m!2148313))

(declare-fun m!2148873 () Bool)

(assert (=> b!1738393 m!2148873))

(assert (=> b!1737549 d!531570))

(declare-fun d!531572 () Bool)

(assert (=> d!531572 (= (get!5729 lt!668884) (v!25241 lt!668884))))

(assert (=> b!1737549 d!531572))

(declare-fun d!531574 () Bool)

(declare-fun e!1112486 () Bool)

(assert (=> d!531574 e!1112486))

(declare-fun res!781366 () Bool)

(assert (=> d!531574 (=> res!781366 e!1112486)))

(declare-fun lt!669243 () Bool)

(assert (=> d!531574 (= res!781366 (not lt!669243))))

(declare-fun e!1112485 () Bool)

(assert (=> d!531574 (= lt!669243 e!1112485)))

(declare-fun res!781367 () Bool)

(assert (=> d!531574 (=> res!781367 e!1112485)))

(assert (=> d!531574 (= res!781367 ((_ is Nil!19082) lt!668841))))

(assert (=> d!531574 (= (isPrefix!1636 lt!668841 (++!5220 lt!668841 (_2!10773 lt!668881))) lt!669243)))

(declare-fun b!1738398 () Bool)

(assert (=> b!1738398 (= e!1112486 (>= (size!15168 (++!5220 lt!668841 (_2!10773 lt!668881))) (size!15168 lt!668841)))))

(declare-fun b!1738395 () Bool)

(declare-fun e!1112487 () Bool)

(assert (=> b!1738395 (= e!1112485 e!1112487)))

(declare-fun res!781369 () Bool)

(assert (=> b!1738395 (=> (not res!781369) (not e!1112487))))

(assert (=> b!1738395 (= res!781369 (not ((_ is Nil!19082) (++!5220 lt!668841 (_2!10773 lt!668881)))))))

(declare-fun b!1738396 () Bool)

(declare-fun res!781368 () Bool)

(assert (=> b!1738396 (=> (not res!781368) (not e!1112487))))

(assert (=> b!1738396 (= res!781368 (= (head!3972 lt!668841) (head!3972 (++!5220 lt!668841 (_2!10773 lt!668881)))))))

(declare-fun b!1738397 () Bool)

(assert (=> b!1738397 (= e!1112487 (isPrefix!1636 (tail!2595 lt!668841) (tail!2595 (++!5220 lt!668841 (_2!10773 lt!668881)))))))

(assert (= (and d!531574 (not res!781367)) b!1738395))

(assert (= (and b!1738395 res!781369) b!1738396))

(assert (= (and b!1738396 res!781368) b!1738397))

(assert (= (and d!531574 (not res!781366)) b!1738398))

(assert (=> b!1738398 m!2147831))

(declare-fun m!2148875 () Bool)

(assert (=> b!1738398 m!2148875))

(assert (=> b!1738398 m!2147773))

(assert (=> b!1738396 m!2148159))

(assert (=> b!1738396 m!2147831))

(declare-fun m!2148877 () Bool)

(assert (=> b!1738396 m!2148877))

(assert (=> b!1738397 m!2148163))

(assert (=> b!1738397 m!2147831))

(declare-fun m!2148879 () Bool)

(assert (=> b!1738397 m!2148879))

(assert (=> b!1738397 m!2148163))

(assert (=> b!1738397 m!2148879))

(declare-fun m!2148881 () Bool)

(assert (=> b!1738397 m!2148881))

(assert (=> b!1737549 d!531574))

(declare-fun b!1738399 () Bool)

(declare-fun e!1112490 () Option!3815)

(declare-fun lt!669246 () Option!3815)

(declare-fun lt!669244 () Option!3815)

(assert (=> b!1738399 (= e!1112490 (ite (and ((_ is None!3814) lt!669246) ((_ is None!3814) lt!669244)) None!3814 (ite ((_ is None!3814) lt!669244) lt!669246 (ite ((_ is None!3814) lt!669246) lt!669244 (ite (>= (size!15166 (_1!10773 (v!25241 lt!669246))) (size!15166 (_1!10773 (v!25241 lt!669244)))) lt!669246 lt!669244)))))))

(declare-fun call!110038 () Option!3815)

(assert (=> b!1738399 (= lt!669246 call!110038)))

(assert (=> b!1738399 (= lt!669244 (maxPrefix!1578 thiss!24550 (t!161520 rules!3447) lt!668845))))

(declare-fun b!1738400 () Bool)

(assert (=> b!1738400 (= e!1112490 call!110038)))

(declare-fun b!1738401 () Bool)

(declare-fun res!781370 () Bool)

(declare-fun e!1112488 () Bool)

(assert (=> b!1738401 (=> (not res!781370) (not e!1112488))))

(declare-fun lt!669245 () Option!3815)

(assert (=> b!1738401 (= res!781370 (= (value!106430 (_1!10773 (get!5729 lt!669245))) (apply!5200 (transformation!3395 (rule!5389 (_1!10773 (get!5729 lt!669245)))) (seqFromList!2369 (originalCharacters!4209 (_1!10773 (get!5729 lt!669245)))))))))

(declare-fun b!1738402 () Bool)

(declare-fun res!781371 () Bool)

(assert (=> b!1738402 (=> (not res!781371) (not e!1112488))))

(assert (=> b!1738402 (= res!781371 (= (++!5220 (list!7716 (charsOf!2044 (_1!10773 (get!5729 lt!669245)))) (_2!10773 (get!5729 lt!669245))) lt!668845))))

(declare-fun d!531576 () Bool)

(declare-fun e!1112489 () Bool)

(assert (=> d!531576 e!1112489))

(declare-fun res!781373 () Bool)

(assert (=> d!531576 (=> res!781373 e!1112489)))

(assert (=> d!531576 (= res!781373 (isEmpty!12013 lt!669245))))

(assert (=> d!531576 (= lt!669245 e!1112490)))

(declare-fun c!283717 () Bool)

(assert (=> d!531576 (= c!283717 (and ((_ is Cons!19083) rules!3447) ((_ is Nil!19083) (t!161520 rules!3447))))))

(declare-fun lt!669247 () Unit!33035)

(declare-fun lt!669248 () Unit!33035)

(assert (=> d!531576 (= lt!669247 lt!669248)))

(assert (=> d!531576 (isPrefix!1636 lt!668845 lt!668845)))

(assert (=> d!531576 (= lt!669248 (lemmaIsPrefixRefl!1095 lt!668845 lt!668845))))

(assert (=> d!531576 (rulesValidInductive!1130 thiss!24550 rules!3447)))

(assert (=> d!531576 (= (maxPrefix!1578 thiss!24550 rules!3447 lt!668845) lt!669245)))

(declare-fun b!1738403 () Bool)

(assert (=> b!1738403 (= e!1112489 e!1112488)))

(declare-fun res!781374 () Bool)

(assert (=> b!1738403 (=> (not res!781374) (not e!1112488))))

(assert (=> b!1738403 (= res!781374 (isDefined!3158 lt!669245))))

(declare-fun bm!110033 () Bool)

(assert (=> bm!110033 (= call!110038 (maxPrefixOneRule!954 thiss!24550 (h!24484 rules!3447) lt!668845))))

(declare-fun b!1738404 () Bool)

(declare-fun res!781375 () Bool)

(assert (=> b!1738404 (=> (not res!781375) (not e!1112488))))

(assert (=> b!1738404 (= res!781375 (< (size!15168 (_2!10773 (get!5729 lt!669245))) (size!15168 lt!668845)))))

(declare-fun b!1738405 () Bool)

(assert (=> b!1738405 (= e!1112488 (contains!3417 rules!3447 (rule!5389 (_1!10773 (get!5729 lt!669245)))))))

(declare-fun b!1738406 () Bool)

(declare-fun res!781372 () Bool)

(assert (=> b!1738406 (=> (not res!781372) (not e!1112488))))

(assert (=> b!1738406 (= res!781372 (matchR!2197 (regex!3395 (rule!5389 (_1!10773 (get!5729 lt!669245)))) (list!7716 (charsOf!2044 (_1!10773 (get!5729 lt!669245))))))))

(declare-fun b!1738407 () Bool)

(declare-fun res!781376 () Bool)

(assert (=> b!1738407 (=> (not res!781376) (not e!1112488))))

(assert (=> b!1738407 (= res!781376 (= (list!7716 (charsOf!2044 (_1!10773 (get!5729 lt!669245)))) (originalCharacters!4209 (_1!10773 (get!5729 lt!669245)))))))

(assert (= (and d!531576 c!283717) b!1738400))

(assert (= (and d!531576 (not c!283717)) b!1738399))

(assert (= (or b!1738400 b!1738399) bm!110033))

(assert (= (and d!531576 (not res!781373)) b!1738403))

(assert (= (and b!1738403 res!781374) b!1738407))

(assert (= (and b!1738407 res!781376) b!1738404))

(assert (= (and b!1738404 res!781375) b!1738402))

(assert (= (and b!1738402 res!781371) b!1738401))

(assert (= (and b!1738401 res!781370) b!1738406))

(assert (= (and b!1738406 res!781372) b!1738405))

(declare-fun m!2148883 () Bool)

(assert (=> b!1738402 m!2148883))

(declare-fun m!2148885 () Bool)

(assert (=> b!1738402 m!2148885))

(assert (=> b!1738402 m!2148885))

(declare-fun m!2148887 () Bool)

(assert (=> b!1738402 m!2148887))

(assert (=> b!1738402 m!2148887))

(declare-fun m!2148889 () Bool)

(assert (=> b!1738402 m!2148889))

(assert (=> b!1738404 m!2148883))

(declare-fun m!2148891 () Bool)

(assert (=> b!1738404 m!2148891))

(assert (=> b!1738404 m!2148289))

(assert (=> b!1738406 m!2148883))

(assert (=> b!1738406 m!2148885))

(assert (=> b!1738406 m!2148885))

(assert (=> b!1738406 m!2148887))

(assert (=> b!1738406 m!2148887))

(declare-fun m!2148893 () Bool)

(assert (=> b!1738406 m!2148893))

(declare-fun m!2148895 () Bool)

(assert (=> bm!110033 m!2148895))

(assert (=> b!1738405 m!2148883))

(declare-fun m!2148897 () Bool)

(assert (=> b!1738405 m!2148897))

(assert (=> b!1738407 m!2148883))

(assert (=> b!1738407 m!2148885))

(assert (=> b!1738407 m!2148885))

(assert (=> b!1738407 m!2148887))

(declare-fun m!2148899 () Bool)

(assert (=> d!531576 m!2148899))

(declare-fun m!2148901 () Bool)

(assert (=> d!531576 m!2148901))

(declare-fun m!2148903 () Bool)

(assert (=> d!531576 m!2148903))

(assert (=> d!531576 m!2148435))

(declare-fun m!2148905 () Bool)

(assert (=> b!1738403 m!2148905))

(assert (=> b!1738401 m!2148883))

(declare-fun m!2148907 () Bool)

(assert (=> b!1738401 m!2148907))

(assert (=> b!1738401 m!2148907))

(declare-fun m!2148909 () Bool)

(assert (=> b!1738401 m!2148909))

(declare-fun m!2148911 () Bool)

(assert (=> b!1738399 m!2148911))

(assert (=> b!1737549 d!531576))

(declare-fun d!531578 () Bool)

(declare-fun e!1112492 () Bool)

(assert (=> d!531578 e!1112492))

(declare-fun res!781377 () Bool)

(assert (=> d!531578 (=> res!781377 e!1112492)))

(declare-fun lt!669249 () Bool)

(assert (=> d!531578 (= res!781377 (not lt!669249))))

(declare-fun e!1112491 () Bool)

(assert (=> d!531578 (= lt!669249 e!1112491)))

(declare-fun res!781378 () Bool)

(assert (=> d!531578 (=> res!781378 e!1112491)))

(assert (=> d!531578 (= res!781378 ((_ is Nil!19082) lt!668862))))

(assert (=> d!531578 (= (isPrefix!1636 lt!668862 lt!668845) lt!669249)))

(declare-fun b!1738411 () Bool)

(assert (=> b!1738411 (= e!1112492 (>= (size!15168 lt!668845) (size!15168 lt!668862)))))

(declare-fun b!1738408 () Bool)

(declare-fun e!1112493 () Bool)

(assert (=> b!1738408 (= e!1112491 e!1112493)))

(declare-fun res!781380 () Bool)

(assert (=> b!1738408 (=> (not res!781380) (not e!1112493))))

(assert (=> b!1738408 (= res!781380 (not ((_ is Nil!19082) lt!668845)))))

(declare-fun b!1738409 () Bool)

(declare-fun res!781379 () Bool)

(assert (=> b!1738409 (=> (not res!781379) (not e!1112493))))

(assert (=> b!1738409 (= res!781379 (= (head!3972 lt!668862) (head!3972 lt!668845)))))

(declare-fun b!1738410 () Bool)

(assert (=> b!1738410 (= e!1112493 (isPrefix!1636 (tail!2595 lt!668862) (tail!2595 lt!668845)))))

(assert (= (and d!531578 (not res!781378)) b!1738408))

(assert (= (and b!1738408 res!781380) b!1738409))

(assert (= (and b!1738409 res!781379) b!1738410))

(assert (= (and d!531578 (not res!781377)) b!1738411))

(assert (=> b!1738411 m!2148289))

(assert (=> b!1738411 m!2148313))

(assert (=> b!1738409 m!2148209))

(assert (=> b!1738409 m!2148295))

(assert (=> b!1738410 m!2148213))

(assert (=> b!1738410 m!2148299))

(assert (=> b!1738410 m!2148213))

(assert (=> b!1738410 m!2148299))

(declare-fun m!2148913 () Bool)

(assert (=> b!1738410 m!2148913))

(assert (=> b!1737549 d!531578))

(declare-fun d!531580 () Bool)

(declare-fun e!1112495 () Bool)

(assert (=> d!531580 e!1112495))

(declare-fun res!781381 () Bool)

(assert (=> d!531580 (=> res!781381 e!1112495)))

(declare-fun lt!669250 () Bool)

(assert (=> d!531580 (= res!781381 (not lt!669250))))

(declare-fun e!1112494 () Bool)

(assert (=> d!531580 (= lt!669250 e!1112494)))

(declare-fun res!781382 () Bool)

(assert (=> d!531580 (=> res!781382 e!1112494)))

(assert (=> d!531580 (= res!781382 ((_ is Nil!19082) lt!668841))))

(assert (=> d!531580 (= (isPrefix!1636 lt!668841 lt!668845) lt!669250)))

(declare-fun b!1738415 () Bool)

(assert (=> b!1738415 (= e!1112495 (>= (size!15168 lt!668845) (size!15168 lt!668841)))))

(declare-fun b!1738412 () Bool)

(declare-fun e!1112496 () Bool)

(assert (=> b!1738412 (= e!1112494 e!1112496)))

(declare-fun res!781384 () Bool)

(assert (=> b!1738412 (=> (not res!781384) (not e!1112496))))

(assert (=> b!1738412 (= res!781384 (not ((_ is Nil!19082) lt!668845)))))

(declare-fun b!1738413 () Bool)

(declare-fun res!781383 () Bool)

(assert (=> b!1738413 (=> (not res!781383) (not e!1112496))))

(assert (=> b!1738413 (= res!781383 (= (head!3972 lt!668841) (head!3972 lt!668845)))))

(declare-fun b!1738414 () Bool)

(assert (=> b!1738414 (= e!1112496 (isPrefix!1636 (tail!2595 lt!668841) (tail!2595 lt!668845)))))

(assert (= (and d!531580 (not res!781382)) b!1738412))

(assert (= (and b!1738412 res!781384) b!1738413))

(assert (= (and b!1738413 res!781383) b!1738414))

(assert (= (and d!531580 (not res!781381)) b!1738415))

(assert (=> b!1738415 m!2148289))

(assert (=> b!1738415 m!2147773))

(assert (=> b!1738413 m!2148159))

(assert (=> b!1738413 m!2148295))

(assert (=> b!1738414 m!2148163))

(assert (=> b!1738414 m!2148299))

(assert (=> b!1738414 m!2148163))

(assert (=> b!1738414 m!2148299))

(declare-fun m!2148915 () Bool)

(assert (=> b!1738414 m!2148915))

(assert (=> b!1737549 d!531580))

(declare-fun b!1738428 () Bool)

(declare-fun e!1112507 () Option!3814)

(declare-fun e!1112505 () Option!3814)

(assert (=> b!1738428 (= e!1112507 e!1112505)))

(declare-fun c!283723 () Bool)

(assert (=> b!1738428 (= c!283723 (and ((_ is Cons!19083) rules!3447) (not (= (tag!3729 (h!24484 rules!3447)) (tag!3729 (rule!5389 (_1!10773 lt!668881)))))))))

(declare-fun b!1738429 () Bool)

(assert (=> b!1738429 (= e!1112507 (Some!3813 (h!24484 rules!3447)))))

(declare-fun b!1738430 () Bool)

(declare-fun e!1112506 () Bool)

(declare-fun e!1112508 () Bool)

(assert (=> b!1738430 (= e!1112506 e!1112508)))

(declare-fun res!781389 () Bool)

(assert (=> b!1738430 (=> (not res!781389) (not e!1112508))))

(declare-fun lt!669258 () Option!3814)

(assert (=> b!1738430 (= res!781389 (contains!3417 rules!3447 (get!5730 lt!669258)))))

(declare-fun d!531582 () Bool)

(assert (=> d!531582 e!1112506))

(declare-fun res!781390 () Bool)

(assert (=> d!531582 (=> res!781390 e!1112506)))

(declare-fun isEmpty!12014 (Option!3814) Bool)

(assert (=> d!531582 (= res!781390 (isEmpty!12014 lt!669258))))

(assert (=> d!531582 (= lt!669258 e!1112507)))

(declare-fun c!283722 () Bool)

(assert (=> d!531582 (= c!283722 (and ((_ is Cons!19083) rules!3447) (= (tag!3729 (h!24484 rules!3447)) (tag!3729 (rule!5389 (_1!10773 lt!668881))))))))

(assert (=> d!531582 (rulesInvariant!2693 thiss!24550 rules!3447)))

(assert (=> d!531582 (= (getRuleFromTag!445 thiss!24550 rules!3447 (tag!3729 (rule!5389 (_1!10773 lt!668881)))) lt!669258)))

(declare-fun b!1738431 () Bool)

(declare-fun lt!669259 () Unit!33035)

(declare-fun lt!669257 () Unit!33035)

(assert (=> b!1738431 (= lt!669259 lt!669257)))

(assert (=> b!1738431 (rulesInvariant!2693 thiss!24550 (t!161520 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!158 (LexerInterface!3024 Rule!6590 List!19153) Unit!33035)

(assert (=> b!1738431 (= lt!669257 (lemmaInvariantOnRulesThenOnTail!158 thiss!24550 (h!24484 rules!3447) (t!161520 rules!3447)))))

(assert (=> b!1738431 (= e!1112505 (getRuleFromTag!445 thiss!24550 (t!161520 rules!3447) (tag!3729 (rule!5389 (_1!10773 lt!668881)))))))

(declare-fun b!1738432 () Bool)

(assert (=> b!1738432 (= e!1112505 None!3813)))

(declare-fun b!1738433 () Bool)

(assert (=> b!1738433 (= e!1112508 (= (tag!3729 (get!5730 lt!669258)) (tag!3729 (rule!5389 (_1!10773 lt!668881)))))))

(assert (= (and d!531582 c!283722) b!1738429))

(assert (= (and d!531582 (not c!283722)) b!1738428))

(assert (= (and b!1738428 c!283723) b!1738431))

(assert (= (and b!1738428 (not c!283723)) b!1738432))

(assert (= (and d!531582 (not res!781390)) b!1738430))

(assert (= (and b!1738430 res!781389) b!1738433))

(declare-fun m!2148917 () Bool)

(assert (=> b!1738430 m!2148917))

(assert (=> b!1738430 m!2148917))

(declare-fun m!2148919 () Bool)

(assert (=> b!1738430 m!2148919))

(declare-fun m!2148921 () Bool)

(assert (=> d!531582 m!2148921))

(assert (=> d!531582 m!2147811))

(declare-fun m!2148923 () Bool)

(assert (=> b!1738431 m!2148923))

(declare-fun m!2148925 () Bool)

(assert (=> b!1738431 m!2148925))

(declare-fun m!2148927 () Bool)

(assert (=> b!1738431 m!2148927))

(assert (=> b!1738433 m!2148917))

(assert (=> b!1737549 d!531582))

(assert (=> b!1737549 d!531342))

(declare-fun d!531584 () Bool)

(assert (=> d!531584 (isPrefix!1636 lt!668841 (++!5220 lt!668841 (_2!10773 lt!668881)))))

(declare-fun lt!669262 () Unit!33035)

(declare-fun choose!10688 (List!19152 List!19152) Unit!33035)

(assert (=> d!531584 (= lt!669262 (choose!10688 lt!668841 (_2!10773 lt!668881)))))

(assert (=> d!531584 (= (lemmaConcatTwoListThenFirstIsPrefix!1146 lt!668841 (_2!10773 lt!668881)) lt!669262)))

(declare-fun bs!402929 () Bool)

(assert (= bs!402929 d!531584))

(assert (=> bs!402929 m!2147831))

(assert (=> bs!402929 m!2147831))

(assert (=> bs!402929 m!2147833))

(declare-fun m!2148929 () Bool)

(assert (=> bs!402929 m!2148929))

(assert (=> b!1737549 d!531584))

(declare-fun d!531586 () Bool)

(assert (=> d!531586 (isPrefix!1636 lt!668862 (++!5220 lt!668862 suffix!1421))))

(declare-fun lt!669263 () Unit!33035)

(assert (=> d!531586 (= lt!669263 (choose!10688 lt!668862 suffix!1421))))

(assert (=> d!531586 (= (lemmaConcatTwoListThenFirstIsPrefix!1146 lt!668862 suffix!1421) lt!669263)))

(declare-fun bs!402930 () Bool)

(assert (= bs!402930 d!531586))

(assert (=> bs!402930 m!2147853))

(assert (=> bs!402930 m!2147853))

(declare-fun m!2148931 () Bool)

(assert (=> bs!402930 m!2148931))

(declare-fun m!2148933 () Bool)

(assert (=> bs!402930 m!2148933))

(assert (=> b!1737549 d!531586))

(declare-fun d!531588 () Bool)

(assert (=> d!531588 (= (isDefined!3157 lt!668861) (not (isEmpty!12014 lt!668861)))))

(declare-fun bs!402931 () Bool)

(assert (= bs!402931 d!531588))

(declare-fun m!2148935 () Bool)

(assert (=> bs!402931 m!2148935))

(assert (=> b!1737549 d!531588))

(declare-fun d!531590 () Bool)

(declare-fun e!1112511 () Bool)

(assert (=> d!531590 e!1112511))

(declare-fun res!781395 () Bool)

(assert (=> d!531590 (=> (not res!781395) (not e!1112511))))

(assert (=> d!531590 (= res!781395 (isDefined!3157 (getRuleFromTag!445 thiss!24550 rules!3447 (tag!3729 (rule!5389 (_1!10773 lt!668881))))))))

(declare-fun lt!669266 () Unit!33035)

(declare-fun choose!10689 (LexerInterface!3024 List!19153 List!19152 Token!6356) Unit!33035)

(assert (=> d!531590 (= lt!669266 (choose!10689 thiss!24550 rules!3447 lt!668845 (_1!10773 lt!668881)))))

(assert (=> d!531590 (rulesInvariant!2693 thiss!24550 rules!3447)))

(assert (=> d!531590 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!445 thiss!24550 rules!3447 lt!668845 (_1!10773 lt!668881)) lt!669266)))

(declare-fun b!1738438 () Bool)

(declare-fun res!781396 () Bool)

(assert (=> b!1738438 (=> (not res!781396) (not e!1112511))))

(assert (=> b!1738438 (= res!781396 (matchR!2197 (regex!3395 (get!5730 (getRuleFromTag!445 thiss!24550 rules!3447 (tag!3729 (rule!5389 (_1!10773 lt!668881)))))) (list!7716 (charsOf!2044 (_1!10773 lt!668881)))))))

(declare-fun b!1738439 () Bool)

(assert (=> b!1738439 (= e!1112511 (= (rule!5389 (_1!10773 lt!668881)) (get!5730 (getRuleFromTag!445 thiss!24550 rules!3447 (tag!3729 (rule!5389 (_1!10773 lt!668881)))))))))

(assert (= (and d!531590 res!781395) b!1738438))

(assert (= (and b!1738438 res!781396) b!1738439))

(assert (=> d!531590 m!2147849))

(assert (=> d!531590 m!2147849))

(declare-fun m!2148937 () Bool)

(assert (=> d!531590 m!2148937))

(declare-fun m!2148939 () Bool)

(assert (=> d!531590 m!2148939))

(assert (=> d!531590 m!2147811))

(assert (=> b!1738438 m!2147723))

(assert (=> b!1738438 m!2147725))

(assert (=> b!1738438 m!2147849))

(declare-fun m!2148941 () Bool)

(assert (=> b!1738438 m!2148941))

(assert (=> b!1738438 m!2147723))

(assert (=> b!1738438 m!2147725))

(declare-fun m!2148943 () Bool)

(assert (=> b!1738438 m!2148943))

(assert (=> b!1738438 m!2147849))

(assert (=> b!1738439 m!2147849))

(assert (=> b!1738439 m!2147849))

(assert (=> b!1738439 m!2148941))

(assert (=> b!1737549 d!531590))

(declare-fun b!1738444 () Bool)

(declare-fun e!1112514 () Bool)

(declare-fun tp!495134 () Bool)

(assert (=> b!1738444 (= e!1112514 (and tp_is_empty!7689 tp!495134))))

(assert (=> b!1737569 (= tp!495063 e!1112514)))

(assert (= (and b!1737569 ((_ is Cons!19082) (originalCharacters!4209 token!523))) b!1738444))

(declare-fun b!1738445 () Bool)

(declare-fun e!1112515 () Bool)

(declare-fun tp!495135 () Bool)

(assert (=> b!1738445 (= e!1112515 (and tp_is_empty!7689 tp!495135))))

(assert (=> b!1737548 (= tp!495061 e!1112515)))

(assert (= (and b!1737548 ((_ is Cons!19082) (t!161519 suffix!1421))) b!1738445))

(declare-fun b!1738456 () Bool)

(declare-fun b_free!47715 () Bool)

(declare-fun b_next!48419 () Bool)

(assert (=> b!1738456 (= b_free!47715 (not b_next!48419))))

(declare-fun t!161570 () Bool)

(declare-fun tb!103851 () Bool)

(assert (=> (and b!1738456 (= (toValue!4902 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161570) tb!103851))

(declare-fun result!124894 () Bool)

(assert (= result!124894 result!124820))

(assert (=> b!1737574 t!161570))

(assert (=> d!531378 t!161570))

(declare-fun tb!103853 () Bool)

(declare-fun t!161572 () Bool)

(assert (=> (and b!1738456 (= (toValue!4902 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161572) tb!103853))

(declare-fun result!124896 () Bool)

(assert (= result!124896 result!124846))

(assert (=> d!531284 t!161572))

(declare-fun t!161574 () Bool)

(declare-fun tb!103855 () Bool)

(assert (=> (and b!1738456 (= (toValue!4902 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161574) tb!103855))

(declare-fun result!124898 () Bool)

(assert (= result!124898 result!124858))

(assert (=> d!531526 t!161574))

(assert (=> d!531306 t!161570))

(assert (=> d!531284 t!161570))

(declare-fun b_and!128973 () Bool)

(declare-fun tp!495144 () Bool)

(assert (=> b!1738456 (= tp!495144 (and (=> t!161570 result!124894) (=> t!161574 result!124898) (=> t!161572 result!124896) b_and!128973))))

(declare-fun b_free!47717 () Bool)

(declare-fun b_next!48421 () Bool)

(assert (=> b!1738456 (= b_free!47717 (not b_next!48421))))

(declare-fun t!161576 () Bool)

(declare-fun tb!103857 () Bool)

(assert (=> (and b!1738456 (= (toChars!4761 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161576) tb!103857))

(declare-fun result!124900 () Bool)

(assert (= result!124900 result!124812))

(assert (=> d!531378 t!161576))

(declare-fun tb!103859 () Bool)

(declare-fun t!161578 () Bool)

(assert (=> (and b!1738456 (= (toChars!4761 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881))))) t!161578) tb!103859))

(declare-fun result!124902 () Bool)

(assert (= result!124902 result!124828))

(assert (=> b!1737581 t!161578))

(assert (=> b!1737574 t!161576))

(declare-fun t!161580 () Bool)

(declare-fun tb!103861 () Bool)

(assert (=> (and b!1738456 (= (toChars!4761 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toChars!4761 (transformation!3395 (rule!5389 token!523)))) t!161580) tb!103861))

(declare-fun result!124904 () Bool)

(assert (= result!124904 result!124852))

(assert (=> d!531420 t!161580))

(assert (=> b!1737941 t!161580))

(assert (=> d!531342 t!161578))

(declare-fun b_and!128975 () Bool)

(declare-fun tp!495145 () Bool)

(assert (=> b!1738456 (= tp!495145 (and (=> t!161580 result!124904) (=> t!161576 result!124900) (=> t!161578 result!124902) b_and!128975))))

(declare-fun e!1112527 () Bool)

(assert (=> b!1738456 (= e!1112527 (and tp!495144 tp!495145))))

(declare-fun e!1112524 () Bool)

(declare-fun b!1738455 () Bool)

(declare-fun tp!495147 () Bool)

(assert (=> b!1738455 (= e!1112524 (and tp!495147 (inv!24712 (tag!3729 (h!24484 (t!161520 rules!3447)))) (inv!24717 (transformation!3395 (h!24484 (t!161520 rules!3447)))) e!1112527))))

(declare-fun b!1738454 () Bool)

(declare-fun e!1112526 () Bool)

(declare-fun tp!495146 () Bool)

(assert (=> b!1738454 (= e!1112526 (and e!1112524 tp!495146))))

(assert (=> b!1737583 (= tp!495068 e!1112526)))

(assert (= b!1738455 b!1738456))

(assert (= b!1738454 b!1738455))

(assert (= (and b!1737583 ((_ is Cons!19083) (t!161520 rules!3447))) b!1738454))

(declare-fun m!2148945 () Bool)

(assert (=> b!1738455 m!2148945))

(declare-fun m!2148947 () Bool)

(assert (=> b!1738455 m!2148947))

(declare-fun e!1112532 () Bool)

(declare-fun tp!495155 () Bool)

(declare-fun b!1738465 () Bool)

(declare-fun tp!495156 () Bool)

(assert (=> b!1738465 (= e!1112532 (and (inv!24719 (left!15258 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881)))))) tp!495156 (inv!24719 (right!15588 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881)))))) tp!495155))))

(declare-fun b!1738467 () Bool)

(declare-fun e!1112533 () Bool)

(declare-fun tp!495154 () Bool)

(assert (=> b!1738467 (= e!1112533 tp!495154)))

(declare-fun b!1738466 () Bool)

(declare-fun inv!24726 (IArray!12699) Bool)

(assert (=> b!1738466 (= e!1112532 (and (inv!24726 (xs!9223 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881)))))) e!1112533))))

(assert (=> b!1737608 (= tp!495076 (and (inv!24719 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881))))) e!1112532))))

(assert (= (and b!1737608 ((_ is Node!6347) (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881)))))) b!1738465))

(assert (= b!1738466 b!1738467))

(assert (= (and b!1737608 ((_ is Leaf!9265) (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (value!106430 (_1!10773 lt!668881)))))) b!1738466))

(declare-fun m!2148949 () Bool)

(assert (=> b!1738465 m!2148949))

(declare-fun m!2148951 () Bool)

(assert (=> b!1738465 m!2148951))

(declare-fun m!2148953 () Bool)

(assert (=> b!1738466 m!2148953))

(assert (=> b!1737608 m!2147719))

(declare-fun b!1738481 () Bool)

(declare-fun e!1112536 () Bool)

(declare-fun tp!495169 () Bool)

(declare-fun tp!495168 () Bool)

(assert (=> b!1738481 (= e!1112536 (and tp!495169 tp!495168))))

(assert (=> b!1737568 (= tp!495066 e!1112536)))

(declare-fun b!1738480 () Bool)

(declare-fun tp!495171 () Bool)

(assert (=> b!1738480 (= e!1112536 tp!495171)))

(declare-fun b!1738478 () Bool)

(assert (=> b!1738478 (= e!1112536 tp_is_empty!7689)))

(declare-fun b!1738479 () Bool)

(declare-fun tp!495170 () Bool)

(declare-fun tp!495167 () Bool)

(assert (=> b!1738479 (= e!1112536 (and tp!495170 tp!495167))))

(assert (= (and b!1737568 ((_ is ElementMatch!4723) (regex!3395 (h!24484 rules!3447)))) b!1738478))

(assert (= (and b!1737568 ((_ is Concat!8209) (regex!3395 (h!24484 rules!3447)))) b!1738479))

(assert (= (and b!1737568 ((_ is Star!4723) (regex!3395 (h!24484 rules!3447)))) b!1738480))

(assert (= (and b!1737568 ((_ is Union!4723) (regex!3395 (h!24484 rules!3447)))) b!1738481))

(declare-fun b!1738485 () Bool)

(declare-fun e!1112537 () Bool)

(declare-fun tp!495174 () Bool)

(declare-fun tp!495173 () Bool)

(assert (=> b!1738485 (= e!1112537 (and tp!495174 tp!495173))))

(assert (=> b!1737550 (= tp!495062 e!1112537)))

(declare-fun b!1738484 () Bool)

(declare-fun tp!495176 () Bool)

(assert (=> b!1738484 (= e!1112537 tp!495176)))

(declare-fun b!1738482 () Bool)

(assert (=> b!1738482 (= e!1112537 tp_is_empty!7689)))

(declare-fun b!1738483 () Bool)

(declare-fun tp!495175 () Bool)

(declare-fun tp!495172 () Bool)

(assert (=> b!1738483 (= e!1112537 (and tp!495175 tp!495172))))

(assert (= (and b!1737550 ((_ is ElementMatch!4723) (regex!3395 rule!422))) b!1738482))

(assert (= (and b!1737550 ((_ is Concat!8209) (regex!3395 rule!422))) b!1738483))

(assert (= (and b!1737550 ((_ is Star!4723) (regex!3395 rule!422))) b!1738484))

(assert (= (and b!1737550 ((_ is Union!4723) (regex!3395 rule!422))) b!1738485))

(declare-fun e!1112538 () Bool)

(declare-fun b!1738486 () Bool)

(declare-fun tp!495179 () Bool)

(declare-fun tp!495178 () Bool)

(assert (=> b!1738486 (= e!1112538 (and (inv!24719 (left!15258 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))))) tp!495179 (inv!24719 (right!15588 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))))) tp!495178))))

(declare-fun b!1738488 () Bool)

(declare-fun e!1112539 () Bool)

(declare-fun tp!495177 () Bool)

(assert (=> b!1738488 (= e!1112539 tp!495177)))

(declare-fun b!1738487 () Bool)

(assert (=> b!1738487 (= e!1112538 (and (inv!24726 (xs!9223 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))))) e!1112539))))

(assert (=> b!1737605 (= tp!495075 (and (inv!24719 (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854)))) e!1112538))))

(assert (= (and b!1737605 ((_ is Node!6347) (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))))) b!1738486))

(assert (= b!1738487 b!1738488))

(assert (= (and b!1737605 ((_ is Leaf!9265) (c!283563 (dynLambda!8989 (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) (dynLambda!8990 (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))) lt!668854))))) b!1738487))

(declare-fun m!2148955 () Bool)

(assert (=> b!1738486 m!2148955))

(declare-fun m!2148957 () Bool)

(assert (=> b!1738486 m!2148957))

(declare-fun m!2148959 () Bool)

(assert (=> b!1738487 m!2148959))

(assert (=> b!1737605 m!2147713))

(declare-fun b!1738492 () Bool)

(declare-fun e!1112540 () Bool)

(declare-fun tp!495182 () Bool)

(declare-fun tp!495181 () Bool)

(assert (=> b!1738492 (= e!1112540 (and tp!495182 tp!495181))))

(assert (=> b!1737554 (= tp!495071 e!1112540)))

(declare-fun b!1738491 () Bool)

(declare-fun tp!495184 () Bool)

(assert (=> b!1738491 (= e!1112540 tp!495184)))

(declare-fun b!1738489 () Bool)

(assert (=> b!1738489 (= e!1112540 tp_is_empty!7689)))

(declare-fun b!1738490 () Bool)

(declare-fun tp!495183 () Bool)

(declare-fun tp!495180 () Bool)

(assert (=> b!1738490 (= e!1112540 (and tp!495183 tp!495180))))

(assert (= (and b!1737554 ((_ is ElementMatch!4723) (regex!3395 (rule!5389 token!523)))) b!1738489))

(assert (= (and b!1737554 ((_ is Concat!8209) (regex!3395 (rule!5389 token!523)))) b!1738490))

(assert (= (and b!1737554 ((_ is Star!4723) (regex!3395 (rule!5389 token!523)))) b!1738491))

(assert (= (and b!1737554 ((_ is Union!4723) (regex!3395 (rule!5389 token!523)))) b!1738492))

(declare-fun b_lambda!55651 () Bool)

(assert (= b_lambda!55603 (or (and b!1737561 b_free!47701 (= (toChars!4761 (transformation!3395 (rule!5389 token!523))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1737557 b_free!47705 (= (toChars!4761 (transformation!3395 rule!422)) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1737567 b_free!47709 (= (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1738456 b_free!47717 (= (toChars!4761 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) b_lambda!55651)))

(declare-fun b_lambda!55653 () Bool)

(assert (= b_lambda!55601 (or (and b!1737561 b_free!47699 (= (toValue!4902 (transformation!3395 (rule!5389 token!523))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1737557 b_free!47703 (= (toValue!4902 (transformation!3395 rule!422)) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1737567 b_free!47707 (= (toValue!4902 (transformation!3395 (h!24484 rules!3447))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1738456 b_free!47715 (= (toValue!4902 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toValue!4902 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) b_lambda!55653)))

(declare-fun b_lambda!55655 () Bool)

(assert (= b_lambda!55599 (or (and b!1737561 b_free!47701 (= (toChars!4761 (transformation!3395 (rule!5389 token!523))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1737557 b_free!47705 (= (toChars!4761 (transformation!3395 rule!422)) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1737567 b_free!47709 (= (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) (and b!1738456 b_free!47717 (= (toChars!4761 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toChars!4761 (transformation!3395 (rule!5389 (_1!10773 lt!668881)))))) b_lambda!55655)))

(declare-fun b_lambda!55657 () Bool)

(assert (= b_lambda!55619 (or (and b!1737561 b_free!47701) (and b!1737557 b_free!47705 (= (toChars!4761 (transformation!3395 rule!422)) (toChars!4761 (transformation!3395 (rule!5389 token!523))))) (and b!1737567 b_free!47709 (= (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toChars!4761 (transformation!3395 (rule!5389 token!523))))) (and b!1738456 b_free!47717 (= (toChars!4761 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toChars!4761 (transformation!3395 (rule!5389 token!523))))) b_lambda!55657)))

(declare-fun b_lambda!55659 () Bool)

(assert (= b_lambda!55625 (or (and b!1737561 b_free!47701) (and b!1737557 b_free!47705 (= (toChars!4761 (transformation!3395 rule!422)) (toChars!4761 (transformation!3395 (rule!5389 token!523))))) (and b!1737567 b_free!47709 (= (toChars!4761 (transformation!3395 (h!24484 rules!3447))) (toChars!4761 (transformation!3395 (rule!5389 token!523))))) (and b!1738456 b_free!47717 (= (toChars!4761 (transformation!3395 (h!24484 (t!161520 rules!3447)))) (toChars!4761 (transformation!3395 (rule!5389 token!523))))) b_lambda!55659)))

(check-sat (not d!531258) (not d!531342) (not b!1737894) (not b!1738438) (not b!1738430) (not b!1738067) (not b!1738413) (not d!531582) (not b!1738406) (not d!531410) (not d!531370) (not b!1737987) (not b!1738399) (not d!531570) (not bm!110020) (not b_lambda!55613) (not d!531424) (not b!1737871) (not b!1737698) (not b!1737711) (not d!531438) (not b_next!48403) b_and!128923 (not d!531362) (not b!1737891) (not b!1737922) (not d!531338) (not d!531398) (not b!1738431) (not d!531364) (not d!531576) (not d!531436) (not b_lambda!55653) (not b!1738389) (not d!531372) (not b!1738305) (not b_lambda!55621) (not b_next!48405) (not b!1737874) (not d!531270) (not d!531280) (not b!1737851) (not b!1737872) (not tb!103827) (not b!1738491) (not d!531284) (not d!531354) (not b!1737878) (not b!1737988) (not b!1737919) (not d!531408) (not d!531340) (not b!1737920) b_and!128925 b_and!128947 (not d!531586) (not b!1737892) (not d!531534) (not b!1737719) (not b!1738275) (not b!1738487) (not b!1737893) (not b!1738466) (not d!531390) (not d!531380) (not b!1738444) (not d!531378) (not b_lambda!55655) (not b!1738008) (not b!1737942) (not bm!110018) (not b!1738409) (not bm!110033) (not d!531562) (not bm!110017) (not d!531374) (not b!1738485) (not b!1738479) (not d!531584) (not b!1737908) (not d!531360) (not tb!103815) (not b!1737952) (not b!1738270) (not b!1738403) (not bm!110021) (not d!531590) (not b!1737997) (not b!1738059) (not b_next!48409) (not b!1738484) (not d!531450) (not b!1737932) (not b!1738454) b_and!128973 (not b!1737936) (not b!1738009) (not b!1738398) (not d!531404) (not b_next!48413) (not b!1737608) (not d!531388) (not d!531532) (not b!1737996) (not b!1737903) (not d!531352) (not d!531420) (not d!531382) (not b_next!48419) (not b!1738061) (not b_lambda!55659) (not b!1738065) (not b!1738490) (not d!531550) (not b!1737941) (not b!1738018) (not b_lambda!55609) (not b!1737974) (not b!1738017) (not d!531588) (not d!531272) (not b!1737998) (not b!1738020) (not d!531366) (not b!1737971) (not b!1738414) (not b!1738407) (not b!1737986) (not b_next!48407) (not bm!110026) (not d!531418) (not b!1738268) (not d!531406) (not b!1738439) (not b!1737934) (not b!1738433) (not d!531394) (not b_next!48411) (not b!1738397) (not b!1737853) (not b!1738405) (not b!1738022) (not b!1738278) (not b!1737921) (not b!1738082) (not b!1737972) (not b!1737915) (not b_lambda!55623) (not bm!110023) (not b!1738062) (not b!1737855) (not d!531422) (not b_lambda!55633) (not d!531302) (not b!1737849) (not b!1738063) (not b!1738066) (not b!1737605) (not b!1737957) (not b!1738415) (not d!531528) (not b!1737930) (not b!1738393) (not bm!110019) (not b!1738404) (not b!1737929) (not d!531268) (not b!1738269) (not d!531308) (not b!1738064) (not b_lambda!55611) (not b!1737931) (not d!531538) (not b!1738402) (not d!531440) (not b!1738101) (not b!1737700) (not b!1737993) (not b_lambda!55617) (not d!531560) (not b!1738292) (not b!1738480) (not b!1737910) (not b!1737906) (not b!1738486) (not d!531384) (not b!1737876) b_and!128949 (not b!1738488) (not d!531376) (not b!1737953) (not b!1738291) (not b!1738411) (not b!1737740) b_and!128975 (not b!1738467) b_and!128945 (not b!1738271) b_and!128921 (not b!1737905) (not b!1737970) (not b!1737976) (not d!531322) (not b_lambda!55651) (not d!531546) (not b!1737950) (not b_next!48421) (not b!1738273) (not b!1738392) (not d!531558) (not d!531396) (not d!531536) (not tb!103821) (not b!1737862) tp_is_empty!7689 (not b!1737896) (not b_lambda!55657) (not b!1738272) (not b!1738274) (not b!1738387) (not b!1738410) (not b!1738019) (not b!1738483) (not b!1737969) (not b!1738306) (not b!1737943) (not b!1738445) (not d!531314) (not b!1738481) (not b!1738455) (not d!531368) (not d!531274) (not b!1738492) (not b!1738388) (not b!1737955) (not b!1738024) (not b!1738401) (not b!1737873) (not b!1738465) (not b!1738288) (not b!1738289) (not d!531324) (not d!531350) (not b!1737715) (not b!1737850) (not b!1738102) (not b!1737864) (not d!531402) (not b!1738396) (not b!1737848) (not b!1737904) (not bm!110022) (not b!1737951))
(check-sat (not b_next!48405) (not b_next!48419) (not b_next!48407) (not b_next!48411) b_and!128949 (not b_next!48403) b_and!128923 b_and!128925 b_and!128947 (not b_next!48409) (not b_next!48413) b_and!128973 b_and!128975 (not b_next!48421) b_and!128945 b_and!128921)
